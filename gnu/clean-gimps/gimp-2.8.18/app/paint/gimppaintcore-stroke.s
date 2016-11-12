	.text
	.file	"gimppaintcore-stroke.bc"
	.globl	gimp_paint_core_stroke
	.align	16, 0x90
	.type	gimp_paint_core_stroke,@function
gimp_paint_core_stroke:                 # @gimp_paint_core_stroke
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
	subq	$160, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
	movq	%rax, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_paint_core_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_paint_core_stroke, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_64
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB0_15
# BB#14:                                # %if.then.20
	movl	$0, -100(%rbp)
	jmp	.LBB0_20
.LBB0_15:                               # %if.else.21
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_18
# BB#16:                                # %land.lhs.true.24
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB0_18
# BB#17:                                # %if.then.28
	movl	$1, -100(%rbp)
	jmp	.LBB0_19
.LBB0_18:                               # %if.else.29
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB0_19:                               # %if.end.31
	jmp	.LBB0_20
.LBB0_20:                               # %if.end.32
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB0_22
# BB#21:                                # %if.then.35
	jmp	.LBB0_23
.LBB0_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_paint_core_stroke, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_64
.LBB0_23:                               # %if.end.37
	jmp	.LBB0_24
.LBB0_24:                               # %do.end.38
	jmp	.LBB0_25
.LBB0_25:                               # %do.body.39
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB0_27
# BB#26:                                # %if.then.44
	jmp	.LBB0_28
.LBB0_27:                               # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_paint_core_stroke, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_64
.LBB0_28:                               # %if.end.46
	jmp	.LBB0_29
.LBB0_29:                               # %do.end.47
	jmp	.LBB0_30
.LBB0_30:                               # %do.body.48
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_paint_options_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB0_32
# BB#31:                                # %if.then.57
	movl	$0, -124(%rbp)
	jmp	.LBB0_37
.LBB0_32:                               # %if.else.58
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_35
# BB#33:                                # %land.lhs.true.61
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB0_35
# BB#34:                                # %if.then.65
	movl	$1, -124(%rbp)
	jmp	.LBB0_36
.LBB0_35:                               # %if.else.66
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB0_36:                               # %if.end.68
	jmp	.LBB0_37
.LBB0_37:                               # %if.end.69
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB0_39
# BB#38:                                # %if.then.72
	jmp	.LBB0_40
.LBB0_39:                               # %if.else.73
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_paint_core_stroke, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_64
.LBB0_40:                               # %if.end.74
	jmp	.LBB0_41
.LBB0_41:                               # %do.end.75
	jmp	.LBB0_42
.LBB0_42:                               # %do.body.76
	cmpq	$0, -40(%rbp)
	je	.LBB0_44
# BB#43:                                # %if.then.78
	jmp	.LBB0_45
.LBB0_44:                               # %if.else.79
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_paint_core_stroke, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_64
.LBB0_45:                               # %if.end.80
	jmp	.LBB0_46
.LBB0_46:                               # %do.end.81
	jmp	.LBB0_47
.LBB0_47:                               # %do.body.82
	cmpl	$0, -44(%rbp)
	jle	.LBB0_49
# BB#48:                                # %if.then.84
	jmp	.LBB0_50
.LBB0_49:                               # %if.else.85
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_paint_core_stroke, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_64
.LBB0_50:                               # %if.end.86
	jmp	.LBB0_51
.LBB0_51:                               # %do.end.87
	jmp	.LBB0_52
.LBB0_52:                               # %do.body.88
	cmpq	$0, -56(%rbp)
	je	.LBB0_54
# BB#53:                                # %lor.lhs.false
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_55
.LBB0_54:                               # %if.then.91
	jmp	.LBB0_56
.LBB0_55:                               # %if.else.92
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_paint_core_stroke, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_64
.LBB0_56:                               # %if.end.93
	jmp	.LBB0_57
.LBB0_57:                               # %do.end.94
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %r8
	callq	gimp_paint_core_start
	cmpl	$0, %eax
	je	.LBB0_63
