	.text
	.file	"gimp-gegl-utils.bc"
	.globl	gimp_bpp_to_babl_format
	.align	16, 0x90
	.type	gimp_bpp_to_babl_format,@function
gimp_bpp_to_babl_format:                # @gimp_bpp_to_babl_format
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
	subq	$48, %rsp
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -12(%rbp)
	jbe	.LBB0_4
# BB#2:                                 # %land.lhs.true
	cmpl	$4, -12(%rbp)
	ja	.LBB0_4
# BB#3:                                 # %if.then
	jmp	.LBB0_5
.LBB0_4:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_bpp_to_babl_format, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_20
.LBB0_5:                                # %if.end
	jmp	.LBB0_6
.LBB0_6:                                # %do.end
	cmpl	$0, -16(%rbp)
	je	.LBB0_13
# BB#7:                                 # %if.then.2
	movl	-12(%rbp), %eax
	decl	%eax
	movl	%eax, %ecx
	subl	$3, %eax
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	movl	%eax, -28(%rbp)         # 4-byte Spill
	ja	.LBB0_12
# BB#22:                                # %if.then.2
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	.LJTI0_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_8:                                # %sw.bb
	movabsq	$.L.str.2, %rdi
	callq	babl_format
	movq	%rax, -8(%rbp)
	jmp	.LBB0_20
.LBB0_9:                                # %sw.bb.3
	movabsq	$.L.str.3, %rdi
	callq	babl_format
	movq	%rax, -8(%rbp)
	jmp	.LBB0_20
.LBB0_10:                               # %sw.bb.5
	movabsq	$.L.str.4, %rdi
	callq	babl_format
	movq	%rax, -8(%rbp)
	jmp	.LBB0_20
.LBB0_11:                               # %sw.bb.7
	movabsq	$.L.str.5, %rdi
	callq	babl_format
	movq	%rax, -8(%rbp)
	jmp	.LBB0_20
.LBB0_12:                               # %sw.epilog
	jmp	.LBB0_19
.LBB0_13:                               # %if.else.9
	movl	-12(%rbp), %eax
	decl	%eax
	movl	%eax, %ecx
	subl	$3, %eax
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	movl	%eax, -44(%rbp)         # 4-byte Spill
	ja	.LBB0_18
# BB#21:                                # %if.else.9
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	.LJTI0_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_14:                               # %sw.bb.10
	movabsq	$.L.str.6, %rdi
	callq	babl_format
	movq	%rax, -8(%rbp)
	jmp	.LBB0_20
.LBB0_15:                               # %sw.bb.12
	movabsq	$.L.str.7, %rdi
	callq	babl_format
	movq	%rax, -8(%rbp)
	jmp	.LBB0_20
.LBB0_16:                               # %sw.bb.14
	movabsq	$.L.str.8, %rdi
	callq	babl_format
	movq	%rax, -8(%rbp)
	jmp	.LBB0_20
.LBB0_17:                               # %sw.bb.16
	movabsq	$.L.str.9, %rdi
	callq	babl_format
	movq	%rax, -8(%rbp)
	jmp	.LBB0_20
.LBB0_18:                               # %sw.epilog.18
	jmp	.LBB0_19
.LBB0_19:                               # %if.end.19
	movq	$0, -8(%rbp)
.LBB0_20:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_bpp_to_babl_format, .Lfunc_end0-gimp_bpp_to_babl_format
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_14
	.quad	.LBB0_15
	.quad	.LBB0_16
	.quad	.LBB0_17
.LJTI0_1:
	.quad	.LBB0_8
	.quad	.LBB0_9
	.quad	.LBB0_10
	.quad	.LBB0_11

	.text
	.globl	gimp_buffer_to_tiles
	.align	16, 0x90
	.type	gimp_buffer_to_tiles,@function
gimp_buffer_to_tiles:                   # @gimp_buffer_to_tiles
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gegl_buffer_get_format
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_buffer_to_tiles, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB1_6
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	movq	-16(%rbp), %rdi
	callq	gegl_buffer_get_extent
	movl	8(%rax), %edi
	movq	-16(%rbp), %rax
	movl	%edi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	callq	gegl_buffer_get_extent
	movl	12(%rax), %esi
	movq	-24(%rbp), %rdi
	movl	%esi, -56(%rbp)         # 4-byte Spill
	callq	gimp_babl_format_to_legacy_bpp
	movl	-52(%rbp), %edi         # 4-byte Reload
	movl	-56(%rbp), %esi         # 4-byte Reload
	movl	%eax, %edx
	callq	tile_manager_new
	xorl	%edx, %edx
	movl	%edx, %ecx
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.12, %rdx
	movabsq	$.L.str.13, %r8
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rcx, %rdi
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%r8, %rcx
	movq	%rax, %r8
	movq	-64(%rbp), %r9          # 8-byte Reload
	movb	$0, %al
	callq	gegl_node_new_child
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.14, %rdx
	movabsq	$.L.str.15, %rdi
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %r8
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-80(%rbp), %r9          # 8-byte Reload
	movb	$0, %al
	callq	gegl_node_new_child
	xorl	%r10d, %r10d
	movl	%r10d, %edx
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movb	$0, %al
	callq	gegl_node_link_many
	movq	-48(%rbp), %rdi
	callq	gegl_node_process
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
	movq	-32(%rbp), %rcx
	movq	%rcx, -8(%rbp)
