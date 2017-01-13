	.text
	.file	"gdevrops.bc"
	.globl	gx_alloc_rop_texture_device
	.align	16, 0x90
	.type	gx_alloc_rop_texture_device,@function
gx_alloc_rop_texture_device:            # @gx_alloc_rop_texture_device
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rsi, %rax
	movq	%rdi, %rbx
	movl	$st_device_rop_texture, %esi
	movq	%rax, %rdi
	callq	*72(%rax)
	movq	%rax, (%rbx)
	xorl	%ecx, %ecx
	testq	%rax, %rax
	movl	$-25, %eax
	cmovnel	%ecx, %eax
	popq	%rbx
	retq
.Lfunc_end0:
	.size	gx_alloc_rop_texture_device, .Lfunc_end0-gx_alloc_rop_texture_device
	.cfi_endproc

	.globl	gx_make_rop_texture_device
	.align	16, 0x90
	.type	gx_make_rop_texture_device,@function
gx_make_rop_texture_device:             # @gx_make_rop_texture_device
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp2:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp3:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp4:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp6:
	.cfi_def_cfa_offset 48
.Ltmp7:
	.cfi_offset %rbx, -40
.Ltmp8:
	.cfi_offset %r14, -32
.Ltmp9:
	.cfi_offset %r15, -24
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%edx, %r15d
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	xorl	%edx, %edx
	testq	%rbp, %rbp
	je	.LBB1_2
# BB#1:                                 # %cond.true
	movq	24(%rbp), %rdx
.LBB1_2:                                # %cond.end
	movl	$gs_rop_texture_device, %esi
	movl	$1, %ecx
	movq	%rbx, %rdi
	callq	gx_device_init
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	gx_device_set_target
	movq	%rbx, %rdi
	callq	check_device_separable
	movq	%rbx, %rdi
	callq	gx_device_fill_in_procs
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	gx_device_copy_params
	movl	1112(%rbp), %eax
	movl	%eax, 1112(%rbx)
	movl	%r15d, 1736(%rbx)
	addq	$1744, %rbx             # imm = 0x6D0
	movl	$656, %edx              # imm = 0x290
	movq	%rbx, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	memcpy                  # TAILCALL
.Lfunc_end1:
	.size	gx_make_rop_texture_device, .Lfunc_end1-gx_make_rop_texture_device
	.cfi_endproc

	.align	16, 0x90
	.type	device_rop_texture_enum_ptrs,@function
device_rop_texture_enum_ptrs:           # @device_rop_texture_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp12:
	.cfi_def_cfa_offset 32
.Ltmp13:
	.cfi_offset %rbx, -16
	movq	%r8, %rbx
	cmpl	$2, %ecx
	jg	.LBB2_4
# BB#1:                                 # %if.then
	movq	32(%rsp), %rax
	addq	$1744, %rsi             # imm = 0x6D0
	movq	%rax, (%rsp)
	movl	$656, %edx              # imm = 0x290
	movl	$st_device_color, %r9d
	movq	%rbx, %r8
	callq	*st_device_color+32(%rip)
	testq	%rax, %rax
	jne	.LBB2_3
# BB#2:                                 # %if.end
	movq	$0, (%rbx)
	movl	$ptr_struct_procs, %eax
.LBB2_3:                                # %return
	addq	$16, %rsp
	popq	%rbx
	retq
.LBB2_4:                                # %if.end.2
	addl	$-3, %ecx
	movl	$st_device_forward, %r9d
	movq	%rbx, %r8
	addq	$16, %rsp
	popq	%rbx
	jmpq	*st_device_forward+32(%rip) # TAILCALL
.Lfunc_end2:
	.size	device_rop_texture_enum_ptrs, .Lfunc_end2-device_rop_texture_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	device_rop_texture_reloc_ptrs,@function
device_rop_texture_reloc_ptrs:          # @device_rop_texture_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp14:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp16:
	.cfi_def_cfa_offset 32
.Ltmp17:
	.cfi_offset %rbx, -24
.Ltmp18:
	.cfi_offset %r14, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	movl	$st_device_forward, %edx
	callq	*st_device_forward+40(%rip)
	addq	$1744, %rbx             # imm = 0x6D0
	movl	$656, %esi              # imm = 0x290
	movl	$st_device_color, %edx
	movq	%rbx, %rdi
	movq	%r14, %rcx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*st_device_color+40(%rip) # TAILCALL
