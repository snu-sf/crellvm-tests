	.text
	.file	"gimpdrawable-offset.bc"
	.globl	gimp_drawable_offset
	.align	16, 0x90
	.type	gimp_drawable_offset,@function
gimp_drawable_offset:                   # @gimp_drawable_offset
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
	subq	$984, %rsp              # imm = 0x3D8
.Ltmp3:
	.cfi_offset %rbx, -24
	xorl	%eax, %eax
	movl	$4, %r10d
	movl	%r10d, %r11d
	leaq	-212(%rbp), %rbx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movq	%rbx, %rdi
	movl	%eax, %esi
	movq	%r11, %rdx
	callq	memset
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -224(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -232(%rbp)
	cmpq	$0, -224(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -236(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-224(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-232(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -236(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-224(%rbp), %rdi
	movq	-232(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -236(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-236(%rbp), %eax
	movl	%eax, -240(%rbp)
	cmpl	$0, -240(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_offset, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_247
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -248(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -256(%rbp)
	cmpq	$0, -248(%rbp)
	jne	.LBB0_15
# BB#14:                                # %if.then.20
	movl	$0, -260(%rbp)
	jmp	.LBB0_20
.LBB0_15:                               # %if.else.21
	movq	-248(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_18
# BB#16:                                # %land.lhs.true.24
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-256(%rbp), %rax
	jne	.LBB0_18
# BB#17:                                # %if.then.28
	movl	$1, -260(%rbp)
	jmp	.LBB0_19
.LBB0_18:                               # %if.else.29
	movq	-248(%rbp), %rdi
	movq	-256(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -260(%rbp)
.LBB0_19:                               # %if.end.31
	jmp	.LBB0_20
.LBB0_20:                               # %if.end.32
	movl	-260(%rbp), %eax
	movl	%eax, -264(%rbp)
	cmpl	$0, -264(%rbp)
	je	.LBB0_22
# BB#21:                                # %if.then.35
	jmp	.LBB0_23
.LBB0_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_offset, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_247
.LBB0_23:                               # %if.end.37
	jmp	.LBB0_24
.LBB0_24:                               # %do.end.38
	movq	-16(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_item_get_width
	movl	%eax, -188(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_item_get_height
	movl	%eax, -192(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB0_32
# BB#25:                                # %if.then.44
	jmp	.LBB0_26
.LBB0_26:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -36(%rbp)
	jge	.LBB0_28
# BB#27:                                # %while.body
                                        #   in Loop: Header=BB0_26 Depth=1
	movl	-188(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_26
.LBB0_28:                               # %while.end
	jmp	.LBB0_29
.LBB0_29:                               # %while.cond.46
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -40(%rbp)
	jge	.LBB0_31
# BB#30:                                # %while.body.48
                                        #   in Loop: Header=BB0_29 Depth=1
	movl	-192(%rbp), %eax
	addl	-40(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_29
.LBB0_31:                               # %while.end.50
	movl	-188(%rbp), %eax
	movl	-36(%rbp), %ecx
	movl	%eax, -308(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-308(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%edx, -36(%rbp)
	movl	-192(%rbp), %edx
	movl	-40(%rbp), %esi
	movl	%esi, %eax
	movl	%edx, -312(%rbp)        # 4-byte Spill
	cltd
	movl	-312(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	%edx, -40(%rbp)
	jmp	.LBB0_45
.LBB0_32:                               # %if.else.52
	movl	-36(%rbp), %eax
	cmpl	-188(%rbp), %eax
	jle	.LBB0_34
# BB#33:                                # %cond.true
	movl	-188(%rbp), %eax
	movl	%eax, -316(%rbp)        # 4-byte Spill
	jmp	.LBB0_38
.LBB0_34:                               # %cond.false
	xorl	%eax, %eax
	movl	-36(%rbp), %ecx
	subl	-188(%rbp), %eax
	cmpl	%eax, %ecx
	jge	.LBB0_36
# BB#35:                                # %cond.true.55
	xorl	%eax, %eax
	subl	-188(%rbp), %eax
	movl	%eax, -320(%rbp)        # 4-byte Spill
	jmp	.LBB0_37
.LBB0_36:                               # %cond.false.57
	movl	-36(%rbp), %eax
	movl	%eax, -320(%rbp)        # 4-byte Spill
.LBB0_37:                               # %cond.end
	movl	-320(%rbp), %eax        # 4-byte Reload
	movl	%eax, -316(%rbp)        # 4-byte Spill
.LBB0_38:                               # %cond.end.58
	movl	-316(%rbp), %eax        # 4-byte Reload
	movl	%eax, -36(%rbp)
	movl	-40(%rbp), %eax
	cmpl	-192(%rbp), %eax
	jle	.LBB0_40
# BB#39:                                # %cond.true.61
	movl	-192(%rbp), %eax
	movl	%eax, -324(%rbp)        # 4-byte Spill
	jmp	.LBB0_44
.LBB0_40:                               # %cond.false.62
	xorl	%eax, %eax
	movl	-40(%rbp), %ecx
	subl	-192(%rbp), %eax
	cmpl	%eax, %ecx
	jge	.LBB0_42
# BB#41:                                # %cond.true.65
	xorl	%eax, %eax
	subl	-192(%rbp), %eax
	movl	%eax, -328(%rbp)        # 4-byte Spill
	jmp	.LBB0_43
.LBB0_42:                               # %cond.false.67
	movl	-40(%rbp), %eax
	movl	%eax, -328(%rbp)        # 4-byte Spill
.LBB0_43:                               # %cond.end.68
	movl	-328(%rbp), %eax        # 4-byte Reload
	movl	%eax, -324(%rbp)        # 4-byte Spill
.LBB0_44:                               # %cond.end.70
	movl	-324(%rbp), %eax        # 4-byte Reload
	movl	%eax, -40(%rbp)
.LBB0_45:                               # %if.end.72
	cmpl	$0, -36(%rbp)
	jne	.LBB0_48
# BB#46:                                # %land.lhs.true.74
	cmpl	$0, -40(%rbp)
	jne	.LBB0_48
# BB#47:                                # %if.then.76
	jmp	.LBB0_247
.LBB0_48:                               # %if.end.77
	movl	-188(%rbp), %edi
	movl	-192(%rbp), %esi
	movq	-16(%rbp), %rax
	movl	%edi, -332(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -336(%rbp)        # 4-byte Spill
	callq	gimp_drawable_bytes
	movl	-332(%rbp), %edi        # 4-byte Reload
	movl	-336(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	tile_manager_new
	movq	%rax, -184(%rbp)
	cmpl	$0, -36(%rbp)
	jl	.LBB0_56
# BB#49:                                # %if.then.81
	movl	$0, -196(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -204(%rbp)
	movl	-188(%rbp), %eax
	subl	-36(%rbp), %eax
	cmpl	-188(%rbp), %eax
	jle	.LBB0_51
# BB#50:                                # %cond.true.84
	movl	-188(%rbp), %eax
	movl	%eax, -340(%rbp)        # 4-byte Spill
	jmp	.LBB0_55
.LBB0_51:                               # %cond.false.85
	movl	-188(%rbp), %eax
	subl	-36(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB0_53
# BB#52:                                # %cond.true.88
	xorl	%eax, %eax
	movl	%eax, -344(%rbp)        # 4-byte Spill
	jmp	.LBB0_54
.LBB0_53:                               # %cond.false.89
	movl	-188(%rbp), %eax
	subl	-36(%rbp), %eax
	movl	%eax, -344(%rbp)        # 4-byte Spill
.LBB0_54:                               # %cond.end.91
	movl	-344(%rbp), %eax        # 4-byte Reload
	movl	%eax, -340(%rbp)        # 4-byte Spill
.LBB0_55:                               # %cond.end.93
	movl	-340(%rbp), %eax        # 4-byte Reload
	movl	%eax, -188(%rbp)
	jmp	.LBB0_63
.LBB0_56:                               # %if.else.95
	xorl	%eax, %eax
	subl	-36(%rbp), %eax
	movl	%eax, -196(%rbp)
	movl	$0, -204(%rbp)
	movl	-188(%rbp), %eax
	addl	-36(%rbp), %eax
	cmpl	-188(%rbp), %eax
	jle	.LBB0_58
# BB#57:                                # %cond.true.99
	movl	-188(%rbp), %eax
	movl	%eax, -348(%rbp)        # 4-byte Spill
	jmp	.LBB0_62
.LBB0_58:                               # %cond.false.100
	movl	-188(%rbp), %eax
	addl	-36(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB0_60
# BB#59:                                # %cond.true.103
	xorl	%eax, %eax
	movl	%eax, -352(%rbp)        # 4-byte Spill
	jmp	.LBB0_61
.LBB0_60:                               # %cond.false.104
	movl	-188(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	%eax, -352(%rbp)        # 4-byte Spill
.LBB0_61:                               # %cond.end.106
	movl	-352(%rbp), %eax        # 4-byte Reload
	movl	%eax, -348(%rbp)        # 4-byte Spill
.LBB0_62:                               # %cond.end.108
	movl	-348(%rbp), %eax        # 4-byte Reload
	movl	%eax, -188(%rbp)
.LBB0_63:                               # %if.end.110
	cmpl	$0, -40(%rbp)
	jl	.LBB0_71
# BB#64:                                # %if.then.112
	movl	$0, -200(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -208(%rbp)
	movl	-192(%rbp), %eax
	subl	-40(%rbp), %eax
	cmpl	-192(%rbp), %eax
	jle	.LBB0_66
# BB#65:                                # %cond.true.115
	movl	-192(%rbp), %eax
	movl	%eax, -356(%rbp)        # 4-byte Spill
	jmp	.LBB0_70
.LBB0_66:                               # %cond.false.116
	movl	-192(%rbp), %eax
	subl	-40(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB0_68
# BB#67:                                # %cond.true.119
	xorl	%eax, %eax
	movl	%eax, -360(%rbp)        # 4-byte Spill
	jmp	.LBB0_69
.LBB0_68:                               # %cond.false.120
	movl	-192(%rbp), %eax
	subl	-40(%rbp), %eax
	movl	%eax, -360(%rbp)        # 4-byte Spill
.LBB0_69:                               # %cond.end.122
	movl	-360(%rbp), %eax        # 4-byte Reload
	movl	%eax, -356(%rbp)        # 4-byte Spill
.LBB0_70:                               # %cond.end.124
	movl	-356(%rbp), %eax        # 4-byte Reload
	movl	%eax, -192(%rbp)
	jmp	.LBB0_78
.LBB0_71:                               # %if.else.126
	xorl	%eax, %eax
	subl	-40(%rbp), %eax
	movl	%eax, -200(%rbp)
	movl	$0, -208(%rbp)
	movl	-192(%rbp), %eax
	addl	-40(%rbp), %eax
	cmpl	-192(%rbp), %eax
	jle	.LBB0_73
# BB#72:                                # %cond.true.130
	movl	-192(%rbp), %eax
	movl	%eax, -364(%rbp)        # 4-byte Spill
	jmp	.LBB0_77
.LBB0_73:                               # %cond.false.131
	movl	-192(%rbp), %eax
	addl	-40(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB0_75
# BB#74:                                # %cond.true.134
	xorl	%eax, %eax
	movl	%eax, -368(%rbp)        # 4-byte Spill
	jmp	.LBB0_76
.LBB0_75:                               # %cond.false.135
	movl	-192(%rbp), %eax
	addl	-40(%rbp), %eax
	movl	%eax, -368(%rbp)        # 4-byte Spill
.LBB0_76:                               # %cond.end.137
	movl	-368(%rbp), %eax        # 4-byte Reload
	movl	%eax, -364(%rbp)        # 4-byte Spill
.LBB0_77:                               # %cond.end.139
	movl	-364(%rbp), %eax        # 4-byte Reload
	movl	%eax, -192(%rbp)
.LBB0_78:                               # %if.end.141
	cmpl	$0, -188(%rbp)
	je	.LBB0_81
# BB#79:                                # %land.lhs.true.143
	cmpl	$0, -192(%rbp)
	je	.LBB0_81
# BB#80:                                # %if.then.145
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	leaq	-112(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	-196(%rbp), %edx
	movl	-200(%rbp), %esi
	movl	-188(%rbp), %r8d
	movl	-192(%rbp), %r9d
	movl	%esi, -372(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	-372(%rbp), %r10d       # 4-byte Reload
	movl	%ecx, -376(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	$0, (%rsp)
	callq	pixel_region_init
	leaq	-176(%rbp), %rdi
	movl	$1, %ecx
	movq	-184(%rbp), %rsi
	movl	-204(%rbp), %edx
	movl	-208(%rbp), %r8d
	movl	-188(%rbp), %r9d
	movl	-192(%rbp), %r10d
	movl	%ecx, -380(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-112(%rbp), %rdi
	leaq	-176(%rbp), %rsi
	callq	copy_region
.LBB0_81:                               # %if.end.147
	cmpl	$1, -28(%rbp)
	jne	.LBB0_179
# BB#82:                                # %if.then.149
	cmpl	$0, -36(%rbp)
	jl	.LBB0_85
# BB#83:                                # %land.lhs.true.151
	cmpl	$0, -40(%rbp)
	jl	.LBB0_85
# BB#84:                                # %if.then.153
	movq	-48(%rbp), %rdi
	callq	gimp_item_get_width
	subl	-36(%rbp), %eax
	movl	%eax, -196(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_item_get_height
	subl	-40(%rbp), %eax
	movl	%eax, -200(%rbp)
	jmp	.LBB0_97
.LBB0_85:                               # %if.else.158
	cmpl	$0, -36(%rbp)
	jl	.LBB0_88
# BB#86:                                # %land.lhs.true.160
	cmpl	$0, -40(%rbp)
	jge	.LBB0_88
# BB#87:                                # %if.then.162
	movq	-48(%rbp), %rdi
	callq	gimp_item_get_width
	subl	-36(%rbp), %eax
	movl	%eax, -196(%rbp)
	movl	$0, -200(%rbp)
	jmp	.LBB0_96
.LBB0_88:                               # %if.else.165
	cmpl	$0, -36(%rbp)
	jge	.LBB0_91
# BB#89:                                # %land.lhs.true.167
	cmpl	$0, -40(%rbp)
	jl	.LBB0_91
# BB#90:                                # %if.then.169
	movl	$0, -196(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_item_get_height
	subl	-40(%rbp), %eax
	movl	%eax, -200(%rbp)
	jmp	.LBB0_95
.LBB0_91:                               # %if.else.172
	cmpl	$0, -36(%rbp)
	jge	.LBB0_94
# BB#92:                                # %land.lhs.true.174
	cmpl	$0, -40(%rbp)
	jge	.LBB0_94
# BB#93:                                # %if.then.176
	movl	$0, -196(%rbp)
	movl	$0, -200(%rbp)
.LBB0_94:                               # %if.end.177
	jmp	.LBB0_95
.LBB0_95:                               # %if.end.178
	jmp	.LBB0_96
.LBB0_96:                               # %if.end.179
	jmp	.LBB0_97
.LBB0_97:                               # %if.end.180
	movl	-196(%rbp), %eax
	addl	-36(%rbp), %eax
	movq	-48(%rbp), %rdi
	movl	%eax, -384(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	movl	-384(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -388(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-388(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	%edx, -204(%rbp)
	cmpl	$0, -204(%rbp)
	jge	.LBB0_99
# BB#98:                                # %if.then.185
	movq	-48(%rbp), %rdi
	callq	gimp_item_get_width
	addl	-204(%rbp), %eax
	movl	%eax, -204(%rbp)
.LBB0_99:                               # %if.end.188
	movl	-200(%rbp), %eax
	addl	-40(%rbp), %eax
	movq	-48(%rbp), %rdi
	movl	%eax, -392(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movl	-392(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -396(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-396(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	%edx, -208(%rbp)
	cmpl	$0, -208(%rbp)
	jge	.LBB0_101
# BB#100:                               # %if.then.193
	movq	-48(%rbp), %rdi
	callq	gimp_item_get_height
	addl	-208(%rbp), %eax
	movl	%eax, -208(%rbp)
.LBB0_101:                              # %if.end.196
	cmpl	$0, -36(%rbp)
	je	.LBB0_116
# BB#102:                               # %land.lhs.true.198
	cmpl	$0, -40(%rbp)
	je	.LBB0_116
# BB#103:                               # %if.then.200
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	movl	-196(%rbp), %edx
	movl	-200(%rbp), %ecx
	cmpl	$0, -36(%rbp)
	movq	%rax, -408(%rbp)        # 8-byte Spill
	movl	%edx, -412(%rbp)        # 4-byte Spill
	movl	%ecx, -416(%rbp)        # 4-byte Spill
	jge	.LBB0_105
# BB#104:                               # %cond.true.203
	xorl	%eax, %eax
	subl	-36(%rbp), %eax
	movl	%eax, -420(%rbp)        # 4-byte Spill
	jmp	.LBB0_106
.LBB0_105:                              # %cond.false.205
	movl	-36(%rbp), %eax
	movl	%eax, -420(%rbp)        # 4-byte Spill
.LBB0_106:                              # %cond.end.206
	movl	-420(%rbp), %eax        # 4-byte Reload
	cmpl	$0, -40(%rbp)
	movl	%eax, -424(%rbp)        # 4-byte Spill
	jge	.LBB0_108
# BB#107:                               # %cond.true.209
	xorl	%eax, %eax
	subl	-40(%rbp), %eax
	movl	%eax, -428(%rbp)        # 4-byte Spill
	jmp	.LBB0_109
.LBB0_108:                              # %cond.false.211
	movl	-40(%rbp), %eax
	movl	%eax, -428(%rbp)        # 4-byte Spill
.LBB0_109:                              # %cond.end.212
	movl	-428(%rbp), %eax        # 4-byte Reload
	leaq	-112(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-408(%rbp), %rsi        # 8-byte Reload
	movl	-412(%rbp), %edx        # 4-byte Reload
	movl	-416(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -432(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-424(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	movq	-184(%rbp), %rsi
	movl	-204(%rbp), %edx
	movl	-208(%rbp), %ecx
	cmpl	$0, -36(%rbp)
	movq	%rsi, -440(%rbp)        # 8-byte Spill
	movl	%edx, -444(%rbp)        # 4-byte Spill
	movl	%ecx, -448(%rbp)        # 4-byte Spill
	jge	.LBB0_111
# BB#110:                               # %cond.true.215
	xorl	%eax, %eax
	subl	-36(%rbp), %eax
	movl	%eax, -452(%rbp)        # 4-byte Spill
	jmp	.LBB0_112
.LBB0_111:                              # %cond.false.217
	movl	-36(%rbp), %eax
	movl	%eax, -452(%rbp)        # 4-byte Spill
.LBB0_112:                              # %cond.end.218
	movl	-452(%rbp), %eax        # 4-byte Reload
	cmpl	$0, -40(%rbp)
	movl	%eax, -456(%rbp)        # 4-byte Spill
	jge	.LBB0_114
# BB#113:                               # %cond.true.221
	xorl	%eax, %eax
	subl	-40(%rbp), %eax
	movl	%eax, -460(%rbp)        # 4-byte Spill
	jmp	.LBB0_115
.LBB0_114:                              # %cond.false.223
	movl	-40(%rbp), %eax
	movl	%eax, -460(%rbp)        # 4-byte Spill
.LBB0_115:                              # %cond.end.224
	movl	-460(%rbp), %eax        # 4-byte Reload
	leaq	-176(%rbp), %rdi
	movl	$1, %ecx
	movq	-440(%rbp), %rsi        # 8-byte Reload
	movl	-444(%rbp), %edx        # 4-byte Reload
	movl	-448(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -464(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-456(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-112(%rbp), %rdi
	leaq	-176(%rbp), %rsi
	callq	copy_region
.LBB0_116:                              # %if.end.226
	cmpl	$0, -36(%rbp)
	je	.LBB0_147
# BB#117:                               # %if.then.228
	cmpl	$0, -40(%rbp)
	jl	.LBB0_131
# BB#118:                               # %if.then.230
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	movl	-196(%rbp), %edx
	cmpl	$0, -36(%rbp)
	movq	%rax, -472(%rbp)        # 8-byte Spill
	movl	%edx, -476(%rbp)        # 4-byte Spill
	jge	.LBB0_120
# BB#119:                               # %cond.true.233
	xorl	%eax, %eax
	subl	-36(%rbp), %eax
	movl	%eax, -480(%rbp)        # 4-byte Spill
	jmp	.LBB0_121
.LBB0_120:                              # %cond.false.235
	movl	-36(%rbp), %eax
	movl	%eax, -480(%rbp)        # 4-byte Spill
.LBB0_121:                              # %cond.end.236
	movl	-480(%rbp), %eax        # 4-byte Reload
	movq	-48(%rbp), %rdi
	movl	%eax, -484(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	cmpl	$0, -40(%rbp)
	movl	%eax, -488(%rbp)        # 4-byte Spill
	jge	.LBB0_123
# BB#122:                               # %cond.true.240
	xorl	%eax, %eax
	subl	-40(%rbp), %eax
	movl	%eax, -492(%rbp)        # 4-byte Spill
	jmp	.LBB0_124
.LBB0_123:                              # %cond.false.242
	movl	-40(%rbp), %eax
	movl	%eax, -492(%rbp)        # 4-byte Spill
.LBB0_124:                              # %cond.end.243
	movl	-492(%rbp), %eax        # 4-byte Reload
	leaq	-112(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	-488(%rbp), %edx        # 4-byte Reload
	subl	%eax, %edx
	movq	-472(%rbp), %rsi        # 8-byte Reload
	movl	-476(%rbp), %eax        # 4-byte Reload
	movl	%edx, -496(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movl	-484(%rbp), %r8d        # 4-byte Reload
	movl	-496(%rbp), %r9d        # 4-byte Reload
	movl	$0, (%rsp)
	callq	pixel_region_init
	movq	-184(%rbp), %rsi
	movl	-204(%rbp), %edx
	movl	-208(%rbp), %eax
	addl	-40(%rbp), %eax
	cmpl	$0, -36(%rbp)
	movq	%rsi, -504(%rbp)        # 8-byte Spill
	movl	%edx, -508(%rbp)        # 4-byte Spill
	movl	%eax, -512(%rbp)        # 4-byte Spill
	jge	.LBB0_126
# BB#125:                               # %cond.true.248
	xorl	%eax, %eax
	subl	-36(%rbp), %eax
	movl	%eax, -516(%rbp)        # 4-byte Spill
	jmp	.LBB0_127
.LBB0_126:                              # %cond.false.250
	movl	-36(%rbp), %eax
	movl	%eax, -516(%rbp)        # 4-byte Spill
.LBB0_127:                              # %cond.end.251
	movl	-516(%rbp), %eax        # 4-byte Reload
	movq	-48(%rbp), %rdi
	movl	%eax, -520(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	cmpl	$0, -40(%rbp)
	movl	%eax, -524(%rbp)        # 4-byte Spill
	jge	.LBB0_129
# BB#128:                               # %cond.true.255
	xorl	%eax, %eax
	subl	-40(%rbp), %eax
	movl	%eax, -528(%rbp)        # 4-byte Spill
	jmp	.LBB0_130
.LBB0_129:                              # %cond.false.257
	movl	-40(%rbp), %eax
	movl	%eax, -528(%rbp)        # 4-byte Spill
.LBB0_130:                              # %cond.end.258
	movl	-528(%rbp), %eax        # 4-byte Reload
	leaq	-176(%rbp), %rdi
	movl	$1, %ecx
	movl	-524(%rbp), %edx        # 4-byte Reload
	subl	%eax, %edx
	movq	-504(%rbp), %rsi        # 8-byte Reload
	movl	-508(%rbp), %eax        # 4-byte Reload
	movl	%edx, -532(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movl	-512(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -536(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-520(%rbp), %r8d        # 4-byte Reload
	movl	-532(%rbp), %r9d        # 4-byte Reload
	movl	$1, (%rsp)
	callq	pixel_region_init
	jmp	.LBB0_146
.LBB0_131:                              # %if.else.261
	cmpl	$0, -40(%rbp)
	jge	.LBB0_145
# BB#132:                               # %if.then.263
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	movl	-196(%rbp), %edx
	movl	-200(%rbp), %ecx
	subl	-40(%rbp), %ecx
	cmpl	$0, -36(%rbp)
	movq	%rax, -544(%rbp)        # 8-byte Spill
	movl	%edx, -548(%rbp)        # 4-byte Spill
	movl	%ecx, -552(%rbp)        # 4-byte Spill
	jge	.LBB0_134
# BB#133:                               # %cond.true.267
	xorl	%eax, %eax
	subl	-36(%rbp), %eax
	movl	%eax, -556(%rbp)        # 4-byte Spill
	jmp	.LBB0_135
.LBB0_134:                              # %cond.false.269
	movl	-36(%rbp), %eax
	movl	%eax, -556(%rbp)        # 4-byte Spill
.LBB0_135:                              # %cond.end.270
	movl	-556(%rbp), %eax        # 4-byte Reload
	movq	-48(%rbp), %rdi
	movl	%eax, -560(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	cmpl	$0, -40(%rbp)
	movl	%eax, -564(%rbp)        # 4-byte Spill
	jge	.LBB0_137
# BB#136:                               # %cond.true.274
	xorl	%eax, %eax
	subl	-40(%rbp), %eax
	movl	%eax, -568(%rbp)        # 4-byte Spill
	jmp	.LBB0_138
.LBB0_137:                              # %cond.false.276
	movl	-40(%rbp), %eax
	movl	%eax, -568(%rbp)        # 4-byte Spill
.LBB0_138:                              # %cond.end.277
	movl	-568(%rbp), %eax        # 4-byte Reload
	leaq	-112(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	-564(%rbp), %edx        # 4-byte Reload
	subl	%eax, %edx
	movq	-544(%rbp), %rsi        # 8-byte Reload
	movl	-548(%rbp), %eax        # 4-byte Reload
	movl	%edx, -572(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movl	-552(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -576(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-560(%rbp), %r8d        # 4-byte Reload
	movl	-572(%rbp), %r9d        # 4-byte Reload
	movl	$0, (%rsp)
	callq	pixel_region_init
	movq	-184(%rbp), %rsi
	movl	-204(%rbp), %edx
	cmpl	$0, -36(%rbp)
	movq	%rsi, -584(%rbp)        # 8-byte Spill
	movl	%edx, -588(%rbp)        # 4-byte Spill
	jge	.LBB0_140
# BB#139:                               # %cond.true.281
	xorl	%eax, %eax
	subl	-36(%rbp), %eax
	movl	%eax, -592(%rbp)        # 4-byte Spill
	jmp	.LBB0_141
.LBB0_140:                              # %cond.false.283
	movl	-36(%rbp), %eax
	movl	%eax, -592(%rbp)        # 4-byte Spill
.LBB0_141:                              # %cond.end.284
	movl	-592(%rbp), %eax        # 4-byte Reload
	movq	-48(%rbp), %rdi
	movl	%eax, -596(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	cmpl	$0, -40(%rbp)
	movl	%eax, -600(%rbp)        # 4-byte Spill
	jge	.LBB0_143
# BB#142:                               # %cond.true.288
	xorl	%eax, %eax
	subl	-40(%rbp), %eax
	movl	%eax, -604(%rbp)        # 4-byte Spill
	jmp	.LBB0_144
.LBB0_143:                              # %cond.false.290
	movl	-40(%rbp), %eax
	movl	%eax, -604(%rbp)        # 4-byte Spill
.LBB0_144:                              # %cond.end.291
	movl	-604(%rbp), %eax        # 4-byte Reload
	leaq	-176(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	-600(%rbp), %esi        # 4-byte Reload
	subl	%eax, %esi
	movq	-584(%rbp), %r8         # 8-byte Reload
	movl	%esi, -608(%rbp)        # 4-byte Spill
	movq	%r8, %rsi
	movl	-588(%rbp), %eax        # 4-byte Reload
	movl	%edx, -612(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movl	-596(%rbp), %r8d        # 4-byte Reload
	movl	-608(%rbp), %r9d        # 4-byte Reload
	movl	$1, (%rsp)
	callq	pixel_region_init
.LBB0_145:                              # %if.end.294
	jmp	.LBB0_146
.LBB0_146:                              # %if.end.295
	leaq	-112(%rbp), %rdi
	leaq	-176(%rbp), %rsi
	callq	copy_region
.LBB0_147:                              # %if.end.296
	cmpl	$0, -40(%rbp)
	je	.LBB0_178
# BB#148:                               # %if.then.298
	cmpl	$0, -36(%rbp)
	jl	.LBB0_162
# BB#149:                               # %if.then.300
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	movl	-200(%rbp), %ecx
	movq	-48(%rbp), %rdi
	movq	%rax, -624(%rbp)        # 8-byte Spill
	movl	%ecx, -628(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	cmpl	$0, -36(%rbp)
	movl	%eax, -632(%rbp)        # 4-byte Spill
	jge	.LBB0_151
# BB#150:                               # %cond.true.304
	xorl	%eax, %eax
	subl	-36(%rbp), %eax
	movl	%eax, -636(%rbp)        # 4-byte Spill
	jmp	.LBB0_152
.LBB0_151:                              # %cond.false.306
	movl	-36(%rbp), %eax
	movl	%eax, -636(%rbp)        # 4-byte Spill
.LBB0_152:                              # %cond.end.307
	movl	-636(%rbp), %eax        # 4-byte Reload
	movl	-632(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	cmpl	$0, -40(%rbp)
	movl	%ecx, -640(%rbp)        # 4-byte Spill
	jge	.LBB0_154
# BB#153:                               # %cond.true.311
	xorl	%eax, %eax
	subl	-40(%rbp), %eax
	movl	%eax, -644(%rbp)        # 4-byte Spill
	jmp	.LBB0_155
.LBB0_154:                              # %cond.false.313
	movl	-40(%rbp), %eax
	movl	%eax, -644(%rbp)        # 4-byte Spill
.LBB0_155:                              # %cond.end.314
	movl	-644(%rbp), %eax        # 4-byte Reload
	leaq	-112(%rbp), %rdi
	xorl	%edx, %edx
	movq	-624(%rbp), %rsi        # 8-byte Reload
	movl	-628(%rbp), %ecx        # 4-byte Reload
	movl	-640(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	movq	-184(%rbp), %rsi
	movl	-204(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	-208(%rbp), %ecx
	movq	-48(%rbp), %rdi
	movq	%rsi, -656(%rbp)        # 8-byte Spill
	movl	%eax, -660(%rbp)        # 4-byte Spill
	movl	%ecx, -664(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	cmpl	$0, -36(%rbp)
	movl	%eax, -668(%rbp)        # 4-byte Spill
	jge	.LBB0_157
# BB#156:                               # %cond.true.319
	xorl	%eax, %eax
	subl	-36(%rbp), %eax
	movl	%eax, -672(%rbp)        # 4-byte Spill
	jmp	.LBB0_158
.LBB0_157:                              # %cond.false.321
	movl	-36(%rbp), %eax
	movl	%eax, -672(%rbp)        # 4-byte Spill
.LBB0_158:                              # %cond.end.322
	movl	-672(%rbp), %eax        # 4-byte Reload
	movl	-668(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	cmpl	$0, -40(%rbp)
	movl	%ecx, -676(%rbp)        # 4-byte Spill
	jge	.LBB0_160
# BB#159:                               # %cond.true.326
	xorl	%eax, %eax
	subl	-40(%rbp), %eax
	movl	%eax, -680(%rbp)        # 4-byte Spill
	jmp	.LBB0_161
.LBB0_160:                              # %cond.false.328
	movl	-40(%rbp), %eax
	movl	%eax, -680(%rbp)        # 4-byte Spill
.LBB0_161:                              # %cond.end.329
	movl	-680(%rbp), %eax        # 4-byte Reload
	leaq	-176(%rbp), %rdi
	movl	$1, %ecx
	movq	-656(%rbp), %rsi        # 8-byte Reload
	movl	-660(%rbp), %edx        # 4-byte Reload
	movl	-664(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -684(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-676(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	jmp	.LBB0_177
.LBB0_162:                              # %if.else.331
	cmpl	$0, -36(%rbp)
	jge	.LBB0_176
# BB#163:                               # %if.then.333
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	movl	-196(%rbp), %ecx
	subl	-36(%rbp), %ecx
	movl	-200(%rbp), %edx
	movq	-48(%rbp), %rdi
	movq	%rax, -696(%rbp)        # 8-byte Spill
	movl	%ecx, -700(%rbp)        # 4-byte Spill
	movl	%edx, -704(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	cmpl	$0, -36(%rbp)
	movl	%eax, -708(%rbp)        # 4-byte Spill
	jge	.LBB0_165
# BB#164:                               # %cond.true.338
	xorl	%eax, %eax
	subl	-36(%rbp), %eax
	movl	%eax, -712(%rbp)        # 4-byte Spill
	jmp	.LBB0_166
.LBB0_165:                              # %cond.false.340
	movl	-36(%rbp), %eax
	movl	%eax, -712(%rbp)        # 4-byte Spill
.LBB0_166:                              # %cond.end.341
	movl	-712(%rbp), %eax        # 4-byte Reload
	movl	-708(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	cmpl	$0, -40(%rbp)
	movl	%ecx, -716(%rbp)        # 4-byte Spill
	jge	.LBB0_168
# BB#167:                               # %cond.true.345
	xorl	%eax, %eax
	subl	-40(%rbp), %eax
	movl	%eax, -720(%rbp)        # 4-byte Spill
	jmp	.LBB0_169
.LBB0_168:                              # %cond.false.347
	movl	-40(%rbp), %eax
	movl	%eax, -720(%rbp)        # 4-byte Spill
.LBB0_169:                              # %cond.end.348
	movl	-720(%rbp), %eax        # 4-byte Reload
	leaq	-112(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-696(%rbp), %rsi        # 8-byte Reload
	movl	-700(%rbp), %edx        # 4-byte Reload
	movl	-704(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -724(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-716(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	movq	-184(%rbp), %rsi
	movl	-208(%rbp), %ecx
	movq	-48(%rbp), %rdi
	movq	%rsi, -736(%rbp)        # 8-byte Spill
	movl	%ecx, -740(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	cmpl	$0, -36(%rbp)
	movl	%eax, -744(%rbp)        # 4-byte Spill
	jge	.LBB0_171
# BB#170:                               # %cond.true.352
	xorl	%eax, %eax
	subl	-36(%rbp), %eax
	movl	%eax, -748(%rbp)        # 4-byte Spill
	jmp	.LBB0_172
.LBB0_171:                              # %cond.false.354
	movl	-36(%rbp), %eax
	movl	%eax, -748(%rbp)        # 4-byte Spill
.LBB0_172:                              # %cond.end.355
	movl	-748(%rbp), %eax        # 4-byte Reload
	movl	-744(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	cmpl	$0, -40(%rbp)
	movl	%ecx, -752(%rbp)        # 4-byte Spill
	jge	.LBB0_174
# BB#173:                               # %cond.true.359
	xorl	%eax, %eax
	subl	-40(%rbp), %eax
	movl	%eax, -756(%rbp)        # 4-byte Spill
	jmp	.LBB0_175
.LBB0_174:                              # %cond.false.361
	movl	-40(%rbp), %eax
	movl	%eax, -756(%rbp)        # 4-byte Spill
.LBB0_175:                              # %cond.end.362
	movl	-756(%rbp), %eax        # 4-byte Reload
	leaq	-176(%rbp), %rdi
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	-736(%rbp), %rsi        # 8-byte Reload
	movl	-740(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -760(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-752(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
.LBB0_176:                              # %if.end.364
	jmp	.LBB0_177
.LBB0_177:                              # %if.end.365
	leaq	-112(%rbp), %rdi
	leaq	-176(%rbp), %rsi
	callq	copy_region
.LBB0_178:                              # %if.end.366
	jmp	.LBB0_246
.LBB0_179:                              # %if.else.367
	cmpl	$0, -32(%rbp)
	jne	.LBB0_183
# BB#180:                               # %if.then.369
	leaq	-296(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_background
	leaq	-296(%rbp), %rdi
	leaq	-212(%rbp), %rsi
	movq	%rsi, %rax
	addq	$1, %rax
	movq	%rsi, %rcx
	addq	$2, %rcx
	movq	%rax, %rdx
	callq	gimp_rgb_get_uchar
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB0_182
# BB#181:                               # %if.then.375
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_bytes
	subl	$1, %eax
	movslq	%eax, %rdi
	movb	$-1, -212(%rbp,%rdi)
.LBB0_182:                              # %if.end.379
	jmp	.LBB0_183
.LBB0_183:                              # %if.end.380
	cmpl	$0, -36(%rbp)
	jl	.LBB0_186
# BB#184:                               # %land.lhs.true.382
	cmpl	$0, -40(%rbp)
	jl	.LBB0_186
# BB#185:                               # %if.then.384
	movl	$0, -204(%rbp)
	movl	$0, -208(%rbp)
	jmp	.LBB0_198
.LBB0_186:                              # %if.else.385
	cmpl	$0, -36(%rbp)
	jl	.LBB0_189
# BB#187:                               # %land.lhs.true.387
	cmpl	$0, -40(%rbp)
	jge	.LBB0_189
# BB#188:                               # %if.then.389
	movl	$0, -204(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_item_get_height
	addl	-40(%rbp), %eax
	movl	%eax, -208(%rbp)
	jmp	.LBB0_197
.LBB0_189:                              # %if.else.392
	cmpl	$0, -36(%rbp)
	jge	.LBB0_192
# BB#190:                               # %land.lhs.true.394
	cmpl	$0, -40(%rbp)
	jl	.LBB0_192
# BB#191:                               # %if.then.396
	movq	-48(%rbp), %rdi
	callq	gimp_item_get_width
	addl	-36(%rbp), %eax
	movl	%eax, -204(%rbp)
	movl	$0, -208(%rbp)
	jmp	.LBB0_196
.LBB0_192:                              # %if.else.399
	cmpl	$0, -36(%rbp)
	jge	.LBB0_195
# BB#193:                               # %land.lhs.true.401
	cmpl	$0, -40(%rbp)
	jge	.LBB0_195
# BB#194:                               # %if.then.403
	movq	-48(%rbp), %rdi
	callq	gimp_item_get_width
	addl	-36(%rbp), %eax
	movl	%eax, -204(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_item_get_height
	addl	-40(%rbp), %eax
	movl	%eax, -208(%rbp)
.LBB0_195:                              # %if.end.408
	jmp	.LBB0_196
.LBB0_196:                              # %if.end.409
	jmp	.LBB0_197
.LBB0_197:                              # %if.end.410
	jmp	.LBB0_198
.LBB0_198:                              # %if.end.411
	cmpl	$0, -36(%rbp)
	je	.LBB0_207
# BB#199:                               # %land.lhs.true.413
	cmpl	$0, -40(%rbp)
	je	.LBB0_207
# BB#200:                               # %if.then.415
	movq	-184(%rbp), %rsi
	movl	-204(%rbp), %edx
	movl	-208(%rbp), %ecx
	cmpl	$0, -36(%rbp)
	movq	%rsi, -768(%rbp)        # 8-byte Spill
	movl	%edx, -772(%rbp)        # 4-byte Spill
	movl	%ecx, -776(%rbp)        # 4-byte Spill
	jge	.LBB0_202
# BB#201:                               # %cond.true.417
	xorl	%eax, %eax
	subl	-36(%rbp), %eax
	movl	%eax, -780(%rbp)        # 4-byte Spill
	jmp	.LBB0_203
.LBB0_202:                              # %cond.false.419
	movl	-36(%rbp), %eax
	movl	%eax, -780(%rbp)        # 4-byte Spill
.LBB0_203:                              # %cond.end.420
	movl	-780(%rbp), %eax        # 4-byte Reload
	cmpl	$0, -40(%rbp)
	movl	%eax, -784(%rbp)        # 4-byte Spill
	jge	.LBB0_205
# BB#204:                               # %cond.true.423
	xorl	%eax, %eax
	subl	-40(%rbp), %eax
	movl	%eax, -788(%rbp)        # 4-byte Spill
	jmp	.LBB0_206
.LBB0_205:                              # %cond.false.425
	movl	-40(%rbp), %eax
	movl	%eax, -788(%rbp)        # 4-byte Spill
.LBB0_206:                              # %cond.end.426
	movl	-788(%rbp), %eax        # 4-byte Reload
	leaq	-176(%rbp), %rdi
	movl	$1, %ecx
	movq	-768(%rbp), %rsi        # 8-byte Reload
	movl	-772(%rbp), %edx        # 4-byte Reload
	movl	-776(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -792(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-784(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-176(%rbp), %rdi
	leaq	-212(%rbp), %rsi
	callq	color_region
.LBB0_207:                              # %if.end.428
	cmpl	$0, -36(%rbp)
	je	.LBB0_226
# BB#208:                               # %if.then.430
	cmpl	$0, -40(%rbp)
	jl	.LBB0_216
# BB#209:                               # %if.then.432
	movq	-184(%rbp), %rsi
	movl	-204(%rbp), %edx
	movl	-208(%rbp), %eax
	addl	-40(%rbp), %eax
	cmpl	$0, -36(%rbp)
	movq	%rsi, -800(%rbp)        # 8-byte Spill
	movl	%edx, -804(%rbp)        # 4-byte Spill
	movl	%eax, -808(%rbp)        # 4-byte Spill
	jge	.LBB0_211
# BB#210:                               # %cond.true.435
	xorl	%eax, %eax
	subl	-36(%rbp), %eax
	movl	%eax, -812(%rbp)        # 4-byte Spill
	jmp	.LBB0_212
.LBB0_211:                              # %cond.false.437
	movl	-36(%rbp), %eax
	movl	%eax, -812(%rbp)        # 4-byte Spill
.LBB0_212:                              # %cond.end.438
	movl	-812(%rbp), %eax        # 4-byte Reload
	movq	-48(%rbp), %rdi
	movl	%eax, -816(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	cmpl	$0, -40(%rbp)
	movl	%eax, -820(%rbp)        # 4-byte Spill
	jge	.LBB0_214
# BB#213:                               # %cond.true.442
	xorl	%eax, %eax
	subl	-40(%rbp), %eax
	movl	%eax, -824(%rbp)        # 4-byte Spill
	jmp	.LBB0_215
.LBB0_214:                              # %cond.false.444
	movl	-40(%rbp), %eax
	movl	%eax, -824(%rbp)        # 4-byte Spill
.LBB0_215:                              # %cond.end.445
	movl	-824(%rbp), %eax        # 4-byte Reload
	leaq	-176(%rbp), %rdi
	movl	$1, %ecx
	movl	-820(%rbp), %edx        # 4-byte Reload
	subl	%eax, %edx
	movq	-800(%rbp), %rsi        # 8-byte Reload
	movl	-804(%rbp), %eax        # 4-byte Reload
	movl	%edx, -828(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movl	-808(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -832(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-816(%rbp), %r8d        # 4-byte Reload
	movl	-828(%rbp), %r9d        # 4-byte Reload
	movl	$1, (%rsp)
	callq	pixel_region_init
	jmp	.LBB0_225
.LBB0_216:                              # %if.else.448
	cmpl	$0, -40(%rbp)
	jge	.LBB0_224
# BB#217:                               # %if.then.450
	movq	-184(%rbp), %rsi
	movl	-204(%rbp), %edx
	cmpl	$0, -36(%rbp)
	movq	%rsi, -840(%rbp)        # 8-byte Spill
	movl	%edx, -844(%rbp)        # 4-byte Spill
	jge	.LBB0_219
# BB#218:                               # %cond.true.452
	xorl	%eax, %eax
	subl	-36(%rbp), %eax
	movl	%eax, -848(%rbp)        # 4-byte Spill
	jmp	.LBB0_220
.LBB0_219:                              # %cond.false.454
	movl	-36(%rbp), %eax
	movl	%eax, -848(%rbp)        # 4-byte Spill
.LBB0_220:                              # %cond.end.455
	movl	-848(%rbp), %eax        # 4-byte Reload
	movq	-48(%rbp), %rdi
	movl	%eax, -852(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	cmpl	$0, -40(%rbp)
	movl	%eax, -856(%rbp)        # 4-byte Spill
	jge	.LBB0_222
# BB#221:                               # %cond.true.459
	xorl	%eax, %eax
	subl	-40(%rbp), %eax
	movl	%eax, -860(%rbp)        # 4-byte Spill
	jmp	.LBB0_223
.LBB0_222:                              # %cond.false.461
	movl	-40(%rbp), %eax
	movl	%eax, -860(%rbp)        # 4-byte Spill
.LBB0_223:                              # %cond.end.462
	movl	-860(%rbp), %eax        # 4-byte Reload
	leaq	-176(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	-856(%rbp), %esi        # 4-byte Reload
	subl	%eax, %esi
	movq	-840(%rbp), %r8         # 8-byte Reload
	movl	%esi, -864(%rbp)        # 4-byte Spill
	movq	%r8, %rsi
	movl	-844(%rbp), %eax        # 4-byte Reload
	movl	%edx, -868(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movl	-852(%rbp), %r8d        # 4-byte Reload
	movl	-864(%rbp), %r9d        # 4-byte Reload
	movl	$1, (%rsp)
	callq	pixel_region_init
.LBB0_224:                              # %if.end.465
	jmp	.LBB0_225
.LBB0_225:                              # %if.end.466
	leaq	-176(%rbp), %rdi
	leaq	-212(%rbp), %rsi
	callq	color_region
.LBB0_226:                              # %if.end.468
	cmpl	$0, -40(%rbp)
	je	.LBB0_245
# BB#227:                               # %if.then.470
	cmpl	$0, -36(%rbp)
	jl	.LBB0_235
# BB#228:                               # %if.then.472
	movq	-184(%rbp), %rsi
	movl	-204(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	-208(%rbp), %ecx
	movq	-48(%rbp), %rdi
	movq	%rsi, -880(%rbp)        # 8-byte Spill
	movl	%eax, -884(%rbp)        # 4-byte Spill
	movl	%ecx, -888(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	cmpl	$0, -36(%rbp)
	movl	%eax, -892(%rbp)        # 4-byte Spill
	jge	.LBB0_230
# BB#229:                               # %cond.true.476
	xorl	%eax, %eax
	subl	-36(%rbp), %eax
	movl	%eax, -896(%rbp)        # 4-byte Spill
	jmp	.LBB0_231
.LBB0_230:                              # %cond.false.478
	movl	-36(%rbp), %eax
	movl	%eax, -896(%rbp)        # 4-byte Spill
.LBB0_231:                              # %cond.end.479
	movl	-896(%rbp), %eax        # 4-byte Reload
	movl	-892(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	cmpl	$0, -40(%rbp)
	movl	%ecx, -900(%rbp)        # 4-byte Spill
	jge	.LBB0_233
# BB#232:                               # %cond.true.483
	xorl	%eax, %eax
	subl	-40(%rbp), %eax
	movl	%eax, -904(%rbp)        # 4-byte Spill
	jmp	.LBB0_234
.LBB0_233:                              # %cond.false.485
	movl	-40(%rbp), %eax
	movl	%eax, -904(%rbp)        # 4-byte Spill
.LBB0_234:                              # %cond.end.486
	movl	-904(%rbp), %eax        # 4-byte Reload
	leaq	-176(%rbp), %rdi
	movl	$1, %ecx
	movq	-880(%rbp), %rsi        # 8-byte Reload
	movl	-884(%rbp), %edx        # 4-byte Reload
	movl	-888(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -908(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-900(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	jmp	.LBB0_244
.LBB0_235:                              # %if.else.488
	cmpl	$0, -36(%rbp)
	jge	.LBB0_243
# BB#236:                               # %if.then.490
	movq	-184(%rbp), %rsi
	movl	-208(%rbp), %ecx
	movq	-48(%rbp), %rdi
	movq	%rsi, -920(%rbp)        # 8-byte Spill
	movl	%ecx, -924(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	cmpl	$0, -36(%rbp)
	movl	%eax, -928(%rbp)        # 4-byte Spill
	jge	.LBB0_238
# BB#237:                               # %cond.true.493
	xorl	%eax, %eax
	subl	-36(%rbp), %eax
	movl	%eax, -932(%rbp)        # 4-byte Spill
	jmp	.LBB0_239
.LBB0_238:                              # %cond.false.495
	movl	-36(%rbp), %eax
	movl	%eax, -932(%rbp)        # 4-byte Spill
.LBB0_239:                              # %cond.end.496
	movl	-932(%rbp), %eax        # 4-byte Reload
	movl	-928(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	cmpl	$0, -40(%rbp)
	movl	%ecx, -936(%rbp)        # 4-byte Spill
	jge	.LBB0_241
# BB#240:                               # %cond.true.500
	xorl	%eax, %eax
	subl	-40(%rbp), %eax
	movl	%eax, -940(%rbp)        # 4-byte Spill
	jmp	.LBB0_242
.LBB0_241:                              # %cond.false.502
	movl	-40(%rbp), %eax
	movl	%eax, -940(%rbp)        # 4-byte Spill
.LBB0_242:                              # %cond.end.503
	movl	-940(%rbp), %eax        # 4-byte Reload
	leaq	-176(%rbp), %rdi
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	-920(%rbp), %rsi        # 8-byte Reload
	movl	-924(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -944(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-936(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
.LBB0_243:                              # %if.end.505
	jmp	.LBB0_244
.LBB0_244:                              # %if.end.506
	leaq	-176(%rbp), %rdi
	leaq	-212(%rbp), %rsi
	callq	color_region
.LBB0_245:                              # %if.end.508
	jmp	.LBB0_246
.LBB0_246:                              # %if.end.509
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -952(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.3, %rsi
	movl	$10, %ecx
	movl	%ecx, %edx
	movl	%eax, -956(%rbp)        # 4-byte Spill
	callq	g_dpgettext
	movq	-184(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rax, -968(%rbp)        # 8-byte Spill
	movq	%rcx, -976(%rbp)        # 8-byte Spill
	callq	gimp_drawable_type
	movq	-952(%rbp), %rdi        # 8-byte Reload
	movl	-956(%rbp), %esi        # 4-byte Reload
	movq	-968(%rbp), %rdx        # 8-byte Reload
	movq	-976(%rbp), %rcx        # 8-byte Reload
	movl	%eax, %r8d
	callq	gimp_drawable_set_tiles
	movq	-184(%rbp), %rdi
	callq	tile_manager_unref
.LBB0_247:                              # %return
	addq	$984, %rsp              # imm = 0x3D8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_drawable_offset, .Lfunc_end0-gimp_drawable_offset
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_drawable_offset,@object # @__func__.gimp_drawable_offset
.L__func__.gimp_drawable_offset:
	.asciz	"gimp_drawable_offset"
	.size	.L__func__.gimp_drawable_offset, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_DRAWABLE (drawable)"
	.size	.L.str.1, 28

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"undo-type\004Offset Drawable"
	.size	.L.str.3, 26


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
