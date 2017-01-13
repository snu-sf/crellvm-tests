	.text
	.file	"context-commands.bc"
	.globl	context_colors_default_cmd_callback
	.align	16, 0x90
	.type	context_colors_default_cmd_callback,@function
context_colors_default_cmd_callback:    # @context_colors_default_cmd_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	jmp	.LBB0_3
.LBB0_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_context_set_default_colors
.LBB0_3:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	context_colors_default_cmd_callback, .Lfunc_end0-context_colors_default_cmd_callback
	.cfi_endproc

	.globl	context_colors_swap_cmd_callback
	.align	16, 0x90
	.type	context_colors_swap_cmd_callback,@function
context_colors_swap_cmd_callback:       # @context_colors_swap_cmd_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	jmp	.LBB1_3
.LBB1_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_context_swap_colors
.LBB1_3:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	context_colors_swap_cmd_callback, .Lfunc_end1-context_colors_swap_cmd_callback
	.cfi_endproc

	.globl	context_palette_foreground_cmd_callback
	.align	16, 0x90
	.type	context_palette_foreground_cmd_callback,@function
context_palette_foreground_cmd_callback: # @context_palette_foreground_cmd_callback
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	jmp	.LBB2_3
.LBB2_2:                                # %if.end
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_foreground
	leaq	-64(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	-12(%rbp), %edi
	callq	context_select_color
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_context_set_foreground
.LBB2_3:                                # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	context_palette_foreground_cmd_callback, .Lfunc_end2-context_palette_foreground_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4607182418800017408     # double 1
.LCPI3_1:
	.quad	4616189618054758400     # double 4
	.text
	.align	16, 0x90
	.type	context_select_color,@function
context_select_color:                   # @context_select_color
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
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	movq	-16(%rbp), %rdx
	callq	context_get_color_index
	movl	%eax, -28(%rbp)
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	callq	context_max_color_index
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_0, %xmm5         # xmm5 = mem[0],zero
	movsd	.LCPI3_1, %xmm6         # xmm6 = mem[0],zero
	xorl	%esi, %esi
	movl	%eax, -32(%rbp)
	movl	-4(%rbp), %edi
	cvtsi2sdl	-28(%rbp), %xmm1
	cvtsi2sdl	-32(%rbp), %xmm2
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-40(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-40(%rbp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-40(%rbp), %xmm7        # 8-byte Reload
                                        # xmm7 = mem[0],zero
	callq	action_select_value
	cvttsd2si	%xmm0, %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %edi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	-16(%rbp), %rcx
	callq	context_set_color_index
	movl	%eax, -44(%rbp)         # 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	context_select_color, .Lfunc_end3-context_select_color
	.cfi_endproc

	.globl	context_palette_background_cmd_callback
	.align	16, 0x90
	.type	context_palette_background_cmd_callback,@function
context_palette_background_cmd_callback: # @context_palette_background_cmd_callback
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	jmp	.LBB4_3
.LBB4_2:                                # %if.end
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_background
	leaq	-64(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	-12(%rbp), %edi
	callq	context_select_color
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_context_set_background
.LBB4_3:                                # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	context_palette_background_cmd_callback, .Lfunc_end4-context_palette_background_cmd_callback
	.cfi_endproc

	.globl	context_colormap_foreground_cmd_callback
	.align	16, 0x90
	.type	context_colormap_foreground_cmd_callback,@function
context_colormap_foreground_cmd_callback: # @context_colormap_foreground_cmd_callback
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	jmp	.LBB5_3
.LBB5_2:                                # %if.end
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_foreground
	leaq	-64(%rbp), %rsi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movl	-12(%rbp), %edi
	callq	context_select_color
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_context_set_foreground
.LBB5_3:                                # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	context_colormap_foreground_cmd_callback, .Lfunc_end5-context_colormap_foreground_cmd_callback
	.cfi_endproc

	.globl	context_colormap_background_cmd_callback
	.align	16, 0x90
	.type	context_colormap_background_cmd_callback,@function
context_colormap_background_cmd_callback: # @context_colormap_background_cmd_callback
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	jmp	.LBB6_3
.LBB6_2:                                # %if.end
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_background
	leaq	-64(%rbp), %rsi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movl	-12(%rbp), %edi
	callq	context_select_color
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_context_set_background
.LBB6_3:                                # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	context_colormap_background_cmd_callback, .Lfunc_end6-context_colormap_background_cmd_callback
	.cfi_endproc

	.globl	context_swatch_foreground_cmd_callback
	.align	16, 0x90
	.type	context_swatch_foreground_cmd_callback,@function
context_swatch_foreground_cmd_callback: # @context_swatch_foreground_cmd_callback
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	jmp	.LBB7_3
.LBB7_2:                                # %if.end
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_foreground
	leaq	-64(%rbp), %rsi
	movl	$1, %eax
	movl	-12(%rbp), %edi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	context_select_color
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_context_set_foreground
.LBB7_3:                                # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	context_swatch_foreground_cmd_callback, .Lfunc_end7-context_swatch_foreground_cmd_callback
	.cfi_endproc

	.globl	context_swatch_background_cmd_callback
	.align	16, 0x90
	.type	context_swatch_background_cmd_callback,@function
context_swatch_background_cmd_callback: # @context_swatch_background_cmd_callback
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	jmp	.LBB8_3
.LBB8_2:                                # %if.end
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_background
	leaq	-64(%rbp), %rsi
	movl	$1, %eax
	movl	-12(%rbp), %edi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	context_select_color
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_context_set_background
.LBB8_3:                                # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	context_swatch_background_cmd_callback, .Lfunc_end8-context_swatch_background_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4607182418800017408     # double 1
.LCPI9_1:
	.quad	4571171282956062736     # double 0.0039215686274509803
.LCPI9_2:
	.quad	4576918229304087675     # double 0.01
.LCPI9_3:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.globl	context_foreground_red_cmd_callback
	.align	16, 0x90
	.type	context_foreground_red_cmd_callback,@function
context_foreground_red_cmd_callback:    # @context_foreground_red_cmd_callback
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	jmp	.LBB9_3
.LBB9_2:                                # %if.end
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_foreground
	xorps	%xmm0, %xmm0
	movsd	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI9_1, %xmm4         # xmm4 = mem[0],zero
	movsd	.LCPI9_2, %xmm5         # xmm5 = mem[0],zero
	movsd	.LCPI9_3, %xmm6         # xmm6 = mem[0],zero
	xorl	%esi, %esi
	movl	-12(%rbp), %edi
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	-72(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm1, -80(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm1
	movsd	-80(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-80(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-72(%rbp), %xmm7        # 8-byte Reload
                                        # xmm7 = mem[0],zero
	callq	action_select_value
	leaq	-64(%rbp), %rsi
	movsd	%xmm0, -64(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_context_set_foreground
.LBB9_3:                                # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	context_foreground_red_cmd_callback, .Lfunc_end9-context_foreground_red_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4607182418800017408     # double 1
.LCPI10_1:
	.quad	4571171282956062736     # double 0.0039215686274509803
.LCPI10_2:
	.quad	4576918229304087675     # double 0.01
.LCPI10_3:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.globl	context_foreground_green_cmd_callback
	.align	16, 0x90
	.type	context_foreground_green_cmd_callback,@function
context_foreground_green_cmd_callback:  # @context_foreground_green_cmd_callback
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	jmp	.LBB10_3
.LBB10_2:                               # %if.end
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_foreground
	xorps	%xmm0, %xmm0
	movsd	.LCPI10_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI10_1, %xmm4        # xmm4 = mem[0],zero
	movsd	.LCPI10_2, %xmm5        # xmm5 = mem[0],zero
	movsd	.LCPI10_3, %xmm6        # xmm6 = mem[0],zero
	xorl	%esi, %esi
	movl	-12(%rbp), %edi
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	-72(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm1, -80(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm1
	movsd	-80(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-80(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-72(%rbp), %xmm7        # 8-byte Reload
                                        # xmm7 = mem[0],zero
	callq	action_select_value
	leaq	-64(%rbp), %rsi
	movsd	%xmm0, -56(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_context_set_foreground
.LBB10_3:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	context_foreground_green_cmd_callback, .Lfunc_end10-context_foreground_green_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4607182418800017408     # double 1
.LCPI11_1:
	.quad	4571171282956062736     # double 0.0039215686274509803
.LCPI11_2:
	.quad	4576918229304087675     # double 0.01
.LCPI11_3:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.globl	context_foreground_blue_cmd_callback
	.align	16, 0x90
	.type	context_foreground_blue_cmd_callback,@function
context_foreground_blue_cmd_callback:   # @context_foreground_blue_cmd_callback
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	jmp	.LBB11_3
.LBB11_2:                               # %if.end
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_foreground
	xorps	%xmm0, %xmm0
	movsd	.LCPI11_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI11_1, %xmm4        # xmm4 = mem[0],zero
	movsd	.LCPI11_2, %xmm5        # xmm5 = mem[0],zero
	movsd	.LCPI11_3, %xmm6        # xmm6 = mem[0],zero
	xorl	%esi, %esi
	movl	-12(%rbp), %edi
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	-72(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm1, -80(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm1
	movsd	-80(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-80(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-72(%rbp), %xmm7        # 8-byte Reload
                                        # xmm7 = mem[0],zero
	callq	action_select_value
	leaq	-64(%rbp), %rsi
	movsd	%xmm0, -48(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_context_set_foreground
.LBB11_3:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	context_foreground_blue_cmd_callback, .Lfunc_end11-context_foreground_blue_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4607182418800017408     # double 1
.LCPI12_1:
	.quad	4571171282956062736     # double 0.0039215686274509803
.LCPI12_2:
	.quad	4576918229304087675     # double 0.01
.LCPI12_3:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.globl	context_background_red_cmd_callback
	.align	16, 0x90
	.type	context_background_red_cmd_callback,@function
context_background_red_cmd_callback:    # @context_background_red_cmd_callback
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB12_2
# BB#1:                                 # %if.then
	jmp	.LBB12_3
.LBB12_2:                               # %if.end
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_background
	xorps	%xmm0, %xmm0
	movsd	.LCPI12_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI12_1, %xmm4        # xmm4 = mem[0],zero
	movsd	.LCPI12_2, %xmm5        # xmm5 = mem[0],zero
	movsd	.LCPI12_3, %xmm6        # xmm6 = mem[0],zero
	xorl	%esi, %esi
	movl	-12(%rbp), %edi
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	-72(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm1, -80(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm1
	movsd	-80(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-80(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-72(%rbp), %xmm7        # 8-byte Reload
                                        # xmm7 = mem[0],zero
	callq	action_select_value
	leaq	-64(%rbp), %rsi
	movsd	%xmm0, -64(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_context_set_background
.LBB12_3:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	context_background_red_cmd_callback, .Lfunc_end12-context_background_red_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4607182418800017408     # double 1
.LCPI13_1:
	.quad	4571171282956062736     # double 0.0039215686274509803
.LCPI13_2:
	.quad	4576918229304087675     # double 0.01
.LCPI13_3:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.globl	context_background_green_cmd_callback
	.align	16, 0x90
	.type	context_background_green_cmd_callback,@function
context_background_green_cmd_callback:  # @context_background_green_cmd_callback
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	jmp	.LBB13_3
.LBB13_2:                               # %if.end
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_background
	xorps	%xmm0, %xmm0
	movsd	.LCPI13_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI13_1, %xmm4        # xmm4 = mem[0],zero
	movsd	.LCPI13_2, %xmm5        # xmm5 = mem[0],zero
	movsd	.LCPI13_3, %xmm6        # xmm6 = mem[0],zero
	xorl	%esi, %esi
	movl	-12(%rbp), %edi
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	-72(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm1, -80(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm1
	movsd	-80(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-80(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-72(%rbp), %xmm7        # 8-byte Reload
                                        # xmm7 = mem[0],zero
	callq	action_select_value
	leaq	-64(%rbp), %rsi
	movsd	%xmm0, -56(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_context_set_background
.LBB13_3:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	context_background_green_cmd_callback, .Lfunc_end13-context_background_green_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4607182418800017408     # double 1
.LCPI14_1:
	.quad	4571171282956062736     # double 0.0039215686274509803
.LCPI14_2:
	.quad	4576918229304087675     # double 0.01
.LCPI14_3:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.globl	context_background_blue_cmd_callback
	.align	16, 0x90
	.type	context_background_blue_cmd_callback,@function
context_background_blue_cmd_callback:   # @context_background_blue_cmd_callback
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB14_2
# BB#1:                                 # %if.then
	jmp	.LBB14_3
.LBB14_2:                               # %if.end
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_background
	xorps	%xmm0, %xmm0
	movsd	.LCPI14_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI14_1, %xmm4        # xmm4 = mem[0],zero
	movsd	.LCPI14_2, %xmm5        # xmm5 = mem[0],zero
	movsd	.LCPI14_3, %xmm6        # xmm6 = mem[0],zero
	xorl	%esi, %esi
	movl	-12(%rbp), %edi
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	-72(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm1, -80(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm1
	movsd	-80(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-80(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-72(%rbp), %xmm7        # 8-byte Reload
                                        # xmm7 = mem[0],zero
	callq	action_select_value
	leaq	-64(%rbp), %rsi
	movsd	%xmm0, -48(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_context_set_background
.LBB14_3:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	context_background_blue_cmd_callback, .Lfunc_end14-context_background_blue_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4607182418800017408     # double 1
.LCPI15_1:
	.quad	4568551541996350487     # double 0.0027777777777777779
.LCPI15_2:
	.quad	4576918229304087675     # double 0.01
.LCPI15_3:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.globl	context_foreground_hue_cmd_callback
	.align	16, 0x90
	.type	context_foreground_hue_cmd_callback,@function
context_foreground_hue_cmd_callback:    # @context_foreground_hue_cmd_callback
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB15_2
# BB#1:                                 # %if.then
	jmp	.LBB15_3
.LBB15_2:                               # %if.end
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_foreground
	leaq	-64(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	callq	gimp_rgb_to_hsv
	xorps	%xmm0, %xmm0
	movsd	.LCPI15_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI15_1, %xmm4        # xmm4 = mem[0],zero
	movsd	.LCPI15_2, %xmm5        # xmm5 = mem[0],zero
	movsd	.LCPI15_3, %xmm6        # xmm6 = mem[0],zero
	xorl	%esi, %esi
	movl	-12(%rbp), %edi
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	-104(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm1, -112(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm1
	movsd	-112(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-112(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm7       # 8-byte Reload
                                        # xmm7 = mem[0],zero
	callq	action_select_value
	leaq	-96(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	movsd	%xmm0, -96(%rbp)
	callq	gimp_hsv_to_rgb
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_context_set_foreground
.LBB15_3:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	context_foreground_hue_cmd_callback, .Lfunc_end15-context_foreground_hue_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4607182418800017408     # double 1
.LCPI16_1:
	.quad	4576918229304087675     # double 0.01
.LCPI16_2:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.globl	context_foreground_saturation_cmd_callback
	.align	16, 0x90
	.type	context_foreground_saturation_cmd_callback,@function
context_foreground_saturation_cmd_callback: # @context_foreground_saturation_cmd_callback
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB16_2
# BB#1:                                 # %if.then
	jmp	.LBB16_3
.LBB16_2:                               # %if.end
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_foreground
	leaq	-64(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	callq	gimp_rgb_to_hsv
	xorps	%xmm0, %xmm0
	movsd	.LCPI16_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI16_1, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI16_2, %xmm6        # xmm6 = mem[0],zero
	xorl	%esi, %esi
	movl	-12(%rbp), %edi
	movsd	-88(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-104(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -112(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-112(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm2, -120(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm2
	movaps	%xmm4, %xmm3
	movsd	-120(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-120(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-104(%rbp), %xmm7       # 8-byte Reload
                                        # xmm7 = mem[0],zero
	callq	action_select_value
	leaq	-96(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	movsd	%xmm0, -88(%rbp)
	callq	gimp_hsv_to_rgb
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_context_set_foreground
.LBB16_3:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	context_foreground_saturation_cmd_callback, .Lfunc_end16-context_foreground_saturation_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4607182418800017408     # double 1
.LCPI17_1:
	.quad	4576918229304087675     # double 0.01
.LCPI17_2:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.globl	context_foreground_value_cmd_callback
	.align	16, 0x90
	.type	context_foreground_value_cmd_callback,@function
context_foreground_value_cmd_callback:  # @context_foreground_value_cmd_callback
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB17_2
# BB#1:                                 # %if.then
	jmp	.LBB17_3
.LBB17_2:                               # %if.end
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_foreground
	leaq	-64(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	callq	gimp_rgb_to_hsv
	xorps	%xmm0, %xmm0
	movsd	.LCPI17_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI17_1, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI17_2, %xmm6        # xmm6 = mem[0],zero
	xorl	%esi, %esi
	movl	-12(%rbp), %edi
	movsd	-80(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-104(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -112(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-112(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm2, -120(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm2
	movaps	%xmm4, %xmm3
	movsd	-120(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-120(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-104(%rbp), %xmm7       # 8-byte Reload
                                        # xmm7 = mem[0],zero
	callq	action_select_value
	leaq	-96(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	movsd	%xmm0, -80(%rbp)
	callq	gimp_hsv_to_rgb
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_context_set_foreground
.LBB17_3:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	context_foreground_value_cmd_callback, .Lfunc_end17-context_foreground_value_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4607182418800017408     # double 1
.LCPI18_1:
	.quad	4568551541996350487     # double 0.0027777777777777779
.LCPI18_2:
	.quad	4576918229304087675     # double 0.01
.LCPI18_3:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.globl	context_background_hue_cmd_callback
	.align	16, 0x90
	.type	context_background_hue_cmd_callback,@function
context_background_hue_cmd_callback:    # @context_background_hue_cmd_callback
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB18_2
# BB#1:                                 # %if.then
	jmp	.LBB18_3
.LBB18_2:                               # %if.end
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_background
	leaq	-64(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	callq	gimp_rgb_to_hsv
	xorps	%xmm0, %xmm0
	movsd	.LCPI18_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI18_1, %xmm4        # xmm4 = mem[0],zero
	movsd	.LCPI18_2, %xmm5        # xmm5 = mem[0],zero
	movsd	.LCPI18_3, %xmm6        # xmm6 = mem[0],zero
	xorl	%esi, %esi
	movl	-12(%rbp), %edi
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	-104(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm1, -112(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm1
	movsd	-112(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-112(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm7       # 8-byte Reload
                                        # xmm7 = mem[0],zero
	callq	action_select_value
	leaq	-96(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	movsd	%xmm0, -96(%rbp)
	callq	gimp_hsv_to_rgb
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_context_set_background
.LBB18_3:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	context_background_hue_cmd_callback, .Lfunc_end18-context_background_hue_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_0:
	.quad	4607182418800017408     # double 1
.LCPI19_1:
	.quad	4576918229304087675     # double 0.01
.LCPI19_2:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.globl	context_background_saturation_cmd_callback
	.align	16, 0x90
	.type	context_background_saturation_cmd_callback,@function
context_background_saturation_cmd_callback: # @context_background_saturation_cmd_callback
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB19_2
# BB#1:                                 # %if.then
	jmp	.LBB19_3
.LBB19_2:                               # %if.end
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_background
	leaq	-64(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	callq	gimp_rgb_to_hsv
	xorps	%xmm0, %xmm0
	movsd	.LCPI19_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI19_1, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI19_2, %xmm6        # xmm6 = mem[0],zero
	xorl	%esi, %esi
	movl	-12(%rbp), %edi
	movsd	-88(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-104(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -112(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-112(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm2, -120(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm2
	movaps	%xmm4, %xmm3
	movsd	-120(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-120(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-104(%rbp), %xmm7       # 8-byte Reload
                                        # xmm7 = mem[0],zero
	callq	action_select_value
	leaq	-96(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	movsd	%xmm0, -88(%rbp)
	callq	gimp_hsv_to_rgb
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_context_set_background
.LBB19_3:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	context_background_saturation_cmd_callback, .Lfunc_end19-context_background_saturation_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_0:
	.quad	4607182418800017408     # double 1
.LCPI20_1:
	.quad	4576918229304087675     # double 0.01
.LCPI20_2:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.globl	context_background_value_cmd_callback
	.align	16, 0x90
	.type	context_background_value_cmd_callback,@function
context_background_value_cmd_callback:  # @context_background_value_cmd_callback
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB20_2
# BB#1:                                 # %if.then
	jmp	.LBB20_3
.LBB20_2:                               # %if.end
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_background
	leaq	-64(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	callq	gimp_rgb_to_hsv
	xorps	%xmm0, %xmm0
	movsd	.LCPI20_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI20_1, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI20_2, %xmm6        # xmm6 = mem[0],zero
	xorl	%esi, %esi
	movl	-12(%rbp), %edi
	movsd	-80(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-104(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -112(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-112(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm2, -120(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm2
	movaps	%xmm4, %xmm3
	movsd	-120(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-120(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-104(%rbp), %xmm7       # 8-byte Reload
                                        # xmm7 = mem[0],zero
	callq	action_select_value
	leaq	-96(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	movsd	%xmm0, -80(%rbp)
	callq	gimp_hsv_to_rgb
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_context_set_background
.LBB20_3:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	context_background_value_cmd_callback, .Lfunc_end20-context_background_value_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI21_0:
	.quad	4571171282956062736     # double 0.0039215686274509803
.LCPI21_1:
	.quad	4576918229304087675     # double 0.01
.LCPI21_2:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.globl	context_opacity_cmd_callback
	.align	16, 0x90
	.type	context_opacity_cmd_callback,@function
context_opacity_cmd_callback:           # @context_opacity_cmd_callback
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB21_2
# BB#1:                                 # %if.then
	jmp	.LBB21_12
.LBB21_2:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_tool
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB21_12
# BB#3:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_tool_options_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB21_5
# BB#4:                                 # %if.then.5
	movl	$0, -60(%rbp)
	jmp	.LBB21_10
.LBB21_5:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_8
# BB#6:                                 # %land.lhs.true.7
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB21_8
# BB#7:                                 # %if.then.9
	movl	$1, -60(%rbp)
	jmp	.LBB21_9
.LBB21_8:                               # %if.else.10
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB21_9:                               # %if.end.12
	jmp	.LBB21_10
.LBB21_10:                              # %if.end.13
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB21_12
# BB#11:                                # %if.then.15
	movl	-12(%rbp), %edi
	movq	-24(%rbp), %rax
	movl	%edi, -68(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	callq	action_data_get_display
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	movq	120(%rdi), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str, %rcx
	movsd	.LCPI21_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI21_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI21_2, %xmm2        # xmm2 = mem[0],zero
	xorl	%r8d, %r8d
	movl	-68(%rbp), %edi         # 4-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movsd	%xmm2, -88(%rbp)        # 8-byte Spill
	movsd	-88(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	action_select_property
.LBB21_12:                              # %if.end.19
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	context_opacity_cmd_callback, .Lfunc_end21-context_opacity_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI22_0:
	.quad	4626885667169763328     # double 22
.LCPI22_1:
	.quad	4607182418800017408     # double 1
	.text
	.globl	context_paint_mode_cmd_callback
	.align	16, 0x90
	.type	context_paint_mode_cmd_callback,@function
context_paint_mode_cmd_callback:        # @context_paint_mode_cmd_callback
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB22_2
# BB#1:                                 # %if.then
	jmp	.LBB22_15
.LBB22_2:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_paint_mode
	movl	%eax, -44(%rbp)
	movl	-12(%rbp), %edi
	movl	-44(%rbp), %eax
	movl	%edi, -92(%rbp)         # 4-byte Spill
	movl	%eax, %edi
	callq	context_paint_mode_index
	xorps	%xmm0, %xmm0
	movsd	.LCPI22_0, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI22_1, %xmm1        # xmm1 = mem[0],zero
	xorl	%esi, %esi
	cvtsi2sdl	%eax, %xmm3
	movl	-92(%rbp), %edi         # 4-byte Reload
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-104(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -112(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-104(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-112(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-112(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movsd	-104(%rbp), %xmm7       # 8-byte Reload
                                        # xmm7 = mem[0],zero
	callq	action_select_value
	cvttsd2si	%xmm0, %eax
	movl	%eax, -48(%rbp)
	movq	-32(%rbp), %rdi
	movslq	-48(%rbp), %rcx
	movl	paint_modes(,%rcx,4), %esi
	callq	gimp_context_set_paint_mode
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_tool
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB22_15
# BB#3:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_tool_options_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB22_5
# BB#4:                                 # %if.then.9
	movl	$0, -68(%rbp)
	jmp	.LBB22_10
.LBB22_5:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_8
# BB#6:                                 # %land.lhs.true.11
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB22_8
# BB#7:                                 # %if.then.14
	movl	$1, -68(%rbp)
	jmp	.LBB22_9
.LBB22_8:                               # %if.else.15
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB22_9:                               # %if.end.17
	jmp	.LBB22_10
.LBB22_10:                              # %if.end.18
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB22_15
# BB#11:                                # %if.then.20
	callq	gimp_layer_mode_effects_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-88(%rbp), %r8
	movl	-48(%rbp), %esi
	movq	%rax, %rdi
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-120(%rbp), %r9         # 8-byte Reload
	callq	gimp_enum_get_value
	movq	-24(%rbp), %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	action_data_get_display
	movq	%rax, -80(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB22_14
# BB#12:                                # %land.lhs.true.27
	cmpq	$0, -80(%rbp)
	je	.LBB22_14
# BB#13:                                # %if.then.29
	movl	$80, %eax
	movl	%eax, %esi
	movq	-80(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	120(%rcx), %rcx
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.1, %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-88(%rbp), %rcx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	action_message
.LBB22_14:                              # %if.end.33
	jmp	.LBB22_15
.LBB22_15:                              # %if.end.34
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	context_paint_mode_cmd_callback, .Lfunc_end22-context_paint_mode_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	context_paint_mode_index,@function
context_paint_mode_index:               # @context_paint_mode_index
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
	movl	%edi, -4(%rbp)
	movl	$0, -8(%rbp)
.LBB23_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movslq	-8(%rbp), %rdx
	cmpq	$22, %rdx
	movb	%cl, -9(%rbp)           # 1-byte Spill
	jae	.LBB23_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB23_1 Depth=1
	movslq	-8(%rbp), %rax
	movl	paint_modes(,%rax,4), %ecx
	cmpl	-4(%rbp), %ecx
	setne	%dl
	movb	%dl, -9(%rbp)           # 1-byte Spill
.LBB23_3:                               # %land.end
                                        #   in Loop: Header=BB23_1 Depth=1
	movb	-9(%rbp), %al           # 1-byte Reload
	testb	$1, %al
	jne	.LBB23_4
	jmp	.LBB23_5
.LBB23_4:                               # %while.body
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB23_1
.LBB23_5:                               # %while.end
	movl	-8(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end23:
	.size	context_paint_mode_index, .Lfunc_end23-context_paint_mode_index
	.cfi_endproc

	.globl	context_tool_select_cmd_callback
	.align	16, 0x90
	.type	context_tool_select_cmd_callback,@function
context_tool_select_cmd_callback:       # @context_tool_select_cmd_callback
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB24_2
# BB#1:                                 # %if.then
	jmp	.LBB24_3
.LBB24_2:                               # %if.end
	movl	-12(%rbp), %edi
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	528(%rax), %rdx
	callq	context_select_object
.LBB24_3:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	context_tool_select_cmd_callback, .Lfunc_end24-context_tool_select_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	context_select_object,@function
context_select_object:                  # @context_select_object
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
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	callq	gimp_container_get_children_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_get_by_type
	movq	%rax, -32(%rbp)
	movl	-4(%rbp), %edi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	action_select_object
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB25_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_container_get_children_type
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_set_by_type
.LBB25_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	context_select_object, .Lfunc_end25-context_select_object
	.cfi_endproc

	.globl	context_brush_select_cmd_callback
	.align	16, 0x90
	.type	context_brush_select_cmd_callback,@function
context_brush_select_cmd_callback:      # @context_brush_select_cmd_callback
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB26_2
# BB#1:                                 # %if.then
	jmp	.LBB26_3
.LBB26_2:                               # %if.end
	movl	-12(%rbp), %edi
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	464(%rax), %rax
	movl	%edi, -36(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_data_factory_get_container
	movl	-36(%rbp), %edi         # 4-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	context_select_object
.LBB26_3:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	context_brush_select_cmd_callback, .Lfunc_end26-context_brush_select_cmd_callback
	.cfi_endproc

	.globl	context_pattern_select_cmd_callback
	.align	16, 0x90
	.type	context_pattern_select_cmd_callback,@function
context_pattern_select_cmd_callback:    # @context_pattern_select_cmd_callback
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB27_2
# BB#1:                                 # %if.then
	jmp	.LBB27_3
.LBB27_2:                               # %if.end
	movl	-12(%rbp), %edi
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	480(%rax), %rax
	movl	%edi, -36(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_data_factory_get_container
	movl	-36(%rbp), %edi         # 4-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	context_select_object
.LBB27_3:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	context_pattern_select_cmd_callback, .Lfunc_end27-context_pattern_select_cmd_callback
	.cfi_endproc

	.globl	context_palette_select_cmd_callback
	.align	16, 0x90
	.type	context_palette_select_cmd_callback,@function
context_palette_select_cmd_callback:    # @context_palette_select_cmd_callback
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB28_2
# BB#1:                                 # %if.then
	jmp	.LBB28_3
.LBB28_2:                               # %if.end
	movl	-12(%rbp), %edi
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	496(%rax), %rax
	movl	%edi, -36(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_data_factory_get_container
	movl	-36(%rbp), %edi         # 4-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	context_select_object
.LBB28_3:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	context_palette_select_cmd_callback, .Lfunc_end28-context_palette_select_cmd_callback
	.cfi_endproc

	.globl	context_gradient_select_cmd_callback
	.align	16, 0x90
	.type	context_gradient_select_cmd_callback,@function
context_gradient_select_cmd_callback:   # @context_gradient_select_cmd_callback
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB29_2
# BB#1:                                 # %if.then
	jmp	.LBB29_3
.LBB29_2:                               # %if.end
	movl	-12(%rbp), %edi
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	488(%rax), %rax
	movl	%edi, -36(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_data_factory_get_container
	movl	-36(%rbp), %edi         # 4-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	context_select_object
.LBB29_3:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	context_gradient_select_cmd_callback, .Lfunc_end29-context_gradient_select_cmd_callback
	.cfi_endproc

	.globl	context_font_select_cmd_callback
	.align	16, 0x90
	.type	context_font_select_cmd_callback,@function
context_font_select_cmd_callback:       # @context_font_select_cmd_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB30_2
# BB#1:                                 # %if.then
	jmp	.LBB30_3
.LBB30_2:                               # %if.end
	movl	-12(%rbp), %edi
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	456(%rax), %rdx
	callq	context_select_object
.LBB30_3:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	context_font_select_cmd_callback, .Lfunc_end30-context_font_select_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI31_0:
	.quad	4607182418800017408     # double 1
.LCPI31_1:
	.quad	4617315517961601024     # double 5
.LCPI31_2:
	.quad	4626322717216342016     # double 20
.LCPI31_3:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.globl	context_brush_spacing_cmd_callback
	.align	16, 0x90
	.type	context_brush_spacing_cmd_callback,@function
context_brush_spacing_cmd_callback:     # @context_brush_spacing_cmd_callback
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB31_2
# BB#1:                                 # %if.then
	jmp	.LBB31_12
.LBB31_2:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_brush
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_brush_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB31_4
# BB#3:                                 # %if.then.4
	movl	$0, -60(%rbp)
	jmp	.LBB31_9
.LBB31_4:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB31_7
# BB#5:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB31_7
# BB#6:                                 # %if.then.7
	movl	$1, -60(%rbp)
	jmp	.LBB31_8
.LBB31_7:                               # %if.else.8
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB31_8:                               # %if.end.10
	jmp	.LBB31_9
.LBB31_9:                               # %if.end.11
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB31_12
# BB#10:                                # %land.lhs.true.13
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_is_writable
	cmpl	$0, %eax
	je	.LBB31_12
# BB#11:                                # %if.then.18
	movl	-12(%rbp), %edi
	movq	-24(%rbp), %rax
	movl	%edi, -76(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	callq	action_data_get_display
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.2, %rcx
	movsd	.LCPI31_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI31_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI31_2, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI31_3, %xmm3        # xmm3 = mem[0],zero
	xorl	%r8d, %r8d
	movl	-76(%rbp), %edi         # 4-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	action_select_property
.LBB31_12:                              # %if.end.21
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	context_brush_spacing_cmd_callback, .Lfunc_end31-context_brush_spacing_cmd_callback
	.cfi_endproc

	.globl	context_brush_shape_cmd_callback
	.align	16, 0x90
	.type	context_brush_shape_cmd_callback,@function
context_brush_shape_cmd_callback:       # @context_brush_shape_cmd_callback
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB32_2
# BB#1:                                 # %if.then
	jmp	.LBB32_15
.LBB32_2:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_brush
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_brush_generated_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB32_4
# BB#3:                                 # %if.then.4
	movl	$0, -60(%rbp)
	jmp	.LBB32_9
.LBB32_4:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB32_7
# BB#5:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB32_7
# BB#6:                                 # %if.then.7
	movl	$1, -60(%rbp)
	jmp	.LBB32_8
.LBB32_7:                               # %if.else.8
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB32_8:                               # %if.end.10
	jmp	.LBB32_9
.LBB32_9:                               # %if.end.11
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB32_15
# BB#10:                                # %land.lhs.true.13
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_is_writable
	cmpl	$0, %eax
	je	.LBB32_15
# BB#11:                                # %if.then.18
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_brush_generated_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_brush_generated_set_shape
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	gimp_brush_generated_shape_get_type
	xorl	%esi, %esi
	movl	%esi, %edi
	leaq	-88(%rbp), %r8
	movl	-12(%rbp), %esi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-120(%rbp), %r9         # 8-byte Reload
	callq	gimp_enum_get_value
	movq	-24(%rbp), %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	action_data_get_display
	movq	%rax, -80(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB32_14
# BB#12:                                # %land.lhs.true.29
	cmpq	$0, -80(%rbp)
	je	.LBB32_14
# BB#13:                                # %if.then.31
	movl	$80, %eax
	movl	%eax, %esi
	movq	-80(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-88(%rbp), %rcx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	action_message
.LBB32_14:                              # %if.end.34
	jmp	.LBB32_15
.LBB32_15:                              # %if.end.35
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	context_brush_shape_cmd_callback, .Lfunc_end32-context_brush_shape_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI33_0:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI33_1:
	.quad	4607182418800017408     # double 1
.LCPI33_2:
	.quad	4661014508095930368     # double 4000
.LCPI33_3:
	.quad	4621819117588971520     # double 10
.LCPI33_4:
	.quad	4587366580439587226     # double 0.050000000000000003
	.text
	.globl	context_brush_radius_cmd_callback
	.align	16, 0x90
	.type	context_brush_radius_cmd_callback,@function
context_brush_radius_cmd_callback:      # @context_brush_radius_cmd_callback
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB33_2
# BB#1:                                 # %if.then
	jmp	.LBB33_19
.LBB33_2:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_brush
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_brush_generated_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB33_4
# BB#3:                                 # %if.then.4
	movl	$0, -60(%rbp)
	jmp	.LBB33_9
.LBB33_4:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB33_7
# BB#5:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB33_7
# BB#6:                                 # %if.then.7
	movl	$1, -60(%rbp)
	jmp	.LBB33_8
.LBB33_7:                               # %if.else.8
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB33_8:                               # %if.end.10
	jmp	.LBB33_9
.LBB33_9:                               # %if.end.11
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB33_19
# BB#10:                                # %land.lhs.true.13
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_is_writable
	cmpl	$0, %eax
	je	.LBB33_19
# BB#11:                                # %if.then.18
	movq	-40(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_brush_generated_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movq	%rax, %rdi
	callq	gimp_brush_generated_get_radius
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -88(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, %edx
	addl	$11, %edx
	subl	$2, %edx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	movl	%edx, -120(%rbp)        # 4-byte Spill
	jb	.LBB33_12
	jmp	.LBB33_20
.LBB33_20:                              # %if.then.18
	movl	-116(%rbp), %eax        # 4-byte Reload
	addl	$5, %eax
	subl	$1, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	ja	.LBB33_13
	jmp	.LBB33_12
.LBB33_12:                              # %sw.bb
	movsd	.LCPI33_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)
	jmp	.LBB33_16
.LBB33_13:                              # %sw.default
	movsd	.LCPI33_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)
	ucomisd	-88(%rbp), %xmm0
	jbe	.LBB33_15
# BB#14:                                # %if.then.28
	movsd	.LCPI33_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
.LBB33_15:                              # %if.end.29
	jmp	.LBB33_16
.LBB33_16:                              # %sw.epilog
	movsd	.LCPI33_2, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI33_0, %xmm4        # xmm4 = mem[0],zero
	movsd	.LCPI33_1, %xmm5        # xmm5 = mem[0],zero
	movsd	.LCPI33_3, %xmm6        # xmm6 = mem[0],zero
	movsd	.LCPI33_4, %xmm7        # xmm7 = mem[0],zero
	xorl	%esi, %esi
	movl	-12(%rbp), %edi
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	action_select_value
	movsd	%xmm0, -88(%rbp)
	movq	-72(%rbp), %rdi
	cvtsd2ss	-88(%rbp), %xmm0
	callq	gimp_brush_generated_set_radius
	movq	-24(%rbp), %rdi
	movss	%xmm0, -128(%rbp)       # 4-byte Spill
	callq	action_data_get_display
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB33_18
# BB#17:                                # %if.then.35
	movq	-24(%rbp), %rdi
	callq	action_data_get_display
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gettext
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$1, %al
	callq	action_message
.LBB33_18:                              # %if.end.39
	jmp	.LBB33_19
.LBB33_19:                              # %if.end.40
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	context_brush_radius_cmd_callback, .Lfunc_end33-context_brush_radius_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI34_0:
	.quad	4607182418800017408     # double 1
.LCPI34_1:
	.quad	4616189618054758400     # double 4
.LCPI34_2:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.globl	context_brush_spikes_cmd_callback
	.align	16, 0x90
	.type	context_brush_spikes_cmd_callback,@function
context_brush_spikes_cmd_callback:      # @context_brush_spikes_cmd_callback
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB34_2
# BB#1:                                 # %if.then
	jmp	.LBB34_12
.LBB34_2:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_brush
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_brush_generated_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB34_4
# BB#3:                                 # %if.then.4
	movl	$0, -60(%rbp)
	jmp	.LBB34_9
.LBB34_4:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB34_7
# BB#5:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB34_7
# BB#6:                                 # %if.then.7
	movl	$1, -60(%rbp)
	jmp	.LBB34_8
.LBB34_7:                               # %if.else.8
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB34_8:                               # %if.end.10
	jmp	.LBB34_9
.LBB34_9:                               # %if.end.11
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB34_12
# BB#10:                                # %land.lhs.true.13
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_is_writable
	cmpl	$0, %eax
	je	.LBB34_12
# BB#11:                                # %if.then.18
	movl	-12(%rbp), %edi
	movq	-24(%rbp), %rax
	movl	%edi, -76(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	callq	action_data_get_display
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rcx
	xorps	%xmm0, %xmm0
	movsd	.LCPI34_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI34_1, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI34_2, %xmm3        # xmm3 = mem[0],zero
	xorl	%r8d, %r8d
	movl	-76(%rbp), %edi         # 4-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	action_select_property
.LBB34_12:                              # %if.end.21
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	context_brush_spikes_cmd_callback, .Lfunc_end34-context_brush_spikes_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI35_0:
	.quad	4562254508917369340     # double 0.001
.LCPI35_1:
	.quad	4576918229304087675     # double 0.01
.LCPI35_2:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.globl	context_brush_hardness_cmd_callback
	.align	16, 0x90
	.type	context_brush_hardness_cmd_callback,@function
context_brush_hardness_cmd_callback:    # @context_brush_hardness_cmd_callback
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB35_2
# BB#1:                                 # %if.then
	jmp	.LBB35_12
.LBB35_2:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_brush
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_brush_generated_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB35_4
# BB#3:                                 # %if.then.4
	movl	$0, -60(%rbp)
	jmp	.LBB35_9
.LBB35_4:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB35_7
# BB#5:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB35_7
# BB#6:                                 # %if.then.7
	movl	$1, -60(%rbp)
	jmp	.LBB35_8
.LBB35_7:                               # %if.else.8
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB35_8:                               # %if.end.10
	jmp	.LBB35_9
.LBB35_9:                               # %if.end.11
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB35_12
# BB#10:                                # %land.lhs.true.13
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_is_writable
	cmpl	$0, %eax
	je	.LBB35_12
# BB#11:                                # %if.then.18
	movl	-12(%rbp), %edi
	movq	-24(%rbp), %rax
	movl	%edi, -76(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	callq	action_data_get_display
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rcx
	movsd	.LCPI35_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI35_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI35_2, %xmm2        # xmm2 = mem[0],zero
	xorl	%r8d, %r8d
	movl	-76(%rbp), %edi         # 4-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movsd	%xmm2, -96(%rbp)        # 8-byte Spill
	movsd	-96(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	action_select_property
.LBB35_12:                              # %if.end.21
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	context_brush_hardness_cmd_callback, .Lfunc_end35-context_brush_hardness_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI36_0:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI36_1:
	.quad	4607182418800017408     # double 1
.LCPI36_2:
	.quad	4616189618054758400     # double 4
	.text
	.globl	context_brush_aspect_cmd_callback
	.align	16, 0x90
	.type	context_brush_aspect_cmd_callback,@function
context_brush_aspect_cmd_callback:      # @context_brush_aspect_cmd_callback
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB36_2
# BB#1:                                 # %if.then
	jmp	.LBB36_12
.LBB36_2:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_brush
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_brush_generated_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB36_4
# BB#3:                                 # %if.then.4
	movl	$0, -60(%rbp)
	jmp	.LBB36_9
.LBB36_4:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB36_7
# BB#5:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB36_7
# BB#6:                                 # %if.then.7
	movl	$1, -60(%rbp)
	jmp	.LBB36_8
.LBB36_7:                               # %if.else.8
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB36_8:                               # %if.end.10
	jmp	.LBB36_9
.LBB36_9:                               # %if.end.11
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB36_12
# BB#10:                                # %land.lhs.true.13
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_is_writable
	cmpl	$0, %eax
	je	.LBB36_12
# BB#11:                                # %if.then.18
	movl	-12(%rbp), %edi
	movq	-24(%rbp), %rax
	movl	%edi, -76(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	callq	action_data_get_display
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rcx
	movsd	.LCPI36_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI36_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI36_2, %xmm2        # xmm2 = mem[0],zero
	xorl	%r8d, %r8d
	movl	-76(%rbp), %edi         # 4-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movsd	-96(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	action_select_property
.LBB36_12:                              # %if.end.21
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	context_brush_aspect_cmd_callback, .Lfunc_end36-context_brush_aspect_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI37_0:
	.quad	4640537203540230144     # double 180
.LCPI37_1:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI37_2:
	.quad	4607182418800017408     # double 1
.LCPI37_3:
	.quad	4624633867356078080     # double 15
.LCPI37_4:
	.quad	4636033603912859648     # double 90
	.text
	.globl	context_brush_angle_cmd_callback
	.align	16, 0x90
	.type	context_brush_angle_cmd_callback,@function
context_brush_angle_cmd_callback:       # @context_brush_angle_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp113:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB37_2
# BB#1:                                 # %if.then
	jmp	.LBB37_20
.LBB37_2:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_brush
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_brush_generated_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB37_4
# BB#3:                                 # %if.then.4
	movl	$0, -60(%rbp)
	jmp	.LBB37_9
.LBB37_4:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB37_7
# BB#5:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB37_7
# BB#6:                                 # %if.then.7
	movl	$1, -60(%rbp)
	jmp	.LBB37_8
.LBB37_7:                               # %if.else.8
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB37_8:                               # %if.end.10
	jmp	.LBB37_9
.LBB37_9:                               # %if.end.11
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB37_20
# BB#10:                                # %land.lhs.true.13
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_is_writable
	cmpl	$0, %eax
	je	.LBB37_20
# BB#11:                                # %if.then.18
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_brush_generated_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_brush_generated_get_angle
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -88(%rbp)
	cmpl	$-2, -12(%rbp)
	jne	.LBB37_13
# BB#12:                                # %if.then.27
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -88(%rbp)
	jmp	.LBB37_17
.LBB37_13:                              # %if.else.28
	cmpl	$-3, -12(%rbp)
	jne	.LBB37_15
# BB#14:                                # %if.then.31
	movsd	.LCPI37_4, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
	jmp	.LBB37_16
.LBB37_15:                              # %if.else.32
	xorps	%xmm0, %xmm0
	movsd	.LCPI37_0, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI37_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI37_2, %xmm5        # xmm5 = mem[0],zero
	movsd	.LCPI37_3, %xmm6        # xmm6 = mem[0],zero
	movl	$1, %esi
	movl	-12(%rbp), %edi
	movsd	-88(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-112(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -120(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-120(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-120(%rbp), %xmm7       # 8-byte Reload
                                        # xmm7 = mem[0],zero
	callq	action_select_value
	movsd	%xmm0, -88(%rbp)
.LBB37_16:                              # %if.end.34
	jmp	.LBB37_17
.LBB37_17:                              # %if.end.35
	movq	-72(%rbp), %rdi
	cvtsd2ss	-88(%rbp), %xmm0
	callq	gimp_brush_generated_set_angle
	movq	-24(%rbp), %rdi
	movss	%xmm0, -124(%rbp)       # 4-byte Spill
	callq	action_data_get_display
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB37_19
# BB#18:                                # %if.then.40
	movq	-24(%rbp), %rdi
	callq	action_data_get_display
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gettext
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$1, %al
	callq	action_message
.LBB37_19:                              # %if.end.44
	jmp	.LBB37_20
.LBB37_20:                              # %if.end.45
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	context_brush_angle_cmd_callback, .Lfunc_end37-context_brush_angle_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	context_get_color_index,@function
context_get_color_index:                # @context_get_color_index
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp114:
	.cfi_def_cfa_offset 16
.Ltmp115:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp116:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$0, -8(%rbp)
	je	.LBB38_6
# BB#1:                                 # %if.then
	callq	context_get_colormap_editor
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB38_5
# BB#2:                                 # %if.then.2
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_colormap_editor_get_index
	movl	%eax, -36(%rbp)
	cmpl	$-1, -36(%rbp)
	je	.LBB38_4
# BB#3:                                 # %if.then.4
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB38_13
.LBB38_4:                               # %if.end
	jmp	.LBB38_5
.LBB38_5:                               # %if.end.5
	jmp	.LBB38_6
.LBB38_6:                               # %if.end.6
	cmpl	$0, -12(%rbp)
	je	.LBB38_12
# BB#7:                                 # %if.then.8
	callq	context_get_palette_editor
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB38_11
# BB#8:                                 # %if.then.12
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_palette_editor_get_index
	movl	%eax, -52(%rbp)
	cmpl	$-1, -52(%rbp)
	je	.LBB38_10
# BB#9:                                 # %if.then.16
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB38_13
.LBB38_10:                              # %if.end.17
	jmp	.LBB38_11
.LBB38_11:                              # %if.end.18
	jmp	.LBB38_12
.LBB38_12:                              # %if.end.19
	movl	$0, -4(%rbp)
.LBB38_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	context_get_color_index, .Lfunc_end38-context_get_color_index
	.cfi_endproc

	.align	16, 0x90
	.type	context_max_color_index,@function
context_max_color_index:                # @context_max_color_index
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp117:
	.cfi_def_cfa_offset 16
.Ltmp118:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp119:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -8(%rbp)
	je	.LBB39_6
# BB#1:                                 # %if.then
	callq	context_get_colormap_editor
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB39_5
# BB#2:                                 # %if.then.2
	movq	-24(%rbp), %rdi
	callq	gimp_colormap_editor_max_index
	movl	%eax, -28(%rbp)
	cmpl	$-1, -28(%rbp)
	je	.LBB39_4
# BB#3:                                 # %if.then.4
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB39_13
.LBB39_4:                               # %if.end
	jmp	.LBB39_5
.LBB39_5:                               # %if.end.5
	jmp	.LBB39_6
.LBB39_6:                               # %if.end.6
	cmpl	$0, -12(%rbp)
	je	.LBB39_12
# BB#7:                                 # %if.then.8
	callq	context_get_palette_editor
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB39_11
# BB#8:                                 # %if.then.12
	movq	-40(%rbp), %rdi
	callq	gimp_palette_editor_max_index
	movl	%eax, -44(%rbp)
	cmpl	$-1, -44(%rbp)
	je	.LBB39_10
# BB#9:                                 # %if.then.16
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB39_13
.LBB39_10:                              # %if.end.17
	jmp	.LBB39_11
.LBB39_11:                              # %if.end.18
	jmp	.LBB39_12
.LBB39_12:                              # %if.end.19
	movl	$0, -4(%rbp)
.LBB39_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	context_max_color_index, .Lfunc_end39-context_max_color_index
	.cfi_endproc

	.align	16, 0x90
	.type	context_set_color_index,@function
context_set_color_index:                # @context_set_color_index
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp120:
	.cfi_def_cfa_offset 16
.Ltmp121:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp122:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB40_5
# BB#1:                                 # %if.then
	callq	context_get_colormap_editor
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB40_4
# BB#2:                                 # %land.lhs.true
	movq	-32(%rbp), %rdi
	movl	-8(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	gimp_colormap_editor_set_index
	cmpl	$0, %eax
	je	.LBB40_4
# BB#3:                                 # %if.then.4
	movl	$1, -4(%rbp)
	jmp	.LBB40_11
.LBB40_4:                               # %if.end
	jmp	.LBB40_5
.LBB40_5:                               # %if.end.5
	cmpl	$0, -16(%rbp)
	je	.LBB40_10
# BB#6:                                 # %if.then.7
	callq	context_get_palette_editor
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB40_9
# BB#7:                                 # %land.lhs.true.11
	movq	-40(%rbp), %rdi
	movl	-8(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	gimp_palette_editor_set_index
	cmpl	$0, %eax
	je	.LBB40_9
# BB#8:                                 # %if.then.14
	movl	$1, -4(%rbp)
	jmp	.LBB40_11
.LBB40_9:                               # %if.end.15
	jmp	.LBB40_10
.LBB40_10:                              # %if.end.16
	movl	$0, -4(%rbp)
.LBB40_11:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	context_set_color_index, .Lfunc_end40-context_set_color_index
	.cfi_endproc

	.align	16, 0x90
	.type	context_get_colormap_editor,@function
context_get_colormap_editor:            # @context_get_colormap_editor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp123:
	.cfi_def_cfa_offset 16
.Ltmp124:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp125:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
# BB#1:                                 # %do.body
	callq	gimp_dialog_factory_get_singleton
	movq	%rax, -24(%rbp)
	callq	gimp_dialog_factory_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB41_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB41_8
.LBB41_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB41_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB41_6
# BB#5:                                 # %if.then.4
	movl	$1, -36(%rbp)
	jmp	.LBB41_7
.LBB41_6:                               # %if.else.5
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB41_7:                               # %if.end
	jmp	.LBB41_8
.LBB41_8:                               # %if.end.7
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB41_10
# BB#9:                                 # %if.then.9
	jmp	.LBB41_11
.LBB41_10:                              # %if.else.10
	movabsq	$.L.str.9, %rdi
	movabsq	$.L__func__.context_get_colormap_editor, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB41_15
.LBB41_11:                              # %if.end.11
	jmp	.LBB41_12
.LBB41_12:                              # %do.end
	callq	gimp_dialog_factory_get_singleton
	movabsq	$.L.str.11, %rsi
	movq	%rax, %rdi
	callq	gimp_dialog_factory_find_widget
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB41_14
# BB#13:                                # %if.then.15
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_colormap_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
	jmp	.LBB41_15
.LBB41_14:                              # %if.end.21
	movq	$0, -8(%rbp)
.LBB41_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	context_get_colormap_editor, .Lfunc_end41-context_get_colormap_editor
	.cfi_endproc

	.align	16, 0x90
	.type	context_get_palette_editor,@function
context_get_palette_editor:             # @context_get_palette_editor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
.Ltmp127:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp128:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
# BB#1:                                 # %do.body
	callq	gimp_dialog_factory_get_singleton
	movq	%rax, -24(%rbp)
	callq	gimp_dialog_factory_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB42_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB42_8
.LBB42_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB42_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB42_6
# BB#5:                                 # %if.then.4
	movl	$1, -36(%rbp)
	jmp	.LBB42_7
.LBB42_6:                               # %if.else.5
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB42_7:                               # %if.end
	jmp	.LBB42_8
.LBB42_8:                               # %if.end.7
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB42_10
# BB#9:                                 # %if.then.9
	jmp	.LBB42_11
.LBB42_10:                              # %if.else.10
	movabsq	$.L.str.9, %rdi
	movabsq	$.L__func__.context_get_palette_editor, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB42_15
.LBB42_11:                              # %if.end.11
	jmp	.LBB42_12
.LBB42_12:                              # %do.end
	callq	gimp_dialog_factory_get_singleton
	movabsq	$.L.str.12, %rsi
	movq	%rax, %rdi
	callq	gimp_dialog_factory_find_widget
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB42_14
# BB#13:                                # %if.then.15
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_palette_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
	jmp	.LBB42_15
.LBB42_14:                              # %if.end.21
	movq	$0, -8(%rbp)
.LBB42_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	context_get_palette_editor, .Lfunc_end42-context_get_palette_editor
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"opacity"
	.size	.L.str, 8

	.type	paint_modes,@object     # @paint_modes
	.section	.rodata,"a",@progbits
	.align	16
paint_modes:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	22                      # 0x16
	.long	3                       # 0x3
	.long	15                      # 0xf
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	16                      # 0x10
	.long	17                      # 0x11
	.long	18                      # 0x12
	.long	19                      # 0x13
	.long	20                      # 0x14
	.long	21                      # 0x15
	.long	6                       # 0x6
	.long	7                       # 0x7
	.long	8                       # 0x8
	.long	9                       # 0x9
	.long	10                      # 0xa
	.long	11                      # 0xb
	.long	12                      # 0xc
	.long	13                      # 0xd
	.long	14                      # 0xe
	.size	paint_modes, 92

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Paint Mode: %s"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"spacing"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Brush Shape: %s"
	.size	.L.str.3, 16

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Brush Radius: %2.2f"
	.size	.L.str.4, 20

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"spikes"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"hardness"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"aspect-ratio"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Brush Angle: %2.2f"
	.size	.L.str.8, 19

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Gimp-Actions"
	.size	.L.str.9, 13

	.type	.L__func__.context_get_colormap_editor,@object # @__func__.context_get_colormap_editor
.L__func__.context_get_colormap_editor:
	.asciz	"context_get_colormap_editor"
	.size	.L__func__.context_get_colormap_editor, 28

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"GIMP_IS_DIALOG_FACTORY (gimp_dialog_factory_get_singleton ())"
	.size	.L.str.10, 62

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-indexed-palette"
	.size	.L.str.11, 21

	.type	.L__func__.context_get_palette_editor,@object # @__func__.context_get_palette_editor
.L__func__.context_get_palette_editor:
	.asciz	"context_get_palette_editor"
	.size	.L__func__.context_get_palette_editor, 27

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp-palette-editor"
	.size	.L.str.12, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