# BB#58:                                # %if.then.97
	xorl	%eax, %eax
	movl	$64, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	addq	$176, %rsi
	movq	-40(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	memcpy
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	-156(%rbp), %ecx        # 4-byte Reload
	movl	-156(%rbp), %r8d        # 4-byte Reload
	callq	gimp_paint_core_paint
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	gimp_paint_core_paint
	movl	$1, -132(%rbp)
.LBB0_59:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-132(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB0_62
# BB#60:                                # %for.body
                                        #   in Loop: Header=BB0_59 Depth=1
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movslq	-132(%rbp), %rax
	shlq	$6, %rax
	addq	-40(%rbp), %rax
	movq	%rax, %rcx
	callq	gimp_paint_core_interpolate
# BB#61:                                # %for.inc
                                        #   in Loop: Header=BB0_59 Depth=1
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB0_59
.LBB0_62:                               # %for.end
	movl	$2, %ecx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	gimp_paint_core_paint
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-48(%rbp), %edx
	callq	gimp_paint_core_finish
	movq	-16(%rbp), %rdi
	callq	gimp_paint_core_cleanup
	movl	$1, -4(%rbp)
	jmp	.LBB0_64
.LBB0_63:                               # %if.end.102
	movl	$0, -4(%rbp)
.LBB0_64:                               # %return
	movl	-4(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_paint_core_stroke, .Lfunc_end0-gimp_paint_core_stroke
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gimp_paint_core_stroke_boundary
	.align	16, 0x90
	.type	gimp_paint_core_stroke_boundary,@function
gimp_paint_core_stroke_boundary:        # @gimp_paint_core_stroke_boundary
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
	subq	$280, %rsp              # imm = 0x118
.Ltmp6:
	.cfi_offset %rbx, -24
	movq	40(%rbp), %rax
	movl	32(%rbp), %r10d
	movl	24(%rbp), %r11d
	movl	16(%rbp), %ebx
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	%r8, -56(%rbp)
	movl	%r9d, -60(%rbp)
	movl	%ebx, -64(%rbp)
	movl	%r11d, -68(%rbp)
	movl	%r10d, -72(%rbp)
	movq	%rax, -80(%rbp)
	movl	$0, -116(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)
	callq	gimp_paint_core_get_type
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -148(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-136(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -148(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -148(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_paint_core_stroke_boundary, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -12(%rbp)
	jmp	.LBB1_79
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	jmp	.LBB1_13
.LBB1_13:                               # %do.body.11
	movq	-32(%rbp), %rax
	movq	%rax, -160(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -168(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.LBB1_15
# BB#14:                                # %if.then.20
	movl	$0, -172(%rbp)
	jmp	.LBB1_20
.LBB1_15:                               # %if.else.21
	movq	-160(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_18
# BB#16:                                # %land.lhs.true.24
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-168(%rbp), %rax
	jne	.LBB1_18
# BB#17:                                # %if.then.28
	movl	$1, -172(%rbp)
	jmp	.LBB1_19
.LBB1_18:                               # %if.else.29
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -172(%rbp)
.LBB1_19:                               # %if.end.31
	jmp	.LBB1_20
.LBB1_20:                               # %if.end.32
	movl	-172(%rbp), %eax
	movl	%eax, -176(%rbp)
	cmpl	$0, -176(%rbp)
	je	.LBB1_22
# BB#21:                                # %if.then.35
	jmp	.LBB1_23
.LBB1_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_paint_core_stroke_boundary, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -12(%rbp)
	jmp	.LBB1_79
.LBB1_23:                               # %if.end.37
	jmp	.LBB1_24
.LBB1_24:                               # %do.end.38
	jmp	.LBB1_25
.LBB1_25:                               # %do.body.39
	movq	-32(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB1_27
# BB#26:                                # %if.then.44
	jmp	.LBB1_28
.LBB1_27:                               # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_paint_core_stroke_boundary, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -12(%rbp)
	jmp	.LBB1_79
.LBB1_28:                               # %if.end.46
	jmp	.LBB1_29
.LBB1_29:                               # %do.end.47
	jmp	.LBB1_30
.LBB1_30:                               # %do.body.48
	movq	-40(%rbp), %rax
	movq	%rax, -184(%rbp)
	callq	gimp_paint_options_get_type
	movq	%rax, -192(%rbp)
	cmpq	$0, -184(%rbp)
	jne	.LBB1_32
# BB#31:                                # %if.then.57
	movl	$0, -196(%rbp)
	jmp	.LBB1_37
.LBB1_32:                               # %if.else.58
	movq	-184(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_35
# BB#33:                                # %land.lhs.true.61
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-192(%rbp), %rax
	jne	.LBB1_35
# BB#34:                                # %if.then.65
	movl	$1, -196(%rbp)
	jmp	.LBB1_36
.LBB1_35:                               # %if.else.66
	movq	-184(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -196(%rbp)
.LBB1_36:                               # %if.end.68
	jmp	.LBB1_37
.LBB1_37:                               # %if.end.69
	movl	-196(%rbp), %eax
	movl	%eax, -200(%rbp)
	cmpl	$0, -200(%rbp)
	je	.LBB1_39
# BB#38:                                # %if.then.72
	jmp	.LBB1_40
.LBB1_39:                               # %if.else.73
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_paint_core_stroke_boundary, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -12(%rbp)
	jmp	.LBB1_79
.LBB1_40:                               # %if.end.74
	jmp	.LBB1_41
.LBB1_41:                               # %do.end.75
	jmp	.LBB1_42
.LBB1_42:                               # %do.body.76
	cmpq	$0, -56(%rbp)
	je	.LBB1_45
# BB#43:                                # %land.lhs.true.78
	cmpl	$0, -60(%rbp)
	jle	.LBB1_45
# BB#44:                                # %if.then.80
	jmp	.LBB1_46
.LBB1_45:                               # %if.else.81
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_paint_core_stroke_boundary, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -12(%rbp)
	jmp	.LBB1_79
.LBB1_46:                               # %if.end.82
	jmp	.LBB1_47
.LBB1_47:                               # %do.end.83
	jmp	.LBB1_48
.LBB1_48:                               # %do.body.84
	cmpq	$0, -80(%rbp)
	je	.LBB1_50
# BB#49:                                # %lor.lhs.false
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB1_51
.LBB1_50:                               # %if.then.87
	jmp	.LBB1_52
.LBB1_51:                               # %if.else.88
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_paint_core_stroke_boundary, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -12(%rbp)
	jmp	.LBB1_79
.LBB1_52:                               # %if.end.89
	jmp	.LBB1_53
.LBB1_53:                               # %do.end.90
	leaq	-92(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	boundary_sort
	movq	%rax, -88(%rbp)
	cmpl	$0, -92(%rbp)
	jne	.LBB1_55
# BB#54:                                # %if.then.93
	movl	$1, -12(%rbp)
	jmp	.LBB1_79
.LBB1_55:                               # %if.end.94
	movq	-32(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-96(%rbp), %rsi
	leaq	-100(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movl	$64, %ecx
	movl	%ecx, %esi
	movl	-64(%rbp), %ecx
	movl	-96(%rbp), %r8d
	subl	%ecx, %r8d
	movl	%r8d, -96(%rbp)
	movl	-68(%rbp), %ecx
	movl	-100(%rbp), %r8d
	subl	%ecx, %r8d
	movl	%r8d, -100(%rbp)
	movl	-60(%rbp), %ecx
	addl	$4, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc0_n
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movabsq	$default_coords, %rdx
	movl	$64, %ecx
	movl	%ecx, %esi
	movq	%rax, -112(%rbp)
	movl	$0, -124(%rbp)
	movl	$0, -120(%rbp)
	movslq	-120(%rbp), %rax
	shlq	$6, %rax
	addq	-112(%rbp), %rax
	movq	%rax, %rdi
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-232(%rbp), %rdx        # 8-byte Reload
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	callq	memcpy
	movq	-88(%rbp), %rax
	movl	(%rax), %ecx
	subl	-96(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	-240(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movslq	-120(%rbp), %rax
	shlq	$6, %rax
	addq	-112(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-88(%rbp), %rax
	movl	4(%rax), %ecx
	subl	-100(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	addsd	%xmm1, %xmm0
	movslq	-120(%rbp), %rax
	shlq	$6, %rax
	addq	-112(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movl	-120(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -120(%rbp)
	movl	$0, -128(%rbp)
.LBB1_56:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_58 Depth 2
                                        #     Child Loop BB1_69 Depth 2
	movl	-128(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB1_76
# BB#57:                                # %for.body
                                        #   in Loop: Header=BB1_56 Depth=1
	jmp	.LBB1_58
.LBB1_58:                               # %while.cond
                                        #   Parent Loop BB1_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$1, %al
	movslq	-124(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	-88(%rbp), %rcx
	cmpl	$-1, (%rcx)
	movb	%al, -241(%rbp)         # 1-byte Spill
	jne	.LBB1_62
# BB#59:                                # %lor.lhs.false.118
                                        #   in Loop: Header=BB1_58 Depth=2
	movb	$1, %al
	movslq	-124(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	-88(%rbp), %rcx
	cmpl	$-1, 8(%rcx)
	movb	%al, -241(%rbp)         # 1-byte Spill
	jne	.LBB1_62
# BB#60:                                # %lor.lhs.false.123
                                        #   in Loop: Header=BB1_58 Depth=2
	movb	$1, %al
	movslq	-124(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	-88(%rbp), %rcx
	cmpl	$-1, 4(%rcx)
	movb	%al, -241(%rbp)         # 1-byte Spill
	jne	.LBB1_62
# BB#61:                                # %lor.rhs
                                        #   in Loop: Header=BB1_58 Depth=2
	movslq	-124(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-88(%rbp), %rax
	cmpl	$-1, 12(%rax)
	setne	%cl
	movb	%cl, -241(%rbp)         # 1-byte Spill
.LBB1_62:                               # %lor.end
                                        #   in Loop: Header=BB1_58 Depth=2
	movb	-241(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB1_63
	jmp	.LBB1_64
.LBB1_63:                               # %while.body
                                        #   in Loop: Header=BB1_58 Depth=2
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movabsq	$default_coords, %rax
	movl	$64, %ecx
	movl	%ecx, %edx
	movslq	-120(%rbp), %rsi
	shlq	$6, %rsi
	addq	-112(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	callq	memcpy
	movslq	-124(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-88(%rbp), %rax
	movl	(%rax), %ecx
	subl	-96(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	-256(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movslq	-120(%rbp), %rax
	shlq	$6, %rax
	addq	-112(%rbp), %rax
	movsd	%xmm0, (%rax)
	movslq	-124(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-88(%rbp), %rax
	movl	4(%rax), %ecx
	subl	-100(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	addsd	%xmm1, %xmm0
	movslq	-120(%rbp), %rax
	shlq	$6, %rax
	addq	-112(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movl	-120(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -120(%rbp)
	movl	-124(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -124(%rbp)
	jmp	.LBB1_58
.LBB1_64:                               # %while.end
                                        #   in Loop: Header=BB1_56 Depth=1
	movl	$64, %eax
	movl	%eax, %edx
	movslq	-120(%rbp), %rcx
	shlq	$6, %rcx
	addq	-112(%rbp), %rcx
	movq	-112(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
	movl	-120(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -44(%rbp)
	je	.LBB1_66
# BB#65:                                # %if.then.160
                                        #   in Loop: Header=BB1_56 Depth=1
	movq	-112(%rbp), %rdi
	movl	-120(%rbp), %esi
	callq	gimp_paint_core_stroke_emulate_dynamics
.LBB1_66:                               # %if.end.161
                                        #   in Loop: Header=BB1_56 Depth=1
	cmpl	$0, -116(%rbp)
	jne	.LBB1_68
# BB#67:                                # %lor.lhs.false.163
                                        #   in Loop: Header=BB1_56 Depth=1
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	-80(%rbp), %r8
	callq	gimp_paint_core_start
	cmpl	$0, %eax
	je	.LBB1_73
.LBB1_68:                               # %if.then.167
                                        #   in Loop: Header=BB1_56 Depth=1
	xorl	%eax, %eax
	movl	$64, %ecx
	movl	%ecx, %edx
	movl	$1, -116(%rbp)
	movq	-24(%rbp), %rsi
	addq	$112, %rsi
	movq	-112(%rbp), %rdi
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-264(%rbp), %rsi        # 8-byte Reload
	movq	%rdx, -272(%rbp)        # 8-byte Spill
	movl	%eax, -276(%rbp)        # 4-byte Spill
	callq	memcpy
	movq	-24(%rbp), %rdx
	addq	$176, %rdx
	movq	-112(%rbp), %rsi
	movq	%rdx, %rdi
	movq	-272(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movl	-276(%rbp), %ecx        # 4-byte Reload
	movl	-276(%rbp), %r8d        # 4-byte Reload
	callq	gimp_paint_core_paint
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_paint_core_paint
	movl	$1, -204(%rbp)
.LBB1_69:                               # %for.cond.171
                                        #   Parent Loop BB1_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-204(%rbp), %eax
	cmpl	-120(%rbp), %eax
	jge	.LBB1_72
# BB#70:                                # %for.body.174
                                        #   in Loop: Header=BB1_69 Depth=2
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movslq	-204(%rbp), %rax
	shlq	$6, %rax
	addq	-112(%rbp), %rax
	movq	%rax, %rcx
	callq	gimp_paint_core_interpolate
# BB#71:                                # %for.inc
                                        #   in Loop: Header=BB1_69 Depth=2
	movl	-204(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -204(%rbp)
	jmp	.LBB1_69
.LBB1_72:                               # %for.end
                                        #   in Loop: Header=BB1_56 Depth=1
	movl	$2, %ecx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_paint_core_paint
	jmp	.LBB1_74
.LBB1_73:                               # %if.else.178
	jmp	.LBB1_76
.LBB1_74:                               # %if.end.179
                                        #   in Loop: Header=BB1_56 Depth=1
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movabsq	$default_coords, %rax
	movl	$64, %ecx
	movl	%ecx, %edx
	movl	$0, -120(%rbp)
	movl	-124(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -124(%rbp)
	movslq	-120(%rbp), %rsi
	shlq	$6, %rsi
	addq	-112(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -288(%rbp)       # 8-byte Spill
	callq	memcpy
	movslq	-124(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-88(%rbp), %rax
	movl	(%rax), %ecx
	subl	-96(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	-288(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movslq	-120(%rbp), %rax
	shlq	$6, %rax
	addq	-112(%rbp), %rax
	movsd	%xmm0, (%rax)
	movslq	-124(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-88(%rbp), %rax
	movl	4(%rax), %ecx
	subl	-100(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	addsd	%xmm1, %xmm0
	movslq	-120(%rbp), %rax
	shlq	$6, %rax
	addq	-112(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movl	-120(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -120(%rbp)
# BB#75:                                # %for.inc.202
                                        #   in Loop: Header=BB1_56 Depth=1
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	.LBB1_56
.LBB1_76:                               # %for.end.204
	cmpl	$0, -116(%rbp)
	je	.LBB1_78
# BB#77:                                # %if.then.206
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-72(%rbp), %edx
	callq	gimp_paint_core_finish
	movq	-24(%rbp), %rdi
	callq	gimp_paint_core_cleanup
.LBB1_78:                               # %if.end.207
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movl	-116(%rbp), %ecx
	movl	%ecx, -12(%rbp)
.LBB1_79:                               # %return
	movl	-12(%rbp), %eax
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_paint_core_stroke_boundary, .Lfunc_end1-gimp_paint_core_stroke_boundary
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_paint_core_stroke_emulate_dynamics,@function
gimp_paint_core_stroke_emulate_dynamics: # @gimp_paint_core_stroke_emulate_dynamics
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
	subq	$64, %rsp
	movl	$3, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %esi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-52(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	jle	.LBB2_10
# BB#1:                                 # %if.then
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-16(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB2_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB2_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB2_2 Depth=1
	cvtsi2sdl	-28(%rbp), %xmm0
	mulsd	-24(%rbp), %xmm0
	movslq	-28(%rbp), %rax
	shlq	$6, %rax
	addq	-8(%rbp), %rax
	movsd	%xmm0, 16(%rax)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB2_2
.LBB2_5:                                # %for.end
	movl	-12(%rbp), %eax
	subl	-16(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB2_6:                                # %for.cond.5
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB2_9
# BB#7:                                 # %for.body.8
                                        #   in Loop: Header=BB2_6 Depth=1
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movl	-28(%rbp), %eax
	movl	-12(%rbp), %ecx
	subl	-16(%rbp), %ecx
	subl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	-24(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movslq	-28(%rbp), %rdx
	shlq	$6, %rdx
	addq	-8(%rbp), %rdx
	movsd	%xmm0, 16(%rdx)
# BB#8:                                 # %for.inc.17
                                        #   in Loop: Header=BB2_6 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB2_6
.LBB2_9:                                # %for.end.19
	jmp	.LBB2_10
.LBB2_10:                               # %if.end
	cmpl	$0, -12(%rbp)
	jle	.LBB2_16
# BB#11:                                # %if.then.22
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-12(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB2_12:                               # %for.cond.27
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB2_15
# BB#13:                                # %for.body.30
                                        #   in Loop: Header=BB2_12 Depth=1
	cvtsi2sdl	-44(%rbp), %xmm0
	mulsd	-40(%rbp), %xmm0
	movslq	-44(%rbp), %rax
	shlq	$6, %rax
	addq	-8(%rbp), %rax
	movsd	%xmm0, 48(%rax)
# BB#14:                                # %for.inc.35
                                        #   in Loop: Header=BB2_12 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB2_12
.LBB2_15:                               # %for.end.37
	jmp	.LBB2_16
.LBB2_16:                               # %if.end.38
	cmpl	$1, -12(%rbp)
	jle	.LBB2_22
# BB#17:                                # %if.then.41
	movl	$1, -48(%rbp)
.LBB2_18:                               # %for.cond.43
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB2_21
# BB#19:                                # %for.body.46
                                        #   in Loop: Header=BB2_18 Depth=1
	movl	-48(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	shlq	$6, %rcx
	addq	-8(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	shlq	$6, %rdx
	addq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	callq	gimp_coords_direction
	movslq	-48(%rbp), %rcx
	shlq	$6, %rcx
	addq	-8(%rbp), %rcx
	movsd	%xmm0, 56(%rcx)
# BB#20:                                # %for.inc.54
                                        #   in Loop: Header=BB2_18 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB2_18
.LBB2_21:                               # %for.end.56
	movq	-8(%rbp), %rax
	movsd	120(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 56(%rax)
.LBB2_22:                               # %if.end.61
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_paint_core_stroke_emulate_dynamics, .Lfunc_end2-gimp_paint_core_stroke_emulate_dynamics
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_paint_core_stroke_vectors
	.align	16, 0x90
	.type	gimp_paint_core_stroke_vectors,@function
gimp_paint_core_stroke_vectors:         # @gimp_paint_core_stroke_vectors
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
	subq	$304, %rsp              # imm = 0x130
	movq	16(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movq	%rax, -64(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -80(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_paint_core_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -116(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -116(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_paint_core_stroke_vectors, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_92
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB3_15
# BB#14:                                # %if.then.20
	movl	$0, -140(%rbp)
	jmp	.LBB3_20
.LBB3_15:                               # %if.else.21
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_18
# BB#16:                                # %land.lhs.true.24
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB3_18
# BB#17:                                # %if.then.28
	movl	$1, -140(%rbp)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.29
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB3_19:                               # %if.end.31
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.32
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.35
	jmp	.LBB3_23
.LBB3_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_paint_core_stroke_vectors, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_92
.LBB3_23:                               # %if.end.37
	jmp	.LBB3_24
.LBB3_24:                               # %do.end.38
	jmp	.LBB3_25
.LBB3_25:                               # %do.body.39
	movq	-24(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB3_27
# BB#26:                                # %if.then.44
	jmp	.LBB3_28
.LBB3_27:                               # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_paint_core_stroke_vectors, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_92
.LBB3_28:                               # %if.end.46
	jmp	.LBB3_29
.LBB3_29:                               # %do.end.47
	jmp	.LBB3_30
.LBB3_30:                               # %do.body.48
	movq	-32(%rbp), %rax
	movq	%rax, -152(%rbp)
	callq	gimp_paint_options_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB3_32
# BB#31:                                # %if.then.57
	movl	$0, -164(%rbp)
	jmp	.LBB3_37
.LBB3_32:                               # %if.else.58
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_35
# BB#33:                                # %land.lhs.true.61
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB3_35
# BB#34:                                # %if.then.65
	movl	$1, -164(%rbp)
	jmp	.LBB3_36
.LBB3_35:                               # %if.else.66
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB3_36:                               # %if.end.68
	jmp	.LBB3_37
.LBB3_37:                               # %if.end.69
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB3_39
# BB#38:                                # %if.then.72
	jmp	.LBB3_40
.LBB3_39:                               # %if.else.73
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_paint_core_stroke_vectors, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_92
.LBB3_40:                               # %if.end.74
	jmp	.LBB3_41
.LBB3_41:                               # %do.end.75
	jmp	.LBB3_42
.LBB3_42:                               # %do.body.76
	movq	-48(%rbp), %rax
	movq	%rax, -176(%rbp)
	callq	gimp_vectors_get_type
	movq	%rax, -184(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.LBB3_44
# BB#43:                                # %if.then.85
	movl	$0, -188(%rbp)
	jmp	.LBB3_49
.LBB3_44:                               # %if.else.86
	movq	-176(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_47
# BB#45:                                # %land.lhs.true.89
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-184(%rbp), %rax
	jne	.LBB3_47
# BB#46:                                # %if.then.93
	movl	$1, -188(%rbp)
	jmp	.LBB3_48
.LBB3_47:                               # %if.else.94
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -188(%rbp)
.LBB3_48:                               # %if.end.96
	jmp	.LBB3_49
.LBB3_49:                               # %if.end.97
	movl	-188(%rbp), %eax
	movl	%eax, -192(%rbp)
	cmpl	$0, -192(%rbp)
	je	.LBB3_51
# BB#50:                                # %if.then.100
	jmp	.LBB3_52
.LBB3_51:                               # %if.else.101
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_paint_core_stroke_vectors, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_92
.LBB3_52:                               # %if.end.102
	jmp	.LBB3_53
.LBB3_53:                               # %do.end.103
	jmp	.LBB3_54
.LBB3_54:                               # %do.body.104
	cmpq	$0, -64(%rbp)
	je	.LBB3_56
# BB#55:                                # %lor.lhs.false
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB3_57
.LBB3_56:                               # %if.then.107
	jmp	.LBB3_58
.LBB3_57:                               # %if.else.108
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_paint_core_stroke_vectors, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_92
.LBB3_58:                               # %if.end.109
	jmp	.LBB3_59
.LBB3_59:                               # %do.end.110
	movq	-48(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-92(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movq	-24(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-84(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movl	-92(%rbp), %ecx
	movl	-84(%rbp), %r8d
	subl	%ecx, %r8d
	movl	%r8d, -84(%rbp)
	movl	-96(%rbp), %ecx
	movl	-88(%rbp), %r8d
	subl	%ecx, %r8d
	movl	%r8d, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -72(%rbp)
.LBB3_60:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_64 Depth 2
                                        #     Child Loop BB3_72 Depth 2
	cmpq	$0, -72(%rbp)
	je	.LBB3_85
# BB#61:                                # %for.body
                                        #   in Loop: Header=BB3_60 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_stroke_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	leaq	-204(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_stroke_interpolate
	movq	%rax, -200(%rbp)
	cmpq	$0, -200(%rbp)
	je	.LBB3_80
# BB#62:                                # %land.lhs.true.123
                                        #   in Loop: Header=BB3_60 Depth=1
	movq	-200(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB3_80
# BB#63:                                # %if.then.125
                                        #   in Loop: Header=BB3_60 Depth=1
	movl	$0, -208(%rbp)
.LBB3_64:                               # %for.cond.127
                                        #   Parent Loop BB3_60 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-208(%rbp), %eax
	movq	-200(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB3_67
# BB#65:                                # %for.body.130
                                        #   in Loop: Header=BB3_64 Depth=2
	cvtsi2sdl	-84(%rbp), %xmm0
	movslq	-208(%rbp), %rax
	movq	-200(%rbp), %rcx
	movq	(%rcx), %rcx
	shlq	$6, %rax
	addq	%rax, %rcx
	movsd	(%rcx), %xmm1           # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, (%rcx)
	cvtsi2sdl	-88(%rbp), %xmm0
	movslq	-208(%rbp), %rax
	movq	-200(%rbp), %rcx
	movq	(%rcx), %rcx
	shlq	$6, %rax
	addq	%rax, %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 8(%rcx)
# BB#66:                                # %for.inc
                                        #   in Loop: Header=BB3_64 Depth=2
	movl	-208(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -208(%rbp)
	jmp	.LBB3_64
.LBB3_67:                               # %for.end
                                        #   in Loop: Header=BB3_60 Depth=1
	cmpl	$0, -36(%rbp)
	je	.LBB3_69
# BB#68:                                # %if.then.139
                                        #   in Loop: Header=BB3_60 Depth=1
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	-200(%rbp), %rcx
	movl	8(%rcx), %esi
	movq	%rax, %rdi
	callq	gimp_paint_core_stroke_emulate_dynamics
.LBB3_69:                               # %if.end.142
                                        #   in Loop: Header=BB3_60 Depth=1
	cmpl	$0, -76(%rbp)
	jne	.LBB3_71
# BB#70:                                # %lor.lhs.false.144
                                        #   in Loop: Header=BB3_60 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %r8
	movq	%rax, %rcx
	callq	gimp_paint_core_start
	cmpl	$0, %eax
	je	.LBB3_76
.LBB3_71:                               # %if.then.149
                                        #   in Loop: Header=BB3_60 Depth=1
	xorl	%eax, %eax
	movl	$64, %ecx
	movl	%ecx, %edx
	movl	$1, -76(%rbp)
	movq	-16(%rbp), %rsi
	addq	$112, %rsi
	movq	-200(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-248(%rbp), %rsi        # 8-byte Reload
	movq	%rdx, -256(%rbp)        # 8-byte Spill
	movl	%eax, -260(%rbp)        # 4-byte Spill
	callq	memcpy
	movq	-16(%rbp), %rdx
	addq	$176, %rdx
	movq	-200(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rdx, %rdi
	movq	-256(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	-260(%rbp), %ecx        # 4-byte Reload
	movl	-260(%rbp), %r8d        # 4-byte Reload
	callq	gimp_paint_core_paint
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	gimp_paint_core_paint
	movl	$1, -208(%rbp)
.LBB3_72:                               # %for.cond.154
                                        #   Parent Loop BB3_60 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-208(%rbp), %eax
	movq	-200(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB3_75
# BB#73:                                # %for.body.158
                                        #   in Loop: Header=BB3_72 Depth=2
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movslq	-208(%rbp), %rax
	movq	-200(%rbp), %rcx
	movq	(%rcx), %rcx
	shlq	$6, %rax
	addq	%rax, %rcx
	callq	gimp_paint_core_interpolate
# BB#74:                                # %for.inc.162
                                        #   in Loop: Header=BB3_72 Depth=2
	movl	-208(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -208(%rbp)
	jmp	.LBB3_72
.LBB3_75:                               # %for.end.164
                                        #   in Loop: Header=BB3_60 Depth=1
	movl	$2, %ecx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	gimp_paint_core_paint
	jmp	.LBB3_79
.LBB3_76:                               # %if.else.165
	cmpq	$0, -200(%rbp)
	je	.LBB3_78
# BB#77:                                # %if.then.167
	movl	$1, %esi
	movq	-200(%rbp), %rdi
	callq	g_array_free
	movq	%rax, -272(%rbp)        # 8-byte Spill
.LBB3_78:                               # %if.end.169
	jmp	.LBB3_85
.LBB3_79:                               # %if.end.170
                                        #   in Loop: Header=BB3_60 Depth=1
	jmp	.LBB3_81
.LBB3_80:                               # %if.else.171
                                        #   in Loop: Header=BB3_60 Depth=1
	movl	$1, -80(%rbp)
.LBB3_81:                               # %if.end.172
                                        #   in Loop: Header=BB3_60 Depth=1
	cmpq	$0, -200(%rbp)
	je	.LBB3_83
# BB#82:                                # %if.then.174
                                        #   in Loop: Header=BB3_60 Depth=1
	movl	$1, %esi
	movq	-200(%rbp), %rdi
	callq	g_array_free
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB3_83:                               # %if.end.176
                                        #   in Loop: Header=BB3_60 Depth=1
	jmp	.LBB3_84
.LBB3_84:                               # %for.inc.177
                                        #   in Loop: Header=BB3_60 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB3_60
.LBB3_85:                               # %for.end.178
	cmpl	$0, -76(%rbp)
	je	.LBB3_87
# BB#86:                                # %if.then.180
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-52(%rbp), %edx
	callq	gimp_paint_core_finish
	movq	-16(%rbp), %rdi
	callq	gimp_paint_core_cleanup
.LBB3_87:                               # %if.end.181
	cmpl	$0, -76(%rbp)
	jne	.LBB3_91
# BB#88:                                # %land.lhs.true.183
	cmpl	$0, -80(%rbp)
	je	.LBB3_91
# BB#89:                                # %land.lhs.true.185
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB3_91
# BB#90:                                # %if.then.188
	movq	-64(%rbp), %rdi
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	callq	gimp_error_quark
	movabsq	$.L.str.10, %rdi
	movl	%eax, -292(%rbp)        # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movl	-292(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
.LBB3_91:                               # %if.end.191
	movl	-76(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB3_92:                               # %return
	movl	-4(%rbp), %eax
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_paint_core_stroke_vectors, .Lfunc_end3-gimp_paint_core_stroke_vectors
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Paint"
	.size	.L.str, 11

	.type	.L__func__.gimp_paint_core_stroke,@object # @__func__.gimp_paint_core_stroke
.L__func__.gimp_paint_core_stroke:
	.asciz	"gimp_paint_core_stroke"
	.size	.L__func__.gimp_paint_core_stroke, 23

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_PAINT_CORE (core)"
	.size	.L.str.1, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_DRAWABLE (drawable)"
	.size	.L.str.2, 28

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp_item_is_attached (GIMP_ITEM (drawable))"
	.size	.L.str.3, 45

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_PAINT_OPTIONS (paint_options)"
	.size	.L.str.4, 38

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"strokes != NULL"
	.size	.L.str.5, 16

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"n_strokes > 0"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.7, 32

	.type	.L__func__.gimp_paint_core_stroke_boundary,@object # @__func__.gimp_paint_core_stroke_boundary
.L__func__.gimp_paint_core_stroke_boundary:
	.asciz	"gimp_paint_core_stroke_boundary"
	.size	.L__func__.gimp_paint_core_stroke_boundary, 32

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"bound_segs != NULL && n_bound_segs > 0"
	.size	.L.str.8, 39

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

	.type	.L__func__.gimp_paint_core_stroke_vectors,@object # @__func__.gimp_paint_core_stroke_vectors
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.gimp_paint_core_stroke_vectors:
	.asciz	"gimp_paint_core_stroke_vectors"
	.size	.L__func__.gimp_paint_core_stroke_vectors, 31

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GIMP_IS_VECTORS (vectors)"
	.size	.L.str.9, 26

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Not enough points to stroke"
	.size	.L.str.10, 28


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