.LBB1_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_buffer_to_tiles, .Lfunc_end1-gimp_buffer_to_tiles
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_babl_format_to_legacy_bpp,@function
gimp_babl_format_to_legacy_bpp:         # @gimp_babl_format_to_legacy_bpp
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	babl_format_get_n_components
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_babl_format_to_legacy_bpp, .Lfunc_end2-gimp_babl_format_to_legacy_bpp
	.cfi_endproc

	.globl	gimp_layer_mode_to_gegl_operation
	.align	16, 0x90
	.type	gimp_layer_mode_to_gegl_operation,@function
gimp_layer_mode_to_gegl_operation:      # @gimp_layer_mode_to_gegl_operation
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
	movl	%edi, -12(%rbp)
	movl	-12(%rbp), %edi
	movl	%edi, %eax
	movq	%rax, %rcx
	subq	$25, %rcx
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	ja	.LBB3_27
# BB#30:                                # %entry
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	.LJTI3_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB3_1:                                # %sw.bb
	movabsq	$.L.str.16, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_29
.LBB3_2:                                # %sw.bb.1
	movabsq	$.L.str.17, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_29
.LBB3_3:                                # %sw.bb.2
	movabsq	$.L.str.18, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_29
.LBB3_4:                                # %sw.bb.3
	movabsq	$.L.str.19, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_29
.LBB3_5:                                # %sw.bb.4
	movabsq	$.L.str.20, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_29
.LBB3_6:                                # %sw.bb.5
	movabsq	$.L.str.21, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_29
.LBB3_7:                                # %sw.bb.6
	movabsq	$.L.str.22, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_29
.LBB3_8:                                # %sw.bb.7
	movabsq	$.L.str.23, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_29
.LBB3_9:                                # %sw.bb.8
	movabsq	$.L.str.24, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_29
.LBB3_10:                               # %sw.bb.9
	movabsq	$.L.str.25, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_29
.LBB3_11:                               # %sw.bb.10
	movabsq	$.L.str.26, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_29
.LBB3_12:                               # %sw.bb.11
	movabsq	$.L.str.27, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_29
.LBB3_13:                               # %sw.bb.12
	movabsq	$.L.str.28, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_29
.LBB3_14:                               # %sw.bb.13
	movabsq	$.L.str.29, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_29
.LBB3_15:                               # %sw.bb.14
	movabsq	$.L.str.30, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_29
.LBB3_16:                               # %sw.bb.15
	movabsq	$.L.str.31, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_29
.LBB3_17:                               # %sw.bb.16
	movabsq	$.L.str.32, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_29
.LBB3_18:                               # %sw.bb.17
	movabsq	$.L.str.33, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_29
.LBB3_19:                               # %sw.bb.18
	movabsq	$.L.str.34, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_29
.LBB3_20:                               # %sw.bb.19
	movabsq	$.L.str.35, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_29
.LBB3_21:                               # %sw.bb.20
	movabsq	$.L.str.36, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_29
.LBB3_22:                               # %sw.bb.21
	movabsq	$.L.str.37, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_29
.LBB3_23:                               # %sw.bb.22
	movabsq	$.L.str.38, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_29
.LBB3_24:                               # %sw.bb.23
	movabsq	$.L.str.39, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_29
.LBB3_25:                               # %sw.bb.24
	movabsq	$.L.str.40, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_29
.LBB3_26:                               # %sw.bb.25
	movabsq	$.L.str.41, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_29
.LBB3_27:                               # %sw.default
	jmp	.LBB3_28
.LBB3_28:                               # %sw.epilog
	movabsq	$.L.str.16, %rax
	movq	%rax, -8(%rbp)
.LBB3_29:                               # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_layer_mode_to_gegl_operation, .Lfunc_end3-gimp_layer_mode_to_gegl_operation
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI3_0:
	.quad	.LBB3_1
	.quad	.LBB3_2
	.quad	.LBB3_3
	.quad	.LBB3_4
	.quad	.LBB3_5
	.quad	.LBB3_6
	.quad	.LBB3_7
	.quad	.LBB3_8
	.quad	.LBB3_9
	.quad	.LBB3_10
	.quad	.LBB3_11
	.quad	.LBB3_12
	.quad	.LBB3_13
	.quad	.LBB3_14
	.quad	.LBB3_15
	.quad	.LBB3_16
	.quad	.LBB3_17
	.quad	.LBB3_18
	.quad	.LBB3_19
	.quad	.LBB3_20
	.quad	.LBB3_21
	.quad	.LBB3_22
	.quad	.LBB3_23
	.quad	.LBB3_24
	.quad	.LBB3_25
	.quad	.LBB3_26

	.text
	.globl	gimp_interpolation_to_gegl_filter
	.align	16, 0x90
	.type	gimp_interpolation_to_gegl_filter,@function
