	.text
	.file	"xterm.bc"
	.globl	x_display_info_for_display
	.align	16, 0x90
	.type	x_display_info_for_display,@function
x_display_info_for_display:             # @x_display_info_for_display
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
	movq	%rdi, -16(%rbp)
	movq	x_display_list, %rdi
	movq	%rdi, -24(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB0_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB0_4
# BB#3:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_7
.LBB0_4:                                # %if.end
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_5
.LBB0_5:                                # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB0_1
.LBB0_6:                                # %for.end
	movq	$0, -8(%rbp)
.LBB0_7:                                # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	x_display_info_for_display, .Lfunc_end0-x_display_info_for_display
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4607182418800017408     # double 1
.LCPI1_1:
	.quad	4636737291354636288     # double 100
.LCPI1_2:
	.quad	4751297606873776128     # double 4294967295
.LCPI1_3:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
	.text
	.globl	x_set_frame_alpha
	.align	16, 0x90
	.type	x_set_frame_alpha,@function
x_set_frame_alpha:                      # @x_set_frame_alpha
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
	pushq	%r12
	pushq	%rbx
	subq	$240, %rsp
.Ltmp6:
	.cfi_offset %rbx, -48
.Ltmp7:
	.cfi_offset %r12, -40
.Ltmp8:
	.cfi_offset %r14, -32
.Ltmp9:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	%rdi, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -56(%rbp)
	movq	-40(%rbp), %rdi
	movq	384(%rdi), %rdi
	cmpq	$0, 80(%rdi)
	je	.LBB1_6
# BB#1:                                 # %cond.true
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	je	.LBB1_4
# BB#2:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	cmpq	$0, %rax
	je	.LBB1_4
# BB#3:                                 # %cond.true.14
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_x11_drawable_get_xid
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB1_5
.LBB1_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB1_5
.LBB1_5:                                # %cond.end
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB1_7
.LBB1_6:                                # %cond.false.20
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB1_7:                                # %cond.end.23
	movq	-160(%rbp), %rax        # 8-byte Reload
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -64(%rbp)
	movsd	%xmm0, -72(%rbp)
	movsd	%xmm0, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	616(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB1_9
# BB#8:                                 # %if.then
	movq	-40(%rbp), %rax
	movsd	440(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
	jmp	.LBB1_10
.LBB1_9:                                # %if.else
	movq	-40(%rbp), %rax
	movsd	448(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
.LBB1_10:                               # %if.end
	movq	globals+880, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB1_12
# BB#11:                                # %if.then.30
	movq	globals+880, %rdi
	callq	XFLOAT_DATA
	movsd	%xmm0, -80(%rbp)
	jmp	.LBB1_15
.LBB1_12:                               # %if.else.32
	movq	globals+880, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB1_14
# BB#13:                                # %if.then.38
	movsd	.LCPI1_1, %xmm0         # xmm0 = mem[0],zero
	movq	globals+880, %rax
	sarq	$2, %rax
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -80(%rbp)
.LBB1_14:                               # %if.end.40
	jmp	.LBB1_15
.LBB1_15:                               # %if.end.41
	xorps	%xmm0, %xmm0
	ucomisd	-72(%rbp), %xmm0
	jbe	.LBB1_17
# BB#16:                                # %if.then.44
	jmp	.LBB1_33
.LBB1_17:                               # %if.else.45
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_19
# BB#18:                                # %if.then.48
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
	jmp	.LBB1_24
.LBB1_19:                               # %if.else.49
	xorps	%xmm0, %xmm0
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB1_23
# BB#20:                                # %land.lhs.true.52
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_23
# BB#21:                                # %land.lhs.true.55
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-80(%rbp), %xmm0
	jb	.LBB1_23
# BB#22:                                # %if.then.58
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
.LBB1_23:                               # %if.end.59
	jmp	.LBB1_24
.LBB1_24:                               # %if.end.60
	jmp	.LBB1_25
.LBB1_25:                               # %if.end.61
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI1_2(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	.LCPI1_3(%rip), %xmm1   # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	cvttsd2si	%xmm0, %rcx
	ucomisd	%xmm1, %xmm0
	cmovbq	%rcx, %rax
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rdi
	callq	x_catch_errors
	movq	-40(%rbp), %rdi
	callq	x_find_topmost_parent
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB1_27
# BB#26:                                # %if.then.66
	movl	$6, %eax
	movl	%eax, %ecx
	movl	$32, %r8d
	xorl	%r9d, %r9d
	movl	$1, %eax
	leaq	-88(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-48(%rbp), %r10
	movq	984(%r10), %r10
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	movq	%r10, %rdx
	movq	-168(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	XChangeProperty
	movl	%eax, -176(%rbp)        # 4-byte Spill
.LBB1_27:                               # %if.end.68
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	$1, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	movl	$6, %eax
	movl	%eax, %edx
	leaq	-112(%rbp), %rsi
	leaq	-120(%rbp), %rdi
	leaq	-128(%rbp), %r10
	leaq	-136(%rbp), %r11
	leaq	-104(%rbp), %rbx
	movq	-56(%rbp), %r14
	movq	-64(%rbp), %r15
	movq	-48(%rbp), %r12
	movq	984(%r12), %r12
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	movq	%r15, %rsi
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movq	%r12, %rdx
	movq	$6, (%rsp)
	movq	-192(%rbp), %r14        # 8-byte Reload
	movq	%r14, 8(%rsp)
	movq	-184(%rbp), %r15        # 8-byte Reload
	movq	%r15, 16(%rsp)
	movq	%r10, 24(%rsp)
	movq	%r11, 32(%rsp)
	movq	%rbx, 40(%rsp)
	callq	XGetWindowProperty
	movl	%eax, -116(%rbp)
	cmpl	$0, -116(%rbp)
	jne	.LBB1_32
# BB#28:                                # %land.lhs.true.73
	cmpq	$0, -112(%rbp)
	je	.LBB1_32
# BB#29:                                # %if.then.76
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-104(%rbp), %rdi
	callq	XFree
	movq	-144(%rbp), %rdi
	cmpq	-88(%rbp), %rdi
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jne	.LBB1_31
# BB#30:                                # %if.then.80
	callq	x_uncatch_errors
	jmp	.LBB1_33
.LBB1_31:                               # %if.end.81
	jmp	.LBB1_32
.LBB1_32:                               # %if.end.82
	movl	$6, %eax
	movl	%eax, %ecx
	movl	$32, %r8d
	xorl	%r9d, %r9d
	movl	$1, %eax
	leaq	-88(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %r10
	movq	984(%r10), %r10
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	movq	%r10, %rdx
	movq	-216(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	XChangeProperty
	movl	%eax, -224(%rbp)        # 4-byte Spill
	callq	x_uncatch_errors
.LBB1_33:                               # %return
	addq	$240, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	x_set_frame_alpha, .Lfunc_end1-x_set_frame_alpha
	.cfi_endproc

	.globl	x_catch_errors
	.align	16, 0x90
	.type	x_catch_errors,@function
x_catch_errors:                         # @x_catch_errors
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
	subq	$16, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	x_catch_errors_with_handler
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	x_catch_errors, .Lfunc_end2-x_catch_errors
	.cfi_endproc

	.align	16, 0x90
	.type	x_find_topmost_parent,@function
x_find_topmost_parent:                  # @x_find_topmost_parent
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	72(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -40(%rbp)
.LBB3_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	cmpq	104(%rcx), %rax
	je	.LBB3_6
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB3_1 Depth=1
	leaq	-48(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	leaq	-56(%rbp), %r8
	leaq	-60(%rbp), %r9
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	XQueryTree
	cmpl	$0, %eax
	je	.LBB3_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	XFree
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB3_5
.LBB3_4:                                # %if.else
	jmp	.LBB3_6
.LBB3_5:                                # %if.end
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_1
.LBB3_6:                                # %while.end
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	x_find_topmost_parent, .Lfunc_end3-x_find_topmost_parent
	.cfi_endproc

	.globl	x_uncatch_errors
	.align	16, 0x90
	.type	x_uncatch_errors,@function
x_uncatch_errors:                       # @x_uncatch_errors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	callq	block_input
	movq	x_error_message, %rax
	movq	200(%rax), %rdi
	callq	x_display_info_for_display
	cmpq	$0, %rax
	je	.LBB4_4
# BB#1:                                 # %if.then
	jmp	.LBB4_2
.LBB4_2:                                # %do.body
	callq	gdk_window_process_all_updates
	xorl	%esi, %esi
	movq	x_error_message, %rax
	movq	200(%rax), %rdi
	callq	XSync
	movl	%eax, -12(%rbp)         # 4-byte Spill
# BB#3:                                 # %do.end
	jmp	.LBB4_4
.LBB4_4:                                # %if.end
	movq	x_error_message, %rax
	movq	%rax, -8(%rbp)
	movq	x_error_message, %rax
	movq	224(%rax), %rax
	movq	%rax, x_error_message
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	callq	unblock_input
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	x_uncatch_errors, .Lfunc_end4-x_uncatch_errors
	.cfi_endproc

	.globl	x_query_colors
	.align	16, 0x90
	.type	x_query_colors,@function
x_query_colors:                         # @x_query_colors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rsi
	cmpl	$0, 748(%rsi)
	jle	.LBB5_6
# BB#1:                                 # %if.then
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	movq	-32(%rbp), %rdx
	movl	748(%rdx), %esi
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	movl	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-100(%rbp), %esi        # 4-byte Reload
	shll	%cl, %esi
	subl	$1, %esi
	movl	%esi, -52(%rbp)
	movq	-32(%rbp), %rdx
	movl	756(%rdx), %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-100(%rbp), %esi        # 4-byte Reload
	shll	%cl, %esi
	subl	$1, %esi
	movl	%esi, -56(%rbp)
	movq	-32(%rbp), %rdx
	movl	752(%rdx), %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-100(%rbp), %esi        # 4-byte Reload
	shll	%cl, %esi
	subl	$1, %esi
	movl	%esi, -60(%rbp)
	movl	%eax, -104(%rbp)        # 4-byte Spill
	xorl	%edx, %edx
	divl	-52(%rbp)
	movl	%eax, -40(%rbp)
	movl	-104(%rbp), %eax        # 4-byte Reload
	xorl	%esi, %esi
	movl	%esi, %edx
	divl	-56(%rbp)
	movl	%eax, -44(%rbp)
	movl	-104(%rbp), %eax        # 4-byte Reload
	xorl	%esi, %esi
	movl	%esi, %edx
	divl	-60(%rbp)
	movl	%eax, -48(%rbp)
	movl	$0, -36(%rbp)
.LBB5_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB5_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB5_2 Depth=1
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	addq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	760(%rcx), %edx
	movl	%edx, %ecx
                                        # kill: CL<def> RCX<kill>
	shrq	%cl, %rax
	movl	-52(%rbp), %edx
	movl	%edx, %esi
	andq	%rsi, %rax
	movl	%eax, %edx
	movl	%edx, -64(%rbp)
	movq	-80(%rbp), %rax
	movq	-32(%rbp), %rsi
	movl	768(%rsi), %edx
	movl	%edx, %ecx
                                        # kill: CL<def> RCX<kill>
	shrq	%cl, %rax
	movl	-56(%rbp), %edx
	movl	%edx, %esi
	andq	%rsi, %rax
	movl	%eax, %edx
	movl	%edx, -68(%rbp)
	movq	-80(%rbp), %rax
	movq	-32(%rbp), %rsi
	movl	764(%rsi), %edx
	movl	%edx, %ecx
                                        # kill: CL<def> RCX<kill>
	shrq	%cl, %rax
	movl	-60(%rbp), %edx
	movl	%edx, %esi
	andq	%rsi, %rax
	movl	%eax, %edx
	movl	%edx, -72(%rbp)
	movl	-64(%rbp), %edx
	imull	-40(%rbp), %edx
	shrl	$16, %edx
	movw	%dx, %di
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	addq	-16(%rbp), %rax
	movw	%di, 8(%rax)
	movl	-68(%rbp), %edx
	imull	-44(%rbp), %edx
	shrl	$16, %edx
	movw	%dx, %di
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	addq	-16(%rbp), %rax
	movw	%di, 10(%rax)
	movl	-72(%rbp), %edx
	imull	-48(%rbp), %edx
	shrl	$16, %edx
	movw	%dx, %di
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	addq	-16(%rbp), %rax
	movw	%di, 12(%rax)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB5_2 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB5_2
.LBB5_5:                                # %for.end
	jmp	.LBB5_13
.LBB5_6:                                # %if.end
	movq	-32(%rbp), %rax
	cmpq	$0, 736(%rax)
	je	.LBB5_12
# BB#7:                                 # %if.then.35
	movl	$0, -84(%rbp)
.LBB5_8:                                # %for.cond.37
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB5_11
# BB#9:                                 # %for.body.40
                                        #   in Loop: Header=BB5_8 Depth=1
	movslq	-84(%rbp), %rax
	shlq	$4, %rax
	addq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movslq	-84(%rbp), %rax
	shlq	$4, %rax
	addq	-16(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	-32(%rbp), %rdx
	shlq	$4, %rcx
	addq	736(%rdx), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rcx
	movq	%rcx, 8(%rax)
# BB#10:                                # %for.inc.49
                                        #   in Loop: Header=BB5_8 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB5_8
.LBB5_11:                               # %for.end.51
	jmp	.LBB5_13
.LBB5_12:                               # %if.end.52
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	80(%rax), %rsi
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %ecx
	callq	XQueryColors
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB5_13:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	x_query_colors, .Lfunc_end5-x_query_colors
	.cfi_endproc

	.globl	x_query_color
	.align	16, 0x90
	.type	x_query_color,@function
x_query_color:                          # @x_query_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$1, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	x_query_colors
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	x_query_color, .Lfunc_end6-x_query_color
	.cfi_endproc

	.globl	x_parse_color
	.align	16, 0x90
	.type	x_parse_color,@function
x_parse_color:                          # @x_parse_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	424(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-16(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	424(%rdx), %rdx
	movq	80(%rdx), %rdx
	movq	%rdx, -48(%rbp)
	movq	-24(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$35, %eax
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	XParseColor
	movl	%eax, -4(%rbp)
	jmp	.LBB7_11
.LBB7_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	728(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB7_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB7_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	xstrcasecmp
	cmpl	$0, %eax
	jne	.LBB7_6
# BB#5:                                 # %if.then.11
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	16(%rcx), %rcx
	movq	%rcx, 8(%rax)
	movl	$1, -4(%rbp)
	jmp	.LBB7_11
.LBB7_6:                                # %if.end.12
                                        #   in Loop: Header=BB7_3 Depth=1
	jmp	.LBB7_7
.LBB7_7:                                # %for.inc
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB7_3
.LBB7_8:                                # %for.end
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	XParseColor
	cmpl	$0, %eax
	jne	.LBB7_10
# BB#9:                                 # %if.then.16
	movl	$0, -4(%rbp)
	jmp	.LBB7_11
.LBB7_10:                               # %if.end.17
	movl	$32, %eax
	movl	%eax, %edi
	callq	xzalloc
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	(%rdi), %rcx
	movq	%rcx, 8(%rax)
	movq	8(%rdi), %rcx
	movq	%rcx, 16(%rax)
	movq	-24(%rbp), %rdi
	callq	xstrdup
	movq	-56(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	728(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	%rax, 728(%rcx)
	movl	$1, -4(%rbp)
.LBB7_11:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	x_parse_color, .Lfunc_end7-x_parse_color
	.cfi_endproc

	.globl	x_alloc_nearest_color
	.align	16, 0x90
	.type	x_alloc_nearest_color,@function
x_alloc_nearest_color:                  # @x_alloc_nearest_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	424(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gamma_correct
	movq	-40(%rbp), %rdx
	cmpl	$0, 748(%rdx)
	jle	.LBB8_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movzwl	8(%rax), %esi
	movq	-32(%rbp), %rax
	movzwl	10(%rax), %edx
	movq	-32(%rbp), %rax
	movzwl	12(%rax), %ecx
	callq	x_make_truecolor_pixel
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi)
	movb	$1, -1(%rbp)
	jmp	.LBB8_3
.LBB8_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	x_alloc_nearest_color_1
	andb	$1, %al
	movb	%al, -1(%rbp)
.LBB8_3:                                # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	x_alloc_nearest_color, .Lfunc_end8-x_alloc_nearest_color
	.cfi_endproc

	.align	16, 0x90
	.type	x_alloc_nearest_color_1,@function
x_alloc_nearest_color_1:                # @x_alloc_nearest_color_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	XAllocColor
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movb	%cl, -25(%rbp)
	movb	-25(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$0, %eax
	jne	.LBB9_8
# BB#1:                                 # %if.then
	leaq	-52(%rbp), %rsi
	movl	$255, -40(%rbp)
	imull	$3, -40(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	movq	-8(%rbp), %rdi
	callq	x_color_cells
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -32(%rbp)
.LBB9_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB9_7
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB9_2 Depth=1
	movq	-24(%rbp), %rax
	movzwl	8(%rax), %ecx
	sarl	$8, %ecx
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	addq	-64(%rbp), %rax
	movzwl	8(%rax), %edx
	sarl	$8, %edx
	subl	%edx, %ecx
	movl	%ecx, -68(%rbp)
	movq	-24(%rbp), %rax
	movzwl	10(%rax), %ecx
	sarl	$8, %ecx
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	addq	-64(%rbp), %rax
	movzwl	10(%rax), %edx
	sarl	$8, %edx
	subl	%edx, %ecx
	movl	%ecx, -72(%rbp)
	movq	-24(%rbp), %rax
	movzwl	12(%rax), %ecx
	sarl	$8, %ecx
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	addq	-64(%rbp), %rax
	movzwl	12(%rax), %edx
	sarl	$8, %edx
	subl	%edx, %ecx
	movl	%ecx, -76(%rbp)
	movl	-68(%rbp), %ecx
	imull	-68(%rbp), %ecx
	movl	-72(%rbp), %edx
	imull	-72(%rbp), %edx
	addl	%edx, %ecx
	movl	-76(%rbp), %edx
	imull	-76(%rbp), %edx
	addl	%edx, %ecx
	movl	%ecx, -80(%rbp)
	movl	-80(%rbp), %ecx
	cmpl	-48(%rbp), %ecx
	jge	.LBB9_5
# BB#4:                                 # %if.then.33
                                        #   in Loop: Header=BB9_2 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB9_5:                                # %if.end
                                        #   in Loop: Header=BB9_2 Depth=1
	jmp	.LBB9_6
.LBB9_6:                                # %for.inc
                                        #   in Loop: Header=BB9_2 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB9_2
.LBB9_7:                                # %for.end
	movslq	-32(%rbp), %rax
	shlq	$4, %rax
	addq	-64(%rbp), %rax
	movw	8(%rax), %cx
	movq	-24(%rbp), %rax
	movw	%cx, 8(%rax)
	movslq	-32(%rbp), %rax
	shlq	$4, %rax
	addq	-64(%rbp), %rax
	movw	10(%rax), %cx
	movq	-24(%rbp), %rax
	movw	%cx, 10(%rax)
	movslq	-32(%rbp), %rax
	shlq	$4, %rax
	addq	-64(%rbp), %rax
	movw	12(%rax), %cx
	movq	-24(%rbp), %rax
	movw	%cx, 12(%rax)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	XAllocColor
	cmpl	$0, %eax
	setne	%r8b
	andb	$1, %r8b
	movb	%r8b, -25(%rbp)
	jmp	.LBB9_15
.LBB9_8:                                # %if.else
	movq	-8(%rbp), %rdi
	callq	x_display_info_for_display
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpq	$0, 736(%rax)
	je	.LBB9_14
# BB#9:                                 # %land.lhs.true
	movb	$1, %al
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-88(%rbp), %rdx
	shlq	$4, %rcx
	addq	736(%rdx), %rcx
	movq	%rcx, -96(%rbp)
	movq	-96(%rbp), %rcx
	movzwl	8(%rcx), %esi
	movq	-24(%rbp), %rcx
	movzwl	8(%rcx), %edi
	cmpl	%edi, %esi
	movb	%al, -97(%rbp)          # 1-byte Spill
	jne	.LBB9_12
# BB#10:                                # %lor.lhs.false
	movb	$1, %al
	movq	-96(%rbp), %rcx
	movzwl	12(%rcx), %edx
	movq	-24(%rbp), %rcx
	movzwl	12(%rcx), %esi
	cmpl	%esi, %edx
	movb	%al, -97(%rbp)          # 1-byte Spill
	jne	.LBB9_12
# BB#11:                                # %lor.rhs
	movq	-96(%rbp), %rax
	movzwl	10(%rax), %ecx
	movq	-24(%rbp), %rax
	movzwl	10(%rax), %edx
	cmpl	%edx, %ecx
	setne	%sil
	movb	%sil, -97(%rbp)         # 1-byte Spill
.LBB9_12:                               # %lor.end
	movb	-97(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB9_13
	jmp	.LBB9_14
.LBB9_13:                               # %if.then.72
	movq	-88(%rbp), %rax
	movq	736(%rax), %rax
	movq	%rax, %rdi
	callq	xfree
	movq	-88(%rbp), %rax
	movq	$0, 736(%rax)
	movq	-88(%rbp), %rax
	movl	$0, 744(%rax)
.LBB9_14:                               # %if.end.75
	jmp	.LBB9_15
.LBB9_15:                               # %if.end.76
	movb	-25(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	x_alloc_nearest_color_1, .Lfunc_end9-x_alloc_nearest_color_1
	.cfi_endproc

	.globl	x_copy_color
	.align	16, 0x90
	.type	x_copy_color,@function
x_copy_color:                           # @x_copy_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	72(%rsi), %rdi
	callq	x_mutable_colormap
	testb	$1, %al
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB10_3
.LBB10_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	block_input
	leaq	-40(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	x_query_color
	leaq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	80(%rax), %rsi
	callq	XAllocColor
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	unblock_input
	movq	-40(%rbp), %rdx
	movq	%rdx, -8(%rbp)
.LBB10_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	x_copy_color, .Lfunc_end10-x_copy_color
	.cfi_endproc

	.globl	x_clear_area
	.align	16, 0x90
	.type	x_clear_area,@function
x_clear_area:                           # @x_clear_area
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	16(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	384(%r9), %r9
	movq	56(%r9), %rsi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r9d
	movl	$0, (%rsp)
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	x_clear_area1
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	x_clear_area, .Lfunc_end11-x_clear_area
	.cfi_endproc

	.align	16, 0x90
	.type	x_clear_area1,@function
x_clear_area1:                          # @x_clear_area1
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
	subq	$48, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	movl	-36(%rbp), %eax
	movl	%eax, (%rsp)
	callq	XClearArea
	movl	%eax, -40(%rbp)         # 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	x_clear_area1, .Lfunc_end12-x_clear_area1
	.cfi_endproc

	.globl	x_top_window_to_frame
	.align	16, 0x90
	.type	x_top_window_to_frame,@function
x_top_window_to_frame:                  # @x_top_window_to_frame
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movslq	-20(%rbp), %rdi
	cmpq	$0, %rdi
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB13_19
.LBB13_2:                               # %if.end
	movq	Vframe_list, %rax
	movq	%rax, -32(%rbp)
.LBB13_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -65(%rbp)          # 1-byte Spill
	jne	.LBB13_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB13_3 Depth=1
	movb	$1, %al
	movq	-32(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movb	%al, -65(%rbp)          # 1-byte Spill
.LBB13_5:                               # %land.end
                                        #   in Loop: Header=BB13_3 Depth=1
	movb	-65(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB13_6
	jmp	.LBB13_18
.LBB13_6:                               # %for.body
                                        #   in Loop: Header=BB13_3 Depth=1
	movq	-40(%rbp), %rax
	subq	$5, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB13_8
# BB#7:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB13_3 Depth=1
	movq	-48(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB13_9
.LBB13_8:                               # %if.then.11
                                        #   in Loop: Header=BB13_3 Depth=1
	jmp	.LBB13_17
.LBB13_9:                               # %if.end.12
                                        #   in Loop: Header=BB13_3 Depth=1
	movq	-48(%rbp), %rax
	movq	384(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB13_13
# BB#10:                                # %if.then.15
                                        #   in Loop: Header=BB13_3 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movslq	-20(%rbp), %rsi
	callq	xg_win_to_widget
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rsi
	cmpq	80(%rsi), %rax
	jne	.LBB13_12
# BB#11:                                # %if.then.20
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB13_19
.LBB13_12:                              # %if.end.21
                                        #   in Loop: Header=BB13_3 Depth=1
	jmp	.LBB13_16
.LBB13_13:                              # %if.else
                                        #   in Loop: Header=BB13_3 Depth=1
	movq	-48(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movslq	-20(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB13_15
# BB#14:                                # %if.then.27
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB13_19
.LBB13_15:                              # %if.end.28
                                        #   in Loop: Header=BB13_3 Depth=1
	jmp	.LBB13_16
.LBB13_16:                              # %if.end.29
                                        #   in Loop: Header=BB13_3 Depth=1
	jmp	.LBB13_17
.LBB13_17:                              # %for.inc
                                        #   in Loop: Header=BB13_3 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB13_3
.LBB13_18:                              # %for.end
	movq	$0, -8(%rbp)
.LBB13_19:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	x_top_window_to_frame, .Lfunc_end13-x_top_window_to_frame
	.cfi_endproc

	.globl	x_x_to_emacs_modifiers
	.align	16, 0x90
	.type	x_x_to_emacs_modifiers,@function
x_x_to_emacs_modifiers:                 # @x_x_to_emacs_modifiers
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movl	$678, %eax              # imm = 0x2A6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$134217728, -16(%rbp)   # imm = 0x8000000
	movl	$4194304, -20(%rbp)     # imm = 0x400000
	movl	$16777216, -24(%rbp)    # imm = 0x1000000
	movl	$8388608, -28(%rbp)     # imm = 0x800000
	movq	globals+2736, %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	andq	$2147483647, %rax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movl	%ecx, -20(%rbp)
.LBB14_2:                               # %if.end
	movl	$678, %edi              # imm = 0x2A6
	movq	globals+2800, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB14_4
# BB#3:                                 # %if.then.13
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	andq	$2147483647, %rax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movl	%ecx, -16(%rbp)
.LBB14_4:                               # %if.end.17
	movl	$678, %edi              # imm = 0x2A6
	movq	globals+2768, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB14_6
# BB#5:                                 # %if.then.25
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	andq	$2147483647, %rax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movl	%ecx, -24(%rbp)
.LBB14_6:                               # %if.end.29
	movl	$678, %edi              # imm = 0x2A6
	movq	globals+2904, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB14_8
# BB#7:                                 # %if.then.37
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	andq	$2147483647, %rax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
.LBB14_8:                               # %if.end.41
	xorl	%eax, %eax
	movl	$67108864, %ecx         # imm = 0x4000000
	movl	$33554432, %edx         # imm = 0x2000000
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rdi
	movl	308(%rdi), %r8d
	orl	$1, %r8d
	andl	%r8d, %esi
	cmpl	$0, %esi
	movl	%eax, %esi
	cmovnel	%edx, %esi
	movl	-12(%rbp), %edx
	andl	$4, %edx
	cmpl	$0, %edx
	cmovnel	%ecx, %eax
	orl	%eax, %esi
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdi
	andl	304(%rdi), %eax
	cmpl	$0, %eax
	movl	%esi, -76(%rbp)         # 4-byte Spill
	je	.LBB14_10
# BB#9:                                 # %cond.true
	movl	-16(%rbp), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB14_11
.LBB14_10:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB14_11
.LBB14_11:                              # %cond.end
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	-76(%rbp), %ecx         # 4-byte Reload
	orl	%eax, %ecx
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdx
	andl	312(%rdx), %eax
	cmpl	$0, %eax
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	je	.LBB14_13
# BB#12:                                # %cond.true.53
	movl	-20(%rbp), %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB14_14
.LBB14_13:                              # %cond.false.54
	xorl	%eax, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB14_14
.LBB14_14:                              # %cond.end.55
	movl	-88(%rbp), %eax         # 4-byte Reload
	movl	-84(%rbp), %ecx         # 4-byte Reload
	orl	%eax, %ecx
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdx
	andl	316(%rdx), %eax
	cmpl	$0, %eax
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	je	.LBB14_16
# BB#15:                                # %cond.true.60
	movl	-28(%rbp), %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB14_17
.LBB14_16:                              # %cond.false.61
	xorl	%eax, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB14_17
.LBB14_17:                              # %cond.end.62
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	-92(%rbp), %ecx         # 4-byte Reload
	orl	%eax, %ecx
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdx
	andl	320(%rdx), %eax
	cmpl	$0, %eax
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	je	.LBB14_19
# BB#18:                                # %cond.true.67
	movl	-24(%rbp), %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB14_20
.LBB14_19:                              # %cond.false.68
	xorl	%eax, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB14_20
.LBB14_20:                              # %cond.end.69
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	-100(%rbp), %ecx        # 4-byte Reload
	orl	%eax, %ecx
	movl	%ecx, %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	x_x_to_emacs_modifiers, .Lfunc_end14-x_x_to_emacs_modifiers
	.cfi_endproc

	.globl	x_get_keysym_name
	.align	16, 0x90
	.type	x_get_keysym_name,@function
x_get_keysym_name:                      # @x_get_keysym_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	callq	block_input
	movslq	-4(%rbp), %rdi
	callq	XKeysymToString
	movq	%rax, -16(%rbp)
	callq	unblock_input
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	x_get_keysym_name, .Lfunc_end15-x_get_keysym_name
	.cfi_endproc

	.globl	x_bitmap_icon
	.align	16, 0x90
	.type	x_bitmap_icon,@function
x_bitmap_icon:                          # @x_bitmap_icon
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	384(%rsi), %rsi
	cmpq	$0, 56(%rsi)
	jne	.LBB16_2
# BB#1:                                 # %if.then
	movb	$1, -1(%rbp)
	jmp	.LBB16_19
.LBB16_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 224(%rax)
	jle	.LBB16_4
# BB#3:                                 # %if.then.4
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	224(%rax), %rsi
	callq	x_destroy_bitmap
.LBB16_4:                               # %if.end.8
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	$0, 224(%rax)
	movq	-24(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB16_5
	jmp	.LBB16_8
.LBB16_5:                               # %if.then.12
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	xg_set_icon
	testb	$1, %al
	jne	.LBB16_6
	jmp	.LBB16_7
.LBB16_6:                               # %if.then.14
	movb	$0, -1(%rbp)
	jmp	.LBB16_19
.LBB16_7:                               # %if.end.15
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	x_create_bitmap_from_file
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	x_create_bitmap_mask
	jmp	.LBB16_18
.LBB16_8:                               # %if.else
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	cmpq	$0, 96(%rax)
	jge	.LBB16_17
# BB#9:                                 # %if.then.20
	movq	$-1, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	xg_default_icon_file, %rsi
	callq	xg_set_icon
	testb	$1, %al
	jne	.LBB16_11
# BB#10:                                # %lor.lhs.false
	movabsq	$gnu_xpm_bits, %rsi
	movq	-16(%rbp), %rdi
	callq	xg_set_icon_from_xpm_data
	testb	$1, %al
	jne	.LBB16_11
	jmp	.LBB16_12
.LBB16_11:                              # %if.then.23
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	$-2, 96(%rax)
	movb	$0, -1(%rbp)
	jmp	.LBB16_19
.LBB16_12:                              # %if.end.28
	cmpq	$-1, -40(%rbp)
	jne	.LBB16_16
# BB#13:                                # %if.then.30
	movabsq	$gnu_xbm_bits, %rsi
	movl	$50, %eax
	movq	-16(%rbp), %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	x_create_bitmap_from_data
	movq	%rax, -40(%rbp)
	cmpq	$-1, -40(%rbp)
	jne	.LBB16_15
# BB#14:                                # %if.then.33
	movb	$1, -1(%rbp)
	jmp	.LBB16_19
.LBB16_15:                              # %if.end.34
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	%rax, 96(%rcx)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	96(%rax), %rsi
	callq	x_create_bitmap_mask
.LBB16_16:                              # %if.end.43
	jmp	.LBB16_17
.LBB16_17:                              # %if.end.44
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	96(%rax), %rsi
	callq	x_reference_bitmap
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	96(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB16_18:                              # %if.end.53
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	x_wm_set_icon_pixmap
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	%rsi, 224(%rdi)
	movb	$0, -1(%rbp)
.LBB16_19:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	x_bitmap_icon, .Lfunc_end16-x_bitmap_icon
	.cfi_endproc

	.align	16, 0x90
	.type	x_wm_set_icon_pixmap,@function
x_wm_set_icon_pixmap:                   # @x_wm_set_icon_pixmap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jle	.LBB17_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	x_bitmap_pixmap
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	%rax, 384(%rsi)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	x_bitmap_mask
	movslq	%eax, %rsi
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	%rsi, 408(%rdi)
	jmp	.LBB17_3
.LBB17_2:                               # %if.else
	jmp	.LBB17_4
.LBB17_3:                               # %if.end
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	xg_set_frame_icon
.LBB17_4:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	x_wm_set_icon_pixmap, .Lfunc_end17-x_wm_set_icon_pixmap
	.cfi_endproc

	.globl	x_text_icon
	.align	16, 0x90
	.type	x_text_icon,@function
x_text_icon:                            # @x_text_icon
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp60:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	384(%rsi), %rsi
	cmpq	$0, 56(%rsi)
	jne	.LBB18_2
# BB#1:                                 # %if.then
	movb	$1, -1(%rbp)
	jmp	.LBB18_12
.LBB18_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	$31, -48(%rbp)
	movl	$8, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	strlen
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	je	.LBB18_8
# BB#3:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	cmpq	$0, %rax
	je	.LBB18_6
# BB#5:                                 # %cond.true.14
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_x11_drawable_get_xid
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB18_7
.LBB18_6:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB18_7
.LBB18_7:                               # %cond.end
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB18_9
.LBB18_8:                               # %cond.false.20
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB18_9:                               # %cond.end.24
	movq	-80(%rbp), %rax         # 8-byte Reload
	leaq	-56(%rbp), %rdx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	XSetWMIconName
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 224(%rax)
	jle	.LBB18_11
# BB#10:                                # %if.then.29
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	224(%rax), %rsi
	callq	x_destroy_bitmap
.LBB18_11:                              # %if.end.33
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	$0, 224(%rcx)
	movq	-16(%rbp), %rdi
	callq	x_wm_set_icon_pixmap
	movb	$0, -1(%rbp)
.LBB18_12:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	x_text_icon, .Lfunc_end18-x_text_icon
	.cfi_endproc

	.globl	x_catch_errors_with_handler
	.align	16, 0x90
	.type	x_catch_errors_with_handler,@function
x_catch_errors_with_handler:            # @x_catch_errors_with_handler
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp63:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$232, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, %rdi
	callq	xmalloc
	movq	%rax, -32(%rbp)
# BB#1:                                 # %do.body
	callq	gdk_window_process_all_updates
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	XSync
	movl	%eax, -36(%rbp)         # 4-byte Spill
# BB#2:                                 # %do.end
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 200(%rcx)
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 208(%rcx)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 216(%rcx)
	movq	x_error_message, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 224(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, x_error_message
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	x_catch_errors_with_handler, .Lfunc_end19-x_catch_errors_with_handler
	.cfi_endproc

	.globl	x_uncatch_errors_after_check
	.align	16, 0x90
	.type	x_uncatch_errors_after_check,@function
x_uncatch_errors_after_check:           # @x_uncatch_errors_after_check
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp66:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	callq	block_input
	movq	x_error_message, %rax
	movq	%rax, -8(%rbp)
	movq	x_error_message, %rax
	movq	224(%rax), %rax
	movq	%rax, x_error_message
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	callq	unblock_input
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	x_uncatch_errors_after_check, .Lfunc_end20-x_uncatch_errors_after_check
	.cfi_endproc

	.globl	x_check_errors
	.align	16, 0x90
	.type	x_check_errors,@function
x_check_errors:                         # @x_check_errors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp69:
	.cfi_def_cfa_register %rbp
	subq	$240, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	callq	gdk_window_process_all_updates
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	XSync
	movl	%eax, -228(%rbp)        # 4-byte Spill
# BB#2:                                 # %do.end
	movq	x_error_message, %rax
	cmpb	$0, (%rax)
	je	.LBB21_4
# BB#3:                                 # %if.then
	movl	$200, %eax
	movl	%eax, %edx
	leaq	-224(%rbp), %rcx
	movq	x_error_message, %rsi
	movq	%rcx, %rdi
	callq	memcpy
	callq	x_uncatch_errors
	leaq	-224(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	error
.LBB21_4:                               # %if.end
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	x_check_errors, .Lfunc_end21-x_check_errors
	.cfi_endproc

	.globl	x_had_errors_p
	.align	16, 0x90
	.type	x_had_errors_p,@function
x_had_errors_p:                         # @x_had_errors_p
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	callq	gdk_window_process_all_updates
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	XSync
	movl	%eax, -12(%rbp)         # 4-byte Spill
# BB#2:                                 # %do.end
	movq	x_error_message, %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	x_had_errors_p, .Lfunc_end22-x_had_errors_p
	.cfi_endproc

	.globl	x_clear_errors
	.align	16, 0x90
	.type	x_clear_errors,@function
x_clear_errors:                         # @x_clear_errors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp75:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	x_error_message, %rdi
	movb	$0, (%rdi)
	popq	%rbp
	retq
.Lfunc_end23:
	.size	x_clear_errors, .Lfunc_end23-x_clear_errors
	.cfi_endproc

	.globl	x_new_font
	.align	16, 0x90
	.type	x_new_font,@function
x_new_font:                             # @x_new_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp78:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-24(%rbp), %rdi
	callq	XFONT_OBJECT
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movl	360(%rax), %edx
	movl	%edx, -56(%rbp)
	cmpl	$0, -28(%rbp)
	jge	.LBB24_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	fontset_from_font
	movl	%eax, -28(%rbp)
.LBB24_2:                               # %if.end
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	384(%rcx), %rcx
	movl	%eax, 244(%rcx)
	movq	-16(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	232(%rcx), %rcx
	cmpq	-40(%rbp), %rcx
	jne	.LBB24_4
# BB#3:                                 # %if.then.7
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB24_24
.LBB24_4:                               # %if.end.8
	leaq	-48(%rbp), %rsi
	leaq	-52(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	%rax, 232(%rcx)
	movq	-40(%rbp), %rax
	movl	188(%rax), %edi
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movl	%edi, 240(%rax)
	movq	-40(%rbp), %rax
	movl	164(%rax), %edi
	movq	-16(%rbp), %rax
	movl	%edi, 364(%rax)
	movq	-40(%rbp), %rdi
	callq	get_font_ascent_descent
	movl	-48(%rbp), %r8d
	addl	-52(%rbp), %r8d
	movq	-16(%rbp), %rax
	movl	%r8d, 368(%rax)
	movq	-16(%rbp), %rax
	movl	356(%rax), %r8d
	movq	-16(%rbp), %rax
	imull	368(%rax), %r8d
	movq	-16(%rbp), %rax
	movl	%r8d, 360(%rax)
	movq	-16(%rbp), %rax
	movl	364(%rax), %r8d
	movl	%r8d, -44(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 420(%rax)
	jle	.LBB24_6
# BB#5:                                 # %if.then.19
	movq	-16(%rbp), %rax
	movl	420(%rax), %ecx
	addl	-44(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, %eax
	cltd
	idivl	-44(%rbp)
	movq	-16(%rbp), %rsi
	movl	%eax, 424(%rsi)
	jmp	.LBB24_7
.LBB24_6:                               # %if.else
	movl	-44(%rbp), %eax
	addl	$14, %eax
	subl	$1, %eax
	cltd
	idivl	-44(%rbp)
	movq	-16(%rbp), %rcx
	movl	%eax, 424(%rcx)
.LBB24_7:                               # %if.end.26
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 56(%rax)
	je	.LBB24_20
# BB#8:                                 # %if.then.30
	xorl	%edi, %edi
	movq	tip_frame, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB24_10
# BB#9:                                 # %lor.lhs.false
	movq	tip_frame, %rax
	subq	$5, %rax
	cmpq	-16(%rbp), %rax
	je	.LBB24_19
.LBB24_10:                              # %if.then.35
	movl	$439, %edi              # imm = 0x1B7
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	272(%rcx), %edx
	movq	-16(%rbp), %rcx
	imull	364(%rcx), %edx
	movq	-16(%rbp), %rcx
	movl	276(%rcx), %esi
	movq	-16(%rbp), %rcx
	imull	368(%rcx), %esi
	movl	%esi, -76(%rbp)         # 4-byte Spill
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	%edx, -92(%rbp)         # 4-byte Spill
	callq	builtin_lisp_symbol
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movl	-76(%rbp), %edx         # 4-byte Reload
	movq	%rax, %r9
	callq	adjust_frame_size
	movq	-16(%rbp), %rax
	movl	360(%rax), %ecx
	cmpl	-56(%rbp), %ecx
	je	.LBB24_18
# BB#11:                                # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$35, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB24_18
# BB#12:                                # %land.lhs.true.43
	movl	$901, %edi              # imm = 0x385
	movq	globals+2984, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB24_15
# BB#13:                                # %lor.lhs.false.46
	movq	globals+2984, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB24_18
# BB#14:                                # %land.lhs.true.49
	movl	$439, %edi              # imm = 0x1B7
	callq	builtin_lisp_symbol
	movq	globals+2984, %rsi
	movq	%rax, %rdi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB24_18
.LBB24_15:                              # %land.lhs.true.55
	movl	$472, %edi              # imm = 0x1D8
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	get_frame_param
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB24_17
# BB#16:                                # %lor.lhs.false.61
	movl	$473, %edi              # imm = 0x1D9
	movq	-64(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB24_18
.LBB24_17:                              # %if.then.65
	movl	$439, %edi              # imm = 0x1B7
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	292(%rcx), %edx
	movq	-16(%rbp), %rcx
	addl	360(%rcx), %edx
	subl	-56(%rbp), %edx
	movl	%edx, -140(%rbp)        # 4-byte Spill
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	-140(%rbp), %edx        # 4-byte Reload
	movq	%rax, %r9
	callq	adjust_frame_size
.LBB24_18:                              # %if.end.70
	jmp	.LBB24_19
.LBB24_19:                              # %if.end.71
	jmp	.LBB24_20
.LBB24_20:                              # %if.end.72
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 448(%rax)
	je	.LBB24_23
# BB#21:                                # %land.lhs.true.75
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	456(%rax), %rax
	andq	$260, %rax              # imm = 0x104
	cmpq	$0, %rax
	je	.LBB24_23
# BB#22:                                # %if.then.80
	callq	block_input
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %eax
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	callq	fontset_ascii
	movq	%rax, %rdi
	callq	SSDATA
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	xic_set_xfontset
	callq	unblock_input
.LBB24_23:                              # %if.end.83
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB24_24:                              # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	x_new_font, .Lfunc_end24-x_new_font
	.cfi_endproc

	.globl	x_set_offset
	.align	16, 0x90
	.type	x_set_offset,@function
x_set_offset:                           # @x_set_offset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp81:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.LBB25_6
# BB#1:                                 # %if.then
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 308(%rcx)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 304(%rcx)
	movq	-8(%rbp), %rcx
	movl	324(%rcx), %eax
	andl	$-49, %eax
	movl	%eax, 324(%rcx)
	cmpl	$0, -12(%rbp)
	jge	.LBB25_3
# BB#2:                                 # %if.then.2
	movq	-8(%rbp), %rax
	movl	324(%rax), %ecx
	orl	$16, %ecx
	movl	%ecx, 324(%rax)
.LBB25_3:                               # %if.end
	cmpl	$0, -16(%rbp)
	jge	.LBB25_5
# BB#4:                                 # %if.then.5
	movq	-8(%rbp), %rax
	movl	324(%rax), %ecx
	orl	$32, %ecx
	movl	%ecx, 324(%rax)
.LBB25_5:                               # %if.end.8
	movq	-8(%rbp), %rax
	movl	$1, 320(%rax)
.LBB25_6:                               # %if.end.9
	movq	-8(%rbp), %rdi
	callq	x_calc_absolute_position
	callq	block_input
	xorl	%eax, %eax
	movl	%eax, %esi
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	callq	x_wm_set_size_hint
	movq	-8(%rbp), %rsi
	movl	304(%rsi), %eax
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rsi
	movl	308(%rsi), %eax
	movl	%eax, -24(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB25_9
# BB#7:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	cmpl	$1, 772(%rax)
	jne	.LBB25_9
# BB#8:                                 # %if.then.14
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movl	520(%rax), %ecx
	addl	-28(%rbp), %ecx
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movl	516(%rax), %ecx
	addl	-24(%rbp), %ecx
	movl	%ecx, -24(%rbp)
.LBB25_9:                               # %if.end.20
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	je	.LBB25_15
# BB#10:                                # %cond.true
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	je	.LBB25_13
# BB#11:                                # %land.lhs.true.30
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	cmpq	$0, %rax
	je	.LBB25_13
# BB#12:                                # %cond.true.35
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_x11_drawable_get_xid
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB25_14
.LBB25_13:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB25_14
.LBB25_14:                              # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB25_16
.LBB25_15:                              # %cond.false.41
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB25_16:                              # %cond.end.44
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	-28(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	XMoveWindow
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movl	304(%rsi), %esi
	movq	-8(%rbp), %r8
	movl	308(%r8), %edx
	movq	-8(%rbp), %r8
	movq	384(%r8), %r8
	movq	424(%r8), %r8
	cmpl	$0, 772(%r8)
	sete	%r9b
	movzbl	%r9b, %ecx
	andl	$1, %ecx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	x_sync_with_move
	cmpl	$0, -20(%rbp)
	je	.LBB25_22
# BB#17:                                # %land.lhs.true.55
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	cmpl	$0, 772(%rax)
	je	.LBB25_21
# BB#18:                                # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	cmpl	$1, 772(%rax)
	jne	.LBB25_22
# BB#19:                                # %land.lhs.true.66
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpl	$0, 520(%rax)
	jne	.LBB25_22
# BB#20:                                # %land.lhs.true.71
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpl	$0, 516(%rax)
	jne	.LBB25_22
.LBB25_21:                              # %if.then.76
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	x_check_expected_move
.LBB25_22:                              # %if.end.77
	callq	unblock_input
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	x_set_offset, .Lfunc_end25-x_set_offset
	.cfi_endproc

	.align	16, 0x90
	.type	x_calc_absolute_position,@function
x_calc_absolute_position:               # @x_calc_absolute_position
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	324(%rdi), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	jne	.LBB26_3
# BB#1:                                 # %lor.lhs.false
	movl	-12(%rbp), %eax
	andl	$32, %eax
	cmpl	$0, %eax
	jne	.LBB26_3
# BB#2:                                 # %if.then
	jmp	.LBB26_8
.LBB26_3:                               # %if.end
	movl	-12(%rbp), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB26_5
# BB#4:                                 # %if.then.5
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rdi
	callq	x_display_pixel_width
	movq	-8(%rbp), %rdi
	subl	312(%rdi), %eax
	movq	-8(%rbp), %rdi
	addl	304(%rdi), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, 304(%rdi)
.LBB26_5:                               # %if.end.7
	movq	-8(%rbp), %rax
	movl	316(%rax), %ecx
	movl	%ecx, -16(%rbp)
	movl	-12(%rbp), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	je	.LBB26_7
# BB#6:                                 # %if.then.10
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rdi
	callq	x_display_pixel_height
	subl	-16(%rbp), %eax
	movq	-8(%rbp), %rdi
	addl	308(%rdi), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, 308(%rdi)
.LBB26_7:                               # %if.end.18
	movq	-8(%rbp), %rax
	movl	324(%rax), %ecx
	andl	$-49, %ecx
	movl	%ecx, 324(%rax)
.LBB26_8:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	x_calc_absolute_position, .Lfunc_end26-x_calc_absolute_position
	.cfi_endproc

	.align	16, 0x90
	.type	x_sync_with_move,@function
x_sync_with_move:                       # @x_sync_with_move
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
	subq	$80, %rsp
	movb	%cl, %al
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movl	$0, -24(%rbp)
.LBB27_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -24(%rbp)
	cmpl	$50, %eax
	jge	.LBB27_20
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB27_1 Depth=1
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
# BB#3:                                 # %do.body
                                        #   in Loop: Header=BB27_1 Depth=1
	callq	gdk_window_process_all_updates
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	callq	XSync
	movl	%eax, -36(%rbp)         # 4-byte Spill
# BB#4:                                 # %do.end
                                        #   in Loop: Header=BB27_1 Depth=1
	leaq	-28(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	movq	-8(%rbp), %rdi
	callq	x_real_positions
	testb	$1, -17(%rbp)
	je	.LBB27_15
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB27_1 Depth=1
	movl	-28(%rbp), %eax
	subl	-12(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB27_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB27_1 Depth=1
	xorl	%eax, %eax
	movl	-28(%rbp), %ecx
	subl	-12(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB27_8
.LBB27_7:                               # %cond.false
                                        #   in Loop: Header=BB27_1 Depth=1
	movl	-28(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB27_8:                               # %cond.end
                                        #   in Loop: Header=BB27_1 Depth=1
	movl	-40(%rbp), %eax         # 4-byte Reload
	cmpl	$10, %eax
	jg	.LBB27_14
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB27_1 Depth=1
	movl	-32(%rbp), %eax
	subl	-16(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB27_11
# BB#10:                                # %cond.true.8
                                        #   in Loop: Header=BB27_1 Depth=1
	xorl	%eax, %eax
	movl	-32(%rbp), %ecx
	subl	-16(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB27_12
.LBB27_11:                              # %cond.false.11
                                        #   in Loop: Header=BB27_1 Depth=1
	movl	-32(%rbp), %eax
	subl	-16(%rbp), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB27_12:                              # %cond.end.13
                                        #   in Loop: Header=BB27_1 Depth=1
	movl	-44(%rbp), %eax         # 4-byte Reload
	cmpl	$40, %eax
	jg	.LBB27_14
# BB#13:                                # %if.then.16
	jmp	.LBB27_21
.LBB27_14:                              # %if.end
                                        #   in Loop: Header=BB27_1 Depth=1
	jmp	.LBB27_19
.LBB27_15:                              # %if.else
                                        #   in Loop: Header=BB27_1 Depth=1
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jne	.LBB27_18
# BB#16:                                # %land.lhs.true.18
                                        #   in Loop: Header=BB27_1 Depth=1
	movl	-32(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jne	.LBB27_18
# BB#17:                                # %if.then.20
	jmp	.LBB27_21
.LBB27_18:                              # %if.end.21
                                        #   in Loop: Header=BB27_1 Depth=1
	jmp	.LBB27_19
.LBB27_19:                              # %if.end.22
                                        #   in Loop: Header=BB27_1 Depth=1
	jmp	.LBB27_1
.LBB27_20:                              # %while.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %ecx
	movl	$500000000, %esi        # imm = 0x1DCD6500
	xorl	%edi, %edi
	movl	%edi, -48(%rbp)         # 4-byte Spill
	movq	%rcx, %rdi
	movl	-48(%rbp), %edx         # 4-byte Reload
	movl	-48(%rbp), %r8d         # 4-byte Reload
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movl	%r8d, %ecx
	movq	%rax, %r8
	movq	-56(%rbp), %r9          # 8-byte Reload
	movl	$0, (%rsp)
	callq	wait_reading_process_output
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB27_21:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	x_sync_with_move, .Lfunc_end27-x_sync_with_move
	.cfi_endproc

	.align	16, 0x90
	.type	x_check_expected_move,@function
x_check_expected_move:                  # @x_check_expected_move
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
	subq	$64, %rsp
	leaq	-20(%rbp), %rax
	leaq	-24(%rbp), %rcx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	x_real_positions
	movl	-20(%rbp), %r8d
	cmpl	-12(%rbp), %r8d
	jne	.LBB28_2
# BB#1:                                 # %lor.lhs.false
	movl	-24(%rbp), %eax
	cmpl	-16(%rbp), %eax
	je	.LBB28_10
.LBB28_2:                               # %if.then
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movl	$1, 772(%rax)
	movl	-12(%rbp), %ecx
	subl	-20(%rbp), %ecx
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movl	%ecx, 520(%rax)
	movl	-16(%rbp), %ecx
	subl	-24(%rbp), %ecx
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movl	%ecx, 516(%rax)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	addl	520(%rax), %ecx
	movl	%ecx, -28(%rbp)
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	addl	516(%rax), %ecx
	movl	%ecx, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	je	.LBB28_8
# BB#3:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	je	.LBB28_6
# BB#4:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	cmpq	$0, %rax
	je	.LBB28_6
# BB#5:                                 # %cond.true.27
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_x11_drawable_get_xid
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB28_7
.LBB28_6:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB28_7
.LBB28_7:                               # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB28_9
.LBB28_8:                               # %cond.false.33
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB28_9:                               # %cond.end.36
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	XMoveWindow
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	x_sync_with_move
	jmp	.LBB28_11
.LBB28_10:                              # %if.else
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movl	$2, 772(%rax)
.LBB28_11:                              # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	x_check_expected_move, .Lfunc_end28-x_check_expected_move
	.cfi_endproc

	.globl	x_wm_supports
	.align	16, 0x90
	.type	x_wm_supports,@function
x_wm_supports:                          # @x_wm_supports
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$256, %rsp              # imm = 0x100
.Ltmp94:
	.cfi_offset %rbx, -48
.Ltmp95:
	.cfi_offset %r12, -40
.Ltmp96:
	.cfi_offset %r14, -32
.Ltmp97:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	-48(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	%rsi, -112(%rbp)
	movq	-112(%rbp), %rsi
	movq	104(%rsi), %rsi
	movq	%rsi, -120(%rbp)
	movl	$65536, -124(%rbp)      # imm = 0x10000
	movq	-48(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	16(%rsi), %rsi
	movq	%rsi, -136(%rbp)
	movq	$0, -144(%rbp)
	movq	$33, -152(%rbp)
	callq	block_input
	movq	-136(%rbp), %rdi
	callq	x_catch_errors
	xorl	%eax, %eax
	movl	%eax, %ecx
	xorl	%r9d, %r9d
	leaq	-64(%rbp), %rsi
	leaq	-92(%rbp), %rdi
	leaq	-72(%rbp), %rdx
	leaq	-80(%rbp), %r8
	leaq	-144(%rbp), %r10
	movq	-136(%rbp), %r11
	movq	-120(%rbp), %rbx
	movq	-112(%rbp), %r14
	movq	808(%r14), %r14
	movslq	-124(%rbp), %r15
	movq	-152(%rbp), %r12
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movq	%rbx, %rsi
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	movq	%r14, %rdx
	movq	%r8, -184(%rbp)         # 8-byte Spill
	movq	%r15, %r8
	movq	%r12, (%rsp)
	movq	-168(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	movq	-160(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 16(%rsp)
	movq	-176(%rbp), %r14        # 8-byte Reload
	movq	%r14, 24(%rsp)
	movq	-184(%rbp), %r15        # 8-byte Reload
	movq	%r15, 32(%rsp)
	movq	%r10, 40(%rsp)
	callq	XGetWindowProperty
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	jne	.LBB29_3
# BB#1:                                 # %lor.lhs.false
	cmpq	$33, -64(%rbp)
	jne	.LBB29_3
# BB#2:                                 # %lor.lhs.false.7
	movq	-136(%rbp), %rdi
	callq	x_had_errors_p
	testb	$1, %al
	jne	.LBB29_3
	jmp	.LBB29_6
.LBB29_3:                               # %if.then
	cmpq	$0, -144(%rbp)
	je	.LBB29_5
# BB#4:                                 # %if.then.10
	movq	-144(%rbp), %rdi
	callq	XFree
	movl	%eax, -188(%rbp)        # 4-byte Spill
.LBB29_5:                               # %if.end
	callq	x_uncatch_errors
	callq	unblock_input
	movb	$0, -33(%rbp)
	jmp	.LBB29_25
.LBB29_6:                               # %if.end.12
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-144(%rbp), %rdi
	callq	XFree
	movl	$131072, %ecx           # imm = 0x20000
	movl	%ecx, %edx
	movq	-136(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movl	%eax, -192(%rbp)        # 4-byte Spill
	callq	XSelectInput
	movq	-136(%rbp), %rdi
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	x_had_errors_p
	testb	$1, %al
	jne	.LBB29_7
	jmp	.LBB29_8
.LBB29_7:                               # %if.then.16
	callq	x_uncatch_errors_after_check
	callq	unblock_input
	movb	$0, -33(%rbp)
	jmp	.LBB29_25
.LBB29_8:                               # %if.end.17
	movq	-112(%rbp), %rax
	movq	832(%rax), %rax
	cmpq	-104(%rbp), %rax
	je	.LBB29_18
# BB#9:                                 # %if.then.20
	movq	-112(%rbp), %rax
	cmpq	$0, 816(%rax)
	je	.LBB29_11
# BB#10:                                # %if.then.23
	movq	-112(%rbp), %rax
	movq	816(%rax), %rax
	movq	%rax, %rdi
	callq	XFree
	movl	%eax, -200(%rbp)        # 4-byte Spill
.LBB29_11:                              # %if.end.26
	xorl	%eax, %eax
	movl	%eax, %ecx
	xorl	%r9d, %r9d
	leaq	-64(%rbp), %rdx
	leaq	-92(%rbp), %rsi
	leaq	-72(%rbp), %rdi
	leaq	-80(%rbp), %r8
	leaq	-144(%rbp), %r10
	movq	-112(%rbp), %r11
	movq	$0, 816(%r11)
	movq	-112(%rbp), %r11
	movl	$0, 824(%r11)
	movq	-112(%rbp), %r11
	movq	$0, 832(%r11)
	movq	$4, -152(%rbp)
	movq	$0, -144(%rbp)
	movq	-136(%rbp), %r11
	movq	-120(%rbp), %rbx
	movq	-112(%rbp), %r14
	movq	800(%r14), %r14
	movslq	-124(%rbp), %r15
	movq	-152(%rbp), %r12
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	movq	%rbx, %rsi
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	movq	%r14, %rdx
	movq	%r8, -232(%rbp)         # 8-byte Spill
	movq	%r15, %r8
	movq	%r12, (%rsp)
	movq	-224(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	movq	-216(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 16(%rsp)
	movq	-208(%rbp), %r14        # 8-byte Reload
	movq	%r14, 24(%rsp)
	movq	-232(%rbp), %r15        # 8-byte Reload
	movq	%r15, 32(%rsp)
	movq	%r10, 40(%rsp)
	callq	XGetWindowProperty
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	jne	.LBB29_14
# BB#12:                                # %lor.lhs.false.33
	cmpq	$4, -64(%rbp)
	jne	.LBB29_14
# BB#13:                                # %lor.lhs.false.36
	movq	-136(%rbp), %rdi
	callq	x_had_errors_p
	testb	$1, %al
	jne	.LBB29_14
	jmp	.LBB29_17
.LBB29_14:                              # %if.then.39
	cmpq	$0, -144(%rbp)
	je	.LBB29_16
# BB#15:                                # %if.then.41
	movq	-144(%rbp), %rdi
	callq	XFree
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB29_16:                              # %if.end.43
	callq	x_uncatch_errors
	callq	unblock_input
	movb	$0, -33(%rbp)
	jmp	.LBB29_25
.LBB29_17:                              # %if.end.44
	movq	-144(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	%rax, 816(%rcx)
	movq	-72(%rbp), %rax
	movl	%eax, %edx
	movq	-112(%rbp), %rax
	movl	%edx, 824(%rax)
	movq	-104(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	%rax, 832(%rcx)
.LBB29_18:                              # %if.end.49
	movb	$0, -93(%rbp)
	movl	$0, -84(%rbp)
.LBB29_19:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, -93(%rbp)
	movb	%cl, -237(%rbp)         # 1-byte Spill
	jne	.LBB29_21
# BB#20:                                # %land.rhs
                                        #   in Loop: Header=BB29_19 Depth=1
	movl	-84(%rbp), %eax
	movq	-112(%rbp), %rcx
	cmpl	824(%rcx), %eax
	setl	%dl
	movb	%dl, -237(%rbp)         # 1-byte Spill
.LBB29_21:                              # %land.end
                                        #   in Loop: Header=BB29_19 Depth=1
	movb	-237(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB29_22
	jmp	.LBB29_24
.LBB29_22:                              # %for.body
                                        #   in Loop: Header=BB29_19 Depth=1
	movslq	-84(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	816(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	cmpq	-56(%rbp), %rax
	sete	%dl
	andb	$1, %dl
	movb	%dl, -93(%rbp)
# BB#23:                                # %for.inc
                                        #   in Loop: Header=BB29_19 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB29_19
.LBB29_24:                              # %for.end
	callq	x_uncatch_errors
	callq	unblock_input
	movb	-93(%rbp), %al
	andb	$1, %al
	movb	%al, -33(%rbp)
.LBB29_25:                              # %return
	movb	-33(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end29:
	.size	x_wm_supports, .Lfunc_end29-x_wm_supports
	.cfi_endproc

	.globl	x_set_sticky
	.align	16, 0x90
	.type	x_set_sticky,@function
x_set_sticky:                           # @x_set_sticky
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
.Ltmp99:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp100:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$5, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	424(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	movl	%eax, %esi
	callq	make_lisp_ptr
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	sete	%cl
	xorb	$-1, %cl
	movq	-40(%rbp), %rax
	movq	896(%rax), %rdx
	movzbl	%cl, %esi
	andl	$1, %esi
	xorl	%edi, %edi
	movl	%edi, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	set_wm_state
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	x_set_sticky, .Lfunc_end30-x_set_sticky
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI31_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI31_1:
	.quad	4841369599423283200     # double 4.503600e+15
	.quad	4985484787499139072     # double 1.934281e+25
	.text
	.align	16, 0x90
	.type	set_wm_state,@function
set_wm_state:                           # @set_wm_state
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp101:
	.cfi_def_cfa_offset 16
.Ltmp102:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp103:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movb	%sil, %al
	xorl	%esi, %esi
	movl	%esi, %r8d
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	subq	$5, %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	864(%rcx), %rcx
	movb	-9(%rbp), %al
	andb	$1, %al
	movzbl	%al, %esi
	movl	%esi, %r9d
	shlq	$2, %r9
	addq	$2, %r9
	cmpq	-24(%rbp), %r8
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jbe	.LBB31_2
# BB#1:                                 # %lor.lhs.false
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	cmpq	-24(%rbp), %rax
	ja	.LBB31_3
.LBB31_2:                               # %land.lhs.true
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rax, -24(%rbp)
	jbe	.LBB31_4
.LBB31_3:                               # %cond.true
	movaps	.LCPI31_0(%rip), %xmm0  # xmm0 = [1127219200,1160773632,0,0]
	movq	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movapd	.LCPI31_1(%rip), %xmm0  # xmm0 = [4.503600e+15,1.934281e+25]
	subpd	%xmm0, %xmm1
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	addpd	%xmm1, %xmm0
	callq	make_float
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB31_5
.LBB31_4:                               # %cond.false
	movq	-24(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB31_5:                               # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	cmpq	$0, -32(%rbp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
	je	.LBB31_12
# BB#6:                                 # %cond.true.12
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-32(%rbp), %rcx
	jbe	.LBB31_8
# BB#7:                                 # %lor.lhs.false.15
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	cmpq	-32(%rbp), %rax
	ja	.LBB31_9
.LBB31_8:                               # %land.lhs.true.18
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rax, -32(%rbp)
	jbe	.LBB31_10
.LBB31_9:                               # %cond.true.21
	movaps	.LCPI31_0(%rip), %xmm0  # xmm0 = [1127219200,1160773632,0,0]
	movq	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movapd	.LCPI31_1(%rip), %xmm0  # xmm0 = [4.503600e+15,1.934281e+25]
	subpd	%xmm0, %xmm1
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	addpd	%xmm1, %xmm0
	callq	make_float
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB31_11
.LBB31_10:                              # %cond.false.24
	movq	-32(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB31_11:                              # %cond.end.27
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	callq	list1
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB31_13
.LBB31_12:                              # %cond.false.30
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB31_13:                              # %cond.end.32
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movl	$2, %ecx
	movl	%ecx, %esi
	movl	$130, %ecx
	movl	%ecx, %r8d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r9
	callq	x_send_client_event
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	set_wm_state, .Lfunc_end31-set_wm_state
	.cfi_endproc

	.globl	x_wait_for_event
	.align	16, 0x90
	.type	x_wait_for_event,@function
x_wait_for_event:                       # @x_wait_for_event
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
	subq	$304, %rsp              # imm = 0x130
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	$100000000, %eax        # imm = 0x5F5E100
	movl	%eax, %edx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	interrupt_input_blocked, %eax
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	16(%rdi), %rdi
	movl	16(%rdi), %eax
	movl	%eax, -196(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, 400(%rdi)
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	callq	make_timespec
	movq	%rax, -216(%rbp)
	movq	%rdx, -208(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -152(%rbp)
	callq	current_timespec
	movq	%rax, -232(%rbp)
	movq	%rdx, -224(%rbp)
	movq	-232(%rbp), %rdi
	movq	-224(%rbp), %rsi
	movq	-160(%rbp), %rdx
	movq	-152(%rbp), %rcx
	callq	timespec_add
	movq	%rax, -248(%rbp)
	movq	%rdx, -240(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -168(%rbp)
.LBB32_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$0, 400(%rax)
	je	.LBB32_9
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB32_1 Depth=1
	movb	$1, pending_signals
	callq	totally_unblock_input
	callq	block_input
	movl	-16(%rbp), %eax
	movl	%eax, interrupt_input_blocked
# BB#3:                                 # %do.body
                                        #   in Loop: Header=BB32_1 Depth=1
	leaq	-144(%rbp), %rax
	movl	$16, %ecx
                                        # kill: RCX<def> ECX<kill>
	xorl	%edx, %edx
	movq	%rax, -296(%rbp)        # 8-byte Spill
	movl	%edx, %eax
	movq	-296(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, %rdi
	#APP
	cld
	rep
	stosq	%rax, %es:(%rdi)
	#NO_APP
	movl	%ecx, %eax
	movl	%eax, -252(%rbp)
	movl	%edi, %eax
	movl	%eax, -256(%rbp)
# BB#4:                                 # %do.end
                                        #   in Loop: Header=BB32_1 Depth=1
	leaq	-144(%rbp), %rsi
	movl	-196(%rbp), %edi
	callq	fd_SET
	callq	current_timespec
	movq	%rax, -272(%rbp)
	movq	%rdx, -264(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-176(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movq	-192(%rbp), %rdx
	movq	-184(%rbp), %rcx
	callq	timespec_cmp
	cmpl	$0, %eax
	jge	.LBB32_6
# BB#5:                                 # %if.then
	jmp	.LBB32_9
.LBB32_6:                               # %if.end
                                        #   in Loop: Header=BB32_1 Depth=1
	movq	-176(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movq	-192(%rbp), %rdx
	movq	-184(%rbp), %rcx
	callq	timespec_sub
	leaq	-144(%rbp), %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	leaq	-160(%rbp), %r8
	movq	%rax, -288(%rbp)
	movq	%rdx, -280(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -152(%rbp)
	movl	-196(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, %edi
	movq	%rcx, %rdx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	movq	-304(%rbp), %r9         # 8-byte Reload
	callq	pselect
	cmpl	$0, %eax
	jne	.LBB32_8
# BB#7:                                 # %if.then.14
	jmp	.LBB32_9
.LBB32_8:                               # %if.end.15
                                        #   in Loop: Header=BB32_1 Depth=1
	jmp	.LBB32_1
.LBB32_9:                               # %while.end
	movq	-8(%rbp), %rax
	movl	$0, 400(%rax)
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end32:
	.size	x_wait_for_event, .Lfunc_end32-x_wait_for_event
	.cfi_endproc

	.globl	x_set_window_size
	.align	16, 0x90
	.type	x_set_window_size,@function
x_set_window_size:                      # @x_set_window_size
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
	subq	$32, %rsp
	movb	%r8b, %al
	movb	%sil, %r9b
	movq	%rdi, -8(%rbp)
	andb	$1, %r9b
	movb	%r9b, -9(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	andb	$1, %al
	movb	%al, -21(%rbp)
	callq	block_input
	testb	$1, -21(%rbp)
	jne	.LBB33_2
# BB#1:                                 # %if.then
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	imull	364(%rcx), %eax
	movl	%eax, -16(%rbp)
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	imull	368(%rcx), %eax
	movl	%eax, -20(%rbp)
.LBB33_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 88(%rax)
	je	.LBB33_4
# BB#3:                                 # %if.then.4
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edx
	callq	xg_frame_set_char_size
	jmp	.LBB33_5
.LBB33_4:                               # %if.else
	movq	-8(%rbp), %rdi
	movb	-9(%rbp), %al
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	andb	$1, %al
	movzbl	%al, %esi
	callq	x_set_window_size_1
.LBB33_5:                               # %if.end.6
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	XWINDOW
	movq	%rax, %rdi
	callq	mark_window_cursors_off
	movq	-8(%rbp), %rdi
	callq	cancel_mouse_face
	callq	unblock_input
	xorl	%edi, %edi
	callq	do_pending_window_change
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	x_set_window_size, .Lfunc_end33-x_set_window_size
	.cfi_endproc

	.align	16, 0x90
	.type	x_set_window_size_1,@function
x_set_window_size_1:                    # @x_set_window_size_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp110:
	.cfi_def_cfa_offset 16
.Ltmp111:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp112:
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp              # imm = 0x120
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rdi
	shrq	$30, %rdi
	andq	$3, %rdi
	movl	%edi, %edx
	cmpl	$0, %edx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	je	.LBB34_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movl	420(%rax), %ecx
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	jmp	.LBB34_3
.LBB34_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB34_3
.LBB34_3:                               # %cond.end
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	-52(%rbp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	344(%rdx), %eax
	movq	-8(%rbp), %rdx
	addl	348(%rdx), %eax
	addl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	332(%rdx), %eax
	shll	$1, %eax
	addl	%eax, %ecx
	movl	%ecx, -24(%rbp)
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rdx
	movl	360(%rdx), %ecx
	movq	-8(%rbp), %rdx
	addl	220(%rdx), %ecx
	addl	%ecx, %eax
	movq	-8(%rbp), %rdx
	movq	208(%rdx), %rdx
	shrq	$32, %rdx
	andq	$1, %rdx
	testq	$1, %rdx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB34_5
# BB#4:                                 # %cond.true.10
	movq	-8(%rbp), %rax
	movl	428(%rax), %ecx
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	jmp	.LBB34_6
.LBB34_5:                               # %cond.false.11
	xorl	%eax, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB34_6
.LBB34_6:                               # %cond.end.12
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	$472, %edi              # imm = 0x1D8
	movl	-60(%rbp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	332(%rdx), %eax
	shll	$1, %eax
	addl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdx
	movl	312(%rdx), %eax
	movl	%eax, -32(%rbp)
	movq	-8(%rbp), %rdx
	movl	316(%rdx), %eax
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	get_frame_param
	movq	%rax, -48(%rbp)
	testb	$1, -9(%rbp)
	je	.LBB34_8
# BB#7:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	$1, 320(%rax)
.LBB34_8:                               # %if.end
	xorl	%eax, %eax
	movl	%eax, %esi
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	callq	x_wm_set_size_hint
	movl	$473, %edi              # imm = 0x1D9
	movq	-48(%rbp), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB34_18
# BB#9:                                 # %land.lhs.true
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	288(%rcx), %eax
	jne	.LBB34_18
# BB#10:                                # %if.then.22
	movl	$1059, %edi             # imm = 0x423
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movslq	-36(%rbp), %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movl	-28(%rbp), %edi
	movq	-8(%rbp), %r8
	movq	384(%r8), %r8
	addl	(%r8), %edi
	movslq	%edi, %r8
	shlq	$2, %r8
	addq	$2, %r8
	movq	%rsi, %rdi
	movq	%r8, %rsi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	%edx, -100(%rbp)        # 4-byte Spill
	movl	%ecx, -104(%rbp)        # 4-byte Spill
	callq	list2
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movl	-100(%rbp), %edx        # 4-byte Reload
	movl	-104(%rbp), %ecx        # 4-byte Reload
	movq	%rax, %r8
	callq	frame_size_history_add
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	je	.LBB34_16
# BB#11:                                # %cond.true.35
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	je	.LBB34_14
# BB#12:                                # %land.lhs.true.40
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	cmpq	$0, %rax
	je	.LBB34_14
# BB#13:                                # %cond.true.46
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_x11_drawable_get_xid
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB34_15
.LBB34_14:                              # %cond.false.52
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB34_15
.LBB34_15:                              # %cond.end.53
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB34_17
.LBB34_16:                              # %cond.false.55
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB34_17:                              # %cond.end.58
	movq	-128(%rbp), %rax        # 8-byte Reload
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	addl	(%rsi), %ecx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	XResizeWindow
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB34_37
.LBB34_18:                              # %if.else
	movl	$471, %edi              # imm = 0x1D7
	movq	-48(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB34_28
# BB#19:                                # %land.lhs.true.68
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	292(%rcx), %eax
	jne	.LBB34_28
# BB#20:                                # %if.then.71
	movl	$1060, %edi             # imm = 0x424
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movslq	-32(%rbp), %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movslq	-24(%rbp), %r8
	shlq	$2, %r8
	addq	$2, %r8
	movq	%rsi, %rdi
	movq	%r8, %rsi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movl	%edx, -164(%rbp)        # 4-byte Spill
	movl	%ecx, -168(%rbp)        # 4-byte Spill
	callq	list2
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	-160(%rbp), %rsi        # 8-byte Reload
	movl	-164(%rbp), %edx        # 4-byte Reload
	movl	-168(%rbp), %ecx        # 4-byte Reload
	movq	%rax, %r8
	callq	frame_size_history_add
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	je	.LBB34_26
# BB#21:                                # %cond.true.88
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	je	.LBB34_24
# BB#22:                                # %land.lhs.true.93
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	cmpq	$0, %rax
	je	.LBB34_24
# BB#23:                                # %cond.true.99
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_x11_drawable_get_xid
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB34_25
.LBB34_24:                              # %cond.false.105
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB34_25
.LBB34_25:                              # %cond.end.106
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB34_27
.LBB34_26:                              # %cond.false.108
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB34_27:                              # %cond.end.112
	movq	-192(%rbp), %rax        # 8-byte Reload
	movl	-24(%rbp), %edx
	movl	-36(%rbp), %ecx
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	XResizeWindow
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jmp	.LBB34_36
.LBB34_28:                              # %if.else.115
	movl	$1061, %edi             # imm = 0x425
	movq	-8(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %edi
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	movl	12(%rsi), %r8d
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	addl	16(%rsi), %r8d
	addl	%r8d, %edi
	movslq	%edi, %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movl	-28(%rbp), %edi
	movq	-8(%rbp), %r9
	movq	384(%r9), %r9
	movl	4(%r9), %r8d
	movq	-8(%rbp), %r9
	movq	384(%r9), %r9
	addl	8(%r9), %r8d
	addl	%r8d, %edi
	movq	-8(%rbp), %r9
	movq	384(%r9), %r9
	addl	(%r9), %edi
	movslq	%edi, %r9
	shlq	$2, %r9
	addq	$2, %r9
	movq	-8(%rbp), %r10
	movq	384(%r10), %r10
	movslq	(%r10), %r10
	shlq	$2, %r10
	addq	$2, %r10
	movq	%rsi, %rdi
	movq	%r9, %rsi
	movl	%edx, -212(%rbp)        # 4-byte Spill
	movq	%r10, %rdx
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	callq	list3
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	-224(%rbp), %rsi        # 8-byte Reload
	movl	-212(%rbp), %edx        # 4-byte Reload
	movl	-228(%rbp), %ecx        # 4-byte Reload
	movq	%rax, %r8
	callq	frame_size_history_add
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	je	.LBB34_34
# BB#29:                                # %cond.true.154
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	je	.LBB34_32
# BB#30:                                # %land.lhs.true.159
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	cmpq	$0, %rax
	je	.LBB34_32
# BB#31:                                # %cond.true.165
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_x11_drawable_get_xid
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB34_33
.LBB34_32:                              # %cond.false.171
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	jmp	.LBB34_33
.LBB34_33:                              # %cond.end.172
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jmp	.LBB34_35
.LBB34_34:                              # %cond.false.174
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB34_35:                              # %cond.end.178
	movq	-256(%rbp), %rax        # 8-byte Reload
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	addl	(%rsi), %ecx
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	XResizeWindow
	xorl	%edi, %edi
	movl	%eax, -260(%rbp)        # 4-byte Spill
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
.LBB34_36:                              # %if.end.186
	jmp	.LBB34_37
.LBB34_37:                              # %if.end.187
	movb	$1, frame_garbaged
	movq	-8(%rbp), %rdi
	callq	fset_redisplay
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rax
	andq	$-8193, %rax            # imm = 0xFFFFFFFFFFFFDFFF
	orq	$8192, %rax             # imm = 0x2000
	movq	%rax, 208(%rdi)
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$10, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB34_41
# BB#38:                                # %if.then.195
	movl	$22, %esi
	movq	-8(%rbp), %rdi
	callq	x_wait_for_event
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB34_40
# BB#39:                                # %if.then.199
	movl	$472, %edi              # imm = 0x1D8
	movq	-8(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdx
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	store_frame_param
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	x_set_fullscreen
.LBB34_40:                              # %if.end.201
	jmp	.LBB34_42
.LBB34_41:                              # %if.else.202
	xorl	%eax, %eax
	movl	$1, %r8d
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edx
	movl	%eax, %ecx
	movl	%eax, %r9d
	movl	$1, (%rsp)
	callq	change_frame_size
	movq	-8(%rbp), %rdi
	callq	x_sync
.LBB34_42:                              # %if.end.203
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end34:
	.size	x_set_window_size_1, .Lfunc_end34-x_set_window_size_1
	.cfi_endproc

	.globl	frame_set_mouse_pixel_position
	.align	16, 0x90
	.type	frame_set_mouse_pixel_position,@function
frame_set_mouse_pixel_position:         # @frame_set_mouse_pixel_position
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp113:
	.cfi_def_cfa_offset 16
.Ltmp114:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp115:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	callq	block_input
	xorl	%edx, %edx
	movl	%edx, %esi
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	16(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %r8d
	movl	%edx, -20(%rbp)         # 4-byte Spill
	movq	%rax, %rdx
	movl	-20(%rbp), %r9d         # 4-byte Reload
	movl	%ecx, -24(%rbp)         # 4-byte Spill
	movl	%r9d, %ecx
	movl	%r8d, -28(%rbp)         # 4-byte Spill
	movl	%r9d, %r8d
	movl	$0, (%rsp)
	movl	-24(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 8(%rsp)
	movl	-28(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 16(%rsp)
	callq	XWarpPointer
	movl	%eax, -32(%rbp)         # 4-byte Spill
	callq	unblock_input
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	frame_set_mouse_pixel_position, .Lfunc_end35-frame_set_mouse_pixel_position
	.cfi_endproc

	.globl	xembed_request_focus
	.align	16, 0x90
	.type	xembed_request_focus,@function
xembed_request_focus:                   # @xembed_request_focus
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp116:
	.cfi_def_cfa_offset 16
.Ltmp117:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp118:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rdi
	shrq	$10, %rdi
	andq	$3, %rdi
	movl	%edi, %eax
	cmpl	$0, %eax
	je	.LBB36_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	$3, %edx
	movq	-8(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	movq	-16(%rbp), %r8          # 8-byte Reload
	movq	-16(%rbp), %r9          # 8-byte Reload
	callq	xembed_send_message
.LBB36_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	xembed_request_focus, .Lfunc_end36-xembed_request_focus
	.cfi_endproc

	.align	16, 0x90
	.type	xembed_send_message,@function
xembed_send_message:                    # @xembed_send_message
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp119:
	.cfi_def_cfa_offset 16
.Ltmp120:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp121:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$248, %rsp
.Ltmp122:
	.cfi_offset %rbx, -24
	xorl	%eax, %eax
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	leaq	-248(%rbp), %rbx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	$33, -248(%rbp)
	movq	-16(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	72(%rcx), %rcx
	movq	%rcx, -216(%rbp)
	movq	-16(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	584(%rcx), %rcx
	movq	%rcx, -208(%rbp)
	movl	$32, -200(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -192(%rbp)
	movl	-28(%rbp), %edx
	movl	%edx, %ecx
	movq	%rcx, -184(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -176(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, -168(%rbp)
	movq	-56(%rbp), %rcx
	movq	%rcx, -160(%rbp)
	movq	-16(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	16(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	72(%rcx), %rsi
	movl	%eax, %edx
	movq	%r11, %rcx
	movq	%rbx, %r8
	callq	XSendEvent
	movl	%eax, -252(%rbp)        # 4-byte Spill
# BB#1:                                 # %do.body
	callq	gdk_window_process_all_updates
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	callq	XSync
	movl	%eax, -256(%rbp)        # 4-byte Spill
# BB#2:                                 # %do.end
	addq	$248, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end37:
	.size	xembed_send_message, .Lfunc_end37-xembed_send_message
	.cfi_endproc

	.globl	x_ewmh_activate_frame
	.align	16, 0x90
	.type	x_ewmh_activate_frame,@function
x_ewmh_activate_frame:                  # @x_ewmh_activate_frame
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp123:
	.cfi_def_cfa_offset 16
.Ltmp124:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp125:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rdi
	shrq	$10, %rdi
	andq	$3, %rdi
	movl	%edi, %eax
	cmpl	$0, %eax
	je	.LBB38_3
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	856(%rax), %rsi
	callq	x_wm_supports
	testb	$1, %al
	jne	.LBB38_2
	jmp	.LBB38_3
.LBB38_2:                               # %if.then
	movl	$5, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movl	$1, %esi
	movl	%esi, %edi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	856(%rcx), %rcx
	movq	-16(%rbp), %r8
	movq	664(%r8), %rsi
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	list2i
	movl	$2, %r9d
	movl	%r9d, %esi
	movl	$130, %r9d
	movl	%r9d, %r8d
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r9
	callq	x_send_client_event
.LBB38_3:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	x_ewmh_activate_frame, .Lfunc_end38-x_ewmh_activate_frame
	.cfi_endproc

	.globl	x_make_frame_visible
	.align	16, 0x90
	.type	x_make_frame_visible,@function
x_make_frame_visible:                   # @x_make_frame_visible
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
.Ltmp127:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp128:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$400, %rsp              # imm = 0x190
.Ltmp129:
	.cfi_offset %rbx, -32
.Ltmp130:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movl	$0, -36(%rbp)
	callq	block_input
	movq	-24(%rbp), %rdi
	callq	x_set_bitmap_icon
	movq	-24(%rbp), %rdi
	movq	208(%rdi), %rdi
	shrq	$10, %rdi
	andq	$3, %rdi
	movl	%edi, %eax
	cmpl	$0, %eax
	jne	.LBB39_8
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$12, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB39_5
# BB#2:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	movb	440(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB39_5
# BB#3:                                 # %land.lhs.true.10
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	movb	440(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB39_5
# BB#4:                                 # %if.then.17
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	304(%rax), %esi
	movq	-24(%rbp), %rax
	movl	308(%rax), %edx
	callq	x_set_offset
.LBB39_5:                               # %if.end
	movl	$901, %edi              # imm = 0x385
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	movb	440(%rax), %cl
	andb	$-5, %cl
	orb	$4, %cl
	movb	%cl, 440(%rax)
	movq	globals+2816, %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB39_7
# BB#6:                                 # %if.then.25
	movl	$1, %esi
	movq	-24(%rbp), %rdi
	callq	x_wm_set_window_state
.LBB39_7:                               # %if.end.26
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_show_all
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_deiconify
.LBB39_8:                               # %if.end.34
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	movb	440(%rax), %cl
	shrb	$3, %cl
	andb	$1, %cl
	andb	$1, %cl
	movb	%cl, -49(%rbp)
	movq	-24(%rbp), %rax
	movl	304(%rax), %edx
	movl	%edx, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	308(%rax), %edx
	movl	%edx, -28(%rbp)
	callq	unblock_input
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$10, %rax
	andq	$3, %rax
	movl	%eax, %edx
	cmpl	$0, %edx
	jne	.LBB39_31
# BB#9:                                 # %land.lhs.true.49
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$12, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB39_31
# BB#10:                                # %land.lhs.true.55
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	movb	440(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB39_31
# BB#11:                                # %land.lhs.true.66
	movq	-24(%rbp), %rax
	cmpl	$1, 320(%rax)
	jne	.LBB39_31
# BB#12:                                # %land.lhs.true.69
	testb	$1, -49(%rbp)
	je	.LBB39_31
# BB#13:                                # %if.then.72
	callq	block_input
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	je	.LBB39_19
# BB#14:                                # %cond.true
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	je	.LBB39_17
# BB#15:                                # %land.lhs.true.84
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	cmpq	$0, %rax
	je	.LBB39_17
# BB#16:                                # %cond.true.90
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_x11_drawable_get_xid
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB39_18
.LBB39_17:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	jmp	.LBB39_18
.LBB39_18:                              # %cond.end
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	%rax, -328(%rbp)        # 8-byte Spill
	jmp	.LBB39_20
.LBB39_19:                              # %cond.false.96
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
.LBB39_20:                              # %cond.end.99
	movq	-328(%rbp), %rax        # 8-byte Reload
	leaq	-64(%rbp), %rdx
	leaq	-68(%rbp), %rcx
	leaq	-72(%rbp), %r8
	leaq	-76(%rbp), %r9
	leaq	-80(%rbp), %rsi
	leaq	-84(%rbp), %rdi
	leaq	-88(%rbp), %r10
	movq	-312(%rbp), %r11        # 8-byte Reload
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rsi, -344(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-344(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-336(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 8(%rsp)
	movq	%r10, 16(%rsp)
	callq	XGetGeometry
	movl	-32(%rbp), %r14d
	cmpl	-68(%rbp), %r14d
	movl	%eax, -348(%rbp)        # 4-byte Spill
	jne	.LBB39_22
# BB#21:                                # %lor.lhs.false
	movl	-28(%rbp), %eax
	cmpl	-72(%rbp), %eax
	je	.LBB39_30
.LBB39_22:                              # %if.then.106
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	je	.LBB39_28
# BB#23:                                # %cond.true.115
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	je	.LBB39_26
# BB#24:                                # %land.lhs.true.120
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	cmpq	$0, %rax
	je	.LBB39_26
# BB#25:                                # %cond.true.126
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_x11_drawable_get_xid
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jmp	.LBB39_27
.LBB39_26:                              # %cond.false.132
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	jmp	.LBB39_27
.LBB39_27:                              # %cond.end.133
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	%rax, -376(%rbp)        # 8-byte Spill
	jmp	.LBB39_29
.LBB39_28:                              # %cond.false.135
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
.LBB39_29:                              # %cond.end.139
	movq	-376(%rbp), %rax        # 8-byte Reload
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %ecx
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	XMoveWindow
	movl	%eax, -380(%rbp)        # 4-byte Spill
.LBB39_30:                              # %if.end.142
	callq	unblock_input
.LBB39_31:                              # %if.end.143
	movl	$5, %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -48(%rbp)
.LBB39_32:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$10, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB39_33
	jmp	.LBB39_41
.LBB39_33:                              # %while.body
                                        #   in Loop: Header=BB39_32 Depth=1
	movq	-24(%rbp), %rdi
	callq	x_sync
	movq	-24(%rbp), %rdi
	movq	208(%rdi), %rdi
	shrq	$12, %rdi
	andq	$1, %rdi
	testq	$1, %rdi
	je	.LBB39_36
# BB#34:                                # %land.lhs.true.157
                                        #   in Loop: Header=BB39_32 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	cmpl	$100, %eax
	jle	.LBB39_36
# BB#35:                                # %if.then.160
	jmp	.LBB39_41
.LBB39_36:                              # %if.end.161
                                        #   in Loop: Header=BB39_32 Depth=1
	callq	input_polling_used
	testb	$1, %al
	jne	.LBB39_37
	jmp	.LBB39_38
.LBB39_37:                              # %if.then.163
                                        #   in Loop: Header=BB39_32 Depth=1
	movl	poll_suppress_count, %eax
	movl	%eax, -92(%rbp)
	movl	$1, poll_suppress_count
	callq	poll_for_input_1
	movl	-92(%rbp), %eax
	movl	%eax, poll_suppress_count
.LBB39_38:                              # %if.end.164
                                        #   in Loop: Header=BB39_32 Depth=1
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	callq	XPending
	cmpl	$0, %eax
	je	.LBB39_40
# BB#39:                                # %if.then.171
                                        #   in Loop: Header=BB39_32 Depth=1
	leaq	-288(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	callq	XNextEvent
	leaq	-288(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	16(%rsi), %rsi
	movl	%eax, -384(%rbp)        # 4-byte Spill
	callq	x_dispatch_event
	movl	%eax, -388(%rbp)        # 4-byte Spill
.LBB39_40:                              # %if.end.182
                                        #   in Loop: Header=BB39_32 Depth=1
	jmp	.LBB39_32
.LBB39_41:                              # %while.end
	addq	$400, %rsp              # imm = 0x190
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end39:
	.size	x_make_frame_visible, .Lfunc_end39-x_make_frame_visible
	.cfi_endproc

	.align	16, 0x90
	.type	x_wm_set_window_state,@function
x_wm_set_window_state:                  # @x_wm_set_window_state
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp131:
	.cfi_def_cfa_offset 16
.Ltmp132:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp133:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	56(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	368(%rdi), %rax
	orq	$2, %rax
	movq	%rax, 368(%rdi)
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movl	%esi, 380(%rax)
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	addq	$368, %rax              # imm = 0x170
	movq	%rax, %rdx
	callq	XSetWMHints
	movl	%eax, -28(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	x_wm_set_window_state, .Lfunc_end40-x_wm_set_window_state
	.cfi_endproc

	.align	16, 0x90
	.type	x_dispatch_event,@function
x_dispatch_event:                       # @x_dispatch_event
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp134:
	.cfi_def_cfa_offset 16
.Ltmp135:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp136:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	x_display_info_for_display
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB41_2
# BB#1:                                 # %if.then
	leaq	-28(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	handle_one_xevent
	movl	%eax, -32(%rbp)         # 4-byte Spill
.LBB41_2:                               # %if.end
	movl	-28(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	x_dispatch_event, .Lfunc_end41-x_dispatch_event
	.cfi_endproc

	.globl	x_make_frame_invisible
	.align	16, 0x90
	.type	x_make_frame_invisible,@function
x_make_frame_invisible:                 # @x_make_frame_invisible
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp137:
	.cfi_def_cfa_offset 16
.Ltmp138:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp139:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	cmpq	$0, 80(%rdi)
	je	.LBB42_6
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	je	.LBB42_4
# BB#2:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	cmpq	$0, %rax
	je	.LBB42_4
# BB#3:                                 # %cond.true.9
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_x11_drawable_get_xid
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB42_5
.LBB42_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	jmp	.LBB42_5
.LBB42_5:                               # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB42_7
.LBB42_6:                               # %cond.false.15
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB42_7:                               # %cond.end.18
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	616(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB42_9
# BB#8:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	$0, 616(%rax)
.LBB42_9:                               # %if.end
	callq	block_input
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	x_wm_set_size_hint
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	cmpq	$0, 80(%rsi)
	je	.LBB42_11
# BB#10:                                # %if.then.30
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_hide
	jmp	.LBB42_14
.LBB42_11:                              # %if.else
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rax
	movl	224(%rax), %edx
	callq	XWithdrawWindow
	cmpl	$0, %eax
	jne	.LBB42_13
# BB#12:                                # %if.then.43
	callq	unblock_input
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB42_13:                              # %if.end.44
	jmp	.LBB42_14
.LBB42_14:                              # %if.end.45
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	SET_FRAME_VISIBLE
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rax
	andq	$-4097, %rax            # imm = 0xFFFFFFFFFFFFEFFF
	movq	%rax, 208(%rdi)
	movq	-8(%rbp), %rdi
	callq	x_sync
	callq	unblock_input
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	x_make_frame_invisible, .Lfunc_end42-x_make_frame_invisible
	.cfi_endproc

	.globl	x_iconify_frame
	.align	16, 0x90
	.type	x_iconify_frame,@function
x_iconify_frame:                        # @x_iconify_frame
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
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	616(%rdi), %rdi
	cmpq	-8(%rbp), %rdi
	jne	.LBB43_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	$0, 616(%rax)
.LBB43_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$12, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB43_4
# BB#3:                                 # %if.then.5
	jmp	.LBB43_17
.LBB43_4:                               # %if.end.6
	callq	block_input
	movq	-8(%rbp), %rdi
	callq	x_set_bitmap_icon
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	cmpq	$0, 80(%rdi)
	je	.LBB43_8
# BB#5:                                 # %if.then.9
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$10, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB43_7
# BB#6:                                 # %if.then.15
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_show_all
.LBB43_7:                               # %if.end.19
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_iconify
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	SET_FRAME_VISIBLE
	movq	-8(%rbp), %rax
	movq	208(%rax), %rdi
	andq	$-4097, %rdi            # imm = 0xFFFFFFFFFFFFEFFF
	orq	$4096, %rdi             # imm = 0x1000
	movq	%rdi, 208(%rax)
	callq	unblock_input
	jmp	.LBB43_17
.LBB43_8:                               # %if.end.27
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$10, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB43_12
# BB#9:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$12, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB43_12
# BB#10:                                # %land.lhs.true.39
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movb	440(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB43_12
# BB#11:                                # %if.then.48
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	304(%rax), %esi
	movq	-8(%rbp), %rax
	movl	308(%rax), %edx
	callq	x_set_offset
.LBB43_12:                              # %if.end.49
	xorl	%edx, %edx
	movl	$1572864, %eax          # imm = 0x180000
	movl	%eax, %ecx
	leaq	-200(%rbp), %r8
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	56(%rsi), %rsi
	movq	%rsi, -168(%rbp)
	movl	$33, -200(%rbp)
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	360(%rsi), %rsi
	movq	%rsi, -160(%rbp)
	movl	$32, -152(%rbp)
	movq	$3, -144(%rbp)
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	16(%rsi), %rdi
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	16(%rsi), %rsi
	movslq	224(%rsi), %rsi
	movq	-8(%rbp), %r9
	movq	384(%r9), %r9
	movq	424(%r9), %r9
	movq	16(%r9), %r9
	shlq	$7, %rsi
	addq	232(%r9), %rsi
	movq	16(%rsi), %rsi
	callq	XSendEvent
	cmpl	$0, %eax
	jne	.LBB43_14
# BB#13:                                # %if.then.73
	callq	unblock_input
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	error
.LBB43_14:                              # %if.end.74
	movl	$3, %esi
	movq	-8(%rbp), %rdi
	callq	x_wm_set_window_state
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rdi
	shrq	$10, %rdi
	andq	$3, %rdi
	movl	%edi, %esi
	cmpl	$0, %esi
	jne	.LBB43_16
# BB#15:                                # %if.then.81
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rsi
	callq	XMapRaised
	movl	%eax, -212(%rbp)        # 4-byte Spill
.LBB43_16:                              # %if.end.90
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	208(%rax), %rcx
	andq	$-4097, %rcx            # imm = 0xFFFFFFFFFFFFEFFF
	orq	$4096, %rcx             # imm = 0x1000
	movq	%rcx, 208(%rax)
	movq	-8(%rbp), %rdi
	callq	SET_FRAME_VISIBLE
	callq	unblock_input
.LBB43_17:                              # %return
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	x_iconify_frame, .Lfunc_end43-x_iconify_frame
	.cfi_endproc

	.globl	x_free_frame_resources
	.align	16, 0x90
	.type	x_free_frame_resources,@function
x_free_frame_resources:                 # @x_free_frame_resources
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp143:
	.cfi_def_cfa_offset 16
.Ltmp144:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp145:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	addq	$184, %rdi
	movq	%rdi, -24(%rbp)
	callq	block_input
	movq	-16(%rbp), %rdi
	cmpq	$0, 16(%rdi)
	je	.LBB44_36
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$21, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB44_3
# BB#2:                                 # %if.then.1
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	144(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB44_3:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	free_frame_faces
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	cmpq	$0, 64(%rdi)
	je	.LBB44_5
# BB#4:                                 # %if.then.8
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	64(%rax), %rsi
	callq	XDestroyWindow
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB44_5:                               # %if.end.16
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 448(%rax)
	je	.LBB44_7
# BB#6:                                 # %if.then.20
	movq	-8(%rbp), %rdi
	callq	free_frame_xic
.LBB44_7:                               # %if.end.21
	movq	-8(%rbp), %rdi
	callq	x_free_cr_resources
	movq	-8(%rbp), %rdi
	callq	xg_free_frame_widgets
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	cmpq	$0, 56(%rdi)
	je	.LBB44_9
# BB#8:                                 # %if.then.25
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rsi
	callq	XDestroyWindow
	movl	%eax, -32(%rbp)         # 4-byte Spill
.LBB44_9:                               # %if.end.34
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	480(%rax), %rsi
	callq	unload_color
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	472(%rax), %rsi
	callq	unload_color
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	248(%rax), %rsi
	callq	unload_color
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	272(%rax), %rsi
	callq	unload_color
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	256(%rax), %rsi
	callq	unload_color
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	264(%rax), %rsi
	callq	unload_color
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$-1, 288(%rax)
	je	.LBB44_11
# BB#10:                                # %if.then.45
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	288(%rax), %rsi
	callq	unload_color
.LBB44_11:                              # %if.end.49
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$-1, 280(%rax)
	je	.LBB44_13
# BB#12:                                # %if.then.53
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	280(%rax), %rsi
	callq	unload_color
.LBB44_13:                              # %if.end.57
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$-1, 496(%rax)
	je	.LBB44_15
# BB#14:                                # %if.then.61
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	496(%rax), %rsi
	callq	unload_color
.LBB44_15:                              # %if.end.66
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$-1, 480(%rax)
	je	.LBB44_17
# BB#16:                                # %if.then.71
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	480(%rax), %rsi
	callq	unload_color
.LBB44_17:                              # %if.end.76
	movq	-8(%rbp), %rdi
	callq	x_free_gcs
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	cmpq	$0, 488(%rdi)
	je	.LBB44_19
# BB#18:                                # %if.then.81
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	488(%rax), %rsi
	callq	XFreeGC
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	$0, 488(%rsi)
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB44_19:                              # %if.end.92
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 472(%rax)
	je	.LBB44_21
# BB#20:                                # %if.then.98
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	472(%rax), %rsi
	callq	XFreeGC
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	$0, 472(%rsi)
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB44_21:                              # %if.end.109
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 296(%rax)
	je	.LBB44_23
# BB#22:                                # %if.then.113
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	296(%rax), %rsi
	callq	XFreeCursor
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB44_23:                              # %if.end.122
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 304(%rax)
	je	.LBB44_25
# BB#24:                                # %if.then.126
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	304(%rax), %rsi
	callq	XFreeCursor
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB44_25:                              # %if.end.135
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 312(%rax)
	je	.LBB44_27
# BB#26:                                # %if.then.139
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	312(%rax), %rsi
	callq	XFreeCursor
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB44_27:                              # %if.end.148
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 320(%rax)
	je	.LBB44_29
# BB#28:                                # %if.then.152
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	320(%rax), %rsi
	callq	XFreeCursor
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB44_29:                              # %if.end.161
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 328(%rax)
	je	.LBB44_31
# BB#30:                                # %if.then.165
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	328(%rax), %rsi
	callq	XFreeCursor
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB44_31:                              # %if.end.174
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 336(%rax)
	je	.LBB44_33
# BB#32:                                # %if.then.178
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	336(%rax), %rsi
	callq	XFreeCursor
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB44_33:                              # %if.end.187
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 344(%rax)
	je	.LBB44_35
# BB#34:                                # %if.then.191
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	344(%rax), %rsi
	callq	XFreeCursor
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB44_35:                              # %if.end.200
	jmp	.LBB44_36
.LBB44_36:                              # %if.end.201
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	432(%rax), %rax
	movq	%rax, %rdi
	callq	xfree
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	%rax, %rdi
	callq	xfree
	movq	-8(%rbp), %rax
	movq	$0, 384(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdi
	cmpq	600(%rdi), %rax
	jne	.LBB44_38
# BB#37:                                # %if.then.209
	movq	-16(%rbp), %rax
	movq	$0, 600(%rax)
.LBB44_38:                              # %if.end.211
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	608(%rcx), %rax
	jne	.LBB44_40
# BB#39:                                # %if.then.213
	movq	-16(%rbp), %rax
	movq	$0, 608(%rax)
.LBB44_40:                              # %if.end.215
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	616(%rcx), %rax
	jne	.LBB44_42
# BB#41:                                # %if.then.217
	movq	-16(%rbp), %rax
	movq	$0, 616(%rax)
.LBB44_42:                              # %if.end.219
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	48(%rcx), %rax
	jne	.LBB44_44
# BB#43:                                # %if.then.221
	movq	-24(%rbp), %rdi
	callq	reset_mouse_highlight
.LBB44_44:                              # %if.end.222
	callq	unblock_input
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	x_free_frame_resources, .Lfunc_end44-x_free_frame_resources
	.cfi_endproc

	.align	16, 0x90
	.type	x_free_cr_resources,@function
x_free_cr_resources:                    # @x_free_cr_resources
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp146:
	.cfi_def_cfa_offset 16
.Ltmp147:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp148:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end45:
	.size	x_free_cr_resources, .Lfunc_end45-x_free_cr_resources
	.cfi_endproc

	.globl	x_wm_set_icon_position
	.align	16, 0x90
	.type	x_wm_set_icon_position,@function
x_wm_set_icon_position:                 # @x_wm_set_icon_position
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp149:
	.cfi_def_cfa_offset 16
.Ltmp150:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp151:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	cmpq	$0, 80(%rdi)
	je	.LBB46_6
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	je	.LBB46_4
# BB#2:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	cmpq	$0, %rax
	je	.LBB46_4
# BB#3:                                 # %cond.true.9
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_x11_drawable_get_xid
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB46_5
.LBB46_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	jmp	.LBB46_5
.LBB46_5:                               # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB46_7
.LBB46_6:                               # %cond.false.15
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB46_7:                               # %cond.end.18
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	368(%rax), %rcx
	orq	$16, %rcx
	movq	%rcx, 368(%rax)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movl	%edx, 400(%rax)
	movl	-16(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movl	%edx, 404(%rax)
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	addq	$368, %rax              # imm = 0x170
	movq	%rax, %rdx
	callq	XSetWMHints
	movl	%eax, -44(%rbp)         # 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	x_wm_set_icon_position, .Lfunc_end46-x_wm_set_icon_position
	.cfi_endproc

	.globl	x_display_ok
	.align	16, 0x90
	.type	x_display_ok,@function
x_display_ok:                           # @x_display_ok
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp152:
	.cfi_def_cfa_offset 16
.Ltmp153:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp154:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	callq	unrequest_sigio
	movq	-16(%rbp), %rdi
	callq	XOpenDisplay
	movq	%rax, -24(%rbp)
	callq	request_sigio
	cmpq	$0, -24(%rbp)
	jne	.LBB47_2
# BB#1:                                 # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB47_3
.LBB47_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	XCloseDisplay
	movb	$1, -1(%rbp)
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB47_3:                               # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	x_display_ok, .Lfunc_end47-x_display_ok
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI48_0:
	.quad	4607182418800017408     # double 1
.LCPI48_1:
	.quad	4627842682090579558     # double 25.399999999999999
.LCPI48_2:
	.quad	4636737291354636288     # double 100
	.text
	.globl	x_term_init
	.align	16, 0x90
	.type	x_term_init,@function
x_term_init:                            # @x_term_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp155:
	.cfi_def_cfa_offset 16
.Ltmp156:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp157:
	.cfi_def_cfa_register %rbp
	subq	$4224, %rsp             # imm = 0x1080
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	callq	block_input
	cmpl	$0, x_initialized
	jne	.LBB48_2
# BB#1:                                 # %if.then
	callq	x_initialize
	movl	x_initialized, %eax
	addl	$1, %eax
	movl	%eax, x_initialized
.LBB48_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	SSDATA
	movq	%rax, %rdi
	callq	x_display_ok
	testb	$1, %al
	jne	.LBB48_4
# BB#3:                                 # %if.then.2
	movq	-16(%rbp), %rdi
	callq	SSDATA
	movabsq	$.L.str.2, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB48_4:                               # %if.end.4
	leaq	-160(%rbp), %rax
	movq	%rax, -168(%rbp)
	movl	x_initialized, %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, x_initialized
	cmpl	$1, %ecx
	jle	.LBB48_6
# BB#5:                                 # %if.then.6
	movq	-16(%rbp), %rdi
	callq	SSDATA
	leaq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	xg_display_open
	jmp	.LBB48_16
.LBB48_6:                               # %if.else
	movl	$0, -76(%rbp)
.LBB48_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$10, -76(%rbp)
	jge	.LBB48_10
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB48_7 Depth=1
	movslq	-76(%rbp), %rax
	movq	$0, -160(%rbp,%rax,8)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB48_7 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB48_7
.LBB48_10:                              # %for.end
	xorl	%edi, %edi
	movl	$0, -76(%rbp)
	movq	initial_argv, %rax
	movq	(%rax), %rax
	movl	-76(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -76(%rbp)
	movslq	%ecx, %rsi
	movq	%rax, -160(%rbp,%rsi,8)
	movq	-16(%rbp), %rax
	movq	%rax, -1496(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1496(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB48_12
# BB#11:                                # %if.then.16
	movabsq	$x_term_init.display_opt, %rax
	movl	-76(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -76(%rbp)
	movslq	%ecx, %rsi
	movq	%rax, -160(%rbp,%rsi,8)
	movq	-16(%rbp), %rdi
	callq	SSDATA
	movl	-76(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -76(%rbp)
	movslq	%ecx, %rsi
	movq	%rax, -160(%rbp,%rsi,8)
.LBB48_12:                              # %if.end.24
	movabsq	$.L.str.3, %rdi
	movabsq	$x_term_init.name_opt, %rax
	movl	-76(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -76(%rbp)
	movslq	%ecx, %rsi
	movq	%rax, -160(%rbp,%rsi,8)
	movq	-32(%rbp), %rax
	movl	-76(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -76(%rbp)
	movslq	%ecx, %rsi
	movq	%rax, -160(%rbp,%rsi,8)
	callq	XSetLocaleModifiers
	movabsq	$.L.str.4, %rdi
	movl	$19, %esi
	movabsq	$my_log_handler, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -1504(%rbp)       # 8-byte Spill
	callq	g_log_set_handler
	xorl	%esi, %esi
	movl	%esi, %ecx
	movabsq	$event_handler_gdk, %rsi
	movl	%eax, -172(%rbp)
	movq	%rcx, %rdi
	movq	%rcx, %rdx
	callq	gdk_window_add_filter
	callq	fixup_locale
	callq	unrequest_sigio
	leaq	-76(%rbp), %rdi
	leaq	-168(%rbp), %rsi
	callq	gtk_init
	callq	request_sigio
	callq	fixup_locale
	movabsq	$.L.str.4, %rdi
	movl	-172(%rbp), %esi
	callq	g_log_remove_handler
	callq	xg_initialize
	movabsq	$.L.str.5, %rcx
	movq	gdk_display, %rdx
	movq	%rdx, -40(%rbp)
	movq	%rcx, -184(%rbp)
	movq	-184(%rbp), %rdi
	callq	build_string
	xorl	%edi, %edi
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -1512(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1512(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fexpand_file_name
	xorl	%edi, %edi
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -1520(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1520(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB48_15
# BB#13:                                # %land.lhs.true
	movq	-200(%rbp), %rdi
	callq	Ffile_readable_p
	xorl	%edi, %edi
	movq	%rax, -1528(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1528(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB48_15
# BB#14:                                # %if.then.41
	movq	-200(%rbp), %rdi
	callq	SSDATA
	movq	%rax, %rdi
	callq	gtk_rc_parse
.LBB48_15:                              # %if.end.43
	movabsq	$x_error_handler, %rdi
	callq	XSetErrorHandler
	movabsq	$x_io_error_quitter, %rdi
	movq	%rax, -1536(%rbp)       # 8-byte Spill
	callq	XSetIOErrorHandler
	movq	%rax, -1544(%rbp)       # 8-byte Spill
.LBB48_16:                              # %if.end.46
	cmpq	$0, -40(%rbp)
	jne	.LBB48_18
# BB#17:                                # %if.then.48
	callq	unblock_input
	movq	$0, -8(%rbp)
	jmp	.LBB48_382
.LBB48_18:                              # %if.end.49
	movq	-40(%rbp), %rdi
	callq	XGetXCBConnection
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB48_20
# BB#19:                                # %if.then.52
	movq	-40(%rbp), %rdi
	callq	xg_display_close
	callq	unblock_input
	movq	$0, -8(%rbp)
	jmp	.LBB48_382
.LBB48_20:                              # %if.end.53
	movl	$1016, %eax             # imm = 0x3F8
	movl	%eax, %edi
	callq	xzalloc
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	x_create_terminal
	movq	%rax, -48(%rbp)
	movq	x_display_list, %rax
	movq	%rax, -208(%rbp)
.LBB48_21:                              # %for.cond.56
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -208(%rbp)
	je	.LBB48_26
# BB#22:                                # %for.body.58
                                        #   in Loop: Header=BB48_21 Depth=1
	movq	-208(%rbp), %rax
	movq	32(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	SSDATA
	movq	-16(%rbp), %rdi
	movq	%rax, -1552(%rbp)       # 8-byte Spill
	callq	SSDATA
	movq	-1552(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	same_x_server
	testb	$1, %al
	jne	.LBB48_23
	jmp	.LBB48_24
.LBB48_23:                              # %if.then.62
	jmp	.LBB48_26
.LBB48_24:                              # %if.end.63
                                        #   in Loop: Header=BB48_21 Depth=1
	jmp	.LBB48_25
.LBB48_25:                              # %for.inc.64
                                        #   in Loop: Header=BB48_21 Depth=1
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	jmp	.LBB48_21
.LBB48_26:                              # %for.end.65
	cmpq	$0, -208(%rbp)
	je	.LBB48_28
# BB#27:                                # %if.then.67
	movq	-208(%rbp), %rax
	movq	8(%rax), %rax
	movq	72(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 72(%rcx)
	jmp	.LBB48_36
.LBB48_28:                              # %if.else.70
	movl	$1045, %edi             # imm = 0x415
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	allocate_kboard
	movl	$998, %edi              # imm = 0x3E6
	movq	-48(%rbp), %rcx
	movq	%rax, 72(%rcx)
	callq	builtin_lisp_symbol
	movl	$957, %edi              # imm = 0x3BD
	subq	$0, %rax
	movq	lispsym+24(,%rax), %rax
	movq	%rax, -1560(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1560(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB48_33
# BB#29:                                # %if.then.78
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	-48(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, terminal_list
	callq	unblock_input
	movl	$998, %edi              # imm = 0x3E6
	movq	-48(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -1568(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	cmpq	$0, -216(%rbp)
	movq	%rax, -1576(%rbp)       # 8-byte Spill
	je	.LBB48_31
# BB#30:                                # %cond.true
	movq	-216(%rbp), %rdi
	callq	build_string
	movq	%rax, -1584(%rbp)       # 8-byte Spill
	jmp	.LBB48_32
.LBB48_31:                              # %cond.false
	movq	empty_unibyte_string, %rax
	movq	%rax, -1584(%rbp)       # 8-byte Spill
.LBB48_32:                              # %cond.end
	movq	-1584(%rbp), %rax       # 8-byte Reload
	movq	-1576(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	call1
	movq	-1568(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_system_key_alist
	callq	block_input
	movq	terminal_list, %rax
	movq	-48(%rbp), %rsi
	movq	%rax, 40(%rsi)
	movq	-48(%rbp), %rax
	movq	%rax, terminal_list
.LBB48_33:                              # %if.end.86
	movq	current_kboard, %rax
	cmpq	initial_kboard, %rax
	jne	.LBB48_35
# BB#34:                                # %if.then.88
	movq	-48(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, current_kboard
.LBB48_35:                              # %if.end.90
	jmp	.LBB48_36
.LBB48_36:                              # %if.end.91
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	72(%rax), %rax
	movl	168(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 168(%rax)
	movq	x_display_list, %rax
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movq	%rax, x_display_list
	movq	-16(%rbp), %rax
	movq	%rax, -1592(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1592(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-56(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 24(%rax)
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 1008(%rdx)
	movq	-56(%rbp), %rax
	movl	$1, 172(%rax)
	movq	-56(%rbp), %rax
	movl	$1, 168(%rax)
	movq	-16(%rbp), %rdi
	callq	xlispstrdup
	movq	-48(%rbp), %rdx
	movq	%rax, 64(%rdx)
	callq	Fsystem_name
	xorl	%ecx, %ecx
	movb	%cl, %r8b
	movq	%rax, -224(%rbp)
	testb	$1, %r8b
	jne	.LBB48_37
	jmp	.LBB48_96
.LBB48_37:                              # %cond.true.101
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB48_38
	jmp	.LBB48_67
.LBB48_38:                              # %cond.true.102
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	globals+1192, %rdi
	movl	%edx, -1596(%rbp)       # 4-byte Spill
	callq	SBYTES
	movb	%al, %cl
	movsbl	%cl, %edx
	movl	-1596(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	imull	$0, %esi, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB48_40
# BB#39:                                # %cond.true.113
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	globals+1192, %rdi
	movl	%edx, -1600(%rbp)       # 4-byte Spill
	callq	SBYTES
	xorl	%edx, %edx
	movb	%al, %cl
	movsbl	%cl, %esi
	movl	-1600(%rbp), %r8d       # 4-byte Reload
	addl	%esi, %r8d
	imull	$0, %r8d, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	subl	%esi, %edx
	movq	-224(%rbp), %rdi
	movl	%edx, -1604(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	globals+1192, %rdi
	movl	%edx, -1608(%rbp)       # 4-byte Spill
	callq	SBYTES
	movb	%al, %cl
	movsbl	%cl, %edx
	movl	-1608(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	imull	$0, %esi, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	-1604(%rbp), %esi       # 4-byte Reload
	subl	%edx, %esi
	movl	%esi, -1612(%rbp)       # 4-byte Spill
	jmp	.LBB48_41
.LBB48_40:                              # %cond.false.143
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	globals+1192, %rdi
	movl	%edx, -1616(%rbp)       # 4-byte Spill
	callq	SBYTES
	movb	%al, %cl
	movsbl	%cl, %edx
	movl	-1616(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	imull	$0, %esi, %edx
	addl	$0, %edx
	movl	%edx, -1612(%rbp)       # 4-byte Spill
.LBB48_41:                              # %cond.end.155
	movl	-1612(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB48_51
# BB#42:                                # %cond.true.159
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB48_47
# BB#43:                                # %cond.true.166
	movq	globals+1192, %rdi
	callq	SBYTES
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-224(%rbp), %rdi
	movl	%edx, -1620(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	globals+1192, %rdi
	movl	%edx, -1624(%rbp)       # 4-byte Spill
	callq	SBYTES
	movb	%al, %cl
	movsbl	%cl, %edx
	movl	-1624(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	imull	$0, %esi, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB48_45
# BB#44:                                # %cond.true.183
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	globals+1192, %rdi
	movl	%edx, -1628(%rbp)       # 4-byte Spill
	callq	SBYTES
	xorl	%edx, %edx
	movb	%al, %cl
	movsbl	%cl, %esi
	movl	-1628(%rbp), %r8d       # 4-byte Reload
	addl	%esi, %r8d
	imull	$0, %r8d, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	subl	%esi, %edx
	movq	-224(%rbp), %rdi
	movl	%edx, -1632(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	globals+1192, %rdi
	movl	%edx, -1636(%rbp)       # 4-byte Spill
	callq	SBYTES
	movb	%al, %cl
	movsbl	%cl, %edx
	movl	-1636(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	imull	$0, %esi, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	-1632(%rbp), %esi       # 4-byte Reload
	subl	%edx, %esi
	movl	%esi, -1640(%rbp)       # 4-byte Spill
	jmp	.LBB48_46
.LBB48_45:                              # %cond.false.215
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	globals+1192, %rdi
	movl	%edx, -1644(%rbp)       # 4-byte Spill
	callq	SBYTES
	movb	%al, %cl
	movsbl	%cl, %edx
	movl	-1644(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	imull	$0, %esi, %edx
	addl	$0, %edx
	movl	%edx, -1640(%rbp)       # 4-byte Spill
.LBB48_46:                              # %cond.end.227
	movl	-1640(%rbp), %eax       # 4-byte Reload
	movq	-224(%rbp), %rdi
	movl	%eax, -1648(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movl	-1648(%rbp), %esi       # 4-byte Reload
	subl	%edx, %esi
	movl	-1620(%rbp), %edx       # 4-byte Reload
	cmpl	%esi, %edx
	jl	.LBB48_59
	jmp	.LBB48_56
.LBB48_47:                              # %cond.false.236
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	globals+1192, %rdi
	movl	%edx, -1652(%rbp)       # 4-byte Spill
	callq	SBYTES
	movb	%al, %cl
	movsbl	%cl, %edx
	movl	-1652(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	imull	$0, %esi, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB48_49
# BB#48:                                # %cond.true.250
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	globals+1192, %rdi
	movl	%edx, -1656(%rbp)       # 4-byte Spill
	callq	SBYTES
	movb	%al, %cl
	movsbl	%cl, %edx
	movl	-1656(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	imull	$0, %esi, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -1660(%rbp)       # 4-byte Spill
	jmp	.LBB48_50
.LBB48_49:                              # %cond.false.266
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	globals+1192, %rdi
	movl	%edx, -1664(%rbp)       # 4-byte Spill
	callq	SBYTES
	movb	%al, %cl
	movsbl	%cl, %edx
	movl	-1664(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	imull	$0, %esi, %edx
	subl	$1, %edx
	movl	%edx, -1660(%rbp)       # 4-byte Spill
.LBB48_50:                              # %cond.end.278
	movl	-1660(%rbp), %eax       # 4-byte Reload
	movq	-224(%rbp), %rdi
	movl	%eax, -1668(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movl	-1668(%rbp), %esi       # 4-byte Reload
	subl	%edx, %esi
	movq	globals+1192, %rdi
	movl	%esi, -1672(%rbp)       # 4-byte Spill
	callq	SBYTES
	movb	%al, %cl
	movsbl	%cl, %edx
	movl	-1672(%rbp), %esi       # 4-byte Reload
	cmpl	%edx, %esi
	jl	.LBB48_59
	jmp	.LBB48_56
.LBB48_51:                              # %cond.false.290
	movq	globals+1192, %rdi
	callq	SBYTES
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB48_53
# BB#52:                                # %cond.true.296
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	globals+1192, %rdi
	movl	%edx, -1676(%rbp)       # 4-byte Spill
	callq	SBYTES
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-224(%rbp), %rdi
	movl	%edx, -1680(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movl	-1680(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	movl	-1676(%rbp), %edx       # 4-byte Reload
	cmpl	%esi, %edx
	jle	.LBB48_59
	jmp	.LBB48_56
.LBB48_53:                              # %cond.false.311
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB48_55
# BB#54:                                # %cond.true.318
	movq	globals+1192, %rdi
	callq	SBYTES
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	globals+1192, %rdi
	movl	%edx, -1684(%rbp)       # 4-byte Spill
	callq	SBYTES
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-224(%rbp), %rdi
	movl	%edx, -1688(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movl	-1688(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	movl	-1684(%rbp), %edx       # 4-byte Reload
	cmpl	%esi, %edx
	jle	.LBB48_59
	jmp	.LBB48_56
.LBB48_55:                              # %cond.false.332
	movq	globals+1192, %rdi
	callq	SBYTES
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-224(%rbp), %rdi
	movl	%edx, -1692(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movl	-1692(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	movq	-224(%rbp), %rdi
	movl	%esi, -1696(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movl	-1696(%rbp), %esi       # 4-byte Reload
	cmpl	%edx, %esi
	jl	.LBB48_59
.LBB48_56:                              # %lor.lhs.false
	movq	globals+1192, %rdi
	callq	SBYTES
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-224(%rbp), %rdi
	movl	%edx, -1700(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movl	-1700(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	imull	$0, %esi, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB48_58
# BB#57:                                # %land.lhs.true.359
	movq	globals+1192, %rdi
	callq	SBYTES
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-224(%rbp), %rdi
	movl	%edx, -1704(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movl	-1704(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	cmpl	$-128, %esi
	jl	.LBB48_59
.LBB48_58:                              # %lor.lhs.false.370
	movq	globals+1192, %rdi
	callq	SBYTES
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-224(%rbp), %rdi
	movl	%edx, -1708(%rbp)       # 4-byte Spill
	callq	SBYTES
	movl	$127, %edx
	addq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	movl	-1708(%rbp), %r8d       # 4-byte Reload
	addl	%esi, %r8d
	cmpl	%r8d, %edx
	jge	.LBB48_63
.LBB48_59:                              # %cond.true.381
	movq	globals+1192, %rdi
	callq	SBYTES
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-224(%rbp), %rdi
	movl	%edx, -1712(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-1712(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	cmpl	$127, %esi
	jg	.LBB48_61
# BB#60:                                # %cond.true.392
	movq	globals+1192, %rdi
	callq	SBYTES
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-224(%rbp), %rdi
	movl	%edx, -1716(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-1716(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	movb	%sil, %cl
	movsbl	%cl, %edx
	movl	%edx, -1720(%rbp)       # 4-byte Spill
	jmp	.LBB48_62
.LBB48_61:                              # %cond.false.403
	movq	globals+1192, %rdi
	callq	SBYTES
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-224(%rbp), %rdi
	movl	%edx, -1724(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-1724(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	subl	$-128, %esi
	movb	%sil, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -1720(%rbp)       # 4-byte Spill
.LBB48_62:                              # %cond.end.416
	movl	-1720(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -232(%rbp)
	testb	$1, %cl
	jne	.LBB48_335
	jmp	.LBB48_336
.LBB48_63:                              # %cond.false.419
	movq	globals+1192, %rdi
	callq	SBYTES
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-224(%rbp), %rdi
	movl	%edx, -1728(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-1728(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	cmpl	$127, %esi
	jg	.LBB48_65
# BB#64:                                # %cond.true.430
	movq	globals+1192, %rdi
	callq	SBYTES
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-224(%rbp), %rdi
	movl	%edx, -1732(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-1732(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	movb	%sil, %cl
	movsbl	%cl, %edx
	movl	%edx, -1736(%rbp)       # 4-byte Spill
	jmp	.LBB48_66
.LBB48_65:                              # %cond.false.441
	movq	globals+1192, %rdi
	callq	SBYTES
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-224(%rbp), %rdi
	movl	%edx, -1740(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-1740(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	subl	$-128, %esi
	movb	%sil, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -1736(%rbp)       # 4-byte Spill
.LBB48_66:                              # %cond.end.454
	movl	-1736(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -232(%rbp)
	testb	$1, %dl
	jne	.LBB48_335
	jmp	.LBB48_336
.LBB48_67:                              # %cond.false.457
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -1752(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-1752(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB48_69
# BB#68:                                # %cond.true.467
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -1760(%rbp)       # 8-byte Spill
	callq	SBYTES
	xorl	%ecx, %ecx
	movq	-1760(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$0, %rax
	xorq	$-1, %rax
	cmpq	$-1, %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %ecx
	movslq	%ecx, %rax
	movq	-224(%rbp), %rdi
	movq	%rax, -1768(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -1776(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-1776(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-1768(%rbp), %rdi       # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -1784(%rbp)       # 8-byte Spill
	jmp	.LBB48_70
.LBB48_69:                              # %cond.false.492
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -1792(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-1792(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$0, %rax
	movq	%rax, -1784(%rbp)       # 8-byte Spill
.LBB48_70:                              # %cond.end.500
	movq	-1784(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB48_80
# BB#71:                                # %cond.true.504
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB48_76
# BB#72:                                # %cond.true.509
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -1800(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -1808(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-1808(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB48_74
# BB#73:                                # %cond.true.520
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -1816(%rbp)       # 8-byte Spill
	callq	SBYTES
	xorl	%ecx, %ecx
	movq	-1816(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$0, %rax
	xorq	$-1, %rax
	cmpq	$-1, %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %ecx
	movslq	%ecx, %rax
	movq	-224(%rbp), %rdi
	movq	%rax, -1824(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -1832(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-1832(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-1824(%rbp), %rdi       # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -1840(%rbp)       # 8-byte Spill
	jmp	.LBB48_75
.LBB48_74:                              # %cond.false.545
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -1848(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-1848(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$0, %rax
	movq	%rax, -1840(%rbp)       # 8-byte Spill
.LBB48_75:                              # %cond.end.553
	movq	-1840(%rbp), %rax       # 8-byte Reload
	movq	-224(%rbp), %rdi
	movq	%rax, -1856(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-1856(%rbp), %rdi       # 8-byte Reload
	subq	%rax, %rdi
	movq	-1800(%rbp), %rax       # 8-byte Reload
	cmpq	%rdi, %rax
	jl	.LBB48_88
	jmp	.LBB48_85
.LBB48_76:                              # %cond.false.560
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -1864(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-1864(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB48_78
# BB#77:                                # %cond.true.570
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -1872(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-1872(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1880(%rbp)       # 8-byte Spill
	jmp	.LBB48_79
.LBB48_78:                              # %cond.false.582
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -1888(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-1888(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	subq	$1, %rax
	movq	%rax, -1880(%rbp)       # 8-byte Spill
.LBB48_79:                              # %cond.end.590
	movq	-1880(%rbp), %rax       # 8-byte Reload
	movq	-224(%rbp), %rdi
	movq	%rax, -1896(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-1896(%rbp), %rdi       # 8-byte Reload
	subq	%rax, %rdi
	movq	globals+1192, %rax
	movq	%rdi, -1904(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	SBYTES
	movq	-1904(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB48_88
	jmp	.LBB48_85
.LBB48_80:                              # %cond.false.598
	movq	globals+1192, %rdi
	callq	SBYTES
	cmpq	$0, %rax
	jge	.LBB48_82
# BB#81:                                # %cond.true.602
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	movq	globals+1192, %rdi
	movq	%rax, -1912(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -1920(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-1920(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movq	-1912(%rbp), %rax       # 8-byte Reload
	cmpq	%rdi, %rax
	jle	.LBB48_88
	jmp	.LBB48_85
.LBB48_82:                              # %cond.false.611
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB48_84
# BB#83:                                # %cond.true.616
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	globals+1192, %rdi
	movq	%rax, -1928(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -1936(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-1936(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movq	-1928(%rbp), %rax       # 8-byte Reload
	cmpq	%rdi, %rax
	jle	.LBB48_88
	jmp	.LBB48_85
.LBB48_84:                              # %cond.false.624
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -1944(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-1944(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movq	-224(%rbp), %rax
	movq	%rdi, -1952(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	SBYTES
	addq	$2, %rax
	movq	-1952(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB48_88
.LBB48_85:                              # %lor.lhs.false.633
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -1960(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-1960(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB48_87
# BB#86:                                # %land.lhs.true.642
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -1968(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-1968(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	cmpq	$-128, %rdi
	jl	.LBB48_88
.LBB48_87:                              # %lor.lhs.false.649
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -1976(%rbp)       # 8-byte Spill
	callq	SBYTES
	movl	$127, %ecx
	movl	%ecx, %edi
	addq	$2, %rax
	movq	-1976(%rbp), %rdx       # 8-byte Reload
	addq	%rax, %rdx
	cmpq	%rdx, %rdi
	jge	.LBB48_92
.LBB48_88:                              # %cond.true.656
	movq	globals+1192, %rdi
	callq	SBYTES
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-224(%rbp), %rdi
	movl	%edx, -1980(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-1980(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	cmpl	$127, %esi
	jg	.LBB48_90
# BB#89:                                # %cond.true.667
	movq	globals+1192, %rdi
	callq	SBYTES
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-224(%rbp), %rdi
	movl	%edx, -1984(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-1984(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	movb	%sil, %cl
	movsbl	%cl, %edx
	movl	%edx, -1988(%rbp)       # 4-byte Spill
	jmp	.LBB48_91
.LBB48_90:                              # %cond.false.678
	movq	globals+1192, %rdi
	callq	SBYTES
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-224(%rbp), %rdi
	movl	%edx, -1992(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-1992(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	subl	$-128, %esi
	movb	%sil, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -1988(%rbp)       # 4-byte Spill
.LBB48_91:                              # %cond.end.691
	movl	-1988(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -232(%rbp)
	testb	$1, %cl
	jne	.LBB48_335
	jmp	.LBB48_336
.LBB48_92:                              # %cond.false.694
	movq	globals+1192, %rdi
	callq	SBYTES
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-224(%rbp), %rdi
	movl	%edx, -1996(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-1996(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	cmpl	$127, %esi
	jg	.LBB48_94
# BB#93:                                # %cond.true.705
	movq	globals+1192, %rdi
	callq	SBYTES
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-224(%rbp), %rdi
	movl	%edx, -2000(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-2000(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	movb	%sil, %cl
	movsbl	%cl, %edx
	movl	%edx, -2004(%rbp)       # 4-byte Spill
	jmp	.LBB48_95
.LBB48_94:                              # %cond.false.716
	movq	globals+1192, %rdi
	callq	SBYTES
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-224(%rbp), %rdi
	movl	%edx, -2008(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-2008(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	subl	$-128, %esi
	movb	%sil, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -2004(%rbp)       # 4-byte Spill
.LBB48_95:                              # %cond.end.729
	movl	-2004(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -232(%rbp)
	testb	$1, %dl
	jne	.LBB48_335
	jmp	.LBB48_336
.LBB48_96:                              # %cond.false.732
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB48_97
	jmp	.LBB48_156
.LBB48_97:                              # %cond.true.733
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB48_98
	jmp	.LBB48_127
.LBB48_98:                              # %cond.true.734
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	globals+1192, %rdi
	movl	%edx, -2012(%rbp)       # 4-byte Spill
	callq	SBYTES
	movw	%ax, %cx
	movswl	%cx, %edx
	movl	-2012(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	imull	$0, %esi, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB48_100
# BB#99:                                # %cond.true.748
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	globals+1192, %rdi
	movl	%edx, -2016(%rbp)       # 4-byte Spill
	callq	SBYTES
	xorl	%edx, %edx
	movw	%ax, %cx
	movswl	%cx, %esi
	movl	-2016(%rbp), %r8d       # 4-byte Reload
	addl	%esi, %r8d
	imull	$0, %r8d, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %esi
	subl	%esi, %edx
	movq	-224(%rbp), %rdi
	movl	%edx, -2020(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	globals+1192, %rdi
	movl	%edx, -2024(%rbp)       # 4-byte Spill
	callq	SBYTES
	movw	%ax, %cx
	movswl	%cx, %edx
	movl	-2024(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	imull	$0, %esi, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	-2020(%rbp), %esi       # 4-byte Reload
	subl	%edx, %esi
	movl	%esi, -2028(%rbp)       # 4-byte Spill
	jmp	.LBB48_101
.LBB48_100:                             # %cond.false.780
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	globals+1192, %rdi
	movl	%edx, -2032(%rbp)       # 4-byte Spill
	callq	SBYTES
	movw	%ax, %cx
	movswl	%cx, %edx
	movl	-2032(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	imull	$0, %esi, %edx
	addl	$0, %edx
	movl	%edx, -2028(%rbp)       # 4-byte Spill
.LBB48_101:                             # %cond.end.792
	movl	-2028(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB48_111
# BB#102:                               # %cond.true.796
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB48_107
# BB#103:                               # %cond.true.803
	movq	globals+1192, %rdi
	callq	SBYTES
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-224(%rbp), %rdi
	movl	%edx, -2036(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	globals+1192, %rdi
	movl	%edx, -2040(%rbp)       # 4-byte Spill
	callq	SBYTES
	movw	%ax, %cx
	movswl	%cx, %edx
	movl	-2040(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	imull	$0, %esi, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB48_105
# BB#104:                               # %cond.true.820
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	globals+1192, %rdi
	movl	%edx, -2044(%rbp)       # 4-byte Spill
	callq	SBYTES
	xorl	%edx, %edx
	movw	%ax, %cx
	movswl	%cx, %esi
	movl	-2044(%rbp), %r8d       # 4-byte Reload
	addl	%esi, %r8d
	imull	$0, %r8d, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %esi
	subl	%esi, %edx
	movq	-224(%rbp), %rdi
	movl	%edx, -2048(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	globals+1192, %rdi
	movl	%edx, -2052(%rbp)       # 4-byte Spill
	callq	SBYTES
	movw	%ax, %cx
	movswl	%cx, %edx
	movl	-2052(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	imull	$0, %esi, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	-2048(%rbp), %esi       # 4-byte Reload
	subl	%edx, %esi
	movl	%esi, -2056(%rbp)       # 4-byte Spill
	jmp	.LBB48_106
.LBB48_105:                             # %cond.false.852
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	globals+1192, %rdi
	movl	%edx, -2060(%rbp)       # 4-byte Spill
	callq	SBYTES
	movw	%ax, %cx
	movswl	%cx, %edx
	movl	-2060(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	imull	$0, %esi, %edx
	addl	$0, %edx
	movl	%edx, -2056(%rbp)       # 4-byte Spill
.LBB48_106:                             # %cond.end.864
	movl	-2056(%rbp), %eax       # 4-byte Reload
	movq	-224(%rbp), %rdi
	movl	%eax, -2064(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movl	-2064(%rbp), %esi       # 4-byte Reload
	subl	%edx, %esi
	movl	-2036(%rbp), %edx       # 4-byte Reload
	cmpl	%esi, %edx
	jl	.LBB48_119
	jmp	.LBB48_116
.LBB48_107:                             # %cond.false.873
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	globals+1192, %rdi
	movl	%edx, -2068(%rbp)       # 4-byte Spill
	callq	SBYTES
	movw	%ax, %cx
	movswl	%cx, %edx
	movl	-2068(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	imull	$0, %esi, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB48_109
# BB#108:                               # %cond.true.887
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	globals+1192, %rdi
	movl	%edx, -2072(%rbp)       # 4-byte Spill
	callq	SBYTES
	movw	%ax, %cx
	movswl	%cx, %edx
	movl	-2072(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	imull	$0, %esi, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -2076(%rbp)       # 4-byte Spill
	jmp	.LBB48_110
.LBB48_109:                             # %cond.false.903
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	globals+1192, %rdi
	movl	%edx, -2080(%rbp)       # 4-byte Spill
	callq	SBYTES
	movw	%ax, %cx
	movswl	%cx, %edx
	movl	-2080(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	imull	$0, %esi, %edx
	subl	$1, %edx
	movl	%edx, -2076(%rbp)       # 4-byte Spill
.LBB48_110:                             # %cond.end.915
	movl	-2076(%rbp), %eax       # 4-byte Reload
	movq	-224(%rbp), %rdi
	movl	%eax, -2084(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movl	-2084(%rbp), %esi       # 4-byte Reload
	subl	%edx, %esi
	movq	globals+1192, %rdi
	movl	%esi, -2088(%rbp)       # 4-byte Spill
	callq	SBYTES
	movw	%ax, %cx
	movswl	%cx, %edx
	movl	-2088(%rbp), %esi       # 4-byte Reload
	cmpl	%edx, %esi
	jl	.LBB48_119
	jmp	.LBB48_116
.LBB48_111:                             # %cond.false.927
	movq	globals+1192, %rdi
	callq	SBYTES
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB48_113
# BB#112:                               # %cond.true.933
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	globals+1192, %rdi
	movl	%edx, -2092(%rbp)       # 4-byte Spill
	callq	SBYTES
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-224(%rbp), %rdi
	movl	%edx, -2096(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movl	-2096(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	movl	-2092(%rbp), %edx       # 4-byte Reload
	cmpl	%esi, %edx
	jle	.LBB48_119
	jmp	.LBB48_116
.LBB48_113:                             # %cond.false.948
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB48_115
# BB#114:                               # %cond.true.955
	movq	globals+1192, %rdi
	callq	SBYTES
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	globals+1192, %rdi
	movl	%edx, -2100(%rbp)       # 4-byte Spill
	callq	SBYTES
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-224(%rbp), %rdi
	movl	%edx, -2104(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movl	-2104(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	movl	-2100(%rbp), %edx       # 4-byte Reload
	cmpl	%esi, %edx
	jle	.LBB48_119
	jmp	.LBB48_116
.LBB48_115:                             # %cond.false.969
	movq	globals+1192, %rdi
	callq	SBYTES
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-224(%rbp), %rdi
	movl	%edx, -2108(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movl	-2108(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	movq	-224(%rbp), %rdi
	movl	%esi, -2112(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movl	-2112(%rbp), %esi       # 4-byte Reload
	cmpl	%edx, %esi
	jl	.LBB48_119
.LBB48_116:                             # %lor.lhs.false.984
	movq	globals+1192, %rdi
	callq	SBYTES
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-224(%rbp), %rdi
	movl	%edx, -2116(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movl	-2116(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	imull	$0, %esi, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB48_118
# BB#117:                               # %land.lhs.true.997
	movq	globals+1192, %rdi
	callq	SBYTES
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-224(%rbp), %rdi
	movl	%edx, -2120(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movl	-2120(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	cmpl	$-32768, %esi           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB48_119
.LBB48_118:                             # %lor.lhs.false.1008
	movq	globals+1192, %rdi
	callq	SBYTES
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-224(%rbp), %rdi
	movl	%edx, -2124(%rbp)       # 4-byte Spill
	callq	SBYTES
	movl	$32767, %edx            # imm = 0x7FFF
	addq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	movl	-2124(%rbp), %r8d       # 4-byte Reload
	addl	%esi, %r8d
	cmpl	%r8d, %edx
	jge	.LBB48_123
.LBB48_119:                             # %cond.true.1019
	movq	globals+1192, %rdi
	callq	SBYTES
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-224(%rbp), %rdi
	movl	%edx, -2128(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-2128(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	cmpl	$32767, %esi            # imm = 0x7FFF
	jg	.LBB48_121
# BB#120:                               # %cond.true.1030
	movq	globals+1192, %rdi
	callq	SBYTES
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-224(%rbp), %rdi
	movl	%edx, -2132(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-2132(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	movw	%si, %cx
	movswl	%cx, %edx
	movl	%edx, -2136(%rbp)       # 4-byte Spill
	jmp	.LBB48_122
.LBB48_121:                             # %cond.false.1041
	movq	globals+1192, %rdi
	callq	SBYTES
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-224(%rbp), %rdi
	movl	%edx, -2140(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-2140(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	subl	$-32768, %esi           # imm = 0xFFFFFFFFFFFF8000
	movw	%si, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -2136(%rbp)       # 4-byte Spill
.LBB48_122:                             # %cond.end.1054
	movl	-2136(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -232(%rbp)
	testb	$1, %cl
	jne	.LBB48_335
	jmp	.LBB48_336
.LBB48_123:                             # %cond.false.1057
	movq	globals+1192, %rdi
	callq	SBYTES
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-224(%rbp), %rdi
	movl	%edx, -2144(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-2144(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	cmpl	$32767, %esi            # imm = 0x7FFF
	jg	.LBB48_125
# BB#124:                               # %cond.true.1068
	movq	globals+1192, %rdi
	callq	SBYTES
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-224(%rbp), %rdi
	movl	%edx, -2148(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-2148(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	movw	%si, %cx
	movswl	%cx, %edx
	movl	%edx, -2152(%rbp)       # 4-byte Spill
	jmp	.LBB48_126
.LBB48_125:                             # %cond.false.1079
	movq	globals+1192, %rdi
	callq	SBYTES
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-224(%rbp), %rdi
	movl	%edx, -2156(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-2156(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	subl	$-32768, %esi           # imm = 0xFFFFFFFFFFFF8000
	movw	%si, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -2152(%rbp)       # 4-byte Spill
.LBB48_126:                             # %cond.end.1092
	movl	-2152(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -232(%rbp)
	testb	$1, %dl
	jne	.LBB48_335
	jmp	.LBB48_336
.LBB48_127:                             # %cond.false.1095
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -2168(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-2168(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB48_129
# BB#128:                               # %cond.true.1105
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -2176(%rbp)       # 8-byte Spill
	callq	SBYTES
	xorl	%ecx, %ecx
	movq	-2176(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$0, %rax
	xorq	$-1, %rax
	cmpq	$-1, %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %ecx
	movslq	%ecx, %rax
	movq	-224(%rbp), %rdi
	movq	%rax, -2184(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -2192(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-2192(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-2184(%rbp), %rdi       # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -2200(%rbp)       # 8-byte Spill
	jmp	.LBB48_130
.LBB48_129:                             # %cond.false.1130
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -2208(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-2208(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$0, %rax
	movq	%rax, -2200(%rbp)       # 8-byte Spill
.LBB48_130:                             # %cond.end.1138
	movq	-2200(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB48_140
# BB#131:                               # %cond.true.1142
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB48_136
# BB#132:                               # %cond.true.1147
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -2216(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -2224(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-2224(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB48_134
# BB#133:                               # %cond.true.1158
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -2232(%rbp)       # 8-byte Spill
	callq	SBYTES
	xorl	%ecx, %ecx
	movq	-2232(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$0, %rax
	xorq	$-1, %rax
	cmpq	$-1, %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %ecx
	movslq	%ecx, %rax
	movq	-224(%rbp), %rdi
	movq	%rax, -2240(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -2248(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-2248(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-2240(%rbp), %rdi       # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -2256(%rbp)       # 8-byte Spill
	jmp	.LBB48_135
.LBB48_134:                             # %cond.false.1183
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -2264(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-2264(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$0, %rax
	movq	%rax, -2256(%rbp)       # 8-byte Spill
.LBB48_135:                             # %cond.end.1191
	movq	-2256(%rbp), %rax       # 8-byte Reload
	movq	-224(%rbp), %rdi
	movq	%rax, -2272(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-2272(%rbp), %rdi       # 8-byte Reload
	subq	%rax, %rdi
	movq	-2216(%rbp), %rax       # 8-byte Reload
	cmpq	%rdi, %rax
	jl	.LBB48_148
	jmp	.LBB48_145
.LBB48_136:                             # %cond.false.1198
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -2280(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-2280(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB48_138
# BB#137:                               # %cond.true.1208
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -2288(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-2288(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -2296(%rbp)       # 8-byte Spill
	jmp	.LBB48_139
.LBB48_138:                             # %cond.false.1220
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -2304(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-2304(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	subq	$1, %rax
	movq	%rax, -2296(%rbp)       # 8-byte Spill
.LBB48_139:                             # %cond.end.1228
	movq	-2296(%rbp), %rax       # 8-byte Reload
	movq	-224(%rbp), %rdi
	movq	%rax, -2312(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-2312(%rbp), %rdi       # 8-byte Reload
	subq	%rax, %rdi
	movq	globals+1192, %rax
	movq	%rdi, -2320(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	SBYTES
	movq	-2320(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB48_148
	jmp	.LBB48_145
.LBB48_140:                             # %cond.false.1236
	movq	globals+1192, %rdi
	callq	SBYTES
	cmpq	$0, %rax
	jge	.LBB48_142
# BB#141:                               # %cond.true.1240
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	movq	globals+1192, %rdi
	movq	%rax, -2328(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -2336(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-2336(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movq	-2328(%rbp), %rax       # 8-byte Reload
	cmpq	%rdi, %rax
	jle	.LBB48_148
	jmp	.LBB48_145
.LBB48_142:                             # %cond.false.1249
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB48_144
# BB#143:                               # %cond.true.1254
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	globals+1192, %rdi
	movq	%rax, -2344(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -2352(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-2352(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movq	-2344(%rbp), %rax       # 8-byte Reload
	cmpq	%rdi, %rax
	jle	.LBB48_148
	jmp	.LBB48_145
.LBB48_144:                             # %cond.false.1262
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -2360(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-2360(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movq	-224(%rbp), %rax
	movq	%rdi, -2368(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	SBYTES
	addq	$2, %rax
	movq	-2368(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB48_148
.LBB48_145:                             # %lor.lhs.false.1271
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -2376(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-2376(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB48_147
# BB#146:                               # %land.lhs.true.1280
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -2384(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-2384(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	cmpq	$-32768, %rdi           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB48_148
.LBB48_147:                             # %lor.lhs.false.1287
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -2392(%rbp)       # 8-byte Spill
	callq	SBYTES
	movl	$32767, %ecx            # imm = 0x7FFF
	movl	%ecx, %edi
	addq	$2, %rax
	movq	-2392(%rbp), %rdx       # 8-byte Reload
	addq	%rax, %rdx
	cmpq	%rdx, %rdi
	jge	.LBB48_152
.LBB48_148:                             # %cond.true.1294
	movq	globals+1192, %rdi
	callq	SBYTES
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-224(%rbp), %rdi
	movl	%edx, -2396(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-2396(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	cmpl	$32767, %esi            # imm = 0x7FFF
	jg	.LBB48_150
# BB#149:                               # %cond.true.1305
	movq	globals+1192, %rdi
	callq	SBYTES
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-224(%rbp), %rdi
	movl	%edx, -2400(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-2400(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	movw	%si, %cx
	movswl	%cx, %edx
	movl	%edx, -2404(%rbp)       # 4-byte Spill
	jmp	.LBB48_151
.LBB48_150:                             # %cond.false.1316
	movq	globals+1192, %rdi
	callq	SBYTES
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-224(%rbp), %rdi
	movl	%edx, -2408(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-2408(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	subl	$-32768, %esi           # imm = 0xFFFFFFFFFFFF8000
	movw	%si, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -2404(%rbp)       # 4-byte Spill
.LBB48_151:                             # %cond.end.1329
	movl	-2404(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -232(%rbp)
	testb	$1, %cl
	jne	.LBB48_335
	jmp	.LBB48_336
.LBB48_152:                             # %cond.false.1332
	movq	globals+1192, %rdi
	callq	SBYTES
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-224(%rbp), %rdi
	movl	%edx, -2412(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-2412(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	cmpl	$32767, %esi            # imm = 0x7FFF
	jg	.LBB48_154
# BB#153:                               # %cond.true.1343
	movq	globals+1192, %rdi
	callq	SBYTES
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-224(%rbp), %rdi
	movl	%edx, -2416(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-2416(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	movw	%si, %cx
	movswl	%cx, %edx
	movl	%edx, -2420(%rbp)       # 4-byte Spill
	jmp	.LBB48_155
.LBB48_154:                             # %cond.false.1354
	movq	globals+1192, %rdi
	callq	SBYTES
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-224(%rbp), %rdi
	movl	%edx, -2424(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-2424(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	subl	$-32768, %esi           # imm = 0xFFFFFFFFFFFF8000
	movw	%si, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -2420(%rbp)       # 4-byte Spill
.LBB48_155:                             # %cond.end.1367
	movl	-2420(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -232(%rbp)
	testb	$1, %dl
	jne	.LBB48_335
	jmp	.LBB48_336
.LBB48_156:                             # %cond.false.1370
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB48_157
	jmp	.LBB48_216
.LBB48_157:                             # %cond.true.1371
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB48_158
	jmp	.LBB48_187
.LBB48_158:                             # %cond.true.1372
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	globals+1192, %rdi
	movl	%ecx, -2428(%rbp)       # 4-byte Spill
	callq	SBYTES
	movl	%eax, %ecx
	movl	-2428(%rbp), %edx       # 4-byte Reload
	addl	%ecx, %edx
	imull	$0, %edx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB48_160
# BB#159:                               # %cond.true.1384
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	globals+1192, %rdi
	movl	%ecx, -2432(%rbp)       # 4-byte Spill
	callq	SBYTES
	xorl	%ecx, %ecx
	movl	%eax, %edx
	movl	-2432(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	imull	$0, %esi, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	subl	%edx, %ecx
	movq	-224(%rbp), %rdi
	movl	%ecx, -2436(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	globals+1192, %rdi
	movl	%ecx, -2440(%rbp)       # 4-byte Spill
	callq	SBYTES
	movl	%eax, %ecx
	movl	-2440(%rbp), %edx       # 4-byte Reload
	addl	%ecx, %edx
	imull	$0, %edx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	-2436(%rbp), %edx       # 4-byte Reload
	subl	%ecx, %edx
	movl	%edx, -2444(%rbp)       # 4-byte Spill
	jmp	.LBB48_161
.LBB48_160:                             # %cond.false.1412
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	globals+1192, %rdi
	movl	%ecx, -2448(%rbp)       # 4-byte Spill
	callq	SBYTES
	movl	%eax, %ecx
	movl	-2448(%rbp), %edx       # 4-byte Reload
	addl	%ecx, %edx
	imull	$0, %edx, %ecx
	addl	$0, %ecx
	movl	%ecx, -2444(%rbp)       # 4-byte Spill
.LBB48_161:                             # %cond.end.1422
	movl	-2444(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB48_171
# BB#162:                               # %cond.true.1426
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB48_167
# BB#163:                               # %cond.true.1432
	movq	globals+1192, %rdi
	callq	SBYTES
	movl	%eax, %ecx
	movq	-224(%rbp), %rdi
	movl	%ecx, -2452(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	globals+1192, %rdi
	movl	%ecx, -2456(%rbp)       # 4-byte Spill
	callq	SBYTES
	movl	%eax, %ecx
	movl	-2456(%rbp), %edx       # 4-byte Reload
	addl	%ecx, %edx
	imull	$0, %edx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB48_165
# BB#164:                               # %cond.true.1446
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	globals+1192, %rdi
	movl	%ecx, -2460(%rbp)       # 4-byte Spill
	callq	SBYTES
	xorl	%ecx, %ecx
	movl	%eax, %edx
	movl	-2460(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	imull	$0, %esi, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	subl	%edx, %ecx
	movq	-224(%rbp), %rdi
	movl	%ecx, -2464(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	globals+1192, %rdi
	movl	%ecx, -2468(%rbp)       # 4-byte Spill
	callq	SBYTES
	movl	%eax, %ecx
	movl	-2468(%rbp), %edx       # 4-byte Reload
	addl	%ecx, %edx
	imull	$0, %edx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	-2464(%rbp), %edx       # 4-byte Reload
	subl	%ecx, %edx
	movl	%edx, -2472(%rbp)       # 4-byte Spill
	jmp	.LBB48_166
.LBB48_165:                             # %cond.false.1474
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	globals+1192, %rdi
	movl	%ecx, -2476(%rbp)       # 4-byte Spill
	callq	SBYTES
	movl	%eax, %ecx
	movl	-2476(%rbp), %edx       # 4-byte Reload
	addl	%ecx, %edx
	imull	$0, %edx, %ecx
	addl	$0, %ecx
	movl	%ecx, -2472(%rbp)       # 4-byte Spill
.LBB48_166:                             # %cond.end.1484
	movl	-2472(%rbp), %eax       # 4-byte Reload
	movq	-224(%rbp), %rdi
	movl	%eax, -2480(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movl	%eax, %ecx
	movl	-2480(%rbp), %edx       # 4-byte Reload
	subl	%ecx, %edx
	movl	-2452(%rbp), %ecx       # 4-byte Reload
	cmpl	%edx, %ecx
	jl	.LBB48_179
	jmp	.LBB48_176
.LBB48_167:                             # %cond.false.1492
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	globals+1192, %rdi
	movl	%ecx, -2484(%rbp)       # 4-byte Spill
	callq	SBYTES
	movl	%eax, %ecx
	movl	-2484(%rbp), %edx       # 4-byte Reload
	addl	%ecx, %edx
	imull	$0, %edx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB48_169
# BB#168:                               # %cond.true.1504
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	globals+1192, %rdi
	movl	%ecx, -2488(%rbp)       # 4-byte Spill
	callq	SBYTES
	movl	%eax, %ecx
	movl	-2488(%rbp), %edx       # 4-byte Reload
	addl	%ecx, %edx
	imull	$0, %edx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -2492(%rbp)       # 4-byte Spill
	jmp	.LBB48_170
.LBB48_169:                             # %cond.false.1518
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	globals+1192, %rdi
	movl	%ecx, -2496(%rbp)       # 4-byte Spill
	callq	SBYTES
	movl	%eax, %ecx
	movl	-2496(%rbp), %edx       # 4-byte Reload
	addl	%ecx, %edx
	imull	$0, %edx, %ecx
	subl	$1, %ecx
	movl	%ecx, -2492(%rbp)       # 4-byte Spill
.LBB48_170:                             # %cond.end.1528
	movl	-2492(%rbp), %eax       # 4-byte Reload
	movq	-224(%rbp), %rdi
	movl	%eax, -2500(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movl	%eax, %ecx
	movl	-2500(%rbp), %edx       # 4-byte Reload
	subl	%ecx, %edx
	movq	globals+1192, %rdi
	movl	%edx, -2504(%rbp)       # 4-byte Spill
	callq	SBYTES
	movl	%eax, %ecx
	movl	-2504(%rbp), %edx       # 4-byte Reload
	cmpl	%ecx, %edx
	jl	.LBB48_179
	jmp	.LBB48_176
.LBB48_171:                             # %cond.false.1538
	movq	globals+1192, %rdi
	callq	SBYTES
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB48_173
# BB#172:                               # %cond.true.1543
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	movl	%eax, %ecx
	movq	globals+1192, %rdi
	movl	%ecx, -2508(%rbp)       # 4-byte Spill
	callq	SBYTES
	movl	%eax, %ecx
	movq	-224(%rbp), %rdi
	movl	%ecx, -2512(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movl	%eax, %ecx
	movl	-2512(%rbp), %edx       # 4-byte Reload
	addl	%ecx, %edx
	movl	-2508(%rbp), %ecx       # 4-byte Reload
	cmpl	%edx, %ecx
	jle	.LBB48_179
	jmp	.LBB48_176
.LBB48_173:                             # %cond.false.1555
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB48_175
# BB#174:                               # %cond.true.1561
	movq	globals+1192, %rdi
	callq	SBYTES
	movl	%eax, %ecx
	movq	globals+1192, %rdi
	movl	%ecx, -2516(%rbp)       # 4-byte Spill
	callq	SBYTES
	movl	%eax, %ecx
	movq	-224(%rbp), %rdi
	movl	%ecx, -2520(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movl	%eax, %ecx
	movl	-2520(%rbp), %edx       # 4-byte Reload
	addl	%ecx, %edx
	movl	-2516(%rbp), %ecx       # 4-byte Reload
	cmpl	%edx, %ecx
	jle	.LBB48_179
	jmp	.LBB48_176
.LBB48_175:                             # %cond.false.1572
	movq	globals+1192, %rdi
	callq	SBYTES
	movl	%eax, %ecx
	movq	-224(%rbp), %rdi
	movl	%ecx, -2524(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movl	%eax, %ecx
	movl	-2524(%rbp), %edx       # 4-byte Reload
	addl	%ecx, %edx
	movq	-224(%rbp), %rdi
	movl	%edx, -2528(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movl	%eax, %ecx
	movl	-2528(%rbp), %edx       # 4-byte Reload
	cmpl	%ecx, %edx
	jl	.LBB48_179
.LBB48_176:                             # %lor.lhs.false.1584
	movq	globals+1192, %rdi
	callq	SBYTES
	movl	%eax, %ecx
	movq	-224(%rbp), %rdi
	movl	%ecx, -2532(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movl	%eax, %ecx
	movl	-2532(%rbp), %edx       # 4-byte Reload
	addl	%ecx, %edx
	imull	$0, %edx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB48_178
# BB#177:                               # %land.lhs.true.1595
	movq	globals+1192, %rdi
	callq	SBYTES
	movl	%eax, %ecx
	movq	-224(%rbp), %rdi
	movl	%ecx, -2536(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movl	%eax, %ecx
	movl	-2536(%rbp), %edx       # 4-byte Reload
	addl	%ecx, %edx
	cmpl	$-2147483648, %edx      # imm = 0xFFFFFFFF80000000
	jl	.LBB48_179
.LBB48_178:                             # %lor.lhs.false.1604
	movq	globals+1192, %rdi
	callq	SBYTES
	movl	%eax, %ecx
	movq	-224(%rbp), %rdi
	movl	%ecx, -2540(%rbp)       # 4-byte Spill
	callq	SBYTES
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	addq	$2, %rax
	movl	%eax, %edx
	movl	-2540(%rbp), %esi       # 4-byte Reload
	addl	%edx, %esi
	cmpl	%esi, %ecx
	jge	.LBB48_183
.LBB48_179:                             # %cond.true.1613
	movq	globals+1192, %rdi
	callq	SBYTES
	movl	%eax, %ecx
	movq	-224(%rbp), %rdi
	movl	%ecx, -2544(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movl	%eax, %ecx
	movl	-2544(%rbp), %edx       # 4-byte Reload
	addl	%ecx, %edx
	cmpl	$2147483647, %edx       # imm = 0x7FFFFFFF
	ja	.LBB48_181
# BB#180:                               # %cond.true.1622
	movq	globals+1192, %rdi
	callq	SBYTES
	movl	%eax, %ecx
	movq	-224(%rbp), %rdi
	movl	%ecx, -2548(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movl	%eax, %ecx
	movl	-2548(%rbp), %edx       # 4-byte Reload
	addl	%ecx, %edx
	movl	%edx, -2552(%rbp)       # 4-byte Spill
	jmp	.LBB48_182
.LBB48_181:                             # %cond.false.1629
	movq	globals+1192, %rdi
	callq	SBYTES
	movl	%eax, %ecx
	movq	-224(%rbp), %rdi
	movl	%ecx, -2556(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movl	%eax, %ecx
	movl	-2556(%rbp), %edx       # 4-byte Reload
	addl	%ecx, %edx
	subl	$-2147483648, %edx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %edx      # imm = 0xFFFFFFFF80000000
	movl	%edx, -2552(%rbp)       # 4-byte Spill
.LBB48_182:                             # %cond.end.1638
	movl	-2552(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -232(%rbp)
	testb	$1, %cl
	jne	.LBB48_335
	jmp	.LBB48_336
.LBB48_183:                             # %cond.false.1641
	movq	globals+1192, %rdi
	callq	SBYTES
	movl	%eax, %ecx
	movq	-224(%rbp), %rdi
	movl	%ecx, -2560(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movl	%eax, %ecx
	movl	-2560(%rbp), %edx       # 4-byte Reload
	addl	%ecx, %edx
	cmpl	$2147483647, %edx       # imm = 0x7FFFFFFF
	ja	.LBB48_185
# BB#184:                               # %cond.true.1650
	movq	globals+1192, %rdi
	callq	SBYTES
	movl	%eax, %ecx
	movq	-224(%rbp), %rdi
	movl	%ecx, -2564(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movl	%eax, %ecx
	movl	-2564(%rbp), %edx       # 4-byte Reload
	addl	%ecx, %edx
	movl	%edx, -2568(%rbp)       # 4-byte Spill
	jmp	.LBB48_186
.LBB48_185:                             # %cond.false.1657
	movq	globals+1192, %rdi
	callq	SBYTES
	movl	%eax, %ecx
	movq	-224(%rbp), %rdi
	movl	%ecx, -2572(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movl	%eax, %ecx
	movl	-2572(%rbp), %edx       # 4-byte Reload
	addl	%ecx, %edx
	subl	$-2147483648, %edx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %edx      # imm = 0xFFFFFFFF80000000
	movl	%edx, -2568(%rbp)       # 4-byte Spill
.LBB48_186:                             # %cond.end.1666
	movl	-2568(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -232(%rbp)
	testb	$1, %dl
	jne	.LBB48_335
	jmp	.LBB48_336
.LBB48_187:                             # %cond.false.1669
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -2584(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-2584(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB48_189
# BB#188:                               # %cond.true.1679
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -2592(%rbp)       # 8-byte Spill
	callq	SBYTES
	xorl	%ecx, %ecx
	movq	-2592(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$0, %rax
	xorq	$-1, %rax
	cmpq	$-1, %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %ecx
	movslq	%ecx, %rax
	movq	-224(%rbp), %rdi
	movq	%rax, -2600(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -2608(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-2608(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-2600(%rbp), %rdi       # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -2616(%rbp)       # 8-byte Spill
	jmp	.LBB48_190
.LBB48_189:                             # %cond.false.1704
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -2624(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-2624(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$0, %rax
	movq	%rax, -2616(%rbp)       # 8-byte Spill
.LBB48_190:                             # %cond.end.1712
	movq	-2616(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB48_200
# BB#191:                               # %cond.true.1716
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB48_196
# BB#192:                               # %cond.true.1721
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -2632(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -2640(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-2640(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB48_194
# BB#193:                               # %cond.true.1732
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -2648(%rbp)       # 8-byte Spill
	callq	SBYTES
	xorl	%ecx, %ecx
	movq	-2648(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$0, %rax
	xorq	$-1, %rax
	cmpq	$-1, %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %ecx
	movslq	%ecx, %rax
	movq	-224(%rbp), %rdi
	movq	%rax, -2656(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -2664(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-2664(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-2656(%rbp), %rdi       # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -2672(%rbp)       # 8-byte Spill
	jmp	.LBB48_195
.LBB48_194:                             # %cond.false.1757
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -2680(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-2680(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$0, %rax
	movq	%rax, -2672(%rbp)       # 8-byte Spill
.LBB48_195:                             # %cond.end.1765
	movq	-2672(%rbp), %rax       # 8-byte Reload
	movq	-224(%rbp), %rdi
	movq	%rax, -2688(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-2688(%rbp), %rdi       # 8-byte Reload
	subq	%rax, %rdi
	movq	-2632(%rbp), %rax       # 8-byte Reload
	cmpq	%rdi, %rax
	jl	.LBB48_208
	jmp	.LBB48_205
.LBB48_196:                             # %cond.false.1772
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -2696(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-2696(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB48_198
# BB#197:                               # %cond.true.1782
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -2704(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-2704(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -2712(%rbp)       # 8-byte Spill
	jmp	.LBB48_199
.LBB48_198:                             # %cond.false.1794
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -2720(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-2720(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	subq	$1, %rax
	movq	%rax, -2712(%rbp)       # 8-byte Spill
.LBB48_199:                             # %cond.end.1802
	movq	-2712(%rbp), %rax       # 8-byte Reload
	movq	-224(%rbp), %rdi
	movq	%rax, -2728(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-2728(%rbp), %rdi       # 8-byte Reload
	subq	%rax, %rdi
	movq	globals+1192, %rax
	movq	%rdi, -2736(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	SBYTES
	movq	-2736(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB48_208
	jmp	.LBB48_205
.LBB48_200:                             # %cond.false.1810
	movq	globals+1192, %rdi
	callq	SBYTES
	cmpq	$0, %rax
	jge	.LBB48_202
# BB#201:                               # %cond.true.1814
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	movq	globals+1192, %rdi
	movq	%rax, -2744(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -2752(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-2752(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movq	-2744(%rbp), %rax       # 8-byte Reload
	cmpq	%rdi, %rax
	jle	.LBB48_208
	jmp	.LBB48_205
.LBB48_202:                             # %cond.false.1823
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB48_204
# BB#203:                               # %cond.true.1828
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	globals+1192, %rdi
	movq	%rax, -2760(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -2768(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-2768(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movq	-2760(%rbp), %rax       # 8-byte Reload
	cmpq	%rdi, %rax
	jle	.LBB48_208
	jmp	.LBB48_205
.LBB48_204:                             # %cond.false.1836
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -2776(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-2776(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movq	-224(%rbp), %rax
	movq	%rdi, -2784(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	SBYTES
	addq	$2, %rax
	movq	-2784(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB48_208
.LBB48_205:                             # %lor.lhs.false.1845
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -2792(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-2792(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB48_207
# BB#206:                               # %land.lhs.true.1854
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -2800(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-2800(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	cmpq	$-2147483648, %rdi      # imm = 0xFFFFFFFF80000000
	jl	.LBB48_208
.LBB48_207:                             # %lor.lhs.false.1861
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -2808(%rbp)       # 8-byte Spill
	callq	SBYTES
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movl	%ecx, %edi
	addq	$2, %rax
	movq	-2808(%rbp), %rdx       # 8-byte Reload
	addq	%rax, %rdx
	cmpq	%rdx, %rdi
	jge	.LBB48_212
.LBB48_208:                             # %cond.true.1868
	movq	globals+1192, %rdi
	callq	SBYTES
	movl	%eax, %ecx
	movq	-224(%rbp), %rdi
	movl	%ecx, -2812(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movl	%eax, %ecx
	movl	-2812(%rbp), %edx       # 4-byte Reload
	addl	%ecx, %edx
	cmpl	$2147483647, %edx       # imm = 0x7FFFFFFF
	ja	.LBB48_210
# BB#209:                               # %cond.true.1877
	movq	globals+1192, %rdi
	callq	SBYTES
	movl	%eax, %ecx
	movq	-224(%rbp), %rdi
	movl	%ecx, -2816(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movl	%eax, %ecx
	movl	-2816(%rbp), %edx       # 4-byte Reload
	addl	%ecx, %edx
	movl	%edx, -2820(%rbp)       # 4-byte Spill
	jmp	.LBB48_211
.LBB48_210:                             # %cond.false.1884
	movq	globals+1192, %rdi
	callq	SBYTES
	movl	%eax, %ecx
	movq	-224(%rbp), %rdi
	movl	%ecx, -2824(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movl	%eax, %ecx
	movl	-2824(%rbp), %edx       # 4-byte Reload
	addl	%ecx, %edx
	subl	$-2147483648, %edx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %edx      # imm = 0xFFFFFFFF80000000
	movl	%edx, -2820(%rbp)       # 4-byte Spill
.LBB48_211:                             # %cond.end.1893
	movl	-2820(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -232(%rbp)
	testb	$1, %cl
	jne	.LBB48_335
	jmp	.LBB48_336
.LBB48_212:                             # %cond.false.1896
	movq	globals+1192, %rdi
	callq	SBYTES
	movl	%eax, %ecx
	movq	-224(%rbp), %rdi
	movl	%ecx, -2828(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movl	%eax, %ecx
	movl	-2828(%rbp), %edx       # 4-byte Reload
	addl	%ecx, %edx
	cmpl	$2147483647, %edx       # imm = 0x7FFFFFFF
	ja	.LBB48_214
# BB#213:                               # %cond.true.1905
	movq	globals+1192, %rdi
	callq	SBYTES
	movl	%eax, %ecx
	movq	-224(%rbp), %rdi
	movl	%ecx, -2832(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movl	%eax, %ecx
	movl	-2832(%rbp), %edx       # 4-byte Reload
	addl	%ecx, %edx
	movl	%edx, -2836(%rbp)       # 4-byte Spill
	jmp	.LBB48_215
.LBB48_214:                             # %cond.false.1912
	movq	globals+1192, %rdi
	callq	SBYTES
	movl	%eax, %ecx
	movq	-224(%rbp), %rdi
	movl	%ecx, -2840(%rbp)       # 4-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movl	%eax, %ecx
	movl	-2840(%rbp), %edx       # 4-byte Reload
	addl	%ecx, %edx
	subl	$-2147483648, %edx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %edx      # imm = 0xFFFFFFFF80000000
	movl	%edx, -2836(%rbp)       # 4-byte Spill
.LBB48_215:                             # %cond.end.1921
	movl	-2836(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -232(%rbp)
	testb	$1, %dl
	jne	.LBB48_335
	jmp	.LBB48_336
.LBB48_216:                             # %cond.false.1924
	movb	$1, %al
	testb	$1, %al
	jne	.LBB48_217
	jmp	.LBB48_276
.LBB48_217:                             # %cond.true.1925
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB48_218
	jmp	.LBB48_247
.LBB48_218:                             # %cond.true.1926
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -2848(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-2848(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB48_220
# BB#219:                               # %cond.true.1936
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -2856(%rbp)       # 8-byte Spill
	callq	SBYTES
	xorl	%ecx, %ecx
	movq	-2856(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$0, %rax
	xorq	$-1, %rax
	cmpq	$-1, %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %ecx
	movslq	%ecx, %rax
	movq	-224(%rbp), %rdi
	movq	%rax, -2864(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -2872(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-2872(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-2864(%rbp), %rdi       # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -2880(%rbp)       # 8-byte Spill
	jmp	.LBB48_221
.LBB48_220:                             # %cond.false.1961
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -2888(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-2888(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$0, %rax
	movq	%rax, -2880(%rbp)       # 8-byte Spill
.LBB48_221:                             # %cond.end.1969
	movq	-2880(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB48_231
# BB#222:                               # %cond.true.1973
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB48_227
# BB#223:                               # %cond.true.1978
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -2896(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -2904(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-2904(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB48_225
# BB#224:                               # %cond.true.1989
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -2912(%rbp)       # 8-byte Spill
	callq	SBYTES
	xorl	%ecx, %ecx
	movq	-2912(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$0, %rax
	xorq	$-1, %rax
	cmpq	$-1, %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %ecx
	movslq	%ecx, %rax
	movq	-224(%rbp), %rdi
	movq	%rax, -2920(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -2928(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-2928(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-2920(%rbp), %rdi       # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -2936(%rbp)       # 8-byte Spill
	jmp	.LBB48_226
.LBB48_225:                             # %cond.false.2014
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -2944(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-2944(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$0, %rax
	movq	%rax, -2936(%rbp)       # 8-byte Spill
.LBB48_226:                             # %cond.end.2022
	movq	-2936(%rbp), %rax       # 8-byte Reload
	movq	-224(%rbp), %rdi
	movq	%rax, -2952(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-2952(%rbp), %rdi       # 8-byte Reload
	subq	%rax, %rdi
	movq	-2896(%rbp), %rax       # 8-byte Reload
	cmpq	%rdi, %rax
	jl	.LBB48_239
	jmp	.LBB48_236
.LBB48_227:                             # %cond.false.2029
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -2960(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-2960(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB48_229
# BB#228:                               # %cond.true.2039
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -2968(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-2968(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -2976(%rbp)       # 8-byte Spill
	jmp	.LBB48_230
.LBB48_229:                             # %cond.false.2051
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -2984(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-2984(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	subq	$1, %rax
	movq	%rax, -2976(%rbp)       # 8-byte Spill
.LBB48_230:                             # %cond.end.2059
	movq	-2976(%rbp), %rax       # 8-byte Reload
	movq	-224(%rbp), %rdi
	movq	%rax, -2992(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-2992(%rbp), %rdi       # 8-byte Reload
	subq	%rax, %rdi
	movq	globals+1192, %rax
	movq	%rdi, -3000(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	SBYTES
	movq	-3000(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB48_239
	jmp	.LBB48_236
.LBB48_231:                             # %cond.false.2067
	movq	globals+1192, %rdi
	callq	SBYTES
	cmpq	$0, %rax
	jge	.LBB48_233
# BB#232:                               # %cond.true.2071
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	movq	globals+1192, %rdi
	movq	%rax, -3008(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3016(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-3016(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movq	-3008(%rbp), %rax       # 8-byte Reload
	cmpq	%rdi, %rax
	jle	.LBB48_239
	jmp	.LBB48_236
.LBB48_233:                             # %cond.false.2080
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB48_235
# BB#234:                               # %cond.true.2085
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	globals+1192, %rdi
	movq	%rax, -3024(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3032(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-3032(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movq	-3024(%rbp), %rax       # 8-byte Reload
	cmpq	%rdi, %rax
	jle	.LBB48_239
	jmp	.LBB48_236
.LBB48_235:                             # %cond.false.2093
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3040(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-3040(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movq	-224(%rbp), %rax
	movq	%rdi, -3048(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	SBYTES
	addq	$2, %rax
	movq	-3048(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB48_239
.LBB48_236:                             # %lor.lhs.false.2102
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3056(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-3056(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB48_238
# BB#237:                               # %land.lhs.true.2111
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3064(%rbp)       # 8-byte Spill
	callq	SBYTES
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	addq	$2, %rax
	movq	-3064(%rbp), %rcx       # 8-byte Reload
	addq	%rax, %rcx
	cmpq	%rdi, %rcx
	jl	.LBB48_239
.LBB48_238:                             # %lor.lhs.false.2118
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3072(%rbp)       # 8-byte Spill
	callq	SBYTES
	movabsq	$9223372036854775807, %rdi # imm = 0x7FFFFFFFFFFFFFFF
	addq	$2, %rax
	movq	-3072(%rbp), %rcx       # 8-byte Reload
	addq	%rax, %rcx
	cmpq	%rcx, %rdi
	jge	.LBB48_243
.LBB48_239:                             # %cond.true.2125
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3080(%rbp)       # 8-byte Spill
	callq	SBYTES
	movabsq	$9223372036854775807, %rdi # imm = 0x7FFFFFFFFFFFFFFF
	addq	$2, %rax
	movq	-3080(%rbp), %rcx       # 8-byte Reload
	addq	%rax, %rcx
	cmpq	%rdi, %rcx
	ja	.LBB48_241
# BB#240:                               # %cond.true.2132
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3088(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-3088(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -3096(%rbp)       # 8-byte Spill
	jmp	.LBB48_242
.LBB48_241:                             # %cond.false.2137
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3104(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-3104(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	subq	%rax, %rdi
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	addq	%rax, %rdi
	movq	%rdi, -3096(%rbp)       # 8-byte Spill
.LBB48_242:                             # %cond.end.2144
	movq	-3096(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -232(%rbp)
	testb	$1, %cl
	jne	.LBB48_335
	jmp	.LBB48_336
.LBB48_243:                             # %cond.false.2146
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3112(%rbp)       # 8-byte Spill
	callq	SBYTES
	movabsq	$9223372036854775807, %rdi # imm = 0x7FFFFFFFFFFFFFFF
	addq	$2, %rax
	movq	-3112(%rbp), %rcx       # 8-byte Reload
	addq	%rax, %rcx
	cmpq	%rdi, %rcx
	ja	.LBB48_245
# BB#244:                               # %cond.true.2153
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3120(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-3120(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -3128(%rbp)       # 8-byte Spill
	jmp	.LBB48_246
.LBB48_245:                             # %cond.false.2158
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3136(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-3136(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	subq	%rax, %rdi
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	addq	%rax, %rdi
	movq	%rdi, -3128(%rbp)       # 8-byte Spill
.LBB48_246:                             # %cond.end.2165
	movq	-3128(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -232(%rbp)
	testb	$1, %dl
	jne	.LBB48_335
	jmp	.LBB48_336
.LBB48_247:                             # %cond.false.2167
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -3144(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-3144(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB48_249
# BB#248:                               # %cond.true.2177
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -3152(%rbp)       # 8-byte Spill
	callq	SBYTES
	xorl	%ecx, %ecx
	movq	-3152(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$0, %rax
	xorq	$-1, %rax
	cmpq	$-1, %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %ecx
	movslq	%ecx, %rax
	movq	-224(%rbp), %rdi
	movq	%rax, -3160(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -3168(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-3168(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-3160(%rbp), %rdi       # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -3176(%rbp)       # 8-byte Spill
	jmp	.LBB48_250
.LBB48_249:                             # %cond.false.2202
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -3184(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-3184(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$0, %rax
	movq	%rax, -3176(%rbp)       # 8-byte Spill
.LBB48_250:                             # %cond.end.2210
	movq	-3176(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB48_260
# BB#251:                               # %cond.true.2214
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB48_256
# BB#252:                               # %cond.true.2219
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3192(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -3200(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-3200(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB48_254
# BB#253:                               # %cond.true.2230
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -3208(%rbp)       # 8-byte Spill
	callq	SBYTES
	xorl	%ecx, %ecx
	movq	-3208(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$0, %rax
	xorq	$-1, %rax
	cmpq	$-1, %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %ecx
	movslq	%ecx, %rax
	movq	-224(%rbp), %rdi
	movq	%rax, -3216(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -3224(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-3224(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-3216(%rbp), %rdi       # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -3232(%rbp)       # 8-byte Spill
	jmp	.LBB48_255
.LBB48_254:                             # %cond.false.2255
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -3240(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-3240(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$0, %rax
	movq	%rax, -3232(%rbp)       # 8-byte Spill
.LBB48_255:                             # %cond.end.2263
	movq	-3232(%rbp), %rax       # 8-byte Reload
	movq	-224(%rbp), %rdi
	movq	%rax, -3248(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-3248(%rbp), %rdi       # 8-byte Reload
	subq	%rax, %rdi
	movq	-3192(%rbp), %rax       # 8-byte Reload
	cmpq	%rdi, %rax
	jl	.LBB48_268
	jmp	.LBB48_265
.LBB48_256:                             # %cond.false.2270
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -3256(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-3256(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB48_258
# BB#257:                               # %cond.true.2280
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -3264(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-3264(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -3272(%rbp)       # 8-byte Spill
	jmp	.LBB48_259
.LBB48_258:                             # %cond.false.2292
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -3280(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-3280(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	subq	$1, %rax
	movq	%rax, -3272(%rbp)       # 8-byte Spill
.LBB48_259:                             # %cond.end.2300
	movq	-3272(%rbp), %rax       # 8-byte Reload
	movq	-224(%rbp), %rdi
	movq	%rax, -3288(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-3288(%rbp), %rdi       # 8-byte Reload
	subq	%rax, %rdi
	movq	globals+1192, %rax
	movq	%rdi, -3296(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	SBYTES
	movq	-3296(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB48_268
	jmp	.LBB48_265
.LBB48_260:                             # %cond.false.2308
	movq	globals+1192, %rdi
	callq	SBYTES
	cmpq	$0, %rax
	jge	.LBB48_262
# BB#261:                               # %cond.true.2312
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	movq	globals+1192, %rdi
	movq	%rax, -3304(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3312(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-3312(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movq	-3304(%rbp), %rax       # 8-byte Reload
	cmpq	%rdi, %rax
	jle	.LBB48_268
	jmp	.LBB48_265
.LBB48_262:                             # %cond.false.2321
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB48_264
# BB#263:                               # %cond.true.2326
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	globals+1192, %rdi
	movq	%rax, -3320(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3328(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-3328(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movq	-3320(%rbp), %rax       # 8-byte Reload
	cmpq	%rdi, %rax
	jle	.LBB48_268
	jmp	.LBB48_265
.LBB48_264:                             # %cond.false.2334
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3336(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-3336(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movq	-224(%rbp), %rax
	movq	%rdi, -3344(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	SBYTES
	addq	$2, %rax
	movq	-3344(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB48_268
.LBB48_265:                             # %lor.lhs.false.2343
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3352(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-3352(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB48_267
# BB#266:                               # %land.lhs.true.2352
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3360(%rbp)       # 8-byte Spill
	callq	SBYTES
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	addq	$2, %rax
	movq	-3360(%rbp), %rcx       # 8-byte Reload
	addq	%rax, %rcx
	cmpq	%rdi, %rcx
	jl	.LBB48_268
.LBB48_267:                             # %lor.lhs.false.2359
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3368(%rbp)       # 8-byte Spill
	callq	SBYTES
	movabsq	$9223372036854775807, %rdi # imm = 0x7FFFFFFFFFFFFFFF
	addq	$2, %rax
	movq	-3368(%rbp), %rcx       # 8-byte Reload
	addq	%rax, %rcx
	cmpq	%rcx, %rdi
	jge	.LBB48_272
.LBB48_268:                             # %cond.true.2366
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3376(%rbp)       # 8-byte Spill
	callq	SBYTES
	movabsq	$9223372036854775807, %rdi # imm = 0x7FFFFFFFFFFFFFFF
	addq	$2, %rax
	movq	-3376(%rbp), %rcx       # 8-byte Reload
	addq	%rax, %rcx
	cmpq	%rdi, %rcx
	ja	.LBB48_270
# BB#269:                               # %cond.true.2373
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3384(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-3384(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -3392(%rbp)       # 8-byte Spill
	jmp	.LBB48_271
.LBB48_270:                             # %cond.false.2378
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3400(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-3400(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	subq	%rax, %rdi
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	addq	%rax, %rdi
	movq	%rdi, -3392(%rbp)       # 8-byte Spill
.LBB48_271:                             # %cond.end.2385
	movq	-3392(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -232(%rbp)
	testb	$1, %cl
	jne	.LBB48_335
	jmp	.LBB48_336
.LBB48_272:                             # %cond.false.2387
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3408(%rbp)       # 8-byte Spill
	callq	SBYTES
	movabsq	$9223372036854775807, %rdi # imm = 0x7FFFFFFFFFFFFFFF
	addq	$2, %rax
	movq	-3408(%rbp), %rcx       # 8-byte Reload
	addq	%rax, %rcx
	cmpq	%rdi, %rcx
	ja	.LBB48_274
# BB#273:                               # %cond.true.2394
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3416(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-3416(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -3424(%rbp)       # 8-byte Spill
	jmp	.LBB48_275
.LBB48_274:                             # %cond.false.2399
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3432(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-3432(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	subq	%rax, %rdi
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	addq	%rax, %rdi
	movq	%rdi, -3424(%rbp)       # 8-byte Spill
.LBB48_275:                             # %cond.end.2406
	movq	-3424(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -232(%rbp)
	testb	$1, %dl
	jne	.LBB48_335
	jmp	.LBB48_336
.LBB48_276:                             # %cond.false.2408
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB48_277
	jmp	.LBB48_306
.LBB48_277:                             # %cond.true.2409
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -3440(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-3440(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB48_279
# BB#278:                               # %cond.true.2419
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -3448(%rbp)       # 8-byte Spill
	callq	SBYTES
	xorl	%ecx, %ecx
	movq	-3448(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$0, %rax
	xorq	$-1, %rax
	cmpq	$-1, %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %ecx
	movslq	%ecx, %rax
	movq	-224(%rbp), %rdi
	movq	%rax, -3456(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -3464(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-3464(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-3456(%rbp), %rdi       # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -3472(%rbp)       # 8-byte Spill
	jmp	.LBB48_280
.LBB48_279:                             # %cond.false.2444
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -3480(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-3480(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$0, %rax
	movq	%rax, -3472(%rbp)       # 8-byte Spill
.LBB48_280:                             # %cond.end.2452
	movq	-3472(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB48_290
# BB#281:                               # %cond.true.2456
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB48_286
# BB#282:                               # %cond.true.2461
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3488(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -3496(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-3496(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB48_284
# BB#283:                               # %cond.true.2472
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -3504(%rbp)       # 8-byte Spill
	callq	SBYTES
	xorl	%ecx, %ecx
	movq	-3504(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$0, %rax
	xorq	$-1, %rax
	cmpq	$-1, %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %ecx
	movslq	%ecx, %rax
	movq	-224(%rbp), %rdi
	movq	%rax, -3512(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -3520(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-3520(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-3512(%rbp), %rdi       # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -3528(%rbp)       # 8-byte Spill
	jmp	.LBB48_285
.LBB48_284:                             # %cond.false.2497
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -3536(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-3536(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$0, %rax
	movq	%rax, -3528(%rbp)       # 8-byte Spill
.LBB48_285:                             # %cond.end.2505
	movq	-3528(%rbp), %rax       # 8-byte Reload
	movq	-224(%rbp), %rdi
	movq	%rax, -3544(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-3544(%rbp), %rdi       # 8-byte Reload
	subq	%rax, %rdi
	movq	-3488(%rbp), %rax       # 8-byte Reload
	cmpq	%rdi, %rax
	jl	.LBB48_298
	jmp	.LBB48_295
.LBB48_286:                             # %cond.false.2512
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -3552(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-3552(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB48_288
# BB#287:                               # %cond.true.2522
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -3560(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-3560(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -3568(%rbp)       # 8-byte Spill
	jmp	.LBB48_289
.LBB48_288:                             # %cond.false.2534
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -3576(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-3576(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	subq	$1, %rax
	movq	%rax, -3568(%rbp)       # 8-byte Spill
.LBB48_289:                             # %cond.end.2542
	movq	-3568(%rbp), %rax       # 8-byte Reload
	movq	-224(%rbp), %rdi
	movq	%rax, -3584(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-3584(%rbp), %rdi       # 8-byte Reload
	subq	%rax, %rdi
	movq	globals+1192, %rax
	movq	%rdi, -3592(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	SBYTES
	movq	-3592(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB48_298
	jmp	.LBB48_295
.LBB48_290:                             # %cond.false.2550
	movq	globals+1192, %rdi
	callq	SBYTES
	cmpq	$0, %rax
	jge	.LBB48_292
# BB#291:                               # %cond.true.2554
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	movq	globals+1192, %rdi
	movq	%rax, -3600(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3608(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-3608(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movq	-3600(%rbp), %rax       # 8-byte Reload
	cmpq	%rdi, %rax
	jle	.LBB48_298
	jmp	.LBB48_295
.LBB48_292:                             # %cond.false.2563
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB48_294
# BB#293:                               # %cond.true.2568
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	globals+1192, %rdi
	movq	%rax, -3616(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3624(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-3624(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movq	-3616(%rbp), %rax       # 8-byte Reload
	cmpq	%rdi, %rax
	jle	.LBB48_298
	jmp	.LBB48_295
.LBB48_294:                             # %cond.false.2576
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3632(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-3632(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movq	-224(%rbp), %rax
	movq	%rdi, -3640(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	SBYTES
	addq	$2, %rax
	movq	-3640(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB48_298
.LBB48_295:                             # %lor.lhs.false.2585
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3648(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-3648(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB48_297
# BB#296:                               # %land.lhs.true.2594
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3656(%rbp)       # 8-byte Spill
	callq	SBYTES
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	addq	$2, %rax
	movq	-3656(%rbp), %rcx       # 8-byte Reload
	addq	%rax, %rcx
	cmpq	%rdi, %rcx
	jl	.LBB48_298
.LBB48_297:                             # %lor.lhs.false.2601
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3664(%rbp)       # 8-byte Spill
	callq	SBYTES
	movabsq	$9223372036854775807, %rdi # imm = 0x7FFFFFFFFFFFFFFF
	addq	$2, %rax
	movq	-3664(%rbp), %rcx       # 8-byte Reload
	addq	%rax, %rcx
	cmpq	%rcx, %rdi
	jge	.LBB48_302
.LBB48_298:                             # %cond.true.2608
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3672(%rbp)       # 8-byte Spill
	callq	SBYTES
	movabsq	$9223372036854775807, %rdi # imm = 0x7FFFFFFFFFFFFFFF
	addq	$2, %rax
	movq	-3672(%rbp), %rcx       # 8-byte Reload
	addq	%rax, %rcx
	cmpq	%rdi, %rcx
	ja	.LBB48_300
# BB#299:                               # %cond.true.2615
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3680(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-3680(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -3688(%rbp)       # 8-byte Spill
	jmp	.LBB48_301
.LBB48_300:                             # %cond.false.2620
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3696(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-3696(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	subq	%rax, %rdi
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	addq	%rax, %rdi
	movq	%rdi, -3688(%rbp)       # 8-byte Spill
.LBB48_301:                             # %cond.end.2627
	movq	-3688(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -232(%rbp)
	testb	$1, %cl
	jne	.LBB48_335
	jmp	.LBB48_336
.LBB48_302:                             # %cond.false.2629
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3704(%rbp)       # 8-byte Spill
	callq	SBYTES
	movabsq	$9223372036854775807, %rdi # imm = 0x7FFFFFFFFFFFFFFF
	addq	$2, %rax
	movq	-3704(%rbp), %rcx       # 8-byte Reload
	addq	%rax, %rcx
	cmpq	%rdi, %rcx
	ja	.LBB48_304
# BB#303:                               # %cond.true.2636
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3712(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-3712(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -3720(%rbp)       # 8-byte Spill
	jmp	.LBB48_305
.LBB48_304:                             # %cond.false.2641
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3728(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-3728(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	subq	%rax, %rdi
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	addq	%rax, %rdi
	movq	%rdi, -3720(%rbp)       # 8-byte Spill
.LBB48_305:                             # %cond.end.2648
	movq	-3720(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -232(%rbp)
	testb	$1, %dl
	jne	.LBB48_335
	jmp	.LBB48_336
.LBB48_306:                             # %cond.false.2650
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -3736(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-3736(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB48_308
# BB#307:                               # %cond.true.2660
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -3744(%rbp)       # 8-byte Spill
	callq	SBYTES
	xorl	%ecx, %ecx
	movq	-3744(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$0, %rax
	xorq	$-1, %rax
	cmpq	$-1, %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %ecx
	movslq	%ecx, %rax
	movq	-224(%rbp), %rdi
	movq	%rax, -3752(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -3760(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-3760(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-3752(%rbp), %rdi       # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -3768(%rbp)       # 8-byte Spill
	jmp	.LBB48_309
.LBB48_308:                             # %cond.false.2685
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -3776(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-3776(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$0, %rax
	movq	%rax, -3768(%rbp)       # 8-byte Spill
.LBB48_309:                             # %cond.end.2693
	movq	-3768(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB48_319
# BB#310:                               # %cond.true.2697
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB48_315
# BB#311:                               # %cond.true.2702
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3784(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -3792(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-3792(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB48_313
# BB#312:                               # %cond.true.2713
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -3800(%rbp)       # 8-byte Spill
	callq	SBYTES
	xorl	%ecx, %ecx
	movq	-3800(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$0, %rax
	xorq	$-1, %rax
	cmpq	$-1, %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %ecx
	movslq	%ecx, %rax
	movq	-224(%rbp), %rdi
	movq	%rax, -3808(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -3816(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-3816(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-3808(%rbp), %rdi       # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -3824(%rbp)       # 8-byte Spill
	jmp	.LBB48_314
.LBB48_313:                             # %cond.false.2738
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -3832(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-3832(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$0, %rax
	movq	%rax, -3824(%rbp)       # 8-byte Spill
.LBB48_314:                             # %cond.end.2746
	movq	-3824(%rbp), %rax       # 8-byte Reload
	movq	-224(%rbp), %rdi
	movq	%rax, -3840(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-3840(%rbp), %rdi       # 8-byte Reload
	subq	%rax, %rdi
	movq	-3784(%rbp), %rax       # 8-byte Reload
	cmpq	%rdi, %rax
	jl	.LBB48_327
	jmp	.LBB48_324
.LBB48_315:                             # %cond.false.2753
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -3848(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-3848(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB48_317
# BB#316:                               # %cond.true.2763
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -3856(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-3856(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -3864(%rbp)       # 8-byte Spill
	jmp	.LBB48_318
.LBB48_317:                             # %cond.false.2775
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	imulq	$0, %rax, %rax
	movq	globals+1192, %rdi
	movq	%rax, -3872(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-3872(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	subq	$1, %rax
	movq	%rax, -3864(%rbp)       # 8-byte Spill
.LBB48_318:                             # %cond.end.2783
	movq	-3864(%rbp), %rax       # 8-byte Reload
	movq	-224(%rbp), %rdi
	movq	%rax, -3880(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-3880(%rbp), %rdi       # 8-byte Reload
	subq	%rax, %rdi
	movq	globals+1192, %rax
	movq	%rdi, -3888(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	SBYTES
	movq	-3888(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB48_327
	jmp	.LBB48_324
.LBB48_319:                             # %cond.false.2791
	movq	globals+1192, %rdi
	callq	SBYTES
	cmpq	$0, %rax
	jge	.LBB48_321
# BB#320:                               # %cond.true.2795
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	movq	globals+1192, %rdi
	movq	%rax, -3896(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3904(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-3904(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movq	-3896(%rbp), %rax       # 8-byte Reload
	cmpq	%rdi, %rax
	jle	.LBB48_327
	jmp	.LBB48_324
.LBB48_321:                             # %cond.false.2804
	movq	-224(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB48_323
# BB#322:                               # %cond.true.2809
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	globals+1192, %rdi
	movq	%rax, -3912(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3920(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-3920(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movq	-3912(%rbp), %rax       # 8-byte Reload
	cmpq	%rdi, %rax
	jle	.LBB48_327
	jmp	.LBB48_324
.LBB48_323:                             # %cond.false.2817
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3928(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-3928(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movq	-224(%rbp), %rax
	movq	%rdi, -3936(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	SBYTES
	addq	$2, %rax
	movq	-3936(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB48_327
.LBB48_324:                             # %lor.lhs.false.2826
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3944(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-3944(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	imulq	$0, %rdi, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB48_326
# BB#325:                               # %land.lhs.true.2835
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3952(%rbp)       # 8-byte Spill
	callq	SBYTES
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	addq	$2, %rax
	movq	-3952(%rbp), %rcx       # 8-byte Reload
	addq	%rax, %rcx
	cmpq	%rdi, %rcx
	jl	.LBB48_327
.LBB48_326:                             # %lor.lhs.false.2842
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3960(%rbp)       # 8-byte Spill
	callq	SBYTES
	movabsq	$9223372036854775807, %rdi # imm = 0x7FFFFFFFFFFFFFFF
	addq	$2, %rax
	movq	-3960(%rbp), %rcx       # 8-byte Reload
	addq	%rax, %rcx
	cmpq	%rcx, %rdi
	jge	.LBB48_331
.LBB48_327:                             # %cond.true.2849
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3968(%rbp)       # 8-byte Spill
	callq	SBYTES
	movabsq	$9223372036854775807, %rdi # imm = 0x7FFFFFFFFFFFFFFF
	addq	$2, %rax
	movq	-3968(%rbp), %rcx       # 8-byte Reload
	addq	%rax, %rcx
	cmpq	%rdi, %rcx
	ja	.LBB48_329
# BB#328:                               # %cond.true.2856
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3976(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-3976(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -3984(%rbp)       # 8-byte Spill
	jmp	.LBB48_330
.LBB48_329:                             # %cond.false.2861
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -3992(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-3992(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	subq	%rax, %rdi
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	addq	%rax, %rdi
	movq	%rdi, -3984(%rbp)       # 8-byte Spill
.LBB48_330:                             # %cond.end.2868
	movq	-3984(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -232(%rbp)
	testb	$1, %cl
	jne	.LBB48_335
	jmp	.LBB48_336
.LBB48_331:                             # %cond.false.2870
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -4000(%rbp)       # 8-byte Spill
	callq	SBYTES
	movabsq	$9223372036854775807, %rdi # imm = 0x7FFFFFFFFFFFFFFF
	addq	$2, %rax
	movq	-4000(%rbp), %rcx       # 8-byte Reload
	addq	%rax, %rcx
	cmpq	%rdi, %rcx
	ja	.LBB48_333
# BB#332:                               # %cond.true.2877
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -4008(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-4008(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -4016(%rbp)       # 8-byte Spill
	jmp	.LBB48_334
.LBB48_333:                             # %cond.false.2882
	movq	globals+1192, %rdi
	callq	SBYTES
	movq	-224(%rbp), %rdi
	movq	%rax, -4024(%rbp)       # 8-byte Spill
	callq	SBYTES
	addq	$2, %rax
	movq	-4024(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	subq	%rax, %rdi
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	addq	%rax, %rdi
	movq	%rdi, -4016(%rbp)       # 8-byte Spill
.LBB48_334:                             # %cond.end.2889
	movq	-4016(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -232(%rbp)
	testb	$1, %dl
	jne	.LBB48_335
	jmp	.LBB48_336
.LBB48_335:                             # %if.then.2891
	movq	$-1, %rdi
	callq	memory_full
.LBB48_336:                             # %if.end.2892
	movl	x_display_id, %eax
	addl	$1, %eax
	movl	%eax, x_display_id
	movq	-56(%rbp), %rcx
	movl	%eax, 256(%rcx)
	movq	-232(%rbp), %rdi
	callq	xmalloc
	movq	-56(%rbp), %rcx
	movq	%rax, 264(%rcx)
	movq	-56(%rbp), %rax
	movq	264(%rax), %rdi
	movq	globals+1192, %rsi
	callq	lispstpcpy
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -240(%rbp)
	movb	$64, (%rax)
	movq	-240(%rbp), %rdi
	movq	-224(%rbp), %rsi
	callq	lispstpcpy
	movq	-56(%rbp), %rdi
	movq	%rax, -4032(%rbp)       # 8-byte Spill
	callq	x_find_modifier_meanings
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xg_create_default_cursor
	movl	$116, %esi
	movq	-56(%rbp), %rcx
	movq	%rax, 152(%rcx)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XCreateFontCursor
	movl	$108, %esi
	movq	-56(%rbp), %rcx
	movq	%rax, 120(%rcx)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XCreateFontCursor
	movabsq	$.L.str.6, %rcx
	movq	-56(%rbp), %rdi
	movq	%rax, 128(%rdi)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	x_load_resources
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-64(%rbp), %rsi
	callq	XrmSetDatabase
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 160(%rcx)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movslq	224(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	16(%rcx), %rcx
	shlq	$7, %rax
	addq	232(%rcx), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-56(%rbp), %rdi
	callq	select_visual
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	movq	80(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 104(%rcx)
	movq	-56(%rbp), %rax
	movq	$-1, 96(%rax)
	movq	-56(%rbp), %rax
	movl	$0, 772(%rax)
	movq	-56(%rbp), %rax
	addq	$184, %rax
	movq	%rax, %rdi
	callq	reset_mouse_highlight
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	cmpl	$4, 16(%rax)
	jne	.LBB48_338
# BB#337:                               # %if.then.2917
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movq	24(%rax), %rdi
	movq	-56(%rbp), %rax
	addq	$748, %rax              # imm = 0x2EC
	movq	-56(%rbp), %rcx
	addq	$760, %rcx              # imm = 0x2F8
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	get_bits_and_offset
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movq	40(%rax), %rdi
	movq	-56(%rbp), %rax
	addq	$752, %rax              # imm = 0x2F0
	movq	-56(%rbp), %rcx
	addq	$764, %rcx              # imm = 0x2FC
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	get_bits_and_offset
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movq	32(%rax), %rdi
	movq	-56(%rbp), %rax
	addq	$756, %rax              # imm = 0x2F4
	movq	-56(%rbp), %rcx
	addq	$768, %rcx              # imm = 0x300
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	get_bits_and_offset
.LBB48_338:                             # %if.end.2921
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	48(%rcx), %rcx
	cmpq	64(%rcx), %rax
	jne	.LBB48_346
# BB#339:                               # %if.then.2926
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	cmpl	$3, 16(%rax)
	jne	.LBB48_345
# BB#340:                               # %if.then.2931
	movl	$4, %esi
	leaq	-280(%rbp), %rax
	movabsq	$.L.str.7, %rcx
	movq	$15, -280(%rbp)
	movq	$-1, -272(%rbp)
	movq	$0, -264(%rbp)
	movq	%rcx, -256(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movl	$4, %esi
	leaq	-320(%rbp), %rcx
	movabsq	$.L.str.8, %rdi
	movq	%rax, -248(%rbp)
	movq	$15, -320(%rbp)
	movq	$-1, -312(%rbp)
	movq	$0, -304(%rbp)
	movq	%rdi, -296(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	xorl	%edi, %edi
	movq	%rax, -288(%rbp)
	movq	-56(%rbp), %rax
	movq	-248(%rbp), %rsi
	movq	-288(%rbp), %rdx
	movq	%rdx, -4040(%rbp)       # 8-byte Spill
	movq	%rax, -4048(%rbp)       # 8-byte Spill
	movq	%rsi, -4056(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -4064(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-4048(%rbp), %rdi       # 8-byte Reload
	movq	-4056(%rbp), %rsi       # 8-byte Reload
	movq	-4040(%rbp), %rdx       # 8-byte Reload
	movq	-4064(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	callq	display_x_get_resource
	movq	%rax, -328(%rbp)
	movq	-328(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB48_341
	jmp	.LBB48_344
.LBB48_341:                             # %land.lhs.true.2948
	movq	-328(%rbp), %rdi
	callq	SSDATA
	movl	$.L.str.9, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB48_343
# BB#342:                               # %lor.lhs.false.2952
	movq	-328(%rbp), %rdi
	callq	SSDATA
	movl	$.L.str.10, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB48_344
.LBB48_343:                             # %if.then.2956
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	80(%rax), %rsi
	callq	XCopyColormapAndFree
	movq	-56(%rbp), %rsi
	movq	%rax, 80(%rsi)
.LBB48_344:                             # %if.end.2961
	jmp	.LBB48_345
.LBB48_345:                             # %if.end.2962
	jmp	.LBB48_347
.LBB48_346:                             # %if.else.2963
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	104(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	72(%rax), %rdx
	callq	XCreateColormap
	movq	-56(%rbp), %rdx
	movq	%rax, 80(%rdx)
.LBB48_347:                             # %if.end.2969
	leaq	-332(%rbp), %rsi
	leaq	-336(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XRenderQueryExtension
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.12, %rdx
	movq	-56(%rbp), %rdi
	movq	16(%rdi), %rdi
	movl	%eax, -4068(%rbp)       # 4-byte Spill
	callq	XGetDefault
	movq	%rax, -344(%rbp)
	cmpq	$0, -344(%rbp)
	je	.LBB48_350
# BB#348:                               # %land.lhs.true.2976
	movabsq	$.L.str.13, %rsi
	leaq	-352(%rbp), %rdx
	movq	-344(%rbp), %rdi
	movb	$0, %al
	callq	sscanf
	cmpl	$1, %eax
	jne	.LBB48_350
# BB#349:                               # %if.then.2980
	movsd	-352(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	%xmm0, 56(%rax)
	movq	-56(%rbp), %rax
	movsd	%xmm0, 64(%rax)
.LBB48_350:                             # %if.end.2981
	movsd	.LCPI48_0, %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	ucomisd	64(%rax), %xmm0
	jbe	.LBB48_358
# BB#351:                               # %if.then.2985
	movq	-56(%rbp), %rax
	movq	48(%rax), %rdi
	callq	XScreenNumberOfScreen
	movsd	.LCPI48_0, %xmm0        # xmm0 = mem[0],zero
	movl	%eax, -356(%rbp)
	movslq	-356(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	16(%rcx), %rcx
	shlq	$7, %rdi
	addq	232(%rcx), %rdi
	cvtsi2sdl	28(%rdi), %xmm1
	movsd	%xmm1, -368(%rbp)
	movslq	-356(%rbp), %rcx
	movq	-56(%rbp), %rdi
	movq	16(%rdi), %rdi
	shlq	$7, %rcx
	addq	232(%rdi), %rcx
	cvtsi2sdl	36(%rcx), %xmm1
	movsd	%xmm1, -376(%rbp)
	ucomisd	-376(%rbp), %xmm0
	jbe	.LBB48_353
# BB#352:                               # %cond.true.3000
	movsd	.LCPI48_2, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -4080(%rbp)      # 8-byte Spill
	jmp	.LBB48_354
.LBB48_353:                             # %cond.false.3001
	movsd	.LCPI48_1, %xmm0        # xmm0 = mem[0],zero
	mulsd	-368(%rbp), %xmm0
	divsd	-376(%rbp), %xmm0
	movsd	%xmm0, -4080(%rbp)      # 8-byte Spill
.LBB48_354:                             # %cond.end.3003
	movsd	-4080(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI48_0, %xmm1        # xmm1 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	%xmm0, 64(%rax)
	movslq	-356(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	16(%rcx), %rcx
	shlq	$7, %rax
	addq	232(%rcx), %rax
	cvtsi2sdl	24(%rax), %xmm0
	movsd	%xmm0, -368(%rbp)
	movslq	-356(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	16(%rcx), %rcx
	shlq	$7, %rax
	addq	232(%rcx), %rax
	cvtsi2sdl	32(%rax), %xmm0
	movsd	%xmm0, -376(%rbp)
	ucomisd	-376(%rbp), %xmm1
	jbe	.LBB48_356
# BB#355:                               # %cond.true.3018
	movsd	.LCPI48_2, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -4088(%rbp)      # 8-byte Spill
	jmp	.LBB48_357
.LBB48_356:                             # %cond.false.3019
	movsd	.LCPI48_1, %xmm0        # xmm0 = mem[0],zero
	mulsd	-368(%rbp), %xmm0
	divsd	-376(%rbp), %xmm0
	movsd	%xmm0, -4088(%rbp)      # 8-byte Spill
.LBB48_357:                             # %cond.end.3022
	movsd	-4088(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	%xmm0, 56(%rax)
.LBB48_358:                             # %if.end.3025
	movl	$0, -380(%rbp)
.LBB48_359:                             # %for.cond.3026
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$54, -380(%rbp)
	jge	.LBB48_362
# BB#360:                               # %for.body.3029
                                        #   in Loop: Header=BB48_359 Depth=1
	movabsq	$x_term_init.atom_refs, %rax
	movslq	-380(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movslq	-380(%rbp), %rcx
	movq	%rax, -1280(%rbp,%rcx,8)
# BB#361:                               # %for.inc.3035
                                        #   in Loop: Header=BB48_359 Depth=1
	movl	-380(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -380(%rbp)
	jmp	.LBB48_359
.LBB48_362:                             # %for.end.3037
	leaq	-1312(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rdi, -4096(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	XScreenNumberOfScreen
	movabsq	$x_term_init.xsettings_fmt, %rsi
	movq	-4096(%rbp), %rdi       # 8-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	sprintf
	movl	$55, %edx
	xorl	%ecx, %ecx
	leaq	-832(%rbp), %r8
	leaq	-1280(%rbp), %rsi
	leaq	-1312(%rbp), %rdi
	movslq	-380(%rbp), %r9
	movq	%rdi, -1280(%rbp,%r9,8)
	movq	-56(%rbp), %rdi
	movq	16(%rdi), %rdi
	movl	%eax, -4100(%rbp)       # 4-byte Spill
	callq	XInternAtoms
	movl	$0, -380(%rbp)
	movl	%eax, -4104(%rbp)       # 4-byte Spill
.LBB48_363:                             # %for.cond.3049
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$54, -380(%rbp)
	jge	.LBB48_366
# BB#364:                               # %for.body.3052
                                        #   in Loop: Header=BB48_363 Depth=1
	movabsq	$x_term_init.atom_refs, %rax
	movslq	-380(%rbp), %rcx
	movq	-832(%rbp,%rcx,8), %rcx
	movq	-56(%rbp), %rdx
	movslq	-380(%rbp), %rsi
	shlq	$4, %rsi
	addq	%rsi, %rax
	movslq	8(%rax), %rax
	movq	%rcx, (%rdx,%rax)
# BB#365:                               # %for.inc.3058
                                        #   in Loop: Header=BB48_363 Depth=1
	movl	-380(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -380(%rbp)
	jmp	.LBB48_363
.LBB48_366:                             # %for.end.3060
	movslq	-380(%rbp), %rax
	movq	-832(%rbp,%rax,8), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 936(%rcx)
	movq	-56(%rbp), %rax
	movq	$8, 784(%rax)
	movq	-56(%rbp), %rax
	movq	784(%rax), %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movabsq	$gray_bits, %rdx
	movl	$2, %esi
	movl	$1, %r8d
	movl	%r8d, %r9d
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movl	$1, %r8d
	movq	-56(%rbp), %rdi
	movq	%rax, 776(%rdi)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	104(%rax), %rax
	movl	%esi, -4108(%rbp)       # 4-byte Spill
	movq	%rax, %rsi
	movl	-4108(%rbp), %r10d      # 4-byte Reload
	movq	%rcx, -4120(%rbp)       # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r8d, -4124(%rbp)       # 4-byte Spill
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$1, 8(%rsp)
	callq	XCreatePixmapFromBitmapData
	movq	-56(%rbp), %rdx
	movq	%rax, 696(%rdx)
	movq	-56(%rbp), %rdi
	callq	x_setup_pointer_blanking
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	xim_initialize
	movq	-56(%rbp), %rdi
	callq	xsettings_initialize
	movq	-56(%rbp), %rax
	cmpl	$0, 24(%rax)
	je	.LBB48_368
# BB#367:                               # %if.then.3072
	movq	-56(%rbp), %rax
	movl	24(%rax), %edi
	callq	add_keyboard_wait_descriptor
.LBB48_368:                             # %if.end.3074
	movq	-56(%rbp), %rax
	movl	24(%rax), %edi
	movl	%edi, -4128(%rbp)       # 4-byte Spill
	callq	getpid
	movl	$8, %esi
	movl	-4128(%rbp), %edi       # 4-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	rpl_fcntl
	testb	$1, interrupt_input
	movl	%eax, -4132(%rbp)       # 4-byte Spill
	je	.LBB48_370
# BB#369:                               # %if.then.3079
	movq	-56(%rbp), %rax
	movl	24(%rax), %edi
	callq	init_sigio
.LBB48_370:                             # %if.end.3081
	movl	$4, %esi
	leaq	-1352(%rbp), %rax
	movabsq	$.L.str.68, %rcx
	movq	$11, -1352(%rbp)
	movq	$-1, -1344(%rbp)
	movq	$0, -1336(%rbp)
	movq	%rcx, -1328(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movl	$4, %esi
	leaq	-1392(%rbp), %rcx
	movabsq	$.L.str.69, %rdi
	movq	%rax, -1320(%rbp)
	movq	$11, -1392(%rbp)
	movq	$-1, -1384(%rbp)
	movq	$0, -1376(%rbp)
	movq	%rdi, -1368(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	xorl	%edi, %edi
	movq	%rax, -1360(%rbp)
	movq	-56(%rbp), %rax
	movq	-1320(%rbp), %rsi
	movq	-1360(%rbp), %rdx
	movq	%rdx, -4144(%rbp)       # 8-byte Spill
	movq	%rax, -4152(%rbp)       # 8-byte Spill
	movq	%rsi, -4160(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -4168(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-4152(%rbp), %rdi       # 8-byte Reload
	movq	-4160(%rbp), %rsi       # 8-byte Reload
	movq	-4144(%rbp), %rdx       # 8-byte Reload
	movq	-4168(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	callq	display_x_get_resource
	movq	%rax, -1400(%rbp)
	movq	-1400(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB48_371
	jmp	.LBB48_374
.LBB48_371:                             # %land.lhs.true.3104
	movq	-1400(%rbp), %rdi
	callq	SSDATA
	movl	$.L.str.9, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB48_373
# BB#372:                               # %lor.lhs.false.3108
	movq	-1400(%rbp), %rdi
	callq	SSDATA
	movl	$.L.str.10, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB48_374
.LBB48_373:                             # %if.then.3112
	movl	$1, %esi
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XSynchronize
	movq	%rax, -4176(%rbp)       # 8-byte Spill
.LBB48_374:                             # %if.end.3115
	movl	$4, %esi
	leaq	-1440(%rbp), %rax
	movabsq	$.L.str.70, %rcx
	movq	$6, -1440(%rbp)
	movq	$-1, -1432(%rbp)
	movq	$0, -1424(%rbp)
	movq	%rcx, -1416(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movl	$4, %esi
	leaq	-1480(%rbp), %rcx
	movabsq	$.L.str.71, %rdi
	movq	%rax, -1408(%rbp)
	movq	$6, -1480(%rbp)
	movq	$-1, -1472(%rbp)
	movq	$0, -1464(%rbp)
	movq	%rdi, -1456(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	xorl	%edi, %edi
	movq	%rax, -1448(%rbp)
	movq	-56(%rbp), %rax
	movq	-1408(%rbp), %rsi
	movq	-1448(%rbp), %rdx
	movq	%rdx, -4184(%rbp)       # 8-byte Spill
	movq	%rax, -4192(%rbp)       # 8-byte Spill
	movq	%rsi, -4200(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -4208(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-4192(%rbp), %rdi       # 8-byte Reload
	movq	-4200(%rbp), %rsi       # 8-byte Reload
	movq	-4184(%rbp), %rdx       # 8-byte Reload
	movq	-4208(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	callq	display_x_get_resource
	movq	%rax, -1488(%rbp)
	movq	-1488(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB48_375
	jmp	.LBB48_378
.LBB48_375:                             # %land.lhs.true.3138
	movq	-1488(%rbp), %rdi
	callq	SSDATA
	movl	$.L.str.72, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB48_377
# BB#376:                               # %lor.lhs.false.3142
	movq	-1488(%rbp), %rdi
	callq	SSDATA
	movl	$.L.str.73, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB48_378
.LBB48_377:                             # %if.then.3146
	movb	$0, use_xim
.LBB48_378:                             # %if.end.3147
	movq	-48(%rbp), %rax
	cmpl	$1, 48(%rax)
	jne	.LBB48_381
# BB#379:                               # %land.lhs.true.3151
	cmpl	$0, daemon_pipe+4
	jne	.LBB48_381
# BB#380:                               # %if.then.3154
	movq	-56(%rbp), %rdi
	callq	x_session_initialize
.LBB48_381:                             # %if.end.3155
	callq	unblock_input
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB48_382:                             # %return
	movq	-8(%rbp), %rax
	addq	$4224, %rsp             # imm = 0x1080
	popq	%rbp
	retq
.Lfunc_end48:
	.size	x_term_init, .Lfunc_end48-x_term_init
	.cfi_endproc

	.align	16, 0x90
	.type	x_initialize,@function
x_initialize:                           # @x_initialize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp158:
	.cfi_def_cfa_offset 16
.Ltmp159:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp160:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$901, %edi              # imm = 0x385
	movq	$19200, globals+3048    # imm = 0x4B00
	movl	$0, x_noop_count
	movb	$0, any_help_event_p
	movq	$0, ignore_next_mouse_click_timeout
	movl	$-1, current_count
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fset_input_interrupt_mode
	movabsq	$x_error_handler, %rdi
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	XSetErrorHandler
	movabsq	$x_io_error_quitter, %rdi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	XSetIOErrorHandler
	movq	%rax, -24(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	x_initialize, .Lfunc_end49-x_initialize
	.cfi_endproc

	.align	16, 0x90
	.type	my_log_handler,@function
my_log_handler:                         # @my_log_handler
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp161:
	.cfi_def_cfa_offset 16
.Ltmp162:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp163:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movabsq	$.L.str.383, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	callq	strstr
	cmpq	$0, %rax
	jne	.LBB50_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.384, %rsi
	movq	stderr, %rdi
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB50_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	my_log_handler, .Lfunc_end50-my_log_handler
	.cfi_endproc

	.align	16, 0x90
	.type	event_handler_gdk,@function
event_handler_gdk:                      # @event_handler_gdk
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp164:
	.cfi_def_cfa_offset 16
.Ltmp165:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp166:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	callq	block_input
	cmpl	$0, current_count
	jl	.LBB51_10
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdi
	callq	x_display_info_for_display
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$2, (%rax)
	je	.LBB51_3
# BB#2:                                 # %lor.lhs.false
	movq	-40(%rbp), %rax
	cmpl	$3, (%rax)
	jne	.LBB51_6
.LBB51_3:                               # %land.lhs.true
	cmpq	$0, -48(%rbp)
	je	.LBB51_6
# BB#4:                                 # %land.lhs.true.4
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	x_filter_event
	cmpl	$0, %eax
	je	.LBB51_6
# BB#5:                                 # %if.then.7
	callq	unblock_input
	movl	$2, -4(%rbp)
	jmp	.LBB51_15
.LBB51_6:                               # %if.end
	cmpq	$0, -48(%rbp)
	jne	.LBB51_8
# BB#7:                                 # %if.then.9
	movl	$0, current_finish
	jmp	.LBB51_9
.LBB51_8:                               # %if.else
	movabsq	$current_finish, %rdx
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	current_hold_quit, %rcx
	callq	handle_one_xevent
	addl	current_count, %eax
	movl	%eax, current_count
.LBB51_9:                               # %if.end.11
	jmp	.LBB51_11
.LBB51_10:                              # %if.else.12
	movq	-40(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	24(%rax), %rsi
	callq	x_dispatch_event
	movl	%eax, current_finish
.LBB51_11:                              # %if.end.16
	callq	unblock_input
	cmpl	$1, current_finish
	je	.LBB51_13
# BB#12:                                # %lor.lhs.false.18
	cmpl	$2, current_finish
	jne	.LBB51_14
.LBB51_13:                              # %if.then.20
	movl	$2, -4(%rbp)
	jmp	.LBB51_15
.LBB51_14:                              # %if.end.21
	movl	$0, -4(%rbp)
.LBB51_15:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	event_handler_gdk, .Lfunc_end51-event_handler_gdk
	.cfi_endproc

	.align	16, 0x90
	.type	x_error_handler,@function
x_error_handler:                        # @x_error_handler
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp167:
	.cfi_def_cfa_offset 16
.Ltmp168:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp169:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, x_error_message
	je	.LBB52_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	x_error_catcher
	jmp	.LBB52_3
.LBB52_2:                               # %if.else
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	x_error_quitter
.LBB52_3:                               # %if.end
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	x_error_handler, .Lfunc_end52-x_error_handler
	.cfi_endproc

	.align	16, 0x90
	.type	x_io_error_quitter,@function
x_io_error_quitter:                     # @x_io_error_quitter
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp170:
	.cfi_def_cfa_offset 16
.Ltmp171:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp172:
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp              # imm = 0x120
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %esi
	movabsq	$.L.str.389, %rdx
	leaq	-272(%rbp), %rcx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	216(%rdi), %rdi
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-280(%rbp), %rcx        # 8-byte Reload
	movb	$0, %al
	callq	snprintf
	movl	$1, %edx
	leaq	-272(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movl	%eax, -284(%rbp)        # 4-byte Spill
	callq	x_connection_closed
	xorl	%eax, %eax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end53:
	.size	x_io_error_quitter, .Lfunc_end53-x_io_error_quitter
	.cfi_endproc

	.align	16, 0x90
	.type	x_create_terminal,@function
x_create_terminal:                      # @x_create_terminal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp173:
	.cfi_def_cfa_offset 16
.Ltmp174:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp175:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
.Ltmp176:
	.cfi_offset %rbx, -56
.Ltmp177:
	.cfi_offset %r12, -48
.Ltmp178:
	.cfi_offset %r13, -40
.Ltmp179:
	.cfi_offset %r14, -32
.Ltmp180:
	.cfi_offset %r15, -24
	movl	$2, %eax
	movabsq	$x_redisplay_interface, %rsi
	movq	%rdi, -48(%rbp)
	movl	%eax, %edi
	callq	create_terminal
	movabsq	$x_delete_terminal, %rsi
	movabsq	$x_destroy_window, %rcx
	movabsq	$XTjudge_scroll_bars, %rdx
	movabsq	$XTredeem_scroll_bar, %r8
	movabsq	$XTcondemn_scroll_bars, %r9
	movabsq	$XTset_horizontal_scroll_bar, %r10
	movabsq	$XTset_vertical_scroll_bar, %r11
	movabsq	$xw_popup_dialog, %rbx
	movabsq	$x_menu_show, %r14
	movabsq	$XTfullscreen_hook, %r15
	movabsq	$XTframe_raise_lower, %r12
	movabsq	$XTframe_rehighlight, %r13
	movabsq	$XTmouse_position, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movabsq	$XTframe_up_to_date, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movabsq	$XTread_socket, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movabsq	$x_update_end, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movabsq	$x_update_begin, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movabsq	$XTtoggle_invisible_pointer, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movabsq	$XTring_bell, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movabsq	$x_delete_glyphs, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movabsq	$x_ins_del_lines, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movabsq	$x_clear_frame, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	-56(%rbp), %rax
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 88(%rax)
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-56(%rbp), %rax
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 144(%rax)
	movq	-56(%rbp), %rax
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 160(%rax)
	movq	-56(%rbp), %rax
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 184(%rax)
	movq	-56(%rbp), %rax
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 192(%rax)
	movq	-56(%rbp), %rax
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 200(%rax)
	movq	-56(%rbp), %rax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, 224(%rax)
	movq	-56(%rbp), %rax
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, 232(%rax)
	movq	-56(%rbp), %rax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, 336(%rax)
	movq	-56(%rbp), %rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, 344(%rax)
	movq	-56(%rbp), %rax
	movq	%rdi, 248(%rax)
	movq	-56(%rbp), %rax
	movq	%r13, 256(%rax)
	movq	-56(%rbp), %rax
	movq	%r12, 264(%rax)
	movq	-56(%rbp), %rax
	movq	%r15, 272(%rax)
	movq	-56(%rbp), %rax
	movq	%r14, 280(%rax)
	movq	-56(%rbp), %rax
	movq	%rbx, 288(%rax)
	movq	-56(%rbp), %rax
	movq	%r11, 296(%rax)
	movq	-56(%rbp), %rax
	movq	%r10, 304(%rax)
	movq	-56(%rbp), %rax
	movq	%r9, 312(%rax)
	movq	-56(%rbp), %rax
	movq	%r8, 320(%rax)
	movq	-56(%rbp), %rax
	movq	%rdx, 328(%rax)
	movq	-56(%rbp), %rax
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, 352(%rax)
	movq	-56(%rbp), %rax
	movq	%rsi, 360(%rax)
	movq	-56(%rbp), %rax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end54:
	.size	x_create_terminal, .Lfunc_end54-x_create_terminal
	.cfi_endproc

	.align	16, 0x90
	.type	same_x_server,@function
same_x_server:                          # @same_x_server
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp181:
	.cfi_def_cfa_offset 16
.Ltmp182:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp183:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movb	$0, -25(%rbp)
	callq	Fsystem_name
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -56(%rbp)
	movq	$0, -64(%rbp)
.LBB55_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movsbl	(%rsi,%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -65(%rbp)          # 1-byte Spill
	je	.LBB55_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB55_1 Depth=1
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$46, %edx
	setne	%sil
	movb	%sil, -65(%rbp)         # 1-byte Spill
.LBB55_3:                               # %land.end
                                        #   in Loop: Header=BB55_1 Depth=1
	movb	-65(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB55_4
	jmp	.LBB55_5
.LBB55_4:                               # %while.body
                                        #   in Loop: Header=BB55_1 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB55_1
.LBB55_5:                               # %while.end
	movabsq	$.L.str.390, %rsi
	movl	$5, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB55_7
# BB#6:                                 # %if.then
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -16(%rbp)
.LBB55_7:                               # %if.end
	movabsq	$.L.str.390, %rsi
	movl	$5, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB55_9
# BB#8:                                 # %if.then.11
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -24(%rbp)
.LBB55_9:                               # %if.end.13
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB55_12
# BB#10:                                # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$58, %edx
	jne	.LBB55_12
# BB#11:                                # %if.then.20
	movq	-56(%rbp), %rax
	addq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB55_12:                              # %if.end.22
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB55_15
# BB#13:                                # %land.lhs.true.25
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$58, %edx
	jne	.LBB55_15
# BB#14:                                # %if.then.30
	movq	-56(%rbp), %rax
	addq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB55_15:                              # %if.end.32
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-64(%rbp), %rdx
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB55_18
# BB#16:                                # %land.lhs.true.35
	movq	-64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$58, %edx
	jne	.LBB55_18
# BB#17:                                # %if.then.40
	movq	-64(%rbp), %rax
	addq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB55_18:                              # %if.end.42
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-64(%rbp), %rdx
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB55_21
# BB#19:                                # %land.lhs.true.45
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$58, %edx
	jne	.LBB55_21
# BB#20:                                # %if.then.50
	movq	-64(%rbp), %rax
	addq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB55_21:                              # %if.end.52
	jmp	.LBB55_22
.LBB55_22:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -66(%rbp)          # 1-byte Spill
	je	.LBB55_24
# BB#23:                                # %land.rhs.56
                                        #   in Loop: Header=BB55_22 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movsbl	(%rax), %edx
	cmpl	%edx, %ecx
	sete	%sil
	movb	%sil, -66(%rbp)         # 1-byte Spill
.LBB55_24:                              # %land.end.61
                                        #   in Loop: Header=BB55_22 Depth=1
	movb	-66(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB55_25
	jmp	.LBB55_32
.LBB55_25:                              # %for.body
                                        #   in Loop: Header=BB55_22 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$58, %ecx
	jne	.LBB55_27
# BB#26:                                # %if.then.65
                                        #   in Loop: Header=BB55_22 Depth=1
	movb	$1, -25(%rbp)
.LBB55_27:                              # %if.end.66
                                        #   in Loop: Header=BB55_22 Depth=1
	testb	$1, -25(%rbp)
	je	.LBB55_30
# BB#28:                                # %land.lhs.true.69
                                        #   in Loop: Header=BB55_22 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$46, %ecx
	jne	.LBB55_30
# BB#29:                                # %if.then.73
	movb	$1, -1(%rbp)
	jmp	.LBB55_39
.LBB55_30:                              # %if.end.74
                                        #   in Loop: Header=BB55_22 Depth=1
	jmp	.LBB55_31
.LBB55_31:                              # %for.inc
                                        #   in Loop: Header=BB55_22 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB55_22
.LBB55_32:                              # %for.end
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, -25(%rbp)
	movb	%cl, -67(%rbp)          # 1-byte Spill
	je	.LBB55_38
# BB#33:                                # %land.lhs.true.78
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$46, %ecx
	je	.LBB55_35
# BB#34:                                # %lor.lhs.false
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -67(%rbp)          # 1-byte Spill
	jne	.LBB55_38
.LBB55_35:                              # %land.rhs.85
	movb	$1, %al
	movq	-24(%rbp), %rcx
	movsbl	(%rcx), %edx
	cmpl	$46, %edx
	movb	%al, -68(%rbp)          # 1-byte Spill
	je	.LBB55_37
# BB#36:                                # %lor.rhs
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	sete	%dl
	movb	%dl, -68(%rbp)          # 1-byte Spill
.LBB55_37:                              # %lor.end
	movb	-68(%rbp), %al          # 1-byte Reload
	movb	%al, -67(%rbp)          # 1-byte Spill
.LBB55_38:                              # %land.end.92
	movb	-67(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movb	%al, -1(%rbp)
.LBB55_39:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	same_x_server, .Lfunc_end55-same_x_server
	.cfi_endproc

	.align	16, 0x90
	.type	x_find_modifier_meanings,@function
x_find_modifier_meanings:               # @x_find_modifier_meanings
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp184:
	.cfi_def_cfa_offset 16
.Ltmp185:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp186:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	-12(%rbp), %rsi
	leaq	-16(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$0, 304(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 308(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 312(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 316(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 320(%rdi)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	XDisplayKeycodes
	leaq	-28(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	16(%rdx), %rdi
	movl	-12(%rbp), %r8d
	movb	%r8b, %r9b
	movl	-16(%rbp), %r8d
	subl	-12(%rbp), %r8d
	addl	$1, %r8d
	movzbl	%r9b, %esi
	movl	%r8d, %edx
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	XGetKeyboardMapping
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XGetModifierMapping
	movq	%rax, -40(%rbp)
	movl	$3, -44(%rbp)
.LBB56_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB56_3 Depth 2
                                        #       Child Loop BB56_7 Depth 3
	cmpl	$8, -44(%rbp)
	jge	.LBB56_27
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB56_1 Depth=1
	movb	$0, -49(%rbp)
	movl	$0, -48(%rbp)
.LBB56_3:                               # %for.cond.6
                                        #   Parent Loop BB56_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB56_7 Depth 3
	movl	-48(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB56_25
# BB#4:                                 # %for.body.9
                                        #   in Loop: Header=BB56_3 Depth=2
	movl	-44(%rbp), %eax
	movq	-40(%rbp), %rcx
	imull	(%rcx), %eax
	addl	-48(%rbp), %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -50(%rbp)
	movzbl	-50(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB56_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB56_3 Depth=2
	jmp	.LBB56_24
.LBB56_6:                               # %if.end
                                        #   in Loop: Header=BB56_3 Depth=2
	movl	$0, -56(%rbp)
.LBB56_7:                               # %for.cond.15
                                        #   Parent Loop BB56_1 Depth=1
                                        #     Parent Loop BB56_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-56(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB56_23
# BB#8:                                 # %for.body.18
                                        #   in Loop: Header=BB56_7 Depth=3
	movzbl	-50(%rbp), %eax
	movl	-12(%rbp), %ecx
	subl	%ecx, %eax
	movl	-28(%rbp), %ecx
	imull	%ecx, %eax
	movl	-56(%rbp), %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rsi
	movl	(%rsi,%rdx,8), %eax
	movl	%eax, -60(%rbp)
	addl	$-65510, %eax           # imm = 0xFFFFFFFFFFFF001A
	movl	%eax, %edx
	subl	$8, %eax
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movl	%eax, -76(%rbp)         # 4-byte Spill
	ja	.LBB56_21
# BB#32:                                # %for.body.18
                                        #   in Loop: Header=BB56_7 Depth=3
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	.LJTI56_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB56_9:                               # %sw.bb
                                        #   in Loop: Header=BB56_7 Depth=3
	movl	$1, %eax
	movb	$1, -49(%rbp)
	movl	-44(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movq	-8(%rbp), %rdx
	orl	304(%rdx), %eax
	movl	%eax, 304(%rdx)
	jmp	.LBB56_21
.LBB56_10:                              # %sw.bb.27
                                        #   in Loop: Header=BB56_7 Depth=3
	movl	$1, %eax
	movb	$1, -49(%rbp)
	movl	-44(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movq	-8(%rbp), %rdx
	orl	312(%rdx), %eax
	movl	%eax, 312(%rdx)
	jmp	.LBB56_21
.LBB56_11:                              # %sw.bb.31
                                        #   in Loop: Header=BB56_7 Depth=3
	testb	$1, -49(%rbp)
	jne	.LBB56_13
# BB#12:                                # %if.then.32
                                        #   in Loop: Header=BB56_7 Depth=3
	movl	$1, %eax
	movl	-44(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movq	-8(%rbp), %rdx
	orl	320(%rdx), %eax
	movl	%eax, 320(%rdx)
.LBB56_13:                              # %if.end.36
                                        #   in Loop: Header=BB56_7 Depth=3
	movl	-28(%rbp), %eax
	movl	%eax, -56(%rbp)
	movq	-40(%rbp), %rcx
	movl	(%rcx), %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB56_21
.LBB56_14:                              # %sw.bb.38
                                        #   in Loop: Header=BB56_7 Depth=3
	testb	$1, -49(%rbp)
	jne	.LBB56_16
# BB#15:                                # %if.then.40
                                        #   in Loop: Header=BB56_7 Depth=3
	movl	$1, %eax
	movl	-44(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movq	-8(%rbp), %rdx
	orl	316(%rdx), %eax
	movl	%eax, 316(%rdx)
.LBB56_16:                              # %if.end.44
                                        #   in Loop: Header=BB56_7 Depth=3
	movl	-28(%rbp), %eax
	movl	%eax, -56(%rbp)
	movq	-40(%rbp), %rcx
	movl	(%rcx), %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB56_21
.LBB56_17:                              # %sw.bb.46
                                        #   in Loop: Header=BB56_7 Depth=3
	testb	$1, -49(%rbp)
	jne	.LBB56_20
# BB#18:                                # %land.lhs.true
                                        #   in Loop: Header=BB56_7 Depth=3
	movl	$1, %eax
	movl	-44(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	cmpl	$2, %eax
	jne	.LBB56_20
# BB#19:                                # %if.then.51
                                        #   in Loop: Header=BB56_7 Depth=3
	movq	-8(%rbp), %rax
	movl	$2, 308(%rax)
.LBB56_20:                              # %if.end.53
                                        #   in Loop: Header=BB56_7 Depth=3
	movl	-28(%rbp), %eax
	movl	%eax, -56(%rbp)
	movq	-40(%rbp), %rcx
	movl	(%rcx), %eax
	movl	%eax, -48(%rbp)
.LBB56_21:                              # %sw.epilog
                                        #   in Loop: Header=BB56_7 Depth=3
	jmp	.LBB56_22
.LBB56_22:                              # %for.inc
                                        #   in Loop: Header=BB56_7 Depth=3
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB56_7
.LBB56_23:                              # %for.end
                                        #   in Loop: Header=BB56_3 Depth=2
	jmp	.LBB56_24
.LBB56_24:                              # %for.inc.55
                                        #   in Loop: Header=BB56_3 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB56_3
.LBB56_25:                              # %for.end.57
                                        #   in Loop: Header=BB56_1 Depth=1
	jmp	.LBB56_26
.LBB56_26:                              # %for.inc.58
                                        #   in Loop: Header=BB56_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB56_1
.LBB56_27:                              # %for.end.60
	movq	-8(%rbp), %rax
	cmpl	$0, 304(%rax)
	jne	.LBB56_29
# BB#28:                                # %if.then.63
	movq	-8(%rbp), %rax
	movl	312(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 304(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 312(%rax)
.LBB56_29:                              # %if.end.67
	movq	-8(%rbp), %rax
	movl	312(%rax), %ecx
	movq	-8(%rbp), %rax
	andl	304(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB56_31
# BB#30:                                # %if.then.71
	movq	-8(%rbp), %rax
	movl	304(%rax), %ecx
	xorl	$-1, %ecx
	movq	-8(%rbp), %rax
	andl	312(%rax), %ecx
	movl	%ecx, 312(%rax)
.LBB56_31:                              # %if.end.75
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	XFree
	movq	-40(%rbp), %rdi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	XFreeModifiermap
	movl	%eax, -84(%rbp)         # 4-byte Spill
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	x_find_modifier_meanings, .Lfunc_end56-x_find_modifier_meanings
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI56_0:
	.quad	.LBB56_17
	.quad	.LBB56_9
	.quad	.LBB56_9
	.quad	.LBB56_10
	.quad	.LBB56_10
	.quad	.LBB56_14
	.quad	.LBB56_14
	.quad	.LBB56_11
	.quad	.LBB56_11

	.text
	.align	16, 0x90
	.type	get_bits_and_offset,@function
get_bits_and_offset:                    # @get_bits_and_offset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp187:
	.cfi_def_cfa_offset 16
.Ltmp188:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp189:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
.LBB57_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	andq	$1, %rax
	cmpq	$0, %rax
	setne	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB57_2
	jmp	.LBB57_3
.LBB57_2:                               # %while.body
                                        #   in Loop: Header=BB57_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	movq	-8(%rbp), %rcx
	shrq	$1, %rcx
	movq	%rcx, -8(%rbp)
	jmp	.LBB57_1
.LBB57_3:                               # %while.end
	jmp	.LBB57_4
.LBB57_4:                               # %while.cond.1
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	andq	$1, %rax
	cmpq	$0, %rax
	je	.LBB57_6
# BB#5:                                 # %while.body.4
                                        #   in Loop: Header=BB57_4 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rcx
	shrq	$1, %rcx
	movq	%rcx, -8(%rbp)
	jmp	.LBB57_4
.LBB57_6:                               # %while.end.7
	movl	-32(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	popq	%rbp
	retq
.Lfunc_end57:
	.size	get_bits_and_offset, .Lfunc_end57-get_bits_and_offset
	.cfi_endproc

	.align	16, 0x90
	.type	x_setup_pointer_blanking,@function
x_setup_pointer_blanking:               # @x_setup_pointer_blanking
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp190:
	.cfi_def_cfa_offset 16
.Ltmp191:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp192:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.L.str.391, %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	egetenv
	cmpq	$0, %rax
	je	.LBB58_3
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	x_probe_xfixes_extension
	testb	$1, %al
	jne	.LBB58_2
	jmp	.LBB58_3
.LBB58_2:                               # %if.then
	movabsq	$xfixes_toggle_visible_pointer, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 144(%rcx)
	jmp	.LBB58_4
.LBB58_3:                               # %if.else
	movabsq	$x_toggle_visible_pointer, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 144(%rcx)
	movq	-8(%rbp), %rdi
	callq	make_invisible_cursor
	movq	-8(%rbp), %rcx
	movq	%rax, 136(%rcx)
.LBB58_4:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	x_setup_pointer_blanking, .Lfunc_end58-x_setup_pointer_blanking
	.cfi_endproc

	.align	16, 0x90
	.type	xim_initialize,@function
xim_initialize:                         # @xim_initialize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp193:
	.cfi_def_cfa_offset 16
.Ltmp194:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp195:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	$0, 704(%rsi)
	testb	$1, use_xim
	je	.LBB59_2
# BB#1:                                 # %if.then
	movl	$16, %eax
	movl	%eax, %edi
	callq	xmalloc
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, 720(%rdi)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-16(%rbp), %rdi
	callq	xstrdup
	movabsq	$emacs_class, %rcx
	movabsq	$xim_instantiate_callback, %r8
	movq	-24(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	160(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %r9
	callq	XRegisterIMInstantiateCallback
	movl	%eax, -28(%rbp)
.LBB59_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	xim_initialize, .Lfunc_end59-xim_initialize
	.cfi_endproc

	.globl	x_delete_terminal
	.align	16, 0x90
	.type	x_delete_terminal,@function
x_delete_terminal:                      # @x_delete_terminal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp196:
	.cfi_def_cfa_offset 16
.Ltmp197:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp198:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	88(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 64(%rdi)
	jne	.LBB60_2
# BB#1:                                 # %if.then
	jmp	.LBB60_10
.LBB60_2:                               # %if.end
	callq	block_input
	movq	-16(%rbp), %rax
	cmpq	$0, 704(%rax)
	je	.LBB60_4
# BB#3:                                 # %if.then.2
	movq	-16(%rbp), %rdi
	callq	xim_close_dpy
.LBB60_4:                               # %if.end.3
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB60_6
# BB#5:                                 # %if.then.5
	movq	-16(%rbp), %rdi
	callq	x_destroy_all_bitmaps
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	XSetCloseDownMode
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	xg_display_close
	movq	-16(%rbp), %rdi
	movq	$0, 16(%rdi)
	jmp	.LBB60_9
.LBB60_6:                               # %if.else
	movq	-16(%rbp), %rax
	cmpl	$0, 24(%rax)
	jl	.LBB60_8
# BB#7:                                 # %if.then.9
	movq	-16(%rbp), %rax
	movl	24(%rax), %edi
	callq	emacs_close
	movl	%eax, -24(%rbp)         # 4-byte Spill
.LBB60_8:                               # %if.end.12
	jmp	.LBB60_9
.LBB60_9:                               # %if.end.13
	movq	-16(%rbp), %rax
	movl	24(%rax), %edi
	callq	delete_keyboard_wait_descriptor
	movq	-16(%rbp), %rax
	movl	$-1, 24(%rax)
	movq	-16(%rbp), %rdi
	callq	x_delete_display
	callq	unblock_input
.LBB60_10:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end60:
	.size	x_delete_terminal, .Lfunc_end60-x_delete_terminal
	.cfi_endproc

	.align	16, 0x90
	.type	xim_close_dpy,@function
xim_close_dpy:                          # @xim_close_dpy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp199:
	.cfi_def_cfa_offset 16
.Ltmp200:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp201:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	testb	$1, use_xim
	je	.LBB61_6
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	720(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB61_3
# BB#2:                                 # %if.then.2
	movabsq	$emacs_class, %rcx
	movabsq	$xim_instantiate_callback, %r8
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	160(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %r9
	callq	XUnregisterIMInstantiateCallback
	movl	%eax, -20(%rbp)
.LBB61_3:                               # %if.end
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	xfree
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB61_5
# BB#4:                                 # %if.then.7
	movq	-8(%rbp), %rax
	movq	704(%rax), %rdi
	callq	XCloseIM
	movl	%eax, -24(%rbp)         # 4-byte Spill
.LBB61_5:                               # %if.end.9
	movq	-8(%rbp), %rax
	movq	$0, 704(%rax)
	movq	-8(%rbp), %rax
	movq	712(%rax), %rax
	movq	%rax, %rdi
	callq	XFree
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB61_6:                               # %if.end.12
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	xim_close_dpy, .Lfunc_end61-xim_close_dpy
	.cfi_endproc

	.align	16, 0x90
	.type	x_delete_display,@function
x_delete_display:                       # @x_delete_display
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp202:
	.cfi_def_cfa_offset 16
.Ltmp203:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp204:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	terminal_list, %rdi
	movq	%rdi, -16(%rbp)
.LBB62_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB62_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB62_1 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$2, 56(%rax)
	jne	.LBB62_8
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB62_1 Depth=1
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB62_8
# BB#4:                                 # %if.then
	movq	-16(%rbp), %rax
	cmpl	$1, 48(%rax)
	jne	.LBB62_7
# BB#5:                                 # %land.lhs.true.3
	callq	x_session_have_connection
	testb	$1, %al
	jne	.LBB62_6
	jmp	.LBB62_7
.LBB62_6:                               # %if.then.4
	callq	x_session_close
.LBB62_7:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	delete_terminal
	jmp	.LBB62_10
.LBB62_8:                               # %if.end.5
                                        #   in Loop: Header=BB62_1 Depth=1
	jmp	.LBB62_9
.LBB62_9:                               # %for.inc
                                        #   in Loop: Header=BB62_1 Depth=1
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB62_1
.LBB62_10:                              # %for.end
	movq	next_noop_dpyinfo, %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB62_12
# BB#11:                                # %if.then.7
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, next_noop_dpyinfo
.LBB62_12:                              # %if.end.8
	movq	x_display_list, %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB62_14
# BB#13:                                # %if.then.10
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, x_display_list
	jmp	.LBB62_21
.LBB62_14:                              # %if.else
	movq	x_display_list, %rax
	movq	%rax, -40(%rbp)
.LBB62_15:                              # %for.cond.12
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB62_20
# BB#16:                                # %for.body.14
                                        #   in Loop: Header=BB62_15 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB62_18
# BB#17:                                # %if.then.17
                                        #   in Loop: Header=BB62_15 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB62_18:                              # %if.end.21
                                        #   in Loop: Header=BB62_15 Depth=1
	jmp	.LBB62_19
.LBB62_19:                              # %for.inc.22
                                        #   in Loop: Header=BB62_15 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB62_15
.LBB62_20:                              # %for.end.24
	jmp	.LBB62_21
.LBB62_21:                              # %if.end.25
	movq	-8(%rbp), %rax
	movq	728(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB62_22:                              # %for.cond.26
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB62_25
# BB#23:                                # %for.body.28
                                        #   in Loop: Header=BB62_22 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	callq	xfree
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
# BB#24:                                # %for.inc.30
                                        #   in Loop: Header=BB62_22 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB62_22
.LBB62_25:                              # %for.end.31
	movq	-8(%rbp), %rax
	movq	264(%rax), %rdi
	callq	xfree
	movq	-8(%rbp), %rax
	movq	776(%rax), %rax
	movq	%rax, %rdi
	callq	xfree
	movq	-8(%rbp), %rax
	movq	736(%rax), %rax
	movq	%rax, %rdi
	callq	xfree
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end62:
	.size	x_delete_display, .Lfunc_end62-x_delete_display
	.cfi_endproc

	.globl	init_xterm
	.align	16, 0x90
	.type	init_xterm,@function
init_xterm:                             # @init_xterm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp205:
	.cfi_def_cfa_offset 16
.Ltmp206:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp207:
	.cfi_def_cfa_register %rbp
	movabsq	$.L.str.74, %rdi
	callq	xputenv
	popq	%rbp
	retq
.Lfunc_end63:
	.size	init_xterm, .Lfunc_end63-init_xterm
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI64_0:
	.quad	4605380978949069210     # double 0.80000000000000004
.LCPI64_1:
	.quad	4609434218613702656     # double 1.5
	.text
	.globl	syms_of_xterm
	.align	16, 0x90
	.type	syms_of_xterm,@function
syms_of_xterm:                          # @syms_of_xterm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp208:
	.cfi_def_cfa_offset 16
.Ltmp209:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp210:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movabsq	$.L.str.75, %rdi
	movq	$0, x_error_message
	callq	build_pure_c_string
	movabsq	$xg_default_icon_file, %rdi
	movq	%rax, xg_default_icon_file
	callq	staticpro
# BB#1:                                 # %do.body
	movabsq	$syms_of_xterm.b_fwd, %rdi
	movabsq	$.L.str.76, %rsi
	movabsq	$globals, %rax
	addq	$3449, %rax             # imm = 0xD79
	movq	%rax, %rdx
	callq	defvar_bool
# BB#2:                                 # %do.end
	movb	$1, globals+3449
# BB#3:                                 # %do.body.1
	movabsq	$syms_of_xterm.b_fwd.77, %rdi
	movabsq	$.L.str.78, %rsi
	movabsq	$globals, %rax
	addq	$3448, %rax             # imm = 0xD78
	movq	%rax, %rdx
	callq	defvar_bool
# BB#4:                                 # %do.end.2
	movb	$0, globals+3448
# BB#5:                                 # %do.body.3
	movabsq	$syms_of_xterm.b_fwd.79, %rdi
	movabsq	$.L.str.80, %rsi
	movabsq	$globals, %rax
	addq	$3446, %rax             # imm = 0xD76
	movq	%rax, %rdx
	callq	defvar_bool
# BB#6:                                 # %do.end.4
	movb	$0, globals+3446
# BB#7:                                 # %do.body.5
	movabsq	$syms_of_xterm.o_fwd, %rdi
	movabsq	$.L.str.81, %rsi
	movabsq	$globals, %rax
	addq	$2912, %rax             # imm = 0xB60
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#8:                                 # %do.end.6
	movabsq	$.L.str.82, %rdi
	callq	intern_c_string
	movl	$171, %edi
	movq	%rax, globals+2912
	callq	builtin_lisp_symbol
	movl	$678, %edi              # imm = 0x2A6
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$16777218, %edi         # imm = 0x1000002
	movl	%edi, %edx
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	Fput
	movl	$527, %edi              # imm = 0x20F
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$678, %edi              # imm = 0x2A6
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$67108866, %edi         # imm = 0x4000002
	movl	%edi, %edx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fput
	movl	$658, %edi              # imm = 0x292
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$678, %edi              # imm = 0x2A6
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$536870914, %edi        # imm = 0x20000002
	movl	%edi, %edx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fput
	movl	$892, %edi              # imm = 0x37C
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$678, %edi              # imm = 0x2A6
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$33554434, %edi         # imm = 0x2000002
	movl	%edi, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fput
	movq	%rax, -64(%rbp)         # 8-byte Spill
# BB#9:                                 # %do.body.20
	movabsq	$syms_of_xterm.o_fwd.83, %rdi
	movabsq	$.L.str.84, %rsi
	movabsq	$globals, %rax
	addq	$2736, %rax             # imm = 0xAB0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#10:                                # %do.end.21
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2736
# BB#11:                                # %do.body.23
	movabsq	$syms_of_xterm.o_fwd.85, %rdi
	movabsq	$.L.str.86, %rsi
	movabsq	$globals, %rax
	addq	$2768, %rax             # imm = 0xAD0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#12:                                # %do.end.24
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2768
# BB#13:                                # %do.body.26
	movabsq	$syms_of_xterm.o_fwd.87, %rdi
	movabsq	$.L.str.88, %rsi
	movabsq	$globals, %rax
	addq	$2800, %rax             # imm = 0xAF0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#14:                                # %do.end.27
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2800
# BB#15:                                # %do.body.29
	movabsq	$syms_of_xterm.o_fwd.89, %rdi
	movabsq	$.L.str.90, %rsi
	movabsq	$globals, %rax
	addq	$2904, %rax             # imm = 0xB58
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#16:                                # %do.end.30
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2904
# BB#17:                                # %do.body.32
	movabsq	$syms_of_xterm.o_fwd.91, %rdi
	movabsq	$.L.str.92, %rsi
	movabsq	$globals, %rax
	addq	$2776, %rax             # imm = 0xAD8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#18:                                # %do.end.33
	movsd	.LCPI64_1, %xmm0        # xmm0 = mem[0],zero
	callq	make_float
	movsd	.LCPI64_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	make_float
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$hashtest_eql, %rcx
	movl	$3602, %edi             # imm = 0xE12
	movl	%edi, %edx
	movq	hashtest_eql+32(%rip), %rsi
	movq	%rsp, %r8
	movq	%rsi, 32(%r8)
	movups	hashtest_eql+16(%rip), %xmm0
	movups	%xmm0, 16(%r8)
	movups	hashtest_eql(%rip), %xmm0
	movups	%xmm0, (%r8)
	movl	$3602, %edi             # imm = 0xE12
                                        # kill: RDI<def> EDI<kill>
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-80(%rbp), %r8          # 8-byte Reload
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%r8, %rdx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	callq	make_hash_table
	movq	%rax, globals+2776
# BB#19:                                # %do.body.38
	movabsq	$syms_of_xterm.b_fwd.93, %rdi
	movabsq	$.L.str.94, %rsi
	movabsq	$globals, %rax
	addq	$3441, %rax             # imm = 0xD71
	movq	%rax, %rdx
	callq	defvar_bool
# BB#20:                                # %do.end.39
	movb	$0, globals+3441
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end64:
	.size	syms_of_xterm, .Lfunc_end64-syms_of_xterm
	.cfi_endproc

	.align	16, 0x90
	.type	x_color_cells,@function
x_color_cells:                          # @x_color_cells
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp211:
	.cfi_def_cfa_offset 16
.Ltmp212:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp213:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	x_display_info_for_display
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 736(%rax)
	jne	.LBB65_6
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	XScreenNumberOfScreen
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	XDisplayCells
	movl	$16, %esi
                                        # kill: RSI<def> ESI<kill>
	movl	%eax, -36(%rbp)
	movslq	-36(%rbp), %rdi
	callq	xnmalloc
	movq	-24(%rbp), %rsi
	movq	%rax, 736(%rsi)
	movl	-36(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 744(%rax)
	movl	$0, -40(%rbp)
.LBB65_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB65_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB65_2 Depth=1
	movslq	-40(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movq	-24(%rbp), %rdx
	shlq	$4, %rcx
	addq	736(%rdx), %rcx
	movq	%rax, (%rcx)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB65_2 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB65_2
.LBB65_5:                               # %for.end
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	80(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	736(%rax), %rdx
	movl	-36(%rbp), %ecx
	callq	XQueryColors
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB65_6:                               # %if.end
	movq	-24(%rbp), %rax
	movl	744(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rax
	movq	736(%rax), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end65:
	.size	x_color_cells, .Lfunc_end65-x_color_cells
	.cfi_endproc

	.align	16, 0x90
	.type	handle_one_xevent,@function
handle_one_xevent:                      # @handle_one_xevent
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp214:
	.cfi_def_cfa_offset 16
.Ltmp215:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp216:
	.cfi_def_cfa_register %rbp
	subq	$2240, %rsp             # imm = 0x8C0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	$0, -92(%rbp)
	movl	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -120(%rbp)
	movq	-8(%rbp), %rcx
	addq	$184, %rcx
	movq	%rcx, -744(%rbp)
	movq	$16384, -1136(%rbp)     # imm = 0x4000
	callq	SPECPDL_INDEX
	xorl	%r8d, %r8d
	movl	$56, %r9d
	movl	%r9d, %edx
	leaq	-88(%rbp), %rcx
	movq	%rax, -1144(%rbp)
	movb	$0, -1145(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movq	%rcx, %rdi
	movl	%r8d, %esi
	movl	%r8d, -1940(%rbp)       # 4-byte Spill
	callq	memset
	movl	-88(%rbp), %esi
	andl	$-65536, %esi           # imm = 0xFFFFFFFFFFFF0000
	movl	%esi, -88(%rbp)
	movl	-1940(%rbp), %edi       # 4-byte Reload
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	%eax, %esi
	callq	x_any_window_to_frame
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.LBB66_3
# BB#1:                                 # %land.lhs.true
	movq	-112(%rbp), %rax
	movl	400(%rax), %ecx
	movq	-16(%rbp), %rax
	cmpl	(%rax), %ecx
	jne	.LBB66_3
# BB#2:                                 # %if.then
	movq	-112(%rbp), %rax
	movl	$0, 400(%rax)
.LBB66_3:                               # %if.end
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	addl	$-2, %ecx
	movl	%ecx, %eax
	subl	$32, %ecx
	movq	%rax, -1952(%rbp)       # 8-byte Spill
	movl	%ecx, -1956(%rbp)       # 4-byte Spill
	ja	.LBB66_338
# BB#358:                               # %if.end
	movq	-1952(%rbp), %rax       # 8-byte Reload
	movq	.LJTI66_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB66_4:                               # %sw.bb
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	328(%rcx), %rax
	jne	.LBB66_29
# BB#5:                                 # %land.lhs.true.10
	movq	-16(%rbp), %rax
	cmpl	$32, 48(%rax)
	jne	.LBB66_29
# BB#6:                                 # %if.then.14
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	336(%rcx), %rax
	jne	.LBB66_11
# BB#7:                                 # %if.then.18
	movq	-112(%rbp), %rax
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.LBB66_10
# BB#8:                                 # %land.lhs.true.20
	movq	-120(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 448(%rax)
	je	.LBB66_10
# BB#9:                                 # %if.then.22
	movq	-120(%rbp), %rax
	movq	384(%rax), %rax
	movq	448(%rax), %rdi
	callq	XSetICFocus
.LBB66_10:                              # %if.end.26
	jmp	.LBB66_341
.LBB66_11:                              # %if.end.27
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	344(%rcx), %rax
	jne	.LBB66_24
# BB#12:                                # %if.then.34
	callq	x_session_have_connection
	testb	$1, %al
	jne	.LBB66_23
# BB#13:                                # %if.then.36
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	callq	x_top_window_to_frame
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	selected_frame, %rdi
	movq	%rax, -1968(%rbp)       # 8-byte Spill
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB66_14
	jmp	.LBB66_16
.LBB66_14:                              # %land.lhs.true.43
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB66_16
# BB#15:                                # %cond.true
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -1976(%rbp)       # 8-byte Spill
	jmp	.LBB66_17
.LBB66_16:                              # %cond.false
	callq	emacs_abort
.LBB66_17:                              # %cond.end
	movq	-1968(%rbp), %rax       # 8-byte Reload
	movq	-1976(%rbp), %rcx       # 8-byte Reload
	cmpq	%rcx, %rax
	jne	.LBB66_19
# BB#18:                                # %if.then.49
	movq	-120(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rsi
	movq	initial_argv, %rdx
	movl	initial_argc, %ecx
	callq	XSetCommand
	movl	%eax, -1980(%rbp)       # 4-byte Spill
	jmp	.LBB66_22
.LBB66_19:                              # %if.else
	cmpq	$0, -120(%rbp)
	je	.LBB66_21
# BB#20:                                # %if.then.56
	xorl	%eax, %eax
	movl	%eax, %edx
	xorl	%ecx, %ecx
	movq	-120(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	16(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rsi
	callq	XSetCommand
	movl	%eax, -1984(%rbp)       # 4-byte Spill
.LBB66_21:                              # %if.end.64
	jmp	.LBB66_22
.LBB66_22:                              # %if.end.65
	jmp	.LBB66_23
.LBB66_23:                              # %if.end.66
	jmp	.LBB66_341
.LBB66_24:                              # %if.end.67
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	352(%rcx), %rax
	jne	.LBB66_28
# BB#25:                                # %if.then.74
	movq	-112(%rbp), %rax
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB66_27
# BB#26:                                # %if.then.76
	jmp	.LBB66_339
.LBB66_27:                              # %if.end.77
	movl	$5, %esi
	movl	-88(%rbp), %eax
	andl	$-65536, %eax           # imm = 0xFFFFFFFFFFFF0000
	orl	$13, %eax
	movl	%eax, -88(%rbp)
	movq	-120(%rbp), %rcx
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movq	%rax, -48(%rbp)
	jmp	.LBB66_341
.LBB66_28:                              # %if.end.83
	jmp	.LBB66_341
.LBB66_29:                              # %if.end.84
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	368(%rcx), %rax
	jne	.LBB66_31
# BB#30:                                # %if.then.89
	jmp	.LBB66_341
.LBB66_31:                              # %if.end.90
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	376(%rcx), %rax
	jne	.LBB66_35
# BB#32:                                # %if.then.95
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	callq	x_window_to_frame
	movq	%rax, -120(%rbp)
	movq	-16(%rbp), %rax
	movswl	56(%rax), %ecx
	movl	%ecx, -1152(%rbp)
	movq	-16(%rbp), %rax
	movswl	58(%rax), %ecx
	movl	%ecx, -1156(%rbp)
	cmpq	$0, -120(%rbp)
	je	.LBB66_34
# BB#33:                                # %if.then.110
	movl	-1152(%rbp), %eax
	movq	-120(%rbp), %rcx
	movl	%eax, 304(%rcx)
	movl	-1156(%rbp), %eax
	movq	-120(%rbp), %rcx
	movl	%eax, 308(%rcx)
.LBB66_34:                              # %if.end.111
	jmp	.LBB66_341
.LBB66_35:                              # %if.end.112
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	552(%rcx), %rax
	je	.LBB66_37
# BB#36:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	560(%rcx), %rax
	jne	.LBB66_40
.LBB66_37:                              # %if.then.121
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -1168(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	callq	x_window_to_frame
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB66_39
# BB#38:                                # %if.then.131
	jmp	.LBB66_339
.LBB66_39:                              # %if.end.132
	movq	-1168(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	x_kill_gs_process
	xorl	%eax, %eax
	movq	-120(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	expose_frame
	jmp	.LBB66_341
.LBB66_40:                              # %if.end.133
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	568(%rcx), %rax
	jne	.LBB66_42
# BB#41:                                # %if.then.138
	leaq	-88(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	x_scroll_bar_to_input_event
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
	jmp	.LBB66_341
.LBB66_42:                              # %if.else.140
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	576(%rcx), %rax
	jne	.LBB66_44
# BB#43:                                # %if.then.145
	leaq	-88(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	x_horizontal_scroll_bar_to_input_event
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
	jmp	.LBB66_341
.LBB66_44:                              # %if.end.147
	jmp	.LBB66_45
.LBB66_45:                              # %if.end.148
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	584(%rcx), %rax
	jne	.LBB66_50
# BB#46:                                # %if.then.153
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, -1172(%rbp)
	cmpl	$4, -1172(%rbp)
	je	.LBB66_48
# BB#47:                                # %lor.lhs.false.161
	cmpl	$5, -1172(%rbp)
	jne	.LBB66_49
.LBB66_48:                              # %if.then.164
	leaq	-88(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%rax, %rcx
	callq	x_detect_focus_change
.LBB66_49:                              # %if.end.166
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
	jmp	.LBB66_341
.LBB66_50:                              # %if.end.167
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	xft_settings_event
	movq	-112(%rbp), %rsi
	movq	%rsi, -120(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB66_52
# BB#51:                                # %if.then.169
	jmp	.LBB66_339
.LBB66_52:                              # %if.end.170
	leaq	-88(%rbp), %rax
	movq	-120(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	x_handle_dnd_message
	testb	$1, %al
	jne	.LBB66_53
	jmp	.LBB66_54
.LBB66_53:                              # %if.then.174
	movq	-24(%rbp), %rax
	movl	$2, (%rax)
.LBB66_54:                              # %if.end.175
	jmp	.LBB66_340
.LBB66_55:                              # %sw.bb.176
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	64(%rax), %rsi
	callq	x_display_set_last_user_time
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	x_handle_selection_notify
	jmp	.LBB66_340
.LBB66_56:                              # %sw.bb.178
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rsi
	callq	x_display_set_last_user_time
	movq	-16(%rbp), %rax
	movq	%rax, -1184(%rbp)
	movw	$11, -88(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-1184(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-1184(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB66_340
.LBB66_57:                              # %sw.bb.188
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	72(%rax), %rsi
	callq	x_display_set_last_user_time
	movq	-16(%rbp), %rax
	movq	%rax, -1192(%rbp)
	movw	$10, -88(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-1192(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-1192(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-1192(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-1192(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-1192(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB66_340
.LBB66_58:                              # %sw.bb.207
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rsi
	callq	x_display_set_last_user_time
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	callq	x_top_window_to_frame
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.LBB66_68
# BB#59:                                # %land.lhs.true.214
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	864(%rcx), %rax
	jne	.LBB66_68
# BB#60:                                # %if.then.218
	movq	-120(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	x_handle_net_wm_state
	andb	$1, %al
	movb	%al, -1193(%rbp)
	testb	$1, -1193(%rbp)
	je	.LBB66_63
# BB#61:                                # %land.lhs.true.223
	movq	-120(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$12, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB66_63
# BB#62:                                # %if.then.227
	movl	$1, %esi
	movq	-120(%rbp), %rdi
	callq	SET_FRAME_VISIBLE
	movl	$5, %esi
	movq	-120(%rbp), %rdi
	movq	208(%rdi), %rax
	andq	$-4097, %rax            # imm = 0xFFFFFFFFFFFFEFFF
	movq	%rax, 208(%rdi)
	movq	-120(%rbp), %rax
	movq	384(%rax), %rax
	movb	440(%rax), %cl
	andb	$-9, %cl
	orb	$8, %cl
	movb	%cl, 440(%rax)
	movl	-88(%rbp), %edx
	andl	$-65536, %edx           # imm = 0xFFFFFFFFFFFF0000
	orl	$16, %edx
	movl	%edx, -88(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -48(%rbp)
	jmp	.LBB66_67
.LBB66_63:                              # %if.else.243
	testb	$1, -1193(%rbp)
	jne	.LBB66_66
# BB#64:                                # %land.lhs.true.245
	movq	-120(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$12, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB66_66
# BB#65:                                # %if.then.251
	xorl	%esi, %esi
	movq	-120(%rbp), %rdi
	callq	SET_FRAME_VISIBLE
	movl	$5, %esi
	movq	-120(%rbp), %rdi
	movq	208(%rdi), %rax
	andq	$-4097, %rax            # imm = 0xFFFFFFFFFFFFEFFF
	orq	$4096, %rax             # imm = 0x1000
	movq	%rax, 208(%rdi)
	movl	-88(%rbp), %ecx
	andl	$-65536, %ecx           # imm = 0xFFFFFFFFFFFF0000
	orl	$15, %ecx
	movl	%ecx, -88(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -48(%rbp)
.LBB66_66:                              # %if.end.263
	jmp	.LBB66_67
.LBB66_67:                              # %if.end.264
	jmp	.LBB66_68
.LBB66_68:                              # %if.end.265
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	x_handle_property_notify
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	xft_settings_event
	jmp	.LBB66_339
.LBB66_69:                              # %sw.bb.267
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	callq	x_top_window_to_frame
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.LBB66_71
# BB#70:                                # %if.then.272
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	-120(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	%rax, 72(%rcx)
	movq	-120(%rbp), %rdi
	movq	-120(%rbp), %rax
	addq	$304, %rax              # imm = 0x130
	movq	-120(%rbp), %rcx
	addq	$308, %rcx              # imm = 0x134
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	x_real_positions
	movq	-120(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movl	$0, 772(%rax)
	movq	-120(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	$0, 832(%rax)
	movq	-120(%rbp), %rdi
	callq	x_set_frame_alpha
.LBB66_71:                              # %if.end.284
	jmp	.LBB66_339
.LBB66_72:                              # %sw.bb.285
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	callq	x_window_to_frame
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.LBB66_77
# BB#73:                                # %if.then.290
	movq	-120(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$10, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB66_75
# BB#74:                                # %if.then.296
	movl	$1, %esi
	movq	-120(%rbp), %rdi
	callq	SET_FRAME_VISIBLE
	movq	-120(%rbp), %rdi
	movq	208(%rdi), %rax
	andq	$-4097, %rax            # imm = 0xFFFFFFFFFFFFEFFF
	movq	%rax, 208(%rdi)
	movq	-120(%rbp), %rax
	movq	384(%rax), %rax
	movb	440(%rax), %cl
	andb	$-9, %cl
	orb	$8, %cl
	movb	%cl, 440(%rax)
	movb	$1, frame_garbaged
	movq	-120(%rbp), %rdi
	callq	fset_redisplay
	movq	-120(%rbp), %rax
	movq	208(%rax), %rdi
	andq	$-8193, %rdi            # imm = 0xFFFFFFFFFFFFDFFF
	orq	$8192, %rdi             # imm = 0x2000
	movq	%rdi, 208(%rax)
	jmp	.LBB66_76
.LBB66_75:                              # %if.else.309
	movq	-120(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	40(%rax), %esi
	movq	-16(%rbp), %rax
	movl	44(%rax), %edx
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	52(%rax), %r8d
	callq	x_clear_area
	movq	-120(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	40(%rax), %esi
	movq	-16(%rbp), %rax
	movl	44(%rax), %edx
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	52(%rax), %r8d
	callq	expose_frame
.LBB66_76:                              # %if.end.323
	jmp	.LBB66_78
.LBB66_77:                              # %if.else.324
	jmp	.LBB66_339
.LBB66_78:                              # %if.end.325
	jmp	.LBB66_340
.LBB66_79:                              # %sw.bb.326
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	callq	x_window_to_frame
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.LBB66_81
# BB#80:                                # %if.then.330
	movq	-120(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	40(%rax), %esi
	movq	-16(%rbp), %rax
	movl	44(%rax), %edx
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	52(%rax), %r8d
	callq	expose_frame
.LBB66_81:                              # %if.end.339
	jmp	.LBB66_340
.LBB66_82:                              # %sw.bb.340
	jmp	.LBB66_340
.LBB66_83:                              # %sw.bb.341
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	tip_window, %rax
	jne	.LBB66_85
# BB#84:                                # %if.then.345
	movq	$0, tip_window
	movq	-8(%rbp), %rdi
	callq	x_redo_mouse_highlight
.LBB66_85:                              # %if.end.346
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	callq	x_top_window_to_frame
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.LBB66_90
# BB#86:                                # %if.then.352
	xorl	%esi, %esi
	movq	-120(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$10, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	setne	%dl
	andb	$1, %dl
	movb	%dl, -1194(%rbp)
	movq	-120(%rbp), %rdi
	callq	SET_FRAME_VISIBLE
	testb	$1, -1194(%rbp)
	jne	.LBB66_88
# BB#87:                                # %lor.lhs.false.363
	movq	-120(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$12, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB66_89
.LBB66_88:                              # %if.then.370
	movl	$5, %esi
	movq	-120(%rbp), %rax
	movq	208(%rax), %rcx
	andq	$-4097, %rcx            # imm = 0xFFFFFFFFFFFFEFFF
	orq	$4096, %rcx             # imm = 0x1000
	movq	%rcx, 208(%rax)
	movl	-88(%rbp), %edx
	andl	$-65536, %edx           # imm = 0xFFFFFFFFFFFF0000
	orl	$15, %edx
	movl	%edx, -88(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -48(%rbp)
.LBB66_89:                              # %if.end.382
	jmp	.LBB66_90
.LBB66_90:                              # %if.end.383
	jmp	.LBB66_339
.LBB66_91:                              # %sw.bb.384
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	callq	x_top_window_to_frame
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.LBB66_101
# BB#92:                                # %if.then.389
	movq	-120(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$12, %rax
	andq	$1, %rax
	movb	%al, %cl
	andb	$1, %cl
	movb	%cl, -1195(%rbp)
	movq	-120(%rbp), %rax
	movq	384(%rax), %rax
	movb	440(%rax), %cl
	shrb	$3, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB66_94
# BB#93:                                # %if.then.404
	movq	-120(%rbp), %rdi
	callq	x_check_fullscreen
.LBB66_94:                              # %if.end.405
	movl	$1, %esi
	movq	-120(%rbp), %rdi
	callq	SET_FRAME_VISIBLE
	movq	-120(%rbp), %rdi
	movq	208(%rdi), %rax
	andq	$-4097, %rax            # imm = 0xFFFFFFFFFFFFEFFF
	movq	%rax, 208(%rdi)
	movq	-120(%rbp), %rax
	movq	384(%rax), %rax
	movb	440(%rax), %cl
	andb	$-9, %cl
	orb	$8, %cl
	movb	%cl, 440(%rax)
	testb	$1, -1195(%rbp)
	je	.LBB66_96
# BB#95:                                # %if.then.416
	movl	$5, %esi
	movl	-88(%rbp), %eax
	andl	$-65536, %eax           # imm = 0xFFFFFFFFFFFF0000
	orl	$16, %eax
	movl	%eax, -88(%rbp)
	movq	-120(%rbp), %rcx
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movq	%rax, -48(%rbp)
	jmp	.LBB66_100
.LBB66_96:                              # %if.else.424
	xorl	%edi, %edi
	movq	Vframe_list, %rax
	movq	%rax, -1992(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1992(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB66_99
# BB#97:                                # %land.lhs.true.428
	xorl	%edi, %edi
	movq	Vframe_list, %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -2000(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2000(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB66_99
# BB#98:                                # %if.then.433
	callq	record_asynch_buffer_change
.LBB66_99:                              # %if.end.434
	jmp	.LBB66_100
.LBB66_100:                             # %if.end.435
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	-120(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	xg_frame_resized
.LBB66_101:                             # %if.end.436
	jmp	.LBB66_339
.LBB66_102:                             # %sw.bb.437
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	56(%rax), %rsi
	callq	x_display_set_last_user_time
	movq	$0, ignore_next_mouse_click_timeout
	callq	popup_activated
	cmpl	$0, %eax
	je	.LBB66_104
# BB#103:                               # %if.then.441
	jmp	.LBB66_339
.LBB66_104:                             # %if.end.442
	movq	-112(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-744(%rbp), %rax
	movb	64(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB66_107
# BB#105:                               # %land.lhs.true.447
	movq	globals+1616, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB66_107
# BB#106:                               # %if.then.452
	movq	-744(%rbp), %rdi
	callq	clear_mouse_face
	movq	-744(%rbp), %rdi
	movb	64(%rdi), %cl
	andb	$-5, %cl
	orb	$4, %cl
	movb	%cl, 64(%rdi)
	movb	%al, -2001(%rbp)        # 1-byte Spill
.LBB66_107:                             # %if.end.458
	cmpq	$0, -120(%rbp)
	je	.LBB66_212
# BB#108:                               # %if.then.461
	movl	$606, %edi              # imm = 0x25E
	leaq	-1744(%rbp), %rax
	movq	%rax, -1752(%rbp)
	movl	$513, -1756(%rbp)       # imm = 0x201
	callq	builtin_lisp_symbol
	movl	$96, %edi
	movl	%edi, %edx
	leaq	-1872(%rbp), %rcx
	movq	%rax, -1768(%rbp)
	movq	-16(%rbp), %rax
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	memcpy
	movq	-24(%rbp), %rax
	movl	$2, (%rax)
	movq	-120(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rdi
	movq	globals+3096, %rsi
	callq	x_emacs_to_x_modifiers
	orl	-1792(%rbp), %eax
	movl	%eax, -1792(%rbp)
	movl	-1792(%rbp), %eax
	movl	%eax, -1760(%rbp)
	movl	-1792(%rbp), %eax
	andl	$-5, %eax
	movl	%eax, -1792(%rbp)
	movq	-8(%rbp), %rcx
	movl	304(%rcx), %eax
	movq	-8(%rbp), %rcx
	orl	316(%rcx), %eax
	movq	-8(%rbp), %rcx
	orl	320(%rcx), %eax
	movq	-8(%rbp), %rcx
	orl	312(%rcx), %eax
	xorl	$-1, %eax
	andl	-1792(%rbp), %eax
	movl	%eax, -1792(%rbp)
	movl	-1760(%rbp), %eax
	movq	-8(%rbp), %rcx
	andl	304(%rcx), %eax
	cmpl	$0, %eax
	je	.LBB66_110
# BB#109:                               # %if.then.480
	movabsq	$handle_one_xevent.compose_status, %rax
	xorl	%esi, %esi
	movl	$16, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	memset
.LBB66_110:                             # %if.end.481
	movq	-120(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 448(%rax)
	je	.LBB66_123
# BB#111:                               # %if.then.486
	leaq	-1872(%rbp), %rsi
	leaq	-1208(%rbp), %r8
	leaq	-1876(%rbp), %r9
	movq	globals+1344, %rax
	movq	%rax, -1768(%rbp)
	movq	-120(%rbp), %rax
	movq	384(%rax), %rax
	movq	448(%rax), %rdi
	movq	-1752(%rbp), %rdx
	movl	-1756(%rbp), %ecx
	callq	XmbLookupString
	movslq	%eax, %rdx
	movq	%rdx, -104(%rbp)
	cmpl	$-1, -1876(%rbp)
	jne	.LBB66_113
# BB#112:                               # %if.then.494
	leaq	-1872(%rbp), %rsi
	leaq	-1208(%rbp), %r8
	leaq	-1876(%rbp), %r9
	movl	-104(%rbp), %eax
	incl	%eax
	movl	%eax, -1756(%rbp)
	movslq	-1756(%rbp), %rcx
	addq	$15, %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rdx, -1752(%rbp)
	movq	-120(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	448(%rcx), %rdi
	movq	-1752(%rbp), %rdx
	movl	-1756(%rbp), %ecx
	callq	XmbLookupString
	movslq	%eax, %rdx
	movq	%rdx, -104(%rbp)
.LBB66_113:                             # %if.end.502
	cmpl	$1, -1876(%rbp)
	jne	.LBB66_115
# BB#114:                               # %if.then.505
	jmp	.LBB66_340
.LBB66_115:                             # %if.else.506
	cmpl	$2, -1876(%rbp)
	jne	.LBB66_117
# BB#116:                               # %if.then.509
	movq	$0, -1208(%rbp)
	movl	$0, -1760(%rbp)
	jmp	.LBB66_121
.LBB66_117:                             # %if.else.510
	cmpl	$3, -1876(%rbp)
	je	.LBB66_120
# BB#118:                               # %land.lhs.true.513
	cmpl	$4, -1876(%rbp)
	je	.LBB66_120
# BB#119:                               # %if.then.516
	callq	emacs_abort
.LBB66_120:                             # %if.end.517
	jmp	.LBB66_121
.LBB66_121:                             # %if.end.518
	jmp	.LBB66_122
.LBB66_122:                             # %if.end.519
	jmp	.LBB66_124
.LBB66_123:                             # %if.else.520
	leaq	-1872(%rbp), %rdi
	leaq	-1208(%rbp), %rcx
	movabsq	$handle_one_xevent.compose_status, %r8
	movq	-1752(%rbp), %rsi
	movl	-1756(%rbp), %edx
	callq	XLookupString
	movslq	%eax, %rcx
	movq	%rcx, -104(%rbp)
.LBB66_124:                             # %if.end.523
	cmpl	$0, handle_one_xevent.compose_status+8
	jle	.LBB66_127
# BB#125:                               # %land.lhs.true.526
	cmpq	$0, -104(%rbp)
	jne	.LBB66_127
# BB#126:                               # %if.then.529
	jmp	.LBB66_340
.LBB66_127:                             # %if.end.530
	movl	$5, %esi
	movabsq	$handle_one_xevent.compose_status, %rax
	xorl	%ecx, %ecx
	movl	$16, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	movl	%esi, -2008(%rbp)       # 4-byte Spill
	movl	%ecx, %esi
	callq	memset
	movq	-1208(%rbp), %rax
	movq	%rax, -1216(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	movl	-2008(%rbp), %esi       # 4-byte Reload
	callq	make_lisp_ptr
	movq	%rax, -48(%rbp)
	movq	-120(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rdi
	movl	-1760(%rbp), %esi
	callq	x_x_to_emacs_modifiers
	movl	%eax, -80(%rbp)
	movq	-1816(%rbp), %rdx
	movq	%rdx, -56(%rbp)
	cmpq	$32, -1208(%rbp)
	jb	.LBB66_130
# BB#128:                               # %land.lhs.true.544
	cmpq	$128, -1208(%rbp)
	jae	.LBB66_130
# BB#129:                               # %if.then.547
	movl	-88(%rbp), %eax
	andl	$-65536, %eax           # imm = 0xFFFFFFFFFFFF0000
	orl	$1, %eax
	movl	%eax, -88(%rbp)
	movq	-1208(%rbp), %rcx
	movl	%ecx, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB66_213
.LBB66_130:                             # %if.end.554
	cmpq	$16777216, -1208(%rbp)  # imm = 0x1000000
	jb	.LBB66_136
# BB#131:                               # %land.lhs.true.557
	cmpq	$17891327, -1208(%rbp)  # imm = 0x110FFFF
	ja	.LBB66_136
# BB#132:                               # %if.then.560
	cmpq	$16777344, -1208(%rbp)  # imm = 0x1000080
	jae	.LBB66_134
# BB#133:                               # %if.then.563
	movl	-88(%rbp), %eax
	andl	$-65536, %eax           # imm = 0xFFFFFFFFFFFF0000
	orl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB66_135
.LBB66_134:                             # %if.else.568
	movl	-88(%rbp), %eax
	andl	$-65536, %eax           # imm = 0xFFFFFFFFFFFF0000
	orl	$2, %eax
	movl	%eax, -88(%rbp)
.LBB66_135:                             # %if.end.573
	movq	-1208(%rbp), %rax
	andq	$16777215, %rax         # imm = 0xFFFFFF
	movl	%eax, %ecx
	movl	%ecx, -84(%rbp)
	jmp	.LBB66_213
.LBB66_136:                             # %if.end.578
	movq	globals+2776, %rdi
	callq	HASH_TABLE_P
	testb	$1, %al
	jne	.LBB66_137
	jmp	.LBB66_139
.LBB66_137:                             # %land.lhs.true.581
	xorl	%edi, %edi
	movq	-1208(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	globals+2776, %rsi
	movq	%rsi, -2016(%rbp)       # 8-byte Spill
	movq	%rax, -2024(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2024(%rbp), %rdi       # 8-byte Reload
	movq	-2016(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	Fgethash
	movq	%rax, -1776(%rbp)
	movq	-1776(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB66_138
	jmp	.LBB66_139
.LBB66_138:                             # %if.then.587
	movl	$2, %eax
	movl	$1, %ecx
	movq	-1776(%rbp), %rdx
	sarq	$2, %rdx
	addq	$0, %rdx
	cmpq	$256, %rdx              # imm = 0x100
	cmovbl	%ecx, %eax
	movl	-88(%rbp), %ecx
	andl	$65535, %eax            # imm = 0xFFFF
	andl	$-65536, %ecx           # imm = 0xFFFFFFFFFFFF0000
	orl	%eax, %ecx
	movl	%ecx, -88(%rbp)
	movq	-1776(%rbp), %rdx
	sarq	$2, %rdx
	movl	%edx, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB66_213
.LBB66_139:                             # %if.end.600
	cmpq	$65288, -1208(%rbp)     # imm = 0xFF08
	jb	.LBB66_141
# BB#140:                               # %land.lhs.true.603
	cmpq	$65307, -1208(%rbp)     # imm = 0xFF1B
	jbe	.LBB66_167
.LBB66_141:                             # %lor.lhs.false.606
	cmpq	$65535, -1208(%rbp)     # imm = 0xFFFF
	je	.LBB66_167
# BB#142:                               # %lor.lhs.false.609
	cmpq	$65056, -1208(%rbp)     # imm = 0xFE20
	jb	.LBB66_144
# BB#143:                               # %land.lhs.true.612
	cmpq	$65076, -1208(%rbp)     # imm = 0xFE34
	jbe	.LBB66_167
.LBB66_144:                             # %lor.lhs.false.615
	cmpq	$65360, -1208(%rbp)     # imm = 0xFF50
	jb	.LBB66_146
# BB#145:                               # %land.lhs.true.618
	cmpq	$65376, -1208(%rbp)     # imm = 0xFF60
	jb	.LBB66_167
.LBB66_146:                             # %lor.lhs.false.621
	cmpq	$65376, -1208(%rbp)     # imm = 0xFF60
	jb	.LBB66_148
# BB#147:                               # %land.lhs.true.624
	cmpq	$65387, -1208(%rbp)     # imm = 0xFF6B
	jbe	.LBB66_167
.LBB66_148:                             # %lor.lhs.false.627
	cmpq	$65106, -1216(%rbp)     # imm = 0xFE52
	je	.LBB66_167
# BB#149:                               # %lor.lhs.false.630
	cmpq	$65104, -1216(%rbp)     # imm = 0xFE50
	je	.LBB66_167
# BB#150:                               # %lor.lhs.false.633
	cmpq	$65107, -1216(%rbp)     # imm = 0xFE53
	je	.LBB66_167
# BB#151:                               # %lor.lhs.false.636
	cmpq	$65111, -1216(%rbp)     # imm = 0xFE57
	je	.LBB66_167
# BB#152:                               # %lor.lhs.false.639
	cmpq	$65108, -1216(%rbp)     # imm = 0xFE54
	je	.LBB66_167
# BB#153:                               # %lor.lhs.false.642
	cmpq	$65105, -1216(%rbp)     # imm = 0xFE51
	je	.LBB66_167
# BB#154:                               # %lor.lhs.false.645
	cmpq	$65115, -1216(%rbp)     # imm = 0xFE5B
	je	.LBB66_167
# BB#155:                               # %lor.lhs.false.648
	cmpq	$65109, -1216(%rbp)     # imm = 0xFE55
	je	.LBB66_167
# BB#156:                               # %lor.lhs.false.651
	cmpq	$65116, -1216(%rbp)     # imm = 0xFE5C
	je	.LBB66_167
# BB#157:                               # %lor.lhs.false.654
	cmpq	$65114, -1216(%rbp)     # imm = 0xFE5A
	je	.LBB66_167
# BB#158:                               # %lor.lhs.false.657
	cmpq	$65113, -1216(%rbp)     # imm = 0xFE59
	je	.LBB66_167
# BB#159:                               # %lor.lhs.false.660
	cmpq	$65110, -1216(%rbp)     # imm = 0xFE56
	je	.LBB66_167
# BB#160:                               # %lor.lhs.false.663
	cmpq	$65408, -1208(%rbp)     # imm = 0xFF80
	jb	.LBB66_162
# BB#161:                               # %land.lhs.true.666
	cmpq	$65469, -1208(%rbp)     # imm = 0xFFBD
	jbe	.LBB66_167
.LBB66_162:                             # %lor.lhs.false.669
	cmpq	$65470, -1208(%rbp)     # imm = 0xFFBE
	jb	.LBB66_164
# BB#163:                               # %land.lhs.true.672
	cmpq	$65504, -1208(%rbp)     # imm = 0xFFE0
	jbe	.LBB66_167
.LBB66_164:                             # %lor.lhs.false.675
	movq	-1216(%rbp), %rax
	andq	$268435456, %rax        # imm = 0x10000000
	cmpq	$0, %rax
	jne	.LBB66_167
# BB#165:                               # %lor.lhs.false.678
	cmpq	$0, -1208(%rbp)
	je	.LBB66_176
# BB#166:                               # %land.lhs.true.681
	cmpq	$0, -104(%rbp)
	jne	.LBB66_176
.LBB66_167:                             # %land.lhs.true.684
	cmpq	$65505, -1216(%rbp)     # imm = 0xFFE1
	jb	.LBB66_169
# BB#168:                               # %land.lhs.true.687
	cmpq	$65518, -1216(%rbp)     # imm = 0xFFEE
	jbe	.LBB66_176
.LBB66_169:                             # %lor.lhs.false.690
	cmpq	$65025, -1216(%rbp)     # imm = 0xFE01
	jb	.LBB66_171
# BB#170:                               # %land.lhs.true.693
	cmpq	$65043, -1216(%rbp)     # imm = 0xFE13
	jbe	.LBB66_176
.LBB66_171:                             # %lor.lhs.false.696
	cmpq	$65406, -1216(%rbp)     # imm = 0xFF7E
	je	.LBB66_176
# BB#172:                               # %lor.lhs.false.699
	cmpq	$65407, -1216(%rbp)     # imm = 0xFF7F
	je	.LBB66_176
# BB#173:                               # %lor.lhs.false.702
	movl	$65025, %eax            # imm = 0xFE01
	movl	%eax, %ecx
	cmpq	-1216(%rbp), %rcx
	ja	.LBB66_175
# BB#174:                               # %land.lhs.true.705
	cmpq	$65039, -1216(%rbp)     # imm = 0xFE0F
	jbe	.LBB66_176
.LBB66_175:                             # %if.then.708
	movl	-88(%rbp), %eax
	andl	$-65536, %eax           # imm = 0xFFFFFFFFFFFF0000
	orl	$3, %eax
	movl	%eax, -88(%rbp)
	movq	-1208(%rbp), %rcx
	movl	%ecx, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB66_213
.LBB66_176:                             # %if.end.716
	movq	$0, -1888(%rbp)
	movl	$0, -1892(%rbp)
.LBB66_177:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-1888(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jge	.LBB66_184
# BB#178:                               # %for.body
                                        #   in Loop: Header=BB66_177 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB66_179
	jmp	.LBB66_180
.LBB66_179:                             # %cond.true.719
                                        #   in Loop: Header=BB66_177 Depth=1
	movq	-1888(%rbp), %rax
	movq	-1752(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB66_181
	jmp	.LBB66_182
.LBB66_180:                             # %cond.false.725
                                        #   in Loop: Header=BB66_177 Depth=1
	movq	-1888(%rbp), %rax
	movq	-1752(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB66_182
.LBB66_181:                             # %if.then.731
                                        #   in Loop: Header=BB66_177 Depth=1
	movl	-1892(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1892(%rbp)
.LBB66_182:                             # %if.end.732
                                        #   in Loop: Header=BB66_177 Depth=1
	jmp	.LBB66_183
.LBB66_183:                             # %for.inc
                                        #   in Loop: Header=BB66_177 Depth=1
	movq	-1888(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1888(%rbp)
	jmp	.LBB66_177
.LBB66_184:                             # %for.end
	movslq	-1892(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jge	.LBB66_193
# BB#185:                               # %if.then.737
	leaq	-736(%rbp), %rsi
	movq	-1768(%rbp), %rdi
	callq	setup_coding_system
	movl	-728(%rbp), %eax
	andl	$-524289, %eax          # imm = 0xFFFFFFFFFFF7FFFF
	movl	%eax, -728(%rbp)
	movl	-728(%rbp), %eax
	andl	$-1048577, %eax         # imm = 0xFFFFFFFFFFEFFFFF
	orl	$1048576, %eax          # imm = 0x100000
	movl	%eax, -728(%rbp)
	movl	-728(%rbp), %eax
	andl	$16383, %eax            # imm = 0x3FFF
	andl	$-256, %eax
	movl	-728(%rbp), %ecx
	andl	$16383, %eax            # imm = 0x3FFF
	andl	$-16384, %ecx           # imm = 0xFFFFFFFFFFFFC000
	orl	%eax, %ecx
	movl	%ecx, -728(%rbp)
# BB#186:                               # %do.body
	movl	$5, %eax
	movl	%eax, %ecx
	movq	-104(%rbp), %rdx
	movq	-1136(%rbp), %rsi
	shrq	$0, %rsi
	movq	%rsi, %rax
	xorl	%edi, %edi
	movq	%rdx, -2032(%rbp)       # 8-byte Spill
	movl	%edi, %edx
	divq	%rcx
	movq	-2032(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	ja	.LBB66_188
# BB#187:                               # %if.then.753
	movq	-104(%rbp), %rax
	leaq	(%rax,%rax,4), %rax
	movq	-1136(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -1136(%rbp)
	movq	-104(%rbp), %rax
	leaq	15(%rax,%rax,4), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -240(%rbp)
	jmp	.LBB66_189
.LBB66_188:                             # %if.else.756
	movl	$5, %eax
	movl	%eax, %esi
	movq	-104(%rbp), %rdi
	callq	xnmalloc
	movabsq	$xfree, %rdi
	movq	%rax, -240(%rbp)
	movb	$1, -1145(%rbp)
	movq	-240(%rbp), %rsi
	callq	record_unwind_protect_ptr
.LBB66_189:                             # %if.end.760
	jmp	.LBB66_190
.LBB66_190:                             # %do.end
	imulq	$5, -104(%rbp), %rax
	movq	%rax, -256(%rbp)
	movl	-728(%rbp), %ecx
	shrl	$14, %ecx
	andl	$31, %ecx
	orl	$1, %ecx
	movl	-728(%rbp), %edx
	andl	$31, %ecx
	shll	$14, %ecx
	andl	$-507905, %edx          # imm = 0xFFFFFFFFFFF83FFF
	orl	%ecx, %edx
	movl	%edx, -728(%rbp)
# BB#191:                               # %do.body.770
	xorl	%edi, %edi
	movq	-1752(%rbp), %rax
	movq	%rax, -280(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -296(%rbp)
	movq	%rax, -304(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-104(%rbp), %r8
	movq	-104(%rbp), %r9
	movq	%rax, -2040(%rbp)       # 8-byte Spill
	movq	%r9, -2048(%rbp)        # 8-byte Spill
	movq	%r8, -2056(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	leaq	-736(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	subq	$16, %rsp
	movq	-2040(%rbp), %rsi       # 8-byte Reload
	movq	%r8, %rdx
	movq	%r8, %rcx
	movq	-2056(%rbp), %r8        # 8-byte Reload
	movq	-2048(%rbp), %r9        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	decode_coding_object
	addq	$16, %rsp
# BB#192:                               # %do.end.773
	movq	-352(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-344(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -1892(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -1752(%rbp)
.LBB66_193:                             # %if.end.776
	movq	$0, -1888(%rbp)
.LBB66_194:                             # %for.cond.777
                                        # =>This Inner Loop Header: Depth=1
	movq	-1888(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jge	.LBB66_209
# BB#195:                               # %for.body.780
                                        #   in Loop: Header=BB66_194 Depth=1
	movslq	-1892(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB66_197
# BB#196:                               # %if.then.784
                                        #   in Loop: Header=BB66_194 Depth=1
	movq	-1888(%rbp), %rax
	movq	-1752(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -1900(%rbp)
	movl	$1, -1896(%rbp)
	jmp	.LBB66_207
.LBB66_197:                             # %if.else.787
                                        #   in Loop: Header=BB66_194 Depth=1
	movq	-1752(%rbp), %rax
	movq	-1888(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB66_199
# BB#198:                               # %cond.true.792
                                        #   in Loop: Header=BB66_194 Depth=1
	movl	$1, -1896(%rbp)
	movq	-1752(%rbp), %rax
	movq	-1888(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	movl	%edx, -2060(%rbp)       # 4-byte Spill
	jmp	.LBB66_206
.LBB66_199:                             # %cond.false.796
                                        #   in Loop: Header=BB66_194 Depth=1
	movq	-1752(%rbp), %rax
	movq	-1888(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$32, %edx
	cmpl	$0, %edx
	jne	.LBB66_201
# BB#200:                               # %cond.true.802
                                        #   in Loop: Header=BB66_194 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -1896(%rbp)
	movq	-1752(%rbp), %rdx
	movq	-1888(%rbp), %rsi
	movzbl	(%rdx,%rsi), %edi
	andl	$31, %edi
	shll	$6, %edi
	movq	-1752(%rbp), %rdx
	movq	-1888(%rbp), %rsi
	movzbl	1(%rdx,%rsi), %r8d
	andl	$63, %r8d
	orl	%r8d, %edi
	movq	-1752(%rbp), %rdx
	movq	-1888(%rbp), %rsi
	movzbl	(%rdx,%rsi), %r8d
	cmpl	$194, %r8d
	cmovll	%ecx, %eax
	addl	%eax, %edi
	movl	%edi, -2064(%rbp)       # 4-byte Spill
	jmp	.LBB66_205
.LBB66_201:                             # %cond.false.820
                                        #   in Loop: Header=BB66_194 Depth=1
	movq	-1752(%rbp), %rax
	movq	-1888(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$16, %edx
	cmpl	$0, %edx
	jne	.LBB66_203
# BB#202:                               # %cond.true.826
                                        #   in Loop: Header=BB66_194 Depth=1
	movl	$3, -1896(%rbp)
	movq	-1752(%rbp), %rax
	movq	-1888(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$15, %edx
	shll	$12, %edx
	movq	-1752(%rbp), %rax
	movq	-1888(%rbp), %rcx
	movzbl	1(%rax,%rcx), %esi
	andl	$63, %esi
	shll	$6, %esi
	orl	%esi, %edx
	movq	-1752(%rbp), %rax
	movq	-1888(%rbp), %rcx
	movzbl	2(%rax,%rcx), %esi
	andl	$63, %esi
	orl	%esi, %edx
	movl	%edx, -2068(%rbp)       # 4-byte Spill
	jmp	.LBB66_204
.LBB66_203:                             # %cond.false.843
                                        #   in Loop: Header=BB66_194 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-1896(%rbp), %rdx
	movq	-1752(%rbp), %rcx
	addq	-1888(%rbp), %rcx
	movq	%rcx, %rdi
	callq	string_char
	movl	%eax, -2068(%rbp)       # 4-byte Spill
.LBB66_204:                             # %cond.end.846
                                        #   in Loop: Header=BB66_194 Depth=1
	movl	-2068(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2064(%rbp)       # 4-byte Spill
.LBB66_205:                             # %cond.end.848
                                        #   in Loop: Header=BB66_194 Depth=1
	movl	-2064(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2060(%rbp)       # 4-byte Spill
.LBB66_206:                             # %cond.end.850
                                        #   in Loop: Header=BB66_194 Depth=1
	movl	-2060(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1900(%rbp)
.LBB66_207:                             # %if.end.852
                                        #   in Loop: Header=BB66_194 Depth=1
	leaq	-88(%rbp), %rdi
	movl	$2, %eax
	movl	$1, %ecx
	movl	-1900(%rbp), %edx
	addl	$0, %edx
	cmpl	$256, %edx              # imm = 0x100
	cmovbl	%ecx, %eax
	movl	-88(%rbp), %ecx
	andl	$65535, %eax            # imm = 0xFFFF
	andl	$-65536, %ecx           # imm = 0xFFFFFFFFFFFF0000
	orl	%eax, %ecx
	movl	%ecx, -88(%rbp)
	movl	-1900(%rbp), %eax
	movl	%eax, -84(%rbp)
	movq	-32(%rbp), %rsi
	callq	kbd_buffer_store_buffered_event
# BB#208:                               # %for.inc.864
                                        #   in Loop: Header=BB66_194 Depth=1
	movslq	-1896(%rbp), %rax
	addq	-1888(%rbp), %rax
	movq	%rax, -1888(%rbp)
	jmp	.LBB66_194
.LBB66_209:                             # %for.end.867
	movl	-1892(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	-88(%rbp), %eax
	andl	$-65536, %eax           # imm = 0xFFFFFFFFFFFF0000
	movl	%eax, -88(%rbp)
	cmpq	$0, -1208(%rbp)
	jne	.LBB66_211
# BB#210:                               # %if.then.874
	jmp	.LBB66_340
.LBB66_211:                             # %if.end.875
	movl	$96, %eax
	movl	%eax, %edx
	leaq	-1872(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	memcpy
.LBB66_212:                             # %if.end.877
	jmp	.LBB66_213
.LBB66_213:                             # %done_keysym
	jmp	.LBB66_340
.LBB66_214:                             # %sw.bb.878
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	56(%rax), %rsi
	callq	x_display_set_last_user_time
	jmp	.LBB66_340
.LBB66_215:                             # %sw.bb.881
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	56(%rax), %rsi
	callq	x_display_set_last_user_time
	leaq	-88(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%rax, %rcx
	callq	x_detect_focus_change
	movq	-112(%rbp), %rax
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.LBB66_218
# BB#216:                               # %land.lhs.true.885
	testb	$1, globals+3446
	je	.LBB66_218
# BB#217:                               # %if.then.888
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	addq	$200, %rax
	movq	%rax, ignore_next_mouse_click_timeout
.LBB66_218:                             # %if.end.891
	cmpq	$0, -120(%rbp)
	je	.LBB66_221
# BB#219:                               # %land.lhs.true.893
	movq	-120(%rbp), %rax
	movq	384(%rax), %rax
	movb	440(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB66_221
# BB#220:                               # %if.then.899
	movq	-120(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	note_mouse_movement
	movb	%al, -2069(%rbp)        # 1-byte Spill
.LBB66_221:                             # %if.end.902
	cmpq	$0, -120(%rbp)
	jne	.LBB66_224
# BB#222:                               # %land.lhs.true.904
	movq	-8(%rbp), %rax
	cmpq	$0, 640(%rax)
	je	.LBB66_224
# BB#223:                               # %if.then.906
	movq	-8(%rbp), %rax
	movq	640(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	note_mouse_movement
	movb	%al, -2070(%rbp)        # 1-byte Spill
.LBB66_224:                             # %if.end.910
	jmp	.LBB66_339
.LBB66_225:                             # %sw.bb.911
	leaq	-88(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%rax, %rcx
	callq	x_detect_focus_change
	jmp	.LBB66_339
.LBB66_226:                             # %sw.bb.913
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	56(%rax), %rsi
	callq	x_display_set_last_user_time
	leaq	-88(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%rax, %rcx
	callq	x_detect_focus_change
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	%eax, %r8d
	movl	%r8d, %esi
	callq	x_top_window_to_frame
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.LBB66_232
# BB#227:                               # %if.then.922
	movq	-120(%rbp), %rax
	movq	-744(%rbp), %rcx
	cmpq	48(%rcx), %rax
	jne	.LBB66_229
# BB#228:                               # %if.then.925
	movq	-744(%rbp), %rdi
	callq	clear_mouse_face
	movq	-744(%rbp), %rdi
	movq	$0, 48(%rdi)
	movb	%al, -2071(%rbp)        # 1-byte Spill
.LBB66_229:                             # %if.end.928
	testb	$1, any_help_event_p
	je	.LBB66_231
# BB#230:                               # %if.then.930
	movl	$-1, -96(%rbp)
.LBB66_231:                             # %if.end.931
	jmp	.LBB66_235
.LBB66_232:                             # %if.else.932
	movq	-8(%rbp), %rax
	cmpq	$0, 640(%rax)
	je	.LBB66_234
# BB#233:                               # %if.then.935
	movq	-8(%rbp), %rax
	movq	640(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	note_mouse_movement
	movb	%al, -2072(%rbp)        # 1-byte Spill
.LBB66_234:                             # %if.end.939
	jmp	.LBB66_235
.LBB66_235:                             # %if.end.940
	jmp	.LBB66_339
.LBB66_236:                             # %sw.bb.941
	leaq	-88(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%rax, %rcx
	callq	x_detect_focus_change
	jmp	.LBB66_339
.LBB66_237:                             # %sw.bb.943
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	56(%rax), %rsi
	callq	x_display_set_last_user_time
	xorl	%edi, %edi
	movq	help_echo_string, %rax
	movq	%rax, previous_help_echo_string
	callq	builtin_lisp_symbol
	movq	%rax, help_echo_string
	movq	-8(%rbp), %rdi
	callq	x_mouse_grabbed
	testb	$1, %al
	jne	.LBB66_238
	jmp	.LBB66_239
.LBB66_238:                             # %cond.true.949
	movq	-8(%rbp), %rax
	movq	632(%rax), %rax
	movq	%rax, -2080(%rbp)       # 8-byte Spill
	jmp	.LBB66_240
.LBB66_239:                             # %cond.false.950
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	callq	x_window_to_frame
	movq	%rax, -2080(%rbp)       # 8-byte Spill
.LBB66_240:                             # %cond.end.955
	movq	-2080(%rbp), %rax       # 8-byte Reload
	movq	%rax, -120(%rbp)
	movq	-744(%rbp), %rax
	movb	64(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB66_242
# BB#241:                               # %if.then.962
	movq	-744(%rbp), %rax
	movb	64(%rax), %cl
	andb	$-5, %cl
	movb	%cl, 64(%rax)
	movq	-744(%rbp), %rdi
	callq	clear_mouse_face
	movb	%al, -2081(%rbp)        # 1-byte Spill
.LBB66_242:                             # %if.end.967
	cmpq	$0, -120(%rbp)
	je	.LBB66_245
# BB#243:                               # %land.lhs.true.969
	movq	-120(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	xg_event_is_for_scrollbar
	testb	$1, %al
	jne	.LBB66_244
	jmp	.LBB66_245
.LBB66_244:                             # %if.then.972
	movq	$0, -120(%rbp)
.LBB66_245:                             # %if.end.973
	cmpq	$0, -120(%rbp)
	je	.LBB66_258
# BB#246:                               # %if.then.975
	xorl	%edi, %edi
	movq	globals+1608, %rax
	movq	%rax, -2096(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2096(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB66_255
# BB#247:                               # %land.lhs.true.979
	callq	popup_activated
	cmpl	$0, %eax
	jne	.LBB66_255
# BB#248:                               # %if.then.982
	xorl	%eax, %eax
	movl	%eax, %ecx
	xorl	%r8d, %r8d
	movq	-120(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movl	64(%rdx), %esi
	movq	-16(%rbp), %rdx
	movl	68(%rdx), %edx
	callq	window_from_coordinates
	movq	%rax, -1912(%rbp)
	movq	-1912(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB66_249
	jmp	.LBB66_254
.LBB66_249:                             # %land.lhs.true.991
	movq	-1912(%rbp), %rax
	cmpq	handle_one_xevent.last_mouse_window, %rax
	je	.LBB66_254
# BB#250:                               # %land.lhs.true.994
	movq	-1912(%rbp), %rax
	cmpq	selected_window, %rax
	je	.LBB66_254
# BB#251:                               # %land.lhs.true.997
	testb	$1, globals+3380
	jne	.LBB66_253
# BB#252:                               # %lor.lhs.false.1000
	movq	-1912(%rbp), %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	movq	selected_window, %rdi
	movq	%rax, -2104(%rbp)       # 8-byte Spill
	callq	XWINDOW
	movq	-2104(%rbp), %rdi       # 8-byte Reload
	cmpq	8(%rax), %rdi
	jne	.LBB66_254
.LBB66_253:                             # %if.then.1006
	movl	-88(%rbp), %eax
	andl	$-65536, %eax           # imm = 0xFFFFFFFFFFFF0000
	orl	$24, %eax
	movl	%eax, -88(%rbp)
	movq	-1912(%rbp), %rcx
	movq	%rcx, -48(%rbp)
.LBB66_254:                             # %if.end.1013
	movq	-1912(%rbp), %rax
	movq	%rax, handle_one_xevent.last_mouse_window
.LBB66_255:                             # %if.end.1014
	movq	-120(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	note_mouse_movement
	testb	$1, %al
	jne	.LBB66_257
# BB#256:                               # %if.then.1017
	movq	previous_help_echo_string, %rax
	movq	%rax, help_echo_string
.LBB66_257:                             # %if.end.1018
	jmp	.LBB66_259
.LBB66_258:                             # %if.else.1019
	movq	-744(%rbp), %rdi
	callq	clear_mouse_face
	movb	%al, -2105(%rbp)        # 1-byte Spill
.LBB66_259:                             # %if.end.1021
	xorl	%edi, %edi
	movq	help_echo_string, %rax
	movq	%rax, -2120(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2120(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB66_261
# BB#260:                               # %lor.lhs.false.1025
	xorl	%edi, %edi
	movq	previous_help_echo_string, %rax
	movq	%rax, -2128(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2128(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB66_262
.LBB66_261:                             # %if.then.1029
	movl	$1, -96(%rbp)
.LBB66_262:                             # %if.end.1030
	jmp	.LBB66_339
.LBB66_263:                             # %sw.bb.1031
	movl	$192, %eax
	movl	%eax, %edx
	leaq	-936(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
.LBB66_264:                             # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XPending
	cmpl	$0, %eax
	je	.LBB66_272
# BB#265:                               # %while.body
                                        #   in Loop: Header=BB66_264 Depth=1
	leaq	-1128(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XNextEvent
	cmpl	$22, -1128(%rbp)
	movl	%eax, -2132(%rbp)       # 4-byte Spill
	jne	.LBB66_269
# BB#266:                               # %lor.lhs.false.1040
                                        #   in Loop: Header=BB66_264 Depth=1
	movq	-1088(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	40(%rcx), %rax
	jne	.LBB66_269
# BB#267:                               # %lor.lhs.false.1046
                                        #   in Loop: Header=BB66_264 Depth=1
	movl	-1072(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	56(%rcx), %eax
	jne	.LBB66_269
# BB#268:                               # %lor.lhs.false.1053
                                        #   in Loop: Header=BB66_264 Depth=1
	movl	-1068(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	60(%rcx), %eax
	je	.LBB66_270
.LBB66_269:                             # %if.then.1060
	leaq	-1128(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XPutBackEvent
	movl	%eax, -2136(%rbp)       # 4-byte Spill
	jmp	.LBB66_272
.LBB66_270:                             # %if.else.1063
                                        #   in Loop: Header=BB66_264 Depth=1
	movl	$192, %eax
	movl	%eax, %edx
	leaq	-1128(%rbp), %rcx
	leaq	-936(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	memcpy
# BB#271:                               # %if.end.1064
                                        #   in Loop: Header=BB66_264 Depth=1
	jmp	.LBB66_264
.LBB66_272:                             # %while.end
	movq	-8(%rbp), %rdi
	movq	-896(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	callq	x_top_window_to_frame
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB66_276
# BB#273:                               # %land.lhs.true.1070
	movq	-112(%rbp), %rax
	movq	%rax, -120(%rbp)
	cmpq	$0, %rax
	je	.LBB66_276
# BB#274:                               # %land.lhs.true.1072
	movq	-896(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	384(%rcx), %rcx
	cmpq	56(%rcx), %rax
	jne	.LBB66_276
# BB#275:                               # %if.then.1079
	movq	-120(%rbp), %rdi
	movl	-880(%rbp), %esi
	movl	-876(%rbp), %edx
	callq	xg_frame_resized
	movq	$0, -120(%rbp)
.LBB66_276:                             # %if.end.1084
	cmpq	$0, -120(%rbp)
	je	.LBB66_284
# BB#277:                               # %if.then.1086
	movq	-120(%rbp), %rdi
	movq	-896(%rbp), %rsi
	callq	x_net_wm_state
	movq	-120(%rbp), %rsi
	movq	384(%rsi), %rsi
	cmpq	$0, 80(%rsi)
	je	.LBB66_280
# BB#278:                               # %land.lhs.true.1092
	movq	-120(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_mapped
	cmpl	$0, %eax
	je	.LBB66_280
# BB#279:                               # %if.then.1098
	movq	-120(%rbp), %rdi
	movq	-120(%rbp), %rax
	addq	$304, %rax              # imm = 0x130
	movq	-120(%rbp), %rcx
	addq	$308, %rcx              # imm = 0x134
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	x_real_positions
.LBB66_280:                             # %if.end.1101
	movq	-120(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 448(%rax)
	je	.LBB66_283
# BB#281:                               # %land.lhs.true.1106
	movq	-120(%rbp), %rax
	movq	384(%rax), %rax
	movq	456(%rax), %rax
	andq	$256, %rax              # imm = 0x100
	cmpq	$0, %rax
	je	.LBB66_283
# BB#282:                               # %if.then.1111
	movq	-120(%rbp), %rdi
	callq	xic_set_statusarea
.LBB66_283:                             # %if.end.1112
	jmp	.LBB66_284
.LBB66_284:                             # %if.end.1113
	jmp	.LBB66_339
.LBB66_285:                             # %sw.bb.1114
	movabsq	$handle_one_xevent.compose_status, %rax
	xorl	%esi, %esi
	movl	$16, %ecx
	movl	%ecx, %edx
	movb	$0, -1913(%rbp)
	movq	%rax, %rdi
	callq	memset
	movq	-8(%rbp), %rax
	movq	$0, 640(%rax)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	56(%rax), %rsi
	callq	x_display_set_last_user_time
	movq	-8(%rbp), %rdi
	callq	x_mouse_grabbed
	testb	$1, %al
	jne	.LBB66_286
	jmp	.LBB66_287
.LBB66_286:                             # %cond.true.1119
	movq	-8(%rbp), %rax
	movq	632(%rax), %rax
	movq	%rax, -2144(%rbp)       # 8-byte Spill
	jmp	.LBB66_288
.LBB66_287:                             # %cond.false.1121
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	callq	x_window_to_frame
	movq	%rax, -2144(%rbp)       # 8-byte Spill
.LBB66_288:                             # %cond.end.1126
	movq	-2144(%rbp), %rax       # 8-byte Reload
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.LBB66_291
# BB#289:                               # %land.lhs.true.1129
	movq	-120(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	xg_event_is_for_scrollbar
	testb	$1, %al
	jne	.LBB66_290
	jmp	.LBB66_291
.LBB66_290:                             # %if.then.1132
	movq	$0, -120(%rbp)
.LBB66_291:                             # %if.end.1133
	cmpq	$0, -120(%rbp)
	je	.LBB66_307
# BB#292:                               # %if.then.1135
	testb	$1, -1913(%rbp)
	jne	.LBB66_304
# BB#293:                               # %if.then.1137
	callq	popup_activated
	cmpl	$0, %eax
	jne	.LBB66_303
# BB#294:                               # %if.then.1140
	cmpq	$0, ignore_next_mouse_click_timeout
	je	.LBB66_301
# BB#295:                               # %if.then.1142
	movq	-16(%rbp), %rax
	cmpl	$4, (%rax)
	jne	.LBB66_298
# BB#296:                               # %land.lhs.true.1146
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	cmpq	ignore_next_mouse_click_timeout, %rax
	jbe	.LBB66_298
# BB#297:                               # %if.then.1151
	leaq	-88(%rbp), %rax
	movq	$0, ignore_next_mouse_click_timeout
	movq	-16(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	construct_mouse_click
	movq	%rax, -2152(%rbp)       # 8-byte Spill
.LBB66_298:                             # %if.end.1155
	movq	-16(%rbp), %rax
	cmpl	$5, (%rax)
	jne	.LBB66_300
# BB#299:                               # %if.then.1159
	movq	$0, ignore_next_mouse_click_timeout
.LBB66_300:                             # %if.end.1160
	jmp	.LBB66_302
.LBB66_301:                             # %if.else.1161
	leaq	-88(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	construct_mouse_click
	movq	%rax, -2160(%rbp)       # 8-byte Spill
.LBB66_302:                             # %if.end.1165
	jmp	.LBB66_303
.LBB66_303:                             # %if.end.1166
	jmp	.LBB66_304
.LBB66_304:                             # %if.end.1167
	movq	-120(%rbp), %rax
	movq	384(%rax), %rax
	movb	440(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB66_306
# BB#305:                               # %if.then.1177
	movl	$3, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-120(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	56(%rsi), %rsi
	movq	%rcx, -2168(%rbp)       # 8-byte Spill
	movq	-2168(%rbp), %r8        # 8-byte Reload
	movq	-2168(%rbp), %r9        # 8-byte Reload
	callq	xembed_send_message
.LBB66_306:                             # %if.end.1180
	jmp	.LBB66_311
.LBB66_307:                             # %if.else.1181
	movl	$2, %edx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rsi
	callq	x_window_to_scroll_bar
	movq	%rax, -1928(%rbp)
	cmpq	$0, -1928(%rbp)
	je	.LBB66_310
# BB#308:                               # %land.lhs.true.1188
	movq	-16(%rbp), %rax
	movl	80(%rax), %ecx
	andl	$4, %ecx
	cmpl	$0, %ecx
	je	.LBB66_310
# BB#309:                               # %if.then.1193
	leaq	-88(%rbp), %rax
	movq	-1928(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rax, %rdx
	callq	x_scroll_bar_handle_click
	movq	-24(%rbp), %rax
	movl	$2, (%rax)
.LBB66_310:                             # %if.end.1195
	jmp	.LBB66_311
.LBB66_311:                             # %if.end.1196
	movq	-16(%rbp), %rax
	cmpl	$4, (%rax)
	jne	.LBB66_313
# BB#312:                               # %if.then.1200
	movl	$1, %eax
	movq	-16(%rbp), %rcx
	movl	84(%rcx), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movq	-8(%rbp), %rdx
	orl	92(%rdx), %eax
	movl	%eax, 92(%rdx)
	movq	-120(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, 632(%rsi)
	jmp	.LBB66_314
.LBB66_313:                             # %if.else.1205
	movl	$1, %eax
	movq	-16(%rbp), %rcx
	movl	84(%rcx), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	xorl	$-1, %eax
	movq	-8(%rbp), %rdx
	andl	92(%rdx), %eax
	movl	%eax, 92(%rdx)
.LBB66_314:                             # %if.end.1212
	cmpq	$0, -120(%rbp)
	je	.LBB66_316
# BB#315:                               # %if.then.1215
	movq	-120(%rbp), %rax
	movq	208(%rax), %rcx
	andq	$-1048577, %rcx         # imm = 0xFFFFFFFFFFEFFFFF
	movq	%rcx, 208(%rax)
.LBB66_316:                             # %if.end.1218
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	x_menubar_window_to_frame
	movq	%rax, -120(%rbp)
	callq	popup_activated
	cmpl	$0, %eax
	jne	.LBB66_328
# BB#317:                               # %land.lhs.true.1222
	movq	-16(%rbp), %rax
	cmpl	$3, 84(%rax)
	jae	.LBB66_328
# BB#318:                               # %land.lhs.true.1227
	cmpq	$0, -120(%rbp)
	je	.LBB66_328
# BB#319:                               # %land.lhs.true.1229
	movq	-16(%rbp), %rax
	cmpl	$4, (%rax)
	jne	.LBB66_328
# BB#320:                               # %land.lhs.true.1233
	movq	-16(%rbp), %rax
	cmpl	$0, 64(%rax)
	jl	.LBB66_328
# BB#321:                               # %land.lhs.true.1238
	movq	-16(%rbp), %rax
	movl	64(%rax), %ecx
	movq	-120(%rbp), %rax
	cmpl	312(%rax), %ecx
	jge	.LBB66_328
# BB#322:                               # %land.lhs.true.1243
	movq	-16(%rbp), %rax
	cmpl	$0, 68(%rax)
	jl	.LBB66_328
# BB#323:                               # %land.lhs.true.1248
	movq	-16(%rbp), %rax
	movl	68(%rax), %ecx
	movq	-120(%rbp), %rax
	movq	384(%rax), %rax
	cmpl	(%rax), %ecx
	jge	.LBB66_328
# BB#324:                               # %land.lhs.true.1255
	movq	-16(%rbp), %rax
	cmpl	$0, 88(%rax)
	je	.LBB66_328
# BB#325:                               # %if.then.1258
	movq	-120(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 432(%rax)
	jne	.LBB66_327
# BB#326:                               # %if.then.1262
	movl	$192, %eax
	movl	%eax, %edi
	callq	xmalloc
	movq	-120(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	%rax, 432(%rdi)
.LBB66_327:                             # %if.end.1267
	movl	$5, %esi
	movl	$192, %eax
	movl	%eax, %edx
	movq	-120(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	432(%rcx), %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -2176(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	movq	-2176(%rbp), %rcx       # 8-byte Reload
	movl	%esi, -2180(%rbp)       # 4-byte Spill
	movq	%rcx, %rsi
	callq	memcpy
	movl	-88(%rbp), %eax
	andl	$-65536, %eax           # imm = 0xFFFFFFFFFFFF0000
	orl	$17, %eax
	movl	%eax, -88(%rbp)
	movq	-120(%rbp), %rcx
	movq	%rcx, %rdi
	movl	-2180(%rbp), %esi       # 4-byte Reload
	callq	make_lisp_ptr
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	$2, (%rax)
	jmp	.LBB66_329
.LBB66_328:                             # %if.else.1278
	jmp	.LBB66_339
.LBB66_329:                             # %if.end.1279
	jmp	.LBB66_340
.LBB66_330:                             # %sw.bb.1280
	jmp	.LBB66_339
.LBB66_331:                             # %sw.bb.1281
	jmp	.LBB66_339
.LBB66_332:                             # %sw.bb.1282
	jmp	.LBB66_339
.LBB66_333:                             # %sw.bb.1283
	movq	-16(%rbp), %rax
	movl	40(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -2184(%rbp)       # 4-byte Spill
	je	.LBB66_334
	jmp	.LBB66_359
.LBB66_359:                             # %sw.bb.1283
	movl	-2184(%rbp), %eax       # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -2188(%rbp)       # 4-byte Spill
	je	.LBB66_335
	jmp	.LBB66_336
.LBB66_334:                             # %sw.bb.1284
	movq	-8(%rbp), %rdi
	callq	x_find_modifier_meanings
.LBB66_335:                             # %sw.bb.1285
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	XRefreshKeyboardMapping
	movl	%eax, -2192(%rbp)       # 4-byte Spill
.LBB66_336:                             # %sw.epilog
	jmp	.LBB66_339
.LBB66_337:                             # %sw.bb.1288
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	xft_settings_event
	jmp	.LBB66_340
.LBB66_338:                             # %sw.default
	jmp	.LBB66_339
.LBB66_339:                             # %OTHER
	jmp	.LBB66_340
.LBB66_340:                             # %sw.epilog.1289
	jmp	.LBB66_341
.LBB66_341:                             # %done
	movl	-88(%rbp), %eax
	andl	$65535, %eax            # imm = 0xFFFF
	cmpl	$0, %eax
	je	.LBB66_343
# BB#342:                               # %if.then.1295
	leaq	-88(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	kbd_buffer_store_buffered_event
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
.LBB66_343:                             # %if.end.1297
	cmpl	$0, -96(%rbp)
	je	.LBB66_353
# BB#344:                               # %land.lhs.true.1299
	cmpq	$0, -32(%rbp)
	je	.LBB66_346
# BB#345:                               # %land.lhs.true.1301
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	andl	$65535, %ecx            # imm = 0xFFFF
	cmpl	$0, %ecx
	jne	.LBB66_353
.LBB66_346:                             # %if.then.1306
	cmpq	$0, -120(%rbp)
	je	.LBB66_348
# BB#347:                               # %if.then.1309
	movl	$5, %esi
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -1936(%rbp)
	jmp	.LBB66_349
.LBB66_348:                             # %if.else.1311
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -1936(%rbp)
.LBB66_349:                             # %if.end.1313
	cmpl	$0, -96(%rbp)
	jle	.LBB66_351
# BB#350:                               # %if.then.1316
	movb	$1, any_help_event_p
	movq	help_echo_string, %rdi
	movq	-1936(%rbp), %rsi
	movq	help_echo_window, %rdx
	movq	help_echo_object, %rcx
	movq	help_echo_pos, %r8
	callq	gen_help_event
	jmp	.LBB66_352
.LBB66_351:                             # %if.else.1317
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, help_echo_string
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-1936(%rbp), %rsi
	movq	%rax, -2200(%rbp)       # 8-byte Spill
	movq	%rsi, -2208(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -2216(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %r8d
	movq	-2200(%rbp), %rdi       # 8-byte Reload
	movq	-2208(%rbp), %rsi       # 8-byte Reload
	movq	-2216(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	callq	gen_help_event
.LBB66_352:                             # %if.end.1322
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
.LBB66_353:                             # %if.end.1324
	jmp	.LBB66_354
.LBB66_354:                             # %do.body.1325
	testb	$1, -1145(%rbp)
	je	.LBB66_356
# BB#355:                               # %if.then.1327
	xorl	%edi, %edi
	movb	$0, -1145(%rbp)
	movq	-1144(%rbp), %rax
	movq	%rax, -2224(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2224(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -2232(%rbp)       # 8-byte Spill
.LBB66_356:                             # %if.end.1330
	jmp	.LBB66_357
.LBB66_357:                             # %do.end.1331
	movl	-92(%rbp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end66:
	.size	handle_one_xevent, .Lfunc_end66-handle_one_xevent
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI66_0:
	.quad	.LBB66_102
	.quad	.LBB66_214
	.quad	.LBB66_285
	.quad	.LBB66_285
	.quad	.LBB66_237
	.quad	.LBB66_215
	.quad	.LBB66_226
	.quad	.LBB66_225
	.quad	.LBB66_236
	.quad	.LBB66_338
	.quad	.LBB66_72
	.quad	.LBB66_79
	.quad	.LBB66_82
	.quad	.LBB66_332
	.quad	.LBB66_338
	.quad	.LBB66_337
	.quad	.LBB66_83
	.quad	.LBB66_91
	.quad	.LBB66_338
	.quad	.LBB66_69
	.quad	.LBB66_263
	.quad	.LBB66_338
	.quad	.LBB66_338
	.quad	.LBB66_338
	.quad	.LBB66_330
	.quad	.LBB66_331
	.quad	.LBB66_58
	.quad	.LBB66_56
	.quad	.LBB66_57
	.quad	.LBB66_55
	.quad	.LBB66_338
	.quad	.LBB66_4
	.quad	.LBB66_333

	.text
	.align	16, 0x90
	.type	x_any_window_to_frame,@function
x_any_window_to_frame:                  # @x_any_window_to_frame
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp217:
	.cfi_def_cfa_offset 16
.Ltmp218:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp219:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	$0, -56(%rbp)
	movslq	-20(%rbp), %rdi
	cmpq	$0, %rdi
	jne	.LBB67_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB67_25
.LBB67_2:                               # %if.end
	movq	Vframe_list, %rax
	movq	%rax, -32(%rbp)
.LBB67_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -73(%rbp)          # 1-byte Spill
	jne	.LBB67_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB67_3 Depth=1
	movb	$1, %al
	movq	-32(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movb	%al, -73(%rbp)          # 1-byte Spill
.LBB67_5:                               # %land.end
                                        #   in Loop: Header=BB67_3 Depth=1
	movb	-73(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB67_6
	jmp	.LBB67_24
.LBB67_6:                               # %for.body
                                        #   in Loop: Header=BB67_3 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB67_8
# BB#7:                                 # %if.then.5
	jmp	.LBB67_24
.LBB67_8:                               # %if.end.6
                                        #   in Loop: Header=BB67_3 Depth=1
	movq	-40(%rbp), %rax
	subq	$5, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB67_22
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB67_3 Depth=1
	movq	-48(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB67_22
# BB#10:                                # %if.then.13
                                        #   in Loop: Header=BB67_3 Depth=1
	movq	-48(%rbp), %rax
	movq	384(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	360(%rax), %rax
	movslq	-20(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB67_12
# BB#11:                                # %if.then.19
                                        #   in Loop: Header=BB67_3 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB67_21
.LBB67_12:                              # %if.else
                                        #   in Loop: Header=BB67_3 Depth=1
	movq	-64(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB67_17
# BB#13:                                # %if.then.21
                                        #   in Loop: Header=BB67_3 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movslq	-20(%rbp), %rsi
	callq	xg_win_to_widget
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB67_16
# BB#14:                                # %land.lhs.true.25
                                        #   in Loop: Header=BB67_3 Depth=1
	movq	-72(%rbp), %rdi
	callq	gtk_widget_get_toplevel
	movq	-64(%rbp), %rdi
	cmpq	80(%rdi), %rax
	jne	.LBB67_16
# BB#15:                                # %if.then.30
                                        #   in Loop: Header=BB67_3 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB67_16:                              # %if.end.31
                                        #   in Loop: Header=BB67_3 Depth=1
	jmp	.LBB67_20
.LBB67_17:                              # %if.else.32
                                        #   in Loop: Header=BB67_3 Depth=1
	movq	-48(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movslq	-20(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB67_19
# BB#18:                                # %if.then.38
                                        #   in Loop: Header=BB67_3 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB67_19:                              # %if.end.39
                                        #   in Loop: Header=BB67_3 Depth=1
	jmp	.LBB67_20
.LBB67_20:                              # %if.end.40
                                        #   in Loop: Header=BB67_3 Depth=1
	jmp	.LBB67_21
.LBB67_21:                              # %if.end.41
                                        #   in Loop: Header=BB67_3 Depth=1
	jmp	.LBB67_22
.LBB67_22:                              # %if.end.42
                                        #   in Loop: Header=BB67_3 Depth=1
	jmp	.LBB67_23
.LBB67_23:                              # %for.inc
                                        #   in Loop: Header=BB67_3 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB67_3
.LBB67_24:                              # %for.end
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB67_25:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end67:
	.size	x_any_window_to_frame, .Lfunc_end67-x_any_window_to_frame
	.cfi_endproc

	.align	16, 0x90
	.type	x_window_to_frame,@function
x_window_to_frame:                      # @x_window_to_frame
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp220:
	.cfi_def_cfa_offset 16
.Ltmp221:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp222:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movslq	-20(%rbp), %rdi
	cmpq	$0, %rdi
	jne	.LBB68_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB68_22
.LBB68_2:                               # %if.end
	movq	Vframe_list, %rax
	movq	%rax, -32(%rbp)
.LBB68_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -65(%rbp)          # 1-byte Spill
	jne	.LBB68_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB68_3 Depth=1
	movb	$1, %al
	movq	-32(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movb	%al, -65(%rbp)          # 1-byte Spill
.LBB68_5:                               # %land.end
                                        #   in Loop: Header=BB68_3 Depth=1
	movb	-65(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB68_6
	jmp	.LBB68_21
.LBB68_6:                               # %for.body
                                        #   in Loop: Header=BB68_3 Depth=1
	movq	-40(%rbp), %rax
	subq	$5, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB68_8
# BB#7:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB68_3 Depth=1
	movq	-48(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB68_9
.LBB68_8:                               # %if.then.10
                                        #   in Loop: Header=BB68_3 Depth=1
	jmp	.LBB68_20
.LBB68_9:                               # %if.end.11
                                        #   in Loop: Header=BB68_3 Depth=1
	movq	-48(%rbp), %rax
	movq	384(%rax), %rax
	movq	360(%rax), %rax
	movslq	-20(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB68_11
# BB#10:                                # %if.then.17
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB68_22
.LBB68_11:                              # %if.end.18
                                        #   in Loop: Header=BB68_3 Depth=1
	movq	-48(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 88(%rax)
	je	.LBB68_16
# BB#12:                                # %if.then.21
                                        #   in Loop: Header=BB68_3 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movslq	-20(%rbp), %rsi
	callq	xg_win_to_widget
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	384(%rax), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB68_15
# BB#13:                                # %land.lhs.true
                                        #   in Loop: Header=BB68_3 Depth=1
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %rcx
	cmpq	88(%rcx), %rax
	jne	.LBB68_15
# BB#14:                                # %if.then.31
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB68_22
.LBB68_15:                              # %if.end.32
                                        #   in Loop: Header=BB68_3 Depth=1
	jmp	.LBB68_16
.LBB68_16:                              # %if.end.33
                                        #   in Loop: Header=BB68_3 Depth=1
	movq	-48(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movslq	-20(%rbp), %rcx
	cmpq	%rcx, %rax
	je	.LBB68_18
# BB#17:                                # %lor.lhs.false.39
                                        #   in Loop: Header=BB68_3 Depth=1
	movq	-48(%rbp), %rax
	movq	384(%rax), %rax
	movq	64(%rax), %rax
	movslq	-20(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB68_19
.LBB68_18:                              # %if.then.45
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB68_22
.LBB68_19:                              # %if.end.46
                                        #   in Loop: Header=BB68_3 Depth=1
	jmp	.LBB68_20
.LBB68_20:                              # %for.inc
                                        #   in Loop: Header=BB68_3 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB68_3
.LBB68_21:                              # %for.end
	movq	$0, -8(%rbp)
.LBB68_22:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end68:
	.size	x_window_to_frame, .Lfunc_end68-x_window_to_frame
	.cfi_endproc

	.align	16, 0x90
	.type	x_scroll_bar_to_input_event,@function
x_scroll_bar_to_input_event:            # @x_scroll_bar_to_input_event
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp223:
	.cfi_def_cfa_offset 16
.Ltmp224:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp225:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$5, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	56(%rsi), %rsi
	movq	%rsi, -48(%rbp)
	movq	-24(%rbp), %rsi
	movq	64(%rsi), %rsi
	movq	%rsi, -56(%rbp)
	movq	-48(%rbp), %rsi
	shlq	$31, %rsi
	shlq	$1, %rsi
	movabsq	$4294967295, %rdi       # imm = 0xFFFFFFFF
	andq	-56(%rbp), %rdi
	addq	%rdi, %rsi
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movq	-40(%rbp), %rsi
	movq	%rsi, %rdi
	movl	%eax, %esi
	callq	make_lisp_ptr
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	andl	$-65536, %esi           # imm = 0xFFFFFFFFFFFF0000
	orl	$8, %esi
	movl	%esi, (%rax)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 40(%rcx)
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	%eax, %esi
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	andl	$65535, %esi            # imm = 0xFFFF
	shll	$16, %esi
	andl	$65535, %edi            # imm = 0xFFFF
	orl	%esi, %edi
	movl	%edi, (%rax)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-16(%rbp), %rax
	movl	$0, 8(%rax)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end69:
	.size	x_scroll_bar_to_input_event, .Lfunc_end69-x_scroll_bar_to_input_event
	.cfi_endproc

	.align	16, 0x90
	.type	x_horizontal_scroll_bar_to_input_event,@function
x_horizontal_scroll_bar_to_input_event: # @x_horizontal_scroll_bar_to_input_event
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp226:
	.cfi_def_cfa_offset 16
.Ltmp227:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp228:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$5, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	56(%rsi), %rsi
	movq	%rsi, -48(%rbp)
	movq	-24(%rbp), %rsi
	movq	64(%rsi), %rsi
	movq	%rsi, -56(%rbp)
	movq	-48(%rbp), %rsi
	shlq	$31, %rsi
	shlq	$1, %rsi
	movabsq	$4294967295, %rdi       # imm = 0xFFFFFFFF
	andq	-56(%rbp), %rdi
	addq	%rdi, %rsi
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movq	-40(%rbp), %rsi
	movq	%rsi, %rdi
	movl	%eax, %esi
	callq	make_lisp_ptr
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	andl	$-65536, %esi           # imm = 0xFFFFFFFFFFFF0000
	orl	$9, %esi
	movl	%esi, (%rax)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 40(%rcx)
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	%eax, %esi
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	andl	$65535, %esi            # imm = 0xFFFF
	shll	$16, %esi
	andl	$65535, %edi            # imm = 0xFFFF
	orl	%esi, %edi
	movl	%edi, (%rax)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-16(%rbp), %rax
	movl	$0, 8(%rax)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end70:
	.size	x_horizontal_scroll_bar_to_input_event, .Lfunc_end70-x_horizontal_scroll_bar_to_input_event
	.cfi_endproc

	.align	16, 0x90
	.type	x_detect_focus_change,@function
x_detect_focus_change:                  # @x_detect_focus_change
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp229:
	.cfi_def_cfa_offset 16
.Ltmp230:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp231:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB71_2
# BB#1:                                 # %if.then
	jmp	.LBB71_15
.LBB71_2:                               # %if.end
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %edx
	addl	$-7, %edx
	subl	$2, %edx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movl	%edx, -56(%rbp)         # 4-byte Spill
	jb	.LBB71_3
	jmp	.LBB71_16
.LBB71_16:                              # %if.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	addl	$-9, %eax
	subl	$2, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jb	.LBB71_11
	jmp	.LBB71_17
.LBB71_17:                              # %if.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$33, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB71_12
	jmp	.LBB71_15
.LBB71_3:                               # %sw.bb
	movq	-8(%rbp), %rax
	movq	608(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB71_5
# BB#4:                                 # %cond.true
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	movl	512(%rax), %ecx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	jmp	.LBB71_6
.LBB71_5:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB71_6
.LBB71_6:                               # %cond.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)
	movq	-24(%rbp), %rcx
	cmpl	$2, 84(%rcx)
	je	.LBB71_10
# BB#7:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpl	$0, 92(%rax)
	je	.LBB71_10
# BB#8:                                 # %land.lhs.true.5
	movl	-44(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	jne	.LBB71_10
# BB#9:                                 # %if.then.7
	movl	$1, %esi
	movl	$10, %eax
	movl	$9, %ecx
	movq	-24(%rbp), %rdx
	cmpl	$7, (%rdx)
	cmovel	%ecx, %eax
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %r8
	movl	%eax, %edi
	callq	x_focus_changed
.LBB71_10:                              # %if.end.11
	jmp	.LBB71_15
.LBB71_11:                              # %sw.bb.12
	movl	$2, %eax
	movl	$1, %ecx
	movq	-24(%rbp), %rdx
	movl	(%rdx), %edi
	movq	-24(%rbp), %rdx
	cmpl	$5, 44(%rdx)
	cmovel	%ecx, %eax
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %r8
	movl	%eax, %esi
	callq	x_focus_changed
	jmp	.LBB71_15
.LBB71_12:                              # %sw.bb.17
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	584(%rcx), %rax
	jne	.LBB71_14
# BB#13:                                # %if.then.19
	movl	$2, %esi
	movl	$10, %eax
	movl	$9, %ecx
	movq	-24(%rbp), %rdx
	movq	64(%rdx), %rdx
	movl	%edx, %edi
	movl	%edi, -48(%rbp)
	cmpl	$4, -48(%rbp)
	cmovel	%ecx, %eax
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %r8
	movl	%eax, %edi
	callq	x_focus_changed
.LBB71_14:                              # %if.end.24
	jmp	.LBB71_15
.LBB71_15:                              # %sw.epilog
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end71:
	.size	x_detect_focus_change, .Lfunc_end71-x_detect_focus_change
	.cfi_endproc

	.align	16, 0x90
	.type	x_handle_net_wm_state,@function
x_handle_net_wm_state:                  # @x_handle_net_wm_state
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp232:
	.cfi_def_cfa_offset 16
.Ltmp233:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp234:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
	movb	$0, -33(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rsi
	leaq	-20(%rbp), %rdx
	leaq	-33(%rbp), %rcx
	callq	get_current_wm_state
	movb	%al, -34(%rbp)
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	movl	-20(%rbp), %edi
	decl	%edi
	movl	%edi, %eax
	subl	$3, %edi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	%edi, -52(%rbp)         # 4-byte Spill
	ja	.LBB72_5
# BB#9:                                 # %entry
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	.LJTI72_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB72_1:                               # %sw.bb
	movl	$473, %edi              # imm = 0x1D9
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	jmp	.LBB72_5
.LBB72_2:                               # %sw.bb.3
	movl	$471, %edi              # imm = 0x1D7
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	jmp	.LBB72_5
.LBB72_3:                               # %sw.bb.5
	movl	$470, %edi              # imm = 0x1D6
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	jmp	.LBB72_5
.LBB72_4:                               # %sw.bb.7
	movl	$648, %edi              # imm = 0x288
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
.LBB72_5:                               # %sw.epilog
	movl	$1051, %edi             # imm = 0x41B
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$472, %edi              # imm = 0x1D8
	movq	-8(%rbp), %rcx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	get_frame_param
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	list2
	xorl	%edx, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movl	%edx, -84(%rbp)         # 4-byte Spill
	movl	-84(%rbp), %ecx         # 4-byte Reload
	movq	%rax, %r8
	callq	frame_size_history_add
	movl	$472, %edi              # imm = 0x1D8
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	store_frame_param
	movl	$878, %edi              # imm = 0x36E
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	testb	$1, -33(%rbp)
	movq	%rax, -112(%rbp)        # 8-byte Spill
	je	.LBB72_7
# BB#6:                                 # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB72_8
.LBB72_7:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB72_8:                               # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	store_frame_param
	movb	-34(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end72:
	.size	x_handle_net_wm_state, .Lfunc_end72-x_handle_net_wm_state
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI72_0:
	.quad	.LBB72_1
	.quad	.LBB72_2
	.quad	.LBB72_3
	.quad	.LBB72_4

	.text
	.align	16, 0x90
	.type	x_check_fullscreen,@function
x_check_fullscreen:                     # @x_check_fullscreen
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp235:
	.cfi_def_cfa_offset 16
.Ltmp236:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp237:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	do_ewmh_fullscreen
	testb	$1, %al
	jne	.LBB73_1
	jmp	.LBB73_2
.LBB73_1:                               # %if.then
	jmp	.LBB73_23
.LBB73_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	72(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	cmpq	104(%rcx), %rax
	je	.LBB73_4
# BB#3:                                 # %if.then.4
	jmp	.LBB73_23
.LBB73_4:                               # %if.end.5
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$26, %rax
	andq	$15, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB73_22
# BB#5:                                 # %if.then.7
	movq	-8(%rbp), %rax
	movl	312(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	316(%rax), %ecx
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	208(%rax), %ecx
	shrl	$26, %ecx
	andl	$15, %ecx
	decl	%ecx
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	ja	.LBB73_10
# BB#24:                                # %if.then.7
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	.LJTI73_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB73_6:                               # %sw.bb
	movl	$648, %edi              # imm = 0x288
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rdi
	callq	x_display_pixel_width
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rdi
	callq	x_display_pixel_height
	movl	%eax, -24(%rbp)
	jmp	.LBB73_11
.LBB73_7:                               # %sw.bb.19
	movl	$470, %edi              # imm = 0x1D6
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rdi
	callq	x_display_pixel_width
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rdi
	callq	x_display_pixel_height
	movl	%eax, -24(%rbp)
	jmp	.LBB73_11
.LBB73_8:                               # %sw.bb.23
	movl	$473, %edi              # imm = 0x1D9
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rdi
	callq	x_display_pixel_width
	movl	%eax, -20(%rbp)
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	addl	(%rdi), %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB73_11
.LBB73_9:                               # %sw.bb.28
	movl	$471, %edi              # imm = 0x1D7
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rdi
	callq	x_display_pixel_height
	movl	%eax, -24(%rbp)
	jmp	.LBB73_11
.LBB73_10:                              # %sw.default
	callq	emacs_abort
.LBB73_11:                              # %sw.epilog
	movl	$1046, %edi             # imm = 0x416
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movl	%edx, -72(%rbp)         # 4-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movl	-72(%rbp), %edx         # 4-byte Reload
	movl	-68(%rbp), %ecx         # 4-byte Reload
	movq	%rax, %r8
	callq	frame_size_history_add
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	callq	x_wm_set_size_hint
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	je	.LBB73_17
# BB#12:                                # %cond.true
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	je	.LBB73_15
# BB#13:                                # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	cmpq	$0, %rax
	je	.LBB73_15
# BB#14:                                # %cond.true.47
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_x11_drawable_get_xid
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB73_16
.LBB73_15:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB73_16
.LBB73_16:                              # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB73_18
.LBB73_17:                              # %cond.false.53
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB73_18:                              # %cond.end.56
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	XResizeWindow
	movq	-8(%rbp), %rsi
	movq	208(%rsi), %rsi
	shrq	$10, %rsi
	andq	$3, %rsi
	movl	%esi, %ecx
	cmpl	$0, %ecx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB73_20
# BB#19:                                # %if.then.64
	movl	$22, %esi
	movq	-8(%rbp), %rdi
	callq	x_wait_for_event
	jmp	.LBB73_21
.LBB73_20:                              # %if.else
	xorl	%eax, %eax
	movl	$1, %r8d
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %ecx
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	subl	(%rdx), %ecx
	movl	%ecx, %edx
	movl	%eax, %ecx
	movl	%eax, %r9d
	movl	$1, (%rsp)
	callq	change_frame_size
	movq	-8(%rbp), %rdi
	callq	x_sync
.LBB73_21:                              # %if.end.68
	jmp	.LBB73_22
.LBB73_22:                              # %if.end.69
	movl	$472, %edi              # imm = 0x1D8
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	store_frame_param
.LBB73_23:                              # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end73:
	.size	x_check_fullscreen, .Lfunc_end73-x_check_fullscreen
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI73_0:
	.quad	.LBB73_8
	.quad	.LBB73_9
	.quad	.LBB73_7
	.quad	.LBB73_6

	.text
	.align	16, 0x90
	.type	x_emacs_to_x_modifiers,@function
x_emacs_to_x_modifiers:                 # @x_emacs_to_x_modifiers
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp238:
	.cfi_def_cfa_offset 16
.Ltmp239:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp240:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movl	$678, %eax              # imm = 0x2A6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$134217728, -24(%rbp)   # imm = 0x8000000
	movq	$4194304, -32(%rbp)     # imm = 0x400000
	movq	$16777216, -40(%rbp)    # imm = 0x1000000
	movq	$8388608, -48(%rbp)     # imm = 0x800000
	movq	globals+2736, %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB74_2
# BB#1:                                 # %if.then
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -32(%rbp)
.LBB74_2:                               # %if.end
	movl	$678, %edi              # imm = 0x2A6
	movq	globals+2800, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB74_4
# BB#3:                                 # %if.then.11
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -24(%rbp)
.LBB74_4:                               # %if.end.13
	movl	$678, %edi              # imm = 0x2A6
	movq	globals+2768, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB74_6
# BB#5:                                 # %if.then.21
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -40(%rbp)
.LBB74_6:                               # %if.end.23
	movl	$678, %edi              # imm = 0x2A6
	movq	globals+2904, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB74_8
# BB#7:                                 # %if.then.31
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -48(%rbp)
.LBB74_8:                               # %if.end.33
	movq	-16(%rbp), %rax
	andq	-32(%rbp), %rax
	cmpq	$0, %rax
	je	.LBB74_10
# BB#9:                                 # %cond.true
	movq	-8(%rbp), %rax
	movl	312(%rax), %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	jmp	.LBB74_11
.LBB74_10:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB74_11
.LBB74_11:                              # %cond.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	movq	-16(%rbp), %rcx
	andq	-48(%rbp), %rcx
	cmpq	$0, %rcx
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB74_13
# BB#12:                                # %cond.true.37
	movq	-8(%rbp), %rax
	movl	316(%rax), %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	jmp	.LBB74_14
.LBB74_13:                              # %cond.false.38
	xorl	%eax, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB74_14
.LBB74_14:                              # %cond.end.39
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	-96(%rbp), %ecx         # 4-byte Reload
	orl	%eax, %ecx
	movq	-16(%rbp), %rdx
	andq	-40(%rbp), %rdx
	cmpq	$0, %rdx
	movl	%ecx, -104(%rbp)        # 4-byte Spill
	je	.LBB74_16
# BB#15:                                # %cond.true.43
	movq	-8(%rbp), %rax
	movl	320(%rax), %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	jmp	.LBB74_17
.LBB74_16:                              # %cond.false.44
	xorl	%eax, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB74_17
.LBB74_17:                              # %cond.end.45
	movl	-108(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movl	$4, %edx
	movl	$1, %esi
	movl	-104(%rbp), %edi        # 4-byte Reload
	orl	%eax, %edi
	movq	-16(%rbp), %r8
	andq	$33554432, %r8          # imm = 0x2000000
	cmpq	$0, %r8
	movl	%ecx, %eax
	cmovnel	%esi, %eax
	orl	%eax, %edi
	movq	-16(%rbp), %r8
	andq	$67108864, %r8          # imm = 0x4000000
	cmpq	$0, %r8
	cmovnel	%edx, %ecx
	orl	%ecx, %edi
	movq	-16(%rbp), %r8
	andq	-24(%rbp), %r8
	cmpq	$0, %r8
	movl	%edi, -112(%rbp)        # 4-byte Spill
	je	.LBB74_19
# BB#18:                                # %cond.true.58
	movq	-8(%rbp), %rax
	movl	304(%rax), %ecx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	jmp	.LBB74_20
.LBB74_19:                              # %cond.false.59
	xorl	%eax, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB74_20
.LBB74_20:                              # %cond.end.60
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	-112(%rbp), %ecx        # 4-byte Reload
	orl	%eax, %ecx
	movl	%ecx, %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end74:
	.size	x_emacs_to_x_modifiers, .Lfunc_end74-x_emacs_to_x_modifiers
	.cfi_endproc

	.align	16, 0x90
	.type	note_mouse_movement,@function
note_mouse_movement:                    # @note_mouse_movement
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp241:
	.cfi_def_cfa_offset 16
.Ltmp242:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp243:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, 384(%rsi)
	jne	.LBB75_2
# BB#1:                                 # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB75_11
.LBB75_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 688(%rcx)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 648(%rcx)
	movq	-24(%rbp), %rax
	movl	64(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 672(%rax)
	movq	-24(%rbp), %rax
	movl	68(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 676(%rax)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	384(%rcx), %rcx
	cmpq	56(%rcx), %rax
	je	.LBB75_4
# BB#3:                                 # %if.then.6
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rcx
	movq	208(%rcx), %rdx
	andq	$-1048577, %rdx         # imm = 0xFFFFFFFFFFEFFFFF
	orq	$1048576, %rdx          # imm = 0x100000
	movq	%rdx, 208(%rcx)
	movq	-40(%rbp), %rcx
	movq	$0, 656(%rcx)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	note_mouse_highlight
	movq	-40(%rbp), %rcx
	movq	$0, 640(%rcx)
	movb	$1, -1(%rbp)
	jmp	.LBB75_11
.LBB75_4:                               # %if.end.7
	movq	-40(%rbp), %rax
	addq	$680, %rax              # imm = 0x2A8
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	640(%rcx), %rax
	jne	.LBB75_9
# BB#5:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	movl	64(%rax), %ecx
	movq	-32(%rbp), %rax
	movswl	(%rax), %edx
	cmpl	%edx, %ecx
	jl	.LBB75_9
# BB#6:                                 # %lor.lhs.false.14
	movq	-24(%rbp), %rax
	movl	64(%rax), %ecx
	movq	-32(%rbp), %rax
	movswl	(%rax), %edx
	movq	-32(%rbp), %rax
	movzwl	4(%rax), %esi
	addl	%esi, %edx
	cmpl	%edx, %ecx
	jge	.LBB75_9
# BB#7:                                 # %lor.lhs.false.21
	movq	-24(%rbp), %rax
	movl	68(%rax), %ecx
	movq	-32(%rbp), %rax
	movswl	2(%rax), %edx
	cmpl	%edx, %ecx
	jl	.LBB75_9
# BB#8:                                 # %lor.lhs.false.27
	movq	-24(%rbp), %rax
	movl	68(%rax), %ecx
	movq	-32(%rbp), %rax
	movswl	2(%rax), %edx
	movq	-32(%rbp), %rax
	movzwl	6(%rax), %esi
	addl	%esi, %edx
	cmpl	%edx, %ecx
	jl	.LBB75_10
.LBB75_9:                               # %if.then.35
	movq	-16(%rbp), %rax
	movq	208(%rax), %rcx
	andq	$-1048577, %rcx         # imm = 0xFFFFFFFFFFEFFFFF
	orq	$1048576, %rcx          # imm = 0x100000
	movq	%rcx, 208(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 656(%rax)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	64(%rax), %esi
	movq	-24(%rbp), %rax
	movl	68(%rax), %edx
	callq	note_mouse_highlight
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	64(%rax), %esi
	movq	-24(%rbp), %rax
	movl	68(%rax), %edx
	movq	-32(%rbp), %rcx
	callq	remember_mouse_glyph
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 640(%rcx)
	movb	$1, -1(%rbp)
	jmp	.LBB75_11
.LBB75_10:                              # %if.end.46
	movb	$0, -1(%rbp)
.LBB75_11:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end75:
	.size	note_mouse_movement, .Lfunc_end75-note_mouse_movement
	.cfi_endproc

	.align	16, 0x90
	.type	x_net_wm_state,@function
x_net_wm_state:                         # @x_net_wm_state
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp244:
	.cfi_def_cfa_offset 16
.Ltmp245:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp246:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	movb	$0, -33(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	leaq	-20(%rbp), %rdx
	leaq	-33(%rbp), %rcx
	callq	get_current_wm_state
	movl	-20(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %ecx
	subl	$3, %r8d
	movb	%al, -34(%rbp)          # 1-byte Spill
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movl	%r8d, -52(%rbp)         # 4-byte Spill
	ja	.LBB76_5
# BB#6:                                 # %entry
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	.LJTI76_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB76_1:                               # %sw.bb
	movl	$473, %edi              # imm = 0x1D9
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	jmp	.LBB76_5
.LBB76_2:                               # %sw.bb.3
	movl	$471, %edi              # imm = 0x1D7
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	jmp	.LBB76_5
.LBB76_3:                               # %sw.bb.5
	movl	$470, %edi              # imm = 0x1D6
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	jmp	.LBB76_5
.LBB76_4:                               # %sw.bb.7
	movl	$648, %edi              # imm = 0x288
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
.LBB76_5:                               # %sw.epilog
	movl	$1053, %edi             # imm = 0x41D
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$472, %edi              # imm = 0x1D8
	movq	-8(%rbp), %rcx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	get_frame_param
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	list2
	xorl	%edx, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movl	%edx, -84(%rbp)         # 4-byte Spill
	movl	-84(%rbp), %ecx         # 4-byte Reload
	movq	%rax, %r8
	callq	frame_size_history_add
	movl	$472, %edi              # imm = 0x1D8
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	store_frame_param
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end76:
	.size	x_net_wm_state, .Lfunc_end76-x_net_wm_state
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI76_0:
	.quad	.LBB76_1
	.quad	.LBB76_2
	.quad	.LBB76_3
	.quad	.LBB76_4

	.text
	.align	16, 0x90
	.type	construct_mouse_click,@function
construct_mouse_click:                  # @construct_mouse_click
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp247:
	.cfi_def_cfa_offset 16
.Ltmp248:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp249:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movl	(%rdx), %eax
	andl	$-65536, %eax           # imm = 0xFFFFFFFFFFFF0000
	orl	$5, %eax
	movl	%eax, (%rdx)
	movq	-16(%rbp), %rdx
	movl	84(%rdx), %eax
	subl	$1, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 4(%rdx)
	movq	-16(%rbp), %rdx
	movq	56(%rdx), %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, 32(%rsi)
	movq	-24(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	424(%rdx), %rdi
	movq	-16(%rbp), %rdx
	movl	80(%rdx), %esi
	callq	x_x_to_emacs_modifiers
	movl	$5, %esi
	movl	$2, %ecx
	movl	$1, %r8d
	movq	-16(%rbp), %rdx
	cmpl	$5, (%rdx)
	cmovel	%r8d, %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 8(%rdx)
	movq	-16(%rbp), %rdx
	movslq	64(%rdx), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	-8(%rbp), %rdi
	movq	%rdx, 16(%rdi)
	movq	-16(%rbp), %rdx
	movslq	68(%rdx), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	-8(%rbp), %rdi
	movq	%rdx, 24(%rdi)
	movq	-24(%rbp), %rdx
	movq	%rdx, %rdi
	callq	make_lisp_ptr
	xorl	%edi, %edi
	movq	-8(%rbp), %rdx
	movq	%rax, 40(%rdx)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-8(%rbp), %rdx
	movq	%rax, 48(%rdx)
	callq	builtin_lisp_symbol
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end77:
	.size	construct_mouse_click, .Lfunc_end77-construct_mouse_click
	.cfi_endproc

	.align	16, 0x90
	.type	x_window_to_scroll_bar,@function
x_window_to_scroll_bar:                 # @x_window_to_scroll_bar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp250:
	.cfi_def_cfa_offset 16
.Ltmp251:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp252:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	xg_get_scroll_id_for_window
	movq	%rax, -24(%rbp)
	movq	Vframe_list, %rax
	movq	%rax, -40(%rbp)
.LBB78_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB78_7 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -65(%rbp)          # 1-byte Spill
	jne	.LBB78_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB78_1 Depth=1
	movb	$1, %al
	movq	-40(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movb	%al, -65(%rbp)          # 1-byte Spill
.LBB78_3:                               # %land.end
                                        #   in Loop: Header=BB78_1 Depth=1
	movb	-65(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB78_4
	jmp	.LBB78_18
.LBB78_4:                               # %for.body
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-48(%rbp), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	je	.LBB78_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB78_1 Depth=1
	jmp	.LBB78_17
.LBB78_6:                               # %if.end
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-48(%rbp), %rax
	subq	$5, %rax
	movq	80(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	subq	$5, %rax
	movq	72(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB78_7:                               # %for.cond.7
                                        #   Parent Loop BB78_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %cl
	movq	-80(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -81(%rbp)          # 1-byte Spill
	jne	.LBB78_9
# BB#8:                                 # %lor.rhs
                                        #   in Loop: Header=BB78_7 Depth=2
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	movb	%dl, -81(%rbp)          # 1-byte Spill
.LBB78_9:                               # %lor.end
                                        #   in Loop: Header=BB78_7 Depth=2
	movb	-81(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB78_10
	jmp	.LBB78_16
.LBB78_10:                              # %for.body.15
                                        #   in Loop: Header=BB78_7 Depth=2
	movq	-56(%rbp), %rdi
	callq	XVECTOR
	movq	32(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB78_14
# BB#11:                                # %land.lhs.true
                                        #   in Loop: Header=BB78_7 Depth=2
	movq	-48(%rbp), %rax
	subq	$5, %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB78_14
# BB#12:                                # %land.lhs.true.23
                                        #   in Loop: Header=BB78_7 Depth=2
	movb	$1, %al
	movl	$1, -28(%rbp)
	testb	$1, %al
	jne	.LBB78_13
	jmp	.LBB78_14
.LBB78_13:                              # %if.then.24
	movq	-56(%rbp), %rdi
	callq	XVECTOR
	movq	%rax, -8(%rbp)
	jmp	.LBB78_19
.LBB78_14:                              # %if.end.26
                                        #   in Loop: Header=BB78_7 Depth=2
	jmp	.LBB78_15
.LBB78_15:                              # %for.inc
                                        #   in Loop: Header=BB78_7 Depth=2
	movq	-56(%rbp), %rdi
	callq	XVECTOR
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB78_7
.LBB78_16:                              # %for.end
                                        #   in Loop: Header=BB78_1 Depth=1
	jmp	.LBB78_17
.LBB78_17:                              # %for.inc.28
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB78_1
.LBB78_18:                              # %for.end.30
	movq	$0, -8(%rbp)
.LBB78_19:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end78:
	.size	x_window_to_scroll_bar, .Lfunc_end78-x_window_to_scroll_bar
	.cfi_endproc

	.align	16, 0x90
	.type	x_scroll_bar_handle_click,@function
x_scroll_bar_handle_click:              # @x_scroll_bar_handle_click
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp253:
	.cfi_def_cfa_offset 16
.Ltmp254:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp255:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB79_2
# BB#1:                                 # %if.then
	callq	emacs_abort
.LBB79_2:                               # %if.end
	movl	$8, %eax
	movl	$9, %ecx
	movq	-8(%rbp), %rdx
	movb	68(%rdx), %sil
	testb	$1, %sil
	cmovnel	%ecx, %eax
	movq	-24(%rbp), %rdx
	movl	(%rdx), %ecx
	andl	$65535, %eax            # imm = 0xFFFF
	andl	$-65536, %ecx           # imm = 0xFFFFFFFFFFFF0000
	orl	%eax, %ecx
	movl	%ecx, (%rdx)
	movq	-16(%rbp), %rdx
	movl	84(%rdx), %eax
	subl	$1, %eax
	movq	-24(%rbp), %rdx
	movl	%eax, 4(%rdx)
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	80(%rax), %esi
	callq	x_x_to_emacs_modifiers
	xorl	%edi, %edi
	movl	$2, %ecx
	movl	$1, %esi
	movq	-16(%rbp), %rdx
	cmpl	$5, (%rdx)
	cmovel	%esi, %ecx
	orl	%ecx, %eax
	movq	-24(%rbp), %rdx
	movl	%eax, 8(%rdx)
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	-24(%rbp), %r8
	movq	%rdx, 40(%r8)
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-8(%rbp), %rax
	testb	$1, 68(%rax)
	je	.LBB79_14
# BB#3:                                 # %if.then.12
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	subl	$2, %ecx
	subl	$2, %ecx
	subl	$5, %ecx
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rax
	movl	64(%rax), %ecx
	subl	$2, %ecx
	movl	%ecx, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jge	.LBB79_5
# BB#4:                                 # %if.then.21
	movl	$0, -32(%rbp)
.LBB79_5:                               # %if.end.22
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jle	.LBB79_7
# BB#6:                                 # %if.then.24
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB79_7:                               # %if.end.25
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	56(%rcx), %eax
	jge	.LBB79_9
# BB#8:                                 # %if.then.27
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	andl	$65535, %ecx            # imm = 0xFFFF
	orl	$655360, %ecx           # imm = 0xA0000
	movl	%ecx, (%rax)
	jmp	.LBB79_13
.LBB79_9:                               # %if.else
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	60(%rcx), %edx
	addl	$5, %edx
	cmpl	%edx, %eax
	jge	.LBB79_11
# BB#10:                                # %if.then.32
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	andl	$65535, %ecx            # imm = 0xFFFF
	orl	$720896, %ecx           # imm = 0xB0000
	movl	%ecx, (%rax)
	jmp	.LBB79_12
.LBB79_11:                              # %if.else.36
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	andl	$65535, %ecx            # imm = 0xFFFF
	orl	$786432, %ecx           # imm = 0xC0000
	movl	%ecx, (%rax)
.LBB79_12:                              # %if.end.40
	jmp	.LBB79_13
.LBB79_13:                              # %if.end.41
	movslq	-28(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movslq	-32(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 24(%rcx)
	jmp	.LBB79_25
.LBB79_14:                              # %if.else.47
	movq	-8(%rbp), %rax
	movl	52(%rax), %ecx
	subl	$2, %ecx
	subl	$2, %ecx
	subl	$5, %ecx
	movl	%ecx, -36(%rbp)
	movq	-16(%rbp), %rax
	movl	68(%rax), %ecx
	subl	$2, %ecx
	movl	%ecx, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jge	.LBB79_16
# BB#15:                                # %if.then.57
	movl	$0, -40(%rbp)
.LBB79_16:                              # %if.end.58
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jle	.LBB79_18
# BB#17:                                # %if.then.61
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
.LBB79_18:                              # %if.end.62
	movl	-40(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	56(%rcx), %eax
	jge	.LBB79_20
# BB#19:                                # %if.then.66
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	andl	$65535, %ecx            # imm = 0xFFFF
	orl	$65536, %ecx            # imm = 0x10000
	movl	%ecx, (%rax)
	jmp	.LBB79_24
.LBB79_20:                              # %if.else.70
	movl	-40(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	60(%rcx), %edx
	addl	$5, %edx
	cmpl	%edx, %eax
	jge	.LBB79_22
# BB#21:                                # %if.then.75
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	andl	$65535, %ecx            # imm = 0xFFFF
	orl	$131072, %ecx           # imm = 0x20000
	movl	%ecx, (%rax)
	jmp	.LBB79_23
.LBB79_22:                              # %if.else.79
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	andl	$65535, %ecx            # imm = 0xFFFF
	orl	$196608, %ecx           # imm = 0x30000
	movl	%ecx, (%rax)
.LBB79_23:                              # %if.end.83
	jmp	.LBB79_24
.LBB79_24:                              # %if.end.84
	movslq	-40(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movslq	-36(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 24(%rcx)
.LBB79_25:                              # %if.end.93
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end79:
	.size	x_scroll_bar_handle_click, .Lfunc_end79-x_scroll_bar_handle_click
	.cfi_endproc

	.align	16, 0x90
	.type	x_menubar_window_to_frame,@function
x_menubar_window_to_frame:              # @x_menubar_window_to_frame
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp256:
	.cfi_def_cfa_offset 16
.Ltmp257:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp258:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB80_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB80_15
.LBB80_2:                               # %if.end
	movq	Vframe_list, %rax
	movq	%rax, -40(%rbp)
.LBB80_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -65(%rbp)          # 1-byte Spill
	jne	.LBB80_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB80_3 Depth=1
	movb	$1, %al
	movq	-40(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movb	%al, -65(%rbp)          # 1-byte Spill
.LBB80_5:                               # %land.end
                                        #   in Loop: Header=BB80_3 Depth=1
	movb	-65(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB80_6
	jmp	.LBB80_14
.LBB80_6:                               # %for.body
                                        #   in Loop: Header=BB80_3 Depth=1
	movq	-48(%rbp), %rax
	subq	$5, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB80_8
# BB#7:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB80_3 Depth=1
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB80_9
.LBB80_8:                               # %if.then.9
                                        #   in Loop: Header=BB80_3 Depth=1
	jmp	.LBB80_13
.LBB80_9:                               # %if.end.10
                                        #   in Loop: Header=BB80_3 Depth=1
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpq	$0, 112(%rax)
	je	.LBB80_12
# BB#10:                                # %land.lhs.true
                                        #   in Loop: Header=BB80_3 Depth=1
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	xg_event_is_for_menubar
	testb	$1, %al
	jne	.LBB80_11
	jmp	.LBB80_12
.LBB80_11:                              # %if.then.14
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB80_15
.LBB80_12:                              # %if.end.15
                                        #   in Loop: Header=BB80_3 Depth=1
	jmp	.LBB80_13
.LBB80_13:                              # %for.inc
                                        #   in Loop: Header=BB80_3 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB80_3
.LBB80_14:                              # %for.end
	movq	$0, -8(%rbp)
.LBB80_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end80:
	.size	x_menubar_window_to_frame, .Lfunc_end80-x_menubar_window_to_frame
	.cfi_endproc

	.align	16, 0x90
	.type	x_focus_changed,@function
x_focus_changed:                        # @x_focus_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp259:
	.cfi_def_cfa_offset 16
.Ltmp260:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp261:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	cmpl	$9, -4(%rbp)
	jne	.LBB81_13
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	608(%rax), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB81_10
# BB#2:                                 # %if.then.2
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	x_new_focus_frame
	xorl	%edi, %edi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rsi, 608(%rax)
	movq	globals+2320, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB81_5
# BB#3:                                 # %lor.lhs.false
	movq	globals+2320, %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB81_5
# BB#4:                                 # %lor.lhs.false.6
	callq	Fdaemonp
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB81_8
.LBB81_5:                               # %land.lhs.true
	movq	Vframe_list, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB81_8
# BB#6:                                 # %land.lhs.true.12
	xorl	%edi, %edi
	movq	Vframe_list, %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB81_8
# BB#7:                                 # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB81_9
.LBB81_8:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB81_9:                               # %cond.end
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	$5, %esi
	movq	-32(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	andl	$-65536, %edx           # imm = 0xFFFFFFFFFFFF0000
	orl	$22, %edx
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	-32(%rbp), %rcx
	movq	%rax, 40(%rcx)
.LBB81_10:                              # %if.end
	movl	-8(%rbp), %eax
	movq	-24(%rbp), %rcx
	movq	384(%rcx), %rcx
	orl	512(%rcx), %eax
	movl	%eax, 512(%rcx)
	movq	-24(%rbp), %rcx
	movq	384(%rcx), %rcx
	cmpq	$0, 448(%rcx)
	je	.LBB81_12
# BB#11:                                # %if.then.24
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	movq	448(%rax), %rdi
	callq	XSetICFocus
.LBB81_12:                              # %if.end.28
	jmp	.LBB81_22
.LBB81_13:                              # %if.else
	cmpl	$10, -4(%rbp)
	jne	.LBB81_21
# BB#14:                                # %if.then.31
	movl	-8(%rbp), %eax
	xorl	$-1, %eax
	movq	-24(%rbp), %rcx
	movq	384(%rcx), %rcx
	andl	512(%rcx), %eax
	movl	%eax, 512(%rcx)
	movq	-16(%rbp), %rcx
	movq	608(%rcx), %rcx
	cmpq	-24(%rbp), %rcx
	jne	.LBB81_16
# BB#15:                                # %if.then.39
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	$0, 608(%rcx)
	movq	-16(%rbp), %rdi
	callq	x_new_focus_frame
	movl	$5, %esi
	movq	-32(%rbp), %rcx
	movl	(%rcx), %eax
	andl	$-65536, %eax           # imm = 0xFFFFFFFFFFFF0000
	orl	$23, %eax
	movl	%eax, (%rcx)
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movq	-32(%rbp), %rcx
	movq	%rax, 40(%rcx)
.LBB81_16:                              # %if.end.46
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 448(%rax)
	je	.LBB81_18
# BB#17:                                # %if.then.51
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	movq	448(%rax), %rdi
	callq	XUnsetICFocus
.LBB81_18:                              # %if.end.55
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$21, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB81_20
# BB#19:                                # %if.then.60
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	callq	XTtoggle_invisible_pointer
.LBB81_20:                              # %if.end.61
	jmp	.LBB81_21
.LBB81_21:                              # %if.end.62
	jmp	.LBB81_22
.LBB81_22:                              # %if.end.63
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end81:
	.size	x_focus_changed, .Lfunc_end81-x_focus_changed
	.cfi_endproc

	.align	16, 0x90
	.type	x_new_focus_frame,@function
x_new_focus_frame:                      # @x_new_focus_frame
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp262:
	.cfi_def_cfa_offset 16
.Ltmp263:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp264:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	600(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	cmpq	600(%rdi), %rsi
	je	.LBB82_9
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 600(%rcx)
	cmpq	$0, -24(%rbp)
	je	.LBB82_4
# BB#2:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$16, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB82_4
# BB#3:                                 # %if.then.3
	movq	-24(%rbp), %rdi
	callq	x_lower_frame
.LBB82_4:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 600(%rax)
	je	.LBB82_7
# BB#5:                                 # %land.lhs.true.6
	movq	-8(%rbp), %rax
	movq	600(%rax), %rax
	movq	208(%rax), %rax
	shrq	$15, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB82_7
# BB#6:                                 # %if.then.12
	movq	-8(%rbp), %rax
	movq	600(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 624(%rcx)
	jmp	.LBB82_8
.LBB82_7:                               # %if.else
	movq	-8(%rbp), %rax
	movq	$0, 624(%rax)
.LBB82_8:                               # %if.end.15
	jmp	.LBB82_9
.LBB82_9:                               # %if.end.16
	movq	-8(%rbp), %rdi
	callq	x_frame_rehighlight
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end82:
	.size	x_new_focus_frame, .Lfunc_end82-x_new_focus_frame
	.cfi_endproc

	.align	16, 0x90
	.type	XTtoggle_invisible_pointer,@function
XTtoggle_invisible_pointer:             # @XTtoggle_invisible_pointer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp265:
	.cfi_def_cfa_offset 16
.Ltmp266:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp267:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	callq	block_input
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	144(%rdi), %rdi
	movq	-8(%rbp), %rcx
	movb	-9(%rbp), %al
	andb	$1, %al
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movzbl	%al, %esi
	movq	-24(%rbp), %rcx         # 8-byte Reload
	callq	*%rcx
	callq	unblock_input
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end83:
	.size	XTtoggle_invisible_pointer, .Lfunc_end83-XTtoggle_invisible_pointer
	.cfi_endproc

	.align	16, 0x90
	.type	x_lower_frame,@function
x_lower_frame:                          # @x_lower_frame
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp268:
	.cfi_def_cfa_offset 16
.Ltmp269:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp270:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rdi
	shrq	$10, %rdi
	andq	$3, %rdi
	movl	%edi, %eax
	cmpl	$0, %eax
	je	.LBB84_9
# BB#1:                                 # %if.then
	callq	block_input
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	je	.LBB84_7
# BB#2:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	je	.LBB84_5
# BB#3:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	cmpq	$0, %rax
	je	.LBB84_5
# BB#4:                                 # %cond.true.12
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_x11_drawable_get_xid
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB84_6
.LBB84_5:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	jmp	.LBB84_6
.LBB84_6:                               # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB84_8
.LBB84_7:                               # %cond.false.18
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB84_8:                               # %cond.end.21
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	XLowerWindow
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	unblock_input
.LBB84_9:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end84:
	.size	x_lower_frame, .Lfunc_end84-x_lower_frame
	.cfi_endproc

	.align	16, 0x90
	.type	x_frame_rehighlight,@function
x_frame_rehighlight:                    # @x_frame_rehighlight
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp271:
	.cfi_def_cfa_offset 16
.Ltmp272:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp273:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	616(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 600(%rdi)
	je	.LBB85_7
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	600(%rax), %rax
	movq	32(%rax), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB85_2
	jmp	.LBB85_3
.LBB85_2:                               # %cond.true
	movq	-8(%rbp), %rax
	movq	600(%rax), %rax
	movq	32(%rax), %rax
	subq	$5, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB85_4
.LBB85_3:                               # %cond.false
	movq	-8(%rbp), %rax
	movq	600(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB85_4:                               # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rcx
	movq	%rax, 616(%rcx)
	movq	-8(%rbp), %rax
	movq	616(%rax), %rax
	cmpq	$0, 376(%rax)
	jne	.LBB85_6
# BB#5:                                 # %if.then.7
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	600(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	fset_focus_frame
	movq	-8(%rbp), %rax
	movq	600(%rax), %rax
	movq	-8(%rbp), %rsi
	movq	%rax, 616(%rsi)
.LBB85_6:                               # %if.end
	jmp	.LBB85_8
.LBB85_7:                               # %if.else
	movq	-8(%rbp), %rax
	movq	$0, 616(%rax)
.LBB85_8:                               # %if.end.13
	movq	-8(%rbp), %rax
	movq	616(%rax), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB85_14
# BB#9:                                 # %if.then.16
	cmpq	$0, -16(%rbp)
	je	.LBB85_11
# BB#10:                                # %if.then.18
	movq	-16(%rbp), %rdi
	callq	frame_unhighlight
.LBB85_11:                              # %if.end.19
	movq	-8(%rbp), %rax
	cmpq	$0, 616(%rax)
	je	.LBB85_13
# BB#12:                                # %if.then.22
	movq	-8(%rbp), %rax
	movq	616(%rax), %rdi
	callq	frame_highlight
.LBB85_13:                              # %if.end.24
	jmp	.LBB85_14
.LBB85_14:                              # %if.end.25
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end85:
	.size	x_frame_rehighlight, .Lfunc_end85-x_frame_rehighlight
	.cfi_endproc

	.align	16, 0x90
	.type	frame_unhighlight,@function
frame_unhighlight:                      # @frame_unhighlight
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp274:
	.cfi_def_cfa_offset 16
.Ltmp275:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp276:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	block_input
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	16(%rdi), %rdi
	callq	x_catch_errors
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	16(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	24(%rax), %rdx
	callq	XSetWindowBorderPixmap
	movl	%eax, -12(%rbp)         # 4-byte Spill
	callq	x_uncatch_errors
	callq	unblock_input
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	x_update_cursor
	movq	-8(%rbp), %rdi
	callq	x_set_frame_alpha
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end86:
	.size	frame_unhighlight, .Lfunc_end86-frame_unhighlight
	.cfi_endproc

	.align	16, 0x90
	.type	frame_highlight,@function
frame_highlight:                        # @frame_highlight
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp277:
	.cfi_def_cfa_offset 16
.Ltmp278:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp279:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	block_input
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	16(%rdi), %rdi
	callq	x_catch_errors
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	16(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	256(%rax), %rdx
	callq	XSetWindowBorder
	movl	%eax, -12(%rbp)         # 4-byte Spill
	callq	x_uncatch_errors
	callq	unblock_input
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	x_update_cursor
	movq	-8(%rbp), %rdi
	callq	x_set_frame_alpha
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end87:
	.size	frame_highlight, .Lfunc_end87-frame_highlight
	.cfi_endproc

	.align	16, 0x90
	.type	get_current_wm_state,@function
get_current_wm_state:                   # @get_current_wm_state
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp280:
	.cfi_def_cfa_offset 16
.Ltmp281:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp282:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movb	$0, -45(%rbp)
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movq	$65536, -64(%rbp)       # imm = 0x10000
	movq	$4, -72(%rbp)
	movq	-32(%rbp), %rcx
	movb	$0, (%rcx)
	movq	-24(%rbp), %rcx
	movl	$0, (%rcx)
	callq	block_input
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	movq	1008(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movl	%ecx, %r8d
	movq	-56(%rbp), %rcx
	movq	864(%rcx), %rcx
	movl	%ecx, %r9d
	movq	-72(%rbp), %rcx
	movl	%ecx, %r10d
	movq	-64(%rbp), %rcx
	movl	%ecx, %r11d
	movl	%eax, %esi
	movl	%r8d, %edx
	movl	%r9d, %ecx
	movl	%r10d, %r8d
	movl	%eax, %r9d
	movl	%r11d, (%rsp)
	callq	xcb_get_property
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	%eax, -104(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, -80(%rbp)
	movq	-56(%rbp), %rdi
	movq	1008(%rdi), %rdi
	movl	-80(%rbp), %esi
	callq	xcb_get_property_reply
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB88_6
# BB#1:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, %eax
	cmpq	-72(%rbp), %rax
	jne	.LBB88_6
# BB#2:                                 # %if.then
	movq	-88(%rbp), %rdi
	callq	xcb_get_property_value_length
	xorl	%ecx, %ecx
	movl	%eax, -108(%rbp)
	cmpl	-108(%rbp), %ecx
	jg	.LBB88_4
# BB#3:                                 # %cond.true
	jmp	.LBB88_5
.LBB88_4:                               # %cond.false
.LBB88_5:                               # %cond.end
	movslq	-108(%rbp), %rax
	shrq	$2, %rax
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rdi
	callq	xcb_get_property_value
	movq	%rax, -96(%rbp)
	jmp	.LBB88_7
.LBB88_6:                               # %if.else
	movq	$0, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$12, %rax
	andq	$1, %rax
	movb	%al, %cl
	andb	$1, %cl
	movb	%cl, -45(%rbp)
.LBB88_7:                               # %if.end
	movl	$0, -44(%rbp)
.LBB88_8:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-44(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jae	.LBB88_31
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB88_8 Depth=1
	movslq	-44(%rbp), %rax
	movq	-96(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, %eax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	-56(%rbp), %rcx
	cmpq	904(%rcx), %rax
	jne	.LBB88_11
# BB#10:                                # %if.then.20
                                        #   in Loop: Header=BB88_8 Depth=1
	movb	$1, -45(%rbp)
	jmp	.LBB88_29
.LBB88_11:                              # %if.else.21
                                        #   in Loop: Header=BB88_8 Depth=1
	movq	-120(%rbp), %rax
	movq	-56(%rbp), %rcx
	cmpq	880(%rcx), %rax
	jne	.LBB88_16
# BB#12:                                # %if.then.24
                                        #   in Loop: Header=BB88_8 Depth=1
	movq	-24(%rbp), %rax
	cmpl	$2, (%rax)
	jne	.LBB88_14
# BB#13:                                # %if.then.27
                                        #   in Loop: Header=BB88_8 Depth=1
	movq	-24(%rbp), %rax
	movl	$4, (%rax)
	jmp	.LBB88_15
.LBB88_14:                              # %if.else.28
                                        #   in Loop: Header=BB88_8 Depth=1
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
.LBB88_15:                              # %if.end.29
                                        #   in Loop: Header=BB88_8 Depth=1
	jmp	.LBB88_28
.LBB88_16:                              # %if.else.30
                                        #   in Loop: Header=BB88_8 Depth=1
	movq	-120(%rbp), %rax
	movq	-56(%rbp), %rcx
	cmpq	888(%rcx), %rax
	jne	.LBB88_21
# BB#17:                                # %if.then.33
                                        #   in Loop: Header=BB88_8 Depth=1
	movq	-24(%rbp), %rax
	cmpl	$1, (%rax)
	jne	.LBB88_19
# BB#18:                                # %if.then.36
                                        #   in Loop: Header=BB88_8 Depth=1
	movq	-24(%rbp), %rax
	movl	$4, (%rax)
	jmp	.LBB88_20
.LBB88_19:                              # %if.else.37
                                        #   in Loop: Header=BB88_8 Depth=1
	movq	-24(%rbp), %rax
	movl	$2, (%rax)
.LBB88_20:                              # %if.end.38
                                        #   in Loop: Header=BB88_8 Depth=1
	jmp	.LBB88_27
.LBB88_21:                              # %if.else.39
                                        #   in Loop: Header=BB88_8 Depth=1
	movq	-120(%rbp), %rax
	movq	-56(%rbp), %rcx
	cmpq	872(%rcx), %rax
	jne	.LBB88_23
# BB#22:                                # %if.then.42
                                        #   in Loop: Header=BB88_8 Depth=1
	movq	-24(%rbp), %rax
	movl	$3, (%rax)
	jmp	.LBB88_26
.LBB88_23:                              # %if.else.43
                                        #   in Loop: Header=BB88_8 Depth=1
	movq	-120(%rbp), %rax
	movq	-56(%rbp), %rcx
	cmpq	896(%rcx), %rax
	jne	.LBB88_25
# BB#24:                                # %if.then.46
                                        #   in Loop: Header=BB88_8 Depth=1
	movq	-32(%rbp), %rax
	movb	$1, (%rax)
.LBB88_25:                              # %if.end.47
                                        #   in Loop: Header=BB88_8 Depth=1
	jmp	.LBB88_26
.LBB88_26:                              # %if.end.48
                                        #   in Loop: Header=BB88_8 Depth=1
	jmp	.LBB88_27
.LBB88_27:                              # %if.end.49
                                        #   in Loop: Header=BB88_8 Depth=1
	jmp	.LBB88_28
.LBB88_28:                              # %if.end.50
                                        #   in Loop: Header=BB88_8 Depth=1
	jmp	.LBB88_29
.LBB88_29:                              # %if.end.51
                                        #   in Loop: Header=BB88_8 Depth=1
	jmp	.LBB88_30
.LBB88_30:                              # %for.inc
                                        #   in Loop: Header=BB88_8 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB88_8
.LBB88_31:                              # %for.end
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	callq	unblock_input
	movb	-45(%rbp), %cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end88:
	.size	get_current_wm_state, .Lfunc_end88-get_current_wm_state
	.cfi_endproc

	.align	16, 0x90
	.type	do_ewmh_fullscreen,@function
do_ewmh_fullscreen:                     # @do_ewmh_fullscreen
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp283:
	.cfi_def_cfa_offset 16
.Ltmp284:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp285:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	864(%rax), %rsi
	callq	x_wm_supports
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	cmpq	$0, 80(%rsi)
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	je	.LBB89_6
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	je	.LBB89_4
# BB#2:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	cmpq	$0, %rax
	je	.LBB89_4
# BB#3:                                 # %cond.true.12
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_x11_drawable_get_xid
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB89_5
.LBB89_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB89_5
.LBB89_5:                               # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB89_7
.LBB89_6:                               # %cond.false.18
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB89_7:                               # %cond.end.21
	movq	-64(%rbp), %rax         # 8-byte Reload
	leaq	-24(%rbp), %rdx
	leaq	-25(%rbp), %rcx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	get_current_wm_state
	testb	$1, -17(%rbp)
	movb	%al, -65(%rbp)          # 1-byte Spill
	jne	.LBB89_9
# BB#8:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	872(%rax), %rsi
	callq	x_wm_supports
	andb	$1, %al
	movb	%al, -17(%rbp)
.LBB89_9:                               # %if.end
	testb	$1, -17(%rbp)
	je	.LBB89_66
# BB#10:                                # %land.lhs.true.28
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	208(%rcx), %rcx
	shrq	$26, %rcx
	andq	$15, %rcx
	movl	%ecx, %edx
	cmpl	%edx, %eax
	je	.LBB89_66
# BB#11:                                # %if.then.29
	movq	-8(%rbp), %rdi
	movl	$5, %esi
	callq	make_lisp_ptr
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$26, %rax
	movl	%eax, %esi
	andl	$15, %esi
	movl	%esi, %eax
	movl	%eax, %esi
	subl	$4, %esi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	ja	.LBB89_65
# BB#67:                                # %if.then.29
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI89_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB89_12:                              # %sw.bb
	cmpl	$3, -24(%rbp)
	je	.LBB89_14
# BB#13:                                # %if.then.37
	movl	$1, %esi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	872(%rdx), %rdx
	callq	set_wm_state
.LBB89_14:                              # %if.end.39
	jmp	.LBB89_65
.LBB89_15:                              # %sw.bb.40
	testb	$1, globals+3441
	je	.LBB89_18
# BB#16:                                # %land.lhs.true.42
	cmpl	$4, -24(%rbp)
	jne	.LBB89_18
# BB#17:                                # %if.then.44
	xorl	%esi, %esi
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	880(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	888(%rax), %rcx
	callq	set_wm_state
	movl	$1, %esi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	880(%rax), %rdx
	callq	set_wm_state
	jmp	.LBB89_26
.LBB89_18:                              # %if.else
	cmpl	$3, -24(%rbp)
	je	.LBB89_21
# BB#19:                                # %lor.lhs.false
	cmpl	$2, -24(%rbp)
	je	.LBB89_21
# BB#20:                                # %lor.lhs.false.48
	cmpl	$4, -24(%rbp)
	jne	.LBB89_22
.LBB89_21:                              # %if.then.50
	xorl	%esi, %esi
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	872(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	888(%rax), %rcx
	callq	set_wm_state
.LBB89_22:                              # %if.end.53
	cmpl	$4, -24(%rbp)
	jne	.LBB89_24
# BB#23:                                # %lor.lhs.false.55
	testb	$1, globals+3441
	je	.LBB89_25
.LBB89_24:                              # %if.then.57
	movl	$1, %esi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	880(%rdx), %rdx
	callq	set_wm_state
.LBB89_25:                              # %if.end.59
	jmp	.LBB89_26
.LBB89_26:                              # %if.end.60
	jmp	.LBB89_65
.LBB89_27:                              # %sw.bb.61
	testb	$1, globals+3441
	je	.LBB89_30
# BB#28:                                # %land.lhs.true.63
	cmpl	$4, -24(%rbp)
	jne	.LBB89_30
# BB#29:                                # %if.then.65
	xorl	%esi, %esi
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	880(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	888(%rax), %rcx
	callq	set_wm_state
	movl	$1, %esi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	888(%rax), %rdx
	callq	set_wm_state
	jmp	.LBB89_38
.LBB89_30:                              # %if.else.69
	cmpl	$3, -24(%rbp)
	je	.LBB89_33
# BB#31:                                # %lor.lhs.false.71
	cmpl	$1, -24(%rbp)
	je	.LBB89_33
# BB#32:                                # %lor.lhs.false.73
	cmpl	$4, -24(%rbp)
	jne	.LBB89_34
.LBB89_33:                              # %if.then.75
	xorl	%esi, %esi
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	872(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	880(%rax), %rcx
	callq	set_wm_state
.LBB89_34:                              # %if.end.78
	cmpl	$4, -24(%rbp)
	jne	.LBB89_36
# BB#35:                                # %lor.lhs.false.80
	testb	$1, globals+3441
	je	.LBB89_37
.LBB89_36:                              # %if.then.82
	movl	$1, %esi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	888(%rdx), %rdx
	callq	set_wm_state
.LBB89_37:                              # %if.end.84
	jmp	.LBB89_38
.LBB89_38:                              # %if.end.85
	jmp	.LBB89_65
.LBB89_39:                              # %sw.bb.86
	testb	$1, globals+3441
	je	.LBB89_42
# BB#40:                                # %land.lhs.true.88
	cmpl	$3, -24(%rbp)
	jne	.LBB89_42
# BB#41:                                # %if.then.90
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	872(%rdx), %rdx
	callq	set_wm_state
	movl	$1, %esi
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	880(%rcx), %rdx
	movq	-16(%rbp), %rcx
	movq	888(%rcx), %rcx
	callq	set_wm_state
	jmp	.LBB89_60
.LBB89_42:                              # %if.else.94
	testb	$1, globals+3441
	je	.LBB89_45
# BB#43:                                # %land.lhs.true.96
	cmpl	$1, -24(%rbp)
	jne	.LBB89_45
# BB#44:                                # %if.then.98
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	880(%rdx), %rdx
	callq	set_wm_state
	movl	$1, %esi
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	880(%rcx), %rdx
	movq	-16(%rbp), %rcx
	movq	888(%rcx), %rcx
	callq	set_wm_state
	jmp	.LBB89_59
.LBB89_45:                              # %if.else.102
	testb	$1, globals+3441
	je	.LBB89_48
# BB#46:                                # %land.lhs.true.104
	cmpl	$2, -24(%rbp)
	jne	.LBB89_48
# BB#47:                                # %if.then.106
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	888(%rdx), %rdx
	callq	set_wm_state
	movl	$1, %esi
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	880(%rcx), %rdx
	movq	-16(%rbp), %rcx
	movq	888(%rcx), %rcx
	callq	set_wm_state
	jmp	.LBB89_58
.LBB89_48:                              # %if.else.110
	cmpl	$3, -24(%rbp)
	jne	.LBB89_50
# BB#49:                                # %if.then.112
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	872(%rdx), %rdx
	callq	set_wm_state
	jmp	.LBB89_57
.LBB89_50:                              # %if.else.114
	cmpl	$2, -24(%rbp)
	jne	.LBB89_52
# BB#51:                                # %if.then.116
	movl	$1, %esi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	880(%rdx), %rdx
	callq	set_wm_state
	jmp	.LBB89_56
.LBB89_52:                              # %if.else.118
	cmpl	$1, -24(%rbp)
	jne	.LBB89_54
# BB#53:                                # %if.then.120
	movl	$1, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	888(%rcx), %rcx
	callq	set_wm_state
	jmp	.LBB89_55
.LBB89_54:                              # %if.else.122
	movl	$1, %esi
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	880(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	888(%rax), %rcx
	callq	set_wm_state
.LBB89_55:                              # %if.end.125
	jmp	.LBB89_56
.LBB89_56:                              # %if.end.126
	jmp	.LBB89_57
.LBB89_57:                              # %if.end.127
	jmp	.LBB89_58
.LBB89_58:                              # %if.end.128
	jmp	.LBB89_59
.LBB89_59:                              # %if.end.129
	jmp	.LBB89_60
.LBB89_60:                              # %if.end.130
	jmp	.LBB89_65
.LBB89_61:                              # %sw.bb.131
	cmpl	$3, -24(%rbp)
	jne	.LBB89_63
# BB#62:                                # %if.then.133
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	872(%rdx), %rdx
	callq	set_wm_state
	jmp	.LBB89_64
.LBB89_63:                              # %if.else.135
	xorl	%esi, %esi
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	880(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	888(%rax), %rcx
	callq	set_wm_state
.LBB89_64:                              # %if.end.138
	jmp	.LBB89_65
.LBB89_65:                              # %sw.epilog
	movq	-8(%rbp), %rax
	movq	208(%rax), %rcx
	andq	$-1006632961, %rcx      # imm = 0xFFFFFFFFC3FFFFFF
	movq	%rcx, 208(%rax)
.LBB89_66:                              # %if.end.142
	movb	-17(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end89:
	.size	do_ewmh_fullscreen, .Lfunc_end89-do_ewmh_fullscreen
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI89_0:
	.quad	.LBB89_61
	.quad	.LBB89_15
	.quad	.LBB89_27
	.quad	.LBB89_12
	.quad	.LBB89_39

	.text
	.align	16, 0x90
	.type	x_filter_event,@function
x_filter_event:                         # @x_filter_event
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp286:
	.cfi_def_cfa_offset 16
.Ltmp287:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp288:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rsi
	movl	%esi, %eax
	movl	%eax, %esi
	callq	x_any_window_to_frame
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	je	.LBB90_2
# BB#1:                                 # %cond.true
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB90_3
.LBB90_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB90_3
.LBB90_3:                               # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	XFilterEvent
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end90:
	.size	x_filter_event, .Lfunc_end90-x_filter_event
	.cfi_endproc

	.align	16, 0x90
	.type	x_error_catcher,@function
x_error_catcher:                        # @x_error_catcher
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp289:
	.cfi_def_cfa_offset 16
.Ltmp290:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp291:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$200, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movzbl	32(%rsi), %esi
	movq	x_error_message, %rdx
	callq	XGetErrorText
	movq	x_error_message, %rdx
	cmpq	$0, 208(%rdx)
	movl	%eax, -20(%rbp)         # 4-byte Spill
	je	.LBB91_2
# BB#1:                                 # %if.then
	movq	x_error_message, %rax
	movq	208(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	x_error_message, %rdx
	movq	x_error_message, %rcx
	movq	216(%rcx), %rcx
	callq	*%rax
.LBB91_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end91:
	.size	x_error_catcher, .Lfunc_end91-x_error_catcher
	.cfi_endproc

	.align	16, 0x90
	.type	x_error_quitter,@function
x_error_quitter:                        # @x_error_quitter
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp292:
	.cfi_def_cfa_offset 16
.Ltmp293:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp294:
	.cfi_def_cfa_register %rbp
	subq	$656, %rsp              # imm = 0x290
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movzbl	32(%rsi), %eax
	cmpl	$15, %eax
	jne	.LBB92_2
# BB#1:                                 # %if.then
	jmp	.LBB92_3
.LBB92_2:                               # %if.end
	movl	$256, %ecx              # imm = 0x100
	leaq	-272(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %esi
	callq	XGetErrorText
	movabsq	$.L.str.385, %rsi
	leaq	-272(%rbp), %rdx
	leaq	-640(%rbp), %rdi
	movq	-16(%rbp), %r8
	movzbl	33(%r8), %ecx
	movl	%eax, -644(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	sprintf
	xorl	%edx, %edx
	leaq	-640(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movl	%eax, -648(%rbp)        # 4-byte Spill
	callq	x_connection_closed
.LBB92_3:                               # %return
	addq	$656, %rsp              # imm = 0x290
	popq	%rbp
	retq
.Lfunc_end92:
	.size	x_error_quitter, .Lfunc_end92-x_error_quitter
	.cfi_endproc

	.align	16, 0x90
	.type	x_connection_closed,@function
x_connection_closed:                    # @x_connection_closed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp295:
	.cfi_def_cfa_offset 16
.Ltmp296:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp297:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movb	%dl, %al
	movl	$548, %edx              # imm = 0x224
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	-8(%rbp), %rdi
	movl	%edx, -76(%rbp)         # 4-byte Spill
	callq	x_display_info_for_display
	movq	%rax, -32(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen
	addq	$16, %rax
	andq	$-16, %rax
	movq	%rsp, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rsp
	movq	%rsi, error_msg
	movq	error_msg, %rdi
	movq	-16(%rbp), %rsi
	callq	strcpy
	movl	-76(%rbp), %edi         # 4-byte Reload
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	cmpq	$0, -32(%rbp)
	je	.LBB93_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movl	40(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 40(%rax)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	52(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 52(%rax)
.LBB93_2:                               # %if.end
	testb	$1, -17(%rbp)
	je	.LBB93_4
# BB#3:                                 # %if.then.9
	movq	-32(%rbp), %rax
	movq	$0, 16(%rax)
.LBB93_4:                               # %if.end.10
	movq	Vframe_list, %rax
	movq	%rax, -48(%rbp)
.LBB93_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -97(%rbp)          # 1-byte Spill
	jne	.LBB93_7
# BB#6:                                 # %land.rhs
                                        #   in Loop: Header=BB93_5 Depth=1
	movb	$1, %al
	movq	-48(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movb	%al, -97(%rbp)          # 1-byte Spill
.LBB93_7:                               # %land.end
                                        #   in Loop: Header=BB93_5 Depth=1
	movb	-97(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB93_8
	jmp	.LBB93_15
.LBB93_8:                               # %for.body
                                        #   in Loop: Header=BB93_5 Depth=1
	movq	-40(%rbp), %rax
	subq	$5, %rax
	movq	56(%rax), %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB93_13
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB93_5 Depth=1
	movq	-64(%rbp), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB93_13
# BB#10:                                # %land.lhs.true.26
                                        #   in Loop: Header=BB93_5 Depth=1
	movq	-40(%rbp), %rax
	cmpq	-64(%rbp), %rax
	je	.LBB93_13
# BB#11:                                # %land.lhs.true.29
                                        #   in Loop: Header=BB93_5 Depth=1
	movq	-64(%rbp), %rax
	subq	$5, %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB93_13
# BB#12:                                # %if.then.33
                                        #   in Loop: Header=BB93_5 Depth=1
	movl	$704, %edi              # imm = 0x2C0
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	delete_frame
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB93_13:                              # %if.end.36
                                        #   in Loop: Header=BB93_5 Depth=1
	jmp	.LBB93_14
.LBB93_14:                              # %for.inc
                                        #   in Loop: Header=BB93_5 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB93_5
.LBB93_15:                              # %for.end
	movq	Vframe_list, %rax
	movq	%rax, -48(%rbp)
.LBB93_16:                              # %for.cond.38
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -121(%rbp)         # 1-byte Spill
	jne	.LBB93_18
# BB#17:                                # %land.rhs.43
                                        #   in Loop: Header=BB93_16 Depth=1
	movb	$1, %al
	movq	-48(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movb	%al, -121(%rbp)         # 1-byte Spill
.LBB93_18:                              # %land.end.46
                                        #   in Loop: Header=BB93_16 Depth=1
	movb	-121(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB93_19
	jmp	.LBB93_24
.LBB93_19:                              # %for.body.47
                                        #   in Loop: Header=BB93_16 Depth=1
	movq	-40(%rbp), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB93_22
# BB#20:                                # %land.lhs.true.56
                                        #   in Loop: Header=BB93_16 Depth=1
	movq	-40(%rbp), %rax
	subq	$5, %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB93_22
# BB#21:                                # %if.then.63
                                        #   in Loop: Header=BB93_16 Depth=1
	movl	$901, %edi              # imm = 0x385
	movq	-40(%rbp), %rax
	subq	$5, %rax
	movq	376(%rax), %rax
	movq	72(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_default_minibuffer_frame
	movl	$704, %edi              # imm = 0x2C0
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	delete_frame
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB93_22:                              # %if.end.69
                                        #   in Loop: Header=BB93_16 Depth=1
	jmp	.LBB93_23
.LBB93_23:                              # %for.inc.70
                                        #   in Loop: Header=BB93_16 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB93_16
.LBB93_24:                              # %for.end.74
	cmpq	$0, -32(%rbp)
	je	.LBB93_26
# BB#25:                                # %if.then.76
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	shut_down_emacs
	movabsq	$.L.str.386, %rsi
	movq	stderr, %rdi
	movq	error_msg, %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	emacs_abort
.LBB93_26:                              # %if.end.79
	cmpq	$0, terminal_list
	jne	.LBB93_28
# BB#27:                                # %if.then.82
	movabsq	$.L.str.387, %rsi
	movq	stderr, %rdi
	movq	error_msg, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$282, %ecx              # imm = 0x11A
	movl	%ecx, %edi
	movl	%eax, -160(%rbp)        # 4-byte Spill
	callq	Fkill_emacs
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB93_28:                              # %if.end.84
	callq	totally_unblock_input
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	clear_waiting_for_input
	movabsq	$.L.str.388, %rdi
	movq	error_msg, %rsi
	movb	$0, %al
	callq	error
.Lfunc_end93:
	.size	x_connection_closed, .Lfunc_end93-x_connection_closed
	.cfi_endproc

	.align	16, 0x90
	.type	x_probe_xfixes_extension,@function
x_probe_xfixes_extension:               # @x_probe_xfixes_extension
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp298:
	.cfi_def_cfa_offset 16
.Ltmp299:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp300:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	-12(%rbp), %rsi
	leaq	-16(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	XFixesQueryVersion
	xorl	%ecx, %ecx
	movb	%cl, %r8b
	cmpl	$0, %eax
	movb	%r8b, -17(%rbp)         # 1-byte Spill
	je	.LBB94_2
# BB#1:                                 # %land.rhs
	cmpl	$4, -12(%rbp)
	setge	%al
	movb	%al, -17(%rbp)          # 1-byte Spill
.LBB94_2:                               # %land.end
	movb	-17(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end94:
	.size	x_probe_xfixes_extension, .Lfunc_end94-x_probe_xfixes_extension
	.cfi_endproc

	.align	16, 0x90
	.type	xfixes_toggle_visible_pointer,@function
xfixes_toggle_visible_pointer:          # @xfixes_toggle_visible_pointer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp301:
	.cfi_def_cfa_offset 16
.Ltmp302:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp303:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	testb	$1, -9(%rbp)
	je	.LBB95_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rsi
	callq	XFixesHideCursor
	jmp	.LBB95_3
.LBB95_2:                               # %if.else
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rsi
	callq	XFixesShowCursor
.LBB95_3:                               # %if.end
	movb	-9(%rbp), %al
	movq	-8(%rbp), %rcx
	andb	$1, %al
	movzbl	%al, %edx
	movl	%edx, %esi
	movq	208(%rcx), %rdi
	shlq	$21, %rsi
	andq	$-2097153, %rdi         # imm = 0xFFFFFFFFFFDFFFFF
	orq	%rsi, %rdi
	movq	%rdi, 208(%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end95:
	.size	xfixes_toggle_visible_pointer, .Lfunc_end95-xfixes_toggle_visible_pointer
	.cfi_endproc

	.align	16, 0x90
	.type	x_toggle_visible_pointer,@function
x_toggle_visible_pointer:               # @x_toggle_visible_pointer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp304:
	.cfi_def_cfa_offset 16
.Ltmp305:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp306:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	testb	$1, -9(%rbp)
	je	.LBB96_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	136(%rax), %rdx
	callq	XDefineCursor
	movl	%eax, -16(%rbp)         # 4-byte Spill
	jmp	.LBB96_3
.LBB96_2:                               # %if.else
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	352(%rax), %rdx
	callq	XDefineCursor
	movl	%eax, -20(%rbp)         # 4-byte Spill
.LBB96_3:                               # %if.end
	movb	-9(%rbp), %al
	movq	-8(%rbp), %rcx
	andb	$1, %al
	movzbl	%al, %edx
	movl	%edx, %esi
	movq	208(%rcx), %rdi
	shlq	$21, %rsi
	andq	$-2097153, %rdi         # imm = 0xFFFFFFFFFFDFFFFF
	orq	%rsi, %rdi
	movq	%rdi, 208(%rcx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end96:
	.size	x_toggle_visible_pointer, .Lfunc_end96-x_toggle_visible_pointer
	.cfi_endproc

	.align	16, 0x90
	.type	make_invisible_cursor,@function
make_invisible_cursor:                  # @make_invisible_cursor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp307:
	.cfi_def_cfa_offset 16
.Ltmp308:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp309:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	$0, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	x_catch_errors
	movabsq	$make_invisible_cursor.no_data, %rdx
	movl	$1, %eax
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	104(%rcx), %rsi
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	XCreateBitmapFromData
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	x_had_errors_p
	testb	$1, %al
	jne	.LBB97_6
# BB#1:                                 # %land.lhs.true
	cmpq	$0, -24(%rbp)
	je	.LBB97_6
# BB#2:                                 # %if.then
	leaq	-40(%rbp), %rax
	xorl	%r9d, %r9d
	movq	$0, -40(%rbp)
	movw	$0, -28(%rbp)
	movw	$0, -30(%rbp)
	movw	$0, -32(%rbp)
	movb	$7, -26(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rax, %r8
	movl	$0, (%rsp)
	callq	XCreatePixmapCursor
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	callq	x_had_errors_p
	testb	$1, %al
	jne	.LBB97_5
# BB#3:                                 # %land.lhs.true.4
	cmpq	$0, -56(%rbp)
	je	.LBB97_5
# BB#4:                                 # %if.then.6
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB97_5:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	XFreePixmap
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB97_6:                               # %if.end.8
	callq	x_uncatch_errors
	movq	-48(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end97:
	.size	make_invisible_cursor, .Lfunc_end97-make_invisible_cursor
	.cfi_endproc

	.align	16, 0x90
	.type	xim_instantiate_callback,@function
xim_instantiate_callback:               # @xim_instantiate_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp310:
	.cfi_def_cfa_offset 16
.Ltmp311:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp312:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rdx
	cmpq	$0, 704(%rdx)
	je	.LBB98_2
# BB#1:                                 # %if.then
	jmp	.LBB98_20
.LBB98_2:                               # %if.end
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rsi
	callq	xim_open_dpy
	movq	-40(%rbp), %rax
	cmpq	$0, 704(%rax)
	je	.LBB98_20
# BB#3:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	cmpl	$0, 40(%rax)
	jle	.LBB98_20
# BB#4:                                 # %if.then.4
	callq	block_input
	movq	Vframe_list, %rax
	movq	%rax, -48(%rbp)
.LBB98_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -73(%rbp)          # 1-byte Spill
	jne	.LBB98_7
# BB#6:                                 # %land.rhs
                                        #   in Loop: Header=BB98_5 Depth=1
	movb	$1, %al
	movq	-48(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movb	%al, -73(%rbp)          # 1-byte Spill
.LBB98_7:                               # %land.end
                                        #   in Loop: Header=BB98_5 Depth=1
	movb	-73(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB98_8
	jmp	.LBB98_19
.LBB98_8:                               # %for.body
                                        #   in Loop: Header=BB98_5 Depth=1
	movq	-56(%rbp), %rax
	subq	$5, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB98_17
# BB#9:                                 # %land.lhs.true.10
                                        #   in Loop: Header=BB98_5 Depth=1
	movq	-64(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	-32(%rbp), %rcx
	cmpq	(%rcx), %rax
	jne	.LBB98_17
# BB#10:                                # %if.then.14
                                        #   in Loop: Header=BB98_5 Depth=1
	movq	-64(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 448(%rax)
	jne	.LBB98_16
# BB#11:                                # %if.then.19
                                        #   in Loop: Header=BB98_5 Depth=1
	movq	-64(%rbp), %rdi
	callq	create_frame_xic
	movq	-64(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	456(%rdi), %rdi
	andq	$256, %rdi              # imm = 0x100
	cmpq	$0, %rdi
	je	.LBB98_13
# BB#12:                                # %if.then.24
                                        #   in Loop: Header=BB98_5 Depth=1
	movq	-64(%rbp), %rdi
	callq	xic_set_statusarea
.LBB98_13:                              # %if.end.25
                                        #   in Loop: Header=BB98_5 Depth=1
	movq	-64(%rbp), %rax
	movq	384(%rax), %rax
	movq	456(%rax), %rax
	andq	$4, %rax
	cmpq	$0, %rax
	je	.LBB98_15
# BB#14:                                # %if.then.31
                                        #   in Loop: Header=BB98_5 Depth=1
	movq	-64(%rbp), %rax
	movq	48(%rax), %rdi
	callq	XWINDOW
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	-72(%rbp), %rax
	movl	352(%rax), %esi
	movq	-72(%rbp), %rax
	movl	356(%rax), %edx
	callq	xic_set_preeditarea
.LBB98_15:                              # %if.end.34
                                        #   in Loop: Header=BB98_5 Depth=1
	jmp	.LBB98_16
.LBB98_16:                              # %if.end.35
                                        #   in Loop: Header=BB98_5 Depth=1
	jmp	.LBB98_17
.LBB98_17:                              # %if.end.36
                                        #   in Loop: Header=BB98_5 Depth=1
	jmp	.LBB98_18
.LBB98_18:                              # %for.inc
                                        #   in Loop: Header=BB98_5 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB98_5
.LBB98_19:                              # %for.end
	callq	unblock_input
.LBB98_20:                              # %if.end.38
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end98:
	.size	xim_instantiate_callback, .Lfunc_end98-xim_instantiate_callback
	.cfi_endproc

	.align	16, 0x90
	.type	xim_open_dpy,@function
xim_open_dpy:                           # @xim_open_dpy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp313:
	.cfi_def_cfa_offset 16
.Ltmp314:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp315:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	testb	$1, use_xim
	je	.LBB99_6
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	cmpq	$0, 704(%rax)
	je	.LBB99_3
# BB#2:                                 # %if.then.3
	movq	-8(%rbp), %rax
	movq	704(%rax), %rdi
	callq	XCloseIM
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB99_3:                               # %if.end
	movabsq	$emacs_class, %rcx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	160(%rax), %rsi
	movq	-16(%rbp), %rdx
	callq	XOpenIM
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 704(%rcx)
	cmpq	$0, -24(%rbp)
	je	.LBB99_5
# BB#4:                                 # %if.then.8
	movabsq	$.L.str.392, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rdx
	addq	$712, %rdx              # imm = 0x2C8
	movb	$0, %al
	callq	XGetIMValues
	movabsq	$.L.str.393, %rsi
	leaq	-40(%rbp), %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movabsq	$xim_destroy_callback, %rdi
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movb	$0, %al
	callq	XSetIMValues
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB99_5:                               # %if.end.11
	jmp	.LBB99_7
.LBB99_6:                               # %if.else
	movq	-8(%rbp), %rax
	movq	$0, 704(%rax)
.LBB99_7:                               # %if.end.13
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end99:
	.size	xim_open_dpy, .Lfunc_end99-xim_open_dpy
	.cfi_endproc

	.align	16, 0x90
	.type	xim_destroy_callback,@function
xim_destroy_callback:                   # @xim_destroy_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp316:
	.cfi_def_cfa_offset 16
.Ltmp317:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp318:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	callq	block_input
	movq	Vframe_list, %rdx
	movq	%rdx, -48(%rbp)
.LBB100_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -57(%rbp)          # 1-byte Spill
	jne	.LBB100_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB100_1 Depth=1
	movb	$1, %al
	movq	-48(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movb	%al, -57(%rbp)          # 1-byte Spill
.LBB100_3:                              # %land.end
                                        #   in Loop: Header=BB100_1 Depth=1
	movb	-57(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB100_4
	jmp	.LBB100_9
.LBB100_4:                              # %for.body
                                        #   in Loop: Header=BB100_1 Depth=1
	movq	-40(%rbp), %rax
	subq	$5, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB100_7
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB100_1 Depth=1
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB100_7
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB100_1 Depth=1
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	movq	$0, 448(%rax)
	movq	-56(%rbp), %rdi
	callq	xic_free_xfontset
.LBB100_7:                              # %if.end
                                        #   in Loop: Header=BB100_1 Depth=1
	jmp	.LBB100_8
.LBB100_8:                              # %for.inc
                                        #   in Loop: Header=BB100_1 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB100_1
.LBB100_9:                              # %for.end
	movq	-32(%rbp), %rax
	movq	$0, 704(%rax)
	movq	-32(%rbp), %rax
	movq	712(%rax), %rax
	movq	%rax, %rdi
	callq	XFree
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	unblock_input
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end100:
	.size	xim_destroy_callback, .Lfunc_end100-xim_destroy_callback
	.cfi_endproc

	.align	16, 0x90
	.type	x_clear_frame,@function
x_clear_frame:                          # @x_clear_frame
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp319:
	.cfi_def_cfa_offset 16
.Ltmp320:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp321:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	callq	XWINDOW
	movq	%rax, %rdi
	callq	mark_window_cursors_off
	callq	block_input
	movq	-8(%rbp), %rdi
	callq	x_clear_window
	movq	-8(%rbp), %rdi
	callq	x_scroll_bar_clear
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 88(%rax)
	je	.LBB101_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	88(%rax), %rdi
	callq	gtk_widget_queue_draw
.LBB101_2:                              # %if.end
	callq	unblock_input
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end101:
	.size	x_clear_frame, .Lfunc_end101-x_clear_frame
	.cfi_endproc

	.align	16, 0x90
	.type	x_ins_del_lines,@function
x_ins_del_lines:                        # @x_ins_del_lines
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp322:
	.cfi_def_cfa_offset 16
.Ltmp323:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp324:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	callq	emacs_abort
.Lfunc_end102:
	.size	x_ins_del_lines, .Lfunc_end102-x_ins_del_lines
	.cfi_endproc

	.align	16, 0x90
	.type	x_delete_glyphs,@function
x_delete_glyphs:                        # @x_delete_glyphs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp325:
	.cfi_def_cfa_offset 16
.Ltmp326:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp327:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	callq	emacs_abort
.Lfunc_end103:
	.size	x_delete_glyphs, .Lfunc_end103-x_delete_glyphs
	.cfi_endproc

	.align	16, 0x90
	.type	XTring_bell,@function
XTring_bell:                            # @XTring_bell
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp328:
	.cfi_def_cfa_offset 16
.Ltmp329:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp330:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	cmpq	$0, 16(%rdi)
	je	.LBB104_5
# BB#1:                                 # %if.then
	testb	$1, globals+3436
	je	.LBB104_3
# BB#2:                                 # %if.then.2
	movq	-8(%rbp), %rdi
	callq	XTflash
	jmp	.LBB104_4
.LBB104_3:                              # %if.else
	callq	block_input
	xorl	%eax, %eax
	movl	%eax, %ecx
	xorl	%edx, %edx
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	16(%rsi), %rdi
	movq	%rcx, %rsi
	callq	XkbBell
	movl	%eax, -12(%rbp)         # 4-byte Spill
	callq	unblock_input
.LBB104_4:                              # %if.end
	jmp	.LBB104_5
.LBB104_5:                              # %if.end.7
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end104:
	.size	XTring_bell, .Lfunc_end104-XTring_bell
	.cfi_endproc

	.align	16, 0x90
	.type	x_update_begin,@function
x_update_begin:                         # @x_update_begin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp331:
	.cfi_def_cfa_offset 16
.Ltmp332:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp333:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end105:
	.size	x_update_begin, .Lfunc_end105-x_update_begin
	.cfi_endproc

	.align	16, 0x90
	.type	x_update_end,@function
x_update_end:                           # @x_update_end
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp334:
	.cfi_def_cfa_offset 16
.Ltmp335:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp336:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rdi
	shrq	$23, %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$2, %eax
	jne	.LBB106_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	addq	$184, %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB106_3
.LBB106_2:                              # %cond.false
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	(%rax), %rax
	addq	$104, %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB106_3:                              # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	movb	64(%rax), %cl
	andb	$-3, %cl
	movb	%cl, 64(%rax)
	popq	%rbp
	retq
.Lfunc_end106:
	.size	x_update_end, .Lfunc_end106-x_update_end
	.cfi_endproc

	.align	16, 0x90
	.type	XTread_socket,@function
XTread_socket:                          # @XTread_socket
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp337:
	.cfi_def_cfa_offset 16
.Ltmp338:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp339:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
	movb	$0, -21(%rbp)
	movq	-8(%rbp), %rsi
	movq	88(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	callq	block_input
	movq	-32(%rbp), %rsi
	cmpq	XTread_socket_fake_io_error, %rsi
	jne	.LBB107_2
# BB#1:                                 # %if.then
	movq	$0, XTread_socket_fake_io_error
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	callq	x_io_error_quitter
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB107_2:                              # %if.end
	jmp	.LBB107_3
.LBB107_3:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	callq	gtk_events_pending
	cmpl	$0, %eax
	je	.LBB107_7
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB107_3 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, current_count
	movq	-16(%rbp), %rcx
	movq	%rcx, current_hold_quit
	callq	gtk_main_iteration
	movl	current_count, %edx
	movl	%edx, -20(%rbp)
	movl	$-1, current_count
	movq	$0, current_hold_quit
	cmpl	$1, current_finish
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jne	.LBB107_6
# BB#5:                                 # %if.then.4
	jmp	.LBB107_7
.LBB107_6:                              # %if.end.5
                                        #   in Loop: Header=BB107_3 Depth=1
	jmp	.LBB107_3
.LBB107_7:                              # %while.end
	testb	$1, -21(%rbp)
	jne	.LBB107_13
# BB#8:                                 # %if.then.7
	movl	x_noop_count, %eax
	addl	$1, %eax
	movl	%eax, x_noop_count
	cmpl	$100, x_noop_count
	jl	.LBB107_12
# BB#9:                                 # %if.then.9
	movl	$0, x_noop_count
	cmpq	$0, next_noop_dpyinfo
	jne	.LBB107_11
# BB#10:                                # %if.then.11
	movq	x_display_list, %rax
	movq	%rax, next_noop_dpyinfo
.LBB107_11:                             # %if.end.12
	movq	next_noop_dpyinfo, %rax
	movq	16(%rax), %rdi
	callq	XNoOp
	movq	next_noop_dpyinfo, %rdi
	movq	(%rdi), %rdi
	movq	%rdi, next_noop_dpyinfo
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB107_12:                             # %if.end.15
	jmp	.LBB107_13
.LBB107_13:                             # %if.end.16
	movq	-32(%rbp), %rax
	cmpq	$0, 624(%rax)
	je	.LBB107_15
# BB#14:                                # %if.then.18
	movq	-32(%rbp), %rax
	movq	624(%rax), %rdi
	callq	x_raise_frame
	movq	-32(%rbp), %rax
	movq	$0, 624(%rax)
.LBB107_15:                             # %if.end.21
	callq	unblock_input
	movl	-20(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end107:
	.size	XTread_socket, .Lfunc_end107-XTread_socket
	.cfi_endproc

	.align	16, 0x90
	.type	XTframe_up_to_date,@function
XTframe_up_to_date:                     # @XTframe_up_to_date
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp340:
	.cfi_def_cfa_offset 16
.Ltmp341:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp342:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rdi
	shrq	$23, %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$2, %eax
	jne	.LBB108_9
# BB#1:                                 # %if.then
	jmp	.LBB108_2
.LBB108_2:                              # %do.body
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB108_4
# BB#3:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	addq	$184, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB108_5
.LBB108_4:                              # %cond.false
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	(%rax), %rax
	addq	$104, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB108_5:                              # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	48(%rcx), %rax
	jne	.LBB108_7
# BB#6:                                 # %if.then.11
	callq	block_input
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	56(%rax), %esi
	movq	-16(%rbp), %rax
	movl	60(%rax), %edx
	callq	note_mouse_highlight
	callq	unblock_input
.LBB108_7:                              # %if.end
	jmp	.LBB108_8
.LBB108_8:                              # %do.end
	jmp	.LBB108_9
.LBB108_9:                              # %if.end.13
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end108:
	.size	XTframe_up_to_date, .Lfunc_end108-XTframe_up_to_date
	.cfi_endproc

	.align	16, 0x90
	.type	XTmouse_position,@function
XTmouse_position:                       # @XTmouse_position
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp343:
	.cfi_def_cfa_offset 16
.Ltmp344:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp345:
	.cfi_def_cfa_register %rbp
	subq	$240, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	%rax, -72(%rbp)
	callq	block_input
	movq	-72(%rbp), %rax
	cmpq	$0, 656(%rax)
	je	.LBB109_6
# BB#1:                                 # %land.lhs.true
	cmpl	$0, -12(%rbp)
	jne	.LBB109_6
# BB#2:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	656(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	testb	$1, 68(%rax)
	je	.LBB109_4
# BB#3:                                 # %if.then.4
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	movq	-56(%rbp), %r9
	callq	x_horizontal_scroll_bar_report_motion
	jmp	.LBB109_5
.LBB109_4:                              # %if.else
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	movq	-56(%rbp), %r9
	callq	x_scroll_bar_report_motion
.LBB109_5:                              # %if.end
	jmp	.LBB109_41
.LBB109_6:                              # %if.else.5
	movq	Vframe_list, %rax
	movq	%rax, -128(%rbp)
.LBB109_7:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-128(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -169(%rbp)         # 1-byte Spill
	jne	.LBB109_9
# BB#8:                                 # %land.rhs
                                        #   in Loop: Header=BB109_7 Depth=1
	movb	$1, %al
	movq	-128(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -120(%rbp)
	movb	%al, -169(%rbp)         # 1-byte Spill
.LBB109_9:                              # %land.end
                                        #   in Loop: Header=BB109_7 Depth=1
	movb	-169(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB109_10
	jmp	.LBB109_15
.LBB109_10:                             # %for.body
                                        #   in Loop: Header=BB109_7 Depth=1
	movq	-120(%rbp), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB109_13
# BB#11:                                # %land.lhs.true.11
                                        #   in Loop: Header=BB109_7 Depth=1
	movq	-120(%rbp), %rax
	subq	$5, %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	cmpq	16(%rcx), %rax
	jne	.LBB109_13
# BB#12:                                # %if.then.22
                                        #   in Loop: Header=BB109_7 Depth=1
	movq	-120(%rbp), %rax
	subq	$5, %rax
	movq	208(%rax), %rcx
	andq	$-1048577, %rcx         # imm = 0xFFFFFFFFFFEFFFFF
	movq	%rcx, 208(%rax)
.LBB109_13:                             # %if.end.26
                                        #   in Loop: Header=BB109_7 Depth=1
	jmp	.LBB109_14
.LBB109_14:                             # %for.inc
                                        #   in Loop: Header=BB109_7 Depth=1
	movq	-128(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB109_7
.LBB109_15:                             # %for.end
	leaq	-88(%rbp), %rdx
	leaq	-104(%rbp), %rcx
	leaq	-92(%rbp), %r8
	leaq	-96(%rbp), %r9
	leaq	-108(%rbp), %rax
	movq	-72(%rbp), %rsi
	movq	$0, 656(%rsi)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	16(%rsi), %rdi
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	16(%rsi), %rsi
	movslq	224(%rsi), %rsi
	movq	-8(%rbp), %r10
	movq	(%r10), %r10
	movq	384(%r10), %r10
	movq	424(%r10), %r10
	movq	16(%r10), %r10
	shlq	$7, %rsi
	addq	232(%r10), %rsi
	movq	16(%rsi), %rsi
	movq	%rax, (%rsp)
	movq	%rax, 8(%rsp)
	movq	%rax, 16(%rsp)
	callq	XQueryPointer
	movl	$0, -156(%rbp)
	movl	$0, -160(%rbp)
	movq	-88(%rbp), %rcx
	movq	%rcx, -136(%rbp)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	16(%rcx), %rdi
	movl	%eax, -176(%rbp)        # 4-byte Spill
	callq	x_catch_errors
	movq	-72(%rbp), %rdi
	callq	x_mouse_grabbed
	testb	$1, %al
	jne	.LBB109_16
	jmp	.LBB109_17
.LBB109_16:                             # %if.then.47
	leaq	-148(%rbp), %r9
	leaq	-152(%rbp), %rax
	leaq	-144(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	384(%rdx), %rdx
	movq	424(%rdx), %rdx
	movq	16(%rdx), %rdi
	movq	-88(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	632(%rdx), %rdx
	movq	384(%rdx), %rdx
	movq	56(%rdx), %rdx
	movl	-92(%rbp), %r8d
	movl	-96(%rbp), %r10d
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r10d, %r8d
	movq	%rax, (%rsp)
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	XTranslateCoordinates
	movq	-72(%rbp), %rdx
	movq	632(%rdx), %rdx
	movq	%rdx, -64(%rbp)
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jmp	.LBB109_25
.LBB109_17:                             # %if.else.56
	jmp	.LBB109_18
.LBB109_18:                             # %while.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	-148(%rbp), %r9
	leaq	-152(%rbp), %rax
	leaq	-144(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	384(%rdx), %rdx
	movq	424(%rdx), %rdx
	movq	16(%rdx), %rdi
	movq	-88(%rbp), %rsi
	movq	-136(%rbp), %rdx
	movl	-92(%rbp), %r8d
	movl	-96(%rbp), %r10d
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r10d, %r8d
	movq	%rax, (%rsp)
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	XTranslateCoordinates
	cmpq	$0, -144(%rbp)
	movl	%eax, -204(%rbp)        # 4-byte Spill
	je	.LBB109_20
# BB#19:                                # %lor.lhs.false
                                        #   in Loop: Header=BB109_18 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB109_21
.LBB109_20:                             # %if.then.66
	jmp	.LBB109_24
.LBB109_21:                             # %if.end.67
                                        #   in Loop: Header=BB109_18 Depth=1
	movq	-72(%rbp), %rdi
	movq	-136(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	callq	x_window_to_frame
	cmpq	$0, %rax
	je	.LBB109_23
# BB#22:                                # %if.then.71
	jmp	.LBB109_24
.LBB109_23:                             # %if.end.72
                                        #   in Loop: Header=BB109_18 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -136(%rbp)
	movl	-148(%rbp), %ecx
	movl	%ecx, -156(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -160(%rbp)
	jmp	.LBB109_18
.LBB109_24:                             # %while.end
	movq	-72(%rbp), %rdi
	movq	-136(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	callq	x_window_to_frame
	movq	%rax, -64(%rbp)
.LBB109_25:                             # %if.end.75
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	callq	x_had_errors_p
	testb	$1, %al
	jne	.LBB109_26
	jmp	.LBB109_27
.LBB109_26:                             # %if.then.81
	movq	$0, -64(%rbp)
.LBB109_27:                             # %if.end.82
	callq	x_uncatch_errors_after_check
	cmpq	$0, -64(%rbp)
	jne	.LBB109_31
# BB#28:                                # %if.then.84
	movl	$2, %edx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-136(%rbp), %rsi
	callq	x_window_to_scroll_bar
	movq	%rax, -168(%rbp)
	cmpq	$0, -168(%rbp)
	je	.LBB109_30
# BB#29:                                # %if.then.92
	movq	-168(%rbp), %rax
	movq	8(%rax), %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, -64(%rbp)
	movl	-156(%rbp), %ecx
	movl	%ecx, -148(%rbp)
	movl	-160(%rbp), %ecx
	movl	%ecx, -152(%rbp)
.LBB109_30:                             # %if.end.96
	jmp	.LBB109_31
.LBB109_31:                             # %if.end.97
	cmpq	$0, -64(%rbp)
	jne	.LBB109_38
# BB#32:                                # %land.lhs.true.100
	cmpl	$0, -12(%rbp)
	jle	.LBB109_38
# BB#33:                                # %if.then.103
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB109_34
	jmp	.LBB109_36
.LBB109_34:                             # %land.lhs.true.106
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB109_36
# BB#35:                                # %cond.true
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB109_37
.LBB109_36:                             # %cond.false
	callq	emacs_abort
.LBB109_37:                             # %cond.end
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
.LBB109_38:                             # %if.end.111
	cmpq	$0, -64(%rbp)
	je	.LBB109_40
# BB#39:                                # %if.then.113
	movq	-64(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rdi
	movl	-148(%rbp), %esi
	movl	-152(%rbp), %edx
	movq	-72(%rbp), %rax
	addq	$680, %rax              # imm = 0x2A8
	movq	%rax, %rcx
	callq	remember_mouse_glyph
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, 640(%rcx)
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	movq	-64(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movslq	-148(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movslq	-152(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rax
	movq	688(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB109_40:                             # %if.end.122
	jmp	.LBB109_41
.LBB109_41:                             # %if.end.123
	callq	unblock_input
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end109:
	.size	XTmouse_position, .Lfunc_end109-XTmouse_position
	.cfi_endproc

	.align	16, 0x90
	.type	XTframe_rehighlight,@function
XTframe_rehighlight:                    # @XTframe_rehighlight
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp346:
	.cfi_def_cfa_offset 16
.Ltmp347:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp348:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	callq	x_frame_rehighlight
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end110:
	.size	XTframe_rehighlight, .Lfunc_end110-XTframe_rehighlight
	.cfi_endproc

	.align	16, 0x90
	.type	XTframe_raise_lower,@function
XTframe_raise_lower:                    # @XTframe_raise_lower
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp349:
	.cfi_def_cfa_offset 16
.Ltmp350:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp351:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	testb	$1, -9(%rbp)
	je	.LBB111_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	x_raise_frame
	jmp	.LBB111_3
.LBB111_2:                              # %if.else
	movq	-8(%rbp), %rdi
	callq	x_lower_frame
.LBB111_3:                              # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end111:
	.size	XTframe_raise_lower, .Lfunc_end111-XTframe_raise_lower
	.cfi_endproc

	.align	16, 0x90
	.type	XTfullscreen_hook,@function
XTfullscreen_hook:                      # @XTfullscreen_hook
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp352:
	.cfi_def_cfa_offset 16
.Ltmp353:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp354:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rdi
	shrq	$10, %rdi
	andq	$3, %rdi
	movl	%edi, %eax
	cmpl	$0, %eax
	je	.LBB112_2
# BB#1:                                 # %if.then
	callq	block_input
	movq	-8(%rbp), %rdi
	callq	x_check_fullscreen
	movq	-8(%rbp), %rdi
	callq	x_sync
	callq	unblock_input
.LBB112_2:                              # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end112:
	.size	XTfullscreen_hook, .Lfunc_end112-XTfullscreen_hook
	.cfi_endproc

	.align	16, 0x90
	.type	XTset_vertical_scroll_bar,@function
XTset_vertical_scroll_bar:              # @XTset_vertical_scroll_bar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp355:
	.cfi_def_cfa_offset 16
.Ltmp356:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp357:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$376, %rsp              # imm = 0x178
.Ltmp358:
	.cfi_offset %rbx, -24
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	leaq	-76(%rbp), %r10
	leaq	-80(%rbp), %r11
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	subq	$5, %rdi
	movq	%rdi, -40(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	movq	%r9, %rdx
	movq	%r10, %rcx
	movq	%r9, %r8
	movq	%r11, %r9
	callq	window_box
	movl	-76(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -64(%rbp)
	movq	-16(%rbp), %rcx
	movw	468(%rcx), %bx
	shrw	$11, %bx
	andw	$1, %bx
	testw	$1, %bx
	je	.LBB113_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB113_9
.LBB113_2:                              # %cond.false
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB113_4
# BB#3:                                 # %cond.true.1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$30, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	jmp	.LBB113_8
.LBB113_4:                              # %cond.false.9
	movl	$607, %edi              # imm = 0x25F
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB113_6
# BB#5:                                 # %cond.true.13
	movl	$1, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB113_7
.LBB113_6:                              # %cond.false.14
	movl	$811, %edi              # imm = 0x32B
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	$2, %ecx
	movq	-128(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -116(%rbp)        # 4-byte Spill
.LBB113_7:                              # %cond.end
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB113_8:                              # %cond.end.19
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB113_9:                              # %cond.end.21
	movl	-88(%rbp), %eax         # 4-byte Reload
	cmpl	$2, %eax
	jne	.LBB113_30
# BB#10:                                # %cond.true.24
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	332(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	240(%rax), %edx
	movq	-16(%rbp), %rax
	addl	256(%rax), %edx
	movq	-16(%rbp), %rax
	movl	240(%rax), %esi
	movq	-16(%rbp), %rax
	addl	256(%rax), %esi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	movl	%edx, -136(%rbp)        # 4-byte Spill
	movl	%esi, -140(%rbp)        # 4-byte Spill
	callq	XWINDOW
	movl	240(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -144(%rbp)        # 4-byte Spill
	callq	XWINDOW
	movl	-144(%rbp), %ecx        # 4-byte Reload
	addl	256(%rax), %ecx
	movl	-140(%rbp), %edx        # 4-byte Reload
	cmpl	%ecx, %edx
	je	.LBB113_12
# BB#11:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB113_13
.LBB113_12:                             # %cond.true.44
	xorl	%eax, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB113_14
.LBB113_13:                             # %cond.false.45
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	336(%rax), %ecx
	movl	%ecx, -148(%rbp)        # 4-byte Spill
.LBB113_14:                             # %cond.end.48
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	-136(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movw	468(%rdx), %si
	shrw	$11, %si
	andw	$1, %si
	testw	$1, %si
	movl	%ecx, -152(%rbp)        # 4-byte Spill
	je	.LBB113_16
# BB#15:                                # %cond.true.56
	xorl	%eax, %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jmp	.LBB113_23
.LBB113_16:                             # %cond.false.57
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB113_18
# BB#17:                                # %cond.true.61
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$30, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	jmp	.LBB113_22
.LBB113_18:                             # %cond.false.69
	movl	$607, %edi              # imm = 0x25F
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB113_20
# BB#19:                                # %cond.true.73
	movl	$1, %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jmp	.LBB113_21
.LBB113_20:                             # %cond.false.74
	movl	$811, %edi              # imm = 0x32B
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	$2, %ecx
	movq	-200(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -188(%rbp)        # 4-byte Spill
.LBB113_21:                             # %cond.end.79
	movl	-188(%rbp), %eax        # 4-byte Reload
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB113_22:                             # %cond.end.81
	movl	-172(%rbp), %eax        # 4-byte Reload
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB113_23:                             # %cond.end.83
	movl	-156(%rbp), %eax        # 4-byte Reload
	cmpl	$2, %eax
	jne	.LBB113_28
# BB#24:                                # %cond.true.86
	movq	-16(%rbp), %rax
	cmpl	$0, 436(%rax)
	jl	.LBB113_26
# BB#25:                                # %cond.true.88
	movq	-16(%rbp), %rax
	movl	436(%rax), %ecx
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	jmp	.LBB113_27
.LBB113_26:                             # %cond.false.90
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	420(%rax), %ecx
	movl	%ecx, -204(%rbp)        # 4-byte Spill
.LBB113_27:                             # %cond.end.93
	movl	-204(%rbp), %eax        # 4-byte Reload
	movl	%eax, -208(%rbp)        # 4-byte Spill
	jmp	.LBB113_29
.LBB113_28:                             # %cond.false.95
	xorl	%eax, %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
	jmp	.LBB113_29
.LBB113_29:                             # %cond.end.96
	movl	-208(%rbp), %eax        # 4-byte Reload
	movl	-152(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movl	-132(%rbp), %eax        # 4-byte Reload
	addl	%ecx, %eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
	jmp	.LBB113_31
.LBB113_30:                             # %cond.false.100
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	332(%rax), %ecx
	movq	-16(%rbp), %rax
	addl	240(%rax), %ecx
	movl	%ecx, -212(%rbp)        # 4-byte Spill
.LBB113_31:                             # %cond.end.106
	movl	-212(%rbp), %eax        # 4-byte Reload
	movl	%eax, -68(%rbp)
	movq	-16(%rbp), %rcx
	movw	468(%rcx), %dx
	shrw	$11, %dx
	andw	$1, %dx
	testw	$1, %dx
	je	.LBB113_33
# BB#32:                                # %cond.true.113
	xorl	%eax, %eax
	movl	%eax, -216(%rbp)        # 4-byte Spill
	jmp	.LBB113_40
.LBB113_33:                             # %cond.false.114
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB113_35
# BB#34:                                # %cond.true.118
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$30, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	jmp	.LBB113_39
.LBB113_35:                             # %cond.false.126
	movl	$607, %edi              # imm = 0x25F
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB113_37
# BB#36:                                # %cond.true.130
	movl	$1, %eax
	movl	%eax, -244(%rbp)        # 4-byte Spill
	jmp	.LBB113_38
.LBB113_37:                             # %cond.false.131
	movl	$811, %edi              # imm = 0x32B
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	$2, %ecx
	movq	-256(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -244(%rbp)        # 4-byte Spill
.LBB113_38:                             # %cond.end.136
	movl	-244(%rbp), %eax        # 4-byte Reload
	movl	%eax, -228(%rbp)        # 4-byte Spill
.LBB113_39:                             # %cond.end.138
	movl	-228(%rbp), %eax        # 4-byte Reload
	movl	%eax, -216(%rbp)        # 4-byte Spill
.LBB113_40:                             # %cond.end.140
	movl	-216(%rbp), %eax        # 4-byte Reload
	cmpl	$1, %eax
	je	.LBB113_51
# BB#41:                                # %lor.lhs.false.143
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB113_43
# BB#42:                                # %cond.true.149
	xorl	%eax, %eax
	movl	%eax, -260(%rbp)        # 4-byte Spill
	jmp	.LBB113_50
.LBB113_43:                             # %cond.false.150
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB113_45
# BB#44:                                # %cond.true.154
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$30, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, -276(%rbp)        # 4-byte Spill
	jmp	.LBB113_49
.LBB113_45:                             # %cond.false.162
	movl	$607, %edi              # imm = 0x25F
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB113_47
# BB#46:                                # %cond.true.166
	movl	$1, %eax
	movl	%eax, -292(%rbp)        # 4-byte Spill
	jmp	.LBB113_48
.LBB113_47:                             # %cond.false.167
	movl	$811, %edi              # imm = 0x32B
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	$2, %ecx
	movq	-304(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -292(%rbp)        # 4-byte Spill
.LBB113_48:                             # %cond.end.172
	movl	-292(%rbp), %eax        # 4-byte Reload
	movl	%eax, -276(%rbp)        # 4-byte Spill
.LBB113_49:                             # %cond.end.174
	movl	-276(%rbp), %eax        # 4-byte Reload
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB113_50:                             # %cond.end.176
	movl	-260(%rbp), %eax        # 4-byte Reload
	cmpl	$2, %eax
	jne	.LBB113_55
.LBB113_51:                             # %cond.true.179
	movq	-16(%rbp), %rax
	cmpl	$0, 436(%rax)
	jl	.LBB113_53
# BB#52:                                # %cond.true.182
	movq	-16(%rbp), %rax
	movl	436(%rax), %ecx
	movl	%ecx, -308(%rbp)        # 4-byte Spill
	jmp	.LBB113_54
.LBB113_53:                             # %cond.false.184
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	420(%rax), %ecx
	movl	%ecx, -308(%rbp)        # 4-byte Spill
.LBB113_54:                             # %cond.end.188
	movl	-308(%rbp), %eax        # 4-byte Reload
	movl	%eax, -312(%rbp)        # 4-byte Spill
	jmp	.LBB113_56
.LBB113_55:                             # %cond.false.190
	xorl	%eax, %eax
	movl	%eax, -312(%rbp)        # 4-byte Spill
	jmp	.LBB113_56
.LBB113_56:                             # %cond.end.191
	movl	-312(%rbp), %eax        # 4-byte Reload
	xorl	%edi, %edi
	movl	%eax, -72(%rbp)
	movq	-16(%rbp), %rcx
	movq	120(%rcx), %rcx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB113_64
# BB#57:                                # %if.then
	cmpl	$0, -72(%rbp)
	jle	.LBB113_60
# BB#58:                                # %land.lhs.true
	cmpl	$0, -64(%rbp)
	jle	.LBB113_60
# BB#59:                                # %if.then.197
	callq	block_input
	movq	-40(%rbp), %rdi
	movl	-68(%rbp), %esi
	movl	-60(%rbp), %edx
	movl	-72(%rbp), %ecx
	movl	-64(%rbp), %r8d
	callq	x_clear_area
	callq	unblock_input
.LBB113_60:                             # %if.end
	movq	-16(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %ecx
	cmpl	$1, -64(%rbp)
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movl	%esi, -332(%rbp)        # 4-byte Spill
	movl	%edx, -336(%rbp)        # 4-byte Spill
	movl	%ecx, -340(%rbp)        # 4-byte Spill
	jle	.LBB113_62
# BB#61:                                # %cond.true.199
	movl	-64(%rbp), %eax
	movl	%eax, -344(%rbp)        # 4-byte Spill
	jmp	.LBB113_63
.LBB113_62:                             # %cond.false.200
	movl	$1, %eax
	movl	%eax, -344(%rbp)        # 4-byte Spill
	jmp	.LBB113_63
.LBB113_63:                             # %cond.end.201
	movl	-344(%rbp), %eax        # 4-byte Reload
	xorl	%r9d, %r9d
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movl	-332(%rbp), %esi        # 4-byte Reload
	movl	-336(%rbp), %edx        # 4-byte Reload
	movl	-340(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	x_scroll_bar_create
	movq	%rax, -56(%rbp)
	jmp	.LBB113_81
.LBB113_64:                             # %if.else
	movl	$0, -84(%rbp)
	movq	-16(%rbp), %rax
	movq	120(%rax), %rdi
	callq	XVECTOR
	movq	%rax, -56(%rbp)
	callq	block_input
	movl	-68(%rbp), %ecx
	movq	-56(%rbp), %rax
	cmpl	44(%rax), %ecx
	je	.LBB113_66
# BB#65:                                # %if.then.208
	movl	-84(%rbp), %eax
	orl	$1, %eax
	movl	%eax, -84(%rbp)
.LBB113_66:                             # %if.end.209
	movl	-60(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	40(%rcx), %eax
	je	.LBB113_68
# BB#67:                                # %if.then.212
	movl	-84(%rbp), %eax
	orl	$2, %eax
	movl	%eax, -84(%rbp)
.LBB113_68:                             # %if.end.214
	movl	-72(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	48(%rcx), %eax
	je	.LBB113_70
# BB#69:                                # %if.then.217
	movl	-84(%rbp), %eax
	orl	$4, %eax
	movl	%eax, -84(%rbp)
.LBB113_70:                             # %if.end.219
	movl	-64(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	52(%rcx), %eax
	je	.LBB113_72
# BB#71:                                # %if.then.222
	movl	-84(%rbp), %eax
	orl	$8, %eax
	movl	%eax, -84(%rbp)
.LBB113_72:                             # %if.end.224
	cmpl	$0, -84(%rbp)
	je	.LBB113_80
# BB#73:                                # %if.then.225
	cmpl	$0, -72(%rbp)
	jle	.LBB113_76
# BB#74:                                # %land.lhs.true.227
	cmpl	$0, -64(%rbp)
	jle	.LBB113_76
# BB#75:                                # %if.then.229
	movq	-40(%rbp), %rdi
	movl	-68(%rbp), %esi
	movl	-60(%rbp), %edx
	movl	-72(%rbp), %ecx
	movl	-64(%rbp), %r8d
	callq	x_clear_area
.LBB113_76:                             # %if.end.230
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	32(%rax), %rsi
	movl	-60(%rbp), %edx
	movl	-68(%rbp), %ecx
	movl	-72(%rbp), %r8d
	cmpl	$1, -64(%rbp)
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	movq	%rsi, -360(%rbp)        # 8-byte Spill
	movl	%edx, -364(%rbp)        # 4-byte Spill
	movl	%ecx, -368(%rbp)        # 4-byte Spill
	movl	%r8d, -372(%rbp)        # 4-byte Spill
	jle	.LBB113_78
# BB#77:                                # %cond.true.232
	movl	-64(%rbp), %eax
	movl	%eax, -376(%rbp)        # 4-byte Spill
	jmp	.LBB113_79
.LBB113_78:                             # %cond.false.233
	movl	$1, %eax
	movl	%eax, -376(%rbp)        # 4-byte Spill
	jmp	.LBB113_79
.LBB113_79:                             # %cond.end.234
	movl	-376(%rbp), %eax        # 4-byte Reload
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	-360(%rbp), %rsi        # 8-byte Reload
	movl	-364(%rbp), %edx        # 4-byte Reload
	movl	-368(%rbp), %ecx        # 4-byte Reload
	movl	-372(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	callq	xg_update_scrollbar_pos
.LBB113_80:                             # %if.end.236
	movl	-68(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, 44(%rcx)
	movl	-60(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, 40(%rcx)
	movl	-72(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, 48(%rcx)
	movl	-64(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, 52(%rcx)
	callq	unblock_input
.LBB113_81:                             # %if.end.241
	movq	-56(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	x_set_toolkit_scroll_bar_thumb
	movl	$5, %esi
	movq	-56(%rbp), %rdi
	callq	make_lisp_ptr
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	wset_vertical_scroll_bar
	addq	$376, %rsp              # imm = 0x178
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end113:
	.size	XTset_vertical_scroll_bar, .Lfunc_end113-XTset_vertical_scroll_bar
	.cfi_endproc

	.align	16, 0x90
	.type	XTset_horizontal_scroll_bar,@function
XTset_horizontal_scroll_bar:            # @XTset_horizontal_scroll_bar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp359:
	.cfi_def_cfa_offset 16
.Ltmp360:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp361:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$328, %rsp              # imm = 0x148
.Ltmp362:
	.cfi_offset %rbx, -24
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	leaq	-76(%rbp), %r8
	xorl	%r9d, %r9d
	movl	%r9d, %r10d
	leaq	-80(%rbp), %r11
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	subq	$5, %rdi
	movq	%rdi, -40(%rbp)
	movq	-16(%rbp), %rdi
	movl	256(%rdi), %ecx
	movl	%ecx, -84(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	movq	%r8, %rdx
	movq	%r10, %rcx
	movq	%r11, %r8
	movq	%r10, %r9
	callq	window_box
	movl	-76(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -72(%rbp)
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	movl	332(%rcx), %eax
	movq	-16(%rbp), %rcx
	addl	244(%rcx), %eax
	movq	-16(%rbp), %rcx
	movw	468(%rcx), %bx
	shrw	$11, %bx
	andw	$1, %bx
	testw	$1, %bx
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jne	.LBB114_3
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB114_4
# BB#2:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	cmpq	40(%rcx), %rax
	jne	.LBB114_4
.LBB114_3:                              # %cond.true
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB114_9
	jmp	.LBB114_59
.LBB114_4:                              # %cond.false
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB114_6
# BB#5:                                 # %cond.true.10
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$32, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB114_9
	jmp	.LBB114_59
.LBB114_6:                              # %cond.false.17
	movl	$213, %edi
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB114_8
# BB#7:                                 # %cond.true.21
	movb	$1, %al
	testb	$1, %al
	jne	.LBB114_9
	jmp	.LBB114_59
.LBB114_8:                              # %cond.false.22
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB114_9
	jmp	.LBB114_59
.LBB114_9:                              # %cond.true.23
	movq	-16(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	244(%rax), %edx
	movq	-16(%rbp), %rax
	addl	260(%rax), %edx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	movl	%edx, -120(%rbp)        # 4-byte Spill
	callq	XWINDOW
	movl	244(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	callq	XWINDOW
	movl	-124(%rbp), %ecx        # 4-byte Reload
	addl	260(%rax), %ecx
	movl	-120(%rbp), %edx        # 4-byte Reload
	cmpl	%ecx, %edx
	jne	.LBB114_11
# BB#10:                                # %land.lhs.true.39
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	callq	XWINDOW
	xorl	%edi, %edi
	movq	16(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB114_13
.LBB114_11:                             # %lor.lhs.false.46
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	cmpq	40(%rcx), %rax
	je	.LBB114_13
# BB#12:                                # %lor.lhs.false.52
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB114_14
.LBB114_13:                             # %cond.true.58
	xorl	%eax, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB114_15
.LBB114_14:                             # %cond.false.59
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	340(%rax), %ecx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
.LBB114_15:                             # %cond.end
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	-116(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movw	468(%rdx), %si
	shrw	$11, %si
	andw	$1, %si
	testw	$1, %si
	movl	%ecx, -144(%rbp)        # 4-byte Spill
	jne	.LBB114_18
# BB#16:                                # %lor.lhs.false.68
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB114_19
# BB#17:                                # %land.lhs.true.73
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	cmpq	40(%rcx), %rax
	jne	.LBB114_19
.LBB114_18:                             # %cond.true.79
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB114_24
	jmp	.LBB114_28
.LBB114_19:                             # %cond.false.80
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB114_21
# BB#20:                                # %cond.true.84
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$32, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB114_24
	jmp	.LBB114_28
.LBB114_21:                             # %cond.false.92
	movl	$213, %edi
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB114_23
# BB#22:                                # %cond.true.96
	movb	$1, %al
	testb	$1, %al
	jne	.LBB114_24
	jmp	.LBB114_28
.LBB114_23:                             # %cond.false.97
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB114_24
	jmp	.LBB114_28
.LBB114_24:                             # %cond.true.98
	movq	-16(%rbp), %rax
	cmpl	$0, 440(%rax)
	jl	.LBB114_26
# BB#25:                                # %cond.true.100
	movq	-16(%rbp), %rax
	movl	440(%rax), %ecx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	jmp	.LBB114_27
.LBB114_26:                             # %cond.false.102
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	428(%rax), %ecx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
.LBB114_27:                             # %cond.end.105
	movl	-164(%rbp), %eax        # 4-byte Reload
	movl	%eax, -168(%rbp)        # 4-byte Spill
	jmp	.LBB114_29
.LBB114_28:                             # %cond.false.107
	xorl	%eax, %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	jmp	.LBB114_29
.LBB114_29:                             # %cond.end.108
	movl	-168(%rbp), %eax        # 4-byte Reload
	movl	-144(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	80(%rdx), %rdi
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB114_30
	jmp	.LBB114_35
.LBB114_30:                             # %cond.true.112
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB114_57
# BB#31:                                # %land.lhs.true.117
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB114_57
# BB#32:                                # %land.lhs.true.123
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB114_57
# BB#33:                                # %land.lhs.true.130
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	96(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB114_57
# BB#34:                                # %land.lhs.true.135
	movq	-16(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpl	368(%rax), %ecx
	jg	.LBB114_36
	jmp	.LBB114_57
.LBB114_35:                             # %cond.false.140
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB114_36
	jmp	.LBB114_57
.LBB114_36:                             # %cond.true.141
	movq	-16(%rbp), %rax
	cmpl	$0, 444(%rax)
	jl	.LBB114_38
# BB#37:                                # %cond.true.143
	movq	-16(%rbp), %rax
	movl	444(%rax), %ecx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	jmp	.LBB114_56
.LBB114_38:                             # %cond.false.145
	movq	-16(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB114_41
# BB#39:                                # %land.lhs.true.146
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB114_41
# BB#40:                                # %cond.true.149
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	192(%rcx), %rcx
	movslq	24(%rcx), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	cmpl	$0, -196(%rax)
	jne	.LBB114_42
	jmp	.LBB114_47
.LBB114_41:                             # %cond.false.156
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB114_42
	jmp	.LBB114_47
.LBB114_42:                             # %cond.true.157
	movq	-16(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB114_45
# BB#43:                                # %land.lhs.true.160
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB114_45
# BB#44:                                # %cond.true.164
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	192(%rcx), %rcx
	movslq	24(%rcx), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movl	-196(%rax), %edx
	movl	%edx, -192(%rbp)        # 4-byte Spill
	jmp	.LBB114_46
.LBB114_45:                             # %cond.false.173
	xorl	%eax, %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
	jmp	.LBB114_46
.LBB114_46:                             # %cond.end.174
	movl	-192(%rbp), %eax        # 4-byte Reload
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jmp	.LBB114_55
.LBB114_47:                             # %cond.false.176
	movb	$1, %al
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	testb	$1, globals+3413
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	movb	%al, -209(%rbp)         # 1-byte Spill
	je	.LBB114_54
# BB#48:                                # %lor.lhs.false.180
	movq	-16(%rbp), %rax
	movq	selected_window, %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	XWINDOW
	movb	$1, %cl
	movq	-224(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	movb	%cl, -209(%rbp)         # 1-byte Spill
	je	.LBB114_54
# BB#49:                                # %lor.rhs
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, minibuf_level
	movb	%cl, -225(%rbp)         # 1-byte Spill
	jle	.LBB114_53
# BB#50:                                # %land.lhs.true.184
	xorl	%edi, %edi
	movq	minibuf_selected_window, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movb	%dil, %cl
	movq	-240(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -225(%rbp)         # 1-byte Spill
	je	.LBB114_53
# BB#51:                                # %land.lhs.true.187
	movq	selected_window, %rdi
	callq	XWINDOW
	movq	minibuf_window, %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	XWINDOW
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	-248(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	movb	%dl, -225(%rbp)         # 1-byte Spill
	jne	.LBB114_53
# BB#52:                                # %land.rhs
	movq	-16(%rbp), %rax
	movq	minibuf_selected_window, %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	XWINDOW
	movq	-256(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	sete	%cl
	movb	%cl, -225(%rbp)         # 1-byte Spill
.LBB114_53:                             # %land.end
	movb	-225(%rbp), %al         # 1-byte Reload
	movb	%al, -209(%rbp)         # 1-byte Spill
.LBB114_54:                             # %lor.end
	movb	-209(%rbp), %al         # 1-byte Reload
	movl	$2, %ecx
	movl	$1, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	callq	estimate_mode_line_height
	movl	%eax, -196(%rbp)        # 4-byte Spill
.LBB114_55:                             # %cond.end.195
	movl	-196(%rbp), %eax        # 4-byte Reload
	movq	-16(%rbp), %rcx
	movl	%eax, 444(%rcx)
	movl	%eax, -188(%rbp)        # 4-byte Spill
.LBB114_56:                             # %cond.end.198
	movl	-188(%rbp), %eax        # 4-byte Reload
	movl	%eax, -260(%rbp)        # 4-byte Spill
	jmp	.LBB114_58
.LBB114_57:                             # %cond.false.200
	xorl	%eax, %eax
	movl	%eax, -260(%rbp)        # 4-byte Spill
	jmp	.LBB114_58
.LBB114_58:                             # %cond.end.201
	movl	-260(%rbp), %eax        # 4-byte Reload
	movl	-172(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movl	%ecx, -264(%rbp)        # 4-byte Spill
	jmp	.LBB114_60
.LBB114_59:                             # %cond.false.204
	xorl	%eax, %eax
	movl	%eax, -264(%rbp)        # 4-byte Spill
	jmp	.LBB114_60
.LBB114_60:                             # %cond.end.205
	movl	-264(%rbp), %eax        # 4-byte Reload
	movl	-92(%rbp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -60(%rbp)
	movq	-16(%rbp), %rdx
	movw	468(%rdx), %si
	shrw	$11, %si
	andw	$1, %si
	testw	$1, %si
	jne	.LBB114_63
# BB#61:                                # %lor.lhs.false.213
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB114_64
# BB#62:                                # %land.lhs.true.218
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	cmpq	40(%rcx), %rax
	jne	.LBB114_64
.LBB114_63:                             # %cond.true.224
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB114_69
	jmp	.LBB114_73
.LBB114_64:                             # %cond.false.225
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB114_66
# BB#65:                                # %cond.true.229
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$32, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB114_69
	jmp	.LBB114_73
.LBB114_66:                             # %cond.false.237
	movl	$213, %edi
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB114_68
# BB#67:                                # %cond.true.241
	movb	$1, %al
	testb	$1, %al
	jne	.LBB114_69
	jmp	.LBB114_73
.LBB114_68:                             # %cond.false.242
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB114_69
	jmp	.LBB114_73
.LBB114_69:                             # %cond.true.243
	movq	-16(%rbp), %rax
	cmpl	$0, 440(%rax)
	jl	.LBB114_71
# BB#70:                                # %cond.true.246
	movq	-16(%rbp), %rax
	movl	440(%rax), %ecx
	movl	%ecx, -284(%rbp)        # 4-byte Spill
	jmp	.LBB114_72
.LBB114_71:                             # %cond.false.248
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	428(%rax), %ecx
	movl	%ecx, -284(%rbp)        # 4-byte Spill
.LBB114_72:                             # %cond.end.252
	movl	-284(%rbp), %eax        # 4-byte Reload
	movl	%eax, -288(%rbp)        # 4-byte Spill
	jmp	.LBB114_74
.LBB114_73:                             # %cond.false.254
	xorl	%eax, %eax
	movl	%eax, -288(%rbp)        # 4-byte Spill
	jmp	.LBB114_74
.LBB114_74:                             # %cond.end.255
	movl	-288(%rbp), %eax        # 4-byte Reload
	xorl	%edi, %edi
	movl	%eax, -64(%rbp)
	movq	-16(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB114_79
# BB#75:                                # %if.then
	cmpl	$0, -72(%rbp)
	jle	.LBB114_78
# BB#76:                                # %land.lhs.true.260
	cmpl	$0, -64(%rbp)
	jle	.LBB114_78
# BB#77:                                # %if.then.262
	callq	block_input
	movq	-40(%rbp), %rdi
	movl	-68(%rbp), %esi
	movl	-60(%rbp), %edx
	movl	-84(%rbp), %ecx
	movl	-64(%rbp), %r8d
	callq	x_clear_area
	callq	unblock_input
.LBB114_78:                             # %if.end
	movl	$1, %r9d
	movq	-16(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %ecx
	movl	-64(%rbp), %r8d
	callq	x_scroll_bar_create
	movq	%rax, -56(%rbp)
	jmp	.LBB114_97
.LBB114_79:                             # %if.else
	movl	$0, -88(%rbp)
	movq	-16(%rbp), %rax
	movq	136(%rax), %rdi
	callq	XVECTOR
	movq	%rax, -56(%rbp)
	callq	block_input
	movl	-68(%rbp), %ecx
	movq	-56(%rbp), %rax
	cmpl	44(%rax), %ecx
	je	.LBB114_81
# BB#80:                                # %if.then.268
	movl	-88(%rbp), %eax
	orl	$1, %eax
	movl	%eax, -88(%rbp)
.LBB114_81:                             # %if.end.269
	movl	-60(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	40(%rcx), %eax
	je	.LBB114_83
# BB#82:                                # %if.then.272
	movl	-88(%rbp), %eax
	orl	$2, %eax
	movl	%eax, -88(%rbp)
.LBB114_83:                             # %if.end.274
	movl	-72(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	48(%rcx), %eax
	je	.LBB114_85
# BB#84:                                # %if.then.277
	movl	-88(%rbp), %eax
	orl	$4, %eax
	movl	%eax, -88(%rbp)
.LBB114_85:                             # %if.end.279
	movl	-64(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	52(%rcx), %eax
	je	.LBB114_87
# BB#86:                                # %if.then.282
	movl	-88(%rbp), %eax
	orl	$8, %eax
	movl	%eax, -88(%rbp)
.LBB114_87:                             # %if.end.284
	cmpl	$0, -88(%rbp)
	je	.LBB114_96
# BB#88:                                # %if.then.286
	cmpl	$0, -72(%rbp)
	jle	.LBB114_95
# BB#89:                                # %land.lhs.true.288
	cmpl	$0, -64(%rbp)
	jle	.LBB114_95
# BB#90:                                # %if.then.290
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	332(%rax), %ecx
	movq	-16(%rbp), %rax
	addl	240(%rax), %ecx
	movl	-60(%rbp), %edx
	movl	-84(%rbp), %esi
	movq	-16(%rbp), %rax
	movl	240(%rax), %r8d
	movq	-16(%rbp), %rax
	addl	256(%rax), %r8d
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rax
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%r8d, -308(%rbp)        # 4-byte Spill
	movl	%ecx, -312(%rbp)        # 4-byte Spill
	movl	%edx, -316(%rbp)        # 4-byte Spill
	movl	%esi, -320(%rbp)        # 4-byte Spill
	callq	XWINDOW
	movl	240(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -324(%rbp)        # 4-byte Spill
	callq	XWINDOW
	movl	-324(%rbp), %ecx        # 4-byte Reload
	addl	256(%rax), %ecx
	movl	-308(%rbp), %edx        # 4-byte Reload
	cmpl	%ecx, %edx
	je	.LBB114_92
# BB#91:                                # %lor.lhs.false.310
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB114_93
.LBB114_92:                             # %cond.true.315
	xorl	%eax, %eax
	movl	%eax, -328(%rbp)        # 4-byte Spill
	jmp	.LBB114_94
.LBB114_93:                             # %cond.false.316
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	336(%rax), %ecx
	movl	%ecx, -328(%rbp)        # 4-byte Spill
.LBB114_94:                             # %cond.end.319
	movl	-328(%rbp), %eax        # 4-byte Reload
	movl	-320(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movl	-64(%rbp), %r8d
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movl	-312(%rbp), %esi        # 4-byte Reload
	movl	-316(%rbp), %edx        # 4-byte Reload
	callq	x_clear_area
.LBB114_95:                             # %if.end.322
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	32(%rax), %rsi
	movl	-60(%rbp), %edx
	movl	-68(%rbp), %ecx
	movl	-72(%rbp), %r8d
	movl	-64(%rbp), %r9d
	callq	xg_update_horizontal_scrollbar_pos
.LBB114_96:                             # %if.end.323
	movl	-68(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, 44(%rcx)
	movl	-60(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, 40(%rcx)
	movl	-72(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, 48(%rcx)
	movl	-64(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, 52(%rcx)
	callq	unblock_input
.LBB114_97:                             # %if.end.328
	movq	-56(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	x_set_toolkit_horizontal_scroll_bar_thumb
	movl	$5, %esi
	movq	-56(%rbp), %rdi
	callq	make_lisp_ptr
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	wset_horizontal_scroll_bar
	addq	$328, %rsp              # imm = 0x148
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end114:
	.size	XTset_horizontal_scroll_bar, .Lfunc_end114-XTset_horizontal_scroll_bar
	.cfi_endproc

	.align	16, 0x90
	.type	XTcondemn_scroll_bars,@function
XTcondemn_scroll_bars:                  # @XTcondemn_scroll_bars
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp363:
	.cfi_def_cfa_offset 16
.Ltmp364:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp365:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	72(%rdi), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB115_7
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB115_6
# BB#2:                                 # %if.then.3
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB115_3:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	XVECTOR
	xorl	%edi, %edi
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB115_4
	jmp	.LBB115_5
.LBB115_4:                              # %while.body
                                        #   in Loop: Header=BB115_3 Depth=1
	movq	-16(%rbp), %rdi
	callq	XVECTOR
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB115_3
.LBB115_5:                              # %while.end
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	XVECTOR
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rdi, 16(%rax)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	80(%rdi), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	XVECTOR
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rdi, 24(%rax)
.LBB115_6:                              # %if.end
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	72(%rax), %rsi
	callq	fset_condemned_scroll_bars
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	fset_scroll_bars
.LBB115_7:                              # %if.end.17
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end115:
	.size	XTcondemn_scroll_bars, .Lfunc_end115-XTcondemn_scroll_bars
	.cfi_endproc

	.align	16, 0x90
	.type	XTredeem_scroll_bar,@function
XTredeem_scroll_bar:                    # @XTredeem_scroll_bar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp366:
	.cfi_def_cfa_offset 16
.Ltmp367:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp368:
	.cfi_def_cfa_register %rbp
	subq	$272, %rsp              # imm = 0x110
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	120(%rdi), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB116_3
# BB#1:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB116_3
# BB#2:                                 # %if.then
	callq	emacs_abort
.LBB116_3:                              # %if.end
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB116_38
# BB#4:                                 # %land.lhs.true.6
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB116_6
# BB#5:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB116_13
.LBB116_6:                              # %cond.false
	movl	$901, %edi              # imm = 0x385
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB116_8
# BB#7:                                 # %cond.true.9
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$30, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	jmp	.LBB116_12
.LBB116_8:                              # %cond.false.15
	movl	$607, %edi              # imm = 0x25F
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB116_10
# BB#9:                                 # %cond.true.19
	movl	$1, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB116_11
.LBB116_10:                             # %cond.false.20
	movl	$811, %edi              # imm = 0x32B
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	$2, %ecx
	movq	-104(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -92(%rbp)         # 4-byte Spill
.LBB116_11:                             # %cond.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB116_12:                             # %cond.end.25
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB116_13:                             # %cond.end.27
	movl	-60(%rbp), %eax         # 4-byte Reload
	cmpl	$1, %eax
	je	.LBB116_24
# BB#14:                                # %lor.lhs.false
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB116_16
# BB#15:                                # %cond.true.35
	xorl	%eax, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB116_23
.LBB116_16:                             # %cond.false.36
	movl	$901, %edi              # imm = 0x385
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB116_18
# BB#17:                                # %cond.true.40
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$30, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	jmp	.LBB116_22
.LBB116_18:                             # %cond.false.48
	movl	$607, %edi              # imm = 0x25F
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB116_20
# BB#19:                                # %cond.true.52
	movl	$1, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB116_21
.LBB116_20:                             # %cond.false.53
	movl	$811, %edi              # imm = 0x32B
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	$2, %ecx
	movq	-152(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -140(%rbp)        # 4-byte Spill
.LBB116_21:                             # %cond.end.58
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB116_22:                             # %cond.end.60
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB116_23:                             # %cond.end.62
	movl	-108(%rbp), %eax        # 4-byte Reload
	cmpl	$2, %eax
	jne	.LBB116_38
.LBB116_24:                             # %if.then.65
	movq	-8(%rbp), %rax
	movq	120(%rax), %rdi
	callq	XVECTOR
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB116_32
# BB#25:                                # %if.then.72
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	120(%rcx), %rax
	jne	.LBB116_27
# BB#26:                                # %if.then.75
	jmp	.LBB116_39
.LBB116_27:                             # %if.else
	movq	-32(%rbp), %rax
	movq	80(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	120(%rcx), %rax
	jne	.LBB116_29
# BB#28:                                # %if.then.78
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rsi
	callq	fset_condemned_scroll_bars
	jmp	.LBB116_30
.LBB116_29:                             # %if.else.79
	callq	emacs_abort
.LBB116_30:                             # %if.end.80
	jmp	.LBB116_31
.LBB116_31:                             # %if.end.81
	jmp	.LBB116_33
.LBB116_32:                             # %if.else.82
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	XVECTOR
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 16(%rax)
.LBB116_33:                             # %if.end.87
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB116_35
# BB#34:                                # %if.then.91
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	XVECTOR
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 24(%rax)
.LBB116_35:                             # %if.end.96
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 16(%rcx)
	callq	builtin_lisp_symbol
	movl	$5, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	fset_scroll_bars
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB116_37
# BB#36:                                # %if.then.105
	movl	$5, %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	XVECTOR
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, 24(%rax)
.LBB116_37:                             # %if.end.110
	jmp	.LBB116_38
.LBB116_38:                             # %if.end.111
	jmp	.LBB116_39
.LBB116_39:                             # %horizontal
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB116_63
# BB#40:                                # %land.lhs.true.115
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB116_43
# BB#41:                                # %lor.lhs.false.121
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB116_44
# BB#42:                                # %land.lhs.true.125
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	cmpq	40(%rcx), %rax
	jne	.LBB116_44
.LBB116_43:                             # %cond.true.130
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB116_49
	jmp	.LBB116_63
.LBB116_44:                             # %cond.false.131
	movl	$901, %edi              # imm = 0x385
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB116_46
# BB#45:                                # %cond.true.134
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$32, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB116_49
	jmp	.LBB116_63
.LBB116_46:                             # %cond.false.141
	movl	$213, %edi
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB116_48
# BB#47:                                # %cond.true.145
	movb	$1, %al
	testb	$1, %al
	jne	.LBB116_49
	jmp	.LBB116_63
.LBB116_48:                             # %cond.false.146
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB116_49
	jmp	.LBB116_63
.LBB116_49:                             # %if.then.147
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdi
	callq	XVECTOR
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB116_57
# BB#50:                                # %if.then.155
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	136(%rcx), %rax
	jne	.LBB116_52
# BB#51:                                # %if.then.159
	jmp	.LBB116_63
.LBB116_52:                             # %if.else.160
	movq	-32(%rbp), %rax
	movq	80(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	136(%rcx), %rax
	jne	.LBB116_54
# BB#53:                                # %if.then.164
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rsi
	callq	fset_condemned_scroll_bars
	jmp	.LBB116_55
.LBB116_54:                             # %if.else.166
	callq	emacs_abort
.LBB116_55:                             # %if.end.167
	jmp	.LBB116_56
.LBB116_56:                             # %if.end.168
	jmp	.LBB116_58
.LBB116_57:                             # %if.else.169
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	XVECTOR
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 16(%rax)
.LBB116_58:                             # %if.end.174
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB116_60
# BB#59:                                # %if.then.178
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	XVECTOR
	movq	-256(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 24(%rax)
.LBB116_60:                             # %if.end.183
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 16(%rcx)
	callq	builtin_lisp_symbol
	movl	$5, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	fset_scroll_bars
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB116_62
# BB#61:                                # %if.then.192
	movl	$5, %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	XVECTOR
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, 24(%rax)
.LBB116_62:                             # %if.end.197
	jmp	.LBB116_63
.LBB116_63:                             # %if.end.198
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end116:
	.size	XTredeem_scroll_bar, .Lfunc_end116-XTredeem_scroll_bar
	.cfi_endproc

	.align	16, 0x90
	.type	XTjudge_scroll_bars,@function
XTjudge_scroll_bars:                    # @XTjudge_scroll_bars
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp369:
	.cfi_def_cfa_offset 16
.Ltmp370:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp371:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	80(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	fset_condemned_scroll_bars
.LBB117_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB117_2
	jmp	.LBB117_4
.LBB117_2:                              # %for.body
                                        #   in Loop: Header=BB117_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	XVECTOR
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	x_scroll_bar_remove
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-32(%rbp), %rcx
	movq	%rax, 16(%rcx)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB117_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB117_1
.LBB117_4:                              # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end117:
	.size	XTjudge_scroll_bars, .Lfunc_end117-XTjudge_scroll_bars
	.cfi_endproc

	.align	16, 0x90
	.type	x_destroy_window,@function
x_destroy_window:                       # @x_destroy_window
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp372:
	.cfi_def_cfa_offset 16
.Ltmp373:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp374:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	cmpq	$0, 16(%rdi)
	je	.LBB118_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	x_free_frame_resources
.LBB118_2:                              # %if.end
	movq	-16(%rbp), %rax
	movl	40(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 40(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end118:
	.size	x_destroy_window, .Lfunc_end118-x_destroy_window
	.cfi_endproc

	.align	16, 0x90
	.type	x_scroll_run,@function
x_scroll_run:                           # @x_scroll_run
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp375:
	.cfi_def_cfa_offset 16
.Ltmp376:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp377:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$96, %rsp
.Ltmp378:
	.cfi_offset %rbx, -32
.Ltmp379:
	.cfi_offset %r14, -24
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	leaq	-44(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-52(%rbp), %r8
	leaq	-56(%rbp), %r9
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rsi
	subq	$5, %rsi
	movq	%rsi, -40(%rbp)
	movq	-24(%rbp), %rdi
	movl	%eax, %esi
	callq	window_box
	movq	-32(%rbp), %rcx
	movl	4(%rcx), %eax
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	movl	332(%rcx), %esi
	movq	-24(%rbp), %rcx
	addl	244(%rcx), %esi
	addl	%esi, %eax
	movl	%eax, -60(%rbp)
	movq	-32(%rbp), %rcx
	movl	(%rcx), %eax
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	movl	332(%rcx), %esi
	movq	-24(%rbp), %rcx
	addl	244(%rcx), %esi
	addl	%esi, %eax
	movl	%eax, -64(%rbp)
	movl	-48(%rbp), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-64(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB119_5
# BB#1:                                 # %if.then
	movl	-60(%rbp), %eax
	movq	-32(%rbp), %rcx
	addl	16(%rcx), %eax
	cmpl	-68(%rbp), %eax
	jle	.LBB119_3
# BB#2:                                 # %if.then.14
	movl	-68(%rbp), %eax
	subl	-60(%rbp), %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB119_4
.LBB119_3:                              # %if.else
	movq	-32(%rbp), %rax
	movl	16(%rax), %ecx
	movl	%ecx, -56(%rbp)
.LBB119_4:                              # %if.end
	jmp	.LBB119_9
.LBB119_5:                              # %if.else.17
	movl	-64(%rbp), %eax
	movq	-32(%rbp), %rcx
	addl	16(%rcx), %eax
	cmpl	-68(%rbp), %eax
	jle	.LBB119_7
# BB#6:                                 # %if.then.21
	movl	-68(%rbp), %eax
	subl	-64(%rbp), %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB119_8
.LBB119_7:                              # %if.else.23
	movq	-32(%rbp), %rax
	movl	16(%rax), %ecx
	movl	%ecx, -56(%rbp)
.LBB119_8:                              # %if.end.25
	jmp	.LBB119_9
.LBB119_9:                              # %if.end.26
	callq	block_input
	movq	-24(%rbp), %rdi
	callq	x_clear_cursor
	movq	-40(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	16(%rdi), %rdi
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	movq	32(%rax), %rcx
	movl	-44(%rbp), %r8d
	movl	-60(%rbp), %r9d
	movl	-52(%rbp), %r10d
	movl	-56(%rbp), %r11d
	movl	-44(%rbp), %ebx
	movl	-64(%rbp), %r14d
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r14d, 24(%rsp)
	callq	XCopyArea
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	unblock_input
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end119:
	.size	x_scroll_run, .Lfunc_end119-x_scroll_run
	.cfi_endproc

	.align	16, 0x90
	.type	x_after_update_window_line,@function
x_after_update_window_line:             # @x_after_update_window_line
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp380:
	.cfi_def_cfa_offset 16
.Ltmp381:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp382:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	236(%rsi), %rsi
	shrq	$20, %rsi
	andq	$1, %rsi
	testq	$1, %rsi
	jne	.LBB120_3
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB120_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	236(%rax), %rcx
	andq	$-513, %rcx             # imm = 0xFFFFFFFFFFFFFDFF
	orq	$512, %rcx              # imm = 0x200
	movq	%rcx, 236(%rax)
.LBB120_3:                              # %if.end
	popq	%rbp
	retq
.Lfunc_end120:
	.size	x_after_update_window_line, .Lfunc_end120-x_after_update_window_line
	.cfi_endproc

	.align	16, 0x90
	.type	x_update_window_begin,@function
x_update_window_begin:                  # @x_update_window_begin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp383:
	.cfi_def_cfa_offset 16
.Ltmp384:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp385:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	subq	$5, %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	208(%rdi), %rdi
	shrq	$23, %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$2, %eax
	jne	.LBB121_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	addq	$184, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB121_3
.LBB121_2:                              # %cond.false
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	(%rax), %rax
	addq	$104, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB121_3:                              # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	352(%rcx), %rdx
	movq	%rdx, 384(%rax)
	movq	360(%rcx), %rcx
	movq	%rcx, 392(%rax)
	callq	block_input
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	48(%rcx), %rax
	jne	.LBB121_7
# BB#4:                                 # %if.then
	movq	-24(%rbp), %rax
	movb	64(%rax), %cl
	andb	$-3, %cl
	orb	$2, %cl
	movb	%cl, 64(%rax)
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$13, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB121_6
# BB#5:                                 # %if.then.11
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx
	movq	%rax, 24(%rcx)
.LBB121_6:                              # %if.end
	jmp	.LBB121_7
.LBB121_7:                              # %if.end.12
	callq	unblock_input
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end121:
	.size	x_update_window_begin, .Lfunc_end121-x_update_window_begin
	.cfi_endproc

	.align	16, 0x90
	.type	x_update_window_end,@function
x_update_window_end:                    # @x_update_window_end
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp386:
	.cfi_def_cfa_offset 16
.Ltmp387:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp388:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movb	%dl, %al
	movb	%sil, %cl
	movq	%rdi, -8(%rbp)
	andb	$1, %cl
	movb	%cl, -9(%rbp)
	andb	$1, %al
	movb	%al, -10(%rbp)
	movq	-8(%rbp), %rdi
	movw	468(%rdi), %r8w
	shrw	$11, %r8w
	andw	$1, %r8w
	testw	$1, %r8w
	jne	.LBB122_12
# BB#1:                                 # %if.then
	callq	block_input
	testb	$1, -9(%rbp)
	je	.LBB122_3
# BB#2:                                 # %if.then.2
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	392(%rax), %edx
	movq	-8(%rbp), %rax
	movl	396(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	384(%rax), %r8d
	movq	-8(%rbp), %rax
	movl	388(%rax), %r9d
	callq	display_and_set_cursor
.LBB122_3:                              # %if.end
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	draw_window_fringes
	testb	$1, %al
	jne	.LBB122_4
	jmp	.LBB122_11
.LBB122_4:                              # %if.then.6
	movq	-8(%rbp), %rax
	movl	240(%rax), %ecx
	movq	-8(%rbp), %rax
	addl	256(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	callq	XWINDOW
	movl	240(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -32(%rbp)         # 4-byte Spill
	callq	XWINDOW
	movl	-32(%rbp), %ecx         # 4-byte Reload
	addl	256(%rax), %ecx
	movl	-28(%rbp), %edx         # 4-byte Reload
	cmpl	%ecx, %edx
	je	.LBB122_6
# BB#5:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB122_7
.LBB122_6:                              # %cond.true
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB122_8
	jmp	.LBB122_9
.LBB122_7:                              # %cond.false
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpl	$0, 336(%rax)
	je	.LBB122_9
.LBB122_8:                              # %if.then.21
	movq	-8(%rbp), %rdi
	callq	x_draw_right_divider
	jmp	.LBB122_10
.LBB122_9:                              # %if.else
	movq	-8(%rbp), %rdi
	callq	x_draw_vertical_border
.LBB122_10:                             # %if.end.22
	jmp	.LBB122_11
.LBB122_11:                             # %if.end.23
	callq	unblock_input
.LBB122_12:                             # %if.end.24
	testb	$1, -10(%rbp)
	je	.LBB122_17
# BB#13:                                # %if.then.26
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB122_15
# BB#14:                                # %cond.true.34
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	addq	$184, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB122_16
.LBB122_15:                             # %cond.false.38
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	384(%rax), %rax
	movq	(%rax), %rax
	addq	$104, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB122_16:                             # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$-1, 4(%rax)
	movq	-24(%rbp), %rax
	movl	$-1, (%rax)
	movq	-24(%rbp), %rax
	movl	$-1, 16(%rax)
	movq	-24(%rbp), %rax
	movl	$-1, 12(%rax)
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx
	movq	%rax, 24(%rcx)
.LBB122_17:                             # %if.end.45
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end122:
	.size	x_update_window_end, .Lfunc_end122-x_update_window_end
	.cfi_endproc

	.align	16, 0x90
	.type	x_flush,@function
x_flush:                                # @x_flush
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp389:
	.cfi_def_cfa_offset 16
.Ltmp390:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp391:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	globals+1120, %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB123_2
# BB#1:                                 # %if.then
	jmp	.LBB123_3
.LBB123_2:                              # %if.end
	callq	block_input
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	callq	XFlush
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	unblock_input
.LBB123_3:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end123:
	.size	x_flush, .Lfunc_end123-x_flush
	.cfi_endproc

	.align	16, 0x90
	.type	x_draw_fringe_bitmap,@function
x_draw_fringe_bitmap:                   # @x_draw_fringe_bitmap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp392:
	.cfi_def_cfa_offset 16
.Ltmp393:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp394:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$384, %rsp              # imm = 0x180
.Ltmp395:
	.cfi_offset %rbx, -32
.Ltmp396:
	.cfi_offset %r14, -24
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rdx
	subq	$5, %rdx
	movq	%rdx, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	424(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	%rdx, -56(%rbp)
	movq	-48(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, -64(%rbp)
	movq	-40(%rbp), %rdx
	movq	56(%rdx), %rdx
	movq	%rdx, -72(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-64(%rbp), %rcx
	movl	%eax, %edx
	callq	x_clip_to_row
	movq	-40(%rbp), %rcx
	cmpl	$0, 36(%rcx)
	jl	.LBB124_8
# BB#1:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movb	52(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB124_8
# BB#2:                                 # %if.then
	movq	-72(%rbp), %rax
	cmpq	$0, 168(%rax)
	je	.LBB124_4
# BB#3:                                 # %if.then.5
	movl	$3, %edx
	movq	-56(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	160(%rax), %rsi
	callq	XSetFillStyle
	movl	%eax, -244(%rbp)        # 4-byte Spill
	jmp	.LBB124_5
.LBB124_4:                              # %if.else
	movq	-56(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	160(%rax), %rsi
	movq	-72(%rbp), %rax
	movq	184(%rax), %rdx
	callq	XSetForeground
	movl	%eax, -248(%rbp)        # 4-byte Spill
.LBB124_5:                              # %if.end
	movq	-48(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	160(%rax), %rsi
	movq	-40(%rbp), %rax
	movl	36(%rax), %edx
	movq	-40(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	40(%rax), %r8d
	movq	-40(%rbp), %rax
	movl	48(%rax), %r9d
	callq	x_fill_rectangle
	movq	-72(%rbp), %rax
	cmpq	$0, 168(%rax)
	jne	.LBB124_7
# BB#6:                                 # %if.then.13
	movq	-56(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	160(%rax), %rsi
	movq	-72(%rbp), %rax
	movq	176(%rax), %rdx
	callq	XSetForeground
	movl	%eax, -252(%rbp)        # 4-byte Spill
.LBB124_7:                              # %if.end.16
	jmp	.LBB124_8
.LBB124_8:                              # %if.end.17
	movq	-40(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB124_23
# BB#9:                                 # %if.then.19
	movq	-48(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	$0, -104(%rbp)
	movq	-48(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	48(%rax), %rax
	movl	56(%rax), %ecx
	movl	%ecx, -108(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$8, 16(%rax)
	jle	.LBB124_11
# BB#10:                                # %if.then.26
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rcx
	movslq	24(%rcx), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB124_12
.LBB124_11:                             # %if.else.28
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rcx
	movslq	24(%rcx), %rcx
	addq	%rcx, %rax
	movq	%rax, -88(%rbp)
.LBB124_12:                             # %if.end.33
	movq	-56(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	20(%rax), %r8d
	movq	-40(%rbp), %rax
	movb	52(%rax), %r9b
	andb	$1, %r9b
	testb	$1, %r9b
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rsi, -272(%rbp)        # 8-byte Spill
	movq	%rdx, -280(%rbp)        # 8-byte Spill
	movl	%ecx, -284(%rbp)        # 4-byte Spill
	movl	%r8d, -288(%rbp)        # 4-byte Spill
	je	.LBB124_17
# BB#13:                                # %cond.true
	movq	-40(%rbp), %rax
	movb	52(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB124_15
# BB#14:                                # %cond.true.43
	movq	-72(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB124_16
.LBB124_15:                             # %cond.false
	movq	-48(%rbp), %rax
	movq	384(%rax), %rax
	movq	248(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB124_16:                             # %cond.end
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB124_18
.LBB124_17:                             # %cond.false.47
	movq	-72(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB124_18:                             # %cond.end.49
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	-72(%rbp), %rcx
	movq	184(%rcx), %rcx
	movl	-108(%rbp), %edx
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	-272(%rbp), %rsi        # 8-byte Reload
	movq	-280(%rbp), %r8         # 8-byte Reload
	movl	%edx, -308(%rbp)        # 4-byte Spill
	movq	%r8, %rdx
	movl	-284(%rbp), %r9d        # 4-byte Reload
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	movl	%r9d, %ecx
	movl	-288(%rbp), %r8d        # 4-byte Reload
	movq	%rax, %r9
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	-308(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, 8(%rsp)
	callq	XCreatePixmapFromBitmapData
	movq	%rax, -96(%rbp)
	movq	-40(%rbp), %rax
	movb	52(%rax), %r11b
	shrb	$1, %r11b
	andb	$1, %r11b
	testb	$1, %r11b
	je	.LBB124_20
# BB#19:                                # %if.then.58
	movl	$1, %eax
	movl	%eax, %r9d
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	$1, %eax
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	424(%rdx), %rdx
	movq	104(%rdx), %rsi
	movq	-88(%rbp), %rdx
	movq	-40(%rbp), %r8
	movl	16(%r8), %r10d
	movq	-40(%rbp), %r8
	movl	20(%r8), %r8d
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movq	$0, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -332(%rbp)        # 4-byte Spill
	callq	XCreatePixmapFromBitmapData
	movl	$917504, %ecx           # imm = 0xE0000
	movl	%ecx, %edx
	leaq	-240(%rbp), %rcx
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-40(%rbp), %rax
	movl	28(%rax), %r8d
	movl	%r8d, -136(%rbp)
	movq	-40(%rbp), %rax
	movl	32(%rax), %r8d
	movl	%r8d, -132(%rbp)
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	XChangeGC
	movl	%eax, -336(%rbp)        # 4-byte Spill
.LBB124_20:                             # %if.end.67
	xorl	%eax, %eax
	movq	-56(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-40(%rbp), %r8
	movl	16(%r8), %r9d
	movq	-40(%rbp), %r8
	movl	20(%r8), %r10d
	movq	-40(%rbp), %r8
	movl	28(%r8), %r11d
	movq	-40(%rbp), %r8
	movl	32(%r8), %ebx
	movl	%eax, %r8d
	movl	%r9d, -340(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movl	-340(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	movl	%ebx, 24(%rsp)
	callq	XCopyArea
	movq	-56(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movl	%eax, -344(%rbp)        # 4-byte Spill
	callq	XFreePixmap
	movq	-40(%rbp), %rcx
	movb	52(%rcx), %r14b
	shrb	$1, %r14b
	andb	$1, %r14b
	testb	$1, %r14b
	movl	%eax, -348(%rbp)        # 4-byte Spill
	je	.LBB124_22
# BB#21:                                # %if.then.79
	movl	$524288, %eax           # imm = 0x80000
	movl	%eax, %edx
	leaq	-240(%rbp), %rcx
	movq	$0, -128(%rbp)
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	XChangeGC
	movq	-56(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movl	%eax, -352(%rbp)        # 4-byte Spill
	callq	XFreePixmap
	movl	%eax, -356(%rbp)        # 4-byte Spill
.LBB124_22:                             # %if.end.83
	jmp	.LBB124_23
.LBB124_23:                             # %if.end.84
	movq	-48(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	x_reset_clip_rectangles
	addq	$384, %rsp              # imm = 0x180
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end124:
	.size	x_draw_fringe_bitmap, .Lfunc_end124-x_draw_fringe_bitmap
	.cfi_endproc

	.align	16, 0x90
	.type	x_compute_glyph_string_overhangs,@function
x_compute_glyph_string_overhangs:       # @x_compute_glyph_string_overhangs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp397:
	.cfi_def_cfa_offset 16
.Ltmp398:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp399:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 112(%rdi)
	jne	.LBB125_17
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movl	24(%rax), %ecx
	andl	$7, %ecx
	cmpl	$0, %ecx
	je	.LBB125_3
# BB#2:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movl	24(%rax), %ecx
	andl	$7, %ecx
	cmpl	$1, %ecx
	jne	.LBB125_17
.LBB125_3:                              # %if.then
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movl	24(%rax), %ecx
	andl	$7, %ecx
	cmpl	$0, %ecx
	jne	.LBB125_9
# BB#4:                                 # %if.then.13
	movq	-8(%rbp), %rax
	movslq	88(%rax), %rax
	leaq	15(,%rax,4), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB125_5:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	88(%rcx), %eax
	jge	.LBB125_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB125_5 Depth=1
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	80(%rcx), %rcx
	movzbl	(%rcx,%rax,2), %edx
	shll	$8, %edx
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	80(%rcx), %rcx
	movzbl	1(%rcx,%rax,2), %esi
	orl	%esi, %edx
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	%edx, (%rcx,%rax,4)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB125_5 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB125_5
.LBB125_8:                              # %for.end
	leaq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	208(%rax), %rax
	movq	104(%rax), %rax
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movl	88(%rdx), %edx
	callq	*%rax
	jmp	.LBB125_10
.LBB125_9:                              # %if.else
	movq	-8(%rbp), %rax
	movq	120(%rax), %rdi
	callq	composition_gstring_from_id
	leaq	-24(%rbp), %rcx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-8(%rbp), %rax
	movslq	128(%rax), %rsi
	movq	-8(%rbp), %rax
	movslq	132(%rax), %rdx
	callq	composition_gstring_width
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB125_10:                             # %if.end
	movswl	-22(%rbp), %eax
	movswl	-20(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB125_12
# BB#11:                                # %cond.true
	movswl	-22(%rbp), %eax
	movswl	-20(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB125_13
.LBB125_12:                             # %cond.false
	xorl	%eax, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB125_13
.LBB125_13:                             # %cond.end
	movl	-64(%rbp), %eax         # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 28(%rcx)
	movswl	-24(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB125_15
# BB#14:                                # %cond.true.40
	xorl	%eax, %eax
	movswl	-24(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB125_16
.LBB125_15:                             # %cond.false.44
	xorl	%eax, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB125_16
.LBB125_16:                             # %cond.end.45
	movl	-68(%rbp), %eax         # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 24(%rcx)
	jmp	.LBB125_20
.LBB125_17:                             # %if.else.47
	movq	-8(%rbp), %rax
	cmpq	$0, 112(%rax)
	je	.LBB125_19
# BB#18:                                # %if.then.49
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	movq	112(%rcx), %rcx
	movswl	12(%rcx), %edx
	movq	-8(%rbp), %rcx
	movq	112(%rcx), %rcx
	movswl	4(%rcx), %esi
	subl	%esi, %edx
	movq	-8(%rbp), %rcx
	movl	%edx, 28(%rcx)
	movq	-8(%rbp), %rcx
	movq	112(%rcx), %rcx
	movswl	10(%rcx), %edx
	subl	%edx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 24(%rcx)
.LBB125_19:                             # %if.end.62
	jmp	.LBB125_20
.LBB125_20:                             # %if.end.63
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end125:
	.size	x_compute_glyph_string_overhangs, .Lfunc_end125-x_compute_glyph_string_overhangs
	.cfi_endproc

	.align	16, 0x90
	.type	x_draw_glyph_string,@function
x_draw_glyph_string:                    # @x_draw_glyph_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp400:
	.cfi_def_cfa_offset 16
.Ltmp401:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp402:
	.cfi_def_cfa_register %rbp
	subq	$704, %rsp              # imm = 0x2C0
	movq	%rdi, -8(%rbp)
	movb	$0, -9(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 232(%rdi)
	je	.LBB126_15
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpl	$0, 28(%rax)
	je	.LBB126_15
# BB#2:                                 # %land.lhs.true.2
	movq	-8(%rbp), %rax
	movb	136(%rax), %cl
	shrb	$4, %cl
	andb	$7, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB126_15
# BB#3:                                 # %if.then
	movl	$0, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB126_4:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -24(%rbp)
	movb	%cl, -621(%rbp)         # 1-byte Spill
	je	.LBB126_6
# BB#5:                                 # %land.rhs
                                        #   in Loop: Header=BB126_4 Depth=1
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	28(%rcx), %eax
	setl	%dl
	movb	%dl, -621(%rbp)         # 1-byte Spill
.LBB126_6:                              # %land.end
                                        #   in Loop: Header=BB126_4 Depth=1
	movb	-621(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB126_7
	jmp	.LBB126_14
.LBB126_7:                              # %for.body
                                        #   in Loop: Header=BB126_4 Depth=1
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movl	24(%rax), %ecx
	andl	$7, %ecx
	cmpl	$3, %ecx
	je	.LBB126_12
# BB#8:                                 # %if.then.11
                                        #   in Loop: Header=BB126_4 Depth=1
	movq	-24(%rbp), %rdi
	callq	x_set_glyph_string_gc
	movq	-24(%rbp), %rdi
	callq	x_set_glyph_string_clipping
	movq	-24(%rbp), %rdi
	movq	152(%rdi), %rdi
	movl	24(%rdi), %eax
	andl	$7, %eax
	cmpl	$4, %eax
	jne	.LBB126_10
# BB#9:                                 # %if.then.17
                                        #   in Loop: Header=BB126_4 Depth=1
	movq	-24(%rbp), %rdi
	callq	x_draw_stretch_glyph_string
	jmp	.LBB126_11
.LBB126_10:                             # %if.else
                                        #   in Loop: Header=BB126_4 Depth=1
	movl	$1, %esi
	movq	-24(%rbp), %rdi
	callq	x_draw_glyph_string_background
.LBB126_11:                             # %if.end
                                        #   in Loop: Header=BB126_4 Depth=1
	movq	-24(%rbp), %rax
	movl	$0, 216(%rax)
.LBB126_12:                             # %if.end.18
                                        #   in Loop: Header=BB126_4 Depth=1
	jmp	.LBB126_13
.LBB126_13:                             # %for.inc
                                        #   in Loop: Header=BB126_4 Depth=1
	movq	-24(%rbp), %rax
	movl	12(%rax), %ecx
	addl	-16(%rbp), %ecx
	movl	%ecx, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB126_4
.LBB126_14:                             # %for.end
	jmp	.LBB126_15
.LBB126_15:                             # %if.end.21
	movq	-8(%rbp), %rdi
	callq	x_set_glyph_string_gc
	movq	-8(%rbp), %rdi
	movb	136(%rdi), %al
	shrb	$4, %al
	andb	$7, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	jne	.LBB126_20
# BB#16:                                # %land.lhs.true.28
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movl	240(%rax), %ecx
	andl	$3, %ecx
	cmpl	$0, %ecx
	je	.LBB126_20
# BB#17:                                # %land.lhs.true.32
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movl	24(%rax), %ecx
	andl	$7, %ecx
	cmpl	$0, %ecx
	je	.LBB126_19
# BB#18:                                # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movl	24(%rax), %ecx
	andl	$7, %ecx
	cmpl	$1, %ecx
	jne	.LBB126_20
.LBB126_19:                             # %if.then.43
	movq	-8(%rbp), %rdi
	callq	x_set_glyph_string_clipping
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	x_draw_glyph_string_background
	movq	-8(%rbp), %rdi
	callq	x_draw_glyph_string_box
	movq	-8(%rbp), %rdi
	callq	x_set_glyph_string_clipping
	movb	$1, -9(%rbp)
	jmp	.LBB126_31
.LBB126_20:                             # %if.else.44
	movq	-8(%rbp), %rax
	cmpq	$0, 184(%rax)
	jne	.LBB126_29
# BB#21:                                # %land.lhs.true.46
	movq	-8(%rbp), %rax
	cmpq	$0, 192(%rax)
	jne	.LBB126_29
# BB#22:                                # %land.lhs.true.48
	movq	-8(%rbp), %rax
	cmpq	$0, 240(%rax)
	je	.LBB126_25
# BB#23:                                # %land.lhs.true.50
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	movl	92(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	92(%rax), %ecx
	je	.LBB126_25
# BB#24:                                # %land.lhs.true.54
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB126_28
.LBB126_25:                             # %lor.lhs.false.56
	movq	-8(%rbp), %rax
	cmpq	$0, 232(%rax)
	je	.LBB126_29
# BB#26:                                # %land.lhs.true.59
	movq	-8(%rbp), %rax
	movq	232(%rax), %rax
	movl	92(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	92(%rax), %ecx
	je	.LBB126_29
# BB#27:                                # %land.lhs.true.64
	movq	-8(%rbp), %rax
	cmpl	$0, 28(%rax)
	je	.LBB126_29
.LBB126_28:                             # %if.then.67
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	x_set_glyph_string_clipping_exactly
	jmp	.LBB126_30
.LBB126_29:                             # %if.else.68
	movq	-8(%rbp), %rdi
	callq	x_set_glyph_string_clipping
.LBB126_30:                             # %if.end.69
	jmp	.LBB126_31
.LBB126_31:                             # %if.end.70
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movl	24(%rax), %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	movl	%ecx, %edx
	andl	$7, %edx
	andl	$7, %ecx
	movl	%ecx, %eax
	subl	$5, %edx
	movq	%rax, -632(%rbp)        # 8-byte Spill
	movl	%edx, -636(%rbp)        # 4-byte Spill
	ja	.LBB126_49
# BB#130:                               # %if.end.70
	movq	-632(%rbp), %rax        # 8-byte Reload
	movq	.LJTI126_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB126_32:                             # %sw.bb
	movq	-8(%rbp), %rdi
	callq	x_draw_image_glyph_string
	jmp	.LBB126_50
.LBB126_33:                             # %sw.bb.75
	movq	-8(%rbp), %rdi
	callq	x_draw_xwidget_glyph_string
	jmp	.LBB126_50
.LBB126_34:                             # %sw.bb.76
	movq	-8(%rbp), %rdi
	callq	x_draw_stretch_glyph_string
	jmp	.LBB126_50
.LBB126_35:                             # %sw.bb.77
	movq	-8(%rbp), %rax
	movb	136(%rax), %cl
	shrb	$4, %cl
	andb	$7, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB126_37
# BB#36:                                # %if.then.84
	movq	-8(%rbp), %rax
	movb	136(%rax), %cl
	andb	$-3, %cl
	orb	$2, %cl
	movb	%cl, 136(%rax)
	jmp	.LBB126_38
.LBB126_37:                             # %if.else.87
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	x_draw_glyph_string_background
.LBB126_38:                             # %if.end.88
	movq	-8(%rbp), %rdi
	callq	x_draw_glyph_string_foreground
	jmp	.LBB126_50
.LBB126_39:                             # %sw.bb.89
	movq	-8(%rbp), %rax
	movb	136(%rax), %cl
	shrb	$4, %cl
	andb	$7, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB126_42
# BB#40:                                # %lor.lhs.false.96
	movq	-8(%rbp), %rax
	cmpl	$0, 128(%rax)
	jle	.LBB126_43
# BB#41:                                # %land.lhs.true.98
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movl	40(%rax), %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	jne	.LBB126_43
.LBB126_42:                             # %if.then.104
	movq	-8(%rbp), %rax
	movb	136(%rax), %cl
	andb	$-3, %cl
	orb	$2, %cl
	movb	%cl, 136(%rax)
	jmp	.LBB126_44
.LBB126_43:                             # %if.else.109
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	x_draw_glyph_string_background
.LBB126_44:                             # %if.end.110
	movq	-8(%rbp), %rdi
	callq	x_draw_composite_glyph_string_foreground
	jmp	.LBB126_50
.LBB126_45:                             # %sw.bb.111
	movq	-8(%rbp), %rax
	movb	136(%rax), %cl
	shrb	$4, %cl
	andb	$7, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB126_47
# BB#46:                                # %if.then.118
	movq	-8(%rbp), %rax
	movb	136(%rax), %cl
	andb	$-3, %cl
	orb	$2, %cl
	movb	%cl, 136(%rax)
	jmp	.LBB126_48
.LBB126_47:                             # %if.else.123
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	x_draw_glyph_string_background
.LBB126_48:                             # %if.end.124
	movq	-8(%rbp), %rdi
	callq	x_draw_glyphless_glyph_string_foreground
	jmp	.LBB126_50
.LBB126_49:                             # %sw.default
	callq	emacs_abort
.LBB126_50:                             # %sw.epilog
	movq	-8(%rbp), %rax
	movb	136(%rax), %cl
	shrb	$4, %cl
	andb	$7, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB126_129
# BB#51:                                # %if.then.131
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movl	240(%rax), %ecx
	shrl	$4, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	je	.LBB126_91
# BB#52:                                # %if.then.137
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movl	240(%rax), %ecx
	shrl	$2, %ecx
	andl	$1, %ecx
	cmpl	$1, %ecx
	jne	.LBB126_57
# BB#53:                                # %if.then.143
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movl	240(%rax), %ecx
	shrl	$9, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	je	.LBB126_55
# BB#54:                                # %if.then.149
	movq	-8(%rbp), %rdi
	callq	x_draw_underwave
	jmp	.LBB126_56
.LBB126_55:                             # %if.else.150
	movl	$4, %eax
	movl	%eax, %edx
	leaq	-152(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rdi
	movq	-8(%rbp), %rsi
	movq	144(%rsi), %rsi
	callq	XGetGCValues
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	144(%rcx), %rsi
	movq	-8(%rbp), %rcx
	movq	96(%rcx), %rcx
	movq	192(%rcx), %rdx
	movl	%eax, -640(%rbp)        # 4-byte Spill
	callq	XSetForeground
	movq	-8(%rbp), %rdi
	movl	%eax, -644(%rbp)        # 4-byte Spill
	callq	x_draw_underwave
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	144(%rcx), %rsi
	movq	-136(%rbp), %rdx
	callq	XSetForeground
	movl	%eax, -648(%rbp)        # 4-byte Spill
.LBB126_56:                             # %if.end.158
	jmp	.LBB126_90
.LBB126_57:                             # %if.else.159
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movl	240(%rax), %ecx
	shrl	$2, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	jne	.LBB126_89
# BB#58:                                # %if.then.166
	movq	-8(%rbp), %rax
	cmpq	$0, 240(%rax)
	je	.LBB126_62
# BB#59:                                # %land.lhs.true.169
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	movq	96(%rax), %rax
	movl	240(%rax), %ecx
	shrl	$4, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	je	.LBB126_62
# BB#60:                                # %land.lhs.true.177
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	movq	96(%rax), %rax
	movl	240(%rax), %ecx
	shrl	$2, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	jne	.LBB126_62
# BB#61:                                # %if.then.185
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	movslq	224(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	movslq	220(%rax), %rax
	movq	%rax, -168(%rbp)
	jmp	.LBB126_81
.LBB126_62:                             # %if.else.189
	movq	-8(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB126_65
# BB#63:                                # %land.lhs.true.191
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	cmpl	$0, 176(%rax)
	jle	.LBB126_65
# BB#64:                                # %if.then.196
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movslq	176(%rax), %rax
	movq	%rax, -160(%rbp)
	jmp	.LBB126_66
.LBB126_65:                             # %if.else.200
	movq	$1, -160(%rbp)
.LBB126_66:                             # %if.end.201
	testb	$1, globals+3448
	je	.LBB126_68
# BB#67:                                # %if.then.203
	movq	-8(%rbp), %rax
	movslq	20(%rax), %rax
	subq	-160(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %edx
	movq	-8(%rbp), %rcx
	subl	4(%rcx), %edx
	movslq	%edx, %rcx
	subq	%rcx, %rax
	movq	%rax, -168(%rbp)
	jmp	.LBB126_77
.LBB126_68:                             # %if.else.209
	testb	$1, globals+3449
	je	.LBB126_72
# BB#69:                                # %land.lhs.true.212
	movq	-8(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB126_72
# BB#70:                                # %land.lhs.true.215
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	cmpl	$0, 180(%rax)
	jl	.LBB126_72
# BB#71:                                # %if.then.220
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movslq	180(%rax), %rax
	movq	%rax, -168(%rbp)
	jmp	.LBB126_76
.LBB126_72:                             # %if.else.224
	movq	-8(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB126_74
# BB#73:                                # %if.then.227
	movl	$2, %eax
	movq	-8(%rbp), %rcx
	movq	104(%rcx), %rcx
	movl	172(%rcx), %edx
	addl	$1, %edx
	movl	%eax, -652(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-652(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movslq	%eax, %rcx
	movq	%rcx, -168(%rbp)
	jmp	.LBB126_75
.LBB126_74:                             # %if.else.231
	movq	globals+3320, %rax
	movq	%rax, -168(%rbp)
.LBB126_75:                             # %if.end.232
	jmp	.LBB126_76
.LBB126_76:                             # %if.end.233
	jmp	.LBB126_77
.LBB126_77:                             # %if.end.234
	movq	-168(%rbp), %rax
	cmpq	globals+3320, %rax
	jbe	.LBB126_79
# BB#78:                                # %cond.true
	movq	-168(%rbp), %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	jmp	.LBB126_80
.LBB126_79:                             # %cond.false
	movq	globals+3320, %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
.LBB126_80:                             # %cond.end
	movq	-664(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
.LBB126_81:                             # %if.end.237
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-8(%rbp), %rax
	addl	20(%rax), %ecx
	movslq	%ecx, %rax
	movq	-8(%rbp), %rdx
	movslq	8(%rdx), %rdx
	addq	-168(%rbp), %rdx
	cmpq	%rdx, %rax
	ja	.LBB126_83
# BB#82:                                # %if.then.247
	movq	-8(%rbp), %rax
	movl	20(%rax), %ecx
	subl	$1, %ecx
	movq	-8(%rbp), %rax
	movl	8(%rax), %edx
	movq	-8(%rbp), %rax
	subl	4(%rax), %edx
	subl	%edx, %ecx
	movslq	%ecx, %rax
	movq	%rax, -168(%rbp)
.LBB126_83:                             # %if.end.255
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-8(%rbp), %rax
	addl	20(%rax), %ecx
	movslq	%ecx, %rax
	movq	-8(%rbp), %rdx
	movslq	8(%rdx), %rdx
	addq	-168(%rbp), %rdx
	addq	-160(%rbp), %rdx
	cmpq	%rdx, %rax
	jae	.LBB126_85
# BB#84:                                # %if.then.266
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-8(%rbp), %rax
	addl	20(%rax), %ecx
	movslq	%ecx, %rax
	movq	-8(%rbp), %rdx
	movslq	8(%rdx), %rdx
	addq	-168(%rbp), %rdx
	subq	%rdx, %rax
	movq	%rax, -160(%rbp)
.LBB126_85:                             # %if.end.275
	movq	-160(%rbp), %rax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 224(%rax)
	movq	-168(%rbp), %rax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 220(%rax)
	movq	-8(%rbp), %rax
	movslq	8(%rax), %rax
	addq	-168(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -172(%rbp)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movl	240(%rax), %ecx
	shrl	$9, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	je	.LBB126_87
# BB#86:                                # %if.then.290
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	144(%rax), %rsi
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movl	-172(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	12(%rax), %r8d
	movq	-160(%rbp), %rax
	movl	%eax, %r9d
	callq	x_fill_rectangle
	jmp	.LBB126_88
.LBB126_87:                             # %if.else.294
	movl	$4, %eax
	movl	%eax, %edx
	leaq	-304(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rdi
	movq	-8(%rbp), %rsi
	movq	144(%rsi), %rsi
	callq	XGetGCValues
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	144(%rcx), %rsi
	movq	-8(%rbp), %rcx
	movq	96(%rcx), %rcx
	movq	192(%rcx), %rdx
	movl	%eax, -668(%rbp)        # 4-byte Spill
	callq	XSetForeground
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	144(%rcx), %rsi
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edx
	movl	-172(%rbp), %ecx
	movq	-8(%rbp), %r8
	movl	12(%r8), %r8d
	movq	-160(%rbp), %r9
	movl	%r9d, %r10d
	movl	%r10d, %r9d
	movl	%eax, -672(%rbp)        # 4-byte Spill
	callq	x_fill_rectangle
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rdi
	movq	-8(%rbp), %rsi
	movq	144(%rsi), %rsi
	movq	-288(%rbp), %rdx
	callq	XSetForeground
	movl	%eax, -676(%rbp)        # 4-byte Spill
.LBB126_88:                             # %if.end.313
	jmp	.LBB126_89
.LBB126_89:                             # %if.end.314
	jmp	.LBB126_90
.LBB126_90:                             # %if.end.315
	jmp	.LBB126_91
.LBB126_91:                             # %if.end.316
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movl	240(%rax), %ecx
	shrl	$5, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	je	.LBB126_96
# BB#92:                                # %if.then.322
	movq	$0, -312(%rbp)
	movq	$1, -320(%rbp)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movl	240(%rax), %ecx
	shrl	$10, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	je	.LBB126_94
# BB#93:                                # %if.then.328
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	144(%rax), %rsi
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movslq	4(%rax), %rax
	addq	-312(%rbp), %rax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	12(%rax), %r8d
	movq	-320(%rbp), %rax
	movl	%eax, %r9d
	callq	x_fill_rectangle
	jmp	.LBB126_95
.LBB126_94:                             # %if.else.338
	movl	$4, %eax
	movl	%eax, %edx
	leaq	-448(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rdi
	movq	-8(%rbp), %rsi
	movq	144(%rsi), %rsi
	callq	XGetGCValues
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	144(%rcx), %rsi
	movq	-8(%rbp), %rcx
	movq	96(%rcx), %rcx
	movq	200(%rcx), %rdx
	movl	%eax, -680(%rbp)        # 4-byte Spill
	callq	XSetForeground
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	144(%rcx), %rsi
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edx
	movq	-8(%rbp), %rcx
	movslq	4(%rcx), %rcx
	addq	-312(%rbp), %rcx
	movl	%ecx, %r8d
	movq	-8(%rbp), %rcx
	movl	12(%rcx), %r9d
	movq	-320(%rbp), %rcx
	movl	%ecx, %r10d
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	%eax, -684(%rbp)        # 4-byte Spill
	callq	x_fill_rectangle
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rdi
	movq	-8(%rbp), %rsi
	movq	144(%rsi), %rsi
	movq	-432(%rbp), %rdx
	callq	XSetForeground
	movl	%eax, -688(%rbp)        # 4-byte Spill
.LBB126_95:                             # %if.end.360
	jmp	.LBB126_96
.LBB126_96:                             # %if.end.361
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movl	240(%rax), %ecx
	shrl	$6, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	je	.LBB126_101
# BB#97:                                # %if.then.367
	movq	$1, -456(%rbp)
	movq	-8(%rbp), %rax
	movslq	20(%rax), %rax
	subq	-456(%rbp), %rax
	shrq	$1, %rax
	movq	%rax, -464(%rbp)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movl	240(%rax), %ecx
	shrl	$11, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	je	.LBB126_99
# BB#98:                                # %if.then.379
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	144(%rax), %rsi
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movslq	4(%rax), %rax
	addq	-464(%rbp), %rax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	12(%rax), %r8d
	movq	-456(%rbp), %rax
	movl	%eax, %r9d
	callq	x_fill_rectangle
	jmp	.LBB126_100
.LBB126_99:                             # %if.else.389
	movl	$4, %eax
	movl	%eax, %edx
	leaq	-592(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rdi
	movq	-8(%rbp), %rsi
	movq	144(%rsi), %rsi
	callq	XGetGCValues
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	144(%rcx), %rsi
	movq	-8(%rbp), %rcx
	movq	96(%rcx), %rcx
	movq	208(%rcx), %rdx
	movl	%eax, -692(%rbp)        # 4-byte Spill
	callq	XSetForeground
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	144(%rcx), %rsi
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edx
	movq	-8(%rbp), %rcx
	movslq	4(%rcx), %rcx
	addq	-464(%rbp), %rcx
	movl	%ecx, %r8d
	movq	-8(%rbp), %rcx
	movl	12(%rcx), %r9d
	movq	-456(%rbp), %rcx
	movl	%ecx, %r10d
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	%eax, -696(%rbp)        # 4-byte Spill
	callq	x_fill_rectangle
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rdi
	movq	-8(%rbp), %rsi
	movq	144(%rsi), %rsi
	movq	-576(%rbp), %rdx
	callq	XSetForeground
	movl	%eax, -700(%rbp)        # 4-byte Spill
.LBB126_100:                            # %if.end.411
	jmp	.LBB126_101
.LBB126_101:                            # %if.end.412
	testb	$1, -9(%rbp)
	jne	.LBB126_104
# BB#102:                               # %land.lhs.true.414
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movl	240(%rax), %ecx
	andl	$3, %ecx
	cmpl	$0, %ecx
	je	.LBB126_104
# BB#103:                               # %if.then.421
	movq	-8(%rbp), %rdi
	callq	x_draw_glyph_string_box
.LBB126_104:                            # %if.end.422
	movq	-8(%rbp), %rax
	cmpq	$0, 240(%rax)
	je	.LBB126_116
# BB#105:                               # %if.then.425
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, -600(%rbp)
.LBB126_106:                            # %for.cond.428
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -600(%rbp)
	je	.LBB126_115
# BB#107:                               # %for.body.430
                                        #   in Loop: Header=BB126_106 Depth=1
	movq	-600(%rbp), %rax
	movl	92(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	92(%rax), %ecx
	je	.LBB126_113
# BB#108:                               # %land.lhs.true.435
                                        #   in Loop: Header=BB126_106 Depth=1
	movq	-600(%rbp), %rax
	movl	(%rax), %ecx
	movq	-600(%rbp), %rax
	addl	12(%rax), %ecx
	movq	-600(%rbp), %rax
	addl	28(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	(%rax), %ecx
	jle	.LBB126_113
# BB#109:                               # %if.then.444
                                        #   in Loop: Header=BB126_106 Depth=1
	movq	-600(%rbp), %rax
	movl	92(%rax), %ecx
	movl	%ecx, -604(%rbp)
	movq	-8(%rbp), %rax
	movl	92(%rax), %ecx
	movq	-600(%rbp), %rax
	movl	%ecx, 92(%rax)
	movq	-600(%rbp), %rdi
	callq	x_set_glyph_string_gc
	movq	-8(%rbp), %rdi
	movq	-600(%rbp), %rsi
	callq	x_set_glyph_string_clipping_exactly
	movq	-600(%rbp), %rax
	movq	152(%rax), %rax
	movl	24(%rax), %ecx
	andl	$7, %ecx
	cmpl	$0, %ecx
	jne	.LBB126_111
# BB#110:                               # %if.then.454
                                        #   in Loop: Header=BB126_106 Depth=1
	movq	-600(%rbp), %rdi
	callq	x_draw_glyph_string_foreground
	jmp	.LBB126_112
.LBB126_111:                            # %if.else.455
                                        #   in Loop: Header=BB126_106 Depth=1
	movq	-600(%rbp), %rdi
	callq	x_draw_composite_glyph_string_foreground
.LBB126_112:                            # %if.end.456
                                        #   in Loop: Header=BB126_106 Depth=1
	movq	-600(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-600(%rbp), %rax
	movq	144(%rax), %rsi
	callq	x_reset_clip_rectangles
	movl	-604(%rbp), %ecx
	movq	-600(%rbp), %rax
	movl	%ecx, 92(%rax)
	movq	-600(%rbp), %rax
	movl	$0, 216(%rax)
.LBB126_113:                            # %if.end.461
                                        #   in Loop: Header=BB126_106 Depth=1
	jmp	.LBB126_114
.LBB126_114:                            # %for.inc.462
                                        #   in Loop: Header=BB126_106 Depth=1
	movq	-600(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, -600(%rbp)
	jmp	.LBB126_106
.LBB126_115:                            # %for.end.464
	jmp	.LBB126_116
.LBB126_116:                            # %if.end.465
	movq	-8(%rbp), %rax
	cmpq	$0, 232(%rax)
	je	.LBB126_128
# BB#117:                               # %if.then.468
	movq	-8(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -616(%rbp)
.LBB126_118:                            # %for.cond.471
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -616(%rbp)
	je	.LBB126_127
# BB#119:                               # %for.body.473
                                        #   in Loop: Header=BB126_118 Depth=1
	movq	-616(%rbp), %rax
	movl	92(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	92(%rax), %ecx
	je	.LBB126_125
# BB#120:                               # %land.lhs.true.478
                                        #   in Loop: Header=BB126_118 Depth=1
	movq	-616(%rbp), %rax
	movl	(%rax), %ecx
	movq	-616(%rbp), %rax
	subl	24(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	addl	12(%rax), %edx
	cmpl	%edx, %ecx
	jge	.LBB126_125
# BB#121:                               # %if.then.487
                                        #   in Loop: Header=BB126_118 Depth=1
	movq	-616(%rbp), %rax
	movl	92(%rax), %ecx
	movl	%ecx, -620(%rbp)
	movq	-8(%rbp), %rax
	movl	92(%rax), %ecx
	movq	-616(%rbp), %rax
	movl	%ecx, 92(%rax)
	movq	-616(%rbp), %rdi
	callq	x_set_glyph_string_gc
	movq	-8(%rbp), %rdi
	movq	-616(%rbp), %rsi
	callq	x_set_glyph_string_clipping_exactly
	movq	-616(%rbp), %rax
	movq	152(%rax), %rax
	movl	24(%rax), %ecx
	andl	$7, %ecx
	cmpl	$0, %ecx
	jne	.LBB126_123
# BB#122:                               # %if.then.498
                                        #   in Loop: Header=BB126_118 Depth=1
	movq	-616(%rbp), %rdi
	callq	x_draw_glyph_string_foreground
	jmp	.LBB126_124
.LBB126_123:                            # %if.else.499
                                        #   in Loop: Header=BB126_118 Depth=1
	movq	-616(%rbp), %rdi
	callq	x_draw_composite_glyph_string_foreground
.LBB126_124:                            # %if.end.500
                                        #   in Loop: Header=BB126_118 Depth=1
	movq	-616(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-616(%rbp), %rax
	movq	144(%rax), %rsi
	callq	x_reset_clip_rectangles
	movl	-620(%rbp), %ecx
	movq	-616(%rbp), %rax
	movl	%ecx, 92(%rax)
	movq	-616(%rbp), %rax
	movl	$0, 216(%rax)
	movq	-8(%rbp), %rax
	movq	232(%rax), %rax
	movq	-616(%rbp), %rsi
	movq	%rax, 184(%rsi)
.LBB126_125:                            # %if.end.507
                                        #   in Loop: Header=BB126_118 Depth=1
	jmp	.LBB126_126
.LBB126_126:                            # %for.inc.508
                                        #   in Loop: Header=BB126_118 Depth=1
	movq	-616(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -616(%rbp)
	jmp	.LBB126_118
.LBB126_127:                            # %for.end.510
	jmp	.LBB126_128
.LBB126_128:                            # %if.end.511
	jmp	.LBB126_129
.LBB126_129:                            # %if.end.512
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	144(%rax), %rsi
	callq	x_reset_clip_rectangles
	movq	-8(%rbp), %rax
	movl	$0, 216(%rax)
	addq	$704, %rsp              # imm = 0x2C0
	popq	%rbp
	retq
.Lfunc_end126:
	.size	x_draw_glyph_string, .Lfunc_end126-x_draw_glyph_string
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI126_0:
	.quad	.LBB126_35
	.quad	.LBB126_39
	.quad	.LBB126_45
	.quad	.LBB126_32
	.quad	.LBB126_34
	.quad	.LBB126_33

	.text
	.align	16, 0x90
	.type	x_define_frame_cursor,@function
x_define_frame_cursor:                  # @x_define_frame_cursor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp403:
	.cfi_def_cfa_offset 16
.Ltmp404:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp405:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	208(%rsi), %rsi
	shrq	$21, %rsi
	andq	$1, %rsi
	testq	$1, %rsi
	jne	.LBB127_3
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	352(%rax), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB127_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rsi
	movq	-16(%rbp), %rdx
	callq	XDefineCursor
	movl	%eax, -20(%rbp)         # 4-byte Spill
.LBB127_3:                              # %if.end
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	%rax, 352(%rcx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end127:
	.size	x_define_frame_cursor, .Lfunc_end127-x_define_frame_cursor
	.cfi_endproc

	.align	16, 0x90
	.type	x_clear_frame_area,@function
x_clear_frame_area:                     # @x_clear_frame_area
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp406:
	.cfi_def_cfa_offset 16
.Ltmp407:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp408:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	callq	x_clear_area
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	cmpq	$0, 88(%rdi)
	je	.LBB128_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	88(%rax), %rdi
	callq	gtk_widget_queue_draw
.LBB128_2:                              # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end128:
	.size	x_clear_frame_area, .Lfunc_end128-x_clear_frame_area
	.cfi_endproc

	.align	16, 0x90
	.type	x_draw_window_cursor,@function
x_draw_window_cursor:                   # @x_draw_window_cursor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp409:
	.cfi_def_cfa_offset 16
.Ltmp410:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp411:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movb	24(%rbp), %al
	movb	16(%rbp), %r10b
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	andb	$1, %r10b
	movb	%r10b, -33(%rbp)
	andb	$1, %al
	movb	%al, -34(%rbp)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	subq	$5, %rsi
	movq	%rsi, -48(%rbp)
	testb	$1, -33(%rbp)
	je	.LBB129_20
# BB#1:                                 # %if.then
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 404(%rcx)
	movq	-8(%rbp), %rcx
	movw	468(%rcx), %dx
	andw	$-129, %dx
	orw	$128, %dx
	movw	%dx, 468(%rcx)
	movq	-16(%rbp), %rcx
	movq	236(%rcx), %rcx
	shrq	$27, %rcx
	andq	$1, %rcx
	testq	$1, %rcx
	je	.LBB129_6
# BB#2:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$34, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB129_4
# BB#3:                                 # %cond.true
	movq	-8(%rbp), %rax
	cmpl	$0, 376(%rax)
	jl	.LBB129_5
	jmp	.LBB129_6
.LBB129_4:                              # %cond.false
	movq	-8(%rbp), %rax
	movl	376(%rax), %ecx
	movq	-16(%rbp), %rax
	movswl	34(%rax), %edx
	cmpl	%edx, %ecx
	jl	.LBB129_6
.LBB129_5:                              # %if.then.12
	movq	-16(%rbp), %rax
	movq	236(%rax), %rcx
	andq	$-268435457, %rcx       # imm = 0xFFFFFFFFEFFFFFFF
	orq	$268435456, %rcx        # imm = 0x10000000
	movq	%rcx, 236(%rax)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$34, %rax
	andq	$1, %rax
	movb	%al, %dl
	andb	$1, %dl
	movzbl	%dl, %edx
	callq	draw_fringe_bitmap
	jmp	.LBB129_14
.LBB129_6:                              # %if.else
	movl	-28(%rbp), %eax
	incl	%eax
	movl	%eax, %ecx
	subl	$4, %eax
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movl	%eax, -60(%rbp)         # 4-byte Spill
	ja	.LBB129_12
# BB#21:                                # %if.else
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	.LJTI129_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB129_7:                              # %sw.bb
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	x_draw_hollow_cursor
	jmp	.LBB129_13
.LBB129_8:                              # %sw.bb.22
	movl	$2, %edx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	draw_phys_cursor_glyph
	jmp	.LBB129_13
.LBB129_9:                              # %sw.bb.23
	movl	$2, %ecx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-32(%rbp), %edx
	callq	x_draw_bar_cursor
	jmp	.LBB129_13
.LBB129_10:                             # %sw.bb.24
	movl	$3, %ecx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-32(%rbp), %edx
	callq	x_draw_bar_cursor
	jmp	.LBB129_13
.LBB129_11:                             # %sw.bb.25
	movq	-8(%rbp), %rax
	movl	$0, 408(%rax)
	jmp	.LBB129_13
.LBB129_12:                             # %sw.default
	callq	emacs_abort
.LBB129_13:                             # %sw.epilog
	jmp	.LBB129_14
.LBB129_14:                             # %if.end
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	48(%rcx), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	XWINDOW
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB129_19
# BB#15:                                # %if.then.28
	movq	-48(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 448(%rax)
	je	.LBB129_18
# BB#16:                                # %land.lhs.true.31
	movq	-48(%rbp), %rax
	movq	384(%rax), %rax
	movq	456(%rax), %rax
	andq	$4, %rax
	cmpq	$0, %rax
	je	.LBB129_18
# BB#17:                                # %if.then.35
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	xic_set_preeditarea
.LBB129_18:                             # %if.end.36
	jmp	.LBB129_19
.LBB129_19:                             # %if.end.37
	jmp	.LBB129_20
.LBB129_20:                             # %if.end.38
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end129:
	.size	x_draw_window_cursor, .Lfunc_end129-x_draw_window_cursor
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI129_0:
	.quad	.LBB129_11
	.quad	.LBB129_8
	.quad	.LBB129_7
	.quad	.LBB129_9
	.quad	.LBB129_10

	.text
	.align	16, 0x90
	.type	x_draw_vertical_window_border,@function
x_draw_vertical_window_border:          # @x_draw_vertical_window_border
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp412:
	.cfi_def_cfa_offset 16
.Ltmp413:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp414:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movb	$1, %al
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	subq	$5, %rdi
	movq	%rdi, -32(%rbp)
	testb	$1, %al
	jne	.LBB130_1
	jmp	.LBB130_2
.LBB130_1:                              # %cond.true
	movl	$11, %eax
	movq	-32(%rbp), %rcx
	movq	160(%rcx), %rcx
	movl	32(%rcx), %edx
	addl	$0, %edx
	cmpl	%edx, %eax
	jb	.LBB130_3
	jmp	.LBB130_4
.LBB130_2:                              # %cond.false
	movl	$11, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	160(%rdx), %rdx
	movslq	32(%rdx), %rdx
	addq	$0, %rdx
	cmpq	%rdx, %rcx
	jae	.LBB130_4
.LBB130_3:                              # %cond.true.6
	movq	-32(%rbp), %rax
	movq	160(%rax), %rax
	movq	16(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB130_5
.LBB130_4:                              # %cond.false.8
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB130_5
.LBB130_5:                              # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB130_7
# BB#6:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	32(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	176(%rax), %rdx
	callq	XSetForeground
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB130_7:                              # %if.end
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	32(%rax), %rdx
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %r8d
	movl	-12(%rbp), %r9d
	movl	-20(%rbp), %r10d
	movl	%r10d, (%rsp)
	callq	XDrawLine
	movl	%eax, -56(%rbp)         # 4-byte Spill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end130:
	.size	x_draw_vertical_window_border, .Lfunc_end130-x_draw_vertical_window_border
	.cfi_endproc

	.align	16, 0x90
	.type	x_draw_window_divider,@function
x_draw_window_divider:                  # @x_draw_window_divider
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp415:
	.cfi_def_cfa_offset 16
.Ltmp416:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp417:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movb	$1, %al
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	subq	$5, %rdi
	movq	%rdi, -32(%rbp)
	testb	$1, %al
	jne	.LBB131_1
	jmp	.LBB131_2
.LBB131_1:                              # %cond.true
	movl	$12, %eax
	movq	-32(%rbp), %rcx
	movq	160(%rcx), %rcx
	movl	32(%rcx), %edx
	addl	$0, %edx
	cmpl	%edx, %eax
	jb	.LBB131_3
	jmp	.LBB131_4
.LBB131_2:                              # %cond.false
	movl	$12, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	160(%rdx), %rdx
	movslq	32(%rdx), %rdx
	addq	$0, %rdx
	cmpq	%rdx, %rcx
	jae	.LBB131_4
.LBB131_3:                              # %cond.true.6
	movq	-32(%rbp), %rax
	movq	160(%rax), %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB131_5
.LBB131_4:                              # %cond.false.8
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB131_5
.LBB131_5:                              # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -40(%rbp)
	testb	$1, %cl
	jne	.LBB131_6
	jmp	.LBB131_7
.LBB131_6:                              # %cond.true.9
	movl	$13, %eax
	movq	-32(%rbp), %rcx
	movq	160(%rcx), %rcx
	movl	32(%rcx), %edx
	addl	$0, %edx
	cmpl	%edx, %eax
	jb	.LBB131_8
	jmp	.LBB131_9
.LBB131_7:                              # %cond.false.15
	movl	$13, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	160(%rdx), %rdx
	movslq	32(%rdx), %rdx
	addq	$0, %rdx
	cmpq	%rdx, %rcx
	jae	.LBB131_9
.LBB131_8:                              # %cond.true.22
	movq	-32(%rbp), %rax
	movq	160(%rax), %rax
	movq	16(%rax), %rax
	movq	104(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB131_10
.LBB131_9:                              # %cond.false.26
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB131_10
.LBB131_10:                             # %cond.end.27
	movq	-104(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -48(%rbp)
	testb	$1, %cl
	jne	.LBB131_11
	jmp	.LBB131_12
.LBB131_11:                             # %cond.true.29
	movl	$14, %eax
	movq	-32(%rbp), %rcx
	movq	160(%rcx), %rcx
	movl	32(%rcx), %edx
	addl	$0, %edx
	cmpl	%edx, %eax
	jb	.LBB131_13
	jmp	.LBB131_14
.LBB131_12:                             # %cond.false.35
	movl	$14, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	160(%rdx), %rdx
	movslq	32(%rdx), %rdx
	addq	$0, %rdx
	cmpq	%rdx, %rcx
	jae	.LBB131_14
.LBB131_13:                             # %cond.true.42
	movq	-32(%rbp), %rax
	movq	160(%rax), %rax
	movq	16(%rax), %rax
	movq	112(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB131_15
.LBB131_14:                             # %cond.false.46
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB131_15
.LBB131_15:                             # %cond.end.47
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB131_17
# BB#16:                                # %cond.true.49
	movq	-40(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB131_18
.LBB131_17:                             # %cond.false.50
	movq	-32(%rbp), %rax
	movq	480(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB131_18:                             # %cond.end.51
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB131_20
# BB#19:                                # %cond.true.54
	movq	-48(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB131_21
.LBB131_20:                             # %cond.false.56
	movq	-32(%rbp), %rax
	movq	480(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB131_21:                             # %cond.end.58
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB131_23
# BB#22:                                # %cond.true.61
	movq	-56(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB131_24
.LBB131_23:                             # %cond.false.63
	movq	-32(%rbp), %rax
	movq	480(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB131_24:                             # %cond.end.65
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movl	-24(%rbp), %ecx
	subl	-20(%rbp), %ecx
	movl	-16(%rbp), %edx
	subl	-12(%rbp), %edx
	cmpl	%edx, %ecx
	jle	.LBB131_27
# BB#25:                                # %land.lhs.true
	movl	-16(%rbp), %eax
	subl	-12(%rbp), %eax
	cmpl	$2, %eax
	jle	.LBB131_27
# BB#26:                                # %if.then
	movq	-88(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	32(%rax), %rsi
	movq	-72(%rbp), %rdx
	callq	XSetForeground
	movl	$1, %r8d
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	32(%rdx), %rsi
	movl	-12(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r9d
	subl	-20(%rbp), %r9d
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	x_fill_rectangle
	movq	-88(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	32(%rsi), %rsi
	movq	-64(%rbp), %rdx
	callq	XSetForeground
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	32(%rdx), %rsi
	movl	-12(%rbp), %ecx
	addl	$1, %ecx
	movl	-20(%rbp), %r8d
	movl	-16(%rbp), %r9d
	subl	-12(%rbp), %r9d
	subl	$2, %r9d
	movl	-24(%rbp), %r10d
	subl	-20(%rbp), %r10d
	movl	%ecx, %edx
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	%eax, -144(%rbp)        # 4-byte Spill
	callq	x_fill_rectangle
	movq	-88(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	32(%rsi), %rsi
	movq	-80(%rbp), %rdx
	callq	XSetForeground
	movl	$1, %r8d
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	32(%rdx), %rsi
	movl	-16(%rbp), %ecx
	subl	$1, %ecx
	movl	-20(%rbp), %r9d
	movl	-24(%rbp), %r10d
	subl	-20(%rbp), %r10d
	movl	%ecx, %edx
	movl	%r9d, %ecx
	movl	%r10d, %r9d
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	x_fill_rectangle
	jmp	.LBB131_32
.LBB131_27:                             # %if.else
	movl	-16(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	-24(%rbp), %ecx
	subl	-20(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB131_30
# BB#28:                                # %land.lhs.true.105
	movl	-24(%rbp), %eax
	subl	-20(%rbp), %eax
	cmpl	$3, %eax
	jle	.LBB131_30
# BB#29:                                # %if.then.109
	movq	-88(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	32(%rax), %rsi
	movq	-72(%rbp), %rdx
	callq	XSetForeground
	movl	$1, %r9d
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	32(%rdx), %rsi
	movl	-12(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-16(%rbp), %r8d
	subl	-12(%rbp), %r8d
	movl	%eax, -152(%rbp)        # 4-byte Spill
	callq	x_fill_rectangle
	movq	-88(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	32(%rsi), %rsi
	movq	-64(%rbp), %rdx
	callq	XSetForeground
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	32(%rdx), %rsi
	movl	-12(%rbp), %edx
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movl	-16(%rbp), %r8d
	subl	-12(%rbp), %r8d
	movl	-24(%rbp), %r9d
	subl	-20(%rbp), %r9d
	subl	$2, %r9d
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	x_fill_rectangle
	movq	-88(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	32(%rsi), %rsi
	movq	-80(%rbp), %rdx
	callq	XSetForeground
	movl	$1, %r9d
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	32(%rdx), %rsi
	movl	-12(%rbp), %edx
	movl	-24(%rbp), %ecx
	subl	$1, %ecx
	movl	-16(%rbp), %r8d
	subl	-12(%rbp), %r8d
	movl	%eax, -160(%rbp)        # 4-byte Spill
	callq	x_fill_rectangle
	jmp	.LBB131_31
.LBB131_30:                             # %if.else.138
	movq	-88(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	32(%rax), %rsi
	movq	-64(%rbp), %rdx
	callq	XSetForeground
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	32(%rdx), %rsi
	movl	-12(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-16(%rbp), %r8d
	subl	-12(%rbp), %r8d
	movl	-24(%rbp), %r9d
	subl	-20(%rbp), %r9d
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	x_fill_rectangle
.LBB131_31:                             # %if.end
	jmp	.LBB131_32
.LBB131_32:                             # %if.end.148
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end131:
	.size	x_draw_window_divider, .Lfunc_end131-x_draw_window_divider
	.cfi_endproc

	.align	16, 0x90
	.type	x_shift_glyphs_for_insert,@function
x_shift_glyphs_for_insert:              # @x_shift_glyphs_for_insert
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp418:
	.cfi_def_cfa_offset 16
.Ltmp419:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp420:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$64, %rsp
.Ltmp421:
	.cfi_offset %rbx, -32
.Ltmp422:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movq	-24(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	16(%rdi), %rdi
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	movq	32(%rax), %rcx
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	movl	-36(%rbp), %r10d
	movl	-40(%rbp), %r11d
	movl	-28(%rbp), %ebx
	addl	-44(%rbp), %ebx
	movl	-32(%rbp), %r14d
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r14d, 24(%rsp)
	callq	XCopyArea
	movl	%eax, -48(%rbp)         # 4-byte Spill
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end132:
	.size	x_shift_glyphs_for_insert, .Lfunc_end132-x_shift_glyphs_for_insert
	.cfi_endproc

	.align	16, 0x90
	.type	x_show_hourglass,@function
x_show_hourglass:                       # @x_show_hourglass
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp423:
	.cfi_def_cfa_offset 16
.Ltmp424:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp425:
	.cfi_def_cfa_register %rbp
	subq	$240, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB133_11
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	je	.LBB133_6
# BB#2:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	je	.LBB133_5
# BB#3:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	cmpq	$0, %rax
	je	.LBB133_5
# BB#4:                                 # %cond.true.15
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_x11_drawable_get_xid
	cmpq	$0, %rax
	jne	.LBB133_7
	jmp	.LBB133_10
.LBB133_5:                              # %cond.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB133_7
	jmp	.LBB133_10
.LBB133_6:                              # %cond.false.22
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 56(%rax)
	je	.LBB133_10
.LBB133_7:                              # %if.then.26
	movq	-24(%rbp), %rax
	movb	440(%rax), %cl
	andb	$-2, %cl
	orb	$1, %cl
	movb	%cl, 440(%rax)
	movq	-24(%rbp), %rax
	cmpq	$0, 360(%rax)
	jne	.LBB133_9
# BB#8:                                 # %if.then.28
	xorl	%eax, %eax
	movl	$32000, %ecx            # imm = 0x7D00
	movl	$2, %edx
	xorl	%esi, %esi
	movl	%esi, %edi
	leaq	-144(%rbp), %r8
	movq	$16384, -32(%rbp)       # imm = 0x4000
	movq	-8(%rbp), %r9
	movq	384(%r9), %r9
	movq	56(%r9), %r9
	movq	%r9, -152(%rbp)
	movq	-24(%rbp), %r9
	movq	328(%r9), %r9
	movq	%r9, -40(%rbp)
	movq	-16(%rbp), %r9
	movq	-152(%rbp), %rsi
	movq	-32(%rbp), %r10
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%edx, -164(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movl	%ecx, -168(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-168(%rbp), %eax        # 4-byte Reload
	movq	%r8, -176(%rbp)         # 8-byte Spill
	movl	%eax, %r8d
	movl	%eax, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	$2, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	%r10, 32(%rsp)
	movq	-176(%rbp), %r10        # 8-byte Reload
	movq	%r10, 40(%rsp)
	callq	XCreateWindow
	movq	-24(%rbp), %rsi
	movq	%rax, 360(%rsi)
.LBB133_9:                              # %if.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	360(%rax), %rsi
	callq	XMapRaised
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB133_10:                             # %if.end.36
	jmp	.LBB133_11
.LBB133_11:                             # %if.end.37
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end133:
	.size	x_show_hourglass, .Lfunc_end133-x_show_hourglass
	.cfi_endproc

	.align	16, 0x90
	.type	x_hide_hourglass,@function
x_hide_hourglass:                       # @x_hide_hourglass
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp426:
	.cfi_def_cfa_offset 16
.Ltmp427:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp428:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	cmpq	$0, 360(%rdi)
	je	.LBB134_4
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	360(%rax), %rsi
	callq	XUnmapWindow
	movl	%eax, -20(%rbp)         # 4-byte Spill
# BB#2:                                 # %do.body
	callq	gdk_window_process_all_updates
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	callq	XSync
	movl	%eax, -24(%rbp)         # 4-byte Spill
# BB#3:                                 # %do.end
	movq	-16(%rbp), %rax
	movb	440(%rax), %cl
	andb	$-2, %cl
	movb	%cl, 440(%rax)
.LBB134_4:                              # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end134:
	.size	x_hide_hourglass, .Lfunc_end134-x_hide_hourglass
	.cfi_endproc

	.align	16, 0x90
	.type	x_clip_to_row,@function
x_clip_to_row:                          # @x_clip_to_row
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp429:
	.cfi_def_cfa_offset 16
.Ltmp430:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp431:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$72, %rsp
.Ltmp432:
	.cfi_offset %rbx, -24
	leaq	-60(%rbp), %rax
	leaq	-64(%rbp), %r8
	leaq	-68(%rbp), %r9
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	movq	%rcx, -48(%rbp)
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %esi
	movq	%rax, %rdx
	movq	%r8, %rcx
	movq	%r9, %r8
	movq	%r11, %r9
	callq	window_box
	xorl	%esi, %esi
	movl	-60(%rbp), %r10d
	movw	%r10w, %bx
	movw	%bx, -56(%rbp)
	movq	-24(%rbp), %rax
	cmpl	48(%rax), %esi
	jle	.LBB135_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB135_3
.LBB135_2:                              # %cond.false
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -72(%rbp)         # 4-byte Spill
.LBB135_3:                              # %cond.end
	movl	-72(%rbp), %eax         # 4-byte Reload
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	movl	332(%rcx), %edx
	movq	-16(%rbp), %rcx
	addl	244(%rcx), %edx
	addl	%edx, %eax
	movw	%ax, %si
	movw	%si, -54(%rbp)
	movswl	-54(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jle	.LBB135_5
# BB#4:                                 # %cond.true.12
	movswl	-54(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB135_6
.LBB135_5:                              # %cond.false.15
	movl	-64(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB135_6:                              # %cond.end.16
	movl	-76(%rbp), %eax         # 4-byte Reload
	leaq	-56(%rbp), %rdx
	movl	$1, %ecx
	movw	%ax, %si
	movw	%si, -54(%rbp)
	movl	-68(%rbp), %eax
	movw	%ax, %si
	movw	%si, -52(%rbp)
	movq	-24(%rbp), %rdi
	movl	72(%rdi), %eax
	movw	%ax, %si
	movw	%si, -50(%rbp)
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	x_set_clip_rectangles
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end135:
	.size	x_clip_to_row, .Lfunc_end135-x_clip_to_row
	.cfi_endproc

	.align	16, 0x90
	.type	x_fill_rectangle,@function
x_fill_rectangle:                       # @x_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp433:
	.cfi_def_cfa_offset 16
.Ltmp434:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp435:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	16(%rsi), %rdi
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	56(%rsi), %rsi
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movl	-28(%rbp), %r9d
	movl	-32(%rbp), %eax
	movl	%eax, (%rsp)
	callq	XFillRectangle
	movl	%eax, -36(%rbp)         # 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end136:
	.size	x_fill_rectangle, .Lfunc_end136-x_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	x_reset_clip_rectangles,@function
x_reset_clip_rectangles:                # @x_reset_clip_rectangles
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp436:
	.cfi_def_cfa_offset 16
.Ltmp437:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp438:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	16(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	XSetClipMask
	movl	%eax, -20(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end137:
	.size	x_reset_clip_rectangles, .Lfunc_end137-x_reset_clip_rectangles
	.cfi_endproc

	.align	16, 0x90
	.type	x_set_clip_rectangles,@function
x_set_clip_rectangles:                  # @x_set_clip_rectangles
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp439:
	.cfi_def_cfa_offset 16
.Ltmp440:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp441:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	424(%rdx), %rdx
	movq	16(%rdx), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %r8
	movl	-28(%rbp), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	$0, (%rsp)
	callq	XSetClipRectangles
	movl	%eax, -32(%rbp)         # 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end138:
	.size	x_set_clip_rectangles, .Lfunc_end138-x_set_clip_rectangles
	.cfi_endproc

	.align	16, 0x90
	.type	x_set_glyph_string_gc,@function
x_set_glyph_string_gc:                  # @x_set_glyph_string_gc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp442:
	.cfi_def_cfa_offset 16
.Ltmp443:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp444:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	96(%rax), %rsi
	callq	prepare_face_for_display
	movq	-8(%rbp), %rax
	cmpl	$0, 92(%rax)
	jne	.LBB139_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	160(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 144(%rcx)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	$0, 168(%rax)
	setne	%dl
	movq	-8(%rbp), %rax
	andb	$1, %dl
	movb	136(%rax), %sil
	shlb	$3, %dl
	andb	$-9, %sil
	orb	%dl, %sil
	movb	%sil, 136(%rax)
	jmp	.LBB139_16
.LBB139_2:                              # %if.else
	movq	-8(%rbp), %rax
	cmpl	$1, 92(%rax)
	jne	.LBB139_4
# BB#3:                                 # %if.then.7
	movq	-8(%rbp), %rdi
	callq	x_set_mode_line_face_gc
	movq	-8(%rbp), %rdi
	movq	96(%rdi), %rdi
	cmpq	$0, 168(%rdi)
	setne	%al
	movq	-8(%rbp), %rdi
	andb	$1, %al
	movb	136(%rdi), %cl
	shlb	$3, %al
	andb	$-9, %cl
	orb	%al, %cl
	movb	%cl, 136(%rdi)
	jmp	.LBB139_15
.LBB139_4:                              # %if.else.17
	movq	-8(%rbp), %rax
	cmpl	$2, 92(%rax)
	jne	.LBB139_6
# BB#5:                                 # %if.then.20
	movq	-8(%rbp), %rdi
	callq	x_set_cursor_gc
	movq	-8(%rbp), %rdi
	movb	136(%rdi), %al
	andb	$-9, %al
	movb	%al, 136(%rdi)
	jmp	.LBB139_14
.LBB139_6:                              # %if.else.24
	movq	-8(%rbp), %rax
	cmpl	$3, 92(%rax)
	jne	.LBB139_8
# BB#7:                                 # %if.then.27
	movq	-8(%rbp), %rdi
	callq	x_set_mouse_face_gc
	movq	-8(%rbp), %rdi
	movq	96(%rdi), %rdi
	cmpq	$0, 168(%rdi)
	setne	%al
	movq	-8(%rbp), %rdi
	andb	$1, %al
	movb	136(%rdi), %cl
	shlb	$3, %al
	andb	$-9, %cl
	orb	%al, %cl
	movb	%cl, 136(%rdi)
	jmp	.LBB139_13
.LBB139_8:                              # %if.else.37
	movq	-8(%rbp), %rax
	cmpl	$4, 92(%rax)
	je	.LBB139_10
# BB#9:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	cmpl	$5, 92(%rax)
	jne	.LBB139_11
.LBB139_10:                             # %if.then.42
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	160(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 144(%rcx)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	$0, 168(%rax)
	setne	%dl
	movq	-8(%rbp), %rax
	andb	$1, %dl
	movb	136(%rax), %sil
	shlb	$3, %dl
	andb	$-9, %sil
	orb	%dl, %sil
	movb	%sil, 136(%rax)
	jmp	.LBB139_12
.LBB139_11:                             # %if.else.55
	callq	emacs_abort
.LBB139_12:                             # %if.end
	jmp	.LBB139_13
.LBB139_13:                             # %if.end.56
	jmp	.LBB139_14
.LBB139_14:                             # %if.end.57
	jmp	.LBB139_15
.LBB139_15:                             # %if.end.58
	jmp	.LBB139_16
.LBB139_16:                             # %if.end.59
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end139:
	.size	x_set_glyph_string_gc, .Lfunc_end139-x_set_glyph_string_gc
	.cfi_endproc

	.align	16, 0x90
	.type	x_set_glyph_string_clipping,@function
x_set_glyph_string_clipping:            # @x_set_glyph_string_clipping
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp445:
	.cfi_def_cfa_offset 16
.Ltmp446:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp447:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$2, %edx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	addq	$200, %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	get_glyph_string_clip_rects
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.LBB140_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	144(%rax), %rsi
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %ecx
	callq	x_set_clip_rectangles
.LBB140_2:                              # %if.end
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 216(%rcx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end140:
	.size	x_set_glyph_string_clipping, .Lfunc_end140-x_set_glyph_string_clipping
	.cfi_endproc

	.align	16, 0x90
	.type	x_draw_stretch_glyph_string,@function
x_draw_stretch_glyph_string:            # @x_draw_stretch_glyph_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp448:
	.cfi_def_cfa_offset 16
.Ltmp449:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp450:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$2, 92(%rdi)
	jne	.LBB141_27
# BB#1:                                 # %land.lhs.true
	testb	$1, globals+3447
	jne	.LBB141_27
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	16(%rax), %ecx
	movl	%ecx, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	236(%rax), %rax
	shrq	$34, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB141_6
# BB#3:                                 # %if.then.3
	movl	$1, %esi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	window_box_left_offset
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB141_5
# BB#4:                                 # %if.then.5
	movl	-24(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	-16(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -16(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB141_5:                              # %if.end
	jmp	.LBB141_9
.LBB141_6:                              # %if.else
	movl	$1, %esi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	window_box_right
	movl	%eax, -28(%rbp)
	movl	-20(%rbp), %eax
	addl	-16(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jle	.LBB141_8
# BB#7:                                 # %if.then.10
	movl	-20(%rbp), %eax
	subl	-28(%rbp), %eax
	movl	-16(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -16(%rbp)
.LBB141_8:                              # %if.end.13
	movl	-16(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB141_9:                              # %if.end.15
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	364(%rax), %ecx
	cmpl	-16(%rbp), %ecx
	jge	.LBB141_11
# BB#10:                                # %cond.true
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	364(%rax), %ecx
	movl	%ecx, -200(%rbp)        # 4-byte Spill
	jmp	.LBB141_12
.LBB141_11:                             # %cond.false
	movl	-16(%rbp), %eax
	movl	%eax, -200(%rbp)        # 4-byte Spill
.LBB141_12:                             # %cond.end
	movl	-200(%rbp), %eax        # 4-byte Reload
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	236(%rcx), %rcx
	shrq	$34, %rcx
	andq	$1, %rcx
	testq	$1, %rcx
	je	.LBB141_14
# BB#13:                                # %if.then.25
	movl	-12(%rbp), %eax
	movl	-20(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -20(%rbp)
.LBB141_14:                             # %if.end.27
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	20(%rax), %r8d
	callq	x_draw_glyph_string_bg_rect
	movl	-12(%rbp), %ecx
	cmpl	-16(%rbp), %ecx
	jge	.LBB141_26
# BB#15:                                # %if.then.29
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -32(%rbp)
	movl	-16(%rbp), %ecx
	subl	-12(%rbp), %ecx
	movl	%ecx, -36(%rbp)
	movq	-8(%rbp), %rax
	movl	20(%rax), %ecx
	movl	%ecx, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	236(%rax), %rax
	shrq	$34, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB141_17
# BB#16:                                # %if.then.41
	movl	-12(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB141_18
.LBB141_17:                             # %if.else.43
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -20(%rbp)
.LBB141_18:                             # %if.end.45
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	236(%rax), %rax
	shrq	$25, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB141_21
# BB#19:                                # %land.lhs.true.51
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	cursor_in_mouse_face_p
	testb	$1, %al
	jne	.LBB141_20
	jmp	.LBB141_21
.LBB141_20:                             # %if.then.54
	movq	-8(%rbp), %rdi
	callq	x_set_mouse_face_gc
	movq	-8(%rbp), %rdi
	movq	144(%rdi), %rdi
	movq	%rdi, -56(%rbp)
	jmp	.LBB141_22
.LBB141_21:                             # %if.else.56
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	160(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB141_22:                             # %if.end.58
	leaq	-48(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	get_glyph_string_clip_rect
	leaq	-48(%rbp), %rdx
	movl	$1, %ecx
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rdi
	movq	-56(%rbp), %rsi
	callq	x_set_clip_rectangles
	movq	-8(%rbp), %rdx
	movq	96(%rdx), %rdx
	cmpq	$0, 168(%rdx)
	je	.LBB141_24
# BB#23:                                # %if.then.62
	movl	$3, %edx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-56(%rbp), %rsi
	callq	XSetFillStyle
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rdi
	movq	-56(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-32(%rbp), %ecx
	movl	-36(%rbp), %r8d
	movl	-40(%rbp), %r9d
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	x_fill_rectangle
	xorl	%edx, %edx
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rdi
	movq	-56(%rbp), %rsi
	callq	XSetFillStyle
	movl	%eax, -208(%rbp)        # 4-byte Spill
	jmp	.LBB141_25
.LBB141_24:                             # %if.else.67
	movl	$12, %eax
	movl	%eax, %edx
	leaq	-184(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rdi
	movq	-56(%rbp), %rsi
	callq	XGetGCValues
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rdi
	movq	-56(%rbp), %rsi
	movq	-160(%rbp), %rdx
	movl	%eax, -212(%rbp)        # 4-byte Spill
	callq	XSetForeground
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-56(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-32(%rbp), %ecx
	movl	-36(%rbp), %r8d
	movl	-40(%rbp), %r9d
	movl	%eax, -216(%rbp)        # 4-byte Spill
	callq	x_fill_rectangle
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rdi
	movq	-56(%rbp), %rsi
	movq	-168(%rbp), %rdx
	callq	XSetForeground
	movl	%eax, -220(%rbp)        # 4-byte Spill
.LBB141_25:                             # %if.end.75
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-56(%rbp), %rsi
	callq	x_reset_clip_rectangles
.LBB141_26:                             # %if.end.77
	jmp	.LBB141_35
.LBB141_27:                             # %if.else.78
	movq	-8(%rbp), %rax
	movb	136(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB141_34
# BB#28:                                # %if.then.83
	movl	$1, %esi
	movq	-8(%rbp), %rax
	movl	16(%rax), %ecx
	movl	%ecx, -188(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -192(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	window_box_left_offset
	movl	%eax, -196(%rbp)
	movl	-192(%rbp), %eax
	cmpl	-196(%rbp), %eax
	jge	.LBB141_31
# BB#29:                                # %land.lhs.true.92
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	236(%rax), %rax
	shrq	$20, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB141_31
# BB#30:                                # %if.then.98
	movl	-196(%rbp), %eax
	subl	-192(%rbp), %eax
	movl	-188(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -188(%rbp)
	movl	-196(%rbp), %eax
	movl	%eax, -192(%rbp)
.LBB141_31:                             # %if.end.101
	cmpl	$0, -188(%rbp)
	jle	.LBB141_33
# BB#32:                                # %if.then.103
	movq	-8(%rbp), %rdi
	movl	-192(%rbp), %esi
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	movl	-188(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	20(%rax), %r8d
	callq	x_draw_glyph_string_bg_rect
.LBB141_33:                             # %if.end.106
	jmp	.LBB141_34
.LBB141_34:                             # %if.end.107
	jmp	.LBB141_35
.LBB141_35:                             # %if.end.108
	movq	-8(%rbp), %rax
	movb	136(%rax), %cl
	andb	$-3, %cl
	orb	$2, %cl
	movb	%cl, 136(%rax)
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end141:
	.size	x_draw_stretch_glyph_string, .Lfunc_end141-x_draw_stretch_glyph_string
	.cfi_endproc

	.align	16, 0x90
	.type	x_draw_glyph_string_background,@function
x_draw_glyph_string_background:         # @x_draw_glyph_string_background
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp451:
	.cfi_def_cfa_offset 16
.Ltmp452:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp453:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
.Ltmp454:
	.cfi_offset %rbx, -24
	movb	%sil, %al
	movq	%rdi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	-16(%rbp), %rdi
	movb	136(%rdi), %al
	shrb	$1, %al
	andb	$1, %al
	testb	$1, %al
	jne	.LBB142_15
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	cmpl	$0, 236(%rax)
	jle	.LBB142_3
# BB#2:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	movl	236(%rax), %ecx
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	jmp	.LBB142_4
.LBB142_3:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB142_4
.LBB142_4:                              # %cond.end
	movl	-28(%rbp), %eax         # 4-byte Reload
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rcx
	movb	136(%rcx), %dl
	shrb	$3, %dl
	andb	$1, %dl
	testb	$1, %dl
	je	.LBB142_6
# BB#5:                                 # %if.then.8
	movl	$3, %edx
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	144(%rax), %rsi
	callq	XSetFillStyle
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movq	144(%rsi), %rsi
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edx
	movq	-16(%rbp), %rcx
	movl	4(%rcx), %r8d
	addl	-24(%rbp), %r8d
	movq	-16(%rbp), %rcx
	movl	16(%rcx), %r9d
	movq	-16(%rbp), %rcx
	movl	20(%rcx), %r10d
	movl	-24(%rbp), %r11d
	shll	$1, %r11d
	subl	%r11d, %r10d
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	%eax, -32(%rbp)         # 4-byte Spill
	callq	x_fill_rectangle
	xorl	%edx, %edx
	movq	-16(%rbp), %rsi
	movq	48(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movq	144(%rsi), %rsi
	callq	XSetFillStyle
	movq	-16(%rbp), %rsi
	movb	136(%rsi), %bl
	andb	$-3, %bl
	orb	$2, %bl
	movb	%bl, 136(%rsi)
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB142_14
.LBB142_6:                              # %if.else
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movl	156(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	20(%rax), %edx
	movl	-24(%rbp), %esi
	shll	$1, %esi
	subl	%esi, %edx
	cmpl	%edx, %ecx
	jl	.LBB142_12
# BB#7:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	cmpl	$0, 152(%rax)
	jle	.LBB142_9
# BB#8:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movl	168(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	addl	172(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	imull	$3, 152(%rax), %edx
	cmpl	%edx, %ecx
	jg	.LBB142_12
.LBB142_9:                              # %lor.lhs.false.30
	movq	-16(%rbp), %rax
	movb	136(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB142_12
# BB#10:                                # %lor.lhs.false.35
	movq	-16(%rbp), %rax
	movb	136(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB142_12
# BB#11:                                # %lor.lhs.false.39
	testb	$1, -17(%rbp)
	je	.LBB142_13
.LBB142_12:                             # %if.then.40
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	addl	-24(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	16(%rax), %edx
	movq	-16(%rbp), %rax
	movl	20(%rax), %r8d
	movl	-24(%rbp), %r9d
	shll	$1, %r9d
	subl	%r9d, %r8d
	movl	%edx, -40(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-40(%rbp), %ecx         # 4-byte Reload
	callq	x_clear_glyph_string_rect
	movq	-16(%rbp), %rax
	movb	136(%rax), %r10b
	andb	$-3, %r10b
	orb	$2, %r10b
	movb	%r10b, 136(%rax)
.LBB142_13:                             # %if.end
	jmp	.LBB142_14
.LBB142_14:                             # %if.end.52
	jmp	.LBB142_15
.LBB142_15:                             # %if.end.53
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end142:
	.size	x_draw_glyph_string_background, .Lfunc_end142-x_draw_glyph_string_background
	.cfi_endproc

	.align	16, 0x90
	.type	x_draw_glyph_string_box,@function
x_draw_glyph_string_box:                # @x_draw_glyph_string_box
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp455:
	.cfi_def_cfa_offset 16
.Ltmp456:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp457:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$168, %rsp
.Ltmp458:
	.cfi_offset %rbx, -40
.Ltmp459:
	.cfi_offset %r14, -32
.Ltmp460:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	64(%rdi), %rdi
	movq	236(%rdi), %rdi
	shrq	$19, %rdi
	andq	$1, %rdi
	testq	$1, %rdi
	je	.LBB143_3
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB143_3
# BB#2:                                 # %cond.true
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	332(%rax), %ecx
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movl	240(%rax), %edx
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	addl	256(%rax), %edx
	addl	%edx, %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	jmp	.LBB143_4
.LBB143_3:                              # %cond.false
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-32(%rbp), %rax
	movl	72(%rax), %esi
	callq	window_box_right
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB143_4:                              # %cond.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)
	movq	-32(%rbp), %rcx
	cmpq	$0, 112(%rcx)
	jne	.LBB143_6
# BB#5:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, 160(%rax)
	je	.LBB143_7
.LBB143_6:                              # %cond.true.11
	movq	-32(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB143_8
.LBB143_7:                              # %cond.false.12
	movq	-32(%rbp), %rax
	movq	152(%rax), %rax
	movq	-32(%rbp), %rcx
	movslq	88(%rcx), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	addq	$-48, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB143_8:                              # %cond.end.15
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	96(%rax), %rax
	cmpl	$0, 236(%rax)
	jge	.LBB143_10
# BB#9:                                 # %cond.true.18
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	movq	96(%rcx), %rcx
	subl	236(%rcx), %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB143_11
.LBB143_10:                             # %cond.false.22
	movq	-32(%rbp), %rax
	movq	96(%rax), %rax
	movl	236(%rax), %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
.LBB143_11:                             # %cond.end.25
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rcx
	movq	96(%rcx), %rcx
	movl	240(%rcx), %eax
	andl	$3, %eax
	cmpl	$2, %eax
	sete	%dl
	andb	$1, %dl
	movb	%dl, -57(%rbp)
	movq	-32(%rbp), %rcx
	movl	(%rcx), %eax
	movl	%eax, -40(%rbp)
	movq	-32(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	236(%rcx), %rcx
	shrq	$19, %rcx
	andq	$1, %rcx
	testq	$1, %rcx
	je	.LBB143_14
# BB#12:                                # %land.lhs.true.37
	movq	-32(%rbp), %rax
	movb	136(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB143_14
# BB#13:                                # %cond.true.41
	movl	-56(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB143_18
.LBB143_14:                             # %cond.false.43
	movl	-56(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	(%rcx), %edx
	movq	-32(%rbp), %rcx
	addl	16(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB143_16
# BB#15:                                # %cond.true.47
	movl	-56(%rbp), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB143_17
.LBB143_16:                             # %cond.false.48
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movq	-32(%rbp), %rax
	addl	16(%rax), %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
.LBB143_17:                             # %cond.end.52
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB143_18:                             # %cond.end.55
	movl	-104(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movl	%eax, -44(%rbp)
	movq	-32(%rbp), %rdx
	movl	4(%rdx), %eax
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	movq	-32(%rbp), %rdx
	addl	20(%rdx), %eax
	subl	$1, %eax
	movl	%eax, -52(%rbp)
	movq	-32(%rbp), %rdx
	movq	152(%rdx), %rdx
	movl	24(%rdx), %eax
	shrl	$4, %eax
	andl	$1, %eax
	testl	$1, %eax
	movb	%cl, -109(%rbp)         # 1-byte Spill
	jne	.LBB143_24
# BB#19:                                # %lor.rhs
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	cmpl	$3, 92(%rdx)
	movb	%cl, -110(%rbp)         # 1-byte Spill
	jne	.LBB143_23
# BB#20:                                # %land.rhs
	movb	$1, %al
	movq	-32(%rbp), %rcx
	cmpq	$0, 240(%rcx)
	movb	%al, -111(%rbp)         # 1-byte Spill
	je	.LBB143_22
# BB#21:                                # %lor.rhs.66
	movq	-32(%rbp), %rax
	movq	240(%rax), %rax
	movl	92(%rax), %ecx
	movq	-32(%rbp), %rax
	cmpl	92(%rax), %ecx
	setne	%dl
	movb	%dl, -111(%rbp)         # 1-byte Spill
.LBB143_22:                             # %lor.end
	movb	-111(%rbp), %al         # 1-byte Reload
	movb	%al, -110(%rbp)         # 1-byte Spill
.LBB143_23:                             # %land.end
	movb	-110(%rbp), %al         # 1-byte Reload
	movb	%al, -109(%rbp)         # 1-byte Spill
.LBB143_24:                             # %lor.end.71
	movb	-109(%rbp), %al         # 1-byte Reload
	movb	$1, %cl
	andb	$1, %al
	movb	%al, -58(%rbp)
	movq	-72(%rbp), %rdx
	movl	24(%rdx), %esi
	shrl	$5, %esi
	andl	$1, %esi
	testl	$1, %esi
	movb	%cl, -112(%rbp)         # 1-byte Spill
	jne	.LBB143_30
# BB#25:                                # %lor.rhs.77
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	cmpl	$3, 92(%rdx)
	movb	%cl, -113(%rbp)         # 1-byte Spill
	jne	.LBB143_29
# BB#26:                                # %land.rhs.80
	movb	$1, %al
	movq	-32(%rbp), %rcx
	cmpq	$0, 232(%rcx)
	movb	%al, -114(%rbp)         # 1-byte Spill
	je	.LBB143_28
# BB#27:                                # %lor.rhs.82
	movq	-32(%rbp), %rax
	movq	232(%rax), %rax
	movl	92(%rax), %ecx
	movq	-32(%rbp), %rax
	cmpl	92(%rax), %ecx
	setne	%dl
	movb	%dl, -114(%rbp)         # 1-byte Spill
.LBB143_28:                             # %lor.end.87
	movb	-114(%rbp), %al         # 1-byte Reload
	movb	%al, -113(%rbp)         # 1-byte Spill
.LBB143_29:                             # %land.end.88
	movb	-113(%rbp), %al         # 1-byte Reload
	movb	%al, -112(%rbp)         # 1-byte Spill
.LBB143_30:                             # %lor.end.89
	movb	-112(%rbp), %al         # 1-byte Reload
	leaq	-80(%rbp), %rsi
	andb	$1, %al
	movb	%al, -59(%rbp)
	movq	-32(%rbp), %rdi
	callq	get_glyph_string_clip_rect
	movq	-32(%rbp), %rsi
	movq	96(%rsi), %rsi
	movl	240(%rsi), %ecx
	andl	$3, %ecx
	cmpl	$1, %ecx
	jne	.LBB143_32
# BB#31:                                # %if.then
	leaq	-80(%rbp), %rax
	movq	-32(%rbp), %rdi
	movl	-40(%rbp), %esi
	movl	-48(%rbp), %edx
	movl	-44(%rbp), %ecx
	movl	-52(%rbp), %r8d
	movl	-36(%rbp), %r9d
	movb	-58(%rbp), %r10b
	movb	-59(%rbp), %r11b
	andb	$1, %r10b
	andb	$1, %r11b
	movzbl	%r10b, %ebx
	movl	%ebx, (%rsp)
	movzbl	%r11b, %ebx
	movl	%ebx, 8(%rsp)
	movq	%rax, 16(%rsp)
	callq	x_draw_box_rect
	jmp	.LBB143_33
.LBB143_32:                             # %if.else
	movq	-32(%rbp), %rdi
	callq	x_setup_relief_colors
	movl	$1, %eax
	leaq	-80(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rcx
	movl	-40(%rbp), %esi
	movl	-48(%rbp), %edx
	movl	-44(%rbp), %r8d
	movl	-52(%rbp), %r9d
	movl	-36(%rbp), %r10d
	movb	-57(%rbp), %r11b
	movb	-58(%rbp), %bl
	movb	-59(%rbp), %r14b
	andb	$1, %r11b
	andb	$1, %bl
	andb	$1, %r14b
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movzbl	%r11b, %r10d
	movl	%r10d, (%rsp)
	movl	$1, 8(%rsp)
	movl	$1, 16(%rsp)
	movzbl	%bl, %r10d
	movl	%r10d, 24(%rsp)
	movzbl	%r14b, %r10d
	movl	%r10d, 32(%rsp)
	movq	-128(%rbp), %r15        # 8-byte Reload
	movq	%r15, 40(%rsp)
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	x_draw_relief_rect
.LBB143_33:                             # %if.end
	addq	$168, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end143:
	.size	x_draw_glyph_string_box, .Lfunc_end143-x_draw_glyph_string_box
	.cfi_endproc

	.align	16, 0x90
	.type	x_set_glyph_string_clipping_exactly,@function
x_set_glyph_string_clipping_exactly:    # @x_set_glyph_string_clipping_exactly
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp461:
	.cfi_def_cfa_offset 16
.Ltmp462:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp463:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	-24(%rbp), %rdx
	movl	$1, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	(%rsi), %eax
	movw	%ax, %r8w
	movw	%r8w, -24(%rbp)
	movq	-8(%rbp), %rsi
	movl	12(%rsi), %eax
	movw	%ax, %r8w
	movw	%r8w, -20(%rbp)
	movq	-8(%rbp), %rsi
	movl	4(%rsi), %eax
	movw	%ax, %r8w
	movw	%r8w, -22(%rbp)
	movq	-8(%rbp), %rsi
	movl	20(%rsi), %eax
	movw	%ax, %r8w
	movw	%r8w, -18(%rbp)
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, 200(%rsi)
	movq	-16(%rbp), %rsi
	movl	$1, 216(%rsi)
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movq	144(%rsi), %rsi
	callq	x_set_clip_rectangles
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end144:
	.size	x_set_glyph_string_clipping_exactly, .Lfunc_end144-x_set_glyph_string_clipping_exactly
	.cfi_endproc

	.align	16, 0x90
	.type	x_draw_image_glyph_string,@function
x_draw_image_glyph_string:              # @x_draw_image_glyph_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp464:
	.cfi_def_cfa_offset 16
.Ltmp465:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp466:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$296, %rsp              # imm = 0x128
.Ltmp467:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	96(%rdi), %rdi
	cmpl	$0, 236(%rdi)
	jge	.LBB145_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movq	96(%rcx), %rcx
	subl	236(%rcx), %eax
	movl	%eax, -200(%rbp)        # 4-byte Spill
	jmp	.LBB145_3
.LBB145_2:                              # %cond.false
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	movl	236(%rax), %ecx
	movl	%ecx, -200(%rbp)        # 4-byte Spill
.LBB145_3:                              # %cond.end
	movl	-200(%rbp), %eax        # 4-byte Reload
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rcx
	movq	96(%rcx), %rcx
	cmpl	$0, 236(%rcx)
	jle	.LBB145_5
# BB#4:                                 # %cond.true.8
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	movl	236(%rax), %ecx
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	jmp	.LBB145_6
.LBB145_5:                              # %cond.false.11
	xorl	%eax, %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jmp	.LBB145_6
.LBB145_6:                              # %cond.end.12
	movl	-204(%rbp), %eax        # 4-byte Reload
	movl	%eax, -24(%rbp)
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rcx
	movl	20(%rcx), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rcx
	movq	176(%rcx), %rcx
	shrq	$16, %rcx
	andq	$65535, %rcx            # imm = 0xFFFF
	movl	%ecx, %eax
	cmpl	$0, %eax
	jne	.LBB145_8
# BB#7:                                 # %if.then
	movl	-24(%rbp), %eax
	movl	-28(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -28(%rbp)
.LBB145_8:                              # %if.end
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	shrq	$16, %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	shrq	$48, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	cmpl	96(%rax), %ecx
	jl	.LBB145_10
# BB#9:                                 # %if.then.28
	movl	-24(%rbp), %eax
	movl	-28(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -28(%rbp)
.LBB145_10:                             # %if.end.30
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	$0, 168(%rax)
	setne	%cl
	movq	-16(%rbp), %rax
	andb	$1, %cl
	movb	136(%rax), %dl
	shlb	$3, %cl
	andb	$-9, %dl
	orb	%cl, %dl
	movb	%dl, 136(%rax)
	movl	-28(%rbp), %esi
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	shrq	$48, %rax
	movl	%eax, %edi
	cmpl	%edi, %esi
	jg	.LBB145_16
# BB#11:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	cmpl	$0, 140(%rax)
	jne	.LBB145_16
# BB#12:                                # %lor.lhs.false.42
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	cmpl	$0, 144(%rax)
	jne	.LBB145_16
# BB#13:                                # %lor.lhs.false.45
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	cmpq	$0, 24(%rax)
	jne	.LBB145_16
# BB#14:                                # %lor.lhs.false.48
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	cmpq	$0, 16(%rax)
	je	.LBB145_16
# BB#15:                                # %lor.lhs.false.52
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-16(%rbp), %rax
	cmpl	16(%rax), %ecx
	je	.LBB145_28
.LBB145_16:                             # %if.then.54
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	cmpq	$0, 24(%rax)
	je	.LBB145_21
# BB#17:                                # %if.then.58
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	56(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	56(%rax), %rsi
	movq	-16(%rbp), %rax
	movl	16(%rax), %edx
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	movl	-52(%rbp), %r8d
	callq	XCreatePixmap
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	144(%rax), %rsi
	callq	XSetClipMask
	movq	-16(%rbp), %rdx
	movb	136(%rdx), %r9b
	shrb	$3, %r9b
	andb	$1, %r9b
	testb	$1, %r9b
	movl	%eax, -208(%rbp)        # 4-byte Spill
	je	.LBB145_19
# BB#18:                                # %if.then.69
	movl	$3, %edx
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	144(%rax), %rsi
	callq	XSetFillStyle
	xorl	%edx, %edx
	movq	-16(%rbp), %rsi
	movq	48(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movq	144(%rsi), %rsi
	movq	-16(%rbp), %rcx
	movl	%edx, %r8d
	subl	(%rcx), %r8d
	movq	-16(%rbp), %rcx
	subl	4(%rcx), %edx
	movl	%edx, -212(%rbp)        # 4-byte Spill
	movl	%r8d, %edx
	movl	-212(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -216(%rbp)        # 4-byte Spill
	callq	XSetTSOrigin
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rsi
	movq	48(%rsi), %rdi
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %r9
	movq	144(%r9), %rdx
	movq	-16(%rbp), %r9
	movl	16(%r9), %r9d
	movq	-16(%rbp), %r10
	movl	20(%r10), %r8d
	movl	%ecx, -220(%rbp)        # 4-byte Spill
	movl	-220(%rbp), %r11d       # 4-byte Reload
	movl	%r8d, -224(%rbp)        # 4-byte Spill
	movl	%r11d, %r8d
	movl	-224(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, (%rsp)
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	XFillRectangle
	xorl	%edx, %edx
	movq	-16(%rbp), %rsi
	movq	48(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movq	144(%rsi), %rsi
	movl	%eax, -232(%rbp)        # 4-byte Spill
	callq	XSetFillStyle
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rsi
	movq	48(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movq	144(%rsi), %rsi
	movl	%ecx, %edx
	movl	%eax, -236(%rbp)        # 4-byte Spill
	callq	XSetTSOrigin
	movl	%eax, -240(%rbp)        # 4-byte Spill
	jmp	.LBB145_20
.LBB145_19:                             # %if.else
	movl	$12, %eax
	movl	%eax, %edx
	leaq	-184(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	48(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movq	144(%rsi), %rsi
	callq	XGetGCValues
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movq	144(%rcx), %rsi
	movq	-160(%rbp), %rdx
	movl	%eax, -244(%rbp)        # 4-byte Spill
	callq	XSetForeground
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rdi
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movq	144(%rcx), %rdx
	movq	-16(%rbp), %rcx
	movl	16(%rcx), %r9d
	movq	-16(%rbp), %rcx
	movl	20(%rcx), %r10d
	movl	%r8d, %ecx
	movl	%r10d, (%rsp)
	movl	%eax, -248(%rbp)        # 4-byte Spill
	callq	XFillRectangle
	movq	-16(%rbp), %rdx
	movq	48(%rdx), %rdi
	movq	-16(%rbp), %rdx
	movq	144(%rdx), %rsi
	movq	-168(%rbp), %rdx
	movl	%eax, -252(%rbp)        # 4-byte Spill
	callq	XSetForeground
	movl	%eax, -256(%rbp)        # 4-byte Spill
.LBB145_20:                             # %if.end.104
	jmp	.LBB145_27
.LBB145_21:                             # %if.else.105
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -188(%rbp)
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -192(%rbp)
	movq	-16(%rbp), %rax
	movl	16(%rax), %ecx
	movl	%ecx, -196(%rbp)
	movq	-16(%rbp), %rax
	movq	152(%rax), %rax
	movl	24(%rax), %ecx
	shrl	$4, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	je	.LBB145_24
# BB#22:                                # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB145_24
# BB#23:                                # %if.then.121
	movl	-20(%rbp), %eax
	addl	-188(%rbp), %eax
	movl	%eax, -188(%rbp)
	movl	-20(%rbp), %eax
	movl	-196(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -196(%rbp)
.LBB145_24:                             # %if.end.124
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	shrq	$16, %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB145_26
# BB#25:                                # %if.then.131
	movl	-24(%rbp), %eax
	addl	-192(%rbp), %eax
	movl	%eax, -192(%rbp)
.LBB145_26:                             # %if.end.133
	movq	-16(%rbp), %rdi
	movl	-188(%rbp), %esi
	movl	-192(%rbp), %edx
	movl	-196(%rbp), %ecx
	movl	-28(%rbp), %r8d
	callq	x_draw_glyph_string_bg_rect
.LBB145_27:                             # %if.end.134
	movq	-16(%rbp), %rax
	movb	136(%rax), %cl
	andb	$-3, %cl
	orb	$2, %cl
	movb	%cl, 136(%rax)
.LBB145_28:                             # %if.end.138
	cmpq	$0, -40(%rbp)
	je	.LBB145_30
# BB#29:                                # %if.then.140
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	x_draw_image_foreground_1
	movq	-16(%rbp), %rdi
	callq	x_set_glyph_string_clipping
	xorl	%eax, %eax
	movq	-16(%rbp), %rsi
	movq	48(%rsi), %rdi
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movq	56(%rcx), %rdx
	movq	-16(%rbp), %rcx
	movq	144(%rcx), %rcx
	movq	-16(%rbp), %r8
	movl	16(%r8), %r9d
	movq	-16(%rbp), %r8
	movl	20(%r8), %r10d
	movq	-16(%rbp), %r8
	movl	(%r8), %r11d
	movq	-16(%rbp), %r8
	movl	4(%r8), %ebx
	movl	%eax, %r8d
	movl	%r9d, -260(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movl	-260(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	movl	%ebx, 24(%rsp)
	callq	XCopyArea
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rdi
	movq	-40(%rbp), %rsi
	movl	%eax, -264(%rbp)        # 4-byte Spill
	callq	XFreePixmap
	movl	%eax, -268(%rbp)        # 4-byte Spill
	jmp	.LBB145_31
.LBB145_30:                             # %if.else.151
	movq	-16(%rbp), %rdi
	callq	x_draw_image_foreground
.LBB145_31:                             # %if.end.152
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	cmpl	$0, 136(%rax)
	jne	.LBB145_34
# BB#32:                                # %lor.lhs.false.155
	movq	-16(%rbp), %rax
	cmpl	$4, 92(%rax)
	je	.LBB145_34
# BB#33:                                # %lor.lhs.false.157
	movq	-16(%rbp), %rax
	cmpl	$5, 92(%rax)
	jne	.LBB145_35
.LBB145_34:                             # %if.then.160
	movq	-16(%rbp), %rdi
	callq	x_draw_image_relief
.LBB145_35:                             # %if.end.161
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end145:
	.size	x_draw_image_glyph_string, .Lfunc_end145-x_draw_image_glyph_string
	.cfi_endproc

	.align	16, 0x90
	.type	x_draw_glyph_string_foreground,@function
x_draw_glyph_string_foreground:         # @x_draw_glyph_string_foreground
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp468:
	.cfi_def_cfa_offset 16
.Ltmp469:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp470:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	96(%rdi), %rdi
	movl	240(%rdi), %eax
	andl	$3, %eax
	cmpl	$0, %eax
	je	.LBB146_6
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movl	24(%rax), %ecx
	shrl	$4, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	je	.LBB146_6
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	cmpl	$0, 236(%rax)
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	jge	.LBB146_4
# BB#3:                                 # %cond.true
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	movq	96(%rcx), %rcx
	subl	236(%rcx), %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB146_5
.LBB146_4:                              # %cond.false
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movl	236(%rax), %ecx
	movl	%ecx, -48(%rbp)         # 4-byte Spill
.LBB146_5:                              # %cond.end
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	-44(%rbp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -16(%rbp)
	jmp	.LBB146_7
.LBB146_6:                              # %if.else
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -16(%rbp)
.LBB146_7:                              # %if.end
	movq	-8(%rbp), %rax
	movb	136(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB146_13
# BB#8:                                 # %if.then.15
	movl	$0, -12(%rbp)
.LBB146_9:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	88(%rcx), %eax
	jge	.LBB146_12
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB146_9 Depth=1
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movslq	-12(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	144(%rax), %rsi
	movl	-16(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-24(%rbp), %rax
	movswl	16(%rax), %r8d
	subl	$1, %r8d
	movq	-8(%rbp), %rax
	movl	20(%rax), %r9d
	subl	$1, %r9d
	callq	x_draw_rectangle
	movq	-24(%rbp), %rax
	movswl	16(%rax), %ecx
	addl	-16(%rbp), %ecx
	movl	%ecx, -16(%rbp)
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB146_9 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB146_9
.LBB146_12:                             # %for.end
	jmp	.LBB146_23
.LBB146_13:                             # %if.else.23
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	188(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movq	-32(%rbp), %rax
	testb	$1, 184(%rax)
	je	.LBB146_15
# BB#14:                                # %if.then.26
	movl	$2, %eax
	movq	-32(%rbp), %rcx
	movl	172(%rcx), %edx
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movl	368(%rcx), %esi
	movq	-32(%rbp), %rcx
	subl	156(%rcx), %esi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movl	368(%rcx), %edi
	movq	-32(%rbp), %rcx
	cmpl	156(%rcx), %edi
	setg	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edi
	addl	%edi, %esi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -56(%rbp)         # 4-byte Spill
	cltd
	movl	-52(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movl	-56(%rbp), %edi         # 4-byte Reload
	addl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	384(%rcx), %rcx
	movq	232(%rcx), %rcx
	movl	172(%rcx), %eax
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	384(%rcx), %rcx
	subl	240(%rcx), %eax
	subl	%eax, %edi
	subl	-36(%rbp), %edi
	movl	%edi, -36(%rbp)
.LBB146_15:                             # %if.end.48
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	subl	-36(%rbp), %ecx
	movl	%ecx, -40(%rbp)
	movq	-8(%rbp), %rax
	movb	136(%rax), %dl
	shrb	$4, %dl
	andb	$7, %dl
	movzbl	%dl, %ecx
	cmpl	$0, %ecx
	jne	.LBB146_18
# BB#16:                                # %lor.lhs.false
	movq	-8(%rbp), %rax
	movb	136(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB146_19
# BB#17:                                # %land.lhs.true.60
	movq	-8(%rbp), %rax
	cmpl	$2, 92(%rax)
	je	.LBB146_19
.LBB146_18:                             # %if.then.63
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	movq	208(%rcx), %rcx
	movq	112(%rcx), %rcx
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movl	88(%rdx), %edx
	movl	-16(%rbp), %esi
	movl	-40(%rbp), %r8d
	movl	%esi, -60(%rbp)         # 4-byte Spill
	movl	%eax, %esi
	movl	-60(%rbp), %r9d         # 4-byte Reload
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movl	%r9d, %ecx
	movl	%eax, %r9d
	movq	-72(%rbp), %r10         # 8-byte Reload
	callq	*%r10
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB146_20
.LBB146_19:                             # %if.else.65
	xorl	%esi, %esi
	movl	$1, %r9d
	movq	-32(%rbp), %rax
	movq	208(%rax), %rax
	movq	112(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movl	88(%rcx), %edx
	movl	-16(%rbp), %ecx
	movl	-40(%rbp), %r8d
	callq	*%rax
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB146_20:                             # %if.end.70
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movl	240(%rax), %ecx
	shrl	$18, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	je	.LBB146_22
# BB#21:                                # %if.then.76
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	movq	208(%rcx), %rcx
	movq	112(%rcx), %rcx
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movl	88(%rdx), %edx
	movl	-16(%rbp), %esi
	addl	$1, %esi
	movl	-40(%rbp), %r8d
	movl	%esi, -84(%rbp)         # 4-byte Spill
	movl	%eax, %esi
	movl	-84(%rbp), %r9d         # 4-byte Reload
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movl	%r9d, %ecx
	movl	%eax, %r9d
	movq	-96(%rbp), %r10         # 8-byte Reload
	callq	*%r10
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB146_22:                             # %if.end.82
	jmp	.LBB146_23
.LBB146_23:                             # %if.end.83
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end146:
	.size	x_draw_glyph_string_foreground, .Lfunc_end146-x_draw_glyph_string_foreground
	.cfi_endproc

	.align	16, 0x90
	.type	x_draw_composite_glyph_string_foreground,@function
x_draw_composite_glyph_string_foreground: # @x_draw_composite_glyph_string_foreground
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp471:
	.cfi_def_cfa_offset 16
.Ltmp472:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp473:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	104(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 96(%rdi)
	je	.LBB147_7
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movl	240(%rax), %ecx
	andl	$3, %ecx
	cmpl	$0, %ecx
	je	.LBB147_7
# BB#2:                                 # %land.lhs.true.3
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movl	24(%rax), %ecx
	shrl	$4, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	je	.LBB147_7
# BB#3:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	cmpl	$0, 236(%rax)
	movl	%ecx, -88(%rbp)         # 4-byte Spill
	jge	.LBB147_5
# BB#4:                                 # %cond.true
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	movq	96(%rcx), %rcx
	subl	236(%rcx), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB147_6
.LBB147_5:                              # %cond.false
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movl	236(%rax), %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
.LBB147_6:                              # %cond.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	-88(%rbp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -20(%rbp)
	jmp	.LBB147_8
.LBB147_7:                              # %if.else
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -20(%rbp)
.LBB147_8:                              # %if.end
	movq	-8(%rbp), %rax
	movb	136(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB147_12
# BB#9:                                 # %if.then.18
	movq	-8(%rbp), %rax
	cmpl	$0, 128(%rax)
	jne	.LBB147_11
# BB#10:                                # %if.then.20
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	144(%rax), %rsi
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	12(%rax), %r8d
	subl	$1, %r8d
	movq	-8(%rbp), %rax
	movl	20(%rax), %r9d
	subl	$1, %r9d
	callq	x_draw_rectangle
.LBB147_11:                             # %if.end.23
	jmp	.LBB147_53
.LBB147_12:                             # %if.else.24
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movl	40(%rax), %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	jne	.LBB147_25
# BB#13:                                # %if.then.30
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movl	$0, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -16(%rbp)
.LBB147_14:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	88(%rcx), %eax
	jge	.LBB147_24
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB147_14 Depth=1
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	cmpl	$3, 20(%rax)
	jne	.LBB147_17
# BB#16:                                # %cond.true.36
                                        #   in Loop: Header=BB147_14 Depth=1
	movl	-16(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB147_18
.LBB147_17:                             # %cond.false.37
                                        #   in Loop: Header=BB147_14 Depth=1
	movl	-16(%rbp), %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB147_18:                             # %cond.end.38
                                        #   in Loop: Header=BB147_14 Depth=1
	movl	-96(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movq	112(%rdx), %rdx
	movq	24(%rdx), %rdx
	shlq	$1, %rdx
	movq	composition_hash_table, %rdi
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	callq	XHASH_TABLE
	movq	72(%rax), %rdi
	callq	XVECTOR
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	8(%rax,%rcx,8), %rdi
	callq	XVECTOR
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	8(%rax,%rcx,8), %rax
	sarq	$2, %rax
	cmpq	$9, %rax
	je	.LBB147_22
# BB#19:                                # %if.then.47
                                        #   in Loop: Header=BB147_14 Depth=1
	xorl	%r9d, %r9d
	movl	-20(%rbp), %eax
	movl	-16(%rbp), %ecx
	shll	$1, %ecx
	movslq	%ecx, %rdx
	movq	-8(%rbp), %rsi
	movq	112(%rsi), %rsi
	movq	40(%rsi), %rsi
	movswl	(%rsi,%rdx,2), %ecx
	addl	%ecx, %eax
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %eax
	movl	-16(%rbp), %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-8(%rbp), %rsi
	movq	112(%rsi), %rsi
	movq	40(%rsi), %rsi
	movswl	(%rsi,%rdx,2), %ecx
	subl	%ecx, %eax
	movl	%eax, -44(%rbp)
	movq	-32(%rbp), %rdx
	movq	208(%rdx), %rdx
	movq	112(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %esi
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	-40(%rbp), %ecx
	movl	-44(%rbp), %r8d
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movq	-120(%rbp), %r10        # 8-byte Reload
	callq	*%r10
	movq	-8(%rbp), %rdi
	movq	96(%rdi), %rdi
	movl	240(%rdi), %ecx
	shrl	$18, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	movl	%eax, -124(%rbp)        # 4-byte Spill
	je	.LBB147_21
# BB#20:                                # %if.then.68
                                        #   in Loop: Header=BB147_14 Depth=1
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rax
	movq	208(%rax), %rax
	movq	112(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %esi
	movl	-16(%rbp), %ecx
	addl	$1, %ecx
	movl	-40(%rbp), %edx
	addl	$1, %edx
	movl	-44(%rbp), %r8d
	movl	%edx, -128(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-128(%rbp), %ecx        # 4-byte Reload
	callq	*%rax
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB147_21:                             # %if.end.74
                                        #   in Loop: Header=BB147_14 Depth=1
	jmp	.LBB147_22
.LBB147_22:                             # %if.end.75
                                        #   in Loop: Header=BB147_14 Depth=1
	jmp	.LBB147_23
.LBB147_23:                             # %for.inc
                                        #   in Loop: Header=BB147_14 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB147_14
.LBB147_24:                             # %for.end
	jmp	.LBB147_52
.LBB147_25:                             # %if.else.77
	movq	-8(%rbp), %rax
	movq	120(%rax), %rdi
	callq	composition_gstring_from_id
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -68(%rbp)
	movl	$0, -72(%rbp)
	movq	-8(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -16(%rbp)
	movl	%ecx, -12(%rbp)
.LBB147_26:                             # %for.cond.83
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	132(%rcx), %eax
	jge	.LBB147_47
# BB#27:                                # %for.body.86
                                        #   in Loop: Header=BB147_26 Depth=1
	movq	-56(%rbp), %rdi
	movl	-12(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rsi
	callq	AREF
	movl	$9, %ecx
	movl	%ecx, %esi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB147_29
# BB#28:                                # %if.then.94
                                        #   in Loop: Header=BB147_26 Depth=1
	movl	$4, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	movslq	-72(%rbp), %rsi
	addq	%rax, %rsi
	movl	%esi, %ecx
	movl	%ecx, -72(%rbp)
	jmp	.LBB147_45
.LBB147_29:                             # %if.else.100
                                        #   in Loop: Header=BB147_26 Depth=1
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB147_33
# BB#30:                                # %if.then.103
                                        #   in Loop: Header=BB147_26 Depth=1
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rax
	movq	208(%rax), %rax
	movq	112(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %esi
	movl	-12(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-68(%rbp), %r8d
	callq	*%rax
	movq	-8(%rbp), %rdi
	movq	96(%rdi), %rdi
	movl	240(%rdi), %ecx
	shrl	$18, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	movl	%eax, -148(%rbp)        # 4-byte Spill
	je	.LBB147_32
# BB#31:                                # %if.then.113
                                        #   in Loop: Header=BB147_26 Depth=1
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rax
	movq	208(%rax), %rax
	movq	112(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %esi
	movl	-12(%rbp), %edx
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movl	-68(%rbp), %r8d
	callq	*%rax
	movl	%eax, -152(%rbp)        # 4-byte Spill
.LBB147_32:                             # %if.end.118
                                        #   in Loop: Header=BB147_26 Depth=1
	movl	-72(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB147_33:                             # %if.end.120
                                        #   in Loop: Header=BB147_26 Depth=1
	movl	$9, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB147_34
	jmp	.LBB147_35
.LBB147_34:                             # %cond.true.124
                                        #   in Loop: Header=BB147_26 Depth=1
	movl	$9, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rdi
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB147_36
.LBB147_35:                             # %cond.false.128
                                        #   in Loop: Header=BB147_26 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB147_36
.LBB147_36:                             # %cond.end.129
                                        #   in Loop: Header=BB147_26 Depth=1
	movq	-160(%rbp), %rax        # 8-byte Reload
	movl	$9, %ecx
	movl	%ecx, %esi
	movl	%eax, %ecx
	movl	%ecx, -76(%rbp)
	movq	-64(%rbp), %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB147_37
	jmp	.LBB147_38
.LBB147_37:                             # %cond.true.135
                                        #   in Loop: Header=BB147_26 Depth=1
	movl	$9, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rdi
	callq	AREF
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB147_39
.LBB147_38:                             # %cond.false.139
                                        #   in Loop: Header=BB147_26 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB147_39
.LBB147_39:                             # %cond.end.140
                                        #   in Loop: Header=BB147_26 Depth=1
	movq	-168(%rbp), %rax        # 8-byte Reload
	movl	$9, %ecx
	movl	%ecx, %esi
	movl	%eax, %ecx
	movl	%ecx, -80(%rbp)
	movq	-64(%rbp), %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB147_40
	jmp	.LBB147_41
.LBB147_40:                             # %cond.true.146
                                        #   in Loop: Header=BB147_26 Depth=1
	movl	$9, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rdi
	callq	AREF
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB147_42
.LBB147_41:                             # %cond.false.150
                                        #   in Loop: Header=BB147_26 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB147_42
.LBB147_42:                             # %cond.end.151
                                        #   in Loop: Header=BB147_26 Depth=1
	movq	-176(%rbp), %rax        # 8-byte Reload
	xorl	%r9d, %r9d
	movl	%eax, %ecx
	movl	%ecx, -84(%rbp)
	movq	-32(%rbp), %rax
	movq	208(%rax), %rax
	movq	112(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-12(%rbp), %ecx
	addl	$1, %ecx
	movl	-20(%rbp), %edx
	addl	-76(%rbp), %edx
	movl	-68(%rbp), %r8d
	addl	-80(%rbp), %r8d
	movl	%edx, -180(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-180(%rbp), %ecx        # 4-byte Reload
	callq	*%rax
	movq	-8(%rbp), %rdi
	movq	96(%rdi), %rdi
	movl	240(%rdi), %ecx
	shrl	$18, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	movl	%eax, -184(%rbp)        # 4-byte Spill
	je	.LBB147_44
# BB#43:                                # %if.then.166
                                        #   in Loop: Header=BB147_26 Depth=1
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rax
	movq	208(%rax), %rax
	movq	112(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-12(%rbp), %ecx
	addl	$1, %ecx
	movl	-20(%rbp), %edx
	addl	-76(%rbp), %edx
	addl	$1, %edx
	movl	-68(%rbp), %r8d
	addl	-80(%rbp), %r8d
	movl	%edx, -188(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-188(%rbp), %ecx        # 4-byte Reload
	callq	*%rax
	movl	%eax, -192(%rbp)        # 4-byte Spill
.LBB147_44:                             # %if.end.174
                                        #   in Loop: Header=BB147_26 Depth=1
	movl	-84(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	movl	$0, -72(%rbp)
.LBB147_45:                             # %if.end.177
                                        #   in Loop: Header=BB147_26 Depth=1
	jmp	.LBB147_46
.LBB147_46:                             # %for.inc.178
                                        #   in Loop: Header=BB147_26 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB147_26
.LBB147_47:                             # %for.end.180
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB147_51
# BB#48:                                # %if.then.183
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rax
	movq	208(%rax), %rax
	movq	112(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %esi
	movl	-12(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-68(%rbp), %r8d
	callq	*%rax
	movq	-8(%rbp), %rdi
	movq	96(%rdi), %rdi
	movl	240(%rdi), %ecx
	shrl	$18, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	movl	%eax, -196(%rbp)        # 4-byte Spill
	je	.LBB147_50
# BB#49:                                # %if.then.193
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rax
	movq	208(%rax), %rax
	movq	112(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %esi
	movl	-12(%rbp), %edx
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movl	-68(%rbp), %r8d
	callq	*%rax
	movl	%eax, -200(%rbp)        # 4-byte Spill
.LBB147_50:                             # %if.end.198
	jmp	.LBB147_51
.LBB147_51:                             # %if.end.199
	jmp	.LBB147_52
.LBB147_52:                             # %if.end.200
	jmp	.LBB147_53
.LBB147_53:                             # %if.end.201
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end147:
	.size	x_draw_composite_glyph_string_foreground, .Lfunc_end147-x_draw_composite_glyph_string_foreground
	.cfi_endproc

	.align	16, 0x90
	.type	x_draw_glyphless_glyph_string_foreground,@function
x_draw_glyphless_glyph_string_foreground: # @x_draw_glyphless_glyph_string_foreground
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp474:
	.cfi_def_cfa_offset 16
.Ltmp475:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp476:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$152, %rsp
.Ltmp477:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	152(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-16(%rbp), %rdi
	cmpq	$0, 96(%rdi)
	je	.LBB148_7
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	movl	240(%rax), %ecx
	andl	$3, %ecx
	cmpl	$0, %ecx
	je	.LBB148_7
# BB#2:                                 # %land.lhs.true.2
	movq	-16(%rbp), %rax
	movq	152(%rax), %rax
	movl	24(%rax), %ecx
	shrl	$4, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	je	.LBB148_7
# BB#3:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	cmpl	$0, 236(%rax)
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	jge	.LBB148_5
# BB#4:                                 # %cond.true
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movq	96(%rcx), %rcx
	subl	236(%rcx), %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB148_6
.LBB148_5:                              # %cond.false
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	movl	236(%rax), %ecx
	movl	%ecx, -112(%rbp)        # 4-byte Spill
.LBB148_6:                              # %cond.end
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	-108(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	jmp	.LBB148_8
.LBB148_7:                              # %if.else
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -52(%rbp)
.LBB148_8:                              # %if.end
	leaq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movl	$0, -56(%rbp)
.LBB148_9:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB148_26 Depth 2
	movl	-56(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	88(%rcx), %eax
	jge	.LBB148_34
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB148_9 Depth=1
	movq	$0, -80(%rbp)
	movq	-24(%rbp), %rax
	movl	40(%rax), %ecx
	shrl	$3, %ecx
	andl	$15, %ecx
	movl	%ecx, -84(%rbp)
	movq	-24(%rbp), %rax
	movl	40(%rax), %ecx
	andl	$3, %ecx
	cmpl	$2, %ecx
	jne	.LBB148_21
# BB#11:                                # %if.then.24
                                        #   in Loop: Header=BB148_9 Depth=1
	cmpl	$0, -84(%rbp)
	jle	.LBB148_20
# BB#12:                                # %land.lhs.true.26
                                        #   in Loop: Header=BB148_9 Depth=1
	movq	globals+952, %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB148_13
	jmp	.LBB148_20
.LBB148_13:                             # %land.lhs.true.27
                                        #   in Loop: Header=BB148_9 Depth=1
	movq	globals+952, %rdi
	callq	XCHAR_TABLE
	movq	%rax, %rdi
	callq	CHAR_TABLE_EXTRA_SLOTS
	cmpl	$1, %eax
	jl	.LBB148_20
# BB#14:                                # %if.then.31
                                        #   in Loop: Header=BB148_9 Depth=1
	movq	-24(%rbp), %rax
	movl	40(%rax), %ecx
	shrl	$2, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	jne	.LBB148_16
# BB#15:                                # %cond.true.38
                                        #   in Loop: Header=BB148_9 Depth=1
	movq	globals+952, %rdi
	movq	-24(%rbp), %rax
	movl	40(%rax), %ecx
	shrl	$7, %ecx
	movl	%ecx, %esi
	callq	CHAR_TABLE_REF
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB148_17
.LBB148_16:                             # %cond.false.44
                                        #   in Loop: Header=BB148_9 Depth=1
	movq	globals+952, %rdi
	callq	XCHAR_TABLE
	movq	552(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB148_17:                             # %cond.end.46
                                        #   in Loop: Header=BB148_9 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB148_18
	jmp	.LBB148_19
.LBB148_18:                             # %if.then.49
                                        #   in Loop: Header=BB148_9 Depth=1
	movq	-96(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -80(%rbp)
.LBB148_19:                             # %if.end.51
                                        #   in Loop: Header=BB148_9 Depth=1
	jmp	.LBB148_20
.LBB148_20:                             # %if.end.52
                                        #   in Loop: Header=BB148_9 Depth=1
	jmp	.LBB148_24
.LBB148_21:                             # %if.else.53
                                        #   in Loop: Header=BB148_9 Depth=1
	movq	-24(%rbp), %rax
	movl	40(%rax), %ecx
	andl	$3, %ecx
	cmpl	$3, %ecx
	jne	.LBB148_23
# BB#22:                                # %if.then.59
                                        #   in Loop: Header=BB148_9 Depth=1
	movabsq	$.L.str.394, %rsi
	movl	$6, %eax
	movl	$4, %ecx
	leaq	-67(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movl	40(%rdx), %r8d
	shrl	$7, %r8d
	cmpl	$65536, %r8d            # imm = 0x10000
	cmovll	%ecx, %eax
	movq	-24(%rbp), %rdx
	movl	40(%rdx), %ecx
	shrl	$7, %ecx
	addl	$0, %ecx
	movl	%eax, %edx
	movb	$0, %al
	callq	sprintf
	leaq	-67(%rbp), %rsi
	movq	%rsi, -80(%rbp)
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB148_23:                             # %if.end.74
                                        #   in Loop: Header=BB148_9 Depth=1
	jmp	.LBB148_24
.LBB148_24:                             # %if.end.75
                                        #   in Loop: Header=BB148_9 Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB148_30
# BB#25:                                # %if.then.77
                                        #   in Loop: Header=BB148_9 Depth=1
	movl	$2, %eax
	movl	-84(%rbp), %ecx
	addl	$1, %ecx
	movl	%eax, -128(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-128(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -100(%rbp)
	movl	$0, -60(%rbp)
.LBB148_26:                             # %for.cond.79
                                        #   Parent Loop BB148_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-60(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB148_29
# BB#27:                                # %for.body.81
                                        #   in Loop: Header=BB148_26 Depth=2
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	208(%rax), %rax
	movq	96(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	104(%rcx), %rdi
	movslq	-60(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movsbl	(%rdx,%rcx), %esi
	callq	*%rax
	movl	%eax, -104(%rbp)
	movl	-104(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %r8b
	movslq	-60(%rbp), %rcx
	movb	%r8b, -48(%rbp,%rcx,2)
	movl	-104(%rbp), %eax
	andl	$255, %eax
	movb	%al, %r8b
	movslq	-60(%rbp), %rcx
	movb	%r8b, -47(%rbp,%rcx,2)
# BB#28:                                # %for.inc
                                        #   in Loop: Header=BB148_26 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB148_26
.LBB148_29:                             # %for.end
                                        #   in Loop: Header=BB148_9 Depth=1
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movq	104(%rcx), %rcx
	movq	208(%rcx), %rcx
	movq	112(%rcx), %rcx
	movq	-16(%rbp), %rdi
	movl	-100(%rbp), %edx
	movl	-52(%rbp), %esi
	movq	-24(%rbp), %r8
	movswl	32(%r8), %r9d
	addl	%r9d, %esi
	movq	-16(%rbp), %r8
	movl	8(%r8), %r9d
	movq	-24(%rbp), %r8
	movswl	34(%r8), %r10d
	addl	%r10d, %r9d
	movl	%esi, -132(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movl	-132(%rbp), %r10d       # 4-byte Reload
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r9d, %r8d
	movl	%eax, %r9d
	movq	-144(%rbp), %r11        # 8-byte Reload
	callq	*%r11
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	104(%rdi), %rdi
	movq	208(%rdi), %rdi
	movq	112(%rdi), %rdi
	movq	-16(%rbp), %r11
	movl	-100(%rbp), %esi
	movl	-84(%rbp), %edx
	movl	-52(%rbp), %ecx
	movq	-24(%rbp), %rbx
	movswl	36(%rbx), %r8d
	addl	%r8d, %ecx
	movq	-16(%rbp), %rbx
	movl	8(%rbx), %r8d
	movq	-24(%rbp), %rbx
	movswl	38(%rbx), %r10d
	addl	%r10d, %r8d
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	-152(%rbp), %r11        # 8-byte Reload
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	*%r11
	movl	%eax, -160(%rbp)        # 4-byte Spill
.LBB148_30:                             # %if.end.114
                                        #   in Loop: Header=BB148_9 Depth=1
	movq	-24(%rbp), %rax
	movl	40(%rax), %ecx
	andl	$3, %ecx
	cmpl	$0, %ecx
	je	.LBB148_32
# BB#31:                                # %if.then.121
                                        #   in Loop: Header=BB148_9 Depth=1
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	144(%rax), %rsi
	movl	-52(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-24(%rbp), %rax
	movswl	18(%rax), %r8d
	subl	%r8d, %ecx
	movq	-24(%rbp), %rax
	movswl	16(%rax), %r8d
	subl	$1, %r8d
	movq	-24(%rbp), %rax
	movswl	18(%rax), %r9d
	movq	-24(%rbp), %rax
	movswl	20(%rax), %r10d
	addl	%r10d, %r9d
	subl	$1, %r9d
	callq	x_draw_rectangle
.LBB148_32:                             # %if.end.132
                                        #   in Loop: Header=BB148_9 Depth=1
	movq	-24(%rbp), %rax
	movswl	16(%rax), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
# BB#33:                                # %for.inc.136
                                        #   in Loop: Header=BB148_9 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	movq	-24(%rbp), %rcx
	addq	$48, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB148_9
.LBB148_34:                             # %for.end.138
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end148:
	.size	x_draw_glyphless_glyph_string_foreground, .Lfunc_end148-x_draw_glyphless_glyph_string_foreground
	.cfi_endproc

	.align	16, 0x90
	.type	x_draw_underwave,@function
x_draw_underwave:                       # @x_draw_underwave
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp478:
	.cfi_def_cfa_offset 16
.Ltmp479:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp480:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	leaq	-80(%rbp), %rsi
	movq	%rdi, -8(%rbp)
	movl	$3, -12(%rbp)
	movl	$2, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %eax
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdi
	movl	8(%rdi), %eax
	subl	-12(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movl	12(%rdi), %eax
	movl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-28(%rbp), %eax
	movw	%ax, %cx
	movw	%cx, -72(%rbp)
	movl	-32(%rbp), %eax
	movw	%ax, %cx
	movw	%cx, -70(%rbp)
	movl	-36(%rbp), %eax
	movw	%ax, %cx
	movw	%cx, -68(%rbp)
	movl	-12(%rbp), %eax
	movw	%ax, %cx
	movw	%cx, -66(%rbp)
	movq	-8(%rbp), %rdi
	callq	get_glyph_string_clip_rect
	leaq	-72(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	callq	x_intersect_rectangles
	testb	$1, %al
	jne	.LBB149_2
# BB#1:                                 # %if.then
	jmp	.LBB149_11
.LBB149_2:                              # %if.end
	xorl	%eax, %eax
	leaq	-88(%rbp), %r8
	movl	$1, %r9d
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	144(%rcx), %rsi
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	$0, (%rsp)
	callq	XSetClipRectangles
	movl	-28(%rbp), %ecx
	movl	-28(%rbp), %edx
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	idivl	-20(%rbp)
	subl	%edx, %ecx
	movl	%ecx, -40(%rbp)
	movl	-40(%rbp), %ecx
	addl	-20(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movl	-40(%rbp), %ecx
	movl	%ecx, %eax
	cltd
	idivl	-20(%rbp)
	andl	$1, %eax
	cmpl	$0, %eax
	setne	%r10b
	andb	$1, %r10b
	movb	%r10b, -57(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	%eax, -44(%rbp)
	testb	$1, -57(%rbp)
	je	.LBB149_4
# BB#3:                                 # %if.then.13
	movl	-24(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB149_5
.LBB149_4:                              # %if.else
	movl	-24(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB149_5:                              # %if.end.16
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	subl	-20(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB149_7
# BB#6:                                 # %if.then.19
	callq	emacs_abort
.LBB149_7:                              # %if.end.20
	jmp	.LBB149_8
.LBB149_8:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jg	.LBB149_10
# BB#9:                                 # %while.body
                                        #   in Loop: Header=BB149_8 Depth=1
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	56(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	144(%rax), %rdx
	movl	-40(%rbp), %ecx
	movl	-44(%rbp), %r8d
	movl	-48(%rbp), %r9d
	movl	-52(%rbp), %r10d
	movl	%r10d, (%rsp)
	callq	XDrawLine
	movl	-48(%rbp), %ecx
	movl	%ecx, -40(%rbp)
	movl	-52(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movl	-20(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movl	-32(%rbp), %ecx
	movb	-57(%rbp), %r11b
	andb	$1, %r11b
	movzbl	%r11b, %r8d
	imull	-24(%rbp), %r8d
	addl	%r8d, %ecx
	movl	%ecx, -52(%rbp)
	movb	-57(%rbp), %r11b
	xorb	$-1, %r11b
	andb	$1, %r11b
	movb	%r11b, -57(%rbp)
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB149_8
.LBB149_10:                             # %while.end
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	144(%rcx), %rsi
	movq	-8(%rbp), %rcx
	addq	$200, %rcx
	movq	-8(%rbp), %rdx
	movl	216(%rdx), %r9d
	movl	%eax, %edx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movl	%eax, %ecx
	movq	-104(%rbp), %r8         # 8-byte Reload
	movl	$0, (%rsp)
	callq	XSetClipRectangles
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB149_11:                             # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end149:
	.size	x_draw_underwave, .Lfunc_end149-x_draw_underwave
	.cfi_endproc

	.align	16, 0x90
	.type	x_set_mode_line_face_gc,@function
x_set_mode_line_face_gc:                # @x_set_mode_line_face_gc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp481:
	.cfi_def_cfa_offset 16
.Ltmp482:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp483:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	96(%rdi), %rdi
	movq	160(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, 144(%rax)
	popq	%rbp
	retq
.Lfunc_end150:
	.size	x_set_mode_line_face_gc, .Lfunc_end150-x_set_mode_line_face_gc
	.cfi_endproc

	.align	16, 0x90
	.type	x_set_cursor_gc,@function
x_set_cursor_gc:                        # @x_set_cursor_gc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp484:
	.cfi_def_cfa_offset 16
.Ltmp485:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp486:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	104(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	384(%rax), %rax
	cmpq	232(%rax), %rdi
	jne	.LBB151_5
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	184(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	cmpq	472(%rcx), %rax
	jne	.LBB151_5
# BB#2:                                 # %land.lhs.true.4
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	176(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	cmpq	480(%rcx), %rax
	jne	.LBB151_5
# BB#3:                                 # %land.lhs.true.8
	movq	-8(%rbp), %rax
	cmpq	$0, 112(%rax)
	jne	.LBB151_5
# BB#4:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	384(%rax), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 144(%rcx)
	jmp	.LBB151_18
.LBB151_5:                              # %if.else
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	384(%rax), %rax
	movq	248(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	184(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB151_7
# BB#6:                                 # %if.then.23
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	176(%rax), %rax
	movq	%rax, -120(%rbp)
.LBB151_7:                              # %if.end
	movq	-120(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB151_9
# BB#8:                                 # %if.then.30
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	384(%rax), %rax
	movq	272(%rax), %rax
	movq	%rax, -120(%rbp)
.LBB151_9:                              # %if.end.35
	movq	-120(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB151_11
# BB#10:                                # %if.then.39
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	176(%rax), %rax
	movq	%rax, -120(%rbp)
.LBB151_11:                             # %if.end.43
	movq	-112(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	96(%rcx), %rcx
	cmpq	184(%rcx), %rax
	jne	.LBB151_14
# BB#12:                                # %land.lhs.true.48
	movq	-120(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	96(%rcx), %rcx
	cmpq	176(%rcx), %rax
	jne	.LBB151_14
# BB#13:                                # %if.then.53
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	176(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	184(%rax), %rax
	movq	%rax, -120(%rbp)
.LBB151_14:                             # %if.end.60
	movl	$0, -36(%rbp)
	movq	$65548, -144(%rbp)      # imm = 0x1000C
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	cmpq	$0, 176(%rax)
	je	.LBB151_16
# BB#15:                                # %if.then.65
	leaq	-136(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	176(%rax), %rsi
	movq	-144(%rbp), %rdx
	callq	XChangeGC
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB151_17
.LBB151_16:                             # %if.else.71
	leaq	-136(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	56(%rax), %rsi
	movq	-144(%rbp), %rdx
	callq	XCreateGC
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	%rax, 176(%rcx)
.LBB151_17:                             # %if.end.79
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	176(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 144(%rcx)
.LBB151_18:                             # %if.end.86
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end151:
	.size	x_set_cursor_gc, .Lfunc_end151-x_set_cursor_gc
	.cfi_endproc

	.align	16, 0x90
	.type	x_set_mouse_face_gc,@function
x_set_mouse_face_gc:                    # @x_set_mouse_face_gc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp487:
	.cfi_def_cfa_offset 16
.Ltmp488:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp489:
	.cfi_def_cfa_register %rbp
	subq	$240, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	208(%rdi), %rdi
	shrq	$23, %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$2, %eax
	jne	.LBB152_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	addq	$184, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB152_3
.LBB152_2:                              # %cond.false
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	384(%rax), %rax
	movq	(%rax), %rax
	addq	$104, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB152_3:                              # %cond.end
	movq	-168(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movl	32(%rax), %edx
	movl	%edx, -12(%rbp)
	testb	$1, %cl
	jne	.LBB152_4
	jmp	.LBB152_5
.LBB152_4:                              # %cond.true.6
	movl	-12(%rbp), %eax
	addl	$0, %eax
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	160(%rcx), %rcx
	movl	32(%rcx), %edx
	addl	$0, %edx
	cmpl	%edx, %eax
	jb	.LBB152_6
	jmp	.LBB152_7
.LBB152_5:                              # %cond.false.10
	movslq	-12(%rbp), %rax
	addq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	160(%rcx), %rcx
	movslq	32(%rcx), %rcx
	addq	$0, %rcx
	cmpq	%rcx, %rax
	jae	.LBB152_7
.LBB152_6:                              # %cond.true.19
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	160(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB152_8
.LBB152_7:                              # %cond.false.22
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB152_8
.LBB152_8:                              # %cond.end.23
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB152_15
# BB#9:                                 # %if.then
	movb	$1, %al
	testb	$1, %al
	jne	.LBB152_10
	jmp	.LBB152_11
.LBB152_10:                             # %cond.true.27
	movl	$9, %eax
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	160(%rcx), %rcx
	movl	32(%rcx), %edx
	addl	$0, %edx
	cmpl	%edx, %eax
	jb	.LBB152_12
	jmp	.LBB152_13
.LBB152_11:                             # %cond.false.34
	movl	$9, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	160(%rdx), %rdx
	movslq	32(%rdx), %rdx
	addq	$0, %rdx
	cmpq	%rdx, %rcx
	jae	.LBB152_13
.LBB152_12:                             # %cond.true.42
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	160(%rax), %rax
	movq	16(%rax), %rax
	movq	72(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB152_14
.LBB152_13:                             # %cond.false.47
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB152_14
.LBB152_14:                             # %cond.end.48
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -24(%rbp)
.LBB152_15:                             # %if.end
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movl	24(%rax), %ecx
	andl	$7, %ecx
	cmpl	$0, %ecx
	jne	.LBB152_17
# BB#16:                                # %if.then.54
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rcx
	movq	152(%rcx), %rcx
	movl	40(%rcx), %edx
	movl	%edx, -188(%rbp)        # 4-byte Spill
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	$-1, %rcx
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	-208(%rbp), %rsi        # 8-byte Reload
	movl	-188(%rbp), %edx        # 4-byte Reload
	movq	%rax, %r8
	callq	face_for_char
	movl	%eax, -12(%rbp)
	jmp	.LBB152_18
.LBB152_17:                             # %if.else
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-24(%rbp), %rsi
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edx, %edx
	movq	$-1, %rcx
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	-216(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %r8
	callq	face_for_char
	movl	%eax, -12(%rbp)
.LBB152_18:                             # %if.end.61
	movb	$1, %al
	testb	$1, %al
	jne	.LBB152_19
	jmp	.LBB152_20
.LBB152_19:                             # %cond.true.62
	movl	-12(%rbp), %eax
	addl	$0, %eax
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	160(%rcx), %rcx
	movl	32(%rcx), %edx
	addl	$0, %edx
	cmpl	%edx, %eax
	jb	.LBB152_21
	jmp	.LBB152_22
.LBB152_20:                             # %cond.false.70
	movslq	-12(%rbp), %rax
	addq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	160(%rcx), %rcx
	movslq	32(%rcx), %rcx
	addq	$0, %rcx
	cmpq	%rcx, %rax
	jae	.LBB152_22
.LBB152_21:                             # %cond.true.80
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	160(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB152_23
.LBB152_22:                             # %cond.false.86
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	jmp	.LBB152_23
.LBB152_23:                             # %cond.end.87
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx
	movq	%rax, 96(%rcx)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	96(%rax), %rsi
	callq	prepare_face_for_display
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	96(%rcx), %rcx
	cmpq	224(%rcx), %rax
	jne	.LBB152_25
# BB#24:                                # %if.then.96
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	160(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 144(%rcx)
	jmp	.LBB152_29
.LBB152_25:                             # %if.else.99
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	184(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	176(%rax), %rax
	movq	%rax, -136(%rbp)
	movl	$0, -52(%rbp)
	movq	$65548, -160(%rbp)      # imm = 0x1000C
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	cmpq	$0, 176(%rax)
	je	.LBB152_27
# BB#26:                                # %if.then.108
	leaq	-152(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	176(%rax), %rsi
	movq	-160(%rbp), %rdx
	callq	XChangeGC
	movl	%eax, -236(%rbp)        # 4-byte Spill
	jmp	.LBB152_28
.LBB152_27:                             # %if.else.115
	leaq	-152(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	56(%rax), %rsi
	movq	-160(%rbp), %rdx
	callq	XCreateGC
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	%rax, 176(%rcx)
.LBB152_28:                             # %if.end.123
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	176(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 144(%rcx)
.LBB152_29:                             # %if.end.130
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end152:
	.size	x_set_mouse_face_gc, .Lfunc_end152-x_set_mouse_face_gc
	.cfi_endproc

	.align	16, 0x90
	.type	x_draw_glyph_string_bg_rect,@function
x_draw_glyph_string_bg_rect:            # @x_draw_glyph_string_bg_rect
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp490:
	.cfi_def_cfa_offset 16
.Ltmp491:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp492:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	-8(%rbp), %rdi
	movb	136(%rdi), %al
	shrb	$3, %al
	andb	$1, %al
	testb	$1, %al
	je	.LBB153_2
# BB#1:                                 # %if.then
	movl	$3, %edx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	144(%rax), %rsi
	callq	XSetFillStyle
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rdi
	movq	-8(%rbp), %rsi
	movq	144(%rsi), %rsi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r9d
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	x_fill_rectangle
	xorl	%edx, %edx
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rdi
	movq	-8(%rbp), %rsi
	movq	144(%rsi), %rsi
	callq	XSetFillStyle
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jmp	.LBB153_3
.LBB153_2:                              # %if.else
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	callq	x_clear_glyph_string_rect
.LBB153_3:                              # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end153:
	.size	x_draw_glyph_string_bg_rect, .Lfunc_end153-x_draw_glyph_string_bg_rect
	.cfi_endproc

	.align	16, 0x90
	.type	x_clear_glyph_string_rect,@function
x_clear_glyph_string_rect:              # @x_clear_glyph_string_rect
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp493:
	.cfi_def_cfa_offset 16
.Ltmp494:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp495:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movl	$12, %eax
	movl	%eax, %r9d
	leaq	-152(%rbp), %r10
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	48(%rdi), %rdi
	movq	-8(%rbp), %r11
	movq	144(%r11), %rsi
	movq	%r9, %rdx
	movq	%r10, %rcx
	callq	XGetGCValues
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	144(%rcx), %rsi
	movq	-128(%rbp), %rdx
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	XSetForeground
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	144(%rcx), %rsi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r9d
	movl	%eax, -160(%rbp)        # 4-byte Spill
	callq	x_fill_rectangle
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rdi
	movq	-8(%rbp), %rsi
	movq	144(%rsi), %rsi
	movq	-136(%rbp), %rdx
	callq	XSetForeground
	movl	%eax, -164(%rbp)        # 4-byte Spill
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end154:
	.size	x_clear_glyph_string_rect, .Lfunc_end154-x_clear_glyph_string_rect
	.cfi_endproc

	.align	16, 0x90
	.type	x_draw_box_rect,@function
x_draw_box_rect:                        # @x_draw_box_rect
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp496:
	.cfi_def_cfa_offset 16
.Ltmp497:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp498:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$184, %rsp
.Ltmp499:
	.cfi_offset %rbx, -40
.Ltmp500:
	.cfi_offset %r14, -32
.Ltmp501:
	.cfi_offset %r15, -24
	movq	32(%rbp), %rax
	movb	24(%rbp), %r10b
	movb	16(%rbp), %r11b
	movl	$4, %ebx
	movl	%ebx, %r14d
	leaq	-192(%rbp), %r15
	movq	%rdi, -32(%rbp)
	movl	%esi, -36(%rbp)
	movl	%edx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	movl	%r9d, -52(%rbp)
	andb	$1, %r11b
	movb	%r11b, -53(%rbp)
	andb	$1, %r10b
	movb	%r10b, -54(%rbp)
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	144(%rax), %rsi
	movq	%r14, %rdx
	movq	%r15, %rcx
	callq	XGetGCValues
	movq	-32(%rbp), %rcx
	movq	48(%rcx), %rdi
	movq	-32(%rbp), %rcx
	movq	144(%rcx), %rsi
	movq	-32(%rbp), %rcx
	movq	96(%rcx), %rcx
	movq	216(%rcx), %rdx
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	XSetForeground
	movl	$1, %ecx
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rdi
	movq	-32(%rbp), %rdx
	movq	144(%rdx), %rsi
	movq	-64(%rbp), %rdx
	movl	%eax, -200(%rbp)        # 4-byte Spill
	callq	x_set_clip_rectangles
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rdi
	movq	-32(%rbp), %rdx
	movq	144(%rdx), %rsi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	movl	-44(%rbp), %eax
	subl	-36(%rbp), %eax
	addl	$1, %eax
	movl	-52(%rbp), %r9d
	movl	%eax, %r8d
	callq	x_fill_rectangle
	testb	$1, -53(%rbp)
	je	.LBB155_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	144(%rax), %rsi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	movl	-52(%rbp), %r8d
	movl	-48(%rbp), %r9d
	subl	-40(%rbp), %r9d
	addl	$1, %r9d
	callq	x_fill_rectangle
.LBB155_2:                              # %if.end
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	144(%rax), %rsi
	movl	-36(%rbp), %edx
	movl	-48(%rbp), %ecx
	subl	-52(%rbp), %ecx
	addl	$1, %ecx
	movl	-44(%rbp), %r8d
	subl	-36(%rbp), %r8d
	addl	$1, %r8d
	movl	-52(%rbp), %r9d
	callq	x_fill_rectangle
	testb	$1, -54(%rbp)
	je	.LBB155_4
# BB#3:                                 # %if.then.19
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	144(%rax), %rsi
	movl	-44(%rbp), %ecx
	subl	-52(%rbp), %ecx
	addl	$1, %ecx
	movl	-40(%rbp), %edx
	movl	-52(%rbp), %r8d
	movl	-48(%rbp), %r9d
	subl	-40(%rbp), %r9d
	addl	$1, %r9d
	movl	%edx, -204(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-204(%rbp), %ecx        # 4-byte Reload
	callq	x_fill_rectangle
.LBB155_4:                              # %if.end.26
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	144(%rax), %rsi
	movq	-176(%rbp), %rdx
	callq	XSetForeground
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rdi
	movq	-32(%rbp), %rdx
	movq	144(%rdx), %rsi
	movl	%eax, -208(%rbp)        # 4-byte Spill
	callq	x_reset_clip_rectangles
	addq	$184, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end155:
	.size	x_draw_box_rect, .Lfunc_end155-x_draw_box_rect
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI156_0:
	.quad	4603579539098121011     # double 0.59999999999999998
.LCPI156_1:
	.quad	4608083138725491507     # double 1.2
	.text
	.align	16, 0x90
	.type	x_setup_relief_colors,@function
x_setup_relief_colors:                  # @x_setup_relief_colors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp502:
	.cfi_def_cfa_offset 16
.Ltmp503:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp504:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	384(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	96(%rdi), %rdi
	movl	240(%rdi), %eax
	shrl	$3, %eax
	andl	$1, %eax
	testl	$1, %eax
	je	.LBB156_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	216(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB156_13
.LBB156_2:                              # %if.else
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movl	24(%rax), %ecx
	andl	$7, %ecx
	cmpl	$3, %ecx
	jne	.LBB156_11
# BB#3:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	cmpq	$0, 16(%rax)
	je	.LBB156_11
# BB#4:                                 # %land.lhs.true.4
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movb	88(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB156_6
# BB#5:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB156_11
	jmp	.LBB156_7
.LBB156_6:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	160(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rsi
	callq	image_background_transparent
	cmpl	$0, %eax
	jne	.LBB156_11
.LBB156_7:                              # %if.then.17
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movb	88(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB156_9
# BB#8:                                 # %cond.true.23
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB156_10
.LBB156_9:                              # %cond.false.25
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	160(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rsi
	callq	image_background
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB156_10:                             # %cond.end
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB156_12
.LBB156_11:                             # %if.else.29
	movl	$8, %eax
	movl	%eax, %edx
	leaq	-152(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rdi
	movq	-8(%rbp), %rsi
	movq	144(%rsi), %rsi
	callq	XGetGCValues
	movq	-128(%rbp), %rcx
	movq	%rcx, -24(%rbp)
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB156_12:                             # %if.end
	jmp	.LBB156_13
.LBB156_13:                             # %if.end.32
	movq	-16(%rbp), %rax
	cmpq	$0, 488(%rax)
	je	.LBB156_15
# BB#14:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	504(%rcx), %rax
	je	.LBB156_16
.LBB156_15:                             # %if.then.36
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 504(%rcx)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rax
	addq	$488, %rax              # imm = 0x1E8
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	XScreenNumberOfScreen
	movsd	.LCPI156_1, %xmm0       # xmm0 = mem[0],zero
	movl	$32768, %edx            # imm = 0x8000
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	16(%rdi), %rdi
	shlq	$7, %rcx
	addq	232(%rdi), %rcx
	movq	88(%rcx), %rcx
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	-184(%rbp), %rsi        # 8-byte Reload
	callq	x_setup_relief_color
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-16(%rbp), %rcx
	addq	$472, %rcx              # imm = 0x1D8
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	48(%rsi), %rsi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	callq	XScreenNumberOfScreen
	movsd	.LCPI156_0, %xmm0       # xmm0 = mem[0],zero
	movl	$16384, %edx            # imm = 0x4000
	movslq	%eax, %rcx
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	16(%rsi), %rsi
	shlq	$7, %rcx
	addq	232(%rsi), %rcx
	movq	96(%rcx), %rcx
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	-200(%rbp), %rsi        # 8-byte Reload
	callq	x_setup_relief_color
.LBB156_16:                             # %if.end.64
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end156:
	.size	x_setup_relief_colors, .Lfunc_end156-x_setup_relief_colors
	.cfi_endproc

	.align	16, 0x90
	.type	x_draw_relief_rect,@function
x_draw_relief_rect:                     # @x_draw_relief_rect
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp505:
	.cfi_def_cfa_offset 16
.Ltmp506:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp507:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$216, %rsp
.Ltmp508:
	.cfi_offset %rbx, -40
.Ltmp509:
	.cfi_offset %r14, -32
.Ltmp510:
	.cfi_offset %r15, -24
	movq	56(%rbp), %rax
	movb	48(%rbp), %r10b
	movb	40(%rbp), %r11b
	movb	32(%rbp), %bl
	movb	24(%rbp), %r14b
	movb	16(%rbp), %r15b
	movq	%rdi, -32(%rbp)
	movl	%esi, -36(%rbp)
	movl	%edx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	movl	%r9d, -52(%rbp)
	andb	$1, %r15b
	movb	%r15b, -53(%rbp)
	andb	$1, %r14b
	movb	%r14b, -54(%rbp)
	andb	$1, %bl
	movb	%bl, -55(%rbp)
	andb	$1, %r11b
	movb	%r11b, -56(%rbp)
	andb	$1, %r10b
	movb	%r10b, -57(%rbp)
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -88(%rbp)
	testb	$1, -53(%rbp)
	je	.LBB157_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	488(%rax), %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB157_3
.LBB157_2:                              # %if.else
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	472(%rax), %rax
	movq	%rax, -104(%rbp)
.LBB157_3:                              # %if.end
	xorl	%eax, %eax
	movl	$1, %r9d
	movq	-80(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movq	-72(%rbp), %r8
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	$0, (%rsp)
	callq	XSetClipRectangles
	testb	$1, -54(%rbp)
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB157_11
# BB#4:                                 # %if.then.14
	cmpl	$1, -52(%rbp)
	jne	.LBB157_6
# BB#5:                                 # %if.then.15
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-104(%rbp), %rdx
	movl	-36(%rbp), %eax
	movb	-56(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %r8d
	addl	%r8d, %eax
	movl	-40(%rbp), %r8d
	movl	-44(%rbp), %r9d
	movb	-57(%rbp), %cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %r10d
	addl	%r10d, %r9d
	movl	-40(%rbp), %r10d
	movl	%eax, %ecx
	movl	%r10d, (%rsp)
	callq	XDrawLine
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB157_6:                              # %if.end.20
	movl	$1, -92(%rbp)
.LBB157_7:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-92(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB157_10
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB157_7 Depth=1
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-104(%rbp), %rdx
	movl	-36(%rbp), %eax
	movl	-92(%rbp), %ecx
	movb	-56(%rbp), %r8b
	andb	$1, %r8b
	movzbl	%r8b, %r9d
	imull	%r9d, %ecx
	addl	%ecx, %eax
	movl	-40(%rbp), %ecx
	addl	-92(%rbp), %ecx
	movl	-44(%rbp), %r9d
	addl	$1, %r9d
	movl	-92(%rbp), %r10d
	movb	-57(%rbp), %r8b
	andb	$1, %r8b
	movzbl	%r8b, %r11d
	imull	%r11d, %r10d
	subl	%r10d, %r9d
	movl	-40(%rbp), %r10d
	addl	-92(%rbp), %r10d
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-116(%rbp), %r8d        # 4-byte Reload
	movl	%r10d, (%rsp)
	callq	XDrawLine
	movl	%eax, -120(%rbp)        # 4-byte Spill
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB157_7 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB157_7
.LBB157_10:                             # %for.end
	jmp	.LBB157_11
.LBB157_11:                             # %if.end.33
	testb	$1, -56(%rbp)
	je	.LBB157_19
# BB#12:                                # %if.then.35
	cmpl	$1, -52(%rbp)
	jne	.LBB157_14
# BB#13:                                # %if.then.38
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-104(%rbp), %rdx
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	-36(%rbp), %r9d
	movl	-48(%rbp), %r8d
	movl	%r8d, -124(%rbp)        # 4-byte Spill
	movl	%eax, %r8d
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	callq	XDrawLine
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB157_14:                             # %if.end.41
	movl	$1, %eax
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %r8d
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%eax, %r8d
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	XClearArea
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movl	-36(%rbp), %r8d
	movl	-48(%rbp), %r9d
	movl	%edx, -136(%rbp)        # 4-byte Spill
	movl	%r8d, %edx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	-140(%rbp), %r8d        # 4-byte Reload
	movl	-140(%rbp), %r9d        # 4-byte Reload
	movl	$0, (%rsp)
	movl	%eax, -144(%rbp)        # 4-byte Spill
	callq	XClearArea
	xorl	%ecx, %ecx
	movl	$1, %edx
	cmpl	$1, -52(%rbp)
	cmovgl	%edx, %ecx
	movl	%ecx, -92(%rbp)
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB157_15:                             # %for.cond.46
                                        # =>This Inner Loop Header: Depth=1
	movl	-92(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB157_18
# BB#16:                                # %for.body.49
                                        #   in Loop: Header=BB157_15 Depth=1
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-104(%rbp), %rdx
	movl	-36(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	-40(%rbp), %ecx
	movl	-92(%rbp), %r8d
	addl	$1, %r8d
	movb	-54(%rbp), %r9b
	andb	$1, %r9b
	movzbl	%r9b, %r10d
	imull	%r10d, %r8d
	addl	%r8d, %ecx
	movl	-36(%rbp), %r8d
	addl	-92(%rbp), %r8d
	movl	-48(%rbp), %r10d
	addl	$1, %r10d
	movl	-92(%rbp), %r11d
	addl	$1, %r11d
	movb	-55(%rbp), %r9b
	andb	$1, %r9b
	movzbl	%r9b, %ebx
	imull	%ebx, %r11d
	subl	%r11d, %r10d
	movl	%ecx, -152(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-152(%rbp), %eax        # 4-byte Reload
	movl	%r8d, -156(%rbp)        # 4-byte Spill
	movl	%eax, %r8d
	movl	-156(%rbp), %r9d        # 4-byte Reload
	movl	%r10d, (%rsp)
	callq	XDrawLine
	movl	%eax, -160(%rbp)        # 4-byte Spill
# BB#17:                                # %for.inc.64
                                        #   in Loop: Header=BB157_15 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB157_15
.LBB157_18:                             # %for.end.66
	jmp	.LBB157_19
.LBB157_19:                             # %if.end.67
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	XSetClipMask
	testb	$1, -53(%rbp)
	movl	%eax, -164(%rbp)        # 4-byte Spill
	je	.LBB157_21
# BB#20:                                # %if.then.70
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	472(%rax), %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB157_22
.LBB157_21:                             # %if.else.75
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	488(%rax), %rax
	movq	%rax, -104(%rbp)
.LBB157_22:                             # %if.end.80
	xorl	%eax, %eax
	movl	$1, %r9d
	movq	-80(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movq	-72(%rbp), %r8
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	$0, (%rsp)
	callq	XSetClipRectangles
	cmpl	$1, -52(%rbp)
	movl	%eax, -168(%rbp)        # 4-byte Spill
	jle	.LBB157_28
# BB#23:                                # %if.then.84
	testb	$1, -54(%rbp)
	je	.LBB157_25
# BB#24:                                # %if.then.86
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-104(%rbp), %rdx
	movl	-36(%rbp), %eax
	movb	-56(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %r8d
	addl	%r8d, %eax
	movl	-40(%rbp), %r8d
	movl	-44(%rbp), %r9d
	movb	-57(%rbp), %cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %r10d
	addl	%r10d, %r9d
	movl	-40(%rbp), %r10d
	movl	%eax, %ecx
	movl	%r10d, (%rsp)
	callq	XDrawLine
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB157_25:                             # %if.end.95
	testb	$1, -56(%rbp)
	je	.LBB157_27
# BB#26:                                # %if.then.97
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-104(%rbp), %rdx
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	-36(%rbp), %r9d
	movl	-48(%rbp), %r8d
	movl	%r8d, -176(%rbp)        # 4-byte Spill
	movl	%eax, %r8d
	movl	-176(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	callq	XDrawLine
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB157_27:                             # %if.end.100
	jmp	.LBB157_28
.LBB157_28:                             # %if.end.101
	testb	$1, -55(%rbp)
	je	.LBB157_34
# BB#29:                                # %if.then.103
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-104(%rbp), %rdx
	movl	-36(%rbp), %eax
	movb	-56(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %r8d
	addl	%r8d, %eax
	movl	-48(%rbp), %r8d
	movl	-44(%rbp), %r9d
	movb	-57(%rbp), %cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %r10d
	addl	%r10d, %r9d
	movl	-48(%rbp), %r10d
	movl	%eax, %ecx
	movl	%r10d, (%rsp)
	callq	XDrawLine
	movl	$1, -92(%rbp)
	movl	%eax, -184(%rbp)        # 4-byte Spill
.LBB157_30:                             # %for.cond.112
                                        # =>This Inner Loop Header: Depth=1
	movl	-92(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB157_33
# BB#31:                                # %for.body.115
                                        #   in Loop: Header=BB157_30 Depth=1
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-104(%rbp), %rdx
	movl	-36(%rbp), %eax
	movl	-92(%rbp), %ecx
	movb	-56(%rbp), %r8b
	andb	$1, %r8b
	movzbl	%r8b, %r9d
	imull	%r9d, %ecx
	addl	%ecx, %eax
	movl	-48(%rbp), %ecx
	subl	-92(%rbp), %ecx
	movl	-44(%rbp), %r9d
	addl	$1, %r9d
	movl	-92(%rbp), %r10d
	movb	-57(%rbp), %r8b
	andb	$1, %r8b
	movzbl	%r8b, %r11d
	imull	%r11d, %r10d
	subl	%r10d, %r9d
	movl	-48(%rbp), %r10d
	subl	-92(%rbp), %r10d
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-188(%rbp), %r8d        # 4-byte Reload
	movl	%r10d, (%rsp)
	callq	XDrawLine
	movl	%eax, -192(%rbp)        # 4-byte Spill
# BB#32:                                # %for.inc.128
                                        #   in Loop: Header=BB157_30 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB157_30
.LBB157_33:                             # %for.end.130
	jmp	.LBB157_34
.LBB157_34:                             # %if.end.131
	testb	$1, -57(%rbp)
	je	.LBB157_40
# BB#35:                                # %if.then.133
	movl	$1, %eax
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movl	-44(%rbp), %edx
	movl	-40(%rbp), %r8d
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%eax, %r8d
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	XClearArea
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movl	-44(%rbp), %r8d
	movl	-48(%rbp), %r9d
	movl	%edx, -200(%rbp)        # 4-byte Spill
	movl	%r8d, %edx
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	-204(%rbp), %r8d        # 4-byte Reload
	movl	-204(%rbp), %r9d        # 4-byte Reload
	movl	$0, (%rsp)
	movl	%eax, -208(%rbp)        # 4-byte Spill
	callq	XClearArea
	movl	$0, -92(%rbp)
	movl	%eax, -212(%rbp)        # 4-byte Spill
.LBB157_36:                             # %for.cond.136
                                        # =>This Inner Loop Header: Depth=1
	movl	-92(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB157_39
# BB#37:                                # %for.body.139
                                        #   in Loop: Header=BB157_36 Depth=1
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-104(%rbp), %rdx
	movl	-44(%rbp), %eax
	subl	-92(%rbp), %eax
	movl	-40(%rbp), %ecx
	movl	-92(%rbp), %r8d
	addl	$1, %r8d
	movb	-54(%rbp), %r9b
	andb	$1, %r9b
	movzbl	%r9b, %r10d
	imull	%r10d, %r8d
	addl	%r8d, %ecx
	movl	-44(%rbp), %r8d
	subl	-92(%rbp), %r8d
	movl	-48(%rbp), %r10d
	addl	$1, %r10d
	movl	-92(%rbp), %r11d
	addl	$1, %r11d
	movb	-55(%rbp), %r9b
	andb	$1, %r9b
	movzbl	%r9b, %ebx
	imull	%ebx, %r11d
	subl	%r11d, %r10d
	movl	%ecx, -216(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-216(%rbp), %eax        # 4-byte Reload
	movl	%r8d, -220(%rbp)        # 4-byte Spill
	movl	%eax, %r8d
	movl	-220(%rbp), %r9d        # 4-byte Reload
	movl	%r10d, (%rsp)
	callq	XDrawLine
	movl	%eax, -224(%rbp)        # 4-byte Spill
# BB#38:                                # %for.inc.154
                                        #   in Loop: Header=BB157_36 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB157_36
.LBB157_39:                             # %for.end.156
	jmp	.LBB157_40
.LBB157_40:                             # %if.end.157
	movq	-32(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	x_reset_clip_rectangles
	addq	$216, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end157:
	.size	x_draw_relief_rect, .Lfunc_end157-x_draw_relief_rect
	.cfi_endproc

	.align	16, 0x90
	.type	x_setup_relief_color,@function
x_setup_relief_color:                   # @x_setup_relief_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp511:
	.cfi_def_cfa_offset 16
.Ltmp512:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp513:
	.cfi_def_cfa_register %rbp
	subq	$240, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	%rcx, -176(%rbp)
	movq	$65556, -184(%rbp)      # imm = 0x10014
	movq	-176(%rbp), %rcx
	movq	504(%rcx), %rcx
	movq	%rcx, -200(%rbp)
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	80(%rcx), %rcx
	movq	%rcx, -208(%rbp)
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	%rcx, -216(%rbp)
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -224(%rbp)
	movl	$0, -68(%rbp)
	movl	$1, -136(%rbp)
	movq	-16(%rbp), %rcx
	cmpq	$0, (%rcx)
	je	.LBB158_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpq	$-1, 8(%rax)
	je	.LBB158_3
# BB#2:                                 # %if.then
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rsi
	callq	x_free_colors
	movq	-16(%rbp), %rax
	movq	$-1, 8(%rax)
.LBB158_3:                              # %if.end
	movq	-40(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-216(%rbp), %rax
	cmpl	$1, 88(%rax)
	je	.LBB158_6
# BB#4:                                 # %land.lhs.true.14
	leaq	-192(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movq	-224(%rbp), %rsi
	movq	-208(%rbp), %rdx
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-28(%rbp), %r8d
	callq	x_alloc_lighter_color
	testb	$1, %al
	jne	.LBB158_5
	jmp	.LBB158_6
.LBB158_5:                              # %if.then.15
	movq	-192(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	%rax, -152(%rbp)
.LBB158_6:                              # %if.end.18
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB158_8
# BB#7:                                 # %if.then.21
	leaq	-168(%rbp), %rcx
	movq	-216(%rbp), %rax
	movq	696(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-184(%rbp), %rax
	orq	$2048, %rax             # imm = 0x800
	movq	%rax, -184(%rbp)
	movq	-224(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rsi
	movq	-184(%rbp), %rdx
	callq	XCreateGC
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB158_9
.LBB158_8:                              # %if.else
	leaq	-168(%rbp), %rcx
	movq	-224(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	movq	-184(%rbp), %rdx
	callq	XChangeGC
	movl	%eax, -228(%rbp)        # 4-byte Spill
.LBB158_9:                              # %if.end.28
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end158:
	.size	x_setup_relief_color, .Lfunc_end158-x_setup_relief_color
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI159_0:
	.quad	4679239875398991872     # double 65535
.LCPI159_1:
	.quad	4607182418800017408     # double 1
.LCPI159_2:
	.quad	4611686018427387904     # double 2
.LCPI159_3:
	.quad	4676829883349860352     # double 48000
	.text
	.align	16, 0x90
	.type	x_alloc_lighter_color,@function
x_alloc_lighter_color:                  # @x_alloc_lighter_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp514:
	.cfi_def_cfa_offset 16
.Ltmp515:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp516:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	leaq	-64(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	x_query_color
	movsd	.LCPI159_0, %xmm0       # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movzwl	-56(%rbp), %r8d
	cvtsi2sdl	%r8d, %xmm2
	mulsd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB159_2
# BB#1:                                 # %cond.true
	movsd	.LCPI159_0, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jmp	.LBB159_3
.LBB159_2:                              # %cond.false
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movzwl	-56(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
.LBB159_3:                              # %cond.end
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI159_0, %xmm1       # xmm1 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movw	%ax, %cx
	movw	%cx, -72(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movzwl	-54(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB159_5
# BB#4:                                 # %cond.true.15
	movsd	.LCPI159_0, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	jmp	.LBB159_6
.LBB159_5:                              # %cond.false.16
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movzwl	-54(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
.LBB159_6:                              # %cond.end.21
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI159_0, %xmm1       # xmm1 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movw	%ax, %cx
	movw	%cx, -70(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movzwl	-52(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB159_8
# BB#7:                                 # %cond.true.30
	movsd	.LCPI159_0, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	jmp	.LBB159_9
.LBB159_8:                              # %cond.false.31
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movzwl	-52(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
.LBB159_9:                              # %cond.end.36
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$6, %eax
	cvttsd2si	%xmm0, %ecx
	movw	%cx, %dx
	movw	%dx, -68(%rbp)
	movzwl	-56(%rbp), %ecx
	shll	$1, %ecx
	movzwl	-54(%rbp), %esi
	imull	$3, %esi, %esi
	addl	%esi, %ecx
	movzwl	-52(%rbp), %esi
	addl	%esi, %ecx
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-140(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movslq	%eax, %rdi
	movq	%rdi, -88(%rbp)
	cmpq	$48000, -88(%rbp)       # imm = 0xBB80
	jge	.LBB159_32
# BB#10:                                # %if.then
	movsd	.LCPI159_1, %xmm0       # xmm0 = mem[0],zero
	movsd	.LCPI159_2, %xmm1       # xmm1 = mem[0],zero
	movsd	.LCPI159_3, %xmm2       # xmm2 = mem[0],zero
	cvtsi2sdq	-88(%rbp), %xmm3
	divsd	%xmm2, %xmm3
	movaps	%xmm0, %xmm2
	subsd	%xmm3, %xmm2
	movsd	%xmm2, -104(%rbp)
	cvtsi2sdl	-44(%rbp), %xmm2
	mulsd	-104(%rbp), %xmm2
	mulsd	-40(%rbp), %xmm2
	divsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -108(%rbp)
	ucomisd	-40(%rbp), %xmm0
	jbe	.LBB159_21
# BB#11:                                # %if.then.61
	xorl	%eax, %eax
	movzwl	-72(%rbp), %ecx
	subl	-108(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB159_13
# BB#12:                                # %cond.true.67
	xorl	%eax, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB159_14
.LBB159_13:                             # %cond.false.68
	movzwl	-72(%rbp), %eax
	subl	-108(%rbp), %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
.LBB159_14:                             # %cond.end.72
	movl	-144(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movw	%ax, %dx
	movw	%dx, -72(%rbp)
	movzwl	-70(%rbp), %eax
	subl	-108(%rbp), %eax
	cmpl	%eax, %ecx
	jle	.LBB159_16
# BB#15:                                # %cond.true.81
	xorl	%eax, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB159_17
.LBB159_16:                             # %cond.false.82
	movzwl	-70(%rbp), %eax
	subl	-108(%rbp), %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB159_17:                             # %cond.end.86
	movl	-148(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movw	%ax, %dx
	movw	%dx, -70(%rbp)
	movzwl	-68(%rbp), %eax
	subl	-108(%rbp), %eax
	cmpl	%eax, %ecx
	jle	.LBB159_19
# BB#18:                                # %cond.true.95
	xorl	%eax, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	jmp	.LBB159_20
.LBB159_19:                             # %cond.false.96
	movzwl	-68(%rbp), %eax
	subl	-108(%rbp), %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
.LBB159_20:                             # %cond.end.100
	movl	-152(%rbp), %eax        # 4-byte Reload
	movw	%ax, %cx
	movw	%cx, -68(%rbp)
	jmp	.LBB159_31
.LBB159_21:                             # %if.else
	movl	$65535, %eax            # imm = 0xFFFF
	movl	-108(%rbp), %ecx
	movzwl	-72(%rbp), %edx
	addl	%edx, %ecx
	cmpl	%ecx, %eax
	jge	.LBB159_23
# BB#22:                                # %cond.true.109
	movl	$65535, %eax            # imm = 0xFFFF
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jmp	.LBB159_24
.LBB159_23:                             # %cond.false.110
	movl	-108(%rbp), %eax
	movzwl	-72(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB159_24:                             # %cond.end.114
	movl	-156(%rbp), %eax        # 4-byte Reload
	movl	$65535, %ecx            # imm = 0xFFFF
	movw	%ax, %dx
	movw	%dx, -72(%rbp)
	movl	-108(%rbp), %eax
	movzwl	-70(%rbp), %esi
	addl	%esi, %eax
	cmpl	%eax, %ecx
	jge	.LBB159_26
# BB#25:                                # %cond.true.123
	movl	$65535, %eax            # imm = 0xFFFF
	movl	%eax, -160(%rbp)        # 4-byte Spill
	jmp	.LBB159_27
.LBB159_26:                             # %cond.false.124
	movl	-108(%rbp), %eax
	movzwl	-70(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
.LBB159_27:                             # %cond.end.128
	movl	-160(%rbp), %eax        # 4-byte Reload
	movl	$65535, %ecx            # imm = 0xFFFF
	movw	%ax, %dx
	movw	%dx, -70(%rbp)
	movl	-108(%rbp), %eax
	movzwl	-68(%rbp), %esi
	addl	%esi, %eax
	cmpl	%eax, %ecx
	jge	.LBB159_29
# BB#28:                                # %cond.true.137
	movl	$65535, %eax            # imm = 0xFFFF
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB159_30
.LBB159_29:                             # %cond.false.138
	movl	-108(%rbp), %eax
	movzwl	-68(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB159_30:                             # %cond.end.142
	movl	-164(%rbp), %eax        # 4-byte Reload
	movw	%ax, %cx
	movw	%cx, -68(%rbp)
.LBB159_31:                             # %if.end
	jmp	.LBB159_32
.LBB159_32:                             # %if.end.146
	leaq	-80(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	x_alloc_nearest_color
	andb	$1, %al
	movb	%al, -89(%rbp)
	testb	$1, -89(%rbp)
	je	.LBB159_46
# BB#33:                                # %if.then.147
	movq	-80(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	(%rcx), %rax
	jne	.LBB159_44
# BB#34:                                # %if.then.151
	movl	$1, %edx
	leaq	-80(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	x_free_colors
	movl	$65535, %edx            # imm = 0xFFFF
	movl	-44(%rbp), %eax
	movzwl	-56(%rbp), %ecx
	addl	%ecx, %eax
	cmpl	%eax, %edx
	jge	.LBB159_36
# BB#35:                                # %cond.true.158
	movl	$65535, %eax            # imm = 0xFFFF
	movl	%eax, -168(%rbp)        # 4-byte Spill
	jmp	.LBB159_37
.LBB159_36:                             # %cond.false.159
	movl	-44(%rbp), %eax
	movzwl	-56(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
.LBB159_37:                             # %cond.end.163
	movl	-168(%rbp), %eax        # 4-byte Reload
	movl	$65535, %ecx            # imm = 0xFFFF
	movw	%ax, %dx
	movw	%dx, -72(%rbp)
	movl	-44(%rbp), %eax
	movzwl	-54(%rbp), %esi
	addl	%esi, %eax
	cmpl	%eax, %ecx
	jge	.LBB159_39
# BB#38:                                # %cond.true.172
	movl	$65535, %eax            # imm = 0xFFFF
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB159_40
.LBB159_39:                             # %cond.false.173
	movl	-44(%rbp), %eax
	movzwl	-54(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB159_40:                             # %cond.end.177
	movl	-172(%rbp), %eax        # 4-byte Reload
	movl	$65535, %ecx            # imm = 0xFFFF
	movw	%ax, %dx
	movw	%dx, -70(%rbp)
	movl	-44(%rbp), %eax
	movzwl	-52(%rbp), %esi
	addl	%esi, %eax
	cmpl	%eax, %ecx
	jge	.LBB159_42
# BB#41:                                # %cond.true.186
	movl	$65535, %eax            # imm = 0xFFFF
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB159_43
.LBB159_42:                             # %cond.false.187
	movl	-44(%rbp), %eax
	movzwl	-52(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
.LBB159_43:                             # %cond.end.191
	movl	-176(%rbp), %eax        # 4-byte Reload
	leaq	-80(%rbp), %rdx
	movw	%ax, %cx
	movw	%cx, -68(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	x_alloc_nearest_color
	andb	$1, %al
	movb	%al, -89(%rbp)
	jmp	.LBB159_45
.LBB159_44:                             # %if.else.197
	movb	$1, -89(%rbp)
.LBB159_45:                             # %if.end.198
	movq	-80(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB159_46:                             # %if.end.200
	movb	-89(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end159:
	.size	x_alloc_lighter_color, .Lfunc_end159-x_alloc_lighter_color
	.cfi_endproc

	.align	16, 0x90
	.type	x_draw_image_foreground_1,@function
x_draw_image_foreground_1:              # @x_draw_image_foreground_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp517:
	.cfi_def_cfa_offset 16
.Ltmp518:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp519:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$232, %rsp
.Ltmp520:
	.cfi_offset %rbx, -40
.Ltmp521:
	.cfi_offset %r14, -32
.Ltmp522:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movl	$0, -44(%rbp)
	movq	-32(%rbp), %rsi
	movl	8(%rsi), %eax
	movq	-32(%rbp), %rsi
	subl	4(%rsi), %eax
	movq	-32(%rbp), %rsi
	movq	160(%rsi), %rdi
	movq	-32(%rbp), %rsi
	movq	96(%rsi), %rsi
	movq	-32(%rbp), %rcx
	addq	$176, %rcx
	movq	%rcx, %rdx
	movl	%eax, -192(%rbp)        # 4-byte Spill
	callq	image_ascent
	movl	-192(%rbp), %r8d        # 4-byte Reload
	subl	%eax, %r8d
	movl	%r8d, -48(%rbp)
	movq	-32(%rbp), %rcx
	movq	96(%rcx), %rcx
	movl	240(%rcx), %eax
	andl	$3, %eax
	cmpl	$0, %eax
	je	.LBB160_7
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	152(%rax), %rax
	movl	24(%rax), %ecx
	shrl	$4, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	je	.LBB160_7
# BB#2:                                 # %land.lhs.true.6
	movq	-32(%rbp), %rax
	movq	176(%rax), %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB160_7
# BB#3:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	96(%rax), %rax
	cmpl	$0, 236(%rax)
	jge	.LBB160_5
# BB#4:                                 # %cond.true
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	movq	96(%rcx), %rcx
	subl	236(%rcx), %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jmp	.LBB160_6
.LBB160_5:                              # %cond.false
	movq	-32(%rbp), %rax
	movq	96(%rax), %rax
	movl	236(%rax), %ecx
	movl	%ecx, -196(%rbp)        # 4-byte Spill
.LBB160_6:                              # %cond.end
	movl	-196(%rbp), %eax        # 4-byte Reload
	addl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB160_7:                              # %if.end
	movq	-32(%rbp), %rax
	movq	176(%rax), %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB160_9
# BB#8:                                 # %if.then.24
	movq	-32(%rbp), %rax
	movq	160(%rax), %rax
	movl	140(%rax), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
.LBB160_9:                              # %if.end.27
	movq	-32(%rbp), %rax
	movq	176(%rax), %rax
	shrq	$16, %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB160_11
# BB#10:                                # %if.then.34
	movq	-32(%rbp), %rax
	movq	160(%rax), %rax
	movl	144(%rax), %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
.LBB160_11:                             # %if.end.37
	movq	-32(%rbp), %rax
	movq	160(%rax), %rax
	cmpq	$0, 16(%rax)
	je	.LBB160_21
# BB#12:                                # %if.then.40
	movq	-32(%rbp), %rax
	movq	160(%rax), %rax
	cmpq	$0, 24(%rax)
	je	.LBB160_14
# BB#13:                                # %if.then.43
	leaq	-184(%rbp), %rcx
	movq	$917505, -56(%rbp)      # imm = 0xE0001
	movq	-32(%rbp), %rax
	movq	160(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -72(%rbp)
	movl	-44(%rbp), %edx
	movq	-32(%rbp), %rax
	movq	176(%rax), %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %esi
	subl	%esi, %edx
	movl	%edx, -80(%rbp)
	movl	-48(%rbp), %edx
	movq	-32(%rbp), %rax
	movq	176(%rax), %rax
	shrq	$16, %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %esi
	subl	%esi, %edx
	movl	%edx, -76(%rbp)
	movl	$3, -184(%rbp)
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	144(%rax), %rsi
	movq	-56(%rbp), %rdx
	callq	XChangeGC
	movq	-32(%rbp), %rcx
	movq	48(%rcx), %rdi
	movq	-32(%rbp), %rcx
	movq	160(%rcx), %rcx
	movq	16(%rcx), %rsi
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	144(%rcx), %rcx
	movq	-32(%rbp), %r8
	movq	176(%r8), %r8
	andq	$65535, %r8             # imm = 0xFFFF
	movl	%r8d, %r9d
	movq	-32(%rbp), %r8
	movq	176(%r8), %r8
	shrq	$16, %r8
	andq	$65535, %r8             # imm = 0xFFFF
	movl	%r8d, %r10d
	movq	-32(%rbp), %r8
	movq	176(%r8), %r8
	shrq	$32, %r8
	andq	$65535, %r8             # imm = 0xFFFF
	movl	%r8d, %r11d
	movq	-32(%rbp), %r8
	movq	176(%r8), %r8
	shrq	$48, %r8
	movl	%r8d, %ebx
	movl	-44(%rbp), %r14d
	movl	-48(%rbp), %r15d
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	%r11d, (%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r14d, 16(%rsp)
	movl	%r15d, 24(%rsp)
	movl	%eax, -200(%rbp)        # 4-byte Spill
	callq	XCopyArea
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	-32(%rbp), %rcx
	movq	48(%rcx), %rdi
	movq	-32(%rbp), %rcx
	movq	144(%rcx), %rsi
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	XSetClipMask
	movl	%eax, -208(%rbp)        # 4-byte Spill
	jmp	.LBB160_20
.LBB160_14:                             # %if.else
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	160(%rax), %rax
	movq	16(%rax), %rsi
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	144(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	176(%rax), %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %r8d
	movq	-32(%rbp), %rax
	movq	176(%rax), %rax
	shrq	$16, %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %r9d
	movq	-32(%rbp), %rax
	movq	176(%rax), %rax
	shrq	$32, %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %r10d
	movq	-32(%rbp), %rax
	movq	176(%rax), %rax
	shrq	$48, %rax
	movl	%eax, %r11d
	movl	-44(%rbp), %ebx
	movl	-48(%rbp), %r14d
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r14d, 24(%rsp)
	callq	XCopyArea
	movq	-32(%rbp), %rcx
	cmpl	$2, 92(%rcx)
	movl	%eax, -212(%rbp)        # 4-byte Spill
	jne	.LBB160_19
# BB#15:                                # %if.then.109
	movq	-32(%rbp), %rax
	movq	160(%rax), %rax
	cmpl	$0, 136(%rax)
	jge	.LBB160_17
# BB#16:                                # %cond.true.112
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	movq	160(%rcx), %rcx
	subl	136(%rcx), %eax
	movl	%eax, -216(%rbp)        # 4-byte Spill
	jmp	.LBB160_18
.LBB160_17:                             # %cond.false.116
	movq	-32(%rbp), %rax
	movq	160(%rax), %rax
	movl	136(%rax), %ecx
	movl	%ecx, -216(%rbp)        # 4-byte Spill
.LBB160_18:                             # %cond.end.119
	movl	-216(%rbp), %eax        # 4-byte Reload
	movl	%eax, -188(%rbp)
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-32(%rbp), %rcx
	movq	144(%rcx), %rsi
	movl	-44(%rbp), %eax
	subl	-188(%rbp), %eax
	movl	-48(%rbp), %edx
	subl	-188(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	176(%rcx), %rcx
	shrq	$32, %rcx
	andq	$65535, %rcx            # imm = 0xFFFF
	movl	%ecx, %r8d
	movl	-188(%rbp), %r9d
	shll	$1, %r9d
	addl	%r9d, %r8d
	subl	$1, %r8d
	movq	-32(%rbp), %rcx
	movq	176(%rcx), %rcx
	shrq	$48, %rcx
	movl	%ecx, %r9d
	movl	-188(%rbp), %r10d
	shll	$1, %r10d
	addl	%r10d, %r9d
	subl	$1, %r9d
	movl	%edx, -220(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movl	-220(%rbp), %ecx        # 4-byte Reload
	callq	x_draw_rectangle
.LBB160_19:                             # %if.end.138
	jmp	.LBB160_20
.LBB160_20:                             # %if.end.139
	jmp	.LBB160_22
.LBB160_21:                             # %if.else.140
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	144(%rax), %rsi
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %ecx
	movq	-32(%rbp), %rax
	movq	176(%rax), %rax
	shrq	$32, %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %r8d
	subl	$1, %r8d
	movq	-32(%rbp), %rax
	movq	176(%rax), %rax
	shrq	$48, %rax
	movl	%eax, %r9d
	subl	$1, %r9d
	callq	x_draw_rectangle
.LBB160_22:                             # %if.end.154
	addq	$232, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end160:
	.size	x_draw_image_foreground_1, .Lfunc_end160-x_draw_image_foreground_1
	.cfi_endproc

	.align	16, 0x90
	.type	x_draw_image_foreground,@function
x_draw_image_foreground:                # @x_draw_image_foreground
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp523:
	.cfi_def_cfa_offset 16
.Ltmp524:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp525:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$272, %rsp              # imm = 0x110
.Ltmp526:
	.cfi_offset %rbx, -32
.Ltmp527:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	(%rdi), %eax
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rdi
	movl	8(%rdi), %eax
	movq	-24(%rbp), %rdi
	movq	160(%rdi), %rdi
	movq	-24(%rbp), %rcx
	movq	96(%rcx), %rsi
	movq	-24(%rbp), %rcx
	addq	$176, %rcx
	movq	%rcx, %rdx
	movl	%eax, -224(%rbp)        # 4-byte Spill
	callq	image_ascent
	movl	-224(%rbp), %r8d        # 4-byte Reload
	subl	%eax, %r8d
	movl	%r8d, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	96(%rcx), %rcx
	movl	240(%rcx), %eax
	andl	$3, %eax
	cmpl	$0, %eax
	je	.LBB161_7
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movl	24(%rax), %ecx
	shrl	$4, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	je	.LBB161_7
# BB#2:                                 # %land.lhs.true.5
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB161_7
# BB#3:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	cmpl	$0, 236(%rax)
	jge	.LBB161_5
# BB#4:                                 # %cond.true
	xorl	%eax, %eax
	movq	-24(%rbp), %rcx
	movq	96(%rcx), %rcx
	subl	236(%rcx), %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
	jmp	.LBB161_6
.LBB161_5:                              # %cond.false
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movl	236(%rax), %ecx
	movl	%ecx, -228(%rbp)        # 4-byte Spill
.LBB161_6:                              # %cond.end
	movl	-228(%rbp), %eax        # 4-byte Reload
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB161_7:                              # %if.end
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB161_9
# BB#8:                                 # %if.then.23
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movl	140(%rax), %ecx
	addl	-28(%rbp), %ecx
	movl	%ecx, -28(%rbp)
.LBB161_9:                              # %if.end.26
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	shrq	$16, %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB161_11
# BB#10:                                # %if.then.33
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movl	144(%rax), %ecx
	addl	-32(%rbp), %ecx
	movl	%ecx, -32(%rbp)
.LBB161_11:                             # %if.end.36
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	cmpq	$0, 16(%rax)
	je	.LBB161_25
# BB#12:                                # %if.then.38
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	cmpq	$0, 24(%rax)
	je	.LBB161_16
# BB#13:                                # %if.then.41
	leaq	-168(%rbp), %rcx
	movq	$917505, -40(%rbp)      # imm = 0xE0001
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)
	movl	-28(%rbp), %edx
	movl	%edx, -64(%rbp)
	movl	-32(%rbp), %edx
	movl	%edx, -60(%rbp)
	movl	$3, -168(%rbp)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	144(%rax), %rsi
	movq	-40(%rbp), %rdx
	callq	XChangeGC
	leaq	-176(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movl	%eax, -232(%rbp)        # 4-byte Spill
	callq	get_glyph_string_clip_rect
	leaq	-176(%rbp), %rdi
	leaq	-184(%rbp), %rsi
	leaq	-192(%rbp), %rdx
	movl	-28(%rbp), %eax
	movw	%ax, %r8w
	movw	%r8w, -184(%rbp)
	movl	-32(%rbp), %eax
	movw	%ax, %r8w
	movw	%r8w, -182(%rbp)
	movq	-24(%rbp), %rcx
	movq	176(%rcx), %rcx
	shrq	$32, %rcx
	andq	$65535, %rcx            # imm = 0xFFFF
	movl	%ecx, %eax
	movw	%ax, %r8w
	movw	%r8w, -180(%rbp)
	movq	-24(%rbp), %rcx
	movq	176(%rcx), %rcx
	shrq	$48, %rcx
	movl	%ecx, %eax
	movw	%ax, %r8w
	movw	%r8w, -178(%rbp)
	callq	x_intersect_rectangles
	testb	$1, %al
	jne	.LBB161_14
	jmp	.LBB161_15
.LBB161_14:                             # %if.then.61
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	16(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	144(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %r8d
	movswl	-192(%rbp), %r9d
	addl	%r9d, %r8d
	subl	-28(%rbp), %r8d
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	shrq	$16, %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %r9d
	movswl	-190(%rbp), %r10d
	addl	%r10d, %r9d
	subl	-32(%rbp), %r9d
	movzwl	-188(%rbp), %r10d
	movzwl	-186(%rbp), %r11d
	movswl	-192(%rbp), %ebx
	movswl	-190(%rbp), %r14d
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r14d, 24(%rsp)
	callq	XCopyArea
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB161_15:                             # %if.end.92
	jmp	.LBB161_24
.LBB161_16:                             # %if.else
	leaq	-200(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	get_glyph_string_clip_rect
	leaq	-200(%rbp), %rdi
	leaq	-208(%rbp), %rsi
	leaq	-216(%rbp), %rdx
	movl	-28(%rbp), %eax
	movw	%ax, %cx
	movw	%cx, -208(%rbp)
	movl	-32(%rbp), %eax
	movw	%ax, %cx
	movw	%cx, -206(%rbp)
	movq	-24(%rbp), %r8
	movq	176(%r8), %r8
	shrq	$32, %r8
	andq	$65535, %r8             # imm = 0xFFFF
	movl	%r8d, %eax
	movw	%ax, %cx
	movw	%cx, -204(%rbp)
	movq	-24(%rbp), %r8
	movq	176(%r8), %r8
	shrq	$48, %r8
	movl	%r8d, %eax
	movw	%ax, %cx
	movw	%cx, -202(%rbp)
	callq	x_intersect_rectangles
	testb	$1, %al
	jne	.LBB161_17
	jmp	.LBB161_18
.LBB161_17:                             # %if.then.114
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	16(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	144(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %r8d
	movswl	-216(%rbp), %r9d
	addl	%r9d, %r8d
	subl	-28(%rbp), %r8d
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	shrq	$16, %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %r9d
	movswl	-214(%rbp), %r10d
	addl	%r10d, %r9d
	subl	-32(%rbp), %r9d
	movzwl	-212(%rbp), %r10d
	movzwl	-210(%rbp), %r11d
	movswl	-216(%rbp), %ebx
	movswl	-214(%rbp), %r14d
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r14d, 24(%rsp)
	callq	XCopyArea
	movl	%eax, -240(%rbp)        # 4-byte Spill
.LBB161_18:                             # %if.end.146
	movq	-24(%rbp), %rax
	cmpl	$2, 92(%rax)
	jne	.LBB161_23
# BB#19:                                # %if.then.149
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	cmpl	$0, 136(%rax)
	jge	.LBB161_21
# BB#20:                                # %cond.true.154
	xorl	%eax, %eax
	movq	-24(%rbp), %rcx
	movq	160(%rcx), %rcx
	subl	136(%rcx), %eax
	movl	%eax, -244(%rbp)        # 4-byte Spill
	jmp	.LBB161_22
.LBB161_21:                             # %cond.false.158
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movl	136(%rax), %ecx
	movl	%ecx, -244(%rbp)        # 4-byte Spill
.LBB161_22:                             # %cond.end.161
	movl	-244(%rbp), %eax        # 4-byte Reload
	movl	%eax, -220(%rbp)
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-24(%rbp), %rcx
	movq	144(%rcx), %rsi
	movl	-28(%rbp), %eax
	subl	-220(%rbp), %eax
	movl	-32(%rbp), %edx
	subl	-220(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	176(%rcx), %rcx
	shrq	$32, %rcx
	andq	$65535, %rcx            # imm = 0xFFFF
	movl	%ecx, %r8d
	movl	-220(%rbp), %r9d
	shll	$1, %r9d
	addl	%r9d, %r8d
	subl	$1, %r8d
	movq	-24(%rbp), %rcx
	movq	176(%rcx), %rcx
	shrq	$48, %rcx
	movl	%ecx, %r9d
	movl	-220(%rbp), %r10d
	shll	$1, %r10d
	addl	%r10d, %r9d
	subl	$1, %r9d
	movl	%edx, -248(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movl	-248(%rbp), %ecx        # 4-byte Reload
	callq	x_draw_rectangle
.LBB161_23:                             # %if.end.180
	jmp	.LBB161_24
.LBB161_24:                             # %if.end.181
	jmp	.LBB161_26
.LBB161_25:                             # %if.else.182
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	144(%rax), %rsi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	shrq	$32, %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %r8d
	subl	$1, %r8d
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	shrq	$48, %rax
	movl	%eax, %r9d
	subl	$1, %r9d
	callq	x_draw_rectangle
.LBB161_26:                             # %if.end.196
	addq	$272, %rsp              # imm = 0x110
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end161:
	.size	x_draw_image_foreground, .Lfunc_end161-x_draw_image_foreground
	.cfi_endproc

	.align	16, 0x90
	.type	x_draw_image_relief,@function
x_draw_image_relief:                    # @x_draw_image_relief
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp528:
	.cfi_def_cfa_offset 16
.Ltmp529:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp530:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$144, %rsp
.Ltmp531:
	.cfi_offset %rbx, -48
.Ltmp532:
	.cfi_offset %r12, -40
.Ltmp533:
	.cfi_offset %r14, -32
.Ltmp534:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rdi
	movl	(%rdi), %eax
	movl	%eax, -84(%rbp)
	movq	-40(%rbp), %rdi
	movl	8(%rdi), %eax
	movq	-40(%rbp), %rdi
	movq	160(%rdi), %rdi
	movq	-40(%rbp), %rcx
	movq	96(%rcx), %rsi
	movq	-40(%rbp), %rcx
	addq	$176, %rcx
	movq	%rcx, %rdx
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	image_ascent
	movl	-92(%rbp), %r8d         # 4-byte Reload
	subl	%eax, %r8d
	movl	%r8d, -88(%rbp)
	movq	-40(%rbp), %rcx
	movq	96(%rcx), %rcx
	movl	240(%rcx), %eax
	andl	$3, %eax
	cmpl	$0, %eax
	je	.LBB162_7
# BB#1:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	152(%rax), %rax
	movl	24(%rax), %ecx
	shrl	$4, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	je	.LBB162_7
# BB#2:                                 # %land.lhs.true.6
	movq	-40(%rbp), %rax
	movq	176(%rax), %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB162_7
# BB#3:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	cmpl	$0, 236(%rax)
	jge	.LBB162_5
# BB#4:                                 # %cond.true
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	movq	96(%rcx), %rcx
	subl	236(%rcx), %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB162_6
.LBB162_5:                              # %cond.false
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	movl	236(%rax), %ecx
	movl	%ecx, -96(%rbp)         # 4-byte Spill
.LBB162_6:                              # %cond.end
	movl	-96(%rbp), %eax         # 4-byte Reload
	addl	-84(%rbp), %eax
	movl	%eax, -84(%rbp)
.LBB162_7:                              # %if.end
	movq	-40(%rbp), %rax
	movq	176(%rax), %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB162_9
# BB#8:                                 # %if.then.24
	movq	-40(%rbp), %rax
	movq	160(%rax), %rax
	movl	140(%rax), %ecx
	addl	-84(%rbp), %ecx
	movl	%ecx, -84(%rbp)
.LBB162_9:                              # %if.end.27
	movq	-40(%rbp), %rax
	movq	176(%rax), %rax
	shrq	$16, %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB162_11
# BB#10:                                # %if.then.34
	movq	-40(%rbp), %rax
	movq	160(%rax), %rax
	movl	144(%rax), %ecx
	addl	-88(%rbp), %ecx
	movl	%ecx, -88(%rbp)
.LBB162_11:                             # %if.end.37
	movq	-40(%rbp), %rax
	cmpl	$5, 92(%rax)
	je	.LBB162_13
# BB#12:                                # %lor.lhs.false
	movq	-40(%rbp), %rax
	cmpl	$4, 92(%rax)
	jne	.LBB162_17
.LBB162_13:                             # %if.then.41
	cmpq	$0, globals+3304
	jl	.LBB162_15
# BB#14:                                # %cond.true.43
	movq	globals+3304, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB162_16
.LBB162_15:                             # %cond.false.44
	movl	$1, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB162_16
.LBB162_16:                             # %cond.end.45
	movq	-104(%rbp), %rax        # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$4, 92(%rax)
	sete	%dl
	andb	$1, %dl
	movb	%dl, -53(%rbp)
	jmp	.LBB162_21
.LBB162_17:                             # %if.else
	movq	-40(%rbp), %rax
	movq	160(%rax), %rax
	cmpl	$0, 136(%rax)
	jge	.LBB162_19
# BB#18:                                # %cond.true.53
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	movq	160(%rcx), %rcx
	subl	136(%rcx), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB162_20
.LBB162_19:                             # %cond.false.57
	movq	-40(%rbp), %rax
	movq	160(%rax), %rax
	movl	136(%rax), %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
.LBB162_20:                             # %cond.end.60
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -52(%rbp)
	movq	-40(%rbp), %rcx
	movq	160(%rcx), %rcx
	cmpl	$0, 136(%rcx)
	setg	%dl
	andb	$1, %dl
	movb	%dl, -53(%rbp)
.LBB162_21:                             # %if.end.67
	movl	-84(%rbp), %eax
	movq	-40(%rbp), %rcx
	movq	176(%rcx), %rcx
	shrq	$32, %rcx
	andq	$65535, %rcx            # imm = 0xFFFF
	movl	%ecx, %edx
	addl	%edx, %eax
	subl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-88(%rbp), %eax
	movq	-40(%rbp), %rcx
	movq	176(%rcx), %rcx
	shrq	$48, %rcx
	movl	%ecx, %edx
	addl	%edx, %eax
	subl	$1, %eax
	movl	%eax, -48(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -64(%rbp)
	movq	-40(%rbp), %rcx
	movq	96(%rcx), %rcx
	cmpl	$3, 152(%rcx)
	jne	.LBB162_30
# BB#22:                                # %if.then.84
	movq	globals+2400, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB162_26
# BB#23:                                # %land.lhs.true.88
	movq	globals+2400, %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB162_26
# BB#24:                                # %land.lhs.true.95
	movq	globals+2400, %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB162_26
# BB#25:                                # %if.then.102
	movq	globals+2400, %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -64(%rbp)
	movq	globals+2400, %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -68(%rbp)
	jmp	.LBB162_29
.LBB162_26:                             # %if.else.111
	movq	globals+2400, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB162_28
# BB#27:                                # %if.then.117
	movq	globals+2400, %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -68(%rbp)
	movl	%ecx, -64(%rbp)
.LBB162_28:                             # %if.end.120
	jmp	.LBB162_29
.LBB162_29:                             # %if.end.121
	jmp	.LBB162_30
.LBB162_30:                             # %if.end.122
	movb	$0, -57(%rbp)
	movb	$0, -56(%rbp)
	movb	$0, -55(%rbp)
	movb	$0, -54(%rbp)
	movq	-40(%rbp), %rax
	movq	176(%rax), %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB162_32
# BB#31:                                # %if.then.129
	movl	-52(%rbp), %eax
	addl	-64(%rbp), %eax
	movl	-84(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -84(%rbp)
	movb	$1, -56(%rbp)
.LBB162_32:                             # %if.end.132
	movq	-40(%rbp), %rax
	movq	176(%rax), %rax
	shrq	$16, %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB162_34
# BB#33:                                # %if.then.140
	movl	-52(%rbp), %eax
	addl	-68(%rbp), %eax
	movl	-88(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -88(%rbp)
	movb	$1, -54(%rbp)
.LBB162_34:                             # %if.end.143
	movq	-40(%rbp), %rax
	movq	176(%rax), %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movq	176(%rax), %rax
	shrq	$32, %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %edx
	addl	%edx, %ecx
	movq	-40(%rbp), %rax
	movq	160(%rax), %rax
	cmpl	92(%rax), %ecx
	jne	.LBB162_36
# BB#35:                                # %if.then.157
	movl	-52(%rbp), %eax
	addl	-64(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
	movb	$1, -57(%rbp)
.LBB162_36:                             # %if.end.160
	movq	-40(%rbp), %rax
	movq	176(%rax), %rax
	shrq	$16, %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movq	176(%rax), %rax
	shrq	$48, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movq	-40(%rbp), %rax
	movq	160(%rax), %rax
	cmpl	96(%rax), %ecx
	jne	.LBB162_38
# BB#37:                                # %if.then.174
	movl	-52(%rbp), %eax
	addl	-68(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
	movb	$1, -55(%rbp)
.LBB162_38:                             # %if.end.177
	movq	-40(%rbp), %rdi
	callq	x_setup_relief_colors
	leaq	-80(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	get_glyph_string_clip_rect
	leaq	-80(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	-84(%rbp), %eax
	movl	-88(%rbp), %edx
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %r8d
	movl	-52(%rbp), %r9d
	movb	-53(%rbp), %r10b
	movb	-54(%rbp), %r11b
	movb	-55(%rbp), %bl
	movb	-56(%rbp), %r14b
	movb	-57(%rbp), %r15b
	andb	$1, %r10b
	andb	$1, %r11b
	andb	$1, %bl
	andb	$1, %r14b
	andb	$1, %r15b
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movzbl	%r10b, %eax
	movl	%eax, (%rsp)
	movzbl	%r11b, %eax
	movl	%eax, 8(%rsp)
	movzbl	%bl, %eax
	movl	%eax, 16(%rsp)
	movzbl	%r14b, %eax
	movl	%eax, 24(%rsp)
	movzbl	%r15b, %eax
	movl	%eax, 32(%rsp)
	movq	-120(%rbp), %r12        # 8-byte Reload
	movq	%r12, 40(%rsp)
	callq	x_draw_relief_rect
	addq	$144, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end162:
	.size	x_draw_image_relief, .Lfunc_end162-x_draw_image_relief
	.cfi_endproc

	.align	16, 0x90
	.type	x_draw_rectangle,@function
x_draw_rectangle:                       # @x_draw_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp535:
	.cfi_def_cfa_offset 16
.Ltmp536:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp537:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	16(%rsi), %rdi
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	56(%rsi), %rsi
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movl	-28(%rbp), %r9d
	movl	-32(%rbp), %eax
	movl	%eax, (%rsp)
	callq	XDrawRectangle
	movl	%eax, -36(%rbp)         # 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end163:
	.size	x_draw_rectangle, .Lfunc_end163-x_draw_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	x_draw_hollow_cursor,@function
x_draw_hollow_cursor:                   # @x_draw_hollow_cursor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp538:
	.cfi_def_cfa_offset 16
.Ltmp539:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp540:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	subq	$5, %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	16(%rsi), %rsi
	movq	%rsi, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	get_phys_cursor_glyph
	movq	%rax, -192(%rbp)
	cmpq	$0, -192(%rbp)
	jne	.LBB164_2
# BB#1:                                 # %if.then
	jmp	.LBB164_11
.LBB164_2:                              # %if.end
	leaq	-44(%rbp), %rcx
	leaq	-48(%rbp), %r8
	leaq	-56(%rbp), %r9
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-192(%rbp), %rdx
	callq	get_phys_cursor_geometry
	movq	-8(%rbp), %rcx
	movl	408(%rcx), %eax
	subl	$1, %eax
	movl	%eax, -52(%rbp)
	movq	-24(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	248(%rcx), %rcx
	movq	%rcx, -168(%rbp)
	movq	-32(%rbp), %rcx
	cmpq	$0, 176(%rcx)
	je	.LBB164_4
# BB#3:                                 # %if.then.8
	movl	$4, %eax
	movl	%eax, %edx
	leaq	-184(%rbp), %rcx
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	176(%rsi), %rsi
	callq	XChangeGC
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jmp	.LBB164_5
.LBB164_4:                              # %if.else
	movl	$4, %eax
	movl	%eax, %edx
	leaq	-184(%rbp), %rcx
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	56(%rsi), %rsi
	callq	XCreateGC
	movq	-32(%rbp), %rcx
	movq	%rax, 176(%rcx)
.LBB164_5:                              # %if.end.15
	movq	-32(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-192(%rbp), %rax
	movl	24(%rax), %ecx
	shrl	$10, %ecx
	andl	$127, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB164_10
# BB#6:                                 # %land.lhs.true
	movq	-192(%rbp), %rax
	movswl	16(%rax), %ecx
	cmpl	-52(%rbp), %ecx
	jle	.LBB164_10
# BB#7:                                 # %if.then.20
	movq	-192(%rbp), %rax
	movswl	16(%rax), %ecx
	subl	-52(%rbp), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$0, -52(%rbp)
	jle	.LBB164_9
# BB#8:                                 # %if.then.26
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -52(%rbp)
.LBB164_9:                              # %if.end.28
	jmp	.LBB164_10
.LBB164_10:                             # %if.end.29
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-200(%rbp), %rcx
	callq	x_clip_to_row
	movq	-24(%rbp), %rdi
	movq	-200(%rbp), %rsi
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-52(%rbp), %r8d
	movl	-56(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %r9d
	callq	x_draw_rectangle
	movq	-24(%rbp), %rdi
	movq	-200(%rbp), %rsi
	callq	x_reset_clip_rectangles
.LBB164_11:                             # %return
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end164:
	.size	x_draw_hollow_cursor, .Lfunc_end164-x_draw_hollow_cursor
	.cfi_endproc

	.align	16, 0x90
	.type	x_draw_bar_cursor,@function
x_draw_bar_cursor:                      # @x_draw_bar_cursor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp541:
	.cfi_def_cfa_offset 16
.Ltmp542:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp543:
	.cfi_def_cfa_register %rbp
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	subq	$5, %rsi
	movq	%rsi, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	get_phys_cursor_glyph
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB165_2
# BB#1:                                 # %if.then
	jmp	.LBB165_36
.LBB165_2:                              # %if.end
	movq	-40(%rbp), %rax
	movl	24(%rax), %ecx
	andl	$7, %ecx
	cmpl	$5, %ecx
	jne	.LBB165_4
# BB#3:                                 # %if.then.2
	jmp	.LBB165_36
.LBB165_4:                              # %if.end.3
	movq	-40(%rbp), %rax
	movl	24(%rax), %ecx
	andl	$7, %ecx
	cmpl	$3, %ecx
	jne	.LBB165_6
# BB#5:                                 # %if.then.8
	movl	$2, %edx
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movslq	380(%rcx), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	draw_phys_cursor_glyph
	jmp	.LBB165_36
.LBB165_6:                              # %if.else
	movb	$1, %al
	movq	-32(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movq	-32(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	56(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	movq	-32(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	176(%rcx), %rcx
	movq	%rcx, -72(%rbp)
	movq	$65548, -80(%rbp)       # imm = 0x1000C
	testb	$1, %al
	jne	.LBB165_7
	jmp	.LBB165_8
.LBB165_7:                              # %cond.true
	movq	-40(%rbp), %rax
	movl	28(%rax), %ecx
	andl	$1048575, %ecx          # imm = 0xFFFFF
	addl	$0, %ecx
	movq	-32(%rbp), %rax
	movq	160(%rax), %rax
	movl	32(%rax), %edx
	addl	$0, %edx
	cmpl	%edx, %ecx
	jb	.LBB165_9
	jmp	.LBB165_10
.LBB165_8:                              # %cond.false
	movq	-40(%rbp), %rax
	movl	28(%rax), %ecx
	andl	$1048575, %ecx          # imm = 0xFFFFF
	movl	%ecx, %ecx
	movl	%ecx, %eax
	addq	$0, %rax
	movq	-32(%rbp), %rdx
	movq	160(%rdx), %rdx
	movslq	32(%rdx), %rdx
	addq	$0, %rdx
	cmpq	%rdx, %rax
	jae	.LBB165_10
.LBB165_9:                              # %cond.true.28
	movq	-40(%rbp), %rax
	movl	28(%rax), %ecx
	andl	$1048575, %ecx          # imm = 0xFFFFF
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-32(%rbp), %rdx
	movq	160(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	(%rdx,%rax,8), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB165_11
.LBB165_10:                             # %cond.false.33
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	jmp	.LBB165_11
.LBB165_11:                             # %cond.end
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	184(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	384(%rcx), %rcx
	cmpq	248(%rcx), %rax
	jne	.LBB165_13
# BB#12:                                # %if.then.38
	movq	-88(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	%rax, -192(%rbp)
	jmp	.LBB165_14
.LBB165_13:                             # %if.else.41
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	248(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	%rax, -192(%rbp)
.LBB165_14:                             # %if.end.47
	movl	$0, -116(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB165_16
# BB#15:                                # %if.then.48
	leaq	-216(%rbp), %rcx
	movq	-56(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-80(%rbp), %rdx
	callq	XChangeGC
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jmp	.LBB165_17
.LBB165_16:                             # %if.else.50
	leaq	-216(%rbp), %rcx
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-80(%rbp), %rdx
	callq	XCreateGC
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	%rax, 176(%rcx)
.LBB165_17:                             # %if.end.56
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-72(%rbp), %rcx
	callq	x_clip_to_row
	cmpl	$2, -24(%rbp)
	jne	.LBB165_26
# BB#18:                                # %if.then.59
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	window_box_left
	movq	-8(%rbp), %rdi
	addl	368(%rdi), %eax
	movl	%eax, -220(%rbp)
	cmpl	$0, -20(%rbp)
	jge	.LBB165_20
# BB#19:                                # %if.then.67
	movq	-32(%rbp), %rax
	movl	408(%rax), %ecx
	movl	%ecx, -20(%rbp)
.LBB165_20:                             # %if.end.68
	movq	-40(%rbp), %rax
	movswl	16(%rax), %ecx
	cmpl	-20(%rbp), %ecx
	jge	.LBB165_22
# BB#21:                                # %cond.true.72
	movq	-40(%rbp), %rax
	movswl	16(%rax), %ecx
	movl	%ecx, -256(%rbp)        # 4-byte Spill
	jmp	.LBB165_23
.LBB165_22:                             # %cond.false.75
	movl	-20(%rbp), %eax
	movl	%eax, -256(%rbp)        # 4-byte Spill
.LBB165_23:                             # %cond.end.76
	movl	-256(%rbp), %eax        # 4-byte Reload
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 408(%rcx)
	movq	-40(%rbp), %rcx
	movl	24(%rcx), %eax
	shrl	$10, %eax
	andl	$127, %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB165_25
# BB#24:                                # %if.then.82
	movq	-40(%rbp), %rax
	movswl	16(%rax), %ecx
	subl	-20(%rbp), %ecx
	addl	-220(%rbp), %ecx
	movl	%ecx, -220(%rbp)
.LBB165_25:                             # %if.end.87
	movq	-32(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	-220(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	372(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	332(%rax), %r8d
	movq	-8(%rbp), %rax
	addl	244(%rax), %r8d
	addl	%r8d, %ecx
	movl	-20(%rbp), %r8d
	movq	-16(%rbp), %rax
	movl	60(%rax), %r9d
	callq	x_fill_rectangle
	jmp	.LBB165_35
.LBB165_26:                             # %if.else.93
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	window_box_left
	movq	-8(%rbp), %rdi
	addl	368(%rdi), %eax
	movl	%eax, -236(%rbp)
	cmpl	$0, -20(%rbp)
	jge	.LBB165_28
# BB#27:                                # %if.then.101
	movq	-16(%rbp), %rax
	movl	60(%rax), %ecx
	movl	%ecx, -20(%rbp)
.LBB165_28:                             # %if.end.103
	movq	-16(%rbp), %rax
	movl	60(%rax), %ecx
	cmpl	-20(%rbp), %ecx
	jge	.LBB165_30
# BB#29:                                # %cond.true.107
	movq	-16(%rbp), %rax
	movl	60(%rax), %ecx
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	jmp	.LBB165_31
.LBB165_30:                             # %cond.false.109
	movl	-20(%rbp), %eax
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB165_31:                             # %cond.end.110
	movl	-260(%rbp), %eax        # 4-byte Reload
	leaq	-224(%rbp), %rcx
	leaq	-228(%rbp), %r8
	leaq	-232(%rbp), %r9
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	get_phys_cursor_geometry
	movq	-40(%rbp), %rcx
	movl	24(%rcx), %eax
	shrl	$10, %eax
	andl	$127, %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB165_34
# BB#32:                                # %land.lhs.true
	movq	-40(%rbp), %rax
	movswl	16(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	408(%rax), %edx
	subl	$1, %edx
	cmpl	%edx, %ecx
	jle	.LBB165_34
# BB#33:                                # %if.then.125
	movq	-40(%rbp), %rax
	movswl	16(%rax), %ecx
	movq	-8(%rbp), %rax
	subl	408(%rax), %ecx
	addl	$1, %ecx
	addl	-236(%rbp), %ecx
	movl	%ecx, -236(%rbp)
.LBB165_34:                             # %if.end.132
	movq	-32(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	-236(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	372(%rax), %ecx
	movq	-16(%rbp), %rax
	addl	60(%rax), %ecx
	subl	-20(%rbp), %ecx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	332(%rax), %r8d
	movq	-8(%rbp), %rax
	addl	244(%rax), %r8d
	addl	%r8d, %ecx
	movq	-8(%rbp), %rax
	movl	408(%rax), %r8d
	subl	$1, %r8d
	movl	-20(%rbp), %r9d
	callq	x_fill_rectangle
.LBB165_35:                             # %if.end.146
	movq	-32(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	x_reset_clip_rectangles
.LBB165_36:                             # %if.end.147
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end165:
	.size	x_draw_bar_cursor, .Lfunc_end165-x_draw_bar_cursor
	.cfi_endproc

	.align	16, 0x90
	.type	x_clear_window,@function
x_clear_window:                         # @x_clear_window
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp544:
	.cfi_def_cfa_offset 16
.Ltmp545:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp546:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	16(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rsi
	callq	XClearWindow
	movl	%eax, -12(%rbp)         # 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end166:
	.size	x_clear_window, .Lfunc_end166-x_clear_window
	.cfi_endproc

	.align	16, 0x90
	.type	x_scroll_bar_clear,@function
x_scroll_bar_clear:                     # @x_scroll_bar_clear
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp547:
	.cfi_def_cfa_offset 16
.Ltmp548:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp549:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end167:
	.size	x_scroll_bar_clear, .Lfunc_end167-x_scroll_bar_clear
	.cfi_endproc

	.align	16, 0x90
	.type	XTflash,@function
XTflash:                                # @XTflash
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp550:
	.cfi_def_cfa_offset 16
.Ltmp551:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp552:
	.cfi_def_cfa_register %rbp
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -8(%rbp)
	callq	block_input
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	88(%rdi), %rdi
	callq	gtk_widget_get_window
	leaq	-120(%rbp), %rsi
	movl	$9, %edx
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	480(%rax), %rax
	movq	-8(%rbp), %rdi
	xorq	472(%rdi), %rax
	movl	%eax, %ecx
	movl	%ecx, -120(%rbp)
	movl	$2, -88(%rbp)
	movq	-16(%rbp), %rdi
	callq	gdk_gc_new_with_values
	movq	%rax, -128(%rbp)
	movq	-8(%rbp), %rax
	movl	316(%rax), %ecx
	movl	%ecx, -132(%rbp)
	movq	-8(%rbp), %rax
	movl	368(%rax), %ecx
	movl	%ecx, -136(%rbp)
	movq	-8(%rbp), %rax
	movl	332(%rax), %ecx
	movl	%ecx, -140(%rbp)
	movq	-8(%rbp), %rax
	movl	312(%rax), %ecx
	movq	-8(%rbp), %rax
	subl	332(%rax), %ecx
	movl	%ecx, -144(%rbp)
	movl	-144(%rbp), %ecx
	subl	-140(%rbp), %ecx
	movl	%ecx, -148(%rbp)
	movl	-132(%rbp), %ecx
	movq	-8(%rbp), %rax
	imull	$3, 368(%rax), %edx
	cmpl	%edx, %ecx
	jle	.LBB168_2
# BB#1:                                 # %if.then
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movl	-140(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	332(%rax), %r8d
	movq	-8(%rbp), %rax
	movl	360(%rax), %r9d
	movq	-8(%rbp), %rax
	addl	220(%rax), %r9d
	addl	%r9d, %r8d
	movl	-148(%rbp), %r9d
	movl	-136(%rbp), %r10d
	movl	%r10d, (%rsp)
	callq	gdk_draw_rectangle
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movl	-140(%rbp), %ecx
	movl	-132(%rbp), %r8d
	subl	-136(%rbp), %r8d
	movq	-8(%rbp), %rax
	subl	332(%rax), %r8d
	movl	-148(%rbp), %r9d
	movl	-136(%rbp), %r10d
	movl	%r10d, (%rsp)
	callq	gdk_draw_rectangle
	jmp	.LBB168_3
.LBB168_2:                              # %if.else
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movl	-140(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	332(%rax), %r8d
	movl	-148(%rbp), %r9d
	movl	-132(%rbp), %r10d
	movq	-8(%rbp), %rax
	movl	332(%rax), %r11d
	shll	$1, %r11d
	subl	%r11d, %r10d
	movl	%r10d, (%rsp)
	callq	gdk_draw_rectangle
.LBB168_3:                              # %if.end
	movq	-8(%rbp), %rdi
	callq	x_flush
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$150000000, %eax        # imm = 0x8F0D180
	movl	%eax, %esi
	callq	make_timespec
	movq	%rax, -168(%rbp)
	movq	%rdx, -160(%rbp)
	callq	current_timespec
	movq	%rax, -200(%rbp)
	movq	%rdx, -192(%rbp)
	movq	-200(%rbp), %rdi
	movq	-192(%rbp), %rsi
	movq	-168(%rbp), %rdx
	movq	-160(%rbp), %rcx
	callq	timespec_add
	movq	%rax, -184(%rbp)
	movq	%rdx, -176(%rbp)
.LBB168_4:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	callq	detect_input_pending
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB168_5
	jmp	.LBB168_8
.LBB168_5:                              # %while.body
                                        #   in Loop: Header=BB168_4 Depth=1
	callq	current_timespec
	movq	%rax, -216(%rbp)
	movq	%rdx, -208(%rbp)
	movq	-184(%rbp), %rdi
	movq	-176(%rbp), %rsi
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rcx
	callq	timespec_cmp
	cmpl	$0, %eax
	jg	.LBB168_7
# BB#6:                                 # %if.then.23
	jmp	.LBB168_8
.LBB168_7:                              # %if.end.24
                                        #   in Loop: Header=BB168_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$10000000, %eax         # imm = 0x989680
	movl	%eax, %esi
	callq	make_timespec
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-232(%rbp), %r8
	movq	%rax, -248(%rbp)
	movq	%rdx, -240(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -232(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	%rsi, -256(%rbp)        # 8-byte Spill
	movq	-256(%rbp), %rdx        # 8-byte Reload
	movq	-256(%rbp), %rcx        # 8-byte Reload
	movq	-256(%rbp), %r9         # 8-byte Reload
	callq	pselect
	movl	%eax, -260(%rbp)        # 4-byte Spill
	jmp	.LBB168_4
.LBB168_8:                              # %while.end
	movl	-132(%rbp), %eax
	movq	-8(%rbp), %rcx
	imull	$3, 368(%rcx), %edx
	cmpl	%edx, %eax
	jle	.LBB168_10
# BB#9:                                 # %if.then.31
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movl	-140(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	332(%rax), %r8d
	movq	-8(%rbp), %rax
	movl	360(%rax), %r9d
	movq	-8(%rbp), %rax
	addl	220(%rax), %r9d
	addl	%r9d, %r8d
	movl	-148(%rbp), %r9d
	movl	-136(%rbp), %r10d
	movl	%r10d, (%rsp)
	callq	gdk_draw_rectangle
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movl	-140(%rbp), %ecx
	movl	-132(%rbp), %r8d
	subl	-136(%rbp), %r8d
	movq	-8(%rbp), %rax
	subl	332(%rax), %r8d
	movl	-148(%rbp), %r9d
	movl	-136(%rbp), %r10d
	movl	%r10d, (%rsp)
	callq	gdk_draw_rectangle
	jmp	.LBB168_11
.LBB168_10:                             # %if.else.40
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movl	-140(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	332(%rax), %r8d
	movl	-148(%rbp), %r9d
	movl	-132(%rbp), %r10d
	movq	-8(%rbp), %rax
	movl	332(%rax), %r11d
	shll	$1, %r11d
	subl	%r11d, %r10d
	movl	%r10d, (%rsp)
	callq	gdk_draw_rectangle
.LBB168_11:                             # %if.end.45
	movl	$80, %eax
	movl	%eax, %esi
	movq	-128(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rdi
	callq	x_flush
	callq	unblock_input
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end168:
	.size	XTflash, .Lfunc_end168-XTflash
	.cfi_endproc

	.align	16, 0x90
	.type	x_raise_frame,@function
x_raise_frame:                          # @x_raise_frame
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp553:
	.cfi_def_cfa_offset 16
.Ltmp554:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp555:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	callq	block_input
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rdi
	shrq	$10, %rdi
	andq	$3, %rdi
	movl	%edi, %eax
	cmpl	$0, %eax
	je	.LBB169_9
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	je	.LBB169_7
# BB#2:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	je	.LBB169_5
# BB#3:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	cmpq	$0, %rax
	je	.LBB169_5
# BB#4:                                 # %cond.true.12
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_x11_drawable_get_xid
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB169_6
.LBB169_5:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	jmp	.LBB169_6
.LBB169_6:                              # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB169_8
.LBB169_7:                              # %cond.false.18
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB169_8:                              # %cond.end.21
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	XRaiseWindow
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB169_9:                              # %if.end
	callq	unblock_input
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end169:
	.size	x_raise_frame, .Lfunc_end169-x_raise_frame
	.cfi_endproc

	.align	16, 0x90
	.type	x_horizontal_scroll_bar_report_motion,@function
x_horizontal_scroll_bar_report_motion:  # @x_horizontal_scroll_bar_report_motion
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp556:
	.cfi_def_cfa_offset 16
.Ltmp557:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp558:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %rcx
	movq	656(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	movq	-64(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rcx, -72(%rbp)
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, -80(%rbp)
	callq	block_input
	leaq	-96(%rbp), %rax
	leaq	-100(%rbp), %rcx
	leaq	-84(%rbp), %rdx
	leaq	-88(%rbp), %rsi
	leaq	-104(%rbp), %rdi
	movq	-80(%rbp), %r8
	movq	384(%r8), %r8
	movq	424(%r8), %r8
	movq	16(%r8), %r8
	movq	-72(%rbp), %r9
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	%r9, %rsi
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-144(%rbp), %r8         # 8-byte Reload
	movq	-144(%rbp), %r9         # 8-byte Reload
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r10, 16(%rsp)
	callq	XQueryPointer
	cmpl	$0, %eax
	je	.LBB170_17
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movl	48(%rax), %ecx
	subl	$2, %ecx
	subl	$2, %ecx
	subl	$5, %ecx
	movl	%ecx, -108(%rbp)
	movl	-84(%rbp), %ecx
	subl	$2, %ecx
	movl	%ecx, -84(%rbp)
	movq	-64(%rbp), %rax
	cmpl	$-1, 64(%rax)
	je	.LBB170_3
# BB#2:                                 # %if.then.10
	movq	-64(%rbp), %rax
	movl	64(%rax), %ecx
	movl	-84(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -84(%rbp)
.LBB170_3:                              # %if.end
	cmpl	$0, -84(%rbp)
	jge	.LBB170_5
# BB#4:                                 # %if.then.14
	movl	$0, -84(%rbp)
.LBB170_5:                              # %if.end.15
	movl	-84(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jle	.LBB170_7
# BB#6:                                 # %if.then.17
	movl	-108(%rbp), %eax
	movl	%eax, -84(%rbp)
.LBB170_7:                              # %if.end.18
	movq	-80(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rax
	cmpl	$-1, 64(%rax)
	je	.LBB170_9
# BB#8:                                 # %if.then.22
	movq	-24(%rbp), %rax
	movl	$11, (%rax)
	jmp	.LBB170_16
.LBB170_9:                              # %if.else
	movl	-84(%rbp), %eax
	movq	-64(%rbp), %rcx
	cmpl	56(%rcx), %eax
	jge	.LBB170_11
# BB#10:                                # %if.then.24
	movq	-24(%rbp), %rax
	movl	$10, (%rax)
	jmp	.LBB170_15
.LBB170_11:                             # %if.else.25
	movl	-84(%rbp), %eax
	movq	-64(%rbp), %rcx
	movl	60(%rcx), %edx
	addl	$5, %edx
	cmpl	%edx, %eax
	jge	.LBB170_13
# BB#12:                                # %if.then.27
	movq	-24(%rbp), %rax
	movl	$2, (%rax)
	jmp	.LBB170_14
.LBB170_13:                             # %if.else.28
	movq	-24(%rbp), %rax
	movl	$12, (%rax)
.LBB170_14:                             # %if.end.29
	jmp	.LBB170_15
.LBB170_15:                             # %if.end.30
	jmp	.LBB170_16
.LBB170_16:                             # %if.end.31
	movslq	-84(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movslq	-108(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-80(%rbp), %rax
	movq	208(%rax), %rcx
	andq	$-1048577, %rcx         # imm = 0xFFFFFFFFFFEFFFFF
	movq	%rcx, 208(%rax)
	movq	-56(%rbp), %rax
	movq	$0, 656(%rax)
	movq	-56(%rbp), %rax
	movq	688(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB170_17:                             # %if.end.37
	callq	unblock_input
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end170:
	.size	x_horizontal_scroll_bar_report_motion, .Lfunc_end170-x_horizontal_scroll_bar_report_motion
	.cfi_endproc

	.align	16, 0x90
	.type	x_scroll_bar_report_motion,@function
x_scroll_bar_report_motion:             # @x_scroll_bar_report_motion
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp559:
	.cfi_def_cfa_offset 16
.Ltmp560:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp561:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %rcx
	movq	656(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	movq	-64(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rcx, -72(%rbp)
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, -80(%rbp)
	callq	block_input
	leaq	-96(%rbp), %rax
	leaq	-100(%rbp), %rcx
	leaq	-84(%rbp), %rdx
	leaq	-88(%rbp), %rsi
	leaq	-104(%rbp), %rdi
	movq	-80(%rbp), %r8
	movq	384(%r8), %r8
	movq	424(%r8), %r8
	movq	16(%r8), %r8
	movq	-72(%rbp), %r9
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	%r9, %rsi
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-144(%rbp), %r8         # 8-byte Reload
	movq	-144(%rbp), %r9         # 8-byte Reload
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r10, 16(%rsp)
	callq	XQueryPointer
	cmpl	$0, %eax
	je	.LBB171_17
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movl	52(%rax), %ecx
	subl	$2, %ecx
	subl	$2, %ecx
	subl	$5, %ecx
	movl	%ecx, -108(%rbp)
	movl	-88(%rbp), %ecx
	subl	$2, %ecx
	movl	%ecx, -88(%rbp)
	movq	-64(%rbp), %rax
	cmpl	$-1, 64(%rax)
	je	.LBB171_3
# BB#2:                                 # %if.then.10
	movq	-64(%rbp), %rax
	movl	64(%rax), %ecx
	movl	-88(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -88(%rbp)
.LBB171_3:                              # %if.end
	cmpl	$0, -88(%rbp)
	jge	.LBB171_5
# BB#4:                                 # %if.then.14
	movl	$0, -88(%rbp)
.LBB171_5:                              # %if.end.15
	movl	-88(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jle	.LBB171_7
# BB#6:                                 # %if.then.17
	movl	-108(%rbp), %eax
	movl	%eax, -88(%rbp)
.LBB171_7:                              # %if.end.18
	movq	-80(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rax
	cmpl	$-1, 64(%rax)
	je	.LBB171_9
# BB#8:                                 # %if.then.22
	movq	-24(%rbp), %rax
	movl	$2, (%rax)
	jmp	.LBB171_16
.LBB171_9:                              # %if.else
	movl	-88(%rbp), %eax
	movq	-64(%rbp), %rcx
	cmpl	56(%rcx), %eax
	jge	.LBB171_11
# BB#10:                                # %if.then.24
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
	jmp	.LBB171_15
.LBB171_11:                             # %if.else.25
	movl	-88(%rbp), %eax
	movq	-64(%rbp), %rcx
	movl	60(%rcx), %edx
	addl	$5, %edx
	cmpl	%edx, %eax
	jge	.LBB171_13
# BB#12:                                # %if.then.27
	movq	-24(%rbp), %rax
	movl	$2, (%rax)
	jmp	.LBB171_14
.LBB171_13:                             # %if.else.28
	movq	-24(%rbp), %rax
	movl	$3, (%rax)
.LBB171_14:                             # %if.end.29
	jmp	.LBB171_15
.LBB171_15:                             # %if.end.30
	jmp	.LBB171_16
.LBB171_16:                             # %if.end.31
	movslq	-88(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movslq	-108(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-80(%rbp), %rax
	movq	208(%rax), %rcx
	andq	$-1048577, %rcx         # imm = 0xFFFFFFFFFFEFFFFF
	movq	%rcx, 208(%rax)
	movq	-56(%rbp), %rax
	movq	$0, 656(%rax)
	movq	-56(%rbp), %rax
	movq	688(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB171_17:                             # %if.end.37
	callq	unblock_input
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end171:
	.size	x_scroll_bar_report_motion, .Lfunc_end171-x_scroll_bar_report_motion
	.cfi_endproc

	.align	16, 0x90
	.type	x_scroll_bar_create,@function
x_scroll_bar_create:                    # @x_scroll_bar_create
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp562:
	.cfi_def_cfa_offset 16
.Ltmp563:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp564:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movb	%r9b, %al
	movl	$8, %r9d
	movl	$3, %r10d
	movl	$11, %r11d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	andb	$1, %al
	movb	%al, -25(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	subq	$5, %rdi
	movq	%rdi, -40(%rbp)
	movl	%r9d, %edi
	movl	%r10d, %esi
	movl	%r10d, %edx
	movl	%r11d, %ecx
	callq	allocate_pseudovector
	movq	%rax, -48(%rbp)
	callq	block_input
	testb	$1, -25(%rbp)
	je	.LBB172_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	x_create_horizontal_toolkit_scroll_bar
	jmp	.LBB172_3
.LBB172_2:                              # %if.else
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	x_create_toolkit_scroll_bar
.LBB172_3:                              # %if.end
	movl	$5, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	xorl	%edi, %edi
	movq	-48(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movl	-12(%rbp), %esi
	movq	-48(%rbp), %rax
	movl	%esi, 40(%rax)
	movl	-16(%rbp), %esi
	movq	-48(%rbp), %rax
	movl	%esi, 44(%rax)
	movl	-20(%rbp), %esi
	movq	-48(%rbp), %rax
	movl	%esi, 48(%rax)
	movl	-24(%rbp), %esi
	movq	-48(%rbp), %rax
	movl	%esi, 52(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 56(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 60(%rax)
	movq	-48(%rbp), %rax
	movl	$-1, 64(%rax)
	movb	-25(%rbp), %dl
	movq	-48(%rbp), %rax
	andb	$1, %dl
	movb	%dl, 68(%rax)
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 16(%rcx)
	callq	builtin_lisp_symbol
	movl	$5, %esi
	movq	-48(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	fset_scroll_bars
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB172_5
# BB#4:                                 # %if.then.13
	movl	$5, %esi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	-48(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	XVECTOR
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rdi, 24(%rax)
.LBB172_5:                              # %if.end.18
	testb	$1, -25(%rbp)
	je	.LBB172_10
# BB#6:                                 # %if.then.20
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	32(%rax), %rsi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	-20(%rbp), %r8d
	cmpl	$1, -24(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movl	%edx, -92(%rbp)         # 4-byte Spill
	movl	%ecx, -96(%rbp)         # 4-byte Spill
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	jle	.LBB172_8
# BB#7:                                 # %cond.true
	movl	-24(%rbp), %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB172_9
.LBB172_8:                              # %cond.false
	movl	$1, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB172_9
.LBB172_9:                              # %cond.end
	movl	-104(%rbp), %eax        # 4-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movl	-92(%rbp), %edx         # 4-byte Reload
	movl	-96(%rbp), %ecx         # 4-byte Reload
	movl	-100(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	callq	xg_update_horizontal_scrollbar_pos
	jmp	.LBB172_14
.LBB172_10:                             # %if.else.22
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	32(%rax), %rsi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	-20(%rbp), %r8d
	cmpl	$1, -24(%rbp)
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movl	%edx, -124(%rbp)        # 4-byte Spill
	movl	%ecx, -128(%rbp)        # 4-byte Spill
	movl	%r8d, -132(%rbp)        # 4-byte Spill
	jle	.LBB172_12
# BB#11:                                # %cond.true.25
	movl	-24(%rbp), %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB172_13
.LBB172_12:                             # %cond.false.26
	movl	$1, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB172_13
.LBB172_13:                             # %cond.end.27
	movl	-136(%rbp), %eax        # 4-byte Reload
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movl	-124(%rbp), %edx        # 4-byte Reload
	movl	-128(%rbp), %ecx        # 4-byte Reload
	movl	-132(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	callq	xg_update_scrollbar_pos
.LBB172_14:                             # %if.end.29
	callq	unblock_input
	movq	-48(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end172:
	.size	x_scroll_bar_create, .Lfunc_end172-x_scroll_bar_create
	.cfi_endproc

	.align	16, 0x90
	.type	x_set_toolkit_scroll_bar_thumb,@function
x_set_toolkit_scroll_bar_thumb:         # @x_set_toolkit_scroll_bar_thumb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp565:
	.cfi_def_cfa_offset 16
.Ltmp566:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp567:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	callq	xg_set_toolkit_scroll_bar_thumb
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end173:
	.size	x_set_toolkit_scroll_bar_thumb, .Lfunc_end173-x_set_toolkit_scroll_bar_thumb
	.cfi_endproc

	.align	16, 0x90
	.type	x_create_horizontal_toolkit_scroll_bar,@function
x_create_horizontal_toolkit_scroll_bar: # @x_create_horizontal_toolkit_scroll_bar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp568:
	.cfi_def_cfa_offset 16
.Ltmp569:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp570:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$.L.str.395, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, -24(%rbp)
	callq	block_input
	movabsq	$xg_scroll_callback, %rax
	movabsq	$xg_end_scroll_callback, %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %r8
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rax, %rdx
	movq	-32(%rbp), %rcx         # 8-byte Reload
	callq	xg_create_horizontal_scroll_bar
	callq	unblock_input
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end174:
	.size	x_create_horizontal_toolkit_scroll_bar, .Lfunc_end174-x_create_horizontal_toolkit_scroll_bar
	.cfi_endproc

	.align	16, 0x90
	.type	x_create_toolkit_scroll_bar,@function
x_create_toolkit_scroll_bar:            # @x_create_toolkit_scroll_bar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp571:
	.cfi_def_cfa_offset 16
.Ltmp572:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp573:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$.L.str.397, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, -24(%rbp)
	callq	block_input
	movabsq	$xg_scroll_callback, %rax
	movabsq	$xg_end_scroll_callback, %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %r8
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rax, %rdx
	movq	-32(%rbp), %rcx         # 8-byte Reload
	callq	xg_create_scroll_bar
	callq	unblock_input
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end175:
	.size	x_create_toolkit_scroll_bar, .Lfunc_end175-x_create_toolkit_scroll_bar
	.cfi_endproc

	.align	16, 0x90
	.type	xg_scroll_callback,@function
xg_scroll_callback:                     # @xg_scroll_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp574:
	.cfi_def_cfa_offset 16
.Ltmp575:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp576:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	movq	-40(%rbp), %rdx
	movq	%rdx, -56(%rbp)
	movl	$0, -60(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_range_get_adjustment
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.396, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -80(%rbp)
	testb	$1, xg_ignore_gtk_scrollbar
	je	.LBB176_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB176_24
.LBB176_2:                              # %if.end
	movl	-20(%rbp), %eax
	decl	%eax
	movl	%eax, %ecx
	subl	$4, %eax
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movl	%eax, -100(%rbp)        # 4-byte Spill
	ja	.LBB176_20
# BB#25:                                # %if.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	.LJTI176_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB176_3:                              # %sw.bb
	movq	-80(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	cmpl	$0, 92(%rax)
	je	.LBB176_15
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	cmpl	$16, 92(%rax)
	jge	.LBB176_15
# BB#5:                                 # %if.then.10
	movq	-56(%rbp), %rax
	testb	$1, 68(%rax)
	je	.LBB176_10
# BB#6:                                 # %if.then.12
	movl	$11, -60(%rbp)
	movq	-72(%rbp), %rdi
	callq	gtk_adjustment_get_upper
	movq	-72(%rbp), %rdi
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_page_size
	movsd	-112(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -44(%rbp)
	cvttsd2si	-32(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB176_8
# BB#7:                                 # %cond.true
	cvttsd2si	-32(%rbp), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB176_9
.LBB176_8:                              # %cond.false
	movl	-44(%rbp), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB176_9:                              # %cond.end
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, 64(%rcx)
	jmp	.LBB176_14
.LBB176_10:                             # %if.else
	movl	$2, -60(%rbp)
	movq	-72(%rbp), %rdi
	callq	gtk_adjustment_get_upper
	movq	-72(%rbp), %rdi
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_page_size
	movsd	-128(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -44(%rbp)
	cvttsd2si	-32(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB176_12
# BB#11:                                # %cond.true.26
	cvttsd2si	-32(%rbp), %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB176_13
.LBB176_12:                             # %cond.false.28
	movl	-44(%rbp), %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB176_13:                             # %cond.end.29
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, 64(%rcx)
.LBB176_14:                             # %if.end.32
	jmp	.LBB176_15
.LBB176_15:                             # %if.end.33
	jmp	.LBB176_21
.LBB176_16:                             # %sw.bb.34
	movl	$4, %eax
	movl	$13, %ecx
	movq	-56(%rbp), %rdx
	movb	68(%rdx), %sil
	testb	$1, %sil
	cmovnel	%ecx, %eax
	movl	%eax, -60(%rbp)
	movq	-56(%rbp), %rdx
	movl	$-1, 64(%rdx)
	jmp	.LBB176_21
.LBB176_17:                             # %sw.bb.40
	movl	$5, %eax
	movl	$14, %ecx
	movq	-56(%rbp), %rdx
	movb	68(%rdx), %sil
	testb	$1, %sil
	cmovnel	%ecx, %eax
	movl	%eax, -60(%rbp)
	movq	-56(%rbp), %rdx
	movl	$-1, 64(%rdx)
	jmp	.LBB176_21
.LBB176_18:                             # %sw.bb.46
	movl	$1, %eax
	movl	$10, %ecx
	movq	-56(%rbp), %rdx
	movb	68(%rdx), %sil
	testb	$1, %sil
	cmovnel	%ecx, %eax
	movl	%eax, -60(%rbp)
	movq	-56(%rbp), %rdx
	movl	$-1, 64(%rdx)
	jmp	.LBB176_21
.LBB176_19:                             # %sw.bb.52
	movl	$3, %eax
	movl	$12, %ecx
	movq	-56(%rbp), %rdx
	movb	68(%rdx), %sil
	testb	$1, %sil
	cmovnel	%ecx, %eax
	movl	%eax, -60(%rbp)
	movq	-56(%rbp), %rdx
	movl	$-1, 64(%rdx)
	jmp	.LBB176_21
.LBB176_20:                             # %sw.default
	jmp	.LBB176_21
.LBB176_21:                             # %sw.epilog
	cmpl	$0, -60(%rbp)
	je	.LBB176_23
# BB#22:                                # %if.then.60
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, window_being_scrolled
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdi
	movl	-60(%rbp), %esi
	movl	-48(%rbp), %edx
	movl	-44(%rbp), %ecx
	movq	-56(%rbp), %rax
	movb	68(%rax), %r8b
	andb	$1, %r8b
	movzbl	%r8b, %r8d
	callq	x_send_scroll_bar_event
.LBB176_23:                             # %if.end.64
	movl	$0, -4(%rbp)
.LBB176_24:                             # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end176:
	.size	xg_scroll_callback, .Lfunc_end176-xg_scroll_callback
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI176_0:
	.quad	.LBB176_3
	.quad	.LBB176_16
	.quad	.LBB176_17
	.quad	.LBB176_18
	.quad	.LBB176_19

	.text
	.align	16, 0x90
	.type	xg_end_scroll_callback,@function
xg_end_scroll_callback:                 # @xg_end_scroll_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp577:
	.cfi_def_cfa_offset 16
.Ltmp578:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp579:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movl	$-1, 64(%rdx)
	movq	window_being_scrolled, %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB177_1
	jmp	.LBB177_2
.LBB177_1:                              # %if.then
	movl	$8, %esi
	xorl	%eax, %eax
	movq	window_being_scrolled, %rdi
	movq	-32(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$1, %dl
	movb	%dl, -33(%rbp)          # 1-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movb	-33(%rbp), %r8b         # 1-byte Reload
	movzbl	%r8b, %r8d
	callq	x_send_scroll_bar_event
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, window_being_scrolled
.LBB177_2:                              # %if.end
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end177:
	.size	xg_end_scroll_callback, .Lfunc_end177-xg_end_scroll_callback
	.cfi_endproc

	.align	16, 0x90
	.type	x_send_scroll_bar_event,@function
x_send_scroll_bar_event:                # @x_send_scroll_bar_event
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp580:
	.cfi_def_cfa_offset 16
.Ltmp581:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp582:
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp              # imm = 0x120
	movb	%r8b, %al
	leaq	-216(%rbp), %r9
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	andb	$1, %al
	movb	%al, -21(%rbp)
	movq	%r9, -224(%rbp)
	movq	-8(%rbp), %rdi
	callq	XWINDOW
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, -240(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -248(%rbp)
	movl	$32, -252(%rbp)
	callq	block_input
	movq	-224(%rbp), %rax
	movl	$33, (%rax)
	testb	$1, -21(%rbp)
	je	.LBB178_2
# BB#1:                                 # %cond.true
	movq	-240(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	576(%rax), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jmp	.LBB178_3
.LBB178_2:                              # %cond.false
	movq	-240(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	568(%rax), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
.LBB178_3:                              # %cond.end
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	-224(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-240(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rax
	movq	-224(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-240(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movq	-224(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-224(%rbp), %rax
	movl	$32, 48(%rax)
	movq	-248(%rbp), %rax
	sarq	$31, %rax
	sarq	$1, %rax
	movq	-224(%rbp), %rcx
	movq	%rax, 56(%rcx)
	cmpl	$0, -252(%rbp)
	jg	.LBB178_5
# BB#4:                                 # %cond.true.12
	movq	-248(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jmp	.LBB178_6
.LBB178_5:                              # %cond.false.13
	movq	-248(%rbp), %rax
	movl	-252(%rbp), %ecx
                                        # kill: RCX<def> ECX<kill>
                                        # kill: CL<def> RCX<kill>
	shlq	%cl, %rax
	movl	-252(%rbp), %edx
	movl	%edx, %ecx
                                        # kill: CL<def> RCX<kill>
	sarq	%cl, %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
.LBB178_6:                              # %cond.end.16
	movq	-272(%rbp), %rax        # 8-byte Reload
	xorl	%edx, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	leaq	-216(%rbp), %r8
	movq	-224(%rbp), %rsi
	movq	%rax, 64(%rsi)
	movl	-12(%rbp), %edi
	movl	%edi, %eax
	movq	-224(%rbp), %rsi
	movq	%rax, 72(%rsi)
	movslq	-16(%rbp), %rax
	movq	-224(%rbp), %rsi
	movq	%rax, 80(%rsi)
	movslq	-20(%rbp), %rax
	movq	-224(%rbp), %rsi
	movq	%rax, 88(%rsi)
	movq	-240(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-240(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rsi
	callq	XSendEvent
	movl	%eax, -276(%rbp)        # 4-byte Spill
	callq	unblock_input
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end178:
	.size	x_send_scroll_bar_event, .Lfunc_end178-x_send_scroll_bar_event
	.cfi_endproc

	.align	16, 0x90
	.type	x_set_toolkit_horizontal_scroll_bar_thumb,@function
x_set_toolkit_horizontal_scroll_bar_thumb: # @x_set_toolkit_horizontal_scroll_bar_thumb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp583:
	.cfi_def_cfa_offset 16
.Ltmp584:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp585:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	callq	xg_set_toolkit_horizontal_scroll_bar_thumb
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end179:
	.size	x_set_toolkit_horizontal_scroll_bar_thumb, .Lfunc_end179-x_set_toolkit_horizontal_scroll_bar_thumb
	.cfi_endproc

	.align	16, 0x90
	.type	x_scroll_bar_remove,@function
x_scroll_bar_remove:                    # @x_scroll_bar_remove
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp586:
	.cfi_def_cfa_offset 16
.Ltmp587:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp588:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, -16(%rbp)
	callq	block_input
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rsi
	callq	xg_remove_scroll_bar
	movq	-8(%rbp), %rax
	testb	$1, 68(%rax)
	je	.LBB180_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	XWINDOW
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	wset_horizontal_scroll_bar
	jmp	.LBB180_3
.LBB180_2:                              # %if.else
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	XWINDOW
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	wset_vertical_scroll_bar
.LBB180_3:                              # %if.end
	callq	unblock_input
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end180:
	.size	x_scroll_bar_remove, .Lfunc_end180-x_scroll_bar_remove
	.cfi_endproc

	.type	use_xim,@object         # @use_xim
	.data
	.globl	use_xim
use_xim:
	.byte	1                       # 0x1
	.size	use_xim, 1

	.type	x_display_list,@object  # @x_display_list
	.comm	x_display_list,8,8
	.type	xg_default_icon_file,@object # @xg_default_icon_file
	.local	xg_default_icon_file
	.comm	xg_default_icon_file,8,8
	.type	gnu_xpm_bits,@object    # @gnu_xpm_bits
	.align	16
gnu_xpm_bits:
	.quad	.L.str.95
	.quad	.L.str.96
	.quad	.L.str.97
	.quad	.L.str.98
	.quad	.L.str.99
	.quad	.L.str.100
	.quad	.L.str.101
	.quad	.L.str.102
	.quad	.L.str.103
	.quad	.L.str.104
	.quad	.L.str.105
	.quad	.L.str.106
	.quad	.L.str.107
	.quad	.L.str.108
	.quad	.L.str.109
	.quad	.L.str.110
	.quad	.L.str.111
	.quad	.L.str.112
	.quad	.L.str.113
	.quad	.L.str.114
	.quad	.L.str.115
	.quad	.L.str.116
	.quad	.L.str.117
	.quad	.L.str.118
	.quad	.L.str.119
	.quad	.L.str.120
	.quad	.L.str.121
	.quad	.L.str.122
	.quad	.L.str.123
	.quad	.L.str.124
	.quad	.L.str.125
	.quad	.L.str.126
	.quad	.L.str.127
	.quad	.L.str.128
	.quad	.L.str.129
	.quad	.L.str.130
	.quad	.L.str.131
	.quad	.L.str.132
	.quad	.L.str.133
	.quad	.L.str.134
	.quad	.L.str.135
	.quad	.L.str.136
	.quad	.L.str.137
	.quad	.L.str.138
	.quad	.L.str.139
	.quad	.L.str.140
	.quad	.L.str.141
	.quad	.L.str.142
	.quad	.L.str.143
	.quad	.L.str.144
	.quad	.L.str.145
	.quad	.L.str.146
	.quad	.L.str.147
	.quad	.L.str.148
	.quad	.L.str.149
	.quad	.L.str.150
	.quad	.L.str.151
	.quad	.L.str.152
	.quad	.L.str.153
	.quad	.L.str.154
	.quad	.L.str.155
	.quad	.L.str.156
	.quad	.L.str.157
	.quad	.L.str.158
	.quad	.L.str.159
	.quad	.L.str.160
	.quad	.L.str.161
	.quad	.L.str.162
	.quad	.L.str.163
	.quad	.L.str.164
	.quad	.L.str.165
	.quad	.L.str.166
	.quad	.L.str.167
	.quad	.L.str.168
	.quad	.L.str.169
	.quad	.L.str.170
	.quad	.L.str.171
	.quad	.L.str.172
	.quad	.L.str.173
	.quad	.L.str.174
	.quad	.L.str.175
	.quad	.L.str.176
	.quad	.L.str.177
	.quad	.L.str.178
	.quad	.L.str.179
	.quad	.L.str.180
	.quad	.L.str.181
	.quad	.L.str.182
	.quad	.L.str.183
	.quad	.L.str.184
	.quad	.L.str.185
	.quad	.L.str.186
	.quad	.L.str.187
	.quad	.L.str.188
	.quad	.L.str.189
	.quad	.L.str.190
	.quad	.L.str.191
	.quad	.L.str.192
	.quad	.L.str.193
	.quad	.L.str.194
	.quad	.L.str.195
	.quad	.L.str.196
	.quad	.L.str.197
	.quad	.L.str.198
	.quad	.L.str.199
	.quad	.L.str.200
	.quad	.L.str.201
	.quad	.L.str.202
	.quad	.L.str.203
	.quad	.L.str.204
	.quad	.L.str.205
	.quad	.L.str.206
	.quad	.L.str.207
	.quad	.L.str.208
	.quad	.L.str.209
	.quad	.L.str.210
	.quad	.L.str.211
	.quad	.L.str.212
	.quad	.L.str.213
	.quad	.L.str.214
	.quad	.L.str.215
	.quad	.L.str.216
	.quad	.L.str.217
	.quad	.L.str.218
	.quad	.L.str.219
	.quad	.L.str.220
	.quad	.L.str.221
	.quad	.L.str.222
	.quad	.L.str.223
	.quad	.L.str.224
	.quad	.L.str.225
	.quad	.L.str.226
	.quad	.L.str.227
	.quad	.L.str.228
	.quad	.L.str.229
	.quad	.L.str.230
	.quad	.L.str.231
	.quad	.L.str.232
	.quad	.L.str.233
	.quad	.L.str.234
	.quad	.L.str.235
	.quad	.L.str.236
	.quad	.L.str.237
	.quad	.L.str.238
	.quad	.L.str.239
	.quad	.L.str.240
	.quad	.L.str.241
	.quad	.L.str.242
	.quad	.L.str.243
	.quad	.L.str.244
	.quad	.L.str.245
	.quad	.L.str.246
	.quad	.L.str.247
	.quad	.L.str.248
	.quad	.L.str.249
	.quad	.L.str.250
	.quad	.L.str.251
	.quad	.L.str.252
	.quad	.L.str.253
	.quad	.L.str.254
	.quad	.L.str.255
	.quad	.L.str.256
	.quad	.L.str.257
	.quad	.L.str.258
	.quad	.L.str.259
	.quad	.L.str.260
	.quad	.L.str.261
	.quad	.L.str.262
	.quad	.L.str.263
	.quad	.L.str.264
	.quad	.L.str.265
	.quad	.L.str.266
	.quad	.L.str.267
	.quad	.L.str.268
	.quad	.L.str.269
	.quad	.L.str.270
	.quad	.L.str.271
	.quad	.L.str.272
	.quad	.L.str.273
	.quad	.L.str.274
	.quad	.L.str.275
	.quad	.L.str.276
	.quad	.L.str.277
	.quad	.L.str.278
	.quad	.L.str.279
	.quad	.L.str.280
	.quad	.L.str.281
	.quad	.L.str.282
	.quad	.L.str.283
	.quad	.L.str.284
	.quad	.L.str.285
	.quad	.L.str.286
	.quad	.L.str.287
	.quad	.L.str.288
	.quad	.L.str.289
	.quad	.L.str.290
	.quad	.L.str.291
	.quad	.L.str.292
	.quad	.L.str.293
	.quad	.L.str.294
	.quad	.L.str.295
	.quad	.L.str.296
	.quad	.L.str.297
	.quad	.L.str.298
	.quad	.L.str.299
	.quad	.L.str.300
	.quad	.L.str.301
	.quad	.L.str.302
	.quad	.L.str.303
	.quad	.L.str.304
	.quad	.L.str.305
	.quad	.L.str.306
	.quad	.L.str.307
	.quad	.L.str.308
	.quad	.L.str.309
	.quad	.L.str.310
	.quad	.L.str.311
	.quad	.L.str.312
	.quad	.L.str.313
	.quad	.L.str.314
	.quad	.L.str.315
	.quad	.L.str.316
	.quad	.L.str.317
	.quad	.L.str.318
	.quad	.L.str.319
	.quad	.L.str.320
	.quad	.L.str.321
	.quad	.L.str.322
	.quad	.L.str.323
	.quad	.L.str.324
	.quad	.L.str.325
	.quad	.L.str.326
	.quad	.L.str.327
	.quad	.L.str.328
	.quad	.L.str.329
	.quad	.L.str.330
	.quad	.L.str.331
	.quad	.L.str.332
	.quad	.L.str.333
	.quad	.L.str.334
	.quad	.L.str.335
	.quad	.L.str.336
	.quad	.L.str.337
	.quad	.L.str.338
	.quad	.L.str.339
	.quad	.L.str.340
	.quad	.L.str.341
	.quad	.L.str.342
	.quad	.L.str.343
	.quad	.L.str.344
	.quad	.L.str.345
	.quad	.L.str.346
	.quad	.L.str.347
	.quad	.L.str.348
	.quad	.L.str.349
	.quad	.L.str.350
	.quad	.L.str.351
	.quad	.L.str.352
	.quad	.L.str.353
	.quad	.L.str.354
	.quad	.L.str.355
	.quad	.L.str.356
	.quad	.L.str.357
	.quad	.L.str.358
	.quad	.L.str.359
	.quad	.L.str.360
	.quad	.L.str.361
	.quad	.L.str.362
	.quad	.L.str.363
	.quad	.L.str.364
	.quad	.L.str.365
	.quad	.L.str.366
	.quad	.L.str.367
	.quad	.L.str.368
	.quad	.L.str.369
	.quad	.L.str.370
	.quad	.L.str.371
	.quad	.L.str.372
	.quad	.L.str.373
	.quad	.L.str.374
	.quad	.L.str.375
	.quad	.L.str.376
	.quad	.L.str.377
	.quad	.L.str.378
	.quad	.L.str.379
	.quad	.L.str.380
	.quad	.L.str.381
	.quad	.L.str.382
	.size	gnu_xpm_bits, 2304

	.type	gnu_xbm_bits,@object    # @gnu_xbm_bits
	.align	16
gnu_xbm_bits:
	.asciz	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\020\000\000\000\000\000\000`\000\000\000\000\000\000\340\001\000\000\000\000\000\200\003\000\000\b\000\000\000\016\000\000\f\000p\000\036\000\000\006\300\335\0014\000\000\007<\007\0034\000\200\003\037\006\006$\000\200\003\017\004\f&\000\300\201\007\000\b3\000`\301\343\200\2731\0000\3413\376\377\030\000\020\3611\307\343\037\000\020\361\330\001\005<\000\020\203l\000\032@\000\020f6T\325\377\0000<\333\253:*\000`\200\351T5\000\000\340\340l\271j\000\000\2007\266fu\000\000\000\017\266\264j\000\000\000\006\263wu\000\000\000\341\031\247j\000\000\300\377\031H\365\000\000@u\025\257\352\000\000\000p5f\325\000\000\000Xj\200\352\000\000\000\334\252\200\325\001\000\000\234'\003\353\001\000\000\274e\004\324\001\000\000<U\355k\003\000\000>\315*>\002\000\000~\271*\270\003\000\000|\223=\221\003\000\000|vw\226\001\000\000\370m\366\304\001\000\000\370\335\376\303\001\000\000\360\261\375\374\001\000\000\320/\347\301\000\000\000\300O\346a\000\000\000\200\377\366\177\000\000\000\200\376\034>\000\000\000\000\372\037\000\000\000\000\000\370\017\000\000\000\000\000\240\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	gnu_xbm_bits, 350

	.type	x_error_message,@object # @x_error_message
	.local	x_error_message
	.comm	x_error_message,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Can't notify window manager of window withdrawal"
	.size	.L.str, 49

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Can't notify window manager of iconification"
	.size	.L.str.1, 45

	.type	x_initialized,@object   # @x_initialized
	.local	x_initialized
	.comm	x_initialized,4,4
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Display %s can't be opened"
	.size	.L.str.2, 27

	.type	x_term_init.display_opt,@object # @x_term_init.display_opt
	.data
x_term_init.display_opt:
	.asciz	"--display"
	.size	x_term_init.display_opt, 10

	.type	x_term_init.name_opt,@object # @x_term_init.name_opt
x_term_init.name_opt:
	.asciz	"--name"
	.size	x_term_init.name_opt, 7

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.zero	1
	.size	.L.str.3, 1

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GLib"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"~/.emacs.d/gtkrc"
	.size	.L.str.5, 17

	.type	x_display_id,@object    # @x_display_id
	.local	x_display_id
	.comm	x_display_id,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Emacs"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"privateColormap"
	.size	.L.str.7, 16

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"PrivateColormap"
	.size	.L.str.8, 16

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"true"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"on"
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Xft"
	.size	.L.str.11, 4

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"dpi"
	.size	.L.str.12, 4

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%lf"
	.size	.L.str.13, 4

	.type	x_term_init.atom_refs,@object # @x_term_init.atom_refs
	.section	.rodata,"a",@progbits
	.align	16
x_term_init.atom_refs:
	.quad	.L.str.14
	.long	328                     # 0x148
	.zero	4
	.quad	.L.str.15
	.long	336                     # 0x150
	.zero	4
	.quad	.L.str.16
	.long	344                     # 0x158
	.zero	4
	.quad	.L.str.17
	.long	352                     # 0x160
	.zero	4
	.quad	.L.str.18
	.long	360                     # 0x168
	.zero	4
	.quad	.L.str.19
	.long	368                     # 0x170
	.zero	4
	.quad	.L.str.20
	.long	376                     # 0x178
	.zero	4
	.quad	.L.str.21
	.long	384                     # 0x180
	.zero	4
	.quad	.L.str.22
	.long	392                     # 0x188
	.zero	4
	.quad	.L.str.23
	.long	400                     # 0x190
	.zero	4
	.quad	.L.str.24
	.long	408                     # 0x198
	.zero	4
	.quad	.L.str.25
	.long	416                     # 0x1a0
	.zero	4
	.quad	.L.str.26
	.long	432                     # 0x1b0
	.zero	4
	.quad	.L.str.27
	.long	440                     # 0x1b8
	.zero	4
	.quad	.L.str.28
	.long	424                     # 0x1a8
	.zero	4
	.quad	.L.str.29
	.long	448                     # 0x1c0
	.zero	4
	.quad	.L.str.30
	.long	456                     # 0x1c8
	.zero	4
	.quad	.L.str.31
	.long	464                     # 0x1d0
	.zero	4
	.quad	.L.str.32
	.long	472                     # 0x1d8
	.zero	4
	.quad	.L.str.33
	.long	480                     # 0x1e0
	.zero	4
	.quad	.L.str.34
	.long	488                     # 0x1e8
	.zero	4
	.quad	.L.str.35
	.long	496                     # 0x1f0
	.zero	4
	.quad	.L.str.36
	.long	504                     # 0x1f8
	.zero	4
	.quad	.L.str.37
	.long	592                     # 0x250
	.zero	4
	.quad	.L.str.38
	.long	512                     # 0x200
	.zero	4
	.quad	.L.str.39
	.long	520                     # 0x208
	.zero	4
	.quad	.L.str.40
	.long	528                     # 0x210
	.zero	4
	.quad	.L.str.41
	.long	536                     # 0x218
	.zero	4
	.quad	.L.str.42
	.long	544                     # 0x220
	.zero	4
	.quad	.L.str.43
	.long	552                     # 0x228
	.zero	4
	.quad	.L.str.44
	.long	560                     # 0x230
	.zero	4
	.quad	.L.str.45
	.long	568                     # 0x238
	.zero	4
	.quad	.L.str.46
	.long	576                     # 0x240
	.zero	4
	.quad	.L.str.47
	.long	584                     # 0x248
	.zero	4
	.quad	.L.str.48
	.long	864                     # 0x360
	.zero	4
	.quad	.L.str.49
	.long	872                     # 0x368
	.zero	4
	.quad	.L.str.50
	.long	880                     # 0x370
	.zero	4
	.quad	.L.str.51
	.long	888                     # 0x378
	.zero	4
	.quad	.L.str.52
	.long	896                     # 0x380
	.zero	4
	.quad	.L.str.53
	.long	904                     # 0x388
	.zero	4
	.quad	.L.str.54
	.long	840                     # 0x348
	.zero	4
	.quad	.L.str.55
	.long	848                     # 0x350
	.zero	4
	.quad	.L.str.56
	.long	976                     # 0x3d0
	.zero	4
	.quad	.L.str.57
	.long	968                     # 0x3c8
	.zero	4
	.quad	.L.str.58
	.long	800                     # 0x320
	.zero	4
	.quad	.L.str.59
	.long	808                     # 0x328
	.zero	4
	.quad	.L.str.60
	.long	984                     # 0x3d8
	.zero	4
	.quad	.L.str.61
	.long	856                     # 0x358
	.zero	4
	.quad	.L.str.62
	.long	912                     # 0x390
	.zero	4
	.quad	.L.str.63
	.long	920                     # 0x398
	.zero	4
	.quad	.L.str.64
	.long	928                     # 0x3a0
	.zero	4
	.quad	.L.str.65
	.long	992                     # 0x3e0
	.zero	4
	.quad	.L.str.66
	.long	944                     # 0x3b0
	.zero	4
	.quad	.L.str.67
	.long	952                     # 0x3b8
	.zero	4
	.size	x_term_init.atom_refs, 864

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"WM_PROTOCOLS"
	.size	.L.str.14, 13

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"WM_TAKE_FOCUS"
	.size	.L.str.15, 14

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"WM_SAVE_YOURSELF"
	.size	.L.str.16, 17

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"WM_DELETE_WINDOW"
	.size	.L.str.17, 17

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"WM_CHANGE_STATE"
	.size	.L.str.18, 16

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"WM_CONFIGURE_DENIED"
	.size	.L.str.19, 20

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"WM_MOVED"
	.size	.L.str.20, 9

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"WM_CLIENT_LEADER"
	.size	.L.str.21, 17

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Editres"
	.size	.L.str.22, 8

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"CLIPBOARD"
	.size	.L.str.23, 10

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"TIMESTAMP"
	.size	.L.str.24, 10

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"TEXT"
	.size	.L.str.25, 5

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"COMPOUND_TEXT"
	.size	.L.str.26, 14

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"UTF8_STRING"
	.size	.L.str.27, 12

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"DELETE"
	.size	.L.str.28, 7

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"MULTIPLE"
	.size	.L.str.29, 9

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"INCR"
	.size	.L.str.30, 5

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"_EMACS_TMP_"
	.size	.L.str.31, 12

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"TARGETS"
	.size	.L.str.32, 8

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"NULL"
	.size	.L.str.33, 5

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"ATOM"
	.size	.L.str.34, 5

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"ATOM_PAIR"
	.size	.L.str.35, 10

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"CLIPBOARD_MANAGER"
	.size	.L.str.36, 18

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"_XEMBED_INFO"
	.size	.L.str.37, 13

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"PIXEL_SIZE"
	.size	.L.str.38, 11

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"AVERAGE_WIDTH"
	.size	.L.str.39, 14

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"_MULE_BASELINE_OFFSET"
	.size	.L.str.40, 22

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"_MULE_RELATIVE_COMPOSE"
	.size	.L.str.41, 23

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"_MULE_DEFAULT_ASCENT"
	.size	.L.str.42, 21

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"DONE"
	.size	.L.str.43, 5

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"PAGE"
	.size	.L.str.44, 5

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"SCROLLBAR"
	.size	.L.str.45, 10

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"HORIZONTAL_SCROLLBAR"
	.size	.L.str.46, 21

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"_XEMBED"
	.size	.L.str.47, 8

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"_NET_WM_STATE"
	.size	.L.str.48, 14

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"_NET_WM_STATE_FULLSCREEN"
	.size	.L.str.49, 25

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"_NET_WM_STATE_MAXIMIZED_HORZ"
	.size	.L.str.50, 29

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"_NET_WM_STATE_MAXIMIZED_VERT"
	.size	.L.str.51, 29

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"_NET_WM_STATE_STICKY"
	.size	.L.str.52, 21

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"_NET_WM_STATE_HIDDEN"
	.size	.L.str.53, 21

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"_NET_WM_WINDOW_TYPE"
	.size	.L.str.54, 20

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"_NET_WM_WINDOW_TYPE_TOOLTIP"
	.size	.L.str.55, 28

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"_NET_WM_ICON_NAME"
	.size	.L.str.56, 18

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"_NET_WM_NAME"
	.size	.L.str.57, 13

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"_NET_SUPPORTED"
	.size	.L.str.58, 15

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"_NET_SUPPORTING_WM_CHECK"
	.size	.L.str.59, 25

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"_NET_WM_WINDOW_OPACITY"
	.size	.L.str.60, 23

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"_NET_ACTIVE_WINDOW"
	.size	.L.str.61, 19

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"_NET_FRAME_EXTENTS"
	.size	.L.str.62, 19

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"_NET_CURRENT_DESKTOP"
	.size	.L.str.63, 21

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"_NET_WORKAREA"
	.size	.L.str.64, 14

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"SM_CLIENT_ID"
	.size	.L.str.65, 13

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"_XSETTINGS_SETTINGS"
	.size	.L.str.66, 20

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"MANAGER"
	.size	.L.str.67, 8

	.type	x_term_init.xsettings_fmt,@object # @x_term_init.xsettings_fmt
	.section	.rodata,"a",@progbits
x_term_init.xsettings_fmt:
	.asciz	"_XSETTINGS_S%d"
	.size	x_term_init.xsettings_fmt, 15

	.type	gray_bits,@object       # @gray_bits
	.data
gray_bits:
	.ascii	"\001\002"
	.size	gray_bits, 2

	.type	.L.str.68,@object       # @.str.68
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.68:
	.asciz	"synchronous"
	.size	.L.str.68, 12

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"Synchronous"
	.size	.L.str.69, 12

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"useXIM"
	.size	.L.str.70, 7

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"UseXIM"
	.size	.L.str.71, 7

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"false"
	.size	.L.str.72, 6

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"off"
	.size	.L.str.73, 4

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"GDK_CORE_DEVICE_EVENTS=1"
	.size	.L.str.74, 25

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"icons/hicolor/scalable/apps/emacs.svg"
	.size	.L.str.75, 38

	.type	syms_of_xterm.b_fwd,@object # @syms_of_xterm.b_fwd
	.local	syms_of_xterm.b_fwd
	.comm	syms_of_xterm.b_fwd,16,8
	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"x-use-underline-position-properties"
	.size	.L.str.76, 36

	.type	syms_of_xterm.b_fwd.77,@object # @syms_of_xterm.b_fwd.77
	.local	syms_of_xterm.b_fwd.77
	.comm	syms_of_xterm.b_fwd.77,16,8
	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"x-underline-at-descent-line"
	.size	.L.str.78, 28

	.type	syms_of_xterm.b_fwd.79,@object # @syms_of_xterm.b_fwd.79
	.local	syms_of_xterm.b_fwd.79
	.comm	syms_of_xterm.b_fwd.79,16,8
	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"x-mouse-click-focus-ignore-position"
	.size	.L.str.80, 36

	.type	syms_of_xterm.o_fwd,@object # @syms_of_xterm.o_fwd
	.local	syms_of_xterm.o_fwd
	.comm	syms_of_xterm.o_fwd,16,8
	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"x-toolkit-scroll-bars"
	.size	.L.str.81, 22

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"gtk"
	.size	.L.str.82, 4

	.type	syms_of_xterm.o_fwd.83,@object # @syms_of_xterm.o_fwd.83
	.local	syms_of_xterm.o_fwd.83
	.comm	syms_of_xterm.o_fwd.83,16,8
	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"x-alt-keysym"
	.size	.L.str.84, 13

	.type	syms_of_xterm.o_fwd.85,@object # @syms_of_xterm.o_fwd.85
	.local	syms_of_xterm.o_fwd.85
	.comm	syms_of_xterm.o_fwd.85,16,8
	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"x-hyper-keysym"
	.size	.L.str.86, 15

	.type	syms_of_xterm.o_fwd.87,@object # @syms_of_xterm.o_fwd.87
	.local	syms_of_xterm.o_fwd.87
	.comm	syms_of_xterm.o_fwd.87,16,8
	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"x-meta-keysym"
	.size	.L.str.88, 14

	.type	syms_of_xterm.o_fwd.89,@object # @syms_of_xterm.o_fwd.89
	.local	syms_of_xterm.o_fwd.89
	.comm	syms_of_xterm.o_fwd.89,16,8
	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"x-super-keysym"
	.size	.L.str.90, 15

	.type	syms_of_xterm.o_fwd.91,@object # @syms_of_xterm.o_fwd.91
	.local	syms_of_xterm.o_fwd.91
	.comm	syms_of_xterm.o_fwd.91,16,8
	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"x-keysym-table"
	.size	.L.str.92, 15

	.type	syms_of_xterm.b_fwd.93,@object # @syms_of_xterm.b_fwd.93
	.local	syms_of_xterm.b_fwd.93
	.comm	syms_of_xterm.b_fwd.93,16,8
	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"x-frame-normalize-before-maximize"
	.size	.L.str.94, 34

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"32 32 255 2"
	.size	.L.str.95, 12

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"AA c #FFFFFFFFFFFF"
	.size	.L.str.96, 19

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"BA c #58585454A9A9"
	.size	.L.str.97, 19

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"CA c #181817175757"
	.size	.L.str.98, 19

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"DA c #393937377777"
	.size	.L.str.99, 19

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"EA c #5E5E5A5AACAC"
	.size	.L.str.100, 19

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"FA c #7E7E7E7E8C8C"
	.size	.L.str.101, 19

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"GA c #73737171B7B7"
	.size	.L.str.102, 19

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"HA c #393936368787"
	.size	.L.str.103, 19

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"IA c #EEEEEEEEF7F7"
	.size	.L.str.104, 19

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"JA c #010101013939"
	.size	.L.str.105, 19

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"KA c #7E7E7C7CBCBC"
	.size	.L.str.106, 19

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"LA c #78787575B9B9"
	.size	.L.str.107, 19

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"MA c #57575252ABAB"
	.size	.L.str.108, 19

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"NA c #9E9E9D9DCDCD"
	.size	.L.str.109, 19

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"OA c #76767474B8B8"
	.size	.L.str.110, 19

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"PA c #86868484C1C1"
	.size	.L.str.111, 19

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"AB c #EDEDECECF6F6"
	.size	.L.str.112, 19

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"BB c #54545151A5A5"
	.size	.L.str.113, 19

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"CB c #4D4D4A4A9A9A"
	.size	.L.str.114, 19

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"DB c #F4F4F4F4FAFA"
	.size	.L.str.115, 19

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"EB c #96969494C9C9"
	.size	.L.str.116, 19

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"FB c #222222225353"
	.size	.L.str.117, 19

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"GB c #8C8C8C8C9595"
	.size	.L.str.118, 19

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"HB c #6A6A6868B2B2"
	.size	.L.str.119, 19

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"IB c #D2D2D1D1E8E8"
	.size	.L.str.120, 19

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"JB c #F0F0F0F0F7F7"
	.size	.L.str.121, 19

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"KB c #3E3E3D3D6C6C"
	.size	.L.str.122, 19

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"LB c #CECECECEE6E6"
	.size	.L.str.123, 19

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"MB c #ADADABABD6D6"
	.size	.L.str.124, 19

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"NB c #91918F8FC6C6"
	.size	.L.str.125, 19

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"OB c #5D5D5A5AACAC"
	.size	.L.str.126, 19

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"PB c #E8E8E8E8F4F4"
	.size	.L.str.127, 19

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"AC c #959595959999"
	.size	.L.str.128, 19

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"BC c #252526266868"
	.size	.L.str.129, 19

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"CC c #555555557D7D"
	.size	.L.str.130, 19

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"DC c #5B5B5858ABAB"
	.size	.L.str.131, 19

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"EC c #7B7B7878BBBB"
	.size	.L.str.132, 19

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"FC c #DDDDDDDDEEEE"
	.size	.L.str.133, 19

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"GC c #55555151ACAC"
	.size	.L.str.134, 19

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"HC c #F0F0F1F1F8F8"
	.size	.L.str.135, 19

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"IC c #111111115252"
	.size	.L.str.136, 19

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"JC c #88888686C2C2"
	.size	.L.str.137, 19

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"KC c #5A5A5858AAAA"
	.size	.L.str.138, 19

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"LC c #60605D5DB1B1"
	.size	.L.str.139, 19

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"MC c #8D8D8A8AC4C4"
	.size	.L.str.140, 19

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"NC c #7C7C7A7ABBBB"
	.size	.L.str.141, 19

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"OC c #E4E4E4E4F5F5"
	.size	.L.str.142, 19

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"PC c #9A9A9898CBCB"
	.size	.L.str.143, 19

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"AD c #F7F7F6F6FAFA"
	.size	.L.str.144, 19

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"BD c #98989696C9C9"
	.size	.L.str.145, 19

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"CD c #F3F3F2F2F9F9"
	.size	.L.str.146, 19

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"DD c #ECECECECF5F5"
	.size	.L.str.147, 19

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"ED c #CACAC9C9E3E3"
	.size	.L.str.148, 19

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"FD c #53534E4EA9A9"
	.size	.L.str.149, 19

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"GD c #8E8E8C8CC5C5"
	.size	.L.str.150, 19

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"HD c #A2A2A1A1CFCF"
	.size	.L.str.151, 19

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"ID c #67676464B0B0"
	.size	.L.str.152, 19

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"JD c #64646161AEAE"
	.size	.L.str.153, 19

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"KD c #9D9D9B9BCCCC"
	.size	.L.str.154, 19

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"LD c #58585454ABAB"
	.size	.L.str.155, 19

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"MD c #6B6B6969B2B2"
	.size	.L.str.156, 19

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"ND c #92929090C7C7"
	.size	.L.str.157, 19

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"OD c #6E6E6C6CB4B4"
	.size	.L.str.158, 19

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"PD c #6C6C6C6C8383"
	.size	.L.str.159, 19

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"AE c #ECECEAEAF5F5"
	.size	.L.str.160, 19

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"BE c #E8E8E8E8F3F3"
	.size	.L.str.161, 19

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"CE c #2C2C2C2C5050"
	.size	.L.str.162, 19

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"DE c #63636060AFAF"
	.size	.L.str.163, 19

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"EE c #7A7A7979BABA"
	.size	.L.str.164, 19

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"FE c #A7A7A5A5D1D1"
	.size	.L.str.165, 19

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"GE c #60605E5EADAD"
	.size	.L.str.166, 19

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"HE c #8A8A8989C3C3"
	.size	.L.str.167, 19

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"IE c #B2B2B1B1D7D7"
	.size	.L.str.168, 19

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"JE c #69696666B5B5"
	.size	.L.str.169, 19

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"KE c #E8E8E7E7F3F3"
	.size	.L.str.170, 19

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"LE c #BCBCBBBBDCDC"
	.size	.L.str.171, 19

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"ME c #DBDBDADAEDED"
	.size	.L.str.172, 19

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"NE c #C0C0BFBFDFDF"
	.size	.L.str.173, 19

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"OE c #2C2C29297777"
	.size	.L.str.174, 19

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"PE c #B4B4B3B3D8D8"
	.size	.L.str.175, 19

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"AF c #66666363B0B0"
	.size	.L.str.176, 19

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"BF c #73737171BABA"
	.size	.L.str.177, 19

	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	"CF c #83838181BFBF"
	.size	.L.str.178, 19

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"DF c #3E3E3C3C8585"
	.size	.L.str.179, 19

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	"EF c #80807E7EBDBD"
	.size	.L.str.180, 19

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"FF c #616161618383"
	.size	.L.str.181, 19

	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	"GF c #70706F6FB5B5"
	.size	.L.str.182, 19

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"HF c #88888787C6C6"
	.size	.L.str.183, 19

	.type	.L.str.184,@object      # @.str.184
.L.str.184:
	.asciz	"IF c #DCDCDBDBEDED"
	.size	.L.str.184, 19

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	"JF c #62625F5FAEAE"
	.size	.L.str.185, 19

	.type	.L.str.186,@object      # @.str.186
.L.str.186:
	.asciz	"KF c #72726F6FB6B6"
	.size	.L.str.186, 19

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"LF c #D1D1D0D0E8E8"
	.size	.L.str.187, 19

	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	"MF c #8B8B8888C4C4"
	.size	.L.str.188, 19

	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	"NF c #6C6C6A6AB3B3"
	.size	.L.str.189, 19

	.type	.L.str.190,@object      # @.str.190
.L.str.190:
	.asciz	"OF c #5A5A5656ACAC"
	.size	.L.str.190, 19

	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	"PF c #C5C5C4C4E1E1"
	.size	.L.str.191, 19

	.type	.L.str.192,@object      # @.str.192
.L.str.192:
	.asciz	"AG c #A1A19F9FCFCF"
	.size	.L.str.192, 19

	.type	.L.str.193,@object      # @.str.193
.L.str.193:
	.asciz	"BG c #85858383C0C0"
	.size	.L.str.193, 19

	.type	.L.str.194,@object      # @.str.194
.L.str.194:
	.asciz	"CG c #80807E7EBEBE"
	.size	.L.str.194, 19

	.type	.L.str.195,@object      # @.str.195
.L.str.195:
	.asciz	"DG c #BEBEBDBDDEDE"
	.size	.L.str.195, 19

	.type	.L.str.196,@object      # @.str.196
.L.str.196:
	.asciz	"EG c #61615E5EAFAF"
	.size	.L.str.196, 19

	.type	.L.str.197,@object      # @.str.197
.L.str.197:
	.asciz	"FG c #57575353A9A9"
	.size	.L.str.197, 19

	.type	.L.str.198,@object      # @.str.198
.L.str.198:
	.asciz	"GG c #313131315C5C"
	.size	.L.str.198, 19

	.type	.L.str.199,@object      # @.str.199
.L.str.199:
	.asciz	"HG c #292928285959"
	.size	.L.str.199, 19

	.type	.L.str.200,@object      # @.str.200
.L.str.200:
	.asciz	"IG c #6E6E6B6BB5B5"
	.size	.L.str.200, 19

	.type	.L.str.201,@object      # @.str.201
.L.str.201:
	.asciz	"JG c #55555050ABAB"
	.size	.L.str.201, 19

	.type	.L.str.202,@object      # @.str.202
.L.str.202:
	.asciz	"KG c #E9E9E9E9F4F4"
	.size	.L.str.202, 19

	.type	.L.str.203,@object      # @.str.203
.L.str.203:
	.asciz	"LG c #404040406D6D"
	.size	.L.str.203, 19

	.type	.L.str.204,@object      # @.str.204
.L.str.204:
	.asciz	"MG c #68686464B1B1"
	.size	.L.str.204, 19

	.type	.L.str.205,@object      # @.str.205
.L.str.205:
	.asciz	"NG c #E4E4E4E4F2F2"
	.size	.L.str.205, 19

	.type	.L.str.206,@object      # @.str.206
.L.str.206:
	.asciz	"OG c #94949292C8C8"
	.size	.L.str.206, 19

	.type	.L.str.207,@object      # @.str.207
.L.str.207:
	.asciz	"PG c #D6D6D4D4E9E9"
	.size	.L.str.207, 19

	.type	.L.str.208,@object      # @.str.208
.L.str.208:
	.asciz	"AH c #1D1D1D1D5D5D"
	.size	.L.str.208, 19

	.type	.L.str.209,@object      # @.str.209
.L.str.209:
	.asciz	"BH c #D5D5D4D4E9E9"
	.size	.L.str.209, 19

	.type	.L.str.210,@object      # @.str.210
.L.str.210:
	.asciz	"CH c #50504C4CA6A6"
	.size	.L.str.210, 19

	.type	.L.str.211,@object      # @.str.211
.L.str.211:
	.asciz	"DH c #57575353AAAA"
	.size	.L.str.211, 19

	.type	.L.str.212,@object      # @.str.212
.L.str.212:
	.asciz	"EH c #71716E6EB6B6"
	.size	.L.str.212, 19

	.type	.L.str.213,@object      # @.str.213
.L.str.213:
	.asciz	"FH c #090909093F3F"
	.size	.L.str.213, 19

	.type	.L.str.214,@object      # @.str.214
.L.str.214:
	.asciz	"GH c #61615D5DAFAF"
	.size	.L.str.214, 19

	.type	.L.str.215,@object      # @.str.215
.L.str.215:
	.asciz	"HH c #8A8A8787C3C3"
	.size	.L.str.215, 19

	.type	.L.str.216,@object      # @.str.216
.L.str.216:
	.asciz	"IH c #7F7F7D7DBDBD"
	.size	.L.str.216, 19

	.type	.L.str.217,@object      # @.str.217
.L.str.217:
	.asciz	"JH c #6C6C6868B4B4"
	.size	.L.str.217, 19

	.type	.L.str.218,@object      # @.str.218
.L.str.218:
	.asciz	"KH c #6A6A6767B2B2"
	.size	.L.str.218, 19

	.type	.L.str.219,@object      # @.str.219
.L.str.219:
	.asciz	"LH c #69696666B2B2"
	.size	.L.str.219, 19

	.type	.L.str.220,@object      # @.str.220
.L.str.220:
	.asciz	"MH c #5A5A5656A9A9"
	.size	.L.str.220, 19

	.type	.L.str.221,@object      # @.str.221
.L.str.221:
	.asciz	"NH c #56565151ABAB"
	.size	.L.str.221, 19

	.type	.L.str.222,@object      # @.str.222
.L.str.222:
	.asciz	"OH c #5B5B5757AAAA"
	.size	.L.str.222, 19

	.type	.L.str.223,@object      # @.str.223
.L.str.223:
	.asciz	"PH c #5A5A5656AAAA"
	.size	.L.str.223, 19

	.type	.L.str.224,@object      # @.str.224
.L.str.224:
	.asciz	"AI c #5D5D5A5AABAB"
	.size	.L.str.224, 19

	.type	.L.str.225,@object      # @.str.225
.L.str.225:
	.asciz	"BI c #5E5E5C5CACAC"
	.size	.L.str.225, 19

	.type	.L.str.226,@object      # @.str.226
.L.str.226:
	.asciz	"CI c #5A5A5757AAAA"
	.size	.L.str.226, 19

	.type	.L.str.227,@object      # @.str.227
.L.str.227:
	.asciz	"DI c #5F5F5C5CACAC"
	.size	.L.str.227, 19

	.type	.L.str.228,@object      # @.str.228
.L.str.228:
	.asciz	"EI c #5F5F5C5CADAD"
	.size	.L.str.228, 19

	.type	.L.str.229,@object      # @.str.229
.L.str.229:
	.asciz	"FI c #5F5F5D5DADAD"
	.size	.L.str.229, 19

	.type	.L.str.230,@object      # @.str.230
.L.str.230:
	.asciz	"GI c #EBEBEBEBF6F6"
	.size	.L.str.230, 19

	.type	.L.str.231,@object      # @.str.231
.L.str.231:
	.asciz	"HI c #59595555A9A9"
	.size	.L.str.231, 19

	.type	.L.str.232,@object      # @.str.232
.L.str.232:
	.asciz	"II c #B3B3B2B2D8D8"
	.size	.L.str.232, 19

	.type	.L.str.233,@object      # @.str.233
.L.str.233:
	.asciz	"JI c #EAEAEAEAF4F4"
	.size	.L.str.233, 19

	.type	.L.str.234,@object      # @.str.234
.L.str.234:
	.asciz	"KI c #E6E6E6E6F4F4"
	.size	.L.str.234, 19

	.type	.L.str.235,@object      # @.str.235
.L.str.235:
	.asciz	"LI c #F1F1F1F1F8F8"
	.size	.L.str.235, 19

	.type	.L.str.236,@object      # @.str.236
.L.str.236:
	.asciz	"MI c #5F5F5D5DAEAE"
	.size	.L.str.236, 19

	.type	.L.str.237,@object      # @.str.237
.L.str.237:
	.asciz	"NI c #E7E7E7E7F3F3"
	.size	.L.str.237, 19

	.type	.L.str.238,@object      # @.str.238
.L.str.238:
	.asciz	"OI c #57575454A9A9"
	.size	.L.str.238, 19

	.type	.L.str.239,@object      # @.str.239
.L.str.239:
	.asciz	"PI c #F4F4F4F4F9F9"
	.size	.L.str.239, 19

	.type	.L.str.240,@object      # @.str.240
.L.str.240:
	.asciz	"AJ c #5C5C5757ADAD"
	.size	.L.str.240, 19

	.type	.L.str.241,@object      # @.str.241
.L.str.241:
	.asciz	"BJ c #75757373B8B8"
	.size	.L.str.241, 19

	.type	.L.str.242,@object      # @.str.242
.L.str.242:
	.asciz	"CJ c #70706C6CB5B5"
	.size	.L.str.242, 19

	.type	.L.str.243,@object      # @.str.243
.L.str.243:
	.asciz	"DJ c #9B9B9A9ACBCB"
	.size	.L.str.243, 19

	.type	.L.str.244,@object      # @.str.244
.L.str.244:
	.asciz	"EJ c #FAFAFAFAFCFC"
	.size	.L.str.244, 19

	.type	.L.str.245,@object      # @.str.245
.L.str.245:
	.asciz	"FJ c #E7E7E6E6F3F3"
	.size	.L.str.245, 19

	.type	.L.str.246,@object      # @.str.246
.L.str.246:
	.asciz	"GJ c #81817F7FBEBE"
	.size	.L.str.246, 19

	.type	.L.str.247,@object      # @.str.247
.L.str.247:
	.asciz	"HJ c #EBEBEAEAF4F4"
	.size	.L.str.247, 19

	.type	.L.str.248,@object      # @.str.248
.L.str.248:
	.asciz	"IJ c #EBEBEAEAF5F5"
	.size	.L.str.248, 19

	.type	.L.str.249,@object      # @.str.249
.L.str.249:
	.asciz	"JJ c #E6E6E6E6F2F2"
	.size	.L.str.249, 19

	.type	.L.str.250,@object      # @.str.250
.L.str.250:
	.asciz	"KJ c #EEEEEDEDF6F6"
	.size	.L.str.250, 19

	.type	.L.str.251,@object      # @.str.251
.L.str.251:
	.asciz	"LJ c #E2E2E2E2F1F1"
	.size	.L.str.251, 19

	.type	.L.str.252,@object      # @.str.252
.L.str.252:
	.asciz	"MJ c #EEEEEEEEF4F4"
	.size	.L.str.252, 19

	.type	.L.str.253,@object      # @.str.253
.L.str.253:
	.asciz	"NJ c #E2E2E2E2EFEF"
	.size	.L.str.253, 19

	.type	.L.str.254,@object      # @.str.254
.L.str.254:
	.asciz	"OJ c #4C4C4B4B8989"
	.size	.L.str.254, 19

	.type	.L.str.255,@object      # @.str.255
.L.str.255:
	.asciz	"PJ c #E5E5E4E4F2F2"
	.size	.L.str.255, 19

	.type	.L.str.256,@object      # @.str.256
.L.str.256:
	.asciz	"AK c #484848487474"
	.size	.L.str.256, 19

	.type	.L.str.257,@object      # @.str.257
.L.str.257:
	.asciz	"BK c #C2C2C1C1DFDF"
	.size	.L.str.257, 19

	.type	.L.str.258,@object      # @.str.258
.L.str.258:
	.asciz	"CK c #7A7A7777BBBB"
	.size	.L.str.258, 19

	.type	.L.str.259,@object      # @.str.259
.L.str.259:
	.asciz	"DK c #3F3F3E3E7D7D"
	.size	.L.str.259, 19

	.type	.L.str.260,@object      # @.str.260
.L.str.260:
	.asciz	"EK c #EDEDEEEEF6F6"
	.size	.L.str.260, 19

	.type	.L.str.261,@object      # @.str.261
.L.str.261:
	.asciz	"FK c #68686666B1B1"
	.size	.L.str.261, 19

	.type	.L.str.262,@object      # @.str.262
.L.str.262:
	.asciz	"GK c #65656262AFAF"
	.size	.L.str.262, 19

	.type	.L.str.263,@object      # @.str.263
.L.str.263:
	.asciz	"HK c #69696565B3B3"
	.size	.L.str.263, 19

	.type	.L.str.264,@object      # @.str.264
.L.str.264:
	.asciz	"IK c #E3E3E2E2F1F1"
	.size	.L.str.264, 19

	.type	.L.str.265,@object      # @.str.265
.L.str.265:
	.asciz	"JK c #E3E3E3E3F1F1"
	.size	.L.str.265, 19

	.type	.L.str.266,@object      # @.str.266
.L.str.266:
	.asciz	"KK c #D4D4D2D2E8E8"
	.size	.L.str.266, 19

	.type	.L.str.267,@object      # @.str.267
.L.str.267:
	.asciz	"LK c #9B9B9A9AB7B7"
	.size	.L.str.267, 19

	.type	.L.str.268,@object      # @.str.268
.L.str.268:
	.asciz	"MK c #404040407878"
	.size	.L.str.268, 19

	.type	.L.str.269,@object      # @.str.269
.L.str.269:
	.asciz	"NK c #D8D8D8D8EBEB"
	.size	.L.str.269, 19

	.type	.L.str.270,@object      # @.str.270
.L.str.270:
	.asciz	"OK c #DFDFDEDEEFEF"
	.size	.L.str.270, 19

	.type	.L.str.271,@object      # @.str.271
.L.str.271:
	.asciz	"PK c #63636060B2B2"
	.size	.L.str.271, 19

	.type	.L.str.272,@object      # @.str.272
.L.str.272:
	.asciz	"AL c #F4F4F3F3FAFA"
	.size	.L.str.272, 19

	.type	.L.str.273,@object      # @.str.273
.L.str.273:
	.asciz	"BL c #5A5A5858A5A5"
	.size	.L.str.273, 19

	.type	.L.str.274,@object      # @.str.274
.L.str.274:
	.asciz	"CL c #66666464B5B5"
	.size	.L.str.274, 19

	.type	.L.str.275,@object      # @.str.275
.L.str.275:
	.asciz	"DL c #8F8F8D8DC8C8"
	.size	.L.str.275, 19

	.type	.L.str.276,@object      # @.str.276
.L.str.276:
	.asciz	"EL c #F7F7F5F5FAFA"
	.size	.L.str.276, 19

	.type	.L.str.277,@object      # @.str.277
.L.str.277:
	.asciz	"FL c #5C5C5959ACAC"
	.size	.L.str.277, 19

	.type	.L.str.278,@object      # @.str.278
.L.str.278:
	.asciz	"GL c #5C5C5757B1B1"
	.size	.L.str.278, 19

	.type	.L.str.279,@object      # @.str.279
.L.str.279:
	.asciz	"HL c #B8B8B7B7DADA"
	.size	.L.str.279, 19

	.type	.L.str.280,@object      # @.str.280
.L.str.280:
	.asciz	"IL c #5E5E5B5BACAC"
	.size	.L.str.280, 19

	.type	.L.str.281,@object      # @.str.281
.L.str.281:
	.asciz	"JL c #41413F3F8C8C"
	.size	.L.str.281, 19

	.type	.L.str.282,@object      # @.str.282
.L.str.282:
	.asciz	"KL c #8B8B8A8AC3C3"
	.size	.L.str.282, 19

	.type	.L.str.283,@object      # @.str.283
.L.str.283:
	.asciz	"LL c #7F7F7E7EB9B9"
	.size	.L.str.283, 19

	.type	.L.str.284,@object      # @.str.284
.L.str.284:
	.asciz	"ML c #A0A0A0A0A1A1"
	.size	.L.str.284, 19

	.type	.L.str.285,@object      # @.str.285
.L.str.285:
	.asciz	"NL c #6B6B6A6A8C8C"
	.size	.L.str.285, 19

	.type	.L.str.286,@object      # @.str.286
.L.str.286:
	.asciz	"OL c #626261619C9C"
	.size	.L.str.286, 19

	.type	.L.str.287,@object      # @.str.287
.L.str.287:
	.asciz	"PL c #71716F6FB5B5"
	.size	.L.str.287, 19

	.type	.L.str.288,@object      # @.str.288
.L.str.288:
	.asciz	"AM c #55555252A7A7"
	.size	.L.str.288, 19

	.type	.L.str.289,@object      # @.str.289
.L.str.289:
	.asciz	"BM c #C8C8C7C7E3E3"
	.size	.L.str.289, 19

	.type	.L.str.290,@object      # @.str.290
.L.str.290:
	.asciz	"CM c #3E3E3E3E5A5A"
	.size	.L.str.290, 19

	.type	.L.str.291,@object      # @.str.291
.L.str.291:
	.asciz	"DM c #81817F7FC2C2"
	.size	.L.str.291, 19

	.type	.L.str.292,@object      # @.str.292
.L.str.292:
	.asciz	"EM c #52524F4F9797"
	.size	.L.str.292, 19

	.type	.L.str.293,@object      # @.str.293
.L.str.293:
	.asciz	"FM c #93939191C8C8"
	.size	.L.str.293, 19

	.type	.L.str.294,@object      # @.str.294
.L.str.294:
	.asciz	"GM c #5B5B58589F9F"
	.size	.L.str.294, 19

	.type	.L.str.295,@object      # @.str.295
.L.str.295:
	.asciz	"HM c #85858484BCBC"
	.size	.L.str.295, 19

	.type	.L.str.296,@object      # @.str.296
.L.str.296:
	.asciz	"IM c #D1D1CFCFE7E7"
	.size	.L.str.296, 19

	.type	.L.str.297,@object      # @.str.297
.L.str.297:
	.asciz	"JM c #515150508484"
	.size	.L.str.297, 19

	.type	.L.str.298,@object      # @.str.298
.L.str.298:
	.asciz	"KM c #F8F8F7F7FBFB"
	.size	.L.str.298, 19

	.type	.L.str.299,@object      # @.str.299
.L.str.299:
	.asciz	"LM c #70706D6DB6B6"
	.size	.L.str.299, 19

	.type	.L.str.300,@object      # @.str.300
.L.str.300:
	.asciz	"MM c #50504F4F7878"
	.size	.L.str.300, 19

	.type	.L.str.301,@object      # @.str.301
.L.str.301:
	.asciz	"NM c #9B9B9999CCCC"
	.size	.L.str.301, 19

	.type	.L.str.302,@object      # @.str.302
.L.str.302:
	.asciz	"OM c #5E5E5B5BB0B0"
	.size	.L.str.302, 19

	.type	.L.str.303,@object      # @.str.303
.L.str.303:
	.asciz	"PM c #62625F5FADAD"
	.size	.L.str.303, 19

	.type	.L.str.304,@object      # @.str.304
.L.str.304:
	.asciz	"AN c #B7B7B7B7DADA"
	.size	.L.str.304, 19

	.type	.L.str.305,@object      # @.str.305
.L.str.305:
	.asciz	"BN c #31312F2F7A7A"
	.size	.L.str.305, 19

	.type	.L.str.306,@object      # @.str.306
.L.str.306:
	.asciz	"CN c #484848487A7A"
	.size	.L.str.306, 19

	.type	.L.str.307,@object      # @.str.307
.L.str.307:
	.asciz	"DN c #67676565B1B1"
	.size	.L.str.307, 19

	.type	.L.str.308,@object      # @.str.308
.L.str.308:
	.asciz	"EN c #FCFCFCFCFDFD"
	.size	.L.str.308, 19

	.type	.L.str.309,@object      # @.str.309
.L.str.309:
	.asciz	"FN c #FDFDFCFCFFFF"
	.size	.L.str.309, 19

	.type	.L.str.310,@object      # @.str.310
.L.str.310:
	.asciz	"GN c #BBBBBABADCDC"
	.size	.L.str.310, 19

	.type	.L.str.311,@object      # @.str.311
.L.str.311:
	.asciz	"HN c #656566667F7F"
	.size	.L.str.311, 19

	.type	.L.str.312,@object      # @.str.312
.L.str.312:
	.asciz	"IN c #5A5A5656ABAB"
	.size	.L.str.312, 19

	.type	.L.str.313,@object      # @.str.313
.L.str.313:
	.asciz	"JN c #A8A8A7A7D4D4"
	.size	.L.str.313, 19

	.type	.L.str.314,@object      # @.str.314
.L.str.314:
	.asciz	"KN c #F8F8F8F8FBFB"
	.size	.L.str.314, 19

	.type	.L.str.315,@object      # @.str.315
.L.str.315:
	.asciz	"LN c #95959292C8C8"
	.size	.L.str.315, 19

	.type	.L.str.316,@object      # @.str.316
.L.str.316:
	.asciz	"MN c #D9D9D7D7EBEB"
	.size	.L.str.316, 19

	.type	.L.str.317,@object      # @.str.317
.L.str.317:
	.asciz	"NN c #303030305454"
	.size	.L.str.317, 19

	.type	.L.str.318,@object      # @.str.318
.L.str.318:
	.asciz	"ON c #CBCBCACADADA"
	.size	.L.str.318, 19

	.type	.L.str.319,@object      # @.str.319
.L.str.319:
	.asciz	"PN c #363637376363"
	.size	.L.str.319, 19

	.type	.L.str.320,@object      # @.str.320
.L.str.320:
	.asciz	"AO c #3B3B3B3B6868"
	.size	.L.str.320, 19

	.type	.L.str.321,@object      # @.str.321
.L.str.321:
	.asciz	"BO c #444442428181"
	.size	.L.str.321, 19

	.type	.L.str.322,@object      # @.str.322
.L.str.322:
	.asciz	"CO c #434340408D8D"
	.size	.L.str.322, 19

	.type	.L.str.323,@object      # @.str.323
.L.str.323:
	.asciz	"DO c #ABABA9A9D4D4"
	.size	.L.str.323, 19

	.type	.L.str.324,@object      # @.str.324
.L.str.324:
	.asciz	"EO c #AEAEADADD5D5"
	.size	.L.str.324, 19

	.type	.L.str.325,@object      # @.str.325
.L.str.325:
	.asciz	"FO c #5E5E5E5E8484"
	.size	.L.str.325, 19

	.type	.L.str.326,@object      # @.str.326
.L.str.326:
	.asciz	"GO c #7E7E7B7BC1C1"
	.size	.L.str.326, 19

	.type	.L.str.327,@object      # @.str.327
.L.str.327:
	.asciz	"HO c #9C9C9A9ACCCC"
	.size	.L.str.327, 19

	.type	.L.str.328,@object      # @.str.328
.L.str.328:
	.asciz	"IO c #D6D6D5D5EAEA"
	.size	.L.str.328, 19

	.type	.L.str.329,@object      # @.str.329
.L.str.329:
	.asciz	"JO c #87878484C1C1"
	.size	.L.str.329, 19

	.type	.L.str.330,@object      # @.str.330
.L.str.330:
	.asciz	"KO c #5C5C5858AEAE"
	.size	.L.str.330, 19

	.type	.L.str.331,@object      # @.str.331
.L.str.331:
	.asciz	"LO c #89898787C2C2"
	.size	.L.str.331, 19

	.type	.L.str.332,@object      # @.str.332
.L.str.332:
	.asciz	"MO c #EAEAEAEAF5F5"
	.size	.L.str.332, 19

	.type	.L.str.333,@object      # @.str.333
.L.str.333:
	.asciz	"NO c #C2C2C1C1E0E0"
	.size	.L.str.333, 19

	.type	.L.str.334,@object      # @.str.334
.L.str.334:
	.asciz	"OO c #A3A3A3A3D0D0"
	.size	.L.str.334, 19

	.type	.L.str.335,@object      # @.str.335
.L.str.335:
	.asciz	"PO c #A5A5A3A3D0D0"
	.size	.L.str.335, 19

	.type	.L.str.336,@object      # @.str.336
.L.str.336:
	.asciz	"AP c #70706E6EB9B9"
	.size	.L.str.336, 19

	.type	.L.str.337,@object      # @.str.337
.L.str.337:
	.asciz	"BP c #64646161B1B1"
	.size	.L.str.337, 19

	.type	.L.str.338,@object      # @.str.338
.L.str.338:
	.asciz	"CP c #6F6F6C6CB8B8"
	.size	.L.str.338, 19

	.type	.L.str.339,@object      # @.str.339
.L.str.339:
	.asciz	"DP c #64646161B4B4"
	.size	.L.str.339, 19

	.type	.L.str.340,@object      # @.str.340
.L.str.340:
	.asciz	"EP c #D7D7D6D6EBEB"
	.size	.L.str.340, 19

	.type	.L.str.341,@object      # @.str.341
.L.str.341:
	.asciz	"FP c #4D4D4848A7A7"
	.size	.L.str.341, 19

	.type	.L.str.342,@object      # @.str.342
.L.str.342:
	.asciz	"GP c #ECECEBEBF5F5"
	.size	.L.str.342, 19

	.type	.L.str.343,@object      # @.str.343
.L.str.343:
	.asciz	"HP c #E6E6E5E5F2F2"
	.size	.L.str.343, 19

	.type	.L.str.344,@object      # @.str.344
.L.str.344:
	.asciz	"IP c #F8F8F8F8FDFD"
	.size	.L.str.344, 19

	.type	.L.str.345,@object      # @.str.345
.L.str.345:
	.asciz	"JP c #F9F9FAFAFCFC"
	.size	.L.str.345, 19

	.type	.L.str.346,@object      # @.str.346
.L.str.346:
	.asciz	"KP c #FAFAF9F9FCFC"
	.size	.L.str.346, 19

	.type	.L.str.347,@object      # @.str.347
.L.str.347:
	.asciz	"LP c #99999898CBCB"
	.size	.L.str.347, 19

	.type	.L.str.348,@object      # @.str.348
.L.str.348:
	.asciz	"MP c #EAEAE9E9F6F6"
	.size	.L.str.348, 19

	.type	.L.str.349,@object      # @.str.349
.L.str.349:
	.asciz	"NP c #5C5C5959ABAB"
	.size	.L.str.349, 19

	.type	.L.str.350,@object      # @.str.350
.L.str.350:
	.asciz	"OP s bg c None"
	.size	.L.str.350, 15

	.type	.L.str.351,@object      # @.str.351
.L.str.351:
	.asciz	"OPOPOPOPOPOPOPOPOPOPOPOPNHNHGCGCGCJGGCGCOPOPOPOPOPOPOPOPOPOPOPOP"
	.size	.L.str.351, 65

	.type	.L.str.352,@object      # @.str.352
.L.str.352:
	.asciz	"OPOPOPOPOPOPOPOPOPMAMANHMADHOFAJKOAJOFDHJGJGGCOPOPOPOPOPOPOPOPOP"
	.size	.L.str.352, 65

	.type	.L.str.353,@object      # @.str.353
.L.str.353:
	.asciz	"OPOPOPOPOPOPOPMAMAMAMAHIILAFJHCJEHLMIGHKGHLDFDFDNHOPOPOPOPOPOPOP"
	.size	.L.str.353, 65

	.type	.L.str.354,@object      # @.str.354
.L.str.354:
	.asciz	"OPOPOPOPOPOPDHFGOIHIILIDCJOAECKAGJHHMCMCMFJOCKGHFPFDOPOPOPOPOPOP"
	.size	.L.str.354, 65

	.type	.L.str.355,@object      # @.str.355
.L.str.355:
	.asciz	"OPOPOPOPOPDHFGBAOHJFMDKFLAIHBGJCGDFELELFJKPIELFJMBAJFDOPOPOPOPOP"
	.size	.L.str.355, 65

	.type	.L.str.356,@object      # @.str.356
.L.str.356:
	.asciz	"OPOPOPOPBAHIHIDCDEJHLANDHOPCLNNBGDMFLOHHGDAGMNKMAADGFDNHOPOPOPOP"
	.size	.L.str.356, 65

	.type	.L.str.357,@object      # @.str.357
.L.str.357:
	.asciz	"OPOPOPBABAHIDCJFKHKAIMKJKJDDKEFCKKBMDGPEDOHDEDCDLIDBCKCHMAOPOPOP"
	.size	.L.str.357, 65

	.type	.L.str.358,@object      # @.str.358
.L.str.358:
	.asciz	"OPOPBAHIHIOHEILHCJNBGPIJMOABJBADEJEJKPJPKMADDBIAJBDBKACHDHMAOPOP"
	.size	.L.str.358, 65

	.type	.L.str.359,@object      # @.str.359
.L.str.359:
	.asciz	"OPOPHIHIPHDCJFCJCKCFIBIAMPDDKGNKIBIBPGMELJJILIDBDBNEEIFGFGMAOPOP"
	.size	.L.str.359, 65

	.type	.L.str.360,@object      # @.str.360
.L.str.360:
	.asciz	"OPHIHIPHPHAIAFKFKAGJAGKGKJIALEBDHOPCBDEBLNEBNAPONDAFDCMHBAGLCBOP"
	.size	.L.str.360, 65

	.type	.L.str.361,@object      # @.str.361
.L.str.361:
	.asciz	"OPHIPHCICIILDNGAKAJOJCEOJIJBIONALPKDBDNDKLCFCKIGJDDIOBINOMHAMMAC"
	.size	.L.str.361, 65

	.type	.L.str.362,@object      # @.str.362
.L.str.362:
	.asciz	"HIPHCIOHDCILAFKFNCBGKLMCMBNIPIIFFENBNDGDJCEFOANFGKGEILLCOEGGMLKB"
	.size	.L.str.362, 65

	.type	.L.str.363,@object      # @.str.363
.L.str.363:
	.asciz	"PHCIOHDCDCOBDEIGLAIHBGLOJCKDEPALKGIIPACFIHBJNFMGJDEGPKOEHGACAOHA"
	.size	.L.str.363, 65

	.type	.L.str.364,@object      # @.str.364
.L.str.364:
	.asciz	"PHOHDCNPNPOBOBMIMDNCMCBDDJEBLNGNLJGINENCIGODHBIDGKCLBNHGGBGGOEOM"
	.size	.L.str.364, 65

	.type	.L.str.365,@object      # @.str.365
.L.str.365:
	.asciz	"PHOHDCNPNPAMMDKDPFIFPJKIKIHPOKLBLBOKKGLBCFGKKHDNJEHAGGFANNAHOMHI"
	.size	.L.str.365, 65

	.type	.L.str.366,@object      # @.str.366
.L.str.366:
	.asciz	"CIDCNPNPFGFMNGDBLIGIPBFJKGDDABIAGIKEJJAEIKPCDNJEJLGGFACEICINAJBA"
	.size	.L.str.366, 65

	.type	.L.str.367,@object      # @.str.367
.L.str.367:
	.asciz	"OHDCNPAMJCALDBEKGPJIDDLIPJEDIIFEHDNALPNDNBKLCPGMAOPDCEFHBBOMHIHI"
	.size	.L.str.367, 65

	.type	.L.str.368,@object      # @.str.368
.L.str.368:
	.asciz	"OHNPAIBBPELIBEABIAJBIAIIIHODNFNFNFNFHBKHAFJEBLCNFACMJACBLCCIPHHI"
	.size	.L.str.368, 65

	.type	.L.str.369,@object      # @.str.369
.L.str.369:
	.asciz	"DCDCAIAMPCDDJKKIDDLIDJGEHBPLBJOALALABJKFKFJDMKPDNNFBEMLCDCOHPHHI"
	.size	.L.str.369, 65

	.type	.L.str.370,@object      # @.str.370
.L.str.370:
	.asciz	"DCNPNPDCPMPFIJLJJJHJCGJDKFLAECEENCNCEEECBFDKNLPNJACODPNPDCOHPHOP"
	.size	.L.str.370, 65

	.type	.L.str.371,@object      # @.str.371
.L.str.371:
	.asciz	"OPNPAIILPHDNNENIIKPBIOHEKFGANCGJGJGJGJDMBOFFAKJADFCLOBNPDCOHPHOP"
	.size	.L.str.371, 65

	.type	.L.str.372,@object      # @.str.372
.L.str.372:
	.asciz	"OPNPAIEADIKCEINMMEBEGIKEEDOOLOKAKAIHHFOJCCCCJADKAPJFAINPDCOHPHOP"
	.size	.L.str.372, 65

	.type	.L.str.373,@object      # @.str.373
.L.str.373:
	.asciz	"OPOPNPILILFIILOIKFIIOKKJHCLIKELFHLMBOLLGFOJADAGOEHIDILNPDCOHOPOP"
	.size	.L.str.373, 65

	.type	.L.str.374,@object      # @.str.374
.L.str.374:
	.asciz	"OPOPNPOBILDIFIGEJFMDGDLEIFHJCDKNAAONLGCCFHAKJCGAPLLHEANPDCOHOPOP"
	.size	.L.str.374, 65

	.type	.L.str.375,@object      # @.str.375
.L.str.375:
	.asciz	"OPOPOPOBILDIEIGEMDLAKABGNBHDIENOPGCCAOFHMMIPMPPELAGENPNPDCOPOPOP"
	.size	.L.str.375, 65

	.type	.L.str.376,@object      # @.str.376
.L.str.376:
	.asciz	"OPOPOPAIOBBIDIGEEHBGNBBDNANAHDJNJMHNFBLGMJFNENAANMAMNPDCOPOPOPOP"
	.size	.L.str.376, 65

	.type	.L.str.377,@object      # @.str.377
.L.str.377:
	.asciz	"OPOPOPOPOBILBIILNFLOHDANPFLBOCLKFBFHFFNJKIBHBKOGJFDCNPOPOPOPOPOP"
	.size	.L.str.377, 65

	.type	.L.str.378,@object      # @.str.378
.L.str.378:
	.asciz	"OPOPOPOPOPILILBIILGEHBOAGJMCHMHGFHAHLLDLKAPLBIAMNPNPOPOPOPOPOPOP"
	.size	.L.str.378, 65

	.type	.L.str.379,@object      # @.str.379
.L.str.379:
	.asciz	"OPOPOPOPOPOPOPILBIBIFIDEFKBFDAJAAHGFBFIDJFOBFLOBAIOPOPOPOPOPOPOP"
	.size	.L.str.379, 65

	.type	.L.str.380,@object      # @.str.380
.L.str.380:
	.asciz	"OPOPOPOPOPOPOPOPILILBIILPKCBJAAHJFBPILILOBOBAIOPOPOPOPOPOPOPOPOP"
	.size	.L.str.380, 65

	.type	.L.str.381,@object      # @.str.381
.L.str.381:
	.asciz	"OPOPOPOPOPOPOPOPOPOPILMIGECABCPKGHAIILOBOBOPOPOPOPOPOPOPOPOPOPOP"
	.size	.L.str.381, 65

	.type	.L.str.382,@object      # @.str.382
.L.str.382:
	.asciz	"OPOPOPOPOPOPOPOPOPOPOPOPOPCAOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOPOP"
	.size	.L.str.382, 65

	.type	handle_one_xevent.compose_status,@object # @handle_one_xevent.compose_status
	.local	handle_one_xevent.compose_status
	.comm	handle_one_xevent.compose_status,16,8
	.type	ignore_next_mouse_click_timeout,@object # @ignore_next_mouse_click_timeout
	.local	ignore_next_mouse_click_timeout
	.comm	ignore_next_mouse_click_timeout,8,8
	.type	any_help_event_p,@object # @any_help_event_p
	.local	any_help_event_p
	.comm	any_help_event_p,1,1
	.type	handle_one_xevent.last_mouse_window,@object # @handle_one_xevent.last_mouse_window
	.local	handle_one_xevent.last_mouse_window
	.comm	handle_one_xevent.last_mouse_window,8,8
	.type	.L.str.383,@object      # @.str.383
.L.str.383:
	.asciz	"g_set_prgname"
	.size	.L.str.383, 14

	.type	.L.str.384,@object      # @.str.384
.L.str.384:
	.asciz	"%s-WARNING **: %s\n"
	.size	.L.str.384, 19

	.type	current_count,@object   # @current_count
	.local	current_count
	.comm	current_count,4,4
	.type	current_finish,@object  # @current_finish
	.local	current_finish
	.comm	current_finish,4,4
	.type	current_hold_quit,@object # @current_hold_quit
	.local	current_hold_quit
	.comm	current_hold_quit,8,8
	.type	.L.str.385,@object      # @.str.385
.L.str.385:
	.asciz	"X protocol error: %s on protocol request %d"
	.size	.L.str.385, 44

	.type	error_msg,@object       # @error_msg
	.local	error_msg
	.comm	error_msg,8,8
	.type	.L.str.386,@object      # @.str.386
.L.str.386:
	.asciz	"%s\nWhen compiled with GTK, Emacs cannot recover from X disconnects.\nThis is a GTK bug: https://bugzilla.gnome.org/show_bug.cgi?id=85715\nFor details, see etc/PROBLEMS.\n"
	.size	.L.str.386, 168

	.type	.L.str.387,@object      # @.str.387
.L.str.387:
	.asciz	"%s\n"
	.size	.L.str.387, 4

	.type	.L.str.388,@object      # @.str.388
.L.str.388:
	.asciz	"%s"
	.size	.L.str.388, 3

	.type	.L.str.389,@object      # @.str.389
.L.str.389:
	.asciz	"Connection lost to X server '%s'"
	.size	.L.str.389, 33

	.type	.L.str.390,@object      # @.str.390
.L.str.390:
	.asciz	"unix:"
	.size	.L.str.390, 6

	.type	.L.str.391,@object      # @.str.391
.L.str.391:
	.asciz	"EMACS_XFIXES"
	.size	.L.str.391, 13

	.type	make_invisible_cursor.no_data,@object # @make_invisible_cursor.no_data
	.section	.rodata,"a",@progbits
make_invisible_cursor.no_data:
	.zero	1
	.size	make_invisible_cursor.no_data, 1

	.type	emacs_class,@object     # @emacs_class
	.data
emacs_class:
	.asciz	"Emacs"
	.size	emacs_class, 6

	.type	.L.str.392,@object      # @.str.392
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.392:
	.asciz	"queryInputStyle"
	.size	.L.str.392, 16

	.type	.L.str.393,@object      # @.str.393
.L.str.393:
	.asciz	"destroyCallback"
	.size	.L.str.393, 16

	.type	next_noop_dpyinfo,@object # @next_noop_dpyinfo
	.local	next_noop_dpyinfo
	.comm	next_noop_dpyinfo,8,8
	.type	x_redisplay_interface,@object # @x_redisplay_interface
	.data
	.align	8
x_redisplay_interface:
	.quad	x_frame_parm_handlers
	.quad	x_produce_glyphs
	.quad	x_write_glyphs
	.quad	x_insert_glyphs
	.quad	x_clear_end_of_line
	.quad	x_scroll_run
	.quad	x_after_update_window_line
	.quad	x_update_window_begin
	.quad	x_update_window_end
	.quad	x_flush
	.quad	x_clear_window_mouse_face
	.quad	x_get_glyph_overhangs
	.quad	x_fix_overlapping_area
	.quad	x_draw_fringe_bitmap
	.quad	0
	.quad	0
	.quad	x_compute_glyph_string_overhangs
	.quad	x_draw_glyph_string
	.quad	x_define_frame_cursor
	.quad	x_clear_frame_area
	.quad	x_draw_window_cursor
	.quad	x_draw_vertical_window_border
	.quad	x_draw_window_divider
	.quad	x_shift_glyphs_for_insert
	.quad	x_show_hourglass
	.quad	x_hide_hourglass
	.size	x_redisplay_interface, 208

	.type	.L.str.394,@object      # @.str.394
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.394:
	.asciz	"%0*X"
	.size	.L.str.394, 5

	.type	XTread_socket_fake_io_error,@object # @XTread_socket_fake_io_error
	.local	XTread_socket_fake_io_error
	.comm	XTread_socket_fake_io_error,8,8
	.type	x_noop_count,@object    # @x_noop_count
	.local	x_noop_count
	.comm	x_noop_count,4,4
	.type	.L.str.395,@object      # @.str.395
.L.str.395:
	.asciz	"horizontalScrollBar"
	.size	.L.str.395, 20

	.type	.L.str.396,@object      # @.str.396
.L.str.396:
	.asciz	"emacs_frame"
	.size	.L.str.396, 12

	.type	window_being_scrolled,@object # @window_being_scrolled
	.local	window_being_scrolled
	.comm	window_being_scrolled,8,8
	.type	.L.str.397,@object      # @.str.397
.L.str.397:
	.asciz	"verticalScrollBar"
	.size	.L.str.397, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
