	.text
	.file	"gdevnfwd.bc"
	.globl	gx_device_set_target
	.align	16, 0x90
	.type	gx_device_set_target,@function
gx_device_set_target:                   # @gx_device_set_target
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testq	%rbx, %rbx
	je	.LBB0_3
# BB#1:                                 # %land.lhs.true
	cmpq	$0, 48(%r14)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movq	$gx_device_forward_finalize, 48(%r14)
.LBB0_3:                                # %do.body
	movq	1728(%r14), %rsi
	cmpq	%rbx, %rsi
	je	.LBB0_10
# BB#4:                                 # %do.body.5
	testq	%rbx, %rbx
	je	.LBB0_6
# BB#5:                                 # %do.body.8
	incq	56(%rbx)
.LBB0_6:                                # %do.body.13
	testq	%rsi, %rsi
	je	.LBB0_9
# BB#7:                                 # %do.end.19
	decq	56(%rsi)
	jne	.LBB0_9
# BB#8:                                 # %do.end.31
	movq	64(%rsi), %rdi
	movl	$.L.str, %edx
	callq	*72(%rsi)
.LBB0_9:                                # %do.end.44
	movq	%rbx, 1728(%r14)
.LBB0_10:                               # %do.end.47
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB0_12
# BB#11:                                # %cond.true
	movl	1112(%rbx), %eax
