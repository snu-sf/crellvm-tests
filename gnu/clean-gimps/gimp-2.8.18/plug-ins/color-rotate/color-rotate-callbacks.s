	.text
	.file	"color-rotate-callbacks.bc"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1050868099              # float 0.318309873
.LCPI0_1:
	.long	1065353216              # float 1
.LCPI0_2:
	.long	1113927393              # float 57.2957802
.LCPI0_3:
	.long	3212836864              # float -1
	.text
	.globl	rcm_units_factor
	.align	16, 0x90
	.type	rcm_units_factor,@function
rcm_units_factor:                       # @rcm_units_factor
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
	movl	%edi, -8(%rbp)
	movl	%edi, %eax
	subl	$2, %edi
	movl	%eax, -12(%rbp)         # 4-byte Spill
	movl	%edi, -16(%rbp)         # 4-byte Spill
	je	.LBB0_1
	jmp	.LBB0_6
.LBB0_6:                                # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -20(%rbp)         # 4-byte Spill
	je	.LBB0_2
	jmp	.LBB0_7
.LBB0_7:                                # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	je	.LBB0_3
	jmp	.LBB0_4
.LBB0_1:                                # %sw.bb
	movss	.LCPI0_2, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	jmp	.LBB0_5
.LBB0_2:                                # %sw.bb.1
	movss	.LCPI0_1, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	jmp	.LBB0_5
.LBB0_3:                                # %sw.bb.2
	movss	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	jmp	.LBB0_5
.LBB0_4:                                # %sw.default
	movss	.LCPI0_3, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
.LBB0_5:                                # %return
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	popq	%rbp
	retq
.Lfunc_end0:
	.size	rcm_units_factor, .Lfunc_end0-rcm_units_factor
	.cfi_endproc

	.globl	rcm_units_string
	.align	16, 0x90
	.type	rcm_units_string,@function
rcm_units_string:                       # @rcm_units_string
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
	movl	%edi, -12(%rbp)
	movl	%edi, %eax
	subl	$2, %edi
	movl	%eax, -16(%rbp)         # 4-byte Spill
	movl	%edi, -20(%rbp)         # 4-byte Spill
	je	.LBB1_1
	jmp	.LBB1_6
.LBB1_6:                                # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	je	.LBB1_2
	jmp	.LBB1_7
.LBB1_7:                                # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_4
.LBB1_1:                                # %sw.bb
	movabsq	$.L.str, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_5
.LBB1_2:                                # %sw.bb.1
	movabsq	$.L.str.1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_5
.LBB1_3:                                # %sw.bb.2
	movabsq	$.L.str.2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_5
.LBB1_4:                                # %sw.default
	movabsq	$.L.str.3, %rax
	movq	%rax, -8(%rbp)
.LBB1_5:                                # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	rcm_units_string, .Lfunc_end1-rcm_units_string
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4562254508917369340     # double 0.001
	.text
	.globl	rcm_360_degrees
	.align	16, 0x90
	.type	rcm_360_degrees,@function
rcm_360_degrees:                        # @rcm_360_degrees
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rdi
	callq	gtk_widget_queue_draw
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rsi
	movq	152(%rsi), %rsi
	cvtss2sd	(%rsi), %xmm1
	movq	-16(%rbp), %rsi
	movq	152(%rsi), %rsi
	cvtsi2sdl	8(%rsi), %xmm2
	mulsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movq	-16(%rbp), %rsi
	movq	152(%rsi), %rsi
	movss	%xmm0, 4(%rsi)
	movq	Current+64, %rsi
	movq	24(%rsi), %rdi
	callq	rcm_render_preview
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	rcm_360_degrees, .Lfunc_end2-rcm_360_degrees
	.cfi_endproc

	.globl	rcm_cw_ccw
	.align	16, 0x90
	.type	rcm_cw_ccw,@function
