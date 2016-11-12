	.text
	.file	"gimpdrawable-levels.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI0_1:
	.quad	4621819117588971520     # double 10
.LCPI0_2:
	.quad	4643176031446892544     # double 255
	.text
	.globl	gimp_drawable_levels
	.align	16, 0x90
	.type	gimp_drawable_levels,@function
gimp_drawable_levels:                   # @gimp_drawable_levels
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
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movl	%eax, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_drawable_get_type
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
	movabsq	$.L__func__.gimp_drawable_levels, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_87
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	jne	.LBB0_15
# BB#14:                                # %if.then.14
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_levels, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_87
.LBB0_16:                               # %if.end.16
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.17
	jmp	.LBB0_18
.LBB0_18:                               # %do.body.18
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB0_20
# BB#19:                                # %if.then.23
	jmp	.LBB0_21
.LBB0_20:                               # %if.else.24
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_levels, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_87
.LBB0_21:                               # %if.end.25
	jmp	.LBB0_22
.LBB0_22:                               # %do.end.26
	jmp	.LBB0_23
.LBB0_23:                               # %do.body.27
	cmpq	$0, -16(%rbp)
	je	.LBB0_32
# BB#24:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB0_26
# BB#25:                                # %if.then.37
	movl	$0, -100(%rbp)
	jmp	.LBB0_31
.LBB0_26:                               # %if.else.38
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_29
# BB#27:                                # %land.lhs.true.41
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB0_29
# BB#28:                                # %if.then.45
	movl	$1, -100(%rbp)
	jmp	.LBB0_30
.LBB0_29:                               # %if.else.46
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB0_30:                               # %if.end.48
	jmp	.LBB0_31
.LBB0_31:                               # %if.end.49
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB0_33
.LBB0_32:                               # %if.then.52
	jmp	.LBB0_34
.LBB0_33:                               # %if.else.53
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_levels, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_87
.LBB0_34:                               # %if.end.54
	jmp	.LBB0_35
.LBB0_35:                               # %do.end.55
	jmp	.LBB0_36
.LBB0_36:                               # %do.body.56
	cmpl	$0, -20(%rbp)
	jl	.LBB0_39
# BB#37:                                # %land.lhs.true.58
	cmpl	$4, -20(%rbp)
	jg	.LBB0_39
# BB#38:                                # %if.then.60
	jmp	.LBB0_40
.LBB0_39:                               # %if.else.61
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_levels, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_87
.LBB0_40:                               # %if.end.62
	jmp	.LBB0_41
.LBB0_41:                               # %do.end.63
	jmp	.LBB0_42
.LBB0_42:                               # %do.body.64
	cmpl	$0, -24(%rbp)
	jl	.LBB0_45
# BB#43:                                # %land.lhs.true.66
	cmpl	$255, -24(%rbp)
	jg	.LBB0_45
# BB#44:                                # %if.then.68
	jmp	.LBB0_46
.LBB0_45:                               # %if.else.69
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_levels, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_87
.LBB0_46:                               # %if.end.70
	jmp	.LBB0_47
.LBB0_47:                               # %do.end.71
	jmp	.LBB0_48
.LBB0_48:                               # %do.body.72
	cmpl	$0, -28(%rbp)
	jl	.LBB0_51
# BB#49:                                # %land.lhs.true.74
	cmpl	$255, -28(%rbp)
	jg	.LBB0_51
# BB#50:                                # %if.then.76
	jmp	.LBB0_52
.LBB0_51:                               # %if.else.77
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_levels, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_87
.LBB0_52:                               # %if.end.78
	jmp	.LBB0_53
.LBB0_53:                               # %do.end.79
	jmp	.LBB0_54
.LBB0_54:                               # %do.body.80
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB0_57
# BB#55:                                # %land.lhs.true.82
	movsd	.LCPI0_1, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-40(%rbp), %xmm0
	jb	.LBB0_57
# BB#56:                                # %if.then.84
	jmp	.LBB0_58
.LBB0_57:                               # %if.else.85
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_levels, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_87
.LBB0_58:                               # %if.end.86
	jmp	.LBB0_59
.LBB0_59:                               # %do.end.87
	jmp	.LBB0_60
.LBB0_60:                               # %do.body.88
	cmpl	$0, -44(%rbp)
	jl	.LBB0_63
# BB#61:                                # %land.lhs.true.90
	cmpl	$255, -44(%rbp)
	jg	.LBB0_63
# BB#62:                                # %if.then.92
	jmp	.LBB0_64
.LBB0_63:                               # %if.else.93
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_levels, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_87
.LBB0_64:                               # %if.end.94
	jmp	.LBB0_65
.LBB0_65:                               # %do.end.95
	jmp	.LBB0_66