.LBB0_12:                               # %cond.end
	movl	%eax, 1112(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	gx_device_set_target, .Lfunc_end0-gx_device_set_target
	.cfi_endproc

	.align	16, 0x90
	.type	gx_device_forward_finalize,@function
gx_device_forward_finalize:             # @gx_device_forward_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1728(%rdi), %rsi
	movq	$0, 1728(%rdi)
	testq	%rsi, %rsi
	je	.LBB1_2
# BB#1:                                 # %do.end
	decq	56(%rsi)
	je	.LBB1_3
.LBB1_2:                                # %do.end.27
	retq
.LBB1_3:                                # %do.end.14
	movq	64(%rsi), %rdi
	movq	72(%rsi), %rax
	movl	$.L.str.4, %edx
	jmpq	*%rax                   # TAILCALL
.Lfunc_end1:
	.size	gx_device_forward_finalize, .Lfunc_end1-gx_device_forward_finalize
	.cfi_endproc

	.globl	gx_device_forward_fill_in_procs
	.align	16, 0x90
	.type	gx_device_forward_fill_in_procs,@function
gx_device_forward_fill_in_procs:        # @gx_device_forward_fill_in_procs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 16
.Ltmp6:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	gx_device_set_procs
	cmpq	$0, 1152(%rbx)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movq	$gx_forward_get_initial_matrix, 1152(%rbx)
.LBB2_2:                                # %if.end
	cmpq	$0, 1160(%rbx)
	jne	.LBB2_4
# BB#3:                                 # %if.then.5
	movq	$gx_forward_sync_output, 1160(%rbx)
.LBB2_4:                                # %if.end.8
	cmpq	$0, 1168(%rbx)
	jne	.LBB2_6
# BB#5:                                 # %if.then.11
	movq	$gx_forward_output_page, 1168(%rbx)
.LBB2_6:                                # %if.end.14
	cmpq	$0, 1184(%rbx)
	jne	.LBB2_8
# BB#7:                                 # %if.then.17
	movq	$gx_forward_map_rgb_color, 1184(%rbx)
.LBB2_8:                                # %if.end.20
	cmpq	$0, 1192(%rbx)
	jne	.LBB2_10
# BB#9:                                 # %if.then.23
	movq	$gx_forward_map_color_rgb, 1192(%rbx)
.LBB2_10:                               # %if.end.26
	cmpq	$0, 1240(%rbx)
	jne	.LBB2_12
# BB#11:                                # %if.then.29
	movq	$gx_forward_get_bits, 1240(%rbx)
.LBB2_12:                               # %if.end.32
	cmpq	$0, 1248(%rbx)
	jne	.LBB2_14
# BB#13:                                # %if.then.35
	movq	$gx_forward_get_params, 1248(%rbx)
.LBB2_14:                               # %if.end.38
	cmpq	$0, 1256(%rbx)
	jne	.LBB2_16
# BB#15:                                # %if.then.41
	movq	$gx_forward_put_params, 1256(%rbx)
.LBB2_16:                               # %if.end.44
	cmpq	$0, 1264(%rbx)
	jne	.LBB2_18
# BB#17:                                # %if.then.47
	movq	$gx_forward_map_cmyk_color, 1264(%rbx)
.LBB2_18:                               # %if.end.50
	cmpq	$0, 1272(%rbx)
	jne	.LBB2_20
# BB#19:                                # %if.then.53
	movq	$gx_forward_get_xfont_procs, 1272(%rbx)
.LBB2_20:                               # %if.end.56
	cmpq	$0, 1280(%rbx)
	jne	.LBB2_22
# BB#21:                                # %if.then.59
	movq	$gx_forward_get_xfont_device, 1280(%rbx)
.LBB2_22:                               # %if.end.62
	cmpq	$0, 1288(%rbx)
	jne	.LBB2_24
# BB#23:                                # %if.then.65
	movq	$gx_forward_map_rgb_alpha_color, 1288(%rbx)
.LBB2_24:                               # %if.end.68
	cmpq	$0, 1296(%rbx)
	jne	.LBB2_26
# BB#25:                                # %if.then.71
	movq	$gx_forward_get_page_device, 1296(%rbx)
.LBB2_26:                               # %if.end.74
	cmpq	$0, 1320(%rbx)
	jne	.LBB2_28
# BB#27:                                # %if.then.77
	movq	$gx_forward_get_band, 1320(%rbx)
.LBB2_28:                               # %if.end.80
	cmpq	$0, 1328(%rbx)
	jne	.LBB2_30
# BB#29:                                # %if.then.83
	movq	$gx_forward_copy_rop, 1328(%rbx)
.LBB2_30:                               # %if.end.86
	cmpq	$0, 1336(%rbx)
	jne	.LBB2_32
# BB#31:                                # %if.then.89
	movq	$gx_forward_fill_path, 1336(%rbx)
.LBB2_32:                               # %if.end.92
	cmpq	$0, 1344(%rbx)
	jne	.LBB2_34
# BB#33:                                # %if.then.95
	movq	$gx_forward_stroke_path, 1344(%rbx)
.LBB2_34:                               # %if.end.98
	cmpq	$0, 1352(%rbx)
	jne	.LBB2_36
# BB#35:                                # %if.then.101
	movq	$gx_forward_fill_mask, 1352(%rbx)
.LBB2_36:                               # %if.end.104
	cmpq	$0, 1360(%rbx)
	jne	.LBB2_38
# BB#37:                                # %if.then.107
	movq	$gx_forward_fill_trapezoid, 1360(%rbx)
.LBB2_38:                               # %if.end.110
	cmpq	$0, 1368(%rbx)
	jne	.LBB2_40
# BB#39:                                # %if.then.113
	movq	$gx_forward_fill_parallelogram, 1368(%rbx)
.LBB2_40:                               # %if.end.116
	cmpq	$0, 1376(%rbx)
	jne	.LBB2_42
# BB#41:                                # %if.then.119
	movq	$gx_forward_fill_triangle, 1376(%rbx)
.LBB2_42:                               # %if.end.122
	cmpq	$0, 1384(%rbx)
	jne	.LBB2_44
# BB#43:                                # %if.then.125
	movq	$gx_forward_draw_thin_line, 1384(%rbx)
.LBB2_44:                               # %if.end.128
	cmpq	$0, 1392(%rbx)
	jne	.LBB2_46
# BB#45:                                # %if.then.131
	movq	$gx_forward_begin_image, 1392(%rbx)
.LBB2_46:                               # %if.end.134
	cmpq	$0, 1424(%rbx)
	jne	.LBB2_48
# BB#47:                                # %if.then.137
	movq	$gx_forward_strip_copy_rop, 1424(%rbx)
.LBB2_48:                               # %if.end.140
	cmpq	$0, 1432(%rbx)
	jne	.LBB2_50
# BB#49:                                # %if.then.143
	movq	$gx_forward_get_clipping_box, 1432(%rbx)
.LBB2_50:                               # %if.end.146
	cmpq	$0, 1440(%rbx)
	jne	.LBB2_52
# BB#51:                                # %if.then.149
	movq	$gx_forward_begin_typed_image, 1440(%rbx)
.LBB2_52:                               # %if.end.152
	cmpq	$0, 1448(%rbx)
	jne	.LBB2_54
# BB#53:                                # %if.then.155
	movq	$gx_forward_get_bits_rectangle, 1448(%rbx)
.LBB2_54:                               # %if.end.158
	cmpq	$0, 1456(%rbx)
	jne	.LBB2_56
# BB#55:                                # %if.then.161
	movq	$gx_forward_map_color_rgb_alpha, 1456(%rbx)
.LBB2_56:                               # %if.end.164
	cmpq	$0, 1464(%rbx)
	jne	.LBB2_58
# BB#57:                                # %if.then.167
	movq	$gx_no_create_compositor, 1464(%rbx)
.LBB2_58:                               # %if.end.170
	cmpq	$0, 1472(%rbx)
	jne	.LBB2_60
# BB#59:                                # %if.then.173
	movq	$gx_forward_get_hardware_params, 1472(%rbx)
.LBB2_60:                               # %if.end.176
	cmpq	$0, 1480(%rbx)
	jne	.LBB2_62
# BB#61:                                # %if.then.179
	movq	$gx_forward_text_begin, 1480(%rbx)
.LBB2_62:                               # %if.end.182
	cmpq	$0, 1536(%rbx)
	jne	.LBB2_64
# BB#63:                                # %if.then.185
	movq	$gx_forward_get_color_mapping_procs, 1536(%rbx)
.LBB2_64:                               # %if.end.188
	cmpq	$0, 1544(%rbx)
	jne	.LBB2_66
# BB#65:                                # %if.then.191
	movq	$gx_forward_get_color_comp_index, 1544(%rbx)
.LBB2_66:                               # %if.end.194
	cmpq	$0, 1552(%rbx)
	jne	.LBB2_68
# BB#67:                                # %if.then.197
	movq	$gx_forward_encode_color, 1552(%rbx)
.LBB2_68:                               # %if.end.200
	cmpq	$0, 1560(%rbx)
	jne	.LBB2_70
# BB#69:                                # %if.then.203
	movq	$gx_forward_decode_color, 1560(%rbx)
.LBB2_70:                               # %if.end.206
	cmpq	$0, 1664(%rbx)
	jne	.LBB2_72
# BB#71:                                # %if.then.209
	movq	$gx_forward_dev_spec_op, 1664(%rbx)
.LBB2_72:                               # %if.end.212
	cmpq	$0, 1576(%rbx)
	jne	.LBB2_74
# BB#73:                                # %if.then.215
	movq	$gx_forward_fill_rectangle_hl_color, 1576(%rbx)
.LBB2_74:                               # %if.end.218
	cmpq	$0, 1584(%rbx)
	jne	.LBB2_76
# BB#75:                                # %if.then.221
	movq	$gx_forward_include_color_space, 1584(%rbx)
.LBB2_76:                               # %if.end.224
	cmpq	$0, 1592(%rbx)
	jne	.LBB2_78
# BB#77:                                # %if.then.227
	movq	$gx_forward_fill_linear_color_scanline, 1592(%rbx)
.LBB2_78:                               # %if.end.230
	cmpq	$0, 1600(%rbx)
	jne	.LBB2_80
# BB#79:                                # %if.then.233
	movq	$gx_forward_fill_linear_color_trapezoid, 1600(%rbx)
.LBB2_80:                               # %if.end.236
	cmpq	$0, 1608(%rbx)
	jne	.LBB2_82
# BB#81:                                # %if.then.239
	movq	$gx_forward_fill_linear_color_triangle, 1608(%rbx)
.LBB2_82:                               # %if.end.242
	cmpq	$0, 1616(%rbx)
	jne	.LBB2_84
# BB#83:                                # %if.then.245
	movq	$gx_forward_update_spot_equivalent_colors, 1616(%rbx)
.LBB2_84:                               # %if.end.248
	cmpq	$0, 1624(%rbx)
	jne	.LBB2_86
# BB#85:                                # %if.then.251
	movq	$gx_forward_ret_devn_params, 1624(%rbx)
.LBB2_86:                               # %if.end.254
	cmpq	$0, 1632(%rbx)
	jne	.LBB2_88
# BB#87:                                # %if.then.257
	movq	$gx_forward_fillpage, 1632(%rbx)
.LBB2_88:                               # %if.end.260
	cmpq	$0, 1680(%rbx)
	jne	.LBB2_90
# BB#89:                                # %if.then.263
	movq	$gx_forward_get_profile, 1680(%rbx)
.LBB2_90:                               # %if.end.266
	cmpq	$0, 1688(%rbx)
	jne	.LBB2_92
# BB#91:                                # %if.then.269
	movq	$gx_forward_set_graphics_type_tag, 1688(%rbx)
.LBB2_92:                               # %if.end.272
	cmpq	$0, 1696(%rbx)
	jne	.LBB2_94
# BB#93:                                # %if.then.275
	movq	$gx_forward_strip_copy_rop2, 1696(%rbx)
.LBB2_94:                               # %if.end.278
	cmpq	$0, 1704(%rbx)
	jne	.LBB2_96
# BB#95:                                # %if.then.281
	movq	$gx_forward_strip_tile_rect_devn, 1704(%rbx)
.LBB2_96:                               # %if.end.284
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gx_device_fill_in_procs # TAILCALL
.Lfunc_end2:
	.size	gx_device_forward_fill_in_procs, .Lfunc_end2-gx_device_forward_fill_in_procs
	.cfi_endproc

	.globl	gx_forward_get_initial_matrix
	.align	16, 0x90
	.type	gx_forward_get_initial_matrix,@function
gx_forward_get_initial_matrix:          # @gx_forward_get_initial_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movq	1728(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB3_1
# BB#2:                                 # %if.else
	movq	1152(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.LBB3_1:                                # %if.then
	movq	%rax, %rdi
	jmp	gx_default_get_initial_matrix # TAILCALL
.Lfunc_end3:
	.size	gx_forward_get_initial_matrix, .Lfunc_end3-gx_forward_get_initial_matrix
	.cfi_endproc

	.globl	gx_forward_sync_output
	.align	16, 0x90
	.type	gx_forward_sync_output,@function
gx_forward_sync_output:                 # @gx_forward_sync_output
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movq	1728(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB4_1
# BB#2:                                 # %cond.false
	jmpq	*1160(%rdi)             # TAILCALL
.LBB4_1:                                # %cond.true
	movq	%rax, %rdi
	jmp	gx_default_sync_output  # TAILCALL
.Lfunc_end4:
	.size	gx_forward_sync_output, .Lfunc_end4-gx_forward_sync_output
	.cfi_endproc

	.globl	gx_forward_output_page
	.align	16, 0x90
	.type	gx_forward_output_page,@function
gx_forward_output_page:                 # @gx_forward_output_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp8:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp9:
	.cfi_def_cfa_offset 32
.Ltmp10:
	.cfi_offset %rbx, -24
.Ltmp11:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	1728(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB5_4
# BB#1:                                 # %cond.end
	movq	%rbx, %rdi
	callq	*1168(%rbx)
	testl	%eax, %eax
	js	.LBB5_3
# BB#2:                                 # %if.then
	movq	928(%rbx), %rcx
	movq	%rcx, 928(%r14)
.LBB5_3:                                # %if.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB5_4:                                # %cond.end.thread
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	gx_default_output_page  # TAILCALL
.Lfunc_end5:
	.size	gx_forward_output_page, .Lfunc_end5-gx_forward_output_page
	.cfi_endproc

	.globl	gx_forward_map_rgb_color
	.align	16, 0x90
	.type	gx_forward_map_rgb_color,@function
gx_forward_map_rgb_color:               # @gx_forward_map_rgb_color
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movq	1728(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB6_1
# BB#2:                                 # %cond.false
	movq	1184(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.LBB6_1:                                # %cond.true
	movq	%rax, %rdi
	jmp	gx_error_encode_color   # TAILCALL
.Lfunc_end6:
	.size	gx_forward_map_rgb_color, .Lfunc_end6-gx_forward_map_rgb_color
	.cfi_endproc

	.globl	gx_forward_map_color_rgb
	.align	16, 0x90
	.type	gx_forward_map_color_rgb,@function
gx_forward_map_color_rgb:               # @gx_forward_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movq	1728(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB7_1
# BB#2:                                 # %cond.false
	movq	1192(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.LBB7_1:                                # %cond.true
	movq	%rax, %rdi
	jmp	gx_default_w_b_map_color_rgb # TAILCALL
.Lfunc_end7:
	.size	gx_forward_map_color_rgb, .Lfunc_end7-gx_forward_map_color_rgb
	.cfi_endproc

	.globl	gx_forward_get_bits
	.align	16, 0x90
	.type	gx_forward_get_bits,@function
gx_forward_get_bits:                    # @gx_forward_get_bits
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movq	1728(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB8_1
# BB#2:                                 # %cond.false
	movq	1240(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.LBB8_1:                                # %cond.true
	movq	%rax, %rdi
	jmp	gx_default_get_bits     # TAILCALL
.Lfunc_end8:
	.size	gx_forward_get_bits, .Lfunc_end8-gx_forward_get_bits
	.cfi_endproc

	.globl	gx_forward_get_params
	.align	16, 0x90
	.type	gx_forward_get_params,@function
gx_forward_get_params:                  # @gx_forward_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movq	1728(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB9_1
# BB#2:                                 # %cond.false
	movq	1248(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.LBB9_1:                                # %cond.true
	movq	%rax, %rdi
	jmp	gx_default_get_params   # TAILCALL
.Lfunc_end9:
	.size	gx_forward_get_params, .Lfunc_end9-gx_forward_get_params
	.cfi_endproc

	.globl	gx_forward_put_params
	.align	16, 0x90
	.type	gx_forward_put_params,@function
gx_forward_put_params:                  # @gx_forward_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp13:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp14:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp16:
	.cfi_def_cfa_offset 48
.Ltmp17:
	.cfi_offset %rbx, -40
.Ltmp18:
	.cfi_offset %r14, -32
.Ltmp19:
	.cfi_offset %r15, -24
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	1728(%rbx), %rbp
	testq	%rbp, %rbp
	je	.LBB10_7
# BB#1:                                 # %if.end
	movl	84(%rbp), %r15d
	movq	%rbp, %rdi
	callq	*1256(%rbp)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	je	.LBB10_2
# BB#4:                                 # %if.end.6
	jns	.LBB10_5
	jmp	.LBB10_6
.LBB10_7:                               # %if.then
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gx_default_put_params   # TAILCALL
.LBB10_2:                               # %land.lhs.true
	xorl	%r14d, %r14d
	cmpl	$0, 84(%rbp)
	jne	.LBB10_5
# BB#3:                                 # %if.then.4
	testl	%r15d, %r15d
	setne	%al
	movzbl	%al, %r14d
.LBB10_5:                               # %if.then.8
	movq	%rbx, %rdi
	callq	gx_device_decache_colors
.LBB10_6:                               # %cleanup
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gx_forward_put_params, .Lfunc_end10-gx_forward_put_params
	.cfi_endproc

	.globl	gx_forward_map_cmyk_color
	.align	16, 0x90
	.type	gx_forward_map_cmyk_color,@function
gx_forward_map_cmyk_color:              # @gx_forward_map_cmyk_color
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movq	1728(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB11_1
# BB#2:                                 # %cond.false
	movq	1264(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.LBB11_1:                               # %cond.true
	movq	%rax, %rdi
	jmp	gx_default_map_cmyk_color # TAILCALL
.Lfunc_end11:
	.size	gx_forward_map_cmyk_color, .Lfunc_end11-gx_forward_map_cmyk_color
	.cfi_endproc

	.globl	gx_forward_get_xfont_procs
	.align	16, 0x90
	.type	gx_forward_get_xfont_procs,@function
gx_forward_get_xfont_procs:             # @gx_forward_get_xfont_procs
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movq	1728(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB12_1
# BB#2:                                 # %cond.false
	jmpq	*1272(%rdi)             # TAILCALL
.LBB12_1:                               # %cond.true
	movq	%rax, %rdi
	jmp	gx_default_get_xfont_procs # TAILCALL
.Lfunc_end12:
	.size	gx_forward_get_xfont_procs, .Lfunc_end12-gx_forward_get_xfont_procs
	.cfi_endproc

	.globl	gx_forward_get_xfont_device
	.align	16, 0x90
	.type	gx_forward_get_xfont_device,@function
gx_forward_get_xfont_device:            # @gx_forward_get_xfont_device
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movq	1728(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB13_1
# BB#2:                                 # %cond.false
	jmpq	*1280(%rdi)             # TAILCALL
.LBB13_1:                               # %cond.true
	movq	%rax, %rdi
	jmp	gx_default_get_xfont_device # TAILCALL
.Lfunc_end13:
	.size	gx_forward_get_xfont_device, .Lfunc_end13-gx_forward_get_xfont_device
	.cfi_endproc

	.globl	gx_forward_map_rgb_alpha_color
	.align	16, 0x90
	.type	gx_forward_map_rgb_alpha_color,@function
gx_forward_map_rgb_alpha_color:         # @gx_forward_map_rgb_alpha_color
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1728(%rdi), %rax
	testq	%rax, %rax
	je	.LBB14_1
# BB#2:                                 # %cond.false
	movq	1288(%rax), %r9
	movzwl	%si, %esi
	movzwl	%dx, %edx
	movzwl	%cx, %ecx
	movzwl	%r8w, %r8d
	movq	%rax, %rdi
	jmpq	*%r9                    # TAILCALL
.LBB14_1:                               # %cond.true
	movzwl	%si, %esi
	movzwl	%dx, %edx
	movzwl	%cx, %ecx
	movzwl	%r8w, %r8d
	jmp	gx_default_map_rgb_alpha_color # TAILCALL
.Lfunc_end14:
	.size	gx_forward_map_rgb_alpha_color, .Lfunc_end14-gx_forward_map_rgb_alpha_color
	.cfi_endproc

	.globl	gx_forward_get_page_device
	.align	16, 0x90
	.type	gx_forward_get_page_device,@function
gx_forward_get_page_device:             # @gx_forward_get_page_device
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movq	1728(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB15_1
# BB#2:                                 # %if.end
	jmpq	*1296(%rdi)             # TAILCALL
.LBB15_1:                               # %if.then
	movq	%rax, %rdi
	jmp	gx_default_get_page_device # TAILCALL
.Lfunc_end15:
	.size	gx_forward_get_page_device, .Lfunc_end15-gx_forward_get_page_device
	.cfi_endproc

	.globl	gx_forward_get_band
	.align	16, 0x90
	.type	gx_forward_get_band,@function
gx_forward_get_band:                    # @gx_forward_get_band
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movq	1728(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB16_1
# BB#2:                                 # %cond.false
	movq	1320(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.LBB16_1:                               # %cond.true
	movq	%rax, %rdi
	jmp	gx_default_get_band     # TAILCALL
.Lfunc_end16:
	.size	gx_forward_get_band, .Lfunc_end16-gx_forward_get_band
	.cfi_endproc

	.globl	gx_forward_copy_rop
	.align	16, 0x90
	.type	gx_forward_copy_rop,@function
gx_forward_copy_rop:                    # @gx_forward_copy_rop
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1728(%rdi), %rax
	movl	$gx_default_copy_rop, %r11d
	testq	%rax, %rax
	je	.LBB17_2
# BB#1:                                 # %cond.false
	movq	1328(%rax), %r11
	movq	%rax, %rdi
.LBB17_2:                               # %cond.end
	jmpq	*%r11                   # TAILCALL
.Lfunc_end17:
	.size	gx_forward_copy_rop, .Lfunc_end17-gx_forward_copy_rop
	.cfi_endproc

	.globl	gx_forward_fill_path
	.align	16, 0x90
	.type	gx_forward_fill_path,@function
gx_forward_fill_path:                   # @gx_forward_fill_path
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1728(%rdi), %rax
	movl	$gx_default_fill_path, %r11d
	testq	%rax, %rax
	je	.LBB18_2
# BB#1:                                 # %cond.false
	movq	1336(%rax), %r11
	movq	%rax, %rdi
.LBB18_2:                               # %cond.end
	jmpq	*%r11                   # TAILCALL
.Lfunc_end18:
	.size	gx_forward_fill_path, .Lfunc_end18-gx_forward_fill_path
	.cfi_endproc

	.globl	gx_forward_stroke_path
	.align	16, 0x90
	.type	gx_forward_stroke_path,@function
gx_forward_stroke_path:                 # @gx_forward_stroke_path
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1728(%rdi), %rax
	movl	$gx_default_stroke_path, %r11d
	testq	%rax, %rax
	je	.LBB19_2
# BB#1:                                 # %cond.false
	movq	1344(%rax), %r11
	movq	%rax, %rdi
.LBB19_2:                               # %cond.end
	jmpq	*%r11                   # TAILCALL
.Lfunc_end19:
	.size	gx_forward_stroke_path, .Lfunc_end19-gx_forward_stroke_path
	.cfi_endproc

	.globl	gx_forward_fill_mask
	.align	16, 0x90
	.type	gx_forward_fill_mask,@function
gx_forward_fill_mask:                   # @gx_forward_fill_mask
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1728(%rdi), %rax
	movl	$gx_default_fill_mask, %r11d
	testq	%rax, %rax
	je	.LBB20_2
# BB#1:                                 # %cond.false
	movq	1352(%rax), %r11
	movq	%rax, %rdi
.LBB20_2:                               # %cond.end
	jmpq	*%r11                   # TAILCALL
.Lfunc_end20:
	.size	gx_forward_fill_mask, .Lfunc_end20-gx_forward_fill_mask
	.cfi_endproc

	.globl	gx_forward_fill_trapezoid
	.align	16, 0x90
	.type	gx_forward_fill_trapezoid,@function
gx_forward_fill_trapezoid:              # @gx_forward_fill_trapezoid
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1728(%rdi), %rax
	movl	$gx_default_fill_trapezoid, %r11d
	testq	%rax, %rax
	je	.LBB21_2
# BB#1:                                 # %cond.false
	movq	1360(%rax), %r11
	movq	%rax, %rdi
.LBB21_2:                               # %cond.end
	jmpq	*%r11                   # TAILCALL
.Lfunc_end21:
	.size	gx_forward_fill_trapezoid, .Lfunc_end21-gx_forward_fill_trapezoid
	.cfi_endproc

	.globl	gx_forward_fill_parallelogram
	.align	16, 0x90
	.type	gx_forward_fill_parallelogram,@function
gx_forward_fill_parallelogram:          # @gx_forward_fill_parallelogram
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1728(%rdi), %rax
	movl	$gx_default_fill_parallelogram, %r11d
	testq	%rax, %rax
	je	.LBB22_2
# BB#1:                                 # %cond.false
	movq	1368(%rax), %r11
	movq	%rax, %rdi
.LBB22_2:                               # %cond.end
	jmpq	*%r11                   # TAILCALL
.Lfunc_end22:
	.size	gx_forward_fill_parallelogram, .Lfunc_end22-gx_forward_fill_parallelogram
	.cfi_endproc

	.globl	gx_forward_fill_triangle
	.align	16, 0x90
	.type	gx_forward_fill_triangle,@function
gx_forward_fill_triangle:               # @gx_forward_fill_triangle
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1728(%rdi), %rax
	movl	$gx_default_fill_triangle, %r11d
	testq	%rax, %rax
	je	.LBB23_2
# BB#1:                                 # %cond.false
	movq	1376(%rax), %r11
	movq	%rax, %rdi
.LBB23_2:                               # %cond.end
	jmpq	*%r11                   # TAILCALL
.Lfunc_end23:
	.size	gx_forward_fill_triangle, .Lfunc_end23-gx_forward_fill_triangle
	.cfi_endproc

	.globl	gx_forward_draw_thin_line
	.align	16, 0x90
	.type	gx_forward_draw_thin_line,@function
gx_forward_draw_thin_line:              # @gx_forward_draw_thin_line
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1728(%rdi), %rax
	movl	$gx_default_draw_thin_line, %r11d
	testq	%rax, %rax
	je	.LBB24_2
# BB#1:                                 # %cond.false
	movq	1384(%rax), %r11
	movq	%rax, %rdi
.LBB24_2:                               # %cond.end
	jmpq	*%r11                   # TAILCALL
.Lfunc_end24:
	.size	gx_forward_draw_thin_line, .Lfunc_end24-gx_forward_draw_thin_line
	.cfi_endproc

	.globl	gx_forward_begin_image
	.align	16, 0x90
	.type	gx_forward_begin_image,@function
gx_forward_begin_image:                 # @gx_forward_begin_image
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1728(%rdi), %rax
	movl	$gx_default_begin_image, %r11d
	testq	%rax, %rax
	je	.LBB25_2
# BB#1:                                 # %cond.false
	movq	1392(%rax), %r11
	movq	%rax, %rdi
.LBB25_2:                               # %cond.end
	jmpq	*%r11                   # TAILCALL
.Lfunc_end25:
	.size	gx_forward_begin_image, .Lfunc_end25-gx_forward_begin_image
	.cfi_endproc

	.globl	gx_forward_strip_copy_rop
	.align	16, 0x90
	.type	gx_forward_strip_copy_rop,@function
gx_forward_strip_copy_rop:              # @gx_forward_strip_copy_rop
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1728(%rdi), %rax
	movl	$gx_default_strip_copy_rop, %r11d
	testq	%rax, %rax
	je	.LBB26_2
# BB#1:                                 # %cond.false
	movq	1424(%rax), %r11
	movq	%rax, %rdi
.LBB26_2:                               # %cond.end
	jmpq	*%r11                   # TAILCALL
.Lfunc_end26:
	.size	gx_forward_strip_copy_rop, .Lfunc_end26-gx_forward_strip_copy_rop
	.cfi_endproc

	.globl	gx_forward_get_clipping_box
	.align	16, 0x90
	.type	gx_forward_get_clipping_box,@function
gx_forward_get_clipping_box:            # @gx_forward_get_clipping_box
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movq	1728(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB27_1
# BB#2:                                 # %if.else
	movq	1432(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.LBB27_1:                               # %if.then
	movq	%rax, %rdi
	jmp	gx_default_get_clipping_box # TAILCALL
.Lfunc_end27:
	.size	gx_forward_get_clipping_box, .Lfunc_end27-gx_forward_get_clipping_box
	.cfi_endproc

	.globl	gx_forward_begin_typed_image
	.align	16, 0x90
	.type	gx_forward_begin_typed_image,@function
gx_forward_begin_typed_image:           # @gx_forward_begin_typed_image
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1728(%rdi), %rax
	movl	$gx_default_begin_typed_image, %r11d
	testq	%rax, %rax
	je	.LBB28_2
# BB#1:                                 # %cond.false
	movq	1440(%rax), %r11
	movq	%rax, %rdi
.LBB28_2:                               # %cond.end
	jmpq	*%r11                   # TAILCALL
.Lfunc_end28:
	.size	gx_forward_begin_typed_image, .Lfunc_end28-gx_forward_begin_typed_image
	.cfi_endproc

	.globl	gx_forward_get_bits_rectangle
	.align	16, 0x90
	.type	gx_forward_get_bits_rectangle,@function
gx_forward_get_bits_rectangle:          # @gx_forward_get_bits_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1728(%rdi), %rax
	movl	$gx_default_get_bits_rectangle, %r8d
	testq	%rax, %rax
	je	.LBB29_2
# BB#1:                                 # %cond.false
	movq	1448(%rax), %r8
	movq	%rax, %rdi
.LBB29_2:                               # %cond.end
	jmpq	*%r8                    # TAILCALL
.Lfunc_end29:
	.size	gx_forward_get_bits_rectangle, .Lfunc_end29-gx_forward_get_bits_rectangle
	.cfi_endproc

	.globl	gx_forward_map_color_rgb_alpha
	.align	16, 0x90
	.type	gx_forward_map_color_rgb_alpha,@function
gx_forward_map_color_rgb_alpha:         # @gx_forward_map_color_rgb_alpha
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movq	1728(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB30_1
# BB#2:                                 # %cond.false
	movq	1456(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.LBB30_1:                               # %cond.true
	movq	%rax, %rdi
	jmp	gx_default_map_color_rgb_alpha # TAILCALL
.Lfunc_end30:
	.size	gx_forward_map_color_rgb_alpha, .Lfunc_end30-gx_forward_map_color_rgb_alpha
	.cfi_endproc

	.globl	gx_forward_get_hardware_params
	.align	16, 0x90
	.type	gx_forward_get_hardware_params,@function
gx_forward_get_hardware_params:         # @gx_forward_get_hardware_params
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movq	1728(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB31_1
# BB#2:                                 # %cond.false
	movq	1472(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.LBB31_1:                               # %cond.true
	movq	%rax, %rdi
	jmp	gx_default_get_hardware_params # TAILCALL
.Lfunc_end31:
	.size	gx_forward_get_hardware_params, .Lfunc_end31-gx_forward_get_hardware_params
	.cfi_endproc

	.globl	gx_forward_text_begin
	.align	16, 0x90
	.type	gx_forward_text_begin,@function
gx_forward_text_begin:                  # @gx_forward_text_begin
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1728(%rdi), %rax
	movl	$gx_default_text_begin, %r11d
	testq	%rax, %rax
	je	.LBB32_2
# BB#1:                                 # %cond.false
	movq	1480(%rax), %r11
	movq	%rax, %rdi
.LBB32_2:                               # %cond.end
	jmpq	*%r11                   # TAILCALL
.Lfunc_end32:
	.size	gx_forward_text_begin, .Lfunc_end32-gx_forward_text_begin
	.cfi_endproc

	.globl	gx_forward_get_color_mapping_procs
	.align	16, 0x90
	.type	gx_forward_get_color_mapping_procs,@function
gx_forward_get_color_mapping_procs:     # @gx_forward_get_color_mapping_procs
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1728(%rdi), %rax
	testq	%rax, %rax
	je	.LBB33_3
# BB#1:                                 # %lor.lhs.false
	cmpq	$0, 1536(%rax)
	je	.LBB33_3
# BB#2:                                 # %cond.end
	movl	$FwdDevice_cm_map_procs, %eax
	retq
.LBB33_3:                               # %cond.true
	jmp	gx_default_DevGray_get_color_mapping_procs # TAILCALL
.Lfunc_end33:
	.size	gx_forward_get_color_mapping_procs, .Lfunc_end33-gx_forward_get_color_mapping_procs
	.cfi_endproc

	.globl	gx_forward_get_color_comp_index
	.align	16, 0x90
	.type	gx_forward_get_color_comp_index,@function
gx_forward_get_color_comp_index:        # @gx_forward_get_color_comp_index
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movq	1728(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB34_1
# BB#2:                                 # %cond.false
	movq	1544(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.LBB34_1:                               # %cond.true
	movq	%rax, %rdi
	jmp	gx_error_get_color_comp_index # TAILCALL
.Lfunc_end34:
	.size	gx_forward_get_color_comp_index, .Lfunc_end34-gx_forward_get_color_comp_index
	.cfi_endproc

	.globl	gx_forward_encode_color
	.align	16, 0x90
	.type	gx_forward_encode_color,@function
gx_forward_encode_color:                # @gx_forward_encode_color
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movq	1728(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB35_1
# BB#2:                                 # %cond.false
	movq	1552(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.LBB35_1:                               # %cond.true
	movq	%rax, %rdi
	jmp	gx_error_encode_color   # TAILCALL
.Lfunc_end35:
	.size	gx_forward_encode_color, .Lfunc_end35-gx_forward_encode_color
	.cfi_endproc

	.globl	gx_forward_decode_color
	.align	16, 0x90
	.type	gx_forward_decode_color,@function
gx_forward_decode_color:                # @gx_forward_decode_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp21:
	.cfi_def_cfa_offset 16
	movq	%rdx, %rax
	movq	1728(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB36_1
# BB#2:                                 # %if.else
	movq	%rax, %rdx
	callq	*1560(%rdi)
	jmp	.LBB36_3
.LBB36_1:                               # %if.then
	xorl	%esi, %esi
	movl	$128, %edx
	movq	%rax, %rdi
	callq	memset
.LBB36_3:                               # %if.end
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end36:
	.size	gx_forward_decode_color, .Lfunc_end36-gx_forward_decode_color
	.cfi_endproc

	.globl	gx_forward_dev_spec_op
	.align	16, 0x90
	.type	gx_forward_dev_spec_op,@function
gx_forward_dev_spec_op:                 # @gx_forward_dev_spec_op
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1728(%rdi), %r8
	testq	%r8, %r8
	je	.LBB37_1
# BB#3:                                 # %if.else
	cmpl	$10, %esi
	jne	.LBB37_4
# BB#7:                                 # %if.then.16
	cmpq	%rdi, (%rdx)
	jne	.LBB37_6
# BB#8:                                 # %if.then.20
	movq	%r8, (%rdx)
	movl	$1, %eax
	jmp	.LBB37_9
.LBB37_1:                               # %if.then
	movl	$-21, %eax
	cmpl	$6, %esi
	jne	.LBB37_9
# BB#2:                                 # %if.then.2
	movl	$gx_default_fill_path, %eax
	cmpq	%rax, 1336(%rdi)
	sete	%al
	movzbl	%al, %eax
	retq
.LBB37_4:                               # %if.else
	cmpl	$7, %esi
	jne	.LBB37_6
# BB#5:                                 # %if.then.6
	movl	$gx_default_fill_path, %r9d
	xorl	%eax, %eax
	cmpq	%r9, 1336(%rdi)
	je	.LBB37_9
.LBB37_6:                               # %if.end.26
	movq	1664(%r8), %rax
	movq	%r8, %rdi
	jmpq	*%rax                   # TAILCALL
.LBB37_9:                               # %cleanup.29
	retq
.Lfunc_end37:
	.size	gx_forward_dev_spec_op, .Lfunc_end37-gx_forward_dev_spec_op
	.cfi_endproc

	.globl	gx_forward_fill_rectangle_hl_color
	.align	16, 0x90
	.type	gx_forward_fill_rectangle_hl_color,@function
gx_forward_fill_rectangle_hl_color:     # @gx_forward_fill_rectangle_hl_color
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1728(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB38_1
# BB#2:                                 # %if.else
	movq	1576(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.LBB38_1:                               # %cleanup
	movl	$-15, %eax
	retq
.Lfunc_end38:
	.size	gx_forward_fill_rectangle_hl_color, .Lfunc_end38-gx_forward_fill_rectangle_hl_color
	.cfi_endproc

	.globl	gx_forward_include_color_space
	.align	16, 0x90
	.type	gx_forward_include_color_space,@function
gx_forward_include_color_space:         # @gx_forward_include_color_space
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1728(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB39_1
# BB#2:                                 # %if.else
	movq	1584(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.LBB39_1:                               # %cleanup
	xorl	%eax, %eax
	retq
.Lfunc_end39:
	.size	gx_forward_include_color_space, .Lfunc_end39-gx_forward_include_color_space
	.cfi_endproc

	.globl	gx_forward_fill_linear_color_scanline
	.align	16, 0x90
	.type	gx_forward_fill_linear_color_scanline,@function
gx_forward_fill_linear_color_scanline:  # @gx_forward_fill_linear_color_scanline
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1728(%rdi), %rax
	movl	$gx_default_fill_linear_color_scanline, %r11d
	testq	%rax, %rax
	je	.LBB40_2
# BB#1:                                 # %cond.false
	movq	1592(%rax), %r11
	movq	%rax, %rdi
.LBB40_2:                               # %cond.end
	jmpq	*%r11                   # TAILCALL
.Lfunc_end40:
	.size	gx_forward_fill_linear_color_scanline, .Lfunc_end40-gx_forward_fill_linear_color_scanline
	.cfi_endproc

	.globl	gx_forward_fill_linear_color_trapezoid
	.align	16, 0x90
	.type	gx_forward_fill_linear_color_trapezoid,@function
gx_forward_fill_linear_color_trapezoid: # @gx_forward_fill_linear_color_trapezoid
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1728(%rdi), %rax
	movl	$gx_default_fill_linear_color_trapezoid, %r11d
	testq	%rax, %rax
	je	.LBB41_2
# BB#1:                                 # %cond.false
	movq	1600(%rax), %r11
	movq	%rax, %rdi
.LBB41_2:                               # %cond.end
	jmpq	*%r11                   # TAILCALL
.Lfunc_end41:
	.size	gx_forward_fill_linear_color_trapezoid, .Lfunc_end41-gx_forward_fill_linear_color_trapezoid
	.cfi_endproc

	.globl	gx_forward_fill_linear_color_triangle
	.align	16, 0x90
	.type	gx_forward_fill_linear_color_triangle,@function
gx_forward_fill_linear_color_triangle:  # @gx_forward_fill_linear_color_triangle
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1728(%rdi), %rax
	movl	$gx_default_fill_linear_color_triangle, %r11d
	testq	%rax, %rax
	je	.LBB42_2
# BB#1:                                 # %cond.false
	movq	1608(%rax), %r11
	movq	%rax, %rdi
.LBB42_2:                               # %cond.end
	jmpq	*%r11                   # TAILCALL
.Lfunc_end42:
	.size	gx_forward_fill_linear_color_triangle, .Lfunc_end42-gx_forward_fill_linear_color_triangle
	.cfi_endproc

	.globl	gx_forward_update_spot_equivalent_colors
	.align	16, 0x90
	.type	gx_forward_update_spot_equivalent_colors,@function
gx_forward_update_spot_equivalent_colors: # @gx_forward_update_spot_equivalent_colors
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1728(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB43_1
# BB#2:                                 # %if.then
	movq	1616(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.LBB43_1:                               # %if.end
	xorl	%eax, %eax
	retq
.Lfunc_end43:
	.size	gx_forward_update_spot_equivalent_colors, .Lfunc_end43-gx_forward_update_spot_equivalent_colors
	.cfi_endproc

	.globl	gx_forward_ret_devn_params
	.align	16, 0x90
	.type	gx_forward_ret_devn_params,@function
gx_forward_ret_devn_params:             # @gx_forward_ret_devn_params
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1728(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB44_1
# BB#2:                                 # %if.then
	jmpq	*1624(%rdi)             # TAILCALL
.LBB44_1:                               # %cleanup
	xorl	%eax, %eax
	retq
.Lfunc_end44:
	.size	gx_forward_ret_devn_params, .Lfunc_end44-gx_forward_ret_devn_params
	.cfi_endproc

	.globl	gx_forward_fillpage
	.align	16, 0x90
	.type	gx_forward_fillpage,@function
gx_forward_fillpage:                    # @gx_forward_fillpage
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1728(%rdi), %rcx
	movl	$gx_default_fillpage, %eax
	testq	%rcx, %rcx
	je	.LBB45_2
# BB#1:                                 # %cond.false
	movq	1632(%rcx), %rax
	movq	%rcx, %rdi
.LBB45_2:                               # %cond.end
	jmpq	*%rax                   # TAILCALL
.Lfunc_end45:
	.size	gx_forward_fillpage, .Lfunc_end45-gx_forward_fillpage
	.cfi_endproc

	.globl	gx_forward_get_profile
	.align	16, 0x90
	.type	gx_forward_get_profile,@function
gx_forward_get_profile:                 # @gx_forward_get_profile
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1728(%rdi), %rcx
	movl	$gx_default_get_profile, %eax
	testq	%rcx, %rcx
	je	.LBB46_2
# BB#1:                                 # %cond.false
	movq	1680(%rcx), %rax
	movq	%rcx, %rdi
.LBB46_2:                               # %cond.end
	jmpq	*%rax                   # TAILCALL
.Lfunc_end46:
	.size	gx_forward_get_profile, .Lfunc_end46-gx_forward_get_profile
	.cfi_endproc

	.globl	gx_forward_set_graphics_type_tag
	.align	16, 0x90
	.type	gx_forward_set_graphics_type_tag,@function
gx_forward_set_graphics_type_tag:       # @gx_forward_set_graphics_type_tag
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp24:
	.cfi_def_cfa_offset 32
.Ltmp25:
	.cfi_offset %rbx, -24
.Ltmp26:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	1728(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB47_2
# BB#1:                                 # %if.then
	movl	%ebp, %esi
	callq	*1688(%rdi)
.LBB47_2:                               # %if.end
	movl	$128, %eax
	andl	1112(%rbx), %eax
	orl	%ebp, %eax
	movl	%eax, 1112(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end47:
	.size	gx_forward_set_graphics_type_tag, .Lfunc_end47-gx_forward_set_graphics_type_tag
	.cfi_endproc

	.globl	gx_forward_strip_copy_rop2
	.align	16, 0x90
	.type	gx_forward_strip_copy_rop2,@function
gx_forward_strip_copy_rop2:             # @gx_forward_strip_copy_rop2
	.cfi_startproc
# BB#0:                                 # %entry
	movl	80(%rsp), %eax
	movq	1728(%rdi), %r10
	testl	%eax, %eax
	je	.LBB48_4
# BB#1:                                 # %if.then
	movl	$gx_default_strip_copy_rop2, %r11d
	testq	%r10, %r10
	je	.LBB48_3
# BB#2:                                 # %cond.false
	movq	1696(%r10), %r11
	movq	%r10, %rdi
.LBB48_3:                               # %cond.end
	jmpq	*%r11                   # TAILCALL
.LBB48_4:                               # %if.else
	movl	$gx_default_strip_copy_rop, %r11d
	testq	%r10, %r10
	je	.LBB48_6
# BB#5:                                 # %cond.false.4
	movq	1424(%r10), %r11
	movq	%r10, %rdi
.LBB48_6:                               # %cond.end.6
	jmpq	*%r11                   # TAILCALL
.Lfunc_end48:
	.size	gx_forward_strip_copy_rop2, .Lfunc_end48-gx_forward_strip_copy_rop2
	.cfi_endproc

	.globl	gx_forward_strip_tile_rect_devn
	.align	16, 0x90
	.type	gx_forward_strip_tile_rect_devn,@function
gx_forward_strip_tile_rect_devn:        # @gx_forward_strip_tile_rect_devn
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movq	1728(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB49_1
# BB#2:                                 # %if.else
	movq	1704(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.LBB49_1:                               # %if.then
	movq	%rax, %rdi
	jmp	gx_default_strip_tile_rect_devn # TAILCALL
.Lfunc_end49:
	.size	gx_forward_strip_tile_rect_devn, .Lfunc_end49-gx_forward_strip_tile_rect_devn
	.cfi_endproc

	.globl	gx_device_forward_color_procs
	.align	16, 0x90
	.type	gx_device_forward_color_procs,@function
gx_device_forward_color_procs:          # @gx_device_forward_color_procs
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$gx_forward_map_rgb_color, 1184(%rdi)
	movq	$gx_forward_map_color_rgb, 1192(%rdi)
	movq	$gx_forward_map_cmyk_color, 1264(%rdi)
	movq	$gx_forward_map_rgb_alpha_color, 1288(%rdi)
	movq	$gx_forward_get_color_mapping_procs, 1536(%rdi)
	movq	$gx_forward_get_color_comp_index, 1544(%rdi)
	movq	$gx_forward_encode_color, 1552(%rdi)
	movq	$gx_forward_decode_color, 1560(%rdi)
	movq	$gx_forward_get_profile, 1680(%rdi)
	cmpq	$0, 1688(%rdi)
	jne	.LBB50_2
# BB#1:                                 # %if.then
	movq	$gx_forward_set_graphics_type_tag, 1688(%rdi)
.LBB50_2:                               # %if.end
	cmpq	$0, 1664(%rdi)
	jne	.LBB50_4
# BB#3:                                 # %if.then.14
	movq	$gx_forward_dev_spec_op, 1664(%rdi)
.LBB50_4:                               # %if.end.17
	retq
.Lfunc_end50:
	.size	gx_device_forward_color_procs, .Lfunc_end50-gx_device_forward_color_procs
	.cfi_endproc

	.globl	gx_forward_close_device
	.align	16, 0x90
	.type	gx_forward_close_device,@function
gx_forward_close_device:                # @gx_forward_close_device
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbx, -16
	movq	1728(%rdi), %rbx
	testq	%rbx, %rbx
	je	.LBB51_2
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	callq	*1176(%rbx)
	movl	$0, 84(%rbx)
	popq	%rbx
	retq
.LBB51_2:                               # %cond.end.thread
	popq	%rbx
	jmp	gx_default_close_device # TAILCALL
.Lfunc_end51:
	.size	gx_forward_close_device, .Lfunc_end51-gx_forward_close_device
	.cfi_endproc

	.globl	gx_forward_fill_rectangle
	.align	16, 0x90
	.type	gx_forward_fill_rectangle,@function
gx_forward_fill_rectangle:              # @gx_forward_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1728(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB52_1
# BB#2:                                 # %if.end
	movq	1200(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.LBB52_1:                               # %cleanup
	movl	$-100, %eax
	retq
.Lfunc_end52:
	.size	gx_forward_fill_rectangle, .Lfunc_end52-gx_forward_fill_rectangle
	.cfi_endproc

	.globl	gx_forward_tile_rectangle
	.align	16, 0x90
	.type	gx_forward_tile_rectangle,@function
gx_forward_tile_rectangle:              # @gx_forward_tile_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1728(%rdi), %rax
	movl	$gx_default_tile_rectangle, %r11d
	testq	%rax, %rax
	je	.LBB53_2
# BB#1:                                 # %cond.false
	movq	1208(%rax), %r11
	movq	%rax, %rdi
.LBB53_2:                               # %cond.end
	jmpq	*%r11                   # TAILCALL
.Lfunc_end53:
	.size	gx_forward_tile_rectangle, .Lfunc_end53-gx_forward_tile_rectangle
	.cfi_endproc

	.globl	gx_forward_copy_mono
	.align	16, 0x90
	.type	gx_forward_copy_mono,@function
gx_forward_copy_mono:                   # @gx_forward_copy_mono
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1728(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB54_1
# BB#2:                                 # %if.end
	movq	1216(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.LBB54_1:                               # %cleanup
	movl	$-100, %eax
	retq
.Lfunc_end54:
	.size	gx_forward_copy_mono, .Lfunc_end54-gx_forward_copy_mono
	.cfi_endproc

	.globl	gx_forward_copy_alpha
	.align	16, 0x90
	.type	gx_forward_copy_alpha,@function
gx_forward_copy_alpha:                  # @gx_forward_copy_alpha
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1728(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB55_1
# BB#2:                                 # %if.end
	movq	1312(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.LBB55_1:                               # %cleanup
	movl	$-100, %eax
	retq
.Lfunc_end55:
	.size	gx_forward_copy_alpha, .Lfunc_end55-gx_forward_copy_alpha
	.cfi_endproc

	.globl	gx_forward_copy_color
	.align	16, 0x90
	.type	gx_forward_copy_color,@function
gx_forward_copy_color:                  # @gx_forward_copy_color
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1728(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB56_1
# BB#2:                                 # %if.end
	movq	1224(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.LBB56_1:                               # %cleanup
	movl	$-100, %eax
	retq
.Lfunc_end56:
	.size	gx_forward_copy_color, .Lfunc_end56-gx_forward_copy_color
	.cfi_endproc

	.globl	gx_forward_copy_planes
	.align	16, 0x90
	.type	gx_forward_copy_planes,@function
gx_forward_copy_planes:                 # @gx_forward_copy_planes
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1728(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB57_1
# BB#2:                                 # %if.end
	movq	1672(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.LBB57_1:                               # %cleanup
	movl	$-100, %eax
	retq
.Lfunc_end57:
	.size	gx_forward_copy_planes, .Lfunc_end57-gx_forward_copy_planes
	.cfi_endproc

	.globl	gx_forward_strip_tile_rectangle
	.align	16, 0x90
	.type	gx_forward_strip_tile_rectangle,@function
gx_forward_strip_tile_rectangle:        # @gx_forward_strip_tile_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1728(%rdi), %rax
	movl	$gx_default_strip_tile_rectangle, %r11d
	testq	%rax, %rax
	je	.LBB58_2
# BB#1:                                 # %cond.false
	movq	1416(%rax), %r11
	movq	%rax, %rdi
.LBB58_2:                               # %cond.end
	jmpq	*%r11                   # TAILCALL
.Lfunc_end58:
	.size	gx_forward_strip_tile_rectangle, .Lfunc_end58-gx_forward_strip_tile_rectangle
	.cfi_endproc

	.globl	gx_forward_copy_alpha_hl_color
	.align	16, 0x90
	.type	gx_forward_copy_alpha_hl_color,@function
gx_forward_copy_alpha_hl_color:         # @gx_forward_copy_alpha_hl_color
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1728(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB59_1
# BB#2:                                 # %if.else
	movq	1712(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.LBB59_1:                               # %cleanup
	movl	$-15, %eax
	retq
.Lfunc_end59:
	.size	gx_forward_copy_alpha_hl_color, .Lfunc_end59-gx_forward_copy_alpha_hl_color
	.cfi_endproc

	.globl	gx_forward_create_compositor
	.align	16, 0x90
	.type	gx_forward_create_compositor,@function
gx_forward_create_compositor:           # @gx_forward_create_compositor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp30:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 32
.Ltmp32:
	.cfi_offset %rbx, -32
.Ltmp33:
	.cfi_offset %r14, -24
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	1728(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB60_2
# BB#1:                                 # %if.end
	movq	%rbx, %rdi
	callq	*1464(%rbx)
	movl	%eax, %ebp
	addq	$96, %r14
	addq	$96, %rbx
	movl	$720, %edx              # imm = 0x2D0
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movl	%ebp, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB60_2:                               # %if.then
	movq	%r14, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	gx_no_create_compositor # TAILCALL
.Lfunc_end60:
	.size	gx_forward_create_compositor, .Lfunc_end60-gx_forward_create_compositor
	.cfi_endproc

	.align	16, 0x90
	.type	gx_forward_upright_get_initial_matrix,@function
gx_forward_upright_get_initial_matrix:  # @gx_forward_upright_get_initial_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movq	1728(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB61_1
# BB#2:                                 # %if.else
	movq	1152(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.LBB61_1:                               # %if.then
	movq	%rax, %rdi
	jmp	gx_upright_get_initial_matrix # TAILCALL
.Lfunc_end61:
	.size	gx_forward_upright_get_initial_matrix, .Lfunc_end61-gx_forward_upright_get_initial_matrix
	.cfi_endproc

	.align	16, 0x90
	.type	null_fill_rectangle,@function
null_fill_rectangle:                    # @null_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end62:
	.size	null_fill_rectangle, .Lfunc_end62-null_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	null_copy_mono,@function
null_copy_mono:                         # @null_copy_mono
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end63:
	.size	null_copy_mono, .Lfunc_end63-null_copy_mono
	.cfi_endproc

	.align	16, 0x90
	.type	null_copy_color,@function
null_copy_color:                        # @null_copy_color
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end64:
	.size	null_copy_color, .Lfunc_end64-null_copy_color
	.cfi_endproc

	.align	16, 0x90
	.type	null_put_params,@function
null_put_params:                        # @null_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp36:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp37:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp39:
	.cfi_def_cfa_offset 48
.Ltmp40:
	.cfi_offset %rbx, -40
.Ltmp41:
	.cfi_offset %r14, -32
.Ltmp42:
	.cfi_offset %r15, -24
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	1728(%rbx), %rbp
	testq	%rbp, %rbp
	je	.LBB65_1
# BB#2:                                 # %if.end.i
	movl	84(%rbp), %r15d
	movq	%rbp, %rdi
	callq	*1256(%rbp)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	je	.LBB65_3
# BB#5:                                 # %if.end.6.i
	jns	.LBB65_6
	jmp	.LBB65_10
.LBB65_1:                               # %if.then.i
	movq	%rbx, %rdi
	callq	gx_default_put_params
	movl	%eax, %r14d
	jmp	.LBB65_7
.LBB65_3:                               # %land.lhs.true.i
	xorl	%r14d, %r14d
	cmpl	$0, 84(%rbp)
	jne	.LBB65_6
# BB#4:                                 # %if.then.4.i
	testl	%r15d, %r15d
	setne	%al
	movzbl	%al, %r14d
.LBB65_6:                               # %if.then.8.i
	movq	%rbx, %rdi
	callq	gx_device_decache_colors
.LBB65_7:                               # %gx_forward_put_params.exit
	testl	%r14d, %r14d
	js	.LBB65_10
# BB#8:                                 # %lor.lhs.false
	movq	%rbx, %rdi
	callq	*1296(%rbx)
	cmpq	%rbx, %rax
	je	.LBB65_10
# BB#9:                                 # %if.end
	movq	$0, 832(%rbx)
.LBB65_10:                              # %cleanup
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end65:
	.size	null_put_params, .Lfunc_end65-null_put_params
	.cfi_endproc

	.align	16, 0x90
	.type	null_copy_alpha,@function
null_copy_alpha:                        # @null_copy_alpha
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end66:
	.size	null_copy_alpha, .Lfunc_end66-null_copy_alpha
	.cfi_endproc

	.align	16, 0x90
	.type	null_copy_rop,@function
null_copy_rop:                          # @null_copy_rop
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end67:
	.size	null_copy_rop, .Lfunc_end67-null_copy_rop
	.cfi_endproc

	.align	16, 0x90
	.type	null_fill_path,@function
null_fill_path:                         # @null_fill_path
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end68:
	.size	null_fill_path, .Lfunc_end68-null_fill_path
	.cfi_endproc

	.align	16, 0x90
	.type	null_stroke_path,@function
null_stroke_path:                       # @null_stroke_path
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end69:
	.size	null_stroke_path, .Lfunc_end69-null_stroke_path
	.cfi_endproc

	.align	16, 0x90
	.type	null_fill_trapezoid,@function
null_fill_trapezoid:                    # @null_fill_trapezoid
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end70:
	.size	null_fill_trapezoid, .Lfunc_end70-null_fill_trapezoid
	.cfi_endproc

	.align	16, 0x90
	.type	null_fill_parallelogram,@function
null_fill_parallelogram:                # @null_fill_parallelogram
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end71:
	.size	null_fill_parallelogram, .Lfunc_end71-null_fill_parallelogram
	.cfi_endproc

	.align	16, 0x90
	.type	null_fill_triangle,@function
null_fill_triangle:                     # @null_fill_triangle
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end72:
	.size	null_fill_triangle, .Lfunc_end72-null_fill_triangle
	.cfi_endproc

	.align	16, 0x90
	.type	null_draw_thin_line,@function
null_draw_thin_line:                    # @null_draw_thin_line
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end73:
	.size	null_draw_thin_line, .Lfunc_end73-null_draw_thin_line
	.cfi_endproc

	.align	16, 0x90
	.type	null_strip_copy_rop,@function
null_strip_copy_rop:                    # @null_strip_copy_rop
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end74:
	.size	null_strip_copy_rop, .Lfunc_end74-null_strip_copy_rop
	.cfi_endproc

	.align	16, 0x90
	.type	null_decode_color,@function
null_decode_color:                      # @null_decode_color
	.cfi_startproc
# BB#0:                                 # %entry
	shlq	$63, %rsi
	sarq	$63, %rsi
	movw	%si, (%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end75:
	.size	null_decode_color, .Lfunc_end75-null_decode_color
	.cfi_endproc

	.align	16, 0x90
	.type	null_strip_copy_rop2,@function
null_strip_copy_rop2:                   # @null_strip_copy_rop2
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end76:
	.size	null_strip_copy_rop2, .Lfunc_end76-null_strip_copy_rop2
	.cfi_endproc

	.align	16, 0x90
	.type	null_strip_tile_rect_devn,@function
null_strip_tile_rect_devn:              # @null_strip_tile_rect_devn
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end77:
	.size	null_strip_tile_rect_devn, .Lfunc_end77-null_strip_tile_rect_devn
	.cfi_endproc

	.globl	fwd_uses_fwd_cmap_procs
	.align	16, 0x90
	.type	fwd_uses_fwd_cmap_procs,@function
fwd_uses_fwd_cmap_procs:                # @fwd_uses_fwd_cmap_procs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp44:
	.cfi_def_cfa_offset 16
	callq	*1536(%rdi)
	movl	$FwdDevice_cm_map_procs, %ecx
	cmpq	%rcx, %rax
	sete	%al
	movzbl	%al, %eax
	popq	%rdx
	retq
.Lfunc_end78:
	.size	fwd_uses_fwd_cmap_procs, .Lfunc_end78-fwd_uses_fwd_cmap_procs
	.cfi_endproc

	.globl	fwd_get_target_cmap_procs
	.align	16, 0x90
	.type	fwd_get_target_cmap_procs,@function
fwd_get_target_cmap_procs:              # @fwd_get_target_cmap_procs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp45:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp47:
	.cfi_def_cfa_offset 32
.Ltmp48:
	.cfi_offset %rbx, -24
.Ltmp49:
	.cfi_offset %r14, -16
	movq	1728(%rdi), %rbx
	movq	%rbx, %rdi
	callq	*1536(%rbx)
	movl	$FwdDevice_cm_map_procs, %ecx
	cmpq	%rcx, %rax
	jne	.LBB79_3
# BB#1:
	movl	$FwdDevice_cm_map_procs, %r14d
	.align	16, 0x90
.LBB79_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	fwd_get_target_cmap_procs
	cmpq	%r14, %rax
	je	.LBB79_2
.LBB79_3:                               # %while.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end79:
	.size	fwd_get_target_cmap_procs, .Lfunc_end79-fwd_get_target_cmap_procs
	.cfi_endproc

	.align	16, 0x90
	.type	fwd_map_gray_cs,@function
fwd_map_gray_cs:                        # @fwd_map_gray_cs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp51:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp52:
	.cfi_def_cfa_offset 32
.Ltmp53:
	.cfi_offset %rbx, -32
.Ltmp54:
	.cfi_offset %r14, -24
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%esi, %ebp
	movq	1728(%rdi), %rbx
	testq	%rbx, %rbx
	je	.LBB80_4
# BB#1:                                 # %lor.lhs.false
	movq	1536(%rbx), %rax
	testq	%rax, %rax
	je	.LBB80_4
# BB#2:                                 # %lor.lhs.false.2
	movq	%rbx, %rdi
	callq	*%rax
	testq	%rax, %rax
	je	.LBB80_4
# BB#3:                                 # %lor.lhs.false.6
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.LBB80_4
# BB#5:                                 # %if.else
	movswl	%bp, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB80_4:                               # %if.then
	movswl	%bp, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	gray_cs_to_gray_cm      # TAILCALL
.Lfunc_end80:
	.size	fwd_map_gray_cs, .Lfunc_end80-fwd_map_gray_cs
	.cfi_endproc

	.align	16, 0x90
	.type	fwd_map_rgb_cs,@function
fwd_map_rgb_cs:                         # @fwd_map_rgb_cs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp57:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp58:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp59:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp60:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp61:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp62:
	.cfi_def_cfa_offset 64
.Ltmp63:
	.cfi_offset %rbx, -56
.Ltmp64:
	.cfi_offset %r12, -48
.Ltmp65:
	.cfi_offset %r13, -40
.Ltmp66:
	.cfi_offset %r14, -32
.Ltmp67:
	.cfi_offset %r15, -24
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movl	%r8d, %r12d
	movl	%ecx, %r13d
	movl	%edx, %ebx
	movq	%rsi, %r15
	movq	1728(%rdi), %rbp
	testq	%rbp, %rbp
	je	.LBB81_4
# BB#1:                                 # %lor.lhs.false
	movq	1536(%rbp), %rax
	testq	%rax, %rax
	je	.LBB81_4
# BB#2:                                 # %lor.lhs.false.2
	movq	%rbp, %rdi
	callq	*%rax
	testq	%rax, %rax
	je	.LBB81_4
# BB#3:                                 # %lor.lhs.false.6
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.LBB81_4
# BB#5:                                 # %if.else
	movswl	%bx, %edx
	movswl	%r13w, %ecx
	movswl	%r12w, %r8d
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movq	%r14, %r9
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB81_4:                               # %if.then
	movswl	%bx, %edx
	movswl	%r13w, %ecx
	movswl	%r12w, %r8d
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movq	%r14, %r9
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	rgb_cs_to_rgb_cm        # TAILCALL
.Lfunc_end81:
	.size	fwd_map_rgb_cs, .Lfunc_end81-fwd_map_rgb_cs
	.cfi_endproc

	.align	16, 0x90
	.type	fwd_map_cmyk_cs,@function
fwd_map_cmyk_cs:                        # @fwd_map_cmyk_cs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp70:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp71:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp72:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp73:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp74:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp75:
	.cfi_def_cfa_offset 64
.Ltmp76:
	.cfi_offset %rbx, -56
.Ltmp77:
	.cfi_offset %r12, -48
.Ltmp78:
	.cfi_offset %r13, -40
.Ltmp79:
	.cfi_offset %r14, -32
.Ltmp80:
	.cfi_offset %r15, -24
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movl	%r8d, %r15d
	movl	%ecx, %r12d
	movl	%edx, %r13d
	movl	%esi, %ebp
	movq	1728(%rdi), %rbx
	testq	%rbx, %rbx
	je	.LBB82_4
# BB#1:                                 # %lor.lhs.false
	movq	1536(%rbx), %rax
	testq	%rax, %rax
	je	.LBB82_4
# BB#2:                                 # %lor.lhs.false.2
	movq	%rbx, %rdi
	callq	*%rax
	testq	%rax, %rax
	je	.LBB82_4
# BB#3:                                 # %lor.lhs.false.6
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.LBB82_4
# BB#5:                                 # %if.else
	movswl	%bp, %esi
	movswl	%r13w, %edx
	movswl	%r12w, %ecx
	movswl	%r15w, %r8d
	movq	%rbx, %rdi
	movq	%r14, %r9
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB82_4:                               # %if.then
	movswl	%bp, %esi
	movswl	%r13w, %edx
	movswl	%r12w, %ecx
	movswl	%r15w, %r8d
	movq	%rbx, %rdi
	movq	%r14, %r9
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	cmyk_cs_to_cmyk_cm      # TAILCALL
.Lfunc_end82:
	.size	fwd_map_cmyk_cs, .Lfunc_end82-fwd_map_cmyk_cs
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gx_device_set_target"
	.size	.L.str, 21

	.type	FwdDevice_cm_map_procs,@object # @FwdDevice_cm_map_procs
	.section	.rodata,"a",@progbits
	.align	8
FwdDevice_cm_map_procs:
	.quad	fwd_map_gray_cs
	.quad	fwd_map_rgb_cs
	.quad	fwd_map_cmyk_cs
	.size	FwdDevice_cm_map_procs, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"null"
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"DeviceGray"
	.size	.L.str.2, 11

	.type	gs_null_device,@object  # @gs_null_device
	.section	.rodata,"a",@progbits
	.globl	gs_null_device
	.align	8
gs_null_device:
	.long	1736                    # 0x6c8
	.zero	4
	.quad	0
	.quad	.L.str.1
	.quad	0
	.quad	st_device_null
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.2
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	8
	.zero	16
	.long	0                       # 0x0
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	gx_default_open_device
	.quad	gx_forward_upright_get_initial_matrix
	.quad	gx_default_sync_output
	.quad	gx_default_output_page
	.quad	gx_default_close_device
	.quad	gx_forward_map_rgb_color
	.quad	gx_forward_map_color_rgb
	.quad	null_fill_rectangle
	.quad	gx_default_tile_rectangle
	.quad	null_copy_mono
	.quad	null_copy_color
	.quad	gx_default_draw_line
	.quad	gx_default_get_bits
	.quad	gx_forward_get_params
	.quad	null_put_params
	.quad	gx_forward_map_cmyk_color
	.quad	gx_forward_get_xfont_procs
	.quad	gx_forward_get_xfont_device
	.quad	gx_forward_map_rgb_alpha_color
	.quad	gx_default_get_page_device
	.quad	gx_default_get_alpha_bits
	.quad	null_copy_alpha
	.quad	gx_forward_get_band
	.quad	null_copy_rop
	.quad	null_fill_path
	.quad	null_stroke_path
	.quad	gx_default_fill_mask
	.quad	null_fill_trapezoid
	.quad	null_fill_parallelogram
	.quad	null_fill_triangle
	.quad	null_draw_thin_line
	.quad	gx_default_begin_image
	.quad	gx_default_image_data
	.quad	gx_default_end_image
	.quad	gx_default_strip_tile_rectangle
	.quad	null_strip_copy_rop
	.quad	gx_default_get_clipping_box
	.quad	gx_default_begin_typed_image
	.quad	gx_default_get_bits_rectangle
	.quad	gx_forward_map_color_rgb_alpha
	.quad	gx_null_create_compositor
	.quad	gx_forward_get_hardware_params
	.quad	gx_default_text_begin
	.quad	gx_default_finish_copydevice
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_DevGray_get_color_mapping_procs
	.quad	gx_default_DevGray_get_color_comp_index
	.quad	gx_default_gray_fast_encode
	.quad	null_decode_color
	.quad	0
	.quad	gx_default_fill_rectangle_hl_color
	.quad	gx_default_include_color_space
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_dev_spec_op
	.quad	0
	.quad	0
	.quad	0
	.quad	null_strip_copy_rop2
	.quad	null_strip_tile_rect_devn
	.quad	0
	.quad	0
	.quad	0
	.size	gs_null_device, 1736

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"nullpage"
	.size	.L.str.3, 9

	.type	gs_nullpage_device,@object # @gs_nullpage_device
	.section	.rodata,"a",@progbits
	.globl	gs_nullpage_device
	.align	8
gs_nullpage_device:
	.long	1736                    # 0x6c8
	.zero	4
	.quad	0
	.quad	.L.str.3
	.quad	0
	.quad	st_device_null
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.2
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	612                     # 0x264
	.long	792                     # 0x318
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	gx_default_open_device
	.quad	gx_forward_get_initial_matrix
	.quad	gx_default_sync_output
	.quad	gx_default_output_page
	.quad	gx_default_close_device
	.quad	gx_forward_map_rgb_color
	.quad	gx_forward_map_color_rgb
	.quad	null_fill_rectangle
	.quad	gx_default_tile_rectangle
	.quad	null_copy_mono
	.quad	null_copy_color
	.quad	gx_default_draw_line
	.quad	gx_default_get_bits
	.quad	gx_forward_get_params
	.quad	null_put_params
	.quad	gx_forward_map_cmyk_color
	.quad	gx_forward_get_xfont_procs
	.quad	gx_forward_get_xfont_device
	.quad	gx_forward_map_rgb_alpha_color
	.quad	gx_page_device_get_page_device
	.quad	gx_default_get_alpha_bits
	.quad	null_copy_alpha
	.quad	gx_forward_get_band
	.quad	null_copy_rop
	.quad	null_fill_path
	.quad	null_stroke_path
	.quad	gx_default_fill_mask
	.quad	null_fill_trapezoid
	.quad	null_fill_parallelogram
	.quad	null_fill_triangle
	.quad	null_draw_thin_line
	.quad	gx_default_begin_image
	.quad	gx_default_image_data
	.quad	gx_default_end_image
	.quad	gx_default_strip_tile_rectangle
	.quad	null_strip_copy_rop
	.quad	gx_default_get_clipping_box
	.quad	gx_default_begin_typed_image
	.quad	gx_default_get_bits_rectangle
	.quad	gx_forward_map_color_rgb_alpha
	.quad	gx_null_create_compositor
	.quad	gx_forward_get_hardware_params
	.quad	gx_default_text_begin
	.quad	gx_default_finish_copydevice
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_DevGray_get_color_mapping_procs
	.quad	gx_default_DevGray_get_color_comp_index
	.quad	gx_default_gray_fast_encode
	.quad	null_decode_color
	.quad	0
	.quad	gx_default_fill_rectangle_hl_color
	.quad	gx_default_include_color_space
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_dev_spec_op
	.quad	0
	.quad	0
	.quad	0
	.quad	null_strip_copy_rop2
	.quad	null_strip_tile_rect_devn
	.quad	0
	.quad	0
	.quad	0
	.size	gs_nullpage_device, 1736

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"gx_device_forward_finalize"
	.size	.L.str.4, 27


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