rcm_cw_ccw:                             # @rcm_cw_ccw
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
	subq	$16, %rsp
	movabsq	$.L.str.4, %rax
	movabsq	$.L.str.7, %rcx
	movl	$1, %r8d
	xorl	%edx, %edx
	movl	%edx, %r9d
	movabsq	$.L.str.6, %r10
	movabsq	$.L.str.5, %r11
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	152(%rsi), %rsi
	imull	$-1, 8(%rsi), %edx
	movl	%edx, 8(%rsi)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	152(%rdi), %rdi
	cmpl	$0, 8(%rdi)
	cmovgq	%r11, %r10
	movq	%rsi, %rdi
	movq	%rax, %rsi
	movq	%r10, %rdx
	movb	$0, %al
	callq	g_object_set
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	rcm_a_to_b
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	rcm_cw_ccw, .Lfunc_end3-rcm_cw_ccw
	.cfi_endproc

	.globl	rcm_a_to_b
	.align	16, 0x90
	.type	rcm_a_to_b,@function
rcm_a_to_b:                             # @rcm_a_to_b
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rdi
	callq	gtk_widget_queue_draw
	movq	-16(%rbp), %rsi
	movq	152(%rsi), %rsi
	movss	(%rsi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -20(%rbp)
	movq	-16(%rbp), %rsi
	movq	152(%rsi), %rsi
	movss	4(%rsi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rsi
	movq	152(%rsi), %rsi
	movss	%xmm0, (%rsi)
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rsi
	movq	152(%rsi), %rsi
	movss	%xmm0, 4(%rsi)
	movq	Current+64, %rsi
	movq	24(%rsi), %rdi
	callq	rcm_render_preview
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	rcm_a_to_b, .Lfunc_end4-rcm_a_to_b
	.cfi_endproc

	.globl	rcm_switch_to_degrees
	.align	16, 0x90
	.type	rcm_switch_to_degrees,@function
rcm_switch_to_degrees:                  # @rcm_switch_to_degrees
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	$2, Current+8
	movq	Current+48, %rax
	movq	104(%rax), %rdi
	movq	Current+48, %rax
	movq	152(%rax), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movq	Current+48, %rax
	movq	112(%rax), %rsi
	callq	rcm_spinbutton_to_degrees
	movq	Current+48, %rax
	movq	120(%rax), %rdi
	movq	Current+48, %rax
	movq	152(%rax), %rax
	movss	4(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movq	Current+48, %rax
	movq	128(%rax), %rsi
	callq	rcm_spinbutton_to_degrees
	movq	Current+40, %rax
	movq	104(%rax), %rdi
	movq	Current+40, %rax
	movq	152(%rax), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movq	Current+40, %rax
	movq	112(%rax), %rsi
	callq	rcm_spinbutton_to_degrees
	movq	Current+40, %rax
	movq	120(%rax), %rdi
	movq	Current+40, %rax
	movq	152(%rax), %rax
	movss	4(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movq	Current+40, %rax
	movq	128(%rax), %rsi
	callq	rcm_spinbutton_to_degrees
	movq	Current+56, %rax
	movq	32(%rax), %rdi
	movq	Current+56, %rax
	movss	20(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	Current+56, %rax
	movq	40(%rax), %rsi
	callq	rcm_spinbutton_to_degrees
.LBB5_2:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	rcm_switch_to_degrees, .Lfunc_end5-rcm_switch_to_degrees
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4645040803167600640     # double 360
.LCPI6_1:
	.quad	4576918229304087675     # double 0.01
.LCPI6_2:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	rcm_spinbutton_to_degrees,@function
rcm_spinbutton_to_degrees:              # @rcm_spinbutton_to_degrees
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_adjustment
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	Current+8, %ecx
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movl	%ecx, %edi
	movss	%xmm0, -52(%rbp)        # 4-byte Spill
	callq	rcm_units_factor
	movss	-52(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	cvtss2sd	%xmm1, %xmm0
	movq	-32(%rbp), %rdi
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_lower
	movq	-32(%rbp), %rdi
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_page_size
	movsd	.LCPI6_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI6_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI6_2, %xmm4         # xmm4 = mem[0],zero
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm5        # 8-byte Reload
                                        # xmm5 = mem[0],zero
	callq	gtk_adjustment_configure
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_spin_button_set_digits
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	Current+8, %edi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	rcm_units_string
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_text
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	rcm_spinbutton_to_degrees, .Lfunc_end6-rcm_spinbutton_to_degrees
	.cfi_endproc

	.globl	rcm_switch_to_radians
	.align	16, 0x90
	.type	rcm_switch_to_radians,@function
rcm_switch_to_radians:                  # @rcm_switch_to_radians
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	je	.LBB7_2
# BB#1:                                 # %if.then
	movl	$3, Current+8
	movq	Current+48, %rax
	movq	104(%rax), %rdi
	movq	Current+48, %rax
	movq	152(%rax), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movq	Current+48, %rax
	movq	112(%rax), %rsi
	callq	rcm_spinbutton_to_radians
	movq	Current+48, %rax
	movq	120(%rax), %rdi
	movq	Current+48, %rax
	movq	152(%rax), %rax
	movss	4(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movq	Current+48, %rax
	movq	128(%rax), %rsi
	callq	rcm_spinbutton_to_radians
	movq	Current+40, %rax
	movq	104(%rax), %rdi
	movq	Current+40, %rax
	movq	152(%rax), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movq	Current+40, %rax
	movq	112(%rax), %rsi
	callq	rcm_spinbutton_to_radians
	movq	Current+40, %rax
	movq	120(%rax), %rdi
	movq	Current+40, %rax
	movq	152(%rax), %rax
	movss	4(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movq	Current+40, %rax
	movq	128(%rax), %rsi
	callq	rcm_spinbutton_to_radians
	movq	Current+56, %rax
	movq	32(%rax), %rdi
	movq	Current+56, %rax
	movss	20(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	Current+56, %rax
	movq	40(%rax), %rsi
	callq	rcm_spinbutton_to_radians
.LBB7_2:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	rcm_switch_to_radians, .Lfunc_end7-rcm_switch_to_radians
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI8_1:
	.quad	4547007122018943789     # double 1.0E-4
.LCPI8_2:
	.quad	4562254508917369340     # double 0.001
	.text
	.align	16, 0x90
	.type	rcm_spinbutton_to_radians,@function
rcm_spinbutton_to_radians:              # @rcm_spinbutton_to_radians
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_adjustment
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	Current+8, %ecx
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movl	%ecx, %edi
	movss	%xmm0, -52(%rbp)        # 4-byte Spill
	callq	rcm_units_factor
	movss	-52(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	cvtss2sd	%xmm1, %xmm0
	movq	-32(%rbp), %rdi
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_lower
	movq	-32(%rbp), %rdi
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_page_size
	movsd	.LCPI8_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI8_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI8_2, %xmm4         # xmm4 = mem[0],zero
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm5        # 8-byte Reload
                                        # xmm5 = mem[0],zero
	callq	gtk_adjustment_configure
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %esi
	movq	%rax, %rdi
	callq	gtk_spin_button_set_digits
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	Current+8, %edi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	rcm_units_string
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_text
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	rcm_spinbutton_to_radians, .Lfunc_end8-rcm_spinbutton_to_radians
	.cfi_endproc

	.globl	rcm_switch_to_radians_over_PI
	.align	16, 0x90
	.type	rcm_switch_to_radians_over_PI,@function
rcm_switch_to_radians_over_PI:          # @rcm_switch_to_radians_over_PI
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	je	.LBB9_2
# BB#1:                                 # %if.then
	movl	$4, Current+8
	movq	Current+48, %rax
	movq	104(%rax), %rdi
	movq	Current+48, %rax
	movq	152(%rax), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movq	Current+48, %rax
	movq	112(%rax), %rsi
	callq	rcm_spinbutton_to_radians_over_PI
	movq	Current+48, %rax
	movq	120(%rax), %rdi
	movq	Current+48, %rax
	movq	152(%rax), %rax
	movss	4(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movq	Current+48, %rax
	movq	128(%rax), %rsi
	callq	rcm_spinbutton_to_radians_over_PI
	movq	Current+40, %rax
	movq	104(%rax), %rdi
	movq	Current+40, %rax
	movq	152(%rax), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movq	Current+40, %rax
	movq	112(%rax), %rsi
	callq	rcm_spinbutton_to_radians_over_PI
	movq	Current+40, %rax
	movq	120(%rax), %rdi
	movq	Current+40, %rax
	movq	152(%rax), %rax
	movss	4(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movq	Current+40, %rax
	movq	128(%rax), %rsi
	callq	rcm_spinbutton_to_radians_over_PI
	movq	Current+56, %rax
	movq	32(%rax), %rdi
	movq	Current+56, %rax
	movss	20(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	Current+56, %rax
	movq	40(%rax), %rsi
	callq	rcm_spinbutton_to_radians_over_PI
.LBB9_2:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	rcm_switch_to_radians_over_PI, .Lfunc_end9-rcm_switch_to_radians_over_PI
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4611686018427387904     # double 2
.LCPI10_1:
	.quad	4547007122018943789     # double 1.0E-4
.LCPI10_2:
	.quad	4562254508917369340     # double 0.001
	.text
	.align	16, 0x90
	.type	rcm_spinbutton_to_radians_over_PI,@function
rcm_spinbutton_to_radians_over_PI:      # @rcm_spinbutton_to_radians_over_PI
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
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_adjustment
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	Current+8, %ecx
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movl	%ecx, %edi
	movss	%xmm0, -52(%rbp)        # 4-byte Spill
	callq	rcm_units_factor
	movss	-52(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	cvtss2sd	%xmm1, %xmm0
	movq	-32(%rbp), %rdi
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_lower
	movq	-32(%rbp), %rdi
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_page_size
	movsd	.LCPI10_0, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI10_1, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI10_2, %xmm4        # xmm4 = mem[0],zero
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm5        # 8-byte Reload
                                        # xmm5 = mem[0],zero
	callq	gtk_adjustment_configure
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %esi
	movq	%rax, %rdi
	callq	gtk_spin_button_set_digits
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	Current+8, %edi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	rcm_units_string
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_text
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	rcm_spinbutton_to_radians_over_PI, .Lfunc_end10-rcm_spinbutton_to_radians_over_PI
	.cfi_endproc

	.globl	rcm_switch_to_gray_to
	.align	16, 0x90
	.type	rcm_switch_to_gray_to,@function
rcm_switch_to_gray_to:                  # @rcm_switch_to_gray_to
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	je	.LBB11_2
# BB#1:                                 # %if.then
	movl	$6, Current+12
	movq	Current+64, %rax
	movq	24(%rax), %rdi
	callq	rcm_render_preview
.LBB11_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	rcm_switch_to_gray_to, .Lfunc_end11-rcm_switch_to_gray_to
	.cfi_endproc

	.globl	rcm_switch_to_gray_from
	.align	16, 0x90
	.type	rcm_switch_to_gray_from,@function
rcm_switch_to_gray_from:                # @rcm_switch_to_gray_from
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	je	.LBB12_2
# BB#1:                                 # %if.then
	movl	$5, Current+12
	movq	Current+64, %rax
	movq	24(%rax), %rdi
	callq	rcm_render_preview
.LBB12_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	rcm_switch_to_gray_from, .Lfunc_end12-rcm_switch_to_gray_from
	.cfi_endproc

	.globl	rcm_preview_as_you_drag
	.align	16, 0x90
	.type	rcm_preview_as_you_drag,@function
rcm_preview_as_you_drag:                # @rcm_preview_as_you_drag
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movl	%eax, Current+4
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	rcm_preview_as_you_drag, .Lfunc_end13-rcm_preview_as_you_drag
	.cfi_endproc

	.globl	rcm_combo_callback
	.align	16, 0x90
	.type	rcm_combo_callback,@function
rcm_combo_callback:                     # @rcm_combo_callback
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-20(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_get_active
	movl	$150, %edx
	movq	Current+16, %rdi
	movq	Current+24, %rsi
	movl	-20(%rbp), %ecx
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	rcm_reduce_image
	movq	%rax, Current+32
	movq	Current+64, %rax
	movq	16(%rax), %rdi
	movq	Current+32, %rax
	movl	(%rax), %esi
	movq	Current+32, %rax
	movl	4(%rax), %edx
	callq	gtk_widget_set_size_request
	movq	Current+64, %rax
	movq	24(%rax), %rdi
	movq	Current+32, %rax
	movl	(%rax), %esi
	movq	Current+32, %rax
	movl	4(%rax), %edx
	callq	gtk_widget_set_size_request
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	rcm_combo_callback, .Lfunc_end14-rcm_combo_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	rcm_expose_event
	.align	16, 0x90
	.type	rcm_expose_event,@function
rcm_expose_event:                       # @rcm_expose_event
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_cairo_create
	movsd	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movsd	-40(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_translate
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	152(%rax), %rsi
	callq	color_rotate_draw_arrows
	movq	-32(%rbp), %rdi
	callq	cairo_destroy
	movl	$1, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	rcm_expose_event, .Lfunc_end15-rcm_expose_event
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4625759767262920704     # double 18
.LCPI16_1:
	.quad	4634204016564240384     # double 64
.LCPI16_2:
	.quad	4598387778419258213     # double 0.26179938779914941
	.text
	.globl	rcm_button_press_event
	.align	16, 0x90
	.type	rcm_button_press_event,@function
rcm_button_press_event:                 # @rcm_button_press_event
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
	subq	$112, %rsp
	movsd	.LCPI16_1, %xmm0        # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	152(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rdx
	movq	152(%rdx), %rdx
	addq	$4, %rdx
	movq	%rdx, -48(%rbp)
	movq	-16(%rbp), %rdx
	movaps	%xmm0, %xmm1
	subsd	32(%rdx), %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movq	-16(%rbp), %rdx
	movsd	24(%rdx), %xmm2         # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, -52(%rbp)        # 4-byte Spill
	movaps	%xmm1, %xmm0
	movss	-52(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	arctg
	callq	angle_mod_2PI
	movsd	.LCPI16_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI16_1, %xmm2        # xmm2 = mem[0],zero
	movss	%xmm0, -28(%rbp)
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rdx
	movss	%xmm0, 160(%rdx)
	movq	-16(%rbp), %rdx
	movsd	32(%rdx), %xmm0         # xmm0 = mem[0],zero
	subsd	%xmm2, %xmm0
	movq	-16(%rbp), %rdx
	movsd	32(%rdx), %xmm3         # xmm3 = mem[0],zero
	subsd	%xmm2, %xmm3
	mulsd	%xmm3, %xmm0
	movq	-16(%rbp), %rdx
	movsd	24(%rdx), %xmm3         # xmm3 = mem[0],zero
	subsd	%xmm2, %xmm3
	movq	-16(%rbp), %rdx
	movsd	24(%rdx), %xmm4         # xmm4 = mem[0],zero
	subsd	%xmm2, %xmm4
	mulsd	%xmm4, %xmm3
	addsd	%xmm3, %xmm0
	movsd	%xmm1, -64(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB16_7
# BB#1:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movq	-48(%rbp), %rax
	movss	(%rax), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movss	-28(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	callq	min_prox
	movsd	.LCPI16_2, %xmm1        # xmm1 = mem[0],zero
	cvtss2sd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB16_7
# BB#2:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	$0, 144(%rax)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	callq	closest
	movq	-24(%rbp), %rsi
	movq	%rax, 136(%rsi)
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	ucomiss	-28(%rbp), %xmm0
	jne	.LBB16_3
	jp	.LBB16_3
	jmp	.LBB16_6
.LBB16_3:                               # %if.then.26
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movss	%xmm0, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_queue_draw
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	152(%rsi), %rsi
	movss	(%rsi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movl	Current+8, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movss	%xmm0, -84(%rbp)        # 4-byte Spill
	callq	rcm_units_factor
	movss	-84(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	cvtss2sd	%xmm1, %xmm0
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	gtk_spin_button_set_value
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	152(%rsi), %rsi
	movss	4(%rsi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movl	Current+8, %edi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movss	%xmm0, -108(%rbp)       # 4-byte Spill
	callq	rcm_units_factor
	movss	-108(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	cvtss2sd	%xmm1, %xmm0
	movq	-104(%rbp), %rdi        # 8-byte Reload
	callq	gtk_spin_button_set_value
	cmpl	$0, Current+4
	je	.LBB16_5
# BB#4:                                 # %if.then.42
	movq	Current+64, %rax
	movq	24(%rax), %rdi
	callq	rcm_render_preview
.LBB16_5:                               # %if.end
	jmp	.LBB16_6
.LBB16_6:                               # %if.end.43
	jmp	.LBB16_8
.LBB16_7:                               # %if.else
	movq	-24(%rbp), %rax
	movl	$1, 144(%rax)
.LBB16_8:                               # %if.end.45
	movl	$1, %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	rcm_button_press_event, .Lfunc_end16-rcm_button_press_event
	.cfi_endproc

	.globl	rcm_release_event
	.align	16, 0x90
	.type	rcm_release_event,@function
rcm_release_event:                      # @rcm_release_event
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	Current+64, %rdx
	movq	24(%rdx), %rdi
	callq	rcm_render_preview
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	rcm_release_event, .Lfunc_end17-rcm_release_event
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4634204016564240384     # double 64
	.text
	.globl	rcm_motion_notify_event
	.align	16, 0x90
	.type	rcm_motion_notify_event,@function
rcm_motion_notify_event:                # @rcm_motion_notify_event
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
	subq	$96, %rsp
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movaps	%xmm0, %xmm1
	subsd	32(%rdx), %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movq	-16(%rbp), %rdx
	movsd	24(%rdx), %xmm2         # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, -36(%rbp)        # 4-byte Spill
	movaps	%xmm1, %xmm0
	movss	-36(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	arctg
	callq	angle_mod_2PI
	xorps	%xmm1, %xmm1
	movss	%xmm0, -28(%rbp)
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rdx
	subss	160(%rdx), %xmm0
	movss	%xmm0, -32(%rbp)
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rdx
	movss	%xmm0, 160(%rdx)
	movss	-32(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jne	.LBB18_1
	jp	.LBB18_1
	jmp	.LBB18_7
.LBB18_1:                               # %if.then
	movq	-24(%rbp), %rax
	cmpl	$0, 144(%rax)
	jne	.LBB18_3
# BB#2:                                 # %if.then.7
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movss	%xmm0, (%rax)
	jmp	.LBB18_4
.LBB18_3:                               # %if.else
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	addss	-32(%rbp), %xmm0
	callq	angle_mod_2PI
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movss	%xmm0, (%rax)
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movss	4(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	addss	-32(%rbp), %xmm0
	callq	angle_mod_2PI
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movss	%xmm0, 4(%rax)
.LBB18_4:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	gtk_widget_queue_draw
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_window
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gdk_window_process_updates
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	152(%rsi), %rsi
	movss	(%rsi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movl	Current+8, %edi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movss	%xmm0, -60(%rbp)        # 4-byte Spill
	callq	rcm_units_factor
	movss	-60(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	cvtss2sd	%xmm1, %xmm0
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	gtk_spin_button_set_value
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	152(%rsi), %rsi
	movss	4(%rsi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movl	Current+8, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movss	%xmm0, -84(%rbp)        # 4-byte Spill
	callq	rcm_units_factor
	movss	-84(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	cvtss2sd	%xmm1, %xmm0
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	gtk_spin_button_set_value
	cmpl	$0, Current+4
	je	.LBB18_6
# BB#5:                                 # %if.then.31
	movq	Current+64, %rax
	movq	24(%rax), %rdi
	callq	rcm_render_preview
.LBB18_6:                               # %if.end.32
	jmp	.LBB18_7
.LBB18_7:                               # %if.end.33
	movq	-16(%rbp), %rdi
	callq	gdk_event_request_motions
	movl	$1, %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	rcm_motion_notify_event, .Lfunc_end18-rcm_motion_notify_event
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	rcm_gray_expose_event
	.align	16, 0x90
	.type	rcm_gray_expose_event,@function
rcm_gray_expose_event:                  # @rcm_gray_expose_event
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_cairo_create
	movsd	.LCPI19_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movsd	-40(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_translate
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movss	20(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movss	24(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	callq	color_rotate_draw_little_circle
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movss	16(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	callq	color_rotate_draw_large_circle
	movq	-32(%rbp), %rdi
	callq	cairo_destroy
	movl	$1, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	rcm_gray_expose_event, .Lfunc_end19-rcm_gray_expose_event
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_0:
	.quad	4607182418800017408     # double 1
.LCPI20_1:
	.quad	4633641066610819072     # double 60
.LCPI20_2:
	.quad	4613937818241073152     # double 3
.LCPI20_3:
	.quad	4634063279075885056     # double 63
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI20_4:
	.long	1065353216              # float 1
	.text
	.globl	rcm_gray_button_press_event
	.align	16, 0x90
	.type	rcm_gray_button_press_event,@function
rcm_gray_button_press_event:            # @rcm_gray_button_press_event
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
	subq	$80, %rsp
	movsd	.LCPI20_2, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI20_3, %xmm1        # xmm1 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movsd	24(%rdx), %xmm2         # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdx
	subsd	32(%rdx), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -32(%rbp)
	cvtsi2ssl	-32(%rbp), %xmm0
	cvtsi2ssl	-28(%rbp), %xmm1
	callq	arctg
	callq	angle_mod_2PI
	movsd	.LCPI20_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI20_1, %xmm2        # xmm2 = mem[0],zero
	movq	-24(%rbp), %rdx
	movss	%xmm0, 20(%rdx)
	movl	-28(%rbp), %eax
	imull	-28(%rbp), %eax
	movl	-32(%rbp), %ecx
	imull	-32(%rbp), %ecx
	addl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm2, -40(%rbp)        # 8-byte Spill
	movsd	%xmm1, -48(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	-40(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-24(%rbp), %rdx
	movss	%xmm0, 24(%rdx)
	movq	-24(%rbp), %rdx
	cvtss2sd	24(%rdx), %xmm0
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	ucomisd	%xmm2, %xmm0
	jbe	.LBB20_2
# BB#1:                                 # %if.then
	movss	.LCPI20_4, %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movss	%xmm0, 24(%rax)
.LBB20_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_queue_draw
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movss	20(%rsi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movl	Current+8, %edi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movss	%xmm0, -68(%rbp)        # 4-byte Spill
	callq	rcm_units_factor
	movss	-68(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	cvtss2sd	%xmm1, %xmm0
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	gtk_spin_button_set_value
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	cvtss2sd	24(%rsi), %xmm0
	movq	%rax, %rdi
	callq	gtk_spin_button_set_value
	cmpl	$0, Current+4
	je	.LBB20_4
# BB#3:                                 # %if.then.28
	movq	Current+64, %rax
	movq	24(%rax), %rdi
	callq	rcm_render_preview
.LBB20_4:                               # %if.end.29
	movl	$1, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	rcm_gray_button_press_event, .Lfunc_end20-rcm_gray_button_press_event
	.cfi_endproc

	.globl	rcm_gray_release_event
	.align	16, 0x90
	.type	rcm_gray_release_event,@function
rcm_gray_release_event:                 # @rcm_gray_release_event
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	Current+64, %rdx
	movq	24(%rdx), %rdi
	callq	rcm_render_preview
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	rcm_gray_release_event, .Lfunc_end21-rcm_gray_release_event
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI22_0:
	.quad	4607182418800017408     # double 1
.LCPI22_1:
	.quad	4633641066610819072     # double 60
.LCPI22_2:
	.quad	4613937818241073152     # double 3
.LCPI22_3:
	.quad	4634063279075885056     # double 63
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI22_4:
	.long	1065353216              # float 1
	.text
	.globl	rcm_gray_motion_notify_event
	.align	16, 0x90
	.type	rcm_gray_motion_notify_event,@function
rcm_gray_motion_notify_event:           # @rcm_gray_motion_notify_event
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdi
	callq	gtk_widget_queue_draw
	movsd	.LCPI22_2, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI22_3, %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rbp), %rdx
	movsd	24(%rdx), %xmm2         # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdx
	subsd	32(%rdx), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -32(%rbp)
	cvtsi2ssl	-32(%rbp), %xmm0
	cvtsi2ssl	-28(%rbp), %xmm1
	callq	arctg
	callq	angle_mod_2PI
	movsd	.LCPI22_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI22_1, %xmm2        # xmm2 = mem[0],zero
	movq	-24(%rbp), %rdx
	movss	%xmm0, 20(%rdx)
	movl	-28(%rbp), %eax
	imull	-28(%rbp), %eax
	movl	-32(%rbp), %ecx
	imull	-32(%rbp), %ecx
	addl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm2, -40(%rbp)        # 8-byte Spill
	movsd	%xmm1, -48(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	-40(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-24(%rbp), %rdx
	movss	%xmm0, 24(%rdx)
	movq	-24(%rbp), %rdx
	cvtss2sd	24(%rdx), %xmm0
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	ucomisd	%xmm2, %xmm0
	jbe	.LBB22_2
# BB#1:                                 # %if.then
	movss	.LCPI22_4, %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movss	%xmm0, 24(%rax)
.LBB22_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movss	20(%rsi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movl	Current+8, %edi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movss	%xmm0, -68(%rbp)        # 4-byte Spill
	callq	rcm_units_factor
	movss	-68(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	cvtss2sd	%xmm1, %xmm0
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	gtk_spin_button_set_value
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	cvtss2sd	24(%rsi), %xmm0
	movq	%rax, %rdi
	callq	gtk_spin_button_set_value
	cmpl	$0, Current+4
	je	.LBB22_4
# BB#3:                                 # %if.then.28
	movq	Current+64, %rax
	movq	24(%rax), %rdi
	callq	rcm_render_preview
.LBB22_4:                               # %if.end.29
	movq	-16(%rbp), %rdi
	callq	gdk_event_request_motions
	movl	$1, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	rcm_gray_motion_notify_event, .Lfunc_end22-rcm_gray_motion_notify_event
	.cfi_endproc

	.globl	rcm_set_alpha
	.align	16, 0x90
	.type	rcm_set_alpha,@function
rcm_set_alpha:                          # @rcm_set_alpha
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value
	movl	Current+8, %edi
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	callq	rcm_units_factor
	cvtss2sd	%xmm0, %xmm0
	movsd	-32(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movq	152(%rax), %rax
	movss	%xmm0, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_queue_draw
	movq	Current+64, %rax
	movq	24(%rax), %rdi
	callq	rcm_render_preview
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	rcm_set_alpha, .Lfunc_end23-rcm_set_alpha
	.cfi_endproc

	.globl	rcm_set_beta
	.align	16, 0x90
	.type	rcm_set_beta,@function
rcm_set_beta:                           # @rcm_set_beta
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
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value
	movl	Current+8, %edi
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	callq	rcm_units_factor
	cvtss2sd	%xmm0, %xmm0
	movsd	-32(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movq	152(%rax), %rax
	movss	%xmm0, 4(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_queue_draw
	movq	Current+64, %rax
	movq	24(%rax), %rdi
	callq	rcm_render_preview
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	rcm_set_beta, .Lfunc_end24-rcm_set_beta
	.cfi_endproc

	.globl	rcm_set_hue
	.align	16, 0x90
	.type	rcm_set_hue,@function
rcm_set_hue:                            # @rcm_set_hue
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value
	movl	Current+8, %edi
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	callq	rcm_units_factor
	cvtss2sd	%xmm0, %xmm0
	movsd	-32(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movss	%xmm0, 20(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_queue_draw
	movq	Current+64, %rax
	movq	24(%rax), %rdi
	callq	rcm_render_preview
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	rcm_set_hue, .Lfunc_end25-rcm_set_hue
	.cfi_endproc

	.globl	rcm_set_satur
	.align	16, 0x90
	.type	rcm_set_satur,@function
rcm_set_satur:                          # @rcm_set_satur
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value
	cvtsd2ss	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	movss	%xmm0, 24(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_queue_draw
	movq	Current+64, %rax
	movq	24(%rax), %rdi
	callq	rcm_render_preview
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	rcm_set_satur, .Lfunc_end26-rcm_set_satur
	.cfi_endproc

	.globl	rcm_set_gray_sat
	.align	16, 0x90
	.type	rcm_set_gray_sat,@function
rcm_set_gray_sat:                       # @rcm_set_gray_sat
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value
	cvtsd2ss	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	movss	%xmm0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_queue_draw
	movq	Current+64, %rax
	movq	24(%rax), %rdi
	callq	rcm_render_preview
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	rcm_set_gray_sat, .Lfunc_end27-rcm_set_gray_sat
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"deg"
	.size	.L.str, 4

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"rad"
	.size	.L.str.1, 4

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"rad/pi"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"(unknown)"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"label"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"color_rotate_cw"
	.size	.L.str.5, 16

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"color_rotate_ccw"
	.size	.L.str.6, 17

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"use_stock"
	.size	.L.str.7, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
