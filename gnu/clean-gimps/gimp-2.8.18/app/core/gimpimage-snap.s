	.text
	.file	"gimpimage-snap.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
	.text
	.globl	gimp_image_snap_x
	.align	16, 0x90
	.type	gimp_image_snap_x,@function
gimp_image_snap_x:                      # @gimp_image_snap_x
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
	movsd	.LCPI0_0, %xmm2         # xmm2 = mem[0],zero
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movl	%edx, -44(%rbp)
	movl	%ecx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movsd	%xmm2, -64(%rbp)
	movl	$0, -68(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_snap_x, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_55
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	cmpq	$0, -32(%rbp)
	je	.LBB0_15
# BB#14:                                # %if.then.13
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_snap_x, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_55
.LBB0_16:                               # %if.end.15
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.16
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_guides
	cmpq	$0, %rax
	jne	.LBB0_19
# BB#18:                                # %if.then.19
	movl	$0, -44(%rbp)
.LBB0_19:                               # %if.end.20
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_grid
	cmpq	$0, %rax
	jne	.LBB0_21
# BB#20:                                # %if.then.23
	movl	$0, -48(%rbp)
.LBB0_21:                               # %if.end.24
	cmpl	$0, -44(%rbp)
	jne	.LBB0_25
# BB#22:                                # %lor.lhs.false
	cmpl	$0, -48(%rbp)
	jne	.LBB0_25
# BB#23:                                # %lor.lhs.false.27
	cmpl	$0, -52(%rbp)
	jne	.LBB0_25
# BB#24:                                # %if.then.29
	movl	$0, -4(%rbp)
	jmp	.LBB0_55
.LBB0_25:                               # %if.end.30
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	ucomisd	%xmm0, %xmm1
	ja	.LBB0_27
# BB#26:                                # %lor.lhs.false.32
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	callq	gimp_image_get_width
	cvtsi2sdl	%eax, %xmm0
	addsd	-40(%rbp), %xmm0
	movsd	-160(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB0_28
.LBB0_27:                               # %if.then.36
	movl	$0, -4(%rbp)
	jmp	.LBB0_55
.LBB0_28:                               # %if.end.37
	cmpl	$0, -44(%rbp)
	je	.LBB0_41
# BB#29:                                # %if.then.39
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_guides
	movq	%rax, -104(%rbp)
.LBB0_30:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -104(%rbp)
	je	.LBB0_40
# BB#31:                                # %for.body
                                        #   in Loop: Header=BB0_30 Depth=1
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	callq	gimp_guide_get_position
	movl	%eax, -116(%rbp)
	cmpl	$0, -116(%rbp)
	jge	.LBB0_33
# BB#32:                                # %if.then.48
                                        #   in Loop: Header=BB0_30 Depth=1
	jmp	.LBB0_36
.LBB0_33:                               # %if.end.49
                                        #   in Loop: Header=BB0_30 Depth=1
	movq	-112(%rbp), %rdi
	callq	gimp_guide_get_orientation
	cmpl	$1, %eax
	jne	.LBB0_35
# BB#34:                                # %if.then.53
                                        #   in Loop: Header=BB0_30 Depth=1
	leaq	-64(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-116(%rbp), %xmm1
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-32(%rbp), %rsi
	callq	gimp_image_snap_distance
	orl	-68(%rbp), %eax
	movl	%eax, -68(%rbp)
.LBB0_35:                               # %if.end.56
                                        #   in Loop: Header=BB0_30 Depth=1
	jmp	.LBB0_36
.LBB0_36:                               # %for.inc
                                        #   in Loop: Header=BB0_30 Depth=1
	cmpq	$0, -104(%rbp)
	je	.LBB0_38
# BB#37:                                # %cond.true
                                        #   in Loop: Header=BB0_30 Depth=1
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB0_39
.LBB0_38:                               # %cond.false
                                        #   in Loop: Header=BB0_30 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB0_39
.LBB0_39:                               # %cond.end
                                        #   in Loop: Header=BB0_30 Depth=1
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)
	jmp	.LBB0_30
.LBB0_40:                               # %for.end
	jmp	.LBB0_41
.LBB0_41:                               # %if.end.58
	cmpl	$0, -48(%rbp)
	je	.LBB0_52
# BB#42:                                # %if.then.60
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_grid
	leaq	-136(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rdi
	callq	gimp_grid_get_spacing
	leaq	-144(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-128(%rbp), %rdi
	callq	gimp_grid_get_offset
.LBB0_43:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-136(%rbp), %xmm0
	jbe	.LBB0_45
# BB#44:                                # %while.body
                                        #   in Loop: Header=BB0_43 Depth=1
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -144(%rbp)
	jmp	.LBB0_43
.LBB0_45:                               # %while.end
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)
.LBB0_46:                               # %for.cond.69
                                        # =>This Inner Loop Header: Depth=1
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	callq	gimp_image_get_width
	cvtsi2sdl	%eax, %xmm0
	movsd	-176(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jb	.LBB0_51
# BB#47:                                # %for.body.74
                                        #   in Loop: Header=BB0_46 Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-152(%rbp), %xmm0
	jbe	.LBB0_49
# BB#48:                                # %if.then.77
                                        #   in Loop: Header=BB0_46 Depth=1
	jmp	.LBB0_50
.LBB0_49:                               # %if.end.78
                                        #   in Loop: Header=BB0_46 Depth=1
	leaq	-64(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-32(%rbp), %rsi
	callq	gimp_image_snap_distance
	orl	-68(%rbp), %eax
	movl	%eax, -68(%rbp)
.LBB0_50:                               # %for.inc.81
                                        #   in Loop: Header=BB0_46 Depth=1
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-152(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
	jmp	.LBB0_46
.LBB0_51:                               # %for.end.83
	jmp	.LBB0_52
.LBB0_52:                               # %if.end.84
	cmpl	$0, -52(%rbp)
	je	.LBB0_54
# BB#53:                                # %if.then.86
	xorps	%xmm1, %xmm1
	leaq	-64(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-32(%rbp), %rsi
	callq	gimp_image_snap_distance
	orl	-68(%rbp), %eax
	movl	%eax, -68(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	callq	gimp_image_get_width
	leaq	-64(%rbp), %rdi
	cvtsi2sdl	%eax, %xmm1
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-32(%rbp), %rsi
	movsd	-184(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	gimp_image_snap_distance
	orl	-68(%rbp), %eax
	movl	%eax, -68(%rbp)
.LBB0_54:                               # %if.end.93
	movl	-68(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_55:                               # %return
	movl	-4(%rbp), %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_image_snap_x, .Lfunc_end0-gimp_image_snap_x
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_snap_distance,@function
gimp_image_snap_distance:               # @gimp_image_snap_distance
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
	xorps	%xmm3, %xmm3
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-16(%rbp), %xmm0
	ucomisd	%xmm0, %xmm3
	jbe	.LBB1_2
# BB#1:                                 # %cond.true
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-16(%rbp), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB1_3
.LBB1_2:                                # %cond.false
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-16(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
.LBB1_3:                                # %cond.end
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm2           # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jbe	.LBB1_5
# BB#4:                                 # %cond.true.5
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB1_6
.LBB1_5:                                # %cond.false.6
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
.LBB1_6:                                # %cond.end.7
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB1_8
# BB#7:                                 # %if.then
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, (%rax)
	movl	$1, -4(%rbp)
	jmp	.LBB1_9
.LBB1_8:                                # %if.end
	movl	$0, -4(%rbp)
.LBB1_9:                                # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_image_snap_distance, .Lfunc_end1-gimp_image_snap_distance
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
	.text
	.globl	gimp_image_snap_y
	.align	16, 0x90
	.type	gimp_image_snap_y,@function
gimp_image_snap_y:                      # @gimp_image_snap_y
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
	subq	$192, %rsp
	movsd	.LCPI2_0, %xmm2         # xmm2 = mem[0],zero
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movl	%edx, -44(%rbp)
	movl	%ecx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movsd	%xmm2, -64(%rbp)
	movl	$0, -68(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_snap_y, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB2_55
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	jmp	.LBB2_13
.LBB2_13:                               # %do.body.11
	cmpq	$0, -32(%rbp)
	je	.LBB2_15
# BB#14:                                # %if.then.13
	jmp	.LBB2_16
.LBB2_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_snap_y, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB2_55
.LBB2_16:                               # %if.end.15
	jmp	.LBB2_17
.LBB2_17:                               # %do.end.16
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_guides
	cmpq	$0, %rax
	jne	.LBB2_19
# BB#18:                                # %if.then.19
	movl	$0, -44(%rbp)
.LBB2_19:                               # %if.end.20
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_grid
	cmpq	$0, %rax
	jne	.LBB2_21
# BB#20:                                # %if.then.23
	movl	$0, -48(%rbp)
.LBB2_21:                               # %if.end.24
	cmpl	$0, -44(%rbp)
	jne	.LBB2_25
# BB#22:                                # %lor.lhs.false
	cmpl	$0, -48(%rbp)
	jne	.LBB2_25
# BB#23:                                # %lor.lhs.false.27
	cmpl	$0, -52(%rbp)
	jne	.LBB2_25
# BB#24:                                # %if.then.29
	movl	$0, -4(%rbp)
	jmp	.LBB2_55
.LBB2_25:                               # %if.end.30
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	ucomisd	%xmm0, %xmm1
	ja	.LBB2_27
# BB#26:                                # %lor.lhs.false.32
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	callq	gimp_image_get_height
	cvtsi2sdl	%eax, %xmm0
	addsd	-40(%rbp), %xmm0
	movsd	-160(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB2_28
.LBB2_27:                               # %if.then.36
	movl	$0, -4(%rbp)
	jmp	.LBB2_55
.LBB2_28:                               # %if.end.37
	cmpl	$0, -44(%rbp)
	je	.LBB2_41
# BB#29:                                # %if.then.39
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_guides
	movq	%rax, -104(%rbp)
.LBB2_30:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -104(%rbp)
	je	.LBB2_40
# BB#31:                                # %for.body
                                        #   in Loop: Header=BB2_30 Depth=1
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	callq	gimp_guide_get_position
	movl	%eax, -116(%rbp)
	cmpl	$0, -116(%rbp)
	jge	.LBB2_33
# BB#32:                                # %if.then.48
                                        #   in Loop: Header=BB2_30 Depth=1
	jmp	.LBB2_36
.LBB2_33:                               # %if.end.49
                                        #   in Loop: Header=BB2_30 Depth=1
	movq	-112(%rbp), %rdi
	callq	gimp_guide_get_orientation
	cmpl	$0, %eax
	jne	.LBB2_35
# BB#34:                                # %if.then.53
                                        #   in Loop: Header=BB2_30 Depth=1
	leaq	-64(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-116(%rbp), %xmm1
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-32(%rbp), %rsi
	callq	gimp_image_snap_distance
	orl	-68(%rbp), %eax
	movl	%eax, -68(%rbp)
.LBB2_35:                               # %if.end.56
                                        #   in Loop: Header=BB2_30 Depth=1
	jmp	.LBB2_36
.LBB2_36:                               # %for.inc
                                        #   in Loop: Header=BB2_30 Depth=1
	cmpq	$0, -104(%rbp)
	je	.LBB2_38
# BB#37:                                # %cond.true
                                        #   in Loop: Header=BB2_30 Depth=1
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB2_39
.LBB2_38:                               # %cond.false
                                        #   in Loop: Header=BB2_30 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB2_39
.LBB2_39:                               # %cond.end
                                        #   in Loop: Header=BB2_30 Depth=1
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)
	jmp	.LBB2_30
.LBB2_40:                               # %for.end
	jmp	.LBB2_41
.LBB2_41:                               # %if.end.58
	cmpl	$0, -48(%rbp)
	je	.LBB2_52
# BB#42:                                # %if.then.60
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_grid
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-136(%rbp), %rdx
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rdi
	callq	gimp_grid_get_spacing
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-144(%rbp), %rdx
	movq	-128(%rbp), %rdi
	callq	gimp_grid_get_offset
.LBB2_43:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-136(%rbp), %xmm0
	jbe	.LBB2_45
# BB#44:                                # %while.body
                                        #   in Loop: Header=BB2_43 Depth=1
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -144(%rbp)
	jmp	.LBB2_43
.LBB2_45:                               # %while.end
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)
.LBB2_46:                               # %for.cond.69
                                        # =>This Inner Loop Header: Depth=1
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	callq	gimp_image_get_height
	cvtsi2sdl	%eax, %xmm0
	movsd	-176(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jb	.LBB2_51
# BB#47:                                # %for.body.74
                                        #   in Loop: Header=BB2_46 Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-152(%rbp), %xmm0
	jbe	.LBB2_49
# BB#48:                                # %if.then.77
                                        #   in Loop: Header=BB2_46 Depth=1
	jmp	.LBB2_50
.LBB2_49:                               # %if.end.78
                                        #   in Loop: Header=BB2_46 Depth=1
	leaq	-64(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-32(%rbp), %rsi
	callq	gimp_image_snap_distance
	orl	-68(%rbp), %eax
	movl	%eax, -68(%rbp)
.LBB2_50:                               # %for.inc.81
                                        #   in Loop: Header=BB2_46 Depth=1
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-152(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
	jmp	.LBB2_46
.LBB2_51:                               # %for.end.83
	jmp	.LBB2_52
.LBB2_52:                               # %if.end.84
	cmpl	$0, -52(%rbp)
	je	.LBB2_54
# BB#53:                                # %if.then.86
	xorps	%xmm1, %xmm1
	leaq	-64(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-32(%rbp), %rsi
	callq	gimp_image_snap_distance
	orl	-68(%rbp), %eax
	movl	%eax, -68(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	callq	gimp_image_get_height
	leaq	-64(%rbp), %rdi
	cvtsi2sdl	%eax, %xmm1
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-32(%rbp), %rsi
	movsd	-184(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	gimp_image_snap_distance
	orl	-68(%rbp), %eax
	movl	%eax, -68(%rbp)
.LBB2_54:                               # %if.end.93
	movl	-68(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB2_55:                               # %return
	movl	-4(%rbp), %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_image_snap_y, .Lfunc_end2-gimp_image_snap_y
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
.LCPI3_1:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_image_snap_point
	.align	16, 0x90
	.type	gimp_image_snap_point,@function
gimp_image_snap_point:                  # @gimp_image_snap_point
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
	subq	$416, %rsp              # imm = 0x1A0
	movl	16(%rbp), %eax
	movsd	.LCPI3_0, %xmm4         # xmm4 = mem[0],zero
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movsd	%xmm2, -56(%rbp)
	movsd	%xmm3, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movl	%r8d, -72(%rbp)
	movl	%r9d, -76(%rbp)
	movl	%eax, -80(%rbp)
	movsd	%xmm4, -88(%rbp)
	movsd	%xmm4, -96(%rbp)
	movl	$0, -100(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -124(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -124(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_snap_point, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_83
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	cmpq	$0, -40(%rbp)
	je	.LBB3_15
# BB#14:                                # %if.then.13
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_snap_point, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_83
.LBB3_16:                               # %if.end.15
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.16
	jmp	.LBB3_18
.LBB3_18:                               # %do.body.17
	cmpq	$0, -48(%rbp)
	je	.LBB3_20
# BB#19:                                # %if.then.19
	jmp	.LBB3_21
.LBB3_20:                               # %if.else.20
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_snap_point, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_83
.LBB3_21:                               # %if.end.21
	jmp	.LBB3_22
.LBB3_22:                               # %do.end.22
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_guides
	cmpq	$0, %rax
	jne	.LBB3_24
# BB#23:                                # %if.then.25
	movl	$0, -68(%rbp)
.LBB3_24:                               # %if.end.26
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_grid
	cmpq	$0, %rax
	jne	.LBB3_26
# BB#25:                                # %if.then.29
	movl	$0, -72(%rbp)
.LBB3_26:                               # %if.end.30
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_active_vectors
	cmpq	$0, %rax
	jne	.LBB3_28
# BB#27:                                # %if.then.33
	movl	$0, -80(%rbp)
.LBB3_28:                               # %if.end.34
	cmpl	$0, -68(%rbp)
	jne	.LBB3_33
# BB#29:                                # %lor.lhs.false
	cmpl	$0, -72(%rbp)
	jne	.LBB3_33
# BB#30:                                # %lor.lhs.false.37
	cmpl	$0, -76(%rbp)
	jne	.LBB3_33
# BB#31:                                # %lor.lhs.false.39
	cmpl	$0, -80(%rbp)
	jne	.LBB3_33
# BB#32:                                # %if.then.41
	movl	$0, -4(%rbp)
	jmp	.LBB3_83
.LBB3_33:                               # %if.end.42
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	ucomisd	%xmm0, %xmm1
	ja	.LBB3_37
# BB#34:                                # %lor.lhs.false.44
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movsd	%xmm0, -352(%rbp)       # 8-byte Spill
	callq	gimp_image_get_width
	cvtsi2sdl	%eax, %xmm0
	addsd	-56(%rbp), %xmm0
	movsd	-352(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jae	.LBB3_37
# BB#35:                                # %lor.lhs.false.48
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	ucomisd	%xmm0, %xmm1
	ja	.LBB3_37
# BB#36:                                # %lor.lhs.false.52
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movsd	%xmm0, -360(%rbp)       # 8-byte Spill
	callq	gimp_image_get_height
	cvtsi2sdl	%eax, %xmm0
	addsd	-64(%rbp), %xmm0
	movsd	-360(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB3_38
.LBB3_37:                               # %if.then.58
	movl	$0, -4(%rbp)
	jmp	.LBB3_83
.LBB3_38:                               # %if.end.59
	cmpl	$0, -68(%rbp)
	je	.LBB3_53
# BB#39:                                # %if.then.61
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_guides
	movq	%rax, -136(%rbp)
.LBB3_40:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -136(%rbp)
	je	.LBB3_52
# BB#41:                                # %for.body
                                        #   in Loop: Header=BB3_40 Depth=1
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rdi
	callq	gimp_guide_get_position
	movl	%eax, -148(%rbp)
	cmpl	$0, -148(%rbp)
	jge	.LBB3_43
# BB#42:                                # %if.then.70
                                        #   in Loop: Header=BB3_40 Depth=1
	jmp	.LBB3_48
.LBB3_43:                               # %if.end.71
                                        #   in Loop: Header=BB3_40 Depth=1
	movq	-144(%rbp), %rdi
	callq	gimp_guide_get_orientation
	movl	%eax, %ecx
	testl	%eax, %eax
	movl	%ecx, -364(%rbp)        # 4-byte Spill
	je	.LBB3_44
	jmp	.LBB3_84
.LBB3_84:                               # %if.end.71
                                        #   in Loop: Header=BB3_40 Depth=1
	movl	-364(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -368(%rbp)        # 4-byte Spill
	je	.LBB3_45
	jmp	.LBB3_46
.LBB3_44:                               # %sw.bb
                                        #   in Loop: Header=BB3_40 Depth=1
	leaq	-96(%rbp), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-148(%rbp), %xmm1
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-48(%rbp), %rsi
	callq	gimp_image_snap_distance
	orl	-100(%rbp), %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB3_47
.LBB3_45:                               # %sw.bb.75
                                        #   in Loop: Header=BB3_40 Depth=1
	leaq	-88(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-148(%rbp), %xmm1
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-40(%rbp), %rsi
	callq	gimp_image_snap_distance
	orl	-100(%rbp), %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB3_47
.LBB3_46:                               # %sw.default
                                        #   in Loop: Header=BB3_40 Depth=1
	jmp	.LBB3_47
.LBB3_47:                               # %sw.epilog
                                        #   in Loop: Header=BB3_40 Depth=1
	jmp	.LBB3_48
.LBB3_48:                               # %for.inc
                                        #   in Loop: Header=BB3_40 Depth=1
	cmpq	$0, -136(%rbp)
	je	.LBB3_50
# BB#49:                                # %cond.true
                                        #   in Loop: Header=BB3_40 Depth=1
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	jmp	.LBB3_51
.LBB3_50:                               # %cond.false
                                        #   in Loop: Header=BB3_40 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	jmp	.LBB3_51
.LBB3_51:                               # %cond.end
                                        #   in Loop: Header=BB3_40 Depth=1
	movq	-376(%rbp), %rax        # 8-byte Reload
	movq	%rax, -136(%rbp)
	jmp	.LBB3_40
.LBB3_52:                               # %for.end
	jmp	.LBB3_53
.LBB3_53:                               # %if.end.80
	cmpl	$0, -72(%rbp)
	je	.LBB3_73
# BB#54:                                # %if.then.82
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_grid
	leaq	-168(%rbp), %rsi
	leaq	-176(%rbp), %rdx
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rdi
	callq	gimp_grid_get_spacing
	leaq	-184(%rbp), %rsi
	leaq	-192(%rbp), %rdx
	movq	-160(%rbp), %rdi
	callq	gimp_grid_get_offset
.LBB3_55:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movsd	-184(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-168(%rbp), %xmm0
	jbe	.LBB3_57
# BB#56:                                # %while.body
                                        #   in Loop: Header=BB3_55 Depth=1
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-184(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -184(%rbp)
	jmp	.LBB3_55
.LBB3_57:                               # %while.end
	jmp	.LBB3_58
.LBB3_58:                               # %while.cond.93
                                        # =>This Inner Loop Header: Depth=1
	movsd	-192(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-176(%rbp), %xmm0
	jbe	.LBB3_60
# BB#59:                                # %while.body.96
                                        #   in Loop: Header=BB3_58 Depth=1
	movsd	-176(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-192(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -192(%rbp)
	jmp	.LBB3_58
.LBB3_60:                               # %while.end.98
	movsd	-184(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)
.LBB3_61:                               # %for.cond.99
                                        # =>This Inner Loop Header: Depth=1
	movsd	-200(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movsd	%xmm0, -384(%rbp)       # 8-byte Spill
	callq	gimp_image_get_width
	cvtsi2sdl	%eax, %xmm0
	movsd	-384(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jb	.LBB3_66
# BB#62:                                # %for.body.104
                                        #   in Loop: Header=BB3_61 Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-200(%rbp), %xmm0
	jbe	.LBB3_64
# BB#63:                                # %if.then.107
                                        #   in Loop: Header=BB3_61 Depth=1
	jmp	.LBB3_65
.LBB3_64:                               # %if.end.108
                                        #   in Loop: Header=BB3_61 Depth=1
	leaq	-88(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-200(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-40(%rbp), %rsi
	callq	gimp_image_snap_distance
	orl	-100(%rbp), %eax
	movl	%eax, -100(%rbp)
.LBB3_65:                               # %for.inc.111
                                        #   in Loop: Header=BB3_61 Depth=1
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-200(%rbp), %xmm0
	movsd	%xmm0, -200(%rbp)
	jmp	.LBB3_61
.LBB3_66:                               # %for.end.113
	movsd	-192(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)
.LBB3_67:                               # %for.cond.114
                                        # =>This Inner Loop Header: Depth=1
	movsd	-200(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movsd	%xmm0, -392(%rbp)       # 8-byte Spill
	callq	gimp_image_get_height
	cvtsi2sdl	%eax, %xmm0
	movsd	-392(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jb	.LBB3_72
# BB#68:                                # %for.body.119
                                        #   in Loop: Header=BB3_67 Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-200(%rbp), %xmm0
	jbe	.LBB3_70
# BB#69:                                # %if.then.122
                                        #   in Loop: Header=BB3_67 Depth=1
	jmp	.LBB3_71
.LBB3_70:                               # %if.end.123
                                        #   in Loop: Header=BB3_67 Depth=1
	leaq	-96(%rbp), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-200(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-48(%rbp), %rsi
	callq	gimp_image_snap_distance
	orl	-100(%rbp), %eax
	movl	%eax, -100(%rbp)
.LBB3_71:                               # %for.inc.126
                                        #   in Loop: Header=BB3_67 Depth=1
	movsd	-176(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-200(%rbp), %xmm0
	movsd	%xmm0, -200(%rbp)
	jmp	.LBB3_67
.LBB3_72:                               # %for.end.128
	jmp	.LBB3_73
.LBB3_73:                               # %if.end.129
	cmpl	$0, -76(%rbp)
	je	.LBB3_75
# BB#74:                                # %if.then.131
	xorps	%xmm1, %xmm1
	leaq	-88(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-40(%rbp), %rsi
	callq	gimp_image_snap_distance
	orl	-100(%rbp), %eax
	movl	%eax, -100(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movsd	%xmm0, -400(%rbp)       # 8-byte Spill
	callq	gimp_image_get_width
	leaq	-88(%rbp), %rdi
	cvtsi2sdl	%eax, %xmm1
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-40(%rbp), %rsi
	movsd	-400(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	gimp_image_snap_distance
	xorps	%xmm1, %xmm1
	leaq	-96(%rbp), %rdi
	orl	-100(%rbp), %eax
	movl	%eax, -100(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-48(%rbp), %rsi
	callq	gimp_image_snap_distance
	orl	-100(%rbp), %eax
	movl	%eax, -100(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movsd	%xmm0, -408(%rbp)       # 8-byte Spill
	callq	gimp_image_get_height
	leaq	-96(%rbp), %rdi
	cvtsi2sdl	%eax, %xmm1
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-48(%rbp), %rsi
	movsd	-408(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	gimp_image_snap_distance
	orl	-100(%rbp), %eax
	movl	%eax, -100(%rbp)
.LBB3_75:                               # %if.end.144
	cmpl	$0, -80(%rbp)
	je	.LBB3_82
# BB#76:                                # %if.then.146
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_active_vectors
	xorl	%esi, %esi
	movl	$64, %ecx
	movl	%ecx, %edx
	leaq	-280(%rbp), %rdi
	movq	%rax, -208(%rbp)
	movq	$0, -216(%rbp)
	callq	memset
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -280(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -272(%rbp)
.LBB3_77:                               # %while.cond.153
                                        # =>This Inner Loop Header: Depth=1
	movq	-208(%rbp), %rdi
	movq	-216(%rbp), %rsi
	callq	gimp_vectors_stroke_get_next
	movq	%rax, -216(%rbp)
	cmpq	$0, %rax
	je	.LBB3_81
# BB#78:                                # %while.body.156
                                        #   in Loop: Header=BB3_77 Depth=1
	leaq	-280(%rbp), %rsi
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	leaq	-344(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-216(%rbp), %rdi
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	movq	-416(%rbp), %r8         # 8-byte Reload
	movq	-416(%rbp), %r9         # 8-byte Reload
	callq	gimp_stroke_nearest_point_get
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB3_80
# BB#79:                                # %if.then.161
                                        #   in Loop: Header=BB3_77 Depth=1
	leaq	-88(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-344(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-40(%rbp), %rsi
	callq	gimp_image_snap_distance
	leaq	-96(%rbp), %rdi
	orl	-100(%rbp), %eax
	movl	%eax, -100(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-336(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-48(%rbp), %rsi
	callq	gimp_image_snap_distance
	orl	-100(%rbp), %eax
	movl	%eax, -100(%rbp)
.LBB3_80:                               # %if.end.168
                                        #   in Loop: Header=BB3_77 Depth=1
	jmp	.LBB3_77
.LBB3_81:                               # %while.end.169
	jmp	.LBB3_82
.LBB3_82:                               # %if.end.170
	movl	-100(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB3_83:                               # %return
	movl	-4(%rbp), %eax
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_image_snap_point, .Lfunc_end3-gimp_image_snap_point
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4611686018427387904     # double 2
.LCPI4_1:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
.LCPI4_2:
	.quad	4602678819172646912     # double 0.5
.LCPI4_3:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_image_snap_rectangle
	.align	16, 0x90
	.type	gimp_image_snap_rectangle,@function
gimp_image_snap_rectangle:              # @gimp_image_snap_rectangle
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
	subq	$944, %rsp              # imm = 0x3B0
	movl	16(%rbp), %eax
	movsd	.LCPI4_0, %xmm6         # xmm6 = mem[0],zero
	movsd	.LCPI4_1, %xmm7         # xmm7 = mem[0],zero
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movsd	%xmm3, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movsd	%xmm4, -72(%rbp)
	movsd	%xmm5, -80(%rbp)
	movl	%ecx, -84(%rbp)
	movl	%r8d, -88(%rbp)
	movl	%r9d, -92(%rbp)
	movl	%eax, -96(%rbp)
	movsd	%xmm7, -120(%rbp)
	movsd	%xmm7, -128(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-40(%rbp), %xmm0
	divsd	%xmm6, %xmm0
	movsd	%xmm0, -136(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-48(%rbp), %xmm0
	divsd	%xmm6, %xmm0
	movsd	%xmm0, -144(%rbp)
	movl	$0, -148(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -168(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -172(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-160(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-168(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.5
	movl	$1, -172(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.6
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -172(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.8
	movl	-172(%rbp), %eax
	movl	%eax, -176(%rbp)
	cmpl	$0, -176(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.10
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.11
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_snap_rectangle, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB4_171
.LBB4_11:                               # %if.end.12
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.13
	cmpq	$0, -56(%rbp)
	je	.LBB4_15
# BB#14:                                # %if.then.15
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.16
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_snap_rectangle, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB4_171
.LBB4_16:                               # %if.end.17
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.18
	jmp	.LBB4_18
.LBB4_18:                               # %do.body.19
	cmpq	$0, -64(%rbp)
	je	.LBB4_20
# BB#19:                                # %if.then.21
	jmp	.LBB4_21
.LBB4_20:                               # %if.else.22
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_snap_rectangle, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB4_171
.LBB4_21:                               # %if.end.23
	jmp	.LBB4_22
.LBB4_22:                               # %do.end.24
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_guides
	cmpq	$0, %rax
	jne	.LBB4_24
# BB#23:                                # %if.then.27
	movl	$0, -84(%rbp)
.LBB4_24:                               # %if.end.28
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_grid
	cmpq	$0, %rax
	jne	.LBB4_26
# BB#25:                                # %if.then.31
	movl	$0, -88(%rbp)
.LBB4_26:                               # %if.end.32
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_active_vectors
	cmpq	$0, %rax
	jne	.LBB4_28
# BB#27:                                # %if.then.35
	movl	$0, -96(%rbp)
.LBB4_28:                               # %if.end.36
	cmpl	$0, -84(%rbp)
	jne	.LBB4_33
# BB#29:                                # %lor.lhs.false
	cmpl	$0, -88(%rbp)
	jne	.LBB4_33
# BB#30:                                # %lor.lhs.false.39
	cmpl	$0, -92(%rbp)
	jne	.LBB4_33
# BB#31:                                # %lor.lhs.false.41
	cmpl	$0, -96(%rbp)
	jne	.LBB4_33
# BB#32:                                # %if.then.43
	movl	$0, -4(%rbp)
	jmp	.LBB4_171
.LBB4_33:                               # %if.end.44
	movq	-16(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movsd	%xmm0, -408(%rbp)       # 8-byte Spill
	jbe	.LBB4_35
# BB#34:                                # %cond.true
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -416(%rbp)       # 8-byte Spill
	jmp	.LBB4_36
.LBB4_35:                               # %cond.false
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -416(%rbp)       # 8-byte Spill
.LBB4_36:                               # %cond.end
	movsd	-416(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	leaq	-104(%rbp), %rsi
	movl	-84(%rbp), %edx
	movl	-88(%rbp), %ecx
	movl	-92(%rbp), %r8d
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movsd	-408(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -424(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-424(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_image_snap_x
	cmpl	$0, %eax
	je	.LBB4_41
# BB#37:                                # %if.then.48
	xorps	%xmm0, %xmm0
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-24(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_39
# BB#38:                                # %cond.true.50
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-24(%rbp), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -432(%rbp)       # 8-byte Spill
	jmp	.LBB4_40
.LBB4_39:                               # %cond.false.53
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-24(%rbp), %xmm0
	movsd	%xmm0, -432(%rbp)       # 8-byte Spill
.LBB4_40:                               # %cond.end.55
	movsd	-432(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	%xmm0, (%rax)
	movl	$1, -148(%rbp)
.LBB4_41:                               # %if.end.57
	movq	-16(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	movsd	%xmm0, -448(%rbp)       # 8-byte Spill
	jbe	.LBB4_43
# BB#42:                                # %cond.true.59
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -456(%rbp)       # 8-byte Spill
	jmp	.LBB4_44
.LBB4_43:                               # %cond.false.60
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -456(%rbp)       # 8-byte Spill
.LBB4_44:                               # %cond.end.61
	movsd	-456(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	leaq	-104(%rbp), %rsi
	movl	-84(%rbp), %edx
	movl	-88(%rbp), %ecx
	movl	-92(%rbp), %r8d
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movsd	-448(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -464(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-464(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_image_snap_x
	cmpl	$0, %eax
	je	.LBB4_49
# BB#45:                                # %if.then.65
	xorps	%xmm0, %xmm0
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-40(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_47
# BB#46:                                # %cond.true.68
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-40(%rbp), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -472(%rbp)       # 8-byte Spill
	jmp	.LBB4_48
.LBB4_47:                               # %cond.false.71
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-40(%rbp), %xmm0
	movsd	%xmm0, -472(%rbp)       # 8-byte Spill
.LBB4_48:                               # %cond.end.73
	movsd	-472(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	rint
	movq	-56(%rbp), %rax
	movsd	%xmm0, (%rax)
	movl	$1, -148(%rbp)
.LBB4_49:                               # %if.end.78
	movq	-16(%rbp), %rdi
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movq	%rdi, -480(%rbp)        # 8-byte Spill
	movsd	%xmm0, -488(%rbp)       # 8-byte Spill
	jbe	.LBB4_51
# BB#50:                                # %cond.true.80
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -496(%rbp)       # 8-byte Spill
	jmp	.LBB4_52
.LBB4_51:                               # %cond.false.81
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -496(%rbp)       # 8-byte Spill
.LBB4_52:                               # %cond.end.82
	movsd	-496(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	leaq	-104(%rbp), %rsi
	movl	-84(%rbp), %edx
	movl	-88(%rbp), %ecx
	movl	-92(%rbp), %r8d
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movsd	-488(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -504(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-504(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_image_snap_x
	cmpl	$0, %eax
	je	.LBB4_57
# BB#53:                                # %if.then.86
	xorps	%xmm0, %xmm0
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-136(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_55
# BB#54:                                # %cond.true.89
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-136(%rbp), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -512(%rbp)       # 8-byte Spill
	jmp	.LBB4_56
.LBB4_55:                               # %cond.false.92
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-136(%rbp), %xmm0
	movsd	%xmm0, -512(%rbp)       # 8-byte Spill
.LBB4_56:                               # %cond.end.94
	movsd	-512(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-136(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	rint
	movq	-56(%rbp), %rax
	movsd	%xmm0, (%rax)
	movl	$1, -148(%rbp)
.LBB4_57:                               # %if.end.99
	movq	-16(%rbp), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-128(%rbp), %xmm2       # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movq	%rdi, -520(%rbp)        # 8-byte Spill
	movsd	%xmm0, -528(%rbp)       # 8-byte Spill
	jbe	.LBB4_59
# BB#58:                                # %cond.true.101
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -536(%rbp)       # 8-byte Spill
	jmp	.LBB4_60
.LBB4_59:                               # %cond.false.102
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -536(%rbp)       # 8-byte Spill
.LBB4_60:                               # %cond.end.103
	movsd	-536(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	leaq	-112(%rbp), %rsi
	movl	-84(%rbp), %edx
	movl	-88(%rbp), %ecx
	movl	-92(%rbp), %r8d
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movsd	-528(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -544(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-544(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_image_snap_y
	cmpl	$0, %eax
	je	.LBB4_65
# BB#61:                                # %if.then.107
	xorps	%xmm0, %xmm0
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-32(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_63
# BB#62:                                # %cond.true.110
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-32(%rbp), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -552(%rbp)       # 8-byte Spill
	jmp	.LBB4_64
.LBB4_63:                               # %cond.false.113
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-32(%rbp), %xmm0
	movsd	%xmm0, -552(%rbp)       # 8-byte Spill
.LBB4_64:                               # %cond.end.115
	movsd	-552(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	movsd	%xmm0, (%rax)
	movl	$1, -148(%rbp)
.LBB4_65:                               # %if.end.117
	movq	-16(%rbp), %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-128(%rbp), %xmm2       # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movq	%rdi, -560(%rbp)        # 8-byte Spill
	movsd	%xmm0, -568(%rbp)       # 8-byte Spill
	jbe	.LBB4_67
# BB#66:                                # %cond.true.119
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -576(%rbp)       # 8-byte Spill
	jmp	.LBB4_68
.LBB4_67:                               # %cond.false.120
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -576(%rbp)       # 8-byte Spill
.LBB4_68:                               # %cond.end.121
	movsd	-576(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	leaq	-112(%rbp), %rsi
	movl	-84(%rbp), %edx
	movl	-88(%rbp), %ecx
	movl	-92(%rbp), %r8d
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movsd	-568(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -584(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-584(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_image_snap_y
	cmpl	$0, %eax
	je	.LBB4_73
# BB#69:                                # %if.then.125
	xorps	%xmm0, %xmm0
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-48(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_71
# BB#70:                                # %cond.true.128
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-48(%rbp), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -592(%rbp)       # 8-byte Spill
	jmp	.LBB4_72
.LBB4_71:                               # %cond.false.131
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-48(%rbp), %xmm0
	movsd	%xmm0, -592(%rbp)       # 8-byte Spill
.LBB4_72:                               # %cond.end.133
	movsd	-592(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-48(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	rint
	movq	-64(%rbp), %rax
	movsd	%xmm0, (%rax)
	movl	$1, -148(%rbp)
.LBB4_73:                               # %if.end.138
	movq	-16(%rbp), %rdi
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-128(%rbp), %xmm2       # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	movsd	%xmm0, -608(%rbp)       # 8-byte Spill
	jbe	.LBB4_75
# BB#74:                                # %cond.true.140
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -616(%rbp)       # 8-byte Spill
	jmp	.LBB4_76
.LBB4_75:                               # %cond.false.141
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -616(%rbp)       # 8-byte Spill
.LBB4_76:                               # %cond.end.142
	movsd	-616(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	leaq	-112(%rbp), %rsi
	movl	-84(%rbp), %edx
	movl	-88(%rbp), %ecx
	movl	-92(%rbp), %r8d
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movsd	-608(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -624(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-624(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_image_snap_y
	cmpl	$0, %eax
	je	.LBB4_81
# BB#77:                                # %if.then.146
	xorps	%xmm0, %xmm0
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-144(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_79
# BB#78:                                # %cond.true.149
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-144(%rbp), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -632(%rbp)       # 8-byte Spill
	jmp	.LBB4_80
.LBB4_79:                               # %cond.false.152
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-144(%rbp), %xmm0
	movsd	%xmm0, -632(%rbp)       # 8-byte Spill
.LBB4_80:                               # %cond.end.154
	movsd	-632(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-144(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	rint
	movq	-64(%rbp), %rax
	movsd	%xmm0, (%rax)
	movl	$1, -148(%rbp)
.LBB4_81:                               # %if.end.159
	cmpl	$0, -96(%rbp)
	je	.LBB4_170
# BB#82:                                # %if.then.161
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_active_vectors
	movsd	.LCPI4_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_3, %xmm1         # xmm1 = mem[0],zero
	xorl	%ecx, %ecx
	movl	$64, %edx
	movl	%edx, %edi
	leaq	-320(%rbp), %rsi
	leaq	-256(%rbp), %r8
	movq	%rax, -184(%rbp)
	movq	$0, -192(%rbp)
	movq	%rdi, -640(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rsi, -648(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movq	-640(%rbp), %rdx        # 8-byte Reload
	movl	%ecx, -652(%rbp)        # 4-byte Spill
	movsd	%xmm0, -664(%rbp)       # 8-byte Spill
	movsd	%xmm1, -672(%rbp)       # 8-byte Spill
	callq	memset
	movsd	-672(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -240(%rbp)
	movsd	-664(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -216(%rbp)
	movq	-648(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	movl	-652(%rbp), %esi        # 4-byte Reload
	movq	-640(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movsd	-672(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -304(%rbp)
	movsd	-664(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -280(%rbp)
.LBB4_83:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-184(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	gimp_vectors_stroke_get_next
	movq	%rax, -192(%rbp)
	cmpq	$0, %rax
	je	.LBB4_169
# BB#84:                                # %while.body
                                        #   in Loop: Header=BB4_83 Depth=1
	leaq	-256(%rbp), %rsi
	leaq	-320(%rbp), %rdx
	movsd	.LCPI4_3, %xmm0         # xmm0 = mem[0],zero
	leaq	-384(%rbp), %rcx
	xorl	%eax, %eax
	movl	%eax, %edi
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -256(%rbp)
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -248(%rbp)
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -320(%rbp)
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -312(%rbp)
	movq	-192(%rbp), %r8
	movq	%rdi, -680(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-680(%rbp), %r8         # 8-byte Reload
	movq	-680(%rbp), %r9         # 8-byte Reload
	movq	$0, (%rsp)
	callq	gimp_stroke_nearest_tangent_get
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB4_86
# BB#85:                                # %if.then.175
                                        #   in Loop: Header=BB4_83 Depth=1
	leaq	-128(%rbp), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-376(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-64(%rbp), %rsi
	callq	gimp_image_snap_distance
	orl	-148(%rbp), %eax
	movl	%eax, -148(%rbp)
.LBB4_86:                               # %if.end.178
                                        #   in Loop: Header=BB4_83 Depth=1
	leaq	-256(%rbp), %rsi
	leaq	-320(%rbp), %rdx
	movsd	.LCPI4_3, %xmm0         # xmm0 = mem[0],zero
	leaq	-384(%rbp), %rcx
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-192(%rbp), %r8
	movq	%rdi, -688(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-688(%rbp), %r8         # 8-byte Reload
	movq	-688(%rbp), %r9         # 8-byte Reload
	movq	$0, (%rsp)
	callq	gimp_stroke_nearest_intersection_get
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB4_88
# BB#87:                                # %if.then.181
                                        #   in Loop: Header=BB4_83 Depth=1
	leaq	-120(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-384(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-56(%rbp), %rsi
	callq	gimp_image_snap_distance
	orl	-148(%rbp), %eax
	movl	%eax, -148(%rbp)
.LBB4_88:                               # %if.end.185
                                        #   in Loop: Header=BB4_83 Depth=1
	leaq	-320(%rbp), %rsi
	leaq	-256(%rbp), %rdx
	movsd	.LCPI4_3, %xmm0         # xmm0 = mem[0],zero
	leaq	-384(%rbp), %rcx
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-192(%rbp), %r8
	movq	%rdi, -696(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-696(%rbp), %r8         # 8-byte Reload
	movq	-696(%rbp), %r9         # 8-byte Reload
	movq	$0, (%rsp)
	callq	gimp_stroke_nearest_intersection_get
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB4_98
# BB#89:                                # %if.then.188
                                        #   in Loop: Header=BB4_83 Depth=1
	xorps	%xmm0, %xmm0
	movsd	-384(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-40(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_91
# BB#90:                                # %cond.true.192
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-384(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-40(%rbp), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -704(%rbp)       # 8-byte Spill
	jmp	.LBB4_92
.LBB4_91:                               # %cond.false.196
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-384(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-40(%rbp), %xmm0
	movsd	%xmm0, -704(%rbp)       # 8-byte Spill
.LBB4_92:                               # %cond.end.199
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-704(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -392(%rbp)
	movsd	-392(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -712(%rbp)       # 8-byte Spill
	jbe	.LBB4_94
# BB#93:                                # %cond.true.202
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -720(%rbp)       # 8-byte Spill
	jmp	.LBB4_95
.LBB4_94:                               # %cond.false.203
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -720(%rbp)       # 8-byte Spill
.LBB4_95:                               # %cond.end.204
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-720(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-712(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_97
# BB#96:                                # %if.then.207
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-392(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-384(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	rint
	movq	-56(%rbp), %rax
	movsd	%xmm0, (%rax)
	movl	$1, -148(%rbp)
.LBB4_97:                               # %if.end.212
                                        #   in Loop: Header=BB4_83 Depth=1
	jmp	.LBB4_98
.LBB4_98:                               # %if.end.213
                                        #   in Loop: Header=BB4_83 Depth=1
	leaq	-256(%rbp), %rsi
	leaq	-320(%rbp), %rdx
	movsd	.LCPI4_3, %xmm0         # xmm0 = mem[0],zero
	leaq	-384(%rbp), %rcx
	xorl	%eax, %eax
	movl	%eax, %edi
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -256(%rbp)
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -248(%rbp)
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -320(%rbp)
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -312(%rbp)
	movq	-192(%rbp), %r8
	movq	%rdi, -728(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-728(%rbp), %r8         # 8-byte Reload
	movq	-728(%rbp), %r9         # 8-byte Reload
	movq	$0, (%rsp)
	callq	gimp_stroke_nearest_tangent_get
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB4_108
# BB#99:                                # %if.then.220
                                        #   in Loop: Header=BB4_83 Depth=1
	xorps	%xmm0, %xmm0
	movsd	-376(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-48(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_101
# BB#100:                               # %cond.true.224
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-376(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-48(%rbp), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -736(%rbp)       # 8-byte Spill
	jmp	.LBB4_102
.LBB4_101:                              # %cond.false.228
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-376(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-48(%rbp), %xmm0
	movsd	%xmm0, -736(%rbp)       # 8-byte Spill
.LBB4_102:                              # %cond.end.231
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-736(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -392(%rbp)
	movsd	-392(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-128(%rbp), %xmm2       # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -744(%rbp)       # 8-byte Spill
	jbe	.LBB4_104
# BB#103:                               # %cond.true.234
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -752(%rbp)       # 8-byte Spill
	jmp	.LBB4_105
.LBB4_104:                              # %cond.false.235
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -752(%rbp)       # 8-byte Spill
.LBB4_105:                              # %cond.end.236
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-752(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-744(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_107
# BB#106:                               # %if.then.239
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-392(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-376(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-48(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	rint
	movq	-64(%rbp), %rax
	movsd	%xmm0, (%rax)
	movl	$1, -148(%rbp)
.LBB4_107:                              # %if.end.244
                                        #   in Loop: Header=BB4_83 Depth=1
	jmp	.LBB4_108
.LBB4_108:                              # %if.end.245
                                        #   in Loop: Header=BB4_83 Depth=1
	leaq	-256(%rbp), %rsi
	leaq	-320(%rbp), %rdx
	movsd	.LCPI4_3, %xmm0         # xmm0 = mem[0],zero
	leaq	-384(%rbp), %rcx
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-192(%rbp), %r8
	movq	%rdi, -760(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-760(%rbp), %r8         # 8-byte Reload
	movq	-760(%rbp), %r9         # 8-byte Reload
	movq	$0, (%rsp)
	callq	gimp_stroke_nearest_intersection_get
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB4_110
# BB#109:                               # %if.then.248
                                        #   in Loop: Header=BB4_83 Depth=1
	leaq	-120(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-384(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-56(%rbp), %rsi
	callq	gimp_image_snap_distance
	orl	-148(%rbp), %eax
	movl	%eax, -148(%rbp)
.LBB4_110:                              # %if.end.252
                                        #   in Loop: Header=BB4_83 Depth=1
	leaq	-320(%rbp), %rsi
	leaq	-256(%rbp), %rdx
	movsd	.LCPI4_3, %xmm0         # xmm0 = mem[0],zero
	leaq	-384(%rbp), %rcx
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-192(%rbp), %r8
	movq	%rdi, -768(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-768(%rbp), %r8         # 8-byte Reload
	movq	-768(%rbp), %r9         # 8-byte Reload
	movq	$0, (%rsp)
	callq	gimp_stroke_nearest_intersection_get
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB4_120
# BB#111:                               # %if.then.255
                                        #   in Loop: Header=BB4_83 Depth=1
	xorps	%xmm0, %xmm0
	movsd	-384(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-40(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_113
# BB#112:                               # %cond.true.259
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-384(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-40(%rbp), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -776(%rbp)       # 8-byte Spill
	jmp	.LBB4_114
.LBB4_113:                              # %cond.false.263
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-384(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-40(%rbp), %xmm0
	movsd	%xmm0, -776(%rbp)       # 8-byte Spill
.LBB4_114:                              # %cond.end.266
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-776(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -392(%rbp)
	movsd	-392(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -784(%rbp)       # 8-byte Spill
	jbe	.LBB4_116
# BB#115:                               # %cond.true.269
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -792(%rbp)       # 8-byte Spill
	jmp	.LBB4_117
.LBB4_116:                              # %cond.false.270
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -792(%rbp)       # 8-byte Spill
.LBB4_117:                              # %cond.end.271
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-792(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-784(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_119
# BB#118:                               # %if.then.274
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-392(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-384(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	rint
	movq	-56(%rbp), %rax
	movsd	%xmm0, (%rax)
	movl	$1, -148(%rbp)
.LBB4_119:                              # %if.end.279
                                        #   in Loop: Header=BB4_83 Depth=1
	jmp	.LBB4_120
.LBB4_120:                              # %if.end.280
                                        #   in Loop: Header=BB4_83 Depth=1
	leaq	-256(%rbp), %rsi
	leaq	-320(%rbp), %rdx
	movsd	.LCPI4_3, %xmm0         # xmm0 = mem[0],zero
	leaq	-384(%rbp), %rcx
	xorl	%eax, %eax
	movl	%eax, %edi
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -256(%rbp)
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -248(%rbp)
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -320(%rbp)
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -312(%rbp)
	movq	-192(%rbp), %r8
	movq	%rdi, -800(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-800(%rbp), %r8         # 8-byte Reload
	movq	-800(%rbp), %r9         # 8-byte Reload
	movq	$0, (%rsp)
	callq	gimp_stroke_nearest_tangent_get
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB4_122
# BB#121:                               # %if.then.287
                                        #   in Loop: Header=BB4_83 Depth=1
	leaq	-120(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-384(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-56(%rbp), %rsi
	callq	gimp_image_snap_distance
	orl	-148(%rbp), %eax
	movl	%eax, -148(%rbp)
.LBB4_122:                              # %if.end.291
                                        #   in Loop: Header=BB4_83 Depth=1
	leaq	-256(%rbp), %rsi
	leaq	-320(%rbp), %rdx
	movsd	.LCPI4_3, %xmm0         # xmm0 = mem[0],zero
	leaq	-384(%rbp), %rcx
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-192(%rbp), %r8
	movq	%rdi, -808(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-808(%rbp), %r8         # 8-byte Reload
	movq	-808(%rbp), %r9         # 8-byte Reload
	movq	$0, (%rsp)
	callq	gimp_stroke_nearest_intersection_get
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB4_124
# BB#123:                               # %if.then.294
                                        #   in Loop: Header=BB4_83 Depth=1
	leaq	-128(%rbp), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-376(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-64(%rbp), %rsi
	callq	gimp_image_snap_distance
	orl	-148(%rbp), %eax
	movl	%eax, -148(%rbp)
.LBB4_124:                              # %if.end.298
                                        #   in Loop: Header=BB4_83 Depth=1
	leaq	-320(%rbp), %rsi
	leaq	-256(%rbp), %rdx
	movsd	.LCPI4_3, %xmm0         # xmm0 = mem[0],zero
	leaq	-384(%rbp), %rcx
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-192(%rbp), %r8
	movq	%rdi, -816(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-816(%rbp), %r8         # 8-byte Reload
	movq	-816(%rbp), %r9         # 8-byte Reload
	movq	$0, (%rsp)
	callq	gimp_stroke_nearest_intersection_get
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB4_134
# BB#125:                               # %if.then.301
                                        #   in Loop: Header=BB4_83 Depth=1
	xorps	%xmm0, %xmm0
	movsd	-376(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-48(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_127
# BB#126:                               # %cond.true.305
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-376(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-48(%rbp), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -824(%rbp)       # 8-byte Spill
	jmp	.LBB4_128
.LBB4_127:                              # %cond.false.309
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-376(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-48(%rbp), %xmm0
	movsd	%xmm0, -824(%rbp)       # 8-byte Spill
.LBB4_128:                              # %cond.end.312
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-824(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -392(%rbp)
	movsd	-392(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-128(%rbp), %xmm2       # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -832(%rbp)       # 8-byte Spill
	jbe	.LBB4_130
# BB#129:                               # %cond.true.315
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -840(%rbp)       # 8-byte Spill
	jmp	.LBB4_131
.LBB4_130:                              # %cond.false.316
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -840(%rbp)       # 8-byte Spill
.LBB4_131:                              # %cond.end.317
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-840(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-832(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_133
# BB#132:                               # %if.then.320
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-392(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-376(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-48(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	rint
	movq	-64(%rbp), %rax
	movsd	%xmm0, (%rax)
	movl	$1, -148(%rbp)
.LBB4_133:                              # %if.end.325
                                        #   in Loop: Header=BB4_83 Depth=1
	jmp	.LBB4_134
.LBB4_134:                              # %if.end.326
                                        #   in Loop: Header=BB4_83 Depth=1
	leaq	-256(%rbp), %rsi
	leaq	-320(%rbp), %rdx
	movsd	.LCPI4_3, %xmm0         # xmm0 = mem[0],zero
	leaq	-384(%rbp), %rcx
	xorl	%eax, %eax
	movl	%eax, %edi
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -256(%rbp)
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -248(%rbp)
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -320(%rbp)
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -312(%rbp)
	movq	-192(%rbp), %r8
	movq	%rdi, -848(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-848(%rbp), %r8         # 8-byte Reload
	movq	-848(%rbp), %r9         # 8-byte Reload
	movq	$0, (%rsp)
	callq	gimp_stroke_nearest_tangent_get
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB4_144
# BB#135:                               # %if.then.333
                                        #   in Loop: Header=BB4_83 Depth=1
	xorps	%xmm0, %xmm0
	movsd	-384(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-40(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_137
# BB#136:                               # %cond.true.337
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-384(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-40(%rbp), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -856(%rbp)       # 8-byte Spill
	jmp	.LBB4_138
.LBB4_137:                              # %cond.false.341
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-384(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-40(%rbp), %xmm0
	movsd	%xmm0, -856(%rbp)       # 8-byte Spill
.LBB4_138:                              # %cond.end.344
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-856(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -392(%rbp)
	movsd	-392(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -864(%rbp)       # 8-byte Spill
	jbe	.LBB4_140
# BB#139:                               # %cond.true.347
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -872(%rbp)       # 8-byte Spill
	jmp	.LBB4_141
.LBB4_140:                              # %cond.false.348
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -872(%rbp)       # 8-byte Spill
.LBB4_141:                              # %cond.end.349
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-872(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-864(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_143
# BB#142:                               # %if.then.352
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-392(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-384(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	rint
	movq	-56(%rbp), %rax
	movsd	%xmm0, (%rax)
	movl	$1, -148(%rbp)
.LBB4_143:                              # %if.end.357
                                        #   in Loop: Header=BB4_83 Depth=1
	jmp	.LBB4_144
.LBB4_144:                              # %if.end.358
                                        #   in Loop: Header=BB4_83 Depth=1
	leaq	-256(%rbp), %rsi
	leaq	-320(%rbp), %rdx
	movsd	.LCPI4_3, %xmm0         # xmm0 = mem[0],zero
	leaq	-384(%rbp), %rcx
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-192(%rbp), %r8
	movq	%rdi, -880(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-880(%rbp), %r8         # 8-byte Reload
	movq	-880(%rbp), %r9         # 8-byte Reload
	movq	$0, (%rsp)
	callq	gimp_stroke_nearest_intersection_get
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB4_146
# BB#145:                               # %if.then.361
                                        #   in Loop: Header=BB4_83 Depth=1
	leaq	-128(%rbp), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-376(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-64(%rbp), %rsi
	callq	gimp_image_snap_distance
	orl	-148(%rbp), %eax
	movl	%eax, -148(%rbp)
.LBB4_146:                              # %if.end.365
                                        #   in Loop: Header=BB4_83 Depth=1
	leaq	-320(%rbp), %rsi
	leaq	-256(%rbp), %rdx
	movsd	.LCPI4_3, %xmm0         # xmm0 = mem[0],zero
	leaq	-384(%rbp), %rcx
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-192(%rbp), %r8
	movq	%rdi, -888(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-888(%rbp), %r8         # 8-byte Reload
	movq	-888(%rbp), %r9         # 8-byte Reload
	movq	$0, (%rsp)
	callq	gimp_stroke_nearest_intersection_get
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB4_156
# BB#147:                               # %if.then.368
                                        #   in Loop: Header=BB4_83 Depth=1
	xorps	%xmm0, %xmm0
	movsd	-376(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-48(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_149
# BB#148:                               # %cond.true.372
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-376(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-48(%rbp), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -896(%rbp)       # 8-byte Spill
	jmp	.LBB4_150
.LBB4_149:                              # %cond.false.376
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-376(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-48(%rbp), %xmm0
	movsd	%xmm0, -896(%rbp)       # 8-byte Spill
.LBB4_150:                              # %cond.end.379
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-896(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -392(%rbp)
	movsd	-392(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-128(%rbp), %xmm2       # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -904(%rbp)       # 8-byte Spill
	jbe	.LBB4_152
# BB#151:                               # %cond.true.382
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -912(%rbp)       # 8-byte Spill
	jmp	.LBB4_153
.LBB4_152:                              # %cond.false.383
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -912(%rbp)       # 8-byte Spill
.LBB4_153:                              # %cond.end.384
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-912(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-904(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_155
# BB#154:                               # %if.then.387
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-392(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-376(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-48(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	rint
	movq	-64(%rbp), %rax
	movsd	%xmm0, (%rax)
	movl	$1, -148(%rbp)
.LBB4_155:                              # %if.end.392
                                        #   in Loop: Header=BB4_83 Depth=1
	jmp	.LBB4_156
.LBB4_156:                              # %if.end.393
                                        #   in Loop: Header=BB4_83 Depth=1
	leaq	-256(%rbp), %rsi
	movsd	.LCPI4_3, %xmm0         # xmm0 = mem[0],zero
	leaq	-384(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm1, -256(%rbp)
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm1, -248(%rbp)
	movq	-192(%rbp), %rdi
	movq	%rcx, -920(%rbp)        # 8-byte Spill
	movq	-920(%rbp), %r8         # 8-byte Reload
	movq	-920(%rbp), %r9         # 8-byte Reload
	callq	gimp_stroke_nearest_point_get
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB4_168
# BB#157:                               # %if.then.398
                                        #   in Loop: Header=BB4_83 Depth=1
	leaq	-120(%rbp), %rdi
	leaq	-104(%rbp), %rsi
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-384(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	callq	gimp_image_snap_distance
	cmpl	$0, %eax
	je	.LBB4_162
# BB#158:                               # %if.then.402
                                        #   in Loop: Header=BB4_83 Depth=1
	xorps	%xmm0, %xmm0
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-136(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_160
# BB#159:                               # %cond.true.405
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-136(%rbp), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -928(%rbp)       # 8-byte Spill
	jmp	.LBB4_161
.LBB4_160:                              # %cond.false.408
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-136(%rbp), %xmm0
	movsd	%xmm0, -928(%rbp)       # 8-byte Spill
.LBB4_161:                              # %cond.end.410
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-928(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-136(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	rint
	movq	-56(%rbp), %rax
	movsd	%xmm0, (%rax)
	movl	$1, -148(%rbp)
.LBB4_162:                              # %if.end.415
                                        #   in Loop: Header=BB4_83 Depth=1
	leaq	-128(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-376(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	callq	gimp_image_snap_distance
	cmpl	$0, %eax
	je	.LBB4_167
# BB#163:                               # %if.then.419
                                        #   in Loop: Header=BB4_83 Depth=1
	xorps	%xmm0, %xmm0
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-144(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_165
# BB#164:                               # %cond.true.422
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-144(%rbp), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -936(%rbp)       # 8-byte Spill
	jmp	.LBB4_166
.LBB4_165:                              # %cond.false.425
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-144(%rbp), %xmm0
	movsd	%xmm0, -936(%rbp)       # 8-byte Spill
.LBB4_166:                              # %cond.end.427
                                        #   in Loop: Header=BB4_83 Depth=1
	movsd	-936(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-144(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	rint
	movq	-64(%rbp), %rax
	movsd	%xmm0, (%rax)
	movl	$1, -148(%rbp)
.LBB4_167:                              # %if.end.432
                                        #   in Loop: Header=BB4_83 Depth=1
	jmp	.LBB4_168
.LBB4_168:                              # %if.end.433
                                        #   in Loop: Header=BB4_83 Depth=1
	jmp	.LBB4_83
.LBB4_169:                              # %while.end
	jmp	.LBB4_170
.LBB4_170:                              # %if.end.434
	movl	-148(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB4_171:                              # %return
	movl	-4(%rbp), %eax
	addq	$944, %rsp              # imm = 0x3B0
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_image_snap_rectangle, .Lfunc_end4-gimp_image_snap_rectangle
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_image_snap_x,@object # @__func__.gimp_image_snap_x
.L__func__.gimp_image_snap_x:
	.asciz	"gimp_image_snap_x"
	.size	.L__func__.gimp_image_snap_x, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"tx != NULL"
	.size	.L.str.2, 11

	.type	.L__func__.gimp_image_snap_y,@object # @__func__.gimp_image_snap_y
.L__func__.gimp_image_snap_y:
	.asciz	"gimp_image_snap_y"
	.size	.L__func__.gimp_image_snap_y, 18

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"ty != NULL"
	.size	.L.str.3, 11

	.type	.L__func__.gimp_image_snap_point,@object # @__func__.gimp_image_snap_point
.L__func__.gimp_image_snap_point:
	.asciz	"gimp_image_snap_point"
	.size	.L__func__.gimp_image_snap_point, 22

	.type	.L__func__.gimp_image_snap_rectangle,@object # @__func__.gimp_image_snap_rectangle
.L__func__.gimp_image_snap_rectangle:
	.asciz	"gimp_image_snap_rectangle"
	.size	.L__func__.gimp_image_snap_rectangle, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"tx1 != NULL"
	.size	.L.str.4, 12

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"ty1 != NULL"
	.size	.L.str.5, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
