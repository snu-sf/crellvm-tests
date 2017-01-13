	.text
	.file	"gimpvectors-compat.bc"
	.globl	gimp_vectors_compat_new
	.align	16, 0x90
	.type	gimp_vectors_compat_new,@function
gimp_vectors_compat_new:                # @gimp_vectors_compat_new
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -108(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -108(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_vectors_compat_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_39
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB0_15
# BB#14:                                # %if.then.13
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_vectors_compat_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_39
.LBB0_16:                               # %if.end.15
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.16
	jmp	.LBB0_18
.LBB0_18:                               # %do.body.17
	cmpq	$0, -32(%rbp)
	jne	.LBB0_20
# BB#19:                                # %lor.lhs.false
	cmpl	$0, -36(%rbp)
	jne	.LBB0_21
.LBB0_20:                               # %if.then.20
	jmp	.LBB0_22
.LBB0_21:                               # %if.else.21
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_vectors_compat_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_39
.LBB0_22:                               # %if.end.22
	jmp	.LBB0_23
.LBB0_23:                               # %do.end.23
	jmp	.LBB0_24
.LBB0_24:                               # %do.body.24
	cmpl	$0, -36(%rbp)
	jl	.LBB0_26
# BB#25:                                # %if.then.26
	jmp	.LBB0_27
.LBB0_26:                               # %if.else.27
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_vectors_compat_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_39
.LBB0_27:                               # %if.end.28
	jmp	.LBB0_28
.LBB0_28:                               # %do.end.29
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_vectors_new
	movl	$64, %ecx
	movl	%ecx, %esi
	movq	%rax, -48(%rbp)
	movl	-36(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc0_n
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -80(%rbp)
	movl	$0, -84(%rbp)
.LBB0_29:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB0_36
# BB#30:                                # %for.body
                                        #   in Loop: Header=BB0_29 Depth=1
	movabsq	$default_coords, %rax
	movl	$64, %ecx
	movl	%ecx, %edx
	movq	-80(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	memcpy
	movslq	-84(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-32(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax
	movsd	%xmm0, (%rax)
	movslq	-84(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-32(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	addq	$64, %rdx
	cmpq	%rdx, %rax
	jne	.LBB0_32
# BB#31:                                # %if.then.40
                                        #   in Loop: Header=BB0_29 Depth=1
	movl	$64, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rcx
	movq	-80(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
.LBB0_32:                               # %if.end.41
                                        #   in Loop: Header=BB0_29 Depth=1
	movslq	-84(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-32(%rbp), %rax
	cmpl	$3, (%rax)
	jne	.LBB0_34
# BB#33:                                # %if.then.46
                                        #   in Loop: Header=BB0_29 Depth=1
	movl	$1, %edx
	movl	$64, %eax
	movl	%eax, %ecx
	movq	-72(%rbp), %rsi
	movq	-80(%rbp), %rdi
	addq	$-64, %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -124(%rbp)        # 4-byte Spill
	movq	%rcx, %rdx
	callq	memcpy
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	subq	%rdx, %rcx
	sarq	$6, %rcx
	subq	$1, %rcx
	movl	%ecx, %eax
	movl	%eax, %esi
	movl	-124(%rbp), %edx        # 4-byte Reload
	callq	gimp_bezier_stroke_new_from_coords
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_vectors_stroke_add
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movl	$64, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-80(%rbp), %rax
	addq	$-64, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
.LBB0_34:                               # %if.end.51
                                        #   in Loop: Header=BB0_29 Depth=1
	movq	-80(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -80(%rbp)
# BB#35:                                # %for.inc
                                        #   in Loop: Header=BB0_29 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB0_29
.LBB0_36:                               # %for.end
	cmpl	$0, -40(%rbp)
	je	.LBB0_38
# BB#37:                                # %if.then.54
	movl	$64, %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rcx
	addq	$-64, %rcx
	movq	%rcx, -80(%rbp)
	movq	-72(%rbp), %rcx
	movq	-80(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
.LBB0_38:                               # %if.end.56
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rcx
	subq	%rcx, %rax
	sarq	$6, %rax
	movl	%eax, %edx
	movl	-40(%rbp), %esi
	movl	%esi, -128(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-128(%rbp), %edx        # 4-byte Reload
	callq	gimp_bezier_stroke_new_from_coords
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_vectors_stroke_add
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_39:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_vectors_compat_new, .Lfunc_end0-gimp_vectors_compat_new
	.cfi_endproc

	.globl	gimp_vectors_compat_is_compatible
	.align	16, 0x90
	.type	gimp_vectors_compat_is_compatible,@function
gimp_vectors_compat_is_compatible:      # @gimp_vectors_compat_is_compatible
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_vectors_compat_is_compatible, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB1_42
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_vectors_iter
	movq	%rax, -24(%rbp)
.LBB1_13:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_17 Depth 2
	cmpq	$0, -24(%rbp)
	je	.LBB1_41
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB1_13 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movl	$0, -68(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_visible
	cmpl	$0, %eax
	je	.LBB1_16
# BB#15:                                # %if.then.22
	movl	$0, -4(%rbp)
	jmp	.LBB1_42
.LBB1_16:                               # %if.end.23
                                        #   in Loop: Header=BB1_13 Depth=1
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB1_17:                               # %for.cond.25
                                        #   Parent Loop BB1_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -64(%rbp)
	je	.LBB1_34
# BB#18:                                # %for.body.27
                                        #   in Loop: Header=BB1_17 Depth=2
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_stroke_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_bezier_stroke_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB1_20
# BB#19:                                # %if.then.40
                                        #   in Loop: Header=BB1_17 Depth=2
	movl	$0, -100(%rbp)
	jmp	.LBB1_25
.LBB1_20:                               # %if.else.41
                                        #   in Loop: Header=BB1_17 Depth=2
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_23
# BB#21:                                # %land.lhs.true.44
                                        #   in Loop: Header=BB1_17 Depth=2
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB1_23
# BB#22:                                # %if.then.48
                                        #   in Loop: Header=BB1_17 Depth=2
	movl	$1, -100(%rbp)
	jmp	.LBB1_24
.LBB1_23:                               # %if.else.49
                                        #   in Loop: Header=BB1_17 Depth=2
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB1_24:                               # %if.end.51
                                        #   in Loop: Header=BB1_17 Depth=2
	jmp	.LBB1_25
.LBB1_25:                               # %if.end.52
                                        #   in Loop: Header=BB1_17 Depth=2
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	jne	.LBB1_27
# BB#26:                                # %if.then.55
	movl	$0, -4(%rbp)
	jmp	.LBB1_42
.LBB1_27:                               # %if.end.56
                                        #   in Loop: Header=BB1_17 Depth=2
	movq	-80(%rbp), %rax
	cmpl	$0, 48(%rax)
	jne	.LBB1_29
# BB#28:                                # %if.then.58
                                        #   in Loop: Header=BB1_17 Depth=2
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
.LBB1_29:                               # %if.end.59
                                        #   in Loop: Header=BB1_17 Depth=2
	jmp	.LBB1_30
.LBB1_30:                               # %for.inc
                                        #   in Loop: Header=BB1_17 Depth=2
	cmpq	$0, -64(%rbp)
	je	.LBB1_32
# BB#31:                                # %cond.true
                                        #   in Loop: Header=BB1_17 Depth=2
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB1_33
.LBB1_32:                               # %cond.false
                                        #   in Loop: Header=BB1_17 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB1_33
.LBB1_33:                               # %cond.end
                                        #   in Loop: Header=BB1_17 Depth=2
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
	jmp	.LBB1_17
.LBB1_34:                               # %for.end
                                        #   in Loop: Header=BB1_13 Depth=1
	cmpl	$2, -68(%rbp)
	jl	.LBB1_36
# BB#35:                                # %if.then.62
	movl	$0, -4(%rbp)
	jmp	.LBB1_42
.LBB1_36:                               # %if.end.63
                                        #   in Loop: Header=BB1_13 Depth=1
	jmp	.LBB1_37
.LBB1_37:                               # %for.inc.64
                                        #   in Loop: Header=BB1_13 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB1_39
# BB#38:                                # %cond.true.66
                                        #   in Loop: Header=BB1_13 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB1_40
.LBB1_39:                               # %cond.false.68
                                        #   in Loop: Header=BB1_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB1_40
.LBB1_40:                               # %cond.end.69
                                        #   in Loop: Header=BB1_13 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB1_13
.LBB1_41:                               # %for.end.71
	movl	$1, -4(%rbp)
.LBB1_42:                               # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_vectors_compat_is_compatible, .Lfunc_end1-gimp_vectors_compat_is_compatible
	.cfi_endproc

	.globl	gimp_vectors_compat_get_points
	.align	16, 0x90
	.type	gimp_vectors_compat_get_points,@function
gimp_vectors_compat_get_points:         # @gimp_vectors_compat_get_points
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -64(%rbp)
	movl	$1, -72(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_vectors_get_type
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
	movabsq	$.L__func__.gimp_vectors_compat_get_points, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_71
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	jmp	.LBB2_13
.LBB2_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB2_15
# BB#14:                                # %if.then.13
	jmp	.LBB2_16
.LBB2_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_vectors_compat_get_points, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_71
.LBB2_16:                               # %if.end.15
	jmp	.LBB2_17
.LBB2_17:                               # %do.end.16
	jmp	.LBB2_18
.LBB2_18:                               # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB2_20
# BB#19:                                # %if.then.19
	jmp	.LBB2_21
.LBB2_20:                               # %if.else.20
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_vectors_compat_get_points, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_71
.LBB2_21:                               # %if.end.21
	jmp	.LBB2_22
.LBB2_22:                               # %do.end.22
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movl	$0, -68(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB2_23:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB2_35
# BB#24:                                # %for.body
                                        #   in Loop: Header=BB2_23 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	cmpl	$0, 48(%rax)
	jne	.LBB2_28
# BB#25:                                # %if.then.29
                                        #   in Loop: Header=BB2_23 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	-32(%rbp), %rcx
	movl	$0, (%rcx)
	cmpl	$2, -68(%rbp)
	jl	.LBB2_27
# BB#26:                                # %if.then.31
	movabsq	$.L.str.8, %rdi
	movb	$0, %al
	callq	g_warning
	movq	-24(%rbp), %rdi
	movl	$0, (%rdi)
	movq	$0, -8(%rbp)
	jmp	.LBB2_71
.LBB2_27:                               # %if.end.32
                                        #   in Loop: Header=BB2_23 Depth=1
	jmp	.LBB2_28
.LBB2_28:                               # %if.end.33
                                        #   in Loop: Header=BB2_23 Depth=1
	movq	-104(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_list_length
	movl	%eax, -108(%rbp)
	movq	-104(%rbp), %rdi
	cmpl	$0, 48(%rdi)
	jne	.LBB2_30
# BB#29:                                # %if.then.37
                                        #   in Loop: Header=BB2_23 Depth=1
	movl	-108(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -108(%rbp)
.LBB2_30:                               # %if.end.38
                                        #   in Loop: Header=BB2_23 Depth=1
	movl	-108(%rbp), %eax
	movq	-24(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, (%rcx)
# BB#31:                                # %for.inc
                                        #   in Loop: Header=BB2_23 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB2_33
# BB#32:                                # %cond.true
                                        #   in Loop: Header=BB2_23 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB2_34
.LBB2_33:                               # %cond.false
                                        #   in Loop: Header=BB2_23 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB2_34
.LBB2_34:                               # %cond.end
                                        #   in Loop: Header=BB2_23 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB2_23
.LBB2_35:                               # %for.end
	movl	$24, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movslq	(%rcx), %rdi
	callq	g_malloc0_n
	movq	%rax, -40(%rbp)
	movl	$0, -52(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB2_36:                               # %for.cond.42
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_47 Depth 2
	movb	$1, %al
	cmpq	$0, -48(%rbp)
	movb	%al, -145(%rbp)         # 1-byte Spill
	jne	.LBB2_38
# BB#37:                                # %lor.rhs
                                        #   in Loop: Header=BB2_36 Depth=1
	cmpq	$0, -64(%rbp)
	setne	%al
	movb	%al, -145(%rbp)         # 1-byte Spill
.LBB2_38:                               # %lor.end
                                        #   in Loop: Header=BB2_36 Depth=1
	movb	-145(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB2_39
	jmp	.LBB2_70
.LBB2_39:                               # %for.body.45
                                        #   in Loop: Header=BB2_36 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB2_45
# BB#40:                                # %if.then.51
                                        #   in Loop: Header=BB2_36 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB2_43
# BB#41:                                # %land.lhs.true.53
                                        #   in Loop: Header=BB2_36 Depth=1
	movq	-48(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB2_43
# BB#42:                                # %if.then.56
                                        #   in Loop: Header=BB2_36 Depth=1
	jmp	.LBB2_66
.LBB2_43:                               # %if.else.57
                                        #   in Loop: Header=BB2_36 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_stroke_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -120(%rbp)
# BB#44:                                # %if.end.61
                                        #   in Loop: Header=BB2_36 Depth=1
	jmp	.LBB2_46
.LBB2_45:                               # %if.else.62
                                        #   in Loop: Header=BB2_36 Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_stroke_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -120(%rbp)
	movq	$0, -64(%rbp)
.LBB2_46:                               # %if.end.66
                                        #   in Loop: Header=BB2_36 Depth=1
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -128(%rbp)
.LBB2_47:                               # %for.cond.68
                                        #   Parent Loop BB2_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -128(%rbp)
	je	.LBB2_65
# BB#48:                                # %for.body.70
                                        #   in Loop: Header=BB2_47 Depth=2
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-128(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB2_50
# BB#49:                                # %if.then.74
                                        #   in Loop: Header=BB2_47 Depth=2
	jmp	.LBB2_61
.LBB2_50:                               # %if.end.75
                                        #   in Loop: Header=BB2_47 Depth=2
	movq	-136(%rbp), %rax
	movl	64(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	je	.LBB2_51
	jmp	.LBB2_72
.LBB2_72:                               # %if.end.75
                                        #   in Loop: Header=BB2_47 Depth=2
	movl	-172(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	je	.LBB2_56
	jmp	.LBB2_57
.LBB2_51:                               # %sw.bb
                                        #   in Loop: Header=BB2_47 Depth=2
	movq	-128(%rbp), %rax
	movq	16(%rax), %rax
	movq	-120(%rbp), %rcx
	cmpq	40(%rcx), %rax
	jne	.LBB2_54
# BB#52:                                # %land.lhs.true.80
                                        #   in Loop: Header=BB2_47 Depth=2
	cmpl	$0, -72(%rbp)
	jne	.LBB2_54
# BB#53:                                # %if.then.82
                                        #   in Loop: Header=BB2_47 Depth=2
	movslq	-52(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-40(%rbp), %rax
	movl	$3, (%rax)
	jmp	.LBB2_55
.LBB2_54:                               # %if.else.84
                                        #   in Loop: Header=BB2_47 Depth=2
	movslq	-52(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-40(%rbp), %rax
	movl	$1, (%rax)
.LBB2_55:                               # %if.end.88
                                        #   in Loop: Header=BB2_47 Depth=2
	jmp	.LBB2_57
.LBB2_56:                               # %sw.bb.89
                                        #   in Loop: Header=BB2_47 Depth=2
	movslq	-52(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-40(%rbp), %rax
	movl	$2, (%rax)
.LBB2_57:                               # %sw.epilog
                                        #   in Loop: Header=BB2_47 Depth=2
	movq	-136(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movslq	-52(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-40(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movq	-136(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movslq	-52(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-40(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movl	-52(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -52(%rbp)
	movq	-128(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB2_60
# BB#58:                                # %land.lhs.true.103
                                        #   in Loop: Header=BB2_47 Depth=2
	movq	-120(%rbp), %rax
	cmpl	$0, 48(%rax)
	je	.LBB2_60
# BB#59:                                # %if.then.106
                                        #   in Loop: Header=BB2_47 Depth=2
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movslq	-52(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-40(%rbp), %rax
	movl	$2, (%rax)
	movq	-136(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movslq	-52(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-40(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movq	-136(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movslq	-52(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-40(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movl	-52(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -52(%rbp)
.LBB2_60:                               # %if.end.123
                                        #   in Loop: Header=BB2_47 Depth=2
	jmp	.LBB2_61
.LBB2_61:                               # %for.inc.124
                                        #   in Loop: Header=BB2_47 Depth=2
	cmpq	$0, -128(%rbp)
	je	.LBB2_63
# BB#62:                                # %cond.true.126
                                        #   in Loop: Header=BB2_47 Depth=2
	movq	-128(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB2_64
.LBB2_63:                               # %cond.false.128
                                        #   in Loop: Header=BB2_47 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB2_64
.LBB2_64:                               # %cond.end.129
                                        #   in Loop: Header=BB2_47 Depth=2
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -128(%rbp)
	jmp	.LBB2_47
.LBB2_65:                               # %for.end.131
                                        #   in Loop: Header=BB2_36 Depth=1
	movl	$0, -72(%rbp)
.LBB2_66:                               # %for.inc.132
                                        #   in Loop: Header=BB2_36 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB2_68
# BB#67:                                # %cond.true.134
                                        #   in Loop: Header=BB2_36 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB2_69
.LBB2_68:                               # %cond.false.136
                                        #   in Loop: Header=BB2_36 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB2_69
.LBB2_69:                               # %cond.end.137
                                        #   in Loop: Header=BB2_36 Depth=1
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB2_36
.LBB2_70:                               # %for.end.139
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB2_71:                               # %return
	movq	-8(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_vectors_compat_get_points, .Lfunc_end2-gimp_vectors_compat_get_points
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB3_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB3_2:                                # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	movl	$.L.str, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end3:
	.size	g_warning, .Lfunc_end3-g_warning
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Vectors"
	.size	.L.str, 13

	.type	.L__func__.gimp_vectors_compat_new,@object # @__func__.gimp_vectors_compat_new
.L__func__.gimp_vectors_compat_new:
	.asciz	"gimp_vectors_compat_new"
	.size	.L__func__.gimp_vectors_compat_new, 24

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"name != NULL"
	.size	.L.str.2, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"points != NULL || n_points == 0"
	.size	.L.str.3, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"n_points >= 0"
	.size	.L.str.4, 14

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

	.type	.L__func__.gimp_vectors_compat_is_compatible,@object # @__func__.gimp_vectors_compat_is_compatible
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.gimp_vectors_compat_is_compatible:
	.asciz	"gimp_vectors_compat_is_compatible"
	.size	.L__func__.gimp_vectors_compat_is_compatible, 34

	.type	.L__func__.gimp_vectors_compat_get_points,@object # @__func__.gimp_vectors_compat_get_points
.L__func__.gimp_vectors_compat_get_points:
	.asciz	"gimp_vectors_compat_get_points"
	.size	.L__func__.gimp_vectors_compat_get_points, 31

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_IS_VECTORS (vectors)"
	.size	.L.str.5, 26

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"n_points != NULL"
	.size	.L.str.6, 17

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"closed != NULL"
	.size	.L.str.7, 15

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp_vectors_compat_get_points(): convert failed"
	.size	.L.str.8, 49


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
