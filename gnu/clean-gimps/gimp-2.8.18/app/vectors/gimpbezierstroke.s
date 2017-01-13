	.text
	.file	"gimpbezierstroke.bc"
	.globl	gimp_bezier_stroke_get_type
	.align	16, 0x90
	.type	gimp_bezier_stroke_get_type,@function
gimp_bezier_stroke_get_type:            # @gimp_bezier_stroke_get_type
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_bezier_stroke_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_bezier_stroke_get_type.g_define_type_id__volatile, %rax
	movq	%rax, %rdi
	callq	g_once_init_enter
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB0_2:                                # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB0_4
# BB#3:                                 # %if.then
	callq	gimp_stroke_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$472, %edx              # imm = 0x1D8
	movabsq	$gimp_bezier_stroke_class_intern_init, %rdi
	movl	$56, %r8d
	movabsq	$gimp_bezier_stroke_init, %rcx
	xorl	%esi, %esi
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movl	$0, (%rsp)
	callq	g_type_register_static_simple
	movabsq	$gimp_bezier_stroke_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_bezier_stroke_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_bezier_stroke_get_type, .Lfunc_end0-gimp_bezier_stroke_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_bezier_stroke_class_intern_init,@function
gimp_bezier_stroke_class_intern_init:   # @gimp_bezier_stroke_class_intern_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_class_peek_parent
	movq	%rax, gimp_bezier_stroke_parent_class
	cmpl	$0, GimpBezierStroke_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpBezierStroke_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_bezier_stroke_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_bezier_stroke_class_intern_init, .Lfunc_end1-gimp_bezier_stroke_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_bezier_stroke_init,@function
gimp_bezier_stroke_init:                # @gimp_bezier_stroke_init
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_bezier_stroke_init, .Lfunc_end2-gimp_bezier_stroke_init
	.cfi_endproc

	.globl	gimp_bezier_stroke_new
	.align	16, 0x90
	.type	gimp_bezier_stroke_new,@function
gimp_bezier_stroke_new:                 # @gimp_bezier_stroke_new
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
	callq	gimp_bezier_stroke_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_bezier_stroke_new, .Lfunc_end3-gimp_bezier_stroke_new
	.cfi_endproc

	.globl	gimp_bezier_stroke_new_from_coords
	.align	16, 0x90
	.type	gimp_bezier_stroke_new_from_coords,@function
gimp_bezier_stroke_new_from_coords:     # @gimp_bezier_stroke_new_from_coords
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_bezier_stroke_new_from_coords, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_22
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	jmp	.LBB4_6
.LBB4_6:                                # %do.body.1
	cmpl	$3, -20(%rbp)
	jl	.LBB4_8
# BB#7:                                 # %if.then.3
	jmp	.LBB4_9
.LBB4_8:                                # %if.else.4
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_bezier_stroke_new_from_coords, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_22
.LBB4_9:                                # %if.end.5
	jmp	.LBB4_10
.LBB4_10:                               # %do.end.6
	jmp	.LBB4_11
