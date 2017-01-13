	.text
	.file	"gimpexport.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4636737291354636288     # double 100
	.text
	.globl	gimp_export_image
	.align	16, 0x90
	.type	gimp_export_image,@function
gimp_export_image:                      # @gimp_export_image
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -80(%rbp)
	movl	$0, -84(%rbp)
	movl	$1, -88(%rbp)
	movl	$0, -92(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	cmpl	$-1, (%rax)
	jle	.LBB0_4
# BB#2:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpl	$-1, (%rax)
	jle	.LBB0_4
# BB#3:                                 # %if.then
	jmp	.LBB0_5
.LBB0_4:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_export_image(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_154
.LBB0_5:                                # %if.end
	jmp	.LBB0_6
.LBB0_6:                                # %do.end
	movl	-36(%rbp), %eax
	andl	$256, %eax              # imm = 0x100
	cmpl	$0, %eax
	je	.LBB0_8
# BB#7:                                 # %if.then.3
	movl	-36(%rbp), %eax
	orl	$16, %eax
	movl	%eax, -36(%rbp)
.LBB0_8:                                # %if.end.4
	movl	-36(%rbp), %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB0_10
# BB#9:                                 # %if.then.7
	movl	-36(%rbp), %eax
	orl	$32, %eax
	movl	%eax, -36(%rbp)
.LBB0_10:                               # %if.end.9
	movl	-36(%rbp), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	.LBB0_12
# BB#11:                                # %if.then.12
	movl	-36(%rbp), %eax
	orl	$32, %eax
	movl	%eax, -36(%rbp)
.LBB0_12:                               # %if.end.14
	movl	-36(%rbp), %eax
	andl	$32, %eax
	cmpl	$0, %eax
	je	.LBB0_14
# BB#13:                                # %if.then.17
	movl	-36(%rbp), %eax
	orl	$16, %eax
	movl	%eax, -36(%rbp)
.LBB0_14:                               # %if.end.19
	cmpq	$0, -32(%rbp)
	je	.LBB0_17
# BB#15:                                # %land.lhs.true.21
	leaq	.L.str.2(%rip), %rdi
	callq	g_getenv@PLT
	cmpq	$0, %rax
	je	.LBB0_17
# BB#16:                                # %if.then.23
	movl	$1, -76(%rbp)
.LBB0_17:                               # %if.end.24
	cmpl	$0, -76(%rbp)
	je	.LBB0_29
# BB#18:                                # %land.lhs.true.26
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_item_is_layer@PLT
	cmpl	$0, %eax
	jne	.LBB0_29
# BB#19:                                # %land.lhs.true.29
	movl	-36(%rbp), %eax
	andl	$32, %eax
	cmpl	$0, %eax
	jne	.LBB0_29
# BB#20:                                # %if.then.32
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_item_is_layer_mask@PLT
	cmpl	$0, %eax
	je	.LBB0_22
# BB#21:                                # %if.then.35
	leaq	.L.str.3(%rip), %rdi
	leaq	.L.str.4(%rip), %rsi
	callq	dgettext@PLT
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	confirm_save_dialog
	movl	%eax, -92(%rbp)
	jmp	.LBB0_26
.LBB0_22:                               # %if.else.38
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_item_is_channel@PLT
	cmpl	$0, %eax
	je	.LBB0_24
# BB#23:                                # %if.then.41
	leaq	.L.str.3(%rip), %rdi
	leaq	.L.str.5(%rip), %rsi
	callq	dgettext@PLT
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	confirm_save_dialog
	movl	%eax, -92(%rbp)
	jmp	.LBB0_25
.LBB0_24:                               # %if.else.44
	leaq	.L.str.6(%rip), %rdi
	leaq	.L__func__.gimp_export_image(%rip), %rsi
	movb	$0, %al
	callq	g_warning
.LBB0_25:                               # %if.end.45
	jmp	.LBB0_26
.LBB0_26:                               # %if.end.46
	cmpl	$0, -92(%rbp)
	jne	.LBB0_28
# BB#27:                                # %if.then.48
	movl	$0, -4(%rbp)
	jmp	.LBB0_154
.LBB0_28:                               # %if.end.49
	jmp	.LBB0_29
.LBB0_29:                               # %if.end.50
	leaq	-60(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_image_get_layers@PLT
	movq	%rax, -72(%rbp)
	movl	$0, -56(%rbp)
.LBB0_30:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-56(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB0_43
# BB#31:                                # %for.body
                                        #   in Loop: Header=BB0_30 Depth=1
	movslq	-56(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_drawable_has_alpha@PLT
	cmpl	$0, %eax
	je	.LBB0_35
# BB#32:                                # %if.then.55
                                        #   in Loop: Header=BB0_30 Depth=1
	movl	-36(%rbp), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	jne	.LBB0_34
# BB#33:                                # %if.then.58
	leaq	export_action_flatten(%rip), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_slist_prepend@PLT
	movq	%rax, -48(%rbp)
	movl	$1, -80(%rbp)
	jmp	.LBB0_43
.LBB0_34:                               # %if.end.60
                                        #   in Loop: Header=BB0_30 Depth=1
	jmp	.LBB0_41
.LBB0_35:                               # %if.else.61
                                        #   in Loop: Header=BB0_30 Depth=1
	movl	-56(%rbp), %eax
	movl	-60(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_38
# BB#36:                                # %land.lhs.true.63
                                        #   in Loop: Header=BB0_30 Depth=1
	movslq	-56(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_item_get_visible@PLT
	cmpl	$0, %eax
	je	.LBB0_38
# BB#37:                                # %if.then.68
                                        #   in Loop: Header=BB0_30 Depth=1
	movl	$0, -88(%rbp)
.LBB0_38:                               # %if.end.69
                                        #   in Loop: Header=BB0_30 Depth=1
	movl	-36(%rbp), %eax
	andl	$256, %eax              # imm = 0x100
	cmpl	$0, %eax
	je	.LBB0_40
# BB#39:                                # %if.then.72
	leaq	export_action_add_alpha(%rip), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_slist_prepend@PLT
	movq	%rax, -48(%rbp)
	jmp	.LBB0_43
.LBB0_40:                               # %if.end.74
                                        #   in Loop: Header=BB0_30 Depth=1
	jmp	.LBB0_41
.LBB0_41:                               # %if.end.75
                                        #   in Loop: Header=BB0_30 Depth=1
	jmp	.LBB0_42
.LBB0_42:                               # %for.inc
                                        #   in Loop: Header=BB0_30 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB0_30
.LBB0_43:                               # %for.end
	cmpl	$0, -80(%rbp)
	jne	.LBB0_51
# BB#44:                                # %if.then.77
	movl	$0, -56(%rbp)
.LBB0_45:                               # %for.cond.78
                                        # =>This Inner Loop Header: Depth=1
	movl	-56(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB0_50
# BB#46:                                # %for.body.80
                                        #   in Loop: Header=BB0_45 Depth=1
	movslq	-56(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_layer_get_mask@PLT
	cmpl	$-1, %eax
	je	.LBB0_48
# BB#47:                                # %if.then.85
                                        #   in Loop: Header=BB0_45 Depth=1
	movl	$1, -84(%rbp)
.LBB0_48:                               # %if.end.86
                                        #   in Loop: Header=BB0_45 Depth=1
	jmp	.LBB0_49
.LBB0_49:                               # %for.inc.87
                                        #   in Loop: Header=BB0_45 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB0_45
.LBB0_50:                               # %for.end.89
	jmp	.LBB0_51
.LBB0_51:                               # %if.end.90
	cmpl	$0, -80(%rbp)
	jne	.LBB0_93
# BB#52:                                # %if.then.92
	leaq	-96(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_item_get_children@PLT
	movq	%rax, -104(%rbp)
	cmpl	$1, -60(%rbp)
	jne	.LBB0_66
# BB#53:                                # %land.lhs.true.96
	cmpq	$0, -104(%rbp)
	jne	.LBB0_66
# BB#54:                                # %land.lhs.true.98
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_item_is_layer@PLT
	cmpl	$0, %eax
	je	.LBB0_66
# BB#55:                                # %land.lhs.true.101
	movl	-36(%rbp), %eax
	andl	$32, %eax
	cmpl	$0, %eax
	jne	.LBB0_66
# BB#56:                                # %if.then.104
	leaq	-108(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_offsets@PLT
	movq	-24(%rbp), %rdx
	movl	(%rdx), %edi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	gimp_layer_get_opacity@PLT
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB0_61
# BB#57:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_image_width@PLT
	movq	-24(%rbp), %rcx
	movl	(%rcx), %edi
	movl	%eax, -136(%rbp)        # 4-byte Spill
	callq	gimp_drawable_width@PLT
	movl	-136(%rbp), %edi        # 4-byte Reload
	cmpl	%eax, %edi
	jne	.LBB0_61
# BB#58:                                # %lor.lhs.false.111
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_image_height@PLT
	movq	-24(%rbp), %rcx
	movl	(%rcx), %edi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	gimp_drawable_height@PLT
	movl	-140(%rbp), %edi        # 4-byte Reload
	cmpl	%eax, %edi
	jne	.LBB0_61
# BB#59:                                # %lor.lhs.false.115
	cmpl	$0, -108(%rbp)
	jne	.LBB0_61
# BB#60:                                # %lor.lhs.false.117
	cmpl	$0, -112(%rbp)
	je	.LBB0_65
.LBB0_61:                               # %if.then.119
	movl	-36(%rbp), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB0_63
# BB#62:                                # %if.then.122
	leaq	export_action_merge_single(%rip), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_slist_prepend@PLT
	movq	%rax, -48(%rbp)
	jmp	.LBB0_64
.LBB0_63:                               # %if.else.124
	leaq	export_action_flatten(%rip), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_slist_prepend@PLT
	movq	%rax, -48(%rbp)
.LBB0_64:                               # %if.end.126
	jmp	.LBB0_65
.LBB0_65:                               # %if.end.127
	jmp	.LBB0_89
.LBB0_66:                               # %if.else.128
	cmpl	$1, -60(%rbp)
	jle	.LBB0_80
# BB#67:                                # %if.then.130
	movl	-36(%rbp), %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB0_73
# BB#68:                                # %if.then.133
	cmpl	$0, -88(%rbp)
	jne	.LBB0_70
# BB#69:                                # %lor.lhs.false.135
	movl	-36(%rbp), %eax
	andl	$256, %eax              # imm = 0x100
	cmpl	$0, %eax
	je	.LBB0_71
.LBB0_70:                               # %if.then.138
	leaq	export_action_animate_or_merge(%rip), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_slist_prepend@PLT
	movq	%rax, -48(%rbp)
	jmp	.LBB0_72
.LBB0_71:                               # %if.else.140
	leaq	export_action_animate_or_flatten(%rip), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_slist_prepend@PLT
	movq	%rax, -48(%rbp)
.LBB0_72:                               # %if.end.142
	jmp	.LBB0_79
.LBB0_73:                               # %if.else.143
	movl	-36(%rbp), %eax
	andl	$32, %eax
	cmpl	$0, %eax
	jne	.LBB0_78
# BB#74:                                # %if.then.146
	movl	-36(%rbp), %eax
	andl	$256, %eax              # imm = 0x100
	cmpl	$0, %eax
	je	.LBB0_76
# BB#75:                                # %if.then.149
	leaq	export_action_merge(%rip), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_slist_prepend@PLT
	movq	%rax, -48(%rbp)
	jmp	.LBB0_77
.LBB0_76:                               # %if.else.151
	leaq	export_action_merge_or_flatten(%rip), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_slist_prepend@PLT
	movq	%rax, -48(%rbp)
.LBB0_77:                               # %if.end.153
	jmp	.LBB0_78
.LBB0_78:                               # %if.end.154
	jmp	.LBB0_79
.LBB0_79:                               # %if.end.155
	jmp	.LBB0_88
.LBB0_80:                               # %if.else.156
	cmpq	$0, -104(%rbp)
	je	.LBB0_87
# BB#81:                                # %if.then.158
	movl	-36(%rbp), %eax
	andl	$32, %eax
	cmpl	$0, %eax
	jne	.LBB0_86
# BB#82:                                # %if.then.161
	movl	-36(%rbp), %eax
	andl	$256, %eax              # imm = 0x100
	cmpl	$0, %eax
	je	.LBB0_84
# BB#83:                                # %if.then.164
	leaq	export_action_merge(%rip), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_slist_prepend@PLT
	movq	%rax, -48(%rbp)
	jmp	.LBB0_85
.LBB0_84:                               # %if.else.166
	leaq	export_action_merge_or_flatten(%rip), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_slist_prepend@PLT
	movq	%rax, -48(%rbp)
.LBB0_85:                               # %if.end.168
	jmp	.LBB0_86
.LBB0_86:                               # %if.end.169
	jmp	.LBB0_87
.LBB0_87:                               # %if.end.170
	jmp	.LBB0_88
.LBB0_88:                               # %if.end.171
	jmp	.LBB0_89
.LBB0_89:                               # %if.end.172
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	cmpl	$0, -84(%rbp)
	je	.LBB0_92
# BB#90:                                # %land.lhs.true.174
	movl	-36(%rbp), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	jne	.LBB0_92
# BB#91:                                # %if.then.177
	leaq	export_action_apply_masks(%rip), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_slist_prepend@PLT
	movq	%rax, -48(%rbp)
.LBB0_92:                               # %if.end.179
	jmp	.LBB0_93
.LBB0_93:                               # %if.end.180
	movq	-72(%rbp), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_image_base_type@PLT
	movl	%eax, -52(%rbp)
	movl	%eax, %edi
	testl	%eax, %eax
	movl	%edi, -144(%rbp)        # 4-byte Spill
	je	.LBB0_94
	jmp	.LBB0_155
.LBB0_155:                              # %if.end.180
	movl	-144(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	je	.LBB0_109
	jmp	.LBB0_156
.LBB0_156:                              # %if.end.180
	movl	-144(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	je	.LBB0_124
	jmp	.LBB0_141
.LBB0_94:                               # %sw.bb
	movl	-36(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB0_108
# BB#95:                                # %if.then.184
	movl	-36(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB0_98
# BB#96:                                # %land.lhs.true.187
	movl	-36(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB0_98
# BB#97:                                # %if.then.190
	leaq	export_action_convert_indexed_or_grayscale(%rip), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_slist_prepend@PLT
	movq	%rax, -48(%rbp)
	jmp	.LBB0_107
.LBB0_98:                               # %if.else.192
	movl	-36(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB0_100
# BB#99:                                # %if.then.195
	leaq	export_action_convert_indexed(%rip), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_slist_prepend@PLT
	movq	%rax, -48(%rbp)
	jmp	.LBB0_106
.LBB0_100:                              # %if.else.197
	movl	-36(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB0_102
# BB#101:                               # %if.then.200
	leaq	export_action_convert_grayscale(%rip), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_slist_prepend@PLT
	movq	%rax, -48(%rbp)
	jmp	.LBB0_105
.LBB0_102:                              # %if.else.202
	movl	-36(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB0_104
# BB#103:                               # %if.then.205
	leaq	export_action_convert_bitmap(%rip), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_slist_prepend@PLT
	movq	%rax, -48(%rbp)
.LBB0_104:                              # %if.end.207
	jmp	.LBB0_105
.LBB0_105:                              # %if.end.208
	jmp	.LBB0_106
.LBB0_106:                              # %if.end.209
	jmp	.LBB0_107
.LBB0_107:                              # %if.end.210
	jmp	.LBB0_108
.LBB0_108:                              # %if.end.211
	jmp	.LBB0_141
.LBB0_109:                              # %sw.bb.212
	movl	-36(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	jne	.LBB0_123
# BB#110:                               # %if.then.215
	movl	-36(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB0_113
# BB#111:                               # %land.lhs.true.218
	movl	-36(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB0_113
# BB#112:                               # %if.then.221
	leaq	export_action_convert_rgb_or_indexed(%rip), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_slist_prepend@PLT
	movq	%rax, -48(%rbp)
	jmp	.LBB0_122
.LBB0_113:                              # %if.else.223
	movl	-36(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB0_115
# BB#114:                               # %if.then.226
	leaq	export_action_convert_rgb(%rip), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_slist_prepend@PLT
	movq	%rax, -48(%rbp)
	jmp	.LBB0_121
.LBB0_115:                              # %if.else.228
	movl	-36(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB0_117
# BB#116:                               # %if.then.231
	leaq	export_action_convert_indexed(%rip), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_slist_prepend@PLT
	movq	%rax, -48(%rbp)
	jmp	.LBB0_120
.LBB0_117:                              # %if.else.233
	movl	-36(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB0_119
# BB#118:                               # %if.then.236
	leaq	export_action_convert_bitmap(%rip), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_slist_prepend@PLT
	movq	%rax, -48(%rbp)
.LBB0_119:                              # %if.end.238
	jmp	.LBB0_120
.LBB0_120:                              # %if.end.239
	jmp	.LBB0_121
.LBB0_121:                              # %if.end.240
	jmp	.LBB0_122
.LBB0_122:                              # %if.end.241
	jmp	.LBB0_123
.LBB0_123:                              # %if.end.242
	jmp	.LBB0_141
.LBB0_124:                              # %sw.bb.243
	movl	-36(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	jne	.LBB0_140
# BB#125:                               # %if.then.246
	movl	-36(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB0_128
# BB#126:                               # %land.lhs.true.249
	movl	-36(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB0_128
# BB#127:                               # %if.then.252
	leaq	export_action_convert_rgb_or_grayscale(%rip), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_slist_prepend@PLT
	movq	%rax, -48(%rbp)
	jmp	.LBB0_139
.LBB0_128:                              # %if.else.254
	movl	-36(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB0_130
# BB#129:                               # %if.then.257
	leaq	export_action_convert_rgb(%rip), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_slist_prepend@PLT
	movq	%rax, -48(%rbp)
	jmp	.LBB0_138
.LBB0_130:                              # %if.else.259
	movl	-36(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB0_132
# BB#131:                               # %if.then.262
	leaq	export_action_convert_grayscale(%rip), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_slist_prepend@PLT
	movq	%rax, -48(%rbp)
	jmp	.LBB0_137
.LBB0_132:                              # %if.else.264
	movl	-36(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB0_136
# BB#133:                               # %if.then.267
	leaq	-116(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_image_get_colormap@PLT
	movq	%rax, %rdi
	callq	g_free@PLT
	cmpl	$2, -116(%rbp)
	jle	.LBB0_135
# BB#134:                               # %if.then.270
	leaq	export_action_convert_bitmap(%rip), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_slist_prepend@PLT
	movq	%rax, -48(%rbp)
.LBB0_135:                              # %if.end.272
	jmp	.LBB0_136
.LBB0_136:                              # %if.end.273
	jmp	.LBB0_137
.LBB0_137:                              # %if.end.274
	jmp	.LBB0_138
.LBB0_138:                              # %if.end.275
	jmp	.LBB0_139
.LBB0_139:                              # %if.end.276
	jmp	.LBB0_140
.LBB0_140:                              # %if.end.277
	jmp	.LBB0_141
.LBB0_141:                              # %sw.epilog
	cmpq	$0, -48(%rbp)
	je	.LBB0_146
# BB#142:                               # %if.then.279
	movq	-48(%rbp), %rdi
	callq	g_slist_reverse@PLT
	movq	%rax, -48(%rbp)
	cmpl	$0, -76(%rbp)
	je	.LBB0_144
# BB#143:                               # %if.then.282
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	export_dialog
	movl	%eax, -92(%rbp)
	jmp	.LBB0_145
.LBB0_144:                              # %if.else.284
	movl	$2, -92(%rbp)
.LBB0_145:                              # %if.end.285
	jmp	.LBB0_147
.LBB0_146:                              # %if.else.286
	movl	$1, -92(%rbp)
.LBB0_147:                              # %if.end.287
	cmpl	$2, -92(%rbp)
	jne	.LBB0_153
# BB#148:                               # %if.then.289
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_image_duplicate@PLT
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_image_get_active_layer@PLT
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_image_undo_disable@PLT
	movq	-48(%rbp), %rcx
	movq	%rcx, -128(%rbp)
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB0_149:                              # %for.cond.293
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -128(%rbp)
	je	.LBB0_152
# BB#150:                               # %for.body.295
                                        #   in Loop: Header=BB0_149 Depth=1
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	export_action_perform
# BB#151:                               # %for.inc.296
                                        #   in Loop: Header=BB0_149 Depth=1
	movq	-128(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB0_149
.LBB0_152:                              # %for.end.297
	jmp	.LBB0_153
.LBB0_153:                              # %if.end.298
	movq	-48(%rbp), %rdi
	callq	g_slist_free@PLT
	movl	-92(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_154:                              # %return
	movl	-4(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_export_image, .Lfunc_end0-gimp_export_image
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_0:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_1:
	.quad	4608083138725491507     # double 1.2
	.text
	.align	16, 0x90
	.type	confirm_save_dialog,@function
confirm_save_dialog:                    # @confirm_save_dialog
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
	subq	$304, %rsp              # imm = 0x130
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.confirm_save_dialog(%rip), %rsi
	leaq	.L.str.11(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB1_14
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	jmp	.LBB1_6
.LBB1_6:                                # %do.body.2
	cmpq	$0, -24(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.4
	jmp	.LBB1_9
.LBB1_8:                                # %if.else.5
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.confirm_save_dialog(%rip), %rsi
	leaq	.L.str.12(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB1_14
.LBB1_9:                                # %if.end.6
	jmp	.LBB1_10
.LBB1_10:                               # %do.end.7
	leaq	.L.str.3(%rip), %rax
	leaq	.L.str.13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	dgettext@PLT
	leaq	.L.str.16(%rip), %rsi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	dgettext@PLT
	movq	%rsp, %rsi
	movq	%rax, 16(%rsi)
	leaq	.L.str.8(%rip), %rax
	movq	%rax, (%rsi)
	movq	$0, 32(%rsi)
	movl	$-5, 24(%rsi)
	movl	$-6, 8(%rsi)
	leaq	.L.str.14(%rip), %rsi
	movq	gimp_standard_help_func@GOTPCREL(%rip), %r8
	leaq	.L.str.15(%rip), %r9
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movb	%cl, %r10b
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	movb	%r10b, %al
	movb	%r10b, -101(%rbp)       # 1-byte Spill
	callq	gimp_dialog_new@PLT
	movq	%rax, -32(%rbp)
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$-5, %esi
	movl	$-6, %edx
	movl	$-1, %ecx
	movq	%rax, %rdi
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	movb	-101(%rbp), %al         # 1-byte Reload
	callq	gtk_dialog_set_alternative_button_order@PLT
	movq	-32(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	movl	-100(%rbp), %esi        # 4-byte Reload
	callq	gtk_window_set_resizable@PLT
	movq	-32(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type@PLT
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_window_set_transient@PLT
	movl	$12, %ecx
	movl	-100(%rbp), %edi        # 4-byte Reload
	movl	%ecx, %esi
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	callq	gtk_box_new@PLT
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type@PLT
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area@PLT
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-40(%rbp), %rsi
	movl	$1, %ecx
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	movl	-100(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-40(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	movl	-140(%rbp), %esi        # 4-byte Reload
	callq	gtk_container_set_border_width@PLT
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.17(%rip), %rdi
	movl	$6, %esi
	callq	gtk_image_new_from_stock@PLT
	movq	%rax, -48(%rbp)
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type@PLT
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movss	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	movq	%rax, %rdi
	movss	%xmm1, -188(%rbp)       # 4-byte Spill
	callq	gtk_misc_set_alignment@PLT
	movq	-40(%rbp), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	-100(%rbp), %edx        # 4-byte Reload
	movl	-100(%rbp), %ecx        # 4-byte Reload
	movl	-100(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movl	-164(%rbp), %edi        # 4-byte Reload
	movl	-140(%rbp), %esi        # 4-byte Reload
	callq	gtk_box_new@PLT
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	-100(%rbp), %edx        # 4-byte Reload
	movl	-100(%rbp), %ecx        # 4-byte Reload
	movl	-100(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movb	-101(%rbp), %al         # 1-byte Reload
	callq	g_strdup_printf@PLT
	movq	%rax, -72(%rbp)
	movq	%rax, %rdi
	callq	gtk_label_new@PLT
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rdi
	callq	g_free@PLT
	movq	-64(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$15, %esi
	movsd	.LCPI1_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	$4, %edx
	movl	$700, %ecx              # imm = 0x2BC
	movb	$1, %r10b
	movq	%rax, %rdi
	movl	-116(%rbp), %r8d        # 4-byte Reload
	movb	%r10b, %al
	callq	gimp_label_set_attributes@PLT
	movq	-64(%rbp), %rdi
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type@PLT
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	movss	-188(%rbp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-188(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	gtk_misc_set_alignment@PLT
	movq	-64(%rbp), %rdi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	movl	-164(%rbp), %esi        # 4-byte Reload
	callq	gtk_label_set_line_wrap@PLT
	movq	-64(%rbp), %rdi
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	movl	-100(%rbp), %esi        # 4-byte Reload
	callq	gtk_label_set_justify@PLT
	movq	-56(%rbp), %rdi
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	-100(%rbp), %edx        # 4-byte Reload
	movl	-100(%rbp), %ecx        # 4-byte Reload
	movl	-100(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-32(%rbp), %rdi
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type@PLT
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_dialog_run@PLT
	subl	$-5, %eax
	movl	%eax, -260(%rbp)        # 4-byte Spill
	jne	.LBB1_12
	jmp	.LBB1_11
.LBB1_11:                               # %sw.bb
	movl	$2, -76(%rbp)
	jmp	.LBB1_13
.LBB1_12:                               # %sw.default
	movl	$0, -76(%rbp)
.LBB1_13:                               # %sw.epilog
	movq	-32(%rbp), %rdi
	callq	gtk_widget_destroy@PLT
	movl	-76(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB1_14:                               # %return
	movl	-4(%rbp), %eax
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end1:
	.size	confirm_save_dialog, .Lfunc_end1-confirm_save_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB2_2
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
.LBB2_2:                                # %entry
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
	leaq	.L.str(%rip), %rdi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end2:
	.size	g_warning, .Lfunc_end2-g_warning
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4608083138725491507     # double 1.2
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_1:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	export_dialog,@function
export_dialog:                          # @export_dialog
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$648, %rsp              # imm = 0x288
.Ltmp12:
	.cfi_offset %rbx, -40
.Ltmp13:
	.cfi_offset %r14, -32
.Ltmp14:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -40(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.export_dialog(%rip), %rsi
	leaq	.L.str.42(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -28(%rbp)
	jmp	.LBB3_28
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.body.2
	cmpq	$0, -48(%rbp)
	je	.LBB3_8
# BB#7:                                 # %if.then.4
	jmp	.LBB3_9
.LBB3_8:                                # %if.else.5
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.export_dialog(%rip), %rsi
	leaq	.L.str.12(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -28(%rbp)
	jmp	.LBB3_28
.LBB3_9:                                # %if.end.6
	jmp	.LBB3_10
.LBB3_10:                               # %do.end.7
	leaq	.L.str.3(%rip), %rdi
	leaq	.L.str.43(%rip), %rsi
	callq	dgettext@PLT
	leaq	.L.str.3(%rip), %rdi
	leaq	.L.str.46(%rip), %rsi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	leaq	.L.str.3(%rip), %rdi
	leaq	.L.str.9(%rip), %rsi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	leaq	.L.str.44(%rip), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movq	gimp_standard_help_func@GOTPCREL(%rip), %r8
	leaq	.L.str.45(%rip), %r9
	movl	$4294967287, %r10d      # imm = 0xFFFFFFF7
	leaq	.L.str.8(%rip), %rdi
	movl	$4294967290, %r11d      # imm = 0xFFFFFFFA
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	-160(%rbp), %r14        # 8-byte Reload
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	-168(%rbp), %r15        # 8-byte Reload
	movq	%r15, (%rsp)
	movl	$-9, 8(%rsp)
	movq	-176(%rbp), %r15        # 8-byte Reload
	movq	%r15, 16(%rsp)
	movl	$-6, 24(%rsp)
	movq	%rax, 32(%rsp)
	movl	$-5, 40(%rsp)
	movq	$0, 48(%rsp)
	movb	$0, %al
	movl	%ebx, -180(%rbp)        # 4-byte Spill
	movl	%r11d, -184(%rbp)       # 4-byte Spill
	movl	%r10d, -188(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type@PLT
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$4294967287, %esi       # imm = 0xFFFFFFF7
	movl	$4294967291, %edx       # imm = 0xFFFFFFFB
	movl	$4294967290, %ecx       # imm = 0xFFFFFFFA
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order@PLT
	movq	-56(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type@PLT
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_resizable@PLT
	movq	-56(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type@PLT
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_window_set_transient@PLT
	xorl	%edi, %edi
	movl	$12, %esi
	callq	gtk_box_new@PLT
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type@PLT
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area@PLT
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start@PLT
	movq	-64(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width@PLT
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.47(%rip), %rdi
	movl	$6, %esi
	callq	gtk_image_new_from_stock@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type@PLT
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movss	.LCPI3_1(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment@PLT
	movq	-64(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	movl	-260(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new@PLT
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -276(%rbp)        # 4-byte Spill
	movl	-276(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.3(%rip), %rdi
	leaq	.L.str.48(%rip), %rsi
	callq	dgettext@PLT
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf@PLT
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	callq	gtk_label_new@PLT
	movq	%rax, -88(%rbp)
	movq	-104(%rbp), %rdi
	callq	g_free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$15, %esi
	movsd	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$1, %al
	callq	gimp_label_set_attributes@PLT
	movq	-88(%rbp), %rdi
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type@PLT
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	movss	%xmm0, -300(%rbp)       # 4-byte Spill
	movss	-300(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	gtk_misc_set_alignment@PLT
	movq	-88(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_line_wrap@PLT
	movq	-88(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_justify@PLT
	movq	-80(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -332(%rbp)        # 4-byte Spill
	movl	-332(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB3_11:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB3_23
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB3_11 Depth=1
	leaq	.L.str.3(%rip), %rdi
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	16(%rax), %rsi
	callq	dgettext@PLT
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf@PLT
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	callq	gimp_frame_new@PLT
	movq	%rax, -128(%rbp)
	movq	-104(%rbp), %rdi
	callq	g_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -348(%rbp)        # 4-byte Spill
	movl	-348(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-128(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new@PLT
	movq	%rax, -136(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	movq	-120(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB3_15
# BB#13:                                # %land.lhs.true
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	-120(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB3_15
# BB#14:                                # %if.then.58
                                        #   in Loop: Header=BB3_11 Depth=1
	leaq	.L.str.3(%rip), %rdi
	movq	$0, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	24(%rcx), %rsi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_label@PLT
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type@PLT
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_bin_get_child@PLT
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_justify@PLT
	movq	-144(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type@PLT
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group@PLT
	movq	%rax, -152(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%edx, %edx
	movq	-144(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -404(%rbp)        # 4-byte Spill
	movl	-404(%rbp), %ecx        # 4-byte Reload
	movl	-404(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	leaq	.L.str.49(%rip), %rsi
	leaq	export_toggle_callback(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-144(%rbp), %rdi
	movq	-120(%rbp), %r10
	addq	$40, %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data@PLT
	movq	-144(%rbp), %rcx
	movq	%rax, -416(%rbp)        # 8-byte Spill
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type@PLT
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-120(%rbp), %rcx
	cmpl	$0, 40(%rcx)
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active@PLT
	movq	-144(%rbp), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.3(%rip), %rdi
	movq	-152(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	32(%rcx), %rsi
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_label@PLT
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type@PLT
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_bin_get_child@PLT
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_justify@PLT
	movq	-144(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type@PLT
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group@PLT
	movq	%rax, -152(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%r9d, %r9d
	movq	-144(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start@PLT
	movq	-144(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type@PLT
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-120(%rbp), %rsi
	cmpl	$1, 40(%rsi)
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active@PLT
	movq	-144(%rbp), %rdi
	callq	gtk_widget_show@PLT
	jmp	.LBB3_18
.LBB3_15:                               # %if.else.97
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	-120(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB3_17
# BB#16:                                # %if.then.101
                                        #   in Loop: Header=BB3_11 Depth=1
	leaq	.L.str.3(%rip), %rdi
	movq	-120(%rbp), %rax
	movq	24(%rax), %rsi
	callq	dgettext@PLT
	movq	%rax, %rdi
	callq	gtk_label_new@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type@PLT
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	movss	%xmm0, -484(%rbp)       # 4-byte Spill
	movss	-484(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	gtk_misc_set_alignment@PLT
	movq	-88(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_line_wrap@PLT
	movq	-88(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_justify@PLT
	movq	-136(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -516(%rbp)        # 4-byte Spill
	movl	-516(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-120(%rbp), %rax
	movl	$0, 40(%rax)
.LBB3_17:                               # %if.end.115
                                        #   in Loop: Header=BB3_11 Depth=1
	jmp	.LBB3_18
.LBB3_18:                               # %if.end.116
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	-136(%rbp), %rdi
	callq	gtk_widget_show@PLT
# BB#19:                                # %for.inc
                                        #   in Loop: Header=BB3_11 Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB3_21
# BB#20:                                # %cond.true
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	jmp	.LBB3_22
.LBB3_21:                               # %cond.false
                                        #   in Loop: Header=BB3_11 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -528(%rbp)        # 8-byte Spill
	jmp	.LBB3_22
.LBB3_22:                               # %cond.end
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	-528(%rbp), %rax        # 8-byte Reload
	movq	%rax, -96(%rbp)
	jmp	.LBB3_11
.LBB3_23:                               # %for.end
	leaq	.L.str.3(%rip), %rdi
	leaq	.L.str.50(%rip), %rsi
	callq	dgettext@PLT
	movq	%rax, %rdi
	callq	gtk_label_new@PLT
	movq	%rax, -88(%rbp)
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	$3, %esi
	movl	$2, %r8d
	movl	$-1, %r9d
	movq	%rax, %rdi
	movb	%dl, -537(%rbp)         # 1-byte Spill
	movl	%r8d, %edx
	movl	%ecx, -544(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movb	-537(%rbp), %al         # 1-byte Reload
	callq	gimp_label_set_attributes@PLT
	movq	-88(%rbp), %rdi
	movq	%rdi, -552(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type@PLT
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	movss	%xmm0, -556(%rbp)       # 4-byte Spill
	movss	-556(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	gtk_misc_set_alignment@PLT
	movq	-88(%rbp), %rdi
	movq	%rdi, -568(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_line_wrap@PLT
	movq	-88(%rbp), %rdi
	movq	%rdi, -576(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	movl	-544(%rbp), %esi        # 4-byte Reload
	callq	gtk_label_set_justify@PLT
	movq	-80(%rbp), %rdi
	movq	%rdi, -584(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	-544(%rbp), %edx        # 4-byte Reload
	movl	-544(%rbp), %ecx        # 4-byte Reload
	movl	-544(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-56(%rbp), %rdi
	movq	%rdi, -592(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type@PLT
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_dialog_run@PLT
	movl	%eax, %ecx
	subl	$-9, %eax
	movl	%ecx, -596(%rbp)        # 4-byte Spill
	movl	%eax, -600(%rbp)        # 4-byte Spill
	je	.LBB3_25
	jmp	.LBB3_29
.LBB3_29:                               # %for.end
	movl	-596(%rbp), %eax        # 4-byte Reload
	subl	$-5, %eax
	movl	%eax, -604(%rbp)        # 4-byte Spill
	jne	.LBB3_26
	jmp	.LBB3_24
.LBB3_24:                               # %sw.bb
	movl	$2, -108(%rbp)
	jmp	.LBB3_27
.LBB3_25:                               # %sw.bb.133
	movl	$1, -108(%rbp)
	jmp	.LBB3_27
.LBB3_26:                               # %sw.default
	movl	$0, -108(%rbp)
.LBB3_27:                               # %sw.epilog
	movq	-56(%rbp), %rdi
	callq	gtk_widget_destroy@PLT
	movl	-108(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB3_28:                               # %return
	movl	-28(%rbp), %eax
	addq	$648, %rsp              # imm = 0x288
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	export_dialog, .Lfunc_end3-export_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	export_action_perform,@function
export_action_perform:                  # @export_action_perform
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	export_action_get_func
	movl	-12(%rbp), %edi
	movq	-24(%rbp), %rsi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	export_action_perform, .Lfunc_end4-export_action_perform
	.cfi_endproc

	.globl	gimp_export_dialog_new
	.align	16, 0x90
	.type	gimp_export_dialog_new,@function
gimp_export_dialog_new:                 # @gimp_export_dialog_new
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
	subq	$144, %rsp
	leaq	.L.str.3(%rip), %rax
	leaq	.L.str.7(%rip), %rcx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	dgettext@PLT
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strconcat@PLT
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	xorl	%ecx, %ecx
	movq	gimp_standard_help_func@GOTPCREL(%rip), %r8
	leaq	.L.str.8(%rip), %rsi
	movl	$4294967290, %r9d       # imm = 0xFFFFFFFA
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %r10
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movl	%r9d, -60(%rbp)         # 4-byte Spill
	movq	%r10, %r9
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, %al
	callq	gimp_dialog_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_dialog_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.3(%rip), %rdi
	leaq	.L.str.9(%rip), %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	dgettext@PLT
	movl	$4294967291, %edx       # imm = 0xFFFFFFFB
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dialog_add_button@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_button_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.10(%rip), %rdi
	movl	$4, %esi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_image_new_from_stock@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_button_set_image@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order@PLT
	movq	-32(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_window_set_transient@PLT
	movq	-48(%rbp), %rdi
	callq	g_free@PLT
	movq	-32(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_export_dialog_new, .Lfunc_end5-gimp_export_dialog_new
	.cfi_endproc

	.globl	gimp_export_dialog_get_content_area
	.align	16, 0x90
	.type	gimp_export_dialog_get_content_area,@function
gimp_export_dialog_get_content_area:    # @gimp_export_dialog_get_content_area
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type@PLT
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_export_dialog_get_content_area, .Lfunc_end6-gimp_export_dialog_get_content_area
	.cfi_endproc

	.align	16, 0x90
	.type	export_flatten,@function
export_flatten:                         # @export_flatten
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
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_image_flatten@PLT
	movl	%eax, -20(%rbp)
	cmpl	$-1, -20(%rbp)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB7_2:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	export_flatten, .Lfunc_end7-export_flatten
	.cfi_endproc

	.align	16, 0x90
	.type	export_add_alpha,@function
export_add_alpha:                       # @export_add_alpha
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
	subq	$48, %rsp
	leaq	-20(%rbp), %rax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	movq	%rax, %rsi
	callq	gimp_image_get_layers@PLT
	movq	%rax, -32(%rbp)
	movl	$0, -24(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB8_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movslq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_drawable_has_alpha@PLT
	cmpl	$0, %eax
	jne	.LBB8_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB8_1 Depth=1
	movslq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_layer_add_alpha@PLT
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB8_4:                                # %if.end
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_5
.LBB8_5:                                # %for.inc
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB8_1
.LBB8_6:                                # %for.end
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	export_add_alpha, .Lfunc_end8-export_add_alpha
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	export_merge,@function
export_merge:                           # @export_merge
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
	subq	$112, %rsp
	leaq	-20(%rbp), %rax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -24(%rbp)
	movl	-4(%rbp), %edi
	movq	%rax, %rsi
	callq	gimp_image_get_layers@PLT
	movq	%rax, -40(%rbp)
	movl	$0, -28(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB9_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_item_get_visible@PLT
	cmpl	$0, %eax
	je	.LBB9_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
.LBB9_4:                                # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_5
.LBB9_5:                                # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB9_1
.LBB9_6:                                # %for.end
	cmpl	$1, -24(%rbp)
	jg	.LBB9_8
# BB#7:                                 # %if.then.4
	movl	-4(%rbp), %edi
	movl	-4(%rbp), %eax
	movl	%edi, -60(%rbp)         # 4-byte Spill
	movl	%eax, %edi
	callq	gimp_image_width@PLT
	movl	-4(%rbp), %edi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	gimp_image_height@PLT
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	gimp_drawable_type@PLT
	leaq	.L.str.24(%rip), %rsi
	movsd	.LCPI9_0(%rip), %xmm0   # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	orl	$1, %eax
	movl	-60(%rbp), %edi         # 4-byte Reload
	movl	-64(%rbp), %edx         # 4-byte Reload
	movl	-68(%rbp), %ecx         # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_layer_new@PLT
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	movl	%eax, -48(%rbp)
	movl	-4(%rbp), %edi
	movl	-48(%rbp), %esi
	callq	gimp_image_insert_layer@PLT
	movl	-4(%rbp), %edi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	gimp_selection_none@PLT
	movl	-48(%rbp), %edi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gimp_edit_clear@PLT
	movl	-24(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -24(%rbp)
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB9_8:                                # %if.end.13
	cmpl	$1, -24(%rbp)
	jle	.LBB9_16
# BB#9:                                 # %if.then.15
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	movl	$1, %esi
	movl	-4(%rbp), %edi
	callq	gimp_image_merge_visible_layers@PLT
	movl	%eax, -44(%rbp)
	cmpl	$-1, -44(%rbp)
	je	.LBB9_11
# BB#10:                                # %if.then.18
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB9_12
.LBB9_11:                               # %if.else
	jmp	.LBB9_23
.LBB9_12:                               # %if.end.19
	leaq	-20(%rbp), %rsi
	movl	-4(%rbp), %edi
	callq	gimp_image_get_layers@PLT
	movq	%rax, -40(%rbp)
	movl	-44(%rbp), %edi
	callq	gimp_drawable_width@PLT
	movl	-4(%rbp), %edi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gimp_image_width@PLT
	movl	-84(%rbp), %edi         # 4-byte Reload
	cmpl	%eax, %edi
	jne	.LBB9_14
# BB#13:                                # %lor.lhs.false
	movl	-44(%rbp), %edi
	callq	gimp_drawable_height@PLT
	movl	-4(%rbp), %edi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	gimp_image_height@PLT
	movl	-88(%rbp), %edi         # 4-byte Reload
	cmpl	%eax, %edi
	je	.LBB9_15
.LBB9_14:                               # %if.then.27
	leaq	-52(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movl	-44(%rbp), %edi
	callq	gimp_drawable_offsets@PLT
	movl	-44(%rbp), %edi
	movl	-4(%rbp), %ecx
	movl	%edi, -92(%rbp)         # 4-byte Spill
	movl	%ecx, %edi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	gimp_image_width@PLT
	movl	-4(%rbp), %edi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gimp_image_height@PLT
	movl	-52(%rbp), %ecx
	movl	-56(%rbp), %r8d
	movl	-92(%rbp), %edi         # 4-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	gimp_layer_resize@PLT
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB9_15:                               # %if.end.32
	jmp	.LBB9_16
.LBB9_16:                               # %if.end.33
	movl	$0, -28(%rbp)
.LBB9_17:                               # %for.cond.34
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB9_22
# BB#18:                                # %for.body.36
                                        #   in Loop: Header=BB9_17 Depth=1
	movslq	-28(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movq	-16(%rbp), %rax
	cmpl	(%rax), %edx
	je	.LBB9_20
# BB#19:                                # %if.then.40
                                        #   in Loop: Header=BB9_17 Depth=1
	movl	-4(%rbp), %edi
	movslq	-28(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	(%rcx,%rax,4), %esi
	callq	gimp_image_remove_layer@PLT
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB9_20:                               # %if.end.44
                                        #   in Loop: Header=BB9_17 Depth=1
	jmp	.LBB9_21
.LBB9_21:                               # %for.inc.45
                                        #   in Loop: Header=BB9_17 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB9_17
.LBB9_22:                               # %for.end.47
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
.LBB9_23:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	export_merge, .Lfunc_end9-export_merge
	.cfi_endproc

	.align	16, 0x90
	.type	export_apply_masks,@function
export_apply_masks:                     # @export_apply_masks
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
	subq	$48, %rsp
	leaq	-20(%rbp), %rax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	movq	%rax, %rsi
	callq	gimp_image_get_layers@PLT
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB10_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB10_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_layer_get_mask@PLT
	cmpl	$-1, %eax
	je	.LBB10_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%esi, %esi
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_layer_remove_mask@PLT
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB10_4:                               # %if.end
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_5
.LBB10_5:                               # %for.inc
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB10_1
.LBB10_6:                               # %for.end
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	export_apply_masks, .Lfunc_end10-export_apply_masks
	.cfi_endproc

	.align	16, 0x90
	.type	export_convert_indexed,@function
export_convert_indexed:                 # @export_convert_indexed
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
	subq	$64, %rsp
	leaq	-20(%rbp), %rax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	movq	%rax, %rsi
	callq	gimp_image_get_layers@PLT
	movq	%rax, %rdi
	callq	g_free@PLT
	cmpl	$1, -20(%rbp)
	jg	.LBB11_2
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha@PLT
	cmpl	$0, %eax
	je	.LBB11_3
.LBB11_2:                               # %if.then
	xorl	%eax, %eax
	movl	$255, %ecx
	leaq	.L.str.33(%rip), %rdx
	movl	-4(%rbp), %edi
	movl	%eax, %esi
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %r8d
	movl	%eax, %r9d
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	gimp_image_convert_indexed@PLT
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB11_4
.LBB11_3:                               # %if.else
	xorl	%eax, %eax
	movl	$256, %ecx              # imm = 0x100
	leaq	.L.str.33(%rip), %rdx
	movl	-4(%rbp), %edi
	movl	%eax, %esi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %r8d
	movl	%eax, %r9d
	movq	-48(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	gimp_image_convert_indexed@PLT
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB11_4:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	export_convert_indexed, .Lfunc_end11-export_convert_indexed
	.cfi_endproc

	.align	16, 0x90
	.type	export_convert_grayscale,@function
export_convert_grayscale:               # @export_convert_grayscale
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
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_image_convert_grayscale@PLT
	movl	%eax, -20(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	export_convert_grayscale, .Lfunc_end12-export_convert_grayscale
	.cfi_endproc

	.align	16, 0x90
	.type	export_convert_bitmap,@function
export_convert_bitmap:                  # @export_convert_bitmap
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
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_image_base_type@PLT
	cmpl	$2, %eax
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movl	-4(%rbp), %edi
	callq	gimp_image_convert_rgb@PLT
	movl	%eax, -20(%rbp)         # 4-byte Spill
.LBB13_2:                               # %if.end
	movl	$1, %esi
	xorl	%eax, %eax
	movl	$2, %ecx
	leaq	.L.str.33(%rip), %rdx
	movl	-4(%rbp), %edi
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %r8d
	movl	%eax, %r9d
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	gimp_image_convert_indexed@PLT
	movl	%eax, -36(%rbp)         # 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	export_convert_bitmap, .Lfunc_end13-export_convert_bitmap
	.cfi_endproc

	.align	16, 0x90
	.type	export_convert_rgb,@function
export_convert_rgb:                     # @export_convert_rgb
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
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_image_convert_rgb@PLT
	movl	%eax, -20(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	export_convert_rgb, .Lfunc_end14-export_convert_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	export_toggle_callback,@function
export_toggle_callback:                 # @export_toggle_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active@PLT
	cmpl	$0, %eax
	je	.LBB15_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	jmp	.LBB15_3
.LBB15_2:                               # %if.else
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
.LBB15_3:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	export_toggle_callback, .Lfunc_end15-export_toggle_callback
	.cfi_endproc

	.align	16, 0x90
	.type	export_action_get_func,@function
export_action_get_func:                 # @export_action_get_func
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	cmpl	$0, 40(%rdi)
	jne	.LBB16_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB16_7
.LBB16_3:                               # %if.end
	movq	-16(%rbp), %rax
	cmpl	$1, 40(%rax)
	jne	.LBB16_6
# BB#4:                                 # %land.lhs.true.4
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB16_6
# BB#5:                                 # %if.then.6
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.end.8
	leaq	export_void(%rip), %rax
	movq	%rax, -8(%rbp)
.LBB16_7:                               # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end16:
	.size	export_action_get_func, .Lfunc_end16-export_action_get_func
	.cfi_endproc

	.align	16, 0x90
	.type	export_void,@function
export_void:                            # @export_void
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
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end17:
	.size	export_void, .Lfunc_end17-export_void
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LibGimp"
	.size	.L.str, 8

	.type	.L__func__.gimp_export_image,@object # @__func__.gimp_export_image
.L__func__.gimp_export_image:
	.asciz	"gimp_export_image"
	.size	.L__func__.gimp_export_image, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"*image_ID > -1 && *drawable_ID > -1"
	.size	.L.str.1, 36

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_INTERACTIVE_EXPORT"
	.size	.L.str.2, 24

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp20-libgimp"
	.size	.L.str.3, 15

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"You are about to save a layer mask as %s.\nThis will not save the visible layers."
	.size	.L.str.4, 81

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"You are about to save a channel (saved selection) as %s.\nThis will not save the visible layers."
	.size	.L.str.5, 96

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%s: unknown drawable type!"
	.size	.L.str.6, 27

	.type	export_action_flatten,@object # @export_action_flatten
	.section	.data.rel.local,"aw",@progbits
	.align	8
export_action_flatten:
	.quad	export_flatten
	.quad	0
	.quad	.L.str.18
	.quad	.L.str.19
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.size	export_action_flatten, 48

	.type	export_action_add_alpha,@object # @export_action_add_alpha
	.align	8
export_action_add_alpha:
	.quad	export_add_alpha
	.quad	0
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.size	export_action_add_alpha, 48

	.type	export_action_merge_single,@object # @export_action_merge_single
	.align	8
export_action_merge_single:
	.quad	export_merge
	.quad	0
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.size	export_action_merge_single, 48

	.type	export_action_animate_or_merge,@object # @export_action_animate_or_merge
	.align	8
export_action_animate_or_merge:
	.quad	export_merge
	.quad	0
	.quad	.L.str.25
	.quad	.L.str.23
	.quad	.L.str.26
	.long	0                       # 0x0
	.zero	4
	.size	export_action_animate_or_merge, 48

	.type	export_action_animate_or_flatten,@object # @export_action_animate_or_flatten
	.align	8
export_action_animate_or_flatten:
	.quad	export_flatten
	.quad	0
	.quad	.L.str.25
	.quad	.L.str.19
	.quad	.L.str.26
	.long	0                       # 0x0
	.zero	4
	.size	export_action_animate_or_flatten, 48

	.type	export_action_merge,@object # @export_action_merge
	.align	8
export_action_merge:
	.quad	export_merge
	.quad	0
	.quad	.L.str.27
	.quad	.L.str.23
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.size	export_action_merge, 48

	.type	export_action_merge_or_flatten,@object # @export_action_merge_or_flatten
	.align	8
export_action_merge_or_flatten:
	.quad	export_flatten
	.quad	export_merge
	.quad	.L.str.27
	.quad	.L.str.19
	.quad	.L.str.23
	.long	1                       # 0x1
	.zero	4
	.size	export_action_merge_or_flatten, 48

	.type	export_action_apply_masks,@object # @export_action_apply_masks
	.align	8
export_action_apply_masks:
	.quad	export_apply_masks
	.quad	0
	.quad	.L.str.28
	.quad	.L.str.29
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.size	export_action_apply_masks, 48

	.type	export_action_convert_indexed_or_grayscale,@object # @export_action_convert_indexed_or_grayscale
	.align	8
export_action_convert_indexed_or_grayscale:
	.quad	export_convert_indexed
	.quad	export_convert_grayscale
	.quad	.L.str.30
	.quad	.L.str.31
	.quad	.L.str.32
	.long	0                       # 0x0
	.zero	4
	.size	export_action_convert_indexed_or_grayscale, 48

	.type	export_action_convert_indexed,@object # @export_action_convert_indexed
	.align	8
export_action_convert_indexed:
	.quad	export_convert_indexed
	.quad	0
	.quad	.L.str.34
	.quad	.L.str.31
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.size	export_action_convert_indexed, 48

	.type	export_action_convert_grayscale,@object # @export_action_convert_grayscale
	.align	8
export_action_convert_grayscale:
	.quad	export_convert_grayscale
	.quad	0
	.quad	.L.str.35
	.quad	.L.str.32
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.size	export_action_convert_grayscale, 48

	.type	export_action_convert_bitmap,@object # @export_action_convert_bitmap
	.align	8
export_action_convert_bitmap:
	.quad	export_convert_bitmap
	.quad	0
	.quad	.L.str.36
	.quad	.L.str.37
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.size	export_action_convert_bitmap, 48

	.type	export_action_convert_rgb_or_indexed,@object # @export_action_convert_rgb_or_indexed
	.align	8
export_action_convert_rgb_or_indexed:
	.quad	export_convert_rgb
	.quad	export_convert_indexed
	.quad	.L.str.38
	.quad	.L.str.39
	.quad	.L.str.31
	.long	0                       # 0x0
	.zero	4
	.size	export_action_convert_rgb_or_indexed, 48

	.type	export_action_convert_rgb,@object # @export_action_convert_rgb
	.align	8
export_action_convert_rgb:
	.quad	export_convert_rgb
	.quad	0
	.quad	.L.str.40
	.quad	.L.str.39
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.size	export_action_convert_rgb, 48

	.type	export_action_convert_rgb_or_grayscale,@object # @export_action_convert_rgb_or_grayscale
	.align	8
export_action_convert_rgb_or_grayscale:
	.quad	export_convert_rgb
	.quad	export_convert_grayscale
	.quad	.L.str.41
	.quad	.L.str.39
	.quad	.L.str.32
	.long	0                       # 0x0
	.zero	4
	.size	export_action_convert_rgb_or_grayscale, 48

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"Export Image as "
	.size	.L.str.7, 17

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gtk-cancel"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"_Export"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gtk-save"
	.size	.L.str.10, 9

	.type	.L__func__.confirm_save_dialog,@object # @__func__.confirm_save_dialog
.L__func__.confirm_save_dialog:
	.asciz	"confirm_save_dialog"
	.size	.L__func__.confirm_save_dialog, 20

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"message != NULL"
	.size	.L.str.11, 16

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"format_name != NULL"
	.size	.L.str.12, 20

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Confirm Save"
	.size	.L.str.13, 13

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp-export-image-confirm"
	.size	.L.str.14, 26

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp-export-confirm-dialog"
	.size	.L.str.15, 27

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Confirm"
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gtk-dialog-warning"
	.size	.L.str.17, 19

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%s plug-in can't handle transparency"
	.size	.L.str.18, 37

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Flatten Image"
	.size	.L.str.19, 14

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"%s plug-in needs an alpha channel"
	.size	.L.str.20, 34

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Add Alpha Channel"
	.size	.L.str.21, 18

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"%s plug-in can't handle layer offsets, size or opacity"
	.size	.L.str.22, 55

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Merge Visible Layers"
	.size	.L.str.23, 21

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"-"
	.size	.L.str.24, 2

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"%s plug-in can only handle layers as animation frames"
	.size	.L.str.25, 54

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Save as Animation"
	.size	.L.str.26, 18

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"%s plug-in can't handle layers"
	.size	.L.str.27, 31

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"%s plug-in can't handle layer masks"
	.size	.L.str.28, 36

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Apply Layer Masks"
	.size	.L.str.29, 18

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"%s plug-in can only handle grayscale or indexed images"
	.size	.L.str.30, 55

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Convert to Indexed using default settings\n(Do it manually to tune the result)"
	.size	.L.str.31, 78

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Convert to Grayscale"
	.size	.L.str.32, 21

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.zero	1
	.size	.L.str.33, 1

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"%s plug-in can only handle indexed images"
	.size	.L.str.34, 42

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"%s plug-in can only handle grayscale images"
	.size	.L.str.35, 44

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"%s plug-in can only handle bitmap (two color) indexed images"
	.size	.L.str.36, 61

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Convert to Indexed using bitmap default settings\n(Do it manually to tune the result)"
	.size	.L.str.37, 85

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"%s plug-in  can only handle RGB or indexed images"
	.size	.L.str.38, 50

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Convert to RGB"
	.size	.L.str.39, 15

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"%s plug-in can only handle RGB images"
	.size	.L.str.40, 38

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"%s plug-in can only handle RGB or grayscale images"
	.size	.L.str.41, 51

	.type	.L__func__.export_dialog,@object # @__func__.export_dialog
.L__func__.export_dialog:
	.asciz	"export_dialog"
	.size	.L__func__.export_dialog, 14

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"actions != NULL"
	.size	.L.str.42, 16

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Export File"
	.size	.L.str.43, 12

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"gimp-export-image"
	.size	.L.str.44, 18

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"gimp-export-dialog"
	.size	.L.str.45, 19

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"_Ignore"
	.size	.L.str.46, 8

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"gtk-dialog-info"
	.size	.L.str.47, 16

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Your image should be exported before it can be saved as %s for the following reasons:"
	.size	.L.str.48, 86

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"toggled"
	.size	.L.str.49, 8

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"The export conversion won't modify your original image."
	.size	.L.str.50, 56


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
