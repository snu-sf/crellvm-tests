	.text
	.file	"gimpdeviceinfo-coords.bc"
	.globl	gimp_device_info_get_event_coords
	.align	16, 0x90
	.type	gimp_device_info_get_event_coords,@function
gimp_device_info_get_event_coords:      # @gimp_device_info_get_event_coords
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
	subq	$96, %rsp
	movl	$1, %eax
	leaq	-48(%rbp), %r8
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-32(%rbp), %rdi
	movl	%eax, %esi
	movq	%r8, %rdx
	callq	gdk_event_get_axis
	cmpl	$0, %eax
	je	.LBB0_18
# BB#1:                                 # %if.then
	movl	$2, %esi
	movabsq	$default_coords, %rax
	movl	$64, %ecx
	movl	%ecx, %edx
	movq	-40(%rbp), %rdi
	movl	%esi, -76(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	callq	memcpy
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movl	-76(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gdk_event_get_axis
	movq	-32(%rbp), %rdx
	cmpq	$0, 8(%rdx)
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB0_9
# BB#2:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB0_9
# BB#3:                                 # %if.then.7
	movq	-32(%rbp), %rdi
	callq	gtk_get_event_widget
	leaq	-64(%rbp), %rdi
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	callq	gdk_window_get_user_data
	cmpq	$0, -56(%rbp)
	je	.LBB0_8
# BB#4:                                 # %land.lhs.true.10
	cmpq	$0, -64(%rbp)
	je	.LBB0_8
# BB#5:                                 # %if.then.12
	xorl	%eax, %eax
	leaq	-68(%rbp), %r8
	leaq	-72(%rbp), %r9
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	gtk_widget_translate_coordinates
	cmpl	$0, %eax
	je	.LBB0_7
# BB#6:                                 # %if.then.15
	cvtsi2sdl	-68(%rbp), %xmm0
	movq	-40(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	cvtsi2sdl	-72(%rbp), %xmm0
	movq	-40(%rbp), %rax
	addsd	8(%rax), %xmm0
	movsd	%xmm0, 8(%rax)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.20
	jmp	.LBB0_9
.LBB0_9:                                # %if.end.21
	movl	$3, %esi
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdx
	callq	gdk_event_get_axis
	cmpl	$0, %eax
	je	.LBB0_11
# BB#10:                                # %if.then.24
	movl	$3, %esi
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gimp_device_info_map_axis
	movq	-40(%rbp), %rax
	movsd	%xmm0, 16(%rax)
.LBB0_11:                               # %if.end.28
	movl	$4, %esi
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdx
	callq	gdk_event_get_axis
	cmpl	$0, %eax
	je	.LBB0_13
# BB#12:                                # %if.then.31
	movl	$4, %esi
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gimp_device_info_map_axis
	movq	-40(%rbp), %rax
	movsd	%xmm0, 24(%rax)
.LBB0_13:                               # %if.end.35
	movl	$5, %esi
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdx
	callq	gdk_event_get_axis
	cmpl	$0, %eax
	je	.LBB0_15
# BB#14:                                # %if.then.38
	movl	$5, %esi
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gimp_device_info_map_axis
	movq	-40(%rbp), %rax
	movsd	%xmm0, 32(%rax)
.LBB0_15:                               # %if.end.42
	movl	$6, %esi
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdx
	callq	gdk_event_get_axis
	cmpl	$0, %eax
	je	.LBB0_17
# BB#16:                                # %if.then.45
	movl	$6, %esi
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	40(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gimp_device_info_map_axis
	movq	-40(%rbp), %rax
	movsd	%xmm0, 40(%rax)
.LBB0_17:                               # %if.end.49
	movl	$1, -4(%rbp)
	jmp	.LBB0_19
.LBB0_18:                               # %if.end.50
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_device_info_get_device_coords
	movl	$0, -4(%rbp)
.LBB0_19:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_device_info_get_event_coords, .Lfunc_end0-gimp_device_info_get_event_coords
	.cfi_endproc

	.globl	gimp_device_info_get_device_coords
	.align	16, 0x90
	.type	gimp_device_info_get_device_coords,@function
gimp_device_info_get_device_coords:     # @gimp_device_info_get_device_coords
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
	pushq	%rbx
	subq	$136, %rsp
.Ltmp6:
	.cfi_offset %rbx, -24
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	-96(%rbp), %r8
	movabsq	$default_coords, %r9
	movl	$64, %eax
	movl	%eax, %r10d
	xorl	%eax, %eax
	movl	$56, %r11d
	movl	%r11d, %ebx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%r8, %rdx
	movq	%rdx, %rdi
	movl	%eax, %esi
	movq	%rbx, %rdx
	movq	%r9, -104(%rbp)         # 8-byte Spill
	movq	%r8, -112(%rbp)         # 8-byte Spill
	movq	%r10, -120(%rbp)        # 8-byte Spill
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	memset
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	-120(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movq	-16(%rbp), %rcx
	movq	344(%rcx), %rdi
	movq	-24(%rbp), %rsi
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	-128(%rbp), %rcx        # 8-byte Reload
	callq	gdk_device_get_state
	movl	$1, %edx
	leaq	-96(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movq	344(%rcx), %rdi
	movq	-32(%rbp), %rcx
	callq	gdk_device_get_axis
	movl	$2, %edx
	leaq	-96(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movq	344(%rcx), %rdi
	movq	-32(%rbp), %rcx
	addq	$8, %rcx
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	gdk_device_get_axis
	movl	$3, %edx
	leaq	-96(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movq	344(%rcx), %rdi
	movq	-32(%rbp), %rcx
	addq	$16, %rcx
	movl	%eax, -136(%rbp)        # 4-byte Spill
	callq	gdk_device_get_axis
	cmpl	$0, %eax
	je	.LBB1_2
# BB#1:                                 # %if.then
	movl	$3, %esi
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gimp_device_info_map_axis
	movq	-32(%rbp), %rax
	movsd	%xmm0, 16(%rax)
.LBB1_2:                                # %if.end
	movl	$4, %edx
	leaq	-96(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	344(%rax), %rdi
	movq	-32(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rcx
	callq	gdk_device_get_axis
	cmpl	$0, %eax
	je	.LBB1_4
# BB#3:                                 # %if.then.16
	movl	$4, %esi
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gimp_device_info_map_axis
	movq	-32(%rbp), %rax
	movsd	%xmm0, 24(%rax)
.LBB1_4:                                # %if.end.20
	movl	$5, %edx
	leaq	-96(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	344(%rax), %rdi
	movq	-32(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rcx
	callq	gdk_device_get_axis
	cmpl	$0, %eax
	je	.LBB1_6
# BB#5:                                 # %if.then.25
	movl	$5, %esi
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gimp_device_info_map_axis
	movq	-32(%rbp), %rax
	movsd	%xmm0, 32(%rax)
.LBB1_6:                                # %if.end.29
	movl	$6, %edx
	leaq	-96(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	344(%rax), %rdi
	movq	-32(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rcx
	callq	gdk_device_get_axis
	cmpl	$0, %eax
	je	.LBB1_8
# BB#7:                                 # %if.then.34
	movl	$6, %esi
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movsd	40(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gimp_device_info_map_axis
	movq	-32(%rbp), %rax
	movsd	%xmm0, 40(%rax)
.LBB1_8:                                # %if.end.38
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_device_info_get_device_coords, .Lfunc_end1-gimp_device_info_get_device_coords
	.cfi_endproc

	.globl	gimp_device_info_get_time_coords
	.align	16, 0x90
	.type	gimp_device_info_get_time_coords,@function
gimp_device_info_get_time_coords:       # @gimp_device_info_get_time_coords
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp9:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	$1, %eax
	movabsq	$default_coords, %rcx
	movl	$64, %r8d
	movl	%r8d, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movq	%r9, %rdx
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	memcpy
	movq	-8(%rbp), %rcx
	movq	344(%rcx), %rdi
	movq	-16(%rbp), %rcx
	addq	$8, %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %rsi
	movl	-28(%rbp), %eax         # 4-byte Reload
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	callq	gdk_device_get_axis
	movl	$2, %edx
	movq	-8(%rbp), %rcx
	movq	344(%rcx), %rdi
	movq	-16(%rbp), %rcx
	addq	$8, %rcx
	movq	-24(%rbp), %rsi
	addq	$8, %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	gdk_device_get_axis
	movl	$3, %edx
	movq	-8(%rbp), %rcx
	movq	344(%rcx), %rdi
	movq	-16(%rbp), %rcx
	addq	$8, %rcx
	movq	-24(%rbp), %rsi
	addq	$16, %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	gdk_device_get_axis
	cmpl	$0, %eax
	je	.LBB2_2
# BB#1:                                 # %if.then
	movl	$3, %esi
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gimp_device_info_map_axis
	movq	-24(%rbp), %rax
	movsd	%xmm0, 16(%rax)
.LBB2_2:                                # %if.end
	movl	$4, %edx
	movq	-8(%rbp), %rax
	movq	344(%rax), %rdi
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	-24(%rbp), %rcx
	addq	$24, %rcx
	movq	%rax, %rsi
	callq	gdk_device_get_axis
	cmpl	$0, %eax
	je	.LBB2_4
# BB#3:                                 # %if.then.17
	movl	$4, %esi
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gimp_device_info_map_axis
	movq	-24(%rbp), %rax
	movsd	%xmm0, 24(%rax)
.LBB2_4:                                # %if.end.21
	movl	$5, %edx
	movq	-8(%rbp), %rax
	movq	344(%rax), %rdi
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	-24(%rbp), %rcx
	addq	$32, %rcx
	movq	%rax, %rsi
	callq	gdk_device_get_axis
	cmpl	$0, %eax
	je	.LBB2_6
# BB#5:                                 # %if.then.27
	movl	$5, %esi
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gimp_device_info_map_axis
	movq	-24(%rbp), %rax
	movsd	%xmm0, 32(%rax)
.LBB2_6:                                # %if.end.31
	movl	$6, %edx
	movq	-8(%rbp), %rax
	movq	344(%rax), %rdi
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	-24(%rbp), %rcx
	addq	$40, %rcx
	movq	%rax, %rsi
	callq	gdk_device_get_axis
	cmpl	$0, %eax
	je	.LBB2_8
# BB#7:                                 # %if.then.37
	movl	$6, %esi
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movsd	40(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gimp_device_info_map_axis
	movq	-24(%rbp), %rax
	movsd	%xmm0, 40(%rax)
.LBB2_8:                                # %if.end.41
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_device_info_get_time_coords, .Lfunc_end2-gimp_device_info_get_time_coords
	.cfi_endproc

	.globl	gimp_device_info_get_event_state
	.align	16, 0x90
	.type	gimp_device_info_get_event_state,@function
gimp_device_info_get_event_state:       # @gimp_device_info_get_event_state
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gdk_event_get_state
	cmpl	$0, %eax
	je	.LBB3_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB3_3
.LBB3_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_device_info_get_device_state
	movl	$0, -4(%rbp)
.LBB3_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_device_info_get_event_state, .Lfunc_end3-gimp_device_info_get_event_state
	.cfi_endproc

	.globl	gimp_device_info_get_device_state
	.align	16, 0x90
	.type	gimp_device_info_get_device_state,@function
gimp_device_info_get_device_state:      # @gimp_device_info_get_device_state
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp15:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	344(%rdx), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-32(%rbp), %rcx         # 8-byte Reload
	callq	gdk_device_get_state
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_device_info_get_device_state, .Lfunc_end4-gimp_device_info_get_device_state
	.cfi_endproc

	.type	default_coords,@object  # @default_coords
	.section	.rodata,"a",@progbits
	.align	8
default_coords:
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4602678819172646912     # double 0.5
	.quad	0                       # double 0
	.quad	0                       # double 0
	.size	default_coords, 64


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
