	.text
	.file	"gimpnumberpairentry.bc"
	.globl	gimp_number_pair_entry_get_type
	.align	16, 0x90
	.type	gimp_number_pair_entry_get_type,@function
gimp_number_pair_entry_get_type:        # @gimp_number_pair_entry_get_type
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_number_pair_entry_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_number_pair_entry_get_type.g_define_type_id__volatile(%rip), %rax
	movq	%rax, %rdi
	callq	g_once_init_enter@PLT
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB0_2:                                # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB0_4
# BB#3:                                 # %if.then
	callq	gtk_entry_get_type@PLT
	leaq	.L.str(%rip), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string@PLT
	movl	$872, %edx              # imm = 0x368
	leaq	gimp_number_pair_entry_class_intern_init(%rip), %rdi
	movl	$216, %r8d
	leaq	gimp_number_pair_entry_init(%rip), %rcx
	xorl	%esi, %esi
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movl	$0, (%rsp)
	callq	g_type_register_static_simple@PLT
	leaq	gimp_number_pair_entry_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_number_pair_entry_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_number_pair_entry_get_type, .Lfunc_end0-gimp_number_pair_entry_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_number_pair_entry_class_intern_init,@function
gimp_number_pair_entry_class_intern_init: # @gimp_number_pair_entry_class_intern_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_class_peek_parent@PLT
	movq	%rax, gimp_number_pair_entry_parent_class(%rip)
	cmpl	$0, GimpNumberPairEntry_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpNumberPairEntry_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_number_pair_entry_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_number_pair_entry_class_intern_init, .Lfunc_end1-gimp_number_pair_entry_class_intern_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
.LCPI2_1:
	.quad	4503599627370496        # double 2.2250738585072014E-308
