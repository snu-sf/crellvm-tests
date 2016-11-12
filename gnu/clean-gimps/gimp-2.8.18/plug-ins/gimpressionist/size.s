	.text
	.file	"size.bc"
	.globl	size_type_input
	.align	16, 0x90
	.type	size_type_input,@function
size_type_input:                        # @size_type_input
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
	movl	%edi, -4(%rbp)
	cmpl	$7, -4(%rbp)
	jle	.LBB0_2
# BB#1:                                 # %cond.true
	movl	$7, %eax
	movl	%eax, -8(%rbp)          # 4-byte Spill
	jmp	.LBB0_6
.LBB0_2:                                # %cond.false
	cmpl	$0, -4(%rbp)
	jge	.LBB0_4
# BB#3:                                 # %cond.true.2
	xorl	%eax, %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
	jmp	.LBB0_5
.LBB0_4:                                # %cond.false.3
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB0_5:                                # %cond.end
	movl	-12(%rbp), %eax         # 4-byte Reload
	movl	%eax, -8(%rbp)          # 4-byte Spill
.LBB0_6:                                # %cond.end.4
	movl	-8(%rbp), %eax          # 4-byte Reload
	popq	%rbp
	retq
.Lfunc_end0:
	.size	size_type_input, .Lfunc_end0-size_type_input
	.cfi_endproc

	.globl	size_restore
	.align	16, 0x90
	.type	size_restore,@function
size_restore:                           # @size_restore
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
	callq	size_type_restore
	movq	sizenumadjust, %rax
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cvtsi2sdl	pcvals+3408, %xmm0
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	movq	sizefirstadjust, %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	pcvals+3416, %xmm0      # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	movq	sizelastadjust, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	pcvals+3424, %xmm0      # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	size_restore, .Lfunc_end1-size_restore
	.cfi_endproc

	.align	16, 0x90
	.type	size_type_restore,@function
size_type_restore:                      # @size_type_restore
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
	movslq	pcvals+3432, %rax
	movq	sizeradio(,%rax,8), %rax
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	size_type_restore, .Lfunc_end2-size_type_restore
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4645040803167600640     # double 360
.LCPI3_1:
	.quad	4607182418800017408     # double 1
.LCPI3_2:
	.quad	4621819117588971520     # double 10
.LCPI3_3:
	.quad	4629137466983448576     # double 30
	.text
	.globl	create_sizepage
	.align	16, 0x90
	.type	create_sizepage,@function
create_sizepage:                        # @create_sizepage
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
	pushq	%rbx
	subq	$600, %rsp              # imm = 0x258
