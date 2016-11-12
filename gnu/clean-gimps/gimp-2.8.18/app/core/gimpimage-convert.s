	.text
	.file	"gimpimage-convert.bc"
	.globl	gimp_image_convert
	.align	16, 0x90
	.type	gimp_image_convert,@function
gimp_image_convert:                     # @gimp_image_convert
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
	pushq	%rbx
	subq	$3848, %rsp             # imm = 0xF08
.Ltmp3:
	.cfi_offset %rbx, -24
	movq	40(%rbp), %rax
	movq	32(%rbp), %r10
	movq	24(%rbp), %r11
	movl	16(%rbp), %ebx
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movl	%ebx, -48(%rbp)
	movq	%r11, -56(%rbp)
	movq	%r10, -64(%rbp)
	movq	%rax, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -112(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -140(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -140(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_convert, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -12(%rbp)
	jmp	.LBB0_189
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	%eax, -3612(%rbp)       # 4-byte Spill
	callq	gimp_image_base_type
	movl	-3612(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB0_15
# BB#14:                                # %if.then.14
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_convert, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -12(%rbp)
	jmp	.LBB0_189
.LBB0_16:                               # %if.end.16
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.17
	jmp	.LBB0_18
.LBB0_18:                               # %do.body.18
	cmpq	$0, -64(%rbp)
	je	.LBB0_27
# BB#19:                                # %lor.lhs.false
	movq	-64(%rbp), %rax
	movq	%rax, -152(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB0_21
# BB#20:                                # %if.then.28
	movl	$0, -164(%rbp)
	jmp	.LBB0_26
.LBB0_21:                               # %if.else.29
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_24
# BB#22:                                # %land.lhs.true.32
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB0_24
# BB#23:                                # %if.then.36
	movl	$1, -164(%rbp)
	jmp	.LBB0_25
.LBB0_24:                               # %if.else.37
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB0_25:                               # %if.end.39
	jmp	.LBB0_26
.LBB0_26:                               # %if.end.40
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB0_28
.LBB0_27:                               # %if.then.43
	jmp	.LBB0_29
.LBB0_28:                               # %if.else.44
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_convert, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -12(%rbp)
	jmp	.LBB0_189
.LBB0_29:                               # %if.end.45
	jmp	.LBB0_30
.LBB0_30:                               # %do.end.46
	jmp	.LBB0_31
.LBB0_31:                               # %do.body.47
	cmpq	$0, -72(%rbp)
	je	.LBB0_33
# BB#32:                                # %lor.lhs.false.49
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_34
.LBB0_33:                               # %if.then.51
	jmp	.LBB0_35
.LBB0_34:                               # %if.else.52
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_convert, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -12(%rbp)
	jmp	.LBB0_189
.LBB0_35:                               # %if.end.53
	jmp	.LBB0_36
.LBB0_36:                               # %do.end.54
	cmpl	$4, -48(%rbp)
	jne	.LBB0_61
# BB#37:                                # %if.then.56
	jmp	.LBB0_38
.LBB0_38:                               # %do.body.57
	cmpq	$0, -56(%rbp)
	je	.LBB0_47
# BB#39:                                # %lor.lhs.false.59
	movq	-56(%rbp), %rax
	movq	%rax, -176(%rbp)
	callq	gimp_palette_get_type
	movq	%rax, -184(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.LBB0_41
# BB#40:                                # %if.then.68
	movl	$0, -188(%rbp)
	jmp	.LBB0_46
.LBB0_41:                               # %if.else.69
	movq	-176(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_44
# BB#42:                                # %land.lhs.true.72
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-184(%rbp), %rax
	jne	.LBB0_44
# BB#43:                                # %if.then.76
	movl	$1, -188(%rbp)
	jmp	.LBB0_45
.LBB0_44:                               # %if.else.77
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -188(%rbp)
.LBB0_45:                               # %if.end.79
	jmp	.LBB0_46
.LBB0_46:                               # %if.end.80
	movl	-188(%rbp), %eax
	movl	%eax, -192(%rbp)
	cmpl	$0, -192(%rbp)
	je	.LBB0_48
.LBB0_47:                               # %if.then.83
	jmp	.LBB0_49
.LBB0_48:                               # %if.else.84
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_convert, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -12(%rbp)
	jmp	.LBB0_189
.LBB0_49:                               # %if.end.85
	jmp	.LBB0_50
.LBB0_50:                               # %do.end.86
	jmp	.LBB0_51
.LBB0_51:                               # %do.body.87
	cmpq	$0, -56(%rbp)
	je	.LBB0_53
# BB#52:                                # %lor.lhs.false.89
	movq	-56(%rbp), %rdi
	callq	gimp_palette_get_n_colors
	cmpl	$256, %eax              # imm = 0x100
	jg	.LBB0_54
.LBB0_53:                               # %if.then.92
	jmp	.LBB0_55
.LBB0_54:                               # %if.else.93
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_convert, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -12(%rbp)
	jmp	.LBB0_189
.LBB0_55:                               # %if.end.94
	jmp	.LBB0_56
.LBB0_56:                               # %do.end.95
	cmpq	$0, -56(%rbp)
	jne	.LBB0_58
# BB#57:                                # %if.then.97
	movl	$3, -48(%rbp)
.LBB0_58:                               # %if.end.98
	movq	-56(%rbp), %rdi
	callq	gimp_palette_get_n_colors
	cmpl	$0, %eax
	jne	.LBB0_60
# BB#59:                                # %if.then.101
	movq	-72(%rbp), %rdi
	movq	%rdi, -3624(%rbp)       # 8-byte Spill
	callq	gimp_error_quark
	movabsq	$.L.str.7, %rdi
	movl	%eax, -3628(%rbp)       # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-3624(%rbp), %rdi       # 8-byte Reload
	movl	-3628(%rbp), %esi       # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movl	$0, -12(%rbp)
	jmp	.LBB0_189
.LBB0_60:                               # %if.end.104
	jmp	.LBB0_61
.LBB0_61:                               # %if.end.105
	movq	-56(%rbp), %rax
	movq	%rax, theCustomPalette(%rip)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_set_busy
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_layer_list
	movq	%rax, -96(%rbp)
	movq	%rax, %rdi
	callq	g_list_length
	movl	%eax, -120(%rbp)
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -3632(%rbp)       # 4-byte Spill
	je	.LBB0_62
	jmp	.LBB0_190
.LBB0_190:                              # %if.end.105
	movl	-3632(%rbp), %eax       # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -3636(%rbp)       # 4-byte Spill
	je	.LBB0_63
	jmp	.LBB0_191
.LBB0_191:                              # %if.end.105
	movl	-3632(%rbp), %eax       # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -3640(%rbp)       # 4-byte Spill
	je	.LBB0_64
	jmp	.LBB0_65
.LBB0_62:                               # %sw.bb
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.8, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	callq	g_dpgettext
	movq	%rax, -112(%rbp)
	jmp	.LBB0_65
.LBB0_63:                               # %sw.bb.109
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.9, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	callq	g_dpgettext
	movq	%rax, -112(%rbp)
	jmp	.LBB0_65
.LBB0_64:                               # %sw.bb.111
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.10, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	callq	g_dpgettext
	movq	%rax, -112(%rbp)
.LBB0_65:                               # %sw.epilog
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	movl	$6, %esi
	movq	-24(%rbp), %rdi
	movq	-112(%rbp), %rdx
	callq	gimp_image_undo_group_start
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-24(%rbp), %rdi
	movl	%eax, -3644(%rbp)       # 4-byte Spill
	callq	gimp_image_undo_push_image_type
	movq	-24(%rbp), %rdi
	movq	%rax, -3656(%rbp)       # 8-byte Spill
	callq	gimp_image_base_type
	movabsq	$.L.str.11, %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movl	%eax, -84(%rbp)
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
	callq	cpercep_init
	cmpl	$2, -28(%rbp)
	jne	.LBB0_99
# BB#66:                                # %if.then.118
	cmpl	$1, -84(%rbp)
	jne	.LBB0_70
# BB#67:                                # %land.lhs.true.121
	cmpl	$256, -32(%rbp)         # imm = 0x100
	jne	.LBB0_70
# BB#68:                                # %land.lhs.true.123
	cmpl	$0, -48(%rbp)
	jne	.LBB0_70
# BB#69:                                # %if.then.125
	movl	$0, -36(%rbp)
.LBB0_70:                               # %if.end.126
	movl	-84(%rbp), %edi
	movl	-32(%rbp), %esi
	movl	-36(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-40(%rbp), %r8d
	movq	-64(%rbp), %r9
	callq	initialize_median_cut
	movq	%rax, -80(%rbp)
	cmpl	$0, -48(%rbp)
	jne	.LBB0_85
# BB#71:                                # %if.then.129
	cmpl	$1, -84(%rbp)
	jne	.LBB0_73
# BB#72:                                # %if.then.131
	movq	-80(%rbp), %rax
	movq	8232(%rax), %rdi
	callq	zero_histogram_gray
	jmp	.LBB0_74
.LBB0_73:                               # %if.else.132
	movq	-80(%rbp), %rax
	movq	8232(%rax), %rdi
	callq	zero_histogram_rgb
.LBB0_74:                               # %if.end.134
	movl	$0, needs_quantize
	movl	$0, num_found_cols
	movq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)
	movl	$0, -116(%rbp)
.LBB0_75:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -104(%rbp)
	je	.LBB0_84
# BB#76:                                # %for.body
                                        #   in Loop: Header=BB0_75 Depth=1
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	cmpl	$1, -84(%rbp)
	jne	.LBB0_78
# BB#77:                                # %if.then.138
                                        #   in Loop: Header=BB0_75 Depth=1
	movq	-80(%rbp), %rax
	movq	8232(%rax), %rdi
	movq	-208(%rbp), %rsi
	movl	-40(%rbp), %edx
	callq	generate_histogram_gray
	jmp	.LBB0_79
.LBB0_78:                               # %if.else.140
                                        #   in Loop: Header=BB0_75 Depth=1
	movq	-80(%rbp), %rax
	movq	8232(%rax), %rdi
	movq	-208(%rbp), %rsi
	movl	-32(%rbp), %edx
	movl	-40(%rbp), %ecx
	movq	-64(%rbp), %r8
	movl	-116(%rbp), %r9d
	movl	-120(%rbp), %r10d
	movl	%r10d, (%rsp)
	callq	generate_histogram_rgb
.LBB0_79:                               # %if.end.142
                                        #   in Loop: Header=BB0_75 Depth=1
	jmp	.LBB0_80
.LBB0_80:                               # %for.inc
                                        #   in Loop: Header=BB0_75 Depth=1
	cmpq	$0, -104(%rbp)
	je	.LBB0_82
# BB#81:                                # %cond.true
                                        #   in Loop: Header=BB0_75 Depth=1
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -3664(%rbp)       # 8-byte Spill
	jmp	.LBB0_83
.LBB0_82:                               # %cond.false
                                        #   in Loop: Header=BB0_75 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -3664(%rbp)       # 8-byte Spill
	jmp	.LBB0_83
.LBB0_83:                               # %cond.end
                                        #   in Loop: Header=BB0_75 Depth=1
	movq	-3664(%rbp), %rax       # 8-byte Reload
	movq	%rax, -104(%rbp)
	movl	-116(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -116(%rbp)
	jmp	.LBB0_75
.LBB0_84:                               # %for.end
	jmp	.LBB0_85
.LBB0_85:                               # %if.end.144
	cmpq	$0, -64(%rbp)
	je	.LBB0_87
# BB#86:                                # %if.then.146
	movabsq	$.L.str.12, %rdi
	movq	-64(%rbp), %rax
	movq	%rax, -3672(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-3672(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_set_text
.LBB0_87:                               # %if.end.148
	cmpl	$0, -84(%rbp)
	jne	.LBB0_95
# BB#88:                                # %land.lhs.true.150
	cmpl	$0, needs_quantize
	jne	.LBB0_95
# BB#89:                                # %land.lhs.true.152
	cmpl	$0, -48(%rbp)
	jne	.LBB0_95
# BB#90:                                # %if.then.154
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movq	-80(%rbp), %rdi
	callq	*%rax
	movl	$4, %edx
	movl	-84(%rbp), %edi
	movl	-32(%rbp), %esi
	movl	-48(%rbp), %ecx
	movl	-40(%rbp), %r8d
	movq	-64(%rbp), %r9
	callq	initialize_median_cut
	movq	%rax, -80(%rbp)
	movl	num_found_cols, %ecx
	movq	-80(%rbp), %rax
	movl	%ecx, 36(%rax)
	movl	$0, -196(%rbp)
.LBB0_91:                               # %for.cond.156
                                        # =>This Inner Loop Header: Depth=1
	movl	-196(%rbp), %eax
	cmpl	num_found_cols, %eax
	jge	.LBB0_94
# BB#92:                                # %for.body.158
                                        #   in Loop: Header=BB0_91 Depth=1
	movabsq	$found_cols, %rax
	movslq	-196(%rbp), %rcx
	imulq	$3, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %esi
	movslq	-196(%rbp), %rcx
	movq	-80(%rbp), %rdx
	addq	$40, %rdx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rdx
	movl	%esi, (%rdx)
	movslq	-196(%rbp), %rcx
	imulq	$3, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movzbl	1(%rdx), %esi
	movslq	-196(%rbp), %rcx
	movq	-80(%rbp), %rdx
	addq	$40, %rdx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rdx
	movl	%esi, 4(%rdx)
	movslq	-196(%rbp), %rcx
	imulq	$3, %rcx, %rcx
	addq	%rcx, %rax
	movzbl	2(%rax), %esi
	movslq	-196(%rbp), %rax
	movq	-80(%rbp), %rcx
	addq	$40, %rcx
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movl	%esi, 8(%rcx)
# BB#93:                                # %for.inc.176
                                        #   in Loop: Header=BB0_91 Depth=1
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB0_91
.LBB0_94:                               # %for.end.178
	jmp	.LBB0_96
.LBB0_95:                               # %if.else.179
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rdi
	callq	*%rax
.LBB0_96:                               # %if.end.180
	cmpl	$0, -48(%rbp)
	jne	.LBB0_98
# BB#97:                                # %if.then.183
	movl	$12, %eax
	movl	%eax, %edx
	movabsq	$color_quicksort, %rcx
	movq	-80(%rbp), %rsi
	addq	$40, %rsi
	movq	-80(%rbp), %rdi
	movslq	36(%rdi), %rdi
	movq	%rdi, -3680(%rbp)       # 8-byte Spill
	movq	%rsi, %rdi
	movq	-3680(%rbp), %rsi       # 8-byte Reload
	callq	qsort
.LBB0_98:                               # %if.end.187
	jmp	.LBB0_99
.LBB0_99:                               # %if.end.188
	cmpq	$0, -64(%rbp)
	je	.LBB0_101
# BB#100:                               # %if.then.190
	movabsq	$.L.str.13, %rdi
	movq	-64(%rbp), %rax
	movq	%rax, -3688(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-3688(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_set_text
.LBB0_101:                              # %if.end.192
	movl	-28(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -3692(%rbp)       # 4-byte Spill
	jne	.LBB0_105
	jmp	.LBB0_102
.LBB0_102:                              # %sw.bb.193
	movq	-80(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_104
# BB#103:                               # %if.then.195
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	-80(%rbp), %rdi
	callq	*%rax
.LBB0_104:                              # %if.end.197
	jmp	.LBB0_106
.LBB0_105:                              # %sw.default
	jmp	.LBB0_106
.LBB0_106:                              # %sw.epilog.198
	cmpq	$0, -80(%rbp)
	je	.LBB0_108
# BB#107:                               # %if.then.200
	movl	-120(%rbp), %eax
	movq	-80(%rbp), %rcx
	movl	%eax, 8260(%rcx)
.LBB0_108:                              # %if.end.202
	movq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)
	movl	$0, -116(%rbp)
.LBB0_109:                              # %for.cond.203
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -104(%rbp)
	je	.LBB0_152
# BB#110:                               # %for.body.205
                                        #   in Loop: Header=BB0_109 Depth=1
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)
	movl	-28(%rbp), %ecx
	movl	%ecx, %edx
	subl	$2, %edx
	movl	%ecx, -3696(%rbp)       # 4-byte Spill
	movl	%edx, -3700(%rbp)       # 4-byte Spill
	jb	.LBB0_111
	jmp	.LBB0_195
.LBB0_195:                              # %for.body.205
                                        #   in Loop: Header=BB0_109 Depth=1
	movl	-3696(%rbp), %eax       # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -3704(%rbp)       # 4-byte Spill
	je	.LBB0_112
	jmp	.LBB0_146
.LBB0_111:                              # %sw.bb.209
                                        #   in Loop: Header=BB0_109 Depth=1
	movq	-216(%rbp), %rax
	movq	%rax, -3712(%rbp)       # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-3712(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %ecx
	movl	-28(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_drawable_convert_type
	jmp	.LBB0_147
.LBB0_112:                              # %sw.bb.212
                                        #   in Loop: Header=BB0_109 Depth=1
	cmpl	$0, -28(%rbp)
	jne	.LBB0_114
# BB#113:                               # %cond.true.217
                                        #   in Loop: Header=BB0_109 Depth=1
	xorl	%eax, %eax
	movl	%eax, -3716(%rbp)       # 4-byte Spill
	jmp	.LBB0_118
.LBB0_114:                              # %cond.false.218
                                        #   in Loop: Header=BB0_109 Depth=1
	cmpl	$1, -28(%rbp)
	jne	.LBB0_116
# BB#115:                               # %cond.true.221
                                        #   in Loop: Header=BB0_109 Depth=1
	movl	$2, %eax
	movl	%eax, -3720(%rbp)       # 4-byte Spill
	jmp	.LBB0_117
.LBB0_116:                              # %cond.false.222
                                        #   in Loop: Header=BB0_109 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$4, %ecx
	cmpl	$2, -28(%rbp)
	cmovel	%ecx, %eax
	movl	%eax, -3720(%rbp)       # 4-byte Spill
.LBB0_117:                              # %cond.end.226
                                        #   in Loop: Header=BB0_109 Depth=1
	movl	-3720(%rbp), %eax       # 4-byte Reload
	movl	%eax, -3716(%rbp)       # 4-byte Spill
.LBB0_118:                              # %cond.end.228
                                        #   in Loop: Header=BB0_109 Depth=1
	movl	-3716(%rbp), %eax       # 4-byte Reload
	movl	%eax, -220(%rbp)
	movq	-216(%rbp), %rcx
	movq	%rcx, -3728(%rbp)       # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-3728(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB0_130
# BB#119:                               # %if.then.234
                                        #   in Loop: Header=BB0_109 Depth=1
	cmpl	$0, -220(%rbp)
	je	.LBB0_121
# BB#120:                               # %lor.lhs.false.237
                                        #   in Loop: Header=BB0_109 Depth=1
	cmpl	$1, -220(%rbp)
	jne	.LBB0_122
.LBB0_121:                              # %cond.true.240
                                        #   in Loop: Header=BB0_109 Depth=1
	movl	$1, %eax
	movl	%eax, -3732(%rbp)       # 4-byte Spill
	jmp	.LBB0_129
.LBB0_122:                              # %cond.false.241
                                        #   in Loop: Header=BB0_109 Depth=1
	cmpl	$2, -220(%rbp)
	je	.LBB0_124
# BB#123:                               # %lor.lhs.false.244
                                        #   in Loop: Header=BB0_109 Depth=1
	cmpl	$3, -220(%rbp)
	jne	.LBB0_125
.LBB0_124:                              # %cond.true.247
                                        #   in Loop: Header=BB0_109 Depth=1
	movl	$3, %eax
	movl	%eax, -3736(%rbp)       # 4-byte Spill
	jmp	.LBB0_128
.LBB0_125:                              # %cond.false.248
                                        #   in Loop: Header=BB0_109 Depth=1
	movb	$1, %al
	cmpl	$4, -220(%rbp)
	movb	%al, -3737(%rbp)        # 1-byte Spill
	je	.LBB0_127
# BB#126:                               # %lor.rhs
                                        #   in Loop: Header=BB0_109 Depth=1
	cmpl	$5, -220(%rbp)
	sete	%al
	movb	%al, -3737(%rbp)        # 1-byte Spill
.LBB0_127:                              # %lor.end
                                        #   in Loop: Header=BB0_109 Depth=1
	movb	-3737(%rbp), %al        # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$5, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -3736(%rbp)       # 4-byte Spill
.LBB0_128:                              # %cond.end.254
                                        #   in Loop: Header=BB0_109 Depth=1
	movl	-3736(%rbp), %eax       # 4-byte Reload
	movl	%eax, -3732(%rbp)       # 4-byte Spill
.LBB0_129:                              # %cond.end.256
                                        #   in Loop: Header=BB0_109 Depth=1
	movl	-3732(%rbp), %eax       # 4-byte Reload
	movl	%eax, -220(%rbp)
.LBB0_130:                              # %if.end.258
                                        #   in Loop: Header=BB0_109 Depth=1
	movq	-216(%rbp), %rax
	movq	%rax, -3752(%rbp)       # 8-byte Spill
	callq	gimp_item_get_type
	movq	-3752(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-216(%rbp), %rsi
	movl	%eax, -3756(%rbp)       # 4-byte Spill
	movq	%rsi, -3768(%rbp)       # 8-byte Spill
	callq	gimp_item_get_type
	movq	-3768(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	cmpl	$1, -220(%rbp)
	movl	%eax, -3772(%rbp)       # 4-byte Spill
	jne	.LBB0_132
# BB#131:                               # %cond.true.267
                                        #   in Loop: Header=BB0_109 Depth=1
	movl	$4, %eax
	movl	%eax, -3776(%rbp)       # 4-byte Spill
	jmp	.LBB0_145
.LBB0_132:                              # %cond.false.268
                                        #   in Loop: Header=BB0_109 Depth=1
	cmpl	$0, -220(%rbp)
	jne	.LBB0_134
# BB#133:                               # %cond.true.271
                                        #   in Loop: Header=BB0_109 Depth=1
	movl	$3, %eax
	movl	%eax, -3780(%rbp)       # 4-byte Spill
	jmp	.LBB0_144
.LBB0_134:                              # %cond.false.272
                                        #   in Loop: Header=BB0_109 Depth=1
	cmpl	$3, -220(%rbp)
	jne	.LBB0_136
# BB#135:                               # %cond.true.275
                                        #   in Loop: Header=BB0_109 Depth=1
	movl	$2, %eax
	movl	%eax, -3784(%rbp)       # 4-byte Spill
	jmp	.LBB0_143
.LBB0_136:                              # %cond.false.276
                                        #   in Loop: Header=BB0_109 Depth=1
	cmpl	$2, -220(%rbp)
	jne	.LBB0_138
# BB#137:                               # %cond.true.279
                                        #   in Loop: Header=BB0_109 Depth=1
	movl	$1, %eax
	movl	%eax, -3788(%rbp)       # 4-byte Spill
	jmp	.LBB0_142
.LBB0_138:                              # %cond.false.280
                                        #   in Loop: Header=BB0_109 Depth=1
	cmpl	$5, -220(%rbp)
	jne	.LBB0_140
# BB#139:                               # %cond.true.283
                                        #   in Loop: Header=BB0_109 Depth=1
	movl	$2, %eax
	movl	%eax, -3792(%rbp)       # 4-byte Spill
	jmp	.LBB0_141
.LBB0_140:                              # %cond.false.284
                                        #   in Loop: Header=BB0_109 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	cmpl	$4, -220(%rbp)
	cmovel	%ecx, %eax
	movl	%eax, -3792(%rbp)       # 4-byte Spill
.LBB0_141:                              # %cond.end.288
                                        #   in Loop: Header=BB0_109 Depth=1
	movl	-3792(%rbp), %eax       # 4-byte Reload
	movl	%eax, -3788(%rbp)       # 4-byte Spill
.LBB0_142:                              # %cond.end.290
                                        #   in Loop: Header=BB0_109 Depth=1
	movl	-3788(%rbp), %eax       # 4-byte Reload
	movl	%eax, -3784(%rbp)       # 4-byte Spill
.LBB0_143:                              # %cond.end.292
                                        #   in Loop: Header=BB0_109 Depth=1
	movl	-3784(%rbp), %eax       # 4-byte Reload
	movl	%eax, -3780(%rbp)       # 4-byte Spill
.LBB0_144:                              # %cond.end.294
                                        #   in Loop: Header=BB0_109 Depth=1
	movl	-3780(%rbp), %eax       # 4-byte Reload
	movl	%eax, -3776(%rbp)       # 4-byte Spill
.LBB0_145:                              # %cond.end.296
                                        #   in Loop: Header=BB0_109 Depth=1
	movl	-3776(%rbp), %eax       # 4-byte Reload
	movl	-3756(%rbp), %edi       # 4-byte Reload
	movl	-3772(%rbp), %esi       # 4-byte Reload
	movl	%eax, %edx
	callq	tile_manager_new
	movq	%rax, -232(%rbp)
	movl	-116(%rbp), %edx
	movq	-80(%rbp), %rax
	movl	%edx, 8256(%rax)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	-80(%rbp), %rdi
	movq	-216(%rbp), %rsi
	movq	-232(%rbp), %rdx
	callq	*%rax
	movq	-216(%rbp), %rax
	movq	%rax, -3800(%rbp)       # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-3800(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-232(%rbp), %rcx
	movl	-220(%rbp), %r8d
	movq	%rax, %rdi
	callq	gimp_drawable_set_tiles
	movq	-232(%rbp), %rdi
	callq	tile_manager_unref
	jmp	.LBB0_147
.LBB0_146:                              # %sw.default.302
                                        #   in Loop: Header=BB0_109 Depth=1
	jmp	.LBB0_147
.LBB0_147:                              # %sw.epilog.303
                                        #   in Loop: Header=BB0_109 Depth=1
	jmp	.LBB0_148
.LBB0_148:                              # %for.inc.304
                                        #   in Loop: Header=BB0_109 Depth=1
	cmpq	$0, -104(%rbp)
	je	.LBB0_150
# BB#149:                               # %cond.true.306
                                        #   in Loop: Header=BB0_109 Depth=1
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -3808(%rbp)       # 8-byte Spill
	jmp	.LBB0_151
.LBB0_150:                              # %cond.false.308
                                        #   in Loop: Header=BB0_109 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -3808(%rbp)       # 8-byte Spill
	jmp	.LBB0_151
.LBB0_151:                              # %cond.end.309
                                        #   in Loop: Header=BB0_109 Depth=1
	movq	-3808(%rbp), %rax       # 8-byte Reload
	movq	%rax, -104(%rbp)
	movl	-116(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -116(%rbp)
	jmp	.LBB0_109
.LBB0_152:                              # %for.end.312
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	subl	$2, %ecx
	movl	%eax, -3812(%rbp)       # 4-byte Spill
	movl	%ecx, -3816(%rbp)       # 4-byte Spill
	jb	.LBB0_153
	jmp	.LBB0_192
.LBB0_192:                              # %for.end.312
	movl	-3812(%rbp), %eax       # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -3820(%rbp)       # 4-byte Spill
	je	.LBB0_156
	jmp	.LBB0_180
.LBB0_153:                              # %sw.bb.313
	cmpl	$2, -84(%rbp)
	jne	.LBB0_155
# BB#154:                               # %if.then.316
	movl	$1, %esi
	movq	-24(%rbp), %rdi
	callq	gimp_image_unset_colormap
.LBB0_155:                              # %if.end.317
	jmp	.LBB0_180
.LBB0_156:                              # %sw.bb.318
	cmpl	$0, -44(%rbp)
	je	.LBB0_174
# BB#157:                               # %land.lhs.true.320
	cmpl	$0, -48(%rbp)
	je	.LBB0_174
# BB#158:                               # %if.then.323
	movl	$0, -1012(%rbp)
	movl	$0, -1016(%rbp)
.LBB0_159:                              # %for.cond.332
                                        # =>This Inner Loop Header: Depth=1
	movl	-1012(%rbp), %eax
	movq	-80(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jge	.LBB0_162
# BB#160:                               # %for.body.336
                                        #   in Loop: Header=BB0_159 Depth=1
	movslq	-1012(%rbp), %rax
	movq	-80(%rbp), %rcx
	addq	$40, %rcx
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movl	(%rcx), %edx
	movb	%dl, %sil
	movl	-1016(%rbp), %edx
	movl	%edx, %edi
	addl	$1, %edi
	movl	%edi, -1016(%rbp)
	movslq	%edx, %rax
	movb	%sil, -1792(%rbp,%rax)
	movslq	-1012(%rbp), %rax
	movq	-80(%rbp), %rcx
	addq	$40, %rcx
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movl	4(%rcx), %edx
	movb	%dl, %sil
	movl	-1016(%rbp), %edx
	movl	%edx, %edi
	addl	$1, %edi
	movl	%edi, -1016(%rbp)
	movslq	%edx, %rax
	movb	%sil, -1792(%rbp,%rax)
	movslq	-1012(%rbp), %rax
	movq	-80(%rbp), %rcx
	addq	$40, %rcx
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movl	8(%rcx), %edx
	movb	%dl, %sil
	movl	-1016(%rbp), %edx
	movl	%edx, %edi
	addl	$1, %edi
	movl	%edi, -1016(%rbp)
	movslq	%edx, %rax
	movb	%sil, -1792(%rbp,%rax)
# BB#161:                               # %for.inc.361
                                        #   in Loop: Header=BB0_159 Depth=1
	movl	-1012(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1012(%rbp)
	jmp	.LBB0_159
.LBB0_162:                              # %for.end.363
	leaq	-2820(%rbp), %r8
	leaq	-2816(%rbp), %rcx
	leaq	-2560(%rbp), %rsi
	leaq	-1792(%rbp), %rdi
	movq	-80(%rbp), %rax
	movl	36(%rax), %edx
	movl	%edx, -2820(%rbp)
	movq	-80(%rbp), %rax
	addq	$6184, %rax             # imm = 0x1828
	movq	%rax, %rdx
	callq	make_remap_table
	movq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)
.LBB0_163:                              # %for.cond.369
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -104(%rbp)
	je	.LBB0_169
# BB#164:                               # %for.body.371
                                        #   in Loop: Header=BB0_163 Depth=1
	leaq	-2816(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movl	-2820(%rbp), %edx
	movq	%rax, %rdi
	callq	remap_indexed_layer
# BB#165:                               # %for.inc.374
                                        #   in Loop: Header=BB0_163 Depth=1
	cmpq	$0, -104(%rbp)
	je	.LBB0_167
# BB#166:                               # %cond.true.376
                                        #   in Loop: Header=BB0_163 Depth=1
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -3832(%rbp)       # 8-byte Spill
	jmp	.LBB0_168
.LBB0_167:                              # %cond.false.378
                                        #   in Loop: Header=BB0_163 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -3832(%rbp)       # 8-byte Spill
	jmp	.LBB0_168
.LBB0_168:                              # %cond.end.379
                                        #   in Loop: Header=BB0_163 Depth=1
	movq	-3832(%rbp), %rax       # 8-byte Reload
	movq	%rax, -104(%rbp)
	jmp	.LBB0_163
.LBB0_169:                              # %for.end.381
	movl	$0, -1012(%rbp)
	movl	$0, -1016(%rbp)
.LBB0_170:                              # %for.cond.382
                                        # =>This Inner Loop Header: Depth=1
	movl	-1012(%rbp), %eax
	cmpl	-2820(%rbp), %eax
	jge	.LBB0_173
# BB#171:                               # %for.body.385
                                        #   in Loop: Header=BB0_170 Depth=1
	movslq	-1016(%rbp), %rax
	movb	-2560(%rbp,%rax), %cl
	movslq	-1016(%rbp), %rax
	movb	%cl, -1008(%rbp,%rax)
	movl	-1016(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -1016(%rbp)
	movslq	-1016(%rbp), %rax
	movb	-2560(%rbp,%rax), %cl
	movslq	-1016(%rbp), %rax
	movb	%cl, -1008(%rbp,%rax)
	movl	-1016(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -1016(%rbp)
	movslq	-1016(%rbp), %rax
	movb	-2560(%rbp,%rax), %cl
	movslq	-1016(%rbp), %rax
	movb	%cl, -1008(%rbp,%rax)
	movl	-1016(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -1016(%rbp)
# BB#172:                               # %for.inc.401
                                        #   in Loop: Header=BB0_170 Depth=1
	movl	-1012(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1012(%rbp)
	jmp	.LBB0_170
.LBB0_173:                              # %for.end.403
	movl	$1, %ecx
	leaq	-1008(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movl	-2820(%rbp), %edx
	callq	gimp_image_set_colormap
	jmp	.LBB0_179
.LBB0_174:                              # %if.else.405
	movl	$0, -3604(%rbp)
	movl	$0, -3608(%rbp)
.LBB0_175:                              # %for.cond.412
                                        # =>This Inner Loop Header: Depth=1
	movl	-3604(%rbp), %eax
	movq	-80(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jge	.LBB0_178
# BB#176:                               # %for.body.416
                                        #   in Loop: Header=BB0_175 Depth=1
	movslq	-3604(%rbp), %rax
	movq	-80(%rbp), %rcx
	addq	$40, %rcx
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movl	(%rcx), %edx
	movb	%dl, %sil
	movl	-3608(%rbp), %edx
	movl	%edx, %edi
	addl	$1, %edi
	movl	%edi, -3608(%rbp)
	movslq	%edx, %rax
	movb	%sil, -3600(%rbp,%rax)
	movslq	-3604(%rbp), %rax
	movq	-80(%rbp), %rcx
	addq	$40, %rcx
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movl	4(%rcx), %edx
	movb	%dl, %sil
	movl	-3608(%rbp), %edx
	movl	%edx, %edi
	addl	$1, %edi
	movl	%edi, -3608(%rbp)
	movslq	%edx, %rax
	movb	%sil, -3600(%rbp,%rax)
	movslq	-3604(%rbp), %rax
	movq	-80(%rbp), %rcx
	addq	$40, %rcx
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movl	8(%rcx), %edx
	movb	%dl, %sil
	movl	-3608(%rbp), %edx
	movl	%edx, %edi
	addl	$1, %edi
	movl	%edi, -3608(%rbp)
	movslq	%edx, %rax
	movb	%sil, -3600(%rbp,%rax)
# BB#177:                               # %for.inc.441
                                        #   in Loop: Header=BB0_175 Depth=1
	movl	-3604(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -3604(%rbp)
	jmp	.LBB0_175
.LBB0_178:                              # %for.end.443
	movl	$1, %ecx
	leaq	-3600(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	-80(%rbp), %rax
	movl	36(%rax), %edx
	callq	gimp_image_set_colormap
.LBB0_179:                              # %if.end.446
	jmp	.LBB0_180
.LBB0_180:                              # %sw.epilog.447
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -3836(%rbp)       # 4-byte Spill
	je	.LBB0_181
	jmp	.LBB0_193
.LBB0_193:                              # %sw.epilog.447
	movl	-3836(%rbp), %eax       # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -3840(%rbp)       # 4-byte Spill
	je	.LBB0_184
	jmp	.LBB0_194
.LBB0_194:                              # %sw.epilog.447
	movl	-3836(%rbp), %eax       # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -3844(%rbp)       # 4-byte Spill
	jne	.LBB0_185
	jmp	.LBB0_181
.LBB0_181:                              # %sw.bb.448
	cmpl	$1, -84(%rbp)
	jne	.LBB0_183
# BB#182:                               # %if.then.451
	movabsq	$.L.str.14, %rsi
	movq	-24(%rbp), %rdi
	callq	gimp_image_parasite_detach
.LBB0_183:                              # %if.end.452
	jmp	.LBB0_186
.LBB0_184:                              # %sw.bb.453
	movabsq	$.L.str.14, %rsi
	movq	-24(%rbp), %rdi
	callq	gimp_image_parasite_detach
	jmp	.LBB0_186
.LBB0_185:                              # %sw.default.454
	jmp	.LBB0_186
.LBB0_186:                              # %sw.epilog.455
	cmpq	$0, -80(%rbp)
	je	.LBB0_188
# BB#187:                               # %if.then.457
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movq	-80(%rbp), %rdi
	callq	*%rax
.LBB0_188:                              # %if.end.459
	movq	-24(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movq	-24(%rbp), %rdi
	movl	%eax, -3848(%rbp)       # 4-byte Spill
	callq	gimp_image_mode_changed
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_thaw_notify
	movq	-96(%rbp), %rdi
	callq	g_list_free
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_unset_busy
	movl	$1, -12(%rbp)
.LBB0_189:                              # %return
	movl	-12(%rbp), %eax
	addq	$3848, %rsp             # imm = 0xF08
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_image_convert, .Lfunc_end0-gimp_image_convert
	.cfi_endproc

	.align	16, 0x90
	.type	initialize_median_cut,@function
initialize_median_cut:                  # @initialize_median_cut
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
.Ltmp5:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp6:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movl	$1, %eax
	movl	%eax, %r10d
	movl	$8264, %eax             # imm = 0x2048
	movl	%eax, %r11d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movq	%r9, -32(%rbp)
	movq	%r10, %rdi
	movq	%r11, %rsi
	callq	g_malloc_n
	movq	%rax, -40(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.LBB1_3
# BB#1:                                 # %land.lhs.true
	cmpl	$0, -16(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %edi
	movl	$8, %eax
	movl	%eax, %esi
	callq	g_malloc_n
	movq	-40(%rbp), %rsi
	movq	%rax, 8232(%rsi)
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	movl	$1048576, %eax          # imm = 0x100000
	movl	%eax, %edi
	movl	$8, %eax
	movl	%eax, %esi
	callq	g_malloc_n
	movq	-40(%rbp), %rsi
	movq	%rax, 8232(%rsi)
.LBB1_4:                                # %if.end
	movl	-8(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movl	-20(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 8240(%rcx)
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, 8248(%rdx)
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB1_30
	jmp	.LBB1_45
.LBB1_45:                               # %if.end
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jne	.LBB1_43
	jmp	.LBB1_5
.LBB1_5:                                # %sw.bb
	movl	-16(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$4, %rdx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	ja	.LBB1_10
# BB#48:                                # %sw.bb
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	.LJTI1_2(,%rax,8), %rcx
	jmpq	*%rcx
.LBB1_6:                                # %sw.bb.7
	movabsq	$median_cut_pass1_gray, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB1_11
.LBB1_7:                                # %sw.bb.8
	movabsq	$webpal_pass1, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB1_11
.LBB1_8:                                # %sw.bb.10
	movabsq	$custompal_pass1, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$1, needs_quantize
	jmp	.LBB1_11
.LBB1_9:                                # %sw.bb.12
	jmp	.LBB1_10
.LBB1_10:                               # %sw.default
	movabsq	$monopal_pass1, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB1_11:                               # %sw.epilog
	cmpl	$2, -16(%rbp)
	je	.LBB1_13
# BB#12:                                # %lor.lhs.false
	cmpl	$4, -16(%rbp)
	jne	.LBB1_21
.LBB1_13:                               # %if.then.16
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$4, %rdx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	ja	.LBB1_15
# BB#50:                                # %if.then.16
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	.LJTI1_4(,%rax,8), %rcx
	jmpq	*%rcx
.LBB1_14:                               # %sw.bb.17
	jmp	.LBB1_15
.LBB1_15:                               # %sw.default.18
	movabsq	$.L.str.17, %rdi
	movb	$0, %al
	callq	g_warning
.LBB1_16:                               # %sw.bb.19
	movabsq	$median_cut_pass2_no_dither_rgb, %rax
	movabsq	$median_cut_pass2_rgb_init, %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, 8(%rdx)
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	jmp	.LBB1_20
.LBB1_17:                               # %sw.bb.20
	movabsq	$median_cut_pass2_fs_dither_rgb, %rax
	movabsq	$median_cut_pass2_rgb_init, %rcx
	movq	-40(%rbp), %rdx
	movl	$0, 8244(%rdx)
	movq	-40(%rbp), %rdx
	movq	%rcx, 8(%rdx)
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	jmp	.LBB1_20
.LBB1_18:                               # %sw.bb.23
	movabsq	$median_cut_pass2_fs_dither_rgb, %rax
	movabsq	$median_cut_pass2_rgb_init, %rcx
	movq	-40(%rbp), %rdx
	movl	$1, 8244(%rdx)
	movq	-40(%rbp), %rdx
	movq	%rcx, 8(%rdx)
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	jmp	.LBB1_20
.LBB1_19:                               # %sw.bb.27
	movabsq	$median_cut_pass2_fixed_dither_rgb, %rax
	movabsq	$median_cut_pass2_rgb_init, %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, 8(%rdx)
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
.LBB1_20:                               # %sw.epilog.30
	jmp	.LBB1_29
.LBB1_21:                               # %if.else.31
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$4, %rdx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	ja	.LBB1_23
# BB#49:                                # %if.else.31
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	.LJTI1_3(,%rax,8), %rcx
	jmpq	*%rcx
.LBB1_22:                               # %sw.bb.32
	jmp	.LBB1_23
.LBB1_23:                               # %sw.default.33
	movabsq	$.L.str.18, %rdi
	movb	$0, %al
	callq	g_warning
.LBB1_24:                               # %sw.bb.34
	movabsq	$median_cut_pass2_no_dither_gray, %rax
	movabsq	$median_cut_pass2_gray_init, %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, 8(%rdx)
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	jmp	.LBB1_28
.LBB1_25:                               # %sw.bb.37
	movabsq	$median_cut_pass2_fs_dither_gray, %rax
	movabsq	$median_cut_pass2_gray_init, %rcx
	movq	-40(%rbp), %rdx
	movl	$0, 8244(%rdx)
	movq	-40(%rbp), %rdx
	movq	%rcx, 8(%rdx)
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	jmp	.LBB1_28
.LBB1_26:                               # %sw.bb.41
	movabsq	$median_cut_pass2_fs_dither_gray, %rax
	movabsq	$median_cut_pass2_gray_init, %rcx
	movq	-40(%rbp), %rdx
	movl	$1, 8244(%rdx)
	movq	-40(%rbp), %rdx
	movq	%rcx, 8(%rdx)
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	jmp	.LBB1_28
.LBB1_27:                               # %sw.bb.45
	movabsq	$median_cut_pass2_fixed_dither_gray, %rax
	movabsq	$median_cut_pass2_gray_init, %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, 8(%rdx)
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
.LBB1_28:                               # %sw.epilog.48
	jmp	.LBB1_29
.LBB1_29:                               # %if.end.49
	jmp	.LBB1_44
.LBB1_30:                               # %sw.bb.50
	movl	-16(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$4, %rdx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	ja	.LBB1_35
# BB#46:                                # %sw.bb.50
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	.LJTI1_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB1_31:                               # %sw.bb.51
	movabsq	$median_cut_pass1_rgb, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB1_36
.LBB1_32:                               # %sw.bb.53
	movabsq	$webpal_pass1, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$1, needs_quantize
	jmp	.LBB1_36
.LBB1_33:                               # %sw.bb.55
	movabsq	$custompal_pass1, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$1, needs_quantize
	jmp	.LBB1_36
.LBB1_34:                               # %sw.bb.57
	jmp	.LBB1_35
.LBB1_35:                               # %sw.default.58
	movabsq	$monopal_pass1, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB1_36:                               # %sw.epilog.60
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$4, %rdx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	ja	.LBB1_42
# BB#47:                                # %sw.epilog.60
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	.LJTI1_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB1_37:                               # %sw.bb.61
	movabsq	$median_cut_pass2_no_dither_rgb, %rax
	movabsq	$median_cut_pass2_rgb_init, %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, 8(%rdx)
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	jmp	.LBB1_42
.LBB1_38:                               # %sw.bb.64
	movabsq	$median_cut_pass2_fs_dither_rgb, %rax
	movabsq	$median_cut_pass2_rgb_init, %rcx
	movq	-40(%rbp), %rdx
	movl	$0, 8244(%rdx)
	movq	-40(%rbp), %rdx
	movq	%rcx, 8(%rdx)
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	jmp	.LBB1_42
.LBB1_39:                               # %sw.bb.68
	movabsq	$median_cut_pass2_fs_dither_rgb, %rax
	movabsq	$median_cut_pass2_rgb_init, %rcx
	movq	-40(%rbp), %rdx
	movl	$1, 8244(%rdx)
	movq	-40(%rbp), %rdx
	movq	%rcx, 8(%rdx)
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	jmp	.LBB1_42
.LBB1_40:                               # %sw.bb.72
	movabsq	$median_cut_pass2_nodestruct_dither_rgb, %rax
	movq	-40(%rbp), %rcx
	movq	$0, 8(%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	jmp	.LBB1_42
.LBB1_41:                               # %sw.bb.75
	movabsq	$median_cut_pass2_fixed_dither_rgb, %rax
	movabsq	$median_cut_pass2_rgb_init, %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, 8(%rdx)
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
.LBB1_42:                               # %sw.epilog.78
	jmp	.LBB1_44
.LBB1_43:                               # %sw.default.79
	jmp	.LBB1_44
.LBB1_44:                               # %sw.epilog.80
	movabsq	$delete_median_cut, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-40(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	initialize_median_cut, .Lfunc_end1-initialize_median_cut
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_31
	.quad	.LBB1_35
	.quad	.LBB1_32
	.quad	.LBB1_34
	.quad	.LBB1_33
.LJTI1_1:
	.quad	.LBB1_37
	.quad	.LBB1_38
	.quad	.LBB1_39
	.quad	.LBB1_41
	.quad	.LBB1_40
.LJTI1_2:
	.quad	.LBB1_6
	.quad	.LBB1_10
	.quad	.LBB1_7
	.quad	.LBB1_9
	.quad	.LBB1_8
.LJTI1_3:
	.quad	.LBB1_24
	.quad	.LBB1_25
	.quad	.LBB1_26
	.quad	.LBB1_27
	.quad	.LBB1_22
.LJTI1_4:
	.quad	.LBB1_16
	.quad	.LBB1_17
	.quad	.LBB1_18
	.quad	.LBB1_19
	.quad	.LBB1_14

	.text
	.align	16, 0x90
	.type	zero_histogram_gray,@function
zero_histogram_gray:                    # @zero_histogram_gray
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
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -12(%rbp)         # imm = 0x100
	jge	.LBB2_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	$0, (%rcx,%rax,8)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB2_1
.LBB2_4:                                # %for.end
	popq	%rbp
	retq
.Lfunc_end2:
	.size	zero_histogram_gray, .Lfunc_end2-zero_histogram_gray
	.cfi_endproc

	.align	16, 0x90
	.type	zero_histogram_rgb,@function
zero_histogram_rgb:                     # @zero_histogram_rgb
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
	xorl	%esi, %esi
	movl	$8388608, %eax          # imm = 0x800000
	movl	%eax, %edx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	memset
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	zero_histogram_rgb, .Lfunc_end3-zero_histogram_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	generate_histogram_gray,@function
generate_histogram_gray:                # @generate_histogram_gray
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_has_alpha
	movl	%eax, -100(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movq	-16(%rbp), %rsi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-16(%rbp), %rsi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	leaq	-88(%rbp), %rdi
	xorl	%edx, %edx
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -172(%rbp)        # 4-byte Spill
	movl	-172(%rbp), %ecx        # 4-byte Reload
	movl	-156(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	movl	$1, %edi
	leaq	-88(%rbp), %rsi
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -96(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_4 Depth 2
                                        #     Child Loop BB4_10 Depth 2
	cmpq	$0, -96(%rbp)
	je	.LBB4_15
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -112(%rbp)
	movl	-44(%rbp), %ecx
	imull	-40(%rbp), %ecx
	movl	%ecx, -116(%rbp)
	cmpl	$0, -100(%rbp)
	je	.LBB4_9
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_4
.LBB4_4:                                # %while.cond
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-116(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -116(%rbp)
	cmpl	$0, %eax
	je	.LBB4_8
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB4_4 Depth=2
	movq	-112(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$127, %ecx
	jle	.LBB4_7
# BB#6:                                 # %if.then.17
                                        #   in Loop: Header=BB4_4 Depth=2
	movq	-112(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-8(%rbp), %rdx
	movq	(%rdx,%rax,8), %rsi
	addq	$1, %rsi
	movq	%rsi, (%rdx,%rax,8)
.LBB4_7:                                # %if.end
                                        #   in Loop: Header=BB4_4 Depth=2
	movl	-36(%rbp), %eax
	movq	-112(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -112(%rbp)
	jmp	.LBB4_4
.LBB4_8:                                # %while.end
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_13
.LBB4_9:                                # %if.else
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_10
.LBB4_10:                               # %while.cond.19
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-116(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -116(%rbp)
	cmpl	$0, %eax
	je	.LBB4_12
# BB#11:                                # %while.body.22
                                        #   in Loop: Header=BB4_10 Depth=2
	movq	-112(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-8(%rbp), %rdx
	movq	(%rdx,%rax,8), %rsi
	addq	$1, %rsi
	movq	%rsi, (%rdx,%rax,8)
	movl	-36(%rbp), %ecx
	movq	-112(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB4_10
.LBB4_12:                               # %while.end.29
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_13
.LBB4_13:                               # %if.end.30
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_14
.LBB4_14:                               # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -96(%rbp)
	jmp	.LBB4_1
.LBB4_15:                               # %for.end
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	generate_histogram_gray, .Lfunc_end4-generate_histogram_gray
	.cfi_endproc

	.align	16, 0x90
	.type	generate_histogram_rgb,@function
generate_histogram_rgb:                 # @generate_histogram_rgb
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
	subq	$288, %rsp              # imm = 0x120
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	%eax, -40(%rbp)
	movq	$0, -160(%rbp)
	movl	$0, -164(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_has_alpha
	movl	%eax, -168(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-140(%rbp), %rsi
	leaq	-144(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movq	-16(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movq	-16(%rbp), %rdx
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-16(%rbp), %rdx
	movl	%eax, -236(%rbp)        # 4-byte Spill
	movq	%rdx, -248(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	leaq	-104(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-224(%rbp), %rsi        # 8-byte Reload
	movl	%ecx, %edx
	movl	-236(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	movq	-16(%rbp), %rsi
	movq	%rsi, -256(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-16(%rbp), %rsi
	movl	%eax, -260(%rbp)        # 4-byte Spill
	movq	%rsi, -272(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	-260(%rbp), %ecx        # 4-byte Reload
	imull	%eax, %ecx
	movslq	%ecx, %rsi
	movq	%rsi, -152(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB5_2
# BB#1:                                 # %if.then
	xorps	%xmm0, %xmm0
	movq	-32(%rbp), %rdi
	callq	gimp_progress_set_value
.LBB5_2:                                # %if.end
	movl	$1, %edi
	leaq	-104(%rbp), %rsi
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -112(%rbp)
.LBB5_3:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_7 Depth 2
                                        #     Child Loop BB5_18 Depth 2
                                        #     Child Loop BB5_27 Depth 2
                                        #       Child Loop BB5_40 Depth 3
	cmpq	$0, -112(%rbp)
	je	.LBB5_62
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, -176(%rbp)
	movl	-60(%rbp), %ecx
	imull	-56(%rbp), %ecx
	movl	%ecx, -180(%rbp)
	movslq	-180(%rbp), %rax
	addq	-160(%rbp), %rax
	movq	%rax, -160(%rbp)
	cmpl	$0, needs_quantize
	je	.LBB5_26
# BB#5:                                 # %if.then.26
                                        #   in Loop: Header=BB5_3 Depth=1
	cmpl	$0, -24(%rbp)
	je	.LBB5_17
# BB#6:                                 # %if.then.28
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	-68(%rbp), %eax
	addl	-140(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-132(%rbp), %eax
	addl	-60(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	-64(%rbp), %eax
	addl	-144(%rbp), %eax
	movl	%eax, -128(%rbp)
.LBB5_7:                                # %while.cond
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-180(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -180(%rbp)
	cmpl	$0, %eax
	je	.LBB5_16
# BB#8:                                 # %while.body
                                        #   in Loop: Header=BB5_7 Depth=2
	movl	$0, -184(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB5_11
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB5_7 Depth=2
	movabsq	$DM, %rax
	movq	-176(%rbp), %rcx
	movzbl	3(%rcx), %edx
	movl	-128(%rbp), %esi
	andl	$31, %esi
	movslq	%esi, %rcx
	movl	-132(%rbp), %esi
	andl	$31, %esi
	movslq	%esi, %rdi
	shlq	$5, %rdi
	addq	%rdi, %rax
	movzbl	(%rax,%rcx), %esi
	cmpl	%esi, %edx
	jge	.LBB5_11
# BB#10:                                # %if.then.43
                                        #   in Loop: Header=BB5_7 Depth=2
	movl	$1, -184(%rbp)
.LBB5_11:                               # %if.end.44
                                        #   in Loop: Header=BB5_7 Depth=2
	cmpl	$0, -184(%rbp)
	jne	.LBB5_13
# BB#12:                                # %if.then.46
                                        #   in Loop: Header=BB5_7 Depth=2
	movq	-8(%rbp), %rdi
	movq	-176(%rbp), %rax
	movzbl	(%rax), %esi
	movq	-176(%rbp), %rax
	movzbl	1(%rax), %edx
	movq	-176(%rbp), %rax
	movzbl	2(%rax), %ecx
	callq	HIST_RGB
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rdi
	addq	$1, %rdi
	movq	%rdi, (%rax)
.LBB5_13:                               # %if.end.54
                                        #   in Loop: Header=BB5_7 Depth=2
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	movl	-132(%rbp), %eax
	cmpl	-136(%rbp), %eax
	jne	.LBB5_15
# BB#14:                                # %if.then.58
                                        #   in Loop: Header=BB5_7 Depth=2
	movl	-68(%rbp), %eax
	addl	-140(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
.LBB5_15:                               # %if.end.62
                                        #   in Loop: Header=BB5_7 Depth=2
	movl	-52(%rbp), %eax
	movq	-176(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -176(%rbp)
	jmp	.LBB5_7
.LBB5_16:                               # %while.end
                                        #   in Loop: Header=BB5_3 Depth=1
	jmp	.LBB5_25
.LBB5_17:                               # %if.else
                                        #   in Loop: Header=BB5_3 Depth=1
	jmp	.LBB5_18
.LBB5_18:                               # %while.cond.63
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-180(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -180(%rbp)
	cmpl	$0, %eax
	je	.LBB5_24
# BB#19:                                # %while.body.66
                                        #   in Loop: Header=BB5_18 Depth=2
	cmpl	$0, -168(%rbp)
	je	.LBB5_21
# BB#20:                                # %land.lhs.true.68
                                        #   in Loop: Header=BB5_18 Depth=2
	movq	-176(%rbp), %rax
	movzbl	3(%rax), %ecx
	cmpl	$127, %ecx
	jg	.LBB5_22
.LBB5_21:                               # %lor.lhs.false
                                        #   in Loop: Header=BB5_18 Depth=2
	cmpl	$0, -168(%rbp)
	jne	.LBB5_23
.LBB5_22:                               # %if.then.74
                                        #   in Loop: Header=BB5_18 Depth=2
	movq	-8(%rbp), %rdi
	movq	-176(%rbp), %rax
	movzbl	(%rax), %esi
	movq	-176(%rbp), %rax
	movzbl	1(%rax), %edx
	movq	-176(%rbp), %rax
	movzbl	2(%rax), %ecx
	callq	HIST_RGB
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rdi
	addq	$1, %rdi
	movq	%rdi, (%rax)
.LBB5_23:                               # %if.end.83
                                        #   in Loop: Header=BB5_18 Depth=2
	movl	-52(%rbp), %eax
	movq	-176(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -176(%rbp)
	jmp	.LBB5_18
.LBB5_24:                               # %while.end.87
                                        #   in Loop: Header=BB5_3 Depth=1
	jmp	.LBB5_25
.LBB5_25:                               # %if.end.88
                                        #   in Loop: Header=BB5_3 Depth=1
	jmp	.LBB5_57
.LBB5_26:                               # %if.else.89
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	-68(%rbp), %eax
	addl	-140(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-132(%rbp), %eax
	addl	-60(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	-64(%rbp), %eax
	addl	-144(%rbp), %eax
	movl	%eax, -128(%rbp)
.LBB5_27:                               # %while.cond.96
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_40 Depth 3
	movl	-180(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -180(%rbp)
	cmpl	$0, %eax
	je	.LBB5_56
# BB#28:                                # %while.body.99
                                        #   in Loop: Header=BB5_27 Depth=2
	movl	$0, -188(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB5_37
# BB#29:                                # %if.then.102
                                        #   in Loop: Header=BB5_27 Depth=2
	cmpl	$0, -24(%rbp)
	je	.LBB5_33
# BB#30:                                # %if.then.104
                                        #   in Loop: Header=BB5_27 Depth=2
	movabsq	$DM, %rax
	movq	-176(%rbp), %rcx
	movzbl	3(%rcx), %edx
	movl	-128(%rbp), %esi
	andl	$31, %esi
	movslq	%esi, %rcx
	movl	-132(%rbp), %esi
	andl	$31, %esi
	movslq	%esi, %rdi
	shlq	$5, %rdi
	addq	%rdi, %rax
	movzbl	(%rax,%rcx), %esi
	cmpl	%esi, %edx
	jge	.LBB5_32
# BB#31:                                # %if.then.116
                                        #   in Loop: Header=BB5_27 Depth=2
	movl	$1, -188(%rbp)
.LBB5_32:                               # %if.end.117
                                        #   in Loop: Header=BB5_27 Depth=2
	jmp	.LBB5_36
.LBB5_33:                               # %if.else.118
                                        #   in Loop: Header=BB5_27 Depth=2
	movq	-176(%rbp), %rax
	movzbl	3(%rax), %ecx
	cmpl	$127, %ecx
	jg	.LBB5_35
# BB#34:                                # %if.then.123
                                        #   in Loop: Header=BB5_27 Depth=2
	movl	$1, -188(%rbp)
.LBB5_35:                               # %if.end.124
                                        #   in Loop: Header=BB5_27 Depth=2
	jmp	.LBB5_36
.LBB5_36:                               # %if.end.125
                                        #   in Loop: Header=BB5_27 Depth=2
	jmp	.LBB5_37
.LBB5_37:                               # %if.end.126
                                        #   in Loop: Header=BB5_27 Depth=2
	cmpl	$0, -188(%rbp)
	jne	.LBB5_52
# BB#38:                                # %if.then.128
                                        #   in Loop: Header=BB5_27 Depth=2
	movq	-8(%rbp), %rdi
	movq	-176(%rbp), %rax
	movzbl	(%rax), %esi
	movq	-176(%rbp), %rax
	movzbl	1(%rax), %edx
	movq	-176(%rbp), %rax
	movzbl	2(%rax), %ecx
	callq	HIST_RGB
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rdi
	addq	$1, %rdi
	movq	%rdi, (%rax)
	cmpl	$0, needs_quantize
	jne	.LBB5_51
# BB#39:                                # %if.then.138
                                        #   in Loop: Header=BB5_27 Depth=2
	movl	$0, -124(%rbp)
.LBB5_40:                               # %for.cond.139
                                        #   Parent Loop BB5_3 Depth=1
                                        #     Parent Loop BB5_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-124(%rbp), %eax
	cmpl	num_found_cols, %eax
	jge	.LBB5_47
# BB#41:                                # %for.body.142
                                        #   in Loop: Header=BB5_40 Depth=3
	movabsq	$found_cols, %rax
	movq	-176(%rbp), %rcx
	movzbl	(%rcx), %edx
	movslq	-124(%rbp), %rcx
	imulq	$3, %rcx, %rcx
	addq	%rcx, %rax
	movzbl	(%rax), %esi
	cmpl	%esi, %edx
	jne	.LBB5_45
# BB#42:                                # %land.lhs.true.151
                                        #   in Loop: Header=BB5_40 Depth=3
	movabsq	$found_cols, %rax
	movq	-176(%rbp), %rcx
	movzbl	1(%rcx), %edx
	movslq	-124(%rbp), %rcx
	imulq	$3, %rcx, %rcx
	addq	%rcx, %rax
	movzbl	1(%rax), %esi
	cmpl	%esi, %edx
	jne	.LBB5_45
# BB#43:                                # %land.lhs.true.160
                                        #   in Loop: Header=BB5_40 Depth=3
	movabsq	$found_cols, %rax
	movq	-176(%rbp), %rcx
	movzbl	2(%rcx), %edx
	movslq	-124(%rbp), %rcx
	imulq	$3, %rcx, %rcx
	addq	%rcx, %rax
	movzbl	2(%rax), %esi
	cmpl	%esi, %edx
	jne	.LBB5_45
# BB#44:                                # %if.then.169
                                        #   in Loop: Header=BB5_27 Depth=2
	jmp	.LBB5_53
.LBB5_45:                               # %if.end.170
                                        #   in Loop: Header=BB5_40 Depth=3
	jmp	.LBB5_46
.LBB5_46:                               # %for.inc
                                        #   in Loop: Header=BB5_40 Depth=3
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB5_40
.LBB5_47:                               # %for.end
                                        #   in Loop: Header=BB5_27 Depth=2
	movl	num_found_cols, %eax
	addl	$1, %eax
	movl	%eax, num_found_cols
	movl	num_found_cols, %eax
	cmpl	-20(%rbp), %eax
	jle	.LBB5_49
# BB#48:                                # %if.then.175
                                        #   in Loop: Header=BB5_27 Depth=2
	movl	$1, needs_quantize
	jmp	.LBB5_53
.LBB5_49:                               # %if.else.176
                                        #   in Loop: Header=BB5_27 Depth=2
	movabsq	$found_cols, %rax
	movq	-176(%rbp), %rcx
	movb	(%rcx), %dl
	movl	num_found_cols, %esi
	subl	$1, %esi
	movslq	%esi, %rcx
	imulq	$3, %rcx, %rcx
	movq	%rax, %rdi
	addq	%rcx, %rdi
	movb	%dl, (%rdi)
	movq	-176(%rbp), %rcx
	movb	1(%rcx), %dl
	movl	num_found_cols, %esi
	subl	$1, %esi
	movslq	%esi, %rcx
	imulq	$3, %rcx, %rcx
	movq	%rax, %rdi
	addq	%rcx, %rdi
	movb	%dl, 1(%rdi)
	movq	-176(%rbp), %rcx
	movb	2(%rcx), %dl
	movl	num_found_cols, %esi
	subl	$1, %esi
	movslq	%esi, %rcx
	imulq	$3, %rcx, %rcx
	addq	%rcx, %rax
	movb	%dl, 2(%rax)
# BB#50:                                # %if.end.191
                                        #   in Loop: Header=BB5_27 Depth=2
	jmp	.LBB5_51
.LBB5_51:                               # %if.end.192
                                        #   in Loop: Header=BB5_27 Depth=2
	jmp	.LBB5_52
.LBB5_52:                               # %if.end.193
                                        #   in Loop: Header=BB5_27 Depth=2
	jmp	.LBB5_53
.LBB5_53:                               # %already_found
                                        #   in Loop: Header=BB5_27 Depth=2
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	movl	-132(%rbp), %eax
	cmpl	-136(%rbp), %eax
	jne	.LBB5_55
# BB#54:                                # %if.then.197
                                        #   in Loop: Header=BB5_27 Depth=2
	movl	-68(%rbp), %eax
	addl	-140(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
.LBB5_55:                               # %if.end.201
                                        #   in Loop: Header=BB5_27 Depth=2
	movl	-52(%rbp), %eax
	movq	-176(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -176(%rbp)
	jmp	.LBB5_27
.LBB5_56:                               # %while.end.205
                                        #   in Loop: Header=BB5_3 Depth=1
	jmp	.LBB5_57
.LBB5_57:                               # %if.end.206
                                        #   in Loop: Header=BB5_3 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB5_60
# BB#58:                                # %land.lhs.true.208
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	$16, %eax
	movl	-164(%rbp), %ecx
	movl	%eax, -276(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-276(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB5_60
# BB#59:                                # %if.then.211
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-32(%rbp), %rdi
	cvtsi2sdl	-36(%rbp), %xmm0
	cvtsi2sdq	-160(%rbp), %xmm1
	cvtsi2sdq	-152(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	cvtsi2sdl	-40(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_set_value
.LBB5_60:                               # %if.end.218
                                        #   in Loop: Header=BB5_3 Depth=1
	jmp	.LBB5_61
.LBB5_61:                               # %for.inc.219
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -112(%rbp)
	movl	-164(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -164(%rbp)
	jmp	.LBB5_3
.LBB5_62:                               # %for.end.222
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end5:
	.size	generate_histogram_rgb, .Lfunc_end5-generate_histogram_rgb
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4589866978952703325     # double 0.0722
.LCPI6_1:
	.quad	4604617168452267173     # double 0.71519999999999995
.LCPI6_2:
	.quad	4596827742536767164     # double 0.21260000000000001
	.text
	.align	16, 0x90
	.type	color_quicksort,@function
color_quicksort:                        # @color_quicksort
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
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI6_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI6_2, %xmm2         # xmm2 = mem[0],zero
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rsi
	cvtsi2sdl	(%rsi), %xmm3
	mulsd	%xmm2, %xmm3
	movq	-32(%rbp), %rsi
	cvtsi2sdl	4(%rsi), %xmm4
	mulsd	%xmm1, %xmm4
	addsd	%xmm4, %xmm3
	movq	-32(%rbp), %rsi
	cvtsi2sdl	8(%rsi), %xmm4
	mulsd	%xmm0, %xmm4
	addsd	%xmm4, %xmm3
	movsd	%xmm3, -48(%rbp)
	movq	-40(%rbp), %rsi
	cvtsi2sdl	(%rsi), %xmm3
	mulsd	%xmm2, %xmm3
	movq	-40(%rbp), %rsi
	cvtsi2sdl	4(%rsi), %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm3
	movq	-40(%rbp), %rsi
	cvtsi2sdl	8(%rsi), %xmm1
	mulsd	%xmm0, %xmm1
	addsd	%xmm1, %xmm3
	movsd	%xmm3, -56(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB6_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB6_5
.LBB6_2:                                # %if.else
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-56(%rbp), %xmm0
	jbe	.LBB6_4
# BB#3:                                 # %if.then.20
	movl	$1, -4(%rbp)
	jmp	.LBB6_5
.LBB6_4:                                # %if.else.21
	movl	$0, -4(%rbp)
.LBB6_5:                                # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end6:
	.size	color_quicksort, .Lfunc_end6-color_quicksort
	.cfi_endproc

	.align	16, 0x90
	.type	make_remap_table,@function
make_remap_table:                       # @make_remap_table
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$4992, %rsp             # imm = 0x1380
.Ltmp25:
	.cfi_offset %rbx, -48
.Ltmp26:
	.cfi_offset %r12, -40
.Ltmp27:
	.cfi_offset %r14, -32
.Ltmp28:
	.cfi_offset %r15, -24
	movl	$255, %eax
	movl	$2048, %r9d             # imm = 0x800
	movl	%r9d, %r10d
	leaq	-4960(%rbp), %r11
	xorl	%r9d, %r9d
	leaq	-2912(%rbp), %rbx
	movl	$768, %r14d             # imm = 0x300
	movl	%r14d, %r15d
	leaq	-864(%rbp), %r12
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movl	$0, -4972(%rbp)
	movq	%r12, %rdi
	movl	%r9d, %esi
	movq	%r15, %rdx
	movl	%r9d, -4976(%rbp)       # 4-byte Spill
	movq	%rbx, -4984(%rbp)       # 8-byte Spill
	movl	%eax, -4988(%rbp)       # 4-byte Spill
	movq	%r10, -5000(%rbp)       # 8-byte Spill
	movq	%r11, -5008(%rbp)       # 8-byte Spill
	callq	memset
	movq	-4984(%rbp), %rcx       # 8-byte Reload
	movq	%rcx, %rdi
	movl	-4976(%rbp), %esi       # 4-byte Reload
	movq	-5000(%rbp), %rdx       # 8-byte Reload
	callq	memset
	movq	-5008(%rbp), %rcx       # 8-byte Reload
	movq	%rcx, %rdi
	movl	-4988(%rbp), %esi       # 4-byte Reload
	movq	-5000(%rbp), %rdx       # 8-byte Reload
	callq	memset
	movl	$0, -76(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	movq	-72(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB7_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movslq	-76(%rbp), %rax
	movq	-56(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB7_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB7_1 Depth=1
	imull	$3, -76(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	imull	$3, -4972(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movb	%sil, -864(%rbp,%rcx)
	imull	$3, -76(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	imull	$3, -4972(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movb	%sil, -864(%rbp,%rcx)
	imull	$3, -76(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	imull	$3, -4972(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movb	%sil, -864(%rbp,%rcx)
	movslq	-76(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movslq	-4972(%rbp), %rdx
	movq	%rcx, -2912(%rbp,%rdx,8)
	movslq	-4972(%rbp), %rcx
	movslq	-76(%rbp), %rdx
	movq	%rcx, -4960(%rbp,%rdx,8)
	movl	-4972(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4972(%rbp)
.LBB7_4:                                # %if.end
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_5
.LBB7_5:                                # %for.inc
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB7_1
.LBB7_6:                                # %for.end
	movl	$0, -76(%rbp)
.LBB7_7:                                # %for.cond.30
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_9 Depth 2
                                        #       Child Loop BB7_16 Depth 3
	movl	-76(%rbp), %eax
	cmpl	-4972(%rbp), %eax
	jge	.LBB7_27
# BB#8:                                 # %for.body.33
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	$0, -80(%rbp)
.LBB7_9:                                # %for.cond.34
                                        #   Parent Loop BB7_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_16 Depth 3
	movl	-80(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB7_25
# BB#10:                                # %for.body.37
                                        #   in Loop: Header=BB7_9 Depth=2
	imull	$3, -76(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movzbl	-864(%rbp,%rcx), %eax
	imull	$3, -80(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	movzbl	-864(%rbp,%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB7_23
# BB#11:                                # %land.lhs.true
                                        #   in Loop: Header=BB7_9 Depth=2
	imull	$3, -76(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movzbl	-864(%rbp,%rcx), %eax
	imull	$3, -80(%rbp), %edx
	addl	$0, %edx
	movslq	%edx, %rcx
	movzbl	-864(%rbp,%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB7_23
# BB#12:                                # %land.lhs.true.62
                                        #   in Loop: Header=BB7_9 Depth=2
	imull	$3, -76(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movzbl	-864(%rbp,%rcx), %eax
	imull	$3, -80(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rcx
	movzbl	-864(%rbp,%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB7_23
# BB#13:                                # %land.lhs.true.75
                                        #   in Loop: Header=BB7_9 Depth=2
	movslq	-80(%rbp), %rax
	cmpq	$0, -2912(%rbp,%rax,8)
	je	.LBB7_23
# BB#14:                                # %land.lhs.true.79
                                        #   in Loop: Header=BB7_9 Depth=2
	movslq	-76(%rbp), %rax
	cmpq	$0, -2912(%rbp,%rax,8)
	je	.LBB7_23
# BB#15:                                # %if.then.83
                                        #   in Loop: Header=BB7_9 Depth=2
	movslq	-80(%rbp), %rax
	movq	-2912(%rbp,%rax,8), %rax
	movslq	-76(%rbp), %rcx
	addq	-2912(%rbp,%rcx,8), %rax
	movq	%rax, -2912(%rbp,%rcx,8)
	movslq	-80(%rbp), %rax
	movq	$0, -2912(%rbp,%rax,8)
	movl	$0, -84(%rbp)
.LBB7_16:                               # %for.cond.91
                                        #   Parent Loop BB7_7 Depth=1
                                        #     Parent Loop BB7_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-84(%rbp), %eax
	movq	-72(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB7_22
# BB#17:                                # %for.body.94
                                        #   in Loop: Header=BB7_16 Depth=3
	movslq	-84(%rbp), %rax
	movq	-56(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB7_20
# BB#18:                                # %land.lhs.true.98
                                        #   in Loop: Header=BB7_16 Depth=3
	movslq	-84(%rbp), %rax
	movq	-4960(%rbp,%rax,8), %rax
	movslq	-80(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB7_20
# BB#19:                                # %if.then.104
                                        #   in Loop: Header=BB7_16 Depth=3
	movslq	-76(%rbp), %rax
	movslq	-84(%rbp), %rcx
	movq	%rax, -4960(%rbp,%rcx,8)
.LBB7_20:                               # %if.end.108
                                        #   in Loop: Header=BB7_16 Depth=3
	jmp	.LBB7_21
.LBB7_21:                               # %for.inc.109
                                        #   in Loop: Header=BB7_16 Depth=3
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB7_16
.LBB7_22:                               # %for.end.111
                                        #   in Loop: Header=BB7_9 Depth=2
	jmp	.LBB7_23
.LBB7_23:                               # %if.end.112
                                        #   in Loop: Header=BB7_9 Depth=2
	jmp	.LBB7_24
.LBB7_24:                               # %for.inc.113
                                        #   in Loop: Header=BB7_9 Depth=2
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB7_9
.LBB7_25:                               # %for.end.115
                                        #   in Loop: Header=BB7_7 Depth=1
	jmp	.LBB7_26
.LBB7_26:                               # %for.inc.116
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB7_7
.LBB7_27:                               # %for.end.118
	movl	$16, %eax
	movl	%eax, %esi
	movslq	-4972(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -4968(%rbp)
	movl	$0, -76(%rbp)
.LBB7_28:                               # %for.cond.120
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	cmpl	-4972(%rbp), %eax
	jge	.LBB7_31
# BB#29:                                # %for.body.123
                                        #   in Loop: Header=BB7_28 Depth=1
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movslq	-76(%rbp), %rdx
	shlq	$4, %rdx
	addq	-4968(%rbp), %rdx
	movb	%cl, 8(%rdx)
	movslq	-76(%rbp), %rdx
	movq	-2912(%rbp,%rdx,8), %rdx
	movslq	-76(%rbp), %rsi
	shlq	$4, %rsi
	addq	-4968(%rbp), %rsi
	movq	%rdx, (%rsi)
# BB#30:                                # %for.inc.131
                                        #   in Loop: Header=BB7_28 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB7_28
.LBB7_31:                               # %for.end.133
	movl	$16, %eax
	movl	%eax, %edx
	movabsq	$mapping_compare, %rcx
	movq	-4968(%rbp), %rsi
	movslq	-4972(%rbp), %rdi
	movq	%rdi, -5016(%rbp)       # 8-byte Spill
	movq	%rsi, %rdi
	movq	-5016(%rbp), %rsi       # 8-byte Reload
	callq	qsort
	movl	$0, -76(%rbp)
.LBB7_32:                               # %for.cond.135
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_35 Depth 2
	movl	-76(%rbp), %eax
	movq	-72(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB7_44
# BB#33:                                # %for.body.138
                                        #   in Loop: Header=BB7_32 Depth=1
	movslq	-76(%rbp), %rax
	movq	-56(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB7_42
# BB#34:                                # %if.then.142
                                        #   in Loop: Header=BB7_32 Depth=1
	movl	$0, -80(%rbp)
.LBB7_35:                               # %for.cond.143
                                        #   Parent Loop BB7_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-80(%rbp), %eax
	cmpl	-4972(%rbp), %eax
	jge	.LBB7_41
# BB#36:                                # %for.body.146
                                        #   in Loop: Header=BB7_35 Depth=2
	movslq	-76(%rbp), %rax
	movq	-4960(%rbp,%rax,8), %rax
	movslq	-80(%rbp), %rcx
	shlq	$4, %rcx
	addq	-4968(%rbp), %rcx
	movzbl	8(%rcx), %edx
	movl	%edx, %ecx
	cmpq	%rcx, %rax
	jne	.LBB7_39
# BB#37:                                # %land.lhs.true.155
                                        #   in Loop: Header=BB7_35 Depth=2
	movslq	-80(%rbp), %rax
	shlq	$4, %rax
	addq	-4968(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_39
# BB#38:                                # %if.then.160
                                        #   in Loop: Header=BB7_32 Depth=1
	movl	-80(%rbp), %eax
	movb	%al, %cl
	movslq	-76(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	jmp	.LBB7_41
.LBB7_39:                               # %if.end.164
                                        #   in Loop: Header=BB7_35 Depth=2
	jmp	.LBB7_40
.LBB7_40:                               # %for.inc.165
                                        #   in Loop: Header=BB7_35 Depth=2
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB7_35
.LBB7_41:                               # %for.end.167
                                        #   in Loop: Header=BB7_32 Depth=1
	jmp	.LBB7_42
.LBB7_42:                               # %if.end.168
                                        #   in Loop: Header=BB7_32 Depth=1
	jmp	.LBB7_43
.LBB7_43:                               # %for.inc.169
                                        #   in Loop: Header=BB7_32 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB7_32
.LBB7_44:                               # %for.end.171
	movl	$0, -76(%rbp)
.LBB7_45:                               # %for.cond.172
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	movq	-72(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB7_50
# BB#46:                                # %for.body.175
                                        #   in Loop: Header=BB7_45 Depth=1
	movslq	-76(%rbp), %rax
	movq	-56(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB7_48
# BB#47:                                # %if.then.179
                                        #   in Loop: Header=BB7_45 Depth=1
	imull	$3, -76(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movslq	-76(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	imull	$3, %eax, %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	imull	$3, -76(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movslq	-76(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	imull	$3, %eax, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	imull	$3, -76(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movslq	-76(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	imull	$3, %eax, %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
.LBB7_48:                               # %if.end.213
                                        #   in Loop: Header=BB7_45 Depth=1
	jmp	.LBB7_49
.LBB7_49:                               # %for.inc.214
                                        #   in Loop: Header=BB7_45 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB7_45
.LBB7_50:                               # %for.end.216
	movq	-72(%rbp), %rax
	movl	$0, (%rax)
	movl	$0, -80(%rbp)
.LBB7_51:                               # %for.cond.217
                                        # =>This Inner Loop Header: Depth=1
	movl	-80(%rbp), %eax
	cmpl	-4972(%rbp), %eax
	jge	.LBB7_56
# BB#52:                                # %for.body.220
                                        #   in Loop: Header=BB7_51 Depth=1
	movslq	-80(%rbp), %rax
	shlq	$4, %rax
	addq	-4968(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_54
# BB#53:                                # %if.then.225
                                        #   in Loop: Header=BB7_51 Depth=1
	movq	-72(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
.LBB7_54:                               # %if.end.227
                                        #   in Loop: Header=BB7_51 Depth=1
	jmp	.LBB7_55
.LBB7_55:                               # %for.inc.228
                                        #   in Loop: Header=BB7_51 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB7_51
.LBB7_56:                               # %for.end.230
	movq	-4968(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	addq	$4992, %rsp             # imm = 0x1380
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	make_remap_table, .Lfunc_end7-make_remap_table
	.cfi_endproc

	.align	16, 0x90
	.type	remap_indexed_layer,@function
remap_indexed_layer:                    # @remap_indexed_layer
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
	subq	$304, %rsp              # imm = 0x130
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_has_alpha
	movl	%eax, -164(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movq	-8(%rbp), %rsi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-8(%rbp), %rsi
	movl	%eax, -228(%rbp)        # 4-byte Spill
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	leaq	-88(%rbp), %rdi
	xorl	%edx, %edx
	movq	-216(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -244(%rbp)        # 4-byte Spill
	movl	-244(%rbp), %ecx        # 4-byte Reload
	movl	-228(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	movq	-8(%rbp), %rsi
	movq	%rsi, -256(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movq	-8(%rbp), %rsi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movq	%rsi, -272(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-8(%rbp), %rsi
	movl	%eax, -276(%rbp)        # 4-byte Spill
	movq	%rsi, -288(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	leaq	-152(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-264(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -292(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-276(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	movl	$2, %edi
	leaq	-88(%rbp), %rsi
	leaq	-152(%rbp), %rdx
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -160(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_4 Depth 2
                                        #     Child Loop BB8_10 Depth 2
	cmpq	$0, -160(%rbp)
	je	.LBB8_15
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -184(%rbp)
	movl	-40(%rbp), %ecx
	imull	-44(%rbp), %ecx
	movl	%ecx, -188(%rbp)
	cmpl	$0, -164(%rbp)
	je	.LBB8_9
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_4
.LBB8_4:                                # %while.cond
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-188(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -188(%rbp)
	cmpl	$0, %eax
	je	.LBB8_8
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB8_4 Depth=2
	movq	-176(%rbp), %rax
	cmpb	$0, 1(%rax)
	je	.LBB8_7
# BB#6:                                 # %if.then.25
                                        #   in Loop: Header=BB8_4 Depth=2
	movq	-176(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-16(%rbp), %rdx
	movb	(%rdx,%rax), %sil
	movq	-184(%rbp), %rax
	movb	%sil, (%rax)
.LBB8_7:                                # %if.end
                                        #   in Loop: Header=BB8_4 Depth=2
	movl	-36(%rbp), %eax
	movq	-176(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -176(%rbp)
	movl	-100(%rbp), %eax
	movq	-184(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -184(%rbp)
	jmp	.LBB8_4
.LBB8_8:                                # %while.end
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_13
.LBB8_9:                                # %if.else
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_10
.LBB8_10:                               # %while.cond.32
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-188(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -188(%rbp)
	cmpl	$0, %eax
	je	.LBB8_12
# BB#11:                                # %while.body.35
                                        #   in Loop: Header=BB8_10 Depth=2
	movq	-176(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-16(%rbp), %rdx
	movb	(%rdx,%rax), %sil
	movq	-184(%rbp), %rax
	movb	%sil, (%rax)
	movl	-36(%rbp), %ecx
	movq	-176(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -176(%rbp)
	movl	-100(%rbp), %ecx
	movq	-184(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	jmp	.LBB8_10
.LBB8_12:                               # %while.end.46
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_13
.LBB8_13:                               # %if.end.47
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_14
.LBB8_14:                               # %for.inc
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -160(%rbp)
	jmp	.LBB8_1
.LBB8_15:                               # %for.end
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end8:
	.size	remap_indexed_layer, .Lfunc_end8-remap_indexed_layer
	.cfi_endproc

	.globl	gimp_image_convert_set_dither_matrix
	.align	16, 0x90
	.type	gimp_image_convert_set_dither_matrix,@function
gimp_image_convert_set_dither_matrix:   # @gimp_image_convert_set_dither_matrix
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB9_3
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -12(%rbp)
	je	.LBB9_3
# BB#2:                                 # %lor.lhs.false.2
	cmpl	$0, -16(%rbp)
	jne	.LBB9_4
.LBB9_3:                                # %if.then
	movabsq	$DM_ORIGINAL, %rax
	movq	%rax, -8(%rbp)
	movl	$32, -12(%rbp)
	movl	$32, -16(%rbp)
.LBB9_4:                                # %if.end
	jmp	.LBB9_5
.LBB9_5:                                # %do.body
	movl	$32, %eax
	cltd
	idivl	-12(%rbp)
	cmpl	$0, %edx
	jne	.LBB9_7
# BB#6:                                 # %if.then.5
	jmp	.LBB9_8
.LBB9_7:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_convert_set_dither_matrix, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_22
.LBB9_8:                                # %if.end.6
	jmp	.LBB9_9
.LBB9_9:                                # %do.end
	jmp	.LBB9_10
.LBB9_10:                               # %do.body.7
	movl	$32, %eax
	cltd
	idivl	-16(%rbp)
	cmpl	$0, %edx
	jne	.LBB9_12
# BB#11:                                # %if.then.10
	jmp	.LBB9_13
.LBB9_12:                               # %if.else.11
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_convert_set_dither_matrix, %rsi
	movabsq	$.L.str.16, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_22
.LBB9_13:                               # %if.end.12
	jmp	.LBB9_14
.LBB9_14:                               # %do.end.13
	movl	$0, -24(%rbp)
.LBB9_15:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_17 Depth 2
	cmpl	$32, -24(%rbp)
	jge	.LBB9_22
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB9_15 Depth=1
	movl	$0, -20(%rbp)
.LBB9_17:                               # %for.cond.15
                                        #   Parent Loop BB9_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$32, -20(%rbp)
	jge	.LBB9_20
# BB#18:                                # %for.body.17
                                        #   in Loop: Header=BB9_17 Depth=2
	movabsq	$DM, %rax
	movl	-20(%rbp), %ecx
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-12(%rbp)
	imull	-16(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	%ecx, %eax
	movl	%edx, -36(%rbp)         # 4-byte Spill
	cltd
	idivl	-16(%rbp)
	movl	-36(%rbp), %ecx         # 4-byte Reload
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movq	-8(%rbp), %rdi
	movb	(%rdi,%rsi), %r8b
	movslq	-24(%rbp), %rsi
	movslq	-20(%rbp), %rdi
	shlq	$5, %rdi
	movq	-32(%rbp), %r9          # 8-byte Reload
	addq	%rdi, %r9
	movb	%r8b, (%r9,%rsi)
# BB#19:                                # %for.inc
                                        #   in Loop: Header=BB9_17 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB9_17
.LBB9_20:                               # %for.end
                                        #   in Loop: Header=BB9_15 Depth=1
	jmp	.LBB9_21
.LBB9_21:                               # %for.inc.24
                                        #   in Loop: Header=BB9_15 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB9_15
.LBB9_22:                               # %for.end.26
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_image_convert_set_dither_matrix, .Lfunc_end9-gimp_image_convert_set_dither_matrix
	.cfi_endproc

	.align	16, 0x90
	.type	mapping_compare,@function
mapping_compare:                        # @mapping_compare
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	-24(%rbp), %rdi
	subq	(%rdi), %rsi
	movl	%esi, %eax
	popq	%rbp
	retq
.Lfunc_end10:
	.size	mapping_compare, .Lfunc_end10-mapping_compare
	.cfi_endproc

	.align	16, 0x90
	.type	HIST_RGB,@function
HIST_RGB:                               # @HIST_RGB
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
	pushq	%rbx
	subq	$40, %rsp
.Ltmp41:
	.cfi_offset %rbx, -24
	leaq	-32(%rbp), %rax
	leaq	-36(%rbp), %r8
	leaq	-40(%rbp), %r9
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	-20(%rbp), %ecx
	movb	%cl, %r10b
	movl	-24(%rbp), %ecx
	movb	%cl, %r11b
	movl	-28(%rbp), %ecx
	movb	%cl, %bl
	movzbl	%r10b, %edi
	movzbl	%r11b, %esi
	movzbl	%bl, %edx
	movq	%rax, %rcx
	callq	rgb_to_lin
	movq	-16(%rbp), %rdi
	movl	-32(%rbp), %esi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	callq	HIST_LIN
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end11:
	.size	HIST_RGB, .Lfunc_end11-HIST_RGB
	.cfi_endproc

	.align	16, 0x90
	.type	rgb_to_lin,@function
rgb_to_lin:                             # @rgb_to_lin
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$56, %rsp
.Ltmp45:
	.cfi_offset %rbx, -40
.Ltmp46:
	.cfi_offset %r14, -32
.Ltmp47:
	.cfi_offset %r15, -24
	movb	%dl, %al
	movb	%sil, %r10b
	movb	%dil, %r11b
	leaq	-60(%rbp), %rbx
	leaq	-64(%rbp), %r14
	leaq	-68(%rbp), %r15
	movb	%r11b, -25(%rbp)
	movb	%r10b, -26(%rbp)
	movb	%al, -27(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movb	-25(%rbp), %al
	movb	-26(%rbp), %r10b
	movzbl	%al, %edi
	movzbl	%r10b, %esi
	movzbl	-27(%rbp), %edx
	movq	%rbx, %rcx
	movq	%r14, %r8
	movq	%r15, %r9
	callq	rgb_to_unshifted_lin
	movl	-60(%rbp), %edx
	sarl	$0, %edx
	movl	%edx, -60(%rbp)
	movl	-64(%rbp), %edx
	sarl	$2, %edx
	movl	%edx, -64(%rbp)
	movl	-68(%rbp), %edx
	sarl	$2, %edx
	movl	%edx, -68(%rbp)
	movl	-60(%rbp), %edx
	movq	-40(%rbp), %rcx
	movl	%edx, (%rcx)
	movl	-64(%rbp), %edx
	movq	-48(%rbp), %rcx
	movl	%edx, (%rcx)
	movl	-68(%rbp), %edx
	movq	-56(%rbp), %rcx
	movl	%edx, (%rcx)
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	rgb_to_lin, .Lfunc_end12-rgb_to_lin
	.cfi_endproc

	.align	16, 0x90
	.type	HIST_LIN,@function
HIST_LIN:                               # @HIST_LIN
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	-12(%rbp), %ecx
	andl	$248, %ecx
	shll	$12, %ecx
	movl	-12(%rbp), %edx
	andl	$7, %edx
	shll	$9, %edx
	orl	%edx, %ecx
	movl	-16(%rbp), %edx
	andl	$56, %edx
	shll	$9, %edx
	orl	%edx, %ecx
	movl	-16(%rbp), %edx
	andl	$7, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	orl	-20(%rbp), %ecx
	movslq	%ecx, %rdi
	shlq	$3, %rdi
	addq	-8(%rbp), %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end13:
	.size	HIST_LIN, .Lfunc_end13-HIST_LIN
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4608354558861639680     # double 1.2602673768997192
.LCPI14_1:
	.quad	-4586081787788132352    # double -107.85800170898438
.LCPI14_2:
	.quad	4608906074001506304     # double 1.3827283382415771
.LCPI14_3:
	.quad	-4587607171193110528    # double -86.180999755859375
.LCPI14_4:
	.quad	4612924508217540608     # double 2.5499999523162842
	.text
	.align	16, 0x90
	.type	rgb_to_unshifted_lin,@function
rgb_to_unshifted_lin:                   # @rgb_to_unshifted_lin
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
	pushq	%rbx
	subq	$136, %rsp
.Ltmp54:
	.cfi_offset %rbx, -24
	movb	%dl, %al
	movb	%sil, %r10b
	movb	%dil, %r11b
	leaq	-48(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movb	%r11b, -9(%rbp)
	movb	%r10b, -10(%rbp)
	movb	%al, -11(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movzbl	-9(%rbp), %ebx
	cvtsi2sdl	%ebx, %xmm0
	movzbl	-10(%rbp), %ebx
	cvtsi2sdl	%ebx, %xmm1
	movzbl	-11(%rbp), %ebx
	cvtsi2sdl	%ebx, %xmm2
	callq	cpercep_rgb_to_space
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI14_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI14_2, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI14_3, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI14_4, %xmm4        # xmm4 = mem[0],zero
	mulsd	-48(%rbp), %xmm4
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movaps	%xmm4, %xmm0
	movsd	%xmm3, -96(%rbp)        # 8-byte Spill
	movsd	%xmm1, -104(%rbp)       # 8-byte Spill
	movsd	%xmm2, -112(%rbp)       # 8-byte Spill
	callq	rint
	cvttsd2si	%xmm0, %ebx
	movl	%ebx, -68(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	-112(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	callq	rint
	cvttsd2si	%xmm0, %ebx
	movl	%ebx, -72(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	-88(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	callq	rint
	cvttsd2si	%xmm0, %ebx
	movl	%ebx, -76(%rbp)
	cmpl	$255, -68(%rbp)
	jle	.LBB14_2
# BB#1:                                 # %cond.true
	movl	$255, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB14_6
.LBB14_2:                               # %cond.false
	cmpl	$0, -68(%rbp)
	jge	.LBB14_4
# BB#3:                                 # %cond.true.14
	xorl	%eax, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB14_5
.LBB14_4:                               # %cond.false.15
	movl	-68(%rbp), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB14_5:                               # %cond.end
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB14_6:                               # %cond.end.16
	movl	-116(%rbp), %eax        # 4-byte Reload
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	cmpl	$255, -72(%rbp)
	jle	.LBB14_8
# BB#7:                                 # %cond.true.20
	movl	$255, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB14_12
.LBB14_8:                               # %cond.false.21
	cmpl	$0, -72(%rbp)
	jge	.LBB14_10
# BB#9:                                 # %cond.true.24
	xorl	%eax, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB14_11
.LBB14_10:                              # %cond.false.25
	movl	-72(%rbp), %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB14_11:                              # %cond.end.26
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB14_12:                              # %cond.end.28
	movl	-124(%rbp), %eax        # 4-byte Reload
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	cmpl	$255, -76(%rbp)
	jle	.LBB14_14
# BB#13:                                # %cond.true.32
	movl	$255, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB14_18
.LBB14_14:                              # %cond.false.33
	cmpl	$0, -76(%rbp)
	jge	.LBB14_16
# BB#15:                                # %cond.true.36
	xorl	%eax, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB14_17
.LBB14_16:                              # %cond.false.37
	movl	-76(%rbp), %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB14_17:                              # %cond.end.38
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB14_18:                              # %cond.end.40
	movl	-132(%rbp), %eax        # 4-byte Reload
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end14:
	.size	rgb_to_unshifted_lin, .Lfunc_end14-rgb_to_unshifted_lin
	.cfi_endproc

	.align	16, 0x90
	.type	median_cut_pass1_gray,@function
median_cut_pass1_gray:                  # @median_cut_pass1_gray
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	8232(%rax), %rsi
	callq	select_colors_gray
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	median_cut_pass1_gray, .Lfunc_end15-median_cut_pass1_gray
	.cfi_endproc

	.align	16, 0x90
	.type	webpal_pass1,@function
webpal_pass1:                           # @webpal_pass1
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$216, 36(%rdi)
	movl	$0, -12(%rbp)
.LBB16_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$216, -12(%rbp)
	jge	.LBB16_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB16_1 Depth=1
	imull	$3, -12(%rbp), %eax
	movslq	%eax, %rcx
	movzbl	webpal(,%rcx), %eax
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	$40, %rdx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	imull	$3, -12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movzbl	webpal(,%rcx), %eax
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	$40, %rdx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rdx
	movl	%eax, 4(%rdx)
	imull	$3, -12(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movzbl	webpal(,%rcx), %eax
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	$40, %rdx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rdx
	movl	%eax, 8(%rdx)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB16_1
.LBB16_4:                               # %for.end
	popq	%rbp
	retq
.Lfunc_end16:
	.size	webpal_pass1, .Lfunc_end16-webpal_pass1
	.cfi_endproc

	.align	16, 0x90
	.type	custompal_pass1,@function
custompal_pass1:                        # @custompal_pass1
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
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	theCustomPalette, %rdi
	callq	gimp_palette_get_colors
	movq	%rax, -24(%rbp)
.LBB17_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB17_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	leaq	-33(%rbp), %rsi
	leaq	-34(%rbp), %rdx
	leaq	-35(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_rgb_get_uchar
	movzbl	-33(%rbp), %r8d
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$40, %rcx
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movl	%r8d, (%rcx)
	movzbl	-34(%rbp), %r8d
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$40, %rcx
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movl	%r8d, 4(%rcx)
	movzbl	-35(%rbp), %r8d
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$40, %rcx
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movl	%r8d, 8(%rcx)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB17_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB17_6
.LBB17_5:                               # %cond.false
                                        #   in Loop: Header=BB17_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB17_6
.LBB17_6:                               # %cond.end
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB17_1
.LBB17_7:                               # %for.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 36(%rcx)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	custompal_pass1, .Lfunc_end17-custompal_pass1
	.cfi_endproc

	.align	16, 0x90
	.type	monopal_pass1,@function
monopal_pass1:                          # @monopal_pass1
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$2, 36(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 40(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 44(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 48(%rdi)
	movq	-8(%rbp), %rdi
	movl	$255, 52(%rdi)
	movq	-8(%rbp), %rdi
	movl	$255, 56(%rdi)
	movq	-8(%rbp), %rdi
	movl	$255, 60(%rdi)
	popq	%rbp
	retq
.Lfunc_end18:
	.size	monopal_pass1, .Lfunc_end18-monopal_pass1
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	movl	$.L.str, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end19:
	.size	g_warning, .Lfunc_end19-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	median_cut_pass2_rgb_init,@function
median_cut_pass2_rgb_init:              # @median_cut_pass2_rgb_init
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
	movq	-8(%rbp), %rdi
	movq	8232(%rdi), %rdi
	callq	zero_histogram_rgb
	xorl	%esi, %esi
	movl	$2048, %eax             # imm = 0x800
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	addq	$6184, %rdi             # imm = 0x1828
	callq	memset
	movl	$0, -12(%rbp)
.LBB20_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jge	.LBB20_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB20_1 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$40, %rcx
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movl	(%rcx), %edx
	movb	%dl, %sil
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$40, %rcx
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movl	4(%rcx), %edx
	movb	%dl, %dil
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$40, %rcx
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movl	8(%rcx), %edx
	movb	%dl, %r8b
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$3112, %rcx             # imm = 0xC28
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %r9
	addq	$3112, %r9              # imm = 0xC28
	imulq	$12, %rax, %rax
	addq	%rax, %r9
	addq	$4, %r9
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %r10
	addq	$3112, %r10             # imm = 0xC28
	imulq	$12, %rax, %rax
	addq	%rax, %r10
	addq	$8, %r10
	movzbl	%sil, %edx
	movb	%dil, -13(%rbp)         # 1-byte Spill
	movl	%edx, %edi
	movb	-13(%rbp), %sil         # 1-byte Reload
	movzbl	%sil, %esi
	movzbl	%r8b, %edx
	movq	%r9, %r8
	movq	%r10, %r9
	callq	rgb_to_unshifted_lin
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB20_1
.LBB20_4:                               # %for.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	median_cut_pass2_rgb_init, .Lfunc_end20-median_cut_pass2_rgb_init
	.cfi_endproc

	.align	16, 0x90
	.type	median_cut_pass2_no_dither_rgb,@function
median_cut_pass2_no_dither_rgb:         # @median_cut_pass2_no_dither_rgb
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
	subq	$448, %rsp              # imm = 0x1C0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	8232(%rdx), %rdx
	movq	%rdx, -160(%rbp)
	movl	$0, -220(%rbp)
	movl	$1, -224(%rbp)
	movl	$2, -228(%rbp)
	movl	$3, -232(%rbp)
	movq	-8(%rbp), %rdx
	movl	8240(%rdx), %eax
	movl	%eax, -236(%rbp)
	movq	-8(%rbp), %rdx
	addq	$6184, %rdx             # imm = 0x1828
	movq	%rdx, -256(%rbp)
	movq	$0, -264(%rbp)
	movl	$0, -276(%rbp)
	movq	-8(%rbp), %rdx
	movl	8256(%rdx), %eax
	movl	%eax, -280(%rbp)
	movq	-8(%rbp), %rdx
	movl	8260(%rdx), %eax
	movl	%eax, -284(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -304(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-240(%rbp), %rsi
	leaq	-244(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movq	-16(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB21_2
# BB#1:                                 # %if.then
	movl	$0, -228(%rbp)
	movl	$0, -224(%rbp)
	movl	$0, -220(%rbp)
	movl	$1, -232(%rbp)
.LBB21_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_has_alpha
	movl	%eax, -208(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -328(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movq	-16(%rbp), %rsi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	movq	%rsi, -344(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-16(%rbp), %rsi
	movl	%eax, -348(%rbp)        # 4-byte Spill
	movq	%rsi, -360(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	leaq	-88(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-336(%rbp), %rsi        # 8-byte Reload
	movl	%ecx, %edx
	movl	-348(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, -368(%rbp)        # 8-byte Spill
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-16(%rbp), %rsi
	movl	%eax, -380(%rbp)        # 4-byte Spill
	movq	%rsi, -392(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	leaq	-152(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-368(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -396(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-380(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	movq	-16(%rbp), %rsi
	movq	%rsi, -408(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-16(%rbp), %rsi
	movl	%eax, -412(%rbp)        # 4-byte Spill
	movq	%rsi, -424(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	$2, %edi
	leaq	-88(%rbp), %rsi
	leaq	-152(%rbp), %rdx
	movl	-412(%rbp), %ecx        # 4-byte Reload
	imull	%eax, %ecx
	movslq	%ecx, %r10
	movq	%r10, -272(%rbp)
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -216(%rbp)
.LBB21_3:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_5 Depth 2
                                        #       Child Loop BB21_7 Depth 3
	cmpq	$0, -216(%rbp)
	je	.LBB21_32
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB21_3 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -184(%rbp)
	movl	-40(%rbp), %ecx
	imull	-44(%rbp), %ecx
	movslq	%ecx, %rax
	addq	-264(%rbp), %rax
	movq	%rax, -264(%rbp)
	movl	$0, -200(%rbp)
.LBB21_5:                               # %for.cond.38
                                        #   Parent Loop BB21_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB21_7 Depth 3
	movl	-200(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB21_27
# BB#6:                                 # %for.body.42
                                        #   in Loop: Header=BB21_5 Depth=2
	movl	$0, -204(%rbp)
.LBB21_7:                               # %for.cond.43
                                        #   Parent Loop BB21_3 Depth=1
                                        #     Parent Loop BB21_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-204(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB21_25
# BB#8:                                 # %for.body.47
                                        #   in Loop: Header=BB21_7 Depth=3
	cmpl	$0, -208(%rbp)
	je	.LBB21_20
# BB#9:                                 # %if.then.49
                                        #   in Loop: Header=BB21_7 Depth=3
	movl	$0, -288(%rbp)
	cmpl	$0, -236(%rbp)
	je	.LBB21_13
# BB#10:                                # %if.then.51
                                        #   in Loop: Header=BB21_7 Depth=3
	movabsq	$DM, %rax
	movl	-204(%rbp), %ecx
	addl	-240(%rbp), %ecx
	addl	-52(%rbp), %ecx
	andl	$31, %ecx
	movl	%ecx, -292(%rbp)
	movl	-200(%rbp), %ecx
	addl	-244(%rbp), %ecx
	addl	-48(%rbp), %ecx
	andl	$31, %ecx
	movl	%ecx, -296(%rbp)
	movslq	-232(%rbp), %rdx
	movq	-176(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movslq	-296(%rbp), %rdx
	movslq	-292(%rbp), %rsi
	shlq	$5, %rsi
	addq	%rsi, %rax
	movzbl	(%rax,%rdx), %edi
	cmpl	%edi, %ecx
	jge	.LBB21_12
# BB#11:                                # %if.then.65
                                        #   in Loop: Header=BB21_7 Depth=3
	movl	$1, -288(%rbp)
.LBB21_12:                              # %if.end.66
                                        #   in Loop: Header=BB21_7 Depth=3
	jmp	.LBB21_16
.LBB21_13:                              # %if.else
                                        #   in Loop: Header=BB21_7 Depth=3
	movslq	-232(%rbp), %rax
	movq	-176(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$127, %edx
	jg	.LBB21_15
# BB#14:                                # %if.then.72
                                        #   in Loop: Header=BB21_7 Depth=3
	movl	$1, -288(%rbp)
.LBB21_15:                              # %if.end.73
                                        #   in Loop: Header=BB21_7 Depth=3
	jmp	.LBB21_16
.LBB21_16:                              # %if.end.74
                                        #   in Loop: Header=BB21_7 Depth=3
	cmpl	$0, -288(%rbp)
	je	.LBB21_18
# BB#17:                                # %if.then.76
                                        #   in Loop: Header=BB21_7 Depth=3
	movq	-184(%rbp), %rax
	movb	$0, 1(%rax)
	jmp	.LBB21_23
.LBB21_18:                              # %if.else.78
                                        #   in Loop: Header=BB21_7 Depth=3
	movq	-184(%rbp), %rax
	movb	$-1, 1(%rax)
# BB#19:                                # %if.end.80
                                        #   in Loop: Header=BB21_7 Depth=3
	jmp	.LBB21_20
.LBB21_20:                              # %if.end.81
                                        #   in Loop: Header=BB21_7 Depth=3
	leaq	-188(%rbp), %rcx
	leaq	-192(%rbp), %r8
	leaq	-196(%rbp), %r9
	movslq	-220(%rbp), %rax
	movq	-176(%rbp), %rdx
	movb	(%rdx,%rax), %sil
	movslq	-224(%rbp), %rax
	movq	-176(%rbp), %rdx
	movb	(%rdx,%rax), %dil
	movslq	-228(%rbp), %rax
	movq	-176(%rbp), %rdx
	movzbl	%sil, %r10d
	movb	%dil, -425(%rbp)        # 1-byte Spill
	movl	%r10d, %edi
	movb	-425(%rbp), %sil        # 1-byte Reload
	movzbl	%sil, %esi
	movzbl	(%rdx,%rax), %edx
	callq	rgb_to_lin
	movq	-160(%rbp), %rdi
	movl	-188(%rbp), %esi
	movl	-192(%rbp), %edx
	movl	-196(%rbp), %ecx
	callq	HIST_LIN
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB21_22
# BB#21:                                # %if.then.91
                                        #   in Loop: Header=BB21_7 Depth=3
	movq	-8(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movl	-188(%rbp), %edx
	movl	-192(%rbp), %ecx
	movl	-196(%rbp), %r8d
	callq	fill_inverse_cmap_rgb
.LBB21_22:                              # %if.end.92
                                        #   in Loop: Header=BB21_7 Depth=3
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	subq	$1, %rax
	movb	%al, %cl
	movq	-184(%rbp), %rax
	movb	%cl, (%rax)
	movzbl	%cl, %edx
	movl	%edx, %eax
	movq	-256(%rbp), %rsi
	movq	(%rsi,%rax,8), %rdi
	addq	$1, %rdi
	movq	%rdi, (%rsi,%rax,8)
.LBB21_23:                              # %next_pixel
                                        #   in Loop: Header=BB21_7 Depth=3
	movl	-36(%rbp), %eax
	movq	-176(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -176(%rbp)
	movl	-100(%rbp), %eax
	movq	-184(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -184(%rbp)
# BB#24:                                # %for.inc
                                        #   in Loop: Header=BB21_7 Depth=3
	movl	-204(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -204(%rbp)
	jmp	.LBB21_7
.LBB21_25:                              # %for.end
                                        #   in Loop: Header=BB21_5 Depth=2
	jmp	.LBB21_26
.LBB21_26:                              # %for.inc.101
                                        #   in Loop: Header=BB21_5 Depth=2
	movl	-200(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -200(%rbp)
	jmp	.LBB21_5
.LBB21_27:                              # %for.end.103
                                        #   in Loop: Header=BB21_3 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 8248(%rax)
	je	.LBB21_30
# BB#28:                                # %land.lhs.true
                                        #   in Loop: Header=BB21_3 Depth=1
	movl	$16, %eax
	movl	-276(%rbp), %ecx
	movl	%eax, -432(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-432(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB21_30
# BB#29:                                # %if.then.107
                                        #   in Loop: Header=BB21_3 Depth=1
	movq	-8(%rbp), %rax
	movq	8248(%rax), %rdi
	cvtsi2sdl	-280(%rbp), %xmm0
	cvtsi2sdq	-264(%rbp), %xmm1
	cvtsi2sdq	-272(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	cvtsi2sdl	-284(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_set_value
.LBB21_30:                              # %if.end.115
                                        #   in Loop: Header=BB21_3 Depth=1
	jmp	.LBB21_31
.LBB21_31:                              # %for.inc.116
                                        #   in Loop: Header=BB21_3 Depth=1
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -216(%rbp)
	movl	-276(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -276(%rbp)
	jmp	.LBB21_3
.LBB21_32:                              # %for.end.119
	addq	$448, %rsp              # imm = 0x1C0
	popq	%rbp
	retq
.Lfunc_end21:
	.size	median_cut_pass2_no_dither_rgb, .Lfunc_end21-median_cut_pass2_no_dither_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	median_cut_pass2_fs_dither_rgb,@function
median_cut_pass2_fs_dither_rgb:         # @median_cut_pass2_fs_dither_rgb
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
	subq	$704, %rsp              # imm = 0x2C0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	8232(%rdx), %rdx
	movq	%rdx, -160(%rbp)
	movl	$0, -420(%rbp)
	movl	$1, -424(%rbp)
	movl	$2, -428(%rbp)
	movl	$3, -432(%rbp)
	movq	-8(%rbp), %rdx
	movl	8240(%rdx), %eax
	movl	%eax, -444(%rbp)
	movq	-8(%rbp), %rdx
	addq	$6184, %rdx             # imm = 0x1828
	movq	%rdx, -456(%rbp)
	movl	$0, -460(%rbp)
	movl	$2147483647, -464(%rbp) # imm = 0x7FFFFFFF
	movl	$0, -468(%rbp)
	movl	$2147483647, -472(%rbp) # imm = 0x7FFFFFFF
	movl	$0, -476(%rbp)
	movl	$2147483647, -480(%rbp) # imm = 0x7FFFFFFF
	movq	-8(%rbp), %rdx
	movl	8256(%rdx), %eax
	movl	%eax, -484(%rbp)
	movq	-8(%rbp), %rdx
	movl	8260(%rdx), %eax
	movl	%eax, -488(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -520(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-436(%rbp), %rsi
	leaq	-440(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movq	-16(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB22_2
# BB#1:                                 # %if.then
	movl	$0, -428(%rbp)
	movl	$0, -424(%rbp)
	movl	$0, -420(%rbp)
.LBB22_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_has_alpha
	movl	%eax, -408(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -544(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movq	-16(%rbp), %rsi
	movq	%rax, -552(%rbp)        # 8-byte Spill
	movq	%rsi, -560(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-16(%rbp), %rsi
	movl	%eax, -564(%rbp)        # 4-byte Spill
	movq	%rsi, -576(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	leaq	-88(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-552(%rbp), %rsi        # 8-byte Reload
	movl	%ecx, %edx
	movl	-564(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, -584(%rbp)        # 8-byte Spill
	movq	%rdi, -592(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-16(%rbp), %rsi
	movl	%eax, -596(%rbp)        # 4-byte Spill
	movq	%rsi, -608(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	leaq	-152(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-584(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -612(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-596(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	movq	-16(%rbp), %rsi
	movq	%rsi, -624(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_bytes
	movl	%eax, -228(%rbp)
	movq	-24(%rbp), %rdi
	callq	tile_manager_bpp
	movl	%eax, -232(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -632(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	%eax, -412(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -640(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	%eax, -416(%rbp)
	movq	-8(%rbp), %rsi
	movl	8244(%rsi), %edi
	callq	init_error_limit
	movabsq	$range_array, %rsi
	addq	$256, %rsi              # imm = 0x100
	movq	%rax, -184(%rbp)
	movq	%rsi, -224(%rbp)
	movl	$0, -392(%rbp)
.LBB22_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-392(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jge	.LBB22_24
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB22_3 Depth=1
	movl	-460(%rbp), %eax
	movslq	-392(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	$3112, %rdx             # imm = 0xC28
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rdx
	cmpl	(%rdx), %eax
	jle	.LBB22_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB22_3 Depth=1
	movl	-460(%rbp), %eax
	movl	%eax, -644(%rbp)        # 4-byte Spill
	jmp	.LBB22_7
.LBB22_6:                               # %cond.false
                                        #   in Loop: Header=BB22_3 Depth=1
	movslq	-392(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$3112, %rcx             # imm = 0xC28
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movl	(%rcx), %edx
	movl	%edx, -644(%rbp)        # 4-byte Spill
.LBB22_7:                               # %cond.end
                                        #   in Loop: Header=BB22_3 Depth=1
	movl	-644(%rbp), %eax        # 4-byte Reload
	movl	%eax, -460(%rbp)
	movl	-464(%rbp), %eax
	movslq	-392(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	$3112, %rdx             # imm = 0xC28
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rdx
	cmpl	(%rdx), %eax
	jge	.LBB22_9
# BB#8:                                 # %cond.true.76
                                        #   in Loop: Header=BB22_3 Depth=1
	movl	-464(%rbp), %eax
	movl	%eax, -648(%rbp)        # 4-byte Spill
	jmp	.LBB22_10
.LBB22_9:                               # %cond.false.77
                                        #   in Loop: Header=BB22_3 Depth=1
	movslq	-392(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$3112, %rcx             # imm = 0xC28
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movl	(%rcx), %edx
	movl	%edx, -648(%rbp)        # 4-byte Spill
.LBB22_10:                              # %cond.end.82
                                        #   in Loop: Header=BB22_3 Depth=1
	movl	-648(%rbp), %eax        # 4-byte Reload
	movl	%eax, -464(%rbp)
	movl	-468(%rbp), %eax
	movslq	-392(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	$3112, %rdx             # imm = 0xC28
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rdx
	cmpl	4(%rdx), %eax
	jle	.LBB22_12
# BB#11:                                # %cond.true.88
                                        #   in Loop: Header=BB22_3 Depth=1
	movl	-468(%rbp), %eax
	movl	%eax, -652(%rbp)        # 4-byte Spill
	jmp	.LBB22_13
.LBB22_12:                              # %cond.false.89
                                        #   in Loop: Header=BB22_3 Depth=1
	movslq	-392(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$3112, %rcx             # imm = 0xC28
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movl	4(%rcx), %edx
	movl	%edx, -652(%rbp)        # 4-byte Spill
.LBB22_13:                              # %cond.end.94
                                        #   in Loop: Header=BB22_3 Depth=1
	movl	-652(%rbp), %eax        # 4-byte Reload
	movl	%eax, -468(%rbp)
	movl	-472(%rbp), %eax
	movslq	-392(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	$3112, %rdx             # imm = 0xC28
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rdx
	cmpl	4(%rdx), %eax
	jge	.LBB22_15
# BB#14:                                # %cond.true.101
                                        #   in Loop: Header=BB22_3 Depth=1
	movl	-472(%rbp), %eax
	movl	%eax, -656(%rbp)        # 4-byte Spill
	jmp	.LBB22_16
.LBB22_15:                              # %cond.false.102
                                        #   in Loop: Header=BB22_3 Depth=1
	movslq	-392(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$3112, %rcx             # imm = 0xC28
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movl	4(%rcx), %edx
	movl	%edx, -656(%rbp)        # 4-byte Spill
.LBB22_16:                              # %cond.end.107
                                        #   in Loop: Header=BB22_3 Depth=1
	movl	-656(%rbp), %eax        # 4-byte Reload
	movl	%eax, -472(%rbp)
	movl	-476(%rbp), %eax
	movslq	-392(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	$3112, %rdx             # imm = 0xC28
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rdx
	cmpl	8(%rdx), %eax
	jle	.LBB22_18
# BB#17:                                # %cond.true.113
                                        #   in Loop: Header=BB22_3 Depth=1
	movl	-476(%rbp), %eax
	movl	%eax, -660(%rbp)        # 4-byte Spill
	jmp	.LBB22_19
.LBB22_18:                              # %cond.false.114
                                        #   in Loop: Header=BB22_3 Depth=1
	movslq	-392(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$3112, %rcx             # imm = 0xC28
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movl	8(%rcx), %edx
	movl	%edx, -660(%rbp)        # 4-byte Spill
.LBB22_19:                              # %cond.end.119
                                        #   in Loop: Header=BB22_3 Depth=1
	movl	-660(%rbp), %eax        # 4-byte Reload
	movl	%eax, -476(%rbp)
	movl	-480(%rbp), %eax
	movslq	-392(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	$3112, %rdx             # imm = 0xC28
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rdx
	cmpl	8(%rdx), %eax
	jge	.LBB22_21
# BB#20:                                # %cond.true.126
                                        #   in Loop: Header=BB22_3 Depth=1
	movl	-480(%rbp), %eax
	movl	%eax, -664(%rbp)        # 4-byte Spill
	jmp	.LBB22_22
.LBB22_21:                              # %cond.false.127
                                        #   in Loop: Header=BB22_3 Depth=1
	movslq	-392(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$3112, %rcx             # imm = 0xC28
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movl	8(%rcx), %edx
	movl	%edx, -664(%rbp)        # 4-byte Spill
.LBB22_22:                              # %cond.end.132
                                        #   in Loop: Header=BB22_3 Depth=1
	movl	-664(%rbp), %eax        # 4-byte Reload
	movl	%eax, -480(%rbp)
# BB#23:                                # %for.inc
                                        #   in Loop: Header=BB22_3 Depth=1
	movl	-392(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -392(%rbp)
	jmp	.LBB22_3
.LBB22_24:                              # %for.end
	movl	-412(%rbp), %eax
	imull	-228(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc
	movq	%rax, -256(%rbp)
	movl	-412(%rbp), %ecx
	imull	-232(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, -264(%rbp)
	movl	-412(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, -272(%rbp)
	movl	-412(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc0_n
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, -280(%rbp)
	movl	-412(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, -288(%rbp)
	movl	-412(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc0_n
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, -296(%rbp)
	movl	-412(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, -304(%rbp)
	movl	-412(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc0_n
	movabsq	$floyd_steinberg_error4, %rsi
	addq	$1022, %rsi             # imm = 0x3FE
	movabsq	$floyd_steinberg_error3, %rdi
	addq	$1022, %rdi             # imm = 0x3FE
	movabsq	$floyd_steinberg_error2, %rdx
	addq	$1022, %rdx             # imm = 0x3FE
	movabsq	$floyd_steinberg_error1, %r8
	addq	$1022, %r8              # imm = 0x3FE
	movq	%rax, -312(%rbp)
	movq	%r8, -192(%rbp)
	movq	%rdx, -200(%rbp)
	movq	%rdi, -208(%rbp)
	movq	%rsi, -216(%rbp)
	movl	$0, -404(%rbp)
	movl	$0, -384(%rbp)
.LBB22_25:                              # %for.cond.155
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_30 Depth 2
	movl	-384(%rbp), %eax
	cmpl	-416(%rbp), %eax
	jge	.LBB22_83
# BB#26:                                # %for.body.158
                                        #   in Loop: Header=BB22_25 Depth=1
	leaq	-88(%rbp), %rdi
	xorl	%esi, %esi
	movl	$1, %r9d
	movl	-384(%rbp), %edx
	movl	-412(%rbp), %ecx
	movq	-256(%rbp), %r8
	callq	pixel_region_get_row
	movq	-256(%rbp), %rdi
	movq	%rdi, -240(%rbp)
	movq	-264(%rbp), %rdi
	movq	%rdi, -248(%rbp)
	movq	-272(%rbp), %rdi
	movq	%rdi, -320(%rbp)
	movq	-288(%rbp), %rdi
	movq	%rdi, -336(%rbp)
	movq	-304(%rbp), %rdi
	movq	%rdi, -352(%rbp)
	movq	-280(%rbp), %rdi
	addq	$4, %rdi
	movq	%rdi, -328(%rbp)
	movq	-296(%rbp), %rdi
	addq	$4, %rdi
	movq	%rdi, -344(%rbp)
	movq	-312(%rbp), %rdi
	addq	$4, %rdi
	movq	%rdi, -360(%rbp)
	cmpl	$0, -404(%rbp)
	je	.LBB22_28
# BB#27:                                # %if.then.162
                                        #   in Loop: Header=BB22_25 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	subl	-232(%rbp), %ecx
	movl	%ecx, -396(%rbp)
	subl	-228(%rbp), %eax
	movl	%eax, -400(%rbp)
	movl	-412(%rbp), %eax
	imull	-228(%rbp), %eax
	subl	-228(%rbp), %eax
	movq	-240(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -240(%rbp)
	movl	-412(%rbp), %eax
	imull	-232(%rbp), %eax
	subl	-232(%rbp), %eax
	movq	-248(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -248(%rbp)
	movl	-412(%rbp), %eax
	addl	$1, %eax
	movq	-320(%rbp), %rdx
	movslq	%eax, %rsi
	shlq	$2, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -320(%rbp)
	movl	-412(%rbp), %eax
	addl	$1, %eax
	movq	-336(%rbp), %rdx
	movslq	%eax, %rsi
	shlq	$2, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -336(%rbp)
	movl	-412(%rbp), %eax
	addl	$1, %eax
	movq	-352(%rbp), %rdx
	movslq	%eax, %rsi
	shlq	$2, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -352(%rbp)
	movl	-412(%rbp), %eax
	movq	-328(%rbp), %rdx
	movslq	%eax, %rsi
	shlq	$2, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -328(%rbp)
	movl	-412(%rbp), %eax
	movq	-344(%rbp), %rdx
	movslq	%eax, %rsi
	shlq	$2, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -344(%rbp)
	movl	-412(%rbp), %eax
	movq	-360(%rbp), %rdx
	movslq	%eax, %rsi
	shlq	$2, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -360(%rbp)
	movq	-352(%rbp), %rdx
	movl	$0, -4(%rdx)
	movq	-336(%rbp), %rdx
	movl	$0, -4(%rdx)
	movq	-320(%rbp), %rdx
	movl	$0, -4(%rdx)
	jmp	.LBB22_29
.LBB22_28:                              # %if.else
                                        #   in Loop: Header=BB22_25 Depth=1
	movl	-232(%rbp), %eax
	movl	%eax, -396(%rbp)
	movl	-228(%rbp), %eax
	movl	%eax, -400(%rbp)
	movq	-352(%rbp), %rcx
	movl	$0, 4(%rcx)
	movq	-336(%rbp), %rcx
	movl	$0, 4(%rcx)
	movq	-320(%rbp), %rcx
	movl	$0, 4(%rcx)
.LBB22_29:                              # %if.end.192
                                        #   in Loop: Header=BB22_25 Depth=1
	movq	-352(%rbp), %rax
	movl	$0, (%rax)
	movq	-336(%rbp), %rax
	movl	$0, (%rax)
	movq	-320(%rbp), %rax
	movl	$0, (%rax)
	movl	$0, -388(%rbp)
.LBB22_30:                              # %for.cond.193
                                        #   Parent Loop BB22_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-388(%rbp), %eax
	cmpl	-412(%rbp), %eax
	jge	.LBB22_78
# BB#31:                                # %for.body.196
                                        #   in Loop: Header=BB22_30 Depth=2
	cmpl	$0, -408(%rbp)
	je	.LBB22_56
# BB#32:                                # %if.then.198
                                        #   in Loop: Header=BB22_30 Depth=2
	movl	$0, -492(%rbp)
	cmpl	$0, -404(%rbp)
	je	.LBB22_44
# BB#33:                                # %if.then.201
                                        #   in Loop: Header=BB22_30 Depth=2
	cmpl	$0, -444(%rbp)
	je	.LBB22_37
# BB#34:                                # %if.then.203
                                        #   in Loop: Header=BB22_30 Depth=2
	movabsq	$DM, %rax
	movl	-412(%rbp), %ecx
	subl	-388(%rbp), %ecx
	addl	-436(%rbp), %ecx
	subl	$1, %ecx
	andl	$31, %ecx
	movl	%ecx, -496(%rbp)
	movl	-384(%rbp), %ecx
	addl	-440(%rbp), %ecx
	andl	$31, %ecx
	movl	%ecx, -500(%rbp)
	movslq	-432(%rbp), %rdx
	movq	-240(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movslq	-500(%rbp), %rdx
	movslq	-496(%rbp), %rsi
	shlq	$5, %rsi
	addq	%rsi, %rax
	movzbl	(%rax,%rdx), %edi
	cmpl	%edi, %ecx
	jge	.LBB22_36
# BB#35:                                # %if.then.221
                                        #   in Loop: Header=BB22_30 Depth=2
	movl	$1, -492(%rbp)
.LBB22_36:                              # %if.end.222
                                        #   in Loop: Header=BB22_30 Depth=2
	jmp	.LBB22_40
.LBB22_37:                              # %if.else.223
                                        #   in Loop: Header=BB22_30 Depth=2
	movslq	-432(%rbp), %rax
	movq	-240(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$127, %edx
	jg	.LBB22_39
# BB#38:                                # %if.then.229
                                        #   in Loop: Header=BB22_30 Depth=2
	movl	$1, -492(%rbp)
.LBB22_39:                              # %if.end.230
                                        #   in Loop: Header=BB22_30 Depth=2
	jmp	.LBB22_40
.LBB22_40:                              # %if.end.231
                                        #   in Loop: Header=BB22_30 Depth=2
	cmpl	$0, -492(%rbp)
	je	.LBB22_42
# BB#41:                                # %if.then.233
                                        #   in Loop: Header=BB22_30 Depth=2
	movq	-248(%rbp), %rax
	movb	$0, 1(%rax)
	movq	-328(%rbp), %rax
	addq	$-4, %rax
	movq	%rax, -328(%rbp)
	movq	-344(%rbp), %rax
	addq	$-4, %rax
	movq	%rax, -344(%rbp)
	movq	-360(%rbp), %rax
	addq	$-4, %rax
	movq	%rax, -360(%rbp)
	movq	-320(%rbp), %rax
	addq	$-4, %rax
	movq	%rax, -320(%rbp)
	movq	-336(%rbp), %rax
	addq	$-4, %rax
	movq	%rax, -336(%rbp)
	movq	-352(%rbp), %rax
	addq	$-4, %rax
	movq	%rax, -352(%rbp)
	movq	-352(%rbp), %rax
	movl	$0, -4(%rax)
	movq	-336(%rbp), %rax
	movl	$0, -4(%rax)
	movq	-320(%rbp), %rax
	movl	$0, -4(%rax)
	jmp	.LBB22_76
.LBB22_42:                              # %if.else.243
                                        #   in Loop: Header=BB22_30 Depth=2
	movq	-248(%rbp), %rax
	movb	$-1, 1(%rax)
# BB#43:                                # %if.end.245
                                        #   in Loop: Header=BB22_30 Depth=2
	jmp	.LBB22_55
.LBB22_44:                              # %if.else.246
                                        #   in Loop: Header=BB22_30 Depth=2
	cmpl	$0, -444(%rbp)
	je	.LBB22_48
# BB#45:                                # %if.then.248
                                        #   in Loop: Header=BB22_30 Depth=2
	movabsq	$DM, %rax
	movl	-388(%rbp), %ecx
	addl	-436(%rbp), %ecx
	andl	$31, %ecx
	movl	%ecx, -504(%rbp)
	movl	-384(%rbp), %ecx
	addl	-440(%rbp), %ecx
	andl	$31, %ecx
	movl	%ecx, -508(%rbp)
	movslq	-432(%rbp), %rdx
	movq	-240(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movslq	-508(%rbp), %rdx
	movslq	-504(%rbp), %rsi
	shlq	$5, %rsi
	addq	%rsi, %rax
	movzbl	(%rax,%rdx), %edi
	cmpl	%edi, %ecx
	jge	.LBB22_47
# BB#46:                                # %if.then.267
                                        #   in Loop: Header=BB22_30 Depth=2
	movl	$1, -492(%rbp)
.LBB22_47:                              # %if.end.268
                                        #   in Loop: Header=BB22_30 Depth=2
	jmp	.LBB22_51
.LBB22_48:                              # %if.else.269
                                        #   in Loop: Header=BB22_30 Depth=2
	movslq	-432(%rbp), %rax
	movq	-240(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$127, %edx
	jg	.LBB22_50
# BB#49:                                # %if.then.275
                                        #   in Loop: Header=BB22_30 Depth=2
	movl	$1, -492(%rbp)
.LBB22_50:                              # %if.end.276
                                        #   in Loop: Header=BB22_30 Depth=2
	jmp	.LBB22_51
.LBB22_51:                              # %if.end.277
                                        #   in Loop: Header=BB22_30 Depth=2
	cmpl	$0, -492(%rbp)
	je	.LBB22_53
# BB#52:                                # %if.then.279
                                        #   in Loop: Header=BB22_30 Depth=2
	movq	-248(%rbp), %rax
	movb	$0, 1(%rax)
	movq	-328(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -328(%rbp)
	movq	-344(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -344(%rbp)
	movq	-360(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -360(%rbp)
	movq	-320(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -320(%rbp)
	movq	-336(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -336(%rbp)
	movq	-352(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -352(%rbp)
	movq	-352(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-336(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-320(%rbp), %rax
	movl	$0, 4(%rax)
	jmp	.LBB22_76
.LBB22_53:                              # %if.else.290
                                        #   in Loop: Header=BB22_30 Depth=2
	movq	-248(%rbp), %rax
	movb	$-1, 1(%rax)
# BB#54:                                # %if.end.292
                                        #   in Loop: Header=BB22_30 Depth=2
	jmp	.LBB22_55
.LBB22_55:                              # %if.end.293
                                        #   in Loop: Header=BB22_30 Depth=2
	jmp	.LBB22_56
.LBB22_56:                              # %if.end.294
                                        #   in Loop: Header=BB22_30 Depth=2
	leaq	-372(%rbp), %rcx
	leaq	-376(%rbp), %r8
	leaq	-380(%rbp), %r9
	movslq	-420(%rbp), %rax
	movq	-240(%rbp), %rdx
	movb	(%rdx,%rax), %sil
	movslq	-424(%rbp), %rax
	movq	-240(%rbp), %rdx
	movb	(%rdx,%rax), %dil
	movslq	-428(%rbp), %rax
	movq	-240(%rbp), %rdx
	movzbl	%sil, %r10d
	movb	%dil, -665(%rbp)        # 1-byte Spill
	movl	%r10d, %edi
	movb	-665(%rbp), %sil        # 1-byte Reload
	movzbl	%sil, %esi
	movzbl	(%rdx,%rax), %edx
	callq	rgb_to_unshifted_lin
	movl	-372(%rbp), %edx
	movq	-328(%rbp), %rax
	movslq	(%rax), %rax
	movq	-184(%rbp), %rcx
	addl	(%rcx,%rax,4), %edx
	movslq	%edx, %rax
	movq	-224(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -372(%rbp)
	movl	-376(%rbp), %edx
	movq	-344(%rbp), %rax
	movslq	(%rax), %rax
	movq	-184(%rbp), %rcx
	addl	(%rcx,%rax,4), %edx
	movslq	%edx, %rax
	movq	-224(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -376(%rbp)
	movl	-380(%rbp), %edx
	movq	-360(%rbp), %rax
	movslq	(%rax), %rax
	movq	-184(%rbp), %rcx
	addl	(%rcx,%rax,4), %edx
	movslq	%edx, %rax
	movq	-224(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -380(%rbp)
	movq	-160(%rbp), %rdi
	movl	-372(%rbp), %edx
	sarl	$0, %edx
	movl	-376(%rbp), %esi
	sarl	$2, %esi
	movl	-380(%rbp), %r10d
	sarl	$2, %r10d
	movl	%esi, -672(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-672(%rbp), %edx        # 4-byte Reload
	movl	%r10d, %ecx
	callq	HIST_LIN
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB22_58
# BB#57:                                # %if.then.324
                                        #   in Loop: Header=BB22_30 Depth=2
	movq	-8(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movl	-372(%rbp), %eax
	sarl	$0, %eax
	movl	-376(%rbp), %ecx
	sarl	$2, %ecx
	movl	-380(%rbp), %edx
	sarl	$2, %edx
	movl	%edx, -676(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movl	-676(%rbp), %r8d        # 4-byte Reload
	callq	fill_inverse_cmap_rgb
.LBB22_58:                              # %if.end.328
                                        #   in Loop: Header=BB22_30 Depth=2
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	subq	$1, %rax
	movl	%eax, %ecx
	movl	%ecx, -392(%rbp)
	movslq	-392(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	(%rdx,%rax,8), %rsi
	addq	$1, %rsi
	movq	%rsi, (%rdx,%rax,8)
	movl	-392(%rbp), %ecx
	movb	%cl, %dil
	movq	-248(%rbp), %rax
	movb	%dil, (%rax)
	movl	-376(%rbp), %ecx
	cmpl	-468(%rbp), %ecx
	jle	.LBB22_60
# BB#59:                                # %if.then.338
                                        #   in Loop: Header=BB22_30 Depth=2
	movl	$4, %eax
	movl	-376(%rbp), %ecx
	imull	$3, -468(%rbp), %edx
	addl	%edx, %ecx
	movl	%eax, -680(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-680(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -376(%rbp)
	jmp	.LBB22_63
.LBB22_60:                              # %if.else.341
                                        #   in Loop: Header=BB22_30 Depth=2
	movl	-376(%rbp), %eax
	cmpl	-472(%rbp), %eax
	jge	.LBB22_62
# BB#61:                                # %if.then.344
                                        #   in Loop: Header=BB22_30 Depth=2
	movl	$4, %eax
	movl	-376(%rbp), %ecx
	imull	$3, -472(%rbp), %edx
	addl	%edx, %ecx
	movl	%eax, -684(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-684(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -376(%rbp)
.LBB22_62:                              # %if.end.348
                                        #   in Loop: Header=BB22_30 Depth=2
	jmp	.LBB22_63
.LBB22_63:                              # %if.end.349
                                        #   in Loop: Header=BB22_30 Depth=2
	movl	-380(%rbp), %eax
	cmpl	-476(%rbp), %eax
	jle	.LBB22_65
# BB#64:                                # %if.then.352
                                        #   in Loop: Header=BB22_30 Depth=2
	movl	$4, %eax
	movl	-380(%rbp), %ecx
	imull	$3, -476(%rbp), %edx
	addl	%edx, %ecx
	movl	%eax, -688(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-688(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -380(%rbp)
	jmp	.LBB22_68
.LBB22_65:                              # %if.else.356
                                        #   in Loop: Header=BB22_30 Depth=2
	movl	-380(%rbp), %eax
	cmpl	-480(%rbp), %eax
	jge	.LBB22_67
# BB#66:                                # %if.then.359
                                        #   in Loop: Header=BB22_30 Depth=2
	movl	$4, %eax
	movl	-380(%rbp), %ecx
	imull	$3, -480(%rbp), %edx
	addl	%edx, %ecx
	movl	%eax, -692(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-692(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -380(%rbp)
.LBB22_67:                              # %if.end.363
                                        #   in Loop: Header=BB22_30 Depth=2
	jmp	.LBB22_68
.LBB22_68:                              # %if.end.364
                                        #   in Loop: Header=BB22_30 Depth=2
	movslq	-392(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$3112, %rcx             # imm = 0xC28
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movq	%rcx, -176(%rbp)
	cmpl	$0, -372(%rbp)
	jle	.LBB22_70
# BB#69:                                # %lor.lhs.false
                                        #   in Loop: Header=BB22_30 Depth=2
	cmpl	$255, -372(%rbp)
	jl	.LBB22_71
.LBB22_70:                              # %if.then.372
                                        #   in Loop: Header=BB22_30 Depth=2
	movl	$0, -380(%rbp)
	movl	$0, -376(%rbp)
	movl	$0, -372(%rbp)
	jmp	.LBB22_72
.LBB22_71:                              # %if.else.373
                                        #   in Loop: Header=BB22_30 Depth=2
	movl	-372(%rbp), %eax
	movq	-176(%rbp), %rcx
	subl	(%rcx), %eax
	movl	%eax, -372(%rbp)
	movl	-376(%rbp), %eax
	movq	-176(%rbp), %rcx
	subl	4(%rcx), %eax
	movl	%eax, -376(%rbp)
	movl	-380(%rbp), %eax
	movq	-176(%rbp), %rcx
	subl	8(%rcx), %eax
	movl	%eax, -380(%rbp)
.LBB22_72:                              # %if.end.380
                                        #   in Loop: Header=BB22_30 Depth=2
	cmpl	$0, -404(%rbp)
	je	.LBB22_74
# BB#73:                                # %if.then.382
                                        #   in Loop: Header=BB22_30 Depth=2
	movslq	-372(%rbp), %rax
	movq	-192(%rbp), %rcx
	movswl	(%rcx,%rax,2), %edx
	movq	-328(%rbp), %rax
	movq	%rax, %rcx
	addq	$-4, %rcx
	movq	%rcx, -328(%rbp)
	addl	-4(%rax), %edx
	movl	%edx, -4(%rax)
	movslq	-376(%rbp), %rax
	movq	-192(%rbp), %rcx
	movswl	(%rcx,%rax,2), %edx
	movq	-344(%rbp), %rax
	movq	%rax, %rcx
	addq	$-4, %rcx
	movq	%rcx, -344(%rbp)
	addl	-4(%rax), %edx
	movl	%edx, -4(%rax)
	movslq	-380(%rbp), %rax
	movq	-192(%rbp), %rcx
	movswl	(%rcx,%rax,2), %edx
	movq	-360(%rbp), %rax
	movq	%rax, %rcx
	addq	$-4, %rcx
	movq	%rcx, -360(%rbp)
	addl	-4(%rax), %edx
	movl	%edx, -4(%rax)
	movslq	-372(%rbp), %rax
	movq	-200(%rbp), %rcx
	movswl	(%rcx,%rax,2), %edx
	movq	-320(%rbp), %rax
	movq	%rax, %rcx
	addq	$-4, %rcx
	movq	%rcx, -320(%rbp)
	addl	(%rax), %edx
	movl	%edx, (%rax)
	movslq	-376(%rbp), %rax
	movq	-200(%rbp), %rcx
	movswl	(%rcx,%rax,2), %edx
	movq	-336(%rbp), %rax
	movq	%rax, %rcx
	addq	$-4, %rcx
	movq	%rcx, -336(%rbp)
	addl	(%rax), %edx
	movl	%edx, (%rax)
	movslq	-380(%rbp), %rax
	movq	-200(%rbp), %rcx
	movswl	(%rcx,%rax,2), %edx
	movq	-352(%rbp), %rax
	movq	%rax, %rcx
	addq	$-4, %rcx
	movq	%rcx, -352(%rbp)
	addl	(%rax), %edx
	movl	%edx, (%rax)
	movslq	-372(%rbp), %rax
	movq	-208(%rbp), %rcx
	movswl	(%rcx,%rax,2), %edx
	movq	-320(%rbp), %rax
	addl	(%rax), %edx
	movl	%edx, (%rax)
	movslq	-376(%rbp), %rax
	movq	-208(%rbp), %rcx
	movswl	(%rcx,%rax,2), %edx
	movq	-336(%rbp), %rax
	addl	(%rax), %edx
	movl	%edx, (%rax)
	movslq	-380(%rbp), %rax
	movq	-208(%rbp), %rcx
	movswl	(%rcx,%rax,2), %edx
	movq	-352(%rbp), %rax
	addl	(%rax), %edx
	movl	%edx, (%rax)
	movslq	-372(%rbp), %rax
	movq	-216(%rbp), %rcx
	movswl	(%rcx,%rax,2), %edx
	movq	-320(%rbp), %rax
	movl	%edx, -4(%rax)
	movslq	-376(%rbp), %rax
	movq	-216(%rbp), %rcx
	movswl	(%rcx,%rax,2), %edx
	movq	-336(%rbp), %rax
	movl	%edx, -4(%rax)
	movslq	-380(%rbp), %rax
	movq	-216(%rbp), %rcx
	movswl	(%rcx,%rax,2), %edx
	movq	-352(%rbp), %rax
	movl	%edx, -4(%rax)
	jmp	.LBB22_75
.LBB22_74:                              # %if.else.437
                                        #   in Loop: Header=BB22_30 Depth=2
	movslq	-372(%rbp), %rax
	movq	-192(%rbp), %rcx
	movswl	(%rcx,%rax,2), %edx
	movq	-328(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -328(%rbp)
	addl	4(%rax), %edx
	movl	%edx, 4(%rax)
	movslq	-376(%rbp), %rax
	movq	-192(%rbp), %rcx
	movswl	(%rcx,%rax,2), %edx
	movq	-344(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -344(%rbp)
	addl	4(%rax), %edx
	movl	%edx, 4(%rax)
	movslq	-380(%rbp), %rax
	movq	-192(%rbp), %rcx
	movswl	(%rcx,%rax,2), %edx
	movq	-360(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -360(%rbp)
	addl	4(%rax), %edx
	movl	%edx, 4(%rax)
	movslq	-372(%rbp), %rax
	movq	-200(%rbp), %rcx
	movswl	(%rcx,%rax,2), %edx
	movq	-320(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -320(%rbp)
	addl	(%rax), %edx
	movl	%edx, (%rax)
	movslq	-376(%rbp), %rax
	movq	-200(%rbp), %rcx
	movswl	(%rcx,%rax,2), %edx
	movq	-336(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -336(%rbp)
	addl	(%rax), %edx
	movl	%edx, (%rax)
	movslq	-380(%rbp), %rax
	movq	-200(%rbp), %rcx
	movswl	(%rcx,%rax,2), %edx
	movq	-352(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -352(%rbp)
	addl	(%rax), %edx
	movl	%edx, (%rax)
	movslq	-372(%rbp), %rax
	movq	-208(%rbp), %rcx
	movswl	(%rcx,%rax,2), %edx
	movq	-320(%rbp), %rax
	addl	(%rax), %edx
	movl	%edx, (%rax)
	movslq	-376(%rbp), %rax
	movq	-208(%rbp), %rcx
	movswl	(%rcx,%rax,2), %edx
	movq	-336(%rbp), %rax
	addl	(%rax), %edx
	movl	%edx, (%rax)
	movslq	-380(%rbp), %rax
	movq	-208(%rbp), %rcx
	movswl	(%rcx,%rax,2), %edx
	movq	-352(%rbp), %rax
	addl	(%rax), %edx
	movl	%edx, (%rax)
	movslq	-372(%rbp), %rax
	movq	-216(%rbp), %rcx
	movswl	(%rcx,%rax,2), %edx
	movq	-320(%rbp), %rax
	movl	%edx, 4(%rax)
	movslq	-376(%rbp), %rax
	movq	-216(%rbp), %rcx
	movswl	(%rcx,%rax,2), %edx
	movq	-336(%rbp), %rax
	movl	%edx, 4(%rax)
	movslq	-380(%rbp), %rax
	movq	-216(%rbp), %rcx
	movswl	(%rcx,%rax,2), %edx
	movq	-352(%rbp), %rax
	movl	%edx, 4(%rax)
.LBB22_75:                              # %if.end.492
                                        #   in Loop: Header=BB22_30 Depth=2
	jmp	.LBB22_76
.LBB22_76:                              # %next_pixel
                                        #   in Loop: Header=BB22_30 Depth=2
	movl	-396(%rbp), %eax
	movq	-248(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -248(%rbp)
	movl	-400(%rbp), %eax
	movq	-240(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -240(%rbp)
# BB#77:                                # %for.inc.497
                                        #   in Loop: Header=BB22_30 Depth=2
	movl	-388(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -388(%rbp)
	jmp	.LBB22_30
.LBB22_78:                              # %for.end.499
                                        #   in Loop: Header=BB22_25 Depth=1
	leaq	-152(%rbp), %rdi
	xorl	%esi, %esi
	movq	-272(%rbp), %rax
	movq	%rax, -368(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -272(%rbp)
	movq	-368(%rbp), %rax
	movq	%rax, -280(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -368(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	-368(%rbp), %rax
	movq	%rax, -296(%rbp)
	movq	-304(%rbp), %rax
	movq	%rax, -368(%rbp)
	movq	-312(%rbp), %rax
	movq	%rax, -304(%rbp)
	movq	-368(%rbp), %rax
	movq	%rax, -312(%rbp)
	cmpl	$0, -404(%rbp)
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -404(%rbp)
	movl	-384(%rbp), %edx
	movl	-412(%rbp), %ecx
	movq	-264(%rbp), %r8
	callq	pixel_region_set_row
	movq	-8(%rbp), %rax
	cmpq	$0, 8248(%rax)
	je	.LBB22_81
# BB#79:                                # %land.lhs.true
                                        #   in Loop: Header=BB22_25 Depth=1
	movl	$16, %eax
	movl	-384(%rbp), %ecx
	movl	%eax, -696(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-696(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB22_81
# BB#80:                                # %if.then.504
                                        #   in Loop: Header=BB22_25 Depth=1
	movq	-8(%rbp), %rax
	movq	8248(%rax), %rdi
	cvtsi2sdl	-484(%rbp), %xmm0
	cvtsi2sdl	-384(%rbp), %xmm1
	cvtsi2sdl	-416(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	cvtsi2sdl	-488(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_set_value
.LBB22_81:                              # %if.end.513
                                        #   in Loop: Header=BB22_25 Depth=1
	jmp	.LBB22_82
.LBB22_82:                              # %for.inc.514
                                        #   in Loop: Header=BB22_25 Depth=1
	movl	-384(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -384(%rbp)
	jmp	.LBB22_25
.LBB22_83:                              # %for.end.516
	movq	-184(%rbp), %rax
	addq	$-1020, %rax            # imm = 0xFFFFFFFFFFFFFC04
	movq	%rax, %rdi
	callq	g_free
	movq	-272(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-288(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-304(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-256(%rbp), %rdi
	callq	g_free
	movq	-264(%rbp), %rdi
	callq	g_free
	addq	$704, %rsp              # imm = 0x2C0
	popq	%rbp
	retq
.Lfunc_end22:
	.size	median_cut_pass2_fs_dither_rgb, .Lfunc_end22-median_cut_pass2_fs_dither_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	median_cut_pass2_fixed_dither_rgb,@function
median_cut_pass2_fixed_dither_rgb:      # @median_cut_pass2_fixed_dither_rgb
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
	subq	$544, %rsp              # imm = 0x220
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	8232(%rdx), %rdx
	movq	%rdx, -160(%rbp)
	movl	$0, -172(%rbp)
	movl	$0, -176(%rbp)
	movl	$0, -252(%rbp)
	movl	$1, -256(%rbp)
	movl	$2, -260(%rbp)
	movl	$3, -264(%rbp)
	movq	-8(%rbp), %rdx
	movl	8240(%rdx), %eax
	movl	%eax, -268(%rbp)
	movq	-8(%rbp), %rdx
	addq	$6184, %rdx             # imm = 0x1828
	movq	%rdx, -288(%rbp)
	movq	$0, -296(%rbp)
	movl	$0, -308(%rbp)
	movq	-8(%rbp), %rdx
	movl	8256(%rdx), %eax
	movl	%eax, -312(%rbp)
	movq	-8(%rbp), %rdx
	movl	8260(%rdx), %eax
	movl	%eax, -316(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -368(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-272(%rbp), %rsi
	leaq	-276(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movq	-16(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB23_2
# BB#1:                                 # %if.then
	movl	$0, -260(%rbp)
	movl	$0, -256(%rbp)
	movl	$0, -252(%rbp)
	movl	$1, -264(%rbp)
.LBB23_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_has_alpha
	movl	%eax, -240(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -392(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movq	-16(%rbp), %rsi
	movq	%rax, -400(%rbp)        # 8-byte Spill
	movq	%rsi, -408(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-16(%rbp), %rsi
	movl	%eax, -412(%rbp)        # 4-byte Spill
	movq	%rsi, -424(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	leaq	-88(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-400(%rbp), %rsi        # 8-byte Reload
	movl	%ecx, %edx
	movl	-412(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, -432(%rbp)        # 8-byte Spill
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-16(%rbp), %rsi
	movl	%eax, -444(%rbp)        # 4-byte Spill
	movq	%rsi, -456(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	leaq	-152(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-432(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -460(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-444(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	movq	-16(%rbp), %rsi
	movq	%rsi, -472(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-16(%rbp), %rsi
	movl	%eax, -476(%rbp)        # 4-byte Spill
	movq	%rsi, -488(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	$2, %edi
	leaq	-88(%rbp), %rsi
	leaq	-152(%rbp), %rdx
	movl	-476(%rbp), %ecx        # 4-byte Reload
	imull	%eax, %ecx
	movslq	%ecx, %r10
	movq	%r10, -304(%rbp)
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -248(%rbp)
.LBB23_3:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_5 Depth 2
                                        #       Child Loop BB23_7 Depth 3
                                        #         Child Loop BB23_24 Depth 4
	cmpq	$0, -248(%rbp)
	je	.LBB23_81
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB23_3 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -208(%rbp)
	movl	-40(%rbp), %ecx
	imull	-44(%rbp), %ecx
	movslq	%ecx, %rax
	addq	-296(%rbp), %rax
	movq	%rax, -296(%rbp)
	movl	$0, -232(%rbp)
.LBB23_5:                               # %for.cond.38
                                        #   Parent Loop BB23_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB23_7 Depth 3
                                        #         Child Loop BB23_24 Depth 4
	movl	-232(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB23_76
# BB#6:                                 # %for.body.42
                                        #   in Loop: Header=BB23_5 Depth=2
	movl	$0, -236(%rbp)
.LBB23_7:                               # %for.cond.43
                                        #   Parent Loop BB23_3 Depth=1
                                        #     Parent Loop BB23_5 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB23_24 Depth 4
	movl	-236(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB23_74
# BB#8:                                 # %for.body.47
                                        #   in Loop: Header=BB23_7 Depth=3
	movabsq	$DM, %rax
	movl	-232(%rbp), %ecx
	addl	-276(%rbp), %ecx
	addl	-48(%rbp), %ecx
	andl	$31, %ecx
	movslq	%ecx, %rdx
	movl	-236(%rbp), %ecx
	addl	-272(%rbp), %ecx
	addl	-52(%rbp), %ecx
	andl	$31, %ecx
	movslq	%ecx, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rax
	movzbl	(%rax,%rdx), %ecx
	movl	%ecx, -320(%rbp)
	cmpl	$0, -240(%rbp)
	je	.LBB23_20
# BB#9:                                 # %if.then.57
                                        #   in Loop: Header=BB23_7 Depth=3
	movl	$0, -324(%rbp)
	cmpl	$0, -268(%rbp)
	je	.LBB23_13
# BB#10:                                # %if.then.59
                                        #   in Loop: Header=BB23_7 Depth=3
	movslq	-264(%rbp), %rax
	movq	-200(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	-320(%rbp), %edx
	jge	.LBB23_12
# BB#11:                                # %if.then.65
                                        #   in Loop: Header=BB23_7 Depth=3
	movl	$1, -324(%rbp)
.LBB23_12:                              # %if.end.66
                                        #   in Loop: Header=BB23_7 Depth=3
	jmp	.LBB23_16
.LBB23_13:                              # %if.else
                                        #   in Loop: Header=BB23_7 Depth=3
	movslq	-264(%rbp), %rax
	movq	-200(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$127, %edx
	jg	.LBB23_15
# BB#14:                                # %if.then.72
                                        #   in Loop: Header=BB23_7 Depth=3
	movl	$1, -324(%rbp)
.LBB23_15:                              # %if.end.73
                                        #   in Loop: Header=BB23_7 Depth=3
	jmp	.LBB23_16
.LBB23_16:                              # %if.end.74
                                        #   in Loop: Header=BB23_7 Depth=3
	cmpl	$0, -324(%rbp)
	je	.LBB23_18
# BB#17:                                # %if.then.76
                                        #   in Loop: Header=BB23_7 Depth=3
	movq	-208(%rbp), %rax
	movb	$0, 1(%rax)
	jmp	.LBB23_72
.LBB23_18:                              # %if.else.78
                                        #   in Loop: Header=BB23_7 Depth=3
	movq	-208(%rbp), %rax
	movb	$-1, 1(%rax)
# BB#19:                                # %if.end.80
                                        #   in Loop: Header=BB23_7 Depth=3
	jmp	.LBB23_20
.LBB23_20:                              # %if.end.81
                                        #   in Loop: Header=BB23_7 Depth=3
	leaq	-212(%rbp), %rcx
	leaq	-216(%rbp), %r8
	leaq	-220(%rbp), %r9
	movslq	-252(%rbp), %rax
	movq	-200(%rbp), %rdx
	movb	(%rdx,%rax), %sil
	movslq	-256(%rbp), %rax
	movq	-200(%rbp), %rdx
	movb	(%rdx,%rax), %dil
	movslq	-260(%rbp), %rax
	movq	-200(%rbp), %rdx
	movzbl	%sil, %r10d
	movb	%dil, -489(%rbp)        # 1-byte Spill
	movl	%r10d, %edi
	movb	-489(%rbp), %sil        # 1-byte Reload
	movzbl	%sil, %esi
	movzbl	(%rdx,%rax), %edx
	callq	rgb_to_lin
	movq	-160(%rbp), %rdi
	movl	-212(%rbp), %esi
	movl	-216(%rbp), %edx
	movl	-220(%rbp), %ecx
	callq	HIST_LIN
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB23_22
# BB#21:                                # %if.then.91
                                        #   in Loop: Header=BB23_7 Depth=3
	movq	-8(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movl	-212(%rbp), %edx
	movl	-216(%rbp), %ecx
	movl	-220(%rbp), %r8d
	callq	fill_inverse_cmap_rgb
.LBB23_22:                              # %if.end.92
                                        #   in Loop: Header=BB23_7 Depth=3
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	subq	$1, %rax
	movl	%eax, %ecx
	movl	%ecx, -172(%rbp)
	movslq	-172(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$40, %rdx
	imulq	$12, %rax, %rax
	addq	%rax, %rdx
	movq	%rdx, -184(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$2, 36(%rax)
	jle	.LBB23_58
# BB#23:                                # %if.then.98
                                        #   in Loop: Header=BB23_7 Depth=3
	movslq	-252(%rbp), %rax
	movq	-200(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movq	-184(%rbp), %rax
	subl	(%rax), %edx
	movl	%edx, -328(%rbp)
	movslq	-256(%rbp), %rax
	movq	-200(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movq	-184(%rbp), %rax
	subl	4(%rax), %edx
	movl	%edx, -332(%rbp)
	movslq	-260(%rbp), %rax
	movq	-200(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movq	-184(%rbp), %rax
	subl	8(%rax), %edx
	movl	%edx, -336(%rbp)
	movslq	-252(%rbp), %rax
	movq	-200(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	addl	-328(%rbp), %edx
	movl	%edx, -340(%rbp)
	movslq	-256(%rbp), %rax
	movq	-200(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	addl	-332(%rbp), %edx
	movl	%edx, -344(%rbp)
	movslq	-260(%rbp), %rax
	movq	-200(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	addl	-336(%rbp), %edx
	movl	%edx, -348(%rbp)
.LBB23_24:                              # %do.body
                                        #   Parent Loop BB23_3 Depth=1
                                        #     Parent Loop BB23_5 Depth=2
                                        #       Parent Loop BB23_7 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$255, -340(%rbp)
	jle	.LBB23_26
# BB#25:                                # %cond.true
                                        #   in Loop: Header=BB23_24 Depth=4
	movl	$255, %eax
	movl	%eax, -496(%rbp)        # 4-byte Spill
	jmp	.LBB23_30
.LBB23_26:                              # %cond.false
                                        #   in Loop: Header=BB23_24 Depth=4
	cmpl	$0, -340(%rbp)
	jge	.LBB23_28
# BB#27:                                # %cond.true.127
                                        #   in Loop: Header=BB23_24 Depth=4
	xorl	%eax, %eax
	movl	%eax, -500(%rbp)        # 4-byte Spill
	jmp	.LBB23_29
.LBB23_28:                              # %cond.false.128
                                        #   in Loop: Header=BB23_24 Depth=4
	movl	-340(%rbp), %eax
	movl	%eax, -500(%rbp)        # 4-byte Spill
.LBB23_29:                              # %cond.end
                                        #   in Loop: Header=BB23_24 Depth=4
	movl	-500(%rbp), %eax        # 4-byte Reload
	movl	%eax, -496(%rbp)        # 4-byte Spill
.LBB23_30:                              # %cond.end.129
                                        #   in Loop: Header=BB23_24 Depth=4
	movl	-496(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	cmpl	$255, -344(%rbp)
	movb	%cl, -501(%rbp)         # 1-byte Spill
	jle	.LBB23_32
# BB#31:                                # %cond.true.134
                                        #   in Loop: Header=BB23_24 Depth=4
	movl	$255, %eax
	movl	%eax, -508(%rbp)        # 4-byte Spill
	jmp	.LBB23_36
.LBB23_32:                              # %cond.false.135
                                        #   in Loop: Header=BB23_24 Depth=4
	cmpl	$0, -344(%rbp)
	jge	.LBB23_34
# BB#33:                                # %cond.true.138
                                        #   in Loop: Header=BB23_24 Depth=4
	xorl	%eax, %eax
	movl	%eax, -512(%rbp)        # 4-byte Spill
	jmp	.LBB23_35
.LBB23_34:                              # %cond.false.139
                                        #   in Loop: Header=BB23_24 Depth=4
	movl	-344(%rbp), %eax
	movl	%eax, -512(%rbp)        # 4-byte Spill
.LBB23_35:                              # %cond.end.140
                                        #   in Loop: Header=BB23_24 Depth=4
	movl	-512(%rbp), %eax        # 4-byte Reload
	movl	%eax, -508(%rbp)        # 4-byte Spill
.LBB23_36:                              # %cond.end.142
                                        #   in Loop: Header=BB23_24 Depth=4
	movl	-508(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	cmpl	$255, -348(%rbp)
	movb	%cl, -513(%rbp)         # 1-byte Spill
	jle	.LBB23_38
# BB#37:                                # %cond.true.147
                                        #   in Loop: Header=BB23_24 Depth=4
	movl	$255, %eax
	movl	%eax, -520(%rbp)        # 4-byte Spill
	jmp	.LBB23_42
.LBB23_38:                              # %cond.false.148
                                        #   in Loop: Header=BB23_24 Depth=4
	cmpl	$0, -348(%rbp)
	jge	.LBB23_40
# BB#39:                                # %cond.true.151
                                        #   in Loop: Header=BB23_24 Depth=4
	xorl	%eax, %eax
	movl	%eax, -524(%rbp)        # 4-byte Spill
	jmp	.LBB23_41
.LBB23_40:                              # %cond.false.152
                                        #   in Loop: Header=BB23_24 Depth=4
	movl	-348(%rbp), %eax
	movl	%eax, -524(%rbp)        # 4-byte Spill
.LBB23_41:                              # %cond.end.153
                                        #   in Loop: Header=BB23_24 Depth=4
	movl	-524(%rbp), %eax        # 4-byte Reload
	movl	%eax, -520(%rbp)        # 4-byte Spill
.LBB23_42:                              # %cond.end.155
                                        #   in Loop: Header=BB23_24 Depth=4
	movl	-520(%rbp), %eax        # 4-byte Reload
	leaq	-212(%rbp), %rcx
	leaq	-216(%rbp), %r8
	leaq	-220(%rbp), %r9
	movb	%al, %dl
	movb	-501(%rbp), %sil        # 1-byte Reload
	movzbl	%sil, %edi
	movb	-513(%rbp), %r10b       # 1-byte Reload
	movzbl	%r10b, %esi
	movzbl	%dl, %edx
	callq	rgb_to_lin
	movq	-160(%rbp), %rdi
	movl	-212(%rbp), %esi
	movl	-216(%rbp), %edx
	movl	-220(%rbp), %ecx
	callq	HIST_LIN
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB23_44
# BB#43:                                # %if.then.161
                                        #   in Loop: Header=BB23_24 Depth=4
	movq	-8(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movl	-212(%rbp), %edx
	movl	-216(%rbp), %ecx
	movl	-220(%rbp), %r8d
	callq	fill_inverse_cmap_rgb
.LBB23_44:                              # %if.end.162
                                        #   in Loop: Header=BB23_24 Depth=4
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	subq	$1, %rax
	movl	%eax, %ecx
	movl	%ecx, -176(%rbp)
	movl	-328(%rbp), %ecx
	addl	-340(%rbp), %ecx
	movl	%ecx, -340(%rbp)
	movl	-332(%rbp), %ecx
	addl	-344(%rbp), %ecx
	movl	%ecx, -344(%rbp)
	movl	-336(%rbp), %ecx
	addl	-348(%rbp), %ecx
	movl	%ecx, -348(%rbp)
# BB#45:                                # %do.cond
                                        #   in Loop: Header=BB23_24 Depth=4
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-172(%rbp), %eax
	cmpl	-176(%rbp), %eax
	movb	%cl, -525(%rbp)         # 1-byte Spill
	jne	.LBB23_56
# BB#46:                                # %land.lhs.true
                                        #   in Loop: Header=BB23_24 Depth=4
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$255, -340(%rbp)
	movb	%cl, -525(%rbp)         # 1-byte Spill
	jg	.LBB23_56
# BB#47:                                # %lor.lhs.false
                                        #   in Loop: Header=BB23_24 Depth=4
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -340(%rbp)
	movb	%cl, -525(%rbp)         # 1-byte Spill
	jl	.LBB23_56
# BB#48:                                # %lor.lhs.false.174
                                        #   in Loop: Header=BB23_24 Depth=4
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$255, -344(%rbp)
	movb	%cl, -525(%rbp)         # 1-byte Spill
	jg	.LBB23_56
# BB#49:                                # %lor.lhs.false.177
                                        #   in Loop: Header=BB23_24 Depth=4
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -344(%rbp)
	movb	%cl, -525(%rbp)         # 1-byte Spill
	jl	.LBB23_56
# BB#50:                                # %lor.lhs.false.180
                                        #   in Loop: Header=BB23_24 Depth=4
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$255, -348(%rbp)
	movb	%cl, -525(%rbp)         # 1-byte Spill
	jg	.LBB23_56
# BB#51:                                # %lor.lhs.false.183
                                        #   in Loop: Header=BB23_24 Depth=4
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -348(%rbp)
	movb	%cl, -525(%rbp)         # 1-byte Spill
	jl	.LBB23_56
# BB#52:                                # %land.rhs
                                        #   in Loop: Header=BB23_24 Depth=4
	movb	$1, %al
	cmpl	$0, -328(%rbp)
	movb	%al, -526(%rbp)         # 1-byte Spill
	jne	.LBB23_55
# BB#53:                                # %lor.lhs.false.187
                                        #   in Loop: Header=BB23_24 Depth=4
	movb	$1, %al
	cmpl	$0, -332(%rbp)
	movb	%al, -526(%rbp)         # 1-byte Spill
	jne	.LBB23_55
# BB#54:                                # %lor.rhs
                                        #   in Loop: Header=BB23_24 Depth=4
	cmpl	$0, -336(%rbp)
	setne	%al
	movb	%al, -526(%rbp)         # 1-byte Spill
.LBB23_55:                              # %lor.end
                                        #   in Loop: Header=BB23_24 Depth=4
	movb	-526(%rbp), %al         # 1-byte Reload
	movb	%al, -525(%rbp)         # 1-byte Spill
.LBB23_56:                              # %land.end
                                        #   in Loop: Header=BB23_24 Depth=4
	movb	-525(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB23_24
# BB#57:                                # %do.end
                                        #   in Loop: Header=BB23_7 Depth=3
	jmp	.LBB23_58
.LBB23_58:                              # %if.end.190
                                        #   in Loop: Header=BB23_7 Depth=3
	movq	-8(%rbp), %rax
	cmpl	$2, 36(%rax)
	jg	.LBB23_60
# BB#59:                                # %if.then.194
                                        #   in Loop: Header=BB23_7 Depth=3
	movl	-172(%rbp), %eax
	addl	$1, %eax
	movq	-8(%rbp), %rcx
	cltd
	idivl	36(%rcx)
	movl	%edx, -176(%rbp)
.LBB23_60:                              # %if.end.197
                                        #   in Loop: Header=BB23_7 Depth=3
	movl	-172(%rbp), %eax
	cmpl	-176(%rbp), %eax
	jle	.LBB23_62
# BB#61:                                # %if.then.200
                                        #   in Loop: Header=BB23_7 Depth=3
	movl	-172(%rbp), %eax
	movl	%eax, -352(%rbp)
	movl	-176(%rbp), %eax
	movl	%eax, -172(%rbp)
	movl	-352(%rbp), %eax
	movl	%eax, -176(%rbp)
	movslq	-172(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	$40, %rdx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -184(%rbp)
.LBB23_62:                              # %if.end.204
                                        #   in Loop: Header=BB23_7 Depth=3
	movslq	-176(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$40, %rcx
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movq	%rcx, -192(%rbp)
# BB#63:                                # %do.body.208
                                        #   in Loop: Header=BB23_7 Depth=3
	movq	-184(%rbp), %rax
	movl	(%rax), %ecx
	movslq	-252(%rbp), %rax
	movq	-200(%rbp), %rdx
	movzbl	(%rdx,%rax), %esi
	subl	%esi, %ecx
	movq	-184(%rbp), %rax
	movl	(%rax), %esi
	movslq	-252(%rbp), %rax
	movq	-200(%rbp), %rdx
	movzbl	(%rdx,%rax), %edi
	subl	%edi, %esi
	imull	%esi, %ecx
	imull	$30, %ecx, %ecx
	movq	-184(%rbp), %rax
	movl	4(%rax), %esi
	movslq	-256(%rbp), %rax
	movq	-200(%rbp), %rdx
	movzbl	(%rdx,%rax), %edi
	subl	%edi, %esi
	movq	-184(%rbp), %rax
	movl	4(%rax), %edi
	movslq	-256(%rbp), %rax
	movq	-200(%rbp), %rdx
	movzbl	(%rdx,%rax), %r8d
	subl	%r8d, %edi
	imull	%edi, %esi
	imull	$59, %esi, %esi
	addl	%esi, %ecx
	movq	-184(%rbp), %rax
	movl	8(%rax), %esi
	movslq	-260(%rbp), %rax
	movq	-200(%rbp), %rdx
	movzbl	(%rdx,%rax), %edi
	subl	%edi, %esi
	movq	-184(%rbp), %rax
	movl	8(%rax), %edi
	movslq	-260(%rbp), %rax
	movq	-200(%rbp), %rdx
	movzbl	(%rdx,%rax), %r8d
	subl	%r8d, %edi
	imull	%edi, %esi
	imull	$11, %esi, %esi
	addl	%esi, %ecx
	cvtsi2sdl	%ecx, %xmm0
	callq	sqrt
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -224(%rbp)
# BB#64:                                # %do.end.251
                                        #   in Loop: Header=BB23_7 Depth=3
	jmp	.LBB23_65
.LBB23_65:                              # %do.body.252
                                        #   in Loop: Header=BB23_7 Depth=3
	movq	-192(%rbp), %rax
	movl	(%rax), %ecx
	movslq	-252(%rbp), %rax
	movq	-200(%rbp), %rdx
	movzbl	(%rdx,%rax), %esi
	subl	%esi, %ecx
	movq	-192(%rbp), %rax
	movl	(%rax), %esi
	movslq	-252(%rbp), %rax
	movq	-200(%rbp), %rdx
	movzbl	(%rdx,%rax), %edi
	subl	%edi, %esi
	imull	%esi, %ecx
	imull	$30, %ecx, %ecx
	movq	-192(%rbp), %rax
	movl	4(%rax), %esi
	movslq	-256(%rbp), %rax
	movq	-200(%rbp), %rdx
	movzbl	(%rdx,%rax), %edi
	subl	%edi, %esi
	movq	-192(%rbp), %rax
	movl	4(%rax), %edi
	movslq	-256(%rbp), %rax
	movq	-200(%rbp), %rdx
	movzbl	(%rdx,%rax), %r8d
	subl	%r8d, %edi
	imull	%edi, %esi
	imull	$59, %esi, %esi
	addl	%esi, %ecx
	movq	-192(%rbp), %rax
	movl	8(%rax), %esi
	movslq	-260(%rbp), %rax
	movq	-200(%rbp), %rdx
	movzbl	(%rdx,%rax), %edi
	subl	%edi, %esi
	movq	-192(%rbp), %rax
	movl	8(%rax), %edi
	movslq	-260(%rbp), %rax
	movq	-200(%rbp), %rdx
	movzbl	(%rdx,%rax), %r8d
	subl	%r8d, %edi
	imull	%edi, %esi
	imull	$11, %esi, %esi
	addl	%esi, %ecx
	cvtsi2sdl	%ecx, %xmm0
	callq	sqrt
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -228(%rbp)
# BB#66:                                # %do.end.295
                                        #   in Loop: Header=BB23_7 Depth=3
	cmpl	$0, -224(%rbp)
	jne	.LBB23_68
# BB#67:                                # %lor.lhs.false.297
                                        #   in Loop: Header=BB23_7 Depth=3
	cmpl	$0, -228(%rbp)
	je	.LBB23_71
.LBB23_68:                              # %if.then.299
                                        #   in Loop: Header=BB23_7 Depth=3
	imull	$255, -228(%rbp), %eax
	movl	-224(%rbp), %ecx
	addl	-228(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%eax, -356(%rbp)
	movl	-320(%rbp), %eax
	cmpl	-356(%rbp), %eax
	jle	.LBB23_70
# BB#69:                                # %if.then.304
                                        #   in Loop: Header=BB23_7 Depth=3
	movl	-176(%rbp), %eax
	movl	%eax, -172(%rbp)
.LBB23_70:                              # %if.end.305
                                        #   in Loop: Header=BB23_7 Depth=3
	jmp	.LBB23_71
.LBB23_71:                              # %if.end.306
                                        #   in Loop: Header=BB23_7 Depth=3
	movl	-172(%rbp), %eax
	movb	%al, %cl
	movq	-208(%rbp), %rdx
	movb	%cl, (%rdx)
	movzbl	%cl, %eax
	movl	%eax, %edx
	movq	-288(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdi
	addq	$1, %rdi
	movq	%rdi, (%rsi,%rdx,8)
.LBB23_72:                              # %next_pixel
                                        #   in Loop: Header=BB23_7 Depth=3
	movl	-36(%rbp), %eax
	movq	-200(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -200(%rbp)
	movl	-100(%rbp), %eax
	movq	-208(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -208(%rbp)
# BB#73:                                # %for.inc
                                        #   in Loop: Header=BB23_7 Depth=3
	movl	-236(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -236(%rbp)
	jmp	.LBB23_7
.LBB23_74:                              # %for.end
                                        #   in Loop: Header=BB23_5 Depth=2
	jmp	.LBB23_75
.LBB23_75:                              # %for.inc.315
                                        #   in Loop: Header=BB23_5 Depth=2
	movl	-232(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -232(%rbp)
	jmp	.LBB23_5
.LBB23_76:                              # %for.end.317
                                        #   in Loop: Header=BB23_3 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 8248(%rax)
	je	.LBB23_79
# BB#77:                                # %land.lhs.true.319
                                        #   in Loop: Header=BB23_3 Depth=1
	movl	$16, %eax
	movl	-308(%rbp), %ecx
	movl	%eax, -532(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-532(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB23_79
# BB#78:                                # %if.then.323
                                        #   in Loop: Header=BB23_3 Depth=1
	movq	-8(%rbp), %rax
	movq	8248(%rax), %rdi
	cvtsi2sdl	-312(%rbp), %xmm0
	cvtsi2sdq	-296(%rbp), %xmm1
	cvtsi2sdq	-304(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	cvtsi2sdl	-316(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_set_value
.LBB23_79:                              # %if.end.332
                                        #   in Loop: Header=BB23_3 Depth=1
	jmp	.LBB23_80
.LBB23_80:                              # %for.inc.333
                                        #   in Loop: Header=BB23_3 Depth=1
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -248(%rbp)
	movl	-308(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -308(%rbp)
	jmp	.LBB23_3
.LBB23_81:                              # %for.end.336
	addq	$544, %rsp              # imm = 0x220
	popq	%rbp
	retq
.Lfunc_end23:
	.size	median_cut_pass2_fixed_dither_rgb, .Lfunc_end23-median_cut_pass2_fixed_dither_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	median_cut_pass2_gray_init,@function
median_cut_pass2_gray_init:             # @median_cut_pass2_gray_init
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
	movq	8232(%rdi), %rdi
	callq	zero_histogram_gray
	xorl	%esi, %esi
	movl	$2048, %eax             # imm = 0x800
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	addq	$6184, %rdi             # imm = 0x1828
	callq	memset
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	median_cut_pass2_gray_init, .Lfunc_end24-median_cut_pass2_gray_init
	.cfi_endproc

	.align	16, 0x90
	.type	median_cut_pass2_no_dither_gray,@function
median_cut_pass2_no_dither_gray:        # @median_cut_pass2_no_dither_gray
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
	subq	$352, %rsp              # imm = 0x160
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	8232(%rdx), %rdx
	movq	%rdx, -160(%rbp)
	movq	-8(%rbp), %rdx
	addq	$6184, %rdx             # imm = 0x1828
	movq	%rdx, -208(%rbp)
	movq	-8(%rbp), %rdx
	movl	8240(%rdx), %eax
	movl	%eax, -212(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -256(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-216(%rbp), %rsi
	leaq	-220(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movq	-16(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_has_alpha
	movl	%eax, -200(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -272(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movq	-16(%rbp), %rdx
	movq	%rax, -280(%rbp)        # 8-byte Spill
	movq	%rdx, -288(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-16(%rbp), %rdx
	movl	%eax, -292(%rbp)        # 4-byte Spill
	movq	%rdx, -304(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	leaq	-88(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-280(%rbp), %rsi        # 8-byte Reload
	movl	%ecx, %edx
	movl	-292(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, -312(%rbp)        # 8-byte Spill
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-16(%rbp), %rsi
	movl	%eax, -324(%rbp)        # 4-byte Spill
	movq	%rsi, -336(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	leaq	-152(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-312(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -340(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-324(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	movl	$2, %edi
	leaq	-88(%rbp), %rsi
	leaq	-152(%rbp), %rdx
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -232(%rbp)
.LBB25_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_3 Depth 2
                                        #       Child Loop BB25_5 Depth 3
	cmpq	$0, -232(%rbp)
	je	.LBB25_27
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -184(%rbp)
	movl	$0, -188(%rbp)
.LBB25_3:                               # %for.cond.24
                                        #   Parent Loop BB25_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB25_5 Depth 3
	movl	-188(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB25_25
# BB#4:                                 # %for.body.26
                                        #   in Loop: Header=BB25_3 Depth=2
	movl	$0, -192(%rbp)
.LBB25_5:                               # %for.cond.27
                                        #   Parent Loop BB25_1 Depth=1
                                        #     Parent Loop BB25_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-192(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB25_23
# BB#6:                                 # %for.body.29
                                        #   in Loop: Header=BB25_5 Depth=3
	movq	-176(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -196(%rbp)
	movslq	-196(%rbp), %rax
	shlq	$3, %rax
	addq	-160(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB25_8
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB25_5 Depth=3
	movq	-8(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movl	-196(%rbp), %edx
	callq	fill_inverse_cmap_gray
.LBB25_8:                               # %if.end
                                        #   in Loop: Header=BB25_5 Depth=3
	cmpl	$0, -200(%rbp)
	je	.LBB25_20
# BB#9:                                 # %if.then.33
                                        #   in Loop: Header=BB25_5 Depth=3
	movl	$0, -236(%rbp)
	cmpl	$0, -212(%rbp)
	je	.LBB25_13
# BB#10:                                # %if.then.35
                                        #   in Loop: Header=BB25_5 Depth=3
	movabsq	$DM, %rax
	movl	-192(%rbp), %ecx
	addl	-216(%rbp), %ecx
	addl	-52(%rbp), %ecx
	andl	$31, %ecx
	movl	%ecx, -240(%rbp)
	movl	-188(%rbp), %ecx
	addl	-220(%rbp), %ecx
	addl	-48(%rbp), %ecx
	andl	$31, %ecx
	movl	%ecx, -244(%rbp)
	movq	-176(%rbp), %rdx
	movzbl	1(%rdx), %ecx
	movslq	-244(%rbp), %rdx
	movslq	-240(%rbp), %rsi
	shlq	$5, %rsi
	addq	%rsi, %rax
	movzbl	(%rax,%rdx), %edi
	cmpl	%edi, %ecx
	jge	.LBB25_12
# BB#11:                                # %if.then.49
                                        #   in Loop: Header=BB25_5 Depth=3
	movl	$1, -236(%rbp)
.LBB25_12:                              # %if.end.50
                                        #   in Loop: Header=BB25_5 Depth=3
	jmp	.LBB25_16
.LBB25_13:                              # %if.else
                                        #   in Loop: Header=BB25_5 Depth=3
	movq	-176(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$127, %ecx
	jg	.LBB25_15
# BB#14:                                # %if.then.55
                                        #   in Loop: Header=BB25_5 Depth=3
	movl	$1, -236(%rbp)
.LBB25_15:                              # %if.end.56
                                        #   in Loop: Header=BB25_5 Depth=3
	jmp	.LBB25_16
.LBB25_16:                              # %if.end.57
                                        #   in Loop: Header=BB25_5 Depth=3
	cmpl	$0, -236(%rbp)
	je	.LBB25_18
# BB#17:                                # %if.then.59
                                        #   in Loop: Header=BB25_5 Depth=3
	movq	-184(%rbp), %rax
	movb	$0, 1(%rax)
	jmp	.LBB25_19
.LBB25_18:                              # %if.else.61
                                        #   in Loop: Header=BB25_5 Depth=3
	movq	-184(%rbp), %rax
	movb	$-1, 1(%rax)
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	subq	$1, %rax
	movb	%al, %cl
	movq	-184(%rbp), %rax
	movb	%cl, (%rax)
	movzbl	%cl, %edx
	movl	%edx, %eax
	movq	-208(%rbp), %rsi
	movq	(%rsi,%rax,8), %rdi
	addq	$1, %rdi
	movq	%rdi, (%rsi,%rax,8)
.LBB25_19:                              # %if.end.67
                                        #   in Loop: Header=BB25_5 Depth=3
	jmp	.LBB25_21
.LBB25_20:                              # %if.else.68
                                        #   in Loop: Header=BB25_5 Depth=3
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	subq	$1, %rax
	movb	%al, %cl
	movq	-184(%rbp), %rax
	movb	%cl, (%rax)
	movzbl	%cl, %edx
	movl	%edx, %eax
	movq	-208(%rbp), %rsi
	movq	(%rsi,%rax,8), %rdi
	addq	$1, %rdi
	movq	%rdi, (%rsi,%rax,8)
.LBB25_21:                              # %if.end.75
                                        #   in Loop: Header=BB25_5 Depth=3
	movl	-36(%rbp), %eax
	movq	-176(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -176(%rbp)
	movl	-100(%rbp), %eax
	movq	-184(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -184(%rbp)
# BB#22:                                # %for.inc
                                        #   in Loop: Header=BB25_5 Depth=3
	movl	-192(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -192(%rbp)
	jmp	.LBB25_5
.LBB25_23:                              # %for.end
                                        #   in Loop: Header=BB25_3 Depth=2
	jmp	.LBB25_24
.LBB25_24:                              # %for.inc.80
                                        #   in Loop: Header=BB25_3 Depth=2
	movl	-188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -188(%rbp)
	jmp	.LBB25_3
.LBB25_25:                              # %for.end.82
                                        #   in Loop: Header=BB25_1 Depth=1
	jmp	.LBB25_26
.LBB25_26:                              # %for.inc.83
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -232(%rbp)
	jmp	.LBB25_1
.LBB25_27:                              # %for.end.85
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end25:
	.size	median_cut_pass2_no_dither_gray, .Lfunc_end25-median_cut_pass2_no_dither_gray
	.cfi_endproc

	.align	16, 0x90
	.type	median_cut_pass2_fs_dither_gray,@function
median_cut_pass2_fs_dither_gray:        # @median_cut_pass2_fs_dither_gray
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
	subq	$528, %rsp              # imm = 0x210
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	8232(%rdx), %rdx
	movq	%rdx, -160(%rbp)
	movq	-8(%rbp), %rdx
	movl	8240(%rdx), %eax
	movl	%eax, -352(%rbp)
	movq	-8(%rbp), %rdx
	addq	$6184, %rdx             # imm = 0x1828
	movq	%rdx, -368(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -400(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-344(%rbp), %rsi
	leaq	-348(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movq	-16(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_has_alpha
	movl	%eax, -340(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -416(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movq	-16(%rbp), %rdx
	movq	%rax, -424(%rbp)        # 8-byte Spill
	movq	%rdx, -432(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-16(%rbp), %rdx
	movl	%eax, -436(%rbp)        # 4-byte Spill
	movq	%rdx, -448(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	leaq	-88(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-424(%rbp), %rsi        # 8-byte Reload
	movl	%ecx, %edx
	movl	-436(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, -456(%rbp)        # 8-byte Spill
	movq	%rdi, -464(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-16(%rbp), %rsi
	movl	%eax, -468(%rbp)        # 4-byte Spill
	movq	%rsi, -480(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	leaq	-152(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-456(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -484(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-468(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	movq	-16(%rbp), %rsi
	movq	%rsi, -496(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_bytes
	movl	%eax, -228(%rbp)
	movq	-24(%rbp), %rdi
	callq	tile_manager_bpp
	movl	%eax, -232(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -504(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	%eax, -356(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -512(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	%eax, -360(%rbp)
	movq	-8(%rbp), %rsi
	movl	8244(%rsi), %edi
	callq	init_error_limit
	movabsq	$range_array, %rsi
	addq	$256, %rsi              # imm = 0x100
	movq	%rax, -184(%rbp)
	movq	%rsi, -224(%rbp)
	movl	-356(%rbp), %ecx
	imull	-228(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc
	movq	%rax, -256(%rbp)
	movl	-356(%rbp), %ecx
	imull	-232(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, -264(%rbp)
	movl	-356(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, -272(%rbp)
	movl	-356(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc0_n
	movabsq	$floyd_steinberg_error4, %rsi
	addq	$1022, %rsi             # imm = 0x3FE
	movabsq	$floyd_steinberg_error3, %rdi
	addq	$1022, %rdi             # imm = 0x3FE
	movabsq	$floyd_steinberg_error2, %r10
	addq	$1022, %r10             # imm = 0x3FE
	movabsq	$floyd_steinberg_error1, %r11
	addq	$1022, %r11             # imm = 0x3FE
	movq	%rax, -280(%rbp)
	movq	%r11, -192(%rbp)
	movq	%r10, -200(%rbp)
	movq	%rdi, -208(%rbp)
	movq	%rsi, -216(%rbp)
	movl	$0, -336(%rbp)
	movl	$0, -316(%rbp)
.LBB26_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_6 Depth 2
	movl	-316(%rbp), %eax
	cmpl	-360(%rbp), %eax
	jge	.LBB26_42
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB26_1 Depth=1
	leaq	-88(%rbp), %rdi
	xorl	%esi, %esi
	movl	$1, %r9d
	movl	-316(%rbp), %edx
	movl	-356(%rbp), %ecx
	movq	-256(%rbp), %r8
	callq	pixel_region_get_row
	movq	-256(%rbp), %rdi
	movq	%rdi, -240(%rbp)
	movq	-264(%rbp), %rdi
	movq	%rdi, -248(%rbp)
	movq	-272(%rbp), %rdi
	movq	%rdi, -288(%rbp)
	movq	-280(%rbp), %rdi
	addq	$4, %rdi
	movq	%rdi, -296(%rbp)
	cmpl	$0, -336(%rbp)
	je	.LBB26_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB26_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	subl	-232(%rbp), %ecx
	movl	%ecx, -328(%rbp)
	subl	-228(%rbp), %eax
	movl	%eax, -332(%rbp)
	movl	-356(%rbp), %eax
	imull	-228(%rbp), %eax
	subl	-228(%rbp), %eax
	movq	-240(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -240(%rbp)
	movl	-356(%rbp), %eax
	imull	-232(%rbp), %eax
	subl	-232(%rbp), %eax
	movq	-248(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -248(%rbp)
	movl	-356(%rbp), %eax
	addl	$1, %eax
	movq	-288(%rbp), %rdx
	movslq	%eax, %rsi
	shlq	$2, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -288(%rbp)
	movl	-356(%rbp), %eax
	movq	-296(%rbp), %rdx
	movslq	%eax, %rsi
	shlq	$2, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -296(%rbp)
	movq	-288(%rbp), %rdx
	movl	$0, -4(%rdx)
	jmp	.LBB26_5
.LBB26_4:                               # %if.else
                                        #   in Loop: Header=BB26_1 Depth=1
	movl	-232(%rbp), %eax
	movl	%eax, -328(%rbp)
	movl	-228(%rbp), %eax
	movl	%eax, -332(%rbp)
	movq	-288(%rbp), %rcx
	movl	$0, 4(%rcx)
.LBB26_5:                               # %if.end
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-288(%rbp), %rax
	movl	$0, (%rax)
	movl	$0, -320(%rbp)
.LBB26_6:                               # %for.cond.73
                                        #   Parent Loop BB26_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-320(%rbp), %eax
	cmpl	-356(%rbp), %eax
	jge	.LBB26_40
# BB#7:                                 # %for.body.76
                                        #   in Loop: Header=BB26_6 Depth=2
	movq	-240(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-296(%rbp), %rax
	movslq	(%rax), %rax
	movq	-184(%rbp), %rdx
	addl	(%rdx,%rax,4), %ecx
	movslq	%ecx, %rax
	movq	-224(%rbp), %rdx
	movzbl	(%rdx,%rax), %ecx
	movl	%ecx, -308(%rbp)
	movslq	-308(%rbp), %rax
	shlq	$3, %rax
	addq	-160(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB26_9
# BB#8:                                 # %if.then.87
                                        #   in Loop: Header=BB26_6 Depth=2
	movq	-8(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movl	-308(%rbp), %edx
	callq	fill_inverse_cmap_gray
.LBB26_9:                               # %if.end.88
                                        #   in Loop: Header=BB26_6 Depth=2
	cmpl	$0, -340(%rbp)
	je	.LBB26_34
# BB#10:                                # %if.then.90
                                        #   in Loop: Header=BB26_6 Depth=2
	movl	$0, -372(%rbp)
	cmpl	$0, -336(%rbp)
	je	.LBB26_22
# BB#11:                                # %if.then.93
                                        #   in Loop: Header=BB26_6 Depth=2
	cmpl	$0, -352(%rbp)
	je	.LBB26_15
# BB#12:                                # %if.then.95
                                        #   in Loop: Header=BB26_6 Depth=2
	movabsq	$DM, %rax
	movl	-356(%rbp), %ecx
	subl	-320(%rbp), %ecx
	addl	-344(%rbp), %ecx
	subl	$1, %ecx
	andl	$31, %ecx
	movl	%ecx, -376(%rbp)
	movl	-316(%rbp), %ecx
	addl	-348(%rbp), %ecx
	andl	$31, %ecx
	movl	%ecx, -380(%rbp)
	movq	-240(%rbp), %rdx
	movzbl	1(%rdx), %ecx
	movslq	-380(%rbp), %rdx
	movslq	-376(%rbp), %rsi
	shlq	$5, %rsi
	addq	%rsi, %rax
	movzbl	(%rax,%rdx), %edi
	cmpl	%edi, %ecx
	jge	.LBB26_14
# BB#13:                                # %if.then.112
                                        #   in Loop: Header=BB26_6 Depth=2
	movl	$1, -372(%rbp)
.LBB26_14:                              # %if.end.113
                                        #   in Loop: Header=BB26_6 Depth=2
	jmp	.LBB26_18
.LBB26_15:                              # %if.else.114
                                        #   in Loop: Header=BB26_6 Depth=2
	movq	-240(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$127, %ecx
	jg	.LBB26_17
# BB#16:                                # %if.then.119
                                        #   in Loop: Header=BB26_6 Depth=2
	movl	$1, -372(%rbp)
.LBB26_17:                              # %if.end.120
                                        #   in Loop: Header=BB26_6 Depth=2
	jmp	.LBB26_18
.LBB26_18:                              # %if.end.121
                                        #   in Loop: Header=BB26_6 Depth=2
	cmpl	$0, -372(%rbp)
	je	.LBB26_20
# BB#19:                                # %if.then.123
                                        #   in Loop: Header=BB26_6 Depth=2
	movq	-248(%rbp), %rax
	movb	$0, 1(%rax)
	movq	-296(%rbp), %rax
	addq	$-4, %rax
	movq	%rax, -296(%rbp)
	movq	-288(%rbp), %rax
	addq	$-4, %rax
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	movl	$0, -4(%rax)
	jmp	.LBB26_38
.LBB26_20:                              # %if.else.127
                                        #   in Loop: Header=BB26_6 Depth=2
	movq	-248(%rbp), %rax
	movb	$-1, 1(%rax)
# BB#21:                                # %if.end.129
                                        #   in Loop: Header=BB26_6 Depth=2
	jmp	.LBB26_33
.LBB26_22:                              # %if.else.130
                                        #   in Loop: Header=BB26_6 Depth=2
	cmpl	$0, -352(%rbp)
	je	.LBB26_26
# BB#23:                                # %if.then.132
                                        #   in Loop: Header=BB26_6 Depth=2
	movabsq	$DM, %rax
	movl	-320(%rbp), %ecx
	addl	-344(%rbp), %ecx
	andl	$31, %ecx
	movl	%ecx, -384(%rbp)
	movl	-316(%rbp), %ecx
	addl	-348(%rbp), %ecx
	andl	$31, %ecx
	movl	%ecx, -388(%rbp)
	movq	-240(%rbp), %rdx
	movzbl	1(%rdx), %ecx
	movslq	-388(%rbp), %rdx
	movslq	-384(%rbp), %rsi
	shlq	$5, %rsi
	addq	%rsi, %rax
	movzbl	(%rax,%rdx), %edi
	cmpl	%edi, %ecx
	jge	.LBB26_25
# BB#24:                                # %if.then.150
                                        #   in Loop: Header=BB26_6 Depth=2
	movl	$1, -372(%rbp)
.LBB26_25:                              # %if.end.151
                                        #   in Loop: Header=BB26_6 Depth=2
	jmp	.LBB26_29
.LBB26_26:                              # %if.else.152
                                        #   in Loop: Header=BB26_6 Depth=2
	movq	-240(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$127, %ecx
	jg	.LBB26_28
# BB#27:                                # %if.then.157
                                        #   in Loop: Header=BB26_6 Depth=2
	movl	$1, -372(%rbp)
.LBB26_28:                              # %if.end.158
                                        #   in Loop: Header=BB26_6 Depth=2
	jmp	.LBB26_29
.LBB26_29:                              # %if.end.159
                                        #   in Loop: Header=BB26_6 Depth=2
	cmpl	$0, -372(%rbp)
	je	.LBB26_31
# BB#30:                                # %if.then.161
                                        #   in Loop: Header=BB26_6 Depth=2
	movq	-248(%rbp), %rax
	movb	$0, 1(%rax)
	movq	-296(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -296(%rbp)
	movq	-288(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	movl	$0, 4(%rax)
	jmp	.LBB26_38
.LBB26_31:                              # %if.else.166
                                        #   in Loop: Header=BB26_6 Depth=2
	movq	-248(%rbp), %rax
	movb	$-1, 1(%rax)
# BB#32:                                # %if.end.168
                                        #   in Loop: Header=BB26_6 Depth=2
	jmp	.LBB26_33
.LBB26_33:                              # %if.end.169
                                        #   in Loop: Header=BB26_6 Depth=2
	jmp	.LBB26_34
.LBB26_34:                              # %if.end.170
                                        #   in Loop: Header=BB26_6 Depth=2
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	subq	$1, %rax
	movl	%eax, %ecx
	movl	%ecx, -324(%rbp)
	movl	-324(%rbp), %ecx
	movb	%cl, %dl
	movq	-248(%rbp), %rax
	movb	%dl, (%rax)
	movzbl	%dl, %ecx
	movl	%ecx, %eax
	movq	-368(%rbp), %rsi
	movq	(%rsi,%rax,8), %rdi
	addq	$1, %rdi
	movq	%rdi, (%rsi,%rax,8)
	movslq	-324(%rbp), %rax
	movq	-8(%rbp), %rsi
	addq	$40, %rsi
	imulq	$12, %rax, %rax
	addq	%rax, %rsi
	movq	%rsi, -176(%rbp)
	movl	-308(%rbp), %ecx
	movq	-176(%rbp), %rax
	subl	(%rax), %ecx
	movl	%ecx, -312(%rbp)
	cmpl	$0, -336(%rbp)
	je	.LBB26_36
# BB#35:                                # %if.then.181
                                        #   in Loop: Header=BB26_6 Depth=2
	movslq	-312(%rbp), %rax
	movq	-192(%rbp), %rcx
	movswl	(%rcx,%rax,2), %edx
	movq	-296(%rbp), %rax
	movq	%rax, %rcx
	addq	$-4, %rcx
	movq	%rcx, -296(%rbp)
	addl	-4(%rax), %edx
	movl	%edx, -4(%rax)
	movslq	-312(%rbp), %rax
	movq	-200(%rbp), %rcx
	movswl	(%rcx,%rax,2), %edx
	movq	-288(%rbp), %rax
	movq	%rax, %rcx
	addq	$-4, %rcx
	movq	%rcx, -288(%rbp)
	addl	(%rax), %edx
	movl	%edx, (%rax)
	movslq	-312(%rbp), %rax
	movq	-208(%rbp), %rcx
	movswl	(%rcx,%rax,2), %edx
	movq	-288(%rbp), %rax
	addl	(%rax), %edx
	movl	%edx, (%rax)
	movslq	-312(%rbp), %rax
	movq	-216(%rbp), %rcx
	movswl	(%rcx,%rax,2), %edx
	movq	-288(%rbp), %rax
	movl	%edx, -4(%rax)
	jmp	.LBB26_37
.LBB26_36:                              # %if.else.200
                                        #   in Loop: Header=BB26_6 Depth=2
	movslq	-312(%rbp), %rax
	movq	-192(%rbp), %rcx
	movswl	(%rcx,%rax,2), %edx
	movq	-296(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -296(%rbp)
	addl	4(%rax), %edx
	movl	%edx, 4(%rax)
	movslq	-312(%rbp), %rax
	movq	-200(%rbp), %rcx
	movswl	(%rcx,%rax,2), %edx
	movq	-288(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -288(%rbp)
	addl	(%rax), %edx
	movl	%edx, (%rax)
	movslq	-312(%rbp), %rax
	movq	-208(%rbp), %rcx
	movswl	(%rcx,%rax,2), %edx
	movq	-288(%rbp), %rax
	addl	(%rax), %edx
	movl	%edx, (%rax)
	movslq	-312(%rbp), %rax
	movq	-216(%rbp), %rcx
	movswl	(%rcx,%rax,2), %edx
	movq	-288(%rbp), %rax
	movl	%edx, 4(%rax)
.LBB26_37:                              # %if.end.219
                                        #   in Loop: Header=BB26_6 Depth=2
	jmp	.LBB26_38
.LBB26_38:                              # %next_pixel
                                        #   in Loop: Header=BB26_6 Depth=2
	movl	-328(%rbp), %eax
	movq	-248(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -248(%rbp)
	movl	-332(%rbp), %eax
	movq	-240(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -240(%rbp)
# BB#39:                                # %for.inc
                                        #   in Loop: Header=BB26_6 Depth=2
	movl	-320(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -320(%rbp)
	jmp	.LBB26_6
.LBB26_40:                              # %for.end
                                        #   in Loop: Header=BB26_1 Depth=1
	leaq	-152(%rbp), %rdi
	xorl	%esi, %esi
	movq	-272(%rbp), %rax
	movq	%rax, -304(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -272(%rbp)
	movq	-304(%rbp), %rax
	movq	%rax, -280(%rbp)
	cmpl	$0, -336(%rbp)
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -336(%rbp)
	movl	-316(%rbp), %edx
	movl	-356(%rbp), %ecx
	movq	-264(%rbp), %r8
	callq	pixel_region_set_row
# BB#41:                                # %for.inc.226
                                        #   in Loop: Header=BB26_1 Depth=1
	movl	-316(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -316(%rbp)
	jmp	.LBB26_1
.LBB26_42:                              # %for.end.228
	movq	-184(%rbp), %rax
	addq	$-1020, %rax            # imm = 0xFFFFFFFFFFFFFC04
	movq	%rax, %rdi
	callq	g_free
	movq	-272(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-256(%rbp), %rdi
	callq	g_free
	movq	-264(%rbp), %rdi
	callq	g_free
	addq	$528, %rsp              # imm = 0x210
	popq	%rbp
	retq
.Lfunc_end26:
	.size	median_cut_pass2_fs_dither_gray, .Lfunc_end26-median_cut_pass2_fs_dither_gray
	.cfi_endproc

	.align	16, 0x90
	.type	median_cut_pass2_fixed_dither_gray,@function
median_cut_pass2_fixed_dither_gray:     # @median_cut_pass2_fixed_dither_gray
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
	subq	$416, %rsp              # imm = 0x1A0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	8232(%rdx), %rdx
	movq	%rdx, -160(%rbp)
	movl	$0, -172(%rbp)
	movl	$0, -176(%rbp)
	movq	-8(%rbp), %rdx
	addq	$6184, %rdx             # imm = 0x1828
	movq	%rdx, -240(%rbp)
	movq	-8(%rbp), %rdx
	movl	8240(%rdx), %eax
	movl	%eax, -248(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -304(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-252(%rbp), %rsi
	leaq	-256(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movq	-16(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_has_alpha
	movl	%eax, -244(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -320(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movq	-16(%rbp), %rdx
	movq	%rax, -328(%rbp)        # 8-byte Spill
	movq	%rdx, -336(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-16(%rbp), %rdx
	movl	%eax, -340(%rbp)        # 4-byte Spill
	movq	%rdx, -352(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	leaq	-88(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-328(%rbp), %rsi        # 8-byte Reload
	movl	%ecx, %edx
	movl	-340(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, -360(%rbp)        # 8-byte Spill
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-16(%rbp), %rsi
	movl	%eax, -372(%rbp)        # 4-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	leaq	-152(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-360(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -388(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-372(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	movl	$2, %edi
	leaq	-88(%rbp), %rsi
	leaq	-152(%rbp), %rdx
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -264(%rbp)
.LBB27_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_3 Depth 2
                                        #       Child Loop BB27_5 Depth 3
                                        #         Child Loop BB27_10 Depth 4
	cmpq	$0, -264(%rbp)
	je	.LBB27_58
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB27_1 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -216(%rbp)
	movl	$0, -220(%rbp)
.LBB27_3:                               # %for.cond.24
                                        #   Parent Loop BB27_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB27_5 Depth 3
                                        #         Child Loop BB27_10 Depth 4
	movl	-220(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB27_56
# BB#4:                                 # %for.body.26
                                        #   in Loop: Header=BB27_3 Depth=2
	movl	$0, -224(%rbp)
.LBB27_5:                               # %for.cond.27
                                        #   Parent Loop BB27_1 Depth=1
                                        #     Parent Loop BB27_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB27_10 Depth 4
	movl	-224(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB27_54
# BB#6:                                 # %for.body.29
                                        #   in Loop: Header=BB27_5 Depth=3
	movabsq	$DM, %rax
	movl	-220(%rbp), %ecx
	addl	-256(%rbp), %ecx
	addl	-48(%rbp), %ecx
	andl	$31, %ecx
	movslq	%ecx, %rdx
	movl	-224(%rbp), %ecx
	addl	-252(%rbp), %ecx
	addl	-52(%rbp), %ecx
	andl	$31, %ecx
	movslq	%ecx, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rax
	movzbl	(%rax,%rdx), %ecx
	movl	%ecx, -268(%rbp)
	movq	-208(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -228(%rbp)
	movslq	-228(%rbp), %rax
	shlq	$3, %rax
	addq	-160(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB27_8
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB27_5 Depth=3
	movq	-8(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movl	-228(%rbp), %edx
	callq	fill_inverse_cmap_gray
.LBB27_8:                               # %if.end
                                        #   in Loop: Header=BB27_5 Depth=3
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	subq	$1, %rax
	movl	%eax, %ecx
	movl	%ecx, -172(%rbp)
	movslq	-172(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$40, %rdx
	imulq	$12, %rax, %rax
	addq	%rax, %rdx
	movq	%rdx, -192(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$2, 36(%rax)
	jle	.LBB27_25
# BB#9:                                 # %if.then.47
                                        #   in Loop: Header=BB27_5 Depth=3
	movq	-208(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-192(%rbp), %rax
	subl	(%rax), %ecx
	movl	%ecx, -272(%rbp)
	movq	-208(%rbp), %rax
	movzbl	(%rax), %ecx
	addl	-272(%rbp), %ecx
	movl	%ecx, -276(%rbp)
.LBB27_10:                              # %do.body
                                        #   Parent Loop BB27_1 Depth=1
                                        #     Parent Loop BB27_3 Depth=2
                                        #       Parent Loop BB27_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$255, -276(%rbp)
	jle	.LBB27_12
# BB#11:                                # %cond.true
                                        #   in Loop: Header=BB27_10 Depth=4
	movl	$255, %eax
	movl	%eax, -392(%rbp)        # 4-byte Spill
	jmp	.LBB27_16
.LBB27_12:                              # %cond.false
                                        #   in Loop: Header=BB27_10 Depth=4
	cmpl	$0, -276(%rbp)
	jge	.LBB27_14
# BB#13:                                # %cond.true.58
                                        #   in Loop: Header=BB27_10 Depth=4
	xorl	%eax, %eax
	movl	%eax, -396(%rbp)        # 4-byte Spill
	jmp	.LBB27_15
.LBB27_14:                              # %cond.false.59
                                        #   in Loop: Header=BB27_10 Depth=4
	movl	-276(%rbp), %eax
	movl	%eax, -396(%rbp)        # 4-byte Spill
.LBB27_15:                              # %cond.end
                                        #   in Loop: Header=BB27_10 Depth=4
	movl	-396(%rbp), %eax        # 4-byte Reload
	movl	%eax, -392(%rbp)        # 4-byte Spill
.LBB27_16:                              # %cond.end.60
                                        #   in Loop: Header=BB27_10 Depth=4
	movl	-392(%rbp), %eax        # 4-byte Reload
	movl	%eax, -280(%rbp)
	movslq	-280(%rbp), %rcx
	shlq	$3, %rcx
	addq	-160(%rbp), %rcx
	movq	%rcx, -168(%rbp)
	movq	-168(%rbp), %rcx
	cmpq	$0, (%rcx)
	jne	.LBB27_18
# BB#17:                                # %if.then.66
                                        #   in Loop: Header=BB27_10 Depth=4
	movq	-8(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movl	-280(%rbp), %edx
	callq	fill_inverse_cmap_gray
.LBB27_18:                              # %if.end.67
                                        #   in Loop: Header=BB27_10 Depth=4
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	subq	$1, %rax
	movl	%eax, %ecx
	movl	%ecx, -176(%rbp)
	movl	-272(%rbp), %ecx
	addl	-276(%rbp), %ecx
	movl	%ecx, -276(%rbp)
# BB#19:                                # %do.cond
                                        #   in Loop: Header=BB27_10 Depth=4
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-172(%rbp), %eax
	cmpl	-176(%rbp), %eax
	movb	%cl, -397(%rbp)         # 1-byte Spill
	jne	.LBB27_23
# BB#20:                                # %land.lhs.true
                                        #   in Loop: Header=BB27_10 Depth=4
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$255, -276(%rbp)
	movb	%cl, -397(%rbp)         # 1-byte Spill
	jg	.LBB27_23
# BB#21:                                # %lor.lhs.false
                                        #   in Loop: Header=BB27_10 Depth=4
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -276(%rbp)
	movb	%cl, -397(%rbp)         # 1-byte Spill
	jl	.LBB27_23
# BB#22:                                # %land.rhs
                                        #   in Loop: Header=BB27_10 Depth=4
	cmpl	$0, -272(%rbp)
	setne	%al
	movb	%al, -397(%rbp)         # 1-byte Spill
.LBB27_23:                              # %land.end
                                        #   in Loop: Header=BB27_10 Depth=4
	movb	-397(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB27_10
# BB#24:                                # %do.end
                                        #   in Loop: Header=BB27_5 Depth=3
	jmp	.LBB27_26
.LBB27_25:                              # %if.else
                                        #   in Loop: Header=BB27_5 Depth=3
	movl	-172(%rbp), %eax
	addl	$1, %eax
	movq	-8(%rbp), %rcx
	cltd
	idivl	36(%rcx)
	movl	%edx, -176(%rbp)
.LBB27_26:                              # %if.end.79
                                        #   in Loop: Header=BB27_5 Depth=3
	movl	-172(%rbp), %eax
	cmpl	-176(%rbp), %eax
	jle	.LBB27_28
# BB#27:                                # %if.then.82
                                        #   in Loop: Header=BB27_5 Depth=3
	movl	-172(%rbp), %eax
	movl	%eax, -284(%rbp)
	movl	-176(%rbp), %eax
	movl	%eax, -172(%rbp)
	movl	-284(%rbp), %eax
	movl	%eax, -176(%rbp)
	movslq	-172(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	$40, %rdx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -192(%rbp)
.LBB27_28:                              # %if.end.86
                                        #   in Loop: Header=BB27_5 Depth=3
	movslq	-176(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$40, %rcx
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movq	%rcx, -200(%rbp)
	movq	-192(%rbp), %rax
	movl	(%rax), %edx
	movq	-208(%rbp), %rax
	movzbl	(%rax), %esi
	subl	%esi, %edx
	cmpl	$0, %edx
	jge	.LBB27_30
# BB#29:                                # %cond.true.96
                                        #   in Loop: Header=BB27_5 Depth=3
	xorl	%eax, %eax
	movq	-192(%rbp), %rcx
	movl	(%rcx), %edx
	movq	-208(%rbp), %rcx
	movzbl	(%rcx), %esi
	subl	%esi, %edx
	subl	%edx, %eax
	movl	%eax, -404(%rbp)        # 4-byte Spill
	jmp	.LBB27_31
.LBB27_30:                              # %cond.false.102
                                        #   in Loop: Header=BB27_5 Depth=3
	movq	-192(%rbp), %rax
	movl	(%rax), %ecx
	movq	-208(%rbp), %rax
	movzbl	(%rax), %edx
	subl	%edx, %ecx
	movl	%ecx, -404(%rbp)        # 4-byte Spill
.LBB27_31:                              # %cond.end.107
                                        #   in Loop: Header=BB27_5 Depth=3
	movl	-404(%rbp), %eax        # 4-byte Reload
	movl	%eax, -180(%rbp)
	movq	-200(%rbp), %rcx
	movl	(%rcx), %eax
	movq	-208(%rbp), %rcx
	movzbl	(%rcx), %edx
	subl	%edx, %eax
	cmpl	$0, %eax
	jge	.LBB27_33
# BB#32:                                # %cond.true.115
                                        #   in Loop: Header=BB27_5 Depth=3
	xorl	%eax, %eax
	movq	-200(%rbp), %rcx
	movl	(%rcx), %edx
	movq	-208(%rbp), %rcx
	movzbl	(%rcx), %esi
	subl	%esi, %edx
	subl	%edx, %eax
	movl	%eax, -408(%rbp)        # 4-byte Spill
	jmp	.LBB27_34
.LBB27_33:                              # %cond.false.121
                                        #   in Loop: Header=BB27_5 Depth=3
	movq	-200(%rbp), %rax
	movl	(%rax), %ecx
	movq	-208(%rbp), %rax
	movzbl	(%rax), %edx
	subl	%edx, %ecx
	movl	%ecx, -408(%rbp)        # 4-byte Spill
.LBB27_34:                              # %cond.end.126
                                        #   in Loop: Header=BB27_5 Depth=3
	movl	-408(%rbp), %eax        # 4-byte Reload
	movl	%eax, -184(%rbp)
	cmpl	$0, -180(%rbp)
	jne	.LBB27_36
# BB#35:                                # %lor.lhs.false.129
                                        #   in Loop: Header=BB27_5 Depth=3
	cmpl	$0, -184(%rbp)
	je	.LBB27_39
.LBB27_36:                              # %if.then.131
                                        #   in Loop: Header=BB27_5 Depth=3
	imull	$65280, -184(%rbp), %eax # imm = 0xFF00
	movl	-180(%rbp), %ecx
	addl	-184(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%eax, -288(%rbp)
	movl	-268(%rbp), %eax
	shll	$8, %eax
	cmpl	-288(%rbp), %eax
	jle	.LBB27_38
# BB#37:                                # %if.then.136
                                        #   in Loop: Header=BB27_5 Depth=3
	movl	-176(%rbp), %eax
	movl	%eax, -172(%rbp)
.LBB27_38:                              # %if.end.137
                                        #   in Loop: Header=BB27_5 Depth=3
	jmp	.LBB27_39
.LBB27_39:                              # %if.end.138
                                        #   in Loop: Header=BB27_5 Depth=3
	cmpl	$0, -244(%rbp)
	je	.LBB27_51
# BB#40:                                # %if.then.140
                                        #   in Loop: Header=BB27_5 Depth=3
	movl	$0, -292(%rbp)
	cmpl	$0, -248(%rbp)
	je	.LBB27_44
# BB#41:                                # %if.then.142
                                        #   in Loop: Header=BB27_5 Depth=3
	movq	-208(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	-268(%rbp), %ecx
	jge	.LBB27_43
# BB#42:                                # %if.then.147
                                        #   in Loop: Header=BB27_5 Depth=3
	movl	$1, -292(%rbp)
.LBB27_43:                              # %if.end.148
                                        #   in Loop: Header=BB27_5 Depth=3
	jmp	.LBB27_47
.LBB27_44:                              # %if.else.149
                                        #   in Loop: Header=BB27_5 Depth=3
	movq	-208(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$127, %ecx
	jg	.LBB27_46
# BB#45:                                # %if.then.154
                                        #   in Loop: Header=BB27_5 Depth=3
	movl	$1, -292(%rbp)
.LBB27_46:                              # %if.end.155
                                        #   in Loop: Header=BB27_5 Depth=3
	jmp	.LBB27_47
.LBB27_47:                              # %if.end.156
                                        #   in Loop: Header=BB27_5 Depth=3
	cmpl	$0, -292(%rbp)
	je	.LBB27_49
# BB#48:                                # %if.then.158
                                        #   in Loop: Header=BB27_5 Depth=3
	movq	-216(%rbp), %rax
	movb	$0, 1(%rax)
	jmp	.LBB27_50
.LBB27_49:                              # %if.else.160
                                        #   in Loop: Header=BB27_5 Depth=3
	movq	-216(%rbp), %rax
	movb	$-1, 1(%rax)
	movl	-172(%rbp), %ecx
	movb	%cl, %dl
	movq	-216(%rbp), %rax
	movb	%dl, (%rax)
	movzbl	%dl, %ecx
	movl	%ecx, %eax
	movq	-240(%rbp), %rsi
	movq	(%rsi,%rax,8), %rdi
	addq	$1, %rdi
	movq	%rdi, (%rsi,%rax,8)
.LBB27_50:                              # %if.end.166
                                        #   in Loop: Header=BB27_5 Depth=3
	jmp	.LBB27_52
.LBB27_51:                              # %if.else.167
                                        #   in Loop: Header=BB27_5 Depth=3
	movl	-172(%rbp), %eax
	movb	%al, %cl
	movq	-216(%rbp), %rdx
	movb	%cl, (%rdx)
	movzbl	%cl, %eax
	movl	%eax, %edx
	movq	-240(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdi
	addq	$1, %rdi
	movq	%rdi, (%rsi,%rdx,8)
.LBB27_52:                              # %if.end.173
                                        #   in Loop: Header=BB27_5 Depth=3
	movl	-36(%rbp), %eax
	movq	-208(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -208(%rbp)
	movl	-100(%rbp), %eax
	movq	-216(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -216(%rbp)
# BB#53:                                # %for.inc
                                        #   in Loop: Header=BB27_5 Depth=3
	movl	-224(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -224(%rbp)
	jmp	.LBB27_5
.LBB27_54:                              # %for.end
                                        #   in Loop: Header=BB27_3 Depth=2
	jmp	.LBB27_55
.LBB27_55:                              # %for.inc.178
                                        #   in Loop: Header=BB27_3 Depth=2
	movl	-220(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -220(%rbp)
	jmp	.LBB27_3
.LBB27_56:                              # %for.end.180
                                        #   in Loop: Header=BB27_1 Depth=1
	jmp	.LBB27_57
.LBB27_57:                              # %for.inc.181
                                        #   in Loop: Header=BB27_1 Depth=1
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -264(%rbp)
	jmp	.LBB27_1
.LBB27_58:                              # %for.end.183
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbp
	retq
.Lfunc_end27:
	.size	median_cut_pass2_fixed_dither_gray, .Lfunc_end27-median_cut_pass2_fixed_dither_gray
	.cfi_endproc

	.align	16, 0x90
	.type	median_cut_pass1_rgb,@function
median_cut_pass1_rgb:                   # @median_cut_pass1_rgb
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	8232(%rax), %rsi
	callq	select_colors_rgb
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	median_cut_pass1_rgb, .Lfunc_end28-median_cut_pass1_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	median_cut_pass2_nodestruct_dither_rgb,@function
median_cut_pass2_nodestruct_dither_rgb: # @median_cut_pass2_nodestruct_dither_rgb
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
	subq	$352, %rsp              # imm = 0x160
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movl	8240(%rdx), %eax
	movl	%eax, -184(%rbp)
	movl	$0, -196(%rbp)
	movl	$1, -200(%rbp)
	movl	$2, -204(%rbp)
	movl	$3, -208(%rbp)
	movl	$0, -216(%rbp)
	movl	$-1, -220(%rbp)
	movl	$-1, -224(%rbp)
	movl	$-1, -228(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -256(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-232(%rbp), %rsi
	leaq	-236(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movq	-16(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_has_alpha
	movl	%eax, -180(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -272(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movq	-16(%rbp), %rdx
	movq	%rax, -280(%rbp)        # 8-byte Spill
	movq	%rdx, -288(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-16(%rbp), %rdx
	movl	%eax, -292(%rbp)        # 4-byte Spill
	movq	%rdx, -304(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	leaq	-88(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-280(%rbp), %rsi        # 8-byte Reload
	movl	%ecx, %edx
	movl	-292(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, -312(%rbp)        # 8-byte Spill
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-16(%rbp), %rsi
	movl	%eax, -324(%rbp)        # 4-byte Spill
	movq	%rsi, -336(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	leaq	-152(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-312(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -340(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-324(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	movl	$2, %edi
	leaq	-88(%rbp), %rsi
	leaq	-152(%rbp), %rdx
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -192(%rbp)
.LBB29_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_3 Depth 2
                                        #       Child Loop BB29_5 Depth 3
                                        #         Child Loop BB29_23 Depth 4
	cmpq	$0, -192(%rbp)
	je	.LBB29_42
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB29_1 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -168(%rbp)
	movl	$0, -172(%rbp)
.LBB29_3:                               # %for.cond.22
                                        #   Parent Loop BB29_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB29_5 Depth 3
                                        #         Child Loop BB29_23 Depth 4
	movl	-172(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB29_40
# BB#4:                                 # %for.body.24
                                        #   in Loop: Header=BB29_3 Depth=2
	movl	$0, -176(%rbp)
.LBB29_5:                               # %for.cond.25
                                        #   Parent Loop BB29_1 Depth=1
                                        #     Parent Loop BB29_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB29_23 Depth 4
	movl	-176(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB29_38
# BB#6:                                 # %for.body.27
                                        #   in Loop: Header=BB29_5 Depth=3
	movl	$0, -240(%rbp)
	cmpl	$0, -180(%rbp)
	je	.LBB29_15
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB29_5 Depth=3
	cmpl	$0, -184(%rbp)
	je	.LBB29_11
# BB#8:                                 # %if.then.29
                                        #   in Loop: Header=BB29_5 Depth=3
	movabsq	$DM, %rax
	movl	-176(%rbp), %ecx
	addl	-52(%rbp), %ecx
	addl	-232(%rbp), %ecx
	andl	$31, %ecx
	movl	%ecx, -244(%rbp)
	movl	-172(%rbp), %ecx
	addl	-48(%rbp), %ecx
	addl	-236(%rbp), %ecx
	andl	$31, %ecx
	movl	%ecx, -248(%rbp)
	movslq	-208(%rbp), %rdx
	movq	-160(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movslq	-248(%rbp), %rdx
	movslq	-244(%rbp), %rsi
	shlq	$5, %rsi
	addq	%rsi, %rax
	movzbl	(%rax,%rdx), %edi
	cmpl	%edi, %ecx
	jge	.LBB29_10
# BB#9:                                 # %if.then.41
                                        #   in Loop: Header=BB29_5 Depth=3
	movl	$1, -240(%rbp)
.LBB29_10:                              # %if.end
                                        #   in Loop: Header=BB29_5 Depth=3
	jmp	.LBB29_14
.LBB29_11:                              # %if.else
                                        #   in Loop: Header=BB29_5 Depth=3
	movslq	-208(%rbp), %rax
	movq	-160(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$128, %edx
	jge	.LBB29_13
# BB#12:                                # %if.then.47
                                        #   in Loop: Header=BB29_5 Depth=3
	movl	$1, -240(%rbp)
.LBB29_13:                              # %if.end.48
                                        #   in Loop: Header=BB29_5 Depth=3
	jmp	.LBB29_14
.LBB29_14:                              # %if.end.49
                                        #   in Loop: Header=BB29_5 Depth=3
	jmp	.LBB29_15
.LBB29_15:                              # %if.end.50
                                        #   in Loop: Header=BB29_5 Depth=3
	cmpl	$0, -240(%rbp)
	jne	.LBB29_35
# BB#16:                                # %if.then.52
                                        #   in Loop: Header=BB29_5 Depth=3
	movl	-220(%rbp), %eax
	movslq	-196(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	cmpl	%esi, %eax
	jne	.LBB29_22
# BB#17:                                # %land.lhs.true
                                        #   in Loop: Header=BB29_5 Depth=3
	movl	-224(%rbp), %eax
	movslq	-200(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	cmpl	%esi, %eax
	jne	.LBB29_22
# BB#18:                                # %land.lhs.true.63
                                        #   in Loop: Header=BB29_5 Depth=3
	movl	-228(%rbp), %eax
	movslq	-204(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	cmpl	%esi, %eax
	jne	.LBB29_22
# BB#19:                                # %if.then.69
                                        #   in Loop: Header=BB29_5 Depth=3
	movl	-216(%rbp), %eax
	movb	%al, %cl
	movq	-168(%rbp), %rdx
	movb	%cl, (%rdx)
	cmpl	$0, -180(%rbp)
	je	.LBB29_21
# BB#20:                                # %if.then.73
                                        #   in Loop: Header=BB29_5 Depth=3
	movq	-168(%rbp), %rax
	movb	$-1, 1(%rax)
.LBB29_21:                              # %if.end.75
                                        #   in Loop: Header=BB29_5 Depth=3
	jmp	.LBB29_34
.LBB29_22:                              # %if.else.76
                                        #   in Loop: Header=BB29_5 Depth=3
	movl	$0, -212(%rbp)
.LBB29_23:                              # %for.cond.77
                                        #   Parent Loop BB29_1 Depth=1
                                        #     Parent Loop BB29_3 Depth=2
                                        #       Parent Loop BB29_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-212(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jge	.LBB29_30
# BB#24:                                # %for.body.80
                                        #   in Loop: Header=BB29_23 Depth=4
	movslq	-212(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$40, %rcx
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movl	4(%rcx), %edx
	movslq	-200(%rbp), %rax
	movq	-160(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	cmpl	%esi, %edx
	jne	.LBB29_28
# BB#25:                                # %land.lhs.true.88
                                        #   in Loop: Header=BB29_23 Depth=4
	movslq	-212(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$40, %rcx
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movl	(%rcx), %edx
	movslq	-196(%rbp), %rax
	movq	-160(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	cmpl	%esi, %edx
	jne	.LBB29_28
# BB#26:                                # %land.lhs.true.97
                                        #   in Loop: Header=BB29_23 Depth=4
	movslq	-212(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$40, %rcx
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movl	8(%rcx), %edx
	movslq	-204(%rbp), %rax
	movq	-160(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	cmpl	%esi, %edx
	jne	.LBB29_28
# BB#27:                                # %if.then.106
                                        #   in Loop: Header=BB29_5 Depth=3
	movslq	-196(%rbp), %rax
	movq	-160(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -220(%rbp)
	movslq	-200(%rbp), %rax
	movq	-160(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -224(%rbp)
	movslq	-204(%rbp), %rax
	movq	-160(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -228(%rbp)
	movl	-212(%rbp), %edx
	movl	%edx, -216(%rbp)
	jmp	.LBB29_31
.LBB29_28:                              # %if.end.116
                                        #   in Loop: Header=BB29_23 Depth=4
	jmp	.LBB29_29
.LBB29_29:                              # %for.inc
                                        #   in Loop: Header=BB29_23 Depth=4
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -212(%rbp)
	jmp	.LBB29_23
.LBB29_30:                              # %for.end
                                        #   in Loop: Header=BB29_5 Depth=3
	movabsq	$.L.str.29, %rdi
	movb	$0, %al
	callq	g_error
.LBB29_31:                              # %got_colour
                                        #   in Loop: Header=BB29_5 Depth=3
	movl	-216(%rbp), %eax
	movb	%al, %cl
	movq	-168(%rbp), %rdx
	movb	%cl, (%rdx)
	cmpl	$0, -180(%rbp)
	je	.LBB29_33
# BB#32:                                # %if.then.120
                                        #   in Loop: Header=BB29_5 Depth=3
	movq	-168(%rbp), %rax
	movb	$-1, 1(%rax)
.LBB29_33:                              # %if.end.122
                                        #   in Loop: Header=BB29_5 Depth=3
	jmp	.LBB29_34
.LBB29_34:                              # %if.end.123
                                        #   in Loop: Header=BB29_5 Depth=3
	jmp	.LBB29_36
.LBB29_35:                              # %if.else.124
                                        #   in Loop: Header=BB29_5 Depth=3
	movq	-168(%rbp), %rax
	movb	$0, 1(%rax)
.LBB29_36:                              # %if.end.126
                                        #   in Loop: Header=BB29_5 Depth=3
	movl	-36(%rbp), %eax
	movq	-160(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -160(%rbp)
	movl	-100(%rbp), %eax
	movq	-168(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -168(%rbp)
# BB#37:                                # %for.inc.130
                                        #   in Loop: Header=BB29_5 Depth=3
	movl	-176(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -176(%rbp)
	jmp	.LBB29_5
.LBB29_38:                              # %for.end.132
                                        #   in Loop: Header=BB29_3 Depth=2
	jmp	.LBB29_39
.LBB29_39:                              # %for.inc.133
                                        #   in Loop: Header=BB29_3 Depth=2
	movl	-172(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -172(%rbp)
	jmp	.LBB29_3
.LBB29_40:                              # %for.end.135
                                        #   in Loop: Header=BB29_1 Depth=1
	jmp	.LBB29_41
.LBB29_41:                              # %for.inc.136
                                        #   in Loop: Header=BB29_1 Depth=1
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -192(%rbp)
	jmp	.LBB29_1
.LBB29_42:                              # %for.end.138
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end29:
	.size	median_cut_pass2_nodestruct_dither_rgb, .Lfunc_end29-median_cut_pass2_nodestruct_dither_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	delete_median_cut,@function
delete_median_cut:                      # @delete_median_cut
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8232(%rdi), %rdi
	callq	g_free
	movq	-8(%rbp), %rdi
	callq	g_free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	delete_median_cut, .Lfunc_end30-delete_median_cut
	.cfi_endproc

	.align	16, 0x90
	.type	select_colors_gray,@function
select_colors_gray:                     # @select_colors_gray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp103:
	.cfi_def_cfa_offset 16
.Ltmp104:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp105:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	32(%rsi), %eax
	movl	%eax, -32(%rbp)
	movslq	-32(%rbp), %rdi
	movq	%rcx, %rsi
	callq	g_malloc_n
	movq	%rax, -24(%rbp)
	movl	$1, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	movl	$255, 4(%rax)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	update_box_gray
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	callq	median_cut_gray
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rsi
	movl	%eax, 36(%rsi)
	movl	$0, -36(%rbp)
.LBB31_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB31_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movslq	-36(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movl	-36(%rbp), %ecx
	movq	%rax, %rdx
	callq	compute_color_gray
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB31_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB31_1
.LBB31_4:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	select_colors_gray, .Lfunc_end31-select_colors_gray
	.cfi_endproc

	.align	16, 0x90
	.type	update_box_gray,@function
update_box_gray:                        # @update_box_gray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp106:
	.cfi_def_cfa_offset 16
.Ltmp107:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp108:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	(%rsi), %eax
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rsi
	movl	4(%rsi), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jle	.LBB32_8
# BB#1:                                 # %if.then
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB32_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB32_7
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB32_2 Depth=1
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB32_5
# BB#4:                                 # %if.then.3
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB32_7
.LBB32_5:                               # %if.end
                                        #   in Loop: Header=BB32_2 Depth=1
	jmp	.LBB32_6
.LBB32_6:                               # %for.inc
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB32_2
.LBB32_7:                               # %for.end
	jmp	.LBB32_8
.LBB32_8:                               # %if.end.5
	movl	-28(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jle	.LBB32_16
# BB#9:                                 # %if.then.7
	movl	-28(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB32_10:                              # %for.cond.8
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.LBB32_15
# BB#11:                                # %for.body.10
                                        #   in Loop: Header=BB32_10 Depth=1
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB32_13
# BB#12:                                # %if.then.14
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rcx
	movl	%eax, 4(%rcx)
	jmp	.LBB32_15
.LBB32_13:                              # %if.end.16
                                        #   in Loop: Header=BB32_10 Depth=1
	jmp	.LBB32_14
.LBB32_14:                              # %for.inc.17
                                        #   in Loop: Header=BB32_10 Depth=1
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB32_10
.LBB32_15:                              # %for.end.18
	jmp	.LBB32_16
.LBB32_16:                              # %if.end.19
	movl	-28(%rbp), %eax
	subl	-24(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	imull	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 36(%rcx)
	movq	$0, -40(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB32_17:                              # %for.cond.20
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB32_22
# BB#18:                                # %for.body.22
                                        #   in Loop: Header=BB32_17 Depth=1
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB32_20
# BB#19:                                # %if.then.26
                                        #   in Loop: Header=BB32_17 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
.LBB32_20:                              # %if.end.28
                                        #   in Loop: Header=BB32_17 Depth=1
	jmp	.LBB32_21
.LBB32_21:                              # %for.inc.29
                                        #   in Loop: Header=BB32_17 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB32_17
.LBB32_22:                              # %for.end.31
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 40(%rcx)
	popq	%rbp
	retq
.Lfunc_end32:
	.size	update_box_gray, .Lfunc_end32-update_box_gray
	.cfi_endproc

	.align	16, 0x90
	.type	median_cut_gray,@function
median_cut_gray:                        # @median_cut_gray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp109:
	.cfi_def_cfa_offset 16
.Ltmp110:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp111:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
.LBB33_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB33_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB33_1 Depth=1
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	find_biggest_volume
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB33_4
# BB#3:                                 # %if.then
	jmp	.LBB33_5
.LBB33_4:                               # %if.end
                                        #   in Loop: Header=BB33_1 Depth=1
	movl	$2, %eax
	movq	-16(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	imulq	$80, %rdx, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -48(%rbp)
	movq	-40(%rbp), %rcx
	movl	4(%rcx), %esi
	movq	-48(%rbp), %rcx
	movl	%esi, 4(%rcx)
	movq	-40(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-48(%rbp), %rcx
	movl	%esi, (%rcx)
	movq	-40(%rbp), %rcx
	movl	4(%rcx), %esi
	movq	-40(%rbp), %rcx
	addl	(%rcx), %esi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-52(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	update_box_gray
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	update_box_gray
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB33_1
.LBB33_5:                               # %while.end
	movl	-20(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	median_cut_gray, .Lfunc_end33-median_cut_gray
	.cfi_endproc

	.align	16, 0x90
	.type	compute_color_gray,@function
compute_color_gray:                     # @compute_color_gray
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-24(%rbp), %rdx
	movl	(%rdx), %ecx
	movl	%ecx, -36(%rbp)
	movq	-24(%rbp), %rdx
	movl	4(%rdx), %ecx
	movl	%ecx, -40(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movl	-36(%rbp), %ecx
	movl	%ecx, -32(%rbp)
.LBB34_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jg	.LBB34_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB34_1 Depth=1
	movslq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB34_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	-48(%rbp), %rax
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movslq	-32(%rbp), %rax
	imulq	-48(%rbp), %rax
	addq	-64(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB34_4:                               # %if.end
                                        #   in Loop: Header=BB34_1 Depth=1
	jmp	.LBB34_5
.LBB34_5:                               # %for.inc
                                        #   in Loop: Header=BB34_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB34_1
.LBB34_6:                               # %for.end
	cmpq	$0, -56(%rbp)
	je	.LBB34_8
# BB#7:                                 # %if.then.5
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	shrq	$1, %rcx
	addq	%rcx, %rax
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	-56(%rbp)
	movl	%eax, %esi
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$40, %rcx
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movl	%esi, 8(%rcx)
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$40, %rcx
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movl	%esi, 4(%rcx)
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$40, %rcx
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movl	%esi, (%rcx)
	jmp	.LBB34_9
.LBB34_8:                               # %if.else
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$40, %rcx
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movl	$0, 8(%rcx)
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$40, %rcx
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movl	$0, 4(%rcx)
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$40, %rcx
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movl	$0, (%rcx)
.LBB34_9:                               # %if.end.28
	popq	%rbp
	retq
.Lfunc_end34:
	.size	compute_color_gray, .Lfunc_end34-compute_color_gray
	.cfi_endproc

	.align	16, 0x90
	.type	find_biggest_volume,@function
find_biggest_volume:                    # @find_biggest_volume
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -28(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)
.LBB35_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB35_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB35_1 Depth=1
	movq	-24(%rbp), %rax
	movl	36(%rax), %ecx
	cmpl	-32(%rbp), %ecx
	jle	.LBB35_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB35_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	36(%rax), %ecx
	movl	%ecx, -32(%rbp)
.LBB35_4:                               # %if.end
                                        #   in Loop: Header=BB35_1 Depth=1
	jmp	.LBB35_5
.LBB35_5:                               # %for.inc
                                        #   in Loop: Header=BB35_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rcx
	addq	$80, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB35_1
.LBB35_6:                               # %for.end
	movq	-40(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end35:
	.size	find_biggest_volume, .Lfunc_end35-find_biggest_volume
	.cfi_endproc

	.align	16, 0x90
	.type	fill_inverse_cmap_rgb,@function
fill_inverse_cmap_rgb:                  # @fill_inverse_cmap_rgb
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
	pushq	%rbx
	subq	$1144, %rsp             # imm = 0x478
.Ltmp121:
	.cfi_offset %rbx, -24
	leaq	-1104(%rbp), %rax
	xorl	%r9d, %r9d
	movl	$4, %r10d
	movl	%r10d, %r11d
	leaq	-1112(%rbp), %rbx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%rbx, %rdi
	movl	%r9d, %esi
	movq	%r11, %rdx
	movq	%rax, -1120(%rbp)       # 8-byte Spill
	callq	memset
	movl	-28(%rbp), %ecx
	sarl	$0, %ecx
	movl	%ecx, -28(%rbp)
	movl	-32(%rbp), %ecx
	sarl	$0, %ecx
	movl	%ecx, -32(%rbp)
	movl	-36(%rbp), %ecx
	sarl	$0, %ecx
	movl	%ecx, -36(%rbp)
	movl	-28(%rbp), %ecx
	shll	$0, %ecx
	addl	$0, %ecx
	movl	%ecx, -40(%rbp)
	movl	-32(%rbp), %ecx
	shll	$2, %ecx
	addl	$2, %ecx
	movl	%ecx, -44(%rbp)
	movl	-36(%rbp), %ecx
	shll	$2, %ecx
	addl	$2, %ecx
	movl	%ecx, -48(%rbp)
	movq	-16(%rbp), %rdi
	movl	-40(%rbp), %esi
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %ecx
	movq	-1120(%rbp), %r8        # 8-byte Reload
	callq	find_nearby_colors
	leaq	-1112(%rbp), %rdi
	leaq	-1104(%rbp), %r9
	movl	%eax, -1108(%rbp)
	movq	-16(%rbp), %r8
	movl	-40(%rbp), %esi
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-1108(%rbp), %eax
	movq	%rdi, -1128(%rbp)       # 8-byte Spill
	movq	%r8, %rdi
	movl	%eax, %r8d
	movq	-1128(%rbp), %r11       # 8-byte Reload
	movq	%r11, (%rsp)
	callq	find_best_colors
	leaq	-1112(%rbp), %rdi
	movl	-28(%rbp), %eax
	shll	$0, %eax
	movl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	shll	$0, %eax
	movl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shll	$0, %eax
	movl	%eax, -36(%rbp)
	movq	%rdi, -72(%rbp)
	movl	$0, -52(%rbp)
.LBB36_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB36_3 Depth 2
                                        #       Child Loop BB36_5 Depth 3
	cmpl	$1, -52(%rbp)
	jge	.LBB36_12
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB36_1 Depth=1
	movl	$0, -56(%rbp)
.LBB36_3:                               # %for.cond.13
                                        #   Parent Loop BB36_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB36_5 Depth 3
	cmpl	$1, -56(%rbp)
	jge	.LBB36_10
# BB#4:                                 # %for.body.15
                                        #   in Loop: Header=BB36_3 Depth=2
	movl	$0, -60(%rbp)
.LBB36_5:                               # %for.cond.16
                                        #   Parent Loop BB36_1 Depth=1
                                        #     Parent Loop BB36_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$1, -60(%rbp)
	jge	.LBB36_8
# BB#6:                                 # %for.body.18
                                        #   in Loop: Header=BB36_5 Depth=3
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -72(%rbp)
	movl	(%rax), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %edx
	addl	-52(%rbp), %edx
	movl	-32(%rbp), %esi
	addl	-56(%rbp), %esi
	movl	-36(%rbp), %r8d
	addl	-60(%rbp), %r8d
	movl	%esi, -1132(%rbp)       # 4-byte Spill
	movl	%edx, %esi
	movl	-1132(%rbp), %edx       # 4-byte Reload
	movl	%r8d, %ecx
	movq	%rax, -1144(%rbp)       # 8-byte Spill
	callq	HIST_LIN
	movq	-1144(%rbp), %rdi       # 8-byte Reload
	movq	%rdi, (%rax)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB36_5 Depth=3
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB36_5
.LBB36_8:                               # %for.end
                                        #   in Loop: Header=BB36_3 Depth=2
	jmp	.LBB36_9
.LBB36_9:                               # %for.inc.24
                                        #   in Loop: Header=BB36_3 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB36_3
.LBB36_10:                              # %for.end.26
                                        #   in Loop: Header=BB36_1 Depth=1
	jmp	.LBB36_11
.LBB36_11:                              # %for.inc.27
                                        #   in Loop: Header=BB36_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB36_1
.LBB36_12:                              # %for.end.29
	addq	$1144, %rsp             # imm = 0x478
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end36:
	.size	fill_inverse_cmap_rgb, .Lfunc_end36-fill_inverse_cmap_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	find_nearby_colors,@function
find_nearby_colors:                     # @find_nearby_colors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp122:
	.cfi_def_cfa_offset 16
.Ltmp123:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp124:
	.cfi_def_cfa_register %rbp
	subq	$992, %rsp              # imm = 0x3E0
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rdi
	movl	36(%rdi), %ecx
	movl	%ecx, -36(%rbp)
	movl	-12(%rbp), %ecx
	addl	$0, %ecx
	movl	%ecx, -40(%rbp)
	movl	-12(%rbp), %ecx
	addl	-40(%rbp), %ecx
	addl	$1, %ecx
	sarl	$1, %ecx
	movl	%ecx, -52(%rbp)
	movl	-16(%rbp), %ecx
	addl	$0, %ecx
	movl	%ecx, -44(%rbp)
	movl	-16(%rbp), %ecx
	addl	-44(%rbp), %ecx
	addl	$1, %ecx
	sarl	$1, %ecx
	movl	%ecx, -56(%rbp)
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	movl	%ecx, -48(%rbp)
	movl	-20(%rbp), %ecx
	addl	-48(%rbp), %ecx
	addl	$1, %ecx
	sarl	$1, %ecx
	movl	%ecx, -60(%rbp)
	movl	$2147483647, -76(%rbp)  # imm = 0x7FFFFFFF
	movl	$0, -64(%rbp)
.LBB37_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB37_33
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB37_1 Depth=1
	movslq	-64(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$3112, %rcx             # imm = 0xC28
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movl	(%rcx), %edx
	movl	%edx, -68(%rbp)
	movl	-68(%rbp), %edx
	cmpl	-12(%rbp), %edx
	jge	.LBB37_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-68(%rbp), %eax
	subl	-12(%rbp), %eax
	imull	$13, %eax, %eax
	movl	%eax, -88(%rbp)
	movl	-88(%rbp), %eax
	imull	-88(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-68(%rbp), %eax
	subl	-40(%rbp), %eax
	imull	$13, %eax, %eax
	movl	%eax, -88(%rbp)
	movl	-88(%rbp), %eax
	imull	-88(%rbp), %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB37_11
.LBB37_4:                               # %if.else
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-68(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jle	.LBB37_6
# BB#5:                                 # %if.then.17
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-68(%rbp), %eax
	subl	-40(%rbp), %eax
	imull	$13, %eax, %eax
	movl	%eax, -88(%rbp)
	movl	-88(%rbp), %eax
	imull	-88(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-68(%rbp), %eax
	subl	-12(%rbp), %eax
	imull	$13, %eax, %eax
	movl	%eax, -88(%rbp)
	movl	-88(%rbp), %eax
	imull	-88(%rbp), %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB37_10
.LBB37_6:                               # %if.else.24
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	$0, -80(%rbp)
	movl	-68(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jg	.LBB37_8
# BB#7:                                 # %if.then.26
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-68(%rbp), %eax
	subl	-40(%rbp), %eax
	imull	$13, %eax, %eax
	movl	%eax, -88(%rbp)
	movl	-88(%rbp), %eax
	imull	-88(%rbp), %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB37_9
.LBB37_8:                               # %if.else.30
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-68(%rbp), %eax
	subl	-12(%rbp), %eax
	imull	$13, %eax, %eax
	movl	%eax, -88(%rbp)
	movl	-88(%rbp), %eax
	imull	-88(%rbp), %eax
	movl	%eax, -84(%rbp)
.LBB37_9:                               # %if.end
                                        #   in Loop: Header=BB37_1 Depth=1
	jmp	.LBB37_10
.LBB37_10:                              # %if.end.34
                                        #   in Loop: Header=BB37_1 Depth=1
	jmp	.LBB37_11
.LBB37_11:                              # %if.end.35
                                        #   in Loop: Header=BB37_1 Depth=1
	movslq	-64(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$3112, %rcx             # imm = 0xC28
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movl	4(%rcx), %edx
	movl	%edx, -68(%rbp)
	movl	-68(%rbp), %edx
	cmpl	-16(%rbp), %edx
	jge	.LBB37_13
# BB#12:                                # %if.then.40
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-68(%rbp), %eax
	subl	-16(%rbp), %eax
	imull	$24, %eax, %eax
	movl	%eax, -88(%rbp)
	movl	-88(%rbp), %eax
	imull	-88(%rbp), %eax
	addl	-80(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-68(%rbp), %eax
	subl	-44(%rbp), %eax
	imull	$24, %eax, %eax
	movl	%eax, -88(%rbp)
	movl	-88(%rbp), %eax
	imull	-88(%rbp), %eax
	addl	-84(%rbp), %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB37_20
.LBB37_13:                              # %if.else.49
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-68(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jle	.LBB37_15
# BB#14:                                # %if.then.51
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-68(%rbp), %eax
	subl	-44(%rbp), %eax
	imull	$24, %eax, %eax
	movl	%eax, -88(%rbp)
	movl	-88(%rbp), %eax
	imull	-88(%rbp), %eax
	addl	-80(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-68(%rbp), %eax
	subl	-16(%rbp), %eax
	imull	$24, %eax, %eax
	movl	%eax, -88(%rbp)
	movl	-88(%rbp), %eax
	imull	-88(%rbp), %eax
	addl	-84(%rbp), %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB37_19
.LBB37_15:                              # %if.else.60
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-68(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jg	.LBB37_17
# BB#16:                                # %if.then.62
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-68(%rbp), %eax
	subl	-44(%rbp), %eax
	imull	$24, %eax, %eax
	movl	%eax, -88(%rbp)
	movl	-88(%rbp), %eax
	imull	-88(%rbp), %eax
	addl	-84(%rbp), %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB37_18
.LBB37_17:                              # %if.else.67
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-68(%rbp), %eax
	subl	-16(%rbp), %eax
	imull	$24, %eax, %eax
	movl	%eax, -88(%rbp)
	movl	-88(%rbp), %eax
	imull	-88(%rbp), %eax
	addl	-84(%rbp), %eax
	movl	%eax, -84(%rbp)
.LBB37_18:                              # %if.end.72
                                        #   in Loop: Header=BB37_1 Depth=1
	jmp	.LBB37_19
.LBB37_19:                              # %if.end.73
                                        #   in Loop: Header=BB37_1 Depth=1
	jmp	.LBB37_20
.LBB37_20:                              # %if.end.74
                                        #   in Loop: Header=BB37_1 Depth=1
	movslq	-64(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$3112, %rcx             # imm = 0xC28
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movl	8(%rcx), %edx
	movl	%edx, -68(%rbp)
	movl	-68(%rbp), %edx
	cmpl	-20(%rbp), %edx
	jge	.LBB37_22
# BB#21:                                # %if.then.79
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-68(%rbp), %eax
	subl	-20(%rbp), %eax
	imull	$26, %eax, %eax
	movl	%eax, -88(%rbp)
	movl	-88(%rbp), %eax
	imull	-88(%rbp), %eax
	addl	-80(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-68(%rbp), %eax
	subl	-48(%rbp), %eax
	imull	$26, %eax, %eax
	movl	%eax, -88(%rbp)
	movl	-88(%rbp), %eax
	imull	-88(%rbp), %eax
	addl	-84(%rbp), %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB37_29
.LBB37_22:                              # %if.else.88
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-68(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jle	.LBB37_24
# BB#23:                                # %if.then.90
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-68(%rbp), %eax
	subl	-48(%rbp), %eax
	imull	$26, %eax, %eax
	movl	%eax, -88(%rbp)
	movl	-88(%rbp), %eax
	imull	-88(%rbp), %eax
	addl	-80(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-68(%rbp), %eax
	subl	-20(%rbp), %eax
	imull	$26, %eax, %eax
	movl	%eax, -88(%rbp)
	movl	-88(%rbp), %eax
	imull	-88(%rbp), %eax
	addl	-84(%rbp), %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB37_28
.LBB37_24:                              # %if.else.99
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-68(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jg	.LBB37_26
# BB#25:                                # %if.then.101
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-68(%rbp), %eax
	subl	-48(%rbp), %eax
	imull	$26, %eax, %eax
	movl	%eax, -88(%rbp)
	movl	-88(%rbp), %eax
	imull	-88(%rbp), %eax
	addl	-84(%rbp), %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB37_27
.LBB37_26:                              # %if.else.106
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-68(%rbp), %eax
	subl	-20(%rbp), %eax
	imull	$26, %eax, %eax
	movl	%eax, -88(%rbp)
	movl	-88(%rbp), %eax
	imull	-88(%rbp), %eax
	addl	-84(%rbp), %eax
	movl	%eax, -84(%rbp)
.LBB37_27:                              # %if.end.111
                                        #   in Loop: Header=BB37_1 Depth=1
	jmp	.LBB37_28
.LBB37_28:                              # %if.end.112
                                        #   in Loop: Header=BB37_1 Depth=1
	jmp	.LBB37_29
.LBB37_29:                              # %if.end.113
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-80(%rbp), %eax
	movslq	-64(%rbp), %rcx
	movl	%eax, -1120(%rbp,%rcx,4)
	movl	-84(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB37_31
# BB#30:                                # %if.then.117
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-84(%rbp), %eax
	movl	%eax, -76(%rbp)
.LBB37_31:                              # %if.end.118
                                        #   in Loop: Header=BB37_1 Depth=1
	jmp	.LBB37_32
.LBB37_32:                              # %for.inc
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB37_1
.LBB37_33:                              # %for.end
	movl	$0, -72(%rbp)
	movl	$0, -64(%rbp)
.LBB37_34:                              # %for.cond.119
                                        # =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB37_39
# BB#35:                                # %for.body.121
                                        #   in Loop: Header=BB37_34 Depth=1
	movslq	-64(%rbp), %rax
	movl	-1120(%rbp,%rax,4), %ecx
	cmpl	-76(%rbp), %ecx
	jg	.LBB37_37
# BB#36:                                # %if.then.125
                                        #   in Loop: Header=BB37_34 Depth=1
	movl	-64(%rbp), %eax
	movl	-72(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -72(%rbp)
	movslq	%ecx, %rsi
	movq	-32(%rbp), %rdi
	movl	%eax, (%rdi,%rsi,4)
.LBB37_37:                              # %if.end.129
                                        #   in Loop: Header=BB37_34 Depth=1
	jmp	.LBB37_38
.LBB37_38:                              # %for.inc.130
                                        #   in Loop: Header=BB37_34 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB37_34
.LBB37_39:                              # %for.end.132
	movl	-72(%rbp), %eax
	addq	$992, %rsp              # imm = 0x3E0
	popq	%rbp
	retq
.Lfunc_end37:
	.size	find_nearby_colors, .Lfunc_end37-find_nearby_colors
	.cfi_endproc

	.align	16, 0x90
	.type	find_best_colors,@function
find_best_colors:                       # @find_best_colors
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
	pushq	%r14
	pushq	%rbx
	subq	$128, %rsp
.Ltmp128:
	.cfi_offset %rbx, -32
.Ltmp129:
	.cfi_offset %r14, -24
	movq	16(%rbp), %rax
	leaq	-136(%rbp), %r10
	xorl	%r11d, %r11d
	movl	$4, %ebx
	movl	%ebx, %r14d
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	%rax, -56(%rbp)
	movq	%r10, %rax
	movq	%rax, %rdi
	movl	%r11d, %esi
	movq	%r14, %rdx
	movq	%r10, -144(%rbp)        # 8-byte Spill
	callq	memset
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -88(%rbp)
	movl	$0, -72(%rbp)
.LBB38_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -72(%rbp)
	jl	.LBB38_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -88(%rbp)
	movl	$2147483647, (%rax)     # imm = 0x7FFFFFFF
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	-72(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB38_1
.LBB38_4:                               # %for.end
	movl	$0, -72(%rbp)
.LBB38_5:                               # %for.cond.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB38_7 Depth 2
                                        #       Child Loop BB38_9 Depth 3
                                        #         Child Loop BB38_11 Depth 4
	movl	-72(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB38_22
# BB#6:                                 # %for.body.3
                                        #   in Loop: Header=BB38_5 Depth=1
	leaq	-136(%rbp), %rax
	movslq	-72(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	(%rdx,%rcx,4), %esi
	movl	%esi, -76(%rbp)
	movl	-28(%rbp), %esi
	movslq	-76(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	$3112, %rdx             # imm = 0xC28
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rdx
	subl	(%rdx), %esi
	imull	$13, %esi, %esi
	movl	%esi, -124(%rbp)
	movl	-124(%rbp), %esi
	imull	-124(%rbp), %esi
	movl	%esi, -100(%rbp)
	movl	-32(%rbp), %esi
	movslq	-76(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	$3112, %rdx             # imm = 0xC28
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rdx
	subl	4(%rdx), %esi
	imull	$24, %esi, %esi
	movl	%esi, -128(%rbp)
	movl	-128(%rbp), %esi
	imull	-128(%rbp), %esi
	addl	-100(%rbp), %esi
	movl	%esi, -100(%rbp)
	movl	-36(%rbp), %esi
	movslq	-76(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	$3112, %rdx             # imm = 0xC28
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rdx
	subl	8(%rdx), %esi
	imull	$26, %esi, %esi
	movl	%esi, -132(%rbp)
	movl	-132(%rbp), %esi
	imull	-132(%rbp), %esi
	addl	-100(%rbp), %esi
	movl	%esi, -100(%rbp)
	imull	$26, -124(%rbp), %esi
	addl	$169, %esi
	movl	%esi, -124(%rbp)
	imull	$192, -128(%rbp), %esi
	addl	$9216, %esi             # imm = 0x2400
	movl	%esi, -128(%rbp)
	imull	$208, -132(%rbp), %esi
	addl	$10816, %esi            # imm = 0x2A40
	movl	%esi, -132(%rbp)
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)
	movl	-124(%rbp), %esi
	movl	%esi, -112(%rbp)
	movl	$0, -60(%rbp)
.LBB38_7:                               # %for.cond.27
                                        #   Parent Loop BB38_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB38_9 Depth 3
                                        #         Child Loop BB38_11 Depth 4
	cmpl	$0, -60(%rbp)
	jl	.LBB38_20
# BB#8:                                 # %for.body.29
                                        #   in Loop: Header=BB38_7 Depth=2
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	-128(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	$0, -64(%rbp)
.LBB38_9:                               # %for.cond.30
                                        #   Parent Loop BB38_5 Depth=1
                                        #     Parent Loop BB38_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB38_11 Depth 4
	cmpl	$0, -64(%rbp)
	jl	.LBB38_18
# BB#10:                                # %for.body.32
                                        #   in Loop: Header=BB38_9 Depth=3
	movl	-104(%rbp), %eax
	movl	%eax, -108(%rbp)
	movl	-132(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	$0, -68(%rbp)
.LBB38_11:                              # %for.cond.33
                                        #   Parent Loop BB38_5 Depth=1
                                        #     Parent Loop BB38_7 Depth=2
                                        #       Parent Loop BB38_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$0, -68(%rbp)
	jl	.LBB38_16
# BB#12:                                # %for.body.35
                                        #   in Loop: Header=BB38_11 Depth=4
	movl	-108(%rbp), %eax
	movq	-88(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB38_14
# BB#13:                                # %if.then
                                        #   in Loop: Header=BB38_11 Depth=4
	movl	-108(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-76(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB38_14:                              # %if.end
                                        #   in Loop: Header=BB38_11 Depth=4
	movl	-120(%rbp), %eax
	addl	-108(%rbp), %eax
	movl	%eax, -108(%rbp)
	movl	-120(%rbp), %eax
	addl	$21632, %eax            # imm = 0x5480
	movl	%eax, -120(%rbp)
	movq	-88(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -88(%rbp)
	movq	-96(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -96(%rbp)
# BB#15:                                # %for.inc.41
                                        #   in Loop: Header=BB38_11 Depth=4
	movl	-68(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB38_11
.LBB38_16:                              # %for.end.43
                                        #   in Loop: Header=BB38_9 Depth=3
	movl	-116(%rbp), %eax
	addl	-104(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	-116(%rbp), %eax
	addl	$18432, %eax            # imm = 0x4800
	movl	%eax, -116(%rbp)
# BB#17:                                # %for.inc.46
                                        #   in Loop: Header=BB38_9 Depth=3
	movl	-64(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB38_9
.LBB38_18:                              # %for.end.48
                                        #   in Loop: Header=BB38_7 Depth=2
	movl	-112(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	%eax, -100(%rbp)
	movl	-112(%rbp), %eax
	addl	$338, %eax              # imm = 0x152
	movl	%eax, -112(%rbp)
# BB#19:                                # %for.inc.51
                                        #   in Loop: Header=BB38_7 Depth=2
	movl	-60(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB38_7
.LBB38_20:                              # %for.end.53
                                        #   in Loop: Header=BB38_5 Depth=1
	jmp	.LBB38_21
.LBB38_21:                              # %for.inc.54
                                        #   in Loop: Header=BB38_5 Depth=1
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB38_5
.LBB38_22:                              # %for.end.55
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end38:
	.size	find_best_colors, .Lfunc_end38-find_best_colors
	.cfi_endproc

	.align	16, 0x90
	.type	init_error_limit,@function
init_error_limit:                       # @init_error_limit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp130:
	.cfi_def_cfa_offset 16
.Ltmp131:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp132:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$511, %eax              # imm = 0x1FF
	movl	%eax, %ecx
	movl	$4, %eax
	movl	%eax, %esi
	movl	%edi, -12(%rbp)
	movq	%rcx, %rdi
	callq	g_malloc_n
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$1020, %rax             # imm = 0x3FC
	movq	%rax, -24(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.LBB39_10
# BB#1:                                 # %if.then
	movl	$190, -36(%rbp)
	movl	$0, -28(%rbp)
.LBB39_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$190, -28(%rbp)
	jge	.LBB39_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB39_2 Depth=1
	xorl	%eax, %eax
	movl	-28(%rbp), %ecx
	movslq	-28(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movl	%ecx, (%rsi,%rdx,4)
	movl	%eax, %ecx
	subl	-28(%rbp), %ecx
	subl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rsi
	movl	%ecx, (%rsi,%rdx,4)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB39_2 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB39_2
.LBB39_5:                               # %for.end
	jmp	.LBB39_6
.LBB39_6:                               # %for.cond.5
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$255, -28(%rbp)
	jg	.LBB39_9
# BB#7:                                 # %for.body.7
                                        #   in Loop: Header=BB39_6 Depth=1
	xorl	%eax, %eax
	movslq	-28(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	$190, (%rdx,%rcx,4)
	subl	-28(%rbp), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movl	$-190, (%rdx,%rcx,4)
# BB#8:                                 # %for.inc.13
                                        #   in Loop: Header=BB39_6 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB39_6
.LBB39_9:                               # %for.end.15
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB39_23
.LBB39_10:                              # %if.else
	movl	$24, -40(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -28(%rbp)
.LBB39_11:                              # %for.cond.17
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$24, -28(%rbp)
	jge	.LBB39_14
# BB#12:                                # %for.body.19
                                        #   in Loop: Header=BB39_11 Depth=1
	xorl	%eax, %eax
	movl	-32(%rbp), %ecx
	movslq	-28(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movl	%ecx, (%rsi,%rdx,4)
	movl	%eax, %ecx
	subl	-32(%rbp), %ecx
	subl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rsi
	movl	%ecx, (%rsi,%rdx,4)
# BB#13:                                # %for.inc.26
                                        #   in Loop: Header=BB39_11 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB39_11
.LBB39_14:                              # %for.end.29
	jmp	.LBB39_15
.LBB39_15:                              # %for.cond.30
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$72, -28(%rbp)
	jge	.LBB39_18
# BB#16:                                # %for.body.32
                                        #   in Loop: Header=BB39_15 Depth=1
	xorl	%eax, %eax
	movl	-32(%rbp), %ecx
	movslq	-28(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movl	%ecx, (%rsi,%rdx,4)
	movl	%eax, %ecx
	subl	-32(%rbp), %ecx
	subl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rsi
	movl	%ecx, (%rsi,%rdx,4)
# BB#17:                                # %for.inc.39
                                        #   in Loop: Header=BB39_15 Depth=1
	movl	$1, %eax
	xorl	%ecx, %ecx
	movl	-28(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -28(%rbp)
	movl	-28(%rbp), %edx
	andl	$1, %edx
	cmpl	$0, %edx
	cmovnel	%ecx, %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB39_15
.LBB39_18:                              # %for.end.41
	jmp	.LBB39_19
.LBB39_19:                              # %for.cond.42
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$255, -28(%rbp)
	jg	.LBB39_22
# BB#20:                                # %for.body.44
                                        #   in Loop: Header=BB39_19 Depth=1
	xorl	%eax, %eax
	movl	-32(%rbp), %ecx
	movslq	-28(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movl	%ecx, (%rsi,%rdx,4)
	movl	%eax, %ecx
	subl	-32(%rbp), %ecx
	subl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rsi
	movl	%ecx, (%rsi,%rdx,4)
# BB#21:                                # %for.inc.51
                                        #   in Loop: Header=BB39_19 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB39_19
.LBB39_22:                              # %for.end.53
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB39_23:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	init_error_limit, .Lfunc_end39-init_error_limit
	.cfi_endproc

	.align	16, 0x90
	.type	fill_inverse_cmap_gray,@function
fill_inverse_cmap_gray:                 # @fill_inverse_cmap_gray
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	addq	$40, %rsi
	movq	%rsi, -32(%rbp)
	movq	$65536, -48(%rbp)       # imm = 0x10000
	movl	$-1, -52(%rbp)
	movl	$0, -56(%rbp)
.LBB40_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-56(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jge	.LBB40_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	-20(%rbp), %eax
	movslq	-56(%rbp), %rcx
	imulq	$12, %rcx, %rcx
	addq	-32(%rbp), %rcx
	subl	(%rcx), %eax
	cmpl	$0, %eax
	jge	.LBB40_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB40_1 Depth=1
	xorl	%eax, %eax
	movl	-20(%rbp), %ecx
	movslq	-56(%rbp), %rdx
	imulq	$12, %rdx, %rdx
	addq	-32(%rbp), %rdx
	subl	(%rdx), %ecx
	subl	%ecx, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB40_5
.LBB40_4:                               # %cond.false
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	-20(%rbp), %eax
	movslq	-56(%rbp), %rcx
	imulq	$12, %rcx, %rcx
	addq	-32(%rbp), %rcx
	subl	(%rcx), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB40_5:                               # %cond.end
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	-60(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	cmpq	-48(%rbp), %rcx
	jge	.LBB40_7
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	-56(%rbp), %ecx
	movl	%ecx, -52(%rbp)
.LBB40_7:                               # %if.end
                                        #   in Loop: Header=BB40_1 Depth=1
	jmp	.LBB40_8
.LBB40_8:                               # %for.inc
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB40_1
.LBB40_9:                               # %for.end
	cmpl	$0, -56(%rbp)
	jl	.LBB40_11
# BB#10:                                # %if.then.16
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movslq	-20(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rcx, (%rsi,%rdx,8)
.LBB40_11:                              # %if.end.20
	popq	%rbp
	retq
.Lfunc_end40:
	.size	fill_inverse_cmap_gray, .Lfunc_end40-fill_inverse_cmap_gray
	.cfi_endproc

	.align	16, 0x90
	.type	select_colors_rgb,@function
select_colors_rgb:                      # @select_colors_rgb
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
	subq	$48, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	32(%rsi), %eax
	movl	%eax, -32(%rbp)
	movslq	-32(%rbp), %rdi
	movq	%rcx, %rsi
	callq	g_malloc_n
	movq	%rax, -24(%rbp)
	movl	$1, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	movl	$255, 4(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 12(%rax)
	movq	-24(%rbp), %rax
	movl	$63, 16(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-24(%rbp), %rax
	movl	$63, 28(%rax)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	32(%rax), %edx
	callq	update_box_rgb
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movq	-8(%rbp), %rax
	movq	8248(%rax), %r8
	callq	median_cut_rgb
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rsi
	movl	%eax, 36(%rsi)
	movl	$0, -36(%rbp)
.LBB41_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB41_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB41_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movslq	-36(%rbp), %rax
	imulq	$80, %rax, %rax
	addq	-24(%rbp), %rax
	movl	-36(%rbp), %ecx
	movq	%rax, %rdx
	callq	compute_color_rgb
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB41_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB41_1
.LBB41_4:                               # %for.end
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	select_colors_rgb, .Lfunc_end41-select_colors_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	update_box_rgb,@function
update_box_rgb:                         # @update_box_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp139:
	.cfi_def_cfa_offset 16
.Ltmp140:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp141:
	.cfi_def_cfa_register %rbp
	subq	$8544, %rsp             # imm = 0x2160
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rsi
	movl	(%rsi), %edx
	movl	%edx, -36(%rbp)
	movq	-16(%rbp), %rsi
	movl	4(%rsi), %edx
	movl	%edx, -40(%rbp)
	movq	-16(%rbp), %rsi
	movl	12(%rsi), %edx
	movl	%edx, -44(%rbp)
	movq	-16(%rbp), %rsi
	movl	16(%rsi), %edx
	movl	%edx, -48(%rbp)
	movq	-16(%rbp), %rsi
	movl	24(%rsi), %edx
	movl	%edx, -52(%rbp)
	movq	-16(%rbp), %rsi
	movl	28(%rsi), %edx
	movl	%edx, -56(%rbp)
	movl	-40(%rbp), %edx
	cmpl	-36(%rbp), %edx
	jle	.LBB42_16
# BB#1:                                 # %if.then
	movl	-36(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB42_2:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB42_4 Depth 2
                                        #       Child Loop BB42_6 Depth 3
	movl	-24(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jg	.LBB42_15
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB42_2 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB42_4:                               # %for.cond.8
                                        #   Parent Loop BB42_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB42_6 Depth 3
	movl	-28(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jg	.LBB42_13
# BB#5:                                 # %for.body.10
                                        #   in Loop: Header=BB42_4 Depth=2
	movl	-52(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB42_6:                               # %for.cond.11
                                        #   Parent Loop BB42_2 Depth=1
                                        #     Parent Loop BB42_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-32(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jg	.LBB42_11
# BB#7:                                 # %for.body.13
                                        #   in Loop: Header=BB42_6 Depth=3
	movq	-8(%rbp), %rdi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	callq	HIST_LIN
	cmpq	$0, (%rax)
	je	.LBB42_9
# BB#8:                                 # %if.then.15
	movl	-24(%rbp), %eax
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB42_17
.LBB42_9:                               # %if.end
                                        #   in Loop: Header=BB42_6 Depth=3
	jmp	.LBB42_10
.LBB42_10:                              # %for.inc
                                        #   in Loop: Header=BB42_6 Depth=3
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB42_6
.LBB42_11:                              # %for.end
                                        #   in Loop: Header=BB42_4 Depth=2
	jmp	.LBB42_12
.LBB42_12:                              # %for.inc.17
                                        #   in Loop: Header=BB42_4 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB42_4
.LBB42_13:                              # %for.end.19
                                        #   in Loop: Header=BB42_2 Depth=1
	jmp	.LBB42_14
.LBB42_14:                              # %for.inc.20
                                        #   in Loop: Header=BB42_2 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB42_2
.LBB42_15:                              # %for.end.22
	jmp	.LBB42_16
.LBB42_16:                              # %if.end.23
	jmp	.LBB42_17
.LBB42_17:                              # %have_Rmin
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jle	.LBB42_33
# BB#18:                                # %if.then.25
	movl	-40(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB42_19:                              # %for.cond.26
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB42_21 Depth 2
                                        #       Child Loop BB42_23 Depth 3
	movl	-24(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.LBB42_32
# BB#20:                                # %for.body.28
                                        #   in Loop: Header=BB42_19 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB42_21:                              # %for.cond.29
                                        #   Parent Loop BB42_19 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB42_23 Depth 3
	movl	-28(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jg	.LBB42_30
# BB#22:                                # %for.body.31
                                        #   in Loop: Header=BB42_21 Depth=2
	movl	-52(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB42_23:                              # %for.cond.32
                                        #   Parent Loop BB42_19 Depth=1
                                        #     Parent Loop BB42_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-32(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jg	.LBB42_28
# BB#24:                                # %for.body.34
                                        #   in Loop: Header=BB42_23 Depth=3
	movq	-8(%rbp), %rdi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	callq	HIST_LIN
	cmpq	$0, (%rax)
	je	.LBB42_26
# BB#25:                                # %if.then.37
	movl	-24(%rbp), %eax
	movl	%eax, -40(%rbp)
	movq	-16(%rbp), %rcx
	movl	%eax, 4(%rcx)
	jmp	.LBB42_34
.LBB42_26:                              # %if.end.39
                                        #   in Loop: Header=BB42_23 Depth=3
	jmp	.LBB42_27
.LBB42_27:                              # %for.inc.40
                                        #   in Loop: Header=BB42_23 Depth=3
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB42_23
.LBB42_28:                              # %for.end.42
                                        #   in Loop: Header=BB42_21 Depth=2
	jmp	.LBB42_29
.LBB42_29:                              # %for.inc.43
                                        #   in Loop: Header=BB42_21 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB42_21
.LBB42_30:                              # %for.end.45
                                        #   in Loop: Header=BB42_19 Depth=1
	jmp	.LBB42_31
.LBB42_31:                              # %for.inc.46
                                        #   in Loop: Header=BB42_19 Depth=1
	movl	-24(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB42_19
.LBB42_32:                              # %for.end.47
	jmp	.LBB42_33
.LBB42_33:                              # %if.end.48
	jmp	.LBB42_34
.LBB42_34:                              # %have_Rmax
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jle	.LBB42_50
# BB#35:                                # %if.then.50
	movl	-44(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB42_36:                              # %for.cond.51
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB42_38 Depth 2
                                        #       Child Loop BB42_40 Depth 3
	movl	-28(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jg	.LBB42_49
# BB#37:                                # %for.body.53
                                        #   in Loop: Header=BB42_36 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB42_38:                              # %for.cond.54
                                        #   Parent Loop BB42_36 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB42_40 Depth 3
	movl	-24(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jg	.LBB42_47
# BB#39:                                # %for.body.56
                                        #   in Loop: Header=BB42_38 Depth=2
	movl	-52(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB42_40:                              # %for.cond.57
                                        #   Parent Loop BB42_36 Depth=1
                                        #     Parent Loop BB42_38 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-32(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jg	.LBB42_45
# BB#41:                                # %for.body.59
                                        #   in Loop: Header=BB42_40 Depth=3
	movq	-8(%rbp), %rdi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	callq	HIST_LIN
	cmpq	$0, (%rax)
	je	.LBB42_43
# BB#42:                                # %if.then.62
	movl	-28(%rbp), %eax
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rcx
	movl	%eax, 12(%rcx)
	jmp	.LBB42_51
.LBB42_43:                              # %if.end.64
                                        #   in Loop: Header=BB42_40 Depth=3
	jmp	.LBB42_44
.LBB42_44:                              # %for.inc.65
                                        #   in Loop: Header=BB42_40 Depth=3
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB42_40
.LBB42_45:                              # %for.end.67
                                        #   in Loop: Header=BB42_38 Depth=2
	jmp	.LBB42_46
.LBB42_46:                              # %for.inc.68
                                        #   in Loop: Header=BB42_38 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB42_38
.LBB42_47:                              # %for.end.70
                                        #   in Loop: Header=BB42_36 Depth=1
	jmp	.LBB42_48
.LBB42_48:                              # %for.inc.71
                                        #   in Loop: Header=BB42_36 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB42_36
.LBB42_49:                              # %for.end.73
	jmp	.LBB42_50
.LBB42_50:                              # %if.end.74
	jmp	.LBB42_51
.LBB42_51:                              # %have_Gmin
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jle	.LBB42_67
# BB#52:                                # %if.then.76
	movl	-48(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB42_53:                              # %for.cond.77
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB42_55 Depth 2
                                        #       Child Loop BB42_57 Depth 3
	movl	-28(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.LBB42_66
# BB#54:                                # %for.body.79
                                        #   in Loop: Header=BB42_53 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB42_55:                              # %for.cond.80
                                        #   Parent Loop BB42_53 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB42_57 Depth 3
	movl	-24(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jg	.LBB42_64
# BB#56:                                # %for.body.82
                                        #   in Loop: Header=BB42_55 Depth=2
	movl	-52(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB42_57:                              # %for.cond.83
                                        #   Parent Loop BB42_53 Depth=1
                                        #     Parent Loop BB42_55 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-32(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jg	.LBB42_62
# BB#58:                                # %for.body.85
                                        #   in Loop: Header=BB42_57 Depth=3
	movq	-8(%rbp), %rdi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	callq	HIST_LIN
	cmpq	$0, (%rax)
	je	.LBB42_60
# BB#59:                                # %if.then.88
	movl	-28(%rbp), %eax
	movl	%eax, -48(%rbp)
	movq	-16(%rbp), %rcx
	movl	%eax, 16(%rcx)
	jmp	.LBB42_68
.LBB42_60:                              # %if.end.90
                                        #   in Loop: Header=BB42_57 Depth=3
	jmp	.LBB42_61
.LBB42_61:                              # %for.inc.91
                                        #   in Loop: Header=BB42_57 Depth=3
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB42_57
.LBB42_62:                              # %for.end.93
                                        #   in Loop: Header=BB42_55 Depth=2
	jmp	.LBB42_63
.LBB42_63:                              # %for.inc.94
                                        #   in Loop: Header=BB42_55 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB42_55
.LBB42_64:                              # %for.end.96
                                        #   in Loop: Header=BB42_53 Depth=1
	jmp	.LBB42_65
.LBB42_65:                              # %for.inc.97
                                        #   in Loop: Header=BB42_53 Depth=1
	movl	-28(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB42_53
.LBB42_66:                              # %for.end.99
	jmp	.LBB42_67
.LBB42_67:                              # %if.end.100
	jmp	.LBB42_68
.LBB42_68:                              # %have_Gmax
	movl	-56(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jle	.LBB42_84
# BB#69:                                # %if.then.102
	movl	-52(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB42_70:                              # %for.cond.103
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB42_72 Depth 2
                                        #       Child Loop BB42_74 Depth 3
	movl	-32(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jg	.LBB42_83
# BB#71:                                # %for.body.105
                                        #   in Loop: Header=BB42_70 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB42_72:                              # %for.cond.106
                                        #   Parent Loop BB42_70 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB42_74 Depth 3
	movl	-24(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jg	.LBB42_81
# BB#73:                                # %for.body.108
                                        #   in Loop: Header=BB42_72 Depth=2
	movl	-44(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB42_74:                              # %for.cond.109
                                        #   Parent Loop BB42_70 Depth=1
                                        #     Parent Loop BB42_72 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-28(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jg	.LBB42_79
# BB#75:                                # %for.body.111
                                        #   in Loop: Header=BB42_74 Depth=3
	movq	-8(%rbp), %rdi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	callq	HIST_LIN
	cmpq	$0, (%rax)
	je	.LBB42_77
# BB#76:                                # %if.then.114
	movl	-32(%rbp), %eax
	movl	%eax, -52(%rbp)
	movq	-16(%rbp), %rcx
	movl	%eax, 24(%rcx)
	jmp	.LBB42_85
.LBB42_77:                              # %if.end.116
                                        #   in Loop: Header=BB42_74 Depth=3
	jmp	.LBB42_78
.LBB42_78:                              # %for.inc.117
                                        #   in Loop: Header=BB42_74 Depth=3
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB42_74
.LBB42_79:                              # %for.end.119
                                        #   in Loop: Header=BB42_72 Depth=2
	jmp	.LBB42_80
.LBB42_80:                              # %for.inc.120
                                        #   in Loop: Header=BB42_72 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB42_72
.LBB42_81:                              # %for.end.122
                                        #   in Loop: Header=BB42_70 Depth=1
	jmp	.LBB42_82
.LBB42_82:                              # %for.inc.123
                                        #   in Loop: Header=BB42_70 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB42_70
.LBB42_83:                              # %for.end.125
	jmp	.LBB42_84
.LBB42_84:                              # %if.end.126
	jmp	.LBB42_85
.LBB42_85:                              # %have_Bmin
	movl	-56(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jle	.LBB42_101
# BB#86:                                # %if.then.128
	movl	-56(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB42_87:                              # %for.cond.129
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB42_89 Depth 2
                                        #       Child Loop BB42_91 Depth 3
	movl	-32(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.LBB42_100
# BB#88:                                # %for.body.131
                                        #   in Loop: Header=BB42_87 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB42_89:                              # %for.cond.132
                                        #   Parent Loop BB42_87 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB42_91 Depth 3
	movl	-24(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jg	.LBB42_98
# BB#90:                                # %for.body.134
                                        #   in Loop: Header=BB42_89 Depth=2
	movl	-44(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB42_91:                              # %for.cond.135
                                        #   Parent Loop BB42_87 Depth=1
                                        #     Parent Loop BB42_89 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-28(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jg	.LBB42_96
# BB#92:                                # %for.body.137
                                        #   in Loop: Header=BB42_91 Depth=3
	movq	-8(%rbp), %rdi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	callq	HIST_LIN
	cmpq	$0, (%rax)
	je	.LBB42_94
# BB#93:                                # %if.then.140
	movl	-32(%rbp), %eax
	movl	%eax, -56(%rbp)
	movq	-16(%rbp), %rcx
	movl	%eax, 28(%rcx)
	jmp	.LBB42_102
.LBB42_94:                              # %if.end.142
                                        #   in Loop: Header=BB42_91 Depth=3
	jmp	.LBB42_95
.LBB42_95:                              # %for.inc.143
                                        #   in Loop: Header=BB42_91 Depth=3
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB42_91
.LBB42_96:                              # %for.end.145
                                        #   in Loop: Header=BB42_89 Depth=2
	jmp	.LBB42_97
.LBB42_97:                              # %for.inc.146
                                        #   in Loop: Header=BB42_89 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB42_89
.LBB42_98:                              # %for.end.148
                                        #   in Loop: Header=BB42_87 Depth=1
	jmp	.LBB42_99
.LBB42_99:                              # %for.inc.149
                                        #   in Loop: Header=BB42_87 Depth=1
	movl	-32(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB42_87
.LBB42_100:                             # %for.end.151
	jmp	.LBB42_101
.LBB42_101:                             # %if.end.152
	jmp	.LBB42_102
.LBB42_102:                             # %have_Bmax
	leaq	-8344(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	-40(%rbp), %eax
	addl	$1, %eax
	subl	-36(%rbp), %eax
	shll	$0, %eax
	imull	$13, %eax, %eax
	movl	%eax, -60(%rbp)
	movl	-48(%rbp), %eax
	addl	$1, %eax
	subl	-44(%rbp), %eax
	shll	$2, %eax
	imull	$24, %eax, %eax
	movl	%eax, -64(%rbp)
	movl	-56(%rbp), %eax
	addl	$1, %eax
	subl	-52(%rbp), %eax
	shll	$2, %eax
	imull	$26, %eax, %eax
	movl	%eax, -68(%rbp)
	movl	-60(%rbp), %eax
	imull	-60(%rbp), %eax
	movl	-64(%rbp), %edx
	imull	-64(%rbp), %edx
	addl	%edx, %eax
	movl	-68(%rbp), %edx
	imull	-68(%rbp), %edx
	addl	%edx, %eax
	movq	-16(%rbp), %rsi
	movl	%eax, 36(%rsi)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	compute_color_lin8
	movq	$0, -80(%rbp)
	movq	-16(%rbp), %rdx
	movq	$0, 48(%rdx)
	movq	-16(%rbp), %rdx
	movq	$0, 56(%rdx)
	movq	-16(%rbp), %rdx
	movq	$0, 64(%rdx)
	movq	-16(%rbp), %rdx
	movq	$0, 72(%rdx)
	movl	-36(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB42_103:                             # %for.cond.166
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB42_105 Depth 2
                                        #       Child Loop BB42_107 Depth 3
	movl	-24(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jg	.LBB42_116
# BB#104:                               # %for.body.168
                                        #   in Loop: Header=BB42_103 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB42_105:                             # %for.cond.169
                                        #   Parent Loop BB42_103 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB42_107 Depth 3
	movl	-28(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jg	.LBB42_114
# BB#106:                               # %for.body.171
                                        #   in Loop: Header=BB42_105 Depth=2
	movl	-52(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB42_107:                             # %for.cond.172
                                        #   Parent Loop BB42_103 Depth=1
                                        #     Parent Loop BB42_105 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-32(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jg	.LBB42_112
# BB#108:                               # %for.body.174
                                        #   in Loop: Header=BB42_107 Depth=3
	movq	-8(%rbp), %rdi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	callq	HIST_LIN
	movq	(%rax), %rax
	movq	%rax, -8432(%rbp)
	cmpq	$0, -8432(%rbp)
	je	.LBB42_110
# BB#109:                               # %if.then.177
                                        #   in Loop: Header=BB42_107 Depth=3
	leaq	-8344(%rbp), %rdi
	leaq	-8424(%rbp), %rdx
	movl	$1, %ecx
	movl	-24(%rbp), %eax
	movl	%eax, -8420(%rbp)
	movl	%eax, -8424(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -8408(%rbp)
	movl	%eax, -8412(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -8396(%rbp)
	movl	%eax, -8400(%rbp)
	movq	-8(%rbp), %rsi
	callq	compute_color_lin8
	movl	-8304(%rbp), %eax
	subl	-8292(%rbp), %eax
	movl	%eax, -8444(%rbp)
	movl	-8300(%rbp), %eax
	subl	-8288(%rbp), %eax
	movl	%eax, -8436(%rbp)
	movl	-8296(%rbp), %eax
	subl	-8284(%rbp), %eax
	movl	%eax, -8440(%rbp)
	movq	-8432(%rbp), %rdx
	movslq	-8444(%rbp), %rsi
	imulq	%rsi, %rdx
	movslq	-8444(%rbp), %rsi
	imulq	%rsi, %rdx
	movq	-16(%rbp), %rsi
	addq	56(%rsi), %rdx
	movq	%rdx, 56(%rsi)
	movq	-8432(%rbp), %rdx
	movslq	-8436(%rbp), %rsi
	imulq	%rsi, %rdx
	movslq	-8436(%rbp), %rsi
	imulq	%rsi, %rdx
	movq	-16(%rbp), %rsi
	addq	64(%rsi), %rdx
	movq	%rdx, 64(%rsi)
	movq	-8432(%rbp), %rdx
	movslq	-8440(%rbp), %rsi
	imulq	%rsi, %rdx
	movslq	-8440(%rbp), %rsi
	imulq	%rsi, %rdx
	movq	-16(%rbp), %rsi
	addq	72(%rsi), %rdx
	movq	%rdx, 72(%rsi)
	movq	-8432(%rbp), %rdx
	addq	-80(%rbp), %rdx
	movq	%rdx, -80(%rbp)
.LBB42_110:                             # %if.end.218
                                        #   in Loop: Header=BB42_107 Depth=3
	jmp	.LBB42_111
.LBB42_111:                             # %for.inc.219
                                        #   in Loop: Header=BB42_107 Depth=3
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB42_107
.LBB42_112:                             # %for.end.221
                                        #   in Loop: Header=BB42_105 Depth=2
	jmp	.LBB42_113
.LBB42_113:                             # %for.inc.222
                                        #   in Loop: Header=BB42_105 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB42_105
.LBB42_114:                             # %for.end.224
                                        #   in Loop: Header=BB42_103 Depth=1
	jmp	.LBB42_115
.LBB42_115:                             # %for.inc.225
                                        #   in Loop: Header=BB42_103 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB42_103
.LBB42_116:                             # %for.end.227
	movl	$2, %eax
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %edx
	subl	-36(%rbp), %edx
	addl	$1, %edx
	movl	%eax, -8464(%rbp)       # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-8464(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, 8(%rdi)
	movl	-44(%rbp), %eax
	movl	-48(%rbp), %ecx
	subl	-44(%rbp), %ecx
	addl	$1, %ecx
	movl	%eax, -8468(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	%esi
	movl	-8468(%rbp), %ecx       # 4-byte Reload
	addl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, 20(%rdi)
	movl	-52(%rbp), %eax
	movl	-56(%rbp), %ecx
	subl	-52(%rbp), %ecx
	addl	$1, %ecx
	movl	%eax, -8472(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	%esi
	movl	-8472(%rbp), %ecx       # 4-byte Reload
	addl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, 32(%rdi)
	cmpl	$0, -60(%rbp)
	je	.LBB42_152
# BB#117:                               # %land.lhs.true
	cmpl	$0, -64(%rbp)
	je	.LBB42_152
# BB#118:                               # %land.lhs.true.240
	cmpl	$0, -68(%rbp)
	je	.LBB42_152
# BB#119:                               # %if.then.242
	movl	$0, -8448(%rbp)
	movl	$0, -8452(%rbp)
	movl	$0, -8456(%rbp)
	movl	-60(%rbp), %eax
	cmpl	-8452(%rbp), %eax
	jl	.LBB42_121
# BB#120:                               # %if.then.245
	movl	-8452(%rbp), %eax
	movl	%eax, -8456(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -8452(%rbp)
	movl	$1, -8448(%rbp)
	jmp	.LBB42_124
.LBB42_121:                             # %if.else
	movl	-60(%rbp), %eax
	cmpl	-8456(%rbp), %eax
	jl	.LBB42_123
# BB#122:                               # %if.then.248
	movl	-60(%rbp), %eax
	movl	%eax, -8456(%rbp)
.LBB42_123:                             # %if.end.249
	jmp	.LBB42_124
.LBB42_124:                             # %if.end.250
	movl	-64(%rbp), %eax
	cmpl	-8452(%rbp), %eax
	jl	.LBB42_126
# BB#125:                               # %if.then.253
	movl	-8452(%rbp), %eax
	movl	%eax, -8456(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -8452(%rbp)
	movl	$3, -8448(%rbp)
	jmp	.LBB42_129
.LBB42_126:                             # %if.else.254
	movl	-64(%rbp), %eax
	cmpl	-8456(%rbp), %eax
	jl	.LBB42_128
# BB#127:                               # %if.then.257
	movl	-64(%rbp), %eax
	movl	%eax, -8456(%rbp)
.LBB42_128:                             # %if.end.258
	jmp	.LBB42_129
.LBB42_129:                             # %if.end.259
	movl	-68(%rbp), %eax
	cmpl	-8452(%rbp), %eax
	jl	.LBB42_131
# BB#130:                               # %if.then.262
	movl	-8452(%rbp), %eax
	movl	%eax, -8456(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -8452(%rbp)
	movl	$2, -8448(%rbp)
	jmp	.LBB42_134
.LBB42_131:                             # %if.else.263
	movl	-68(%rbp), %eax
	cmpl	-8456(%rbp), %eax
	jl	.LBB42_133
# BB#132:                               # %if.then.266
	movl	-68(%rbp), %eax
	movl	%eax, -8456(%rbp)
.LBB42_133:                             # %if.end.267
	jmp	.LBB42_134
.LBB42_134:                             # %if.end.268
	cmpl	$0, -8456(%rbp)
	jne	.LBB42_136
# BB#135:                               # %if.then.271
	movl	$1, -8456(%rbp)
.LBB42_136:                             # %if.end.272
	movl	$2, %eax
	movl	-8452(%rbp), %ecx
	movl	-8456(%rbp), %edx
	movl	%eax, -8476(%rbp)       # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-8476(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	movl	%ecx, %eax
	cltd
	idivl	-8456(%rbp)
	movl	%eax, -8460(%rbp)
	movl	-8460(%rbp), %eax
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jle	.LBB42_138
# BB#137:                               # %if.then.279
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8460(%rbp)
.LBB42_138:                             # %if.end.281
	cmpl	$2, -8460(%rbp)
	jle	.LBB42_151
# BB#139:                               # %if.then.284
	movl	-8448(%rbp), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -8480(%rbp)       # 4-byte Spill
	movl	%ecx, -8484(%rbp)       # 4-byte Spill
	je	.LBB42_140
	jmp	.LBB42_159
.LBB42_159:                             # %if.then.284
	movl	-8480(%rbp), %eax       # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -8488(%rbp)       # 4-byte Spill
	je	.LBB42_146
	jmp	.LBB42_160
.LBB42_160:                             # %if.then.284
	movl	-8480(%rbp), %eax       # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -8492(%rbp)       # 4-byte Spill
	je	.LBB42_143
	jmp	.LBB42_149
.LBB42_140:                             # %sw.bb
	movl	$2, %eax
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %edx
	subl	-36(%rbp), %edx
	movl	-8460(%rbp), %esi
	movl	%eax, -8496(%rbp)       # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -8500(%rbp)       # 4-byte Spill
	cltd
	movl	-8496(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movl	-8500(%rbp), %edi       # 4-byte Reload
	addl	%eax, %edi
	movl	%edi, %eax
	cltd
	idivl	-8460(%rbp)
	addl	%eax, %ecx
	cmpl	-40(%rbp), %ecx
	jge	.LBB42_142
# BB#141:                               # %if.then.292
	movl	$2, %eax
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %edx
	subl	-36(%rbp), %edx
	movl	-8460(%rbp), %esi
	movl	%eax, -8504(%rbp)       # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -8508(%rbp)       # 4-byte Spill
	cltd
	movl	-8504(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movl	-8508(%rbp), %edi       # 4-byte Reload
	addl	%eax, %edi
	movl	%edi, %eax
	cltd
	idivl	-8460(%rbp)
	addl	%eax, %ecx
	movq	-16(%rbp), %r8
	movl	%ecx, 8(%r8)
.LBB42_142:                             # %if.end.299
	jmp	.LBB42_150
.LBB42_143:                             # %sw.bb.300
	movl	$2, %eax
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %edx
	subl	-44(%rbp), %edx
	movl	-8460(%rbp), %esi
	movl	%eax, -8512(%rbp)       # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -8516(%rbp)       # 4-byte Spill
	cltd
	movl	-8512(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movl	-8516(%rbp), %edi       # 4-byte Reload
	addl	%eax, %edi
	movl	%edi, %eax
	cltd
	idivl	-8460(%rbp)
	addl	%eax, %ecx
	cmpl	-48(%rbp), %ecx
	jge	.LBB42_145
# BB#144:                               # %if.then.308
	movl	$2, %eax
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %edx
	subl	-44(%rbp), %edx
	movl	-8460(%rbp), %esi
	movl	%eax, -8520(%rbp)       # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -8524(%rbp)       # 4-byte Spill
	cltd
	movl	-8520(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movl	-8524(%rbp), %edi       # 4-byte Reload
	addl	%eax, %edi
	movl	%edi, %eax
	cltd
	idivl	-8460(%rbp)
	addl	%eax, %ecx
	movq	-16(%rbp), %r8
	movl	%ecx, 20(%r8)
.LBB42_145:                             # %if.end.315
	jmp	.LBB42_150
.LBB42_146:                             # %sw.bb.316
	movl	$2, %eax
	movl	-52(%rbp), %ecx
	movl	-56(%rbp), %edx
	subl	-52(%rbp), %edx
	movl	-8460(%rbp), %esi
	movl	%eax, -8528(%rbp)       # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -8532(%rbp)       # 4-byte Spill
	cltd
	movl	-8528(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movl	-8532(%rbp), %edi       # 4-byte Reload
	addl	%eax, %edi
	movl	%edi, %eax
	cltd
	idivl	-8460(%rbp)
	addl	%eax, %ecx
	cmpl	-56(%rbp), %ecx
	jge	.LBB42_148
# BB#147:                               # %if.then.324
	movl	$2, %eax
	movl	-52(%rbp), %ecx
	movl	-56(%rbp), %edx
	subl	-52(%rbp), %edx
	movl	-8460(%rbp), %esi
	movl	%eax, -8536(%rbp)       # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -8540(%rbp)       # 4-byte Spill
	cltd
	movl	-8536(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movl	-8540(%rbp), %edi       # 4-byte Reload
	addl	%eax, %edi
	movl	%edi, %eax
	cltd
	idivl	-8460(%rbp)
	addl	%eax, %ecx
	movq	-16(%rbp), %r8
	movl	%ecx, 32(%r8)
.LBB42_148:                             # %if.end.331
	jmp	.LBB42_150
.LBB42_149:                             # %sw.default
	movabsq	$.L.str.19, %rdi
	movb	$0, %al
	callq	g_warning
.LBB42_150:                             # %sw.epilog
	jmp	.LBB42_151
.LBB42_151:                             # %if.end.332
	jmp	.LBB42_152
.LBB42_152:                             # %if.end.333
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	cmpl	-40(%rbp), %ecx
	jne	.LBB42_154
# BB#153:                               # %if.then.337
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 8(%rcx)
.LBB42_154:                             # %if.end.339
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	cmpl	-48(%rbp), %ecx
	jne	.LBB42_156
# BB#155:                               # %if.then.343
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 20(%rcx)
.LBB42_156:                             # %if.end.345
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	cmpl	-56(%rbp), %ecx
	jne	.LBB42_158
# BB#157:                               # %if.then.349
	movl	-52(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 32(%rcx)
.LBB42_158:                             # %if.end.351
	movq	-80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 40(%rcx)
	addq	$8544, %rsp             # imm = 0x2160
	popq	%rbp
	retq
.Lfunc_end42:
	.size	update_box_rgb, .Lfunc_end42-update_box_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	median_cut_rgb,@function
median_cut_rgb:                         # @median_cut_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp142:
	.cfi_def_cfa_offset 16
.Ltmp143:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp144:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
.LBB43_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB43_43
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB43_1 Depth=1
	leaq	-60(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %ecx
	callq	find_split_candidate
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB43_4
# BB#3:                                 # %if.then
	jmp	.LBB43_43
.LBB43_4:                               # %if.end
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movq	%rdx, -56(%rbp)
	movq	-48(%rbp), %rdx
	movl	4(%rdx), %esi
	movl	%esi, 4(%rax,%rcx)
	movq	-48(%rbp), %rax
	movl	16(%rax), %esi
	movq	-56(%rbp), %rax
	movl	%esi, 16(%rax)
	movq	-48(%rbp), %rax
	movl	28(%rax), %esi
	movq	-56(%rbp), %rax
	movl	%esi, 28(%rax)
	movq	-48(%rbp), %rax
	movl	(%rax), %esi
	movq	-56(%rbp), %rax
	movl	%esi, (%rax)
	movq	-48(%rbp), %rax
	movl	12(%rax), %esi
	movq	-56(%rbp), %rax
	movl	%esi, 12(%rax)
	movq	-48(%rbp), %rax
	movl	24(%rax), %esi
	movq	-56(%rbp), %rax
	movl	%esi, 24(%rax)
	movl	-60(%rbp), %esi
	movl	%esi, %edi
	subl	$1, %edi
	movl	%esi, -64(%rbp)         # 4-byte Spill
	movl	%edi, -68(%rbp)         # 4-byte Spill
	je	.LBB43_5
	jmp	.LBB43_44
.LBB43_44:                              # %if.end
                                        #   in Loop: Header=BB43_1 Depth=1
	movl	-64(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB43_27
	jmp	.LBB43_45
.LBB43_45:                              # %if.end
                                        #   in Loop: Header=BB43_1 Depth=1
	movl	-64(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB43_16
	jmp	.LBB43_38
.LBB43_5:                               # %sw.bb
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-48(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movl	-36(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 4(%rax)
	movl	-36(%rbp), %ecx
	addl	$1, %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, (%rax)
# BB#6:                                 # %do.body
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-48(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-48(%rbp), %rax
	cmpl	(%rax), %ecx
	jl	.LBB43_8
# BB#7:                                 # %if.then.13
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_9
.LBB43_8:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L.str.21, %rsi
	movl	$2025, %edx             # imm = 0x7E9
	movabsq	$.L__func__.median_cut_rgb, %rcx
	movabsq	$.L.str.22, %r8
	callq	g_assertion_message_expr
.LBB43_9:                               # %if.end.14
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_10
.LBB43_10:                              # %do.end
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_11
.LBB43_11:                              # %do.body.15
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-56(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-56(%rbp), %rax
	cmpl	(%rax), %ecx
	jl	.LBB43_13
# BB#12:                                # %if.then.19
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_14
.LBB43_13:                              # %if.else.20
	movabsq	$.L.str, %rdi
	movabsq	$.L.str.21, %rsi
	movl	$2026, %edx             # imm = 0x7EA
	movabsq	$.L__func__.median_cut_rgb, %rcx
	movabsq	$.L.str.23, %r8
	callq	g_assertion_message_expr
.LBB43_14:                              # %if.end.21
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_15
.LBB43_15:                              # %do.end.22
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_39
.LBB43_16:                              # %sw.bb.23
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-48(%rbp), %rax
	movl	20(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movl	-36(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 16(%rax)
	movl	-36(%rbp), %ecx
	addl	$1, %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 12(%rax)
# BB#17:                                # %do.body.27
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-48(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-48(%rbp), %rax
	cmpl	12(%rax), %ecx
	jl	.LBB43_19
# BB#18:                                # %if.then.31
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_20
.LBB43_19:                              # %if.else.32
	movabsq	$.L.str, %rdi
	movabsq	$.L.str.21, %rsi
	movl	$2032, %edx             # imm = 0x7F0
	movabsq	$.L__func__.median_cut_rgb, %rcx
	movabsq	$.L.str.24, %r8
	callq	g_assertion_message_expr
.LBB43_20:                              # %if.end.33
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_21
.LBB43_21:                              # %do.end.34
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_22
.LBB43_22:                              # %do.body.35
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-56(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-56(%rbp), %rax
	cmpl	12(%rax), %ecx
	jl	.LBB43_24
# BB#23:                                # %if.then.39
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_25
.LBB43_24:                              # %if.else.40
	movabsq	$.L.str, %rdi
	movabsq	$.L.str.21, %rsi
	movl	$2033, %edx             # imm = 0x7F1
	movabsq	$.L__func__.median_cut_rgb, %rcx
	movabsq	$.L.str.25, %r8
	callq	g_assertion_message_expr
.LBB43_25:                              # %if.end.41
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_26
.LBB43_26:                              # %do.end.42
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_39
.LBB43_27:                              # %sw.bb.43
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-48(%rbp), %rax
	movl	32(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movl	-36(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 28(%rax)
	movl	-36(%rbp), %ecx
	addl	$1, %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 24(%rax)
# BB#28:                                # %do.body.47
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-48(%rbp), %rax
	movl	28(%rax), %ecx
	movq	-48(%rbp), %rax
	cmpl	24(%rax), %ecx
	jl	.LBB43_30
# BB#29:                                # %if.then.51
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_31
.LBB43_30:                              # %if.else.52
	movabsq	$.L.str, %rdi
	movabsq	$.L.str.21, %rsi
	movl	$2039, %edx             # imm = 0x7F7
	movabsq	$.L__func__.median_cut_rgb, %rcx
	movabsq	$.L.str.26, %r8
	callq	g_assertion_message_expr
.LBB43_31:                              # %if.end.53
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_32
.LBB43_32:                              # %do.end.54
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_33
.LBB43_33:                              # %do.body.55
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-56(%rbp), %rax
	movl	28(%rax), %ecx
	movq	-56(%rbp), %rax
	cmpl	24(%rax), %ecx
	jl	.LBB43_35
# BB#34:                                # %if.then.59
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_36
.LBB43_35:                              # %if.else.60
	movabsq	$.L.str, %rdi
	movabsq	$.L.str.21, %rsi
	movl	$2040, %edx             # imm = 0x7F8
	movabsq	$.L__func__.median_cut_rgb, %rcx
	movabsq	$.L.str.27, %r8
	callq	g_assertion_message_expr
.LBB43_36:                              # %if.end.61
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_37
.LBB43_37:                              # %do.end.62
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_39
.LBB43_38:                              # %sw.default
                                        #   in Loop: Header=BB43_1 Depth=1
	movabsq	$.L.str.28, %rdi
	movb	$0, %al
	callq	g_error
.LBB43_39:                              # %sw.epilog
                                        #   in Loop: Header=BB43_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB43_42
# BB#40:                                # %land.lhs.true
                                        #   in Loop: Header=BB43_1 Depth=1
	movl	$16, %eax
	movl	-20(%rbp), %ecx
	movl	%eax, -80(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-80(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB43_42
# BB#41:                                # %if.then.64
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-32(%rbp), %rdi
	cvtsi2sdl	-20(%rbp), %xmm0
	cvtsi2sdl	-24(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_set_value
.LBB43_42:                              # %if.end.66
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-24(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, %edx
	callq	update_box_rgb
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movl	-24(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, %edx
	callq	update_box_rgb
	jmp	.LBB43_1
.LBB43_43:                              # %while.end
	movl	-20(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	median_cut_rgb, .Lfunc_end43-median_cut_rgb
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI44_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI44_1:
	.quad	4841369599423283200     # double 4.503600e+15
	.quad	4985484787499139072     # double 1.934281e+25
	.text
	.align	16, 0x90
	.type	compute_color_rgb,@function
compute_color_rgb:                      # @compute_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp145:
	.cfi_def_cfa_offset 16
.Ltmp146:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp147:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	-24(%rbp), %rdx
	movl	(%rdx), %ecx
	movl	%ecx, -44(%rbp)
	movq	-24(%rbp), %rdx
	movl	4(%rdx), %ecx
	movl	%ecx, -48(%rbp)
	movq	-24(%rbp), %rdx
	movl	12(%rdx), %ecx
	movl	%ecx, -52(%rbp)
	movq	-24(%rbp), %rdx
	movl	16(%rdx), %ecx
	movl	%ecx, -56(%rbp)
	movq	-24(%rbp), %rdx
	movl	24(%rdx), %ecx
	movl	%ecx, -60(%rbp)
	movq	-24(%rbp), %rdx
	movl	28(%rdx), %ecx
	movl	%ecx, -64(%rbp)
	movl	-44(%rbp), %ecx
	movl	%ecx, -32(%rbp)
.LBB44_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB44_3 Depth 2
                                        #       Child Loop BB44_5 Depth 3
	movl	-32(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jg	.LBB44_14
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB44_3:                               # %for.cond.7
                                        #   Parent Loop BB44_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB44_5 Depth 3
	movl	-36(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jg	.LBB44_12
# BB#4:                                 # %for.body.9
                                        #   in Loop: Header=BB44_3 Depth=2
	movl	-60(%rbp), %eax
	movl	%eax, -40(%rbp)
.LBB44_5:                               # %for.cond.10
                                        #   Parent Loop BB44_1 Depth=1
                                        #     Parent Loop BB44_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-40(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jg	.LBB44_10
# BB#6:                                 # %for.body.12
                                        #   in Loop: Header=BB44_5 Depth=3
	movq	-16(%rbp), %rdi
	movl	-32(%rbp), %esi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	callq	HIST_LIN
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB44_8
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB44_5 Depth=3
	movq	-104(%rbp), %rax
	addq	-72(%rbp), %rax
	movq	%rax, -72(%rbp)
	movslq	-32(%rbp), %rax
	imulq	-104(%rbp), %rax
	addq	-80(%rbp), %rax
	movq	%rax, -80(%rbp)
	movslq	-36(%rbp), %rax
	imulq	-104(%rbp), %rax
	addq	-88(%rbp), %rax
	movq	%rax, -88(%rbp)
	movslq	-40(%rbp), %rax
	imulq	-104(%rbp), %rax
	addq	-96(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB44_8:                               # %if.end
                                        #   in Loop: Header=BB44_5 Depth=3
	jmp	.LBB44_9
.LBB44_9:                               # %for.inc
                                        #   in Loop: Header=BB44_5 Depth=3
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB44_5
.LBB44_10:                              # %for.end
                                        #   in Loop: Header=BB44_3 Depth=2
	jmp	.LBB44_11
.LBB44_11:                              # %for.inc.21
                                        #   in Loop: Header=BB44_3 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB44_3
.LBB44_12:                              # %for.end.23
                                        #   in Loop: Header=BB44_1 Depth=1
	jmp	.LBB44_13
.LBB44_13:                              # %for.inc.24
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB44_1
.LBB44_14:                              # %for.end.26
	cmpq	$0, -72(%rbp)
	jbe	.LBB44_16
# BB#15:                                # %if.then.29
	leaq	-105(%rbp), %rdi
	leaq	-106(%rbp), %rsi
	leaq	-107(%rbp), %rdx
	movq	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movaps	.LCPI44_0(%rip), %xmm1  # xmm1 = [1127219200,1160773632,0,0]
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movapd	.LCPI44_1(%rip), %xmm2  # xmm2 = [4.503600e+15,1.934281e+25]
	subpd	%xmm2, %xmm0
	pshufd	$78, %xmm0, %xmm3       # xmm3 = xmm0[2,3,0,1]
	addpd	%xmm0, %xmm3
	movq	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	subpd	%xmm2, %xmm0
	pshufd	$78, %xmm0, %xmm4       # xmm4 = xmm0[2,3,0,1]
	addpd	%xmm0, %xmm4
	divsd	%xmm4, %xmm3
	movq	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	subpd	%xmm2, %xmm0
	pshufd	$78, %xmm0, %xmm5       # xmm5 = xmm0[2,3,0,1]
	addpd	%xmm0, %xmm5
	divsd	%xmm4, %xmm5
	movq	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	subpd	%xmm2, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	addpd	%xmm0, %xmm1
	divsd	%xmm4, %xmm1
	movaps	%xmm3, %xmm0
	movsd	%xmm1, -120(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm1
	movsd	-120(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	lin_to_rgb
	movzbl	-105(%rbp), %eax
	movslq	-28(%rbp), %rdx
	movq	-8(%rbp), %rsi
	addq	$40, %rsi
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rsi
	movl	%eax, (%rsi)
	movzbl	-106(%rbp), %eax
	movslq	-28(%rbp), %rdx
	movq	-8(%rbp), %rsi
	addq	$40, %rsi
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rsi
	movl	%eax, 4(%rsi)
	movzbl	-107(%rbp), %eax
	movslq	-28(%rbp), %rdx
	movq	-8(%rbp), %rsi
	addq	$40, %rsi
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rsi
	movl	%eax, 8(%rsi)
	jmp	.LBB44_17
.LBB44_16:                              # %if.else
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$40, %rcx
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movl	$0, 8(%rcx)
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$40, %rcx
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movl	$0, 4(%rcx)
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$40, %rcx
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movl	$0, (%rcx)
.LBB44_17:                              # %if.end.62
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	compute_color_rgb, .Lfunc_end44-compute_color_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	compute_color_lin8,@function
compute_color_lin8:                     # @compute_color_lin8
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	-24(%rbp), %rdx
	movl	(%rdx), %ecx
	movl	%ecx, -44(%rbp)
	movq	-24(%rbp), %rdx
	movl	4(%rdx), %ecx
	movl	%ecx, -48(%rbp)
	movq	-24(%rbp), %rdx
	movl	12(%rdx), %ecx
	movl	%ecx, -52(%rbp)
	movq	-24(%rbp), %rdx
	movl	16(%rdx), %ecx
	movl	%ecx, -56(%rbp)
	movq	-24(%rbp), %rdx
	movl	24(%rdx), %ecx
	movl	%ecx, -60(%rbp)
	movq	-24(%rbp), %rdx
	movl	28(%rdx), %ecx
	movl	%ecx, -64(%rbp)
	movl	-44(%rbp), %ecx
	movl	%ecx, -32(%rbp)
.LBB45_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB45_3 Depth 2
                                        #       Child Loop BB45_5 Depth 3
	movl	-32(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jg	.LBB45_14
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB45_1 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB45_3:                               # %for.cond.7
                                        #   Parent Loop BB45_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB45_5 Depth 3
	movl	-36(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jg	.LBB45_12
# BB#4:                                 # %for.body.9
                                        #   in Loop: Header=BB45_3 Depth=2
	movl	-60(%rbp), %eax
	movl	%eax, -40(%rbp)
.LBB45_5:                               # %for.cond.10
                                        #   Parent Loop BB45_1 Depth=1
                                        #     Parent Loop BB45_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-40(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jg	.LBB45_10
# BB#6:                                 # %for.body.12
                                        #   in Loop: Header=BB45_5 Depth=3
	movq	-16(%rbp), %rdi
	movl	-32(%rbp), %esi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	callq	HIST_LIN
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB45_8
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB45_5 Depth=3
	movslq	-32(%rbp), %rax
	imulq	-104(%rbp), %rax
	addq	-80(%rbp), %rax
	movq	%rax, -80(%rbp)
	movslq	-36(%rbp), %rax
	imulq	-104(%rbp), %rax
	addq	-88(%rbp), %rax
	movq	%rax, -88(%rbp)
	movslq	-40(%rbp), %rax
	imulq	-104(%rbp), %rax
	addq	-96(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-104(%rbp), %rax
	addq	-72(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB45_8:                               # %if.end
                                        #   in Loop: Header=BB45_5 Depth=3
	jmp	.LBB45_9
.LBB45_9:                               # %for.inc
                                        #   in Loop: Header=BB45_5 Depth=3
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB45_5
.LBB45_10:                              # %for.end
                                        #   in Loop: Header=BB45_3 Depth=2
	jmp	.LBB45_11
.LBB45_11:                              # %for.inc.21
                                        #   in Loop: Header=BB45_3 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB45_3
.LBB45_12:                              # %for.end.23
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_13
.LBB45_13:                              # %for.inc.24
                                        #   in Loop: Header=BB45_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB45_1
.LBB45_14:                              # %for.end.26
	cmpq	$0, -72(%rbp)
	je	.LBB45_16
# BB#15:                                # %if.then.29
	movq	-80(%rbp), %rax
	shlq	$0, %rax
	movq	-72(%rbp), %rcx
	shrq	$1, %rcx
	addq	%rcx, %rax
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	-72(%rbp)
	movl	%eax, %esi
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$40, %rcx
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movl	%esi, (%rcx)
	movq	-88(%rbp), %rax
	shlq	$2, %rax
	movq	-72(%rbp), %rcx
	shrq	$1, %rcx
	addq	%rcx, %rax
	xorl	%esi, %esi
	movl	%esi, %edx
	divq	-72(%rbp)
	movl	%eax, %esi
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$40, %rcx
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movl	%esi, 4(%rcx)
	movq	-96(%rbp), %rax
	shlq	$2, %rax
	movq	-72(%rbp), %rcx
	shrq	$1, %rcx
	addq	%rcx, %rax
	xorl	%esi, %esi
	movl	%esi, %edx
	divq	-72(%rbp)
	movl	%eax, %esi
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$40, %rcx
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movl	%esi, 8(%rcx)
	jmp	.LBB45_17
.LBB45_16:                              # %if.else
	movabsq	$.L.str.20, %rdi
	movb	$0, %al
	callq	g_warning
	movslq	-28(%rbp), %rdi
	movq	-8(%rbp), %rcx
	addq	$40, %rcx
	imulq	$12, %rdi, %rdi
	addq	%rdi, %rcx
	movl	$0, (%rcx)
	movslq	-28(%rbp), %rcx
	movq	-8(%rbp), %rdi
	addq	$40, %rdi
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rdi
	movl	$128, 4(%rdi)
	movslq	-28(%rbp), %rcx
	movq	-8(%rbp), %rdi
	addq	$40, %rdi
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rdi
	movl	$128, 8(%rdi)
.LBB45_17:                              # %if.end.60
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	compute_color_lin8, .Lfunc_end45-compute_color_lin8
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI46_0:
	.quad	4607182418800017408     # double 1
.LCPI46_1:
	.quad	4604947549593475000     # double 0.75187967498708641
.LCPI46_2:
	.quad	4613937818241073152     # double 3
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI46_3:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI46_4:
	.quad	4841369599423283200     # double 4.503600e+15
	.quad	4985484787499139072     # double 1.934281e+25
	.text
	.align	16, 0x90
	.type	find_split_candidate,@function
find_split_candidate:                   # @find_split_candidate
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
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movsd	%xmm0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	-24(%rbp), %rdx
	movl	$0, (%rdx)
	cmpl	$16, -28(%rbp)
	jg	.LBB46_5
# BB#1:                                 # %if.then
	cmpl	$2, -12(%rbp)
	jle	.LBB46_3
# BB#2:                                 # %cond.true
	movsd	.LCPI46_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	jmp	.LBB46_4
.LBB46_3:                               # %cond.false
	movsd	.LCPI46_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI46_2, %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	-12(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -104(%rbp)       # 8-byte Spill
.LBB46_4:                               # %cond.end
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
	jmp	.LBB46_6
.LBB46_5:                               # %if.else
	movsd	.LCPI46_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
.LBB46_6:                               # %if.end
	movl	$0, -44(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB46_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB46_21
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB46_7 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$0, 36(%rax)
	jle	.LBB46_19
# BB#9:                                 # %if.then.6
                                        #   in Loop: Header=BB46_7 Depth=1
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	imulq	$169, %rax, %rax
	movd	%rax, %xmm0
	movaps	.LCPI46_3(%rip), %xmm1  # xmm1 = [1127219200,1160773632,0,0]
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movapd	.LCPI46_4(%rip), %xmm2  # xmm2 = [4.503600e+15,1.934281e+25]
	subpd	%xmm2, %xmm0
	pshufd	$78, %xmm0, %xmm3       # xmm3 = xmm0[2,3,0,1]
	addpd	%xmm0, %xmm3
	movlpd	%xmm3, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	shlq	$6, %rax
	leaq	(%rax,%rax,8), %rax
	movd	%rax, %xmm0
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	subpd	%xmm2, %xmm0
	pshufd	$78, %xmm0, %xmm3       # xmm3 = xmm0[2,3,0,1]
	addpd	%xmm0, %xmm3
	movlpd	%xmm3, -88(%rbp)
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	imulq	$676, %rax, %rax        # imm = 0x2A4
	movd	%rax, %xmm0
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	subpd	%xmm2, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	addpd	%xmm0, %xmm1
	movsd	%xmm1, -96(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-80(%rbp), %xmm0
	ucomisd	-56(%rbp), %xmm0
	jbe	.LBB46_12
# BB#10:                                # %land.lhs.true
                                        #   in Loop: Header=BB46_7 Depth=1
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	movq	-40(%rbp), %rax
	cmpl	4(%rax), %ecx
	jge	.LBB46_12
# BB#11:                                # %if.then.20
                                        #   in Loop: Header=BB46_7 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-80(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
.LBB46_12:                              # %if.end.22
                                        #   in Loop: Header=BB46_7 Depth=1
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-56(%rbp), %xmm0
	jbe	.LBB46_15
# BB#13:                                # %land.lhs.true.25
                                        #   in Loop: Header=BB46_7 Depth=1
	movq	-40(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-40(%rbp), %rax
	cmpl	16(%rax), %ecx
	jge	.LBB46_15
# BB#14:                                # %if.then.28
                                        #   in Loop: Header=BB46_7 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movq	-24(%rbp), %rax
	movl	$3, (%rax)
.LBB46_15:                              # %if.end.29
                                        #   in Loop: Header=BB46_7 Depth=1
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-56(%rbp), %xmm0
	jbe	.LBB46_18
# BB#16:                                # %land.lhs.true.32
                                        #   in Loop: Header=BB46_7 Depth=1
	movq	-40(%rbp), %rax
	movl	24(%rax), %ecx
	movq	-40(%rbp), %rax
	cmpl	28(%rax), %ecx
	jge	.LBB46_18
# BB#17:                                # %if.then.35
                                        #   in Loop: Header=BB46_7 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movq	-24(%rbp), %rax
	movl	$2, (%rax)
.LBB46_18:                              # %if.end.36
                                        #   in Loop: Header=BB46_7 Depth=1
	jmp	.LBB46_19
.LBB46_19:                              # %if.end.37
                                        #   in Loop: Header=BB46_7 Depth=1
	jmp	.LBB46_20
.LBB46_20:                              # %for.inc
                                        #   in Loop: Header=BB46_7 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rcx
	addq	$80, %rcx
	movq	%rcx, -40(%rbp)
	jmp	.LBB46_7
.LBB46_21:                              # %for.end
	movq	-64(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end46:
	.size	find_split_candidate, .Lfunc_end46-find_split_candidate
	.cfi_endproc

	.align	16, 0x90
	.type	g_error,@function
g_error:                                # @g_error
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
	je	.LBB47_3
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
.LBB47_3:                               # %entry
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
	movabsq	$.L.str, %rdi
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
.LBB47_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB47_1
.Lfunc_end47:
	.size	g_error, .Lfunc_end47-g_error
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI48_0:
	.quad	4643176031446892544     # double 255
.LCPI48_1:
	.quad	-4586081787788132352    # double -107.85800170898438
.LCPI48_2:
	.quad	4608354558861639680     # double 1.2602673768997192
.LCPI48_3:
	.quad	-4587607171193110528    # double -86.180999755859375
.LCPI48_4:
	.quad	4608906074001506304     # double 1.3827283382415771
.LCPI48_5:
	.quad	4612924508217540608     # double 2.5499999523162842
.LCPI48_6:
	.quad	4634063279075885056     # double 63
	.text
	.align	16, 0x90
	.type	lin_to_rgb,@function
lin_to_rgb:                             # @lin_to_rgb
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
	subq	$160, %rsp
	leaq	-56(%rbp), %rax
	leaq	-64(%rbp), %rcx
	leaq	-72(%rbp), %r8
	movsd	.LCPI48_1, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI48_2, %xmm4        # xmm4 = mem[0],zero
	movsd	.LCPI48_3, %xmm5        # xmm5 = mem[0],zero
	movsd	.LCPI48_4, %xmm6        # xmm6 = mem[0],zero
	movsd	.LCPI48_5, %xmm7        # xmm7 = mem[0],zero
	movsd	.LCPI48_6, %xmm8        # xmm8 = mem[0],zero
	movsd	.LCPI48_0, %xmm9        # xmm9 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movaps	%xmm9, %xmm0
	mulsd	-8(%rbp), %xmm0
	divsd	%xmm9, %xmm0
	movsd	%xmm0, -80(%rbp)
	movaps	%xmm9, %xmm0
	mulsd	-16(%rbp), %xmm0
	divsd	%xmm8, %xmm0
	movsd	%xmm0, -88(%rbp)
	mulsd	-24(%rbp), %xmm9
	divsd	%xmm8, %xmm9
	movsd	%xmm9, -96(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	%xmm7, %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	%xmm6, %xmm0
	addsd	%xmm5, %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	%xmm4, %xmm0
	addsd	%xmm3, %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%r8, %rdx
	callq	cpercep_space_to_rgb
	movsd	.LCPI48_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB48_2
# BB#1:                                 # %cond.true
	movsd	.LCPI48_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	jmp	.LBB48_6
.LBB48_2:                               # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-56(%rbp), %xmm0
	jbe	.LBB48_4
# BB#3:                                 # %cond.true.10
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	jmp	.LBB48_5
.LBB48_4:                               # %cond.false.11
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
.LBB48_5:                               # %cond.end
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
.LBB48_6:                               # %cond.end.12
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI48_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -120(%rbp)       # 8-byte Spill
	callq	rint
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movb	%cl, (%rdx)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB48_8
# BB#7:                                 # %cond.true.16
	movsd	.LCPI48_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	jmp	.LBB48_12
.LBB48_8:                               # %cond.false.17
	xorps	%xmm0, %xmm0
	ucomisd	-64(%rbp), %xmm0
	jbe	.LBB48_10
# BB#9:                                 # %cond.true.20
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	jmp	.LBB48_11
.LBB48_10:                              # %cond.false.21
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
.LBB48_11:                              # %cond.end.22
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
.LBB48_12:                              # %cond.end.24
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI48_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -144(%rbp)       # 8-byte Spill
	callq	rint
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movb	%cl, (%rdx)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB48_14
# BB#13:                                # %cond.true.30
	movsd	.LCPI48_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	jmp	.LBB48_18
.LBB48_14:                              # %cond.false.31
	xorps	%xmm0, %xmm0
	ucomisd	-72(%rbp), %xmm0
	jbe	.LBB48_16
# BB#15:                                # %cond.true.34
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	jmp	.LBB48_17
.LBB48_16:                              # %cond.false.35
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
.LBB48_17:                              # %cond.end.36
	movsd	-160(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
.LBB48_18:                              # %cond.end.38
	movsd	-152(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	rint
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movb	%cl, (%rdx)
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	lin_to_rgb, .Lfunc_end48-lin_to_rgb
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_image_convert,@object # @__func__.gimp_image_convert
.L__func__.gimp_image_convert:
	.asciz	"gimp_image_convert"
	.size	.L__func__.gimp_image_convert, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"new_type != gimp_image_base_type (image)"
	.size	.L.str.2, 41

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"progress == NULL || GIMP_IS_PROGRESS (progress)"
	.size	.L.str.3, 48

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.4, 32

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"custom_palette == NULL || GIMP_IS_PALETTE (custom_palette)"
	.size	.L.str.5, 59

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"custom_palette == NULL || gimp_palette_get_n_colors (custom_palette) <= 256"
	.size	.L.str.6, 76

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Cannot convert image: palette is empty."
	.size	.L.str.7, 40

	.type	theCustomPalette,@object # @theCustomPalette
	.local	theCustomPalette
	.comm	theCustomPalette,8,8
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"undo-type\004Convert Image to RGB"
	.size	.L.str.8, 31

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"undo-type\004Convert Image to Grayscale"
	.size	.L.str.9, 37

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"undo-type\004Convert Image to Indexed"
	.size	.L.str.10, 35

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"base-type"
	.size	.L.str.11, 10

	.type	needs_quantize,@object  # @needs_quantize
	.local	needs_quantize
	.comm	needs_quantize,4,4
	.type	num_found_cols,@object  # @num_found_cols
	.local	num_found_cols
	.comm	num_found_cols,4,4
	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Converting to indexed colors (stage 2)"
	.size	.L.str.12, 39

	.type	found_cols,@object      # @found_cols
	.local	found_cols
	.comm	found_cols,768,16
	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Converting to indexed colors (stage 3)"
	.size	.L.str.13, 39

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"icc-profile"
	.size	.L.str.14, 12

	.type	DM_ORIGINAL,@object     # @DM_ORIGINAL
	.section	.rodata,"a",@progbits
	.align	16
DM_ORIGINAL:
	.ascii	"\001\2770\357\f\313<\373\003\3023\362\017\316?\376\001\3001\360\r\314=\374\004\3034\363\020\317@\377"
	.ascii	"\200@\257p\214L\273|\203C\262s\217O\276\177\200A\260p\214M\274|\203D\263s\217P\277\177"
	.ascii	" \337\020\317,\353\034\333#\342\023\322/\356\037\336!\340\021\320-\354\035\334$\343\024\3230\357 \337"
	.ascii	"\237`\220P\253l\233\\\242c\222S\256o\236_\240a\220Q\254m\234]\243d\223T\257o\237`"
	.ascii	"\b\3078\367\004\3034\363\013\312;\372\007\3067\366\t\3109\370\005\3045\364\f\313<\373\b\3078\367"
	.ascii	"\210H\267x\204D\263t\213K\272{\207G\266w\210I\270x\204E\264t\213L\273{\207H\267w"
	.ascii	"(\347\030\327$\343\024\323+\352\033\332'\346\027\326)\350\031\330%\344\025\324,\353\034\333(\347\030\327"
	.ascii	"\247h\227X\243d\223T\252k\232[\246g\226W\250i\230Y\244e\224U\253l\233\\\247h\227X"
	.ascii	"\002\3012\361\016\315>\375\001\3001\360\r\314=\374\003\3023\362\017\316?\376\002\3012\361\016\315>\375"
	.ascii	"\202B\261r\216N\275~\201A\260q\215M\274}\202C\262r\216O\276~\201B\261q\215N\275}"
	.ascii	"\"\341\022\321.\355\036\335!\340\021\320-\354\035\334#\342\023\322/\356\037\336\"\341\022\321.\355\036\335"
	.ascii	"\241b\222R\255n\235^\240a\221Q\254m\234]\242c\222S\256n\236_\241b\221R\255m\235^"
	.ascii	"\n\311:\371\006\3056\365\t\3109\370\005\3045\364\013\312;\372\007\3067\366\n\311:\371\006\3056\365"
	.ascii	"\212J\271z\206F\265v\211I\270y\205E\264u\212K\272z\206G\266v\211J\271y\205F\265u"
	.ascii	"*\351\032\331&\345\026\325)\350\031\330%\344\025\324+\352\033\332'\346\027\326*\351\032\331&\345\026\325"
	.ascii	"\251j\231Z\245f\225V\250i\230Y\244e\224U\252k\232[\246g\226W\251j\231Z\245f\225V"
	.ascii	"\001\3001\357\r\314=\373\004\3034\362\020\317@\376\001\2770\357\r\313<\373\004\3023\362\020\316?\376"
	.ascii	"\200A\260p\214L\274|\203D\263s\217O\277\177\200@\260p\214L\273|\203C\263s\217O\276\177"
	.ascii	"!\337\021\320-\353\035\333$\342\024\3230\356 \336!\337\021\317,\353\035\333$\342\024\322/\356 \336"
	.ascii	"\240`\220P\254l\234\\\243c\223S\257o\237_\240`\220P\254l\234\\\243c\223S\257o\237_"
	.ascii	"\t\3109\367\005\3045\363\f\313<\372\b\3078\366\t\3078\367\005\3034\363\f\312;\372\b\3067\366"
	.ascii	"\210I\270x\204E\264t\213K\273{\207H\267w\210H\267x\204D\264t\213K\272{\207G\266w"
	.ascii	")\347\031\330%\343\025\324,\352\034\332(\346\030\327(\347\031\327%\343\025\323+\352\034\332'\346\030\326"
	.ascii	"\250h\230X\244d\224T\253k\233[\247g\227W\250h\230X\244d\224T\253k\233[\247g\227W"
	.ascii	"\003\3023\361\017\316?\375\002\3012\360\016\315>\374\003\3012\361\017\315>\375\002\3001\360\016\314=\374"
	.ascii	"\202C\262r\216N\276~\201B\261q\215M\275}\202B\262r\216N\275~\201A\261q\215M\274}"
	.ascii	"#\341\023\322/\355\037\335\"\340\022\321.\354\036\334#\341\023\321.\355\037\335\"\340\022\320-\354\036\334"
	.ascii	"\242b\222R\256n\236^\241a\221Q\255m\235]\242b\222R\256n\236^\241a\221Q\255m\235]"
	.ascii	"\013\312;\371\007\3067\365\n\311:\370\006\3056\364\013\311:\371\007\3056\365\n\3109\370\006\3045\364"
	.ascii	"\212J\272z\206G\266v\211I\271y\205F\265u\212J\271z\206F\266v\211I\270y\205E\265u"
	.ascii	"+\351\033\332'\345\027\326*\350\032\331&\344\026\325*\351\033\331&\345\027\325)\350\032\330%\344\026\324"
	.ascii	"\252j\232Z\246f\226V\251i\231Y\245e\225U\252j\232Z\246f\226V\251i\231Y\245e\225U"
	.size	DM_ORIGINAL, 1024

	.type	.L__func__.gimp_image_convert_set_dither_matrix,@object # @__func__.gimp_image_convert_set_dither_matrix
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.gimp_image_convert_set_dither_matrix:
	.asciz	"gimp_image_convert_set_dither_matrix"
	.size	.L__func__.gimp_image_convert_set_dither_matrix, 37

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"(DM_WIDTH % width) == 0"
	.size	.L.str.15, 24

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"(DM_HEIGHT % height) == 0"
	.size	.L.str.16, 26

	.type	DM,@object              # @DM
	.data
	.align	16
DM:
	.ascii	"\001\2770\357\f\313<\373\003\3023\362\017\316?\376\001\3001\360\r\314=\374\004\3034\363\020\317@\377"
	.ascii	"\200@\257p\214L\273|\203C\262s\217O\276\177\200A\260p\214M\274|\203D\263s\217P\277\177"
	.ascii	" \337\020\317,\353\034\333#\342\023\322/\356\037\336!\340\021\320-\354\035\334$\343\024\3230\357 \337"
	.ascii	"\237`\220P\253l\233\\\242c\222S\256o\236_\240a\220Q\254m\234]\243d\223T\257o\237`"
	.ascii	"\b\3078\367\004\3034\363\013\312;\372\007\3067\366\t\3109\370\005\3045\364\f\313<\373\b\3078\367"
	.ascii	"\210H\267x\204D\263t\213K\272{\207G\266w\210I\270x\204E\264t\213L\273{\207H\267w"
	.ascii	"(\347\030\327$\343\024\323+\352\033\332'\346\027\326)\350\031\330%\344\025\324,\353\034\333(\347\030\327"
	.ascii	"\247h\227X\243d\223T\252k\232[\246g\226W\250i\230Y\244e\224U\253l\233\\\247h\227X"
	.ascii	"\002\3012\361\016\315>\375\001\3001\360\r\314=\374\003\3023\362\017\316?\376\002\3012\361\016\315>\375"
	.ascii	"\202B\261r\216N\275~\201A\260q\215M\274}\202C\262r\216O\276~\201B\261q\215N\275}"
	.ascii	"\"\341\022\321.\355\036\335!\340\021\320-\354\035\334#\342\023\322/\356\037\336\"\341\022\321.\355\036\335"
	.ascii	"\241b\222R\255n\235^\240a\221Q\254m\234]\242c\222S\256n\236_\241b\221R\255m\235^"
	.ascii	"\n\311:\371\006\3056\365\t\3109\370\005\3045\364\013\312;\372\007\3067\366\n\311:\371\006\3056\365"
	.ascii	"\212J\271z\206F\265v\211I\270y\205E\264u\212K\272z\206G\266v\211J\271y\205F\265u"
	.ascii	"*\351\032\331&\345\026\325)\350\031\330%\344\025\324+\352\033\332'\346\027\326*\351\032\331&\345\026\325"
	.ascii	"\251j\231Z\245f\225V\250i\230Y\244e\224U\252k\232[\246g\226W\251j\231Z\245f\225V"
	.ascii	"\001\3001\357\r\314=\373\004\3034\362\020\317@\376\001\2770\357\r\313<\373\004\3023\362\020\316?\376"
	.ascii	"\200A\260p\214L\274|\203D\263s\217O\277\177\200@\260p\214L\273|\203C\263s\217O\276\177"
	.ascii	"!\337\021\320-\353\035\333$\342\024\3230\356 \336!\337\021\317,\353\035\333$\342\024\322/\356 \336"
	.ascii	"\240`\220P\254l\234\\\243c\223S\257o\237_\240`\220P\254l\234\\\243c\223S\257o\237_"
	.ascii	"\t\3109\367\005\3045\363\f\313<\372\b\3078\366\t\3078\367\005\3034\363\f\312;\372\b\3067\366"
	.ascii	"\210I\270x\204E\264t\213K\273{\207H\267w\210H\267x\204D\264t\213K\272{\207G\266w"
	.ascii	")\347\031\330%\343\025\324,\352\034\332(\346\030\327(\347\031\327%\343\025\323+\352\034\332'\346\030\326"
	.ascii	"\250h\230X\244d\224T\253k\233[\247g\227W\250h\230X\244d\224T\253k\233[\247g\227W"
	.ascii	"\003\3023\361\017\316?\375\002\3012\360\016\315>\374\003\3012\361\017\315>\375\002\3001\360\016\314=\374"
	.ascii	"\202C\262r\216N\276~\201B\261q\215M\275}\202B\262r\216N\275~\201A\261q\215M\274}"
	.ascii	"#\341\023\322/\355\037\335\"\340\022\321.\354\036\334#\341\023\321.\355\037\335\"\340\022\320-\354\036\334"
	.ascii	"\242b\222R\256n\236^\241a\221Q\255m\235]\242b\222R\256n\236^\241a\221Q\255m\235]"
	.ascii	"\013\312;\371\007\3067\365\n\311:\370\006\3056\364\013\311:\371\007\3056\365\n\3109\370\006\3045\364"
	.ascii	"\212J\272z\206G\266v\211I\271y\205F\265u\212J\271z\206F\266v\211I\270y\205E\265u"
	.ascii	"+\351\033\332'\345\027\326*\350\032\331&\344\026\325*\351\033\331&\345\027\325)\350\032\330%\344\026\324"
	.ascii	"\252j\232Z\246f\226V\251i\231Y\245e\225U\252j\232Z\246f\226V\251i\231Y\245e\225U"
	.size	DM, 1024

	.type	.L.str.17,@object       # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"Uh-oh, bad dither type, W1"
	.size	.L.str.17, 27

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Uh-oh, bad dither type, W2"
	.size	.L.str.18, 27

	.type	webpal,@object          # @webpal
	.section	.rodata,"a",@progbits
	.align	16
webpal:
	.asciz	"\377\377\377\377\377\314\377\377\231\377\377f\377\3773\377\377\000\377\314\377\377\314\314\377\314\231\377\314f\377\3143\377\314\000\377\231\377\377\231\314\377\231\231\377\231f\377\2313\377\231\000\377f\377\377f\314\377f\231\377ff\377f3\377f\000\3773\377\3773\314\3773\231\3773f\37733\3773\000\377\000\377\377\000\314\377\000\231\377\000f\377\0003\377\000\000\314\377\377\314\377\314\314\377\231\314\377f\314\3773\314\377\000\314\314\377\314\314\314\314\314\231\314\314f\314\3143\314\314\000\314\231\377\314\231\314\314\231\231\314\231f\314\2313\314\231\000\314f\377\314f\314\314f\231\314ff\314f3\314f\000\3143\377\3143\314\3143\231\3143f\31433\3143\000\314\000\377\314\000\314\314\000\231\314\000f\314\0003\314\000\000\231\377\377\231\377\314\231\377\231\231\377f\231\3773\231\377\000\231\314\377\231\314\314\231\314\231\231\314f\231\3143\231\314\000\231\231\377\231\231\314\231\231\231\231\231f\231\2313\231\231\000\231f\377\231f\314\231f\231\231ff\231f3\231f\000\2313\377\2313\314\2313\231\2313f\23133\2313\000\231\000\377\231\000\314\231\000\231\231\000f\231\0003\231\000\000f\377\377f\377\314f\377\231f\377ff\3773f\377\000f\314\377f\314\314f\314\231f\314ff\3143f\314\000f\231\377f\231\314f\231\231f\231ff\2313f\231\000ff\377ff\314ff\231fffff3ff\000f3\377f3\314f3\231f3ff33f3\000f\000\377f\000\314f\000\231f\000ff\0003f\000\0003\377\3773\377\3143\377\2313\377f3\37733\377\0003\314\3773\314\3143\314\2313\314f3\31433\314\0003\231\3773\231\3143\231\2313\231f3\23133\231\0003f\3773f\3143f\2313ff3f33f\00033\37733\31433\23133f33333\0003\000\3773\000\3143\000\2313\000f3\00033\000\000\000\377\377\000\377\314\000\377\231\000\377f\000\3773\000\377\000\000\314\377\000\314\314\000\314\231\000\314f\000\3143\000\314\000\000\231\377\000\231\314\000\231\231\000\231f\000\2313\000\231\000\000f\377\000f\314\000f\231\000ff\000f3\000f\000\0003\377\0003\314\0003\231\0003f\00033\0003\000\000\000\377\000\000\314\000\000\231\000\000f\000\0003\000\000"
	.size	webpal, 648

	.type	range_array,@object     # @range_array
	.align	16
range_array:
	.ascii	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020\021\022\023\024\025\026\027\030\031\032\033\034\035\036\037 !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\177\200\201\202\203\204\205\206\207\210\211\212\213\214\215\216\217\220\221\222\223\224\225\226\227\230\231\232\233\234\235\236\237\240\241\242\243\244\245\246\247\250\251\252\253\254\255\256\257\260\261\262\263\264\265\266\267\270\271\272\273\274\275\276\277\300\301\302\303\304\305\306\307\310\311\312\313\314\315\316\317\320\321\322\323\324\325\326\327\330\331\332\333\334\335\336\337\340\341\342\343\344\345\346\347\350\351\352\353\354\355\356\357\360\361\362\363\364\365\366\367\370\371\372\373\374\375\376\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.size	range_array, 1025

	.type	floyd_steinberg_error1,@object # @floyd_steinberg_error1
	.align	16
floyd_steinberg_error1:
	.short	65313                   # 0xff21
	.short	65313                   # 0xff21
	.short	65314                   # 0xff22
	.short	65314                   # 0xff22
	.short	65315                   # 0xff23
	.short	65315                   # 0xff23
	.short	65316                   # 0xff24
	.short	65316                   # 0xff24
	.short	65316                   # 0xff24
	.short	65317                   # 0xff25
	.short	65317                   # 0xff25
	.short	65318                   # 0xff26
	.short	65318                   # 0xff26
	.short	65319                   # 0xff27
	.short	65319                   # 0xff27
	.short	65319                   # 0xff27
	.short	65320                   # 0xff28
	.short	65320                   # 0xff28
	.short	65321                   # 0xff29
	.short	65321                   # 0xff29
	.short	65322                   # 0xff2a
	.short	65322                   # 0xff2a
	.short	65323                   # 0xff2b
	.short	65323                   # 0xff2b
	.short	65323                   # 0xff2b
	.short	65324                   # 0xff2c
	.short	65324                   # 0xff2c
	.short	65325                   # 0xff2d
	.short	65325                   # 0xff2d
	.short	65326                   # 0xff2e
	.short	65326                   # 0xff2e
	.short	65326                   # 0xff2e
	.short	65327                   # 0xff2f
	.short	65327                   # 0xff2f
	.short	65328                   # 0xff30
	.short	65328                   # 0xff30
	.short	65329                   # 0xff31
	.short	65329                   # 0xff31
	.short	65330                   # 0xff32
	.short	65330                   # 0xff32
	.short	65330                   # 0xff32
	.short	65331                   # 0xff33
	.short	65331                   # 0xff33
	.short	65332                   # 0xff34
	.short	65332                   # 0xff34
	.short	65333                   # 0xff35
	.short	65333                   # 0xff35
	.short	65333                   # 0xff35
	.short	65334                   # 0xff36
	.short	65334                   # 0xff36
	.short	65335                   # 0xff37
	.short	65335                   # 0xff37
	.short	65336                   # 0xff38
	.short	65336                   # 0xff38
	.short	65337                   # 0xff39
	.short	65337                   # 0xff39
	.short	65337                   # 0xff39
	.short	65338                   # 0xff3a
	.short	65338                   # 0xff3a
	.short	65339                   # 0xff3b
	.short	65339                   # 0xff3b
	.short	65340                   # 0xff3c
	.short	65340                   # 0xff3c
	.short	65340                   # 0xff3c
	.short	65341                   # 0xff3d
	.short	65341                   # 0xff3d
	.short	65342                   # 0xff3e
	.short	65342                   # 0xff3e
	.short	65343                   # 0xff3f
	.short	65343                   # 0xff3f
	.short	65344                   # 0xff40
	.short	65344                   # 0xff40
	.short	65344                   # 0xff40
	.short	65345                   # 0xff41
	.short	65345                   # 0xff41
	.short	65346                   # 0xff42
	.short	65346                   # 0xff42
	.short	65347                   # 0xff43
	.short	65347                   # 0xff43
	.short	65347                   # 0xff43
	.short	65348                   # 0xff44
	.short	65348                   # 0xff44
	.short	65349                   # 0xff45
	.short	65349                   # 0xff45
	.short	65350                   # 0xff46
	.short	65350                   # 0xff46
	.short	65351                   # 0xff47
	.short	65351                   # 0xff47
	.short	65351                   # 0xff47
	.short	65352                   # 0xff48
	.short	65352                   # 0xff48
	.short	65353                   # 0xff49
	.short	65353                   # 0xff49
	.short	65354                   # 0xff4a
	.short	65354                   # 0xff4a
	.short	65354                   # 0xff4a
	.short	65355                   # 0xff4b
	.short	65355                   # 0xff4b
	.short	65356                   # 0xff4c
	.short	65356                   # 0xff4c
	.short	65357                   # 0xff4d
	.short	65357                   # 0xff4d
	.short	65358                   # 0xff4e
	.short	65358                   # 0xff4e
	.short	65358                   # 0xff4e
	.short	65359                   # 0xff4f
	.short	65359                   # 0xff4f
	.short	65360                   # 0xff50
	.short	65360                   # 0xff50
	.short	65361                   # 0xff51
	.short	65361                   # 0xff51
	.short	65361                   # 0xff51
	.short	65362                   # 0xff52
	.short	65362                   # 0xff52
	.short	65363                   # 0xff53
	.short	65363                   # 0xff53
	.short	65364                   # 0xff54
	.short	65364                   # 0xff54
	.short	65365                   # 0xff55
	.short	65365                   # 0xff55
	.short	65365                   # 0xff55
	.short	65366                   # 0xff56
	.short	65366                   # 0xff56
	.short	65367                   # 0xff57
	.short	65367                   # 0xff57
	.short	65368                   # 0xff58
	.short	65368                   # 0xff58
	.short	65368                   # 0xff58
	.short	65369                   # 0xff59
	.short	65369                   # 0xff59
	.short	65370                   # 0xff5a
	.short	65370                   # 0xff5a
	.short	65371                   # 0xff5b
	.short	65371                   # 0xff5b
	.short	65372                   # 0xff5c
	.short	65372                   # 0xff5c
	.short	65372                   # 0xff5c
	.short	65373                   # 0xff5d
	.short	65373                   # 0xff5d
	.short	65374                   # 0xff5e
	.short	65374                   # 0xff5e
	.short	65375                   # 0xff5f
	.short	65375                   # 0xff5f
	.short	65375                   # 0xff5f
	.short	65376                   # 0xff60
	.short	65376                   # 0xff60
	.short	65377                   # 0xff61
	.short	65377                   # 0xff61
	.short	65378                   # 0xff62
	.short	65378                   # 0xff62
	.short	65379                   # 0xff63
	.short	65379                   # 0xff63
	.short	65379                   # 0xff63
	.short	65380                   # 0xff64
	.short	65380                   # 0xff64
	.short	65381                   # 0xff65
	.short	65381                   # 0xff65
	.short	65382                   # 0xff66
	.short	65382                   # 0xff66
	.short	65382                   # 0xff66
	.short	65383                   # 0xff67
	.short	65383                   # 0xff67
	.short	65384                   # 0xff68
	.short	65384                   # 0xff68
	.short	65385                   # 0xff69
	.short	65385                   # 0xff69
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	65387                   # 0xff6b
	.short	65387                   # 0xff6b
	.short	65388                   # 0xff6c
	.short	65388                   # 0xff6c
	.short	65389                   # 0xff6d
	.short	65389                   # 0xff6d
	.short	65389                   # 0xff6d
	.short	65390                   # 0xff6e
	.short	65390                   # 0xff6e
	.short	65391                   # 0xff6f
	.short	65391                   # 0xff6f
	.short	65392                   # 0xff70
	.short	65392                   # 0xff70
	.short	65393                   # 0xff71
	.short	65393                   # 0xff71
	.short	65393                   # 0xff71
	.short	65394                   # 0xff72
	.short	65394                   # 0xff72
	.short	65395                   # 0xff73
	.short	65395                   # 0xff73
	.short	65396                   # 0xff74
	.short	65396                   # 0xff74
	.short	65396                   # 0xff74
	.short	65397                   # 0xff75
	.short	65397                   # 0xff75
	.short	65398                   # 0xff76
	.short	65398                   # 0xff76
	.short	65399                   # 0xff77
	.short	65399                   # 0xff77
	.short	65400                   # 0xff78
	.short	65400                   # 0xff78
	.short	65400                   # 0xff78
	.short	65401                   # 0xff79
	.short	65401                   # 0xff79
	.short	65402                   # 0xff7a
	.short	65402                   # 0xff7a
	.short	65403                   # 0xff7b
	.short	65403                   # 0xff7b
	.short	65403                   # 0xff7b
	.short	65404                   # 0xff7c
	.short	65404                   # 0xff7c
	.short	65405                   # 0xff7d
	.short	65405                   # 0xff7d
	.short	65406                   # 0xff7e
	.short	65406                   # 0xff7e
	.short	65407                   # 0xff7f
	.short	65407                   # 0xff7f
	.short	65407                   # 0xff7f
	.short	65408                   # 0xff80
	.short	65408                   # 0xff80
	.short	65409                   # 0xff81
	.short	65409                   # 0xff81
	.short	65410                   # 0xff82
	.short	65410                   # 0xff82
	.short	65410                   # 0xff82
	.short	65411                   # 0xff83
	.short	65411                   # 0xff83
	.short	65412                   # 0xff84
	.short	65412                   # 0xff84
	.short	65413                   # 0xff85
	.short	65413                   # 0xff85
	.short	65414                   # 0xff86
	.short	65414                   # 0xff86
	.short	65414                   # 0xff86
	.short	65415                   # 0xff87
	.short	65415                   # 0xff87
	.short	65416                   # 0xff88
	.short	65416                   # 0xff88
	.short	65417                   # 0xff89
	.short	65417                   # 0xff89
	.short	65417                   # 0xff89
	.short	65418                   # 0xff8a
	.short	65418                   # 0xff8a
	.short	65419                   # 0xff8b
	.short	65419                   # 0xff8b
	.short	65420                   # 0xff8c
	.short	65420                   # 0xff8c
	.short	65421                   # 0xff8d
	.short	65421                   # 0xff8d
	.short	65421                   # 0xff8d
	.short	65422                   # 0xff8e
	.short	65422                   # 0xff8e
	.short	65423                   # 0xff8f
	.short	65423                   # 0xff8f
	.short	65424                   # 0xff90
	.short	65424                   # 0xff90
	.short	65424                   # 0xff90
	.short	65425                   # 0xff91
	.short	65425                   # 0xff91
	.short	65426                   # 0xff92
	.short	65426                   # 0xff92
	.short	65427                   # 0xff93
	.short	65427                   # 0xff93
	.short	65428                   # 0xff94
	.short	65428                   # 0xff94
	.short	65428                   # 0xff94
	.short	65429                   # 0xff95
	.short	65429                   # 0xff95
	.short	65430                   # 0xff96
	.short	65430                   # 0xff96
	.short	65431                   # 0xff97
	.short	65431                   # 0xff97
	.short	65431                   # 0xff97
	.short	65432                   # 0xff98
	.short	65432                   # 0xff98
	.short	65433                   # 0xff99
	.short	65433                   # 0xff99
	.short	65434                   # 0xff9a
	.short	65434                   # 0xff9a
	.short	65435                   # 0xff9b
	.short	65435                   # 0xff9b
	.short	65435                   # 0xff9b
	.short	65436                   # 0xff9c
	.short	65436                   # 0xff9c
	.short	65437                   # 0xff9d
	.short	65437                   # 0xff9d
	.short	65438                   # 0xff9e
	.short	65438                   # 0xff9e
	.short	65438                   # 0xff9e
	.short	65439                   # 0xff9f
	.short	65439                   # 0xff9f
	.short	65440                   # 0xffa0
	.short	65440                   # 0xffa0
	.short	65441                   # 0xffa1
	.short	65441                   # 0xffa1
	.short	65442                   # 0xffa2
	.short	65442                   # 0xffa2
	.short	65442                   # 0xffa2
	.short	65443                   # 0xffa3
	.short	65443                   # 0xffa3
	.short	65444                   # 0xffa4
	.short	65444                   # 0xffa4
	.short	65445                   # 0xffa5
	.short	65445                   # 0xffa5
	.short	65445                   # 0xffa5
	.short	65446                   # 0xffa6
	.short	65446                   # 0xffa6
	.short	65447                   # 0xffa7
	.short	65447                   # 0xffa7
	.short	65448                   # 0xffa8
	.short	65448                   # 0xffa8
	.short	65449                   # 0xffa9
	.short	65449                   # 0xffa9
	.short	65449                   # 0xffa9
	.short	65450                   # 0xffaa
	.short	65450                   # 0xffaa
	.short	65451                   # 0xffab
	.short	65451                   # 0xffab
	.short	65452                   # 0xffac
	.short	65452                   # 0xffac
	.short	65452                   # 0xffac
	.short	65453                   # 0xffad
	.short	65453                   # 0xffad
	.short	65454                   # 0xffae
	.short	65454                   # 0xffae
	.short	65455                   # 0xffaf
	.short	65455                   # 0xffaf
	.short	65456                   # 0xffb0
	.short	65456                   # 0xffb0
	.short	65456                   # 0xffb0
	.short	65457                   # 0xffb1
	.short	65457                   # 0xffb1
	.short	65458                   # 0xffb2
	.short	65458                   # 0xffb2
	.short	65459                   # 0xffb3
	.short	65459                   # 0xffb3
	.short	65459                   # 0xffb3
	.short	65460                   # 0xffb4
	.short	65460                   # 0xffb4
	.short	65461                   # 0xffb5
	.short	65461                   # 0xffb5
	.short	65462                   # 0xffb6
	.short	65462                   # 0xffb6
	.short	65463                   # 0xffb7
	.short	65463                   # 0xffb7
	.short	65463                   # 0xffb7
	.short	65464                   # 0xffb8
	.short	65464                   # 0xffb8
	.short	65465                   # 0xffb9
	.short	65465                   # 0xffb9
	.short	65466                   # 0xffba
	.short	65466                   # 0xffba
	.short	65466                   # 0xffba
	.short	65467                   # 0xffbb
	.short	65467                   # 0xffbb
	.short	65468                   # 0xffbc
	.short	65468                   # 0xffbc
	.short	65469                   # 0xffbd
	.short	65469                   # 0xffbd
	.short	65470                   # 0xffbe
	.short	65470                   # 0xffbe
	.short	65470                   # 0xffbe
	.short	65471                   # 0xffbf
	.short	65471                   # 0xffbf
	.short	65472                   # 0xffc0
	.short	65472                   # 0xffc0
	.short	65473                   # 0xffc1
	.short	65473                   # 0xffc1
	.short	65473                   # 0xffc1
	.short	65474                   # 0xffc2
	.short	65474                   # 0xffc2
	.short	65475                   # 0xffc3
	.short	65475                   # 0xffc3
	.short	65476                   # 0xffc4
	.short	65476                   # 0xffc4
	.short	65477                   # 0xffc5
	.short	65477                   # 0xffc5
	.short	65477                   # 0xffc5
	.short	65478                   # 0xffc6
	.short	65478                   # 0xffc6
	.short	65479                   # 0xffc7
	.short	65479                   # 0xffc7
	.short	65480                   # 0xffc8
	.short	65480                   # 0xffc8
	.short	65480                   # 0xffc8
	.short	65481                   # 0xffc9
	.short	65481                   # 0xffc9
	.short	65482                   # 0xffca
	.short	65482                   # 0xffca
	.short	65483                   # 0xffcb
	.short	65483                   # 0xffcb
	.short	65484                   # 0xffcc
	.short	65484                   # 0xffcc
	.short	65484                   # 0xffcc
	.short	65485                   # 0xffcd
	.short	65485                   # 0xffcd
	.short	65486                   # 0xffce
	.short	65486                   # 0xffce
	.short	65487                   # 0xffcf
	.short	65487                   # 0xffcf
	.short	65487                   # 0xffcf
	.short	65488                   # 0xffd0
	.short	65488                   # 0xffd0
	.short	65489                   # 0xffd1
	.short	65489                   # 0xffd1
	.short	65490                   # 0xffd2
	.short	65490                   # 0xffd2
	.short	65491                   # 0xffd3
	.short	65491                   # 0xffd3
	.short	65491                   # 0xffd3
	.short	65492                   # 0xffd4
	.short	65492                   # 0xffd4
	.short	65493                   # 0xffd5
	.short	65493                   # 0xffd5
	.short	65494                   # 0xffd6
	.short	65494                   # 0xffd6
	.short	65494                   # 0xffd6
	.short	65495                   # 0xffd7
	.short	65495                   # 0xffd7
	.short	65496                   # 0xffd8
	.short	65496                   # 0xffd8
	.short	65497                   # 0xffd9
	.short	65497                   # 0xffd9
	.short	65498                   # 0xffda
	.short	65498                   # 0xffda
	.short	65498                   # 0xffda
	.short	65499                   # 0xffdb
	.short	65499                   # 0xffdb
	.short	65500                   # 0xffdc
	.short	65500                   # 0xffdc
	.short	65501                   # 0xffdd
	.short	65501                   # 0xffdd
	.short	65501                   # 0xffdd
	.short	65502                   # 0xffde
	.short	65502                   # 0xffde
	.short	65503                   # 0xffdf
	.short	65503                   # 0xffdf
	.short	65504                   # 0xffe0
	.short	65504                   # 0xffe0
	.short	65505                   # 0xffe1
	.short	65505                   # 0xffe1
	.short	65505                   # 0xffe1
	.short	65506                   # 0xffe2
	.short	65506                   # 0xffe2
	.short	65507                   # 0xffe3
	.short	65507                   # 0xffe3
	.short	65508                   # 0xffe4
	.short	65508                   # 0xffe4
	.short	65508                   # 0xffe4
	.short	65509                   # 0xffe5
	.short	65509                   # 0xffe5
	.short	65510                   # 0xffe6
	.short	65510                   # 0xffe6
	.short	65511                   # 0xffe7
	.short	65511                   # 0xffe7
	.short	65512                   # 0xffe8
	.short	65512                   # 0xffe8
	.short	65512                   # 0xffe8
	.short	65513                   # 0xffe9
	.short	65513                   # 0xffe9
	.short	65514                   # 0xffea
	.short	65514                   # 0xffea
	.short	65515                   # 0xffeb
	.short	65515                   # 0xffeb
	.short	65515                   # 0xffeb
	.short	65516                   # 0xffec
	.short	65516                   # 0xffec
	.short	65517                   # 0xffed
	.short	65517                   # 0xffed
	.short	65518                   # 0xffee
	.short	65518                   # 0xffee
	.short	65519                   # 0xffef
	.short	65519                   # 0xffef
	.short	65519                   # 0xffef
	.short	65520                   # 0xfff0
	.short	65520                   # 0xfff0
	.short	65521                   # 0xfff1
	.short	65521                   # 0xfff1
	.short	65522                   # 0xfff2
	.short	65522                   # 0xfff2
	.short	65522                   # 0xfff2
	.short	65523                   # 0xfff3
	.short	65523                   # 0xfff3
	.short	65524                   # 0xfff4
	.short	65524                   # 0xfff4
	.short	65525                   # 0xfff5
	.short	65525                   # 0xfff5
	.short	65526                   # 0xfff6
	.short	65526                   # 0xfff6
	.short	65526                   # 0xfff6
	.short	65527                   # 0xfff7
	.short	65527                   # 0xfff7
	.short	65528                   # 0xfff8
	.short	65528                   # 0xfff8
	.short	65529                   # 0xfff9
	.short	65529                   # 0xfff9
	.short	65529                   # 0xfff9
	.short	65530                   # 0xfffa
	.short	65530                   # 0xfffa
	.short	65531                   # 0xfffb
	.short	65531                   # 0xfffb
	.short	65532                   # 0xfffc
	.short	65532                   # 0xfffc
	.short	65533                   # 0xfffd
	.short	65533                   # 0xfffd
	.short	65533                   # 0xfffd
	.short	65534                   # 0xfffe
	.short	65534                   # 0xfffe
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	3                       # 0x3
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	5                       # 0x5
	.short	5                       # 0x5
	.short	6                       # 0x6
	.short	6                       # 0x6
	.short	7                       # 0x7
	.short	7                       # 0x7
	.short	7                       # 0x7
	.short	8                       # 0x8
	.short	8                       # 0x8
	.short	9                       # 0x9
	.short	9                       # 0x9
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	11                      # 0xb
	.short	11                      # 0xb
	.short	12                      # 0xc
	.short	12                      # 0xc
	.short	13                      # 0xd
	.short	13                      # 0xd
	.short	14                      # 0xe
	.short	14                      # 0xe
	.short	14                      # 0xe
	.short	15                      # 0xf
	.short	15                      # 0xf
	.short	16                      # 0x10
	.short	16                      # 0x10
	.short	17                      # 0x11
	.short	17                      # 0x11
	.short	17                      # 0x11
	.short	18                      # 0x12
	.short	18                      # 0x12
	.short	19                      # 0x13
	.short	19                      # 0x13
	.short	20                      # 0x14
	.short	20                      # 0x14
	.short	21                      # 0x15
	.short	21                      # 0x15
	.short	21                      # 0x15
	.short	22                      # 0x16
	.short	22                      # 0x16
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	24                      # 0x18
	.short	24                      # 0x18
	.short	24                      # 0x18
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	26                      # 0x1a
	.short	26                      # 0x1a
	.short	27                      # 0x1b
	.short	27                      # 0x1b
	.short	28                      # 0x1c
	.short	28                      # 0x1c
	.short	28                      # 0x1c
	.short	29                      # 0x1d
	.short	29                      # 0x1d
	.short	30                      # 0x1e
	.short	30                      # 0x1e
	.short	31                      # 0x1f
	.short	31                      # 0x1f
	.short	31                      # 0x1f
	.short	32                      # 0x20
	.short	32                      # 0x20
	.short	33                      # 0x21
	.short	33                      # 0x21
	.short	34                      # 0x22
	.short	34                      # 0x22
	.short	35                      # 0x23
	.short	35                      # 0x23
	.short	35                      # 0x23
	.short	36                      # 0x24
	.short	36                      # 0x24
	.short	37                      # 0x25
	.short	37                      # 0x25
	.short	38                      # 0x26
	.short	38                      # 0x26
	.short	38                      # 0x26
	.short	39                      # 0x27
	.short	39                      # 0x27
	.short	40                      # 0x28
	.short	40                      # 0x28
	.short	41                      # 0x29
	.short	41                      # 0x29
	.short	42                      # 0x2a
	.short	42                      # 0x2a
	.short	42                      # 0x2a
	.short	43                      # 0x2b
	.short	43                      # 0x2b
	.short	44                      # 0x2c
	.short	44                      # 0x2c
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	46                      # 0x2e
	.short	46                      # 0x2e
	.short	47                      # 0x2f
	.short	47                      # 0x2f
	.short	48                      # 0x30
	.short	48                      # 0x30
	.short	49                      # 0x31
	.short	49                      # 0x31
	.short	49                      # 0x31
	.short	50                      # 0x32
	.short	50                      # 0x32
	.short	51                      # 0x33
	.short	51                      # 0x33
	.short	52                      # 0x34
	.short	52                      # 0x34
	.short	52                      # 0x34
	.short	53                      # 0x35
	.short	53                      # 0x35
	.short	54                      # 0x36
	.short	54                      # 0x36
	.short	55                      # 0x37
	.short	55                      # 0x37
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	57                      # 0x39
	.short	57                      # 0x39
	.short	58                      # 0x3a
	.short	58                      # 0x3a
	.short	59                      # 0x3b
	.short	59                      # 0x3b
	.short	59                      # 0x3b
	.short	60                      # 0x3c
	.short	60                      # 0x3c
	.short	61                      # 0x3d
	.short	61                      # 0x3d
	.short	62                      # 0x3e
	.short	62                      # 0x3e
	.short	63                      # 0x3f
	.short	63                      # 0x3f
	.short	63                      # 0x3f
	.short	64                      # 0x40
	.short	64                      # 0x40
	.short	65                      # 0x41
	.short	65                      # 0x41
	.short	66                      # 0x42
	.short	66                      # 0x42
	.short	66                      # 0x42
	.short	67                      # 0x43
	.short	67                      # 0x43
	.short	68                      # 0x44
	.short	68                      # 0x44
	.short	69                      # 0x45
	.short	69                      # 0x45
	.short	70                      # 0x46
	.short	70                      # 0x46
	.short	70                      # 0x46
	.short	71                      # 0x47
	.short	71                      # 0x47
	.short	72                      # 0x48
	.short	72                      # 0x48
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	74                      # 0x4a
	.short	74                      # 0x4a
	.short	75                      # 0x4b
	.short	75                      # 0x4b
	.short	76                      # 0x4c
	.short	76                      # 0x4c
	.short	77                      # 0x4d
	.short	77                      # 0x4d
	.short	77                      # 0x4d
	.short	78                      # 0x4e
	.short	78                      # 0x4e
	.short	79                      # 0x4f
	.short	79                      # 0x4f
	.short	80                      # 0x50
	.short	80                      # 0x50
	.short	80                      # 0x50
	.short	81                      # 0x51
	.short	81                      # 0x51
	.short	82                      # 0x52
	.short	82                      # 0x52
	.short	83                      # 0x53
	.short	83                      # 0x53
	.short	84                      # 0x54
	.short	84                      # 0x54
	.short	84                      # 0x54
	.short	85                      # 0x55
	.short	85                      # 0x55
	.short	86                      # 0x56
	.short	86                      # 0x56
	.short	87                      # 0x57
	.short	87                      # 0x57
	.short	87                      # 0x57
	.short	88                      # 0x58
	.short	88                      # 0x58
	.short	89                      # 0x59
	.short	89                      # 0x59
	.short	90                      # 0x5a
	.short	90                      # 0x5a
	.short	91                      # 0x5b
	.short	91                      # 0x5b
	.short	91                      # 0x5b
	.short	92                      # 0x5c
	.short	92                      # 0x5c
	.short	93                      # 0x5d
	.short	93                      # 0x5d
	.short	94                      # 0x5e
	.short	94                      # 0x5e
	.short	94                      # 0x5e
	.short	95                      # 0x5f
	.short	95                      # 0x5f
	.short	96                      # 0x60
	.short	96                      # 0x60
	.short	97                      # 0x61
	.short	97                      # 0x61
	.short	98                      # 0x62
	.short	98                      # 0x62
	.short	98                      # 0x62
	.short	99                      # 0x63
	.short	99                      # 0x63
	.short	100                     # 0x64
	.short	100                     # 0x64
	.short	101                     # 0x65
	.short	101                     # 0x65
	.short	101                     # 0x65
	.short	102                     # 0x66
	.short	102                     # 0x66
	.short	103                     # 0x67
	.short	103                     # 0x67
	.short	104                     # 0x68
	.short	104                     # 0x68
	.short	105                     # 0x69
	.short	105                     # 0x69
	.short	105                     # 0x69
	.short	106                     # 0x6a
	.short	106                     # 0x6a
	.short	107                     # 0x6b
	.short	107                     # 0x6b
	.short	108                     # 0x6c
	.short	108                     # 0x6c
	.short	108                     # 0x6c
	.short	109                     # 0x6d
	.short	109                     # 0x6d
	.short	110                     # 0x6e
	.short	110                     # 0x6e
	.short	111                     # 0x6f
	.short	111                     # 0x6f
	.short	112                     # 0x70
	.short	112                     # 0x70
	.short	112                     # 0x70
	.short	113                     # 0x71
	.short	113                     # 0x71
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	115                     # 0x73
	.short	115                     # 0x73
	.short	115                     # 0x73
	.short	116                     # 0x74
	.short	116                     # 0x74
	.short	117                     # 0x75
	.short	117                     # 0x75
	.short	118                     # 0x76
	.short	118                     # 0x76
	.short	119                     # 0x77
	.short	119                     # 0x77
	.short	119                     # 0x77
	.short	120                     # 0x78
	.short	120                     # 0x78
	.short	121                     # 0x79
	.short	121                     # 0x79
	.short	122                     # 0x7a
	.short	122                     # 0x7a
	.short	122                     # 0x7a
	.short	123                     # 0x7b
	.short	123                     # 0x7b
	.short	124                     # 0x7c
	.short	124                     # 0x7c
	.short	125                     # 0x7d
	.short	125                     # 0x7d
	.short	126                     # 0x7e
	.short	126                     # 0x7e
	.short	126                     # 0x7e
	.short	127                     # 0x7f
	.short	127                     # 0x7f
	.short	128                     # 0x80
	.short	128                     # 0x80
	.short	129                     # 0x81
	.short	129                     # 0x81
	.short	129                     # 0x81
	.short	130                     # 0x82
	.short	130                     # 0x82
	.short	131                     # 0x83
	.short	131                     # 0x83
	.short	132                     # 0x84
	.short	132                     # 0x84
	.short	133                     # 0x85
	.short	133                     # 0x85
	.short	133                     # 0x85
	.short	134                     # 0x86
	.short	134                     # 0x86
	.short	135                     # 0x87
	.short	135                     # 0x87
	.short	136                     # 0x88
	.short	136                     # 0x88
	.short	136                     # 0x88
	.short	137                     # 0x89
	.short	137                     # 0x89
	.short	138                     # 0x8a
	.short	138                     # 0x8a
	.short	139                     # 0x8b
	.short	139                     # 0x8b
	.short	140                     # 0x8c
	.short	140                     # 0x8c
	.short	140                     # 0x8c
	.short	141                     # 0x8d
	.short	141                     # 0x8d
	.short	142                     # 0x8e
	.short	142                     # 0x8e
	.short	143                     # 0x8f
	.short	143                     # 0x8f
	.short	143                     # 0x8f
	.short	144                     # 0x90
	.short	144                     # 0x90
	.short	145                     # 0x91
	.short	145                     # 0x91
	.short	146                     # 0x92
	.short	146                     # 0x92
	.short	147                     # 0x93
	.short	147                     # 0x93
	.short	147                     # 0x93
	.short	148                     # 0x94
	.short	148                     # 0x94
	.short	149                     # 0x95
	.short	149                     # 0x95
	.short	150                     # 0x96
	.short	150                     # 0x96
	.short	150                     # 0x96
	.short	151                     # 0x97
	.short	151                     # 0x97
	.short	152                     # 0x98
	.short	152                     # 0x98
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	154                     # 0x9a
	.short	154                     # 0x9a
	.short	154                     # 0x9a
	.short	155                     # 0x9b
	.short	155                     # 0x9b
	.short	156                     # 0x9c
	.short	156                     # 0x9c
	.short	157                     # 0x9d
	.short	157                     # 0x9d
	.short	157                     # 0x9d
	.short	158                     # 0x9e
	.short	158                     # 0x9e
	.short	159                     # 0x9f
	.short	159                     # 0x9f
	.short	160                     # 0xa0
	.short	160                     # 0xa0
	.short	161                     # 0xa1
	.short	161                     # 0xa1
	.short	161                     # 0xa1
	.short	162                     # 0xa2
	.short	162                     # 0xa2
	.short	163                     # 0xa3
	.short	163                     # 0xa3
	.short	164                     # 0xa4
	.short	164                     # 0xa4
	.short	164                     # 0xa4
	.short	165                     # 0xa5
	.short	165                     # 0xa5
	.short	166                     # 0xa6
	.short	166                     # 0xa6
	.short	167                     # 0xa7
	.short	167                     # 0xa7
	.short	168                     # 0xa8
	.short	168                     # 0xa8
	.short	168                     # 0xa8
	.short	169                     # 0xa9
	.short	169                     # 0xa9
	.short	170                     # 0xaa
	.short	170                     # 0xaa
	.short	171                     # 0xab
	.short	171                     # 0xab
	.short	171                     # 0xab
	.short	172                     # 0xac
	.short	172                     # 0xac
	.short	173                     # 0xad
	.short	173                     # 0xad
	.short	174                     # 0xae
	.short	174                     # 0xae
	.short	175                     # 0xaf
	.short	175                     # 0xaf
	.short	175                     # 0xaf
	.short	176                     # 0xb0
	.short	176                     # 0xb0
	.short	177                     # 0xb1
	.short	177                     # 0xb1
	.short	178                     # 0xb2
	.short	178                     # 0xb2
	.short	178                     # 0xb2
	.short	179                     # 0xb3
	.short	179                     # 0xb3
	.short	180                     # 0xb4
	.short	180                     # 0xb4
	.short	181                     # 0xb5
	.short	181                     # 0xb5
	.short	182                     # 0xb6
	.short	182                     # 0xb6
	.short	182                     # 0xb6
	.short	183                     # 0xb7
	.short	183                     # 0xb7
	.short	184                     # 0xb8
	.short	184                     # 0xb8
	.short	185                     # 0xb9
	.short	185                     # 0xb9
	.short	185                     # 0xb9
	.short	186                     # 0xba
	.short	186                     # 0xba
	.short	187                     # 0xbb
	.short	187                     # 0xbb
	.short	188                     # 0xbc
	.short	188                     # 0xbc
	.short	189                     # 0xbd
	.short	189                     # 0xbd
	.short	189                     # 0xbd
	.short	190                     # 0xbe
	.short	190                     # 0xbe
	.short	191                     # 0xbf
	.short	191                     # 0xbf
	.short	192                     # 0xc0
	.short	192                     # 0xc0
	.short	192                     # 0xc0
	.short	193                     # 0xc1
	.short	193                     # 0xc1
	.short	194                     # 0xc2
	.short	194                     # 0xc2
	.short	195                     # 0xc3
	.short	195                     # 0xc3
	.short	196                     # 0xc4
	.short	196                     # 0xc4
	.short	196                     # 0xc4
	.short	197                     # 0xc5
	.short	197                     # 0xc5
	.short	198                     # 0xc6
	.short	198                     # 0xc6
	.short	199                     # 0xc7
	.short	199                     # 0xc7
	.short	199                     # 0xc7
	.short	200                     # 0xc8
	.short	200                     # 0xc8
	.short	201                     # 0xc9
	.short	201                     # 0xc9
	.short	202                     # 0xca
	.short	202                     # 0xca
	.short	203                     # 0xcb
	.short	203                     # 0xcb
	.short	203                     # 0xcb
	.short	204                     # 0xcc
	.short	204                     # 0xcc
	.short	205                     # 0xcd
	.short	205                     # 0xcd
	.short	206                     # 0xce
	.short	206                     # 0xce
	.short	206                     # 0xce
	.short	207                     # 0xcf
	.short	207                     # 0xcf
	.short	208                     # 0xd0
	.short	208                     # 0xd0
	.short	209                     # 0xd1
	.short	209                     # 0xd1
	.short	210                     # 0xd2
	.short	210                     # 0xd2
	.short	210                     # 0xd2
	.short	211                     # 0xd3
	.short	211                     # 0xd3
	.short	212                     # 0xd4
	.short	212                     # 0xd4
	.short	213                     # 0xd5
	.short	213                     # 0xd5
	.short	213                     # 0xd5
	.short	214                     # 0xd6
	.short	214                     # 0xd6
	.short	215                     # 0xd7
	.short	215                     # 0xd7
	.short	216                     # 0xd8
	.short	216                     # 0xd8
	.short	217                     # 0xd9
	.short	217                     # 0xd9
	.short	217                     # 0xd9
	.short	218                     # 0xda
	.short	218                     # 0xda
	.short	219                     # 0xdb
	.short	219                     # 0xdb
	.short	220                     # 0xdc
	.short	220                     # 0xdc
	.short	220                     # 0xdc
	.short	221                     # 0xdd
	.short	221                     # 0xdd
	.short	222                     # 0xde
	.short	222                     # 0xde
	.short	223                     # 0xdf
	.short	223                     # 0xdf
	.short	224                     # 0xe0
	.short	224                     # 0xe0
	.size	floyd_steinberg_error1, 2050

	.type	floyd_steinberg_error2,@object # @floyd_steinberg_error2
	.align	16
floyd_steinberg_error2:
	.short	65441                   # 0xffa1
	.short	65441                   # 0xffa1
	.short	65441                   # 0xffa1
	.short	65441                   # 0xffa1
	.short	65441                   # 0xffa1
	.short	65442                   # 0xffa2
	.short	65442                   # 0xffa2
	.short	65442                   # 0xffa2
	.short	65442                   # 0xffa2
	.short	65442                   # 0xffa2
	.short	65443                   # 0xffa3
	.short	65443                   # 0xffa3
	.short	65443                   # 0xffa3
	.short	65443                   # 0xffa3
	.short	65443                   # 0xffa3
	.short	65443                   # 0xffa3
	.short	65444                   # 0xffa4
	.short	65444                   # 0xffa4
	.short	65444                   # 0xffa4
	.short	65444                   # 0xffa4
	.short	65444                   # 0xffa4
	.short	65445                   # 0xffa5
	.short	65445                   # 0xffa5
	.short	65445                   # 0xffa5
	.short	65445                   # 0xffa5
	.short	65445                   # 0xffa5
	.short	65446                   # 0xffa6
	.short	65446                   # 0xffa6
	.short	65446                   # 0xffa6
	.short	65446                   # 0xffa6
	.short	65446                   # 0xffa6
	.short	65446                   # 0xffa6
	.short	65447                   # 0xffa7
	.short	65447                   # 0xffa7
	.short	65447                   # 0xffa7
	.short	65447                   # 0xffa7
	.short	65447                   # 0xffa7
	.short	65448                   # 0xffa8
	.short	65448                   # 0xffa8
	.short	65448                   # 0xffa8
	.short	65448                   # 0xffa8
	.short	65448                   # 0xffa8
	.short	65449                   # 0xffa9
	.short	65449                   # 0xffa9
	.short	65449                   # 0xffa9
	.short	65449                   # 0xffa9
	.short	65449                   # 0xffa9
	.short	65449                   # 0xffa9
	.short	65450                   # 0xffaa
	.short	65450                   # 0xffaa
	.short	65450                   # 0xffaa
	.short	65450                   # 0xffaa
	.short	65450                   # 0xffaa
	.short	65451                   # 0xffab
	.short	65451                   # 0xffab
	.short	65451                   # 0xffab
	.short	65451                   # 0xffab
	.short	65451                   # 0xffab
	.short	65452                   # 0xffac
	.short	65452                   # 0xffac
	.short	65452                   # 0xffac
	.short	65452                   # 0xffac
	.short	65452                   # 0xffac
	.short	65452                   # 0xffac
	.short	65453                   # 0xffad
	.short	65453                   # 0xffad
	.short	65453                   # 0xffad
	.short	65453                   # 0xffad
	.short	65453                   # 0xffad
	.short	65454                   # 0xffae
	.short	65454                   # 0xffae
	.short	65454                   # 0xffae
	.short	65454                   # 0xffae
	.short	65454                   # 0xffae
	.short	65455                   # 0xffaf
	.short	65455                   # 0xffaf
	.short	65455                   # 0xffaf
	.short	65455                   # 0xffaf
	.short	65455                   # 0xffaf
	.short	65455                   # 0xffaf
	.short	65456                   # 0xffb0
	.short	65456                   # 0xffb0
	.short	65456                   # 0xffb0
	.short	65456                   # 0xffb0
	.short	65456                   # 0xffb0
	.short	65457                   # 0xffb1
	.short	65457                   # 0xffb1
	.short	65457                   # 0xffb1
	.short	65457                   # 0xffb1
	.short	65457                   # 0xffb1
	.short	65458                   # 0xffb2
	.short	65458                   # 0xffb2
	.short	65458                   # 0xffb2
	.short	65458                   # 0xffb2
	.short	65458                   # 0xffb2
	.short	65458                   # 0xffb2
	.short	65459                   # 0xffb3
	.short	65459                   # 0xffb3
	.short	65459                   # 0xffb3
	.short	65459                   # 0xffb3
	.short	65459                   # 0xffb3
	.short	65460                   # 0xffb4
	.short	65460                   # 0xffb4
	.short	65460                   # 0xffb4
	.short	65460                   # 0xffb4
	.short	65460                   # 0xffb4
	.short	65461                   # 0xffb5
	.short	65461                   # 0xffb5
	.short	65461                   # 0xffb5
	.short	65461                   # 0xffb5
	.short	65461                   # 0xffb5
	.short	65461                   # 0xffb5
	.short	65462                   # 0xffb6
	.short	65462                   # 0xffb6
	.short	65462                   # 0xffb6
	.short	65462                   # 0xffb6
	.short	65462                   # 0xffb6
	.short	65463                   # 0xffb7
	.short	65463                   # 0xffb7
	.short	65463                   # 0xffb7
	.short	65463                   # 0xffb7
	.short	65463                   # 0xffb7
	.short	65464                   # 0xffb8
	.short	65464                   # 0xffb8
	.short	65464                   # 0xffb8
	.short	65464                   # 0xffb8
	.short	65464                   # 0xffb8
	.short	65464                   # 0xffb8
	.short	65465                   # 0xffb9
	.short	65465                   # 0xffb9
	.short	65465                   # 0xffb9
	.short	65465                   # 0xffb9
	.short	65465                   # 0xffb9
	.short	65466                   # 0xffba
	.short	65466                   # 0xffba
	.short	65466                   # 0xffba
	.short	65466                   # 0xffba
	.short	65466                   # 0xffba
	.short	65467                   # 0xffbb
	.short	65467                   # 0xffbb
	.short	65467                   # 0xffbb
	.short	65467                   # 0xffbb
	.short	65467                   # 0xffbb
	.short	65467                   # 0xffbb
	.short	65468                   # 0xffbc
	.short	65468                   # 0xffbc
	.short	65468                   # 0xffbc
	.short	65468                   # 0xffbc
	.short	65468                   # 0xffbc
	.short	65469                   # 0xffbd
	.short	65469                   # 0xffbd
	.short	65469                   # 0xffbd
	.short	65469                   # 0xffbd
	.short	65469                   # 0xffbd
	.short	65470                   # 0xffbe
	.short	65470                   # 0xffbe
	.short	65470                   # 0xffbe
	.short	65470                   # 0xffbe
	.short	65470                   # 0xffbe
	.short	65470                   # 0xffbe
	.short	65471                   # 0xffbf
	.short	65471                   # 0xffbf
	.short	65471                   # 0xffbf
	.short	65471                   # 0xffbf
	.short	65471                   # 0xffbf
	.short	65472                   # 0xffc0
	.short	65472                   # 0xffc0
	.short	65472                   # 0xffc0
	.short	65472                   # 0xffc0
	.short	65472                   # 0xffc0
	.short	65473                   # 0xffc1
	.short	65473                   # 0xffc1
	.short	65473                   # 0xffc1
	.short	65473                   # 0xffc1
	.short	65473                   # 0xffc1
	.short	65473                   # 0xffc1
	.short	65474                   # 0xffc2
	.short	65474                   # 0xffc2
	.short	65474                   # 0xffc2
	.short	65474                   # 0xffc2
	.short	65474                   # 0xffc2
	.short	65475                   # 0xffc3
	.short	65475                   # 0xffc3
	.short	65475                   # 0xffc3
	.short	65475                   # 0xffc3
	.short	65475                   # 0xffc3
	.short	65476                   # 0xffc4
	.short	65476                   # 0xffc4
	.short	65476                   # 0xffc4
	.short	65476                   # 0xffc4
	.short	65476                   # 0xffc4
	.short	65476                   # 0xffc4
	.short	65477                   # 0xffc5
	.short	65477                   # 0xffc5
	.short	65477                   # 0xffc5
	.short	65477                   # 0xffc5
	.short	65477                   # 0xffc5
	.short	65478                   # 0xffc6
	.short	65478                   # 0xffc6
	.short	65478                   # 0xffc6
	.short	65478                   # 0xffc6
	.short	65478                   # 0xffc6
	.short	65479                   # 0xffc7
	.short	65479                   # 0xffc7
	.short	65479                   # 0xffc7
	.short	65479                   # 0xffc7
	.short	65479                   # 0xffc7
	.short	65479                   # 0xffc7
	.short	65480                   # 0xffc8
	.short	65480                   # 0xffc8
	.short	65480                   # 0xffc8
	.short	65480                   # 0xffc8
	.short	65480                   # 0xffc8
	.short	65481                   # 0xffc9
	.short	65481                   # 0xffc9
	.short	65481                   # 0xffc9
	.short	65481                   # 0xffc9
	.short	65481                   # 0xffc9
	.short	65482                   # 0xffca
	.short	65482                   # 0xffca
	.short	65482                   # 0xffca
	.short	65482                   # 0xffca
	.short	65482                   # 0xffca
	.short	65482                   # 0xffca
	.short	65483                   # 0xffcb
	.short	65483                   # 0xffcb
	.short	65483                   # 0xffcb
	.short	65483                   # 0xffcb
	.short	65483                   # 0xffcb
	.short	65484                   # 0xffcc
	.short	65484                   # 0xffcc
	.short	65484                   # 0xffcc
	.short	65484                   # 0xffcc
	.short	65484                   # 0xffcc
	.short	65485                   # 0xffcd
	.short	65485                   # 0xffcd
	.short	65485                   # 0xffcd
	.short	65485                   # 0xffcd
	.short	65485                   # 0xffcd
	.short	65485                   # 0xffcd
	.short	65486                   # 0xffce
	.short	65486                   # 0xffce
	.short	65486                   # 0xffce
	.short	65486                   # 0xffce
	.short	65486                   # 0xffce
	.short	65487                   # 0xffcf
	.short	65487                   # 0xffcf
	.short	65487                   # 0xffcf
	.short	65487                   # 0xffcf
	.short	65487                   # 0xffcf
	.short	65488                   # 0xffd0
	.short	65488                   # 0xffd0
	.short	65488                   # 0xffd0
	.short	65488                   # 0xffd0
	.short	65488                   # 0xffd0
	.short	65488                   # 0xffd0
	.short	65489                   # 0xffd1
	.short	65489                   # 0xffd1
	.short	65489                   # 0xffd1
	.short	65489                   # 0xffd1
	.short	65489                   # 0xffd1
	.short	65490                   # 0xffd2
	.short	65490                   # 0xffd2
	.short	65490                   # 0xffd2
	.short	65490                   # 0xffd2
	.short	65490                   # 0xffd2
	.short	65491                   # 0xffd3
	.short	65491                   # 0xffd3
	.short	65491                   # 0xffd3
	.short	65491                   # 0xffd3
	.short	65491                   # 0xffd3
	.short	65491                   # 0xffd3
	.short	65492                   # 0xffd4
	.short	65492                   # 0xffd4
	.short	65492                   # 0xffd4
	.short	65492                   # 0xffd4
	.short	65492                   # 0xffd4
	.short	65493                   # 0xffd5
	.short	65493                   # 0xffd5
	.short	65493                   # 0xffd5
	.short	65493                   # 0xffd5
	.short	65493                   # 0xffd5
	.short	65494                   # 0xffd6
	.short	65494                   # 0xffd6
	.short	65494                   # 0xffd6
	.short	65494                   # 0xffd6
	.short	65494                   # 0xffd6
	.short	65494                   # 0xffd6
	.short	65495                   # 0xffd7
	.short	65495                   # 0xffd7
	.short	65495                   # 0xffd7
	.short	65495                   # 0xffd7
	.short	65495                   # 0xffd7
	.short	65496                   # 0xffd8
	.short	65496                   # 0xffd8
	.short	65496                   # 0xffd8
	.short	65496                   # 0xffd8
	.short	65496                   # 0xffd8
	.short	65497                   # 0xffd9
	.short	65497                   # 0xffd9
	.short	65497                   # 0xffd9
	.short	65497                   # 0xffd9
	.short	65497                   # 0xffd9
	.short	65497                   # 0xffd9
	.short	65498                   # 0xffda
	.short	65498                   # 0xffda
	.short	65498                   # 0xffda
	.short	65498                   # 0xffda
	.short	65498                   # 0xffda
	.short	65499                   # 0xffdb
	.short	65499                   # 0xffdb
	.short	65499                   # 0xffdb
	.short	65499                   # 0xffdb
	.short	65499                   # 0xffdb
	.short	65500                   # 0xffdc
	.short	65500                   # 0xffdc
	.short	65500                   # 0xffdc
	.short	65500                   # 0xffdc
	.short	65500                   # 0xffdc
	.short	65500                   # 0xffdc
	.short	65501                   # 0xffdd
	.short	65501                   # 0xffdd
	.short	65501                   # 0xffdd
	.short	65501                   # 0xffdd
	.short	65501                   # 0xffdd
	.short	65502                   # 0xffde
	.short	65502                   # 0xffde
	.short	65502                   # 0xffde
	.short	65502                   # 0xffde
	.short	65502                   # 0xffde
	.short	65503                   # 0xffdf
	.short	65503                   # 0xffdf
	.short	65503                   # 0xffdf
	.short	65503                   # 0xffdf
	.short	65503                   # 0xffdf
	.short	65503                   # 0xffdf
	.short	65504                   # 0xffe0
	.short	65504                   # 0xffe0
	.short	65504                   # 0xffe0
	.short	65504                   # 0xffe0
	.short	65504                   # 0xffe0
	.short	65505                   # 0xffe1
	.short	65505                   # 0xffe1
	.short	65505                   # 0xffe1
	.short	65505                   # 0xffe1
	.short	65505                   # 0xffe1
	.short	65506                   # 0xffe2
	.short	65506                   # 0xffe2
	.short	65506                   # 0xffe2
	.short	65506                   # 0xffe2
	.short	65506                   # 0xffe2
	.short	65506                   # 0xffe2
	.short	65507                   # 0xffe3
	.short	65507                   # 0xffe3
	.short	65507                   # 0xffe3
	.short	65507                   # 0xffe3
	.short	65507                   # 0xffe3
	.short	65508                   # 0xffe4
	.short	65508                   # 0xffe4
	.short	65508                   # 0xffe4
	.short	65508                   # 0xffe4
	.short	65508                   # 0xffe4
	.short	65509                   # 0xffe5
	.short	65509                   # 0xffe5
	.short	65509                   # 0xffe5
	.short	65509                   # 0xffe5
	.short	65509                   # 0xffe5
	.short	65509                   # 0xffe5
	.short	65510                   # 0xffe6
	.short	65510                   # 0xffe6
	.short	65510                   # 0xffe6
	.short	65510                   # 0xffe6
	.short	65510                   # 0xffe6
	.short	65511                   # 0xffe7
	.short	65511                   # 0xffe7
	.short	65511                   # 0xffe7
	.short	65511                   # 0xffe7
	.short	65511                   # 0xffe7
	.short	65512                   # 0xffe8
	.short	65512                   # 0xffe8
	.short	65512                   # 0xffe8
	.short	65512                   # 0xffe8
	.short	65512                   # 0xffe8
	.short	65512                   # 0xffe8
	.short	65513                   # 0xffe9
	.short	65513                   # 0xffe9
	.short	65513                   # 0xffe9
	.short	65513                   # 0xffe9
	.short	65513                   # 0xffe9
	.short	65514                   # 0xffea
	.short	65514                   # 0xffea
	.short	65514                   # 0xffea
	.short	65514                   # 0xffea
	.short	65514                   # 0xffea
	.short	65515                   # 0xffeb
	.short	65515                   # 0xffeb
	.short	65515                   # 0xffeb
	.short	65515                   # 0xffeb
	.short	65515                   # 0xffeb
	.short	65515                   # 0xffeb
	.short	65516                   # 0xffec
	.short	65516                   # 0xffec
	.short	65516                   # 0xffec
	.short	65516                   # 0xffec
	.short	65516                   # 0xffec
	.short	65517                   # 0xffed
	.short	65517                   # 0xffed
	.short	65517                   # 0xffed
	.short	65517                   # 0xffed
	.short	65517                   # 0xffed
	.short	65518                   # 0xffee
	.short	65518                   # 0xffee
	.short	65518                   # 0xffee
	.short	65518                   # 0xffee
	.short	65518                   # 0xffee
	.short	65518                   # 0xffee
	.short	65519                   # 0xffef
	.short	65519                   # 0xffef
	.short	65519                   # 0xffef
	.short	65519                   # 0xffef
	.short	65519                   # 0xffef
	.short	65520                   # 0xfff0
	.short	65520                   # 0xfff0
	.short	65520                   # 0xfff0
	.short	65520                   # 0xfff0
	.short	65520                   # 0xfff0
	.short	65521                   # 0xfff1
	.short	65521                   # 0xfff1
	.short	65521                   # 0xfff1
	.short	65521                   # 0xfff1
	.short	65521                   # 0xfff1
	.short	65521                   # 0xfff1
	.short	65522                   # 0xfff2
	.short	65522                   # 0xfff2
	.short	65522                   # 0xfff2
	.short	65522                   # 0xfff2
	.short	65522                   # 0xfff2
	.short	65523                   # 0xfff3
	.short	65523                   # 0xfff3
	.short	65523                   # 0xfff3
	.short	65523                   # 0xfff3
	.short	65523                   # 0xfff3
	.short	65524                   # 0xfff4
	.short	65524                   # 0xfff4
	.short	65524                   # 0xfff4
	.short	65524                   # 0xfff4
	.short	65524                   # 0xfff4
	.short	65524                   # 0xfff4
	.short	65525                   # 0xfff5
	.short	65525                   # 0xfff5
	.short	65525                   # 0xfff5
	.short	65525                   # 0xfff5
	.short	65525                   # 0xfff5
	.short	65526                   # 0xfff6
	.short	65526                   # 0xfff6
	.short	65526                   # 0xfff6
	.short	65526                   # 0xfff6
	.short	65526                   # 0xfff6
	.short	65527                   # 0xfff7
	.short	65527                   # 0xfff7
	.short	65527                   # 0xfff7
	.short	65527                   # 0xfff7
	.short	65527                   # 0xfff7
	.short	65527                   # 0xfff7
	.short	65528                   # 0xfff8
	.short	65528                   # 0xfff8
	.short	65528                   # 0xfff8
	.short	65528                   # 0xfff8
	.short	65528                   # 0xfff8
	.short	65529                   # 0xfff9
	.short	65529                   # 0xfff9
	.short	65529                   # 0xfff9
	.short	65529                   # 0xfff9
	.short	65529                   # 0xfff9
	.short	65530                   # 0xfffa
	.short	65530                   # 0xfffa
	.short	65530                   # 0xfffa
	.short	65530                   # 0xfffa
	.short	65530                   # 0xfffa
	.short	65530                   # 0xfffa
	.short	65531                   # 0xfffb
	.short	65531                   # 0xfffb
	.short	65531                   # 0xfffb
	.short	65531                   # 0xfffb
	.short	65531                   # 0xfffb
	.short	65532                   # 0xfffc
	.short	65532                   # 0xfffc
	.short	65532                   # 0xfffc
	.short	65532                   # 0xfffc
	.short	65532                   # 0xfffc
	.short	65533                   # 0xfffd
	.short	65533                   # 0xfffd
	.short	65533                   # 0xfffd
	.short	65533                   # 0xfffd
	.short	65533                   # 0xfffd
	.short	65533                   # 0xfffd
	.short	65534                   # 0xfffe
	.short	65534                   # 0xfffe
	.short	65534                   # 0xfffe
	.short	65534                   # 0xfffe
	.short	65534                   # 0xfffe
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	3                       # 0x3
	.short	3                       # 0x3
	.short	3                       # 0x3
	.short	3                       # 0x3
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	5                       # 0x5
	.short	5                       # 0x5
	.short	5                       # 0x5
	.short	5                       # 0x5
	.short	5                       # 0x5
	.short	6                       # 0x6
	.short	6                       # 0x6
	.short	6                       # 0x6
	.short	6                       # 0x6
	.short	6                       # 0x6
	.short	6                       # 0x6
	.short	7                       # 0x7
	.short	7                       # 0x7
	.short	7                       # 0x7
	.short	7                       # 0x7
	.short	7                       # 0x7
	.short	8                       # 0x8
	.short	8                       # 0x8
	.short	8                       # 0x8
	.short	8                       # 0x8
	.short	8                       # 0x8
	.short	9                       # 0x9
	.short	9                       # 0x9
	.short	9                       # 0x9
	.short	9                       # 0x9
	.short	9                       # 0x9
	.short	9                       # 0x9
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	11                      # 0xb
	.short	11                      # 0xb
	.short	11                      # 0xb
	.short	11                      # 0xb
	.short	11                      # 0xb
	.short	12                      # 0xc
	.short	12                      # 0xc
	.short	12                      # 0xc
	.short	12                      # 0xc
	.short	12                      # 0xc
	.short	12                      # 0xc
	.short	13                      # 0xd
	.short	13                      # 0xd
	.short	13                      # 0xd
	.short	13                      # 0xd
	.short	13                      # 0xd
	.short	14                      # 0xe
	.short	14                      # 0xe
	.short	14                      # 0xe
	.short	14                      # 0xe
	.short	14                      # 0xe
	.short	15                      # 0xf
	.short	15                      # 0xf
	.short	15                      # 0xf
	.short	15                      # 0xf
	.short	15                      # 0xf
	.short	15                      # 0xf
	.short	16                      # 0x10
	.short	16                      # 0x10
	.short	16                      # 0x10
	.short	16                      # 0x10
	.short	16                      # 0x10
	.short	17                      # 0x11
	.short	17                      # 0x11
	.short	17                      # 0x11
	.short	17                      # 0x11
	.short	17                      # 0x11
	.short	18                      # 0x12
	.short	18                      # 0x12
	.short	18                      # 0x12
	.short	18                      # 0x12
	.short	18                      # 0x12
	.short	18                      # 0x12
	.short	19                      # 0x13
	.short	19                      # 0x13
	.short	19                      # 0x13
	.short	19                      # 0x13
	.short	19                      # 0x13
	.short	20                      # 0x14
	.short	20                      # 0x14
	.short	20                      # 0x14
	.short	20                      # 0x14
	.short	20                      # 0x14
	.short	21                      # 0x15
	.short	21                      # 0x15
	.short	21                      # 0x15
	.short	21                      # 0x15
	.short	21                      # 0x15
	.short	21                      # 0x15
	.short	22                      # 0x16
	.short	22                      # 0x16
	.short	22                      # 0x16
	.short	22                      # 0x16
	.short	22                      # 0x16
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	24                      # 0x18
	.short	24                      # 0x18
	.short	24                      # 0x18
	.short	24                      # 0x18
	.short	24                      # 0x18
	.short	24                      # 0x18
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	26                      # 0x1a
	.short	26                      # 0x1a
	.short	26                      # 0x1a
	.short	26                      # 0x1a
	.short	26                      # 0x1a
	.short	27                      # 0x1b
	.short	27                      # 0x1b
	.short	27                      # 0x1b
	.short	27                      # 0x1b
	.short	27                      # 0x1b
	.short	27                      # 0x1b
	.short	28                      # 0x1c
	.short	28                      # 0x1c
	.short	28                      # 0x1c
	.short	28                      # 0x1c
	.short	28                      # 0x1c
	.short	29                      # 0x1d
	.short	29                      # 0x1d
	.short	29                      # 0x1d
	.short	29                      # 0x1d
	.short	29                      # 0x1d
	.short	30                      # 0x1e
	.short	30                      # 0x1e
	.short	30                      # 0x1e
	.short	30                      # 0x1e
	.short	30                      # 0x1e
	.short	30                      # 0x1e
	.short	31                      # 0x1f
	.short	31                      # 0x1f
	.short	31                      # 0x1f
	.short	31                      # 0x1f
	.short	31                      # 0x1f
	.short	32                      # 0x20
	.short	32                      # 0x20
	.short	32                      # 0x20
	.short	32                      # 0x20
	.short	32                      # 0x20
	.short	33                      # 0x21
	.short	33                      # 0x21
	.short	33                      # 0x21
	.short	33                      # 0x21
	.short	33                      # 0x21
	.short	33                      # 0x21
	.short	34                      # 0x22
	.short	34                      # 0x22
	.short	34                      # 0x22
	.short	34                      # 0x22
	.short	34                      # 0x22
	.short	35                      # 0x23
	.short	35                      # 0x23
	.short	35                      # 0x23
	.short	35                      # 0x23
	.short	35                      # 0x23
	.short	36                      # 0x24
	.short	36                      # 0x24
	.short	36                      # 0x24
	.short	36                      # 0x24
	.short	36                      # 0x24
	.short	36                      # 0x24
	.short	37                      # 0x25
	.short	37                      # 0x25
	.short	37                      # 0x25
	.short	37                      # 0x25
	.short	37                      # 0x25
	.short	38                      # 0x26
	.short	38                      # 0x26
	.short	38                      # 0x26
	.short	38                      # 0x26
	.short	38                      # 0x26
	.short	39                      # 0x27
	.short	39                      # 0x27
	.short	39                      # 0x27
	.short	39                      # 0x27
	.short	39                      # 0x27
	.short	39                      # 0x27
	.short	40                      # 0x28
	.short	40                      # 0x28
	.short	40                      # 0x28
	.short	40                      # 0x28
	.short	40                      # 0x28
	.short	41                      # 0x29
	.short	41                      # 0x29
	.short	41                      # 0x29
	.short	41                      # 0x29
	.short	41                      # 0x29
	.short	42                      # 0x2a
	.short	42                      # 0x2a
	.short	42                      # 0x2a
	.short	42                      # 0x2a
	.short	42                      # 0x2a
	.short	42                      # 0x2a
	.short	43                      # 0x2b
	.short	43                      # 0x2b
	.short	43                      # 0x2b
	.short	43                      # 0x2b
	.short	43                      # 0x2b
	.short	44                      # 0x2c
	.short	44                      # 0x2c
	.short	44                      # 0x2c
	.short	44                      # 0x2c
	.short	44                      # 0x2c
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	46                      # 0x2e
	.short	46                      # 0x2e
	.short	46                      # 0x2e
	.short	46                      # 0x2e
	.short	46                      # 0x2e
	.short	47                      # 0x2f
	.short	47                      # 0x2f
	.short	47                      # 0x2f
	.short	47                      # 0x2f
	.short	47                      # 0x2f
	.short	48                      # 0x30
	.short	48                      # 0x30
	.short	48                      # 0x30
	.short	48                      # 0x30
	.short	48                      # 0x30
	.short	48                      # 0x30
	.short	49                      # 0x31
	.short	49                      # 0x31
	.short	49                      # 0x31
	.short	49                      # 0x31
	.short	49                      # 0x31
	.short	50                      # 0x32
	.short	50                      # 0x32
	.short	50                      # 0x32
	.short	50                      # 0x32
	.short	50                      # 0x32
	.short	51                      # 0x33
	.short	51                      # 0x33
	.short	51                      # 0x33
	.short	51                      # 0x33
	.short	51                      # 0x33
	.short	51                      # 0x33
	.short	52                      # 0x34
	.short	52                      # 0x34
	.short	52                      # 0x34
	.short	52                      # 0x34
	.short	52                      # 0x34
	.short	53                      # 0x35
	.short	53                      # 0x35
	.short	53                      # 0x35
	.short	53                      # 0x35
	.short	53                      # 0x35
	.short	54                      # 0x36
	.short	54                      # 0x36
	.short	54                      # 0x36
	.short	54                      # 0x36
	.short	54                      # 0x36
	.short	54                      # 0x36
	.short	55                      # 0x37
	.short	55                      # 0x37
	.short	55                      # 0x37
	.short	55                      # 0x37
	.short	55                      # 0x37
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	57                      # 0x39
	.short	57                      # 0x39
	.short	57                      # 0x39
	.short	57                      # 0x39
	.short	57                      # 0x39
	.short	57                      # 0x39
	.short	58                      # 0x3a
	.short	58                      # 0x3a
	.short	58                      # 0x3a
	.short	58                      # 0x3a
	.short	58                      # 0x3a
	.short	59                      # 0x3b
	.short	59                      # 0x3b
	.short	59                      # 0x3b
	.short	59                      # 0x3b
	.short	59                      # 0x3b
	.short	60                      # 0x3c
	.short	60                      # 0x3c
	.short	60                      # 0x3c
	.short	60                      # 0x3c
	.short	60                      # 0x3c
	.short	60                      # 0x3c
	.short	61                      # 0x3d
	.short	61                      # 0x3d
	.short	61                      # 0x3d
	.short	61                      # 0x3d
	.short	61                      # 0x3d
	.short	62                      # 0x3e
	.short	62                      # 0x3e
	.short	62                      # 0x3e
	.short	62                      # 0x3e
	.short	62                      # 0x3e
	.short	63                      # 0x3f
	.short	63                      # 0x3f
	.short	63                      # 0x3f
	.short	63                      # 0x3f
	.short	63                      # 0x3f
	.short	63                      # 0x3f
	.short	64                      # 0x40
	.short	64                      # 0x40
	.short	64                      # 0x40
	.short	64                      # 0x40
	.short	64                      # 0x40
	.short	65                      # 0x41
	.short	65                      # 0x41
	.short	65                      # 0x41
	.short	65                      # 0x41
	.short	65                      # 0x41
	.short	66                      # 0x42
	.short	66                      # 0x42
	.short	66                      # 0x42
	.short	66                      # 0x42
	.short	66                      # 0x42
	.short	66                      # 0x42
	.short	67                      # 0x43
	.short	67                      # 0x43
	.short	67                      # 0x43
	.short	67                      # 0x43
	.short	67                      # 0x43
	.short	68                      # 0x44
	.short	68                      # 0x44
	.short	68                      # 0x44
	.short	68                      # 0x44
	.short	68                      # 0x44
	.short	69                      # 0x45
	.short	69                      # 0x45
	.short	69                      # 0x45
	.short	69                      # 0x45
	.short	69                      # 0x45
	.short	69                      # 0x45
	.short	70                      # 0x46
	.short	70                      # 0x46
	.short	70                      # 0x46
	.short	70                      # 0x46
	.short	70                      # 0x46
	.short	71                      # 0x47
	.short	71                      # 0x47
	.short	71                      # 0x47
	.short	71                      # 0x47
	.short	71                      # 0x47
	.short	72                      # 0x48
	.short	72                      # 0x48
	.short	72                      # 0x48
	.short	72                      # 0x48
	.short	72                      # 0x48
	.short	72                      # 0x48
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	74                      # 0x4a
	.short	74                      # 0x4a
	.short	74                      # 0x4a
	.short	74                      # 0x4a
	.short	74                      # 0x4a
	.short	75                      # 0x4b
	.short	75                      # 0x4b
	.short	75                      # 0x4b
	.short	75                      # 0x4b
	.short	75                      # 0x4b
	.short	75                      # 0x4b
	.short	76                      # 0x4c
	.short	76                      # 0x4c
	.short	76                      # 0x4c
	.short	76                      # 0x4c
	.short	76                      # 0x4c
	.short	77                      # 0x4d
	.short	77                      # 0x4d
	.short	77                      # 0x4d
	.short	77                      # 0x4d
	.short	77                      # 0x4d
	.short	78                      # 0x4e
	.short	78                      # 0x4e
	.short	78                      # 0x4e
	.short	78                      # 0x4e
	.short	78                      # 0x4e
	.short	78                      # 0x4e
	.short	79                      # 0x4f
	.short	79                      # 0x4f
	.short	79                      # 0x4f
	.short	79                      # 0x4f
	.short	79                      # 0x4f
	.short	80                      # 0x50
	.short	80                      # 0x50
	.short	80                      # 0x50
	.short	80                      # 0x50
	.short	80                      # 0x50
	.short	81                      # 0x51
	.short	81                      # 0x51
	.short	81                      # 0x51
	.short	81                      # 0x51
	.short	81                      # 0x51
	.short	81                      # 0x51
	.short	82                      # 0x52
	.short	82                      # 0x52
	.short	82                      # 0x52
	.short	82                      # 0x52
	.short	82                      # 0x52
	.short	83                      # 0x53
	.short	83                      # 0x53
	.short	83                      # 0x53
	.short	83                      # 0x53
	.short	83                      # 0x53
	.short	84                      # 0x54
	.short	84                      # 0x54
	.short	84                      # 0x54
	.short	84                      # 0x54
	.short	84                      # 0x54
	.short	84                      # 0x54
	.short	85                      # 0x55
	.short	85                      # 0x55
	.short	85                      # 0x55
	.short	85                      # 0x55
	.short	85                      # 0x55
	.short	86                      # 0x56
	.short	86                      # 0x56
	.short	86                      # 0x56
	.short	86                      # 0x56
	.short	86                      # 0x56
	.short	87                      # 0x57
	.short	87                      # 0x57
	.short	87                      # 0x57
	.short	87                      # 0x57
	.short	87                      # 0x57
	.short	87                      # 0x57
	.short	88                      # 0x58
	.short	88                      # 0x58
	.short	88                      # 0x58
	.short	88                      # 0x58
	.short	88                      # 0x58
	.short	89                      # 0x59
	.short	89                      # 0x59
	.short	89                      # 0x59
	.short	89                      # 0x59
	.short	89                      # 0x59
	.short	90                      # 0x5a
	.short	90                      # 0x5a
	.short	90                      # 0x5a
	.short	90                      # 0x5a
	.short	90                      # 0x5a
	.short	90                      # 0x5a
	.short	91                      # 0x5b
	.short	91                      # 0x5b
	.short	91                      # 0x5b
	.short	91                      # 0x5b
	.short	91                      # 0x5b
	.short	92                      # 0x5c
	.short	92                      # 0x5c
	.short	92                      # 0x5c
	.short	92                      # 0x5c
	.short	92                      # 0x5c
	.short	93                      # 0x5d
	.short	93                      # 0x5d
	.short	93                      # 0x5d
	.short	93                      # 0x5d
	.short	93                      # 0x5d
	.short	93                      # 0x5d
	.short	94                      # 0x5e
	.short	94                      # 0x5e
	.short	94                      # 0x5e
	.short	94                      # 0x5e
	.short	94                      # 0x5e
	.short	95                      # 0x5f
	.short	95                      # 0x5f
	.short	95                      # 0x5f
	.short	95                      # 0x5f
	.short	95                      # 0x5f
	.short	96                      # 0x60
	.short	96                      # 0x60
	.size	floyd_steinberg_error2, 2050

	.type	floyd_steinberg_error3,@object # @floyd_steinberg_error3
	.align	16
floyd_steinberg_error3:
	.short	65377                   # 0xff61
	.short	65377                   # 0xff61
	.short	65377                   # 0xff61
	.short	65378                   # 0xff62
	.short	65378                   # 0xff62
	.short	65378                   # 0xff62
	.short	65379                   # 0xff63
	.short	65379                   # 0xff63
	.short	65379                   # 0xff63
	.short	65380                   # 0xff64
	.short	65380                   # 0xff64
	.short	65380                   # 0xff64
	.short	65381                   # 0xff65
	.short	65381                   # 0xff65
	.short	65381                   # 0xff65
	.short	65381                   # 0xff65
	.short	65382                   # 0xff66
	.short	65382                   # 0xff66
	.short	65382                   # 0xff66
	.short	65383                   # 0xff67
	.short	65383                   # 0xff67
	.short	65383                   # 0xff67
	.short	65384                   # 0xff68
	.short	65384                   # 0xff68
	.short	65384                   # 0xff68
	.short	65385                   # 0xff69
	.short	65385                   # 0xff69
	.short	65385                   # 0xff69
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	65387                   # 0xff6b
	.short	65387                   # 0xff6b
	.short	65387                   # 0xff6b
	.short	65388                   # 0xff6c
	.short	65388                   # 0xff6c
	.short	65388                   # 0xff6c
	.short	65389                   # 0xff6d
	.short	65389                   # 0xff6d
	.short	65389                   # 0xff6d
	.short	65390                   # 0xff6e
	.short	65390                   # 0xff6e
	.short	65390                   # 0xff6e
	.short	65391                   # 0xff6f
	.short	65391                   # 0xff6f
	.short	65391                   # 0xff6f
	.short	65391                   # 0xff6f
	.short	65392                   # 0xff70
	.short	65392                   # 0xff70
	.short	65392                   # 0xff70
	.short	65393                   # 0xff71
	.short	65393                   # 0xff71
	.short	65393                   # 0xff71
	.short	65394                   # 0xff72
	.short	65394                   # 0xff72
	.short	65394                   # 0xff72
	.short	65395                   # 0xff73
	.short	65395                   # 0xff73
	.short	65395                   # 0xff73
	.short	65396                   # 0xff74
	.short	65396                   # 0xff74
	.short	65396                   # 0xff74
	.short	65396                   # 0xff74
	.short	65397                   # 0xff75
	.short	65397                   # 0xff75
	.short	65397                   # 0xff75
	.short	65398                   # 0xff76
	.short	65398                   # 0xff76
	.short	65398                   # 0xff76
	.short	65399                   # 0xff77
	.short	65399                   # 0xff77
	.short	65399                   # 0xff77
	.short	65400                   # 0xff78
	.short	65400                   # 0xff78
	.short	65400                   # 0xff78
	.short	65401                   # 0xff79
	.short	65401                   # 0xff79
	.short	65401                   # 0xff79
	.short	65401                   # 0xff79
	.short	65402                   # 0xff7a
	.short	65402                   # 0xff7a
	.short	65402                   # 0xff7a
	.short	65403                   # 0xff7b
	.short	65403                   # 0xff7b
	.short	65403                   # 0xff7b
	.short	65404                   # 0xff7c
	.short	65404                   # 0xff7c
	.short	65404                   # 0xff7c
	.short	65405                   # 0xff7d
	.short	65405                   # 0xff7d
	.short	65405                   # 0xff7d
	.short	65406                   # 0xff7e
	.short	65406                   # 0xff7e
	.short	65406                   # 0xff7e
	.short	65406                   # 0xff7e
	.short	65407                   # 0xff7f
	.short	65407                   # 0xff7f
	.short	65407                   # 0xff7f
	.short	65408                   # 0xff80
	.short	65408                   # 0xff80
	.short	65408                   # 0xff80
	.short	65409                   # 0xff81
	.short	65409                   # 0xff81
	.short	65409                   # 0xff81
	.short	65410                   # 0xff82
	.short	65410                   # 0xff82
	.short	65410                   # 0xff82
	.short	65411                   # 0xff83
	.short	65411                   # 0xff83
	.short	65411                   # 0xff83
	.short	65411                   # 0xff83
	.short	65412                   # 0xff84
	.short	65412                   # 0xff84
	.short	65412                   # 0xff84
	.short	65413                   # 0xff85
	.short	65413                   # 0xff85
	.short	65413                   # 0xff85
	.short	65414                   # 0xff86
	.short	65414                   # 0xff86
	.short	65414                   # 0xff86
	.short	65415                   # 0xff87
	.short	65415                   # 0xff87
	.short	65415                   # 0xff87
	.short	65416                   # 0xff88
	.short	65416                   # 0xff88
	.short	65416                   # 0xff88
	.short	65416                   # 0xff88
	.short	65417                   # 0xff89
	.short	65417                   # 0xff89
	.short	65417                   # 0xff89
	.short	65418                   # 0xff8a
	.short	65418                   # 0xff8a
	.short	65418                   # 0xff8a
	.short	65419                   # 0xff8b
	.short	65419                   # 0xff8b
	.short	65419                   # 0xff8b
	.short	65420                   # 0xff8c
	.short	65420                   # 0xff8c
	.short	65420                   # 0xff8c
	.short	65421                   # 0xff8d
	.short	65421                   # 0xff8d
	.short	65421                   # 0xff8d
	.short	65421                   # 0xff8d
	.short	65422                   # 0xff8e
	.short	65422                   # 0xff8e
	.short	65422                   # 0xff8e
	.short	65423                   # 0xff8f
	.short	65423                   # 0xff8f
	.short	65423                   # 0xff8f
	.short	65424                   # 0xff90
	.short	65424                   # 0xff90
	.short	65424                   # 0xff90
	.short	65425                   # 0xff91
	.short	65425                   # 0xff91
	.short	65425                   # 0xff91
	.short	65426                   # 0xff92
	.short	65426                   # 0xff92
	.short	65426                   # 0xff92
	.short	65426                   # 0xff92
	.short	65427                   # 0xff93
	.short	65427                   # 0xff93
	.short	65427                   # 0xff93
	.short	65428                   # 0xff94
	.short	65428                   # 0xff94
	.short	65428                   # 0xff94
	.short	65429                   # 0xff95
	.short	65429                   # 0xff95
	.short	65429                   # 0xff95
	.short	65430                   # 0xff96
	.short	65430                   # 0xff96
	.short	65430                   # 0xff96
	.short	65431                   # 0xff97
	.short	65431                   # 0xff97
	.short	65431                   # 0xff97
	.short	65431                   # 0xff97
	.short	65432                   # 0xff98
	.short	65432                   # 0xff98
	.short	65432                   # 0xff98
	.short	65433                   # 0xff99
	.short	65433                   # 0xff99
	.short	65433                   # 0xff99
	.short	65434                   # 0xff9a
	.short	65434                   # 0xff9a
	.short	65434                   # 0xff9a
	.short	65435                   # 0xff9b
	.short	65435                   # 0xff9b
	.short	65435                   # 0xff9b
	.short	65436                   # 0xff9c
	.short	65436                   # 0xff9c
	.short	65436                   # 0xff9c
	.short	65436                   # 0xff9c
	.short	65437                   # 0xff9d
	.short	65437                   # 0xff9d
	.short	65437                   # 0xff9d
	.short	65438                   # 0xff9e
	.short	65438                   # 0xff9e
	.short	65438                   # 0xff9e
	.short	65439                   # 0xff9f
	.short	65439                   # 0xff9f
	.short	65439                   # 0xff9f
	.short	65440                   # 0xffa0
	.short	65440                   # 0xffa0
	.short	65440                   # 0xffa0
	.short	65441                   # 0xffa1
	.short	65441                   # 0xffa1
	.short	65441                   # 0xffa1
	.short	65441                   # 0xffa1
	.short	65442                   # 0xffa2
	.short	65442                   # 0xffa2
	.short	65442                   # 0xffa2
	.short	65443                   # 0xffa3
	.short	65443                   # 0xffa3
	.short	65443                   # 0xffa3
	.short	65444                   # 0xffa4
	.short	65444                   # 0xffa4
	.short	65444                   # 0xffa4
	.short	65445                   # 0xffa5
	.short	65445                   # 0xffa5
	.short	65445                   # 0xffa5
	.short	65446                   # 0xffa6
	.short	65446                   # 0xffa6
	.short	65446                   # 0xffa6
	.short	65446                   # 0xffa6
	.short	65447                   # 0xffa7
	.short	65447                   # 0xffa7
	.short	65447                   # 0xffa7
	.short	65448                   # 0xffa8
	.short	65448                   # 0xffa8
	.short	65448                   # 0xffa8
	.short	65449                   # 0xffa9
	.short	65449                   # 0xffa9
	.short	65449                   # 0xffa9
	.short	65450                   # 0xffaa
	.short	65450                   # 0xffaa
	.short	65450                   # 0xffaa
	.short	65451                   # 0xffab
	.short	65451                   # 0xffab
	.short	65451                   # 0xffab
	.short	65451                   # 0xffab
	.short	65452                   # 0xffac
	.short	65452                   # 0xffac
	.short	65452                   # 0xffac
	.short	65453                   # 0xffad
	.short	65453                   # 0xffad
	.short	65453                   # 0xffad
	.short	65454                   # 0xffae
	.short	65454                   # 0xffae
	.short	65454                   # 0xffae
	.short	65455                   # 0xffaf
	.short	65455                   # 0xffaf
	.short	65455                   # 0xffaf
	.short	65456                   # 0xffb0
	.short	65456                   # 0xffb0
	.short	65456                   # 0xffb0
	.short	65456                   # 0xffb0
	.short	65457                   # 0xffb1
	.short	65457                   # 0xffb1
	.short	65457                   # 0xffb1
	.short	65458                   # 0xffb2
	.short	65458                   # 0xffb2
	.short	65458                   # 0xffb2
	.short	65459                   # 0xffb3
	.short	65459                   # 0xffb3
	.short	65459                   # 0xffb3
	.short	65460                   # 0xffb4
	.short	65460                   # 0xffb4
	.short	65460                   # 0xffb4
	.short	65461                   # 0xffb5
	.short	65461                   # 0xffb5
	.short	65461                   # 0xffb5
	.short	65461                   # 0xffb5
	.short	65462                   # 0xffb6
	.short	65462                   # 0xffb6
	.short	65462                   # 0xffb6
	.short	65463                   # 0xffb7
	.short	65463                   # 0xffb7
	.short	65463                   # 0xffb7
	.short	65464                   # 0xffb8
	.short	65464                   # 0xffb8
	.short	65464                   # 0xffb8
	.short	65465                   # 0xffb9
	.short	65465                   # 0xffb9
	.short	65465                   # 0xffb9
	.short	65466                   # 0xffba
	.short	65466                   # 0xffba
	.short	65466                   # 0xffba
	.short	65466                   # 0xffba
	.short	65467                   # 0xffbb
	.short	65467                   # 0xffbb
	.short	65467                   # 0xffbb
	.short	65468                   # 0xffbc
	.short	65468                   # 0xffbc
	.short	65468                   # 0xffbc
	.short	65469                   # 0xffbd
	.short	65469                   # 0xffbd
	.short	65469                   # 0xffbd
	.short	65470                   # 0xffbe
	.short	65470                   # 0xffbe
	.short	65470                   # 0xffbe
	.short	65471                   # 0xffbf
	.short	65471                   # 0xffbf
	.short	65471                   # 0xffbf
	.short	65471                   # 0xffbf
	.short	65472                   # 0xffc0
	.short	65472                   # 0xffc0
	.short	65472                   # 0xffc0
	.short	65473                   # 0xffc1
	.short	65473                   # 0xffc1
	.short	65473                   # 0xffc1
	.short	65474                   # 0xffc2
	.short	65474                   # 0xffc2
	.short	65474                   # 0xffc2
	.short	65475                   # 0xffc3
	.short	65475                   # 0xffc3
	.short	65475                   # 0xffc3
	.short	65476                   # 0xffc4
	.short	65476                   # 0xffc4
	.short	65476                   # 0xffc4
	.short	65476                   # 0xffc4
	.short	65477                   # 0xffc5
	.short	65477                   # 0xffc5
	.short	65477                   # 0xffc5
	.short	65478                   # 0xffc6
	.short	65478                   # 0xffc6
	.short	65478                   # 0xffc6
	.short	65479                   # 0xffc7
	.short	65479                   # 0xffc7
	.short	65479                   # 0xffc7
	.short	65480                   # 0xffc8
	.short	65480                   # 0xffc8
	.short	65480                   # 0xffc8
	.short	65481                   # 0xffc9
	.short	65481                   # 0xffc9
	.short	65481                   # 0xffc9
	.short	65481                   # 0xffc9
	.short	65482                   # 0xffca
	.short	65482                   # 0xffca
	.short	65482                   # 0xffca
	.short	65483                   # 0xffcb
	.short	65483                   # 0xffcb
	.short	65483                   # 0xffcb
	.short	65484                   # 0xffcc
	.short	65484                   # 0xffcc
	.short	65484                   # 0xffcc
	.short	65485                   # 0xffcd
	.short	65485                   # 0xffcd
	.short	65485                   # 0xffcd
	.short	65486                   # 0xffce
	.short	65486                   # 0xffce
	.short	65486                   # 0xffce
	.short	65486                   # 0xffce
	.short	65487                   # 0xffcf
	.short	65487                   # 0xffcf
	.short	65487                   # 0xffcf
	.short	65488                   # 0xffd0
	.short	65488                   # 0xffd0
	.short	65488                   # 0xffd0
	.short	65489                   # 0xffd1
	.short	65489                   # 0xffd1
	.short	65489                   # 0xffd1
	.short	65490                   # 0xffd2
	.short	65490                   # 0xffd2
	.short	65490                   # 0xffd2
	.short	65491                   # 0xffd3
	.short	65491                   # 0xffd3
	.short	65491                   # 0xffd3
	.short	65491                   # 0xffd3
	.short	65492                   # 0xffd4
	.short	65492                   # 0xffd4
	.short	65492                   # 0xffd4
	.short	65493                   # 0xffd5
	.short	65493                   # 0xffd5
	.short	65493                   # 0xffd5
	.short	65494                   # 0xffd6
	.short	65494                   # 0xffd6
	.short	65494                   # 0xffd6
	.short	65495                   # 0xffd7
	.short	65495                   # 0xffd7
	.short	65495                   # 0xffd7
	.short	65496                   # 0xffd8
	.short	65496                   # 0xffd8
	.short	65496                   # 0xffd8
	.short	65496                   # 0xffd8
	.short	65497                   # 0xffd9
	.short	65497                   # 0xffd9
	.short	65497                   # 0xffd9
	.short	65498                   # 0xffda
	.short	65498                   # 0xffda
	.short	65498                   # 0xffda
	.short	65499                   # 0xffdb
	.short	65499                   # 0xffdb
	.short	65499                   # 0xffdb
	.short	65500                   # 0xffdc
	.short	65500                   # 0xffdc
	.short	65500                   # 0xffdc
	.short	65501                   # 0xffdd
	.short	65501                   # 0xffdd
	.short	65501                   # 0xffdd
	.short	65501                   # 0xffdd
	.short	65502                   # 0xffde
	.short	65502                   # 0xffde
	.short	65502                   # 0xffde
	.short	65503                   # 0xffdf
	.short	65503                   # 0xffdf
	.short	65503                   # 0xffdf
	.short	65504                   # 0xffe0
	.short	65504                   # 0xffe0
	.short	65504                   # 0xffe0
	.short	65505                   # 0xffe1
	.short	65505                   # 0xffe1
	.short	65505                   # 0xffe1
	.short	65506                   # 0xffe2
	.short	65506                   # 0xffe2
	.short	65506                   # 0xffe2
	.short	65506                   # 0xffe2
	.short	65507                   # 0xffe3
	.short	65507                   # 0xffe3
	.short	65507                   # 0xffe3
	.short	65508                   # 0xffe4
	.short	65508                   # 0xffe4
	.short	65508                   # 0xffe4
	.short	65509                   # 0xffe5
	.short	65509                   # 0xffe5
	.short	65509                   # 0xffe5
	.short	65510                   # 0xffe6
	.short	65510                   # 0xffe6
	.short	65510                   # 0xffe6
	.short	65511                   # 0xffe7
	.short	65511                   # 0xffe7
	.short	65511                   # 0xffe7
	.short	65511                   # 0xffe7
	.short	65512                   # 0xffe8
	.short	65512                   # 0xffe8
	.short	65512                   # 0xffe8
	.short	65513                   # 0xffe9
	.short	65513                   # 0xffe9
	.short	65513                   # 0xffe9
	.short	65514                   # 0xffea
	.short	65514                   # 0xffea
	.short	65514                   # 0xffea
	.short	65515                   # 0xffeb
	.short	65515                   # 0xffeb
	.short	65515                   # 0xffeb
	.short	65516                   # 0xffec
	.short	65516                   # 0xffec
	.short	65516                   # 0xffec
	.short	65516                   # 0xffec
	.short	65517                   # 0xffed
	.short	65517                   # 0xffed
	.short	65517                   # 0xffed
	.short	65518                   # 0xffee
	.short	65518                   # 0xffee
	.short	65518                   # 0xffee
	.short	65519                   # 0xffef
	.short	65519                   # 0xffef
	.short	65519                   # 0xffef
	.short	65520                   # 0xfff0
	.short	65520                   # 0xfff0
	.short	65520                   # 0xfff0
	.short	65521                   # 0xfff1
	.short	65521                   # 0xfff1
	.short	65521                   # 0xfff1
	.short	65521                   # 0xfff1
	.short	65522                   # 0xfff2
	.short	65522                   # 0xfff2
	.short	65522                   # 0xfff2
	.short	65523                   # 0xfff3
	.short	65523                   # 0xfff3
	.short	65523                   # 0xfff3
	.short	65524                   # 0xfff4
	.short	65524                   # 0xfff4
	.short	65524                   # 0xfff4
	.short	65525                   # 0xfff5
	.short	65525                   # 0xfff5
	.short	65525                   # 0xfff5
	.short	65526                   # 0xfff6
	.short	65526                   # 0xfff6
	.short	65526                   # 0xfff6
	.short	65526                   # 0xfff6
	.short	65527                   # 0xfff7
	.short	65527                   # 0xfff7
	.short	65527                   # 0xfff7
	.short	65528                   # 0xfff8
	.short	65528                   # 0xfff8
	.short	65528                   # 0xfff8
	.short	65529                   # 0xfff9
	.short	65529                   # 0xfff9
	.short	65529                   # 0xfff9
	.short	65530                   # 0xfffa
	.short	65530                   # 0xfffa
	.short	65530                   # 0xfffa
	.short	65531                   # 0xfffb
	.short	65531                   # 0xfffb
	.short	65531                   # 0xfffb
	.short	65531                   # 0xfffb
	.short	65532                   # 0xfffc
	.short	65532                   # 0xfffc
	.short	65532                   # 0xfffc
	.short	65533                   # 0xfffd
	.short	65533                   # 0xfffd
	.short	65533                   # 0xfffd
	.short	65534                   # 0xfffe
	.short	65534                   # 0xfffe
	.short	65534                   # 0xfffe
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	3                       # 0x3
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	5                       # 0x5
	.short	5                       # 0x5
	.short	5                       # 0x5
	.short	5                       # 0x5
	.short	6                       # 0x6
	.short	6                       # 0x6
	.short	6                       # 0x6
	.short	7                       # 0x7
	.short	7                       # 0x7
	.short	7                       # 0x7
	.short	8                       # 0x8
	.short	8                       # 0x8
	.short	8                       # 0x8
	.short	9                       # 0x9
	.short	9                       # 0x9
	.short	9                       # 0x9
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	11                      # 0xb
	.short	11                      # 0xb
	.short	11                      # 0xb
	.short	12                      # 0xc
	.short	12                      # 0xc
	.short	12                      # 0xc
	.short	13                      # 0xd
	.short	13                      # 0xd
	.short	13                      # 0xd
	.short	14                      # 0xe
	.short	14                      # 0xe
	.short	14                      # 0xe
	.short	15                      # 0xf
	.short	15                      # 0xf
	.short	15                      # 0xf
	.short	15                      # 0xf
	.short	16                      # 0x10
	.short	16                      # 0x10
	.short	16                      # 0x10
	.short	17                      # 0x11
	.short	17                      # 0x11
	.short	17                      # 0x11
	.short	18                      # 0x12
	.short	18                      # 0x12
	.short	18                      # 0x12
	.short	19                      # 0x13
	.short	19                      # 0x13
	.short	19                      # 0x13
	.short	20                      # 0x14
	.short	20                      # 0x14
	.short	20                      # 0x14
	.short	20                      # 0x14
	.short	21                      # 0x15
	.short	21                      # 0x15
	.short	21                      # 0x15
	.short	22                      # 0x16
	.short	22                      # 0x16
	.short	22                      # 0x16
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	24                      # 0x18
	.short	24                      # 0x18
	.short	24                      # 0x18
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	26                      # 0x1a
	.short	26                      # 0x1a
	.short	26                      # 0x1a
	.short	27                      # 0x1b
	.short	27                      # 0x1b
	.short	27                      # 0x1b
	.short	28                      # 0x1c
	.short	28                      # 0x1c
	.short	28                      # 0x1c
	.short	29                      # 0x1d
	.short	29                      # 0x1d
	.short	29                      # 0x1d
	.short	30                      # 0x1e
	.short	30                      # 0x1e
	.short	30                      # 0x1e
	.short	30                      # 0x1e
	.short	31                      # 0x1f
	.short	31                      # 0x1f
	.short	31                      # 0x1f
	.short	32                      # 0x20
	.short	32                      # 0x20
	.short	32                      # 0x20
	.short	33                      # 0x21
	.short	33                      # 0x21
	.short	33                      # 0x21
	.short	34                      # 0x22
	.short	34                      # 0x22
	.short	34                      # 0x22
	.short	35                      # 0x23
	.short	35                      # 0x23
	.short	35                      # 0x23
	.short	35                      # 0x23
	.short	36                      # 0x24
	.short	36                      # 0x24
	.short	36                      # 0x24
	.short	37                      # 0x25
	.short	37                      # 0x25
	.short	37                      # 0x25
	.short	38                      # 0x26
	.short	38                      # 0x26
	.short	38                      # 0x26
	.short	39                      # 0x27
	.short	39                      # 0x27
	.short	39                      # 0x27
	.short	40                      # 0x28
	.short	40                      # 0x28
	.short	40                      # 0x28
	.short	40                      # 0x28
	.short	41                      # 0x29
	.short	41                      # 0x29
	.short	41                      # 0x29
	.short	42                      # 0x2a
	.short	42                      # 0x2a
	.short	42                      # 0x2a
	.short	43                      # 0x2b
	.short	43                      # 0x2b
	.short	43                      # 0x2b
	.short	44                      # 0x2c
	.short	44                      # 0x2c
	.short	44                      # 0x2c
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	46                      # 0x2e
	.short	46                      # 0x2e
	.short	46                      # 0x2e
	.short	47                      # 0x2f
	.short	47                      # 0x2f
	.short	47                      # 0x2f
	.short	48                      # 0x30
	.short	48                      # 0x30
	.short	48                      # 0x30
	.short	49                      # 0x31
	.short	49                      # 0x31
	.short	49                      # 0x31
	.short	50                      # 0x32
	.short	50                      # 0x32
	.short	50                      # 0x32
	.short	50                      # 0x32
	.short	51                      # 0x33
	.short	51                      # 0x33
	.short	51                      # 0x33
	.short	52                      # 0x34
	.short	52                      # 0x34
	.short	52                      # 0x34
	.short	53                      # 0x35
	.short	53                      # 0x35
	.short	53                      # 0x35
	.short	54                      # 0x36
	.short	54                      # 0x36
	.short	54                      # 0x36
	.short	55                      # 0x37
	.short	55                      # 0x37
	.short	55                      # 0x37
	.short	55                      # 0x37
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	57                      # 0x39
	.short	57                      # 0x39
	.short	57                      # 0x39
	.short	58                      # 0x3a
	.short	58                      # 0x3a
	.short	58                      # 0x3a
	.short	59                      # 0x3b
	.short	59                      # 0x3b
	.short	59                      # 0x3b
	.short	60                      # 0x3c
	.short	60                      # 0x3c
	.short	60                      # 0x3c
	.short	60                      # 0x3c
	.short	61                      # 0x3d
	.short	61                      # 0x3d
	.short	61                      # 0x3d
	.short	62                      # 0x3e
	.short	62                      # 0x3e
	.short	62                      # 0x3e
	.short	63                      # 0x3f
	.short	63                      # 0x3f
	.short	63                      # 0x3f
	.short	64                      # 0x40
	.short	64                      # 0x40
	.short	64                      # 0x40
	.short	65                      # 0x41
	.short	65                      # 0x41
	.short	65                      # 0x41
	.short	65                      # 0x41
	.short	66                      # 0x42
	.short	66                      # 0x42
	.short	66                      # 0x42
	.short	67                      # 0x43
	.short	67                      # 0x43
	.short	67                      # 0x43
	.short	68                      # 0x44
	.short	68                      # 0x44
	.short	68                      # 0x44
	.short	69                      # 0x45
	.short	69                      # 0x45
	.short	69                      # 0x45
	.short	70                      # 0x46
	.short	70                      # 0x46
	.short	70                      # 0x46
	.short	70                      # 0x46
	.short	71                      # 0x47
	.short	71                      # 0x47
	.short	71                      # 0x47
	.short	72                      # 0x48
	.short	72                      # 0x48
	.short	72                      # 0x48
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	74                      # 0x4a
	.short	74                      # 0x4a
	.short	74                      # 0x4a
	.short	75                      # 0x4b
	.short	75                      # 0x4b
	.short	75                      # 0x4b
	.short	75                      # 0x4b
	.short	76                      # 0x4c
	.short	76                      # 0x4c
	.short	76                      # 0x4c
	.short	77                      # 0x4d
	.short	77                      # 0x4d
	.short	77                      # 0x4d
	.short	78                      # 0x4e
	.short	78                      # 0x4e
	.short	78                      # 0x4e
	.short	79                      # 0x4f
	.short	79                      # 0x4f
	.short	79                      # 0x4f
	.short	80                      # 0x50
	.short	80                      # 0x50
	.short	80                      # 0x50
	.short	80                      # 0x50
	.short	81                      # 0x51
	.short	81                      # 0x51
	.short	81                      # 0x51
	.short	82                      # 0x52
	.short	82                      # 0x52
	.short	82                      # 0x52
	.short	83                      # 0x53
	.short	83                      # 0x53
	.short	83                      # 0x53
	.short	84                      # 0x54
	.short	84                      # 0x54
	.short	84                      # 0x54
	.short	85                      # 0x55
	.short	85                      # 0x55
	.short	85                      # 0x55
	.short	85                      # 0x55
	.short	86                      # 0x56
	.short	86                      # 0x56
	.short	86                      # 0x56
	.short	87                      # 0x57
	.short	87                      # 0x57
	.short	87                      # 0x57
	.short	88                      # 0x58
	.short	88                      # 0x58
	.short	88                      # 0x58
	.short	89                      # 0x59
	.short	89                      # 0x59
	.short	89                      # 0x59
	.short	90                      # 0x5a
	.short	90                      # 0x5a
	.short	90                      # 0x5a
	.short	90                      # 0x5a
	.short	91                      # 0x5b
	.short	91                      # 0x5b
	.short	91                      # 0x5b
	.short	92                      # 0x5c
	.short	92                      # 0x5c
	.short	92                      # 0x5c
	.short	93                      # 0x5d
	.short	93                      # 0x5d
	.short	93                      # 0x5d
	.short	94                      # 0x5e
	.short	94                      # 0x5e
	.short	94                      # 0x5e
	.short	95                      # 0x5f
	.short	95                      # 0x5f
	.short	95                      # 0x5f
	.short	95                      # 0x5f
	.short	96                      # 0x60
	.short	96                      # 0x60
	.short	96                      # 0x60
	.short	97                      # 0x61
	.short	97                      # 0x61
	.short	97                      # 0x61
	.short	98                      # 0x62
	.short	98                      # 0x62
	.short	98                      # 0x62
	.short	99                      # 0x63
	.short	99                      # 0x63
	.short	99                      # 0x63
	.short	100                     # 0x64
	.short	100                     # 0x64
	.short	100                     # 0x64
	.short	100                     # 0x64
	.short	101                     # 0x65
	.short	101                     # 0x65
	.short	101                     # 0x65
	.short	102                     # 0x66
	.short	102                     # 0x66
	.short	102                     # 0x66
	.short	103                     # 0x67
	.short	103                     # 0x67
	.short	103                     # 0x67
	.short	104                     # 0x68
	.short	104                     # 0x68
	.short	104                     # 0x68
	.short	105                     # 0x69
	.short	105                     # 0x69
	.short	105                     # 0x69
	.short	105                     # 0x69
	.short	106                     # 0x6a
	.short	106                     # 0x6a
	.short	106                     # 0x6a
	.short	107                     # 0x6b
	.short	107                     # 0x6b
	.short	107                     # 0x6b
	.short	108                     # 0x6c
	.short	108                     # 0x6c
	.short	108                     # 0x6c
	.short	109                     # 0x6d
	.short	109                     # 0x6d
	.short	109                     # 0x6d
	.short	110                     # 0x6e
	.short	110                     # 0x6e
	.short	110                     # 0x6e
	.short	110                     # 0x6e
	.short	111                     # 0x6f
	.short	111                     # 0x6f
	.short	111                     # 0x6f
	.short	112                     # 0x70
	.short	112                     # 0x70
	.short	112                     # 0x70
	.short	113                     # 0x71
	.short	113                     # 0x71
	.short	113                     # 0x71
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	115                     # 0x73
	.short	115                     # 0x73
	.short	115                     # 0x73
	.short	115                     # 0x73
	.short	116                     # 0x74
	.short	116                     # 0x74
	.short	116                     # 0x74
	.short	117                     # 0x75
	.short	117                     # 0x75
	.short	117                     # 0x75
	.short	118                     # 0x76
	.short	118                     # 0x76
	.short	118                     # 0x76
	.short	119                     # 0x77
	.short	119                     # 0x77
	.short	119                     # 0x77
	.short	120                     # 0x78
	.short	120                     # 0x78
	.short	120                     # 0x78
	.short	120                     # 0x78
	.short	121                     # 0x79
	.short	121                     # 0x79
	.short	121                     # 0x79
	.short	122                     # 0x7a
	.short	122                     # 0x7a
	.short	122                     # 0x7a
	.short	123                     # 0x7b
	.short	123                     # 0x7b
	.short	123                     # 0x7b
	.short	124                     # 0x7c
	.short	124                     # 0x7c
	.short	124                     # 0x7c
	.short	125                     # 0x7d
	.short	125                     # 0x7d
	.short	125                     # 0x7d
	.short	125                     # 0x7d
	.short	126                     # 0x7e
	.short	126                     # 0x7e
	.short	126                     # 0x7e
	.short	127                     # 0x7f
	.short	127                     # 0x7f
	.short	127                     # 0x7f
	.short	128                     # 0x80
	.short	128                     # 0x80
	.short	128                     # 0x80
	.short	129                     # 0x81
	.short	129                     # 0x81
	.short	129                     # 0x81
	.short	130                     # 0x82
	.short	130                     # 0x82
	.short	130                     # 0x82
	.short	130                     # 0x82
	.short	131                     # 0x83
	.short	131                     # 0x83
	.short	131                     # 0x83
	.short	132                     # 0x84
	.short	132                     # 0x84
	.short	132                     # 0x84
	.short	133                     # 0x85
	.short	133                     # 0x85
	.short	133                     # 0x85
	.short	134                     # 0x86
	.short	134                     # 0x86
	.short	134                     # 0x86
	.short	135                     # 0x87
	.short	135                     # 0x87
	.short	135                     # 0x87
	.short	135                     # 0x87
	.short	136                     # 0x88
	.short	136                     # 0x88
	.short	136                     # 0x88
	.short	137                     # 0x89
	.short	137                     # 0x89
	.short	137                     # 0x89
	.short	138                     # 0x8a
	.short	138                     # 0x8a
	.short	138                     # 0x8a
	.short	139                     # 0x8b
	.short	139                     # 0x8b
	.short	139                     # 0x8b
	.short	140                     # 0x8c
	.short	140                     # 0x8c
	.short	140                     # 0x8c
	.short	140                     # 0x8c
	.short	141                     # 0x8d
	.short	141                     # 0x8d
	.short	141                     # 0x8d
	.short	142                     # 0x8e
	.short	142                     # 0x8e
	.short	142                     # 0x8e
	.short	143                     # 0x8f
	.short	143                     # 0x8f
	.short	143                     # 0x8f
	.short	144                     # 0x90
	.short	144                     # 0x90
	.short	144                     # 0x90
	.short	145                     # 0x91
	.short	145                     # 0x91
	.short	145                     # 0x91
	.short	145                     # 0x91
	.short	146                     # 0x92
	.short	146                     # 0x92
	.short	146                     # 0x92
	.short	147                     # 0x93
	.short	147                     # 0x93
	.short	147                     # 0x93
	.short	148                     # 0x94
	.short	148                     # 0x94
	.short	148                     # 0x94
	.short	149                     # 0x95
	.short	149                     # 0x95
	.short	149                     # 0x95
	.short	150                     # 0x96
	.short	150                     # 0x96
	.short	150                     # 0x96
	.short	150                     # 0x96
	.short	151                     # 0x97
	.short	151                     # 0x97
	.short	151                     # 0x97
	.short	152                     # 0x98
	.short	152                     # 0x98
	.short	152                     # 0x98
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	154                     # 0x9a
	.short	154                     # 0x9a
	.short	154                     # 0x9a
	.short	155                     # 0x9b
	.short	155                     # 0x9b
	.short	155                     # 0x9b
	.short	155                     # 0x9b
	.short	156                     # 0x9c
	.short	156                     # 0x9c
	.short	156                     # 0x9c
	.short	157                     # 0x9d
	.short	157                     # 0x9d
	.short	157                     # 0x9d
	.short	158                     # 0x9e
	.short	158                     # 0x9e
	.short	158                     # 0x9e
	.short	159                     # 0x9f
	.short	159                     # 0x9f
	.short	159                     # 0x9f
	.short	160                     # 0xa0
	.short	160                     # 0xa0
	.size	floyd_steinberg_error3, 2050

	.type	floyd_steinberg_error4,@object # @floyd_steinberg_error4
	.align	16
floyd_steinberg_error4:
	.short	65502                   # 0xffde
	.short	65503                   # 0xffdf
	.short	65503                   # 0xffdf
	.short	65503                   # 0xffdf
	.short	65503                   # 0xffdf
	.short	65503                   # 0xffdf
	.short	65502                   # 0xffde
	.short	65503                   # 0xffdf
	.short	65504                   # 0xffe0
	.short	65503                   # 0xffdf
	.short	65503                   # 0xffdf
	.short	65503                   # 0xffdf
	.short	65503                   # 0xffdf
	.short	65503                   # 0xffdf
	.short	65504                   # 0xffe0
	.short	65505                   # 0xffe1
	.short	65503                   # 0xffdf
	.short	65504                   # 0xffe0
	.short	65504                   # 0xffe0
	.short	65504                   # 0xffe0
	.short	65504                   # 0xffe0
	.short	65504                   # 0xffe0
	.short	65503                   # 0xffdf
	.short	65504                   # 0xffe0
	.short	65505                   # 0xffe1
	.short	65504                   # 0xffe0
	.short	65504                   # 0xffe0
	.short	65504                   # 0xffe0
	.short	65504                   # 0xffe0
	.short	65504                   # 0xffe0
	.short	65505                   # 0xffe1
	.short	65506                   # 0xffe2
	.short	65504                   # 0xffe0
	.short	65505                   # 0xffe1
	.short	65505                   # 0xffe1
	.short	65505                   # 0xffe1
	.short	65505                   # 0xffe1
	.short	65505                   # 0xffe1
	.short	65504                   # 0xffe0
	.short	65505                   # 0xffe1
	.short	65506                   # 0xffe2
	.short	65505                   # 0xffe1
	.short	65505                   # 0xffe1
	.short	65505                   # 0xffe1
	.short	65505                   # 0xffe1
	.short	65505                   # 0xffe1
	.short	65506                   # 0xffe2
	.short	65507                   # 0xffe3
	.short	65505                   # 0xffe1
	.short	65506                   # 0xffe2
	.short	65506                   # 0xffe2
	.short	65506                   # 0xffe2
	.short	65506                   # 0xffe2
	.short	65506                   # 0xffe2
	.short	65505                   # 0xffe1
	.short	65506                   # 0xffe2
	.short	65507                   # 0xffe3
	.short	65506                   # 0xffe2
	.short	65506                   # 0xffe2
	.short	65506                   # 0xffe2
	.short	65506                   # 0xffe2
	.short	65506                   # 0xffe2
	.short	65507                   # 0xffe3
	.short	65508                   # 0xffe4
	.short	65506                   # 0xffe2
	.short	65507                   # 0xffe3
	.short	65507                   # 0xffe3
	.short	65507                   # 0xffe3
	.short	65507                   # 0xffe3
	.short	65507                   # 0xffe3
	.short	65506                   # 0xffe2
	.short	65507                   # 0xffe3
	.short	65508                   # 0xffe4
	.short	65507                   # 0xffe3
	.short	65507                   # 0xffe3
	.short	65507                   # 0xffe3
	.short	65507                   # 0xffe3
	.short	65507                   # 0xffe3
	.short	65508                   # 0xffe4
	.short	65509                   # 0xffe5
	.short	65507                   # 0xffe3
	.short	65508                   # 0xffe4
	.short	65508                   # 0xffe4
	.short	65508                   # 0xffe4
	.short	65508                   # 0xffe4
	.short	65508                   # 0xffe4
	.short	65507                   # 0xffe3
	.short	65508                   # 0xffe4
	.short	65509                   # 0xffe5
	.short	65508                   # 0xffe4
	.short	65508                   # 0xffe4
	.short	65508                   # 0xffe4
	.short	65508                   # 0xffe4
	.short	65508                   # 0xffe4
	.short	65509                   # 0xffe5
	.short	65510                   # 0xffe6
	.short	65508                   # 0xffe4
	.short	65509                   # 0xffe5
	.short	65509                   # 0xffe5
	.short	65509                   # 0xffe5
	.short	65509                   # 0xffe5
	.short	65509                   # 0xffe5
	.short	65508                   # 0xffe4
	.short	65509                   # 0xffe5
	.short	65510                   # 0xffe6
	.short	65509                   # 0xffe5
	.short	65509                   # 0xffe5
	.short	65509                   # 0xffe5
	.short	65509                   # 0xffe5
	.short	65509                   # 0xffe5
	.short	65510                   # 0xffe6
	.short	65511                   # 0xffe7
	.short	65509                   # 0xffe5
	.short	65510                   # 0xffe6
	.short	65510                   # 0xffe6
	.short	65510                   # 0xffe6
	.short	65510                   # 0xffe6
	.short	65510                   # 0xffe6
	.short	65509                   # 0xffe5
	.short	65510                   # 0xffe6
	.short	65511                   # 0xffe7
	.short	65510                   # 0xffe6
	.short	65510                   # 0xffe6
	.short	65510                   # 0xffe6
	.short	65510                   # 0xffe6
	.short	65510                   # 0xffe6
	.short	65511                   # 0xffe7
	.short	65512                   # 0xffe8
	.short	65510                   # 0xffe6
	.short	65511                   # 0xffe7
	.short	65511                   # 0xffe7
	.short	65511                   # 0xffe7
	.short	65511                   # 0xffe7
	.short	65511                   # 0xffe7
	.short	65510                   # 0xffe6
	.short	65511                   # 0xffe7
	.short	65512                   # 0xffe8
	.short	65511                   # 0xffe7
	.short	65511                   # 0xffe7
	.short	65511                   # 0xffe7
	.short	65511                   # 0xffe7
	.short	65511                   # 0xffe7
	.short	65512                   # 0xffe8
	.short	65513                   # 0xffe9
	.short	65511                   # 0xffe7
	.short	65512                   # 0xffe8
	.short	65512                   # 0xffe8
	.short	65512                   # 0xffe8
	.short	65512                   # 0xffe8
	.short	65512                   # 0xffe8
	.short	65511                   # 0xffe7
	.short	65512                   # 0xffe8
	.short	65513                   # 0xffe9
	.short	65512                   # 0xffe8
	.short	65512                   # 0xffe8
	.short	65512                   # 0xffe8
	.short	65512                   # 0xffe8
	.short	65512                   # 0xffe8
	.short	65513                   # 0xffe9
	.short	65514                   # 0xffea
	.short	65512                   # 0xffe8
	.short	65513                   # 0xffe9
	.short	65513                   # 0xffe9
	.short	65513                   # 0xffe9
	.short	65513                   # 0xffe9
	.short	65513                   # 0xffe9
	.short	65512                   # 0xffe8
	.short	65513                   # 0xffe9
	.short	65514                   # 0xffea
	.short	65513                   # 0xffe9
	.short	65513                   # 0xffe9
	.short	65513                   # 0xffe9
	.short	65513                   # 0xffe9
	.short	65513                   # 0xffe9
	.short	65514                   # 0xffea
	.short	65515                   # 0xffeb
	.short	65513                   # 0xffe9
	.short	65514                   # 0xffea
	.short	65514                   # 0xffea
	.short	65514                   # 0xffea
	.short	65514                   # 0xffea
	.short	65514                   # 0xffea
	.short	65513                   # 0xffe9
	.short	65514                   # 0xffea
	.short	65515                   # 0xffeb
	.short	65514                   # 0xffea
	.short	65514                   # 0xffea
	.short	65514                   # 0xffea
	.short	65514                   # 0xffea
	.short	65514                   # 0xffea
	.short	65515                   # 0xffeb
	.short	65516                   # 0xffec
	.short	65514                   # 0xffea
	.short	65515                   # 0xffeb
	.short	65515                   # 0xffeb
	.short	65515                   # 0xffeb
	.short	65515                   # 0xffeb
	.short	65515                   # 0xffeb
	.short	65514                   # 0xffea
	.short	65515                   # 0xffeb
	.short	65516                   # 0xffec
	.short	65515                   # 0xffeb
	.short	65515                   # 0xffeb
	.short	65515                   # 0xffeb
	.short	65515                   # 0xffeb
	.short	65515                   # 0xffeb
	.short	65516                   # 0xffec
	.short	65517                   # 0xffed
	.short	65515                   # 0xffeb
	.short	65516                   # 0xffec
	.short	65516                   # 0xffec
	.short	65516                   # 0xffec
	.short	65516                   # 0xffec
	.short	65516                   # 0xffec
	.short	65515                   # 0xffeb
	.short	65516                   # 0xffec
	.short	65517                   # 0xffed
	.short	65516                   # 0xffec
	.short	65516                   # 0xffec
	.short	65516                   # 0xffec
	.short	65516                   # 0xffec
	.short	65516                   # 0xffec
	.short	65517                   # 0xffed
	.short	65518                   # 0xffee
	.short	65516                   # 0xffec
	.short	65517                   # 0xffed
	.short	65517                   # 0xffed
	.short	65517                   # 0xffed
	.short	65517                   # 0xffed
	.short	65517                   # 0xffed
	.short	65516                   # 0xffec
	.short	65517                   # 0xffed
	.short	65518                   # 0xffee
	.short	65517                   # 0xffed
	.short	65517                   # 0xffed
	.short	65517                   # 0xffed
	.short	65517                   # 0xffed
	.short	65517                   # 0xffed
	.short	65518                   # 0xffee
	.short	65519                   # 0xffef
	.short	65517                   # 0xffed
	.short	65518                   # 0xffee
	.short	65518                   # 0xffee
	.short	65518                   # 0xffee
	.short	65518                   # 0xffee
	.short	65518                   # 0xffee
	.short	65517                   # 0xffed
	.short	65518                   # 0xffee
	.short	65519                   # 0xffef
	.short	65518                   # 0xffee
	.short	65518                   # 0xffee
	.short	65518                   # 0xffee
	.short	65518                   # 0xffee
	.short	65518                   # 0xffee
	.short	65519                   # 0xffef
	.short	65520                   # 0xfff0
	.short	65518                   # 0xffee
	.short	65519                   # 0xffef
	.short	65519                   # 0xffef
	.short	65519                   # 0xffef
	.short	65519                   # 0xffef
	.short	65519                   # 0xffef
	.short	65518                   # 0xffee
	.short	65519                   # 0xffef
	.short	65520                   # 0xfff0
	.short	65519                   # 0xffef
	.short	65519                   # 0xffef
	.short	65519                   # 0xffef
	.short	65519                   # 0xffef
	.short	65519                   # 0xffef
	.short	65520                   # 0xfff0
	.short	65521                   # 0xfff1
	.short	65519                   # 0xffef
	.short	65520                   # 0xfff0
	.short	65520                   # 0xfff0
	.short	65520                   # 0xfff0
	.short	65520                   # 0xfff0
	.short	65520                   # 0xfff0
	.short	65519                   # 0xffef
	.short	65520                   # 0xfff0
	.short	65521                   # 0xfff1
	.short	65520                   # 0xfff0
	.short	65520                   # 0xfff0
	.short	65520                   # 0xfff0
	.short	65520                   # 0xfff0
	.short	65520                   # 0xfff0
	.short	65521                   # 0xfff1
	.short	65522                   # 0xfff2
	.short	65520                   # 0xfff0
	.short	65521                   # 0xfff1
	.short	65521                   # 0xfff1
	.short	65521                   # 0xfff1
	.short	65521                   # 0xfff1
	.short	65521                   # 0xfff1
	.short	65520                   # 0xfff0
	.short	65521                   # 0xfff1
	.short	65522                   # 0xfff2
	.short	65521                   # 0xfff1
	.short	65521                   # 0xfff1
	.short	65521                   # 0xfff1
	.short	65521                   # 0xfff1
	.short	65521                   # 0xfff1
	.short	65522                   # 0xfff2
	.short	65523                   # 0xfff3
	.short	65521                   # 0xfff1
	.short	65522                   # 0xfff2
	.short	65522                   # 0xfff2
	.short	65522                   # 0xfff2
	.short	65522                   # 0xfff2
	.short	65522                   # 0xfff2
	.short	65521                   # 0xfff1
	.short	65522                   # 0xfff2
	.short	65523                   # 0xfff3
	.short	65522                   # 0xfff2
	.short	65522                   # 0xfff2
	.short	65522                   # 0xfff2
	.short	65522                   # 0xfff2
	.short	65522                   # 0xfff2
	.short	65523                   # 0xfff3
	.short	65524                   # 0xfff4
	.short	65522                   # 0xfff2
	.short	65523                   # 0xfff3
	.short	65523                   # 0xfff3
	.short	65523                   # 0xfff3
	.short	65523                   # 0xfff3
	.short	65523                   # 0xfff3
	.short	65522                   # 0xfff2
	.short	65523                   # 0xfff3
	.short	65524                   # 0xfff4
	.short	65523                   # 0xfff3
	.short	65523                   # 0xfff3
	.short	65523                   # 0xfff3
	.short	65523                   # 0xfff3
	.short	65523                   # 0xfff3
	.short	65524                   # 0xfff4
	.short	65525                   # 0xfff5
	.short	65523                   # 0xfff3
	.short	65524                   # 0xfff4
	.short	65524                   # 0xfff4
	.short	65524                   # 0xfff4
	.short	65524                   # 0xfff4
	.short	65524                   # 0xfff4
	.short	65523                   # 0xfff3
	.short	65524                   # 0xfff4
	.short	65525                   # 0xfff5
	.short	65524                   # 0xfff4
	.short	65524                   # 0xfff4
	.short	65524                   # 0xfff4
	.short	65524                   # 0xfff4
	.short	65524                   # 0xfff4
	.short	65525                   # 0xfff5
	.short	65526                   # 0xfff6
	.short	65524                   # 0xfff4
	.short	65525                   # 0xfff5
	.short	65525                   # 0xfff5
	.short	65525                   # 0xfff5
	.short	65525                   # 0xfff5
	.short	65525                   # 0xfff5
	.short	65524                   # 0xfff4
	.short	65525                   # 0xfff5
	.short	65526                   # 0xfff6
	.short	65525                   # 0xfff5
	.short	65525                   # 0xfff5
	.short	65525                   # 0xfff5
	.short	65525                   # 0xfff5
	.short	65525                   # 0xfff5
	.short	65526                   # 0xfff6
	.short	65527                   # 0xfff7
	.short	65525                   # 0xfff5
	.short	65526                   # 0xfff6
	.short	65526                   # 0xfff6
	.short	65526                   # 0xfff6
	.short	65526                   # 0xfff6
	.short	65526                   # 0xfff6
	.short	65525                   # 0xfff5
	.short	65526                   # 0xfff6
	.short	65527                   # 0xfff7
	.short	65526                   # 0xfff6
	.short	65526                   # 0xfff6
	.short	65526                   # 0xfff6
	.short	65526                   # 0xfff6
	.short	65526                   # 0xfff6
	.short	65527                   # 0xfff7
	.short	65528                   # 0xfff8
	.short	65526                   # 0xfff6
	.short	65527                   # 0xfff7
	.short	65527                   # 0xfff7
	.short	65527                   # 0xfff7
	.short	65527                   # 0xfff7
	.short	65527                   # 0xfff7
	.short	65526                   # 0xfff6
	.short	65527                   # 0xfff7
	.short	65528                   # 0xfff8
	.short	65527                   # 0xfff7
	.short	65527                   # 0xfff7
	.short	65527                   # 0xfff7
	.short	65527                   # 0xfff7
	.short	65527                   # 0xfff7
	.short	65528                   # 0xfff8
	.short	65529                   # 0xfff9
	.short	65527                   # 0xfff7
	.short	65528                   # 0xfff8
	.short	65528                   # 0xfff8
	.short	65528                   # 0xfff8
	.short	65528                   # 0xfff8
	.short	65528                   # 0xfff8
	.short	65527                   # 0xfff7
	.short	65528                   # 0xfff8
	.short	65529                   # 0xfff9
	.short	65528                   # 0xfff8
	.short	65528                   # 0xfff8
	.short	65528                   # 0xfff8
	.short	65528                   # 0xfff8
	.short	65528                   # 0xfff8
	.short	65529                   # 0xfff9
	.short	65530                   # 0xfffa
	.short	65528                   # 0xfff8
	.short	65529                   # 0xfff9
	.short	65529                   # 0xfff9
	.short	65529                   # 0xfff9
	.short	65529                   # 0xfff9
	.short	65529                   # 0xfff9
	.short	65528                   # 0xfff8
	.short	65529                   # 0xfff9
	.short	65530                   # 0xfffa
	.short	65529                   # 0xfff9
	.short	65529                   # 0xfff9
	.short	65529                   # 0xfff9
	.short	65529                   # 0xfff9
	.short	65529                   # 0xfff9
	.short	65530                   # 0xfffa
	.short	65531                   # 0xfffb
	.short	65529                   # 0xfff9
	.short	65530                   # 0xfffa
	.short	65530                   # 0xfffa
	.short	65530                   # 0xfffa
	.short	65530                   # 0xfffa
	.short	65530                   # 0xfffa
	.short	65529                   # 0xfff9
	.short	65530                   # 0xfffa
	.short	65531                   # 0xfffb
	.short	65530                   # 0xfffa
	.short	65530                   # 0xfffa
	.short	65530                   # 0xfffa
	.short	65530                   # 0xfffa
	.short	65530                   # 0xfffa
	.short	65531                   # 0xfffb
	.short	65532                   # 0xfffc
	.short	65530                   # 0xfffa
	.short	65531                   # 0xfffb
	.short	65531                   # 0xfffb
	.short	65531                   # 0xfffb
	.short	65531                   # 0xfffb
	.short	65531                   # 0xfffb
	.short	65530                   # 0xfffa
	.short	65531                   # 0xfffb
	.short	65532                   # 0xfffc
	.short	65531                   # 0xfffb
	.short	65531                   # 0xfffb
	.short	65531                   # 0xfffb
	.short	65531                   # 0xfffb
	.short	65531                   # 0xfffb
	.short	65532                   # 0xfffc
	.short	65533                   # 0xfffd
	.short	65531                   # 0xfffb
	.short	65532                   # 0xfffc
	.short	65532                   # 0xfffc
	.short	65532                   # 0xfffc
	.short	65532                   # 0xfffc
	.short	65532                   # 0xfffc
	.short	65531                   # 0xfffb
	.short	65532                   # 0xfffc
	.short	65533                   # 0xfffd
	.short	65532                   # 0xfffc
	.short	65532                   # 0xfffc
	.short	65532                   # 0xfffc
	.short	65532                   # 0xfffc
	.short	65532                   # 0xfffc
	.short	65533                   # 0xfffd
	.short	65534                   # 0xfffe
	.short	65532                   # 0xfffc
	.short	65533                   # 0xfffd
	.short	65533                   # 0xfffd
	.short	65533                   # 0xfffd
	.short	65533                   # 0xfffd
	.short	65533                   # 0xfffd
	.short	65532                   # 0xfffc
	.short	65533                   # 0xfffd
	.short	65534                   # 0xfffe
	.short	65533                   # 0xfffd
	.short	65533                   # 0xfffd
	.short	65533                   # 0xfffd
	.short	65533                   # 0xfffd
	.short	65533                   # 0xfffd
	.short	65534                   # 0xfffe
	.short	65535                   # 0xffff
	.short	65533                   # 0xfffd
	.short	65534                   # 0xfffe
	.short	65534                   # 0xfffe
	.short	65534                   # 0xfffe
	.short	65534                   # 0xfffe
	.short	65534                   # 0xfffe
	.short	65533                   # 0xfffd
	.short	65534                   # 0xfffe
	.short	65535                   # 0xffff
	.short	65534                   # 0xfffe
	.short	65534                   # 0xfffe
	.short	65534                   # 0xfffe
	.short	65534                   # 0xfffe
	.short	65534                   # 0xfffe
	.short	65535                   # 0xffff
	.short	0                       # 0x0
	.short	1                       # 0x1
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	1                       # 0x1
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	1                       # 0x1
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	3                       # 0x3
	.short	3                       # 0x3
	.short	3                       # 0x3
	.short	3                       # 0x3
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	3                       # 0x3
	.short	3                       # 0x3
	.short	3                       # 0x3
	.short	3                       # 0x3
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	5                       # 0x5
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	5                       # 0x5
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	5                       # 0x5
	.short	5                       # 0x5
	.short	5                       # 0x5
	.short	5                       # 0x5
	.short	5                       # 0x5
	.short	4                       # 0x4
	.short	5                       # 0x5
	.short	6                       # 0x6
	.short	5                       # 0x5
	.short	5                       # 0x5
	.short	5                       # 0x5
	.short	5                       # 0x5
	.short	5                       # 0x5
	.short	6                       # 0x6
	.short	4                       # 0x4
	.short	5                       # 0x5
	.short	6                       # 0x6
	.short	6                       # 0x6
	.short	6                       # 0x6
	.short	6                       # 0x6
	.short	6                       # 0x6
	.short	5                       # 0x5
	.short	6                       # 0x6
	.short	7                       # 0x7
	.short	6                       # 0x6
	.short	6                       # 0x6
	.short	6                       # 0x6
	.short	6                       # 0x6
	.short	6                       # 0x6
	.short	7                       # 0x7
	.short	5                       # 0x5
	.short	6                       # 0x6
	.short	7                       # 0x7
	.short	7                       # 0x7
	.short	7                       # 0x7
	.short	7                       # 0x7
	.short	7                       # 0x7
	.short	6                       # 0x6
	.short	7                       # 0x7
	.short	8                       # 0x8
	.short	7                       # 0x7
	.short	7                       # 0x7
	.short	7                       # 0x7
	.short	7                       # 0x7
	.short	7                       # 0x7
	.short	8                       # 0x8
	.short	6                       # 0x6
	.short	7                       # 0x7
	.short	8                       # 0x8
	.short	8                       # 0x8
	.short	8                       # 0x8
	.short	8                       # 0x8
	.short	8                       # 0x8
	.short	7                       # 0x7
	.short	8                       # 0x8
	.short	9                       # 0x9
	.short	8                       # 0x8
	.short	8                       # 0x8
	.short	8                       # 0x8
	.short	8                       # 0x8
	.short	8                       # 0x8
	.short	9                       # 0x9
	.short	7                       # 0x7
	.short	8                       # 0x8
	.short	9                       # 0x9
	.short	9                       # 0x9
	.short	9                       # 0x9
	.short	9                       # 0x9
	.short	9                       # 0x9
	.short	8                       # 0x8
	.short	9                       # 0x9
	.short	10                      # 0xa
	.short	9                       # 0x9
	.short	9                       # 0x9
	.short	9                       # 0x9
	.short	9                       # 0x9
	.short	9                       # 0x9
	.short	10                      # 0xa
	.short	8                       # 0x8
	.short	9                       # 0x9
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	9                       # 0x9
	.short	10                      # 0xa
	.short	11                      # 0xb
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	11                      # 0xb
	.short	9                       # 0x9
	.short	10                      # 0xa
	.short	11                      # 0xb
	.short	11                      # 0xb
	.short	11                      # 0xb
	.short	11                      # 0xb
	.short	11                      # 0xb
	.short	10                      # 0xa
	.short	11                      # 0xb
	.short	12                      # 0xc
	.short	11                      # 0xb
	.short	11                      # 0xb
	.short	11                      # 0xb
	.short	11                      # 0xb
	.short	11                      # 0xb
	.short	12                      # 0xc
	.short	10                      # 0xa
	.short	11                      # 0xb
	.short	12                      # 0xc
	.short	12                      # 0xc
	.short	12                      # 0xc
	.short	12                      # 0xc
	.short	12                      # 0xc
	.short	11                      # 0xb
	.short	12                      # 0xc
	.short	13                      # 0xd
	.short	12                      # 0xc
	.short	12                      # 0xc
	.short	12                      # 0xc
	.short	12                      # 0xc
	.short	12                      # 0xc
	.short	13                      # 0xd
	.short	11                      # 0xb
	.short	12                      # 0xc
	.short	13                      # 0xd
	.short	13                      # 0xd
	.short	13                      # 0xd
	.short	13                      # 0xd
	.short	13                      # 0xd
	.short	12                      # 0xc
	.short	13                      # 0xd
	.short	14                      # 0xe
	.short	13                      # 0xd
	.short	13                      # 0xd
	.short	13                      # 0xd
	.short	13                      # 0xd
	.short	13                      # 0xd
	.short	14                      # 0xe
	.short	12                      # 0xc
	.short	13                      # 0xd
	.short	14                      # 0xe
	.short	14                      # 0xe
	.short	14                      # 0xe
	.short	14                      # 0xe
	.short	14                      # 0xe
	.short	13                      # 0xd
	.short	14                      # 0xe
	.short	15                      # 0xf
	.short	14                      # 0xe
	.short	14                      # 0xe
	.short	14                      # 0xe
	.short	14                      # 0xe
	.short	14                      # 0xe
	.short	15                      # 0xf
	.short	13                      # 0xd
	.short	14                      # 0xe
	.short	15                      # 0xf
	.short	15                      # 0xf
	.short	15                      # 0xf
	.short	15                      # 0xf
	.short	15                      # 0xf
	.short	14                      # 0xe
	.short	15                      # 0xf
	.short	16                      # 0x10
	.short	15                      # 0xf
	.short	15                      # 0xf
	.short	15                      # 0xf
	.short	15                      # 0xf
	.short	15                      # 0xf
	.short	16                      # 0x10
	.short	14                      # 0xe
	.short	15                      # 0xf
	.short	16                      # 0x10
	.short	16                      # 0x10
	.short	16                      # 0x10
	.short	16                      # 0x10
	.short	16                      # 0x10
	.short	15                      # 0xf
	.short	16                      # 0x10
	.short	17                      # 0x11
	.short	16                      # 0x10
	.short	16                      # 0x10
	.short	16                      # 0x10
	.short	16                      # 0x10
	.short	16                      # 0x10
	.short	17                      # 0x11
	.short	15                      # 0xf
	.short	16                      # 0x10
	.short	17                      # 0x11
	.short	17                      # 0x11
	.short	17                      # 0x11
	.short	17                      # 0x11
	.short	17                      # 0x11
	.short	16                      # 0x10
	.short	17                      # 0x11
	.short	18                      # 0x12
	.short	17                      # 0x11
	.short	17                      # 0x11
	.short	17                      # 0x11
	.short	17                      # 0x11
	.short	17                      # 0x11
	.short	18                      # 0x12
	.short	16                      # 0x10
	.short	17                      # 0x11
	.short	18                      # 0x12
	.short	18                      # 0x12
	.short	18                      # 0x12
	.short	18                      # 0x12
	.short	18                      # 0x12
	.short	17                      # 0x11
	.short	18                      # 0x12
	.short	19                      # 0x13
	.short	18                      # 0x12
	.short	18                      # 0x12
	.short	18                      # 0x12
	.short	18                      # 0x12
	.short	18                      # 0x12
	.short	19                      # 0x13
	.short	17                      # 0x11
	.short	18                      # 0x12
	.short	19                      # 0x13
	.short	19                      # 0x13
	.short	19                      # 0x13
	.short	19                      # 0x13
	.short	19                      # 0x13
	.short	18                      # 0x12
	.short	19                      # 0x13
	.short	20                      # 0x14
	.short	19                      # 0x13
	.short	19                      # 0x13
	.short	19                      # 0x13
	.short	19                      # 0x13
	.short	19                      # 0x13
	.short	20                      # 0x14
	.short	18                      # 0x12
	.short	19                      # 0x13
	.short	20                      # 0x14
	.short	20                      # 0x14
	.short	20                      # 0x14
	.short	20                      # 0x14
	.short	20                      # 0x14
	.short	19                      # 0x13
	.short	20                      # 0x14
	.short	21                      # 0x15
	.short	20                      # 0x14
	.short	20                      # 0x14
	.short	20                      # 0x14
	.short	20                      # 0x14
	.short	20                      # 0x14
	.short	21                      # 0x15
	.short	19                      # 0x13
	.short	20                      # 0x14
	.short	21                      # 0x15
	.short	21                      # 0x15
	.short	21                      # 0x15
	.short	21                      # 0x15
	.short	21                      # 0x15
	.short	20                      # 0x14
	.short	21                      # 0x15
	.short	22                      # 0x16
	.short	21                      # 0x15
	.short	21                      # 0x15
	.short	21                      # 0x15
	.short	21                      # 0x15
	.short	21                      # 0x15
	.short	22                      # 0x16
	.short	20                      # 0x14
	.short	21                      # 0x15
	.short	22                      # 0x16
	.short	22                      # 0x16
	.short	22                      # 0x16
	.short	22                      # 0x16
	.short	22                      # 0x16
	.short	21                      # 0x15
	.short	22                      # 0x16
	.short	23                      # 0x17
	.short	22                      # 0x16
	.short	22                      # 0x16
	.short	22                      # 0x16
	.short	22                      # 0x16
	.short	22                      # 0x16
	.short	23                      # 0x17
	.short	21                      # 0x15
	.short	22                      # 0x16
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	22                      # 0x16
	.short	23                      # 0x17
	.short	24                      # 0x18
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	24                      # 0x18
	.short	22                      # 0x16
	.short	23                      # 0x17
	.short	24                      # 0x18
	.short	24                      # 0x18
	.short	24                      # 0x18
	.short	24                      # 0x18
	.short	24                      # 0x18
	.short	23                      # 0x17
	.short	24                      # 0x18
	.short	25                      # 0x19
	.short	24                      # 0x18
	.short	24                      # 0x18
	.short	24                      # 0x18
	.short	24                      # 0x18
	.short	24                      # 0x18
	.short	25                      # 0x19
	.short	23                      # 0x17
	.short	24                      # 0x18
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	24                      # 0x18
	.short	25                      # 0x19
	.short	26                      # 0x1a
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	26                      # 0x1a
	.short	24                      # 0x18
	.short	25                      # 0x19
	.short	26                      # 0x1a
	.short	26                      # 0x1a
	.short	26                      # 0x1a
	.short	26                      # 0x1a
	.short	26                      # 0x1a
	.short	25                      # 0x19
	.short	26                      # 0x1a
	.short	27                      # 0x1b
	.short	26                      # 0x1a
	.short	26                      # 0x1a
	.short	26                      # 0x1a
	.short	26                      # 0x1a
	.short	26                      # 0x1a
	.short	27                      # 0x1b
	.short	25                      # 0x19
	.short	26                      # 0x1a
	.short	27                      # 0x1b
	.short	27                      # 0x1b
	.short	27                      # 0x1b
	.short	27                      # 0x1b
	.short	27                      # 0x1b
	.short	26                      # 0x1a
	.short	27                      # 0x1b
	.short	28                      # 0x1c
	.short	27                      # 0x1b
	.short	27                      # 0x1b
	.short	27                      # 0x1b
	.short	27                      # 0x1b
	.short	27                      # 0x1b
	.short	28                      # 0x1c
	.short	26                      # 0x1a
	.short	27                      # 0x1b
	.short	28                      # 0x1c
	.short	28                      # 0x1c
	.short	28                      # 0x1c
	.short	28                      # 0x1c
	.short	28                      # 0x1c
	.short	27                      # 0x1b
	.short	28                      # 0x1c
	.short	29                      # 0x1d
	.short	28                      # 0x1c
	.short	28                      # 0x1c
	.short	28                      # 0x1c
	.short	28                      # 0x1c
	.short	28                      # 0x1c
	.short	29                      # 0x1d
	.short	27                      # 0x1b
	.short	28                      # 0x1c
	.short	29                      # 0x1d
	.short	29                      # 0x1d
	.short	29                      # 0x1d
	.short	29                      # 0x1d
	.short	29                      # 0x1d
	.short	28                      # 0x1c
	.short	29                      # 0x1d
	.short	30                      # 0x1e
	.short	29                      # 0x1d
	.short	29                      # 0x1d
	.short	29                      # 0x1d
	.short	29                      # 0x1d
	.short	29                      # 0x1d
	.short	30                      # 0x1e
	.short	28                      # 0x1c
	.short	29                      # 0x1d
	.short	30                      # 0x1e
	.short	30                      # 0x1e
	.short	30                      # 0x1e
	.short	30                      # 0x1e
	.short	30                      # 0x1e
	.short	29                      # 0x1d
	.short	30                      # 0x1e
	.short	31                      # 0x1f
	.short	30                      # 0x1e
	.short	30                      # 0x1e
	.short	30                      # 0x1e
	.short	30                      # 0x1e
	.short	30                      # 0x1e
	.short	31                      # 0x1f
	.short	29                      # 0x1d
	.short	30                      # 0x1e
	.short	31                      # 0x1f
	.short	31                      # 0x1f
	.short	31                      # 0x1f
	.short	31                      # 0x1f
	.short	31                      # 0x1f
	.short	30                      # 0x1e
	.short	31                      # 0x1f
	.short	32                      # 0x20
	.short	31                      # 0x1f
	.short	31                      # 0x1f
	.short	31                      # 0x1f
	.short	31                      # 0x1f
	.short	31                      # 0x1f
	.short	32                      # 0x20
	.short	30                      # 0x1e
	.short	31                      # 0x1f
	.short	32                      # 0x20
	.short	32                      # 0x20
	.short	32                      # 0x20
	.short	32                      # 0x20
	.short	32                      # 0x20
	.short	31                      # 0x1f
	.short	32                      # 0x20
	.short	33                      # 0x21
	.short	32                      # 0x20
	.short	32                      # 0x20
	.short	32                      # 0x20
	.short	32                      # 0x20
	.short	32                      # 0x20
	.short	33                      # 0x21
	.short	31                      # 0x1f
	.short	32                      # 0x20
	.short	33                      # 0x21
	.short	33                      # 0x21
	.short	33                      # 0x21
	.short	33                      # 0x21
	.short	33                      # 0x21
	.short	32                      # 0x20
	.short	33                      # 0x21
	.short	34                      # 0x22
	.short	33                      # 0x21
	.short	33                      # 0x21
	.short	33                      # 0x21
	.short	33                      # 0x21
	.short	33                      # 0x21
	.short	34                      # 0x22
	.short	32                      # 0x20
	.short	33                      # 0x21
	.size	floyd_steinberg_error4, 2050

	.type	.L.str.19,@object       # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"GRR, UNDEF LONGEST AXIS\007\n"
	.size	.L.str.19, 26

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"eep."
	.size	.L.str.20, 5

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimpimage-convert.c"
	.size	.L.str.21, 20

	.type	.L__func__.median_cut_rgb,@object # @__func__.median_cut_rgb
.L__func__.median_cut_rgb:
	.asciz	"median_cut_rgb"
	.size	.L__func__.median_cut_rgb, 15

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"b1->Rmax >= b1->Rmin"
	.size	.L.str.22, 21

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"b2->Rmax >= b2->Rmin"
	.size	.L.str.23, 21

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"b1->Gmax >= b1->Gmin"
	.size	.L.str.24, 21

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"b2->Gmax >= b2->Gmin"
	.size	.L.str.25, 21

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"b1->Bmax >= b1->Bmin"
	.size	.L.str.26, 21

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"b2->Bmax >= b2->Bmin"
	.size	.L.str.27, 21

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Uh-oh."
	.size	.L.str.28, 7

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Non-existant colour was expected to be in non-destructive colourmap."
	.size	.L.str.29, 69


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