gimp_interpolation_to_gegl_filter:      # @gimp_interpolation_to_gegl_filter
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
	movl	%edi, -12(%rbp)
	movl	-12(%rbp), %edi
	movl	%edi, %eax
	movq	%rax, %rcx
	subq	$3, %rcx
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	ja	.LBB4_5
# BB#8:                                 # %entry
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	.LJTI4_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB4_1:                                # %sw.bb
	movabsq	$.L.str.42, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_7
.LBB4_2:                                # %sw.bb.1
	movabsq	$.L.str.43, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_7
.LBB4_3:                                # %sw.bb.2
	movabsq	$.L.str.44, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_7
.LBB4_4:                                # %sw.bb.3
	movabsq	$.L.str.45, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_7
.LBB4_5:                                # %sw.default
	jmp	.LBB4_6
.LBB4_6:                                # %sw.epilog
	movabsq	$.L.str.42, %rax
	movq	%rax, -8(%rbp)
.LBB4_7:                                # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_interpolation_to_gegl_filter, .Lfunc_end4-gimp_interpolation_to_gegl_filter
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI4_0:
	.quad	.LBB4_1
	.quad	.LBB4_2
	.quad	.LBB4_3
	.quad	.LBB4_4

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-GEGL"
	.size	.L.str, 10

	.type	.L__func__.gimp_bpp_to_babl_format,@object # @__func__.gimp_bpp_to_babl_format
.L__func__.gimp_bpp_to_babl_format:
	.asciz	"gimp_bpp_to_babl_format"
	.size	.L__func__.gimp_bpp_to_babl_format, 24

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"bpp > 0 && bpp <= 4"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Y u8"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"YA u8"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"RGB u8"
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"RGBA u8"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Y' u8"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Y'A u8"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"R'G'B' u8"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"R'G'B'A u8"
	.size	.L.str.9, 11

	.type	.L__func__.gimp_buffer_to_tiles,@object # @__func__.gimp_buffer_to_tiles
.L__func__.gimp_buffer_to_tiles:
	.asciz	"gimp_buffer_to_tiles"
	.size	.L__func__.gimp_buffer_to_tiles, 21

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"buffer != NULL"
	.size	.L.str.10, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"operation"
	.size	.L.str.11, 10

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gegl:buffer-source"
	.size	.L.str.12, 19

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"buffer"
	.size	.L.str.13, 7

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp:tilemanager-sink"
	.size	.L.str.14, 22

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"tile-manager"
	.size	.L.str.15, 13

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gegl:over"
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gimp:dissolve-mode"
	.size	.L.str.17, 19

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp:behind-mode"
	.size	.L.str.18, 17

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp:multiply-mode"
	.size	.L.str.19, 19

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gimp:screen-mode"
	.size	.L.str.20, 17

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp:overlay-mode"
	.size	.L.str.21, 18

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp:difference-mode"
	.size	.L.str.22, 21

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gimp:addition-mode"
	.size	.L.str.23, 19

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimp:subtract-mode"
	.size	.L.str.24, 19

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gimp:darken-mode"
	.size	.L.str.25, 17

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gimp:lighten-mode"
	.size	.L.str.26, 18

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gimp:hue-mode"
	.size	.L.str.27, 14

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gimp:saturation-mode"
	.size	.L.str.28, 21

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gimp:color-mode"
	.size	.L.str.29, 16

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gimp:value-mode"
	.size	.L.str.30, 16

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gimp:divide-mode"
	.size	.L.str.31, 17

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"gimp:dodge-mode"
	.size	.L.str.32, 16

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gimp:burn-mode"
	.size	.L.str.33, 15

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"gimp:hardlight-mode"
	.size	.L.str.34, 20

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gimp:softlight-mode"
	.size	.L.str.35, 20

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"gimp:grain-extract-mode"
	.size	.L.str.36, 24

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"gimp:grain-merge-mode"
	.size	.L.str.37, 22

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"gimp:color-erase-mode"
	.size	.L.str.38, 22

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"gimp:erase-mode"
	.size	.L.str.39, 16

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gimp:replace-mode"
	.size	.L.str.40, 18

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"gimp:anti-erase-mode"
	.size	.L.str.41, 21

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"nearest"
	.size	.L.str.42, 8

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"linear"
	.size	.L.str.43, 7

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"cubic"
	.size	.L.str.44, 6

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"lohalo"
	.size	.L.str.45, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