.Ltmp12:
	.cfi_offset %rbx, -24
	movabsq	$.L.str, %rax
	movq	%rdi, -16(%rbp)
	movq	$0, -80(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movl	$1, %edi
	movl	$12, %esi
	movq	%rax, -56(%rbp)
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movl	$3, %esi
	xorl	%edx, %edx
	movl	%esi, %edi
	callq	gtk_table_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-72(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -116(%rbp)        # 4-byte Spill
	movl	-116(%rbp), %ecx        # 4-byte Reload
	movl	-116(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movq	-72(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.1, %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.2, %rdi
	cvtsi2sdl	pcvals+3408, %xmm0
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$150, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_3, %xmm2         # xmm2 = mem[0],zero
	movl	$1, %edx
	xorps	%xmm1, %xmm1
	xorl	%r10d, %r10d
	movl	%r10d, %esi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -164(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movsd	-152(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-176(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm1, -184(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm1
	movaps	%xmm4, %xmm3
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-184(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-184(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.3, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$pcvals, %rdi
	addq	$3408, %rdi             # imm = 0xD50
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, sizenumadjust
	movq	sizenumadjust, %rax
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-192(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.5, %rdi
	movsd	pcvals+3416, %xmm0      # xmm0 = mem[0],zero
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$150, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_2, %xmm4         # xmm4 = mem[0],zero
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	-224(%rbp), %r11        # 8-byte Reload
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	movq	%r11, %rcx
	movsd	-232(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-248(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-248(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-248(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.3, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$pcvals, %rdi
	addq	$3416, %rdi             # imm = 0xD58
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, sizefirstadjust
	movq	sizefirstadjust, %rax
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-256(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rdi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.7, %rdi
	movsd	pcvals+3424, %xmm0      # xmm0 = mem[0],zero
	movq	%rax, -288(%rbp)        # 8-byte Spill
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	movl	$150, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_2, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	-288(%rbp), %r11        # 8-byte Reload
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	movq	%r11, %rcx
	movsd	-296(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -312(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-312(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-312(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-312(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -316(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.3, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$pcvals, %rdi
	addq	$3424, %rdi             # imm = 0xD60
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, sizelastadjust
	movq	sizelastadjust, %rax
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-328(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movl	$12, %esi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -356(%rbp)        # 4-byte Spill
	movl	-356(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.8, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -372(%rbp)        # 4-byte Spill
	movl	-372(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -388(%rbp)        # 4-byte Spill
	movl	-388(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.9, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.10, %rdi
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	leaq	-80(%rbp), %r8
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	-408(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_size_radio_button
	movabsq	$.L.str.11, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.12, %rdi
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %esi
	leaq	-80(%rbp), %r8
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	-424(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_size_radio_button
	movabsq	$.L.str.13, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.14, %rdi
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$2, %esi
	leaq	-80(%rbp), %r8
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	-440(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_size_radio_button
	movabsq	$.L.str.15, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.16, %rdi
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$3, %esi
	leaq	-80(%rbp), %r8
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	-456(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_size_radio_button
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.17, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.18, %rdi
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$4, %esi
	leaq	-80(%rbp), %r8
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	-480(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_size_radio_button
	movabsq	$.L.str.19, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.20, %rdi
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$5, %esi
	leaq	-80(%rbp), %r8
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	-496(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_size_radio_button
	movabsq	$.L.str.21, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.22, %rdi
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$6, %esi
	leaq	-80(%rbp), %r8
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	-512(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_size_radio_button
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.23, %rdi
	movq	-40(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.24, %rdi
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$7, %esi
	leaq	-80(%rbp), %r8
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	-536(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_size_radio_button
	callq	size_type_restore
	movabsq	$.L.str.25, %rdi
	callq	gtk_button_new_from_stock
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.26, %rsi
	movabsq	$create_sizemap_dialog_helper, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-64(%rbp), %r11
	movq	%rdi, -552(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-552(%rbp), %rcx        # 8-byte Reload
	movq	-552(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.27, %rdi
	movq	-64(%rbp), %rcx
	movq	%rax, -560(%rbp)        # 8-byte Spill
	movq	%rcx, -568(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	gtk_notebook_append_page_menu
	movl	%eax, -572(%rbp)        # 4-byte Spill
	addq	$600, %rsp              # imm = 0x258
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	create_sizepage, .Lfunc_end3-create_sizepage
	.cfi_endproc

	.align	16, 0x90
	.type	create_size_radio_button,@function
create_size_radio_button:               # @create_size_radio_button
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
	subq	$80, %rsp
	movabsq	$size_store, %rax
	movabsq	$sizeradio, %r9
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %r8
	movq	-40(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	create_radio_button
	movq	%rax, -64(%rbp)         # 8-byte Spill
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	create_size_radio_button, .Lfunc_end4-create_size_radio_button
	.cfi_endproc

	.align	16, 0x90
	.type	create_sizemap_dialog_helper,@function
create_sizemap_dialog_helper:           # @create_sizemap_dialog_helper
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	sizeradio+56, %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-8(%rbp), %rdi
	callq	create_sizemap_dialog
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	create_sizemap_dialog_helper, .Lfunc_end5-create_sizemap_dialog_helper
	.cfi_endproc

	.align	16, 0x90
	.type	size_store,@function
size_store:                             # @size_store
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	%esi, %eax
	movl	%eax, pcvals+3432
	popq	%rbp
	retq
.Lfunc_end6:
	.size	size_store, .Lfunc_end6-size_store
	.cfi_endproc

	.type	sizenumadjust,@object   # @sizenumadjust
	.local	sizenumadjust
	.comm	sizenumadjust,8,8
	.type	sizefirstadjust,@object # @sizefirstadjust
	.local	sizefirstadjust
	.comm	sizefirstadjust,8,8
	.type	sizelastadjust,@object  # @sizelastadjust
	.local	sizelastadjust
	.comm	sizelastadjust,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"_Size"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Size variants:"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"The number of sizes of brushes to use"
	.size	.L.str.2, 38

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"value-changed"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Minimum size:"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"The smallest brush to create"
	.size	.L.str.5, 29

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Maximum size:"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"The largest brush to create"
	.size	.L.str.7, 28

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Size depends on:"
	.size	.L.str.8, 17

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Value"
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Let the value (brightness) of the region determine the size of the stroke"
	.size	.L.str.10, 74

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Radius"
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"The distance from the center of the image determines the size of the stroke"
	.size	.L.str.12, 76

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Random"
	.size	.L.str.13, 7

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Selects a random size for each stroke"
	.size	.L.str.14, 38

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Radial"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Let the direction from the center determine the size of the stroke"
	.size	.L.str.16, 67

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Flowing"
	.size	.L.str.17, 8

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"The strokes follow a \"flowing\" pattern"
	.size	.L.str.18, 39

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Hue"
	.size	.L.str.19, 4

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"The hue of the region determines the size of the stroke"
	.size	.L.str.20, 56

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Adaptive"
	.size	.L.str.21, 9

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"The brush-size that matches the original image the closest is selected"
	.size	.L.str.22, 71

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Manual"
	.size	.L.str.23, 7

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Manually specify the stroke size"
	.size	.L.str.24, 33

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gtk-edit"
	.size	.L.str.25, 9

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"clicked"
	.size	.L.str.26, 8

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Opens up the Size Map Editor"
	.size	.L.str.27, 29

	.type	sizeradio,@object       # @sizeradio
	.local	sizeradio
	.comm	sizeradio,64,16

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
