	.text
	.file	"xcf-save.bc"
	.globl	xcf_save_choose_format
	.align	16, 0x90
	.type	xcf_save_choose_format,@function
xcf_save_choose_format:                 # @xcf_save_choose_format
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_colormap
	cmpq	$0, %rax
	je	.LBB0_2
# BB#1:                                 # %if.then
	movl	$1, -28(%rbp)
.LBB0_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_layer_iter
	movq	%rax, -24(%rbp)
.LBB0_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -24(%rbp)
	movb	%cl, -41(%rbp)          # 1-byte Spill
	je	.LBB0_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$3, -28(%rbp)
	setl	%al
	movb	%al, -41(%rbp)          # 1-byte Spill
.LBB0_5:                                # %land.end
                                        #   in Loop: Header=BB0_3 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_6
	jmp	.LBB0_22
.LBB0_6:                                # %for.body
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	%rax, %rdi
	callq	gimp_layer_get_mode
	addl	$-19, %eax
	subl	$3, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	ja	.LBB0_11
	jmp	.LBB0_7
.LBB0_7:                                # %sw.bb
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$2, %eax
	cmpl	-28(%rbp), %eax
	jle	.LBB0_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$2, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB0_10
.LBB0_9:                                # %cond.false
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB0_10:                               # %cond.end
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	%eax, -28(%rbp)
	jmp	.LBB0_12
.LBB0_11:                               # %sw.default
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_12
.LBB0_12:                               # %sw.epilog
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	je	.LBB0_17
# BB#13:                                # %if.then.11
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$3, %eax
	cmpl	-28(%rbp), %eax
	jle	.LBB0_15
# BB#14:                                # %cond.true.13
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$3, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB0_16
.LBB0_15:                               # %cond.false.14
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB0_16:                               # %cond.end.15
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -28(%rbp)
.LBB0_17:                               # %if.end.17
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_18
.LBB0_18:                               # %for.inc
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB0_20
# BB#19:                                # %cond.true.19
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB0_21
.LBB0_20:                               # %cond.false.20
                                        #   in Loop: Header=BB0_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB0_21
.LBB0_21:                               # %cond.end.21
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB0_3
.LBB0_22:                               # %for.end
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 100(%rcx)
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	xcf_save_choose_format, .Lfunc_end0-xcf_save_choose_format
	.cfi_endproc

	.globl	xcf_save_image
	.align	16, 0x90
	.type	xcf_save_image,@function