.LBB4_11:                               # %do.body.7
	movl	$3, %eax
	movl	-20(%rbp), %ecx
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-48(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB4_13
# BB#12:                                # %if.then.9
	jmp	.LBB4_14
.LBB4_13:                               # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_bezier_stroke_new_from_coords, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_22
.LBB4_14:                               # %if.end.11
	jmp	.LBB4_15
.LBB4_15:                               # %do.end.12
	callq	gimp_bezier_stroke_new
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB4_16:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB4_19
# BB#17:                                # %for.body
                                        #   in Loop: Header=BB4_16 Depth=1
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rdi
	movslq	-44(%rbp), %rax
	shlq	$6, %rax
	addq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rsi
	callq	gimp_bezier_stroke_extend
	movq	%rax, -40(%rbp)
# BB#18:                                # %for.inc
                                        #   in Loop: Header=BB4_16 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB4_16
.LBB4_19:                               # %for.end
	cmpl	$0, -24(%rbp)
	je	.LBB4_21
# BB#20:                                # %if.then.15
	movq	-32(%rbp), %rdi
	callq	gimp_stroke_close
.LBB4_21:                               # %if.end.16
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_22:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_bezier_stroke_new_from_coords, .Lfunc_end4-gimp_bezier_stroke_new_from_coords
	.cfi_endproc

	.globl	gimp_bezier_stroke_extend
	.align	16, 0x90
	.type	gimp_bezier_stroke_extend,@function
gimp_bezier_stroke_extend:              # @gimp_bezier_stroke_extend
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	$0, -48(%rbp)
	movq	-16(%rbp), %rdx
	cmpq	$0, 40(%rdx)
	jne	.LBB5_11
# BB#1:                                 # %if.then
	jmp	.LBB5_2
.LBB5_2:                                # %do.body
	cmpq	$0, -32(%rbp)
	jne	.LBB5_4
# BB#3:                                 # %if.then.2
	jmp	.LBB5_5
.LBB5_4:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_bezier_stroke_extend, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_78
.LBB5_5:                                # %if.end
	jmp	.LBB5_6
.LBB5_6:                                # %do.end
	movq	-24(%rbp), %rsi
	movl	$1, %edi
	callq	gimp_anchor_new
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rsi
	movq	40(%rsi), %rdi
	movq	%rax, %rsi
	callq	g_list_append
	movq	-16(%rbp), %rsi
	movq	%rax, 40(%rsi)
	movl	-36(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -72(%rbp)         # 4-byte Spill
	je	.LBB5_7
	jmp	.LBB5_84
.LBB5_84:                               # %do.end
	movl	-72(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB5_8
	jmp	.LBB5_9
.LBB5_7:                                # %sw.bb
	jmp	.LBB5_10
.LBB5_8:                                # %sw.bb.6
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	gimp_bezier_stroke_extend
	xorl	%ecx, %ecx
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	gimp_bezier_stroke_extend
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB5_10
.LBB5_9:                                # %sw.default
	movq	$0, -48(%rbp)
.LBB5_10:                               # %sw.epilog
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_78
.LBB5_11:                               # %if.else.9
	jmp	.LBB5_12
.LBB5_12:                               # %do.body.10
	cmpq	$0, -32(%rbp)
	je	.LBB5_14
# BB#13:                                # %if.then.12
	jmp	.LBB5_15
.LBB5_14:                               # %if.else.13
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_bezier_stroke_extend, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_78
.LBB5_15:                               # %if.end.14
	jmp	.LBB5_16
.LBB5_16:                               # %do.end.15
	movl	$0, -60(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_list_last
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdi
	cmpq	%rdi, %rax
	jne	.LBB5_18
# BB#17:                                # %if.then.19
	movl	$1, -60(%rbp)
	jmp	.LBB5_42
.LBB5_18:                               # %if.else.20
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_list_first
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdi
	cmpq	%rdi, %rax
	jne	.LBB5_20
# BB#19:                                # %if.then.25
	movl	$-1, -60(%rbp)
	jmp	.LBB5_41
.LBB5_20:                               # %if.else.26
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_find
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB5_31
# BB#21:                                # %land.lhs.true
	movq	-32(%rbp), %rax
	cmpl	$1, 64(%rax)
	jne	.LBB5_31
# BB#22:                                # %if.then.30
	movq	-56(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB5_25
# BB#23:                                # %land.lhs.true.32
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	cmpl	$0, 64(%rax)
	jne	.LBB5_25
# BB#24:                                # %if.then.37
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB5_30
.LBB5_25:                               # %if.else.39
	movq	-56(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB5_28
# BB#26:                                # %land.lhs.true.41
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	cmpl	$0, 64(%rax)
	jne	.LBB5_28
# BB#27:                                # %if.then.46
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB5_29
.LBB5_28:                               # %if.else.48
	movl	$0, -60(%rbp)
	movq	$0, -56(%rbp)
.LBB5_29:                               # %if.end.49
	jmp	.LBB5_30
.LBB5_30:                               # %if.end.50
	jmp	.LBB5_31
.LBB5_31:                               # %if.end.51
	cmpq	$0, -56(%rbp)
	je	.LBB5_40
# BB#32:                                # %if.then.53
	movq	-56(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB5_35
# BB#33:                                # %land.lhs.true.56
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB5_35
# BB#34:                                # %if.then.60
	movl	$1, -60(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB5_39
.LBB5_35:                               # %if.else.62
	movq	-56(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB5_38
# BB#36:                                # %land.lhs.true.65
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB5_38
# BB#37:                                # %if.then.69
	movl	$-1, -60(%rbp)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB5_38:                               # %if.end.71
	jmp	.LBB5_39
.LBB5_39:                               # %if.end.72
	jmp	.LBB5_40
.LBB5_40:                               # %if.end.73
	jmp	.LBB5_41
.LBB5_41:                               # %if.end.74
	jmp	.LBB5_42
.LBB5_42:                               # %if.end.75
	cmpl	$0, -60(%rbp)
	je	.LBB5_77
# BB#43:                                # %if.then.77
	movl	$0, -64(%rbp)
	cmpl	$1, -60(%rbp)
	jne	.LBB5_50
# BB#44:                                # %if.then.80
	jmp	.LBB5_45
.LBB5_45:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -56(%rbp)
	movb	%cl, -89(%rbp)          # 1-byte Spill
	je	.LBB5_47
# BB#46:                                # %land.rhs
                                        #   in Loop: Header=BB5_45 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$1, 64(%rax)
	sete	%cl
	movb	%cl, -89(%rbp)          # 1-byte Spill
.LBB5_47:                               # %land.end
                                        #   in Loop: Header=BB5_45 Depth=1
	movb	-89(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_48
	jmp	.LBB5_49
.LBB5_48:                               # %while.body
                                        #   in Loop: Header=BB5_45 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	movq	-56(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	jmp	.LBB5_45
.LBB5_49:                               # %while.end
	jmp	.LBB5_56
.LBB5_50:                               # %if.else.86
	jmp	.LBB5_51
.LBB5_51:                               # %while.cond.87
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -56(%rbp)
	movb	%cl, -90(%rbp)          # 1-byte Spill
	je	.LBB5_53
# BB#52:                                # %land.rhs.89
                                        #   in Loop: Header=BB5_51 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$1, 64(%rax)
	sete	%cl
	movb	%cl, -90(%rbp)          # 1-byte Spill
.LBB5_53:                               # %land.end.93
                                        #   in Loop: Header=BB5_51 Depth=1
	movb	-90(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_54
	jmp	.LBB5_55
.LBB5_54:                               # %while.body.94
                                        #   in Loop: Header=BB5_51 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	jmp	.LBB5_51
.LBB5_55:                               # %while.end.97
	jmp	.LBB5_56
.LBB5_56:                               # %if.end.98
	movl	-36(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB5_57
	jmp	.LBB5_79
.LBB5_79:                               # %if.end.98
	movl	-96(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB5_70
	jmp	.LBB5_76
.LBB5_57:                               # %sw.bb.99
	movl	-64(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB5_58
	jmp	.LBB5_82
.LBB5_82:                               # %sw.bb.99
	movl	-104(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB5_59
	jmp	.LBB5_83
.LBB5_83:                               # %sw.bb.99
	movl	-104(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB5_63
	jmp	.LBB5_64
.LBB5_58:                               # %sw.bb.100
	movl	$1, -68(%rbp)
	jmp	.LBB5_65
.LBB5_59:                               # %sw.bb.101
	cmpq	$0, -56(%rbp)
	je	.LBB5_61
# BB#60:                                # %if.then.103
	movl	$1, -68(%rbp)
	jmp	.LBB5_62
.LBB5_61:                               # %if.else.104
	movl	$0, -68(%rbp)
.LBB5_62:                               # %if.end.105
	jmp	.LBB5_65
.LBB5_63:                               # %sw.bb.106
	movl	$0, -68(%rbp)
	jmp	.LBB5_65
.LBB5_64:                               # %sw.default.107
	movabsq	$.L.str.7, %rdi
	movl	-64(%rbp), %esi
	movb	$0, %al
	callq	g_warning
	movl	$0, -68(%rbp)
.LBB5_65:                               # %sw.epilog.108
	movl	-68(%rbp), %edi
	movq	-24(%rbp), %rsi
	callq	gimp_anchor_new
	movq	%rax, -48(%rbp)
	cmpl	$1, -60(%rbp)
	jne	.LBB5_67
# BB#66:                                # %if.then.111
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	-16(%rbp), %rsi
	movq	%rax, 40(%rsi)
.LBB5_67:                               # %if.end.115
	cmpl	$-1, -60(%rbp)
	jne	.LBB5_69
# BB#68:                                # %if.then.117
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-16(%rbp), %rsi
	movq	%rax, 40(%rsi)
.LBB5_69:                               # %if.end.121
	jmp	.LBB5_76
.LBB5_70:                               # %sw.bb.122
	movl	-64(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB5_71
	jmp	.LBB5_80
.LBB5_80:                               # %sw.bb.122
	movl	-116(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	je	.LBB5_72
	jmp	.LBB5_81
.LBB5_81:                               # %sw.bb.122
	movl	-116(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	je	.LBB5_73
	jmp	.LBB5_74
.LBB5_71:                               # %sw.bb.123
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	gimp_bezier_stroke_extend
	movq	%rax, -32(%rbp)
.LBB5_72:                               # %sw.bb.125
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	gimp_bezier_stroke_extend
	movq	%rax, -32(%rbp)
.LBB5_73:                               # %sw.bb.127
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	gimp_bezier_stroke_extend
	xorl	%ecx, %ecx
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	gimp_bezier_stroke_extend
	movq	%rax, -32(%rbp)
	jmp	.LBB5_75
.LBB5_74:                               # %sw.default.130
	movabsq	$.L.str.7, %rdi
	movl	-64(%rbp), %esi
	movb	$0, %al
	callq	g_warning
.LBB5_75:                               # %sw.epilog.131
	jmp	.LBB5_76
.LBB5_76:                               # %sw.epilog.132
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_78
.LBB5_77:                               # %if.end.133
	movq	$0, -8(%rbp)
.LBB5_78:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_bezier_stroke_extend, .Lfunc_end5-gimp_bezier_stroke_extend
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB6_2
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
.LBB6_2:                                # %entry
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
	movl	$.L.str.1, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end6:
	.size	g_warning, .Lfunc_end6-g_warning
	.cfi_endproc

	.globl	gimp_bezier_stroke_new_moveto
	.align	16, 0x90
	.type	gimp_bezier_stroke_new_moveto,@function
gimp_bezier_stroke_new_moveto:          # @gimp_bezier_stroke_new_moveto
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	callq	gimp_bezier_stroke_new
	movl	$1, %edi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rsi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_anchor_new
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_prepend
	xorl	%edi, %edi
	movq	-16(%rbp), %rsi
	movq	%rax, 40(%rsi)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rsi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_anchor_new
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_prepend
	movl	$1, %edi
	movq	-16(%rbp), %rsi
	movq	%rax, 40(%rsi)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rsi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_anchor_new
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-16(%rbp), %rsi
	movq	%rax, 40(%rsi)
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_bezier_stroke_new_moveto, .Lfunc_end7-gimp_bezier_stroke_new_moveto
	.cfi_endproc

	.globl	gimp_bezier_stroke_lineto
	.align	16, 0x90
	.type	gimp_bezier_stroke_lineto,@function
gimp_bezier_stroke_lineto:              # @gimp_bezier_stroke_lineto
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_bezier_stroke_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_bezier_stroke_lineto, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_23
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	cmpl	$0, 48(%rax)
	jne	.LBB8_15
# BB#14:                                # %if.then.13
	jmp	.LBB8_16
.LBB8_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_bezier_stroke_lineto, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_23
.LBB8_16:                               # %if.end.15
	jmp	.LBB8_17
.LBB8_17:                               # %do.end.16
	jmp	.LBB8_18
.LBB8_18:                               # %do.body.17
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB8_20
# BB#19:                                # %if.then.19
	jmp	.LBB8_21
.LBB8_20:                               # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_bezier_stroke_lineto, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_23
.LBB8_21:                               # %if.end.21
	jmp	.LBB8_22
.LBB8_22:                               # %do.end.22
	movl	$1, %edi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_anchor_new
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_prepend
	xorl	%edi, %edi
	movq	-8(%rbp), %rsi
	movq	%rax, 40(%rsi)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_anchor_new
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_prepend
	movl	$1, %edi
	movq	-8(%rbp), %rsi
	movq	%rax, 40(%rsi)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_anchor_new
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-8(%rbp), %rsi
	movq	%rax, 40(%rsi)
.LBB8_23:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_bezier_stroke_lineto, .Lfunc_end8-gimp_bezier_stroke_lineto
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4604180019048437077     # double 0.66666666666666663
.LCPI9_1:
	.quad	4599676419421066581     # double 0.33333333333333331
	.text
	.globl	gimp_bezier_stroke_conicto
	.align	16, 0x90
	.type	gimp_bezier_stroke_conicto,@function
gimp_bezier_stroke_conicto:             # @gimp_bezier_stroke_conicto
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -160(%rbp)
	callq	gimp_bezier_stroke_get_type
	movq	%rax, -168(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -172(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-160(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-168(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -172(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -172(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-172(%rbp), %eax
	movl	%eax, -176(%rbp)
	cmpl	$0, -176(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_bezier_stroke_conicto, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_28
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	cmpl	$0, 48(%rax)
	jne	.LBB9_15
# BB#14:                                # %if.then.13
	jmp	.LBB9_16
.LBB9_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_bezier_stroke_conicto, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_28
.LBB9_16:                               # %if.end.15
	jmp	.LBB9_17
.LBB9_17:                               # %do.end.16
	jmp	.LBB9_18
.LBB9_18:                               # %do.body.17
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB9_20
# BB#19:                                # %if.then.19
	jmp	.LBB9_21
.LBB9_20:                               # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_bezier_stroke_conicto, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_28
.LBB9_21:                               # %if.end.21
	jmp	.LBB9_22
.LBB9_22:                               # %do.end.22
	jmp	.LBB9_23
.LBB9_23:                               # %do.body.23
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB9_25
# BB#24:                                # %if.then.26
	jmp	.LBB9_26
.LBB9_25:                               # %if.else.27
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_bezier_stroke_conicto, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_28
.LBB9_26:                               # %if.end.28
	jmp	.LBB9_27
.LBB9_27:                               # %do.end.29
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero
	leaq	-88(%rbp), %rax
	leaq	-152(%rbp), %rdx
	movl	$64, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	8(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, %r8
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-184(%rbp), %r8         # 8-byte Reload
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	-192(%rbp), %r9         # 8-byte Reload
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movq	%r9, %rdx
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	movsd	%xmm1, -216(%rbp)       # 8-byte Spill
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-16(%rbp), %rdi
	movsd	-208(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-216(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	-224(%rbp), %rsi        # 8-byte Reload
	movq	-200(%rbp), %rdx        # 8-byte Reload
	callq	gimp_coords_mix
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero
	leaq	-152(%rbp), %rax
	movl	$64, %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	movq	40(%rsi), %rsi
	movq	(%rsi), %rsi
	movq	%rax, %rdi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-232(%rbp), %rsi        # 8-byte Reload
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	movsd	%xmm1, -248(%rbp)       # 8-byte Spill
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movsd	-240(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-248(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	-256(%rbp), %rdx        # 8-byte Reload
	callq	gimp_coords_mix
	movl	$1, %edi
	leaq	-152(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_anchor_new
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_prepend
	xorl	%edi, %edi
	movq	-8(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_anchor_new
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_prepend
	movl	$1, %edi
	movq	-8(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_anchor_new
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-8(%rbp), %rdx
	movq	%rax, 40(%rdx)
.LBB9_28:                               # %return
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_bezier_stroke_conicto, .Lfunc_end9-gimp_bezier_stroke_conicto
	.cfi_endproc

	.globl	gimp_bezier_stroke_cubicto
	.align	16, 0x90
	.type	gimp_bezier_stroke_cubicto,@function
gimp_bezier_stroke_cubicto:             # @gimp_bezier_stroke_cubicto
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_bezier_stroke_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_bezier_stroke_cubicto, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_23
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	jmp	.LBB10_13
.LBB10_13:                              # %do.body.11
	movq	-8(%rbp), %rax
	cmpl	$0, 48(%rax)
	jne	.LBB10_15
# BB#14:                                # %if.then.13
	jmp	.LBB10_16
.LBB10_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_bezier_stroke_cubicto, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_23
.LBB10_16:                              # %if.end.15
	jmp	.LBB10_17
.LBB10_17:                              # %do.end.16
	jmp	.LBB10_18
.LBB10_18:                              # %do.body.17
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB10_20
# BB#19:                                # %if.then.19
	jmp	.LBB10_21
.LBB10_20:                              # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_bezier_stroke_cubicto, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_23
.LBB10_21:                              # %if.end.21
	jmp	.LBB10_22
.LBB10_22:                              # %do.end.22
	movl	$1, %edi
	movl	$64, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	-16(%rbp), %rsi
	movl	%edi, -60(%rbp)         # 4-byte Spill
	movq	%rcx, %rdi
	callq	memcpy
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rdi
	movq	-24(%rbp), %rsi
	movl	-60(%rbp), %eax         # 4-byte Reload
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	gimp_anchor_new
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_prepend
	xorl	%edi, %edi
	movq	-8(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-32(%rbp), %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_anchor_new
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_prepend
	movl	$1, %edi
	movq	-8(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-32(%rbp), %rsi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_anchor_new
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-8(%rbp), %rcx
	movq	%rax, 40(%rcx)
.LBB10_23:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_bezier_stroke_cubicto, .Lfunc_end10-gimp_bezier_stroke_cubicto
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4532020583610935537     # double 1.0000000000000001E-5
.LCPI11_1:
	.quad	4602678819172646912     # double 0.5
.LCPI11_2:
	.quad	-4620693217682128896    # double -0.5
.LCPI11_3:
	.quad	4607182418800017408     # double 1
.LCPI11_4:
	.quad	-4616189618054758400    # double -1
.LCPI11_5:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI11_6:
	.quad	4609753056924675352     # double 1.5707963267948966
	.text
	.globl	gimp_bezier_stroke_arcto
	.align	16, 0x90
	.type	gimp_bezier_stroke_arcto,@function
gimp_bezier_stroke_arcto:               # @gimp_bezier_stroke_arcto
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$1280, %rsp             # imm = 0x500
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movl	%esi, -36(%rbp)
	movl	%edx, -40(%rbp)
	movq	%rcx, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -1072(%rbp)
	callq	gimp_bezier_stroke_get_type
	movq	%rax, -1080(%rbp)
	cmpq	$0, -1072(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -1084(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-1072(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-1072(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-1080(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -1084(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-1072(%rbp), %rdi
	movq	-1080(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -1084(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-1084(%rbp), %eax
	movl	%eax, -1088(%rbp)
	cmpl	$0, -1088(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_bezier_stroke_arcto, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_71
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	jmp	.LBB11_13
.LBB11_13:                              # %do.body.11
	movq	-8(%rbp), %rax
	cmpl	$0, 48(%rax)
	jne	.LBB11_15
# BB#14:                                # %if.then.13
	jmp	.LBB11_16
.LBB11_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_bezier_stroke_arcto, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_71
.LBB11_16:                              # %if.end.15
	jmp	.LBB11_17
.LBB11_17:                              # %do.end.16
	jmp	.LBB11_18
.LBB11_18:                              # %do.body.17
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB11_20
# BB#19:                                # %if.then.19
	jmp	.LBB11_21
.LBB11_20:                              # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_bezier_stroke_arcto, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_71
.LBB11_21:                              # %if.end.21
	jmp	.LBB11_22
.LBB11_22:                              # %do.end.22
	jmp	.LBB11_23
.LBB11_23:                              # %do.body.23
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB11_25
# BB#24:                                # %if.then.26
	jmp	.LBB11_26
.LBB11_25:                              # %if.else.27
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_bezier_stroke_arcto, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_71
.LBB11_26:                              # %if.end.28
	jmp	.LBB11_27
.LBB11_27:                              # %do.end.29
	xorps	%xmm0, %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB11_28
	jp	.LBB11_28
	jmp	.LBB11_29
.LBB11_28:                              # %lor.lhs.false
	xorps	%xmm0, %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB11_30
	jp	.LBB11_30
.LBB11_29:                              # %if.then.32
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_bezier_stroke_lineto
	jmp	.LBB11_71
.LBB11_30:                              # %if.end.33
	leaq	-1016(%rbp), %rdi
	movl	$64, %eax
	movl	%eax, %edx
	leaq	-112(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	40(%rsi), %rsi
	movq	8(%rsi), %rsi
	movq	(%rsi), %rsi
	movq	%rdi, -1104(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	callq	memcpy
	movq	-1104(%rbp), %rdi       # 8-byte Reload
	callq	gimp_matrix3_identity
	leaq	-1016(%rbp), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm0
	callq	gimp_matrix3_rotate
	movsd	.LCPI11_1, %xmm0        # xmm0 = mem[0],zero
	leaq	-112(%rbp), %rdi
	movsd	.LCPI11_2, %xmm1        # xmm1 = mem[0],zero
	leaq	-240(%rbp), %rdx
	movq	-48(%rbp), %rsi
	callq	gimp_coords_mix
	leaq	-1016(%rbp), %rdi
	leaq	-1056(%rbp), %rsi
	leaq	-1064(%rbp), %rdx
	movsd	-240(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-232(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_matrix3_transform_point
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-1056(%rbp), %xmm1      # xmm1 = mem[0],zero
	movsd	%xmm1, -240(%rbp)
	movsd	-1064(%rbp), %xmm1      # xmm1 = mem[0],zero
	movsd	%xmm1, -232(%rbp)
	movsd	-240(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-240(%rbp), %xmm1
	movsd	-16(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-16(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	movsd	-232(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-232(%rbp), %xmm2
	movsd	-24(%rbp), %xmm3        # xmm3 = mem[0],zero
	mulsd	-24(%rbp), %xmm3
	divsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -1024(%rbp)
	ucomisd	-1024(%rbp), %xmm0
	jbe	.LBB11_32
# BB#31:                                # %if.then.47
	jmp	.LBB11_71
.LBB11_32:                              # %if.end.48
	movsd	.LCPI11_3, %xmm0        # xmm0 = mem[0],zero
	movl	$64, %eax
	movl	%eax, %edx
	leaq	-240(%rbp), %rcx
	leaq	-304(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movsd	%xmm0, -1112(%rbp)      # 8-byte Spill
	callq	memcpy
	movsd	-1024(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	-1112(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB11_34
# BB#33:                                # %if.then.50
	xorps	%xmm0, %xmm0
	movsd	-1024(%rbp), %xmm1      # xmm1 = mem[0],zero
	movsd	%xmm0, -1120(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	mulsd	-16(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-1024(%rbp), %xmm0      # xmm0 = mem[0],zero
	callq	sqrt
	mulsd	-24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-1120(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -304(%rbp)
	movsd	%xmm0, -296(%rbp)
	jmp	.LBB11_35
.LBB11_34:                              # %if.else.57
	movsd	.LCPI11_3, %xmm0        # xmm0 = mem[0],zero
	subsd	-1024(%rbp), %xmm0
	divsd	-1024(%rbp), %xmm0
	callq	sqrt
	movsd	%xmm0, -1096(%rbp)
	movsd	-232(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-16(%rbp), %xmm0
	divsd	-24(%rbp), %xmm0
	mulsd	-1096(%rbp), %xmm0
	movsd	%xmm0, -304(%rbp)
	movsd	-240(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	mulsd	-24(%rbp), %xmm0
	divsd	-16(%rbp), %xmm0
	mulsd	-1096(%rbp), %xmm0
	movsd	%xmm0, -296(%rbp)
.LBB11_35:                              # %if.end.73
	cmpl	$0, -36(%rbp)
	je	.LBB11_37
# BB#36:                                # %land.lhs.true.75
	cmpl	$0, -40(%rbp)
	jne	.LBB11_39
.LBB11_37:                              # %lor.lhs.false.77
	cmpl	$0, -36(%rbp)
	jne	.LBB11_40
# BB#38:                                # %land.lhs.true.79
	cmpl	$0, -40(%rbp)
	jne	.LBB11_40
.LBB11_39:                              # %if.then.81
	movsd	.LCPI11_4, %xmm0        # xmm0 = mem[0],zero
	movaps	%xmm0, %xmm1
	mulsd	-304(%rbp), %xmm1
	movsd	%xmm1, -304(%rbp)
	mulsd	-296(%rbp), %xmm0
	movsd	%xmm0, -296(%rbp)
.LBB11_40:                              # %if.end.86
	leaq	-1016(%rbp), %rdi
	callq	gimp_matrix3_identity
	leaq	-1016(%rbp), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_matrix3_rotate
	leaq	-1016(%rbp), %rdi
	leaq	-1056(%rbp), %rsi
	leaq	-1064(%rbp), %rdx
	movl	$64, %eax
	movl	%eax, %ecx
	leaq	-304(%rbp), %r8
	leaq	-368(%rbp), %r9
	movq	%rdi, -1128(%rbp)       # 8-byte Spill
	movq	%r9, %rdi
	movq	%rsi, -1136(%rbp)       # 8-byte Spill
	movq	%r8, %rsi
	movq	%rdx, -1144(%rbp)       # 8-byte Spill
	movq	%rcx, %rdx
	callq	memcpy
	movsd	-368(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-360(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	-1128(%rbp), %rdi       # 8-byte Reload
	movq	-1136(%rbp), %rsi       # 8-byte Reload
	movq	-1144(%rbp), %rdx       # 8-byte Reload
	callq	gimp_matrix3_transform_point
	movsd	.LCPI11_1, %xmm0        # xmm0 = mem[0],zero
	leaq	-112(%rbp), %rdi
	leaq	-176(%rbp), %rdx
	movsd	-1056(%rbp), %xmm1      # xmm1 = mem[0],zero
	movsd	%xmm1, -368(%rbp)
	movsd	-1064(%rbp), %xmm1      # xmm1 = mem[0],zero
	movsd	%xmm1, -360(%rbp)
	movq	-48(%rbp), %rsi
	movsd	%xmm0, -1152(%rbp)      # 8-byte Spill
	movsd	-1152(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_coords_mix
	leaq	-368(%rbp), %rdi
	leaq	-176(%rbp), %rsi
	leaq	-432(%rbp), %rdx
	callq	gimp_coords_add
	movsd	-232(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-296(%rbp), %xmm0
	divsd	-24(%rbp), %xmm0
	movsd	-240(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-304(%rbp), %xmm1
	divsd	-16(%rbp), %xmm1
	callq	atan2
	movsd	%xmm0, -1040(%rbp)
	movsd	-232(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm0
	subsd	-296(%rbp), %xmm0
	divsd	-24(%rbp), %xmm0
	movsd	-240(%rbp), %xmm1       # xmm1 = mem[0],zero
	movd	%xmm1, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm1
	subsd	-304(%rbp), %xmm1
	divsd	-16(%rbp), %xmm1
	callq	atan2
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -1048(%rbp)
	ucomisd	-1040(%rbp), %xmm1
	jbe	.LBB11_42
# BB#41:                                # %if.then.112
	movsd	.LCPI11_5, %xmm0        # xmm0 = mem[0],zero
	addsd	-1040(%rbp), %xmm0
	movsd	%xmm0, -1040(%rbp)
.LBB11_42:                              # %if.end.114
	xorps	%xmm0, %xmm0
	ucomisd	-1048(%rbp), %xmm0
	jbe	.LBB11_44
# BB#43:                                # %if.then.116
	movsd	.LCPI11_5, %xmm0        # xmm0 = mem[0],zero
	addsd	-1048(%rbp), %xmm0
	movsd	%xmm0, -1048(%rbp)
.LBB11_44:                              # %if.end.118
	cmpl	$0, -40(%rbp)
	je	.LBB11_58
# BB#45:                                # %if.then.120
	jmp	.LBB11_46
.LBB11_46:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movsd	-1048(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	-1040(%rbp), %xmm1      # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB11_48
# BB#47:                                # %while.body
                                        #   in Loop: Header=BB11_46 Depth=1
	movsd	.LCPI11_5, %xmm0        # xmm0 = mem[0],zero
	addsd	-1048(%rbp), %xmm0
	movsd	%xmm0, -1048(%rbp)
	jmp	.LBB11_46
.LBB11_48:                              # %while.end
	movsd	.LCPI11_6, %xmm0        # xmm0 = mem[0],zero
	movsd	-1040(%rbp), %xmm1      # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm0, -1160(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	floor
	movsd	-1160(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -1032(%rbp)
.LBB11_49:                              # %while.cond.126
                                        # =>This Inner Loop Header: Depth=1
	movsd	-1032(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	-1048(%rbp), %xmm1      # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB11_57
# BB#50:                                # %while.body.128
                                        #   in Loop: Header=BB11_49 Depth=1
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-1032(%rbp), %xmm2      # xmm2 = mem[0],zero
	ucomisd	-1040(%rbp), %xmm2
	movsd	%xmm0, -1168(%rbp)      # 8-byte Spill
	movsd	%xmm1, -1176(%rbp)      # 8-byte Spill
	jbe	.LBB11_52
# BB#51:                                # %cond.true
                                        #   in Loop: Header=BB11_49 Depth=1
	movsd	-1032(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, -1184(%rbp)      # 8-byte Spill
	jmp	.LBB11_53
.LBB11_52:                              # %cond.false
                                        #   in Loop: Header=BB11_49 Depth=1
	movsd	-1040(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, -1184(%rbp)      # 8-byte Spill
.LBB11_53:                              # %cond.end
                                        #   in Loop: Header=BB11_49 Depth=1
	movsd	-1184(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI11_6, %xmm1        # xmm1 = mem[0],zero
	addsd	-1032(%rbp), %xmm1
	movsd	-1048(%rbp), %xmm2      # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -1192(%rbp)      # 8-byte Spill
	jbe	.LBB11_55
# BB#54:                                # %cond.true.132
                                        #   in Loop: Header=BB11_49 Depth=1
	movsd	.LCPI11_6, %xmm0        # xmm0 = mem[0],zero
	addsd	-1032(%rbp), %xmm0
	movsd	%xmm0, -1200(%rbp)      # 8-byte Spill
	jmp	.LBB11_56
.LBB11_55:                              # %cond.false.134
                                        #   in Loop: Header=BB11_49 Depth=1
	movsd	-1048(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, -1200(%rbp)      # 8-byte Spill
.LBB11_56:                              # %cond.end.135
                                        #   in Loop: Header=BB11_49 Depth=1
	movsd	-1200(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	leaq	-688(%rbp), %rdi
	movsd	-1168(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -1208(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-1176(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-1192(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-1208(%rbp), %xmm3      # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	arcto_ellipsesegment
	leaq	-1016(%rbp), %rdi
	leaq	-1056(%rbp), %rsi
	leaq	-1064(%rbp), %rdx
	movsd	-688(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-680(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_matrix3_transform_point
	leaq	-1016(%rbp), %rdi
	leaq	-1056(%rbp), %rsi
	leaq	-1064(%rbp), %rdx
	movsd	-1056(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, -688(%rbp)
	movsd	-1064(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, -680(%rbp)
	movsd	-624(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-616(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_matrix3_transform_point
	leaq	-1016(%rbp), %rdi
	leaq	-1056(%rbp), %rsi
	leaq	-1064(%rbp), %rdx
	movsd	-1056(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, -624(%rbp)
	movsd	-1064(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, -616(%rbp)
	movsd	-560(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-552(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_matrix3_transform_point
	leaq	-1016(%rbp), %rdi
	leaq	-1056(%rbp), %rsi
	leaq	-1064(%rbp), %rdx
	movsd	-1056(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, -560(%rbp)
	movsd	-1064(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, -552(%rbp)
	movsd	-496(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-488(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_matrix3_transform_point
	leaq	-432(%rbp), %rdi
	leaq	-944(%rbp), %rdx
	leaq	-688(%rbp), %rsi
	movsd	-1056(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, -496(%rbp)
	movsd	-1064(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, -488(%rbp)
	addq	$64, %rsi
	addq	$64, %rdx
	callq	gimp_coords_add
	leaq	-432(%rbp), %rdi
	leaq	-944(%rbp), %rdx
	leaq	-688(%rbp), %rsi
	addq	$128, %rsi
	addq	$128, %rdx
	callq	gimp_coords_add
	leaq	-432(%rbp), %rdi
	leaq	-944(%rbp), %rdx
	leaq	-688(%rbp), %rsi
	addq	$192, %rsi
	addq	$192, %rdx
	callq	gimp_coords_add
	leaq	-944(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdx, %rsi
	addq	$64, %rsi
	movq	%rdx, %rax
	addq	$128, %rax
	addq	$192, %rdx
	movq	%rdx, -1216(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movq	-1216(%rbp), %rcx       # 8-byte Reload
	callq	gimp_bezier_stroke_cubicto
	movsd	.LCPI11_6, %xmm0        # xmm0 = mem[0],zero
	addsd	-1032(%rbp), %xmm0
	movsd	%xmm0, -1032(%rbp)
	jmp	.LBB11_49
.LBB11_57:                              # %while.end.178
	jmp	.LBB11_71
.LBB11_58:                              # %if.else.179
	jmp	.LBB11_59
.LBB11_59:                              # %while.cond.180
                                        # =>This Inner Loop Header: Depth=1
	movsd	-1040(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	-1048(%rbp), %xmm1      # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB11_61
# BB#60:                                # %while.body.182
                                        #   in Loop: Header=BB11_59 Depth=1
	movsd	.LCPI11_5, %xmm0        # xmm0 = mem[0],zero
	addsd	-1040(%rbp), %xmm0
	movsd	%xmm0, -1040(%rbp)
	jmp	.LBB11_59
.LBB11_61:                              # %while.end.184
	movsd	.LCPI11_6, %xmm0        # xmm0 = mem[0],zero
	movsd	-1040(%rbp), %xmm1      # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm0, -1224(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	ceil
	movsd	-1224(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -1032(%rbp)
.LBB11_62:                              # %while.cond.188
                                        # =>This Inner Loop Header: Depth=1
	movsd	-1032(%rbp), %xmm0      # xmm0 = mem[0],zero
	ucomisd	-1048(%rbp), %xmm0
	jbe	.LBB11_70
# BB#63:                                # %while.body.190
                                        #   in Loop: Header=BB11_62 Depth=1
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-1032(%rbp), %xmm2      # xmm2 = mem[0],zero
	movsd	-1040(%rbp), %xmm3      # xmm3 = mem[0],zero
	ucomisd	%xmm2, %xmm3
	movsd	%xmm0, -1232(%rbp)      # 8-byte Spill
	movsd	%xmm1, -1240(%rbp)      # 8-byte Spill
	jbe	.LBB11_65
# BB#64:                                # %cond.true.192
                                        #   in Loop: Header=BB11_62 Depth=1
	movsd	-1032(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, -1248(%rbp)      # 8-byte Spill
	jmp	.LBB11_66
.LBB11_65:                              # %cond.false.193
                                        #   in Loop: Header=BB11_62 Depth=1
	movsd	-1040(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, -1248(%rbp)      # 8-byte Spill
.LBB11_66:                              # %cond.end.194
                                        #   in Loop: Header=BB11_62 Depth=1
	movsd	-1248(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI11_6, %xmm1        # xmm1 = mem[0],zero
	movsd	-1032(%rbp), %xmm2      # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	ucomisd	-1048(%rbp), %xmm2
	movsd	%xmm0, -1256(%rbp)      # 8-byte Spill
	jbe	.LBB11_68
# BB#67:                                # %cond.true.198
                                        #   in Loop: Header=BB11_62 Depth=1
	movsd	.LCPI11_6, %xmm0        # xmm0 = mem[0],zero
	movsd	-1032(%rbp), %xmm1      # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -1264(%rbp)      # 8-byte Spill
	jmp	.LBB11_69
.LBB11_68:                              # %cond.false.200
                                        #   in Loop: Header=BB11_62 Depth=1
	movsd	-1048(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, -1264(%rbp)      # 8-byte Spill
.LBB11_69:                              # %cond.end.201
                                        #   in Loop: Header=BB11_62 Depth=1
	movsd	-1264(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	leaq	-688(%rbp), %rdi
	movsd	-1232(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -1272(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-1240(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-1256(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-1272(%rbp), %xmm3      # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	arcto_ellipsesegment
	leaq	-1016(%rbp), %rdi
	leaq	-1056(%rbp), %rsi
	leaq	-1064(%rbp), %rdx
	movsd	-688(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-680(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_matrix3_transform_point
	leaq	-1016(%rbp), %rdi
	leaq	-1056(%rbp), %rsi
	leaq	-1064(%rbp), %rdx
	movsd	-1056(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, -688(%rbp)
	movsd	-1064(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, -680(%rbp)
	movsd	-624(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-616(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_matrix3_transform_point
	leaq	-1016(%rbp), %rdi
	leaq	-1056(%rbp), %rsi
	leaq	-1064(%rbp), %rdx
	movsd	-1056(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, -624(%rbp)
	movsd	-1064(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, -616(%rbp)
	movsd	-560(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-552(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_matrix3_transform_point
	leaq	-1016(%rbp), %rdi
	leaq	-1056(%rbp), %rsi
	leaq	-1064(%rbp), %rdx
	movsd	-1056(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, -560(%rbp)
	movsd	-1064(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, -552(%rbp)
	movsd	-496(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-488(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_matrix3_transform_point
	leaq	-432(%rbp), %rdi
	leaq	-944(%rbp), %rdx
	leaq	-688(%rbp), %rsi
	movsd	-1056(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, -496(%rbp)
	movsd	-1064(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, -488(%rbp)
	addq	$64, %rsi
	addq	$64, %rdx
	callq	gimp_coords_add
	leaq	-432(%rbp), %rdi
	leaq	-944(%rbp), %rdx
	leaq	-688(%rbp), %rsi
	addq	$128, %rsi
	addq	$128, %rdx
	callq	gimp_coords_add
	leaq	-432(%rbp), %rdi
	leaq	-944(%rbp), %rdx
	leaq	-688(%rbp), %rsi
	addq	$192, %rsi
	addq	$192, %rdx
	callq	gimp_coords_add
	leaq	-944(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdx, %rsi
	addq	$64, %rsi
	movq	%rdx, %rax
	addq	$128, %rax
	addq	$192, %rdx
	movq	%rdx, -1280(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movq	-1280(%rbp), %rcx       # 8-byte Reload
	callq	gimp_bezier_stroke_cubicto
	movsd	.LCPI11_6, %xmm0        # xmm0 = mem[0],zero
	movsd	-1032(%rbp), %xmm1      # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -1032(%rbp)
	jmp	.LBB11_62
.LBB11_70:                              # %while.end.246
	jmp	.LBB11_71
.LBB11_71:                              # %if.end.247
	addq	$1280, %rsp             # imm = 0x500
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_bezier_stroke_arcto, .Lfunc_end11-gimp_bezier_stroke_arcto
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4603149758332357155     # double 0.55228474983079356
.LCPI12_1:
	.quad	4607182418800017408     # double 1
.LCPI12_2:
	.quad	4609753056924675352     # double 1.5707963267948966
.LCPI12_3:
	.quad	4618760256179416344     # double 6.2831853071795862
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI12_4:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	arcto_ellipsesegment,@function
arcto_ellipsesegment:                   # @arcto_ellipsesegment
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movsd	.LCPI12_0, %xmm4        # xmm4 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movsd	%xmm3, -32(%rbp)
	movq	%rdi, -40(%rbp)
	movsd	%xmm4, -48(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -40(%rbp)
	je	.LBB12_3
# BB#2:                                 # %if.then
	jmp	.LBB12_4
.LBB12_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.arcto_ellipsesegment, %rsi
	movabsq	$.L.str.34, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_19
.LBB12_4:                               # %if.end
	jmp	.LBB12_5
.LBB12_5:                               # %do.end
	movabsq	$arcto_ellipsesegment.template, %rax
	movl	$64, %ecx
	movl	%ecx, %edx
	movsd	.LCPI12_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI12_0, %xmm1        # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movsd	%xmm2, -96(%rbp)
	movsd	%xmm1, -88(%rbp)
	movsd	%xmm0, -80(%rbp)
	movsd	%xmm0, -72(%rbp)
	movq	-40(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-40(%rbp), %rax
	addq	$64, %rax
	movq	%rax, %rdi
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	-136(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movq	-40(%rbp), %rax
	addq	$128, %rax
	movq	%rax, %rdi
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	-136(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movq	-40(%rbp), %rax
	addq	$192, %rax
	movq	%rax, %rdi
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	-136(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB12_10
# BB#6:                                 # %if.then.9
	movsd	.LCPI12_2, %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	floor
	movsd	-152(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
.LBB12_7:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-56(%rbp), %xmm0
	jbe	.LBB12_9
# BB#8:                                 # %while.body
                                        #   in Loop: Header=BB12_7 Depth=1
	movsd	.LCPI12_3, %xmm0        # xmm0 = mem[0],zero
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	jmp	.LBB12_7
.LBB12_9:                               # %while.end
	movsd	.LCPI12_2, %xmm0        # xmm0 = mem[0],zero
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	jmp	.LBB12_14
.LBB12_10:                              # %if.else.12
	movsd	.LCPI12_2, %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	floor
	movsd	-160(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
.LBB12_11:                              # %while.cond.16
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-64(%rbp), %xmm0
	jbe	.LBB12_13
# BB#12:                                # %while.body.18
                                        #   in Loop: Header=BB12_11 Depth=1
	movsd	.LCPI12_3, %xmm0        # xmm0 = mem[0],zero
	addsd	-64(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	jmp	.LBB12_11
.LBB12_13:                              # %while.end.20
	movsd	.LCPI12_2, %xmm0        # xmm0 = mem[0],zero
	addsd	-64(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
.LBB12_14:                              # %if.end.22
	movsd	.LCPI12_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI12_0, %xmm1        # xmm1 = mem[0],zero
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-56(%rbp), %xmm2
	movapd	.LCPI12_4(%rip), %xmm3  # xmm3 = [9223372036854775807,9223372036854775807]
	andpd	%xmm3, %xmm2
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -176(%rbp)       # 8-byte Spill
	callq	sin
	movsd	%xmm0, -104(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-56(%rbp), %xmm0
	movapd	.LCPI12_4(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	callq	sin
	movsd	%xmm0, -112(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	cos
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	sin
	movq	-40(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	cos
	movq	-40(%rbp), %rax
	movsd	%xmm0, 192(%rax)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	sin
	movq	-40(%rbp), %rax
	movsd	%xmm0, 200(%rax)
	movq	-40(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$192, %rax
	movq	-40(%rbp), %rcx
	addq	$64, %rcx
	movsd	-168(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-176(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gimp_coords_mix
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI12_1, %xmm1        # xmm1 = mem[0],zero
	movq	-40(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$192, %rax
	movq	-40(%rbp), %rcx
	addq	$128, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gimp_coords_mix
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-96(%rbp), %xmm0
	jbe	.LBB12_16
# BB#15:                                # %if.then.47
	leaq	-96(%rbp), %rdi
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	arcto_circleparam
	movl	$1, %edi
	movsd	%xmm0, -120(%rbp)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-40(%rbp), %rsi
	callq	arcto_subdivide
.LBB12_16:                              # %if.end.49
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB12_18
# BB#17:                                # %if.then.52
	leaq	-96(%rbp), %rdi
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	arcto_circleparam
	xorl	%edi, %edi
	movsd	%xmm0, -128(%rbp)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-40(%rbp), %rsi
	callq	arcto_subdivide
.LBB12_18:                              # %if.end.55
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	mulsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	mulsd	8(%rax), %xmm0
	movsd	%xmm0, 8(%rax)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	mulsd	64(%rax), %xmm0
	movsd	%xmm0, 64(%rax)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	mulsd	72(%rax), %xmm0
	movsd	%xmm0, 72(%rax)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	mulsd	128(%rax), %xmm0
	movsd	%xmm0, 128(%rax)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	mulsd	136(%rax), %xmm0
	movsd	%xmm0, 136(%rax)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	mulsd	192(%rax), %xmm0
	movsd	%xmm0, 192(%rax)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	mulsd	200(%rax), %xmm0
	movsd	%xmm0, 200(%rax)
.LBB12_19:                              # %return
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	arcto_ellipsesegment, .Lfunc_end12-arcto_ellipsesegment
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4607182418800017408     # double 1
.LCPI13_1:
	.quad	4603149758332357155     # double 0.55228474983079356
.LCPI13_2:
	.quad	-4620222278522418653    # double -0.55228474983079356
.LCPI13_3:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	gimp_bezier_stroke_new_ellipse
	.align	16, 0x90
	.type	gimp_bezier_stroke_new_ellipse,@function
gimp_bezier_stroke_new_ellipse:         # @gimp_bezier_stroke_new_ellipse
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$520, %rsp              # imm = 0x208
.Ltmp42:
	.cfi_offset %rbx, -24
	movsd	.LCPI13_0, %xmm3        # xmm3 = mem[0],zero
	leaq	-304(%rbp), %rax
	leaq	-112(%rbp), %rcx
	movsd	.LCPI13_1, %xmm4        # xmm4 = mem[0],zero
	xorl	%edx, %edx
	movl	$64, %esi
	movl	%esi, %r8d
	leaq	-368(%rbp), %r9
	leaq	-240(%rbp), %r10
	leaq	-176(%rbp), %r11
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rcx, %rbx
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	-392(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -396(%rbp)        # 4-byte Spill
	movq	%r8, %rdx
	movq	%r9, -408(%rbp)         # 8-byte Spill
	movq	%r10, -416(%rbp)        # 8-byte Spill
	movq	%r11, -424(%rbp)        # 8-byte Spill
	movq	%r8, -432(%rbp)         # 8-byte Spill
	movsd	%xmm3, -440(%rbp)       # 8-byte Spill
	movq	%rax, -448(%rbp)        # 8-byte Spill
	movq	%rcx, -456(%rbp)        # 8-byte Spill
	movsd	%xmm4, -464(%rbp)       # 8-byte Spill
	callq	memcpy
	movq	-16(%rbp), %rax
	movq	-424(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-432(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movq	-16(%rbp), %rax
	movq	-416(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-432(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movq	-448(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	movl	-396(%rbp), %esi        # 4-byte Reload
	movq	-432(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movq	-408(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	movl	-396(%rbp), %esi        # 4-byte Reload
	movq	-432(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movsd	-464(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -376(%rbp)
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm1, -472(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-472(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -304(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -480(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-480(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -296(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -488(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-488(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -368(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -496(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cos
	movsd	-496(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -360(%rbp)
	movq	-16(%rbp), %rdi
	movsd	-440(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-440(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	-448(%rbp), %rsi        # 8-byte Reload
	movq	-456(%rbp), %rdx        # 8-byte Reload
	callq	gimp_coords_mix
	leaq	-112(%rbp), %rdi
	callq	gimp_bezier_stroke_new_moveto
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gimp_stroke_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	40(%rax), %rdi
	callq	g_list_last
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	leaq	-112(%rbp), %rdi
	movsd	.LCPI13_2, %xmm1        # xmm1 = mem[0],zero
	leaq	-368(%rbp), %rsi
	movq	(%rax), %rax
	movq	%rax, -384(%rbp)
	movq	-384(%rbp), %rdx
	callq	gimp_coords_mix
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	leaq	-112(%rbp), %rax
	movsd	.LCPI13_1, %xmm1        # xmm1 = mem[0],zero
	leaq	-368(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rax, %rdx
	callq	gimp_coords_mix
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	leaq	-368(%rbp), %rsi
	leaq	-240(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movsd	%xmm0, -512(%rbp)       # 8-byte Spill
	movsd	-512(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_coords_mix
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	leaq	-240(%rbp), %rdi
	movsd	.LCPI13_1, %xmm1        # xmm1 = mem[0],zero
	leaq	-304(%rbp), %rsi
	leaq	-176(%rbp), %rdx
	callq	gimp_coords_mix
	leaq	-112(%rbp), %rsi
	leaq	-176(%rbp), %rdx
	leaq	-240(%rbp), %rcx
	movq	-48(%rbp), %rdi
	callq	gimp_bezier_stroke_cubicto
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	leaq	-240(%rbp), %rdi
	movsd	.LCPI13_2, %xmm1        # xmm1 = mem[0],zero
	leaq	-304(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	callq	gimp_coords_mix
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI13_3, %xmm1        # xmm1 = mem[0],zero
	leaq	-304(%rbp), %rsi
	leaq	-240(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_coords_mix
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	leaq	-240(%rbp), %rdi
	movsd	.LCPI13_1, %xmm1        # xmm1 = mem[0],zero
	leaq	-368(%rbp), %rsi
	leaq	-176(%rbp), %rdx
	callq	gimp_coords_mix
	leaq	-112(%rbp), %rsi
	leaq	-176(%rbp), %rdx
	leaq	-240(%rbp), %rcx
	movq	-48(%rbp), %rdi
	callq	gimp_bezier_stroke_cubicto
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	leaq	-240(%rbp), %rdi
	movsd	.LCPI13_2, %xmm1        # xmm1 = mem[0],zero
	leaq	-368(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	callq	gimp_coords_mix
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI13_3, %xmm1        # xmm1 = mem[0],zero
	leaq	-368(%rbp), %rsi
	leaq	-240(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_coords_mix
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	leaq	-240(%rbp), %rdi
	movsd	.LCPI13_2, %xmm1        # xmm1 = mem[0],zero
	leaq	-304(%rbp), %rsi
	leaq	-176(%rbp), %rdx
	callq	gimp_coords_mix
	leaq	-112(%rbp), %rsi
	leaq	-176(%rbp), %rdx
	leaq	-240(%rbp), %rcx
	movq	-48(%rbp), %rdi
	callq	gimp_bezier_stroke_cubicto
	movq	-48(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gimp_stroke_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	40(%rax), %rdi
	callq	g_list_first
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	leaq	-240(%rbp), %rdi
	movsd	.LCPI13_1, %xmm1        # xmm1 = mem[0],zero
	leaq	-304(%rbp), %rsi
	movq	(%rax), %rax
	movq	%rax, -384(%rbp)
	movq	-384(%rbp), %rdx
	callq	gimp_coords_mix
	movq	-48(%rbp), %rdi
	callq	gimp_stroke_close
	movq	-48(%rbp), %rax
	addq	$520, %rsp              # imm = 0x208
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_bezier_stroke_new_ellipse, .Lfunc_end13-gimp_bezier_stroke_new_ellipse
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_bezier_stroke_class_init,@function
gimp_bezier_stroke_class_init:          # @gimp_bezier_stroke_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
.Ltmp46:
	.cfi_offset %rbx, -56
.Ltmp47:
	.cfi_offset %r12, -48
.Ltmp48:
	.cfi_offset %r13, -40
.Ltmp49:
	.cfi_offset %r14, -32
.Ltmp50:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_stroke_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_bezier_stroke_make_bezier, %rsi
	movabsq	$gimp_bezier_stroke_interpolate, %rdi
	movabsq	$gimp_bezier_stroke_connect_stroke, %rcx
	movabsq	$gimp_bezier_stroke_extend, %rdx
	movabsq	$gimp_bezier_stroke_is_extendable, %r8
	movabsq	$gimp_bezier_stroke_anchor_insert, %r9
	movabsq	$gimp_bezier_stroke_anchor_is_insertable, %r10
	movabsq	$gimp_bezier_stroke_open, %r11
	movabsq	$gimp_bezier_stroke_close, %rbx
	movabsq	$gimp_bezier_stroke_point_move_absolute, %r14
	movabsq	$gimp_bezier_stroke_point_move_relative, %r15
	movabsq	$gimp_bezier_stroke_point_is_movable, %r12
	movabsq	$gimp_bezier_stroke_anchor_delete, %r13
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movabsq	$gimp_bezier_stroke_anchor_convert, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movabsq	$gimp_bezier_stroke_anchor_move_absolute, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movabsq	$gimp_bezier_stroke_anchor_move_relative, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movabsq	$gimp_bezier_stroke_nearest_tangent_get, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movabsq	$gimp_bezier_stroke_nearest_point_get, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movabsq	$gimp_bezier_stroke_finalize, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 48(%rax)
	movq	-64(%rbp), %rax
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 184(%rax)
	movq	-64(%rbp), %rax
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 192(%rax)
	movq	-64(%rbp), %rax
	movq	$0, 200(%rax)
	movq	-64(%rbp), %rax
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 224(%rax)
	movq	-64(%rbp), %rax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, 232(%rax)
	movq	-64(%rbp), %rax
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, 240(%rax)
	movq	-64(%rbp), %rax
	movq	%r13, 248(%rax)
	movq	-64(%rbp), %rax
	movq	%r12, 256(%rax)
	movq	-64(%rbp), %rax
	movq	%r15, 264(%rax)
	movq	-64(%rbp), %rax
	movq	%r14, 272(%rax)
	movq	-64(%rbp), %rax
	movq	%rbx, 280(%rax)
	movq	-64(%rbp), %rax
	movq	%r11, 288(%rax)
	movq	-64(%rbp), %rax
	movq	%r10, 296(%rax)
	movq	-64(%rbp), %rax
	movq	%r9, 304(%rax)
	movq	-64(%rbp), %rax
	movq	%r8, 312(%rax)
	movq	-64(%rbp), %rax
	movq	%rdx, 320(%rax)
	movq	-64(%rbp), %rax
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, 328(%rax)
	movq	-64(%rbp), %rax
	movq	%rdi, 368(%rax)
	movq	-64(%rbp), %rax
	movq	%rsi, 384(%rax)
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_bezier_stroke_class_init, .Lfunc_end14-gimp_bezier_stroke_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_bezier_stroke_finalize,@function
gimp_bezier_stroke_finalize:            # @gimp_bezier_stroke_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	gimp_bezier_stroke_parent_class, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_bezier_stroke_finalize, .Lfunc_end15-gimp_bezier_stroke_finalize
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	-4616189618054758400    # double -1
	.text
	.align	16, 0x90
	.type	gimp_bezier_stroke_nearest_point_get,@function
gimp_bezier_stroke_nearest_point_get:   # @gimp_bezier_stroke_nearest_point_get
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$480, %rsp              # imm = 0x1E0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	$0, -440(%rbp)
	movq	-16(%rbp), %rcx
	cmpq	$0, 40(%rcx)
	jne	.LBB16_2
# BB#1:                                 # %if.then
	movsd	.LCPI16_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB16_54
.LBB16_2:                               # %if.end
	movsd	.LCPI16_0, %xmm0        # xmm0 = mem[0],zero
	movl	$0, -452(%rbp)
	movsd	%xmm0, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -424(%rbp)
.LBB16_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -424(%rbp)
	movb	%cl, -453(%rbp)         # 1-byte Spill
	je	.LBB16_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-424(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 64(%rax)
	setne	%cl
	movb	%cl, -453(%rbp)         # 1-byte Spill
.LBB16_5:                               # %land.end
                                        #   in Loop: Header=BB16_3 Depth=1
	movb	-453(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB16_6
	jmp	.LBB16_11
.LBB16_6:                               # %for.body
                                        #   in Loop: Header=BB16_3 Depth=1
	jmp	.LBB16_7
.LBB16_7:                               # %for.inc
                                        #   in Loop: Header=BB16_3 Depth=1
	cmpq	$0, -424(%rbp)
	je	.LBB16_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-424(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	jmp	.LBB16_10
.LBB16_9:                               # %cond.false
                                        #   in Loop: Header=BB16_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	jmp	.LBB16_10
.LBB16_10:                              # %cond.end
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-464(%rbp), %rax        # 8-byte Reload
	movq	%rax, -424(%rbp)
	jmp	.LBB16_3
.LBB16_11:                              # %for.end
	movq	-424(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -432(%rbp)
.LBB16_12:                              # %for.cond.5
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -424(%rbp)
	je	.LBB16_31
# BB#13:                                # %for.body.7
                                        #   in Loop: Header=BB16_12 Depth=1
	movl	$64, %eax
	movl	%eax, %edx
	leaq	-416(%rbp), %rcx
	movq	-424(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -448(%rbp)
	movslq	-452(%rbp), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rcx
	movq	-448(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
	movl	-452(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -452(%rbp)
	cmpl	$4, -452(%rbp)
	jne	.LBB16_26
# BB#14:                                # %if.then.10
                                        #   in Loop: Header=BB16_12 Depth=1
	leaq	-152(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	movl	$10, %r8d
	leaq	-416(%rbp), %rdi
	movq	-424(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -440(%rbp)
	movq	-24(%rbp), %rsi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_bezier_stroke_segment_nearest_point_get
	movsd	%xmm0, -80(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB16_16
# BB#15:                                # %lor.lhs.false
                                        #   in Loop: Header=BB16_12 Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-72(%rbp), %xmm0
	jbe	.LBB16_25
.LBB16_16:                              # %if.then.14
                                        #   in Loop: Header=BB16_12 Depth=1
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB16_18
# BB#17:                                # %if.then.16
                                        #   in Loop: Header=BB16_12 Depth=1
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB16_18:                              # %if.end.17
                                        #   in Loop: Header=BB16_12 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB16_20
# BB#19:                                # %if.then.19
                                        #   in Loop: Header=BB16_12 Depth=1
	movl	$64, %eax
	movl	%eax, %edx
	leaq	-152(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	memcpy
.LBB16_20:                              # %if.end.20
                                        #   in Loop: Header=BB16_12 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB16_22
# BB#21:                                # %if.then.22
                                        #   in Loop: Header=BB16_12 Depth=1
	movq	-432(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB16_22:                              # %if.end.23
                                        #   in Loop: Header=BB16_12 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB16_24
# BB#23:                                # %if.then.25
                                        #   in Loop: Header=BB16_12 Depth=1
	movq	-440(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB16_24:                              # %if.end.26
                                        #   in Loop: Header=BB16_12 Depth=1
	jmp	.LBB16_25
.LBB16_25:                              # %if.end.27
                                        #   in Loop: Header=BB16_12 Depth=1
	movl	$64, %eax
	movl	%eax, %edx
	leaq	-416(%rbp), %rcx
	movq	-424(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -432(%rbp)
	movq	%rcx, %rsi
	addq	$192, %rsi
	movq	%rcx, %rdi
	callq	memcpy
	movl	$1, -452(%rbp)
.LBB16_26:                              # %if.end.31
                                        #   in Loop: Header=BB16_12 Depth=1
	jmp	.LBB16_27
.LBB16_27:                              # %for.inc.32
                                        #   in Loop: Header=BB16_12 Depth=1
	cmpq	$0, -424(%rbp)
	je	.LBB16_29
# BB#28:                                # %cond.true.34
                                        #   in Loop: Header=BB16_12 Depth=1
	movq	-424(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	jmp	.LBB16_30
.LBB16_29:                              # %cond.false.36
                                        #   in Loop: Header=BB16_12 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -472(%rbp)        # 8-byte Spill
	jmp	.LBB16_30
.LBB16_30:                              # %cond.end.37
                                        #   in Loop: Header=BB16_12 Depth=1
	movq	-472(%rbp), %rax        # 8-byte Reload
	movq	%rax, -424(%rbp)
	jmp	.LBB16_12
.LBB16_31:                              # %for.end.39
	movq	-16(%rbp), %rax
	cmpl	$0, 48(%rax)
	je	.LBB16_53
# BB#32:                                # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB16_53
# BB#33:                                # %if.then.43
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -424(%rbp)
.LBB16_34:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -452(%rbp)
	jge	.LBB16_36
# BB#35:                                # %while.body
                                        #   in Loop: Header=BB16_34 Depth=1
	movl	$64, %eax
	movl	%eax, %edx
	leaq	-416(%rbp), %rcx
	movslq	-452(%rbp), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rcx
	movq	-424(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rcx, %rdi
	callq	memcpy
	movl	-452(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -452(%rbp)
	jmp	.LBB16_34
.LBB16_36:                              # %while.end
	cmpq	$0, -424(%rbp)
	je	.LBB16_38
# BB#37:                                # %cond.true.52
	movq	-424(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	jmp	.LBB16_39
.LBB16_38:                              # %cond.false.54
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	jmp	.LBB16_39
.LBB16_39:                              # %cond.end.55
	movq	-480(%rbp), %rax        # 8-byte Reload
	movq	%rax, -424(%rbp)
	cmpq	$0, -424(%rbp)
	je	.LBB16_41
# BB#40:                                # %if.then.58
	movl	$64, %eax
	movl	%eax, %edx
	leaq	-416(%rbp), %rcx
	movq	-424(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -440(%rbp)
	addq	$192, %rcx
	movq	-440(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
.LBB16_41:                              # %if.end.62
	leaq	-152(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	movl	$10, %r8d
	leaq	-416(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_bezier_stroke_segment_nearest_point_get
	movsd	%xmm0, -80(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB16_43
# BB#42:                                # %lor.lhs.false.66
	xorps	%xmm0, %xmm0
	ucomisd	-72(%rbp), %xmm0
	jbe	.LBB16_52
.LBB16_43:                              # %if.then.68
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB16_45
# BB#44:                                # %if.then.70
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB16_45:                              # %if.end.71
	cmpq	$0, -40(%rbp)
	je	.LBB16_47
# BB#46:                                # %if.then.73
	movl	$64, %eax
	movl	%eax, %edx
	leaq	-152(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	memcpy
.LBB16_47:                              # %if.end.74
	cmpq	$0, -48(%rbp)
	je	.LBB16_49
# BB#48:                                # %if.then.76
	movq	-432(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB16_49:                              # %if.end.77
	cmpq	$0, -56(%rbp)
	je	.LBB16_51
# BB#50:                                # %if.then.79
	movq	-440(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB16_51:                              # %if.end.80
	jmp	.LBB16_52
.LBB16_52:                              # %if.end.81
	jmp	.LBB16_53
.LBB16_53:                              # %if.end.82
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB16_54:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$480, %rsp              # imm = 0x1E0
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_bezier_stroke_nearest_point_get, .Lfunc_end16-gimp_bezier_stroke_nearest_point_get
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	-4616189618054758400    # double -1
	.text
	.align	16, 0x90
	.type	gimp_bezier_stroke_nearest_tangent_get,@function
gimp_bezier_stroke_nearest_tangent_get: # @gimp_bezier_stroke_nearest_tangent_get
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$480, %rsp              # imm = 0x1E0
	movq	16(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	%rax, -72(%rbp)
	movq	$0, -440(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	jne	.LBB17_2
# BB#1:                                 # %if.then
	movsd	.LCPI17_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB17_56
.LBB17_2:                               # %if.end
	movsd	.LCPI17_0, %xmm0        # xmm0 = mem[0],zero
	movl	$0, -452(%rbp)
	movsd	%xmm0, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -424(%rbp)
.LBB17_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -424(%rbp)
	movb	%cl, -453(%rbp)         # 1-byte Spill
	je	.LBB17_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB17_3 Depth=1
	movq	-424(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 64(%rax)
	setne	%cl
	movb	%cl, -453(%rbp)         # 1-byte Spill
.LBB17_5:                               # %land.end
                                        #   in Loop: Header=BB17_3 Depth=1
	movb	-453(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB17_6
	jmp	.LBB17_11
.LBB17_6:                               # %for.body
                                        #   in Loop: Header=BB17_3 Depth=1
	jmp	.LBB17_7
.LBB17_7:                               # %for.inc
                                        #   in Loop: Header=BB17_3 Depth=1
	cmpq	$0, -424(%rbp)
	je	.LBB17_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB17_3 Depth=1
	movq	-424(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	jmp	.LBB17_10
.LBB17_9:                               # %cond.false
                                        #   in Loop: Header=BB17_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	jmp	.LBB17_10
.LBB17_10:                              # %cond.end
                                        #   in Loop: Header=BB17_3 Depth=1
	movq	-464(%rbp), %rax        # 8-byte Reload
	movq	%rax, -424(%rbp)
	jmp	.LBB17_3
.LBB17_11:                              # %for.end
	movq	-424(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -432(%rbp)
.LBB17_12:                              # %for.cond.5
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -424(%rbp)
	je	.LBB17_32
# BB#13:                                # %for.body.7
                                        #   in Loop: Header=BB17_12 Depth=1
	movl	$64, %eax
	movl	%eax, %edx
	leaq	-416(%rbp), %rcx
	movq	-424(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -448(%rbp)
	movslq	-452(%rbp), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rcx
	movq	-448(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
	movl	-452(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -452(%rbp)
	cmpl	$4, -452(%rbp)
	jne	.LBB17_27
# BB#14:                                # %if.then.10
                                        #   in Loop: Header=BB17_12 Depth=1
	leaq	-160(%rbp), %rcx
	leaq	-96(%rbp), %r8
	leaq	-416(%rbp), %rdi
	movq	-424(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -440(%rbp)
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_bezier_stroke_segment_nearest_tangent_get
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -88(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jb	.LBB17_26
# BB#15:                                # %land.lhs.true
                                        #   in Loop: Header=BB17_12 Depth=1
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB17_17
# BB#16:                                # %lor.lhs.false
                                        #   in Loop: Header=BB17_12 Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-80(%rbp), %xmm0
	jbe	.LBB17_26
.LBB17_17:                              # %if.then.15
                                        #   in Loop: Header=BB17_12 Depth=1
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB17_19
# BB#18:                                # %if.then.17
                                        #   in Loop: Header=BB17_12 Depth=1
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-72(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB17_19:                              # %if.end.18
                                        #   in Loop: Header=BB17_12 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB17_21
# BB#20:                                # %if.then.20
                                        #   in Loop: Header=BB17_12 Depth=1
	movl	$64, %eax
	movl	%eax, %edx
	leaq	-160(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	memcpy
.LBB17_21:                              # %if.end.21
                                        #   in Loop: Header=BB17_12 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB17_23
# BB#22:                                # %if.then.23
                                        #   in Loop: Header=BB17_12 Depth=1
	movq	-432(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB17_23:                              # %if.end.24
                                        #   in Loop: Header=BB17_12 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB17_25
# BB#24:                                # %if.then.26
                                        #   in Loop: Header=BB17_12 Depth=1
	movq	-440(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB17_25:                              # %if.end.27
                                        #   in Loop: Header=BB17_12 Depth=1
	jmp	.LBB17_26
.LBB17_26:                              # %if.end.28
                                        #   in Loop: Header=BB17_12 Depth=1
	movl	$64, %eax
	movl	%eax, %edx
	leaq	-416(%rbp), %rcx
	movq	-424(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -432(%rbp)
	movq	%rcx, %rsi
	addq	$192, %rsi
	movq	%rcx, %rdi
	callq	memcpy
	movl	$1, -452(%rbp)
.LBB17_27:                              # %if.end.32
                                        #   in Loop: Header=BB17_12 Depth=1
	jmp	.LBB17_28
.LBB17_28:                              # %for.inc.33
                                        #   in Loop: Header=BB17_12 Depth=1
	cmpq	$0, -424(%rbp)
	je	.LBB17_30
# BB#29:                                # %cond.true.35
                                        #   in Loop: Header=BB17_12 Depth=1
	movq	-424(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	jmp	.LBB17_31
.LBB17_30:                              # %cond.false.37
                                        #   in Loop: Header=BB17_12 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -472(%rbp)        # 8-byte Spill
	jmp	.LBB17_31
.LBB17_31:                              # %cond.end.38
                                        #   in Loop: Header=BB17_12 Depth=1
	movq	-472(%rbp), %rax        # 8-byte Reload
	movq	%rax, -424(%rbp)
	jmp	.LBB17_12
.LBB17_32:                              # %for.end.40
	movq	-16(%rbp), %rax
	cmpl	$0, 48(%rax)
	je	.LBB17_55
# BB#33:                                # %land.lhs.true.42
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB17_55
# BB#34:                                # %if.then.45
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -424(%rbp)
.LBB17_35:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -452(%rbp)
	jge	.LBB17_37
# BB#36:                                # %while.body
                                        #   in Loop: Header=BB17_35 Depth=1
	movl	$64, %eax
	movl	%eax, %edx
	leaq	-416(%rbp), %rcx
	movslq	-452(%rbp), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rcx
	movq	-424(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rcx, %rdi
	callq	memcpy
	movl	-452(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -452(%rbp)
	jmp	.LBB17_35
.LBB17_37:                              # %while.end
	cmpq	$0, -424(%rbp)
	je	.LBB17_39
# BB#38:                                # %cond.true.54
	movq	-424(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	jmp	.LBB17_40
.LBB17_39:                              # %cond.false.56
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	jmp	.LBB17_40
.LBB17_40:                              # %cond.end.57
	movq	-480(%rbp), %rax        # 8-byte Reload
	movq	%rax, -424(%rbp)
	cmpq	$0, -424(%rbp)
	je	.LBB17_42
# BB#41:                                # %if.then.60
	movl	$64, %eax
	movl	%eax, %edx
	leaq	-416(%rbp), %rcx
	movq	-424(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -440(%rbp)
	addq	$192, %rcx
	movq	-440(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
.LBB17_42:                              # %if.end.64
	leaq	-160(%rbp), %rcx
	leaq	-96(%rbp), %r8
	leaq	-416(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_bezier_stroke_segment_nearest_tangent_get
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -88(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jb	.LBB17_54
# BB#43:                                # %land.lhs.true.68
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB17_45
# BB#44:                                # %lor.lhs.false.70
	xorps	%xmm0, %xmm0
	ucomisd	-80(%rbp), %xmm0
	jbe	.LBB17_54
.LBB17_45:                              # %if.then.72
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB17_47
# BB#46:                                # %if.then.74
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-72(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB17_47:                              # %if.end.75
	cmpq	$0, -48(%rbp)
	je	.LBB17_49
# BB#48:                                # %if.then.77
	movl	$64, %eax
	movl	%eax, %edx
	leaq	-160(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	memcpy
.LBB17_49:                              # %if.end.78
	cmpq	$0, -56(%rbp)
	je	.LBB17_51
# BB#50:                                # %if.then.80
	movq	-432(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB17_51:                              # %if.end.81
	cmpq	$0, -64(%rbp)
	je	.LBB17_53
# BB#52:                                # %if.then.83
	movq	-440(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB17_53:                              # %if.end.84
	jmp	.LBB17_54
.LBB17_54:                              # %if.end.85
	jmp	.LBB17_55
.LBB17_55:                              # %if.end.86
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB17_56:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$480, %rsp              # imm = 0x1E0
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_bezier_stroke_nearest_tangent_get, .Lfunc_end17-gimp_bezier_stroke_nearest_tangent_get
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_bezier_stroke_anchor_move_relative,@function
gimp_bezier_stroke_anchor_move_relative: # @gimp_bezier_stroke_anchor_move_relative
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$384, %rsp              # imm = 0x180
	leaq	-96(%rbp), %rax
	leaq	-160(%rbp), %r8
	xorps	%xmm0, %xmm0
	movl	$64, %r9d
	movl	%r9d, %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movq	%r10, %rdx
	movq	%r8, -256(%rbp)         # 8-byte Spill
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	memcpy
	movsd	-264(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
	movsd	%xmm0, -72(%rbp)
	movsd	%xmm0, -64(%rbp)
	movsd	%xmm0, -56(%rbp)
	movq	-16(%rbp), %rdi
	movq	-272(%rbp), %rsi        # 8-byte Reload
	movq	-256(%rbp), %rdx        # 8-byte Reload
	callq	gimp_coords_add
	movl	$64, %ecx
	movl	%ecx, %edx
	leaq	-160(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	memcpy
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_find
	movq	%rax, -232(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -232(%rbp)
	je	.LBB18_3
# BB#2:                                 # %if.then
	jmp	.LBB18_4
.LBB18_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_bezier_stroke_anchor_move_relative, %rsi
	movabsq	$.L.str.20, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB18_52
.LBB18_4:                               # %if.end
	jmp	.LBB18_5
.LBB18_5:                               # %do.end
	movq	-16(%rbp), %rax
	cmpl	$0, 64(%rax)
	jne	.LBB18_27
# BB#6:                                 # %if.then.3
	cmpq	$0, -232(%rbp)
	je	.LBB18_8
# BB#7:                                 # %cond.true
	movq	-232(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB18_9
	jmp	.LBB18_16
.LBB18_8:                               # %cond.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB18_9
	jmp	.LBB18_16
.LBB18_9:                               # %if.then.5
	cmpq	$0, -232(%rbp)
	je	.LBB18_11
# BB#10:                                # %cond.true.7
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	jmp	.LBB18_12
.LBB18_11:                              # %cond.false.9
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	jmp	.LBB18_12
.LBB18_12:                              # %cond.end
	movq	-280(%rbp), %rax        # 8-byte Reload
	leaq	-224(%rbp), %rcx
	leaq	-96(%rbp), %rsi
	leaq	-160(%rbp), %rdx
	movl	$64, %edi
	movl	%edi, %r8d
	movq	(%rax), %rax
	movq	%rcx, %r9
	movq	%r9, %rdi
	movq	%rsi, -288(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -296(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	-288(%rbp), %rsi        # 8-byte Reload
	movq	-296(%rbp), %rdx        # 8-byte Reload
	callq	gimp_coords_add
	cmpq	$0, -232(%rbp)
	je	.LBB18_14
# BB#13:                                # %cond.true.12
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB18_15
.LBB18_14:                              # %cond.false.14
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	jmp	.LBB18_15
.LBB18_15:                              # %cond.end.15
	movq	-312(%rbp), %rax        # 8-byte Reload
	movl	$64, %ecx
	movl	%ecx, %edx
	leaq	-160(%rbp), %rsi
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	memcpy
.LBB18_16:                              # %if.end.19
	cmpq	$0, -232(%rbp)
	je	.LBB18_18
# BB#17:                                # %cond.true.21
	movq	-232(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB18_19
	jmp	.LBB18_26
.LBB18_18:                              # %cond.false.23
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB18_19
	jmp	.LBB18_26
.LBB18_19:                              # %if.then.24
	cmpq	$0, -232(%rbp)
	je	.LBB18_21
# BB#20:                                # %cond.true.26
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB18_22
.LBB18_21:                              # %cond.false.28
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	jmp	.LBB18_22
.LBB18_22:                              # %cond.end.29
	movq	-320(%rbp), %rax        # 8-byte Reload
	leaq	-224(%rbp), %rcx
	leaq	-96(%rbp), %rsi
	leaq	-160(%rbp), %rdx
	movl	$64, %edi
	movl	%edi, %r8d
	movq	(%rax), %rax
	movq	%rcx, %r9
	movq	%r9, %rdi
	movq	%rsi, -328(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -336(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	-328(%rbp), %rsi        # 8-byte Reload
	movq	-336(%rbp), %rdx        # 8-byte Reload
	callq	gimp_coords_add
	cmpq	$0, -232(%rbp)
	je	.LBB18_24
# BB#23:                                # %cond.true.34
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jmp	.LBB18_25
.LBB18_24:                              # %cond.false.36
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	jmp	.LBB18_25
.LBB18_25:                              # %cond.end.37
	movq	-352(%rbp), %rax        # 8-byte Reload
	movl	$64, %ecx
	movl	%ecx, %edx
	leaq	-160(%rbp), %rsi
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	memcpy
.LBB18_26:                              # %if.end.41
	jmp	.LBB18_52
.LBB18_27:                              # %if.else.42
	cmpl	$3, -28(%rbp)
	jne	.LBB18_51
# BB#28:                                # %if.then.44
	movq	$0, -240(%rbp)
	movq	$0, -248(%rbp)
	cmpq	$0, -232(%rbp)
	je	.LBB18_30
# BB#29:                                # %cond.true.46
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	jmp	.LBB18_31
.LBB18_30:                              # %cond.false.48
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	jmp	.LBB18_31
.LBB18_31:                              # %cond.end.49
	movq	-360(%rbp), %rax        # 8-byte Reload
	movq	%rax, -240(%rbp)
	cmpq	$0, -240(%rbp)
	je	.LBB18_37
# BB#32:                                # %land.lhs.true
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 64(%rax)
	jne	.LBB18_37
# BB#33:                                # %if.then.55
	cmpq	$0, -240(%rbp)
	je	.LBB18_35
# BB#34:                                # %cond.true.57
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jmp	.LBB18_36
.LBB18_35:                              # %cond.false.59
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	jmp	.LBB18_36
.LBB18_36:                              # %cond.end.60
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	%rax, -248(%rbp)
	jmp	.LBB18_47
.LBB18_37:                              # %if.else.62
	cmpq	$0, -232(%rbp)
	je	.LBB18_39
# BB#38:                                # %cond.true.64
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	jmp	.LBB18_40
.LBB18_39:                              # %cond.false.66
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	jmp	.LBB18_40
.LBB18_40:                              # %cond.end.67
	movq	-376(%rbp), %rax        # 8-byte Reload
	movq	%rax, -240(%rbp)
	cmpq	$0, -240(%rbp)
	je	.LBB18_46
# BB#41:                                # %land.lhs.true.70
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 64(%rax)
	jne	.LBB18_46
# BB#42:                                # %if.then.74
	cmpq	$0, -240(%rbp)
	je	.LBB18_44
# BB#43:                                # %cond.true.76
	movq	-240(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jmp	.LBB18_45
.LBB18_44:                              # %cond.false.78
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	jmp	.LBB18_45
.LBB18_45:                              # %cond.end.79
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	%rax, -248(%rbp)
.LBB18_46:                              # %if.end.81
	jmp	.LBB18_47
.LBB18_47:                              # %if.end.82
	cmpq	$0, -248(%rbp)
	je	.LBB18_50
# BB#48:                                # %land.lhs.true.84
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$1, 64(%rax)
	jne	.LBB18_50
# BB#49:                                # %if.then.88
	leaq	-96(%rbp), %rdx
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_coords_difference
	leaq	-96(%rbp), %rsi
	leaq	-160(%rbp), %rdx
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	gimp_coords_add
	movl	$64, %ecx
	movl	%ecx, %edx
	leaq	-160(%rbp), %rax
	movq	-248(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	memcpy
.LBB18_50:                              # %if.end.96
	jmp	.LBB18_51
.LBB18_51:                              # %if.end.97
	jmp	.LBB18_52
.LBB18_52:                              # %if.end.98
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_bezier_stroke_anchor_move_relative, .Lfunc_end18-gimp_bezier_stroke_anchor_move_relative
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_bezier_stroke_anchor_move_absolute,@function
gimp_bezier_stroke_anchor_move_absolute: # @gimp_bezier_stroke_anchor_move_absolute
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	-96(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rax, %rdx
	callq	gimp_coords_difference
	leaq	-96(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-28(%rbp), %ecx
	callq	gimp_bezier_stroke_anchor_move_relative
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_bezier_stroke_anchor_move_absolute, .Lfunc_end19-gimp_bezier_stroke_anchor_move_absolute
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_bezier_stroke_anchor_convert,@function
gimp_bezier_stroke_anchor_convert:      # @gimp_bezier_stroke_anchor_convert
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	40(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	g_list_find
	movq	%rax, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -32(%rbp)
	je	.LBB20_3
# BB#2:                                 # %if.then
	jmp	.LBB20_4
.LBB20_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_bezier_stroke_anchor_convert, %rsi
	movabsq	$.L.str.20, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB20_47
.LBB20_4:                               # %if.end
	jmp	.LBB20_5
.LBB20_5:                               # %do.end
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jne	.LBB20_46
	jmp	.LBB20_6
.LBB20_6:                               # %sw.bb
	movq	-16(%rbp), %rax
	cmpl	$0, 64(%rax)
	jne	.LBB20_22
# BB#7:                                 # %if.then.2
	cmpq	$0, -32(%rbp)
	je	.LBB20_9
# BB#8:                                 # %cond.true
	movq	-32(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB20_10
	jmp	.LBB20_14
.LBB20_9:                               # %cond.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_10
	jmp	.LBB20_14
.LBB20_10:                              # %if.then.4
	cmpq	$0, -32(%rbp)
	je	.LBB20_12
# BB#11:                                # %cond.true.6
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB20_13
.LBB20_12:                              # %cond.false.8
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB20_13
.LBB20_13:                              # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$64, %ecx
	movl	%ecx, %edx
	movq	(%rax), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	memcpy
.LBB20_14:                              # %if.end.10
	cmpq	$0, -32(%rbp)
	je	.LBB20_16
# BB#15:                                # %cond.true.12
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB20_17
	jmp	.LBB20_21
.LBB20_16:                              # %cond.false.14
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_17
	jmp	.LBB20_21
.LBB20_17:                              # %if.then.15
	cmpq	$0, -32(%rbp)
	je	.LBB20_19
# BB#18:                                # %cond.true.17
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB20_20
.LBB20_19:                              # %cond.false.19
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB20_20
.LBB20_20:                              # %cond.end.20
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	$64, %ecx
	movl	%ecx, %edx
	movq	(%rax), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	memcpy
.LBB20_21:                              # %if.end.25
	jmp	.LBB20_45
.LBB20_22:                              # %if.else.26
	cmpq	$0, -32(%rbp)
	je	.LBB20_24
# BB#23:                                # %cond.true.28
	movq	-32(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB20_25
	jmp	.LBB20_33
.LBB20_24:                              # %cond.false.31
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_25
	jmp	.LBB20_33
.LBB20_25:                              # %land.lhs.true
	cmpq	$0, -32(%rbp)
	je	.LBB20_27
# BB#26:                                # %cond.true.33
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB20_28
.LBB20_27:                              # %cond.false.35
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB20_28
.LBB20_28:                              # %cond.end.36
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	cmpl	$0, 64(%rax)
	jne	.LBB20_33
# BB#29:                                # %if.then.41
	movq	-16(%rbp), %rax
	cmpq	$0, -32(%rbp)
	movq	%rax, -72(%rbp)         # 8-byte Spill
	je	.LBB20_31
# BB#30:                                # %cond.true.44
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB20_32
.LBB20_31:                              # %cond.false.46
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB20_32
.LBB20_32:                              # %cond.end.47
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	$64, %ecx
	movl	%ecx, %edx
	movq	(%rax), %rax
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	memcpy
.LBB20_33:                              # %if.end.51
	cmpq	$0, -32(%rbp)
	je	.LBB20_35
# BB#34:                                # %cond.true.53
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB20_36
	jmp	.LBB20_44
.LBB20_35:                              # %cond.false.56
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_36
	jmp	.LBB20_44
.LBB20_36:                              # %land.lhs.true.57
	cmpq	$0, -32(%rbp)
	je	.LBB20_38
# BB#37:                                # %cond.true.59
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB20_39
.LBB20_38:                              # %cond.false.61
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB20_39
.LBB20_39:                              # %cond.end.62
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	cmpl	$0, 64(%rax)
	jne	.LBB20_44
# BB#40:                                # %if.then.67
	movq	-16(%rbp), %rax
	cmpq	$0, -32(%rbp)
	movq	%rax, -96(%rbp)         # 8-byte Spill
	je	.LBB20_42
# BB#41:                                # %cond.true.70
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB20_43
.LBB20_42:                              # %cond.false.72
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB20_43
.LBB20_43:                              # %cond.end.73
	movq	-104(%rbp), %rax        # 8-byte Reload
	movl	$64, %ecx
	movl	%ecx, %edx
	movq	(%rax), %rax
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	memcpy
.LBB20_44:                              # %if.end.77
	jmp	.LBB20_45
.LBB20_45:                              # %if.end.78
	jmp	.LBB20_47
.LBB20_46:                              # %sw.default
	movabsq	$.L.str.21, %rdi
	movl	-20(%rbp), %esi
	movb	$0, %al
	callq	g_warning
.LBB20_47:                              # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_bezier_stroke_anchor_convert, .Lfunc_end20-gimp_bezier_stroke_anchor_convert
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_bezier_stroke_anchor_delete,@function
gimp_bezier_stroke_anchor_delete:       # @gimp_bezier_stroke_anchor_delete
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	40(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	g_list_find
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB21_2
# BB#1:                                 # %cond.true
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB21_3
.LBB21_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB21_3
.LBB21_3:                               # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	movl	$0, -36(%rbp)
.LBB21_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -36(%rbp)
	jge	.LBB21_15
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB21_4 Depth=1
	jmp	.LBB21_6
.LBB21_6:                               # %do.body
                                        #   in Loop: Header=BB21_4 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB21_8
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB21_4 Depth=1
	jmp	.LBB21_9
.LBB21_8:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_bezier_stroke_anchor_delete, %rsi
	movabsq	$.L.str.22, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_15
.LBB21_9:                               # %if.end
                                        #   in Loop: Header=BB21_4 Depth=1
	jmp	.LBB21_10
.LBB21_10:                              # %do.end
                                        #   in Loop: Header=BB21_4 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB21_12
# BB#11:                                # %cond.true.3
                                        #   in Loop: Header=BB21_4 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB21_13
.LBB21_12:                              # %cond.false.4
                                        #   in Loop: Header=BB21_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB21_13
.LBB21_13:                              # %cond.end.5
                                        #   in Loop: Header=BB21_4 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	gimp_anchor_free
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	g_list_delete_link
	movq	-8(%rbp), %rsi
	movq	%rax, 40(%rsi)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
# BB#14:                                # %for.inc
                                        #   in Loop: Header=BB21_4 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB21_4
.LBB21_15:                              # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_bezier_stroke_anchor_delete, .Lfunc_end21-gimp_bezier_stroke_anchor_delete
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_bezier_stroke_point_is_movable,@function
gimp_bezier_stroke_point_is_movable:    # @gimp_bezier_stroke_point_is_movable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	40(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	g_list_find
	cmpq	$0, %rax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_bezier_stroke_point_is_movable, .Lfunc_end22-gimp_bezier_stroke_point_is_movable
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI23_0:
	.quad	4595172819793696085     # double 0.16666666666666666
.LCPI23_1:
	.quad	4602678819172646912     # double 0.5
.LCPI23_2:
	.quad	4605681218924227243     # double 0.83333333333333337
.LCPI23_3:
	.quad	4607182418800017408     # double 1
.LCPI23_4:
	.quad	4611686018427387904     # double 2
.LCPI23_5:
	.quad	4613937818241073152     # double 3
.LCPI23_6:
	.quad	4618441417868443648     # double 6
	.text
	.align	16, 0x90
	.type	gimp_bezier_stroke_point_move_relative,@function
gimp_bezier_stroke_point_move_relative: # @gimp_bezier_stroke_point_move_relative
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	subq	$240, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdi
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	callq	g_list_find
	movq	%rax, -184(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -184(%rbp)
	je	.LBB23_3
# BB#2:                                 # %if.then
	jmp	.LBB23_4
.LBB23_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_bezier_stroke_point_move_relative, %rsi
	movabsq	$.L.str.23, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB23_28
.LBB23_4:                               # %if.end
	jmp	.LBB23_5
.LBB23_5:                               # %do.end
	movsd	.LCPI23_0, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jb	.LBB23_7
# BB#6:                                 # %if.then.2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -208(%rbp)
	jmp	.LBB23_14
.LBB23_7:                               # %if.else.3
	movsd	.LCPI23_1, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jb	.LBB23_9
# BB#8:                                 # %if.then.5
	movsd	.LCPI23_5, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI23_4, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI23_3, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI23_6, %xmm3        # xmm3 = mem[0],zero
	mulsd	-24(%rbp), %xmm3
	subsd	%xmm2, %xmm3
	divsd	%xmm0, %xmm3
	movaps	%xmm3, %xmm0
	callq	pow
	movsd	.LCPI23_4, %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -208(%rbp)
	jmp	.LBB23_13
.LBB23_9:                               # %if.else.8
	movsd	.LCPI23_2, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jb	.LBB23_11
# BB#10:                                # %if.then.10
	movsd	.LCPI23_5, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI23_4, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI23_3, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI23_6, %xmm3        # xmm3 = mem[0],zero
	movaps	%xmm2, %xmm4
	subsd	-24(%rbp), %xmm4
	mulsd	%xmm4, %xmm3
	subsd	%xmm2, %xmm3
	divsd	%xmm0, %xmm3
	movaps	%xmm3, %xmm0
	callq	pow
	movsd	.LCPI23_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI23_4, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI23_3, %xmm3        # xmm3 = mem[0],zero
	subsd	%xmm0, %xmm3
	divsd	%xmm2, %xmm3
	addsd	%xmm1, %xmm3
	movsd	%xmm3, -208(%rbp)
	jmp	.LBB23_12
.LBB23_11:                              # %if.else.18
	movsd	.LCPI23_3, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)
.LBB23_12:                              # %if.end.19
	jmp	.LBB23_13
.LBB23_13:                              # %if.end.20
	jmp	.LBB23_14
.LBB23_14:                              # %if.end.21
	leaq	-176(%rbp), %rsi
	movsd	.LCPI23_3, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI23_5, %xmm1        # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	subsd	-208(%rbp), %xmm2
	mulsd	-24(%rbp), %xmm1
	movaps	%xmm0, %xmm3
	subsd	-24(%rbp), %xmm3
	mulsd	%xmm3, %xmm1
	subsd	-24(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm2
	movq	-32(%rbp), %rdi
	movaps	%xmm2, %xmm0
	callq	gimp_coords_scale
	leaq	-176(%rbp), %rsi
	movsd	.LCPI23_3, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI23_5, %xmm1        # xmm1 = mem[0],zero
	movsd	-208(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-24(%rbp), %xmm1
	mulsd	-24(%rbp), %xmm1
	subsd	-24(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm2
	movq	-32(%rbp), %rdi
	addq	$64, %rsi
	movaps	%xmm2, %xmm0
	callq	gimp_coords_scale
	movq	-184(%rbp), %rsi
	movq	%rsi, -192(%rbp)
	cmpq	$0, -192(%rbp)
	je	.LBB23_16
# BB#15:                                # %cond.true
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB23_17
.LBB23_16:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	jmp	.LBB23_17
.LBB23_17:                              # %cond.end
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, -192(%rbp)
	cmpq	$0, -192(%rbp)
	jne	.LBB23_19
# BB#18:                                # %if.then.36
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -192(%rbp)
.LBB23_19:                              # %if.end.38
	movl	$0, -196(%rbp)
.LBB23_20:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$1, -196(%rbp)
	jg	.LBB23_28
# BB#21:                                # %for.body
                                        #   in Loop: Header=BB23_20 Depth=1
	leaq	-176(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	-192(%rbp), %rcx
	movq	(%rcx), %rcx
	movslq	-196(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rax
	movl	-36(%rbp), %esi
	movl	%esi, -220(%rbp)        # 4-byte Spill
	movq	%rcx, %rsi
	movq	%rax, %rdx
	movl	-220(%rbp), %ecx        # 4-byte Reload
	callq	gimp_stroke_anchor_move_relative
	cmpq	$0, -192(%rbp)
	je	.LBB23_23
# BB#22:                                # %cond.true.42
                                        #   in Loop: Header=BB23_20 Depth=1
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB23_24
.LBB23_23:                              # %cond.false.44
                                        #   in Loop: Header=BB23_20 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	jmp	.LBB23_24
.LBB23_24:                              # %cond.end.45
                                        #   in Loop: Header=BB23_20 Depth=1
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	%rax, -192(%rbp)
	cmpq	$0, -192(%rbp)
	jne	.LBB23_26
# BB#25:                                # %if.then.48
                                        #   in Loop: Header=BB23_20 Depth=1
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -192(%rbp)
.LBB23_26:                              # %if.end.50
                                        #   in Loop: Header=BB23_20 Depth=1
	jmp	.LBB23_27
.LBB23_27:                              # %for.inc
                                        #   in Loop: Header=BB23_20 Depth=1
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB23_20
.LBB23_28:                              # %for.end
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_bezier_stroke_point_move_relative, .Lfunc_end23-gimp_bezier_stroke_point_move_relative
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI24_0:
	.quad	4613937818241073152     # double 3
.LCPI24_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_bezier_stroke_point_move_absolute,@function
gimp_bezier_stroke_point_move_absolute: # @gimp_bezier_stroke_point_move_absolute
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	subq	$592, %rsp              # imm = 0x250
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdi
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	callq	g_list_find
	movq	%rax, -568(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -568(%rbp)
	je	.LBB24_3
# BB#2:                                 # %if.then
	jmp	.LBB24_4
.LBB24_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_bezier_stroke_point_move_absolute, %rsi
	movabsq	$.L.str.23, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB24_15
.LBB24_4:                               # %if.end
	jmp	.LBB24_5
.LBB24_5:                               # %do.end
	movq	-568(%rbp), %rax
	movq	%rax, -576(%rbp)
	movl	$0, -580(%rbp)
.LBB24_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -580(%rbp)
	jg	.LBB24_14
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB24_6 Depth=1
	movl	$64, %eax
	movl	%eax, %edx
	leaq	-560(%rbp), %rcx
	movslq	-580(%rbp), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rcx
	movq	-576(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rcx, %rdi
	callq	memcpy
	cmpq	$0, -576(%rbp)
	je	.LBB24_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB24_6 Depth=1
	movq	-576(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	jmp	.LBB24_10
.LBB24_9:                               # %cond.false
                                        #   in Loop: Header=BB24_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -592(%rbp)        # 8-byte Spill
	jmp	.LBB24_10
.LBB24_10:                              # %cond.end
                                        #   in Loop: Header=BB24_6 Depth=1
	movq	-592(%rbp), %rax        # 8-byte Reload
	movq	%rax, -576(%rbp)
	cmpq	$0, -576(%rbp)
	jne	.LBB24_12
# BB#11:                                # %if.then.4
                                        #   in Loop: Header=BB24_6 Depth=1
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -576(%rbp)
.LBB24_12:                              # %if.end.6
                                        #   in Loop: Header=BB24_6 Depth=1
	jmp	.LBB24_13
.LBB24_13:                              # %for.inc
                                        #   in Loop: Header=BB24_6 Depth=1
	movl	-580(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -580(%rbp)
	jmp	.LBB24_6
.LBB24_14:                              # %for.end
	leaq	-168(%rbp), %rdx
	leaq	-560(%rbp), %rax
	movsd	.LCPI24_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI24_0, %xmm1        # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	subsd	-24(%rbp), %xmm2
	movaps	%xmm0, %xmm3
	subsd	-24(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	movaps	%xmm0, %xmm3
	subsd	-24(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	movaps	%xmm0, %xmm3
	subsd	-24(%rbp), %xmm3
	mulsd	%xmm3, %xmm1
	subsd	-24(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm1
	movq	%rax, %rcx
	addq	$64, %rcx
	movaps	%xmm2, %xmm0
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_coords_mix
	leaq	-232(%rbp), %rdx
	leaq	-560(%rbp), %rax
	movsd	.LCPI24_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI24_1, %xmm1        # xmm1 = mem[0],zero
	subsd	-24(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	mulsd	-24(%rbp), %xmm0
	mulsd	-24(%rbp), %xmm0
	movq	%rax, %rcx
	addq	$128, %rcx
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-24(%rbp), %xmm1
	mulsd	-24(%rbp), %xmm1
	addq	$192, %rax
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	gimp_coords_mix
	leaq	-168(%rbp), %rdi
	leaq	-232(%rbp), %rsi
	leaq	-296(%rbp), %rdx
	callq	gimp_coords_add
	leaq	-296(%rbp), %rsi
	leaq	-104(%rbp), %rdx
	movq	-32(%rbp), %rdi
	callq	gimp_coords_difference
	leaq	-104(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-36(%rbp), %ecx
	callq	gimp_bezier_stroke_point_move_relative
.LBB24_15:                              # %return
	addq	$592, %rsp              # imm = 0x250
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_bezier_stroke_point_move_absolute, .Lfunc_end24-gimp_bezier_stroke_point_move_absolute
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_bezier_stroke_close,@function
gimp_bezier_stroke_close:               # @gimp_bezier_stroke_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	callq	g_list_first
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_list_last
	movq	%rax, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB25_4
# BB#2:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB25_4
# BB#3:                                 # %if.then
	jmp	.LBB25_5
.LBB25_4:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_bezier_stroke_close, %rsi
	movabsq	$.L.str.24, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB25_13
.LBB25_5:                               # %if.end
	jmp	.LBB25_6
.LBB25_6:                               # %do.end
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rcx
	cmpq	16(%rcx), %rax
	je	.LBB25_12
# BB#7:                                 # %if.then.7
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_coords_equal
	cmpl	$0, %eax
	je	.LBB25_11
# BB#8:                                 # %land.lhs.true.12
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_coords_equal
	cmpl	$0, %eax
	je	.LBB25_11
# BB#9:                                 # %land.lhs.true.19
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_coords_equal
	cmpl	$0, %eax
	je	.LBB25_11
# BB#10:                                # %if.then.27
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rsi
	callq	g_list_delete_link
	movq	-8(%rbp), %rsi
	movq	%rax, 40(%rsi)
	movq	-32(%rbp), %rdi
	callq	gimp_anchor_free
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rsi
	callq	g_list_delete_link
	movq	-8(%rbp), %rsi
	movq	%rax, 40(%rsi)
	movq	-32(%rbp), %rdi
	callq	gimp_anchor_free
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rsi
	callq	g_list_delete_link
	movq	-8(%rbp), %rsi
	movq	%rax, 40(%rsi)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_list_last
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	gimp_anchor_free
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, (%rsi)
.LBB25_11:                              # %if.end.50
	jmp	.LBB25_12
.LBB25_12:                              # %if.end.51
	movq	gimp_bezier_stroke_parent_class, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_stroke_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	280(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB25_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_bezier_stroke_close, .Lfunc_end25-gimp_bezier_stroke_close
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_bezier_stroke_open,@function
gimp_bezier_stroke_open:                # @gimp_bezier_stroke_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -48(%rbp)
	movq	-16(%rbp), %rsi
	movq	40(%rsi), %rdi
	movq	-24(%rbp), %rsi
	callq	g_list_find
	movq	%rax, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -32(%rbp)
	je	.LBB26_4
# BB#2:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB26_4
# BB#3:                                 # %if.then
	jmp	.LBB26_5
.LBB26_4:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_bezier_stroke_open, %rsi
	movabsq	$.L.str.25, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB26_15
.LBB26_5:                               # %if.end
	jmp	.LBB26_6
.LBB26_6:                               # %do.end
	cmpq	$0, -32(%rbp)
	je	.LBB26_8
# BB#7:                                 # %cond.true
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB26_9
.LBB26_8:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB26_9
.LBB26_9:                               # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	$0, 8(%rax)
	cmpq	$0, -40(%rbp)
	je	.LBB26_14
# BB#10:                                # %if.then.6
	movq	-40(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-16(%rbp), %rax
	cmpl	$0, 48(%rax)
	je	.LBB26_12
# BB#11:                                # %if.then.8
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rsi
	callq	g_list_concat
	movq	-16(%rbp), %rsi
	movq	%rax, 40(%rsi)
	jmp	.LBB26_13
.LBB26_12:                              # %if.else.12
	callq	gimp_bezier_stroke_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 40(%rcx)
.LBB26_13:                              # %if.end.15
	jmp	.LBB26_14
.LBB26_14:                              # %if.end.16
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movl	$0, 48(%rcx)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.26, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB26_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_bezier_stroke_open, .Lfunc_end26-gimp_bezier_stroke_open
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_bezier_stroke_anchor_is_insertable,@function
gimp_bezier_stroke_anchor_is_insertable: # @gimp_bezier_stroke_anchor_is_insertable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	40(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	g_list_find
	cmpq	$0, %rax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_bezier_stroke_anchor_is_insertable, .Lfunc_end27-gimp_bezier_stroke_anchor_is_insertable
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI28_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_bezier_stroke_anchor_insert,@function
gimp_bezier_stroke_anchor_insert:       # @gimp_bezier_stroke_anchor_insert
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	subq	$896, %rsp              # imm = 0x380
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movq	-16(%rbp), %rsi
	movq	40(%rsi), %rdi
	movq	-24(%rbp), %rsi
	callq	g_list_find
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB28_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB28_29
.LBB28_2:                               # %if.end
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -836(%rbp)
.LBB28_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -836(%rbp)
	jg	.LBB28_11
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB28_3 Depth=1
	movl	$64, %eax
	movl	%eax, %edx
	leaq	-832(%rbp), %rcx
	movslq	-836(%rbp), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rcx
	movq	-48(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rcx, %rdi
	callq	memcpy
	cmpq	$0, -48(%rbp)
	je	.LBB28_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB28_3 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
	jmp	.LBB28_7
.LBB28_6:                               # %cond.false
                                        #   in Loop: Header=BB28_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -848(%rbp)        # 8-byte Spill
	jmp	.LBB28_7
.LBB28_7:                               # %cond.end
                                        #   in Loop: Header=BB28_3 Depth=1
	movq	-848(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB28_9
# BB#8:                                 # %if.then.4
                                        #   in Loop: Header=BB28_3 Depth=1
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB28_9:                               # %if.end.6
                                        #   in Loop: Header=BB28_3 Depth=1
	jmp	.LBB28_10
.LBB28_10:                              # %for.inc
                                        #   in Loop: Header=BB28_3 Depth=1
	movl	-836(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -836(%rbp)
	jmp	.LBB28_3
.LBB28_11:                              # %for.end
	leaq	-576(%rbp), %rax
	leaq	-832(%rbp), %rcx
	movsd	.LCPI28_0, %xmm0        # xmm0 = mem[0],zero
	movl	$64, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	movq	%rcx, %r8
	movq	%rsi, -856(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	-856(%rbp), %rdx        # 8-byte Reload
	movq	%rax, -864(%rbp)        # 8-byte Spill
	movq	%rcx, -872(%rbp)        # 8-byte Spill
	movsd	%xmm0, -880(%rbp)       # 8-byte Spill
	callq	memcpy
	movq	-864(%rbp), %rax        # 8-byte Reload
	addq	$384, %rax              # imm = 0x180
	movq	-872(%rbp), %rcx        # 8-byte Reload
	addq	$192, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	-856(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movsd	-880(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	-32(%rbp), %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-872(%rbp), %rax        # 8-byte Reload
	addq	$64, %rax
	movq	-864(%rbp), %rcx        # 8-byte Reload
	addq	$64, %rcx
	movq	-872(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gimp_coords_mix
	leaq	-576(%rbp), %rax
	leaq	-832(%rbp), %rcx
	movsd	.LCPI28_0, %xmm0        # xmm0 = mem[0],zero
	subsd	-32(%rbp), %xmm0
	movq	%rcx, %rdx
	addq	$64, %rdx
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	addq	$128, %rcx
	addq	$448, %rax              # imm = 0x1C0
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rdx
	callq	gimp_coords_mix
	leaq	-576(%rbp), %rax
	leaq	-832(%rbp), %rcx
	movsd	.LCPI28_0, %xmm0        # xmm0 = mem[0],zero
	subsd	-32(%rbp), %xmm0
	movq	%rcx, %rdx
	addq	$128, %rdx
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	addq	$192, %rcx
	addq	$320, %rax              # imm = 0x140
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rdx
	callq	gimp_coords_mix
	leaq	-576(%rbp), %rax
	movsd	.LCPI28_0, %xmm0        # xmm0 = mem[0],zero
	subsd	-32(%rbp), %xmm0
	movq	%rax, %rcx
	addq	$64, %rcx
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdx
	addq	$448, %rdx              # imm = 0x1C0
	addq	$128, %rax
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	gimp_coords_mix
	leaq	-576(%rbp), %rax
	movsd	.LCPI28_0, %xmm0        # xmm0 = mem[0],zero
	subsd	-32(%rbp), %xmm0
	movq	%rax, %rcx
	addq	$448, %rcx              # imm = 0x1C0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdx
	addq	$320, %rdx              # imm = 0x140
	addq	$256, %rax              # imm = 0x100
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	gimp_coords_mix
	leaq	-576(%rbp), %rax
	movsd	.LCPI28_0, %xmm0        # xmm0 = mem[0],zero
	subsd	-32(%rbp), %xmm0
	movq	%rax, %rcx
	addq	$128, %rcx
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdx
	addq	$256, %rdx              # imm = 0x100
	addq	$192, %rax
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	gimp_coords_mix
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -836(%rbp)
.LBB28_12:                              # %for.cond.34
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$6, -836(%rbp)
	jg	.LBB28_28
# BB#13:                                # %for.body.36
                                        #   in Loop: Header=BB28_12 Depth=1
	cmpl	$2, -836(%rbp)
	jl	.LBB28_20
# BB#14:                                # %land.lhs.true
                                        #   in Loop: Header=BB28_12 Depth=1
	cmpl	$4, -836(%rbp)
	jg	.LBB28_20
# BB#15:                                # %if.then.39
                                        #   in Loop: Header=BB28_12 Depth=1
	leaq	-576(%rbp), %rax
	movl	$1, %ecx
	xorl	%edx, %edx
	cmpl	$3, -836(%rbp)
	cmovel	%edx, %ecx
	movslq	-836(%rbp), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rax
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	gimp_anchor_new
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	g_list_append
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rsi
	movq	%rax, 16(%rsi)
	movq	-48(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB28_17
# BB#16:                                # %if.then.50
                                        #   in Loop: Header=BB28_12 Depth=1
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rax, 8(%rcx)
.LBB28_17:                              # %if.end.53
                                        #   in Loop: Header=BB28_12 Depth=1
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	cmpl	$3, -836(%rbp)
	jne	.LBB28_19
# BB#18:                                # %if.then.56
                                        #   in Loop: Header=BB28_12 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB28_19:                              # %if.end.57
                                        #   in Loop: Header=BB28_12 Depth=1
	jmp	.LBB28_21
.LBB28_20:                              # %if.else
                                        #   in Loop: Header=BB28_12 Depth=1
	movl	$64, %eax
	movl	%eax, %edx
	leaq	-576(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	(%rsi), %rsi
	movslq	-836(%rbp), %rdi
	shlq	$6, %rdi
	addq	%rdi, %rcx
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	memcpy
.LBB28_21:                              # %if.end.62
                                        #   in Loop: Header=BB28_12 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB28_23
# BB#22:                                # %cond.true.64
                                        #   in Loop: Header=BB28_12 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
	jmp	.LBB28_24
.LBB28_23:                              # %cond.false.66
                                        #   in Loop: Header=BB28_12 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -888(%rbp)        # 8-byte Spill
	jmp	.LBB28_24
.LBB28_24:                              # %cond.end.67
                                        #   in Loop: Header=BB28_12 Depth=1
	movq	-888(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB28_26
# BB#25:                                # %if.then.70
                                        #   in Loop: Header=BB28_12 Depth=1
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB28_26:                              # %if.end.72
                                        #   in Loop: Header=BB28_12 Depth=1
	jmp	.LBB28_27
.LBB28_27:                              # %for.inc.73
                                        #   in Loop: Header=BB28_12 Depth=1
	movl	-836(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -836(%rbp)
	jmp	.LBB28_12
.LBB28_28:                              # %for.end.75
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_list_first
	movq	-16(%rbp), %rdi
	movq	%rax, 40(%rdi)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB28_29:                              # %return
	movq	-8(%rbp), %rax
	addq	$896, %rsp              # imm = 0x380
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_bezier_stroke_anchor_insert, .Lfunc_end28-gimp_bezier_stroke_anchor_insert
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_bezier_stroke_is_extendable,@function
gimp_bezier_stroke_is_extendable:       # @gimp_bezier_stroke_is_extendable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp95:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$0, 48(%rsi)
	je	.LBB29_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB29_36
.LBB29_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	jne	.LBB29_4
# BB#3:                                 # %if.then.1
	movl	$1, -4(%rbp)
	jmp	.LBB29_36
.LBB29_4:                               # %if.end.2
	jmp	.LBB29_5
.LBB29_5:                               # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB29_7
# BB#6:                                 # %if.then.4
	jmp	.LBB29_8
.LBB29_7:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_bezier_stroke_is_extendable, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB29_36
.LBB29_8:                               # %if.end.5
	jmp	.LBB29_9
.LBB29_9:                               # %do.end
	movl	$0, -36(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_list_last
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdi
	cmpq	%rdi, %rax
	jne	.LBB29_11
# BB#10:                                # %if.then.8
	movl	$1, -36(%rbp)
	jmp	.LBB29_35
.LBB29_11:                              # %if.else.9
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_list_first
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdi
	cmpq	%rdi, %rax
	jne	.LBB29_13
# BB#12:                                # %if.then.14
	movl	$-1, -36(%rbp)
	jmp	.LBB29_34
.LBB29_13:                              # %if.else.15
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_find
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB29_24
# BB#14:                                # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpl	$1, 64(%rax)
	jne	.LBB29_24
# BB#15:                                # %if.then.20
	movq	-32(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB29_18
# BB#16:                                # %land.lhs.true.22
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	cmpl	$0, 64(%rax)
	jne	.LBB29_18
# BB#17:                                # %if.then.27
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB29_23
.LBB29_18:                              # %if.else.29
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB29_21
# BB#19:                                # %land.lhs.true.31
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	cmpl	$0, 64(%rax)
	jne	.LBB29_21
# BB#20:                                # %if.then.36
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB29_22
.LBB29_21:                              # %if.else.38
	movl	$0, -36(%rbp)
	movq	$0, -32(%rbp)
.LBB29_22:                              # %if.end.39
	jmp	.LBB29_23
.LBB29_23:                              # %if.end.40
	jmp	.LBB29_24
.LBB29_24:                              # %if.end.41
	cmpq	$0, -32(%rbp)
	je	.LBB29_33
# BB#25:                                # %if.then.43
	movq	-32(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB29_28
# BB#26:                                # %land.lhs.true.46
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB29_28
# BB#27:                                # %if.then.50
	movl	$-1, -36(%rbp)
	jmp	.LBB29_32
.LBB29_28:                              # %if.else.51
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB29_31
# BB#29:                                # %land.lhs.true.54
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB29_31
# BB#30:                                # %if.then.58
	movl	$1, -36(%rbp)
.LBB29_31:                              # %if.end.59
	jmp	.LBB29_32
.LBB29_32:                              # %if.end.60
	jmp	.LBB29_33
.LBB29_33:                              # %if.end.61
	jmp	.LBB29_34
.LBB29_34:                              # %if.end.62
	jmp	.LBB29_35
.LBB29_35:                              # %if.end.63
	cmpl	$0, -36(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
.LBB29_36:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_bezier_stroke_is_extendable, .Lfunc_end29-gimp_bezier_stroke_is_extendable
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_bezier_stroke_connect_stroke,@function
gimp_bezier_stroke_connect_stroke:      # @gimp_bezier_stroke_connect_stroke
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rdi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_list_find
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_bezier_stroke_get_anchor_listitem
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_find
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_bezier_stroke_get_anchor_listitem
	movq	%rax, -56(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -48(%rbp)
	je	.LBB30_4
# BB#2:                                 # %land.lhs.true
	cmpq	$0, -56(%rbp)
	je	.LBB30_4
# BB#3:                                 # %if.then
	jmp	.LBB30_5
.LBB30_4:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_bezier_stroke_connect_stroke, %rsi
	movabsq	$.L.str.27, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB30_39
.LBB30_5:                               # %if.end
	jmp	.LBB30_6
.LBB30_6:                               # %do.end
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB30_20
# BB#7:                                 # %if.then.7
	jmp	.LBB30_8
.LBB30_8:                               # %do.body.8
	movq	-48(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB30_12
# BB#9:                                 # %land.lhs.true.9
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB30_12
# BB#10:                                # %land.lhs.true.13
	movq	-56(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB30_12
# BB#11:                                # %land.lhs.true.15
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB30_16
.LBB30_12:                              # %lor.lhs.false
	movq	-48(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB30_17
# BB#13:                                # %land.lhs.true.21
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB30_17
# BB#14:                                # %land.lhs.true.25
	movq	-56(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB30_17
# BB#15:                                # %land.lhs.true.28
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB30_17
.LBB30_16:                              # %if.then.32
	jmp	.LBB30_18
.LBB30_17:                              # %if.else.33
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_bezier_stroke_connect_stroke, %rsi
	movabsq	$.L.str.28, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB30_39
.LBB30_18:                              # %if.end.34
	jmp	.LBB30_19
.LBB30_19:                              # %do.end.35
	movq	-16(%rbp), %rdi
	callq	gimp_stroke_close
	movl	$1, -4(%rbp)
	jmp	.LBB30_39
.LBB30_20:                              # %if.end.36
	movq	-48(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB30_23
# BB#21:                                # %land.lhs.true.39
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB30_23
# BB#22:                                # %if.then.43
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_list_reverse
	movq	-16(%rbp), %rdi
	movq	%rax, 40(%rdi)
.LBB30_23:                              # %if.end.47
	jmp	.LBB30_24
.LBB30_24:                              # %do.body.48
	movq	-48(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB30_27
# BB#25:                                # %land.lhs.true.51
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB30_27
# BB#26:                                # %if.then.55
	jmp	.LBB30_28
.LBB30_27:                              # %if.else.56
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_bezier_stroke_connect_stroke, %rsi
	movabsq	$.L.str.29, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB30_39
.LBB30_28:                              # %if.end.57
	jmp	.LBB30_29
.LBB30_29:                              # %do.end.58
	movq	-56(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB30_32
# BB#30:                                # %land.lhs.true.61
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB30_32
# BB#31:                                # %if.then.65
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_list_reverse
	movq	-32(%rbp), %rdi
	movq	%rax, 40(%rdi)
.LBB30_32:                              # %if.end.69
	jmp	.LBB30_33
.LBB30_33:                              # %do.body.70
	movq	-56(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB30_36
# BB#34:                                # %land.lhs.true.73
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB30_36
# BB#35:                                # %if.then.77
	jmp	.LBB30_37
.LBB30_36:                              # %if.else.78
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_bezier_stroke_connect_stroke, %rsi
	movabsq	$.L.str.30, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB30_39
.LBB30_37:                              # %if.end.79
	jmp	.LBB30_38
.LBB30_38:                              # %do.end.80
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	40(%rax), %rsi
	callq	g_list_concat
	movq	-16(%rbp), %rsi
	movq	%rax, 40(%rsi)
	movq	-32(%rbp), %rax
	movq	$0, 40(%rax)
	movl	$1, -4(%rbp)
.LBB30_39:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_bezier_stroke_connect_stroke, .Lfunc_end30-gimp_bezier_stroke_connect_stroke
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_bezier_stroke_interpolate,@function
gimp_bezier_stroke_interpolate:         # @gimp_bezier_stroke_interpolate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp101:
	.cfi_def_cfa_register %rbp
	subq	$656, %rsp              # imm = 0x290
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -328(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, 40(%rsi)
	jne	.LBB31_4
# BB#1:                                 # %if.then
	cmpq	$0, -32(%rbp)
	je	.LBB31_3
# BB#2:                                 # %if.then.2
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
.LBB31_3:                               # %if.end
	movq	$0, -8(%rbp)
	jmp	.LBB31_40
.LBB31_4:                               # %if.end.3
	xorl	%eax, %eax
	movl	$64, %edx
	movl	%eax, %edi
	movl	%eax, %esi
	callq	g_array_new
	movq	%rax, -40(%rbp)
	movl	$0, -324(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB31_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -56(%rbp)
	movb	%cl, -329(%rbp)         # 1-byte Spill
	je	.LBB31_7
# BB#6:                                 # %land.rhs
                                        #   in Loop: Header=BB31_5 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 64(%rax)
	setne	%cl
	movb	%cl, -329(%rbp)         # 1-byte Spill
.LBB31_7:                               # %land.end
                                        #   in Loop: Header=BB31_5 Depth=1
	movb	-329(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB31_8
	jmp	.LBB31_13
.LBB31_8:                               # %for.body
                                        #   in Loop: Header=BB31_5 Depth=1
	jmp	.LBB31_9
.LBB31_9:                               # %for.inc
                                        #   in Loop: Header=BB31_5 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB31_11
# BB#10:                                # %cond.true
                                        #   in Loop: Header=BB31_5 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jmp	.LBB31_12
.LBB31_11:                              # %cond.false
                                        #   in Loop: Header=BB31_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	jmp	.LBB31_12
.LBB31_12:                              # %cond.end
                                        #   in Loop: Header=BB31_5 Depth=1
	movq	-344(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	jmp	.LBB31_5
.LBB31_13:                              # %for.end
	jmp	.LBB31_14
.LBB31_14:                              # %for.cond.7
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB31_22
# BB#15:                                # %for.body.9
                                        #   in Loop: Header=BB31_14 Depth=1
	movl	$64, %eax
	movl	%eax, %edx
	leaq	-320(%rbp), %rcx
	movq	-56(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -48(%rbp)
	movslq	-324(%rbp), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rcx
	movq	-48(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
	movl	-324(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -324(%rbp)
	cmpl	$4, -324(%rbp)
	jne	.LBB31_17
# BB#16:                                # %if.then.12
                                        #   in Loop: Header=BB31_14 Depth=1
	leaq	-40(%rbp), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-320(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$64, %rdi
	movq	%rsi, %r8
	addq	$128, %r8
	movq	%rsi, %r9
	addq	$192, %r9
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movups	(%r9), %xmm1
	movups	16(%r9), %xmm2
	movups	32(%r9), %xmm3
	movups	48(%r9), %xmm4
	movq	%rsp, %r9
	movups	%xmm4, 240(%r9)
	movups	%xmm3, 224(%r9)
	movups	%xmm2, 208(%r9)
	movups	%xmm1, 192(%r9)
	movups	(%r8), %xmm1
	movups	16(%r8), %xmm2
	movups	32(%r8), %xmm3
	movups	48(%r8), %xmm4
	movups	%xmm4, 176(%r9)
	movups	%xmm3, 160(%r9)
	movups	%xmm2, 144(%r9)
	movups	%xmm1, 128(%r9)
	movups	(%rdi), %xmm1
	movups	16(%rdi), %xmm2
	movups	32(%rdi), %xmm3
	movups	48(%rdi), %xmm4
	movups	%xmm4, 112(%r9)
	movups	%xmm3, 96(%r9)
	movups	%xmm2, 80(%r9)
	movups	%xmm1, 64(%r9)
	movups	(%rsi), %xmm1
	movups	16(%rsi), %xmm2
	movups	32(%rsi), %xmm3
	movups	48(%rsi), %xmm4
	movups	%xmm4, 48(%r9)
	movups	%xmm3, 32(%r9)
	movups	%xmm2, 16(%r9)
	movups	%xmm1, (%r9)
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-40(%rbp), %rdi
	movq	%rax, -352(%rbp)        # 8-byte Spill
	movq	%rdx, -360(%rbp)        # 8-byte Spill
	callq	gimp_coords_interpolate_bezier
	movl	$64, %ecx
	movl	%ecx, %edx
	leaq	-320(%rbp), %rax
	movq	%rax, %rsi
	addq	$192, %rsi
	movq	%rax, %rdi
	callq	memcpy
	movl	$1, -324(%rbp)
	movl	$1, -328(%rbp)
.LBB31_17:                              # %if.end.19
                                        #   in Loop: Header=BB31_14 Depth=1
	jmp	.LBB31_18
.LBB31_18:                              # %for.inc.20
                                        #   in Loop: Header=BB31_14 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB31_20
# BB#19:                                # %cond.true.22
                                        #   in Loop: Header=BB31_14 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jmp	.LBB31_21
.LBB31_20:                              # %cond.false.24
                                        #   in Loop: Header=BB31_14 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	jmp	.LBB31_21
.LBB31_21:                              # %cond.end.25
                                        #   in Loop: Header=BB31_14 Depth=1
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	jmp	.LBB31_14
.LBB31_22:                              # %for.end.27
	movq	-16(%rbp), %rax
	cmpl	$0, 48(%rax)
	je	.LBB31_33
# BB#23:                                # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB31_33
# BB#24:                                # %if.then.31
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB31_25:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -324(%rbp)
	jge	.LBB31_27
# BB#26:                                # %while.body
                                        #   in Loop: Header=BB31_25 Depth=1
	movl	$64, %eax
	movl	%eax, %edx
	leaq	-320(%rbp), %rcx
	movslq	-324(%rbp), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rcx
	movq	-56(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rcx, %rdi
	callq	memcpy
	movl	-324(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -324(%rbp)
	jmp	.LBB31_25
.LBB31_27:                              # %while.end
	cmpq	$0, -56(%rbp)
	je	.LBB31_29
# BB#28:                                # %cond.true.40
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	jmp	.LBB31_30
.LBB31_29:                              # %cond.false.42
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	jmp	.LBB31_30
.LBB31_30:                              # %cond.end.43
	movq	-376(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB31_32
# BB#31:                                # %if.then.46
	movl	$64, %eax
	movl	%eax, %edx
	leaq	-320(%rbp), %rcx
	addq	$192, %rcx
	movq	-56(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rcx, %rdi
	callq	memcpy
.LBB31_32:                              # %if.end.50
	leaq	-40(%rbp), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-320(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$64, %rdi
	movq	%rsi, %r8
	addq	$128, %r8
	movq	%rsi, %r9
	addq	$192, %r9
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movups	(%r9), %xmm1
	movups	16(%r9), %xmm2
	movups	32(%r9), %xmm3
	movups	48(%r9), %xmm4
	movq	%rsp, %r9
	movups	%xmm4, 240(%r9)
	movups	%xmm3, 224(%r9)
	movups	%xmm2, 208(%r9)
	movups	%xmm1, 192(%r9)
	movups	(%r8), %xmm1
	movups	16(%r8), %xmm2
	movups	32(%r8), %xmm3
	movups	48(%r8), %xmm4
	movups	%xmm4, 176(%r9)
	movups	%xmm3, 160(%r9)
	movups	%xmm2, 144(%r9)
	movups	%xmm1, 128(%r9)
	movups	(%rdi), %xmm1
	movups	16(%rdi), %xmm2
	movups	32(%rdi), %xmm3
	movups	48(%rdi), %xmm4
	movups	%xmm4, 112(%r9)
	movups	%xmm3, 96(%r9)
	movups	%xmm2, 80(%r9)
	movups	%xmm1, 64(%r9)
	movups	(%rsi), %xmm1
	movups	16(%rsi), %xmm2
	movups	32(%rsi), %xmm3
	movups	48(%rsi), %xmm4
	movups	%xmm4, 48(%r9)
	movups	%xmm3, 32(%r9)
	movups	%xmm2, 16(%r9)
	movups	%xmm1, (%r9)
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-40(%rbp), %rdi
	movq	%rax, -384(%rbp)        # 8-byte Spill
	movq	%rdx, -392(%rbp)        # 8-byte Spill
	callq	gimp_coords_interpolate_bezier
	movl	$1, -328(%rbp)
.LBB31_33:                              # %if.end.55
	cmpl	$0, -328(%rbp)
	je	.LBB31_35
# BB#34:                                # %if.then.57
	movl	$1, %edx
	leaq	-320(%rbp), %rax
	movq	-40(%rbp), %rdi
	addq	$192, %rax
	movq	%rax, %rsi
	callq	g_array_append_vals
	movq	%rax, -40(%rbp)
.LBB31_35:                              # %if.end.60
	cmpq	$0, -32(%rbp)
	je	.LBB31_37
# BB#36:                                # %if.then.62
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
.LBB31_37:                              # %if.end.64
	movq	-40(%rbp), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB31_39
# BB#38:                                # %if.then.66
	movl	$1, %esi
	movq	-40(%rbp), %rdi
	callq	g_array_free
	movq	$0, -40(%rbp)
	movq	%rax, -400(%rbp)        # 8-byte Spill
.LBB31_39:                              # %if.end.68
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB31_40:                              # %return
	movq	-8(%rbp), %rax
	addq	$656, %rsp              # imm = 0x290
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_bezier_stroke_interpolate, .Lfunc_end31-gimp_bezier_stroke_interpolate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_bezier_stroke_make_bezier,@function
gimp_bezier_stroke_make_bezier:         # @gimp_bezier_stroke_make_bezier
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp104:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_stroke_control_points_get
	movq	%rax, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB32_4
# BB#2:                                 # %land.lhs.true
	movl	$3, %eax
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %edx
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	xorl	%edx, %edx
	movl	-68(%rbp), %esi         # 4-byte Reload
	divl	%esi
	cmpl	$0, %edx
	jne	.LBB32_4
# BB#3:                                 # %if.then
	jmp	.LBB32_5
.LBB32_4:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_bezier_stroke_make_bezier, %rsi
	movabsq	$.L.str.32, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB32_19
.LBB32_5:                               # %if.end
	jmp	.LBB32_6
.LBB32_6:                               # %do.end
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	jae	.LBB32_8
# BB#7:                                 # %if.then.3
	movq	$0, -8(%rbp)
	jmp	.LBB32_19
.LBB32_8:                               # %if.end.4
	movl	$3, %eax
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %edx
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	xorl	%edx, %edx
	movl	-72(%rbp), %esi         # 4-byte Reload
	divl	%esi
	subl	$1, %eax
	shll	$2, %eax
	addl	$2, %eax
	movl	%eax, -60(%rbp)
	movq	-16(%rbp), %rcx
	cmpl	$0, 48(%rcx)
	je	.LBB32_10
# BB#9:                                 # %if.then.7
	movl	-60(%rbp), %eax
	addl	$5, %eax
	movl	%eax, -60(%rbp)
.LBB32_10:                              # %if.end.9
	xorl	%eax, %eax
	movl	$16, %edx
	movl	-60(%rbp), %ecx
	movl	%eax, %edi
	movl	%eax, %esi
	callq	g_array_sized_new
	movl	$1, %edx
	leaq	-56(%rbp), %r8
	movq	%rax, -32(%rbp)
	movl	$0, -56(%rbp)
	movl	$2, -52(%rbp)
	movq	-32(%rbp), %rdi
	movq	%r8, %rsi
	callq	g_array_append_vals
	movl	$1, %edx
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	(%rdi), %rdi
	movsd	72(%rdi), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movq	-24(%rbp), %rdi
	movq	(%rdi), %rdi
	movsd	80(%rdi), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_array_append_vals
	movl	$2, -64(%rbp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB32_11:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	addl	$2, %eax
	movq	-24(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB32_14
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB32_11 Depth=1
	movl	$1, %edx
	leaq	-56(%rbp), %rax
	movl	$2, -56(%rbp)
	movl	$4, -52(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_array_append_vals
	movl	$1, %edx
	leaq	-56(%rbp), %rsi
	movslq	-64(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	imulq	$72, %rdi, %rdi
	addq	%rdi, %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movslq	-64(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movq	(%rdi), %rdi
	imulq	$72, %rcx, %rcx
	addq	%rcx, %rdi
	movsd	8(%rdi), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_array_append_vals
	movl	$1, %edx
	leaq	-56(%rbp), %rcx
	movl	-64(%rbp), %r8d
	addl	$1, %r8d
	movslq	%r8d, %rsi
	movq	-24(%rbp), %rdi
	movq	(%rdi), %rdi
	imulq	$72, %rsi, %rsi
	addq	%rsi, %rdi
	movsd	(%rdi), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movl	-64(%rbp), %r8d
	addl	$1, %r8d
	movslq	%r8d, %rsi
	movq	-24(%rbp), %rdi
	movq	(%rdi), %rdi
	imulq	$72, %rsi, %rsi
	addq	%rsi, %rdi
	movsd	8(%rdi), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_array_append_vals
	movl	$1, %edx
	leaq	-56(%rbp), %rcx
	movl	-64(%rbp), %r8d
	addl	$2, %r8d
	movslq	%r8d, %rsi
	movq	-24(%rbp), %rdi
	movq	(%rdi), %rdi
	imulq	$72, %rsi, %rsi
	addq	%rsi, %rdi
	movsd	(%rdi), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movl	-64(%rbp), %r8d
	addl	$2, %r8d
	movslq	%r8d, %rsi
	movq	-24(%rbp), %rdi
	movq	(%rdi), %rdi
	imulq	$72, %rsi, %rsi
	addq	%rsi, %rdi
	movsd	8(%rdi), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_array_append_vals
	movq	%rax, -120(%rbp)        # 8-byte Spill
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB32_11 Depth=1
	movl	-64(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB32_11
.LBB32_14:                              # %for.end
	movq	-16(%rbp), %rax
	cmpl	$0, 48(%rax)
	je	.LBB32_16
# BB#15:                                # %if.then.79
	movl	$1, %edx
	leaq	-56(%rbp), %rax
	movl	$2, -56(%rbp)
	movl	$4, -52(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_array_append_vals
	movl	$1, %edx
	leaq	-56(%rbp), %rsi
	movslq	-64(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	imulq	$72, %rdi, %rdi
	addq	%rdi, %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movslq	-64(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movq	(%rdi), %rdi
	imulq	$72, %rcx, %rcx
	addq	%rcx, %rdi
	movsd	8(%rdi), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_array_append_vals
	movl	$1, %edx
	leaq	-56(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movsd	8(%rsi), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_array_append_vals
	movl	$1, %edx
	leaq	-56(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movsd	72(%rsi), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movsd	80(%rsi), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	g_array_append_vals
	movl	$1, %edx
	leaq	-56(%rbp), %rcx
	movl	$3, -56(%rbp)
	movl	$1, -52(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	g_array_append_vals
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB32_16:                              # %if.end.131
	movq	-32(%rbp), %rax
	movl	8(%rax), %ecx
	cmpl	-60(%rbp), %ecx
	je	.LBB32_18
# BB#17:                                # %if.then.134
	movabsq	$.L.str.33, %rdi
	movq	-32(%rbp), %rax
	movl	8(%rax), %esi
	movl	-60(%rbp), %edx
	movb	$0, %al
	callq	g_printerr
.LBB32_18:                              # %if.end.136
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movl	8(%rcx), %esi
	movq	%rax, %rdi
	callq	gimp_bezier_desc_new
	movl	$1, %esi
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_array_free
	xorl	%esi, %esi
	movq	-32(%rbp), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	g_array_free
	movq	-40(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB32_19:                              # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_bezier_stroke_make_bezier, .Lfunc_end32-gimp_bezier_stroke_make_bezier
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI33_0:
	.quad	4602678819172646912     # double 0.5
.LCPI33_1:
	.quad	4607182418800017408     # double 1
.LCPI33_2:
	.quad	4613937818241073152     # double 3
	.text
	.align	16, 0x90
	.type	gimp_bezier_stroke_segment_nearest_point_get,@function
gimp_bezier_stroke_segment_nearest_point_get: # @gimp_bezier_stroke_segment_nearest_point_get
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp107:
	.cfi_def_cfa_register %rbp
	subq	$1200, %rsp             # imm = 0x4B0
	leaq	-656(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movq	-16(%rbp), %rcx
	addq	$64, %rcx
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%rax, %rdx
	callq	gimp_coords_difference
	leaq	-720(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	$192, %rax
	movq	-16(%rbp), %rcx
	addq	$128, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_coords_difference
	cmpl	$0, -52(%rbp)
	je	.LBB33_4
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$64, %rcx
	movq	-16(%rbp), %rdx
	addq	$128, %rdx
	movq	-16(%rbp), %rsi
	addq	$192, %rsi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movups	(%rsi), %xmm1
	movups	16(%rsi), %xmm2
	movups	32(%rsi), %xmm3
	movups	48(%rsi), %xmm4
	movq	%rsp, %rsi
	movups	%xmm4, 240(%rsi)
	movups	%xmm3, 224(%rsi)
	movups	%xmm2, 208(%rsi)
	movups	%xmm1, 192(%rsi)
	movups	(%rdx), %xmm1
	movups	16(%rdx), %xmm2
	movups	32(%rdx), %xmm3
	movups	48(%rdx), %xmm4
	movups	%xmm4, 176(%rsi)
	movups	%xmm3, 160(%rsi)
	movups	%xmm2, 144(%rsi)
	movups	%xmm1, 128(%rsi)
	movups	(%rcx), %xmm1
	movups	16(%rcx), %xmm2
	movups	32(%rcx), %xmm3
	movups	48(%rcx), %xmm4
	movups	%xmm4, 112(%rsi)
	movups	%xmm3, 96(%rsi)
	movups	%xmm2, 80(%rsi)
	movups	%xmm1, 64(%rsi)
	movups	(%rax), %xmm1
	movups	16(%rax), %xmm2
	movups	32(%rax), %xmm3
	movups	48(%rax), %xmm4
	movups	%xmm4, 48(%rsi)
	movups	%xmm3, 32(%rsi)
	movups	%xmm2, 16(%rsi)
	movups	%xmm1, (%rsi)
	callq	gimp_coords_bezier_is_straight
	cmpl	$0, %eax
	je	.LBB33_18
# BB#2:                                 # %land.lhs.true
	leaq	-656(%rbp), %rdi
	callq	gimp_coords_length_squared
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB33_18
# BB#3:                                 # %land.lhs.true.10
	leaq	-720(%rbp), %rdi
	callq	gimp_coords_length_squared
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB33_18
.LBB33_4:                               # %if.then
	leaq	-800(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	$192, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_coords_difference
	leaq	-864(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_coords_difference
	leaq	-800(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_coords_scalarprod
	leaq	-800(%rbp), %rdi
	leaq	-864(%rbp), %rsi
	movsd	%xmm0, -872(%rbp)
	callq	gimp_coords_scalarprod
	movsd	.LCPI33_1, %xmm1        # xmm1 = mem[0],zero
	divsd	-872(%rbp), %xmm0
	movsd	%xmm0, -880(%rbp)
	movsd	-880(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB33_6
# BB#5:                                 # %cond.true
	movsd	.LCPI33_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -896(%rbp)       # 8-byte Spill
	jmp	.LBB33_10
.LBB33_6:                               # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-880(%rbp), %xmm0
	jbe	.LBB33_8
# BB#7:                                 # %cond.true.20
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -904(%rbp)       # 8-byte Spill
	jmp	.LBB33_9
.LBB33_8:                               # %cond.false.21
	movsd	-880(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -904(%rbp)       # 8-byte Spill
.LBB33_9:                               # %cond.end
	movsd	-904(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -896(%rbp)       # 8-byte Spill
.LBB33_10:                              # %cond.end.22
	movsd	-896(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI33_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -880(%rbp)
	movsd	%xmm1, -736(%rbp)
	movsd	%xmm1, -728(%rbp)
	movl	$0, -884(%rbp)
.LBB33_11:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$15, -884(%rbp)
	jg	.LBB33_17
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB33_11 Depth=1
	movsd	.LCPI33_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI33_2, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI33_0, %xmm2        # xmm2 = mem[0],zero
	mulsd	-736(%rbp), %xmm2
	movsd	%xmm2, -736(%rbp)
	mulsd	-728(%rbp), %xmm1
	mulsd	-728(%rbp), %xmm1
	subsd	-728(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-728(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-728(%rbp), %xmm0
	mulsd	-728(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	movsd	-880(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB33_14
# BB#13:                                # %if.then.31
                                        #   in Loop: Header=BB33_11 Depth=1
	movsd	-736(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-728(%rbp), %xmm0
	movsd	%xmm0, -728(%rbp)
	jmp	.LBB33_15
.LBB33_14:                              # %if.else
                                        #   in Loop: Header=BB33_11 Depth=1
	movsd	-736(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-728(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -728(%rbp)
.LBB33_15:                              # %if.end
                                        #   in Loop: Header=BB33_11 Depth=1
	jmp	.LBB33_16
.LBB33_16:                              # %for.inc
                                        #   in Loop: Header=BB33_11 Depth=1
	movl	-884(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -884(%rbp)
	jmp	.LBB33_11
.LBB33_17:                              # %for.end
	movsd	.LCPI33_1, %xmm0        # xmm0 = mem[0],zero
	leaq	-800(%rbp), %rsi
	movsd	-728(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm1, (%rax)
	movq	-16(%rbp), %rdi
	movsd	-880(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	-40(%rbp), %rdx
	callq	gimp_coords_mix
	leaq	-864(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_coords_difference
	leaq	-864(%rbp), %rdi
	callq	gimp_coords_length
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB33_21
.LBB33_18:                              # %if.end.36
	leaq	-576(%rbp), %rax
	movl	$64, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rdx, -912(%rbp)        # 8-byte Spill
	movq	%rax, -920(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-920(%rbp), %rax        # 8-byte Reload
	addq	$384, %rax              # imm = 0x180
	movq	-16(%rbp), %rdx
	addq	$192, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	-912(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$64, %rax
	movq	-920(%rbp), %rdx        # 8-byte Reload
	addq	$64, %rdx
	movq	%rax, %rsi
	callq	gimp_coords_average
	leaq	-576(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$64, %rdx
	movq	-16(%rbp), %rsi
	addq	$128, %rsi
	addq	$448, %rax              # imm = 0x1C0
	movq	%rdx, %rdi
	movq	%rax, %rdx
	callq	gimp_coords_average
	leaq	-576(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$128, %rdx
	movq	-16(%rbp), %rsi
	addq	$192, %rsi
	addq	$320, %rax              # imm = 0x140
	movq	%rdx, %rdi
	movq	%rax, %rdx
	callq	gimp_coords_average
	leaq	-576(%rbp), %rax
	movq	%rax, %rdx
	addq	$64, %rdx
	movq	%rax, %rsi
	addq	$448, %rsi              # imm = 0x1C0
	addq	$128, %rax
	movq	%rdx, %rdi
	movq	%rax, %rdx
	callq	gimp_coords_average
	leaq	-576(%rbp), %rax
	movq	%rax, %rdx
	addq	$448, %rdx              # imm = 0x1C0
	movq	%rax, %rsi
	addq	$320, %rsi              # imm = 0x140
	addq	$256, %rax              # imm = 0x100
	movq	%rdx, %rdi
	movq	%rax, %rdx
	callq	gimp_coords_average
	leaq	-576(%rbp), %rax
	movq	%rax, %rdx
	addq	$128, %rdx
	movq	%rax, %rsi
	addq	$256, %rsi              # imm = 0x100
	addq	$192, %rax
	movq	%rdx, %rdi
	movq	%rax, %rdx
	callq	gimp_coords_average
	leaq	-656(%rbp), %rdx
	leaq	-728(%rbp), %rcx
	leaq	-576(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-52(%rbp), %r8d
	subl	$1, %r8d
	callq	gimp_bezier_stroke_segment_nearest_point_get
	leaq	-720(%rbp), %rdx
	leaq	-736(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movsd	%xmm0, -584(%rbp)
	addq	$192, %rax
	movq	-24(%rbp), %rsi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-52(%rbp), %r8d
	subl	$1, %r8d
	movq	%rax, %rdi
	callq	gimp_bezier_stroke_segment_nearest_point_get
	movsd	%xmm0, -592(%rbp)
	movsd	-584(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-592(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB33_20
# BB#19:                                # %if.then.66
	movsd	.LCPI33_0, %xmm0        # xmm0 = mem[0],zero
	movl	$64, %eax
	movl	%eax, %edx
	leaq	-656(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movsd	%xmm0, -928(%rbp)       # 8-byte Spill
	callq	memcpy
	movsd	-928(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-728(%rbp), %xmm0
	movq	-48(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	movsd	-584(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB33_21
.LBB33_20:                              # %if.else.68
	movsd	.LCPI33_0, %xmm0        # xmm0 = mem[0],zero
	movl	$64, %eax
	movl	%eax, %edx
	leaq	-720(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movsd	%xmm0, -936(%rbp)       # 8-byte Spill
	callq	memcpy
	movsd	-936(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-736(%rbp), %xmm0
	movsd	-936(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movq	-48(%rbp), %rcx
	movsd	%xmm1, (%rcx)
	movsd	-592(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB33_21:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$1200, %rsp             # imm = 0x4B0
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_bezier_stroke_segment_nearest_point_get, .Lfunc_end33-gimp_bezier_stroke_segment_nearest_point_get
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI34_0:
	.quad	-4616189618054758400    # double -1
.LCPI34_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_bezier_stroke_segment_nearest_tangent_get,@function
gimp_bezier_stroke_segment_nearest_tangent_get: # @gimp_bezier_stroke_segment_nearest_tangent_get
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp110:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$696, %rsp              # imm = 0x2B8
.Ltmp111:
	.cfi_offset %rbx, -24
	leaq	-208(%rbp), %rax
	movsd	.LCPI34_0, %xmm1        # xmm1 = mem[0],zero
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movsd	%xmm1, -344(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	%rax, %rdx
	callq	gimp_coords_difference
	xorl	%r9d, %r9d
	movl	$64, %edx
	movl	%r9d, %edi
	movl	%r9d, %esi
	callq	g_array_new
	xorl	%edx, %edx
	movl	$8, %esi
	movq	%rax, -72(%rbp)
	movl	%edx, %edi
	movl	%esi, -392(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-392(%rbp), %edx        # 4-byte Reload
	callq	g_array_new
	movabsq	$.L.str.16, %rdi
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm2           # xmm2 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	8(%rax), %xmm3          # xmm3 = mem[0],zero
	movb	$4, %al
	callq	g_printerr
	leaq	-72(%rbp), %rcx
	leaq	-80(%rbp), %rdi
	movq	-24(%rbp), %r8
	movq	-24(%rbp), %r10
	addq	$64, %r10
	movq	-24(%rbp), %r11
	addq	$128, %r11
	movq	-24(%rbp), %rbx
	addq	$192, %rbx
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movups	(%rbx), %xmm1
	movups	16(%rbx), %xmm2
	movups	32(%rbx), %xmm3
	movups	48(%rbx), %xmm4
	movq	%rsp, %rbx
	movups	%xmm4, 240(%rbx)
	movups	%xmm3, 224(%rbx)
	movups	%xmm2, 208(%rbx)
	movups	%xmm1, 192(%rbx)
	movups	(%r11), %xmm1
	movups	16(%r11), %xmm2
	movups	32(%r11), %xmm3
	movups	48(%r11), %xmm4
	movups	%xmm4, 176(%rbx)
	movups	%xmm3, 160(%rbx)
	movups	%xmm2, 144(%rbx)
	movups	%xmm1, 128(%rbx)
	movups	(%r10), %xmm1
	movups	16(%r10), %xmm2
	movups	32(%r10), %xmm3
	movups	48(%r10), %xmm4
	movups	%xmm4, 112(%rbx)
	movups	%xmm3, 96(%rbx)
	movups	%xmm2, 80(%rbx)
	movups	%xmm1, 64(%rbx)
	movups	(%r8), %xmm1
	movups	16(%r8), %xmm2
	movups	32(%r8), %xmm3
	movups	48(%r8), %xmm4
	movups	%xmm4, 48(%rbx)
	movups	%xmm3, 32(%rbx)
	movups	%xmm2, 16(%rbx)
	movups	%xmm1, (%rbx)
	leaq	-72(%rbp), %r8
	leaq	-80(%rbp), %rsi
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	callq	gimp_coords_interpolate_bezier
# BB#1:                                 # %do.body
	movq	-72(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-80(%rbp), %rax
	cmpl	8(%rax), %ecx
	jne	.LBB34_3
# BB#2:                                 # %if.then
	jmp	.LBB34_4
.LBB34_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_bezier_stroke_segment_nearest_tangent_get, %rsi
	movabsq	$.L.str.17, %rdx
	callq	g_return_if_fail_warning
	movsd	.LCPI34_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	jmp	.LBB34_23
.LBB34_4:                               # %if.end
	jmp	.LBB34_5
.LBB34_5:                               # %do.end
	movq	-72(%rbp), %rax
	cmpl	$2, 8(%rax)
	jae	.LBB34_7
# BB#6:                                 # %if.then.10
	movsd	.LCPI34_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	jmp	.LBB34_23
.LBB34_7:                               # %if.end.11
	leaq	-144(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	addq	$64, %rax
	movq	-72(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_coords_difference
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-200(%rbp), %xmm0
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-208(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -376(%rbp)
	movl	$2, -388(%rbp)
.LBB34_8:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-388(%rbp), %eax
	movq	-72(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB34_19
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB34_8 Depth=1
	leaq	-144(%rbp), %rdx
	movslq	-388(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	(%rcx), %rcx
	shlq	$6, %rax
	addq	%rax, %rcx
	movl	-388(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rax
	movq	-72(%rbp), %rdi
	movq	(%rdi), %rdi
	shlq	$6, %rax
	addq	%rax, %rdi
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-416(%rbp), %rsi        # 8-byte Reload
	callq	gimp_coords_difference
	xorps	%xmm0, %xmm0
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-200(%rbp), %xmm1
	movsd	-136(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-208(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, -384(%rbp)
	movsd	-376(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-384(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB34_17
# BB#10:                                # %if.then.37
                                        #   in Loop: Header=BB34_8 Depth=1
	leaq	-272(%rbp), %rdx
	movslq	-388(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	(%rcx), %rcx
	shlq	$6, %rax
	addq	%rax, %rcx
	movq	-32(%rbp), %rsi
	movq	%rcx, %rdi
	callq	gimp_coords_difference
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_coords_scalarprod
	leaq	-208(%rbp), %rdi
	leaq	-272(%rbp), %rsi
	movsd	%xmm0, -360(%rbp)
	callq	gimp_coords_scalarprod
	xorps	%xmm1, %xmm1
	divsd	-360(%rbp), %xmm0
	movsd	%xmm0, -368(%rbp)
	movsd	-368(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jb	.LBB34_16
# BB#11:                                # %land.lhs.true
                                        #   in Loop: Header=BB34_8 Depth=1
	movsd	.LCPI34_1, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-368(%rbp), %xmm0
	jb	.LBB34_16
# BB#12:                                # %if.then.45
                                        #   in Loop: Header=BB34_8 Depth=1
	movsd	.LCPI34_1, %xmm0        # xmm0 = mem[0],zero
	leaq	-208(%rbp), %rsi
	leaq	-336(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movsd	-368(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_coords_mix
	leaq	-336(%rbp), %rdi
	leaq	-272(%rbp), %rdx
	movslq	-388(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	shlq	$6, %rsi
	addq	%rsi, %rax
	movq	%rax, %rsi
	callq	gimp_coords_difference
	leaq	-272(%rbp), %rdi
	callq	gimp_coords_length
	movsd	%xmm0, -352(%rbp)
	movsd	-352(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-344(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB34_14
# BB#13:                                # %lor.lhs.false
                                        #   in Loop: Header=BB34_8 Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-344(%rbp), %xmm0
	jbe	.LBB34_15
.LBB34_14:                              # %if.then.52
                                        #   in Loop: Header=BB34_8 Depth=1
	movl	$64, %eax
	movl	%eax, %edx
	movsd	-352(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -344(%rbp)
	movq	-56(%rbp), %rcx
	movslq	-388(%rbp), %rsi
	movq	-72(%rbp), %rdi
	movq	(%rdi), %rdi
	shlq	$6, %rsi
	addq	%rsi, %rdi
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-424(%rbp), %rsi        # 8-byte Reload
	callq	memcpy
	movslq	-388(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	(%rdx), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-64(%rbp), %rcx
	movsd	%xmm0, (%rcx)
.LBB34_15:                              # %if.end.59
                                        #   in Loop: Header=BB34_8 Depth=1
	jmp	.LBB34_16
.LBB34_16:                              # %if.end.60
                                        #   in Loop: Header=BB34_8 Depth=1
	jmp	.LBB34_17
.LBB34_17:                              # %if.end.61
                                        #   in Loop: Header=BB34_8 Depth=1
	movsd	-384(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -376(%rbp)
# BB#18:                                # %for.inc
                                        #   in Loop: Header=BB34_8 Depth=1
	movl	-388(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -388(%rbp)
	jmp	.LBB34_8
.LBB34_19:                              # %for.end
	xorps	%xmm0, %xmm0
	ucomisd	-344(%rbp), %xmm0
	jbe	.LBB34_21
# BB#20:                                # %if.then.63
	movabsq	$.L.str.18, %rdi
	movb	$0, %al
	callq	g_printerr
	jmp	.LBB34_22
.LBB34_21:                              # %if.else.64
	movabsq	$.L.str.19, %rdi
	movsd	-344(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	8(%rax), %xmm2          # xmm2 = mem[0],zero
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm3           # xmm3 = mem[0],zero
	movb	$4, %al
	callq	g_printerr
.LBB34_22:                              # %if.end.67
	movl	$1, %esi
	movq	-72(%rbp), %rdi
	callq	g_array_free
	movl	$1, %esi
	movq	-80(%rbp), %rdi
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	g_array_free
	movsd	-344(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	movq	%rax, -440(%rbp)        # 8-byte Spill
.LBB34_23:                              # %return
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$696, %rsp              # imm = 0x2B8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_bezier_stroke_segment_nearest_tangent_get, .Lfunc_end34-gimp_bezier_stroke_segment_nearest_tangent_get
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_bezier_stroke_get_anchor_listitem,@function
gimp_bezier_stroke_get_anchor_listitem: # @gimp_bezier_stroke_get_anchor_listitem
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp112:
	.cfi_def_cfa_offset 16
.Ltmp113:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp114:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB35_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB35_12
.LBB35_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 64(%rax)
	jne	.LBB35_4
# BB#3:                                 # %if.then.1
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB35_12
.LBB35_4:                               # %if.end.2
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB35_7
# BB#5:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	cmpl	$0, 64(%rax)
	jne	.LBB35_7
# BB#6:                                 # %if.then.8
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB35_12
.LBB35_7:                               # %if.end.10
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB35_10
# BB#8:                                 # %land.lhs.true.12
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	cmpl	$0, 64(%rax)
	jne	.LBB35_10
# BB#9:                                 # %if.then.17
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB35_12
.LBB35_10:                              # %if.end.19
	jmp	.LBB35_11
.LBB35_11:                              # %do.body
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_bezier_stroke_get_anchor_listitem, %rsi
	movabsq	$.L.str.31, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
.LBB35_12:                              # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_bezier_stroke_get_anchor_listitem, .Lfunc_end35-gimp_bezier_stroke_get_anchor_listitem
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI36_0:
	.quad	4598175219545276416     # double 0.25
.LCPI36_1:
	.quad	4602678819172646912     # double 0.5
.LCPI36_2:
	.quad	4532020583610935537     # double 1.0000000000000001E-5
.LCPI36_3:
	.quad	4607182418800017408     # double 1
.LCPI36_4:
	.quad	4613937818241073152     # double 3
.LCPI36_5:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	arcto_circleparam,@function
arcto_circleparam:                      # @arcto_circleparam
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
	movsd	.LCPI36_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI36_1, %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
.LBB36_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movsd	.LCPI36_2, %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB36_9
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB36_1 Depth=1
	movsd	.LCPI36_3, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI36_4, %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm2           # xmm2 = mem[0],zero
	movaps	%xmm0, %xmm3
	subsd	-24(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	movaps	%xmm0, %xmm3
	subsd	-24(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	movaps	%xmm0, %xmm3
	subsd	-24(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	movq	-16(%rbp), %rax
	movaps	%xmm1, %xmm3
	mulsd	8(%rax), %xmm3
	movaps	%xmm0, %xmm4
	subsd	-24(%rbp), %xmm4
	mulsd	%xmm4, %xmm3
	movaps	%xmm0, %xmm4
	subsd	-24(%rbp), %xmm4
	mulsd	%xmm4, %xmm3
	mulsd	-24(%rbp), %xmm3
	addsd	%xmm3, %xmm2
	movq	-16(%rbp), %rax
	mulsd	16(%rax), %xmm1
	subsd	-24(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm1
	mulsd	-24(%rbp), %xmm1
	addsd	%xmm1, %xmm2
	movq	-16(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	mulsd	-24(%rbp), %xmm0
	mulsd	-24(%rbp), %xmm0
	mulsd	-24(%rbp), %xmm0
	addsd	%xmm0, %xmm2
	movsd	%xmm2, -40(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-8(%rbp), %xmm0
	jbe	.LBB36_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB36_1 Depth=1
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-32(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	jmp	.LBB36_8
.LBB36_4:                               # %if.else
                                        #   in Loop: Header=BB36_1 Depth=1
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB36_6
# BB#5:                                 # %if.then.27
                                        #   in Loop: Header=BB36_1 Depth=1
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-32(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	jmp	.LBB36_7
.LBB36_6:                               # %if.else.29
	jmp	.LBB36_9
.LBB36_7:                               # %if.end
                                        #   in Loop: Header=BB36_1 Depth=1
	jmp	.LBB36_8
.LBB36_8:                               # %if.end.30
                                        #   in Loop: Header=BB36_1 Depth=1
	movsd	.LCPI36_5, %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	jmp	.LBB36_1
.LBB36_9:                               # %while.end
	movsd	.LCPI36_3, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	subsd	-24(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm2          # xmm2 = mem[0],zero
	mulsd	-24(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -48(%rbp)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	subsd	-24(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movq	-16(%rbp), %rax
	movsd	16(%rax), %xmm2         # xmm2 = mem[0],zero
	mulsd	-24(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -56(%rbp)
	movq	-16(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	subsd	-24(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movq	-16(%rbp), %rax
	movsd	24(%rax), %xmm2         # xmm2 = mem[0],zero
	mulsd	-24(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -64(%rbp)
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	subsd	-24(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-24(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -72(%rbp)
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	subsd	-24(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-24(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -80(%rbp)
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-24(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-24(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -88(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end36:
	.size	arcto_circleparam, .Lfunc_end36-arcto_circleparam
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI37_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	arcto_subdivide,@function
arcto_subdivide:                        # @arcto_subdivide
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
	subq	$496, %rsp              # imm = 0x1F0
	leaq	-88(%rbp), %rdx
	movsd	.LCPI37_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	subsd	-8(%rbp), %xmm1
	movq	-24(%rbp), %rdi
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rsi
	addq	$64, %rsi
	movsd	%xmm0, -416(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-416(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_coords_mix
	leaq	-152(%rbp), %rdx
	movsd	.LCPI37_0, %xmm0        # xmm0 = mem[0],zero
	subsd	-8(%rbp), %xmm0
	movq	-24(%rbp), %rsi
	addq	$64, %rsi
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rdi
	addq	$128, %rdi
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-424(%rbp), %rsi        # 8-byte Reload
	callq	gimp_coords_mix
	leaq	-216(%rbp), %rdx
	movsd	.LCPI37_0, %xmm0        # xmm0 = mem[0],zero
	subsd	-8(%rbp), %xmm0
	movq	-24(%rbp), %rsi
	addq	$128, %rsi
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rdi
	addq	$192, %rdi
	movq	%rdi, -432(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-432(%rbp), %rsi        # 8-byte Reload
	callq	gimp_coords_mix
	leaq	-88(%rbp), %rdi
	leaq	-152(%rbp), %rsi
	leaq	-280(%rbp), %rdx
	movsd	.LCPI37_0, %xmm0        # xmm0 = mem[0],zero
	subsd	-8(%rbp), %xmm0
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	callq	gimp_coords_mix
	leaq	-152(%rbp), %rdi
	leaq	-216(%rbp), %rsi
	leaq	-344(%rbp), %rdx
	movsd	.LCPI37_0, %xmm0        # xmm0 = mem[0],zero
	subsd	-8(%rbp), %xmm0
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	callq	gimp_coords_mix
	leaq	-280(%rbp), %rdi
	leaq	-344(%rbp), %rsi
	leaq	-408(%rbp), %rdx
	movsd	.LCPI37_0, %xmm0        # xmm0 = mem[0],zero
	subsd	-8(%rbp), %xmm0
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	callq	gimp_coords_mix
	cmpl	$0, -12(%rbp)
	jne	.LBB37_2
# BB#1:                                 # %if.then
	movl	$64, %eax
	movl	%eax, %ecx
	leaq	-408(%rbp), %rdx
	leaq	-280(%rbp), %rsi
	leaq	-88(%rbp), %rdi
	movq	-24(%rbp), %r8
	addq	$64, %r8
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-440(%rbp), %r8         # 8-byte Reload
	movq	%rsi, -448(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	%rdx, -456(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-24(%rbp), %rcx
	addq	$128, %rcx
	movq	-448(%rbp), %rdx        # 8-byte Reload
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	-464(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movq	-24(%rbp), %rcx
	addq	$192, %rcx
	movq	-456(%rbp), %rdx        # 8-byte Reload
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	-464(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	jmp	.LBB37_3
.LBB37_2:                               # %if.else
	movl	$64, %eax
	movl	%eax, %ecx
	leaq	-216(%rbp), %rdx
	leaq	-344(%rbp), %rsi
	leaq	-408(%rbp), %rdi
	movq	-24(%rbp), %r8
	movq	%rdi, -472(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-472(%rbp), %r8         # 8-byte Reload
	movq	%rsi, -480(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	%rdx, -488(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	%rcx, -496(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-24(%rbp), %rcx
	addq	$64, %rcx
	movq	-480(%rbp), %rdx        # 8-byte Reload
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	-496(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movq	-24(%rbp), %rcx
	addq	$128, %rcx
	movq	-488(%rbp), %rdx        # 8-byte Reload
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	-496(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
.LBB37_3:                               # %if.end
	addq	$496, %rsp              # imm = 0x1F0
	popq	%rbp
	retq
.Lfunc_end37:
	.size	arcto_subdivide, .Lfunc_end37-arcto_subdivide
	.cfi_endproc

	.type	gimp_bezier_stroke_get_type.g_define_type_id__volatile,@object # @gimp_bezier_stroke_get_type.g_define_type_id__volatile
	.local	gimp_bezier_stroke_get_type.g_define_type_id__volatile
	.comm	gimp_bezier_stroke_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpBezierStroke"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Vectors"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_bezier_stroke_new_from_coords,@object # @__func__.gimp_bezier_stroke_new_from_coords
.L__func__.gimp_bezier_stroke_new_from_coords:
	.asciz	"gimp_bezier_stroke_new_from_coords"
	.size	.L__func__.gimp_bezier_stroke_new_from_coords, 35

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"coords != NULL"
	.size	.L.str.2, 15

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"n_coords >= 3"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"(n_coords % 3) == 0"
	.size	.L.str.4, 20

	.type	.L__func__.gimp_bezier_stroke_extend,@object # @__func__.gimp_bezier_stroke_extend
.L__func__.gimp_bezier_stroke_extend:
	.asciz	"gimp_bezier_stroke_extend"
	.size	.L__func__.gimp_bezier_stroke_extend, 26

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"neighbor == NULL"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"neighbor != NULL"
	.size	.L.str.6, 17

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"inconsistent bezier curve: %d successive control handles"
	.size	.L.str.7, 57

	.type	.L__func__.gimp_bezier_stroke_lineto,@object # @__func__.gimp_bezier_stroke_lineto
.L__func__.gimp_bezier_stroke_lineto:
	.asciz	"gimp_bezier_stroke_lineto"
	.size	.L__func__.gimp_bezier_stroke_lineto, 26

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_IS_BEZIER_STROKE (stroke)"
	.size	.L.str.8, 31

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"stroke->closed == FALSE"
	.size	.L.str.9, 24

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"stroke->anchors != NULL"
	.size	.L.str.10, 24

	.type	.L__func__.gimp_bezier_stroke_conicto,@object # @__func__.gimp_bezier_stroke_conicto
.L__func__.gimp_bezier_stroke_conicto:
	.asciz	"gimp_bezier_stroke_conicto"
	.size	.L__func__.gimp_bezier_stroke_conicto, 27

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"stroke->anchors->next != NULL"
	.size	.L.str.11, 30

	.type	.L__func__.gimp_bezier_stroke_cubicto,@object # @__func__.gimp_bezier_stroke_cubicto
.L__func__.gimp_bezier_stroke_cubicto:
	.asciz	"gimp_bezier_stroke_cubicto"
	.size	.L__func__.gimp_bezier_stroke_cubicto, 27

	.type	.L__func__.gimp_bezier_stroke_arcto,@object # @__func__.gimp_bezier_stroke_arcto
.L__func__.gimp_bezier_stroke_arcto:
	.asciz	"gimp_bezier_stroke_arcto"
	.size	.L__func__.gimp_bezier_stroke_arcto, 25

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"GIMP_IS_BEZIER_STROKE (bez_stroke)"
	.size	.L.str.12, 35

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"bez_stroke->closed == FALSE"
	.size	.L.str.13, 28

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"bez_stroke->anchors != NULL"
	.size	.L.str.14, 28

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"bez_stroke->anchors->next != NULL"
	.size	.L.str.15, 34

	.type	gimp_bezier_stroke_parent_class,@object # @gimp_bezier_stroke_parent_class
	.local	gimp_bezier_stroke_parent_class
	.comm	gimp_bezier_stroke_parent_class,8,8
	.type	GimpBezierStroke_private_offset,@object # @GimpBezierStroke_private_offset
	.local	GimpBezierStroke_private_offset
	.comm	GimpBezierStroke_private_offset,4,4
	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"(%.2f, %.2f)-(%.2f,%.2f): "
	.size	.L.str.16, 27

	.type	.L__func__.gimp_bezier_stroke_segment_nearest_tangent_get,@object # @__func__.gimp_bezier_stroke_segment_nearest_tangent_get
.L__func__.gimp_bezier_stroke_segment_nearest_tangent_get:
	.asciz	"gimp_bezier_stroke_segment_nearest_tangent_get"
	.size	.L__func__.gimp_bezier_stroke_segment_nearest_tangent_get, 47

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"ret_coords->len == ret_params->len"
	.size	.L.str.17, 35

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"-\n"
	.size	.L.str.18, 3

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"%f: (%.2f, %.2f) /%.3f/\n"
	.size	.L.str.19, 25

	.type	.L__func__.gimp_bezier_stroke_anchor_move_relative,@object # @__func__.gimp_bezier_stroke_anchor_move_relative
.L__func__.gimp_bezier_stroke_anchor_move_relative:
	.asciz	"gimp_bezier_stroke_anchor_move_relative"
	.size	.L__func__.gimp_bezier_stroke_anchor_move_relative, 40

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"anchor_list != NULL"
	.size	.L.str.20, 20

	.type	.L__func__.gimp_bezier_stroke_anchor_convert,@object # @__func__.gimp_bezier_stroke_anchor_convert
.L__func__.gimp_bezier_stroke_anchor_convert:
	.asciz	"gimp_bezier_stroke_anchor_convert"
	.size	.L__func__.gimp_bezier_stroke_anchor_convert, 34

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp_bezier_stroke_anchor_convert: unimplemented anchor conversion %d\n"
	.size	.L.str.21, 71

	.type	.L__func__.gimp_bezier_stroke_anchor_delete,@object # @__func__.gimp_bezier_stroke_anchor_delete
.L__func__.gimp_bezier_stroke_anchor_delete:
	.asciz	"gimp_bezier_stroke_anchor_delete"
	.size	.L__func__.gimp_bezier_stroke_anchor_delete, 33

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"list != NULL"
	.size	.L.str.22, 13

	.type	.L__func__.gimp_bezier_stroke_point_move_relative,@object # @__func__.gimp_bezier_stroke_point_move_relative
.L__func__.gimp_bezier_stroke_point_move_relative:
	.asciz	"gimp_bezier_stroke_point_move_relative"
	.size	.L__func__.gimp_bezier_stroke_point_move_relative, 39

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"segment_start != NULL"
	.size	.L.str.23, 22

	.type	.L__func__.gimp_bezier_stroke_point_move_absolute,@object # @__func__.gimp_bezier_stroke_point_move_absolute
.L__func__.gimp_bezier_stroke_point_move_absolute:
	.asciz	"gimp_bezier_stroke_point_move_absolute"
	.size	.L__func__.gimp_bezier_stroke_point_move_absolute, 39

	.type	.L__func__.gimp_bezier_stroke_close,@object # @__func__.gimp_bezier_stroke_close
.L__func__.gimp_bezier_stroke_close:
	.asciz	"gimp_bezier_stroke_close"
	.size	.L__func__.gimp_bezier_stroke_close, 25

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"start->next != NULL && end->prev != NULL"
	.size	.L.str.24, 41

	.type	.L__func__.gimp_bezier_stroke_open,@object # @__func__.gimp_bezier_stroke_open
.L__func__.gimp_bezier_stroke_open:
	.asciz	"gimp_bezier_stroke_open"
	.size	.L__func__.gimp_bezier_stroke_open, 24

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"list != NULL && list->next != NULL"
	.size	.L.str.25, 35

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"closed"
	.size	.L.str.26, 7

	.type	.L__func__.gimp_bezier_stroke_is_extendable,@object # @__func__.gimp_bezier_stroke_is_extendable
.L__func__.gimp_bezier_stroke_is_extendable:
	.asciz	"gimp_bezier_stroke_is_extendable"
	.size	.L__func__.gimp_bezier_stroke_is_extendable, 33

	.type	.L__func__.gimp_bezier_stroke_connect_stroke,@object # @__func__.gimp_bezier_stroke_connect_stroke
.L__func__.gimp_bezier_stroke_connect_stroke:
	.asciz	"gimp_bezier_stroke_connect_stroke"
	.size	.L__func__.gimp_bezier_stroke_connect_stroke, 34

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"list1 != NULL && list2 != NULL"
	.size	.L.str.27, 31

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"(list1->prev && list1->prev->prev == NULL && list2->next && list2->next->next == NULL) || (list1->next && list1->next->next == NULL && list2->prev && list2->prev->prev == NULL)"
	.size	.L.str.28, 177

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"list1->next && list1->next->next == NULL"
	.size	.L.str.29, 41

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"list2->prev && list2->prev->prev == NULL"
	.size	.L.str.30, 41

	.type	.L__func__.gimp_bezier_stroke_get_anchor_listitem,@object # @__func__.gimp_bezier_stroke_get_anchor_listitem
.L__func__.gimp_bezier_stroke_get_anchor_listitem:
	.asciz	"gimp_bezier_stroke_get_anchor_listitem"
	.size	.L__func__.gimp_bezier_stroke_get_anchor_listitem, 39

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"FALSE"
	.size	.L.str.31, 6

	.type	.L__func__.gimp_bezier_stroke_make_bezier,@object # @__func__.gimp_bezier_stroke_make_bezier
.L__func__.gimp_bezier_stroke_make_bezier:
	.asciz	"gimp_bezier_stroke_make_bezier"
	.size	.L__func__.gimp_bezier_stroke_make_bezier, 31

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"points && points->len % 3 == 0"
	.size	.L.str.32, 31

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"miscalculated path cmd length! (%d vs. %d)\n"
	.size	.L.str.33, 44

	.type	arcto_ellipsesegment.template,@object # @arcto_ellipsesegment.template
	.section	.rodata,"a",@progbits
	.align	8
arcto_ellipsesegment.template:
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4602678819172646912     # double 0.5
	.quad	0                       # double 0
	.quad	0                       # double 0
	.size	arcto_ellipsesegment.template, 64

	.type	.L__func__.arcto_ellipsesegment,@object # @__func__.arcto_ellipsesegment
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.arcto_ellipsesegment:
	.asciz	"arcto_ellipsesegment"
	.size	.L__func__.arcto_ellipsesegment, 21

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"ellips != NULL"
	.size	.L.str.34, 15


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
