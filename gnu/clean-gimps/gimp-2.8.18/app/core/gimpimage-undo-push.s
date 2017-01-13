	.text
	.file	"gimpimage-undo-push.bc"
	.globl	gimp_image_undo_push_image_type
	.align	16, 0x90
	.type	gimp_image_undo_push_image_type,@function
gimp_image_undo_push_image_type:        # @gimp_image_undo_push_image_type
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_image_type, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_13
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movq	-16(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_undo_get_type
	movl	$38, %edx
	movl	$1, %r8d
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	movq	-24(%rbp), %rcx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_image_undo_push
	movq	%rax, -8(%rbp)
.LBB0_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_image_undo_push_image_type, .Lfunc_end0-gimp_image_undo_push_image_type
	.cfi_endproc

	.globl	gimp_image_undo_push_image_size
	.align	16, 0x90
	.type	gimp_image_undo_push_image_size,@function
gimp_image_undo_push_image_size:        # @gimp_image_undo_push_image_size
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$168, %rsp
.Ltmp6:
	.cfi_offset %rbx, -56
.Ltmp7:
	.cfi_offset %r12, -48
.Ltmp8:
	.cfi_offset %r13, -40
.Ltmp9:
	.cfi_offset %r14, -32
.Ltmp10:
	.cfi_offset %r15, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movl	%ecx, -72(%rbp)
	movl	%r8d, -76(%rbp)
	movl	%r9d, -80(%rbp)
# BB#1:                                 # %do.body
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_image_size, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB1_13
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	movq	-56(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_image_undo_get_type
	movl	$39, %edx
	movl	$3, %r8d
	movabsq	$.L.str.2, %r9
	movabsq	$.L.str.3, %rdi
	movabsq	$.L.str.4, %rcx
	movabsq	$.L.str.5, %rsi
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movq	-64(%rbp), %rbx
	movl	-68(%rbp), %r10d
	movl	-72(%rbp), %r14d
	movl	-76(%rbp), %r15d
	movl	-80(%rbp), %r12d
	movq	-112(%rbp), %r13        # 8-byte Reload
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%r13, %rdi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	movq	%rbx, %rcx
	movl	%r10d, (%rsp)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	%r14d, 16(%rsp)
	movq	-136(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 24(%rsp)
	movl	%r15d, 32(%rsp)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, 40(%rsp)
	movl	%r12d, 48(%rsp)
	movq	$0, 56(%rsp)
	movb	$0, %al
	movq	%r11, -144(%rbp)        # 8-byte Spill
	callq	gimp_image_undo_push
	movq	%rax, -48(%rbp)
.LBB1_13:                               # %return
	movq	-48(%rbp), %rax
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_image_undo_push_image_size, .Lfunc_end1-gimp_image_undo_push_image_size
	.cfi_endproc

	.globl	gimp_image_undo_push_image_resolution
	.align	16, 0x90
	.type	gimp_image_undo_push_image_resolution,@function
gimp_image_undo_push_image_resolution:  # @gimp_image_undo_push_image_resolution
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_image_resolution, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_13
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	movq	-16(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_undo_get_type
	movl	$40, %edx
	movl	$1, %r8d
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	movq	-24(%rbp), %rcx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_image_undo_push
	movq	%rax, -8(%rbp)
.LBB2_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_image_undo_push_image_resolution, .Lfunc_end2-gimp_image_undo_push_image_resolution
	.cfi_endproc

	.globl	gimp_image_undo_push_image_grid
	.align	16, 0x90
	.type	gimp_image_undo_push_image_grid,@function
gimp_image_undo_push_image_grid:        # @gimp_image_undo_push_image_grid
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_image_grid, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_25
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_grid_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB3_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB3_20
.LBB3_15:                               # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB3_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB3_19:                               # %if.end.31
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.35
	jmp	.LBB3_23
.LBB3_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_image_grid, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_25
.LBB3_23:                               # %if.end.37
	jmp	.LBB3_24
.LBB3_24:                               # %do.end.38
	movq	-16(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_image_undo_get_type
	movl	$41, %edx
	movl	$4, %r8d
	movabsq	$.L.str.7, %r9
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-88(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gimp_image_undo_push
	movq	%rax, -8(%rbp)
.LBB3_25:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_image_undo_push_image_grid, .Lfunc_end3-gimp_image_undo_push_image_grid
	.cfi_endproc

	.globl	gimp_image_undo_push_image_colormap
	.align	16, 0x90
	.type	gimp_image_undo_push_image_colormap,@function
gimp_image_undo_push_image_colormap:    # @gimp_image_undo_push_image_colormap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_image_colormap, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-16(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_undo_get_type
	movl	$42, %edx
	movl	$1, %r8d
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	movq	-24(%rbp), %rcx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_image_undo_push
	movq	%rax, -8(%rbp)
.LBB4_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_image_undo_push_image_colormap, .Lfunc_end4-gimp_image_undo_push_image_colormap
	.cfi_endproc

	.globl	gimp_image_undo_push_image_parasite
	.align	16, 0x90
	.type	gimp_image_undo_push_image_parasite,@function
gimp_image_undo_push_image_parasite:    # @gimp_image_undo_push_image_parasite
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_image_parasite, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_18
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	cmpq	$0, -32(%rbp)
	je	.LBB5_15
# BB#14:                                # %if.then.13
	jmp	.LBB5_16
.LBB5_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_image_parasite, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_18
.LBB5_16:                               # %if.end.15
	jmp	.LBB5_17
.LBB5_17:                               # %do.end.16
	movq	-16(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_undo_get_type
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	gimp_parasite_name
	movl	$78, %edx
	movl	$4, %r8d
	movabsq	$.L.str.9, %r9
	xorl	%esi, %esi
	movl	%esi, %ecx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-80(%rbp), %r10         # 8-byte Reload
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	%r10, %rcx
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gimp_image_undo_push
	movq	%rax, -8(%rbp)
.LBB5_18:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_image_undo_push_image_parasite, .Lfunc_end5-gimp_image_undo_push_image_parasite
	.cfi_endproc

	.globl	gimp_image_undo_push_image_parasite_remove
	.align	16, 0x90
	.type	gimp_image_undo_push_image_parasite_remove,@function
gimp_image_undo_push_image_parasite_remove: # @gimp_image_undo_push_image_parasite_remove
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_image_parasite_remove, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_18
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	cmpq	$0, -32(%rbp)
	je	.LBB6_15
# BB#14:                                # %if.then.13
	jmp	.LBB6_16
.LBB6_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_image_parasite_remove, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_18
.LBB6_16:                               # %if.end.15
	jmp	.LBB6_17
.LBB6_17:                               # %do.end.16
	movq	-16(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_undo_get_type
	movl	$79, %edx
	movl	$4, %r8d
	movabsq	$.L.str.9, %r9
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gimp_image_undo_push
	movq	%rax, -8(%rbp)
.LBB6_18:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_image_undo_push_image_parasite_remove, .Lfunc_end6-gimp_image_undo_push_image_parasite_remove
	.cfi_endproc

	.globl	gimp_image_undo_push_guide
	.align	16, 0x90
	.type	gimp_image_undo_push_guide,@function
gimp_image_undo_push_guide:             # @gimp_image_undo_push_guide
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_guide, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_25
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_guide_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB7_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB7_20
.LBB7_15:                               # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB7_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB7_19
.LBB7_18:                               # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB7_19:                               # %if.end.31
	jmp	.LBB7_20
.LBB7_20:                               # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB7_22
# BB#21:                                # %if.then.35
	jmp	.LBB7_23
.LBB7_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_guide, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_25
.LBB7_23:                               # %if.end.37
	jmp	.LBB7_24
.LBB7_24:                               # %do.end.38
	movq	-16(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_guide_undo_get_type
	movl	$43, %edx
	movl	$4, %r8d
	movabsq	$.L.str.12, %r9
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-88(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gimp_image_undo_push
	movq	%rax, -8(%rbp)
.LBB7_25:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_image_undo_push_guide, .Lfunc_end7-gimp_image_undo_push_guide
	.cfi_endproc

	.globl	gimp_image_undo_push_sample_point
	.align	16, 0x90
	.type	gimp_image_undo_push_sample_point,@function
gimp_image_undo_push_sample_point:      # @gimp_image_undo_push_sample_point
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_sample_point, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_18
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	cmpq	$0, -32(%rbp)
	je	.LBB8_15
# BB#14:                                # %if.then.13
	jmp	.LBB8_16
.LBB8_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_sample_point, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_18
.LBB8_16:                               # %if.end.15
	jmp	.LBB8_17
.LBB8_17:                               # %do.end.16
	movq	-16(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_sample_point_undo_get_type
	movl	$44, %edx
	movl	$4, %r8d
	movabsq	$.L.str.14, %r9
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gimp_image_undo_push
	movq	%rax, -8(%rbp)
.LBB8_18:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_image_undo_push_sample_point, .Lfunc_end8-gimp_image_undo_push_sample_point
	.cfi_endproc

	.globl	gimp_image_undo_push_drawable
	.align	16, 0x90
	.type	gimp_image_undo_push_drawable,@function
gimp_image_undo_push_drawable:          # @gimp_image_undo_push_drawable
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$328, %rsp              # imm = 0x148
.Ltmp35:
	.cfi_offset %rbx, -56
.Ltmp36:
	.cfi_offset %r12, -48
.Ltmp37:
	.cfi_offset %r13, -40
.Ltmp38:
	.cfi_offset %r14, -32
.Ltmp39:
	.cfi_offset %r15, -24
	movl	32(%rbp), %eax
	movl	24(%rbp), %r10d
	movl	16(%rbp), %r11d
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movl	%r8d, -84(%rbp)
	movl	%r9d, -88(%rbp)
	movl	%r11d, -92(%rbp)
	movl	%r10d, -96(%rbp)
	movl	%eax, -100(%rbp)
# BB#1:                                 # %do.body
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -132(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -132(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_drawable, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB9_59
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.11
	movq	-72(%rbp), %rax
	movq	%rax, -144(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB9_15
# BB#14:                                # %if.then.20
	movl	$0, -156(%rbp)
	jmp	.LBB9_20
.LBB9_15:                               # %if.else.21
	movq	-144(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_18
# BB#16:                                # %land.lhs.true.24
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB9_18
# BB#17:                                # %if.then.28
	movl	$1, -156(%rbp)
	jmp	.LBB9_19
.LBB9_18:                               # %if.else.29
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -156(%rbp)
.LBB9_19:                               # %if.end.31
	jmp	.LBB9_20
.LBB9_20:                               # %if.end.32
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB9_22
# BB#21:                                # %if.then.35
	jmp	.LBB9_23
.LBB9_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_drawable, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB9_59
.LBB9_23:                               # %if.end.37
	jmp	.LBB9_24
.LBB9_24:                               # %do.end.38
	jmp	.LBB9_25
.LBB9_25:                               # %do.body.39
	cmpq	$0, -80(%rbp)
	je	.LBB9_27
# BB#26:                                # %if.then.41
	jmp	.LBB9_28
.LBB9_27:                               # %if.else.42
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_drawable, %rsi
	movabsq	$.L.str.16, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB9_59
.LBB9_28:                               # %if.end.43
	jmp	.LBB9_29
.LBB9_29:                               # %do.end.44
	jmp	.LBB9_30
.LBB9_30:                               # %do.body.45
	cmpl	$1, -84(%rbp)
	je	.LBB9_32
# BB#31:                                # %lor.lhs.false
	movq	-80(%rbp), %rdi
	callq	tile_manager_width
	cmpl	-96(%rbp), %eax
	jne	.LBB9_33
.LBB9_32:                               # %if.then.49
	jmp	.LBB9_34
.LBB9_33:                               # %if.else.50
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_drawable, %rsi
	movabsq	$.L.str.17, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB9_59
.LBB9_34:                               # %if.end.51
	jmp	.LBB9_35
.LBB9_35:                               # %do.end.52
	jmp	.LBB9_36
.LBB9_36:                               # %do.body.53
	cmpl	$1, -84(%rbp)
	je	.LBB9_38
# BB#37:                                # %lor.lhs.false.55
	movq	-80(%rbp), %rdi
	callq	tile_manager_height
	cmpl	-100(%rbp), %eax
	jne	.LBB9_39
.LBB9_38:                               # %if.then.58
	jmp	.LBB9_40
.LBB9_39:                               # %if.else.59
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_drawable, %rsi
	movabsq	$.L.str.18, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB9_59
.LBB9_40:                               # %if.end.60
	jmp	.LBB9_41
.LBB9_41:                               # %do.end.61
	movq	-72(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -112(%rbp)
# BB#42:                                # %do.body.64
	movq	-112(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB9_44
# BB#43:                                # %if.then.67
	jmp	.LBB9_45
.LBB9_44:                               # %if.else.68
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_drawable, %rsi
	movabsq	$.L.str.19, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB9_59
.LBB9_45:                               # %if.end.69
	jmp	.LBB9_46
.LBB9_46:                               # %do.end.70
	jmp	.LBB9_47
.LBB9_47:                               # %do.body.71
	cmpl	$0, -84(%rbp)
	je	.LBB9_49
# BB#48:                                # %lor.lhs.false.73
	movq	-80(%rbp), %rdi
	callq	tile_manager_width
	movq	-112(%rbp), %rdi
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	movl	-172(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB9_50
.LBB9_49:                               # %if.then.77
	jmp	.LBB9_51
.LBB9_50:                               # %if.else.78
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_drawable, %rsi
	movabsq	$.L.str.20, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB9_59
.LBB9_51:                               # %if.end.79
	jmp	.LBB9_52
.LBB9_52:                               # %do.end.80
	jmp	.LBB9_53
.LBB9_53:                               # %do.body.81
	cmpl	$0, -84(%rbp)
	je	.LBB9_55
# BB#54:                                # %lor.lhs.false.83
	movq	-80(%rbp), %rdi
	callq	tile_manager_height
	movq	-112(%rbp), %rdi
	movl	%eax, -176(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movl	-176(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB9_56
.LBB9_55:                               # %if.then.87
	jmp	.LBB9_57
.LBB9_56:                               # %if.else.88
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_drawable, %rsi
	movabsq	$.L.str.21, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB9_59
.LBB9_57:                               # %if.end.89
	jmp	.LBB9_58
.LBB9_58:                               # %do.end.90
	movq	-56(%rbp), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	callq	gimp_drawable_undo_get_type
	movl	$45, %edx
	movl	$80, %r8d
	movabsq	$.L.str.22, %r9
	movabsq	$.L.str.23, %rdi
	movabsq	$.L.str.24, %rcx
	movabsq	$.L.str.25, %rsi
	movabsq	$.L.str.26, %r10
	movabsq	$.L.str.27, %r11
	movabsq	$.L.str.28, %rbx
	xorl	%r14d, %r14d
	movl	%r14d, %r15d
	movq	-64(%rbp), %r12
	movq	-112(%rbp), %r13
	movq	-80(%rbp), %r14
	movl	%edx, -188(%rbp)        # 4-byte Spill
	movl	-84(%rbp), %edx
	movl	%edx, -192(%rbp)        # 4-byte Spill
	movl	-88(%rbp), %edx
	movl	%edx, -196(%rbp)        # 4-byte Spill
	movl	-92(%rbp), %edx
	movl	%edx, -200(%rbp)        # 4-byte Spill
	movl	-96(%rbp), %edx
	movl	%edx, -204(%rbp)        # 4-byte Spill
	movl	-100(%rbp), %edx
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	-188(%rbp), %eax        # 4-byte Reload
	movl	%edx, -236(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	movq	%r12, %rcx
	movq	%r13, (%rsp)
	movq	-224(%rbp), %r12        # 8-byte Reload
	movq	%r12, 8(%rsp)
	movq	%r14, 16(%rsp)
	movq	-248(%rbp), %r14        # 8-byte Reload
	movq	%r14, 24(%rsp)
	movl	-192(%rbp), %eax        # 4-byte Reload
	movl	%eax, 32(%rsp)
	movq	-232(%rbp), %r13        # 8-byte Reload
	movq	%r13, 40(%rsp)
	movl	-196(%rbp), %eax        # 4-byte Reload
	movl	%eax, 48(%rsp)
	movq	%r10, 56(%rsp)
	movl	-200(%rbp), %eax        # 4-byte Reload
	movl	%eax, 64(%rsp)
	movq	%r11, 72(%rsp)
	movl	-204(%rbp), %eax        # 4-byte Reload
	movl	%eax, 80(%rsp)
	movq	%rbx, 88(%rsp)
	movl	-236(%rbp), %eax        # 4-byte Reload
	movl	%eax, 96(%rsp)
	movq	$0, 104(%rsp)
	movb	$0, %al
	movq	%r15, -256(%rbp)        # 8-byte Spill
	callq	gimp_image_undo_push
	movq	%rax, -48(%rbp)
.LBB9_59:                               # %return
	movq	-48(%rbp), %rax
	addq	$328, %rsp              # imm = 0x148
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_image_undo_push_drawable, .Lfunc_end9-gimp_image_undo_push_drawable
	.cfi_endproc

	.globl	gimp_image_undo_push_drawable_mod
	.align	16, 0x90
	.type	gimp_image_undo_push_drawable_mod,@function
gimp_image_undo_push_drawable_mod:      # @gimp_image_undo_push_drawable_mod
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$152, %rsp
.Ltmp43:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_drawable_mod, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB10_30
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	jmp	.LBB10_13
.LBB10_13:                              # %do.body.11
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB10_15
# BB#14:                                # %if.then.20
	movl	$0, -92(%rbp)
	jmp	.LBB10_20
.LBB10_15:                              # %if.else.21
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_18
# BB#16:                                # %land.lhs.true.24
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB10_18
# BB#17:                                # %if.then.28
	movl	$1, -92(%rbp)
	jmp	.LBB10_19
.LBB10_18:                              # %if.else.29
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB10_19:                              # %if.end.31
	jmp	.LBB10_20
.LBB10_20:                              # %if.end.32
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB10_22
# BB#21:                                # %if.then.35
	jmp	.LBB10_23
.LBB10_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_drawable_mod, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB10_30
.LBB10_23:                              # %if.end.37
	jmp	.LBB10_24
.LBB10_24:                              # %do.end.38
	jmp	.LBB10_25
.LBB10_25:                              # %do.body.39
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB10_27
# BB#26:                                # %if.then.44
	jmp	.LBB10_28
.LBB10_27:                              # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_drawable_mod, %rsi
	movabsq	$.L.str.29, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB10_30
.LBB10_28:                              # %if.end.46
	jmp	.LBB10_29
.LBB10_29:                              # %do.end.47
	movq	-24(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_drawable_mod_undo_get_type
	movl	$46, %edx
	movl	$80, %r8d
	movabsq	$.L.str.22, %r9
	movabsq	$.L.str.30, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r10
	movl	-44(%rbp), %r11d
	movq	-112(%rbp), %rbx        # 8-byte Reload
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	%r10, (%rsp)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	%r11d, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	callq	gimp_image_undo_push
	movq	%rax, -16(%rbp)
.LBB10_30:                              # %return
	movq	-16(%rbp), %rax
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_image_undo_push_drawable_mod, .Lfunc_end10-gimp_image_undo_push_drawable_mod
	.cfi_endproc

	.globl	gimp_image_undo_push_mask
	.align	16, 0x90
	.type	gimp_image_undo_push_mask,@function
gimp_image_undo_push_mask:              # @gimp_image_undo_push_mask
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
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_mask, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB11_37
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	jmp	.LBB11_13
.LBB11_13:                              # %do.body.11
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB11_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB11_20
.LBB11_15:                              # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB11_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB11_19
.LBB11_18:                              # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB11_19:                              # %if.end.31
	jmp	.LBB11_20
.LBB11_20:                              # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB11_22
# BB#21:                                # %if.then.35
	jmp	.LBB11_23
.LBB11_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_mask, %rsi
	movabsq	$.L.str.31, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB11_37
.LBB11_23:                              # %if.end.37
	jmp	.LBB11_24
.LBB11_24:                              # %do.end.38
	jmp	.LBB11_25
.LBB11_25:                              # %do.body.39
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB11_27
# BB#26:                                # %if.then.44
	jmp	.LBB11_28
.LBB11_27:                              # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_mask, %rsi
	movabsq	$.L.str.32, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB11_37
.LBB11_28:                              # %if.end.46
	jmp	.LBB11_29
.LBB11_29:                              # %do.end.47
	movq	-16(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_mask_undo_get_type
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movq	%rdi, -88(%rbp)
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	gimp_selection_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB11_31
# BB#30:                                # %if.then.57
	movl	$0, -100(%rbp)
	jmp	.LBB11_36
.LBB11_31:                              # %if.else.58
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_34
# BB#32:                                # %land.lhs.true.61
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB11_34
# BB#33:                                # %if.then.65
	movl	$1, -100(%rbp)
	jmp	.LBB11_35
.LBB11_34:                              # %if.else.66
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB11_35:                              # %if.end.68
	jmp	.LBB11_36
.LBB11_36:                              # %if.end.69
	movl	$47, %edx
	movabsq	$.L.str.22, %r9
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	$80, %eax
	movl	$256, %esi              # imm = 0x100
	movl	-100(%rbp), %edi
	movl	%edi, -104(%rbp)
	cmpl	$0, -104(%rbp)
	cmovnel	%esi, %eax
	movq	-32(%rbp), %r8
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	-136(%rbp), %r10        # 8-byte Reload
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movq	%r10, %rcx
	movq	%r8, -152(%rbp)         # 8-byte Spill
	movl	%eax, %r8d
	movq	-152(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gimp_image_undo_push
	movq	%rax, -8(%rbp)
.LBB11_37:                              # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_image_undo_push_mask, .Lfunc_end11-gimp_image_undo_push_mask
	.cfi_endproc

	.globl	gimp_image_undo_push_item_reorder
	.align	16, 0x90
	.type	gimp_image_undo_push_item_reorder,@function
gimp_image_undo_push_item_reorder:      # @gimp_image_undo_push_item_reorder
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_item_reorder, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB12_30
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	jmp	.LBB12_13
.LBB12_13:                              # %do.body.11
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB12_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB12_20
.LBB12_15:                              # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB12_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB12_19
.LBB12_18:                              # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB12_19:                              # %if.end.31
	jmp	.LBB12_20
.LBB12_20:                              # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB12_22
# BB#21:                                # %if.then.35
	jmp	.LBB12_23
.LBB12_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_item_reorder, %rsi
	movabsq	$.L.str.33, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB12_30
.LBB12_23:                              # %if.end.37
	jmp	.LBB12_24
.LBB12_24:                              # %do.end.38
	jmp	.LBB12_25
.LBB12_25:                              # %do.body.39
	movq	-32(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB12_27
# BB#26:                                # %if.then.42
	jmp	.LBB12_28
.LBB12_27:                              # %if.else.43
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_item_reorder, %rsi
	movabsq	$.L.str.19, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB12_30
.LBB12_28:                              # %if.end.44
	jmp	.LBB12_29
.LBB12_29:                              # %do.end.45
	movq	-16(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_prop_undo_get_type
	movl	$48, %edx
	movl	$8, %r8d
	movabsq	$.L.str.22, %r9
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-88(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gimp_image_undo_push
	movq	%rax, -8(%rbp)
.LBB12_30:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_image_undo_push_item_reorder, .Lfunc_end12-gimp_image_undo_push_item_reorder
	.cfi_endproc

	.globl	gimp_image_undo_push_item_rename
	.align	16, 0x90
	.type	gimp_image_undo_push_item_rename,@function
gimp_image_undo_push_item_rename:       # @gimp_image_undo_push_item_rename
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_item_rename, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB13_30
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	jmp	.LBB13_13
.LBB13_13:                              # %do.body.11
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB13_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB13_20
.LBB13_15:                              # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB13_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB13_19
.LBB13_18:                              # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB13_19:                              # %if.end.31
	jmp	.LBB13_20
.LBB13_20:                              # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB13_22
# BB#21:                                # %if.then.35
	jmp	.LBB13_23
.LBB13_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_item_rename, %rsi
	movabsq	$.L.str.33, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB13_30
.LBB13_23:                              # %if.end.37
	jmp	.LBB13_24
.LBB13_24:                              # %do.end.38
	jmp	.LBB13_25
.LBB13_25:                              # %do.body.39
	movq	-32(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB13_27
# BB#26:                                # %if.then.42
	jmp	.LBB13_28
.LBB13_27:                              # %if.else.43
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_item_rename, %rsi
	movabsq	$.L.str.19, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB13_30
.LBB13_28:                              # %if.end.44
	jmp	.LBB13_29
.LBB13_29:                              # %do.end.45
	movq	-16(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_prop_undo_get_type
	movl	$49, %edx
	movl	$32, %r8d
	movabsq	$.L.str.22, %r9
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-88(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gimp_image_undo_push
	movq	%rax, -8(%rbp)
.LBB13_30:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_image_undo_push_item_rename, .Lfunc_end13-gimp_image_undo_push_item_rename
	.cfi_endproc

	.globl	gimp_image_undo_push_item_displace
	.align	16, 0x90
	.type	gimp_image_undo_push_item_displace,@function
gimp_image_undo_push_item_displace:     # @gimp_image_undo_push_item_displace
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
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_item_displace, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB14_37
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	jmp	.LBB14_13
.LBB14_13:                              # %do.body.11
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB14_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB14_20
.LBB14_15:                              # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB14_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB14_19
.LBB14_18:                              # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB14_19:                              # %if.end.31
	jmp	.LBB14_20
.LBB14_20:                              # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB14_22
# BB#21:                                # %if.then.35
	jmp	.LBB14_23
.LBB14_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_item_displace, %rsi
	movabsq	$.L.str.33, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB14_37
.LBB14_23:                              # %if.end.37
	jmp	.LBB14_24
.LBB14_24:                              # %do.end.38
	jmp	.LBB14_25
.LBB14_25:                              # %do.body.39
	movq	-32(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB14_27
# BB#26:                                # %if.then.42
	jmp	.LBB14_28
.LBB14_27:                              # %if.else.43
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_item_displace, %rsi
	movabsq	$.L.str.19, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB14_37
.LBB14_28:                              # %if.end.44
	jmp	.LBB14_29
.LBB14_29:                              # %do.end.45
	movq	-16(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_prop_undo_get_type
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movq	%rdi, -88(%rbp)
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB14_31
# BB#30:                                # %if.then.55
	movl	$0, -100(%rbp)
	jmp	.LBB14_36
.LBB14_31:                              # %if.else.56
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_34
# BB#32:                                # %land.lhs.true.59
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB14_34
# BB#33:                                # %if.then.63
	movl	$1, -100(%rbp)
	jmp	.LBB14_35
.LBB14_34:                              # %if.else.64
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB14_35:                              # %if.end.66
	jmp	.LBB14_36
.LBB14_36:                              # %if.end.67
	movl	$50, %edx
	movabsq	$.L.str.22, %r9
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	$144, %eax
	movl	$80, %esi
	movl	-100(%rbp), %edi
	movl	%edi, -104(%rbp)
	cmpl	$0, -104(%rbp)
	cmovnel	%esi, %eax
	movq	-32(%rbp), %r8
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	movq	%r10, %rcx
	movq	%r8, -144(%rbp)         # 8-byte Spill
	movl	%eax, %r8d
	movq	-144(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gimp_image_undo_push
	movq	%rax, -8(%rbp)
.LBB14_37:                              # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_image_undo_push_item_displace, .Lfunc_end14-gimp_image_undo_push_item_displace
	.cfi_endproc

	.globl	gimp_image_undo_push_item_visibility
	.align	16, 0x90
	.type	gimp_image_undo_push_item_visibility,@function
gimp_image_undo_push_item_visibility:   # @gimp_image_undo_push_item_visibility
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_item_visibility, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB15_30
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	jmp	.LBB15_13
.LBB15_13:                              # %do.body.11
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB15_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB15_20
.LBB15_15:                              # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB15_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB15_19
.LBB15_18:                              # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB15_19:                              # %if.end.31
	jmp	.LBB15_20
.LBB15_20:                              # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB15_22
# BB#21:                                # %if.then.35
	jmp	.LBB15_23
.LBB15_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_item_visibility, %rsi
	movabsq	$.L.str.33, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB15_30
.LBB15_23:                              # %if.end.37
	jmp	.LBB15_24
.LBB15_24:                              # %do.end.38
	jmp	.LBB15_25
.LBB15_25:                              # %do.body.39
	movq	-32(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB15_27
# BB#26:                                # %if.then.42
	jmp	.LBB15_28
.LBB15_27:                              # %if.else.43
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_item_visibility, %rsi
	movabsq	$.L.str.19, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB15_30
.LBB15_28:                              # %if.end.44
	jmp	.LBB15_29
.LBB15_29:                              # %do.end.45
	movq	-16(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_prop_undo_get_type
	movl	$51, %edx
	movl	$32, %r8d
	movabsq	$.L.str.22, %r9
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-88(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gimp_image_undo_push
	movq	%rax, -8(%rbp)
.LBB15_30:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_image_undo_push_item_visibility, .Lfunc_end15-gimp_image_undo_push_item_visibility
	.cfi_endproc

	.globl	gimp_image_undo_push_item_linked
	.align	16, 0x90
	.type	gimp_image_undo_push_item_linked,@function
gimp_image_undo_push_item_linked:       # @gimp_image_undo_push_item_linked
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_item_linked, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB16_30
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	jmp	.LBB16_13
.LBB16_13:                              # %do.body.11
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB16_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB16_20
.LBB16_15:                              # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB16_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB16_19
.LBB16_18:                              # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB16_19:                              # %if.end.31
	jmp	.LBB16_20
.LBB16_20:                              # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB16_22
# BB#21:                                # %if.then.35
	jmp	.LBB16_23
.LBB16_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_item_linked, %rsi
	movabsq	$.L.str.33, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB16_30
.LBB16_23:                              # %if.end.37
	jmp	.LBB16_24
.LBB16_24:                              # %do.end.38
	jmp	.LBB16_25
.LBB16_25:                              # %do.body.39
	movq	-32(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB16_27
# BB#26:                                # %if.then.42
	jmp	.LBB16_28
.LBB16_27:                              # %if.else.43
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_item_linked, %rsi
	movabsq	$.L.str.19, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB16_30
.LBB16_28:                              # %if.end.44
	jmp	.LBB16_29
.LBB16_29:                              # %do.end.45
	movq	-16(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_prop_undo_get_type
	movl	$52, %edx
	movl	$32, %r8d
	movabsq	$.L.str.22, %r9
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-88(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gimp_image_undo_push
	movq	%rax, -8(%rbp)
.LBB16_30:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_image_undo_push_item_linked, .Lfunc_end16-gimp_image_undo_push_item_linked
	.cfi_endproc

	.globl	gimp_image_undo_push_item_parasite
	.align	16, 0x90
	.type	gimp_image_undo_push_item_parasite,@function
gimp_image_undo_push_item_parasite:     # @gimp_image_undo_push_item_parasite
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
	pushq	%rbx
	subq	$168, %rsp
.Ltmp65:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.8
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_item_parasite, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB17_35
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	jmp	.LBB17_13
.LBB17_13:                              # %do.body.11
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB17_15
# BB#14:                                # %if.then.20
	movl	$0, -92(%rbp)
	jmp	.LBB17_20
.LBB17_15:                              # %if.else.21
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_18
# BB#16:                                # %land.lhs.true.24
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB17_18
# BB#17:                                # %if.then.28
	movl	$1, -92(%rbp)
	jmp	.LBB17_19
.LBB17_18:                              # %if.else.29
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB17_19:                              # %if.end.31
	jmp	.LBB17_20
.LBB17_20:                              # %if.end.32
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB17_22
# BB#21:                                # %if.then.35
	jmp	.LBB17_23
.LBB17_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_item_parasite, %rsi
	movabsq	$.L.str.33, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB17_35
.LBB17_23:                              # %if.end.37
	jmp	.LBB17_24
.LBB17_24:                              # %do.end.38
	jmp	.LBB17_25
.LBB17_25:                              # %do.body.39
	movq	-40(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB17_27
# BB#26:                                # %if.then.42
	jmp	.LBB17_28
.LBB17_27:                              # %if.else.43
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_item_parasite, %rsi
	movabsq	$.L.str.19, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB17_35
.LBB17_28:                              # %if.end.44
	jmp	.LBB17_29
.LBB17_29:                              # %do.end.45
	jmp	.LBB17_30
.LBB17_30:                              # %do.body.46
	cmpq	$0, -48(%rbp)
	je	.LBB17_32
# BB#31:                                # %if.then.48
	jmp	.LBB17_33
.LBB17_32:                              # %if.else.49
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_item_parasite, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB17_35
.LBB17_33:                              # %if.end.50
	jmp	.LBB17_34
.LBB17_34:                              # %do.end.51
	movq	-24(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_prop_undo_get_type
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	gimp_parasite_name
	movl	$78, %edx
	movl	$32, %r8d
	movabsq	$.L.str.22, %r9
	movabsq	$.L.str.9, %rcx
	xorl	%esi, %esi
	movl	%esi, %edi
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	-128(%rbp), %r11        # 8-byte Reload
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movq	%r11, %rcx
	movq	-112(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	-144(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	callq	gimp_image_undo_push
	movq	%rax, -16(%rbp)
.LBB17_35:                              # %return
	movq	-16(%rbp), %rax
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_image_undo_push_item_parasite, .Lfunc_end17-gimp_image_undo_push_item_parasite
	.cfi_endproc

	.globl	gimp_image_undo_push_item_parasite_remove
	.align	16, 0x90
	.type	gimp_image_undo_push_item_parasite_remove,@function
gimp_image_undo_push_item_parasite_remove: # @gimp_image_undo_push_item_parasite_remove
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$152, %rsp
.Ltmp69:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB18_8
.LBB18_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB18_7:                               # %if.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.8
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_item_parasite_remove, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB18_35
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	jmp	.LBB18_13
.LBB18_13:                              # %do.body.11
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB18_15
# BB#14:                                # %if.then.20
	movl	$0, -92(%rbp)
	jmp	.LBB18_20
.LBB18_15:                              # %if.else.21
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_18
# BB#16:                                # %land.lhs.true.24
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB18_18
# BB#17:                                # %if.then.28
	movl	$1, -92(%rbp)
	jmp	.LBB18_19
.LBB18_18:                              # %if.else.29
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB18_19:                              # %if.end.31
	jmp	.LBB18_20
.LBB18_20:                              # %if.end.32
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB18_22
# BB#21:                                # %if.then.35
	jmp	.LBB18_23
.LBB18_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_item_parasite_remove, %rsi
	movabsq	$.L.str.33, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB18_35
.LBB18_23:                              # %if.end.37
	jmp	.LBB18_24
.LBB18_24:                              # %do.end.38
	jmp	.LBB18_25
.LBB18_25:                              # %do.body.39
	movq	-40(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB18_27
# BB#26:                                # %if.then.42
	jmp	.LBB18_28
.LBB18_27:                              # %if.else.43
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_item_parasite_remove, %rsi
	movabsq	$.L.str.19, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB18_35
.LBB18_28:                              # %if.end.44
	jmp	.LBB18_29
.LBB18_29:                              # %do.end.45
	jmp	.LBB18_30
.LBB18_30:                              # %do.body.46
	cmpq	$0, -48(%rbp)
	je	.LBB18_32
# BB#31:                                # %if.then.48
	jmp	.LBB18_33
.LBB18_32:                              # %if.else.49
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_item_parasite_remove, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB18_35
.LBB18_33:                              # %if.end.50
	jmp	.LBB18_34
.LBB18_34:                              # %do.end.51
	movq	-24(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_prop_undo_get_type
	movl	$79, %edx
	movl	$32, %r8d
	movabsq	$.L.str.22, %r9
	movabsq	$.L.str.9, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r10
	movq	-48(%rbp), %r11
	movq	-104(%rbp), %rbx        # 8-byte Reload
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	%r10, (%rsp)
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r11, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	callq	gimp_image_undo_push
	movq	%rax, -16(%rbp)
.LBB18_35:                              # %return
	movq	-16(%rbp), %rax
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_image_undo_push_item_parasite_remove, .Lfunc_end18-gimp_image_undo_push_item_parasite_remove
	.cfi_endproc

	.globl	gimp_image_undo_push_layer_add
	.align	16, 0x90
	.type	gimp_image_undo_push_layer_add,@function
gimp_image_undo_push_layer_add:         # @gimp_image_undo_push_layer_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp72:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$184, %rsp
.Ltmp73:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB19_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB19_8
.LBB19_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB19_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB19_7:                               # %if.end
	jmp	.LBB19_8
.LBB19_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB19_10
# BB#9:                                 # %if.then.8
	jmp	.LBB19_11
.LBB19_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_layer_add, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB19_43
.LBB19_11:                              # %if.end.10
	jmp	.LBB19_12
.LBB19_12:                              # %do.end
	jmp	.LBB19_13
.LBB19_13:                              # %do.body.11
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB19_15
# BB#14:                                # %if.then.20
	movl	$0, -92(%rbp)
	jmp	.LBB19_20
.LBB19_15:                              # %if.else.21
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_18
# BB#16:                                # %land.lhs.true.24
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB19_18
# BB#17:                                # %if.then.28
	movl	$1, -92(%rbp)
	jmp	.LBB19_19
.LBB19_18:                              # %if.else.29
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB19_19:                              # %if.end.31
	jmp	.LBB19_20
.LBB19_20:                              # %if.end.32
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB19_22
# BB#21:                                # %if.then.35
	jmp	.LBB19_23
.LBB19_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_layer_add, %rsi
	movabsq	$.L.str.34, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB19_43
.LBB19_23:                              # %if.end.37
	jmp	.LBB19_24
.LBB19_24:                              # %do.end.38
	jmp	.LBB19_25
.LBB19_25:                              # %do.body.39
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	jne	.LBB19_27
# BB#26:                                # %if.then.44
	jmp	.LBB19_28
.LBB19_27:                              # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_layer_add, %rsi
	movabsq	$.L.str.35, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB19_43
.LBB19_28:                              # %if.end.46
	jmp	.LBB19_29
.LBB19_29:                              # %do.end.47
	jmp	.LBB19_30
.LBB19_30:                              # %do.body.48
	cmpq	$0, -48(%rbp)
	je	.LBB19_39
# BB#31:                                # %lor.lhs.false
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB19_33
# BB#32:                                # %if.then.58
	movl	$0, -116(%rbp)
	jmp	.LBB19_38
.LBB19_33:                              # %if.else.59
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_36
# BB#34:                                # %land.lhs.true.62
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB19_36
# BB#35:                                # %if.then.66
	movl	$1, -116(%rbp)
	jmp	.LBB19_37
.LBB19_36:                              # %if.else.67
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB19_37:                              # %if.end.69
	jmp	.LBB19_38
.LBB19_38:                              # %if.end.70
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB19_40
.LBB19_39:                              # %if.then.73
	jmp	.LBB19_41
.LBB19_40:                              # %if.else.74
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_layer_add, %rsi
	movabsq	$.L.str.36, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB19_43
.LBB19_41:                              # %if.end.75
	jmp	.LBB19_42
.LBB19_42:                              # %do.end.76
	movq	-24(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gimp_layer_undo_get_type
	movl	$53, %edx
	movl	$8, %r8d
	movabsq	$.L.str.22, %r9
	movabsq	$.L.str.37, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r10
	movq	-48(%rbp), %r11
	movq	-136(%rbp), %rbx        # 8-byte Reload
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	%r10, (%rsp)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r11, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	callq	gimp_image_undo_push
	movq	%rax, -16(%rbp)
.LBB19_43:                              # %return
	movq	-16(%rbp), %rax
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_image_undo_push_layer_add, .Lfunc_end19-gimp_image_undo_push_layer_add
	.cfi_endproc

	.globl	gimp_image_undo_push_layer_remove
	.align	16, 0x90
	.type	gimp_image_undo_push_layer_remove,@function
gimp_image_undo_push_layer_remove:      # @gimp_image_undo_push_layer_remove
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp76:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
.Ltmp77:
	.cfi_offset %rbx, -56
.Ltmp78:
	.cfi_offset %r12, -48
.Ltmp79:
	.cfi_offset %r13, -40
.Ltmp80:
	.cfi_offset %r14, -32
.Ltmp81:
	.cfi_offset %r15, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movl	%r8d, -84(%rbp)
	movq	%r9, -96(%rbp)
# BB#1:                                 # %do.body
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB20_3
# BB#2:                                 # %if.then
	movl	$0, -116(%rbp)
	jmp	.LBB20_8
.LBB20_3:                               # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_6
# BB#4:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB20_6
# BB#5:                                 # %if.then.3
	movl	$1, -116(%rbp)
	jmp	.LBB20_7
.LBB20_6:                               # %if.else.4
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB20_7:                               # %if.end
	jmp	.LBB20_8
.LBB20_8:                               # %if.end.6
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB20_10
# BB#9:                                 # %if.then.8
	jmp	.LBB20_11
.LBB20_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_layer_remove, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB20_56
.LBB20_11:                              # %if.end.10
	jmp	.LBB20_12
.LBB20_12:                              # %do.end
	jmp	.LBB20_13
.LBB20_13:                              # %do.body.11
	movq	-72(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB20_15
# BB#14:                                # %if.then.20
	movl	$0, -140(%rbp)
	jmp	.LBB20_20
.LBB20_15:                              # %if.else.21
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_18
# BB#16:                                # %land.lhs.true.24
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB20_18
# BB#17:                                # %if.then.28
	movl	$1, -140(%rbp)
	jmp	.LBB20_19
.LBB20_18:                              # %if.else.29
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB20_19:                              # %if.end.31
	jmp	.LBB20_20
.LBB20_20:                              # %if.end.32
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB20_22
# BB#21:                                # %if.then.35
	jmp	.LBB20_23
.LBB20_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_layer_remove, %rsi
	movabsq	$.L.str.34, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB20_56
.LBB20_23:                              # %if.end.37
	jmp	.LBB20_24
.LBB20_24:                              # %do.end.38
	jmp	.LBB20_25
.LBB20_25:                              # %do.body.39
	movq	-72(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB20_27
# BB#26:                                # %if.then.44
	jmp	.LBB20_28
.LBB20_27:                              # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_layer_remove, %rsi
	movabsq	$.L.str.38, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB20_56
.LBB20_28:                              # %if.end.46
	jmp	.LBB20_29
.LBB20_29:                              # %do.end.47
	jmp	.LBB20_30
.LBB20_30:                              # %do.body.48
	cmpq	$0, -80(%rbp)
	je	.LBB20_39
# BB#31:                                # %lor.lhs.false
	movq	-80(%rbp), %rax
	movq	%rax, -152(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB20_33
# BB#32:                                # %if.then.58
	movl	$0, -164(%rbp)
	jmp	.LBB20_38
.LBB20_33:                              # %if.else.59
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_36
# BB#34:                                # %land.lhs.true.62
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB20_36
# BB#35:                                # %if.then.66
	movl	$1, -164(%rbp)
	jmp	.LBB20_37
.LBB20_36:                              # %if.else.67
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB20_37:                              # %if.end.69
	jmp	.LBB20_38
.LBB20_38:                              # %if.end.70
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB20_40
.LBB20_39:                              # %if.then.73
	jmp	.LBB20_41
.LBB20_40:                              # %if.else.74
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_layer_remove, %rsi
	movabsq	$.L.str.39, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB20_56
.LBB20_41:                              # %if.end.75
	jmp	.LBB20_42
.LBB20_42:                              # %do.end.76
	jmp	.LBB20_43
.LBB20_43:                              # %do.body.77
	cmpq	$0, -96(%rbp)
	je	.LBB20_52
# BB#44:                                # %lor.lhs.false.79
	movq	-96(%rbp), %rax
	movq	%rax, -176(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -184(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.LBB20_46
# BB#45:                                # %if.then.88
	movl	$0, -188(%rbp)
	jmp	.LBB20_51
.LBB20_46:                              # %if.else.89
	movq	-176(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_49
# BB#47:                                # %land.lhs.true.92
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-184(%rbp), %rax
	jne	.LBB20_49
# BB#48:                                # %if.then.96
	movl	$1, -188(%rbp)
	jmp	.LBB20_50
.LBB20_49:                              # %if.else.97
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -188(%rbp)
.LBB20_50:                              # %if.end.99
	jmp	.LBB20_51
.LBB20_51:                              # %if.end.100
	movl	-188(%rbp), %eax
	movl	%eax, -192(%rbp)
	cmpl	$0, -192(%rbp)
	je	.LBB20_53
.LBB20_52:                              # %if.then.103
	jmp	.LBB20_54
.LBB20_53:                              # %if.else.104
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_layer_remove, %rsi
	movabsq	$.L.str.36, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB20_56
.LBB20_54:                              # %if.end.105
	jmp	.LBB20_55
.LBB20_55:                              # %do.end.106
	movq	-56(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	callq	gimp_layer_undo_get_type
	movl	$54, %edx
	movl	$8, %r8d
	movabsq	$.L.str.22, %r9
	movabsq	$.L.str.40, %rdi
	movabsq	$.L.str.41, %rcx
	movabsq	$.L.str.37, %rsi
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movq	-64(%rbp), %rbx
	movq	-72(%rbp), %r14
	movq	-80(%rbp), %r15
	movl	-84(%rbp), %r10d
	movq	-96(%rbp), %r12
	movq	-208(%rbp), %r13        # 8-byte Reload
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%r13, %rdi
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	movq	%rbx, %rcx
	movq	%r14, (%rsp)
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-232(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 24(%rsp)
	movl	%r10d, 32(%rsp)
	movq	-224(%rbp), %r14        # 8-byte Reload
	movq	%r14, 40(%rsp)
	movq	%r12, 48(%rsp)
	movq	$0, 56(%rsp)
	movb	$0, %al
	movq	%r11, -240(%rbp)        # 8-byte Spill
	callq	gimp_image_undo_push
	movq	%rax, -48(%rbp)
.LBB20_56:                              # %return
	movq	-48(%rbp), %rax
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_image_undo_push_layer_remove, .Lfunc_end20-gimp_image_undo_push_layer_remove
	.cfi_endproc

	.globl	gimp_image_undo_push_layer_mode
	.align	16, 0x90
	.type	gimp_image_undo_push_layer_mode,@function
gimp_image_undo_push_layer_mode:        # @gimp_image_undo_push_layer_mode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp84:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB21_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB21_8
.LBB21_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB21_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB21_7
.LBB21_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB21_7:                               # %if.end
	jmp	.LBB21_8
.LBB21_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB21_10
# BB#9:                                 # %if.then.8
	jmp	.LBB21_11
.LBB21_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_layer_mode, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB21_30
.LBB21_11:                              # %if.end.10
	jmp	.LBB21_12
.LBB21_12:                              # %do.end
	jmp	.LBB21_13
.LBB21_13:                              # %do.body.11
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB21_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB21_20
.LBB21_15:                              # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB21_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB21_19
.LBB21_18:                              # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB21_19:                              # %if.end.31
	jmp	.LBB21_20
.LBB21_20:                              # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB21_22
# BB#21:                                # %if.then.35
	jmp	.LBB21_23
.LBB21_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_layer_mode, %rsi
	movabsq	$.L.str.34, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB21_30
.LBB21_23:                              # %if.end.37
	jmp	.LBB21_24
.LBB21_24:                              # %do.end.38
	jmp	.LBB21_25
.LBB21_25:                              # %do.body.39
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB21_27
# BB#26:                                # %if.then.44
	jmp	.LBB21_28
.LBB21_27:                              # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_layer_mode, %rsi
	movabsq	$.L.str.38, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB21_30
.LBB21_28:                              # %if.end.46
	jmp	.LBB21_29
.LBB21_29:                              # %do.end.47
	movq	-16(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_layer_prop_undo_get_type
	movl	$55, %edx
	movl	$32, %r8d
	movabsq	$.L.str.22, %r9
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gimp_image_undo_push
	movq	%rax, -8(%rbp)
.LBB21_30:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_image_undo_push_layer_mode, .Lfunc_end21-gimp_image_undo_push_layer_mode
	.cfi_endproc

	.globl	gimp_image_undo_push_layer_opacity
	.align	16, 0x90
	.type	gimp_image_undo_push_layer_opacity,@function
gimp_image_undo_push_layer_opacity:     # @gimp_image_undo_push_layer_opacity
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp87:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB22_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB22_8
.LBB22_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB22_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB22_7
.LBB22_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB22_7:                               # %if.end
	jmp	.LBB22_8
.LBB22_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB22_10
# BB#9:                                 # %if.then.8
	jmp	.LBB22_11
.LBB22_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_layer_opacity, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB22_30
.LBB22_11:                              # %if.end.10
	jmp	.LBB22_12
.LBB22_12:                              # %do.end
	jmp	.LBB22_13
.LBB22_13:                              # %do.body.11
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB22_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB22_20
.LBB22_15:                              # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB22_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB22_19
.LBB22_18:                              # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB22_19:                              # %if.end.31
	jmp	.LBB22_20
.LBB22_20:                              # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB22_22
# BB#21:                                # %if.then.35
	jmp	.LBB22_23
.LBB22_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_layer_opacity, %rsi
	movabsq	$.L.str.34, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB22_30
.LBB22_23:                              # %if.end.37
	jmp	.LBB22_24
.LBB22_24:                              # %do.end.38
	jmp	.LBB22_25
.LBB22_25:                              # %do.body.39
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB22_27
# BB#26:                                # %if.then.44
	jmp	.LBB22_28
.LBB22_27:                              # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_layer_opacity, %rsi
	movabsq	$.L.str.38, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB22_30
.LBB22_28:                              # %if.end.46
	jmp	.LBB22_29
.LBB22_29:                              # %do.end.47
	movq	-16(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_layer_prop_undo_get_type
	movl	$56, %edx
	movl	$32, %r8d
	movabsq	$.L.str.22, %r9
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gimp_image_undo_push
	movq	%rax, -8(%rbp)
.LBB22_30:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_image_undo_push_layer_opacity, .Lfunc_end22-gimp_image_undo_push_layer_opacity
	.cfi_endproc

	.globl	gimp_image_undo_push_layer_lock_alpha
	.align	16, 0x90
	.type	gimp_image_undo_push_layer_lock_alpha,@function
gimp_image_undo_push_layer_lock_alpha:  # @gimp_image_undo_push_layer_lock_alpha
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp88:
	.cfi_def_cfa_offset 16
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp90:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB23_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB23_8
.LBB23_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB23_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB23_7
.LBB23_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB23_7:                               # %if.end
	jmp	.LBB23_8
.LBB23_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB23_10
# BB#9:                                 # %if.then.8
	jmp	.LBB23_11
.LBB23_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_layer_lock_alpha, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB23_30
.LBB23_11:                              # %if.end.10
	jmp	.LBB23_12
.LBB23_12:                              # %do.end
	jmp	.LBB23_13
.LBB23_13:                              # %do.body.11
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB23_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB23_20
.LBB23_15:                              # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB23_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB23_19
.LBB23_18:                              # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB23_19:                              # %if.end.31
	jmp	.LBB23_20
.LBB23_20:                              # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB23_22
# BB#21:                                # %if.then.35
	jmp	.LBB23_23
.LBB23_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_layer_lock_alpha, %rsi
	movabsq	$.L.str.34, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB23_30
.LBB23_23:                              # %if.end.37
	jmp	.LBB23_24
.LBB23_24:                              # %do.end.38
	jmp	.LBB23_25
.LBB23_25:                              # %do.body.39
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB23_27
# BB#26:                                # %if.then.44
	jmp	.LBB23_28
.LBB23_27:                              # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_layer_lock_alpha, %rsi
	movabsq	$.L.str.38, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB23_30
.LBB23_28:                              # %if.end.46
	jmp	.LBB23_29
.LBB23_29:                              # %do.end.47
	movq	-16(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_layer_prop_undo_get_type
	movl	$57, %edx
	movl	$32, %r8d
	movabsq	$.L.str.22, %r9
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gimp_image_undo_push
	movq	%rax, -8(%rbp)
.LBB23_30:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_image_undo_push_layer_lock_alpha, .Lfunc_end23-gimp_image_undo_push_layer_lock_alpha
	.cfi_endproc

	.globl	gimp_image_undo_push_group_layer_suspend
	.align	16, 0x90
	.type	gimp_image_undo_push_group_layer_suspend,@function
gimp_image_undo_push_group_layer_suspend: # @gimp_image_undo_push_group_layer_suspend
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp91:
	.cfi_def_cfa_offset 16
.Ltmp92:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp93:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB24_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB24_8
.LBB24_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB24_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB24_7
.LBB24_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB24_7:                               # %if.end
	jmp	.LBB24_8
.LBB24_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB24_10
# BB#9:                                 # %if.then.8
	jmp	.LBB24_11
.LBB24_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_group_layer_suspend, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB24_30
.LBB24_11:                              # %if.end.10
	jmp	.LBB24_12
.LBB24_12:                              # %do.end
	jmp	.LBB24_13
.LBB24_13:                              # %do.body.11
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_group_layer_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB24_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB24_20
.LBB24_15:                              # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB24_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB24_19
.LBB24_18:                              # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB24_19:                              # %if.end.31
	jmp	.LBB24_20
.LBB24_20:                              # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB24_22
# BB#21:                                # %if.then.35
	jmp	.LBB24_23
.LBB24_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_group_layer_suspend, %rsi
	movabsq	$.L.str.42, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB24_30
.LBB24_23:                              # %if.end.37
	jmp	.LBB24_24
.LBB24_24:                              # %do.end.38
	jmp	.LBB24_25
.LBB24_25:                              # %do.body.39
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB24_27
# BB#26:                                # %if.then.44
	jmp	.LBB24_28
.LBB24_27:                              # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_group_layer_suspend, %rsi
	movabsq	$.L.str.43, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB24_30
.LBB24_28:                              # %if.end.46
	jmp	.LBB24_29
.LBB24_29:                              # %do.end.47
	movq	-16(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_group_layer_undo_get_type
	movl	$58, %edx
	movl	$80, %r8d
	movabsq	$.L.str.22, %r9
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gimp_image_undo_push
	movq	%rax, -8(%rbp)
.LBB24_30:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_image_undo_push_group_layer_suspend, .Lfunc_end24-gimp_image_undo_push_group_layer_suspend
	.cfi_endproc

	.globl	gimp_image_undo_push_group_layer_resume
	.align	16, 0x90
	.type	gimp_image_undo_push_group_layer_resume,@function
gimp_image_undo_push_group_layer_resume: # @gimp_image_undo_push_group_layer_resume
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp94:
	.cfi_def_cfa_offset 16
.Ltmp95:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp96:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB25_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB25_8
.LBB25_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB25_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB25_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB25_7
.LBB25_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB25_7:                               # %if.end
	jmp	.LBB25_8
.LBB25_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB25_10
# BB#9:                                 # %if.then.8
	jmp	.LBB25_11
.LBB25_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_group_layer_resume, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB25_30
.LBB25_11:                              # %if.end.10
	jmp	.LBB25_12
.LBB25_12:                              # %do.end
	jmp	.LBB25_13
.LBB25_13:                              # %do.body.11
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_group_layer_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB25_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB25_20
.LBB25_15:                              # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB25_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB25_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB25_19
.LBB25_18:                              # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB25_19:                              # %if.end.31
	jmp	.LBB25_20
.LBB25_20:                              # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB25_22
# BB#21:                                # %if.then.35
	jmp	.LBB25_23
.LBB25_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_group_layer_resume, %rsi
	movabsq	$.L.str.42, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB25_30
.LBB25_23:                              # %if.end.37
	jmp	.LBB25_24
.LBB25_24:                              # %do.end.38
	jmp	.LBB25_25
.LBB25_25:                              # %do.body.39
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB25_27
# BB#26:                                # %if.then.44
	jmp	.LBB25_28
.LBB25_27:                              # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_group_layer_resume, %rsi
	movabsq	$.L.str.43, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB25_30
.LBB25_28:                              # %if.end.46
	jmp	.LBB25_29
.LBB25_29:                              # %do.end.47
	movq	-16(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_group_layer_undo_get_type
	movl	$59, %edx
	movl	$80, %r8d
	movabsq	$.L.str.22, %r9
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gimp_image_undo_push
	movq	%rax, -8(%rbp)
.LBB25_30:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_image_undo_push_group_layer_resume, .Lfunc_end25-gimp_image_undo_push_group_layer_resume
	.cfi_endproc

	.globl	gimp_image_undo_push_group_layer_convert
	.align	16, 0x90
	.type	gimp_image_undo_push_group_layer_convert,@function
gimp_image_undo_push_group_layer_convert: # @gimp_image_undo_push_group_layer_convert
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
.Ltmp98:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp99:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB26_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB26_8
.LBB26_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB26_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB26_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB26_7
.LBB26_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB26_7:                               # %if.end
	jmp	.LBB26_8
.LBB26_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB26_10
# BB#9:                                 # %if.then.8
	jmp	.LBB26_11
.LBB26_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_group_layer_convert, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB26_30
.LBB26_11:                              # %if.end.10
	jmp	.LBB26_12
.LBB26_12:                              # %do.end
	jmp	.LBB26_13
.LBB26_13:                              # %do.body.11
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_group_layer_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB26_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB26_20
.LBB26_15:                              # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB26_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB26_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB26_19
.LBB26_18:                              # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB26_19:                              # %if.end.31
	jmp	.LBB26_20
.LBB26_20:                              # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB26_22
# BB#21:                                # %if.then.35
	jmp	.LBB26_23
.LBB26_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_group_layer_convert, %rsi
	movabsq	$.L.str.42, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB26_30
.LBB26_23:                              # %if.end.37
	jmp	.LBB26_24
.LBB26_24:                              # %do.end.38
	jmp	.LBB26_25
.LBB26_25:                              # %do.body.39
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB26_27
# BB#26:                                # %if.then.44
	jmp	.LBB26_28
.LBB26_27:                              # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_group_layer_convert, %rsi
	movabsq	$.L.str.43, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB26_30
.LBB26_28:                              # %if.end.46
	jmp	.LBB26_29
.LBB26_29:                              # %do.end.47
	movq	-16(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_group_layer_undo_get_type
	movl	$60, %edx
	movl	$80, %r8d
	movabsq	$.L.str.22, %r9
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gimp_image_undo_push
	movq	%rax, -8(%rbp)
.LBB26_30:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_image_undo_push_group_layer_convert, .Lfunc_end26-gimp_image_undo_push_group_layer_convert
	.cfi_endproc

	.globl	gimp_image_undo_push_text_layer
	.align	16, 0x90
	.type	gimp_image_undo_push_text_layer,@function
gimp_image_undo_push_text_layer:        # @gimp_image_undo_push_text_layer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp100:
	.cfi_def_cfa_offset 16
.Ltmp101:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp102:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$152, %rsp
.Ltmp103:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB27_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB27_8
.LBB27_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB27_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB27_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB27_7
.LBB27_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB27_7:                               # %if.end
	jmp	.LBB27_8
.LBB27_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB27_10
# BB#9:                                 # %if.then.8
	jmp	.LBB27_11
.LBB27_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_text_layer, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB27_30
.LBB27_11:                              # %if.end.10
	jmp	.LBB27_12
.LBB27_12:                              # %do.end
	jmp	.LBB27_13
.LBB27_13:                              # %do.body.11
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_text_layer_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB27_15
# BB#14:                                # %if.then.20
	movl	$0, -92(%rbp)
	jmp	.LBB27_20
.LBB27_15:                              # %if.else.21
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB27_18
# BB#16:                                # %land.lhs.true.24
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB27_18
# BB#17:                                # %if.then.28
	movl	$1, -92(%rbp)
	jmp	.LBB27_19
.LBB27_18:                              # %if.else.29
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB27_19:                              # %if.end.31
	jmp	.LBB27_20
.LBB27_20:                              # %if.end.32
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB27_22
# BB#21:                                # %if.then.35
	jmp	.LBB27_23
.LBB27_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_text_layer, %rsi
	movabsq	$.L.str.44, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB27_30
.LBB27_23:                              # %if.end.37
	jmp	.LBB27_24
.LBB27_24:                              # %do.end.38
	jmp	.LBB27_25
.LBB27_25:                              # %do.body.39
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB27_27
# BB#26:                                # %if.then.44
	jmp	.LBB27_28
.LBB27_27:                              # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_text_layer, %rsi
	movabsq	$.L.str.38, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB27_30
.LBB27_28:                              # %if.end.46
	jmp	.LBB27_29
.LBB27_29:                              # %do.end.47
	movq	-24(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_text_undo_get_type
	movl	$61, %edx
	movl	$80, %r8d
	movabsq	$.L.str.22, %r9
	movabsq	$.L.str.45, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r10
	movq	-48(%rbp), %r11
	movq	-112(%rbp), %rbx        # 8-byte Reload
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	%r10, (%rsp)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r11, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	callq	gimp_image_undo_push
	movq	%rax, -16(%rbp)
.LBB27_30:                              # %return
	movq	-16(%rbp), %rax
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_image_undo_push_text_layer, .Lfunc_end27-gimp_image_undo_push_text_layer
	.cfi_endproc

	.globl	gimp_image_undo_push_text_layer_modified
	.align	16, 0x90
	.type	gimp_image_undo_push_text_layer_modified,@function
gimp_image_undo_push_text_layer_modified: # @gimp_image_undo_push_text_layer_modified
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp104:
	.cfi_def_cfa_offset 16
.Ltmp105:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp106:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB28_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB28_8
.LBB28_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB28_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB28_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB28_7
.LBB28_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB28_7:                               # %if.end
	jmp	.LBB28_8
.LBB28_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB28_10
# BB#9:                                 # %if.then.8
	jmp	.LBB28_11
.LBB28_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_text_layer_modified, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB28_30
.LBB28_11:                              # %if.end.10
	jmp	.LBB28_12
.LBB28_12:                              # %do.end
	jmp	.LBB28_13
.LBB28_13:                              # %do.body.11
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_text_layer_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB28_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB28_20
.LBB28_15:                              # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB28_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB28_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB28_19
.LBB28_18:                              # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB28_19:                              # %if.end.31
	jmp	.LBB28_20
.LBB28_20:                              # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB28_22
# BB#21:                                # %if.then.35
	jmp	.LBB28_23
.LBB28_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_text_layer_modified, %rsi
	movabsq	$.L.str.44, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB28_30
.LBB28_23:                              # %if.end.37
	jmp	.LBB28_24
.LBB28_24:                              # %do.end.38
	jmp	.LBB28_25
.LBB28_25:                              # %do.body.39
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB28_27
# BB#26:                                # %if.then.44
	jmp	.LBB28_28
.LBB28_27:                              # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_text_layer_modified, %rsi
	movabsq	$.L.str.38, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB28_30
.LBB28_28:                              # %if.end.46
	jmp	.LBB28_29
.LBB28_29:                              # %do.end.47
	movq	-16(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_text_undo_get_type
	movl	$62, %edx
	movl	$32, %r8d
	movabsq	$.L.str.22, %r9
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gimp_image_undo_push
	movq	%rax, -8(%rbp)
.LBB28_30:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_image_undo_push_text_layer_modified, .Lfunc_end28-gimp_image_undo_push_text_layer_modified
	.cfi_endproc

	.globl	gimp_image_undo_push_layer_mask_add
	.align	16, 0x90
	.type	gimp_image_undo_push_layer_mask_add,@function
gimp_image_undo_push_layer_mask_add:    # @gimp_image_undo_push_layer_mask_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp107:
	.cfi_def_cfa_offset 16
.Ltmp108:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp109:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$184, %rsp
.Ltmp110:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB29_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB29_8
.LBB29_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB29_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB29_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB29_7
.LBB29_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB29_7:                               # %if.end
	jmp	.LBB29_8
.LBB29_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB29_10
# BB#9:                                 # %if.then.8
	jmp	.LBB29_11
.LBB29_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_layer_mask_add, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB29_47
.LBB29_11:                              # %if.end.10
	jmp	.LBB29_12
.LBB29_12:                              # %do.end
	jmp	.LBB29_13
.LBB29_13:                              # %do.body.11
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB29_15
# BB#14:                                # %if.then.20
	movl	$0, -92(%rbp)
	jmp	.LBB29_20
.LBB29_15:                              # %if.else.21
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB29_18
# BB#16:                                # %land.lhs.true.24
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB29_18
# BB#17:                                # %if.then.28
	movl	$1, -92(%rbp)
	jmp	.LBB29_19
.LBB29_18:                              # %if.else.29
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB29_19:                              # %if.end.31
	jmp	.LBB29_20
.LBB29_20:                              # %if.end.32
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB29_22
# BB#21:                                # %if.then.35
	jmp	.LBB29_23
.LBB29_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_layer_mask_add, %rsi
	movabsq	$.L.str.34, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB29_47
.LBB29_23:                              # %if.end.37
	jmp	.LBB29_24
.LBB29_24:                              # %do.end.38
	jmp	.LBB29_25
.LBB29_25:                              # %do.body.39
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB29_27
# BB#26:                                # %if.then.44
	jmp	.LBB29_28
.LBB29_27:                              # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_layer_mask_add, %rsi
	movabsq	$.L.str.38, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB29_47
.LBB29_28:                              # %if.end.46
	jmp	.LBB29_29
.LBB29_29:                              # %do.end.47
	jmp	.LBB29_30
.LBB29_30:                              # %do.body.48
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_layer_mask_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB29_32
# BB#31:                                # %if.then.57
	movl	$0, -116(%rbp)
	jmp	.LBB29_37
.LBB29_32:                              # %if.else.58
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB29_35
# BB#33:                                # %land.lhs.true.61
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB29_35
# BB#34:                                # %if.then.65
	movl	$1, -116(%rbp)
	jmp	.LBB29_36
.LBB29_35:                              # %if.else.66
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB29_36:                              # %if.end.68
	jmp	.LBB29_37
.LBB29_37:                              # %if.end.69
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB29_39
# BB#38:                                # %if.then.72
	jmp	.LBB29_40
.LBB29_39:                              # %if.else.73
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_layer_mask_add, %rsi
	movabsq	$.L.str.46, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB29_47
.LBB29_40:                              # %if.end.74
	jmp	.LBB29_41
.LBB29_41:                              # %do.end.75
	jmp	.LBB29_42
.LBB29_42:                              # %do.body.76
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	jne	.LBB29_44
# BB#43:                                # %if.then.81
	jmp	.LBB29_45
.LBB29_44:                              # %if.else.82
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_layer_mask_add, %rsi
	movabsq	$.L.str.47, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB29_47
.LBB29_45:                              # %if.end.83
	jmp	.LBB29_46
.LBB29_46:                              # %do.end.84
	movq	-24(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	callq	gimp_layer_mask_undo_get_type
	movl	$63, %edx
	movl	$8, %r8d
	movabsq	$.L.str.22, %r9
	movabsq	$.L.str.48, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r10
	movq	-48(%rbp), %r11
	movq	-144(%rbp), %rbx        # 8-byte Reload
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	%r10, (%rsp)
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r11, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	callq	gimp_image_undo_push
	movq	%rax, -16(%rbp)
.LBB29_47:                              # %return
	movq	-16(%rbp), %rax
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_image_undo_push_layer_mask_add, .Lfunc_end29-gimp_image_undo_push_layer_mask_add
	.cfi_endproc

	.globl	gimp_image_undo_push_layer_mask_remove
	.align	16, 0x90
	.type	gimp_image_undo_push_layer_mask_remove,@function
gimp_image_undo_push_layer_mask_remove: # @gimp_image_undo_push_layer_mask_remove
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp113:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$184, %rsp
.Ltmp114:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB30_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB30_8
.LBB30_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB30_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB30_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB30_7
.LBB30_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB30_7:                               # %if.end
	jmp	.LBB30_8
.LBB30_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB30_10
# BB#9:                                 # %if.then.8
	jmp	.LBB30_11
.LBB30_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_layer_mask_remove, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB30_57
.LBB30_11:                              # %if.end.10
	jmp	.LBB30_12
.LBB30_12:                              # %do.end
	jmp	.LBB30_13
.LBB30_13:                              # %do.body.11
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB30_15
# BB#14:                                # %if.then.20
	movl	$0, -92(%rbp)
	jmp	.LBB30_20
.LBB30_15:                              # %if.else.21
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB30_18
# BB#16:                                # %land.lhs.true.24
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB30_18
# BB#17:                                # %if.then.28
	movl	$1, -92(%rbp)
	jmp	.LBB30_19
.LBB30_18:                              # %if.else.29
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB30_19:                              # %if.end.31
	jmp	.LBB30_20
.LBB30_20:                              # %if.end.32
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB30_22
# BB#21:                                # %if.then.35
	jmp	.LBB30_23
.LBB30_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_layer_mask_remove, %rsi
	movabsq	$.L.str.34, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB30_57
.LBB30_23:                              # %if.end.37
	jmp	.LBB30_24
.LBB30_24:                              # %do.end.38
	jmp	.LBB30_25
.LBB30_25:                              # %do.body.39
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB30_27
# BB#26:                                # %if.then.44
	jmp	.LBB30_28
.LBB30_27:                              # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_layer_mask_remove, %rsi
	movabsq	$.L.str.38, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB30_57
.LBB30_28:                              # %if.end.46
	jmp	.LBB30_29
.LBB30_29:                              # %do.end.47
	jmp	.LBB30_30
.LBB30_30:                              # %do.body.48
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_layer_mask_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB30_32
# BB#31:                                # %if.then.57
	movl	$0, -116(%rbp)
	jmp	.LBB30_37
.LBB30_32:                              # %if.else.58
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB30_35
# BB#33:                                # %land.lhs.true.61
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB30_35
# BB#34:                                # %if.then.65
	movl	$1, -116(%rbp)
	jmp	.LBB30_36
.LBB30_35:                              # %if.else.66
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB30_36:                              # %if.end.68
	jmp	.LBB30_37
.LBB30_37:                              # %if.end.69
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB30_39
# BB#38:                                # %if.then.72
	jmp	.LBB30_40
.LBB30_39:                              # %if.else.73
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_layer_mask_remove, %rsi
	movabsq	$.L.str.46, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB30_57
.LBB30_40:                              # %if.end.74
	jmp	.LBB30_41
.LBB30_41:                              # %do.end.75
	jmp	.LBB30_42
.LBB30_42:                              # %do.body.76
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB30_44
# BB#43:                                # %if.then.81
	jmp	.LBB30_45
.LBB30_44:                              # %if.else.82
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_layer_mask_remove, %rsi
	movabsq	$.L.str.32, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB30_57
.LBB30_45:                              # %if.end.83
	jmp	.LBB30_46
.LBB30_46:                              # %do.end.84
	jmp	.LBB30_47
.LBB30_47:                              # %do.body.85
	movq	-48(%rbp), %rdi
	callq	gimp_layer_mask_get_layer
	cmpq	-40(%rbp), %rax
	jne	.LBB30_49
# BB#48:                                # %if.then.88
	jmp	.LBB30_50
.LBB30_49:                              # %if.else.89
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_layer_mask_remove, %rsi
	movabsq	$.L.str.49, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB30_57
.LBB30_50:                              # %if.end.90
	jmp	.LBB30_51
.LBB30_51:                              # %do.end.91
	jmp	.LBB30_52
.LBB30_52:                              # %do.body.92
	movq	-40(%rbp), %rdi
	callq	gimp_layer_get_mask
	cmpq	-48(%rbp), %rax
	jne	.LBB30_54
# BB#53:                                # %if.then.95
	jmp	.LBB30_55
.LBB30_54:                              # %if.else.96
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_layer_mask_remove, %rsi
	movabsq	$.L.str.50, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB30_57
.LBB30_55:                              # %if.end.97
	jmp	.LBB30_56
.LBB30_56:                              # %do.end.98
	movq	-24(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	callq	gimp_layer_mask_undo_get_type
	movl	$64, %edx
	movl	$8, %r8d
	movabsq	$.L.str.22, %r9
	movabsq	$.L.str.48, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r10
	movq	-48(%rbp), %r11
	movq	-144(%rbp), %rbx        # 8-byte Reload
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	%r10, (%rsp)
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r11, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	callq	gimp_image_undo_push
	movq	%rax, -16(%rbp)
.LBB30_57:                              # %return
	movq	-16(%rbp), %rax
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_image_undo_push_layer_mask_remove, .Lfunc_end30-gimp_image_undo_push_layer_mask_remove
	.cfi_endproc

	.globl	gimp_image_undo_push_layer_mask_apply
	.align	16, 0x90
	.type	gimp_image_undo_push_layer_mask_apply,@function
gimp_image_undo_push_layer_mask_apply:  # @gimp_image_undo_push_layer_mask_apply
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp115:
	.cfi_def_cfa_offset 16
.Ltmp116:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp117:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB31_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB31_8
.LBB31_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB31_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB31_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB31_7
.LBB31_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB31_7:                               # %if.end
	jmp	.LBB31_8
.LBB31_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB31_10
# BB#9:                                 # %if.then.8
	jmp	.LBB31_11
.LBB31_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_layer_mask_apply, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB31_30
.LBB31_11:                              # %if.end.10
	jmp	.LBB31_12
.LBB31_12:                              # %do.end
	jmp	.LBB31_13
.LBB31_13:                              # %do.body.11
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_layer_mask_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB31_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB31_20
.LBB31_15:                              # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB31_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB31_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB31_19
.LBB31_18:                              # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB31_19:                              # %if.end.31
	jmp	.LBB31_20
.LBB31_20:                              # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB31_22
# BB#21:                                # %if.then.35
	jmp	.LBB31_23
.LBB31_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_layer_mask_apply, %rsi
	movabsq	$.L.str.46, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB31_30
.LBB31_23:                              # %if.end.37
	jmp	.LBB31_24
.LBB31_24:                              # %do.end.38
	jmp	.LBB31_25
.LBB31_25:                              # %do.body.39
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB31_27
# BB#26:                                # %if.then.44
	jmp	.LBB31_28
.LBB31_27:                              # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_layer_mask_apply, %rsi
	movabsq	$.L.str.32, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB31_30
.LBB31_28:                              # %if.end.46
	jmp	.LBB31_29
.LBB31_29:                              # %do.end.47
	movq	-16(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_layer_mask_prop_undo_get_type
	movl	$65, %edx
	movl	$32, %r8d
	movabsq	$.L.str.22, %r9
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gimp_image_undo_push
	movq	%rax, -8(%rbp)
.LBB31_30:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_image_undo_push_layer_mask_apply, .Lfunc_end31-gimp_image_undo_push_layer_mask_apply
	.cfi_endproc

	.globl	gimp_image_undo_push_layer_mask_show
	.align	16, 0x90
	.type	gimp_image_undo_push_layer_mask_show,@function
gimp_image_undo_push_layer_mask_show:   # @gimp_image_undo_push_layer_mask_show
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp118:
	.cfi_def_cfa_offset 16
.Ltmp119:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp120:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB32_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB32_8
.LBB32_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB32_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB32_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB32_7
.LBB32_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB32_7:                               # %if.end
	jmp	.LBB32_8
.LBB32_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB32_10
# BB#9:                                 # %if.then.8
	jmp	.LBB32_11
.LBB32_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_layer_mask_show, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB32_30
.LBB32_11:                              # %if.end.10
	jmp	.LBB32_12
.LBB32_12:                              # %do.end
	jmp	.LBB32_13
.LBB32_13:                              # %do.body.11
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_layer_mask_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB32_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB32_20
.LBB32_15:                              # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB32_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB32_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB32_19
.LBB32_18:                              # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB32_19:                              # %if.end.31
	jmp	.LBB32_20
.LBB32_20:                              # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB32_22
# BB#21:                                # %if.then.35
	jmp	.LBB32_23
.LBB32_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_layer_mask_show, %rsi
	movabsq	$.L.str.46, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB32_30
.LBB32_23:                              # %if.end.37
	jmp	.LBB32_24
.LBB32_24:                              # %do.end.38
	jmp	.LBB32_25
.LBB32_25:                              # %do.body.39
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB32_27
# BB#26:                                # %if.then.44
	jmp	.LBB32_28
.LBB32_27:                              # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_layer_mask_show, %rsi
	movabsq	$.L.str.32, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB32_30
.LBB32_28:                              # %if.end.46
	jmp	.LBB32_29
.LBB32_29:                              # %do.end.47
	movq	-16(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_layer_mask_prop_undo_get_type
	movl	$66, %edx
	movl	$32, %r8d
	movabsq	$.L.str.22, %r9
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gimp_image_undo_push
	movq	%rax, -8(%rbp)
.LBB32_30:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_image_undo_push_layer_mask_show, .Lfunc_end32-gimp_image_undo_push_layer_mask_show
	.cfi_endproc

	.globl	gimp_image_undo_push_channel_add
	.align	16, 0x90
	.type	gimp_image_undo_push_channel_add,@function
gimp_image_undo_push_channel_add:       # @gimp_image_undo_push_channel_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp121:
	.cfi_def_cfa_offset 16
.Ltmp122:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp123:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$184, %rsp
.Ltmp124:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB33_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB33_8
.LBB33_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB33_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB33_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB33_7
.LBB33_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB33_7:                               # %if.end
	jmp	.LBB33_8
.LBB33_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB33_10
# BB#9:                                 # %if.then.8
	jmp	.LBB33_11
.LBB33_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_channel_add, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB33_43
.LBB33_11:                              # %if.end.10
	jmp	.LBB33_12
.LBB33_12:                              # %do.end
	jmp	.LBB33_13
.LBB33_13:                              # %do.body.11
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB33_15
# BB#14:                                # %if.then.20
	movl	$0, -92(%rbp)
	jmp	.LBB33_20
.LBB33_15:                              # %if.else.21
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB33_18
# BB#16:                                # %land.lhs.true.24
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB33_18
# BB#17:                                # %if.then.28
	movl	$1, -92(%rbp)
	jmp	.LBB33_19
.LBB33_18:                              # %if.else.29
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB33_19:                              # %if.end.31
	jmp	.LBB33_20
.LBB33_20:                              # %if.end.32
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB33_22
# BB#21:                                # %if.then.35
	jmp	.LBB33_23
.LBB33_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_channel_add, %rsi
	movabsq	$.L.str.51, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB33_43
.LBB33_23:                              # %if.end.37
	jmp	.LBB33_24
.LBB33_24:                              # %do.end.38
	jmp	.LBB33_25
.LBB33_25:                              # %do.body.39
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	jne	.LBB33_27
# BB#26:                                # %if.then.44
	jmp	.LBB33_28
.LBB33_27:                              # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_channel_add, %rsi
	movabsq	$.L.str.52, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB33_43
.LBB33_28:                              # %if.end.46
	jmp	.LBB33_29
.LBB33_29:                              # %do.end.47
	jmp	.LBB33_30
.LBB33_30:                              # %do.body.48
	cmpq	$0, -48(%rbp)
	je	.LBB33_39
# BB#31:                                # %lor.lhs.false
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB33_33
# BB#32:                                # %if.then.58
	movl	$0, -116(%rbp)
	jmp	.LBB33_38
.LBB33_33:                              # %if.else.59
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB33_36
# BB#34:                                # %land.lhs.true.62
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB33_36
# BB#35:                                # %if.then.66
	movl	$1, -116(%rbp)
	jmp	.LBB33_37
.LBB33_36:                              # %if.else.67
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB33_37:                              # %if.end.69
	jmp	.LBB33_38
.LBB33_38:                              # %if.end.70
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB33_40
.LBB33_39:                              # %if.then.73
	jmp	.LBB33_41
.LBB33_40:                              # %if.else.74
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_channel_add, %rsi
	movabsq	$.L.str.53, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB33_43
.LBB33_41:                              # %if.end.75
	jmp	.LBB33_42
.LBB33_42:                              # %do.end.76
	movq	-24(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gimp_channel_undo_get_type
	movl	$67, %edx
	movl	$8, %r8d
	movabsq	$.L.str.22, %r9
	movabsq	$.L.str.54, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r10
	movq	-48(%rbp), %r11
	movq	-136(%rbp), %rbx        # 8-byte Reload
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	%r10, (%rsp)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r11, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	callq	gimp_image_undo_push
	movq	%rax, -16(%rbp)
.LBB33_43:                              # %return
	movq	-16(%rbp), %rax
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_image_undo_push_channel_add, .Lfunc_end33-gimp_image_undo_push_channel_add
	.cfi_endproc

	.globl	gimp_image_undo_push_channel_remove
	.align	16, 0x90
	.type	gimp_image_undo_push_channel_remove,@function
gimp_image_undo_push_channel_remove:    # @gimp_image_undo_push_channel_remove
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp125:
	.cfi_def_cfa_offset 16
.Ltmp126:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp127:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
.Ltmp128:
	.cfi_offset %rbx, -56
.Ltmp129:
	.cfi_offset %r12, -48
.Ltmp130:
	.cfi_offset %r13, -40
.Ltmp131:
	.cfi_offset %r14, -32
.Ltmp132:
	.cfi_offset %r15, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movl	%r8d, -84(%rbp)
	movq	%r9, -96(%rbp)
# BB#1:                                 # %do.body
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB34_3
# BB#2:                                 # %if.then
	movl	$0, -116(%rbp)
	jmp	.LBB34_8
.LBB34_3:                               # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB34_6
# BB#4:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB34_6
# BB#5:                                 # %if.then.3
	movl	$1, -116(%rbp)
	jmp	.LBB34_7
.LBB34_6:                               # %if.else.4
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB34_7:                               # %if.end
	jmp	.LBB34_8
.LBB34_8:                               # %if.end.6
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB34_10
# BB#9:                                 # %if.then.8
	jmp	.LBB34_11
.LBB34_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_channel_remove, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB34_56
.LBB34_11:                              # %if.end.10
	jmp	.LBB34_12
.LBB34_12:                              # %do.end
	jmp	.LBB34_13
.LBB34_13:                              # %do.body.11
	movq	-72(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB34_15
# BB#14:                                # %if.then.20
	movl	$0, -140(%rbp)
	jmp	.LBB34_20
.LBB34_15:                              # %if.else.21
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB34_18
# BB#16:                                # %land.lhs.true.24
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB34_18
# BB#17:                                # %if.then.28
	movl	$1, -140(%rbp)
	jmp	.LBB34_19
.LBB34_18:                              # %if.else.29
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB34_19:                              # %if.end.31
	jmp	.LBB34_20
.LBB34_20:                              # %if.end.32
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB34_22
# BB#21:                                # %if.then.35
	jmp	.LBB34_23
.LBB34_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_channel_remove, %rsi
	movabsq	$.L.str.51, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB34_56
.LBB34_23:                              # %if.end.37
	jmp	.LBB34_24
.LBB34_24:                              # %do.end.38
	jmp	.LBB34_25
.LBB34_25:                              # %do.body.39
	movq	-72(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB34_27
# BB#26:                                # %if.then.44
	jmp	.LBB34_28
.LBB34_27:                              # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_channel_remove, %rsi
	movabsq	$.L.str.55, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB34_56
.LBB34_28:                              # %if.end.46
	jmp	.LBB34_29
.LBB34_29:                              # %do.end.47
	jmp	.LBB34_30
.LBB34_30:                              # %do.body.48
	cmpq	$0, -80(%rbp)
	je	.LBB34_39
# BB#31:                                # %lor.lhs.false
	movq	-80(%rbp), %rax
	movq	%rax, -152(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB34_33
# BB#32:                                # %if.then.58
	movl	$0, -164(%rbp)
	jmp	.LBB34_38
.LBB34_33:                              # %if.else.59
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB34_36
# BB#34:                                # %land.lhs.true.62
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB34_36
# BB#35:                                # %if.then.66
	movl	$1, -164(%rbp)
	jmp	.LBB34_37
.LBB34_36:                              # %if.else.67
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB34_37:                              # %if.end.69
	jmp	.LBB34_38
.LBB34_38:                              # %if.end.70
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB34_40
.LBB34_39:                              # %if.then.73
	jmp	.LBB34_41
.LBB34_40:                              # %if.else.74
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_channel_remove, %rsi
	movabsq	$.L.str.56, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB34_56
.LBB34_41:                              # %if.end.75
	jmp	.LBB34_42
.LBB34_42:                              # %do.end.76
	jmp	.LBB34_43
.LBB34_43:                              # %do.body.77
	cmpq	$0, -96(%rbp)
	je	.LBB34_52
# BB#44:                                # %lor.lhs.false.79
	movq	-96(%rbp), %rax
	movq	%rax, -176(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -184(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.LBB34_46
# BB#45:                                # %if.then.88
	movl	$0, -188(%rbp)
	jmp	.LBB34_51
.LBB34_46:                              # %if.else.89
	movq	-176(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB34_49
# BB#47:                                # %land.lhs.true.92
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-184(%rbp), %rax
	jne	.LBB34_49
# BB#48:                                # %if.then.96
	movl	$1, -188(%rbp)
	jmp	.LBB34_50
.LBB34_49:                              # %if.else.97
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -188(%rbp)
.LBB34_50:                              # %if.end.99
	jmp	.LBB34_51
.LBB34_51:                              # %if.end.100
	movl	-188(%rbp), %eax
	movl	%eax, -192(%rbp)
	cmpl	$0, -192(%rbp)
	je	.LBB34_53
.LBB34_52:                              # %if.then.103
	jmp	.LBB34_54
.LBB34_53:                              # %if.else.104
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_channel_remove, %rsi
	movabsq	$.L.str.53, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB34_56
.LBB34_54:                              # %if.end.105
	jmp	.LBB34_55
.LBB34_55:                              # %do.end.106
	movq	-56(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	callq	gimp_channel_undo_get_type
	movl	$68, %edx
	movl	$8, %r8d
	movabsq	$.L.str.22, %r9
	movabsq	$.L.str.40, %rdi
	movabsq	$.L.str.41, %rcx
	movabsq	$.L.str.54, %rsi
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movq	-64(%rbp), %rbx
	movq	-72(%rbp), %r14
	movq	-80(%rbp), %r15
	movl	-84(%rbp), %r10d
	movq	-96(%rbp), %r12
	movq	-208(%rbp), %r13        # 8-byte Reload
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%r13, %rdi
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	movq	%rbx, %rcx
	movq	%r14, (%rsp)
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-232(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 24(%rsp)
	movl	%r10d, 32(%rsp)
	movq	-224(%rbp), %r14        # 8-byte Reload
	movq	%r14, 40(%rsp)
	movq	%r12, 48(%rsp)
	movq	$0, 56(%rsp)
	movb	$0, %al
	movq	%r11, -240(%rbp)        # 8-byte Spill
	callq	gimp_image_undo_push
	movq	%rax, -48(%rbp)
.LBB34_56:                              # %return
	movq	-48(%rbp), %rax
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_image_undo_push_channel_remove, .Lfunc_end34-gimp_image_undo_push_channel_remove
	.cfi_endproc

	.globl	gimp_image_undo_push_channel_color
	.align	16, 0x90
	.type	gimp_image_undo_push_channel_color,@function
gimp_image_undo_push_channel_color:     # @gimp_image_undo_push_channel_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp133:
	.cfi_def_cfa_offset 16
.Ltmp134:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp135:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB35_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB35_8
.LBB35_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB35_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB35_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB35_7
.LBB35_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB35_7:                               # %if.end
	jmp	.LBB35_8
.LBB35_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB35_10
# BB#9:                                 # %if.then.8
	jmp	.LBB35_11
.LBB35_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_channel_color, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB35_30
.LBB35_11:                              # %if.end.10
	jmp	.LBB35_12
.LBB35_12:                              # %do.end
	jmp	.LBB35_13
.LBB35_13:                              # %do.body.11
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB35_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB35_20
.LBB35_15:                              # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB35_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB35_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB35_19
.LBB35_18:                              # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB35_19:                              # %if.end.31
	jmp	.LBB35_20
.LBB35_20:                              # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB35_22
# BB#21:                                # %if.then.35
	jmp	.LBB35_23
.LBB35_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_channel_color, %rsi
	movabsq	$.L.str.51, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB35_30
.LBB35_23:                              # %if.end.37
	jmp	.LBB35_24
.LBB35_24:                              # %do.end.38
	jmp	.LBB35_25
.LBB35_25:                              # %do.body.39
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB35_27
# BB#26:                                # %if.then.44
	jmp	.LBB35_28
.LBB35_27:                              # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_channel_color, %rsi
	movabsq	$.L.str.55, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB35_30
.LBB35_28:                              # %if.end.46
	jmp	.LBB35_29
.LBB35_29:                              # %do.end.47
	movq	-16(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_channel_prop_undo_get_type
	movl	$69, %edx
	movl	$80, %r8d
	movabsq	$.L.str.22, %r9
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gimp_image_undo_push
	movq	%rax, -8(%rbp)
.LBB35_30:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_image_undo_push_channel_color, .Lfunc_end35-gimp_image_undo_push_channel_color
	.cfi_endproc

	.globl	gimp_image_undo_push_vectors_add
	.align	16, 0x90
	.type	gimp_image_undo_push_vectors_add,@function
gimp_image_undo_push_vectors_add:       # @gimp_image_undo_push_vectors_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp136:
	.cfi_def_cfa_offset 16
.Ltmp137:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp138:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$184, %rsp
.Ltmp139:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB36_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB36_8
.LBB36_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB36_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB36_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB36_7
.LBB36_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB36_7:                               # %if.end
	jmp	.LBB36_8
.LBB36_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB36_10
# BB#9:                                 # %if.then.8
	jmp	.LBB36_11
.LBB36_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_vectors_add, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB36_43
.LBB36_11:                              # %if.end.10
	jmp	.LBB36_12
.LBB36_12:                              # %do.end
	jmp	.LBB36_13
.LBB36_13:                              # %do.body.11
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_vectors_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB36_15
# BB#14:                                # %if.then.20
	movl	$0, -92(%rbp)
	jmp	.LBB36_20
.LBB36_15:                              # %if.else.21
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB36_18
# BB#16:                                # %land.lhs.true.24
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB36_18
# BB#17:                                # %if.then.28
	movl	$1, -92(%rbp)
	jmp	.LBB36_19
.LBB36_18:                              # %if.else.29
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB36_19:                              # %if.end.31
	jmp	.LBB36_20
.LBB36_20:                              # %if.end.32
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB36_22
# BB#21:                                # %if.then.35
	jmp	.LBB36_23
.LBB36_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_vectors_add, %rsi
	movabsq	$.L.str.57, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB36_43
.LBB36_23:                              # %if.end.37
	jmp	.LBB36_24
.LBB36_24:                              # %do.end.38
	jmp	.LBB36_25
.LBB36_25:                              # %do.body.39
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	jne	.LBB36_27
# BB#26:                                # %if.then.44
	jmp	.LBB36_28
.LBB36_27:                              # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_vectors_add, %rsi
	movabsq	$.L.str.58, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB36_43
.LBB36_28:                              # %if.end.46
	jmp	.LBB36_29
.LBB36_29:                              # %do.end.47
	jmp	.LBB36_30
.LBB36_30:                              # %do.body.48
	cmpq	$0, -48(%rbp)
	je	.LBB36_39
# BB#31:                                # %lor.lhs.false
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_vectors_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB36_33
# BB#32:                                # %if.then.58
	movl	$0, -116(%rbp)
	jmp	.LBB36_38
.LBB36_33:                              # %if.else.59
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB36_36
# BB#34:                                # %land.lhs.true.62
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB36_36
# BB#35:                                # %if.then.66
	movl	$1, -116(%rbp)
	jmp	.LBB36_37
.LBB36_36:                              # %if.else.67
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB36_37:                              # %if.end.69
	jmp	.LBB36_38
.LBB36_38:                              # %if.end.70
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB36_40
.LBB36_39:                              # %if.then.73
	jmp	.LBB36_41
.LBB36_40:                              # %if.else.74
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_vectors_add, %rsi
	movabsq	$.L.str.59, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB36_43
.LBB36_41:                              # %if.end.75
	jmp	.LBB36_42
.LBB36_42:                              # %do.end.76
	movq	-24(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gimp_vectors_undo_get_type
	movl	$70, %edx
	movl	$8, %r8d
	movabsq	$.L.str.22, %r9
	movabsq	$.L.str.60, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r10
	movq	-48(%rbp), %r11
	movq	-136(%rbp), %rbx        # 8-byte Reload
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	%r10, (%rsp)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r11, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	callq	gimp_image_undo_push
	movq	%rax, -16(%rbp)
.LBB36_43:                              # %return
	movq	-16(%rbp), %rax
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_image_undo_push_vectors_add, .Lfunc_end36-gimp_image_undo_push_vectors_add
	.cfi_endproc

	.globl	gimp_image_undo_push_vectors_remove
	.align	16, 0x90
	.type	gimp_image_undo_push_vectors_remove,@function
gimp_image_undo_push_vectors_remove:    # @gimp_image_undo_push_vectors_remove
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp140:
	.cfi_def_cfa_offset 16
.Ltmp141:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp142:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
.Ltmp143:
	.cfi_offset %rbx, -56
.Ltmp144:
	.cfi_offset %r12, -48
.Ltmp145:
	.cfi_offset %r13, -40
.Ltmp146:
	.cfi_offset %r14, -32
.Ltmp147:
	.cfi_offset %r15, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movl	%r8d, -84(%rbp)
	movq	%r9, -96(%rbp)
# BB#1:                                 # %do.body
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB37_3
# BB#2:                                 # %if.then
	movl	$0, -116(%rbp)
	jmp	.LBB37_8
.LBB37_3:                               # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB37_6
# BB#4:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB37_6
# BB#5:                                 # %if.then.3
	movl	$1, -116(%rbp)
	jmp	.LBB37_7
.LBB37_6:                               # %if.else.4
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB37_7:                               # %if.end
	jmp	.LBB37_8
.LBB37_8:                               # %if.end.6
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB37_10
# BB#9:                                 # %if.then.8
	jmp	.LBB37_11
.LBB37_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_vectors_remove, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB37_56
.LBB37_11:                              # %if.end.10
	jmp	.LBB37_12
.LBB37_12:                              # %do.end
	jmp	.LBB37_13
.LBB37_13:                              # %do.body.11
	movq	-72(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_vectors_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB37_15
# BB#14:                                # %if.then.20
	movl	$0, -140(%rbp)
	jmp	.LBB37_20
.LBB37_15:                              # %if.else.21
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB37_18
# BB#16:                                # %land.lhs.true.24
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB37_18
# BB#17:                                # %if.then.28
	movl	$1, -140(%rbp)
	jmp	.LBB37_19
.LBB37_18:                              # %if.else.29
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB37_19:                              # %if.end.31
	jmp	.LBB37_20
.LBB37_20:                              # %if.end.32
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB37_22
# BB#21:                                # %if.then.35
	jmp	.LBB37_23
.LBB37_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_vectors_remove, %rsi
	movabsq	$.L.str.57, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB37_56
.LBB37_23:                              # %if.end.37
	jmp	.LBB37_24
.LBB37_24:                              # %do.end.38
	jmp	.LBB37_25
.LBB37_25:                              # %do.body.39
	movq	-72(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB37_27
# BB#26:                                # %if.then.44
	jmp	.LBB37_28
.LBB37_27:                              # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_vectors_remove, %rsi
	movabsq	$.L.str.61, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB37_56
.LBB37_28:                              # %if.end.46
	jmp	.LBB37_29
.LBB37_29:                              # %do.end.47
	jmp	.LBB37_30
.LBB37_30:                              # %do.body.48
	cmpq	$0, -80(%rbp)
	je	.LBB37_39
# BB#31:                                # %lor.lhs.false
	movq	-80(%rbp), %rax
	movq	%rax, -152(%rbp)
	callq	gimp_vectors_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB37_33
# BB#32:                                # %if.then.58
	movl	$0, -164(%rbp)
	jmp	.LBB37_38
.LBB37_33:                              # %if.else.59
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB37_36
# BB#34:                                # %land.lhs.true.62
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB37_36
# BB#35:                                # %if.then.66
	movl	$1, -164(%rbp)
	jmp	.LBB37_37
.LBB37_36:                              # %if.else.67
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB37_37:                              # %if.end.69
	jmp	.LBB37_38
.LBB37_38:                              # %if.end.70
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB37_40
.LBB37_39:                              # %if.then.73
	jmp	.LBB37_41
.LBB37_40:                              # %if.else.74
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_vectors_remove, %rsi
	movabsq	$.L.str.62, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB37_56
.LBB37_41:                              # %if.end.75
	jmp	.LBB37_42
.LBB37_42:                              # %do.end.76
	jmp	.LBB37_43
.LBB37_43:                              # %do.body.77
	cmpq	$0, -96(%rbp)
	je	.LBB37_52
# BB#44:                                # %lor.lhs.false.79
	movq	-96(%rbp), %rax
	movq	%rax, -176(%rbp)
	callq	gimp_vectors_get_type
	movq	%rax, -184(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.LBB37_46
# BB#45:                                # %if.then.88
	movl	$0, -188(%rbp)
	jmp	.LBB37_51
.LBB37_46:                              # %if.else.89
	movq	-176(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB37_49
# BB#47:                                # %land.lhs.true.92
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-184(%rbp), %rax
	jne	.LBB37_49
# BB#48:                                # %if.then.96
	movl	$1, -188(%rbp)
	jmp	.LBB37_50
.LBB37_49:                              # %if.else.97
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -188(%rbp)
.LBB37_50:                              # %if.end.99
	jmp	.LBB37_51
.LBB37_51:                              # %if.end.100
	movl	-188(%rbp), %eax
	movl	%eax, -192(%rbp)
	cmpl	$0, -192(%rbp)
	je	.LBB37_53
.LBB37_52:                              # %if.then.103
	jmp	.LBB37_54
.LBB37_53:                              # %if.else.104
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_vectors_remove, %rsi
	movabsq	$.L.str.59, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB37_56
.LBB37_54:                              # %if.end.105
	jmp	.LBB37_55
.LBB37_55:                              # %do.end.106
	movq	-56(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	callq	gimp_vectors_undo_get_type
	movl	$71, %edx
	movl	$8, %r8d
	movabsq	$.L.str.22, %r9
	movabsq	$.L.str.40, %rdi
	movabsq	$.L.str.41, %rcx
	movabsq	$.L.str.60, %rsi
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movq	-64(%rbp), %rbx
	movq	-72(%rbp), %r14
	movq	-80(%rbp), %r15
	movl	-84(%rbp), %r10d
	movq	-96(%rbp), %r12
	movq	-208(%rbp), %r13        # 8-byte Reload
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%r13, %rdi
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	movq	%rbx, %rcx
	movq	%r14, (%rsp)
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-232(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 24(%rsp)
	movl	%r10d, 32(%rsp)
	movq	-224(%rbp), %r14        # 8-byte Reload
	movq	%r14, 40(%rsp)
	movq	%r12, 48(%rsp)
	movq	$0, 56(%rsp)
	movb	$0, %al
	movq	%r11, -240(%rbp)        # 8-byte Spill
	callq	gimp_image_undo_push
	movq	%rax, -48(%rbp)
.LBB37_56:                              # %return
	movq	-48(%rbp), %rax
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gimp_image_undo_push_vectors_remove, .Lfunc_end37-gimp_image_undo_push_vectors_remove
	.cfi_endproc

	.globl	gimp_image_undo_push_vectors_mod
	.align	16, 0x90
	.type	gimp_image_undo_push_vectors_mod,@function
gimp_image_undo_push_vectors_mod:       # @gimp_image_undo_push_vectors_mod
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp148:
	.cfi_def_cfa_offset 16
.Ltmp149:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp150:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB38_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB38_8
.LBB38_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB38_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB38_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB38_7
.LBB38_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB38_7:                               # %if.end
	jmp	.LBB38_8
.LBB38_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB38_10
# BB#9:                                 # %if.then.8
	jmp	.LBB38_11
.LBB38_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_vectors_mod, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB38_30
.LBB38_11:                              # %if.end.10
	jmp	.LBB38_12
.LBB38_12:                              # %do.end
	jmp	.LBB38_13
.LBB38_13:                              # %do.body.11
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_vectors_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB38_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB38_20
.LBB38_15:                              # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB38_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB38_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB38_19
.LBB38_18:                              # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB38_19:                              # %if.end.31
	jmp	.LBB38_20
.LBB38_20:                              # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB38_22
# BB#21:                                # %if.then.35
	jmp	.LBB38_23
.LBB38_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_vectors_mod, %rsi
	movabsq	$.L.str.57, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB38_30
.LBB38_23:                              # %if.end.37
	jmp	.LBB38_24
.LBB38_24:                              # %do.end.38
	jmp	.LBB38_25
.LBB38_25:                              # %do.body.39
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB38_27
# BB#26:                                # %if.then.44
	jmp	.LBB38_28
.LBB38_27:                              # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_vectors_mod, %rsi
	movabsq	$.L.str.61, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB38_30
.LBB38_28:                              # %if.end.46
	jmp	.LBB38_29
.LBB38_29:                              # %do.end.47
	movq	-16(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_vectors_mod_undo_get_type
	movl	$72, %edx
	movl	$144, %r8d
	movabsq	$.L.str.22, %r9
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gimp_image_undo_push
	movq	%rax, -8(%rbp)
.LBB38_30:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	gimp_image_undo_push_vectors_mod, .Lfunc_end38-gimp_image_undo_push_vectors_mod
	.cfi_endproc

	.globl	gimp_image_undo_push_fs_to_layer
	.align	16, 0x90
	.type	gimp_image_undo_push_fs_to_layer,@function
gimp_image_undo_push_fs_to_layer:       # @gimp_image_undo_push_fs_to_layer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp151:
	.cfi_def_cfa_offset 16
.Ltmp152:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp153:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB39_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB39_8
.LBB39_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB39_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB39_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB39_7
.LBB39_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB39_7:                               # %if.end
	jmp	.LBB39_8
.LBB39_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB39_10
# BB#9:                                 # %if.then.8
	jmp	.LBB39_11
.LBB39_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_fs_to_layer, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB39_25
.LBB39_11:                              # %if.end.10
	jmp	.LBB39_12
.LBB39_12:                              # %do.end
	jmp	.LBB39_13
.LBB39_13:                              # %do.body.11
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB39_15
# BB#14:                                # %if.then.20
	movl	$0, -84(%rbp)
	jmp	.LBB39_20
.LBB39_15:                              # %if.else.21
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB39_18
# BB#16:                                # %land.lhs.true.24
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB39_18
# BB#17:                                # %if.then.28
	movl	$1, -84(%rbp)
	jmp	.LBB39_19
.LBB39_18:                              # %if.else.29
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB39_19:                              # %if.end.31
	jmp	.LBB39_20
.LBB39_20:                              # %if.end.32
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB39_22
# BB#21:                                # %if.then.35
	jmp	.LBB39_23
.LBB39_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_fs_to_layer, %rsi
	movabsq	$.L.str.63, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB39_25
.LBB39_23:                              # %if.end.37
	jmp	.LBB39_24
.LBB39_24:                              # %do.end.38
	movq	-16(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_floating_sel_undo_get_type
	movl	$73, %edx
	movl	$8, %r8d
	movabsq	$.L.str.22, %r9
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gimp_image_undo_push
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB39_25:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	gimp_image_undo_push_fs_to_layer, .Lfunc_end39-gimp_image_undo_push_fs_to_layer
	.cfi_endproc

	.globl	gimp_image_undo_push_cantundo
	.align	16, 0x90
	.type	gimp_image_undo_push_cantundo,@function
gimp_image_undo_push_cantundo:          # @gimp_image_undo_push_cantundo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp154:
	.cfi_def_cfa_offset 16
.Ltmp155:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp156:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB40_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB40_8
.LBB40_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB40_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB40_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB40_7
.LBB40_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB40_7:                               # %if.end
	jmp	.LBB40_8
.LBB40_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB40_10
# BB#9:                                 # %if.then.8
	jmp	.LBB40_11
.LBB40_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push_cantundo, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB40_15
.LBB40_11:                              # %if.end.10
	jmp	.LBB40_12
.LBB40_12:                              # %do.end
	movq	-16(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_undo_get_type
	movl	$80, %edx
	movl	$65535, %r8d            # imm = 0xFFFF
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	movq	-24(%rbp), %rcx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_image_undo_push
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB40_14
# BB#13:                                # %if.then.14
	movabsq	$.L.str.64, %rsi
	movabsq	$undo_pop_cantundo, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	-72(%rbp), %r8          # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB40_14:                              # %if.end.16
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB40_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	gimp_image_undo_push_cantundo, .Lfunc_end40-gimp_image_undo_push_cantundo
	.cfi_endproc

	.align	16, 0x90
	.type	undo_pop_cantundo,@function
undo_pop_cantundo:                      # @undo_pop_cantundo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp157:
	.cfi_def_cfa_offset 16
.Ltmp158:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp159:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-12(%rbp), %esi
	testl	%esi, %esi
	movl	%esi, -28(%rbp)         # 4-byte Spill
	je	.LBB41_1
	jmp	.LBB41_4
.LBB41_4:                               # %entry
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	je	.LBB41_2
	jmp	.LBB41_3
.LBB41_1:                               # %sw.bb
	movabsq	$.L.str.65, %rdi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_object_get_name
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	gimp_message
	jmp	.LBB41_3
.LBB41_2:                               # %sw.bb.2
	jmp	.LBB41_3
.LBB41_3:                               # %sw.epilog
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	undo_pop_cantundo, .Lfunc_end41-undo_pop_cantundo
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_image_undo_push_image_type,@object # @__func__.gimp_image_undo_push_image_type
.L__func__.gimp_image_undo_push_image_type:
	.asciz	"gimp_image_undo_push_image_type"
	.size	.L__func__.gimp_image_undo_push_image_type, 32

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.1, 22

	.type	.L__func__.gimp_image_undo_push_image_size,@object # @__func__.gimp_image_undo_push_image_size
.L__func__.gimp_image_undo_push_image_size:
	.asciz	"gimp_image_undo_push_image_size"
	.size	.L__func__.gimp_image_undo_push_image_size, 32

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"previous-origin-x"
	.size	.L.str.2, 18

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"previous-origin-y"
	.size	.L.str.3, 18

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"previous-width"
	.size	.L.str.4, 15

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"previous-height"
	.size	.L.str.5, 16

	.type	.L__func__.gimp_image_undo_push_image_resolution,@object # @__func__.gimp_image_undo_push_image_resolution
.L__func__.gimp_image_undo_push_image_resolution:
	.asciz	"gimp_image_undo_push_image_resolution"
	.size	.L__func__.gimp_image_undo_push_image_resolution, 38

	.type	.L__func__.gimp_image_undo_push_image_grid,@object # @__func__.gimp_image_undo_push_image_grid
.L__func__.gimp_image_undo_push_image_grid:
	.asciz	"gimp_image_undo_push_image_grid"
	.size	.L__func__.gimp_image_undo_push_image_grid, 32

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_IS_GRID (grid)"
	.size	.L.str.6, 20

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"grid"
	.size	.L.str.7, 5

	.type	.L__func__.gimp_image_undo_push_image_colormap,@object # @__func__.gimp_image_undo_push_image_colormap
.L__func__.gimp_image_undo_push_image_colormap:
	.asciz	"gimp_image_undo_push_image_colormap"
	.size	.L__func__.gimp_image_undo_push_image_colormap, 36

	.type	.L__func__.gimp_image_undo_push_image_parasite,@object # @__func__.gimp_image_undo_push_image_parasite
.L__func__.gimp_image_undo_push_image_parasite:
	.asciz	"gimp_image_undo_push_image_parasite"
	.size	.L__func__.gimp_image_undo_push_image_parasite, 36

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"parasite != NULL"
	.size	.L.str.8, 17

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"parasite-name"
	.size	.L.str.9, 14

	.type	.L__func__.gimp_image_undo_push_image_parasite_remove,@object # @__func__.gimp_image_undo_push_image_parasite_remove
.L__func__.gimp_image_undo_push_image_parasite_remove:
	.asciz	"gimp_image_undo_push_image_parasite_remove"
	.size	.L__func__.gimp_image_undo_push_image_parasite_remove, 43

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"name != NULL"
	.size	.L.str.10, 13

	.type	.L__func__.gimp_image_undo_push_guide,@object # @__func__.gimp_image_undo_push_guide
.L__func__.gimp_image_undo_push_guide:
	.asciz	"gimp_image_undo_push_guide"
	.size	.L__func__.gimp_image_undo_push_guide, 27

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"GIMP_IS_GUIDE (guide)"
	.size	.L.str.11, 22

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"guide"
	.size	.L.str.12, 6

	.type	.L__func__.gimp_image_undo_push_sample_point,@object # @__func__.gimp_image_undo_push_sample_point
.L__func__.gimp_image_undo_push_sample_point:
	.asciz	"gimp_image_undo_push_sample_point"
	.size	.L__func__.gimp_image_undo_push_sample_point, 34

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"sample_point != NULL"
	.size	.L.str.13, 21

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"sample-point"
	.size	.L.str.14, 13

	.type	.L__func__.gimp_image_undo_push_drawable,@object # @__func__.gimp_image_undo_push_drawable
.L__func__.gimp_image_undo_push_drawable:
	.asciz	"gimp_image_undo_push_drawable"
	.size	.L__func__.gimp_image_undo_push_drawable, 30

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"GIMP_IS_DRAWABLE (drawable)"
	.size	.L.str.15, 28

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"tiles != NULL"
	.size	.L.str.16, 14

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"sparse == TRUE || tile_manager_width (tiles) == width"
	.size	.L.str.17, 54

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"sparse == TRUE || tile_manager_height (tiles) == height"
	.size	.L.str.18, 56

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp_item_is_attached (item)"
	.size	.L.str.19, 29

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"sparse == FALSE || tile_manager_width (tiles) == gimp_item_get_width (item)"
	.size	.L.str.20, 76

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"sparse == FALSE || tile_manager_height (tiles) == gimp_item_get_height (item)"
	.size	.L.str.21, 78

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"item"
	.size	.L.str.22, 5

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"tiles"
	.size	.L.str.23, 6

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"sparse"
	.size	.L.str.24, 7

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"x"
	.size	.L.str.25, 2

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"y"
	.size	.L.str.26, 2

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"width"
	.size	.L.str.27, 6

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"height"
	.size	.L.str.28, 7

	.type	.L__func__.gimp_image_undo_push_drawable_mod,@object # @__func__.gimp_image_undo_push_drawable_mod
.L__func__.gimp_image_undo_push_drawable_mod:
	.asciz	"gimp_image_undo_push_drawable_mod"
	.size	.L__func__.gimp_image_undo_push_drawable_mod, 34

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gimp_item_is_attached (GIMP_ITEM (drawable))"
	.size	.L.str.29, 45

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"copy-tiles"
	.size	.L.str.30, 11

	.type	.L__func__.gimp_image_undo_push_mask,@object # @__func__.gimp_image_undo_push_mask
.L__func__.gimp_image_undo_push_mask:
	.asciz	"gimp_image_undo_push_mask"
	.size	.L__func__.gimp_image_undo_push_mask, 26

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"GIMP_IS_CHANNEL (mask)"
	.size	.L.str.31, 23

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"gimp_item_is_attached (GIMP_ITEM (mask))"
	.size	.L.str.32, 41

	.type	.L__func__.gimp_image_undo_push_item_reorder,@object # @__func__.gimp_image_undo_push_item_reorder
.L__func__.gimp_image_undo_push_item_reorder:
	.asciz	"gimp_image_undo_push_item_reorder"
	.size	.L__func__.gimp_image_undo_push_item_reorder, 34

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"GIMP_IS_ITEM (item)"
	.size	.L.str.33, 20

	.type	.L__func__.gimp_image_undo_push_item_rename,@object # @__func__.gimp_image_undo_push_item_rename
.L__func__.gimp_image_undo_push_item_rename:
	.asciz	"gimp_image_undo_push_item_rename"
	.size	.L__func__.gimp_image_undo_push_item_rename, 33

	.type	.L__func__.gimp_image_undo_push_item_displace,@object # @__func__.gimp_image_undo_push_item_displace
.L__func__.gimp_image_undo_push_item_displace:
	.asciz	"gimp_image_undo_push_item_displace"
	.size	.L__func__.gimp_image_undo_push_item_displace, 35

	.type	.L__func__.gimp_image_undo_push_item_visibility,@object # @__func__.gimp_image_undo_push_item_visibility
.L__func__.gimp_image_undo_push_item_visibility:
	.asciz	"gimp_image_undo_push_item_visibility"
	.size	.L__func__.gimp_image_undo_push_item_visibility, 37

	.type	.L__func__.gimp_image_undo_push_item_linked,@object # @__func__.gimp_image_undo_push_item_linked
.L__func__.gimp_image_undo_push_item_linked:
	.asciz	"gimp_image_undo_push_item_linked"
	.size	.L__func__.gimp_image_undo_push_item_linked, 33

	.type	.L__func__.gimp_image_undo_push_item_parasite,@object # @__func__.gimp_image_undo_push_item_parasite
.L__func__.gimp_image_undo_push_item_parasite:
	.asciz	"gimp_image_undo_push_item_parasite"
	.size	.L__func__.gimp_image_undo_push_item_parasite, 35

	.type	.L__func__.gimp_image_undo_push_item_parasite_remove,@object # @__func__.gimp_image_undo_push_item_parasite_remove
.L__func__.gimp_image_undo_push_item_parasite_remove:
	.asciz	"gimp_image_undo_push_item_parasite_remove"
	.size	.L__func__.gimp_image_undo_push_item_parasite_remove, 42

	.type	.L__func__.gimp_image_undo_push_layer_add,@object # @__func__.gimp_image_undo_push_layer_add
.L__func__.gimp_image_undo_push_layer_add:
	.asciz	"gimp_image_undo_push_layer_add"
	.size	.L__func__.gimp_image_undo_push_layer_add, 31

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"GIMP_IS_LAYER (layer)"
	.size	.L.str.34, 22

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"! gimp_item_is_attached (GIMP_ITEM (layer))"
	.size	.L.str.35, 44

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"prev_layer == NULL || GIMP_IS_LAYER (prev_layer)"
	.size	.L.str.36, 49

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"prev-layer"
	.size	.L.str.37, 11

	.type	.L__func__.gimp_image_undo_push_layer_remove,@object # @__func__.gimp_image_undo_push_layer_remove
.L__func__.gimp_image_undo_push_layer_remove:
	.asciz	"gimp_image_undo_push_layer_remove"
	.size	.L__func__.gimp_image_undo_push_layer_remove, 34

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"gimp_item_is_attached (GIMP_ITEM (layer))"
	.size	.L.str.38, 42

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"prev_parent == NULL || GIMP_IS_LAYER (prev_parent)"
	.size	.L.str.39, 51

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"prev-parent"
	.size	.L.str.40, 12

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"prev-position"
	.size	.L.str.41, 14

	.type	.L__func__.gimp_image_undo_push_layer_mode,@object # @__func__.gimp_image_undo_push_layer_mode
.L__func__.gimp_image_undo_push_layer_mode:
	.asciz	"gimp_image_undo_push_layer_mode"
	.size	.L__func__.gimp_image_undo_push_layer_mode, 32

	.type	.L__func__.gimp_image_undo_push_layer_opacity,@object # @__func__.gimp_image_undo_push_layer_opacity
.L__func__.gimp_image_undo_push_layer_opacity:
	.asciz	"gimp_image_undo_push_layer_opacity"
	.size	.L__func__.gimp_image_undo_push_layer_opacity, 35

	.type	.L__func__.gimp_image_undo_push_layer_lock_alpha,@object # @__func__.gimp_image_undo_push_layer_lock_alpha
.L__func__.gimp_image_undo_push_layer_lock_alpha:
	.asciz	"gimp_image_undo_push_layer_lock_alpha"
	.size	.L__func__.gimp_image_undo_push_layer_lock_alpha, 38

	.type	.L__func__.gimp_image_undo_push_group_layer_suspend,@object # @__func__.gimp_image_undo_push_group_layer_suspend
.L__func__.gimp_image_undo_push_group_layer_suspend:
	.asciz	"gimp_image_undo_push_group_layer_suspend"
	.size	.L__func__.gimp_image_undo_push_group_layer_suspend, 41

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"GIMP_IS_GROUP_LAYER (group)"
	.size	.L.str.42, 28

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"gimp_item_is_attached (GIMP_ITEM (group))"
	.size	.L.str.43, 42

	.type	.L__func__.gimp_image_undo_push_group_layer_resume,@object # @__func__.gimp_image_undo_push_group_layer_resume
.L__func__.gimp_image_undo_push_group_layer_resume:
	.asciz	"gimp_image_undo_push_group_layer_resume"
	.size	.L__func__.gimp_image_undo_push_group_layer_resume, 40

	.type	.L__func__.gimp_image_undo_push_group_layer_convert,@object # @__func__.gimp_image_undo_push_group_layer_convert
.L__func__.gimp_image_undo_push_group_layer_convert:
	.asciz	"gimp_image_undo_push_group_layer_convert"
	.size	.L__func__.gimp_image_undo_push_group_layer_convert, 41

	.type	.L__func__.gimp_image_undo_push_text_layer,@object # @__func__.gimp_image_undo_push_text_layer
.L__func__.gimp_image_undo_push_text_layer:
	.asciz	"gimp_image_undo_push_text_layer"
	.size	.L__func__.gimp_image_undo_push_text_layer, 32

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"GIMP_IS_TEXT_LAYER (layer)"
	.size	.L.str.44, 27

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"param"
	.size	.L.str.45, 6

	.type	.L__func__.gimp_image_undo_push_text_layer_modified,@object # @__func__.gimp_image_undo_push_text_layer_modified
.L__func__.gimp_image_undo_push_text_layer_modified:
	.asciz	"gimp_image_undo_push_text_layer_modified"
	.size	.L__func__.gimp_image_undo_push_text_layer_modified, 41

	.type	.L__func__.gimp_image_undo_push_layer_mask_add,@object # @__func__.gimp_image_undo_push_layer_mask_add
.L__func__.gimp_image_undo_push_layer_mask_add:
	.asciz	"gimp_image_undo_push_layer_mask_add"
	.size	.L__func__.gimp_image_undo_push_layer_mask_add, 36

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"GIMP_IS_LAYER_MASK (mask)"
	.size	.L.str.46, 26

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"! gimp_item_is_attached (GIMP_ITEM (mask))"
	.size	.L.str.47, 43

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"layer-mask"
	.size	.L.str.48, 11

	.type	.L__func__.gimp_image_undo_push_layer_mask_remove,@object # @__func__.gimp_image_undo_push_layer_mask_remove
.L__func__.gimp_image_undo_push_layer_mask_remove:
	.asciz	"gimp_image_undo_push_layer_mask_remove"
	.size	.L__func__.gimp_image_undo_push_layer_mask_remove, 39

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"gimp_layer_mask_get_layer (mask) == layer"
	.size	.L.str.49, 42

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"gimp_layer_get_mask (layer) == mask"
	.size	.L.str.50, 36

	.type	.L__func__.gimp_image_undo_push_layer_mask_apply,@object # @__func__.gimp_image_undo_push_layer_mask_apply
.L__func__.gimp_image_undo_push_layer_mask_apply:
	.asciz	"gimp_image_undo_push_layer_mask_apply"
	.size	.L__func__.gimp_image_undo_push_layer_mask_apply, 38

	.type	.L__func__.gimp_image_undo_push_layer_mask_show,@object # @__func__.gimp_image_undo_push_layer_mask_show
.L__func__.gimp_image_undo_push_layer_mask_show:
	.asciz	"gimp_image_undo_push_layer_mask_show"
	.size	.L__func__.gimp_image_undo_push_layer_mask_show, 37

	.type	.L__func__.gimp_image_undo_push_channel_add,@object # @__func__.gimp_image_undo_push_channel_add
.L__func__.gimp_image_undo_push_channel_add:
	.asciz	"gimp_image_undo_push_channel_add"
	.size	.L__func__.gimp_image_undo_push_channel_add, 33

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"GIMP_IS_CHANNEL (channel)"
	.size	.L.str.51, 26

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"! gimp_item_is_attached (GIMP_ITEM (channel))"
	.size	.L.str.52, 46

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"prev_channel == NULL || GIMP_IS_CHANNEL (prev_channel)"
	.size	.L.str.53, 55

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"prev-channel"
	.size	.L.str.54, 13

	.type	.L__func__.gimp_image_undo_push_channel_remove,@object # @__func__.gimp_image_undo_push_channel_remove
.L__func__.gimp_image_undo_push_channel_remove:
	.asciz	"gimp_image_undo_push_channel_remove"
	.size	.L__func__.gimp_image_undo_push_channel_remove, 36

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"gimp_item_is_attached (GIMP_ITEM (channel))"
	.size	.L.str.55, 44

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"prev_parent == NULL || GIMP_IS_CHANNEL (prev_parent)"
	.size	.L.str.56, 53

	.type	.L__func__.gimp_image_undo_push_channel_color,@object # @__func__.gimp_image_undo_push_channel_color
.L__func__.gimp_image_undo_push_channel_color:
	.asciz	"gimp_image_undo_push_channel_color"
	.size	.L__func__.gimp_image_undo_push_channel_color, 35

	.type	.L__func__.gimp_image_undo_push_vectors_add,@object # @__func__.gimp_image_undo_push_vectors_add
.L__func__.gimp_image_undo_push_vectors_add:
	.asciz	"gimp_image_undo_push_vectors_add"
	.size	.L__func__.gimp_image_undo_push_vectors_add, 33

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"GIMP_IS_VECTORS (vectors)"
	.size	.L.str.57, 26

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"! gimp_item_is_attached (GIMP_ITEM (vectors))"
	.size	.L.str.58, 46

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"prev_vectors == NULL || GIMP_IS_VECTORS (prev_vectors)"
	.size	.L.str.59, 55

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"prev-vectors"
	.size	.L.str.60, 13

	.type	.L__func__.gimp_image_undo_push_vectors_remove,@object # @__func__.gimp_image_undo_push_vectors_remove
.L__func__.gimp_image_undo_push_vectors_remove:
	.asciz	"gimp_image_undo_push_vectors_remove"
	.size	.L__func__.gimp_image_undo_push_vectors_remove, 36

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"gimp_item_is_attached (GIMP_ITEM (vectors))"
	.size	.L.str.61, 44

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"prev_parent == NULL || GIMP_IS_VECTORS (prev_parent)"
	.size	.L.str.62, 53

	.type	.L__func__.gimp_image_undo_push_vectors_mod,@object # @__func__.gimp_image_undo_push_vectors_mod
.L__func__.gimp_image_undo_push_vectors_mod:
	.asciz	"gimp_image_undo_push_vectors_mod"
	.size	.L__func__.gimp_image_undo_push_vectors_mod, 33

	.type	.L__func__.gimp_image_undo_push_fs_to_layer,@object # @__func__.gimp_image_undo_push_fs_to_layer
.L__func__.gimp_image_undo_push_fs_to_layer:
	.asciz	"gimp_image_undo_push_fs_to_layer"
	.size	.L__func__.gimp_image_undo_push_fs_to_layer, 33

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"GIMP_IS_LAYER (floating_layer)"
	.size	.L.str.63, 31

	.type	.L__func__.gimp_image_undo_push_cantundo,@object # @__func__.gimp_image_undo_push_cantundo
.L__func__.gimp_image_undo_push_cantundo:
	.asciz	"gimp_image_undo_push_cantundo"
	.size	.L__func__.gimp_image_undo_push_cantundo, 30

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"pop"
	.size	.L.str.64, 4

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"Can't undo %s"
	.size	.L.str.65, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