.LBB0_66:                               # %do.body.96
	cmpl	$0, -48(%rbp)
	jl	.LBB0_69
# BB#67:                                # %land.lhs.true.98
	cmpl	$255, -48(%rbp)
	jg	.LBB0_69
# BB#68:                                # %if.then.100
	jmp	.LBB0_70
.LBB0_69:                               # %if.else.101
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_levels, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_87
.LBB0_70:                               # %if.end.102
	jmp	.LBB0_71
.LBB0_71:                               # %do.end.103
	cmpl	$4, -20(%rbp)
	jne	.LBB0_78
# BB#72:                                # %if.then.105
	jmp	.LBB0_73
.LBB0_73:                               # %do.body.106
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB0_75
# BB#74:                                # %if.then.109
	jmp	.LBB0_76
.LBB0_75:                               # %if.else.110
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_levels, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_87
.LBB0_76:                               # %if.end.111
	jmp	.LBB0_77
.LBB0_77:                               # %do.end.112
	jmp	.LBB0_78
.LBB0_78:                               # %if.end.113
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB0_86
# BB#79:                                # %if.then.116
	jmp	.LBB0_80
.LBB0_80:                               # %do.body.117
	cmpl	$0, -20(%rbp)
	je	.LBB0_82
# BB#81:                                # %lor.lhs.false.119
	cmpl	$4, -20(%rbp)
	jne	.LBB0_83
.LBB0_82:                               # %if.then.121
	jmp	.LBB0_84
.LBB0_83:                               # %if.else.122
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_levels, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_87
.LBB0_84:                               # %if.end.123
	jmp	.LBB0_85
.LBB0_85:                               # %do.end.124
	jmp	.LBB0_86
