	.text
	.file	"imap_table.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	create_spin_button_in_table
	.align	16, 0x90
	.type	create_spin_button_in_table,@function
create_spin_button_in_table:            # @create_spin_button_in_table
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
	subq	$96, %rsp
	movl	16(%rbp), %eax
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movl	%eax, -36(%rbp)
	cvtsi2sdl	-28(%rbp), %xmm1
	cvtsi2sdl	-32(%rbp), %xmm2
	cvtsi2sdl	-36(%rbp), %xmm3
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	movsd	-64(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-64(%rbp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-64(%rbp), %xmm5        # 8-byte Reload
                                        # xmm5 = mem[0],zero
	callq	gtk_adjustment_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_spin_button_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_spin_button_set_numeric
	cmpq	$0, -16(%rbp)
	je	.LBB0_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
.LBB0_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	-56(%rbp), %rcx
	callq	add_widget_to_table
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	create_spin_button_in_table, .Lfunc_end0-create_spin_button_in_table
	.cfi_endproc

	.align	16, 0x90
	.type	add_widget_to_table,@function
add_widget_to_table:                    # @add_widget_to_table
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
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movl	-16(%rbp), %edx
	movl	-16(%rbp), %r8d
	addl	$1, %r8d
	movl	-12(%rbp), %r9d
	movl	-12(%rbp), %r10d
	addl	$1, %r10d
	movq	%rax, %rdi
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	callq	gtk_table_attach_defaults
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	add_widget_to_table, .Lfunc_end1-add_widget_to_table
	.cfi_endproc

	.globl	create_check_button_in_table
	.align	16, 0x90
	.type	create_check_button_in_table,@function
create_check_button_in_table:           # @create_check_button_in_table
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	add_widget_to_table
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	create_check_button_in_table, .Lfunc_end2-create_check_button_in_table
	.cfi_endproc

	.globl	create_radio_button_in_table
	.align	16, 0x90
	.type	create_radio_button_in_table,@function
create_radio_button_in_table:           # @create_radio_button_in_table
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gtk_radio_button_new_with_mnemonic
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	-40(%rbp), %rcx
	callq	add_widget_to_table
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	create_radio_button_in_table, .Lfunc_end3-create_radio_button_in_table
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI4_0:
	.long	1056964608              # float 0.5
	.text
	.globl	create_label_in_table
	.align	16, 0x90
	.type	create_label_in_table,@function
create_label_in_table:                  # @create_label_in_table
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	add_widget_to_table
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	create_label_in_table, .Lfunc_end4-create_label_in_table
	.cfi_endproc

	.globl	create_entry_in_table
	.align	16, 0x90
	.type	create_entry_in_table,@function
create_entry_in_table:                  # @create_entry_in_table
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	callq	gtk_entry_new
	movq	%rax, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
.LBB5_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	add_widget_to_table
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	create_entry_in_table, .Lfunc_end5-create_entry_in_table
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