.Lfunc_end3:
	.size	device_rop_texture_reloc_ptrs, .Lfunc_end3-device_rop_texture_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	rop_texture_fill_rectangle,@function
rop_texture_fill_rectangle:             # @rop_texture_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$72, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 80
	movq	$0, 24(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, 36(%rsp)
	movq	$0, 40(%rsp)
	movq	%r9, 56(%rsp)
	movq	%r9, 48(%rsp)
	movabsq	$4294967296, %rax       # imm = 0x100000000
	movq	%rax, 64(%rsp)
	movq	1744(%rdi), %r10
	movq	1728(%rdi), %r9
	movl	1736(%rdi), %r11d
	leaq	1744(%rdi), %rdi
	leaq	24(%rsp), %rax
	movq	%rax, 8(%rsp)
	movl	%r11d, (%rsp)
	callq	*40(%r10)
	addq	$72, %rsp
	retq
.Lfunc_end4:
	.size	rop_texture_fill_rectangle, .Lfunc_end4-rop_texture_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	rop_texture_copy_mono,@function
rop_texture_copy_mono:                  # @rop_texture_copy_mono
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp20:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp21:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 32
	subq	$64, %rsp
.Ltmp23:
	.cfi_def_cfa_offset 96
.Ltmp24:
	.cfi_offset %rbx, -32
.Ltmp25:
	.cfi_offset %r14, -24
.Ltmp26:
	.cfi_offset %r15, -16
	movq	%r8, %r10
	movl	%ecx, %r11d
	movl	%edx, %eax
	movq	128(%rsp), %r14
	movl	112(%rsp), %r8d
	movl	104(%rsp), %ecx
	movl	96(%rsp), %edx
	movq	120(%rsp), %r15
	movl	1736(%rdi), %ebx
	movq	%rsi, 16(%rsp)
	movl	%eax, 24(%rsp)
	movl	%r11d, 28(%rsp)
	movq	%r10, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	%r14, 48(%rsp)
	movabsq	$4294967296, %rax       # imm = 0x100000000
	movq	%rax, 56(%rsp)
	cmpq	$-1, %r15
	je	.LBB5_1
# BB#2:                                 # %if.else
	cmpq	$-1, %r14
	jne	.LBB5_4
# BB#3:                                 # %if.then.6
	andl	$-205, %ebx
	orl	$136, %ebx
	jmp	.LBB5_4
.LBB5_1:                                # %if.then
	andl	$-52, %ebx
	orl	$34, %ebx
.LBB5_4:                                # %if.end.9
	movq	1728(%rdi), %rax
	movq	1744(%rdi), %r10
	leaq	1744(%rdi), %rdi
	leaq	16(%rsp), %rsi
	movq	%rsi, 8(%rsp)
	movl	%ebx, (%rsp)
	movl	%r9d, %esi
	movq	%rax, %r9
	callq	*40(%r10)
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end5:
	.size	rop_texture_copy_mono, .Lfunc_end5-rop_texture_copy_mono
	.cfi_endproc

	.align	16, 0x90
	.type	rop_texture_copy_color,@function
rop_texture_copy_color:                 # @rop_texture_copy_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 24
	subq	$72, %rsp
.Ltmp29:
	.cfi_def_cfa_offset 96
.Ltmp30:
	.cfi_offset %rbx, -24
.Ltmp31:
	.cfi_offset %rbp, -16
	movl	96(%rsp), %ebp
	movl	104(%rsp), %r10d
	movl	112(%rsp), %r11d
	movq	%rsi, 24(%rsp)
	movl	%edx, 32(%rsp)
	movl	%ecx, 36(%rsp)
	movq	%r8, 40(%rsp)
	pcmpeqd	%xmm0, %xmm0
	movdqu	%xmm0, 48(%rsp)
	movq	$0, 64(%rsp)
	movq	1744(%rdi), %rax
	movq	1728(%rdi), %rbx
	movl	1736(%rdi), %ecx
	leaq	1744(%rdi), %rdi
	leaq	24(%rsp), %rdx
	movq	%rdx, 8(%rsp)
	movl	%ecx, (%rsp)
	movl	%r9d, %esi
	movl	%ebp, %edx
	movl	%r10d, %ecx
	movl	%r11d, %r8d
	movq	%rbx, %r9
	callq	*40(%rax)
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	rop_texture_copy_color, .Lfunc_end6-rop_texture_copy_color
	.cfi_endproc

	.align	16, 0x90
	.type	rop_texture_copy_planes,@function
rop_texture_copy_planes:                # @rop_texture_copy_planes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 24
	subq	$72, %rsp
.Ltmp34:
	.cfi_def_cfa_offset 96
.Ltmp35:
	.cfi_offset %rbx, -24
.Ltmp36:
	.cfi_offset %rbp, -16
	movl	96(%rsp), %ebp
	movl	104(%rsp), %r10d
	movl	112(%rsp), %r11d
	movl	120(%rsp), %ebx
	movq	%rsi, 24(%rsp)
	movl	%edx, 32(%rsp)
	movl	%ecx, 36(%rsp)
	movq	%r8, 40(%rsp)
	pcmpeqd	%xmm0, %xmm0
	movdqu	%xmm0, 48(%rsp)
	movl	%ebx, 64(%rsp)
	movl	$0, 68(%rsp)
	movq	1744(%rdi), %rax
	movq	1728(%rdi), %rbx
	movl	1736(%rdi), %ecx
	leaq	1744(%rdi), %rdi
	leaq	24(%rsp), %rdx
	movq	%rdx, 8(%rsp)
	movl	%ecx, (%rsp)
	movl	%r9d, %esi
	movl	%ebp, %edx
	movl	%r10d, %ecx
	movl	%r11d, %r8d
	movq	%rbx, %r9
	callq	*40(%rax)
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	rop_texture_copy_planes, .Lfunc_end7-rop_texture_copy_planes
	.cfi_endproc

	.type	st_device_rop_texture,@object # @st_device_rop_texture
	.section	.rodata,"a",@progbits
	.align	8
st_device_rop_texture:
	.long	2400                    # 0x960
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	device_rop_texture_enum_ptrs
	.quad	device_rop_texture_reloc_ptrs
	.quad	gx_device_finalize
	.quad	0
	.size	st_device_rop_texture, 64

	.type	gs_rop_texture_device,@object # @gs_rop_texture_device
	.align	8
gs_rop_texture_device:
	.long	2400                    # 0x960
	.zero	4
	.quad	0
	.quad	.L.str.1
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
	.quad	gx_forward_get_initial_matrix
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_forward_map_rgb_color
	.quad	gx_forward_map_color_rgb
	.quad	rop_texture_fill_rectangle
	.quad	0
	.quad	rop_texture_copy_mono
	.quad	rop_texture_copy_color
	.quad	0
	.quad	0
	.quad	gx_forward_get_params
	.quad	gx_forward_put_params
	.quad	gx_forward_map_cmyk_color
	.quad	gx_forward_get_xfont_procs
	.quad	gx_forward_get_xfont_device
	.quad	gx_forward_map_rgb_alpha_color
	.quad	gx_forward_get_page_device
	.quad	0
	.quad	gx_no_copy_alpha
	.quad	gx_forward_get_band
	.quad	gx_no_copy_rop
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
	.quad	gx_forward_get_clipping_box
	.quad	0
	.quad	0
	.quad	gx_forward_map_color_rgb_alpha
	.quad	0
	.quad	gx_forward_get_hardware_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_forward_get_color_mapping_procs
	.quad	gx_forward_get_color_comp_index
	.quad	gx_forward_encode_color
	.quad	gx_forward_decode_color
	.quad	0
	.quad	gx_forward_fill_rectangle_hl_color
	.quad	gx_forward_include_color_space
	.quad	gx_forward_fill_linear_color_scanline
	.quad	gx_forward_fill_linear_color_trapezoid
	.quad	gx_forward_fill_linear_color_triangle
	.quad	gx_forward_update_spot_equivalent_colors
	.quad	gx_forward_ret_devn_params
	.quad	gx_forward_fillpage
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_forward_dev_spec_op
	.quad	rop_texture_copy_planes
	.quad	gx_forward_get_profile
	.quad	gx_forward_set_graphics_type_tag
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	252                     # 0xfc
	.zero	4
	.zero	656
	.size	gs_rop_texture_device, 2400

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gx_device_rop_texture"
	.size	.L.str, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"rop source"
	.size	.L.str.1, 11

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"DeviceGray"
	.size	.L.str.2, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
