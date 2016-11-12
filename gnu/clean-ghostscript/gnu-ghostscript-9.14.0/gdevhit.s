	.text
	.file	"gdevhit.bc"
	.align	16, 0x90
	.type	hit_fill_rectangle,@function
hit_fill_rectangle:                     # @hit_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%edx, %edx
	testl	%r8d, %r8d
	movl	$-99, %eax
	cmovlel	%edx, %eax
	testl	%ecx, %ecx
	cmovlel	%edx, %eax
	retq
.Lfunc_end0:
	.size	hit_fill_rectangle, .Lfunc_end0-hit_fill_rectangle
	.cfi_endproc

	.type	gs_hit_detected,@object # @gs_hit_detected
	.section	.rodata,"a",@progbits
	.globl	gs_hit_detected
	.align	4
gs_hit_detected:
	.long	4294967197              # 0xffffff9d
	.size	gs_hit_detected, 4

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"hit detector"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_hit_device,@object   # @gs_hit_device
	.section	.rodata,"a",@progbits
	.globl	gs_hit_device
	.align	8
gs_hit_device:
	.long	1728                    # 0x6c0
	.zero	4
	.quad	0
	.quad	.L.str
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
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
	.quad	.L.str.1
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
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
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
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_w_b_map_rgb_color
	.quad	gx_default_w_b_map_color_rgb
	.quad	hit_fill_rectangle
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_draw_line
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_map_cmyk_color
	.quad	0
	.quad	0
	.quad	gx_default_map_rgb_alpha_color
	.quad	gx_default_get_page_device
	.quad	gx_default_get_alpha_bits
	.quad	0
	.quad	gx_default_get_band
	.quad	0
	.quad	gx_default_fill_path
	.quad	0
	.quad	0
	.quad	gx_default_fill_trapezoid
	.quad	gx_default_fill_parallelogram
	.quad	gx_default_fill_triangle
	.quad	gx_default_draw_thin_line
	.quad	gx_default_begin_image
	.quad	gx_default_image_data
	.quad	gx_default_end_image
	.quad	gx_default_strip_tile_rectangle
	.quad	gx_default_strip_copy_rop
	.quad	gx_get_largest_clipping_box
	.quad	gx_default_begin_typed_image
	.quad	0
	.quad	gx_default_map_color_rgb_alpha
	.quad	gx_null_create_compositor
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	gs_hit_device, 1728


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