xcf_save_image:                         # @xcf_save_image
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
	subq	$192, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, -80(%rbp)
	movq	$0, -136(%rbp)
	movq	-16(%rbp), %rdx
	cmpl	$0, 100(%rdx)
	jle	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rsi
	leaq	-128(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	100(%rax), %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jmp	.LBB1_3
.LBB1_2:                                # %if.else
	leaq	-128(%rbp), %rdi
	movl	$.L.str.1, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB1_3:                                # %if.end
	jmp	.LBB1_4
.LBB1_4:                                # %do.body
	movl	$14, %edx
	leaq	-136(%rbp), %rcx
	leaq	-128(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int8
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -136(%rbp)
	je	.LBB1_6
# BB#5:                                 # %if.then.6
	movq	-32(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB1_88
.LBB1_6:                                # %if.end.7
	jmp	.LBB1_7
.LBB1_7:                                # %do.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_width
	movl	%eax, -68(%rbp)
# BB#8:                                 # %do.body.9
	leaq	-68(%rbp), %rsi
	movl	$1, %edx
	leaq	-136(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -136(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.15
	movq	-32(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB1_88
.LBB1_10:                               # %if.end.16
	jmp	.LBB1_11
.LBB1_11:                               # %do.end.17
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_height
	movl	%eax, -68(%rbp)
# BB#12:                                # %do.body.19
	leaq	-68(%rbp), %rsi
	movl	$1, %edx
	leaq	-136(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -136(%rbp)
	je	.LBB1_14
# BB#13:                                # %if.then.25
	movq	-32(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB1_88
.LBB1_14:                               # %if.end.26
	jmp	.LBB1_15
.LBB1_15:                               # %do.end.27
	movq	-24(%rbp), %rdi
	callq	gimp_image_base_type
	movl	%eax, -68(%rbp)
# BB#16:                                # %do.body.29
	leaq	-68(%rbp), %rsi
	movl	$1, %edx
	leaq	-136(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -136(%rbp)
	je	.LBB1_18
# BB#17:                                # %if.then.35
	movq	-32(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB1_88
.LBB1_18:                               # %if.end.36
	jmp	.LBB1_19
.LBB1_19:                               # %do.end.37
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_layer_list
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_channel_list
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_mask
	leaq	-88(%rbp), %rsi
	leaq	-92(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	leaq	-100(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_channel_bounds
	cmpl	$0, %eax
	je	.LBB1_21
# BB#20:                                # %if.then.43
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_image_get_mask
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_append
	movq	%rax, -48(%rbp)
.LBB1_21:                               # %if.end.46
	movq	-40(%rbp), %rdi
	callq	g_list_length
	movl	%eax, -72(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_list_length
	movl	%eax, -76(%rbp)
	movl	-72(%rbp), %eax
	addl	$1, %eax
	addl	-76(%rbp), %eax
	movl	%eax, -84(%rbp)
# BB#22:                                # %do.body.51
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	xcf_save_image_props
	cmpl	$0, %eax
	jne	.LBB1_24
# BB#23:                                # %if.then.54
	movl	$0, -4(%rbp)
	jmp	.LBB1_88
.LBB1_24:                               # %if.end.55
	jmp	.LBB1_25
.LBB1_25:                               # %do.end.56
	jmp	.LBB1_26
.LBB1_26:                               # %do.body.57
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	movq	-16(%rbp), %rcx
	cmpq	$0, 8(%rcx)
	je	.LBB1_28
# BB#27:                                # %if.then.60
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	-80(%rbp), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm0
	movl	-84(%rbp), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_set_value
.LBB1_28:                               # %if.end.63
	jmp	.LBB1_29
.LBB1_29:                               # %do.end.64
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -60(%rbp)
# BB#30:                                # %do.body.66
	leaq	-136(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movl	-72(%rbp), %ecx
	addl	-76(%rbp), %ecx
	addl	$2, %ecx
	movl	%ecx, %esi
	callq	xcf_write_zero_int32
	movq	-16(%rbp), %rdx
	addl	24(%rdx), %eax
	movl	%eax, 24(%rdx)
	cmpq	$0, -136(%rbp)
	je	.LBB1_32
# BB#31:                                # %if.then.74
	movq	-32(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB1_88
.LBB1_32:                               # %if.end.75
	jmp	.LBB1_33
.LBB1_33:                               # %do.end.76
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB1_34:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB1_60
# BB#35:                                # %for.body
                                        #   in Loop: Header=BB1_34 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
# BB#36:                                # %do.body.79
                                        #   in Loop: Header=BB1_34 Depth=1
	movq	-16(%rbp), %rdi
	movl	-60(%rbp), %esi
	movq	-32(%rbp), %rdx
	callq	xcf_seek_pos
	cmpl	$0, %eax
	jne	.LBB1_38
# BB#37:                                # %if.then.82
	movl	$0, -4(%rbp)
	jmp	.LBB1_88
.LBB1_38:                               # %if.end.83
                                        #   in Loop: Header=BB1_34 Depth=1
	jmp	.LBB1_39
.LBB1_39:                               # %do.end.84
                                        #   in Loop: Header=BB1_34 Depth=1
	jmp	.LBB1_40
.LBB1_40:                               # %do.body.85
                                        #   in Loop: Header=BB1_34 Depth=1
	leaq	-64(%rbp), %rsi
	movl	$1, %edx
	leaq	-136(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -136(%rbp)
	je	.LBB1_42
# BB#41:                                # %if.then.91
	movq	-32(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB1_88
.LBB1_42:                               # %if.end.92
                                        #   in Loop: Header=BB1_34 Depth=1
	jmp	.LBB1_43
.LBB1_43:                               # %do.end.93
                                        #   in Loop: Header=BB1_34 Depth=1
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -60(%rbp)
# BB#44:                                # %do.body.95
                                        #   in Loop: Header=BB1_34 Depth=1
	movq	-16(%rbp), %rdi
	movl	-64(%rbp), %esi
	movq	-32(%rbp), %rdx
	callq	xcf_seek_pos
	cmpl	$0, %eax
	jne	.LBB1_46
# BB#45:                                # %if.then.98
	movl	$0, -4(%rbp)
	jmp	.LBB1_88
.LBB1_46:                               # %if.end.99
                                        #   in Loop: Header=BB1_34 Depth=1
	jmp	.LBB1_47
.LBB1_47:                               # %do.end.100
                                        #   in Loop: Header=BB1_34 Depth=1
	jmp	.LBB1_48
.LBB1_48:                               # %do.body.101
                                        #   in Loop: Header=BB1_34 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-144(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	xcf_save_layer
	cmpl	$0, %eax
	jne	.LBB1_50
# BB#49:                                # %if.then.104
	movl	$0, -4(%rbp)
	jmp	.LBB1_88
.LBB1_50:                               # %if.end.105
                                        #   in Loop: Header=BB1_34 Depth=1
	jmp	.LBB1_51
.LBB1_51:                               # %do.end.106
                                        #   in Loop: Header=BB1_34 Depth=1
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -64(%rbp)
# BB#52:                                # %do.body.108
                                        #   in Loop: Header=BB1_34 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	movq	-16(%rbp), %rcx
	cmpq	$0, 8(%rcx)
	je	.LBB1_54
# BB#53:                                # %if.then.112
                                        #   in Loop: Header=BB1_34 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	-80(%rbp), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm0
	movl	-84(%rbp), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_set_value
.LBB1_54:                               # %if.end.117
                                        #   in Loop: Header=BB1_34 Depth=1
	jmp	.LBB1_55
.LBB1_55:                               # %do.end.118
                                        #   in Loop: Header=BB1_34 Depth=1
	jmp	.LBB1_56
.LBB1_56:                               # %for.inc
                                        #   in Loop: Header=BB1_34 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB1_58
# BB#57:                                # %cond.true
                                        #   in Loop: Header=BB1_34 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB1_59
.LBB1_58:                               # %cond.false
                                        #   in Loop: Header=BB1_34 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB1_59
.LBB1_59:                               # %cond.end
                                        #   in Loop: Header=BB1_34 Depth=1
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	jmp	.LBB1_34
.LBB1_60:                               # %for.end
	movl	-60(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -60(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, -56(%rbp)
.LBB1_61:                               # %for.cond.121
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB1_87
# BB#62:                                # %for.body.123
                                        #   in Loop: Header=BB1_61 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
# BB#63:                                # %do.body.125
                                        #   in Loop: Header=BB1_61 Depth=1
	movq	-16(%rbp), %rdi
	movl	-60(%rbp), %esi
	movq	-32(%rbp), %rdx
	callq	xcf_seek_pos
	cmpl	$0, %eax
	jne	.LBB1_65
# BB#64:                                # %if.then.128
	movl	$0, -4(%rbp)
	jmp	.LBB1_88
.LBB1_65:                               # %if.end.129
                                        #   in Loop: Header=BB1_61 Depth=1
	jmp	.LBB1_66
.LBB1_66:                               # %do.end.130
                                        #   in Loop: Header=BB1_61 Depth=1
	jmp	.LBB1_67
.LBB1_67:                               # %do.body.131
                                        #   in Loop: Header=BB1_61 Depth=1
	leaq	-64(%rbp), %rsi
	movl	$1, %edx
	leaq	-136(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -136(%rbp)
	je	.LBB1_69
# BB#68:                                # %if.then.137
	movq	-32(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB1_88
.LBB1_69:                               # %if.end.138
                                        #   in Loop: Header=BB1_61 Depth=1
	jmp	.LBB1_70
.LBB1_70:                               # %do.end.139
                                        #   in Loop: Header=BB1_61 Depth=1
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -60(%rbp)
# BB#71:                                # %do.body.141
                                        #   in Loop: Header=BB1_61 Depth=1
	movq	-16(%rbp), %rdi
	movl	-64(%rbp), %esi
	movq	-32(%rbp), %rdx
	callq	xcf_seek_pos
	cmpl	$0, %eax
	jne	.LBB1_73
# BB#72:                                # %if.then.144
	movl	$0, -4(%rbp)
	jmp	.LBB1_88
.LBB1_73:                               # %if.end.145
                                        #   in Loop: Header=BB1_61 Depth=1
	jmp	.LBB1_74
.LBB1_74:                               # %do.end.146
                                        #   in Loop: Header=BB1_61 Depth=1
	jmp	.LBB1_75
.LBB1_75:                               # %do.body.147
                                        #   in Loop: Header=BB1_61 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-152(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	xcf_save_channel
	cmpl	$0, %eax
	jne	.LBB1_77
# BB#76:                                # %if.then.150
	movl	$0, -4(%rbp)
	jmp	.LBB1_88
.LBB1_77:                               # %if.end.151
                                        #   in Loop: Header=BB1_61 Depth=1
	jmp	.LBB1_78
.LBB1_78:                               # %do.end.152
                                        #   in Loop: Header=BB1_61 Depth=1
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -64(%rbp)
# BB#79:                                # %do.body.154
                                        #   in Loop: Header=BB1_61 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	movq	-16(%rbp), %rcx
	cmpq	$0, 8(%rcx)
	je	.LBB1_81
# BB#80:                                # %if.then.158
                                        #   in Loop: Header=BB1_61 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	-80(%rbp), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm0
	movl	-84(%rbp), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_set_value
.LBB1_81:                               # %if.end.163
                                        #   in Loop: Header=BB1_61 Depth=1
	jmp	.LBB1_82
.LBB1_82:                               # %do.end.164
                                        #   in Loop: Header=BB1_61 Depth=1
	jmp	.LBB1_83
.LBB1_83:                               # %for.inc.165
                                        #   in Loop: Header=BB1_61 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB1_85
# BB#84:                                # %cond.true.167
                                        #   in Loop: Header=BB1_61 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB1_86
.LBB1_85:                               # %cond.false.169
                                        #   in Loop: Header=BB1_61 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB1_86
.LBB1_86:                               # %cond.end.170
                                        #   in Loop: Header=BB1_61 Depth=1
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	jmp	.LBB1_61
.LBB1_87:                               # %for.end.172
	movq	-40(%rbp), %rdi
	callq	g_list_free
	movq	-48(%rbp), %rdi
	callq	g_list_free
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	ferror
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -4(%rbp)
.LBB1_88:                               # %return
	movl	-4(%rbp), %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	xcf_save_image, .Lfunc_end1-xcf_save_image
	.cfi_endproc

	.align	16, 0x90
	.type	xcf_save_image_props,@function
xcf_save_image_props:                   # @xcf_save_image_props
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
	subq	$208, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_unit
	leaq	-64(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movl	%eax, -52(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_resolution
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_colormap
	cmpq	$0, %rax
	je	.LBB2_6
# BB#1:                                 # %if.then
	jmp	.LBB2_2
.LBB2_2:                                # %do.body
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gimp_image_get_colormap_size
	movq	-24(%rbp), %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	gimp_image_get_colormap
	movl	$1, %edx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movl	-116(%rbp), %r8d        # 4-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB2_4
# BB#3:                                 # %if.then.8
	movl	$0, -4(%rbp)
	jmp	.LBB2_72
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	jmp	.LBB2_6
.LBB2_6:                                # %if.end.9
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	je	.LBB2_12
# BB#7:                                 # %if.then.10
	jmp	.LBB2_8
.LBB2_8:                                # %do.body.11
	movl	$17, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	96(%rax), %r8d
	movb	$0, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB2_10
# BB#9:                                 # %if.then.15
	movl	$0, -4(%rbp)
	jmp	.LBB2_72
.LBB2_10:                               # %if.end.16
	jmp	.LBB2_11
.LBB2_11:                               # %do.end.17
	jmp	.LBB2_12
.LBB2_12:                               # %if.end.18
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_guides
	cmpq	$0, %rax
	je	.LBB2_18
# BB#13:                                # %if.then.21
	jmp	.LBB2_14
.LBB2_14:                               # %do.body.22
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	gimp_image_get_guides
	movl	$18, %edx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB2_16
# BB#15:                                # %if.then.26
	movl	$0, -4(%rbp)
	jmp	.LBB2_72
.LBB2_16:                               # %if.end.27
	jmp	.LBB2_17
.LBB2_17:                               # %do.end.28
	jmp	.LBB2_18
.LBB2_18:                               # %if.end.29
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_sample_points
	cmpq	$0, %rax
	je	.LBB2_24
# BB#19:                                # %if.then.32
	jmp	.LBB2_20
.LBB2_20:                               # %do.body.33
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	callq	gimp_image_get_sample_points
	movl	$27, %edx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	-168(%rbp), %rsi        # 8-byte Reload
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB2_22
# BB#21:                                # %if.then.37
	movl	$0, -4(%rbp)
	jmp	.LBB2_72
.LBB2_22:                               # %if.end.38
	jmp	.LBB2_23
.LBB2_23:                               # %do.end.39
	jmp	.LBB2_24
.LBB2_24:                               # %if.end.40
	jmp	.LBB2_25
.LBB2_25:                               # %do.body.41
	movl	$19, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movb	$2, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB2_27
# BB#26:                                # %if.then.44
	movl	$0, -4(%rbp)
	jmp	.LBB2_72
.LBB2_27:                               # %if.end.45
	jmp	.LBB2_28
.LBB2_28:                               # %do.end.46
	jmp	.LBB2_29
.LBB2_29:                               # %do.body.47
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	callq	gimp_image_get_tattoo_state
	movl	$20, %edx
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	-192(%rbp), %rsi        # 8-byte Reload
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movl	%eax, %r8d
	movb	$0, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB2_31
# BB#30:                                # %if.then.51
	movl	$0, -4(%rbp)
	jmp	.LBB2_72
.LBB2_31:                               # %if.end.52
	jmp	.LBB2_32
.LBB2_32:                               # %do.end.53
	movl	-52(%rbp), %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	gimp_unit_get_number_of_built_in_units
	movl	-196(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jae	.LBB2_38
# BB#33:                                # %if.then.56
	jmp	.LBB2_34
.LBB2_34:                               # %do.body.57
	movl	$22, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movl	-52(%rbp), %r8d
	movb	$0, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB2_36
# BB#35:                                # %if.then.60
	movl	$0, -4(%rbp)
	jmp	.LBB2_72
.LBB2_36:                               # %if.end.61
	jmp	.LBB2_37
.LBB2_37:                               # %do.end.62
	jmp	.LBB2_38
.LBB2_38:                               # %if.end.63
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_vectors
	movq	%rax, %rdi
	callq	gimp_container_get_n_children
	cmpl	$0, %eax
	jle	.LBB2_51
# BB#39:                                # %if.then.67
	movq	-24(%rbp), %rdi
	callq	gimp_vectors_compat_is_compatible
	cmpl	$0, %eax
	je	.LBB2_45
# BB#40:                                # %if.then.70
	jmp	.LBB2_41
.LBB2_41:                               # %do.body.71
	movl	$23, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movb	$0, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB2_43
# BB#42:                                # %if.then.74
	movl	$0, -4(%rbp)
	jmp	.LBB2_72
.LBB2_43:                               # %if.end.75
	jmp	.LBB2_44
.LBB2_44:                               # %do.end.76
	jmp	.LBB2_50
.LBB2_45:                               # %if.else
	jmp	.LBB2_46
.LBB2_46:                               # %do.body.77
	movl	$25, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movb	$0, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB2_48
# BB#47:                                # %if.then.80
	movl	$0, -4(%rbp)
	jmp	.LBB2_72
.LBB2_48:                               # %if.end.81
	jmp	.LBB2_49
.LBB2_49:                               # %do.end.82
	jmp	.LBB2_50
.LBB2_50:                               # %if.end.83
	jmp	.LBB2_51
.LBB2_51:                               # %if.end.84
	movl	-52(%rbp), %eax
	movl	%eax, -200(%rbp)        # 4-byte Spill
	callq	gimp_unit_get_number_of_built_in_units
	movl	-200(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jb	.LBB2_57
# BB#52:                                # %if.then.87
	jmp	.LBB2_53
.LBB2_53:                               # %do.body.88
	movl	$24, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movl	-52(%rbp), %r8d
	movb	$0, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB2_55
# BB#54:                                # %if.then.91
	movl	$0, -4(%rbp)
	jmp	.LBB2_72
.LBB2_55:                               # %if.end.92
	jmp	.LBB2_56
.LBB2_56:                               # %do.end.93
	jmp	.LBB2_57
.LBB2_57:                               # %if.end.94
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_grid
	cmpq	$0, %rax
	je	.LBB2_59
# BB#58:                                # %if.then.97
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_grid
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	gimp_grid_to_parasite
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	240(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_parasite_list_add
.LBB2_59:                               # %if.end.100
	movq	-40(%rbp), %rax
	movq	240(%rax), %rdi
	callq	gimp_parasite_list_length
	cmpl	$0, %eax
	jle	.LBB2_65
# BB#60:                                # %if.then.104
	jmp	.LBB2_61
.LBB2_61:                               # %do.body.105
	movl	$21, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	240(%rax), %r8
	movb	$0, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB2_63
# BB#62:                                # %if.then.109
	movl	$0, -4(%rbp)
	jmp	.LBB2_72
.LBB2_63:                               # %if.end.110
	jmp	.LBB2_64
.LBB2_64:                               # %do.end.111
	jmp	.LBB2_65
.LBB2_65:                               # %if.end.112
	cmpq	$0, -48(%rbp)
	je	.LBB2_67
# BB#66:                                # %if.then.114
	movq	-40(%rbp), %rax
	movq	240(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_parasite_name
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_parasite_list_remove
	movq	-48(%rbp), %rdi
	callq	gimp_parasite_free
.LBB2_67:                               # %if.end.117
	jmp	.LBB2_68
.LBB2_68:                               # %do.body.118
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movb	$0, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB2_70
# BB#69:                                # %if.then.121
	movl	$0, -4(%rbp)
	jmp	.LBB2_72
.LBB2_70:                               # %if.end.122
	jmp	.LBB2_71
.LBB2_71:                               # %do.end.123
	movl	$1, -4(%rbp)
.LBB2_72:                               # %return
	movl	-4(%rbp), %eax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	xcf_save_image_props, .Lfunc_end2-xcf_save_image_props
	.cfi_endproc

	.align	16, 0x90
	.type	xcf_save_layer,@function
xcf_save_layer:                         # @xcf_save_layer
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
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	$0, -72(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rcx
	cmpq	64(%rcx), %rax
	jne	.LBB3_14
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -44(%rbp)
# BB#2:                                 # %do.body
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	80(%rax), %esi
	movq	-40(%rbp), %rdx
	callq	xcf_seek_pos
	cmpl	$0, %eax
	jne	.LBB3_4
# BB#3:                                 # %if.then.3
	movl	$0, -4(%rbp)
	jmp	.LBB3_61
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.body.4
	leaq	-44(%rbp), %rsi
	movl	$1, %edx
	leaq	-72(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -72(%rbp)
	je	.LBB3_8
# BB#7:                                 # %if.then.8
	movq	-40(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB3_61
.LBB3_8:                                # %if.end.9
	jmp	.LBB3_9
.LBB3_9:                                # %do.end.10
	jmp	.LBB3_10
.LBB3_10:                               # %do.body.11
	movq	-16(%rbp), %rdi
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rdx
	callq	xcf_seek_pos
	cmpl	$0, %eax
	jne	.LBB3_12
# BB#11:                                # %if.then.14
	movl	$0, -4(%rbp)
	jmp	.LBB3_61
.LBB3_12:                               # %if.end.15
	jmp	.LBB3_13
.LBB3_13:                               # %do.end.16
	jmp	.LBB3_14
.LBB3_14:                               # %if.end.17
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	%eax, -52(%rbp)
# BB#15:                                # %do.body.21
	leaq	-52(%rbp), %rsi
	movl	$1, %edx
	leaq	-72(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -72(%rbp)
	je	.LBB3_17
# BB#16:                                # %if.then.27
	movq	-40(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB3_61
.LBB3_17:                               # %if.end.28
	jmp	.LBB3_18
.LBB3_18:                               # %do.end.29
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	%eax, -52(%rbp)
# BB#19:                                # %do.body.33
	leaq	-52(%rbp), %rsi
	movl	$1, %edx
	leaq	-72(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -72(%rbp)
	je	.LBB3_21
# BB#20:                                # %if.then.39
	movq	-40(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB3_61
.LBB3_21:                               # %if.end.40
	jmp	.LBB3_22
.LBB3_22:                               # %do.end.41
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_type
	movl	%eax, -52(%rbp)
# BB#23:                                # %do.body.45
	leaq	-52(%rbp), %rsi
	movl	$1, %edx
	leaq	-72(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -72(%rbp)
	je	.LBB3_25
# BB#24:                                # %if.then.51
	movq	-40(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB3_61
.LBB3_25:                               # %if.end.52
	jmp	.LBB3_26
.LBB3_26:                               # %do.end.53
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -64(%rbp)
# BB#27:                                # %do.body.55
	leaq	-64(%rbp), %rsi
	movl	$1, %edx
	leaq	-72(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_string
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -72(%rbp)
	je	.LBB3_29
# BB#28:                                # %if.then.61
	movq	-40(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB3_61
.LBB3_29:                               # %if.end.62
	jmp	.LBB3_30
.LBB3_30:                               # %do.end.63
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	xcf_save_layer_props
	movq	-16(%rbp), %rcx
	movl	24(%rcx), %r8d
	addl	$8, %r8d
	movl	%r8d, -48(%rbp)
	movl	%eax, -116(%rbp)        # 4-byte Spill
# BB#31:                                # %do.body.67
	leaq	-48(%rbp), %rsi
	movl	$1, %edx
	leaq	-72(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -72(%rbp)
	je	.LBB3_33
# BB#32:                                # %if.then.73
	movq	-40(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB3_61
.LBB3_33:                               # %if.end.74
	jmp	.LBB3_34
.LBB3_34:                               # %do.end.75
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -44(%rbp)
# BB#35:                                # %do.body.77
	movl	$1, %esi
	leaq	-72(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_zero_int32
	movq	-16(%rbp), %rdx
	addl	24(%rdx), %eax
	movl	%eax, 24(%rdx)
	cmpq	$0, -72(%rbp)
	je	.LBB3_37
# BB#36:                                # %if.then.83
	movq	-40(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB3_61
.LBB3_37:                               # %if.end.84
	jmp	.LBB3_38
.LBB3_38:                               # %do.end.85
	jmp	.LBB3_39
.LBB3_39:                               # %do.body.86
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movq	-40(%rbp), %rdx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	xcf_save_hierarchy
	cmpl	$0, %eax
	jne	.LBB3_41
# BB#40:                                # %if.then.92
	movl	$0, -4(%rbp)
	jmp	.LBB3_61
.LBB3_41:                               # %if.end.93
	jmp	.LBB3_42
.LBB3_42:                               # %do.end.94
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_layer_get_mask
	cmpq	$0, %rax
	je	.LBB3_60
# BB#43:                                # %if.then.98
	movq	-32(%rbp), %rdi
	callq	gimp_layer_get_mask
	movq	%rax, -80(%rbp)
# BB#44:                                # %do.body.100
	movq	-16(%rbp), %rdi
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rdx
	callq	xcf_seek_pos
	cmpl	$0, %eax
	jne	.LBB3_46
# BB#45:                                # %if.then.103
	movl	$0, -4(%rbp)
	jmp	.LBB3_61
.LBB3_46:                               # %if.end.104
	jmp	.LBB3_47
.LBB3_47:                               # %do.end.105
	jmp	.LBB3_48
.LBB3_48:                               # %do.body.106
	leaq	-48(%rbp), %rsi
	movl	$1, %edx
	leaq	-72(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -72(%rbp)
	je	.LBB3_50
# BB#49:                                # %if.then.112
	movq	-40(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB3_61
.LBB3_50:                               # %if.end.113
	jmp	.LBB3_51
.LBB3_51:                               # %do.end.114
	jmp	.LBB3_52
.LBB3_52:                               # %do.body.115
	movq	-16(%rbp), %rdi
	movl	-48(%rbp), %esi
	movq	-40(%rbp), %rdx
	callq	xcf_seek_pos
	cmpl	$0, %eax
	jne	.LBB3_54
# BB#53:                                # %if.then.118
	movl	$0, -4(%rbp)
	jmp	.LBB3_61
.LBB3_54:                               # %if.end.119
	jmp	.LBB3_55
.LBB3_55:                               # %do.end.120
	jmp	.LBB3_56
.LBB3_56:                               # %do.body.121
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rcx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	xcf_save_channel
	cmpl	$0, %eax
	jne	.LBB3_58
# BB#57:                                # %if.then.126
	movl	$0, -4(%rbp)
	jmp	.LBB3_61
.LBB3_58:                               # %if.end.127
	jmp	.LBB3_59
.LBB3_59:                               # %do.end.128
	jmp	.LBB3_60
.LBB3_60:                               # %if.end.129
	movl	$1, -4(%rbp)
.LBB3_61:                               # %return
	movl	-4(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	xcf_save_layer, .Lfunc_end3-xcf_save_layer
	.cfi_endproc

	.align	16, 0x90
	.type	xcf_save_channel,@function
xcf_save_channel:                       # @xcf_save_channel
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	$0, -72(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rcx
	cmpq	64(%rcx), %rax
	jne	.LBB4_14
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -44(%rbp)
# BB#2:                                 # %do.body
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	80(%rax), %esi
	movq	-40(%rbp), %rdx
	callq	xcf_seek_pos
	cmpl	$0, %eax
	jne	.LBB4_4
# BB#3:                                 # %if.then.3
	movl	$0, -4(%rbp)
	jmp	.LBB4_35
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	jmp	.LBB4_6
.LBB4_6:                                # %do.body.4
	leaq	-44(%rbp), %rsi
	movl	$1, %edx
	leaq	-72(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -72(%rbp)
	je	.LBB4_8
# BB#7:                                 # %if.then.8
	movq	-40(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB4_35
.LBB4_8:                                # %if.end.9
	jmp	.LBB4_9
.LBB4_9:                                # %do.end.10
	jmp	.LBB4_10
.LBB4_10:                               # %do.body.11
	movq	-16(%rbp), %rdi
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rdx
	callq	xcf_seek_pos
	cmpl	$0, %eax
	jne	.LBB4_12
# BB#11:                                # %if.then.14
	movl	$0, -4(%rbp)
	jmp	.LBB4_35
.LBB4_12:                               # %if.end.15
	jmp	.LBB4_13
.LBB4_13:                               # %do.end.16
	jmp	.LBB4_14
.LBB4_14:                               # %if.end.17
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	%eax, -52(%rbp)
# BB#15:                                # %do.body.21
	leaq	-52(%rbp), %rsi
	movl	$1, %edx
	leaq	-72(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -72(%rbp)
	je	.LBB4_17
# BB#16:                                # %if.then.27
	movq	-40(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB4_35
.LBB4_17:                               # %if.end.28
	jmp	.LBB4_18
.LBB4_18:                               # %do.end.29
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	%eax, -52(%rbp)
# BB#19:                                # %do.body.33
	leaq	-52(%rbp), %rsi
	movl	$1, %edx
	leaq	-72(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -72(%rbp)
	je	.LBB4_21
# BB#20:                                # %if.then.39
	movq	-40(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB4_35
.LBB4_21:                               # %if.end.40
	jmp	.LBB4_22
.LBB4_22:                               # %do.end.41
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -64(%rbp)
# BB#23:                                # %do.body.43
	leaq	-64(%rbp), %rsi
	movl	$1, %edx
	leaq	-72(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_string
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -72(%rbp)
	je	.LBB4_25
# BB#24:                                # %if.then.49
	movq	-40(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB4_35
.LBB4_25:                               # %if.end.50
	jmp	.LBB4_26
.LBB4_26:                               # %do.end.51
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	xcf_save_channel_props
	movq	-16(%rbp), %rcx
	movl	24(%rcx), %r8d
	addl	$4, %r8d
	movl	%r8d, -48(%rbp)
	movl	%eax, -100(%rbp)        # 4-byte Spill
# BB#27:                                # %do.body.55
	leaq	-48(%rbp), %rsi
	movl	$1, %edx
	leaq	-72(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -72(%rbp)
	je	.LBB4_29
# BB#28:                                # %if.then.61
	movq	-40(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB4_35
.LBB4_29:                               # %if.end.62
	jmp	.LBB4_30
.LBB4_30:                               # %do.end.63
	jmp	.LBB4_31
.LBB4_31:                               # %do.body.64
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movq	-40(%rbp), %rdx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	xcf_save_hierarchy
	cmpl	$0, %eax
	jne	.LBB4_33
# BB#32:                                # %if.then.70
	movl	$0, -4(%rbp)
	jmp	.LBB4_35
.LBB4_33:                               # %if.end.71
	jmp	.LBB4_34
.LBB4_34:                               # %do.end.72
	movl	$1, -4(%rbp)
.LBB4_35:                               # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	xcf_save_channel, .Lfunc_end4-xcf_save_channel
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4643211180634609287     # double 255.999
	.text
	.align	16, 0x90
	.type	xcf_save_prop,@function
xcf_save_prop:                          # @xcf_save_prop
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
	subq	$1680, %rsp             # imm = 0x690
	testb	%al, %al
	movaps	%xmm7, -720(%rbp)       # 16-byte Spill
	movaps	%xmm6, -736(%rbp)       # 16-byte Spill
	movaps	%xmm5, -752(%rbp)       # 16-byte Spill
	movaps	%xmm4, -768(%rbp)       # 16-byte Spill
	movaps	%xmm3, -784(%rbp)       # 16-byte Spill
	movaps	%xmm2, -800(%rbp)       # 16-byte Spill
	movaps	%xmm1, -816(%rbp)       # 16-byte Spill
	movaps	%xmm0, -832(%rbp)       # 16-byte Spill
	movq	%rdi, -840(%rbp)        # 8-byte Spill
	movq	%r9, -848(%rbp)         # 8-byte Spill
	movq	%r8, -856(%rbp)         # 8-byte Spill
	movq	%rcx, -864(%rbp)        # 8-byte Spill
	movl	%edx, -868(%rbp)        # 4-byte Spill
	movq	%rsi, -880(%rbp)        # 8-byte Spill
	je	.LBB5_609
# BB#608:                               # %entry
	movaps	-832(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -656(%rbp)
	movaps	-816(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -640(%rbp)
	movaps	-800(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -624(%rbp)
	movaps	-784(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -608(%rbp)
	movaps	-768(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -592(%rbp)
	movaps	-752(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -576(%rbp)
	movaps	-736(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -560(%rbp)
	movaps	-720(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -544(%rbp)
.LBB5_609:                              # %entry
	movq	-848(%rbp), %rax        # 8-byte Reload
	movq	%rax, -664(%rbp)
	movq	-856(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -672(%rbp)
	movq	-864(%rbp), %rdx        # 8-byte Reload
	movl	-868(%rbp), %esi        # 4-byte Reload
	movq	-880(%rbp), %rdi        # 8-byte Reload
	movq	-840(%rbp), %r8         # 8-byte Reload
	movq	%r8, -16(%rbp)
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	$0, -88(%rbp)
	leaq	-704(%rbp), %rdx
	movq	%rdx, -64(%rbp)
	leaq	16(%rbp), %rdx
	movq	%rdx, -72(%rbp)
	movl	$48, -76(%rbp)
	movl	$32, -80(%rbp)
	movl	-28(%rbp), %esi
	movl	%esi, %edx
	movq	%rdx, %rdi
	subq	$31, %rdi
	movq	%rdx, -888(%rbp)        # 8-byte Spill
	movq	%rdi, -896(%rbp)        # 8-byte Spill
	ja	.LBB5_604
# BB#606:                               # %entry
	movq	-888(%rbp), %rax        # 8-byte Reload
	movq	.LJTI5_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB5_1:                                # %sw.bb
	movl	$0, -44(%rbp)
# BB#2:                                 # %do.body
	movl	-28(%rbp), %eax
	movl	%eax, -92(%rbp)
# BB#3:                                 # %do.body.2
	leaq	-92(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_5
# BB#4:                                 # %if.then
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_5:                                # %if.end
	jmp	.LBB5_6
.LBB5_6:                                # %do.end
	jmp	.LBB5_7
.LBB5_7:                                # %do.end.3
	jmp	.LBB5_8
.LBB5_8:                                # %do.body.4
	leaq	-44(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.10
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_10:                               # %if.end.11
	jmp	.LBB5_11
.LBB5_11:                               # %do.end.12
	jmp	.LBB5_604
.LBB5_12:                               # %sw.bb.13
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -904(%rbp)        # 8-byte Spill
	movl	%ecx, -908(%rbp)        # 4-byte Spill
	ja	.LBB5_14
# BB#13:                                # %vaarg.in_reg
	movl	-908(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-904(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -920(%rbp)        # 8-byte Spill
	jmp	.LBB5_15
.LBB5_14:                               # %vaarg.in_mem
	movq	-904(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -920(%rbp)        # 8-byte Spill
.LBB5_15:                               # %vaarg.end
	movq	-920(%rbp), %rax        # 8-byte Reload
	leaq	-80(%rbp), %rcx
	movl	(%rax), %edx
	movl	%edx, -96(%rbp)
	movl	-80(%rbp), %edx
	cmpl	$40, %edx
	movq	%rcx, -928(%rbp)        # 8-byte Spill
	movl	%edx, -932(%rbp)        # 4-byte Spill
	ja	.LBB5_17
# BB#16:                                # %vaarg.in_reg.19
	movl	-932(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-928(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -944(%rbp)        # 8-byte Spill
	jmp	.LBB5_18
.LBB5_17:                               # %vaarg.in_mem.21
	movq	-928(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -944(%rbp)        # 8-byte Spill
.LBB5_18:                               # %vaarg.end.25
	movq	-944(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	imull	$3, -96(%rbp), %ecx
	addl	$4, %ecx
	movl	%ecx, -44(%rbp)
# BB#19:                                # %do.body.28
	movl	-28(%rbp), %eax
	movl	%eax, -108(%rbp)
# BB#20:                                # %do.body.30
	leaq	-108(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_22
# BB#21:                                # %if.then.36
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_22:                               # %if.end.37
	jmp	.LBB5_23
.LBB5_23:                               # %do.end.38
	jmp	.LBB5_24
.LBB5_24:                               # %do.end.39
	jmp	.LBB5_25
.LBB5_25:                               # %do.body.40
	leaq	-44(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_27
# BB#26:                                # %if.then.46
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_27:                               # %if.end.47
	jmp	.LBB5_28
.LBB5_28:                               # %do.end.48
	jmp	.LBB5_29
.LBB5_29:                               # %do.body.49
	leaq	-96(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_31
# BB#30:                                # %if.then.55
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_31:                               # %if.end.56
	jmp	.LBB5_32
.LBB5_32:                               # %do.end.57
	jmp	.LBB5_33
.LBB5_33:                               # %do.body.58
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-104(%rbp), %rsi
	imull	$3, -96(%rbp), %edx
	callq	xcf_write_int8
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_35
# BB#34:                                # %if.then.65
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_35:                               # %if.end.66
	jmp	.LBB5_36
.LBB5_36:                               # %do.end.67
	jmp	.LBB5_604
.LBB5_37:                               # %sw.bb.68
	movl	$0, -44(%rbp)
# BB#38:                                # %do.body.69
	movl	-28(%rbp), %eax
	movl	%eax, -112(%rbp)
# BB#39:                                # %do.body.71
	leaq	-112(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_41
# BB#40:                                # %if.then.77
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_41:                               # %if.end.78
	jmp	.LBB5_42
.LBB5_42:                               # %do.end.79
	jmp	.LBB5_43
.LBB5_43:                               # %do.end.80
	jmp	.LBB5_44
.LBB5_44:                               # %do.body.81
	leaq	-44(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_46
# BB#45:                                # %if.then.87
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_46:                               # %if.end.88
	jmp	.LBB5_47
.LBB5_47:                               # %do.end.89
	jmp	.LBB5_604
.LBB5_48:                               # %sw.bb.90
	movl	$0, -116(%rbp)
	movl	$4, -44(%rbp)
# BB#49:                                # %do.body.91
	movl	-28(%rbp), %eax
	movl	%eax, -120(%rbp)
# BB#50:                                # %do.body.93
	leaq	-120(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_52
# BB#51:                                # %if.then.99
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_52:                               # %if.end.100
	jmp	.LBB5_53
.LBB5_53:                               # %do.end.101
	jmp	.LBB5_54
.LBB5_54:                               # %do.end.102
	jmp	.LBB5_55
.LBB5_55:                               # %do.body.103
	leaq	-44(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_57
# BB#56:                                # %if.then.109
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_57:                               # %if.end.110
	jmp	.LBB5_58
.LBB5_58:                               # %do.end.111
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 80(%rax)
# BB#59:                                # %do.body.113
	leaq	-116(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_61
# BB#60:                                # %if.then.119
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_61:                               # %if.end.120
	jmp	.LBB5_62
.LBB5_62:                               # %do.end.121
	jmp	.LBB5_604
.LBB5_63:                               # %sw.bb.122
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movl	-76(%rbp), %edx
	cmpl	$160, %edx
	movq	%rax, -952(%rbp)        # 8-byte Spill
	movq	%rcx, -960(%rbp)        # 8-byte Spill
	movl	%edx, -964(%rbp)        # 4-byte Spill
	ja	.LBB5_65
# BB#64:                                # %vaarg.in_reg.124
	movl	-964(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-952(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$16, %eax
	movq	-960(%rbp), %rsi        # 8-byte Reload
	movl	%eax, (%rsi)
	movq	%rcx, -976(%rbp)        # 8-byte Spill
	jmp	.LBB5_66
.LBB5_65:                               # %vaarg.in_mem.126
	movq	-952(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -976(%rbp)        # 8-byte Spill
.LBB5_66:                               # %vaarg.end.130
	movq	-976(%rbp), %rax        # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)
	movsd	.LCPI5_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %rax
	movl	%eax, %ecx
	movl	%ecx, -132(%rbp)
	movl	$4, -44(%rbp)
# BB#67:                                # %do.body.133
	movl	-28(%rbp), %eax
	movl	%eax, -136(%rbp)
# BB#68:                                # %do.body.135
	leaq	-136(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_70
# BB#69:                                # %if.then.141
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_70:                               # %if.end.142
	jmp	.LBB5_71
.LBB5_71:                               # %do.end.143
	jmp	.LBB5_72
.LBB5_72:                               # %do.end.144
	jmp	.LBB5_73
.LBB5_73:                               # %do.body.145
	leaq	-44(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_75
# BB#74:                                # %if.then.151
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_75:                               # %if.end.152
	jmp	.LBB5_76
.LBB5_76:                               # %do.end.153
	jmp	.LBB5_77
.LBB5_77:                               # %do.body.154
	leaq	-132(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_79
# BB#78:                                # %if.then.160
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_79:                               # %if.end.161
	jmp	.LBB5_80
.LBB5_80:                               # %do.end.162
	jmp	.LBB5_604
.LBB5_81:                               # %sw.bb.163
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -984(%rbp)        # 8-byte Spill
	movl	%ecx, -988(%rbp)        # 4-byte Spill
	ja	.LBB5_83
# BB#82:                                # %vaarg.in_reg.168
	movl	-988(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-984(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1000(%rbp)       # 8-byte Spill
	jmp	.LBB5_84
.LBB5_83:                               # %vaarg.in_mem.170
	movq	-984(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1000(%rbp)       # 8-byte Spill
.LBB5_84:                               # %vaarg.end.174
	movq	-1000(%rbp), %rax       # 8-byte Reload
	movl	(%rax), %ecx
	movl	%ecx, -140(%rbp)
	movl	$4, -44(%rbp)
# BB#85:                                # %do.body.176
	movl	-28(%rbp), %eax
	movl	%eax, -144(%rbp)
# BB#86:                                # %do.body.178
	leaq	-144(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_88
# BB#87:                                # %if.then.184
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_88:                               # %if.end.185
	jmp	.LBB5_89
.LBB5_89:                               # %do.end.186
	jmp	.LBB5_90
.LBB5_90:                               # %do.end.187
	jmp	.LBB5_91
.LBB5_91:                               # %do.body.188
	leaq	-44(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_93
# BB#92:                                # %if.then.194
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_93:                               # %if.end.195
	jmp	.LBB5_94
.LBB5_94:                               # %do.end.196
	jmp	.LBB5_95
.LBB5_95:                               # %do.body.197
	leaq	-140(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_97
# BB#96:                                # %if.then.203
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_97:                               # %if.end.204
	jmp	.LBB5_98
.LBB5_98:                               # %do.end.205
	jmp	.LBB5_604
.LBB5_99:                               # %sw.bb.206
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	movl	%ecx, -1012(%rbp)       # 4-byte Spill
	ja	.LBB5_101
# BB#100:                               # %vaarg.in_reg.211
	movl	-1012(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1008(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1024(%rbp)       # 8-byte Spill
	jmp	.LBB5_102
.LBB5_101:                              # %vaarg.in_mem.213
	movq	-1008(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1024(%rbp)       # 8-byte Spill
.LBB5_102:                              # %vaarg.end.217
	movq	-1024(%rbp), %rax       # 8-byte Reload
	movl	(%rax), %ecx
	movl	%ecx, -148(%rbp)
	movl	$4, -44(%rbp)
# BB#103:                               # %do.body.219
	movl	-28(%rbp), %eax
	movl	%eax, -152(%rbp)
# BB#104:                               # %do.body.221
	leaq	-152(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_106
# BB#105:                               # %if.then.227
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_106:                              # %if.end.228
	jmp	.LBB5_107
.LBB5_107:                              # %do.end.229
	jmp	.LBB5_108
.LBB5_108:                              # %do.end.230
	jmp	.LBB5_109
.LBB5_109:                              # %do.body.231
	leaq	-44(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_111
# BB#110:                               # %if.then.237
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_111:                              # %if.end.238
	jmp	.LBB5_112
.LBB5_112:                              # %do.end.239
	jmp	.LBB5_113
.LBB5_113:                              # %do.body.240
	leaq	-148(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_115
# BB#114:                               # %if.then.246
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_115:                              # %if.end.247
	jmp	.LBB5_116
.LBB5_116:                              # %do.end.248
	jmp	.LBB5_604
.LBB5_117:                              # %sw.bb.249
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	movl	%ecx, -1036(%rbp)       # 4-byte Spill
	ja	.LBB5_119
# BB#118:                               # %vaarg.in_reg.254
	movl	-1036(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1032(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1048(%rbp)       # 8-byte Spill
	jmp	.LBB5_120
.LBB5_119:                              # %vaarg.in_mem.256
	movq	-1032(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1048(%rbp)       # 8-byte Spill
.LBB5_120:                              # %vaarg.end.260
	movq	-1048(%rbp), %rax       # 8-byte Reload
	movl	(%rax), %ecx
	movl	%ecx, -156(%rbp)
	movl	$4, -44(%rbp)
# BB#121:                               # %do.body.262
	movl	-28(%rbp), %eax
	movl	%eax, -160(%rbp)
# BB#122:                               # %do.body.264
	leaq	-160(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_124
# BB#123:                               # %if.then.270
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_124:                              # %if.end.271
	jmp	.LBB5_125
.LBB5_125:                              # %do.end.272
	jmp	.LBB5_126
.LBB5_126:                              # %do.end.273
	jmp	.LBB5_127
.LBB5_127:                              # %do.body.274
	leaq	-44(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_129
# BB#128:                               # %if.then.280
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_129:                              # %if.end.281
	jmp	.LBB5_130
.LBB5_130:                              # %do.end.282
	jmp	.LBB5_131
.LBB5_131:                              # %do.body.283
	leaq	-156(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_133
# BB#132:                               # %if.then.289
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_133:                              # %if.end.290
	jmp	.LBB5_134
.LBB5_134:                              # %do.end.291
	jmp	.LBB5_604
.LBB5_135:                              # %sw.bb.292
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1056(%rbp)       # 8-byte Spill
	movl	%ecx, -1060(%rbp)       # 4-byte Spill
	ja	.LBB5_137
# BB#136:                               # %vaarg.in_reg.297
	movl	-1060(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1056(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1072(%rbp)       # 8-byte Spill
	jmp	.LBB5_138
.LBB5_137:                              # %vaarg.in_mem.299
	movq	-1056(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1072(%rbp)       # 8-byte Spill
.LBB5_138:                              # %vaarg.end.303
	movq	-1072(%rbp), %rax       # 8-byte Reload
	movl	(%rax), %ecx
	movl	%ecx, -164(%rbp)
	movl	$4, -44(%rbp)
# BB#139:                               # %do.body.305
	movl	-28(%rbp), %eax
	movl	%eax, -168(%rbp)
# BB#140:                               # %do.body.307
	leaq	-168(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_142
# BB#141:                               # %if.then.313
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_142:                              # %if.end.314
	jmp	.LBB5_143
.LBB5_143:                              # %do.end.315
	jmp	.LBB5_144
.LBB5_144:                              # %do.end.316
	jmp	.LBB5_145
.LBB5_145:                              # %do.body.317
	leaq	-44(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_147
# BB#146:                               # %if.then.323
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_147:                              # %if.end.324
	jmp	.LBB5_148
.LBB5_148:                              # %do.end.325
	jmp	.LBB5_149
.LBB5_149:                              # %do.body.326
	leaq	-164(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_151
# BB#150:                               # %if.then.332
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_151:                              # %if.end.333
	jmp	.LBB5_152
.LBB5_152:                              # %do.end.334
	jmp	.LBB5_604
.LBB5_153:                              # %sw.bb.335
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1080(%rbp)       # 8-byte Spill
	movl	%ecx, -1084(%rbp)       # 4-byte Spill
	ja	.LBB5_155
# BB#154:                               # %vaarg.in_reg.340
	movl	-1084(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1080(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1096(%rbp)       # 8-byte Spill
	jmp	.LBB5_156
.LBB5_155:                              # %vaarg.in_mem.342
	movq	-1080(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1096(%rbp)       # 8-byte Spill
.LBB5_156:                              # %vaarg.end.346
	movq	-1096(%rbp), %rax       # 8-byte Reload
	movl	(%rax), %ecx
	movl	%ecx, -172(%rbp)
	movl	$4, -44(%rbp)
# BB#157:                               # %do.body.348
	movl	-28(%rbp), %eax
	movl	%eax, -176(%rbp)
# BB#158:                               # %do.body.350
	leaq	-176(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_160
# BB#159:                               # %if.then.356
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_160:                              # %if.end.357
	jmp	.LBB5_161
.LBB5_161:                              # %do.end.358
	jmp	.LBB5_162
.LBB5_162:                              # %do.end.359
	jmp	.LBB5_163
.LBB5_163:                              # %do.body.360
	leaq	-44(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_165
# BB#164:                               # %if.then.366
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_165:                              # %if.end.367
	jmp	.LBB5_166
.LBB5_166:                              # %do.end.368
	jmp	.LBB5_167
.LBB5_167:                              # %do.body.369
	leaq	-172(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_169
# BB#168:                               # %if.then.375
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_169:                              # %if.end.376
	jmp	.LBB5_170
.LBB5_170:                              # %do.end.377
	jmp	.LBB5_604
.LBB5_171:                              # %sw.bb.378
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1104(%rbp)       # 8-byte Spill
	movl	%ecx, -1108(%rbp)       # 4-byte Spill
	ja	.LBB5_173
# BB#172:                               # %vaarg.in_reg.383
	movl	-1108(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1104(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1120(%rbp)       # 8-byte Spill
	jmp	.LBB5_174
.LBB5_173:                              # %vaarg.in_mem.385
	movq	-1104(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1120(%rbp)       # 8-byte Spill
.LBB5_174:                              # %vaarg.end.389
	movq	-1120(%rbp), %rax       # 8-byte Reload
	movl	(%rax), %ecx
	movl	%ecx, -180(%rbp)
	movl	$4, -44(%rbp)
# BB#175:                               # %do.body.391
	movl	-28(%rbp), %eax
	movl	%eax, -184(%rbp)
# BB#176:                               # %do.body.393
	leaq	-184(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_178
# BB#177:                               # %if.then.399
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_178:                              # %if.end.400
	jmp	.LBB5_179
.LBB5_179:                              # %do.end.401
	jmp	.LBB5_180
.LBB5_180:                              # %do.end.402
	jmp	.LBB5_181
.LBB5_181:                              # %do.body.403
	leaq	-44(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_183
# BB#182:                               # %if.then.409
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_183:                              # %if.end.410
	jmp	.LBB5_184
.LBB5_184:                              # %do.end.411
	jmp	.LBB5_185
.LBB5_185:                              # %do.body.412
	leaq	-180(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_187
# BB#186:                               # %if.then.418
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_187:                              # %if.end.419
	jmp	.LBB5_188
.LBB5_188:                              # %do.end.420
	jmp	.LBB5_604
.LBB5_189:                              # %sw.bb.421
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1128(%rbp)       # 8-byte Spill
	movl	%ecx, -1132(%rbp)       # 4-byte Spill
	ja	.LBB5_191
# BB#190:                               # %vaarg.in_reg.426
	movl	-1132(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1128(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1144(%rbp)       # 8-byte Spill
	jmp	.LBB5_192
.LBB5_191:                              # %vaarg.in_mem.428
	movq	-1128(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1144(%rbp)       # 8-byte Spill
.LBB5_192:                              # %vaarg.end.432
	movq	-1144(%rbp), %rax       # 8-byte Reload
	movl	(%rax), %ecx
	movl	%ecx, -188(%rbp)
	movl	$4, -44(%rbp)
# BB#193:                               # %do.body.434
	movl	-28(%rbp), %eax
	movl	%eax, -192(%rbp)
# BB#194:                               # %do.body.436
	leaq	-192(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_196
# BB#195:                               # %if.then.442
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_196:                              # %if.end.443
	jmp	.LBB5_197
.LBB5_197:                              # %do.end.444
	jmp	.LBB5_198
.LBB5_198:                              # %do.end.445
	jmp	.LBB5_199
.LBB5_199:                              # %do.body.446
	leaq	-44(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_201
# BB#200:                               # %if.then.452
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_201:                              # %if.end.453
	jmp	.LBB5_202
.LBB5_202:                              # %do.end.454
	jmp	.LBB5_203
.LBB5_203:                              # %do.body.455
	leaq	-188(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_205
# BB#204:                               # %if.then.461
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_205:                              # %if.end.462
	jmp	.LBB5_206
.LBB5_206:                              # %do.end.463
	jmp	.LBB5_604
.LBB5_207:                              # %sw.bb.464
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1152(%rbp)       # 8-byte Spill
	movl	%ecx, -1156(%rbp)       # 4-byte Spill
	ja	.LBB5_209
# BB#208:                               # %vaarg.in_reg.469
	movl	-1156(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1152(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1168(%rbp)       # 8-byte Spill
	jmp	.LBB5_210
.LBB5_209:                              # %vaarg.in_mem.471
	movq	-1152(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1168(%rbp)       # 8-byte Spill
.LBB5_210:                              # %vaarg.end.475
	movq	-1168(%rbp), %rax       # 8-byte Reload
	movl	(%rax), %ecx
	movl	%ecx, -196(%rbp)
	movl	$4, -44(%rbp)
# BB#211:                               # %do.body.477
	movl	-28(%rbp), %eax
	movl	%eax, -200(%rbp)
# BB#212:                               # %do.body.479
	leaq	-200(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_214
# BB#213:                               # %if.then.485
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_214:                              # %if.end.486
	jmp	.LBB5_215
.LBB5_215:                              # %do.end.487
	jmp	.LBB5_216
.LBB5_216:                              # %do.end.488
	jmp	.LBB5_217
.LBB5_217:                              # %do.body.489
	leaq	-44(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_219
# BB#218:                               # %if.then.495
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_219:                              # %if.end.496
	jmp	.LBB5_220
.LBB5_220:                              # %do.end.497
	jmp	.LBB5_221
.LBB5_221:                              # %do.body.498
	leaq	-196(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_223
# BB#222:                               # %if.then.504
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_223:                              # %if.end.505
	jmp	.LBB5_224
.LBB5_224:                              # %do.end.506
	jmp	.LBB5_604
.LBB5_225:                              # %sw.bb.507
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1176(%rbp)       # 8-byte Spill
	movl	%ecx, -1180(%rbp)       # 4-byte Spill
	ja	.LBB5_227
# BB#226:                               # %vaarg.in_reg.512
	movl	-1180(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1176(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1192(%rbp)       # 8-byte Spill
	jmp	.LBB5_228
.LBB5_227:                              # %vaarg.in_mem.514
	movq	-1176(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1192(%rbp)       # 8-byte Spill
.LBB5_228:                              # %vaarg.end.518
	movq	-1192(%rbp), %rax       # 8-byte Reload
	movl	(%rax), %ecx
	movl	%ecx, -204(%rbp)
	movl	$4, -44(%rbp)
# BB#229:                               # %do.body.520
	movl	-28(%rbp), %eax
	movl	%eax, -208(%rbp)
# BB#230:                               # %do.body.522
	leaq	-208(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_232
# BB#231:                               # %if.then.528
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_232:                              # %if.end.529
	jmp	.LBB5_233
.LBB5_233:                              # %do.end.530
	jmp	.LBB5_234
.LBB5_234:                              # %do.end.531
	jmp	.LBB5_235
.LBB5_235:                              # %do.body.532
	leaq	-44(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_237
# BB#236:                               # %if.then.538
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_237:                              # %if.end.539
	jmp	.LBB5_238
.LBB5_238:                              # %do.end.540
	jmp	.LBB5_239
.LBB5_239:                              # %do.body.541
	leaq	-204(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_241
# BB#240:                               # %if.then.547
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_241:                              # %if.end.548
	jmp	.LBB5_242
.LBB5_242:                              # %do.end.549
	jmp	.LBB5_604
.LBB5_243:                              # %sw.bb.550
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1200(%rbp)       # 8-byte Spill
	movl	%ecx, -1204(%rbp)       # 4-byte Spill
	ja	.LBB5_245
# BB#244:                               # %vaarg.in_reg.555
	movl	-1204(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1200(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1216(%rbp)       # 8-byte Spill
	jmp	.LBB5_246
.LBB5_245:                              # %vaarg.in_mem.557
	movq	-1200(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1216(%rbp)       # 8-byte Spill
.LBB5_246:                              # %vaarg.end.561
	movq	-1216(%rbp), %rax       # 8-byte Reload
	leaq	-80(%rbp), %rcx
	movl	(%rax), %edx
	movl	%edx, -216(%rbp)
	movl	-80(%rbp), %edx
	cmpl	$40, %edx
	movq	%rcx, -1224(%rbp)       # 8-byte Spill
	movl	%edx, -1228(%rbp)       # 4-byte Spill
	ja	.LBB5_248
# BB#247:                               # %vaarg.in_reg.567
	movl	-1228(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1224(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1240(%rbp)       # 8-byte Spill
	jmp	.LBB5_249
.LBB5_248:                              # %vaarg.in_mem.569
	movq	-1224(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1240(%rbp)       # 8-byte Spill
.LBB5_249:                              # %vaarg.end.573
	movq	-1240(%rbp), %rax       # 8-byte Reload
	movl	(%rax), %ecx
	movl	%ecx, -212(%rbp)
	movl	$8, -44(%rbp)
# BB#250:                               # %do.body.576
	movl	-28(%rbp), %eax
	movl	%eax, -220(%rbp)
# BB#251:                               # %do.body.578
	leaq	-220(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_253
# BB#252:                               # %if.then.584
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_253:                              # %if.end.585
	jmp	.LBB5_254
.LBB5_254:                              # %do.end.586
	jmp	.LBB5_255
.LBB5_255:                              # %do.end.587
	jmp	.LBB5_256
.LBB5_256:                              # %do.body.588
	leaq	-44(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_258
# BB#257:                               # %if.then.594
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_258:                              # %if.end.595
	jmp	.LBB5_259
.LBB5_259:                              # %do.end.596
	jmp	.LBB5_260
.LBB5_260:                              # %do.body.597
	movl	$2, %edx
	leaq	-88(%rbp), %rcx
	leaq	-216(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_262
# BB#261:                               # %if.then.604
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_262:                              # %if.end.605
	jmp	.LBB5_263
.LBB5_263:                              # %do.end.606
	jmp	.LBB5_604
.LBB5_264:                              # %sw.bb.607
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1248(%rbp)       # 8-byte Spill
	movl	%ecx, -1252(%rbp)       # 4-byte Spill
	ja	.LBB5_266
# BB#265:                               # %vaarg.in_reg.612
	movl	-1252(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1248(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1264(%rbp)       # 8-byte Spill
	jmp	.LBB5_267
.LBB5_266:                              # %vaarg.in_mem.614
	movq	-1248(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1264(%rbp)       # 8-byte Spill
.LBB5_267:                              # %vaarg.end.618
	movq	-1264(%rbp), %rax       # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movl	$3, -44(%rbp)
# BB#268:                               # %do.body.620
	movl	-28(%rbp), %eax
	movl	%eax, -236(%rbp)
# BB#269:                               # %do.body.622
	leaq	-236(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_271
# BB#270:                               # %if.then.628
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_271:                              # %if.end.629
	jmp	.LBB5_272
.LBB5_272:                              # %do.end.630
	jmp	.LBB5_273
.LBB5_273:                              # %do.end.631
	jmp	.LBB5_274
.LBB5_274:                              # %do.body.632
	leaq	-44(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_276
# BB#275:                               # %if.then.638
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_276:                              # %if.end.639
	jmp	.LBB5_277
.LBB5_277:                              # %do.end.640
	jmp	.LBB5_278
.LBB5_278:                              # %do.body.641
	movl	$3, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-232(%rbp), %rsi
	callq	xcf_write_int8
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_280
# BB#279:                               # %if.then.647
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_280:                              # %if.end.648
	jmp	.LBB5_281
.LBB5_281:                              # %do.end.649
	jmp	.LBB5_604
.LBB5_282:                              # %sw.bb.650
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1272(%rbp)       # 8-byte Spill
	movl	%ecx, -1276(%rbp)       # 4-byte Spill
	ja	.LBB5_284
# BB#283:                               # %vaarg.in_reg.655
	movl	-1276(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1272(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1288(%rbp)       # 8-byte Spill
	jmp	.LBB5_285
.LBB5_284:                              # %vaarg.in_mem.657
	movq	-1272(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1288(%rbp)       # 8-byte Spill
.LBB5_285:                              # %vaarg.end.661
	movq	-1288(%rbp), %rax       # 8-byte Reload
	movl	(%rax), %ecx
	movb	%cl, %dl
	movb	%dl, -237(%rbp)
	movl	$1, -44(%rbp)
# BB#286:                               # %do.body.664
	movl	-28(%rbp), %eax
	movl	%eax, -244(%rbp)
# BB#287:                               # %do.body.666
	leaq	-244(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_289
# BB#288:                               # %if.then.672
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_289:                              # %if.end.673
	jmp	.LBB5_290
.LBB5_290:                              # %do.end.674
	jmp	.LBB5_291
.LBB5_291:                              # %do.end.675
	jmp	.LBB5_292
.LBB5_292:                              # %do.body.676
	leaq	-44(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_294
# BB#293:                               # %if.then.682
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_294:                              # %if.end.683
	jmp	.LBB5_295
.LBB5_295:                              # %do.end.684
	jmp	.LBB5_296
.LBB5_296:                              # %do.body.685
	leaq	-237(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int8
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_298
# BB#297:                               # %if.then.691
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_298:                              # %if.end.692
	jmp	.LBB5_299
.LBB5_299:                              # %do.end.693
	jmp	.LBB5_604
.LBB5_300:                              # %sw.bb.694
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1296(%rbp)       # 8-byte Spill
	movl	%ecx, -1300(%rbp)       # 4-byte Spill
	ja	.LBB5_302
# BB#301:                               # %vaarg.in_reg.699
	movl	-1300(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1296(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1312(%rbp)       # 8-byte Spill
	jmp	.LBB5_303
.LBB5_302:                              # %vaarg.in_mem.701
	movq	-1296(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1312(%rbp)       # 8-byte Spill
.LBB5_303:                              # %vaarg.end.705
	movq	-1312(%rbp), %rax       # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rdi
	callq	g_list_length
	movl	%eax, -260(%rbp)
	imull	$5, -260(%rbp), %eax
	movl	%eax, -44(%rbp)
# BB#304:                               # %do.body.709
	movl	-28(%rbp), %eax
	movl	%eax, -264(%rbp)
# BB#305:                               # %do.body.711
	leaq	-264(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_307
# BB#306:                               # %if.then.717
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_307:                              # %if.end.718
	jmp	.LBB5_308
.LBB5_308:                              # %do.end.719
	jmp	.LBB5_309
.LBB5_309:                              # %do.end.720
	jmp	.LBB5_310
.LBB5_310:                              # %do.body.721
	leaq	-44(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_312
# BB#311:                               # %if.then.727
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_312:                              # %if.end.728
	jmp	.LBB5_313
.LBB5_313:                              # %do.end.729
	jmp	.LBB5_314
.LBB5_314:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -256(%rbp)
	je	.LBB5_332
# BB#315:                               # %for.body
                                        #   in Loop: Header=BB5_314 Depth=1
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -272(%rbp)
	movq	%rax, %rdi
	callq	gimp_guide_get_position
	movl	%eax, -276(%rbp)
	movq	-272(%rbp), %rdi
	callq	gimp_guide_get_orientation
	movl	%eax, %ecx
	testl	%eax, %eax
	movl	%ecx, -1316(%rbp)       # 4-byte Spill
	je	.LBB5_316
	jmp	.LBB5_607
.LBB5_607:                              # %for.body
                                        #   in Loop: Header=BB5_314 Depth=1
	movl	-1316(%rbp), %eax       # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -1320(%rbp)       # 4-byte Spill
	je	.LBB5_317
	jmp	.LBB5_318
.LBB5_316:                              # %sw.bb.733
                                        #   in Loop: Header=BB5_314 Depth=1
	movb	$1, -277(%rbp)
	jmp	.LBB5_319
.LBB5_317:                              # %sw.bb.734
                                        #   in Loop: Header=BB5_314 Depth=1
	movb	$2, -277(%rbp)
	jmp	.LBB5_319
.LBB5_318:                              # %sw.default
                                        #   in Loop: Header=BB5_314 Depth=1
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.xcf_save_prop, %rsi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB5_328
.LBB5_319:                              # %sw.epilog
                                        #   in Loop: Header=BB5_314 Depth=1
	jmp	.LBB5_320
.LBB5_320:                              # %do.body.735
                                        #   in Loop: Header=BB5_314 Depth=1
	leaq	-276(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_322
# BB#321:                               # %if.then.741
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_322:                              # %if.end.742
                                        #   in Loop: Header=BB5_314 Depth=1
	jmp	.LBB5_323
.LBB5_323:                              # %do.end.743
                                        #   in Loop: Header=BB5_314 Depth=1
	jmp	.LBB5_324
.LBB5_324:                              # %do.body.744
                                        #   in Loop: Header=BB5_314 Depth=1
	leaq	-277(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int8
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_326
# BB#325:                               # %if.then.750
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_326:                              # %if.end.751
                                        #   in Loop: Header=BB5_314 Depth=1
	jmp	.LBB5_327
.LBB5_327:                              # %do.end.752
                                        #   in Loop: Header=BB5_314 Depth=1
	jmp	.LBB5_328
.LBB5_328:                              # %for.inc
                                        #   in Loop: Header=BB5_314 Depth=1
	cmpq	$0, -256(%rbp)
	je	.LBB5_330
# BB#329:                               # %cond.true
                                        #   in Loop: Header=BB5_314 Depth=1
	movq	-256(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -1328(%rbp)       # 8-byte Spill
	jmp	.LBB5_331
.LBB5_330:                              # %cond.false
                                        #   in Loop: Header=BB5_314 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1328(%rbp)       # 8-byte Spill
	jmp	.LBB5_331
.LBB5_331:                              # %cond.end
                                        #   in Loop: Header=BB5_314 Depth=1
	movq	-1328(%rbp), %rax       # 8-byte Reload
	movq	%rax, -256(%rbp)
	jmp	.LBB5_314
.LBB5_332:                              # %for.end
	jmp	.LBB5_604
.LBB5_333:                              # %sw.bb.754
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1336(%rbp)       # 8-byte Spill
	movl	%ecx, -1340(%rbp)       # 4-byte Spill
	ja	.LBB5_335
# BB#334:                               # %vaarg.in_reg.759
	movl	-1340(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1336(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1352(%rbp)       # 8-byte Spill
	jmp	.LBB5_336
.LBB5_335:                              # %vaarg.in_mem.761
	movq	-1336(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1352(%rbp)       # 8-byte Spill
.LBB5_336:                              # %vaarg.end.765
	movq	-1352(%rbp), %rax       # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rdi
	callq	g_list_length
	movl	%eax, -292(%rbp)
	movl	-292(%rbp), %eax
	shll	$3, %eax
	movl	%eax, -44(%rbp)
# BB#337:                               # %do.body.769
	movl	-28(%rbp), %eax
	movl	%eax, -296(%rbp)
# BB#338:                               # %do.body.771
	leaq	-296(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_340
# BB#339:                               # %if.then.777
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_340:                              # %if.end.778
	jmp	.LBB5_341
.LBB5_341:                              # %do.end.779
	jmp	.LBB5_342
.LBB5_342:                              # %do.end.780
	jmp	.LBB5_343
.LBB5_343:                              # %do.body.781
	leaq	-44(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_345
# BB#344:                               # %if.then.787
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_345:                              # %if.end.788
	jmp	.LBB5_346
.LBB5_346:                              # %do.end.789
	jmp	.LBB5_347
.LBB5_347:                              # %for.cond.790
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -288(%rbp)
	je	.LBB5_361
# BB#348:                               # %for.body.792
                                        #   in Loop: Header=BB5_347 Depth=1
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -308(%rbp)
	movq	-304(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -312(%rbp)
# BB#349:                               # %do.body.796
                                        #   in Loop: Header=BB5_347 Depth=1
	leaq	-308(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_351
# BB#350:                               # %if.then.802
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_351:                              # %if.end.803
                                        #   in Loop: Header=BB5_347 Depth=1
	jmp	.LBB5_352
.LBB5_352:                              # %do.end.804
                                        #   in Loop: Header=BB5_347 Depth=1
	jmp	.LBB5_353
.LBB5_353:                              # %do.body.805
                                        #   in Loop: Header=BB5_347 Depth=1
	leaq	-312(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_355
# BB#354:                               # %if.then.811
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_355:                              # %if.end.812
                                        #   in Loop: Header=BB5_347 Depth=1
	jmp	.LBB5_356
.LBB5_356:                              # %do.end.813
                                        #   in Loop: Header=BB5_347 Depth=1
	jmp	.LBB5_357
.LBB5_357:                              # %for.inc.814
                                        #   in Loop: Header=BB5_347 Depth=1
	cmpq	$0, -288(%rbp)
	je	.LBB5_359
# BB#358:                               # %cond.true.816
                                        #   in Loop: Header=BB5_347 Depth=1
	movq	-288(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -1360(%rbp)       # 8-byte Spill
	jmp	.LBB5_360
.LBB5_359:                              # %cond.false.818
                                        #   in Loop: Header=BB5_347 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1360(%rbp)       # 8-byte Spill
	jmp	.LBB5_360
.LBB5_360:                              # %cond.end.819
                                        #   in Loop: Header=BB5_347 Depth=1
	movq	-1360(%rbp), %rax       # 8-byte Reload
	movq	%rax, -288(%rbp)
	jmp	.LBB5_347
.LBB5_361:                              # %for.end.821
	jmp	.LBB5_604
.LBB5_362:                              # %sw.bb.822
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movl	-76(%rbp), %edx
	cmpl	$160, %edx
	movq	%rax, -1368(%rbp)       # 8-byte Spill
	movq	%rcx, -1376(%rbp)       # 8-byte Spill
	movl	%edx, -1380(%rbp)       # 4-byte Spill
	ja	.LBB5_364
# BB#363:                               # %vaarg.in_reg.827
	movl	-1380(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1368(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$16, %eax
	movq	-1376(%rbp), %rsi       # 8-byte Reload
	movl	%eax, (%rsi)
	movq	%rcx, -1392(%rbp)       # 8-byte Spill
	jmp	.LBB5_365
.LBB5_364:                              # %vaarg.in_mem.829
	movq	-1368(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1392(%rbp)       # 8-byte Spill
.LBB5_365:                              # %vaarg.end.833
	movq	-1392(%rbp), %rax       # 8-byte Reload
	leaq	-80(%rbp), %rcx
	cvtsd2ss	(%rax), %xmm0
	movss	%xmm0, -316(%rbp)
	movq	%rcx, %rax
	addq	$4, %rax
	movl	-76(%rbp), %edx
	cmpl	$160, %edx
	movq	%rcx, -1400(%rbp)       # 8-byte Spill
	movq	%rax, -1408(%rbp)       # 8-byte Spill
	movl	%edx, -1412(%rbp)       # 4-byte Spill
	ja	.LBB5_367
# BB#366:                               # %vaarg.in_reg.840
	movl	-1412(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1400(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$16, %eax
	movq	-1408(%rbp), %rsi       # 8-byte Reload
	movl	%eax, (%rsi)
	movq	%rcx, -1424(%rbp)       # 8-byte Spill
	jmp	.LBB5_368
.LBB5_367:                              # %vaarg.in_mem.842
	movq	-1400(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1424(%rbp)       # 8-byte Spill
.LBB5_368:                              # %vaarg.end.846
	movq	-1424(%rbp), %rax       # 8-byte Reload
	cvtsd2ss	(%rax), %xmm0
	movss	%xmm0, -320(%rbp)
	movl	$8, -44(%rbp)
# BB#369:                               # %do.body.849
	movl	-28(%rbp), %eax
	movl	%eax, -324(%rbp)
# BB#370:                               # %do.body.851
	leaq	-324(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_372
# BB#371:                               # %if.then.857
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_372:                              # %if.end.858
	jmp	.LBB5_373
.LBB5_373:                              # %do.end.859
	jmp	.LBB5_374
.LBB5_374:                              # %do.end.860
	jmp	.LBB5_375
.LBB5_375:                              # %do.body.861
	leaq	-44(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_377
# BB#376:                               # %if.then.867
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_377:                              # %if.end.868
	jmp	.LBB5_378
.LBB5_378:                              # %do.end.869
	jmp	.LBB5_379
.LBB5_379:                              # %do.body.870
	leaq	-316(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_float
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_381
# BB#380:                               # %if.then.876
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_381:                              # %if.end.877
	jmp	.LBB5_382
.LBB5_382:                              # %do.end.878
	jmp	.LBB5_383
.LBB5_383:                              # %do.body.879
	leaq	-320(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_float
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_385
# BB#384:                               # %if.then.885
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_385:                              # %if.end.886
	jmp	.LBB5_386
.LBB5_386:                              # %do.end.887
	jmp	.LBB5_604
.LBB5_387:                              # %sw.bb.888
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1432(%rbp)       # 8-byte Spill
	movl	%ecx, -1436(%rbp)       # 4-byte Spill
	ja	.LBB5_389
# BB#388:                               # %vaarg.in_reg.893
	movl	-1436(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1432(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1448(%rbp)       # 8-byte Spill
	jmp	.LBB5_390
.LBB5_389:                              # %vaarg.in_mem.895
	movq	-1432(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1448(%rbp)       # 8-byte Spill
.LBB5_390:                              # %vaarg.end.899
	movq	-1448(%rbp), %rax       # 8-byte Reload
	movl	(%rax), %ecx
	movl	%ecx, -328(%rbp)
	movl	$4, -44(%rbp)
# BB#391:                               # %do.body.901
	movl	-28(%rbp), %eax
	movl	%eax, -332(%rbp)
# BB#392:                               # %do.body.903
	leaq	-332(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_394
# BB#393:                               # %if.then.909
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_394:                              # %if.end.910
	jmp	.LBB5_395
.LBB5_395:                              # %do.end.911
	jmp	.LBB5_396
.LBB5_396:                              # %do.end.912
	jmp	.LBB5_397
.LBB5_397:                              # %do.body.913
	leaq	-44(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_399
# BB#398:                               # %if.then.919
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_399:                              # %if.end.920
	jmp	.LBB5_400
.LBB5_400:                              # %do.end.921
	jmp	.LBB5_401
.LBB5_401:                              # %do.body.922
	leaq	-328(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_403
# BB#402:                               # %if.then.928
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_403:                              # %if.end.929
	jmp	.LBB5_404
.LBB5_404:                              # %do.end.930
	jmp	.LBB5_604
.LBB5_405:                              # %sw.bb.931
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1456(%rbp)       # 8-byte Spill
	movl	%ecx, -1460(%rbp)       # 4-byte Spill
	ja	.LBB5_407
# BB#406:                               # %vaarg.in_reg.936
	movl	-1460(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1456(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1472(%rbp)       # 8-byte Spill
	jmp	.LBB5_408
.LBB5_407:                              # %vaarg.in_mem.938
	movq	-1456(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1472(%rbp)       # 8-byte Spill
.LBB5_408:                              # %vaarg.end.942
	movq	-1472(%rbp), %rax       # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rdi
	callq	gimp_parasite_list_persistent_length
	cmpl	$0, %eax
	jle	.LBB5_434
# BB#409:                               # %if.then.946
	movl	$0, -352(%rbp)
# BB#410:                               # %do.body.947
	movl	-28(%rbp), %eax
	movl	%eax, -364(%rbp)
# BB#411:                               # %do.body.949
	leaq	-364(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_413
# BB#412:                               # %if.then.955
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_413:                              # %if.end.956
	jmp	.LBB5_414
.LBB5_414:                              # %do.end.957
	jmp	.LBB5_415
.LBB5_415:                              # %do.end.958
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, -360(%rbp)
# BB#416:                               # %do.body.961
	leaq	-352(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_418
# BB#417:                               # %if.then.967
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_418:                              # %if.end.968
	jmp	.LBB5_419
.LBB5_419:                              # %do.end.969
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -348(%rbp)
# BB#420:                               # %do.body.971
	movq	-16(%rbp), %rdi
	movq	-344(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	xcf_save_parasite_list
	cmpl	$0, %eax
	jne	.LBB5_422
# BB#421:                               # %if.then.974
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_422:                              # %if.end.975
	jmp	.LBB5_423
.LBB5_423:                              # %do.end.976
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	subl	-348(%rbp), %ecx
	movl	%ecx, -352(%rbp)
# BB#424:                               # %do.body.978
	movq	-16(%rbp), %rdi
	movq	-360(%rbp), %rax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movl	%ecx, %esi
	callq	xcf_seek_pos
	cmpl	$0, %eax
	jne	.LBB5_426
# BB#425:                               # %if.then.982
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_426:                              # %if.end.983
	jmp	.LBB5_427
.LBB5_427:                              # %do.end.984
	leaq	-352(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	cmpq	$0, -88(%rbp)
	movl	%eax, -1476(%rbp)       # 4-byte Spill
	je	.LBB5_429
# BB#428:                               # %if.then.988
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_429:                              # %if.end.989
	jmp	.LBB5_430
.LBB5_430:                              # %do.body.990
	movq	-16(%rbp), %rdi
	movl	-348(%rbp), %eax
	addl	-352(%rbp), %eax
	movq	-40(%rbp), %rdx
	movl	%eax, %esi
	callq	xcf_seek_pos
	cmpl	$0, %eax
	jne	.LBB5_432
# BB#431:                               # %if.then.994
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_432:                              # %if.end.995
	jmp	.LBB5_433
.LBB5_433:                              # %do.end.996
	jmp	.LBB5_434
.LBB5_434:                              # %if.end.997
	jmp	.LBB5_604
.LBB5_435:                              # %sw.bb.998
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1488(%rbp)       # 8-byte Spill
	movl	%ecx, -1492(%rbp)       # 4-byte Spill
	ja	.LBB5_437
# BB#436:                               # %vaarg.in_reg.1003
	movl	-1492(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1488(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1504(%rbp)       # 8-byte Spill
	jmp	.LBB5_438
.LBB5_437:                              # %vaarg.in_mem.1005
	movq	-1488(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1504(%rbp)       # 8-byte Spill
.LBB5_438:                              # %vaarg.end.1009
	movq	-1504(%rbp), %rax       # 8-byte Reload
	movl	(%rax), %ecx
	movl	%ecx, -368(%rbp)
	movl	$4, -44(%rbp)
# BB#439:                               # %do.body.1011
	movl	-28(%rbp), %eax
	movl	%eax, -372(%rbp)
# BB#440:                               # %do.body.1013
	leaq	-372(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_442
# BB#441:                               # %if.then.1019
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_442:                              # %if.end.1020
	jmp	.LBB5_443
.LBB5_443:                              # %do.end.1021
	jmp	.LBB5_444
.LBB5_444:                              # %do.end.1022
	jmp	.LBB5_445
.LBB5_445:                              # %do.body.1023
	leaq	-44(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_447
# BB#446:                               # %if.then.1029
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_447:                              # %if.end.1030
	jmp	.LBB5_448
.LBB5_448:                              # %do.end.1031
	jmp	.LBB5_449
.LBB5_449:                              # %do.body.1032
	leaq	-368(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_451
# BB#450:                               # %if.then.1038
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_451:                              # %if.end.1039
	jmp	.LBB5_452
.LBB5_452:                              # %do.end.1040
	jmp	.LBB5_604
.LBB5_453:                              # %sw.bb.1041
	movl	$0, -380(%rbp)
# BB#454:                               # %do.body.1045
	movl	-28(%rbp), %eax
	movl	%eax, -396(%rbp)
# BB#455:                               # %do.body.1047
	leaq	-396(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_457
# BB#456:                               # %if.then.1053
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_457:                              # %if.end.1054
	jmp	.LBB5_458
.LBB5_458:                              # %do.end.1055
	jmp	.LBB5_459
.LBB5_459:                              # %do.end.1056
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, -392(%rbp)
# BB#460:                               # %do.body.1059
	leaq	-380(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_462
# BB#461:                               # %if.then.1065
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_462:                              # %if.end.1066
	jmp	.LBB5_463
.LBB5_463:                              # %do.end.1067
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -376(%rbp)
# BB#464:                               # %do.body.1069
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	xcf_save_old_paths
	cmpl	$0, %eax
	jne	.LBB5_466
# BB#465:                               # %if.then.1072
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_466:                              # %if.end.1073
	jmp	.LBB5_467
.LBB5_467:                              # %do.end.1074
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	subl	-376(%rbp), %ecx
	movl	%ecx, -380(%rbp)
# BB#468:                               # %do.body.1077
	movq	-16(%rbp), %rdi
	movq	-392(%rbp), %rax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movl	%ecx, %esi
	callq	xcf_seek_pos
	cmpl	$0, %eax
	jne	.LBB5_470
# BB#469:                               # %if.then.1081
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_470:                              # %if.end.1082
	jmp	.LBB5_471
.LBB5_471:                              # %do.end.1083
	leaq	-380(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	cmpq	$0, -88(%rbp)
	movl	%eax, -1508(%rbp)       # 4-byte Spill
	je	.LBB5_473
# BB#472:                               # %if.then.1087
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_473:                              # %if.end.1088
	jmp	.LBB5_474
.LBB5_474:                              # %do.body.1089
	movq	-16(%rbp), %rdi
	movl	-376(%rbp), %eax
	addl	-380(%rbp), %eax
	movq	-40(%rbp), %rdx
	movl	%eax, %esi
	callq	xcf_seek_pos
	cmpl	$0, %eax
	jne	.LBB5_476
# BB#475:                               # %if.then.1093
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_476:                              # %if.end.1094
	jmp	.LBB5_477
.LBB5_477:                              # %do.end.1095
	jmp	.LBB5_604
.LBB5_478:                              # %sw.bb.1096
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1520(%rbp)       # 8-byte Spill
	movl	%ecx, -1524(%rbp)       # 4-byte Spill
	ja	.LBB5_480
# BB#479:                               # %vaarg.in_reg.1102
	movl	-1524(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1520(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1536(%rbp)       # 8-byte Spill
	jmp	.LBB5_481
.LBB5_480:                              # %vaarg.in_mem.1104
	movq	-1520(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1536(%rbp)       # 8-byte Spill
.LBB5_481:                              # %vaarg.end.1108
	movq	-1536(%rbp), %rax       # 8-byte Reload
	movl	(%rax), %ecx
	movl	%ecx, -400(%rbp)
	movl	-400(%rbp), %edi
	callq	gimp_unit_get_identifier
	movq	%rax, -448(%rbp)
	movl	-400(%rbp), %edi
	callq	gimp_unit_get_factor
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -452(%rbp)
	movl	-400(%rbp), %edi
	callq	gimp_unit_get_digits
	movl	%eax, -456(%rbp)
	movl	-400(%rbp), %edi
	callq	gimp_unit_get_symbol
	movq	%rax, -440(%rbp)
	movl	-400(%rbp), %edi
	callq	gimp_unit_get_abbreviation
	movq	%rax, -432(%rbp)
	movl	-400(%rbp), %edi
	callq	gimp_unit_get_singular
	movq	%rax, -424(%rbp)
	movl	-400(%rbp), %edi
	callq	gimp_unit_get_plural
	movq	%rax, -416(%rbp)
	movq	-448(%rbp), %rdi
	callq	strlen
	addq	$8, %rax
	cmpq	$0, %rax
	je	.LBB5_483
# BB#482:                               # %cond.true.1127
	movq	-448(%rbp), %rdi
	callq	strlen
	addq	$5, %rax
	movq	%rax, -1544(%rbp)       # 8-byte Spill
	jmp	.LBB5_496
.LBB5_483:                              # %cond.false.1131
	movq	-440(%rbp), %rdi
	callq	strlen
	addq	$4, %rax
	cmpq	$0, %rax
	je	.LBB5_485
# BB#484:                               # %cond.true.1136
	movq	-440(%rbp), %rdi
	callq	strlen
	addq	$5, %rax
	movq	%rax, -1552(%rbp)       # 8-byte Spill
	jmp	.LBB5_495
.LBB5_485:                              # %cond.false.1140
	movq	-432(%rbp), %rdi
	callq	strlen
	addq	$4, %rax
	cmpq	$0, %rax
	je	.LBB5_487
# BB#486:                               # %cond.true.1145
	movq	-432(%rbp), %rdi
	callq	strlen
	addq	$5, %rax
	movq	%rax, -1560(%rbp)       # 8-byte Spill
	jmp	.LBB5_494
.LBB5_487:                              # %cond.false.1149
	movq	-424(%rbp), %rdi
	callq	strlen
	addq	$4, %rax
	cmpq	$0, %rax
	je	.LBB5_489
# BB#488:                               # %cond.true.1154
	movq	-424(%rbp), %rdi
	callq	strlen
	addq	$5, %rax
	movq	%rax, -1568(%rbp)       # 8-byte Spill
	jmp	.LBB5_493
.LBB5_489:                              # %cond.false.1158
	movq	-416(%rbp), %rdi
	callq	strlen
	addq	$4, %rax
	cmpq	$0, %rax
	je	.LBB5_491
# BB#490:                               # %cond.true.1163
	movq	-416(%rbp), %rdi
	callq	strlen
	addq	$5, %rax
	movq	%rax, -1576(%rbp)       # 8-byte Spill
	jmp	.LBB5_492
.LBB5_491:                              # %cond.false.1167
	movl	$4, %eax
	movl	%eax, %ecx
	movq	%rcx, -1576(%rbp)       # 8-byte Spill
	jmp	.LBB5_492
.LBB5_492:                              # %cond.end.1168
	movq	-1576(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1568(%rbp)       # 8-byte Spill
.LBB5_493:                              # %cond.end.1170
	movq	-1568(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1560(%rbp)       # 8-byte Spill
.LBB5_494:                              # %cond.end.1172
	movq	-1560(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1552(%rbp)       # 8-byte Spill
.LBB5_495:                              # %cond.end.1174
	movq	-1552(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1544(%rbp)       # 8-byte Spill
.LBB5_496:                              # %cond.end.1176
	movq	-1544(%rbp), %rax       # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, -44(%rbp)
# BB#497:                               # %do.body.1179
	movl	-28(%rbp), %eax
	movl	%eax, -460(%rbp)
# BB#498:                               # %do.body.1181
	leaq	-460(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_500
# BB#499:                               # %if.then.1187
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_500:                              # %if.end.1188
	jmp	.LBB5_501
.LBB5_501:                              # %do.end.1189
	jmp	.LBB5_502
.LBB5_502:                              # %do.end.1190
	jmp	.LBB5_503
.LBB5_503:                              # %do.body.1191
	leaq	-44(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_505
# BB#504:                               # %if.then.1197
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_505:                              # %if.end.1198
	jmp	.LBB5_506
.LBB5_506:                              # %do.end.1199
	jmp	.LBB5_507
.LBB5_507:                              # %do.body.1200
	leaq	-452(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_float
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_509
# BB#508:                               # %if.then.1206
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_509:                              # %if.end.1207
	jmp	.LBB5_510
.LBB5_510:                              # %do.end.1208
	jmp	.LBB5_511
.LBB5_511:                              # %do.body.1209
	leaq	-456(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_513
# BB#512:                               # %if.then.1215
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_513:                              # %if.end.1216
	jmp	.LBB5_514
.LBB5_514:                              # %do.end.1217
	jmp	.LBB5_515
.LBB5_515:                              # %do.body.1218
	movl	$5, %edx
	leaq	-88(%rbp), %rcx
	leaq	-448(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_string
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_517
# BB#516:                               # %if.then.1225
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_517:                              # %if.end.1226
	jmp	.LBB5_518
.LBB5_518:                              # %do.end.1227
	jmp	.LBB5_604
.LBB5_519:                              # %sw.bb.1228
	movl	$0, -468(%rbp)
# BB#520:                               # %do.body.1232
	movl	-28(%rbp), %eax
	movl	%eax, -484(%rbp)
# BB#521:                               # %do.body.1234
	leaq	-484(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_523
# BB#522:                               # %if.then.1240
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_523:                              # %if.end.1241
	jmp	.LBB5_524
.LBB5_524:                              # %do.end.1242
	jmp	.LBB5_525
.LBB5_525:                              # %do.end.1243
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, -480(%rbp)
# BB#526:                               # %do.body.1246
	leaq	-468(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_528
# BB#527:                               # %if.then.1252
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_528:                              # %if.end.1253
	jmp	.LBB5_529
.LBB5_529:                              # %do.end.1254
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -464(%rbp)
# BB#530:                               # %do.body.1256
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	xcf_save_vectors
	cmpl	$0, %eax
	jne	.LBB5_532
# BB#531:                               # %if.then.1259
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_532:                              # %if.end.1260
	jmp	.LBB5_533
.LBB5_533:                              # %do.end.1261
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	subl	-464(%rbp), %ecx
	movl	%ecx, -468(%rbp)
# BB#534:                               # %do.body.1264
	movq	-16(%rbp), %rdi
	movq	-480(%rbp), %rax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movl	%ecx, %esi
	callq	xcf_seek_pos
	cmpl	$0, %eax
	jne	.LBB5_536
# BB#535:                               # %if.then.1268
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_536:                              # %if.end.1269
	jmp	.LBB5_537
.LBB5_537:                              # %do.end.1270
	leaq	-468(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	cmpq	$0, -88(%rbp)
	movl	%eax, -1580(%rbp)       # 4-byte Spill
	je	.LBB5_539
# BB#538:                               # %if.then.1274
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_539:                              # %if.end.1275
	jmp	.LBB5_540
.LBB5_540:                              # %do.body.1276
	movq	-16(%rbp), %rdi
	movl	-464(%rbp), %eax
	addl	-468(%rbp), %eax
	movq	-40(%rbp), %rdx
	movl	%eax, %esi
	callq	xcf_seek_pos
	cmpl	$0, %eax
	jne	.LBB5_542
# BB#541:                               # %if.then.1280
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_542:                              # %if.end.1281
	jmp	.LBB5_543
.LBB5_543:                              # %do.end.1282
	jmp	.LBB5_604
.LBB5_544:                              # %sw.bb.1283
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1592(%rbp)       # 8-byte Spill
	movl	%ecx, -1596(%rbp)       # 4-byte Spill
	ja	.LBB5_546
# BB#545:                               # %vaarg.in_reg.1288
	movl	-1596(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1592(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1608(%rbp)       # 8-byte Spill
	jmp	.LBB5_547
.LBB5_546:                              # %vaarg.in_mem.1290
	movq	-1592(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1608(%rbp)       # 8-byte Spill
.LBB5_547:                              # %vaarg.end.1294
	movq	-1608(%rbp), %rax       # 8-byte Reload
	movl	(%rax), %ecx
	movl	%ecx, -488(%rbp)
	movl	$4, -44(%rbp)
# BB#548:                               # %do.body.1296
	movl	-28(%rbp), %eax
	movl	%eax, -492(%rbp)
# BB#549:                               # %do.body.1298
	leaq	-492(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_551
# BB#550:                               # %if.then.1304
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_551:                              # %if.end.1305
	jmp	.LBB5_552
.LBB5_552:                              # %do.end.1306
	jmp	.LBB5_553
.LBB5_553:                              # %do.end.1307
	jmp	.LBB5_554
.LBB5_554:                              # %do.body.1308
	leaq	-44(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_556
# BB#555:                               # %if.then.1314
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_556:                              # %if.end.1315
	jmp	.LBB5_557
.LBB5_557:                              # %do.end.1316
	jmp	.LBB5_558
.LBB5_558:                              # %do.body.1317
	leaq	-488(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_560
# BB#559:                               # %if.then.1323
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_560:                              # %if.end.1324
	jmp	.LBB5_561
.LBB5_561:                              # %do.end.1325
	jmp	.LBB5_604
.LBB5_562:                              # %sw.bb.1326
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1616(%rbp)       # 8-byte Spill
	movl	%ecx, -1620(%rbp)       # 4-byte Spill
	ja	.LBB5_564
# BB#563:                               # %vaarg.in_reg.1331
	movl	-1620(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1616(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1632(%rbp)       # 8-byte Spill
	jmp	.LBB5_565
.LBB5_564:                              # %vaarg.in_mem.1333
	movq	-1616(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1632(%rbp)       # 8-byte Spill
.LBB5_565:                              # %vaarg.end.1337
	movq	-1632(%rbp), %rax       # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rdi
	callq	g_list_length
	shll	$2, %eax
	movl	%eax, -44(%rbp)
# BB#566:                               # %do.body.1341
	movl	-28(%rbp), %eax
	movl	%eax, -508(%rbp)
# BB#567:                               # %do.body.1343
	leaq	-508(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_569
# BB#568:                               # %if.then.1349
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_569:                              # %if.end.1350
	jmp	.LBB5_570
.LBB5_570:                              # %do.end.1351
	jmp	.LBB5_571
.LBB5_571:                              # %do.end.1352
	jmp	.LBB5_572
.LBB5_572:                              # %do.body.1353
	leaq	-44(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_574
# BB#573:                               # %if.then.1359
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_574:                              # %if.end.1360
	jmp	.LBB5_575
.LBB5_575:                              # %do.end.1361
	jmp	.LBB5_576
.LBB5_576:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -504(%rbp)
	je	.LBB5_585
# BB#577:                               # %while.body
                                        #   in Loop: Header=BB5_576 Depth=1
	movq	-504(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, -512(%rbp)
# BB#578:                               # %do.body.1365
                                        #   in Loop: Header=BB5_576 Depth=1
	leaq	-512(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_580
# BB#579:                               # %if.then.1371
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_580:                              # %if.end.1372
                                        #   in Loop: Header=BB5_576 Depth=1
	jmp	.LBB5_581
.LBB5_581:                              # %do.end.1373
                                        #   in Loop: Header=BB5_576 Depth=1
	cmpq	$0, -504(%rbp)
	je	.LBB5_583
# BB#582:                               # %cond.true.1375
                                        #   in Loop: Header=BB5_576 Depth=1
	movq	-504(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -1640(%rbp)       # 8-byte Spill
	jmp	.LBB5_584
.LBB5_583:                              # %cond.false.1377
                                        #   in Loop: Header=BB5_576 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1640(%rbp)       # 8-byte Spill
	jmp	.LBB5_584
.LBB5_584:                              # %cond.end.1378
                                        #   in Loop: Header=BB5_576 Depth=1
	movq	-1640(%rbp), %rax       # 8-byte Reload
	movq	%rax, -504(%rbp)
	jmp	.LBB5_576
.LBB5_585:                              # %while.end
	jmp	.LBB5_604
.LBB5_586:                              # %sw.bb.1380
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1648(%rbp)       # 8-byte Spill
	movl	%ecx, -1652(%rbp)       # 4-byte Spill
	ja	.LBB5_588
# BB#587:                               # %vaarg.in_reg.1386
	movl	-1652(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1648(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1664(%rbp)       # 8-byte Spill
	jmp	.LBB5_589
.LBB5_588:                              # %vaarg.in_mem.1388
	movq	-1648(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1664(%rbp)       # 8-byte Spill
.LBB5_589:                              # %vaarg.end.1392
	movq	-1664(%rbp), %rax       # 8-byte Reload
	movl	(%rax), %ecx
	movl	%ecx, -516(%rbp)
	movl	$4, -44(%rbp)
# BB#590:                               # %do.body.1394
	movl	-28(%rbp), %eax
	movl	%eax, -520(%rbp)
# BB#591:                               # %do.body.1396
	leaq	-520(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_593
# BB#592:                               # %if.then.1402
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_593:                              # %if.end.1403
	jmp	.LBB5_594
.LBB5_594:                              # %do.end.1404
	jmp	.LBB5_595
.LBB5_595:                              # %do.end.1405
	jmp	.LBB5_596
.LBB5_596:                              # %do.body.1406
	leaq	-44(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_598
# BB#597:                               # %if.then.1412
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_598:                              # %if.end.1413
	jmp	.LBB5_599
.LBB5_599:                              # %do.end.1414
	jmp	.LBB5_600
.LBB5_600:                              # %do.body.1415
	leaq	-516(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB5_602
# BB#601:                               # %if.then.1421
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_605
.LBB5_602:                              # %if.end.1422
	jmp	.LBB5_603
.LBB5_603:                              # %do.end.1423
	jmp	.LBB5_604
.LBB5_604:                              # %sw.epilog.1424
	leaq	-80(%rbp), %rax
	movl	$1, -4(%rbp)
	movq	%rax, -1672(%rbp)       # 8-byte Spill
.LBB5_605:                              # %return
	movl	-4(%rbp), %eax
	addq	$1680, %rsp             # imm = 0x690
	popq	%rbp
	retq
.Lfunc_end5:
	.size	xcf_save_prop, .Lfunc_end5-xcf_save_prop
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_1
	.quad	.LBB5_12
	.quad	.LBB5_37
	.quad	.LBB5_37
	.quad	.LBB5_37
	.quad	.LBB5_48
	.quad	.LBB5_63
	.quad	.LBB5_81
	.quad	.LBB5_99
	.quad	.LBB5_117
	.quad	.LBB5_153
	.quad	.LBB5_171
	.quad	.LBB5_189
	.quad	.LBB5_207
	.quad	.LBB5_225
	.quad	.LBB5_243
	.quad	.LBB5_264
	.quad	.LBB5_282
	.quad	.LBB5_300
	.quad	.LBB5_362
	.quad	.LBB5_387
	.quad	.LBB5_405
	.quad	.LBB5_435
	.quad	.LBB5_453
	.quad	.LBB5_478
	.quad	.LBB5_519
	.quad	.LBB5_544
	.quad	.LBB5_333
	.quad	.LBB5_135
	.quad	.LBB5_37
	.quad	.LBB5_562
	.quad	.LBB5_586

	.text
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
	movl	$.L.str.3, %r9d
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

	.align	16, 0x90
	.type	xcf_save_parasite_list,@function
xcf_save_parasite_list:                 # @xcf_save_parasite_list
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
	movabsq	$xcf_save_parasite_func, %rax
	leaq	-48(%rbp), %rcx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gimp_parasite_list_foreach
	cmpq	$0, -40(%rbp)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB7_3
.LBB7_2:                                # %if.end
	movl	$1, -4(%rbp)
.LBB7_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	xcf_save_parasite_list, .Lfunc_end7-xcf_save_parasite_list
	.cfi_endproc

	.align	16, 0x90
	.type	xcf_save_old_paths,@function
xcf_save_old_paths:                     # @xcf_save_old_paths
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
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, -48(%rbp)
	movq	$0, -64(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_vectors
	movq	%rax, %rdi
	callq	gimp_container_get_n_children
	movl	%eax, -44(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_vectors
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_vectors
	movq	-40(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_get_child_index
	movl	%eax, -48(%rbp)
.LBB8_2:                                # %if.end
	jmp	.LBB8_3
.LBB8_3:                                # %do.body
	leaq	-48(%rbp), %rsi
	movl	$1, %edx
	leaq	-64(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -64(%rbp)
	je	.LBB8_5
# BB#4:                                 # %if.then.9
	movq	-32(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB8_66
.LBB8_5:                                # %if.end.10
	jmp	.LBB8_6
.LBB8_6:                                # %do.end
	jmp	.LBB8_7
.LBB8_7:                                # %do.body.11
	leaq	-44(%rbp), %rsi
	movl	$1, %edx
	leaq	-64(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -64(%rbp)
	je	.LBB8_9
# BB#8:                                 # %if.then.17
	movq	-32(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB8_66
.LBB8_9:                                # %if.end.18
	jmp	.LBB8_10
.LBB8_10:                               # %do.end.19
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_vectors_iter
	movq	%rax, -56(%rbp)
.LBB8_11:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_45 Depth 2
	cmpq	$0, -56(%rbp)
	je	.LBB8_65
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB8_11 Depth=1
	leaq	-116(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_vectors_compat_get_points
	movq	%rax, -112(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_linked
	movl	$2, %ecx
	movl	$4, %r8d
	movl	%eax, -84(%rbp)
	cmpl	$0, -120(%rbp)
	cmovnel	%r8d, %ecx
	movb	%cl, %r9b
	movb	%r9b, -85(%rbp)
	movl	$3, -92(%rbp)
	movl	$1, -96(%rbp)
	movq	-72(%rbp), %rdx
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_tattoo
	movl	%eax, -100(%rbp)
# BB#13:                                # %do.body.31
                                        #   in Loop: Header=BB8_11 Depth=1
	leaq	-80(%rbp), %rsi
	movl	$1, %edx
	leaq	-64(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_string
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -64(%rbp)
	je	.LBB8_15
# BB#14:                                # %if.then.37
	movq	-32(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB8_66
.LBB8_15:                               # %if.end.38
                                        #   in Loop: Header=BB8_11 Depth=1
	jmp	.LBB8_16
.LBB8_16:                               # %do.end.39
                                        #   in Loop: Header=BB8_11 Depth=1
	jmp	.LBB8_17
.LBB8_17:                               # %do.body.40
                                        #   in Loop: Header=BB8_11 Depth=1
	leaq	-84(%rbp), %rsi
	movl	$1, %edx
	leaq	-64(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -64(%rbp)
	je	.LBB8_19
# BB#18:                                # %if.then.46
	movq	-32(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB8_66
.LBB8_19:                               # %if.end.47
                                        #   in Loop: Header=BB8_11 Depth=1
	jmp	.LBB8_20
.LBB8_20:                               # %do.end.48
                                        #   in Loop: Header=BB8_11 Depth=1
	jmp	.LBB8_21
.LBB8_21:                               # %do.body.49
                                        #   in Loop: Header=BB8_11 Depth=1
	leaq	-85(%rbp), %rsi
	movl	$1, %edx
	leaq	-64(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int8
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -64(%rbp)
	je	.LBB8_23
# BB#22:                                # %if.then.55
	movq	-32(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB8_66
.LBB8_23:                               # %if.end.56
                                        #   in Loop: Header=BB8_11 Depth=1
	jmp	.LBB8_24
.LBB8_24:                               # %do.end.57
                                        #   in Loop: Header=BB8_11 Depth=1
	jmp	.LBB8_25
.LBB8_25:                               # %do.body.58
                                        #   in Loop: Header=BB8_11 Depth=1
	leaq	-120(%rbp), %rsi
	movl	$1, %edx
	leaq	-64(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -64(%rbp)
	je	.LBB8_27
# BB#26:                                # %if.then.64
	movq	-32(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB8_66
.LBB8_27:                               # %if.end.65
                                        #   in Loop: Header=BB8_11 Depth=1
	jmp	.LBB8_28
.LBB8_28:                               # %do.end.66
                                        #   in Loop: Header=BB8_11 Depth=1
	jmp	.LBB8_29
.LBB8_29:                               # %do.body.67
                                        #   in Loop: Header=BB8_11 Depth=1
	leaq	-116(%rbp), %rsi
	movl	$1, %edx
	leaq	-64(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -64(%rbp)
	je	.LBB8_31
# BB#30:                                # %if.then.73
	movq	-32(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB8_66
.LBB8_31:                               # %if.end.74
                                        #   in Loop: Header=BB8_11 Depth=1
	jmp	.LBB8_32
.LBB8_32:                               # %do.end.75
                                        #   in Loop: Header=BB8_11 Depth=1
	jmp	.LBB8_33
.LBB8_33:                               # %do.body.76
                                        #   in Loop: Header=BB8_11 Depth=1
	leaq	-92(%rbp), %rsi
	movl	$1, %edx
	leaq	-64(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -64(%rbp)
	je	.LBB8_35
# BB#34:                                # %if.then.82
	movq	-32(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB8_66
.LBB8_35:                               # %if.end.83
                                        #   in Loop: Header=BB8_11 Depth=1
	jmp	.LBB8_36
.LBB8_36:                               # %do.end.84
                                        #   in Loop: Header=BB8_11 Depth=1
	jmp	.LBB8_37
.LBB8_37:                               # %do.body.85
                                        #   in Loop: Header=BB8_11 Depth=1
	leaq	-96(%rbp), %rsi
	movl	$1, %edx
	leaq	-64(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -64(%rbp)
	je	.LBB8_39
# BB#38:                                # %if.then.91
	movq	-32(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB8_66
.LBB8_39:                               # %if.end.92
                                        #   in Loop: Header=BB8_11 Depth=1
	jmp	.LBB8_40
.LBB8_40:                               # %do.end.93
                                        #   in Loop: Header=BB8_11 Depth=1
	jmp	.LBB8_41
.LBB8_41:                               # %do.body.94
                                        #   in Loop: Header=BB8_11 Depth=1
	leaq	-100(%rbp), %rsi
	movl	$1, %edx
	leaq	-64(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -64(%rbp)
	je	.LBB8_43
# BB#42:                                # %if.then.100
	movq	-32(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB8_66
.LBB8_43:                               # %if.end.101
                                        #   in Loop: Header=BB8_11 Depth=1
	jmp	.LBB8_44
.LBB8_44:                               # %do.end.102
                                        #   in Loop: Header=BB8_11 Depth=1
	movl	$0, -124(%rbp)
.LBB8_45:                               # %for.cond.103
                                        #   Parent Loop BB8_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-124(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jae	.LBB8_60
# BB#46:                                # %for.body.105
                                        #   in Loop: Header=BB8_45 Depth=2
	movslq	-124(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-112(%rbp), %rax
	cvtsd2ss	8(%rax), %xmm0
	movss	%xmm0, -128(%rbp)
	movslq	-124(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-112(%rbp), %rax
	cvtsd2ss	16(%rax), %xmm0
	movss	%xmm0, -132(%rbp)
# BB#47:                                # %do.body.112
                                        #   in Loop: Header=BB8_45 Depth=2
	movl	$1, %edx
	leaq	-64(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movslq	-124(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-112(%rbp), %rax
	movq	%rax, %rsi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -64(%rbp)
	je	.LBB8_49
# BB#48:                                # %if.then.120
	movq	-32(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB8_66
.LBB8_49:                               # %if.end.121
                                        #   in Loop: Header=BB8_45 Depth=2
	jmp	.LBB8_50
.LBB8_50:                               # %do.end.122
                                        #   in Loop: Header=BB8_45 Depth=2
	jmp	.LBB8_51
.LBB8_51:                               # %do.body.123
                                        #   in Loop: Header=BB8_45 Depth=2
	leaq	-128(%rbp), %rsi
	movl	$1, %edx
	leaq	-64(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_float
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -64(%rbp)
	je	.LBB8_53
# BB#52:                                # %if.then.129
	movq	-32(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB8_66
.LBB8_53:                               # %if.end.130
                                        #   in Loop: Header=BB8_45 Depth=2
	jmp	.LBB8_54
.LBB8_54:                               # %do.end.131
                                        #   in Loop: Header=BB8_45 Depth=2
	jmp	.LBB8_55
.LBB8_55:                               # %do.body.132
                                        #   in Loop: Header=BB8_45 Depth=2
	leaq	-132(%rbp), %rsi
	movl	$1, %edx
	leaq	-64(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_float
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -64(%rbp)
	je	.LBB8_57
# BB#56:                                # %if.then.138
	movq	-32(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB8_66
.LBB8_57:                               # %if.end.139
                                        #   in Loop: Header=BB8_45 Depth=2
	jmp	.LBB8_58
.LBB8_58:                               # %do.end.140
                                        #   in Loop: Header=BB8_45 Depth=2
	jmp	.LBB8_59
.LBB8_59:                               # %for.inc
                                        #   in Loop: Header=BB8_45 Depth=2
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB8_45
.LBB8_60:                               # %for.end
                                        #   in Loop: Header=BB8_11 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
# BB#61:                                # %for.inc.141
                                        #   in Loop: Header=BB8_11 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB8_63
# BB#62:                                # %cond.true
                                        #   in Loop: Header=BB8_11 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB8_64
.LBB8_63:                               # %cond.false
                                        #   in Loop: Header=BB8_11 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB8_64
.LBB8_64:                               # %cond.end
                                        #   in Loop: Header=BB8_11 Depth=1
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	jmp	.LBB8_11
.LBB8_65:                               # %for.end.144
	movl	$1, -4(%rbp)
.LBB8_66:                               # %return
	movl	-4(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	xcf_save_old_paths, .Lfunc_end8-xcf_save_old_paths
	.cfi_endproc

	.align	16, 0x90
	.type	xcf_save_vectors,@function
xcf_save_vectors:                       # @xcf_save_vectors
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
	subq	$304, %rsp              # imm = 0x130
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$1, -44(%rbp)
	movl	$0, -48(%rbp)
	movq	$0, -80(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_vectors
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_vectors
	movq	-40(%rbp), %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_get_child_index
	movl	%eax, -48(%rbp)
.LBB9_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_vectors
	movq	%rax, %rdi
	callq	gimp_container_get_n_children
	movl	%eax, -52(%rbp)
# BB#3:                                 # %do.body
	leaq	-44(%rbp), %rsi
	movl	$1, %edx
	leaq	-80(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -80(%rbp)
	je	.LBB9_5
# BB#4:                                 # %if.then.9
	movq	-32(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB9_95
.LBB9_5:                                # %if.end.10
	jmp	.LBB9_6
.LBB9_6:                                # %do.end
	jmp	.LBB9_7
.LBB9_7:                                # %do.body.11
	leaq	-48(%rbp), %rsi
	movl	$1, %edx
	leaq	-80(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -80(%rbp)
	je	.LBB9_9
# BB#8:                                 # %if.then.17
	movq	-32(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB9_95
.LBB9_9:                                # %if.end.18
	jmp	.LBB9_10
.LBB9_10:                               # %do.end.19
	jmp	.LBB9_11
.LBB9_11:                               # %do.body.20
	leaq	-52(%rbp), %rsi
	movl	$1, %edx
	leaq	-80(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -80(%rbp)
	je	.LBB9_13
# BB#12:                                # %if.then.26
	movq	-32(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB9_95
.LBB9_13:                               # %if.end.27
	jmp	.LBB9_14
.LBB9_14:                               # %do.end.28
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_vectors_iter
	movq	%rax, -64(%rbp)
.LBB9_15:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_45 Depth 2
                                        #       Child Loop BB9_73 Depth 3
	cmpq	$0, -64(%rbp)
	je	.LBB9_94
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -104(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_visible
	movl	%eax, -112(%rbp)
	movq	-88(%rbp), %rsi
	movq	%rsi, -256(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_linked
	movl	%eax, -116(%rbp)
	movq	-88(%rbp), %rsi
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_tattoo
	movl	%eax, -108(%rbp)
	movq	-88(%rbp), %rsi
	movq	%rsi, -272(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_parasites
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	gimp_parasite_list_persistent_length
	movl	%eax, -120(%rbp)
	movq	-88(%rbp), %rsi
	movq	32(%rsi), %rdi
	callq	g_list_length
	movl	%eax, -124(%rbp)
# BB#17:                                # %do.body.46
                                        #   in Loop: Header=BB9_15 Depth=1
	leaq	-104(%rbp), %rsi
	movl	$1, %edx
	leaq	-80(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_string
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -80(%rbp)
	je	.LBB9_19
# BB#18:                                # %if.then.52
	movq	-32(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB9_95
.LBB9_19:                               # %if.end.53
                                        #   in Loop: Header=BB9_15 Depth=1
	jmp	.LBB9_20
.LBB9_20:                               # %do.end.54
                                        #   in Loop: Header=BB9_15 Depth=1
	jmp	.LBB9_21
.LBB9_21:                               # %do.body.55
                                        #   in Loop: Header=BB9_15 Depth=1
	leaq	-108(%rbp), %rsi
	movl	$1, %edx
	leaq	-80(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -80(%rbp)
	je	.LBB9_23
# BB#22:                                # %if.then.61
	movq	-32(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB9_95
.LBB9_23:                               # %if.end.62
                                        #   in Loop: Header=BB9_15 Depth=1
	jmp	.LBB9_24
.LBB9_24:                               # %do.end.63
                                        #   in Loop: Header=BB9_15 Depth=1
	jmp	.LBB9_25
.LBB9_25:                               # %do.body.64
                                        #   in Loop: Header=BB9_15 Depth=1
	leaq	-112(%rbp), %rsi
	movl	$1, %edx
	leaq	-80(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -80(%rbp)
	je	.LBB9_27
# BB#26:                                # %if.then.70
	movq	-32(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB9_95
.LBB9_27:                               # %if.end.71
                                        #   in Loop: Header=BB9_15 Depth=1
	jmp	.LBB9_28
.LBB9_28:                               # %do.end.72
                                        #   in Loop: Header=BB9_15 Depth=1
	jmp	.LBB9_29
.LBB9_29:                               # %do.body.73
                                        #   in Loop: Header=BB9_15 Depth=1
	leaq	-116(%rbp), %rsi
	movl	$1, %edx
	leaq	-80(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -80(%rbp)
	je	.LBB9_31
# BB#30:                                # %if.then.79
	movq	-32(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB9_95
.LBB9_31:                               # %if.end.80
                                        #   in Loop: Header=BB9_15 Depth=1
	jmp	.LBB9_32
.LBB9_32:                               # %do.end.81
                                        #   in Loop: Header=BB9_15 Depth=1
	jmp	.LBB9_33
.LBB9_33:                               # %do.body.82
                                        #   in Loop: Header=BB9_15 Depth=1
	leaq	-120(%rbp), %rsi
	movl	$1, %edx
	leaq	-80(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -80(%rbp)
	je	.LBB9_35
# BB#34:                                # %if.then.88
	movq	-32(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB9_95
.LBB9_35:                               # %if.end.89
                                        #   in Loop: Header=BB9_15 Depth=1
	jmp	.LBB9_36
.LBB9_36:                               # %do.end.90
                                        #   in Loop: Header=BB9_15 Depth=1
	jmp	.LBB9_37
.LBB9_37:                               # %do.body.91
                                        #   in Loop: Header=BB9_15 Depth=1
	leaq	-124(%rbp), %rsi
	movl	$1, %edx
	leaq	-80(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -80(%rbp)
	je	.LBB9_39
# BB#38:                                # %if.then.97
	movq	-32(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB9_95
.LBB9_39:                               # %if.end.98
                                        #   in Loop: Header=BB9_15 Depth=1
	jmp	.LBB9_40
.LBB9_40:                               # %do.end.99
                                        #   in Loop: Header=BB9_15 Depth=1
	jmp	.LBB9_41
.LBB9_41:                               # %do.body.100
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	-16(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	xcf_save_parasite_list
	cmpl	$0, %eax
	jne	.LBB9_43
# BB#42:                                # %if.then.103
	movl	$0, -4(%rbp)
	jmp	.LBB9_95
.LBB9_43:                               # %if.end.104
                                        #   in Loop: Header=BB9_15 Depth=1
	jmp	.LBB9_44
.LBB9_44:                               # %do.end.105
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	-88(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_list_first
	movq	%rax, -72(%rbp)
.LBB9_45:                               # %for.cond.108
                                        #   Parent Loop BB9_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_73 Depth 3
	cmpq	$0, -72(%rbp)
	je	.LBB9_89
# BB#46:                                # %for.body.110
                                        #   in Loop: Header=BB9_45 Depth=2
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -200(%rbp)
	callq	gimp_bezier_stroke_get_type
	movq	%rax, -208(%rbp)
	cmpq	$0, -200(%rbp)
	jne	.LBB9_48
# BB#47:                                # %if.then.114
                                        #   in Loop: Header=BB9_45 Depth=2
	movl	$0, -212(%rbp)
	jmp	.LBB9_53
.LBB9_48:                               # %if.else
                                        #   in Loop: Header=BB9_45 Depth=2
	movq	-200(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_51
# BB#49:                                # %land.lhs.true
                                        #   in Loop: Header=BB9_45 Depth=2
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-208(%rbp), %rax
	jne	.LBB9_51
# BB#50:                                # %if.then.117
                                        #   in Loop: Header=BB9_45 Depth=2
	movl	$1, -212(%rbp)
	jmp	.LBB9_52
.LBB9_51:                               # %if.else.118
                                        #   in Loop: Header=BB9_45 Depth=2
	movq	-200(%rbp), %rdi
	movq	-208(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -212(%rbp)
.LBB9_52:                               # %if.end.120
                                        #   in Loop: Header=BB9_45 Depth=2
	jmp	.LBB9_53
.LBB9_53:                               # %if.end.121
                                        #   in Loop: Header=BB9_45 Depth=2
	movl	-212(%rbp), %eax
	movl	%eax, -216(%rbp)
	cmpl	$0, -216(%rbp)
	je	.LBB9_55
# BB#54:                                # %if.then.123
                                        #   in Loop: Header=BB9_45 Depth=2
	movl	$1, -140(%rbp)
	movl	$2, -148(%rbp)
	jmp	.LBB9_56
.LBB9_55:                               # %if.else.124
                                        #   in Loop: Header=BB9_45 Depth=2
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	g_printerr
	jmp	.LBB9_85
.LBB9_56:                               # %if.end.125
                                        #   in Loop: Header=BB9_45 Depth=2
	leaq	-144(%rbp), %rsi
	movq	-136(%rbp), %rdi
	callq	gimp_stroke_control_points_get
	movq	%rax, -160(%rbp)
# BB#57:                                # %do.body.127
                                        #   in Loop: Header=BB9_45 Depth=2
	leaq	-140(%rbp), %rsi
	movl	$1, %edx
	leaq	-80(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -80(%rbp)
	je	.LBB9_59
# BB#58:                                # %if.then.133
	movq	-32(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB9_95
.LBB9_59:                               # %if.end.134
                                        #   in Loop: Header=BB9_45 Depth=2
	jmp	.LBB9_60
.LBB9_60:                               # %do.end.135
                                        #   in Loop: Header=BB9_45 Depth=2
	jmp	.LBB9_61
.LBB9_61:                               # %do.body.136
                                        #   in Loop: Header=BB9_45 Depth=2
	leaq	-144(%rbp), %rsi
	movl	$1, %edx
	leaq	-80(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -80(%rbp)
	je	.LBB9_63
# BB#62:                                # %if.then.142
	movq	-32(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB9_95
.LBB9_63:                               # %if.end.143
                                        #   in Loop: Header=BB9_45 Depth=2
	jmp	.LBB9_64
.LBB9_64:                               # %do.end.144
                                        #   in Loop: Header=BB9_45 Depth=2
	jmp	.LBB9_65
.LBB9_65:                               # %do.body.145
                                        #   in Loop: Header=BB9_45 Depth=2
	leaq	-148(%rbp), %rsi
	movl	$1, %edx
	leaq	-80(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -80(%rbp)
	je	.LBB9_67
# BB#66:                                # %if.then.151
	movq	-32(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB9_95
.LBB9_67:                               # %if.end.152
                                        #   in Loop: Header=BB9_45 Depth=2
	jmp	.LBB9_68
.LBB9_68:                               # %do.end.153
                                        #   in Loop: Header=BB9_45 Depth=2
	jmp	.LBB9_69
.LBB9_69:                               # %do.body.154
                                        #   in Loop: Header=BB9_45 Depth=2
	movl	$1, %edx
	leaq	-80(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-160(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rsi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -80(%rbp)
	je	.LBB9_71
# BB#70:                                # %if.then.160
	movq	-32(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB9_95
.LBB9_71:                               # %if.end.161
                                        #   in Loop: Header=BB9_45 Depth=2
	jmp	.LBB9_72
.LBB9_72:                               # %do.end.162
                                        #   in Loop: Header=BB9_45 Depth=2
	movl	$0, -164(%rbp)
.LBB9_73:                               # %for.cond.163
                                        #   Parent Loop BB9_15 Depth=1
                                        #     Parent Loop BB9_45 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-164(%rbp), %eax
	movq	-160(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB9_84
# BB#74:                                # %for.body.166
                                        #   in Loop: Header=BB9_73 Depth=3
	movslq	-164(%rbp), %rax
	movq	-160(%rbp), %rcx
	movq	(%rcx), %rcx
	imulq	$72, %rax, %rax
	addq	%rax, %rcx
	movq	%rcx, -224(%rbp)
	movq	-224(%rbp), %rax
	movl	64(%rax), %edx
	movl	%edx, -168(%rbp)
	movq	-224(%rbp), %rax
	cvtsd2ss	(%rax), %xmm0
	movss	%xmm0, -192(%rbp)
	movq	-224(%rbp), %rax
	cvtsd2ss	8(%rax), %xmm0
	movss	%xmm0, -188(%rbp)
	movq	-224(%rbp), %rax
	cvtsd2ss	16(%rax), %xmm0
	movss	%xmm0, -184(%rbp)
	movq	-224(%rbp), %rax
	cvtsd2ss	24(%rax), %xmm0
	movss	%xmm0, -180(%rbp)
	movq	-224(%rbp), %rax
	cvtsd2ss	32(%rax), %xmm0
	movss	%xmm0, -176(%rbp)
	movq	-224(%rbp), %rax
	cvtsd2ss	40(%rax), %xmm0
	movss	%xmm0, -172(%rbp)
# BB#75:                                # %do.body.186
                                        #   in Loop: Header=BB9_73 Depth=3
	leaq	-168(%rbp), %rsi
	movl	$1, %edx
	leaq	-80(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -80(%rbp)
	je	.LBB9_77
# BB#76:                                # %if.then.192
	movq	-32(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB9_95
.LBB9_77:                               # %if.end.193
                                        #   in Loop: Header=BB9_73 Depth=3
	jmp	.LBB9_78
.LBB9_78:                               # %do.end.194
                                        #   in Loop: Header=BB9_73 Depth=3
	jmp	.LBB9_79
.LBB9_79:                               # %do.body.195
                                        #   in Loop: Header=BB9_73 Depth=3
	leaq	-80(%rbp), %rcx
	leaq	-192(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movl	-148(%rbp), %edx
	callq	xcf_write_float
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -80(%rbp)
	je	.LBB9_81
# BB#80:                                # %if.then.201
	movq	-32(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB9_95
.LBB9_81:                               # %if.end.202
                                        #   in Loop: Header=BB9_73 Depth=3
	jmp	.LBB9_82
.LBB9_82:                               # %do.end.203
                                        #   in Loop: Header=BB9_73 Depth=3
	jmp	.LBB9_83
.LBB9_83:                               # %for.inc
                                        #   in Loop: Header=BB9_73 Depth=3
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -164(%rbp)
	jmp	.LBB9_73
.LBB9_84:                               # %for.end
                                        #   in Loop: Header=BB9_45 Depth=2
	movl	$1, %esi
	movq	-160(%rbp), %rdi
	callq	g_array_free
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB9_85:                               # %for.inc.205
                                        #   in Loop: Header=BB9_45 Depth=2
	cmpq	$0, -72(%rbp)
	je	.LBB9_87
# BB#86:                                # %cond.true
                                        #   in Loop: Header=BB9_45 Depth=2
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jmp	.LBB9_88
.LBB9_87:                               # %cond.false
                                        #   in Loop: Header=BB9_45 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	jmp	.LBB9_88
.LBB9_88:                               # %cond.end
                                        #   in Loop: Header=BB9_45 Depth=2
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	jmp	.LBB9_45
.LBB9_89:                               # %for.end.207
                                        #   in Loop: Header=BB9_15 Depth=1
	jmp	.LBB9_90
.LBB9_90:                               # %for.inc.208
                                        #   in Loop: Header=BB9_15 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB9_92
# BB#91:                                # %cond.true.210
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB9_93
.LBB9_92:                               # %cond.false.212
                                        #   in Loop: Header=BB9_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	jmp	.LBB9_93
.LBB9_93:                               # %cond.end.213
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
	jmp	.LBB9_15
.LBB9_94:                               # %for.end.215
	movl	$1, -4(%rbp)
.LBB9_95:                               # %return
	movl	-4(%rbp), %eax
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end9:
	.size	xcf_save_vectors, .Lfunc_end9-xcf_save_vectors
	.cfi_endproc

	.align	16, 0x90
	.type	xcf_save_parasite_func,@function
xcf_save_parasite_func:                 # @xcf_save_parasite_func
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	cmpq	$0, 8(%rdx)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	callq	xcf_save_parasite
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB10_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	xcf_save_parasite_func, .Lfunc_end10-xcf_save_parasite_func
	.cfi_endproc

	.align	16, 0x90
	.type	xcf_save_parasite,@function
xcf_save_parasite:                      # @xcf_save_parasite
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_parasite_is_persistent
	cmpl	$0, %eax
	je	.LBB11_18
# BB#1:                                 # %if.then
	movq	$0, -56(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_parasite_name
	movq	%rax, -48(%rbp)
# BB#2:                                 # %do.body
	leaq	-48(%rbp), %rsi
	movl	$1, %edx
	leaq	-56(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_string
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -56(%rbp)
	je	.LBB11_4
# BB#3:                                 # %if.then.4
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB11_19
.LBB11_4:                               # %if.end
	jmp	.LBB11_5
.LBB11_5:                               # %do.end
	movq	-24(%rbp), %rdi
	callq	gimp_parasite_flags
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
# BB#6:                                 # %do.body.6
	leaq	-36(%rbp), %rsi
	movl	$1, %edx
	leaq	-56(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -56(%rbp)
	je	.LBB11_8
# BB#7:                                 # %if.then.12
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB11_19
.LBB11_8:                               # %if.end.13
	jmp	.LBB11_9
.LBB11_9:                               # %do.end.14
	movq	-24(%rbp), %rdi
	callq	gimp_parasite_data_size
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
# BB#10:                                # %do.body.17
	leaq	-36(%rbp), %rsi
	movl	$1, %edx
	leaq	-56(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -56(%rbp)
	je	.LBB11_12
# BB#11:                                # %if.then.23
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB11_19
.LBB11_12:                              # %if.end.24
	jmp	.LBB11_13
.LBB11_13:                              # %do.end.25
	jmp	.LBB11_14
.LBB11_14:                              # %do.body.26
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_parasite_data
	movq	-24(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_parasite_data_size
	leaq	-56(%rbp), %rcx
	movl	%eax, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	xcf_write_int8
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -56(%rbp)
	je	.LBB11_16
# BB#15:                                # %if.then.35
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB11_19
.LBB11_16:                              # %if.end.36
	jmp	.LBB11_17
.LBB11_17:                              # %do.end.37
	jmp	.LBB11_18
.LBB11_18:                              # %if.end.38
	movl	$1, -4(%rbp)
.LBB11_19:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	xcf_save_parasite, .Lfunc_end11-xcf_save_parasite
	.cfi_endproc

	.align	16, 0x90
	.type	xcf_save_layer_props,@function
xcf_save_layer_props:                   # @xcf_save_layer_props
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
	subq	$480, %rsp              # imm = 0x1E0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	je	.LBB12_6
# BB#1:                                 # %if.then
	jmp	.LBB12_2
.LBB12_2:                               # %do.body
	movl	$29, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movb	$0, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB12_4
# BB#3:                                 # %if.then.5
	movl	$0, -4(%rbp)
	jmp	.LBB12_118
.LBB12_4:                               # %if.end
	jmp	.LBB12_5
.LBB12_5:                               # %do.end
	jmp	.LBB12_6
.LBB12_6:                               # %if.end.6
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_parent
	cmpq	$0, %rax
	je	.LBB12_12
# BB#7:                                 # %if.then.11
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_path
	movq	%rax, -64(%rbp)
# BB#8:                                 # %do.body.15
	movl	$30, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %r8
	movb	$0, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB12_10
# BB#9:                                 # %if.then.18
	movl	$0, -4(%rbp)
	jmp	.LBB12_118
.LBB12_10:                              # %if.end.19
	jmp	.LBB12_11
.LBB12_11:                              # %do.end.20
	movq	-64(%rbp), %rdi
	callq	g_list_free
.LBB12_12:                              # %if.end.21
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_image_get_active_layer
	movq	-144(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB12_18
# BB#13:                                # %if.then.23
	jmp	.LBB12_14
.LBB12_14:                              # %do.body.24
	movl	$2, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movb	$0, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB12_16
# BB#15:                                # %if.then.27
	movl	$0, -4(%rbp)
	jmp	.LBB12_118
.LBB12_16:                              # %if.end.28
	jmp	.LBB12_17
.LBB12_17:                              # %do.end.29
	jmp	.LBB12_18
.LBB12_18:                              # %if.end.30
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_image_get_floating_selection
	movq	-152(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB12_24
# BB#19:                                # %if.then.33
	movq	-32(%rbp), %rdi
	callq	gimp_layer_get_floating_sel_drawable
	movq	-16(%rbp), %rdi
	movq	%rax, 64(%rdi)
# BB#20:                                # %do.body.35
	movl	$5, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movb	$0, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB12_22
# BB#21:                                # %if.then.38
	movl	$0, -4(%rbp)
	jmp	.LBB12_118
.LBB12_22:                              # %if.end.39
	jmp	.LBB12_23
.LBB12_23:                              # %do.end.40
	jmp	.LBB12_24
.LBB12_24:                              # %if.end.41
	jmp	.LBB12_25
.LBB12_25:                              # %do.body.42
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_opacity
	movl	$6, %edx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	-176(%rbp), %rsi        # 8-byte Reload
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movb	$1, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB12_27
# BB#26:                                # %if.then.46
	movl	$0, -4(%rbp)
	jmp	.LBB12_118
.LBB12_27:                              # %if.end.47
	jmp	.LBB12_28
.LBB12_28:                              # %do.end.48
	jmp	.LBB12_29
.LBB12_29:                              # %do.body.49
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_visible
	movl	$8, %edx
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	-192(%rbp), %rsi        # 8-byte Reload
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movl	%eax, %r8d
	movb	$0, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB12_31
# BB#30:                                # %if.then.55
	movl	$0, -4(%rbp)
	jmp	.LBB12_118
.LBB12_31:                              # %if.end.56
	jmp	.LBB12_32
.LBB12_32:                              # %do.end.57
	jmp	.LBB12_33
.LBB12_33:                              # %do.body.58
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_linked
	movl	$9, %edx
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	-224(%rbp), %rsi        # 8-byte Reload
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movl	%eax, %r8d
	movb	$0, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB12_35
# BB#34:                                # %if.then.64
	movl	$0, -4(%rbp)
	jmp	.LBB12_118
.LBB12_35:                              # %if.end.65
	jmp	.LBB12_36
.LBB12_36:                              # %do.end.66
	jmp	.LBB12_37
.LBB12_37:                              # %do.body.67
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rsi, -256(%rbp)        # 8-byte Spill
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_lock_content
	movl	$28, %edx
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	-256(%rbp), %rsi        # 8-byte Reload
	movq	-264(%rbp), %rcx        # 8-byte Reload
	movl	%eax, %r8d
	movb	$0, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB12_39
# BB#38:                                # %if.then.73
	movl	$0, -4(%rbp)
	jmp	.LBB12_118
.LBB12_39:                              # %if.end.74
	jmp	.LBB12_40
.LBB12_40:                              # %do.end.75
	jmp	.LBB12_41
.LBB12_41:                              # %do.body.76
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	movq	%rsi, -296(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_lock_alpha
	movl	$10, %edx
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	-296(%rbp), %rsi        # 8-byte Reload
	movq	-288(%rbp), %rcx        # 8-byte Reload
	movl	%eax, %r8d
	movb	$0, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB12_43
# BB#42:                                # %if.then.80
	movl	$0, -4(%rbp)
	jmp	.LBB12_118
.LBB12_43:                              # %if.end.81
	jmp	.LBB12_44
.LBB12_44:                              # %do.end.82
	movq	-32(%rbp), %rdi
	callq	gimp_layer_get_mask
	cmpq	$0, %rax
	je	.LBB12_58
# BB#45:                                # %if.then.85
	movq	-32(%rbp), %rdi
	callq	gimp_layer_get_mask
	movq	%rax, -72(%rbp)
# BB#46:                                # %do.body.87
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	movq	%rsi, -320(%rbp)        # 8-byte Spill
	callq	gimp_layer_mask_get_apply
	movl	$11, %edx
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	-320(%rbp), %rsi        # 8-byte Reload
	movq	-312(%rbp), %rcx        # 8-byte Reload
	movl	%eax, %r8d
	movb	$0, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB12_48
# BB#47:                                # %if.then.91
	movl	$0, -4(%rbp)
	jmp	.LBB12_118
.LBB12_48:                              # %if.end.92
	jmp	.LBB12_49
.LBB12_49:                              # %do.end.93
	jmp	.LBB12_50
.LBB12_50:                              # %do.body.94
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	movq	%rsi, -344(%rbp)        # 8-byte Spill
	callq	gimp_layer_mask_get_edit
	movl	$12, %edx
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	-344(%rbp), %rsi        # 8-byte Reload
	movq	-336(%rbp), %rcx        # 8-byte Reload
	movl	%eax, %r8d
	movb	$0, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB12_52
# BB#51:                                # %if.then.98
	movl	$0, -4(%rbp)
	jmp	.LBB12_118
.LBB12_52:                              # %if.end.99
	jmp	.LBB12_53
.LBB12_53:                              # %do.end.100
	jmp	.LBB12_54
.LBB12_54:                              # %do.body.101
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	movq	%rsi, -368(%rbp)        # 8-byte Spill
	callq	gimp_layer_mask_get_show
	movl	$13, %edx
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	-368(%rbp), %rsi        # 8-byte Reload
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movl	%eax, %r8d
	movb	$0, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB12_56
# BB#55:                                # %if.then.105
	movl	$0, -4(%rbp)
	jmp	.LBB12_118
.LBB12_56:                              # %if.end.106
	jmp	.LBB12_57
.LBB12_57:                              # %do.end.107
	jmp	.LBB12_71
.LBB12_58:                              # %if.else
	jmp	.LBB12_59
.LBB12_59:                              # %do.body.108
	movl	$11, %edx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movb	$0, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB12_61
# BB#60:                                # %if.then.111
	movl	$0, -4(%rbp)
	jmp	.LBB12_118
.LBB12_61:                              # %if.end.112
	jmp	.LBB12_62
.LBB12_62:                              # %do.end.113
	jmp	.LBB12_63
.LBB12_63:                              # %do.body.114
	movl	$12, %edx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movb	$0, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB12_65
# BB#64:                                # %if.then.117
	movl	$0, -4(%rbp)
	jmp	.LBB12_118
.LBB12_65:                              # %if.end.118
	jmp	.LBB12_66
.LBB12_66:                              # %do.end.119
	jmp	.LBB12_67
.LBB12_67:                              # %do.body.120
	movl	$13, %edx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movb	$0, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB12_69
# BB#68:                                # %if.then.123
	movl	$0, -4(%rbp)
	jmp	.LBB12_118
.LBB12_69:                              # %if.end.124
	jmp	.LBB12_70
.LBB12_70:                              # %do.end.125
	jmp	.LBB12_71
.LBB12_71:                              # %if.end.126
	movq	-32(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-52(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
# BB#72:                                # %do.body.129
	movl	$15, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movl	-52(%rbp), %r8d
	movl	-56(%rbp), %r9d
	movb	$0, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB12_74
# BB#73:                                # %if.then.132
	movl	$0, -4(%rbp)
	jmp	.LBB12_118
.LBB12_74:                              # %if.end.133
	jmp	.LBB12_75
.LBB12_75:                              # %do.end.134
	jmp	.LBB12_76
.LBB12_76:                              # %do.body.135
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	movq	%rsi, -400(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_mode
	movl	$7, %edx
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	-400(%rbp), %rsi        # 8-byte Reload
	movq	-392(%rbp), %rcx        # 8-byte Reload
	movl	%eax, %r8d
	movb	$0, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB12_78
# BB#77:                                # %if.then.139
	movl	$0, -4(%rbp)
	jmp	.LBB12_118
.LBB12_78:                              # %if.end.140
	jmp	.LBB12_79
.LBB12_79:                              # %do.end.141
	jmp	.LBB12_80
.LBB12_80:                              # %do.body.142
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%rsi, -416(%rbp)        # 8-byte Spill
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_tattoo
	movl	$20, %edx
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	-416(%rbp), %rsi        # 8-byte Reload
	movq	-424(%rbp), %rcx        # 8-byte Reload
	movl	%eax, %r8d
	movb	$0, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB12_82
# BB#81:                                # %if.then.148
	movl	$0, -4(%rbp)
	jmp	.LBB12_118
.LBB12_82:                              # %if.end.149
	jmp	.LBB12_83
.LBB12_83:                              # %do.end.150
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_text_layer_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB12_85
# BB#84:                                # %if.then.153
	movl	$0, -92(%rbp)
	jmp	.LBB12_90
.LBB12_85:                              # %if.else.154
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_88
# BB#86:                                # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB12_88
# BB#87:                                # %if.then.158
	movl	$1, -92(%rbp)
	jmp	.LBB12_89
.LBB12_88:                              # %if.else.159
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB12_89:                              # %if.end.161
	jmp	.LBB12_90
.LBB12_90:                              # %if.end.162
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB12_99
# BB#91:                                # %land.lhs.true.164
	movq	-32(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gimp_text_layer_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpq	$0, 104(%rax)
	je	.LBB12_99
# BB#92:                                # %if.then.168
	movq	-32(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gimp_text_layer_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	callq	gimp_text_layer_get_xcf_flags
	movl	%eax, -108(%rbp)
	movq	-104(%rbp), %rdi
	callq	gimp_text_layer_xcf_save_prepare
	cmpl	$0, -108(%rbp)
	je	.LBB12_98
# BB#93:                                # %if.then.175
	jmp	.LBB12_94
.LBB12_94:                              # %do.body.176
	movl	$26, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movl	-108(%rbp), %r8d
	movb	$0, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB12_96
# BB#95:                                # %if.then.179
	movl	$0, -4(%rbp)
	jmp	.LBB12_118
.LBB12_96:                              # %if.end.180
	jmp	.LBB12_97
.LBB12_97:                              # %do.end.181
	jmp	.LBB12_98
.LBB12_98:                              # %if.end.182
	jmp	.LBB12_99
.LBB12_99:                              # %if.end.183
	movq	-32(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	je	.LBB12_107
# BB#100:                               # %if.then.188
	movl	$0, -112(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_expanded
	cmpl	$0, %eax
	je	.LBB12_102
# BB#101:                               # %if.then.195
	movl	-112(%rbp), %eax
	orl	$1, %eax
	movl	%eax, -112(%rbp)
.LBB12_102:                             # %if.end.196
	jmp	.LBB12_103
.LBB12_103:                             # %do.body.197
	movl	$31, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movl	-112(%rbp), %r8d
	movb	$0, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB12_105
# BB#104:                               # %if.then.200
	movl	$0, -4(%rbp)
	jmp	.LBB12_118
.LBB12_105:                             # %if.end.201
	jmp	.LBB12_106
.LBB12_106:                             # %do.end.202
	jmp	.LBB12_107
.LBB12_107:                             # %if.end.203
	movq	-32(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_parasites
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_parasite_list_length
	cmpl	$0, %eax
	jle	.LBB12_113
# BB#108:                               # %if.then.209
	jmp	.LBB12_109
.LBB12_109:                             # %do.body.210
	movl	$21, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	movb	$0, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB12_111
# BB#110:                               # %if.then.213
	movl	$0, -4(%rbp)
	jmp	.LBB12_118
.LBB12_111:                             # %if.end.214
	jmp	.LBB12_112
.LBB12_112:                             # %do.end.215
	jmp	.LBB12_113
.LBB12_113:                             # %if.end.216
	jmp	.LBB12_114
.LBB12_114:                             # %do.body.217
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movb	$0, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB12_116
# BB#115:                               # %if.then.220
	movl	$0, -4(%rbp)
	jmp	.LBB12_118
.LBB12_116:                             # %if.end.221
	jmp	.LBB12_117
.LBB12_117:                             # %do.end.222
	movl	$1, -4(%rbp)
.LBB12_118:                             # %return
	movl	-4(%rbp), %eax
	addq	$480, %rsp              # imm = 0x1E0
	popq	%rbp
	retq
.Lfunc_end12:
	.size	xcf_save_layer_props, .Lfunc_end12-xcf_save_layer_props
	.cfi_endproc

	.align	16, 0x90
	.type	xcf_save_hierarchy,@function
xcf_save_hierarchy:                     # @xcf_save_hierarchy
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -80(%rbp)
	movq	-24(%rbp), %rdi
	callq	tile_manager_width
	movl	%eax, -44(%rbp)
	movq	-24(%rbp), %rdi
	callq	tile_manager_height
	movl	%eax, -48(%rbp)
	movq	-24(%rbp), %rdi
	callq	tile_manager_bpp
	movl	%eax, -52(%rbp)
# BB#1:                                 # %do.body
	leaq	-44(%rbp), %rsi
	movl	$1, %edx
	leaq	-80(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -80(%rbp)
	je	.LBB13_3
# BB#2:                                 # %if.then
	movq	-32(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB13_55
.LBB13_3:                               # %if.end
	jmp	.LBB13_4
.LBB13_4:                               # %do.end
	jmp	.LBB13_5
.LBB13_5:                               # %do.body.4
	leaq	-48(%rbp), %rsi
	movl	$1, %edx
	leaq	-80(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -80(%rbp)
	je	.LBB13_7
# BB#6:                                 # %if.then.10
	movq	-32(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB13_55
.LBB13_7:                               # %if.end.11
	jmp	.LBB13_8
.LBB13_8:                               # %do.end.12
	jmp	.LBB13_9
.LBB13_9:                               # %do.body.13
	leaq	-52(%rbp), %rsi
	movl	$1, %edx
	leaq	-80(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -80(%rbp)
	je	.LBB13_11
# BB#10:                                # %if.then.19
	movq	-32(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB13_55
.LBB13_11:                              # %if.end.20
	jmp	.LBB13_12
.LBB13_12:                              # %do.end.21
	movl	$64, %esi
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movl	-44(%rbp), %edi
	callq	xcf_calc_levels
	movl	$64, %esi
	movl	%eax, -64(%rbp)
	movl	-48(%rbp), %edi
	callq	xcf_calc_levels
	movl	%eax, -68(%rbp)
	movl	-64(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jle	.LBB13_14
# BB#13:                                # %cond.true
	movl	-64(%rbp), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB13_15
.LBB13_14:                              # %cond.false
	movl	-68(%rbp), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB13_15:                              # %cond.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -60(%rbp)
	movq	-16(%rbp), %rcx
	movl	24(%rcx), %eax
	movl	%eax, -36(%rbp)
# BB#16:                                # %do.body.26
	leaq	-80(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movl	-60(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, %esi
	callq	xcf_write_zero_int32
	movq	-16(%rbp), %rdx
	addl	24(%rdx), %eax
	movl	%eax, 24(%rdx)
	cmpq	$0, -80(%rbp)
	je	.LBB13_18
# BB#17:                                # %if.then.33
	movq	-32(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB13_55
.LBB13_18:                              # %if.end.34
	jmp	.LBB13_19
.LBB13_19:                              # %do.end.35
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -40(%rbp)
	movl	$0, -56(%rbp)
.LBB13_20:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-56(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB13_54
# BB#21:                                # %for.body
                                        #   in Loop: Header=BB13_20 Depth=1
	jmp	.LBB13_22
.LBB13_22:                              # %do.body.38
                                        #   in Loop: Header=BB13_20 Depth=1
	movq	-16(%rbp), %rdi
	movl	-36(%rbp), %esi
	movq	-32(%rbp), %rdx
	callq	xcf_seek_pos
	cmpl	$0, %eax
	jne	.LBB13_24
# BB#23:                                # %if.then.41
	movl	$0, -4(%rbp)
	jmp	.LBB13_55
.LBB13_24:                              # %if.end.42
                                        #   in Loop: Header=BB13_20 Depth=1
	jmp	.LBB13_25
.LBB13_25:                              # %do.end.43
                                        #   in Loop: Header=BB13_20 Depth=1
	jmp	.LBB13_26
.LBB13_26:                              # %do.body.44
                                        #   in Loop: Header=BB13_20 Depth=1
	leaq	-40(%rbp), %rsi
	movl	$1, %edx
	leaq	-80(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -80(%rbp)
	je	.LBB13_28
# BB#27:                                # %if.then.50
	movq	-32(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB13_55
.LBB13_28:                              # %if.end.51
                                        #   in Loop: Header=BB13_20 Depth=1
	jmp	.LBB13_29
.LBB13_29:                              # %do.end.52
                                        #   in Loop: Header=BB13_20 Depth=1
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -36(%rbp)
# BB#30:                                # %do.body.54
                                        #   in Loop: Header=BB13_20 Depth=1
	movq	-16(%rbp), %rdi
	movl	-40(%rbp), %esi
	movq	-32(%rbp), %rdx
	callq	xcf_seek_pos
	cmpl	$0, %eax
	jne	.LBB13_32
# BB#31:                                # %if.then.57
	movl	$0, -4(%rbp)
	jmp	.LBB13_55
.LBB13_32:                              # %if.end.58
                                        #   in Loop: Header=BB13_20 Depth=1
	jmp	.LBB13_33
.LBB13_33:                              # %do.end.59
                                        #   in Loop: Header=BB13_20 Depth=1
	cmpl	$0, -56(%rbp)
	jne	.LBB13_39
# BB#34:                                # %if.then.61
                                        #   in Loop: Header=BB13_20 Depth=1
	jmp	.LBB13_35
.LBB13_35:                              # %do.body.62
                                        #   in Loop: Header=BB13_20 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	xcf_save_level
	cmpl	$0, %eax
	jne	.LBB13_37
# BB#36:                                # %if.then.65
	movl	$0, -4(%rbp)
	jmp	.LBB13_55
.LBB13_37:                              # %if.end.66
                                        #   in Loop: Header=BB13_20 Depth=1
	jmp	.LBB13_38
.LBB13_38:                              # %do.end.67
                                        #   in Loop: Header=BB13_20 Depth=1
	jmp	.LBB13_52
.LBB13_39:                              # %if.else
                                        #   in Loop: Header=BB13_20 Depth=1
	movl	$0, -64(%rbp)
	movl	-44(%rbp), %eax
	shrl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-48(%rbp), %eax
	shrl	$1, %eax
	movl	%eax, -48(%rbp)
# BB#40:                                # %do.body.69
                                        #   in Loop: Header=BB13_20 Depth=1
	leaq	-44(%rbp), %rsi
	movl	$1, %edx
	leaq	-80(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -80(%rbp)
	je	.LBB13_42
# BB#41:                                # %if.then.75
	movq	-32(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB13_55
.LBB13_42:                              # %if.end.76
                                        #   in Loop: Header=BB13_20 Depth=1
	jmp	.LBB13_43
.LBB13_43:                              # %do.end.77
                                        #   in Loop: Header=BB13_20 Depth=1
	jmp	.LBB13_44
.LBB13_44:                              # %do.body.78
                                        #   in Loop: Header=BB13_20 Depth=1
	leaq	-48(%rbp), %rsi
	movl	$1, %edx
	leaq	-80(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -80(%rbp)
	je	.LBB13_46
# BB#45:                                # %if.then.84
	movq	-32(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB13_55
.LBB13_46:                              # %if.end.85
                                        #   in Loop: Header=BB13_20 Depth=1
	jmp	.LBB13_47
.LBB13_47:                              # %do.end.86
                                        #   in Loop: Header=BB13_20 Depth=1
	jmp	.LBB13_48
.LBB13_48:                              # %do.body.87
                                        #   in Loop: Header=BB13_20 Depth=1
	leaq	-64(%rbp), %rsi
	movl	$1, %edx
	leaq	-80(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -80(%rbp)
	je	.LBB13_50
# BB#49:                                # %if.then.93
	movq	-32(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB13_55
.LBB13_50:                              # %if.end.94
                                        #   in Loop: Header=BB13_20 Depth=1
	jmp	.LBB13_51
.LBB13_51:                              # %do.end.95
                                        #   in Loop: Header=BB13_20 Depth=1
	jmp	.LBB13_52
.LBB13_52:                              # %if.end.96
                                        #   in Loop: Header=BB13_20 Depth=1
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -40(%rbp)
# BB#53:                                # %for.inc
                                        #   in Loop: Header=BB13_20 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB13_20
.LBB13_54:                              # %for.end
	movl	$1, -4(%rbp)
.LBB13_55:                              # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	xcf_save_hierarchy, .Lfunc_end13-xcf_save_hierarchy
	.cfi_endproc

	.align	16, 0x90
	.type	xcf_calc_levels,@function
xcf_calc_levels:                        # @xcf_calc_levels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$1, -12(%rbp)
.LBB14_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	.LBB14_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	$2, %eax
	movl	-4(%rbp), %ecx
	movl	%eax, -16(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-16(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB14_1
.LBB14_3:                               # %while.end
	movl	-12(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end14:
	.size	xcf_calc_levels, .Lfunc_end14-xcf_calc_levels
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4609434218613702656     # double 1.5
.LCPI15_1:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
	.text
	.align	16, 0x90
	.type	xcf_save_level,@function
xcf_save_level:                         # @xcf_save_level
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -88(%rbp)
	movq	-24(%rbp), %rdi
	callq	tile_manager_width
	movl	%eax, -60(%rbp)
	movq	-24(%rbp), %rdi
	callq	tile_manager_height
	movl	%eax, -64(%rbp)
# BB#1:                                 # %do.body
	leaq	-60(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB15_3
# BB#2:                                 # %if.then
	movq	-32(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB15_44
.LBB15_3:                               # %if.end
	jmp	.LBB15_4
.LBB15_4:                               # %do.end
	jmp	.LBB15_5
.LBB15_5:                               # %do.body.3
	leaq	-64(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB15_7
# BB#6:                                 # %if.then.9
	movq	-32(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB15_44
.LBB15_7:                               # %if.end.10
	jmp	.LBB15_8
.LBB15_8:                               # %do.end.11
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	movl	%esi, -92(%rbp)         # 4-byte Spill
	callq	tile_manager_bpp
	shll	$12, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	.LCPI15_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	.LCPI15_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %rdi
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rdi
	cvttsd2si	%xmm0, %rcx
	ucomisd	%xmm1, %xmm0
	cmovbq	%rcx, %rdi
	callq	g_malloc
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rax
	movl	16(%rax), %esi
	movl	20(%rax), %edx
	imull	%edx, %esi
	movl	%esi, -68(%rbp)
	incl	%esi
	movl	%esi, %eax
	leaq	15(,%rax,4), %rax
	movabsq	$34359738352, %rcx      # imm = 0x7FFFFFFF0
	andq	%rcx, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	-68(%rbp), %edx
	addl	$1, %edx
	movl	%edx, %edx
	movl	%edx, %ecx
	shlq	$2, %rcx
	movq	%rax, %rdi
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rcx, %rdx
	callq	memset
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movl	24(%rax), %esi
	movl	%esi, -52(%rbp)
# BB#9:                                 # %do.body.24
	leaq	-88(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movl	-68(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, %esi
	callq	xcf_write_zero_int32
	movq	-16(%rbp), %rdx
	addl	24(%rdx), %eax
	movl	%eax, 24(%rdx)
	cmpq	$0, -88(%rbp)
	je	.LBB15_11
# BB#10:                                # %if.then.31
	movq	-32(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB15_44
.LBB15_11:                              # %if.end.32
	jmp	.LBB15_12
.LBB15_12:                              # %do.end.33
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB15_31
# BB#13:                                # %if.then.36
	movl	$0, -72(%rbp)
.LBB15_14:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-72(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jae	.LBB15_30
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB15_14 Depth=1
	movl	-56(%rbp), %eax
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$4, %rdx
	movq	%rdx, -48(%rbp)
	movl	%eax, (%rcx)
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$3, %rdx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	ja	.LBB15_28
# BB#45:                                # %for.body
                                        #   in Loop: Header=BB15_14 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	.LJTI15_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB15_16:                              # %sw.bb
                                        #   in Loop: Header=BB15_14 Depth=1
	jmp	.LBB15_17
.LBB15_17:                              # %do.body.38
                                        #   in Loop: Header=BB15_14 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-72(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	(%rcx,%rax,8), %rsi
	movq	-32(%rbp), %rdx
	callq	xcf_save_tile
	cmpl	$0, %eax
	jne	.LBB15_19
# BB#18:                                # %if.then.42
	movl	$0, -4(%rbp)
	jmp	.LBB15_44
.LBB15_19:                              # %if.end.43
                                        #   in Loop: Header=BB15_14 Depth=1
	jmp	.LBB15_20
.LBB15_20:                              # %do.end.44
                                        #   in Loop: Header=BB15_14 Depth=1
	jmp	.LBB15_28
.LBB15_21:                              # %sw.bb.45
                                        #   in Loop: Header=BB15_14 Depth=1
	jmp	.LBB15_22
.LBB15_22:                              # %do.body.46
                                        #   in Loop: Header=BB15_14 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-72(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	(%rcx,%rax,8), %rsi
	movq	-80(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	xcf_save_tile_rle
	cmpl	$0, %eax
	jne	.LBB15_24
# BB#23:                                # %if.then.52
	movl	$0, -4(%rbp)
	jmp	.LBB15_44
.LBB15_24:                              # %if.end.53
                                        #   in Loop: Header=BB15_14 Depth=1
	jmp	.LBB15_25
.LBB15_25:                              # %do.end.54
                                        #   in Loop: Header=BB15_14 Depth=1
	jmp	.LBB15_28
.LBB15_26:                              # %sw.bb.55
                                        #   in Loop: Header=BB15_14 Depth=1
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	g_error
	jmp	.LBB15_28
.LBB15_27:                              # %sw.bb.56
                                        #   in Loop: Header=BB15_14 Depth=1
	movabsq	$.L.str.6, %rdi
	movb	$0, %al
	callq	g_error
.LBB15_28:                              # %sw.epilog
                                        #   in Loop: Header=BB15_14 Depth=1
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -56(%rbp)
# BB#29:                                # %for.inc
                                        #   in Loop: Header=BB15_14 Depth=1
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB15_14
.LBB15_30:                              # %for.end
	jmp	.LBB15_31
.LBB15_31:                              # %if.end.58
	movq	-80(%rbp), %rdi
	callq	g_free
# BB#32:                                # %do.body.59
	movq	-16(%rbp), %rdi
	movl	-52(%rbp), %esi
	movq	-32(%rbp), %rdx
	callq	xcf_seek_pos
	cmpl	$0, %eax
	jne	.LBB15_34
# BB#33:                                # %if.then.62
	movl	$0, -4(%rbp)
	jmp	.LBB15_44
.LBB15_34:                              # %if.end.63
	jmp	.LBB15_35
.LBB15_35:                              # %do.end.64
	jmp	.LBB15_36
.LBB15_36:                              # %do.body.65
	leaq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-40(%rbp), %rsi
	movl	-68(%rbp), %edx
	addl	$1, %edx
	callq	xcf_write_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB15_38
# BB#37:                                # %if.then.72
	movq	-32(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB15_44
.LBB15_38:                              # %if.end.73
	jmp	.LBB15_39
.LBB15_39:                              # %do.end.74
	jmp	.LBB15_40
.LBB15_40:                              # %do.body.75
	movq	-16(%rbp), %rdi
	movl	-56(%rbp), %esi
	movq	-32(%rbp), %rdx
	callq	xcf_seek_pos
	cmpl	$0, %eax
	jne	.LBB15_42
# BB#41:                                # %if.then.78
	movl	$0, -4(%rbp)
	jmp	.LBB15_44
.LBB15_42:                              # %if.end.79
	jmp	.LBB15_43
.LBB15_43:                              # %do.end.80
	movl	$1, -4(%rbp)
.LBB15_44:                              # %return
	movl	-4(%rbp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	xcf_save_level, .Lfunc_end15-xcf_save_level
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI15_0:
	.quad	.LBB15_16
	.quad	.LBB15_21
	.quad	.LBB15_26
	.quad	.LBB15_27

	.text
	.align	16, 0x90
	.type	xcf_save_tile,@function
xcf_save_tile:                          # @xcf_save_tile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	tile_lock
# BB#1:                                 # %do.body
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rdi
	movq	-24(%rbp), %rcx
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	tile_data_pointer
	movq	-24(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	tile_size
	leaq	-40(%rbp), %rcx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movl	%eax, %edx
	callq	xcf_write_int8
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -40(%rbp)
	je	.LBB16_3
# BB#2:                                 # %if.then
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB16_5
.LBB16_3:                               # %if.end
	jmp	.LBB16_4
.LBB16_4:                               # %do.end
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	callq	tile_release
	movl	$1, -4(%rbp)
.LBB16_5:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	xcf_save_tile, .Lfunc_end16-xcf_save_tile
	.cfi_endproc

	.align	16, 0x90
	.type	xcf_save_tile_rle,@function
xcf_save_tile_rle:                      # @xcf_save_tile_rle
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	movq	-24(%rbp), %rdi
	callq	tile_lock
	movq	-24(%rbp), %rdi
	callq	tile_bpp
	movl	%eax, -56(%rbp)
	movl	$0, -60(%rbp)
.LBB17_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_3 Depth 2
                                        #       Child Loop BB17_28 Depth 3
	movl	-60(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB17_40
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	xorl	%eax, %eax
	movq	-24(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	tile_data_pointer
	movslq	-60(%rbp), %rdi
	addq	%rdi, %rax
	movq	%rax, -72(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -80(%rbp)
	movl	$0, -84(%rbp)
	movq	-24(%rbp), %rdi
	callq	tile_ewidth
	movq	-24(%rbp), %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	tile_eheight
	movl	-108(%rbp), %edx        # 4-byte Reload
	imull	%eax, %edx
	movl	%edx, -88(%rbp)
	movl	$-1, -92(%rbp)
.LBB17_3:                               # %while.cond
                                        #   Parent Loop BB17_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_28 Depth 3
	cmpl	$0, -88(%rbp)
	jle	.LBB17_36
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB17_3 Depth=2
	movl	-76(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB17_5
	jmp	.LBB17_46
.LBB17_46:                              # %while.body
                                        #   in Loop: Header=BB17_3 Depth=2
	movl	-112(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB17_18
	jmp	.LBB17_33
.LBB17_5:                               # %sw.bb
                                        #   in Loop: Header=BB17_3 Depth=2
	cmpl	$32768, -80(%rbp)       # imm = 0x8000
	je	.LBB17_9
# BB#6:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB17_3 Depth=2
	movl	-88(%rbp), %eax
	subl	-80(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB17_9
# BB#7:                                 # %lor.lhs.false.7
                                        #   in Loop: Header=BB17_3 Depth=2
	cmpl	$1, -80(%rbp)
	jle	.LBB17_13
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB17_3 Depth=2
	movl	-92(%rbp), %eax
	movq	-72(%rbp), %rcx
	movzbl	(%rcx), %edx
	cmpl	%edx, %eax
	je	.LBB17_13
.LBB17_9:                               # %if.then
                                        #   in Loop: Header=BB17_3 Depth=2
	movl	-80(%rbp), %eax
	addl	-84(%rbp), %eax
	movl	%eax, -84(%rbp)
	cmpl	$128, -80(%rbp)
	jl	.LBB17_11
# BB#10:                                # %if.then.13
                                        #   in Loop: Header=BB17_3 Depth=2
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -52(%rbp)
	movslq	%eax, %rdx
	movq	-32(%rbp), %rsi
	movb	$127, (%rsi,%rdx)
	movl	-80(%rbp), %eax
	sarl	$8, %eax
	movb	%al, %dil
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -52(%rbp)
	movslq	%eax, %rdx
	movq	-32(%rbp), %rsi
	movb	%dil, (%rsi,%rdx)
	movl	-80(%rbp), %eax
	andl	$255, %eax
	movb	%al, %dil
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -52(%rbp)
	movslq	%eax, %rdx
	movq	-32(%rbp), %rsi
	movb	%dil, (%rsi,%rdx)
	movl	-92(%rbp), %eax
	movb	%al, %dil
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -52(%rbp)
	movslq	%eax, %rdx
	movq	-32(%rbp), %rsi
	movb	%dil, (%rsi,%rdx)
	jmp	.LBB17_12
.LBB17_11:                              # %if.else
                                        #   in Loop: Header=BB17_3 Depth=2
	movl	-80(%rbp), %eax
	subl	$1, %eax
	movb	%al, %cl
	movl	-52(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -52(%rbp)
	movslq	%eax, %rsi
	movq	-32(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
	movl	-92(%rbp), %eax
	movb	%al, %cl
	movl	-52(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -52(%rbp)
	movslq	%eax, %rsi
	movq	-32(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
.LBB17_12:                              # %if.end
                                        #   in Loop: Header=BB17_3 Depth=2
	movl	-80(%rbp), %eax
	movl	-88(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -88(%rbp)
	movl	$0, -80(%rbp)
	jmp	.LBB17_17
.LBB17_13:                              # %if.else.36
                                        #   in Loop: Header=BB17_3 Depth=2
	cmpl	$1, -80(%rbp)
	jne	.LBB17_16
# BB#14:                                # %land.lhs.true.39
                                        #   in Loop: Header=BB17_3 Depth=2
	movl	-92(%rbp), %eax
	movq	-72(%rbp), %rcx
	movzbl	(%rcx), %edx
	cmpl	%edx, %eax
	je	.LBB17_16
# BB#15:                                # %if.then.43
                                        #   in Loop: Header=BB17_3 Depth=2
	movl	$1, -76(%rbp)
.LBB17_16:                              # %if.end.44
                                        #   in Loop: Header=BB17_3 Depth=2
	jmp	.LBB17_17
.LBB17_17:                              # %if.end.45
                                        #   in Loop: Header=BB17_3 Depth=2
	jmp	.LBB17_33
.LBB17_18:                              # %sw.bb.46
                                        #   in Loop: Header=BB17_3 Depth=2
	cmpl	$32768, -80(%rbp)       # imm = 0x8000
	je	.LBB17_24
# BB#19:                                # %lor.lhs.false.49
                                        #   in Loop: Header=BB17_3 Depth=2
	movl	-88(%rbp), %eax
	subl	-80(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB17_24
# BB#20:                                # %lor.lhs.false.53
                                        #   in Loop: Header=BB17_3 Depth=2
	cmpl	$0, -80(%rbp)
	jle	.LBB17_32
# BB#21:                                # %land.lhs.true.56
                                        #   in Loop: Header=BB17_3 Depth=2
	movl	-92(%rbp), %eax
	movq	-72(%rbp), %rcx
	movzbl	(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB17_32
# BB#22:                                # %land.lhs.true.60
                                        #   in Loop: Header=BB17_3 Depth=2
	movl	-88(%rbp), %eax
	subl	-80(%rbp), %eax
	cmpl	$1, %eax
	je	.LBB17_24
# BB#23:                                # %lor.lhs.false.64
                                        #   in Loop: Header=BB17_3 Depth=2
	movl	-92(%rbp), %eax
	movslq	-56(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	cmpl	%esi, %eax
	jne	.LBB17_32
.LBB17_24:                              # %if.then.70
                                        #   in Loop: Header=BB17_3 Depth=2
	movl	-80(%rbp), %eax
	addl	-84(%rbp), %eax
	movl	%eax, -84(%rbp)
	movl	$0, -76(%rbp)
	cmpl	$128, -80(%rbp)
	jl	.LBB17_26
# BB#25:                                # %if.then.74
                                        #   in Loop: Header=BB17_3 Depth=2
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -52(%rbp)
	movslq	%eax, %rdx
	movq	-32(%rbp), %rsi
	movb	$-128, (%rsi,%rdx)
	movl	-80(%rbp), %eax
	sarl	$8, %eax
	movb	%al, %dil
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -52(%rbp)
	movslq	%eax, %rdx
	movq	-32(%rbp), %rsi
	movb	%dil, (%rsi,%rdx)
	movl	-80(%rbp), %eax
	andl	$255, %eax
	movb	%al, %dil
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -52(%rbp)
	movslq	%eax, %rdx
	movq	-32(%rbp), %rsi
	movb	%dil, (%rsi,%rdx)
	jmp	.LBB17_27
.LBB17_26:                              # %if.else.88
                                        #   in Loop: Header=BB17_3 Depth=2
	movl	$255, %eax
	movl	-80(%rbp), %ecx
	subl	$1, %ecx
	subl	%ecx, %eax
	movb	%al, %dl
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -52(%rbp)
	movslq	%eax, %rsi
	movq	-32(%rbp), %rdi
	movb	%dl, (%rdi,%rsi)
.LBB17_27:                              # %if.end.95
                                        #   in Loop: Header=BB17_3 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-72(%rbp), %rdx
	movl	-80(%rbp), %eax
	imull	-56(%rbp), %eax
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -104(%rbp)
	movl	$0, -64(%rbp)
.LBB17_28:                              # %for.cond.99
                                        #   Parent Loop BB17_1 Depth=1
                                        #     Parent Loop BB17_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-64(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.LBB17_31
# BB#29:                                # %for.body.102
                                        #   in Loop: Header=BB17_28 Depth=3
	movq	-104(%rbp), %rax
	movb	(%rax), %cl
	movl	-52(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -52(%rbp)
	movslq	%edx, %rax
	movq	-32(%rbp), %rdi
	movb	%cl, (%rdi,%rax)
	movl	-56(%rbp), %edx
	movq	-104(%rbp), %rax
	movslq	%edx, %rdi
	addq	%rdi, %rax
	movq	%rax, -104(%rbp)
# BB#30:                                # %for.inc
                                        #   in Loop: Header=BB17_28 Depth=3
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB17_28
.LBB17_31:                              # %for.end
                                        #   in Loop: Header=BB17_3 Depth=2
	movl	-80(%rbp), %eax
	movl	-88(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -88(%rbp)
	movl	$0, -80(%rbp)
.LBB17_32:                              # %if.end.110
                                        #   in Loop: Header=BB17_3 Depth=2
	jmp	.LBB17_33
.LBB17_33:                              # %sw.epilog
                                        #   in Loop: Header=BB17_3 Depth=2
	cmpl	$0, -88(%rbp)
	jle	.LBB17_35
# BB#34:                                # %if.then.113
                                        #   in Loop: Header=BB17_3 Depth=2
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	movq	-72(%rbp), %rcx
	movzbl	(%rcx), %eax
	movl	%eax, -92(%rbp)
	movl	-56(%rbp), %eax
	movq	-72(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -72(%rbp)
.LBB17_35:                              # %if.end.118
                                        #   in Loop: Header=BB17_3 Depth=2
	jmp	.LBB17_3
.LBB17_36:                              # %while.end
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-84(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	%eax, -120(%rbp)        # 4-byte Spill
	callq	tile_ewidth
	movq	-24(%rbp), %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	tile_eheight
	movl	-124(%rbp), %ecx        # 4-byte Reload
	imull	%eax, %ecx
	movl	-120(%rbp), %eax        # 4-byte Reload
	cmpl	%ecx, %eax
	je	.LBB17_38
# BB#37:                                # %if.then.124
                                        #   in Loop: Header=BB17_1 Depth=1
	movabsq	$.L.str.7, %rdi
	movl	-84(%rbp), %esi
	movb	$0, %al
	callq	g_message
.LBB17_38:                              # %if.end.125
                                        #   in Loop: Header=BB17_1 Depth=1
	jmp	.LBB17_39
.LBB17_39:                              # %for.inc.126
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB17_1
.LBB17_40:                              # %for.end.128
	jmp	.LBB17_41
.LBB17_41:                              # %do.body
	leaq	-48(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-32(%rbp), %rsi
	movl	-52(%rbp), %edx
	callq	xcf_write_int8
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	cmpq	$0, -48(%rbp)
	je	.LBB17_43
# BB#42:                                # %if.then.131
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_propagate_error
	movl	$0, -4(%rbp)
	jmp	.LBB17_45
.LBB17_43:                              # %if.end.132
	jmp	.LBB17_44
.LBB17_44:                              # %do.end
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	callq	tile_release
	movl	$1, -4(%rbp)
.LBB17_45:                              # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	xcf_save_tile_rle, .Lfunc_end17-xcf_save_tile_rle
	.cfi_endproc

	.align	16, 0x90
	.type	g_error,@function
g_error:                                # @g_error
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
	subq	$400, %rsp              # imm = 0x190
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
	je	.LBB18_3
# BB#2:                                 # %entry
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
.LBB18_3:                               # %entry
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
	movabsq	$.L.str.3, %rdi
	movl	$4, %esi
	leaq	-32(%rbp), %r9
	movq	%r8, -8(%rbp)
	movq	%r9, %r8
	leaq	-208(%rbp), %r10
	movq	%r10, 16(%r8)
	leaq	16(%rbp), %r10
	movq	%r10, 8(%r8)
	movl	$48, 4(%r8)
	movl	$8, (%r8)
	movq	-8(%rbp), %rdx
	movq	%r9, %rcx
	callq	g_logv
	leaq	-32(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
.LBB18_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB18_1
.Lfunc_end18:
	.size	g_error, .Lfunc_end18-g_error
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	je	.LBB19_2
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
.LBB19_2:                               # %entry
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
	movl	$.L.str.3, %r9d
	movl	%r9d, %edi
	movl	$32, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end19:
	.size	g_message, .Lfunc_end19-g_message
	.cfi_endproc

	.align	16, 0x90
	.type	xcf_save_channel_props,@function
xcf_save_channel_props:                 # @xcf_save_channel_props
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
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_get_active_channel
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB20_6
# BB#1:                                 # %if.then
	jmp	.LBB20_2
.LBB20_2:                               # %do.body
	movl	$3, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movb	$0, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB20_4
# BB#3:                                 # %if.then.2
	movl	$0, -4(%rbp)
	jmp	.LBB20_51
.LBB20_4:                               # %if.end
	jmp	.LBB20_5
.LBB20_5:                               # %do.end
	jmp	.LBB20_6
.LBB20_6:                               # %if.end.3
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_image_get_mask
	movq	-72(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB20_12
# BB#7:                                 # %if.then.6
	jmp	.LBB20_8
.LBB20_8:                               # %do.body.7
	movl	$4, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movb	$0, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB20_10
# BB#9:                                 # %if.then.10
	movl	$0, -4(%rbp)
	jmp	.LBB20_51
.LBB20_10:                              # %if.end.11
	jmp	.LBB20_11
.LBB20_11:                              # %do.end.12
	jmp	.LBB20_12
.LBB20_12:                              # %if.end.13
	jmp	.LBB20_13
.LBB20_13:                              # %do.body.14
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_channel_get_opacity
	movl	$6, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movb	$1, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB20_15
# BB#14:                                # %if.then.18
	movl	$0, -4(%rbp)
	jmp	.LBB20_51
.LBB20_15:                              # %if.end.19
	jmp	.LBB20_16
.LBB20_16:                              # %do.end.20
	jmp	.LBB20_17
.LBB20_17:                              # %do.body.21
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_visible
	movl	$8, %edx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movl	%eax, %r8d
	movb	$0, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB20_19
# BB#18:                                # %if.then.27
	movl	$0, -4(%rbp)
	jmp	.LBB20_51
.LBB20_19:                              # %if.end.28
	jmp	.LBB20_20
.LBB20_20:                              # %do.end.29
	jmp	.LBB20_21
.LBB20_21:                              # %do.body.30
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_linked
	movl	$9, %edx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movl	%eax, %r8d
	movb	$0, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB20_23
# BB#22:                                # %if.then.36
	movl	$0, -4(%rbp)
	jmp	.LBB20_51
.LBB20_23:                              # %if.end.37
	jmp	.LBB20_24
.LBB20_24:                              # %do.end.38
	jmp	.LBB20_25
.LBB20_25:                              # %do.body.39
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_lock_content
	movl	$28, %edx
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	-176(%rbp), %rsi        # 8-byte Reload
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movl	%eax, %r8d
	movb	$0, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB20_27
# BB#26:                                # %if.then.45
	movl	$0, -4(%rbp)
	jmp	.LBB20_51
.LBB20_27:                              # %if.end.46
	jmp	.LBB20_28
.LBB20_28:                              # %do.end.47
	jmp	.LBB20_29
.LBB20_29:                              # %do.body.48
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_show_masked
	movl	$14, %edx
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	-216(%rbp), %rsi        # 8-byte Reload
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movl	%eax, %r8d
	movb	$0, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB20_31
# BB#30:                                # %if.then.52
	movl	$0, -4(%rbp)
	jmp	.LBB20_51
.LBB20_31:                              # %if.end.53
	jmp	.LBB20_32
.LBB20_32:                              # %do.end.54
	leaq	-51(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$40, %rcx
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rax, %rsi
	addq	$2, %rsi
	movq	%rcx, %rdi
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-224(%rbp), %rcx        # 8-byte Reload
	callq	gimp_rgb_get_uchar
# BB#33:                                # %do.body.57
	movl	$16, %edx
	leaq	-51(%rbp), %r8
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movb	$0, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB20_35
# BB#34:                                # %if.then.60
	movl	$0, -4(%rbp)
	jmp	.LBB20_51
.LBB20_35:                              # %if.end.61
	jmp	.LBB20_36
.LBB20_36:                              # %do.end.62
	jmp	.LBB20_37
.LBB20_37:                              # %do.body.63
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_tattoo
	movl	$20, %edx
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	-240(%rbp), %rsi        # 8-byte Reload
	movq	-248(%rbp), %rcx        # 8-byte Reload
	movl	%eax, %r8d
	movb	$0, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB20_39
# BB#38:                                # %if.then.69
	movl	$0, -4(%rbp)
	jmp	.LBB20_51
.LBB20_39:                              # %if.end.70
	jmp	.LBB20_40
.LBB20_40:                              # %do.end.71
	movq	-32(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_parasites
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_parasite_list_length
	cmpl	$0, %eax
	jle	.LBB20_46
# BB#41:                                # %if.then.77
	jmp	.LBB20_42
.LBB20_42:                              # %do.body.78
	movl	$21, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	movb	$0, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB20_44
# BB#43:                                # %if.then.81
	movl	$0, -4(%rbp)
	jmp	.LBB20_51
.LBB20_44:                              # %if.end.82
	jmp	.LBB20_45
.LBB20_45:                              # %do.end.83
	jmp	.LBB20_46
.LBB20_46:                              # %if.end.84
	jmp	.LBB20_47
.LBB20_47:                              # %do.body.85
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movb	$0, %al
	callq	xcf_save_prop
	cmpl	$0, %eax
	jne	.LBB20_49
# BB#48:                                # %if.then.88
	movl	$0, -4(%rbp)
	jmp	.LBB20_51
.LBB20_49:                              # %if.end.89
	jmp	.LBB20_50
.LBB20_50:                              # %do.end.90
	movl	$1, -4(%rbp)
.LBB20_51:                              # %return
	movl	-4(%rbp), %eax
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end20:
	.size	xcf_save_channel_props, .Lfunc_end20-xcf_save_channel_props
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp xcf v%03d"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp xcf file"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%s: skipping guide with bad orientation"
	.size	.L.str.2, 40

	.type	.L__func__.xcf_save_prop,@object # @__func__.xcf_save_prop
.L__func__.xcf_save_prop:
	.asciz	"xcf_save_prop"
	.size	.L__func__.xcf_save_prop, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Gimp-XCF"
	.size	.L.str.3, 9

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Skipping unknown stroke type!\n"
	.size	.L.str.4, 31

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"xcf: zlib compression unimplemented"
	.size	.L.str.5, 36

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"xcf: fractal compression unimplemented"
	.size	.L.str.6, 39

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"xcf: uh oh! xcf rle tile saving error: %d"
	.size	.L.str.7, 42


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