.LBB0_86:                               # %if.end.125
	callq	gimp_levels_config_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movabsq	$.L.str.13, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	-20(%rbp), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	movabsq	$.L.str.14, %rsi
	movabsq	$.L.str.15, %rdx
	movabsq	$.L.str.16, %rcx
	movabsq	$.L.str.17, %r8
	movabsq	$.L.str.18, %r9
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movsd	.LCPI0_2, %xmm0         # xmm0 = mem[0],zero
	movq	-56(%rbp), %r11
	cvtsi2sdl	-24(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	cvtsi2sdl	-28(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	cvtsi2sdl	-44(%rbp), %xmm4
	divsd	%xmm0, %xmm4
	cvtsi2sdl	-48(%rbp), %xmm5
	divsd	%xmm0, %xmm5
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	movaps	%xmm4, %xmm3
	movaps	%xmm5, %xmm4
	movq	$0, (%rsp)
	movb	$5, %al
	callq	g_object_set
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	gimp_drawable_levels_internal
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
.LBB0_87:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_drawable_levels, .Lfunc_end0-gimp_drawable_levels
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_levels_internal,@function
gimp_drawable_levels_internal:          # @gimp_drawable_levels_internal
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
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	32(%rax), %rdi
	callq	gimp_use_gegl
	cmpl	$0, %eax
	je	.LBB1_2
# BB#1:                                 # %if.then
	callq	gegl_node_get_type
	movabsq	$.L.str.19, %rsi
	movabsq	$.L.str.20, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movabsq	$.L.str.21, %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movb	$0, %al
	callq	gegl_node_set
	movabsq	$.L.str.22, %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %r8d
	movq	-32(%rbp), %rcx
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	-176(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_drawable_apply_operation
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	jmp	.LBB1_3
.LBB1_2:                                # %if.else
	callq	gimp_lut_new
	movq	%rax, -160(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_drawable_is_rgb
	leaq	-152(%rbp), %rsi
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %edx
	callq	gimp_levels_config_to_cruft
	leaq	-152(%rbp), %rsi
	movq	-160(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	callq	gimp_drawable_bytes
	movabsq	$levels_lut_func, %rcx
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rsi
	movq	-208(%rbp), %rdx        # 8-byte Reload
	movl	%eax, %ecx
	callq	gimp_lut_setup
	movabsq	$.L.str.22, %rdi
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-160(%rbp), %rcx
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	-216(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_drawable_process_lut
	movq	-160(%rbp), %rdi
	callq	gimp_lut_free
.LBB1_3:                                # %if.end
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_drawable_levels_internal, .Lfunc_end1-gimp_drawable_levels_internal
	.cfi_endproc

	.globl	gimp_drawable_levels_stretch
	.align	16, 0x90
	.type	gimp_drawable_levels_stretch,@function
gimp_drawable_levels_stretch:           # @gimp_drawable_levels_stretch
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_levels_stretch, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_38
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	jmp	.LBB2_13
.LBB2_13:                               # %do.body.11
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	jne	.LBB2_15
# BB#14:                                # %if.then.14
	jmp	.LBB2_16
.LBB2_15:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_levels_stretch, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_38
.LBB2_16:                               # %if.end.16
	jmp	.LBB2_17
.LBB2_17:                               # %do.end.17
	jmp	.LBB2_18
.LBB2_18:                               # %do.body.18
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB2_20
# BB#19:                                # %if.then.23
	jmp	.LBB2_21
.LBB2_20:                               # %if.else.24
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_levels_stretch, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_38
.LBB2_21:                               # %if.end.25
	jmp	.LBB2_22
.LBB2_22:                               # %do.end.26
	jmp	.LBB2_23
.LBB2_23:                               # %do.body.27
	cmpq	$0, -16(%rbp)
	je	.LBB2_32
# BB#24:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB2_26
# BB#25:                                # %if.then.37
	movl	$0, -76(%rbp)
	jmp	.LBB2_31
.LBB2_26:                               # %if.else.38
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_29
# BB#27:                                # %land.lhs.true.41
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB2_29
# BB#28:                                # %if.then.45
	movl	$1, -76(%rbp)
	jmp	.LBB2_30
.LBB2_29:                               # %if.else.46
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB2_30:                               # %if.end.48
	jmp	.LBB2_31
.LBB2_31:                               # %if.end.49
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB2_33
.LBB2_32:                               # %if.then.52
	jmp	.LBB2_34
.LBB2_33:                               # %if.else.53
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_levels_stretch, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_38
.LBB2_34:                               # %if.end.54
	jmp	.LBB2_35
.LBB2_35:                               # %do.end.55
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	-104(%rbp), %r8         # 8-byte Reload
	callq	gimp_item_mask_intersect
	cmpl	$0, %eax
	jne	.LBB2_37
# BB#36:                                # %if.then.60
	jmp	.LBB2_38
.LBB2_37:                               # %if.end.61
	callq	gimp_levels_config_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -24(%rbp)
	callq	gimp_histogram_new
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_drawable_calculate_histogram
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gimp_drawable_is_rgb
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %edx
	callq	gimp_levels_config_stretch
	movq	-32(%rbp), %rdi
	callq	gimp_histogram_unref
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gimp_drawable_levels_internal
	movq	-24(%rbp), %rdx
	movq	%rdx, %rdi
	callq	g_object_unref
.LBB2_38:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_drawable_levels_stretch, .Lfunc_end2-gimp_drawable_levels_stretch
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_drawable_levels,@object # @__func__.gimp_drawable_levels
.L__func__.gimp_drawable_levels:
	.asciz	"gimp_drawable_levels"
	.size	.L__func__.gimp_drawable_levels, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_DRAWABLE (drawable)"
	.size	.L.str.1, 28

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"! gimp_drawable_is_indexed (drawable)"
	.size	.L.str.2, 38

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp_item_is_attached (GIMP_ITEM (drawable))"
	.size	.L.str.3, 45

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"progress == NULL || GIMP_IS_PROGRESS (progress)"
	.size	.L.str.4, 48

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"channel >= GIMP_HISTOGRAM_VALUE && channel <= GIMP_HISTOGRAM_ALPHA"
	.size	.L.str.5, 67

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"low_input >= 0 && low_input <= 255"
	.size	.L.str.6, 35

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"high_input >= 0 && high_input <= 255"
	.size	.L.str.7, 37

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gamma >= 0.1 && gamma <= 10.0"
	.size	.L.str.8, 30

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"low_output >= 0 && low_output <= 255"
	.size	.L.str.9, 37

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"high_output >= 0 && high_output <= 255"
	.size	.L.str.10, 39

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp_drawable_has_alpha (drawable)"
	.size	.L.str.11, 35

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"channel == GIMP_HISTOGRAM_VALUE || channel == GIMP_HISTOGRAM_ALPHA"
	.size	.L.str.12, 67

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"channel"
	.size	.L.str.13, 8

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"low-input"
	.size	.L.str.14, 10

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"high-input"
	.size	.L.str.15, 11

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gamma"
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"low-output"
	.size	.L.str.17, 11

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"high-output"
	.size	.L.str.18, 12

	.type	.L__func__.gimp_drawable_levels_stretch,@object # @__func__.gimp_drawable_levels_stretch
.L__func__.gimp_drawable_levels_stretch:
	.asciz	"gimp_drawable_levels_stretch"
	.size	.L__func__.gimp_drawable_levels_stretch, 29

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"operation"
	.size	.L.str.19, 10

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gimp:levels"
	.size	.L.str.20, 12

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"config"
	.size	.L.str.21, 7

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Levels"
	.size	.L.str.22, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