.LCPI2_2:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_number_pair_entry_init,@function
gimp_number_pair_entry_init:            # @gimp_number_pair_entry_init
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_number_pair_entry_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	leaq	.L.str.38(%rip), %rsi
	leaq	gimp_number_pair_entry_changed(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r9d, %r9d
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI2_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI2_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movq	-8(%rbp), %r8
	movq	%rax, 208(%r8)
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movsd	%xmm2, (%rax)
	movq	-16(%rbp), %rax
	movsd	%xmm2, 8(%rax)
	movq	-16(%rbp), %rax
	movsd	%xmm2, 16(%rax)
	movq	-16(%rbp), %rax
	movsd	%xmm2, 24(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 32(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 36(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 64(%rax)
	movq	-16(%rbp), %rax
	movsd	%xmm1, 72(%rax)
	movq	-16(%rbp), %rax
	movsd	%xmm0, 80(%rax)
	movq	-8(%rbp), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %r8          # 8-byte Reload
	callq	g_signal_connect_data@PLT
	leaq	.L.str.39(%rip), %rsi
	leaq	gimp_number_pair_entry_events(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data@PLT
	leaq	.L.str.40(%rip), %rsi
	leaq	gimp_number_pair_entry_events(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data@PLT
	movq	-8(%rbp), %rcx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_direction@PLT
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_number_pair_entry_init, .Lfunc_end2-gimp_number_pair_entry_init
	.cfi_endproc

	.globl	gimp_number_pair_entry_new
	.align	16, 0x90
	.type	gimp_number_pair_entry_new,@function
gimp_number_pair_entry_new:             # @gimp_number_pair_entry_new
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	callq	gimp_number_pair_entry_get_type@PLT
	leaq	.L.str.1(%rip), %rsi
	leaq	.L.str.2(%rip), %rcx
	leaq	.L.str.3(%rip), %r9
	leaq	.L.str.4(%rip), %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %r10d
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%r8, -48(%rbp)          # 8-byte Spill
	movl	%r10d, %r8d
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$2, %al
	callq	g_object_new@PLT
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_number_pair_entry_new, .Lfunc_end3-gimp_number_pair_entry_new
	.cfi_endproc

	.globl	gimp_number_pair_entry_set_ratio
	.align	16, 0x90
	.type	gimp_number_pair_entry_set_ratio,@function
gimp_number_pair_entry_set_ratio:       # @gimp_number_pair_entry_set_ratio
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
	movsd	%xmm0, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_number_pair_entry_get_type@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.4
	movl	$1, -52(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.5
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -52(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.7
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.9
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.10
	leaq	.L.str.5(%rip), %rdi
	leaq	.L__func__.gimp_number_pair_entry_set_ratio(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.11
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	leaq	-24(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_number_pair_entry_ratio_to_fraction
	movq	-8(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_number_pair_entry_set_values@PLT
.LBB4_13:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_number_pair_entry_set_ratio, .Lfunc_end4-gimp_number_pair_entry_set_ratio
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4547007122018943789     # double 1.0E-4
.LCPI5_2:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI5_1:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	gimp_number_pair_entry_ratio_to_fraction,@function
gimp_number_pair_entry_ratio_to_fraction: # @gimp_number_pair_entry_ratio_to_fraction
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
	subq	$80, %rsp
	movsd	%xmm0, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$1, -44(%rbp)
	movl	$0, -56(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	callq	floor@PLT
	cvttsd2si	%xmm0, %eax
	movl	%eax, -48(%rbp)
	movl	$1, -60(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-48(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
.LBB5_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movapd	.LCPI5_1(%rip), %xmm2   # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	movb	%cl, -65(%rbp)          # 1-byte Spill
	jb	.LBB5_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB5_1 Depth=1
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	cvtsi2sdl	-48(%rbp), %xmm1
	cvtsi2sdl	-60(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	subsd	-8(%rbp), %xmm1
	movapd	.LCPI5_1(%rip), %xmm2   # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	seta	%al
	movb	%al, -65(%rbp)          # 1-byte Spill
.LBB5_3:                                # %land.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movb	-65(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_4
	jmp	.LBB5_5
.LBB5_4:                                # %while.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movsd	.LCPI5_2(%rip), %xmm0   # xmm0 = mem[0],zero
	divsd	-32(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	floor@PLT
	movsd	%xmm0, -40(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-48(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvtsi2sdl	-44(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -52(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-60(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvtsi2sdl	-56(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -64(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -60(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-40(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB5_1
.LBB5_5:                                # %while.end
	cmpl	$1000, -48(%rbp)        # imm = 0x3E8
	jge	.LBB5_8
# BB#6:                                 # %land.lhs.true
	cmpl	$1000, -60(%rbp)        # imm = 0x3E8
	jge	.LBB5_8
# BB#7:                                 # %if.then
	cvtsi2sdl	-48(%rbp), %xmm0
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	cvtsi2sdl	-60(%rbp), %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB5_9
.LBB5_8:                                # %if.else
	movsd	.LCPI5_2(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm1, (%rax)
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB5_9:                                # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_number_pair_entry_ratio_to_fraction, .Lfunc_end5-gimp_number_pair_entry_ratio_to_fraction
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4517329193108106637     # double 9.9999999999999995E-7
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI6_1:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.globl	gimp_number_pair_entry_set_values
	.align	16, 0x90
	.type	gimp_number_pair_entry_set_values,@function
gimp_number_pair_entry_set_values:      # @gimp_number_pair_entry_set_values
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
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -72(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_number_pair_entry_get_type@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.4
	movl	$1, -92(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.5
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -92(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.7
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.9
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.10
	leaq	.L.str.5(%rip), %rdi
	leaq	.L__func__.gimp_number_pair_entry_set_values(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_23
.LBB6_11:                               # %if.end.11
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movq	-32(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_number_pair_entry_get_ratio@PLT
	movsd	%xmm0, -48(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_number_pair_entry_get_aspect@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	g_object_freeze_notify@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.7(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_notify@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.8(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_notify@PLT
	movq	-8(%rbp), %rdi
	callq	gimp_number_pair_entry_update_text
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	callq	gimp_number_pair_entry_get_ratio@PLT
	movsd	.LCPI6_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	-104(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	movapd	.LCPI6_1(%rip), %xmm0   # xmm0 = [9223372036854775807,9223372036854775807]
	andpd	%xmm0, %xmm2
	ucomisd	%xmm1, %xmm2
	jbe	.LBB6_16
# BB#13:                                # %if.then.23
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.9(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_notify@PLT
	movl	$1, -72(%rbp)
	movl	-36(%rbp), %edx
	movq	-8(%rbp), %rdi
	movl	%edx, -108(%rbp)        # 4-byte Spill
	callq	gimp_number_pair_entry_get_aspect@PLT
	movl	-108(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	je	.LBB6_15
# BB#14:                                # %if.then.27
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.10(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_notify@PLT
.LBB6_15:                               # %if.end.29
	jmp	.LBB6_16
.LBB6_16:                               # %if.end.30
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	ucomisd	(%rax), %xmm0
	jne	.LBB6_18
	jp	.LBB6_18
# BB#17:                                # %lor.lhs.false
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	ucomisd	8(%rax), %xmm0
	jne	.LBB6_18
	jp	.LBB6_18
	jmp	.LBB6_19
.LBB6_18:                               # %if.then.35
	movl	$1, -68(%rbp)
.LBB6_19:                               # %if.end.36
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	g_object_thaw_notify@PLT
	cmpl	$0, -68(%rbp)
	je	.LBB6_21
# BB#20:                                # %if.then.39
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	entry_signals(%rip), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit@PLT
.LBB6_21:                               # %if.end.40
	cmpl	$0, -72(%rbp)
	je	.LBB6_23
# BB#22:                                # %if.then.42
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	entry_signals+4(%rip), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit@PLT
.LBB6_23:                               # %if.end.43
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_number_pair_entry_set_values, .Lfunc_end6-gimp_number_pair_entry_set_values
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_number_pair_entry_get_ratio
	.align	16, 0x90
	.type	gimp_number_pair_entry_get_ratio,@function
gimp_number_pair_entry_get_ratio:       # @gimp_number_pair_entry_get_ratio
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_number_pair_entry_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.4
	movl	$1, -44(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.5
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.7
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.9
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.10
	leaq	.L.str.5(%rip), %rdi
	leaq	.L__func__.gimp_number_pair_entry_get_ratio(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movsd	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB7_13
.LBB7_11:                               # %if.end.11
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	divsd	8(%rax), %xmm0
	movsd	%xmm0, -8(%rbp)
.LBB7_13:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_number_pair_entry_get_ratio, .Lfunc_end7-gimp_number_pair_entry_get_ratio
	.cfi_endproc

	.globl	gimp_number_pair_entry_get_aspect
	.align	16, 0x90
	.type	gimp_number_pair_entry_get_aspect,@function
gimp_number_pair_entry_get_aspect:      # @gimp_number_pair_entry_get_aspect
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_number_pair_entry_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.4
	movl	$1, -44(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.5
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.7
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.9
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.10
	leaq	.L.str.5(%rip), %rdi
	leaq	.L__func__.gimp_number_pair_entry_get_aspect(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB8_17
.LBB8_11:                               # %if.end.11
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	ucomisd	8(%rax), %xmm0
	jbe	.LBB8_14
# BB#13:                                # %if.then.14
	movl	$2, -4(%rbp)
	jmp	.LBB8_17
.LBB8_14:                               # %if.else.15
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_16
# BB#15:                                # %if.then.19
	movl	$1, -4(%rbp)
	jmp	.LBB8_17
.LBB8_16:                               # %if.else.20
	movl	$0, -4(%rbp)
.LBB8_17:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_number_pair_entry_get_aspect, .Lfunc_end8-gimp_number_pair_entry_get_aspect
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_number_pair_entry_update_text,@function
gimp_number_pair_entry_update_text:     # @gimp_number_pair_entry_update_text
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	cmpl	$0, 32(%rdi)
	jne	.LBB9_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB9_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	g_strdup@PLT
	movq	%rax, -24(%rbp)
	jmp	.LBB9_4
.LBB9_3:                                # %if.else
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	gimp_number_pair_entry_strdup_number_pair_string
	movq	%rax, -24(%rbp)
.LBB9_4:                                # %if.end
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_number_pair_entry_changed(%rip), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-32(%rbp), %r9          # 8-byte Reload
	movq	$0, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	movq	-8(%rbp), %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text@PLT
	movq	-24(%rbp), %rdi
	callq	g_free@PLT
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	gimp_number_pair_entry_changed(%rip), %rax
	movq	-8(%rbp), %rdi
	movl	%ecx, %edx
	movq	%rax, %r9
	movq	$0, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movl	%eax, -52(%rbp)         # 4-byte Spill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_number_pair_entry_update_text, .Lfunc_end9-gimp_number_pair_entry_update_text
	.cfi_endproc

	.globl	gimp_number_pair_entry_get_values
	.align	16, 0x90
	.type	gimp_number_pair_entry_get_values,@function
gimp_number_pair_entry_get_values:      # @gimp_number_pair_entry_get_values
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_number_pair_entry_get_type@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.4
	movl	$1, -52(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.5
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -52(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.7
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.9
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.10
	leaq	.L.str.5(%rip), %rdi
	leaq	.L__func__.gimp_number_pair_entry_get_values(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB10_16
.LBB10_11:                              # %if.end.11
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB10_14
# BB#13:                                # %if.then.14
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB10_14:                              # %if.end.15
	cmpq	$0, -24(%rbp)
	je	.LBB10_16
# BB#15:                                # %if.then.17
	movq	-32(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB10_16:                              # %if.end.18
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_number_pair_entry_get_values, .Lfunc_end10-gimp_number_pair_entry_get_values
	.cfi_endproc

	.globl	gimp_number_pair_entry_set_default_text
	.align	16, 0x90
	.type	gimp_number_pair_entry_set_default_text,@function
gimp_number_pair_entry_set_default_text: # @gimp_number_pair_entry_set_default_text
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_number_pair_entry_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.4
	movl	$1, -44(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.5
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.7
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.9
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.10
	leaq	.L.str.5(%rip), %rdi
	leaq	.L__func__.gimp_number_pair_entry_set_default_text(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB11_13
.LBB11_11:                              # %if.end.11
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rdi
	callq	g_strdup@PLT
	movq	-24(%rbp), %rdi
	movq	%rax, 56(%rdi)
	movq	-8(%rbp), %rdi
	callq	gimp_number_pair_entry_update_text
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.11(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_notify@PLT
.LBB11_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_number_pair_entry_set_default_text, .Lfunc_end11-gimp_number_pair_entry_set_default_text
	.cfi_endproc

	.globl	gimp_number_pair_entry_get_default_text
	.align	16, 0x90
	.type	gimp_number_pair_entry_get_default_text,@function
gimp_number_pair_entry_get_default_text: # @gimp_number_pair_entry_get_default_text
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_number_pair_entry_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.4
	movl	$1, -44(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.5
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.7
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.9
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.10
	leaq	.L.str.5(%rip), %rdi
	leaq	.L__func__.gimp_number_pair_entry_get_default_text(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB12_13
.LBB12_11:                              # %if.end.11
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB12_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_number_pair_entry_get_default_text, .Lfunc_end12-gimp_number_pair_entry_get_default_text
	.cfi_endproc

	.globl	gimp_number_pair_entry_set_aspect
	.align	16, 0x90
	.type	gimp_number_pair_entry_set_aspect,@function
gimp_number_pair_entry_set_aspect:      # @gimp_number_pair_entry_set_aspect
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_number_pair_entry_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.4
	movl	$1, -44(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.5
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.7
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.9
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.10
	leaq	.L.str.5(%rip), %rdi
	leaq	.L__func__.gimp_number_pair_entry_set_aspect(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB13_17
.LBB13_11:                              # %if.end.11
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_number_pair_entry_get_aspect@PLT
	cmpl	-12(%rbp), %eax
	jne	.LBB13_14
# BB#13:                                # %if.then.14
	jmp	.LBB13_17
.LBB13_14:                              # %if.end.15
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	je	.LBB13_15
	jmp	.LBB13_18
.LBB13_18:                              # %if.end.15
	movl	-52(%rbp), %eax         # 4-byte Reload
	decl	%eax
	subl	$2, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jb	.LBB13_16
	jmp	.LBB13_17
.LBB13_15:                              # %sw.bb
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	callq	gimp_number_pair_entry_set_values@PLT
	jmp	.LBB13_17
.LBB13_16:                              # %sw.bb.18
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	callq	gimp_number_pair_entry_set_values@PLT
.LBB13_17:                              # %sw.epilog
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_number_pair_entry_set_aspect, .Lfunc_end13-gimp_number_pair_entry_set_aspect
	.cfi_endproc

	.globl	gimp_number_pair_entry_set_user_override
	.align	16, 0x90
	.type	gimp_number_pair_entry_set_user_override,@function
gimp_number_pair_entry_set_user_override: # @gimp_number_pair_entry_set_user_override
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
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_number_pair_entry_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.4
	movl	$1, -44(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.5
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.7
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.9
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.10
	leaq	.L.str.5(%rip), %rdi
	leaq	.L__func__.gimp_number_pair_entry_set_user_override(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB14_15
.LBB14_11:                              # %if.end.11
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 32(%rax)
	cmpl	$0, -12(%rbp)
	jne	.LBB14_14
# BB#13:                                # %if.then.15
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	callq	gimp_number_pair_entry_set_default_values@PLT
.LBB14_14:                              # %if.end.16
	movq	-8(%rbp), %rdi
	cmpl	$0, -12(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %esi
	callq	gimp_number_pair_entry_modify_font
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.12(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_notify@PLT
.LBB14_15:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_number_pair_entry_set_user_override, .Lfunc_end14-gimp_number_pair_entry_set_user_override
	.cfi_endproc

	.globl	gimp_number_pair_entry_set_default_values
	.align	16, 0x90
	.type	gimp_number_pair_entry_set_default_values,@function
gimp_number_pair_entry_set_default_values: # @gimp_number_pair_entry_set_default_values
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_number_pair_entry_get_type@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.4
	movl	$1, -52(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.5
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -52(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.7
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.9
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.10
	leaq	.L.str.5(%rip), %rdi
	leaq	.L__func__.gimp_number_pair_entry_set_default_values(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB15_14
.LBB15_11:                              # %if.end.11
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -32(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	movq	-32(%rbp), %rax
	cmpl	$0, 32(%rax)
	jne	.LBB15_14
# BB#13:                                # %if.then.14
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	callq	gimp_number_pair_entry_set_values@PLT
.LBB15_14:                              # %if.end.17
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_number_pair_entry_set_default_values, .Lfunc_end15-gimp_number_pair_entry_set_default_values
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_number_pair_entry_modify_font,@function
gimp_number_pair_entry_modify_font:     # @gimp_number_pair_entry_modify_font
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	36(%rdi), %esi
	cmpl	-12(%rbp), %esi
	jne	.LBB16_2
# BB#1:                                 # %if.then
	jmp	.LBB16_5
.LBB16_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_get_modifier_style@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 72(%rax)
	jne	.LBB16_4
# BB#3:                                 # %if.then.5
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_get_pango_context@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	pango_context_get_font_description@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	pango_font_description_copy@PLT
	movq	-32(%rbp), %rsi
	movq	%rax, 72(%rsi)
.LBB16_4:                               # %if.end.13
	xorl	%eax, %eax
	movl	$2, %ecx
	movq	-32(%rbp), %rdx
	movq	72(%rdx), %rdi
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, %esi
	callq	pango_font_description_set_style@PLT
	movq	-8(%rbp), %rdx
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_widget_modify_style@PLT
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 36(%rax)
.LBB16_5:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_number_pair_entry_modify_font, .Lfunc_end16-gimp_number_pair_entry_modify_font
	.cfi_endproc

	.globl	gimp_number_pair_entry_get_user_override
	.align	16, 0x90
	.type	gimp_number_pair_entry_get_user_override,@function
gimp_number_pair_entry_get_user_override: # @gimp_number_pair_entry_get_user_override
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_number_pair_entry_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.4
	movl	$1, -44(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.5
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.7
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.9
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.10
	leaq	.L.str.5(%rip), %rdi
	leaq	.L__func__.gimp_number_pair_entry_get_user_override(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB17_13
.LBB17_11:                              # %if.end.11
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	32(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB17_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_number_pair_entry_get_user_override, .Lfunc_end17-gimp_number_pair_entry_get_user_override
	.cfi_endproc

	.globl	gimp_number_pair_entry_get_default_values
	.align	16, 0x90
	.type	gimp_number_pair_entry_get_default_values,@function
gimp_number_pair_entry_get_default_values: # @gimp_number_pair_entry_get_default_values
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_number_pair_entry_get_type@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB18_8
.LBB18_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.4
	movl	$1, -52(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.5
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -52(%rbp)
.LBB18_7:                               # %if.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.7
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.9
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.10
	leaq	.L.str.5(%rip), %rdi
	leaq	.L__func__.gimp_number_pair_entry_get_default_values(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB18_16
.LBB18_11:                              # %if.end.11
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB18_14
# BB#13:                                # %if.then.14
	movq	-32(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB18_14:                              # %if.end.15
	cmpq	$0, -24(%rbp)
	je	.LBB18_16
# BB#15:                                # %if.then.17
	movq	-32(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB18_16:                              # %if.end.18
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_number_pair_entry_get_default_values, .Lfunc_end18-gimp_number_pair_entry_get_default_values
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_0:
	.quad	4503599627370496        # double 2.2250738585072014E-308
.LCPI19_1:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
.LCPI19_2:
	.quad	4607182418800017408     # double 1
.LCPI19_3:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	gimp_number_pair_entry_class_init,@function
gimp_number_pair_entry_class_init:      # @gimp_number_pair_entry_class_init
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
	pushq	%rbx
	subq	$216, %rsp
.Ltmp60:
	.cfi_offset %rbx, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_type_check_class_cast@PLT
	movl	$88, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private@PLT
	leaq	.L.str.13(%rip), %rdi
	movl	$1, %edx
	movl	$824, %ecx              # imm = 0x338
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	movq	g_cclosure_marshal_VOID__VOID@GOTPCREL(%rip), %rsi
	movl	$4, %r8d
	movl	%r8d, %r9d
	xorl	%r8d, %r8d
	movq	-16(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%r10, %rsi
	movl	%r8d, -36(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	callq	g_signal_new@PLT
	leaq	.L.str.14(%rip), %rdi
	movl	$1, %edx
	movl	$832, %ecx              # imm = 0x340
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movq	g_cclosure_marshal_VOID__VOID@GOTPCREL(%rip), %r8
	movl	$4, %r11d
	movl	%r11d, %r9d
	xorl	%r11d, %r11d
	movl	%eax, entry_signals(%rip)
	movq	-16(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%r10, %rsi
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	%r8, -64(%rbp)          # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	callq	g_signal_new@PLT
	leaq	.L.str.7(%rip), %rdi
	leaq	.L.str.15(%rip), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movsd	.LCPI19_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI19_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI19_3(%rip), %xmm2  # xmm2 = mem[0],zero
	movl	$227, %ecx
	leaq	gimp_number_pair_entry_finalize(%rip), %r8
	leaq	gimp_number_pair_entry_get_property(%rip), %r9
	leaq	gimp_number_pair_entry_set_property(%rip), %r10
	movl	%eax, entry_signals+4(%rip)
	movq	-16(%rbp), %rbx
	movq	$0, 824(%rbx)
	movq	-16(%rbp), %rbx
	movq	$0, 832(%rbx)
	movq	-24(%rbp), %rbx
	movq	%r10, 24(%rbx)
	movq	-24(%rbp), %r10
	movq	%r9, 32(%r10)
	movq	-24(%rbp), %r9
	movq	%r8, 48(%r9)
	movq	-24(%rbp), %r8
	movq	%r8, -88(%rbp)          # 8-byte Spill
	callq	g_param_spec_double@PLT
	movl	$1, %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.8(%rip), %rdi
	leaq	.L.str.16(%rip), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movsd	.LCPI19_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI19_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI19_3(%rip), %xmm2  # xmm2 = mem[0],zero
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_param_spec_double@PLT
	movl	$2, %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.17(%rip), %rdi
	leaq	.L.str.18(%rip), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movsd	.LCPI19_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI19_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI19_3(%rip), %xmm2  # xmm2 = mem[0],zero
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_param_spec_double@PLT
	movl	$3, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.19(%rip), %rdi
	leaq	.L.str.20(%rip), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movsd	.LCPI19_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI19_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI19_3(%rip), %xmm2  # xmm2 = mem[0],zero
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_param_spec_double@PLT
	movl	$4, %esi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.12(%rip), %rdi
	leaq	.L.str.21(%rip), %rsi
	leaq	.L.str.22(%rip), %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean@PLT
	movl	$5, %esi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.1(%rip), %rdi
	leaq	.L.str.23(%rip), %rsi
	leaq	.L.str.24(%rip), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movl	$235, %r8d
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_param_spec_string@PLT
	movl	$6, %esi
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.11(%rip), %rdi
	leaq	.L.str.25(%rip), %rsi
	leaq	.L.str.26(%rip), %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_param_spec_string@PLT
	movl	$7, %esi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.27(%rip), %rsi
	leaq	.L.str.28(%rip), %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean@PLT
	movl	$8, %esi
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.3(%rip), %rdi
	leaq	.L.str.29(%rip), %rsi
	leaq	.L.str.30(%rip), %rdx
	movsd	.LCPI19_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI19_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	movsd	-152(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	g_param_spec_double@PLT
	movl	$9, %esi
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.31(%rip), %rsi
	leaq	.L.str.32(%rip), %rdx
	movsd	.LCPI19_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI19_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movsd	%xmm1, -168(%rbp)       # 8-byte Spill
	movsd	-168(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	g_param_spec_double@PLT
	movl	$10, %esi
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.9(%rip), %rdi
	leaq	.L.str.33(%rip), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movsd	.LCPI19_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI19_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI19_2(%rip), %xmm2  # xmm2 = mem[0],zero
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	g_param_spec_double@PLT
	movl	$11, %esi
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	movq	-24(%rbp), %rdi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	callq	gimp_aspect_type_get_type@PLT
	leaq	.L.str.10(%rip), %rdi
	leaq	.L.str.34(%rip), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum@PLT
	movl	$12, %esi
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	addq	$216, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_number_pair_entry_class_init, .Lfunc_end19-gimp_number_pair_entry_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_number_pair_entry_set_property,@function
gimp_number_pair_entry_set_property:    # @gimp_number_pair_entry_set_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp63:
	.cfi_def_cfa_register %rbp
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_number_pair_entry_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movq	208(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$11, %r8d
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	ja	.LBB20_16
# BB#20:                                # %entry
	leaq	.LJTI20_0(%rip), %rax
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB20_1:                               # %sw.bb
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_double@PLT
	movq	-48(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-104(%rbp), %rdi        # 8-byte Reload
	callq	gimp_number_pair_entry_set_values@PLT
	jmp	.LBB20_19
.LBB20_2:                               # %sw.bb.5
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	callq	g_value_get_double@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-128(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_number_pair_entry_set_values@PLT
	jmp	.LBB20_19
.LBB20_3:                               # %sw.bb.7
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_double@PLT
	movq	-48(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-136(%rbp), %rdi        # 8-byte Reload
	callq	gimp_number_pair_entry_set_default_values@PLT
	jmp	.LBB20_19
.LBB20_4:                               # %sw.bb.9
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	callq	g_value_get_double@PLT
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movsd	-152(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-160(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_number_pair_entry_set_default_values@PLT
	jmp	.LBB20_19
.LBB20_5:                               # %sw.bb.11
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_boolean@PLT
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_number_pair_entry_set_user_override@PLT
	jmp	.LBB20_19
.LBB20_6:                               # %sw.bb.13
	movq	-48(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	movq	-48(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-24(%rbp), %rdi
	callq	g_value_get_string@PLT
	cmpq	$0, %rax
	je	.LBB20_8
# BB#7:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	g_value_get_string@PLT
	movq	$-1, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-48(%rbp), %rdx
	addq	$48, %rdx
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	callq	g_utf8_to_ucs4@PLT
	movq	-48(%rbp), %rcx
	movq	%rax, 40(%rcx)
	jmp	.LBB20_9
.LBB20_8:                               # %if.else
	movq	-48(%rbp), %rax
	movq	$0, 40(%rax)
.LBB20_9:                               # %if.end
	jmp	.LBB20_19
.LBB20_10:                              # %sw.bb.20
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_string@PLT
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_number_pair_entry_set_default_text@PLT
	jmp	.LBB20_19
.LBB20_11:                              # %sw.bb.22
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean@PLT
	movq	-48(%rbp), %rdi
	movl	%eax, 64(%rdi)
	jmp	.LBB20_19
.LBB20_12:                              # %sw.bb.24
	movq	-24(%rbp), %rdi
	callq	g_value_get_double@PLT
	movq	-48(%rbp), %rdi
	movsd	%xmm0, 72(%rdi)
	jmp	.LBB20_19
.LBB20_13:                              # %sw.bb.26
	movq	-24(%rbp), %rdi
	callq	g_value_get_double@PLT
	movq	-48(%rbp), %rdi
	movsd	%xmm0, 80(%rdi)
	jmp	.LBB20_19
.LBB20_14:                              # %sw.bb.28
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_double@PLT
	movq	-200(%rbp), %rdi        # 8-byte Reload
	callq	gimp_number_pair_entry_set_ratio@PLT
	jmp	.LBB20_19
.LBB20_15:                              # %sw.bb.30
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_enum@PLT
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_number_pair_entry_set_aspect@PLT
	jmp	.LBB20_19
.LBB20_16:                              # %sw.default
	jmp	.LBB20_17
.LBB20_17:                              # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movl	-68(%rbp), %r8d
	movq	-64(%rbp), %rax
	movq	8(%rax), %r9
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -212(%rbp)        # 4-byte Spill
	movq	%r9, -224(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.35(%rip), %rdi
	leaq	.L.str.36(%rip), %rsi
	movl	$1141, %edx             # imm = 0x475
	leaq	.L.str.37(%rip), %rcx
	movl	-212(%rbp), %r8d        # 4-byte Reload
	movq	-224(%rbp), %r9         # 8-byte Reload
	movq	-232(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#18:                                # %do.end
	jmp	.LBB20_19
.LBB20_19:                              # %sw.epilog
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_number_pair_entry_set_property, .Lfunc_end20-gimp_number_pair_entry_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI20_0:
	.long	.LBB20_1-.LJTI20_0
	.long	.LBB20_2-.LJTI20_0
	.long	.LBB20_3-.LJTI20_0
	.long	.LBB20_4-.LJTI20_0
	.long	.LBB20_5-.LJTI20_0
	.long	.LBB20_6-.LJTI20_0
	.long	.LBB20_10-.LJTI20_0
	.long	.LBB20_11-.LJTI20_0
	.long	.LBB20_12-.LJTI20_0
	.long	.LBB20_13-.LJTI20_0
	.long	.LBB20_14-.LJTI20_0
	.long	.LBB20_15-.LJTI20_0

	.text
	.align	16, 0x90
	.type	gimp_number_pair_entry_get_property,@function
gimp_number_pair_entry_get_property:    # @gimp_number_pair_entry_get_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp66:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_number_pair_entry_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movq	208(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$11, %r8d
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	ja	.LBB21_13
# BB#17:                                # %entry
	leaq	.LJTI21_0(%rip), %rax
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB21_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	callq	g_value_set_double@PLT
	jmp	.LBB21_16
.LBB21_2:                               # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	callq	g_value_set_double@PLT
	jmp	.LBB21_16
.LBB21_3:                               # %sw.bb.5
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double@PLT
	jmp	.LBB21_16
.LBB21_4:                               # %sw.bb.6
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double@PLT
	jmp	.LBB21_16
.LBB21_5:                               # %sw.bb.7
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	32(%rax), %esi
	callq	g_value_set_boolean@PLT
	jmp	.LBB21_16
.LBB21_6:                               # %sw.bb.8
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	-48(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movq	-112(%rbp), %r8         # 8-byte Reload
	callq	g_ucs4_to_utf8@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_take_string@PLT
	jmp	.LBB21_16
.LBB21_7:                               # %sw.bb.10
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	64(%rax), %esi
	callq	g_value_set_boolean@PLT
	jmp	.LBB21_16
.LBB21_8:                               # %sw.bb.11
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	56(%rax), %rsi
	callq	g_value_set_string@PLT
	jmp	.LBB21_16
.LBB21_9:                               # %sw.bb.12
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsd	72(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double@PLT
	jmp	.LBB21_16
.LBB21_10:                              # %sw.bb.13
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsd	80(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double@PLT
	jmp	.LBB21_16
.LBB21_11:                              # %sw.bb.14
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_number_pair_entry_get_ratio@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	callq	g_value_set_double@PLT
	jmp	.LBB21_16
.LBB21_12:                              # %sw.bb.16
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_number_pair_entry_get_aspect@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	g_value_set_enum@PLT
	jmp	.LBB21_16
.LBB21_13:                              # %sw.default
	jmp	.LBB21_14
.LBB21_14:                              # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movl	-68(%rbp), %r8d
	movq	-64(%rbp), %rax
	movq	8(%rax), %r9
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -132(%rbp)        # 4-byte Spill
	movq	%r9, -144(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.35(%rip), %rdi
	leaq	.L.str.36(%rip), %rsi
	movl	$1199, %edx             # imm = 0x4AF
	leaq	.L.str.37(%rip), %rcx
	movl	-132(%rbp), %r8d        # 4-byte Reload
	movq	-144(%rbp), %r9         # 8-byte Reload
	movq	-152(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#15:                                # %do.end
	jmp	.LBB21_16
.LBB21_16:                              # %sw.epilog
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_number_pair_entry_get_property, .Lfunc_end21-gimp_number_pair_entry_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI21_0:
	.long	.LBB21_1-.LJTI21_0
	.long	.LBB21_2-.LJTI21_0
	.long	.LBB21_3-.LJTI21_0
	.long	.LBB21_4-.LJTI21_0
	.long	.LBB21_5-.LJTI21_0
	.long	.LBB21_6-.LJTI21_0
	.long	.LBB21_8-.LJTI21_0
	.long	.LBB21_7-.LJTI21_0
	.long	.LBB21_9-.LJTI21_0
	.long	.LBB21_10-.LJTI21_0
	.long	.LBB21_11-.LJTI21_0
	.long	.LBB21_12-.LJTI21_0

	.text
	.align	16, 0x90
	.type	gimp_number_pair_entry_finalize,@function
gimp_number_pair_entry_finalize:        # @gimp_number_pair_entry_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp69:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	cmpq	$0, 40(%rdi)
	je	.LBB22_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 48(%rax)
.LBB22_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB22_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 56(%rax)
.LBB22_4:                               # %if.end.8
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_number_pair_entry_parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_number_pair_entry_finalize, .Lfunc_end22-gimp_number_pair_entry_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp72:
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
	je	.LBB23_2
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
.LBB23_2:                               # %entry
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
	leaq	.L.str.5(%rip), %rdi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end23:
	.size	g_warning, .Lfunc_end23-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_number_pair_entry_changed,@function
gimp_number_pair_entry_changed:         # @gimp_number_pair_entry_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp75:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%esi, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_number_pair_entry_modify_font
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_number_pair_entry_changed, .Lfunc_end24-gimp_number_pair_entry_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_number_pair_entry_events,@function
gimp_number_pair_entry_events:          # @gimp_number_pair_entry_events
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp78:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_number_pair_entry_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movq	208(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$8, %edx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movl	%edx, -96(%rbp)         # 4-byte Spill
	je	.LBB25_1
	jmp	.LBB25_17
.LBB25_17:                              # %entry
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$12, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB25_6
	jmp	.LBB25_15
.LBB25_1:                               # %sw.bb
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$65293, 28(%rax)        # imm = 0xFF0D
	je	.LBB25_5
# BB#2:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	cmpl	$65421, 28(%rax)        # imm = 0xFF8D
	je	.LBB25_5
# BB#3:                                 # %land.lhs.true.6
	movq	-48(%rbp), %rax
	cmpl	$65076, 28(%rax)        # imm = 0xFE34
	je	.LBB25_5
# BB#4:                                 # %if.then
	jmp	.LBB25_16
.LBB25_5:                               # %if.end
	movl	$1, -36(%rbp)
.LBB25_6:                               # %sw.bb.9
	movq	-24(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_entry_get_text@PLT
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rdi
	leaq	-72(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	%rax, %rsi
	callq	gimp_number_pair_entry_parse_text
	movl	%eax, -60(%rbp)
	movl	%eax, %r8d
	testl	%eax, %eax
	movl	%r8d, -116(%rbp)        # 4-byte Spill
	je	.LBB25_7
	jmp	.LBB25_18
.LBB25_18:                              # %sw.bb.9
	movl	-116(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	je	.LBB25_12
	jmp	.LBB25_13
.LBB25_7:                               # %sw.bb.14
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	ucomisd	-72(%rbp), %xmm0
	jne	.LBB25_10
	jp	.LBB25_10
# BB#8:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	ucomisd	-80(%rbp), %xmm0
	jne	.LBB25_10
	jp	.LBB25_10
# BB#9:                                 # %lor.lhs.false.17
	cmpl	$0, -36(%rbp)
	je	.LBB25_11
.LBB25_10:                              # %if.then.18
	movq	-24(%rbp), %rdi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_number_pair_entry_set_values@PLT
	movl	$80, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	movl	$1, 32(%rdi)
	movq	-24(%rbp), %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.12(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_notify@PLT
.LBB25_11:                              # %if.end.20
	jmp	.LBB25_14
.LBB25_12:                              # %sw.bb.21
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	callq	gimp_number_pair_entry_set_values@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rax
	movl	$0, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.12(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_notify@PLT
	jmp	.LBB25_14
.LBB25_13:                              # %sw.default
	jmp	.LBB25_14
.LBB25_14:                              # %sw.epilog
	movq	-24(%rbp), %rdi
	callq	gimp_number_pair_entry_update_text
	movq	-24(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gtk_editable_get_type@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	callq	gtk_editable_set_position@PLT
	jmp	.LBB25_16
.LBB25_15:                              # %sw.default.26
	jmp	.LBB25_16
.LBB25_16:                              # %sw.epilog.27
	xorl	%eax, %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_number_pair_entry_events, .Lfunc_end25-gimp_number_pair_entry_events
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_number_pair_entry_parse_text,@function
gimp_number_pair_entry_parse_text:      # @gimp_number_pair_entry_parse_text
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp81:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	-80(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rcx
	movq	208(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movl	$0, -68(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	callq	strtod@PLT
	movsd	%xmm0, -56(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB26_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB26_29
.LBB26_2:                               # %if.else
	movq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
# BB#3:                                 # %if.end
	jmp	.LBB26_4
.LBB26_4:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rdi
	callq	g_utf8_get_char@PLT
	movl	%eax, %edi
	callq	g_unichar_isspace@PLT
	cmpl	$0, %eax
	je	.LBB26_6
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB26_4 Depth=1
	movq	g_utf8_skip@GOTPCREL(%rip), %rax
	movq	-24(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %esi
	movl	%esi, %edx
	movq	(%rax), %rax
	movsbl	(%rax,%rdx), %esi
	movslq	%esi, %rax
	addq	%rax, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB26_4
.LBB26_6:                               # %while.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_utf8_get_char@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_number_pair_entry_valid_separator
	cmpl	$0, %eax
	jne	.LBB26_8
# BB#7:                                 # %if.then.8
	movl	$2, -4(%rbp)
	jmp	.LBB26_29
.LBB26_8:                               # %if.else.9
	movq	g_utf8_skip@GOTPCREL(%rip), %rax
	movq	-24(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %esi
	movl	%esi, %edx
	movq	(%rax), %rax
	movsbl	(%rax,%rdx), %esi
	movslq	%esi, %rax
	addq	%rax, %rcx
	movq	%rcx, -24(%rbp)
# BB#9:                                 # %if.end.15
	leaq	-80(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	strtod@PLT
	movsd	%xmm0, -64(%rbp)
	movq	-80(%rbp), %rsi
	cmpq	-24(%rbp), %rsi
	jne	.LBB26_11
# BB#10:                                # %if.then.19
	movl	$2, -4(%rbp)
	jmp	.LBB26_29
.LBB26_11:                              # %if.else.20
	movq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
# BB#12:                                # %if.end.21
	jmp	.LBB26_13
.LBB26_13:                              # %while.cond.22
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rdi
	callq	g_utf8_get_char@PLT
	movl	%eax, %edi
	callq	g_unichar_isspace@PLT
	cmpl	$0, %eax
	je	.LBB26_15
# BB#14:                                # %while.body.26
                                        #   in Loop: Header=BB26_13 Depth=1
	movq	g_utf8_skip@GOTPCREL(%rip), %rax
	movq	-24(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %esi
	movl	%esi, %edx
	movq	(%rax), %rax
	movsbl	(%rax,%rdx), %esi
	movslq	%esi, %rax
	addq	%rax, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB26_13
.LBB26_15:                              # %while.end.32
	movq	-24(%rbp), %rdi
	callq	g_utf8_get_char@PLT
	cmpl	$61, %eax
	jne	.LBB26_17
# BB#16:                                # %if.then.36
	movq	g_utf8_skip@GOTPCREL(%rip), %rax
	movq	-48(%rbp), %rcx
	movl	64(%rcx), %edx
	movl	%edx, -68(%rbp)
	movq	-24(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movzbl	(%rsi), %edx
	movl	%edx, %esi
	movq	(%rax), %rax
	movsbl	(%rax,%rsi), %edx
	movslq	%edx, %rax
	addq	%rax, %rcx
	movq	%rcx, -24(%rbp)
.LBB26_17:                              # %if.end.42
	jmp	.LBB26_18
.LBB26_18:                              # %while.cond.43
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rdi
	callq	g_utf8_get_char@PLT
	movl	%eax, %edi
	callq	g_unichar_isspace@PLT
	cmpl	$0, %eax
	je	.LBB26_20
# BB#19:                                # %while.body.47
                                        #   in Loop: Header=BB26_18 Depth=1
	movq	g_utf8_skip@GOTPCREL(%rip), %rax
	movq	-24(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %esi
	movl	%esi, %edx
	movq	(%rax), %rax
	movsbl	(%rax,%rdx), %esi
	movslq	%esi, %rax
	addq	%rax, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB26_18
.LBB26_20:                              # %while.end.53
	movq	-24(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB26_22
# BB#21:                                # %if.then.55
	movl	$2, -4(%rbp)
	jmp	.LBB26_29
.LBB26_22:                              # %if.end.56
	movq	-16(%rbp), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_number_pair_entry_numbers_in_range
	cmpl	$0, %eax
	jne	.LBB26_24
# BB#23:                                # %if.then.59
	movl	$2, -4(%rbp)
	jmp	.LBB26_29
.LBB26_24:                              # %if.end.60
	cmpl	$0, -68(%rbp)
	je	.LBB26_27
# BB#25:                                # %land.lhs.true
	xorps	%xmm0, %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB26_26
	jp	.LBB26_26
	jmp	.LBB26_27
.LBB26_26:                              # %if.then.64
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-64(%rbp), %xmm0
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_number_pair_entry_ratio_to_fraction
	jmp	.LBB26_28
.LBB26_27:                              # %if.else.65
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB26_28:                              # %if.end.66
	movl	$0, -4(%rbp)
.LBB26_29:                              # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_number_pair_entry_parse_text, .Lfunc_end26-gimp_number_pair_entry_parse_text
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_number_pair_entry_valid_separator,@function
gimp_number_pair_entry_valid_separator: # @gimp_number_pair_entry_valid_separator
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp84:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	movq	208(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	cmpq	$0, 48(%rdi)
	jle	.LBB27_8
# BB#1:                                 # %if.then
	movl	$0, -36(%rbp)
.LBB27_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	48(%rcx), %rax
	jge	.LBB27_7
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB27_2 Depth=1
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	40(%rcx), %rcx
	movl	(%rcx,%rax,4), %edx
	cmpl	-20(%rbp), %edx
	jne	.LBB27_5
# BB#4:                                 # %if.then.8
	movl	$1, -4(%rbp)
	jmp	.LBB27_12
.LBB27_5:                               # %if.end
                                        #   in Loop: Header=BB27_2 Depth=1
	jmp	.LBB27_6
.LBB27_6:                               # %for.inc
                                        #   in Loop: Header=BB27_2 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB27_2
.LBB27_7:                               # %for.end
	jmp	.LBB27_11
.LBB27_8:                               # %if.else
	cmpl	$44, -20(%rbp)
	jne	.LBB27_10
# BB#9:                                 # %if.then.11
	movl	$1, -4(%rbp)
	jmp	.LBB27_12
.LBB27_10:                              # %if.end.12
	jmp	.LBB27_11
.LBB27_11:                              # %if.end.13
	movl	$0, -4(%rbp)
.LBB27_12:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_number_pair_entry_valid_separator, .Lfunc_end27-gimp_number_pair_entry_valid_separator
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_number_pair_entry_numbers_in_range,@function
gimp_number_pair_entry_numbers_in_range: # @gimp_number_pair_entry_numbers_in_range
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp87:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movb	%al, %cl
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdi
	ucomisd	72(%rdi), %xmm0
	movb	%cl, -33(%rbp)          # 1-byte Spill
	jb	.LBB28_4
# BB#1:                                 # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdx
	movsd	80(%rdx), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movb	%cl, -33(%rbp)          # 1-byte Spill
	jb	.LBB28_4
# BB#2:                                 # %land.lhs.true.4
	xorl	%eax, %eax
	movb	%al, %cl
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdx
	ucomisd	72(%rdx), %xmm0
	movb	%cl, -33(%rbp)          # 1-byte Spill
	jb	.LBB28_4
# BB#3:                                 # %land.rhs
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	80(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	setae	%cl
	movb	%cl, -33(%rbp)          # 1-byte Spill
.LBB28_4:                               # %land.end
	movb	-33(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_number_pair_entry_numbers_in_range, .Lfunc_end28-gimp_number_pair_entry_numbers_in_range
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_number_pair_entry_strdup_number_pair_string,@function
gimp_number_pair_entry_strdup_number_pair_string: # @gimp_number_pair_entry_strdup_number_pair_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp88:
	.cfi_def_cfa_offset 16
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp90:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	cmpq	$0, 48(%rdi)
	jle	.LBB29_2
# BB#1:                                 # %if.then
	leaq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movl	(%rax), %edi
	callq	g_unichar_to_utf8@PLT
	movl	%eax, -44(%rbp)
	jmp	.LBB29_3
.LBB29_2:                               # %if.else
	movl	$44, %edi
	leaq	-40(%rbp), %rsi
	callq	g_unichar_to_utf8@PLT
	movl	%eax, -44(%rbp)
.LBB29_3:                               # %if.end
	leaq	.L.str.41(%rip), %rdi
	leaq	-40(%rbp), %rsi
	movslq	-44(%rbp), %rax
	movb	$0, -40(%rbp,%rax)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movb	$2, %al
	callq	g_strdup_printf@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_number_pair_entry_strdup_number_pair_string, .Lfunc_end29-gimp_number_pair_entry_strdup_number_pair_string
	.cfi_endproc

	.type	gimp_number_pair_entry_get_type.g_define_type_id__volatile,@object # @gimp_number_pair_entry_get_type.g_define_type_id__volatile
	.local	gimp_number_pair_entry_get_type.g_define_type_id__volatile
	.comm	gimp_number_pair_entry_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpNumberPairEntry"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"separators"
	.size	.L.str.1, 11

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"allow-simplification"
	.size	.L.str.2, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"min-valid-value"
	.size	.L.str.3, 16

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"max-valid-value"
	.size	.L.str.4, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"LibGimpWidgets"
	.size	.L.str.5, 15

	.type	.L__func__.gimp_number_pair_entry_set_ratio,@object # @__func__.gimp_number_pair_entry_set_ratio
.L__func__.gimp_number_pair_entry_set_ratio:
	.asciz	"gimp_number_pair_entry_set_ratio"
	.size	.L__func__.gimp_number_pair_entry_set_ratio, 33

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_IS_NUMBER_PAIR_ENTRY (entry)"
	.size	.L.str.6, 34

	.type	.L__func__.gimp_number_pair_entry_get_ratio,@object # @__func__.gimp_number_pair_entry_get_ratio
.L__func__.gimp_number_pair_entry_get_ratio:
	.asciz	"gimp_number_pair_entry_get_ratio"
	.size	.L__func__.gimp_number_pair_entry_get_ratio, 33

	.type	.L__func__.gimp_number_pair_entry_set_values,@object # @__func__.gimp_number_pair_entry_set_values
.L__func__.gimp_number_pair_entry_set_values:
	.asciz	"gimp_number_pair_entry_set_values"
	.size	.L__func__.gimp_number_pair_entry_set_values, 34

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"left-number"
	.size	.L.str.7, 12

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"right-number"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"ratio"
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"aspect"
	.size	.L.str.10, 7

	.type	entry_signals,@object   # @entry_signals
	.local	entry_signals
	.comm	entry_signals,8,4
	.type	.L__func__.gimp_number_pair_entry_get_values,@object # @__func__.gimp_number_pair_entry_get_values
.L__func__.gimp_number_pair_entry_get_values:
	.asciz	"gimp_number_pair_entry_get_values"
	.size	.L__func__.gimp_number_pair_entry_get_values, 34

	.type	.L__func__.gimp_number_pair_entry_set_default_text,@object # @__func__.gimp_number_pair_entry_set_default_text
.L__func__.gimp_number_pair_entry_set_default_text:
	.asciz	"gimp_number_pair_entry_set_default_text"
	.size	.L__func__.gimp_number_pair_entry_set_default_text, 40

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"default-text"
	.size	.L.str.11, 13

	.type	.L__func__.gimp_number_pair_entry_get_default_text,@object # @__func__.gimp_number_pair_entry_get_default_text
.L__func__.gimp_number_pair_entry_get_default_text:
	.asciz	"gimp_number_pair_entry_get_default_text"
	.size	.L__func__.gimp_number_pair_entry_get_default_text, 40

	.type	.L__func__.gimp_number_pair_entry_set_aspect,@object # @__func__.gimp_number_pair_entry_set_aspect
.L__func__.gimp_number_pair_entry_set_aspect:
	.asciz	"gimp_number_pair_entry_set_aspect"
	.size	.L__func__.gimp_number_pair_entry_set_aspect, 34

	.type	.L__func__.gimp_number_pair_entry_get_aspect,@object # @__func__.gimp_number_pair_entry_get_aspect
.L__func__.gimp_number_pair_entry_get_aspect:
	.asciz	"gimp_number_pair_entry_get_aspect"
	.size	.L__func__.gimp_number_pair_entry_get_aspect, 34

	.type	.L__func__.gimp_number_pair_entry_set_user_override,@object # @__func__.gimp_number_pair_entry_set_user_override
.L__func__.gimp_number_pair_entry_set_user_override:
	.asciz	"gimp_number_pair_entry_set_user_override"
	.size	.L__func__.gimp_number_pair_entry_set_user_override, 41

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"user-override"
	.size	.L.str.12, 14

	.type	.L__func__.gimp_number_pair_entry_get_user_override,@object # @__func__.gimp_number_pair_entry_get_user_override
.L__func__.gimp_number_pair_entry_get_user_override:
	.asciz	"gimp_number_pair_entry_get_user_override"
	.size	.L__func__.gimp_number_pair_entry_get_user_override, 41

	.type	.L__func__.gimp_number_pair_entry_set_default_values,@object # @__func__.gimp_number_pair_entry_set_default_values
.L__func__.gimp_number_pair_entry_set_default_values:
	.asciz	"gimp_number_pair_entry_set_default_values"
	.size	.L__func__.gimp_number_pair_entry_set_default_values, 42

	.type	.L__func__.gimp_number_pair_entry_get_default_values,@object # @__func__.gimp_number_pair_entry_get_default_values
.L__func__.gimp_number_pair_entry_get_default_values:
	.asciz	"gimp_number_pair_entry_get_default_values"
	.size	.L__func__.gimp_number_pair_entry_get_default_values, 42

	.type	gimp_number_pair_entry_parent_class,@object # @gimp_number_pair_entry_parent_class
	.local	gimp_number_pair_entry_parent_class
	.comm	gimp_number_pair_entry_parent_class,8,8
	.type	GimpNumberPairEntry_private_offset,@object # @GimpNumberPairEntry_private_offset
	.local	GimpNumberPairEntry_private_offset
	.comm	GimpNumberPairEntry_private_offset,4,4
	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"numbers-changed"
	.size	.L.str.13, 16

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"ratio-changed"
	.size	.L.str.14, 14

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Left number"
	.size	.L.str.15, 12

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Right number"
	.size	.L.str.16, 13

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"default-left-number"
	.size	.L.str.17, 20

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Default left number"
	.size	.L.str.18, 20

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"default-right-number"
	.size	.L.str.19, 21

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Default right number"
	.size	.L.str.20, 21

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"User override"
	.size	.L.str.21, 14

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Whether the widget is in 'user override' mode"
	.size	.L.str.22, 46

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Separators"
	.size	.L.str.23, 11

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"A string of valid separators"
	.size	.L.str.24, 29

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Default text"
	.size	.L.str.25, 13

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"String to show when in automatic mode"
	.size	.L.str.26, 38

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Allow simplification"
	.size	.L.str.27, 21

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Whether to allow simplification"
	.size	.L.str.28, 32

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Min valid value"
	.size	.L.str.29, 16

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Minimum value valid when parsing input"
	.size	.L.str.30, 39

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Max valid value"
	.size	.L.str.31, 16

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Maximum value valid when parsing input"
	.size	.L.str.32, 39

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Ratio"
	.size	.L.str.33, 6

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Aspect"
	.size	.L.str.34, 7

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.35, 54

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"gimpnumberpairentry.c"
	.size	.L.str.36, 22

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"property"
	.size	.L.str.37, 9

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"changed"
	.size	.L.str.38, 8

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"focus-out-event"
	.size	.L.str.39, 16

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"key-press-event"
	.size	.L.str.40, 16

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"%g%s%g"
	.size	.L.str.41, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
