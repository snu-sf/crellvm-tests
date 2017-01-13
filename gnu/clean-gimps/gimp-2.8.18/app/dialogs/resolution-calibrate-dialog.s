	.text
	.file	"resolution-calibrate-dialog.bc"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_1:
	.quad	4608083138725491507     # double 1.2
.LCPI0_2:
	.quad	4607182418800017408     # double 1
.LCPI0_3:
	.quad	4688247212092686336     # double 262144
.LCPI0_4:
	.quad	4572414629676717179     # double 0.0050000000000000001
	.text
	.globl	resolution_calibrate_dialog
	.align	16, 0x90
	.type	resolution_calibrate_dialog,@function
resolution_calibrate_dialog:            # @resolution_calibrate_dialog
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
	pushq	%r14
	pushq	%rbx
	subq	$640, %rsp              # imm = 0x280
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_size_entry_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -132(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -132(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.resolution_calibrate_dialog, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_43
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_realized
	cmpl	$0, %eax
	je	.LBB0_15
# BB#14:                                # %if.then.14
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.resolution_calibrate_dialog, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_43
.LBB0_16:                               # %if.end.16
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.17
	jmp	.LBB0_18
.LBB0_18:                               # %do.body.18
	cmpq	$0, -32(%rbp)
	je	.LBB0_27
# BB#19:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)
	callq	gdk_pixbuf_get_type
	movq	%rax, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB0_21
# BB#20:                                # %if.then.28
	movl	$0, -156(%rbp)
	jmp	.LBB0_26
.LBB0_21:                               # %if.else.29
	movq	-144(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_24
# BB#22:                                # %land.lhs.true.32
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB0_24
# BB#23:                                # %if.then.36
	movl	$1, -156(%rbp)
	jmp	.LBB0_25
.LBB0_24:                               # %if.else.37
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -156(%rbp)
.LBB0_25:                               # %if.end.39
	jmp	.LBB0_26
.LBB0_26:                               # %if.end.40
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB0_28
.LBB0_27:                               # %if.then.43
	jmp	.LBB0_29
.LBB0_28:                               # %if.else.44
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.resolution_calibrate_dialog, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_43
.LBB0_29:                               # %if.end.45
	jmp	.LBB0_30
.LBB0_30:                               # %do.end.46
	cmpq	$0, calibrate_entry
	je	.LBB0_32
# BB#31:                                # %if.then.48
	jmp	.LBB0_43
.LBB0_32:                               # %if.end.49
	movabsq	$.L.str.4, %rdi
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_toplevel
	movabsq	$.L.str.5, %rsi
	movl	$2, %ecx
	xorl	%edx, %edx
	movl	%edx, %edi
	movabsq	$.L.str.6, %r8
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movabsq	$.L.str.7, %r9
	movl	$4294967291, %r10d      # imm = 0xFFFFFFFB
	movq	-200(%rbp), %r11        # 8-byte Reload
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movl	%edx, -212(%rbp)        # 4-byte Spill
	movq	%rax, %rdx
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%r8, -224(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movq	%r9, -232(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-224(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movl	$-6, 8(%rsp)
	movq	-232(%rbp), %r14        # 8-byte Reload
	movq	%r14, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%r10d, -236(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-40(%rbp), %rdi
	callq	gtk_widget_get_screen
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_widget_get_window
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gdk_screen_get_monitor_at_window
	leaq	-104(%rbp), %rdx
	movl	%eax, -108(%rbp)
	movq	-88(%rbp), %rdi
	movl	-108(%rbp), %esi
	callq	gdk_screen_get_monitor_geometry
	movl	$4, %eax
	xorl	%edx, %edx
	movl	$100, %ecx
	movl	-96(%rbp), %esi
	subl	$300, %esi              # imm = 0x12C
	movl	-96(%rbp), %r10d
	movl	%eax, -260(%rbp)        # 4-byte Spill
	movl	%r10d, %eax
	movl	%edx, -264(%rbp)        # 4-byte Spill
	cltd
	idivl	%ecx
	subl	%edx, %esi
	movl	%esi, ruler_width
	movl	-92(%rbp), %edx
	subl	$300, %edx              # imm = 0x12C
	movl	-92(%rbp), %esi
	movl	%esi, %eax
	movl	%edx, -268(%rbp)        # 4-byte Spill
	cltd
	idivl	%ecx
	movl	-268(%rbp), %ecx        # 4-byte Reload
	subl	%edx, %ecx
	movl	%ecx, ruler_height
	movl	-260(%rbp), %edi        # 4-byte Reload
	movl	-260(%rbp), %esi        # 4-byte Reload
	movl	-264(%rbp), %edx        # 4-byte Reload
	callq	gtk_table_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-40(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	cmpq	$0, -32(%rbp)
	je	.LBB0_34
# BB#33:                                # %if.then.73
	movq	-32(%rbp), %rdi
	callq	gtk_image_new_from_pixbuf
	movq	%rax, -168(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	$2, %r8d
	movl	$4, %r9d
	movq	-168(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -308(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-308(%rbp), %r10d       # 4-byte Reload
	movl	%ecx, -312(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	-312(%rbp), %r11d       # 4-byte Reload
	movl	%r8d, -316(%rbp)        # 4-byte Spill
	movl	%r11d, %r8d
	movl	%r9d, -320(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$2, (%rsp)
	movl	$2, 8(%rsp)
	movl	$4, 16(%rsp)
	movl	$4, 24(%rsp)
	callq	gtk_table_attach
	movq	-168(%rbp), %rdi
	callq	gtk_widget_show
.LBB0_34:                               # %if.end.78
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	%eax, -324(%rbp)        # 4-byte Spill
	callq	gimp_ruler_new
	movq	%rax, -72(%rbp)
	movl	ruler_width(%rip), %esi
	movl	$32, %edi
	movl	%edi, -328(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	-328(%rbp), %edx        # 4-byte Reload
	callq	gtk_widget_set_size_request
	movq	-72(%rbp), %rdi
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	callq	gimp_ruler_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	ruler_width(%rip), %edx
	cvtsi2sdl	%edx, %xmm0
	xorps	%xmm1, %xmm1
	movq	%rax, %rdi
	movsd	%xmm0, -344(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-344(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm1, -352(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm1
	callq	gimp_ruler_set_range
	movq	-48(%rbp), %rdi
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rsp, %rdi
	movl	$0, 24(%rdi)
	movl	$0, 16(%rdi)
	movl	$2, 8(%rdi)
	movl	$2, (%rdi)
	movl	$3, %edx
	movl	$1, %ecx
	movq	%rax, %rdi
	movl	%edx, -364(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-364(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -368(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-324(%rbp), %r8d        # 4-byte Reload
	movl	-368(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movl	-368(%rbp), %edi        # 4-byte Reload
	callq	gimp_ruler_new
	movq	%rax, -72(%rbp)
	movl	ruler_height(%rip), %edx
	movq	%rax, %rdi
	movl	-328(%rbp), %esi        # 4-byte Reload
	callq	gtk_widget_set_size_request
	movq	-72(%rbp), %rdi
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	callq	gimp_ruler_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	ruler_height(%rip), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movq	%rax, %rdi
	movsd	-352(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -384(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-384(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-384(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_ruler_set_range
	movq	-48(%rbp), %rdi
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rsp, %rdi
	movl	$0, 24(%rdi)
	movl	$0, 16(%rdi)
	movl	$2, 8(%rdi)
	movl	$2, (%rdi)
	movq	%rax, %rdi
	movl	-324(%rbp), %edx        # 4-byte Reload
	movl	-368(%rbp), %ecx        # 4-byte Reload
	movl	-368(%rbp), %r8d        # 4-byte Reload
	movl	-364(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movl	$12, %esi
	movl	-368(%rbp), %edi        # 4-byte Reload
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rsp, %rdi
	movl	$0, 24(%rdi)
	movl	$0, 16(%rdi)
	movl	$2, 8(%rdi)
	movl	$2, (%rdi)
	movl	$2, %ecx
	movq	%rax, %rdi
	movl	-368(%rbp), %edx        # 4-byte Reload
	movl	%ecx, -404(%rbp)        # 4-byte Spill
	movl	-368(%rbp), %r8d        # 4-byte Reload
	movl	-404(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$.L.str.8, %ecx
	movl	%ecx, %edi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -80(%rbp)
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	movl	-324(%rbp), %esi        # 4-byte Reload
	callq	gtk_label_set_justify
	movq	-80(%rbp), %rdi
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-80(%rbp), %rdi
	movq	%rdi, -432(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$15, %esi
	movsd	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	$4, %edx
	movl	$700, %ecx              # imm = 0x2BC
	movl	$-1, %r8d
	movb	$1, %r10b
	movq	%rax, %rdi
	movb	%r10b, %al
	callq	gimp_label_set_attributes
	movq	-56(%rbp), %rdi
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	-324(%rbp), %edx        # 4-byte Reload
	movl	-324(%rbp), %ecx        # 4-byte Reload
	movl	-324(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movl	-324(%rbp), %edi        # 4-byte Reload
	movl	-324(%rbp), %esi        # 4-byte Reload
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rdi
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	-324(%rbp), %edx        # 4-byte Reload
	movl	-324(%rbp), %ecx        # 4-byte Reload
	movl	-324(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rdi
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	movl	-324(%rbp), %esi        # 4-byte Reload
	callq	gimp_size_entry_get_refval
	movsd	%xmm0, calibrate_xres(%rip)
	movq	-24(%rbp), %rdi
	movq	%rdi, -464(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	movl	-368(%rbp), %esi        # 4-byte Reload
	callq	gimp_size_entry_get_refval
	movsd	%xmm0, calibrate_yres(%rip)
	movl	$.L.str.10, %ecx
	movl	%ecx, %edi
	callq	gettext
	cvtsi2sdl	ruler_width(%rip), %xmm0
	movsd	calibrate_xres(%rip), %xmm1 # xmm1 = mem[0],zero
	movl	$.L.str.11, %ecx
	movl	%ecx, %edi
	movq	%rax, -472(%rbp)        # 8-byte Spill
	movsd	%xmm0, -480(%rbp)       # 8-byte Spill
	movsd	%xmm1, -488(%rbp)       # 8-byte Spill
	callq	gettext
	cvtsi2sdl	ruler_height(%rip), %xmm6
	movsd	calibrate_yres(%rip), %xmm7 # xmm7 = mem[0],zero
	movq	%rsp, %rdi
	movabsq	$4688247212092686336, %r11 # imm = 0x4110000000000000
	movq	%r11, 40(%rdi)
	movabsq	$4607182418800017408, %r11 # imm = 0x3FF0000000000000
	movq	%r11, 32(%rdi)
	movq	%rax, 24(%rdi)
	movq	-472(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rdi)
	movq	$0, 56(%rdi)
	movq	$0, 48(%rdi)
	movl	$0, 8(%rdi)
	movl	$0, (%rdi)
	movl	$.L.str.9, %ecx
	movl	%ecx, %esi
	movl	$10, %r8d
	movsd	.LCPI0_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI0_3(%rip), %xmm3   # xmm3 = mem[0],zero
	movl	-368(%rbp), %edi        # 4-byte Reload
	movl	-324(%rbp), %edx        # 4-byte Reload
	movl	-324(%rbp), %ecx        # 4-byte Reload
	movl	-368(%rbp), %r9d        # 4-byte Reload
	movsd	-480(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-488(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-352(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-352(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	callq	gimp_coordinates_new
	movq	%rax, calibrate_entry(%rip)
	movl	$calibrate_entry, %ecx
                                        # kill: RCX<def> ECX<kill>
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	movq	%rcx, -496(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movl	$.L.str.12, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_hide
	movq	-40(%rbp), %rdi
	movl	$.L.str.13, %edx
	movl	%edx, %esi
	movl	$gtk_widget_destroyed, %edx
                                        # kill: RDX<def> EDX<kill>
	movl	-324(%rbp), %r8d        # 4-byte Reload
                                        # kill: R8<def> R8D<kill>
	movq	-496(%rbp), %rcx        # 8-byte Reload
	movl	-324(%rbp), %r9d        # 4-byte Reload
	callq	g_signal_connect_data
	movq	-64(%rbp), %rdi
	movq	%rax, -512(%rbp)        # 8-byte Spill
	movq	%rdi, -520(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	calibrate_entry(%rip), %rsi
	movq	%rax, %rdi
	movl	-324(%rbp), %edx        # 4-byte Reload
	movl	-324(%rbp), %ecx        # 4-byte Reload
	movl	-324(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end
	movq	calibrate_entry(%rip), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rdi
	movq	%rdi, -528(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	subl	$-5, %eax
	movl	%eax, -532(%rbp)        # 4-byte Spill
	jne	.LBB0_41
	jmp	.LBB0_35
.LBB0_35:                               # %sw.bb
	movq	calibrate_entry, %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	movsd	%xmm0, -184(%rbp)
	movq	calibrate_entry, %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movsd	%xmm0, -192(%rbp)
	cvtsi2sdl	ruler_width, %xmm0
	mulsd	calibrate_xres, %xmm0
	divsd	-184(%rbp), %xmm0
	movsd	%xmm0, calibrate_xres
	cvtsi2sdl	ruler_height, %xmm0
	mulsd	calibrate_yres, %xmm0
	divsd	-192(%rbp), %xmm0
	movsd	%xmm0, calibrate_yres
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	xorps	%xmm0, %xmm0
	movq	%rax, -176(%rbp)
	movsd	-184(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-192(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_37
# BB#36:                                # %cond.true
	movsd	-184(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-192(%rbp), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -560(%rbp)       # 8-byte Spill
	jmp	.LBB0_38
.LBB0_37:                               # %cond.false
	movsd	-184(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-192(%rbp), %xmm0
	movsd	%xmm0, -560(%rbp)       # 8-byte Spill
.LBB0_38:                               # %cond.end
	movsd	-560(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI0_4, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_40
# BB#39:                                # %if.then.152
	movq	-176(%rbp), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gimp_chain_button_get_type
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_chain_button_set_active
.LBB0_40:                               # %if.end.155
	movq	-24(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movsd	calibrate_xres, %xmm0   # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval
	movq	-24(%rbp), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movsd	calibrate_yres, %xmm0   # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval
.LBB0_41:                               # %sw.default
	jmp	.LBB0_42
.LBB0_42:                               # %sw.epilog
	movq	-40(%rbp), %rdi
	callq	gtk_widget_destroy
.LBB0_43:                               # %return
	addq	$640, %rsp              # imm = 0x280
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	resolution_calibrate_dialog, .Lfunc_end0-resolution_calibrate_dialog
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Dialogs"
	.size	.L.str, 13

	.type	.L__func__.resolution_calibrate_dialog,@object # @__func__.resolution_calibrate_dialog
.L__func__.resolution_calibrate_dialog:
	.asciz	"resolution_calibrate_dialog"
	.size	.L__func__.resolution_calibrate_dialog, 28

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_SIZE_ENTRY (resolution_entry)"
	.size	.L.str.1, 38

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gtk_widget_get_realized (resolution_entry)"
	.size	.L.str.2, 43

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"pixbuf == NULL || GDK_IS_PIXBUF (pixbuf)"
	.size	.L.str.3, 41

	.type	calibrate_entry,@object # @calibrate_entry
	.local	calibrate_entry
	.comm	calibrate_entry,8,8
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Calibrate Monitor Resolution"
	.size	.L.str.4, 29

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-resolution-calibration"
	.size	.L.str.5, 28

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gtk-cancel"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gtk-ok"
	.size	.L.str.7, 7

	.type	ruler_width,@object     # @ruler_width
	.data
	.align	4
ruler_width:
	.long	1                       # 0x1
	.size	ruler_width, 4

	.type	ruler_height,@object    # @ruler_height
	.align	4
ruler_height:
	.long	1                       # 0x1
	.size	ruler_height, 4

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"Measure the rulers and enter their lengths:"
	.size	.L.str.8, 44

	.type	calibrate_xres,@object  # @calibrate_xres
	.data
	.align	8
calibrate_xres:
	.quad	4607182418800017408     # double 1
	.size	calibrate_xres, 8

	.type	calibrate_yres,@object  # @calibrate_yres
	.align	8
calibrate_yres:
	.quad	4607182418800017408     # double 1
	.size	calibrate_yres, 8

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"%p"
	.size	.L.str.9, 3

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"_Horizontal:"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"_Vertical:"
	.size	.L.str.11, 11

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"chainbutton"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"destroy"
	.size	.L.str.13, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
