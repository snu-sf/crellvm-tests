	.text
	.file	"gimp-gui.bc"
	.globl	gimp_gui_init
	.align	16, 0x90
	.type	gimp_gui_init,@function
gimp_gui_init:                          # @gimp_gui_init
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_gui_init, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_13
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 104(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 112(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 120(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 128(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 136(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 144(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 152(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 160(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 168(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 176(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 200(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 208(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 216(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 224(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 232(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 240(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 248(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 256(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 272(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 280(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 288(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 296(%rax)
.LBB0_13:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_gui_init, .Lfunc_end0-gimp_gui_init
	.cfi_endproc

	.globl	gimp_gui_ungrab
	.align	16, 0x90
	.type	gimp_gui_ungrab,@function
gimp_gui_ungrab:                        # @gimp_gui_ungrab
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_gui_ungrab, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_14
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 96(%rax)
	je	.LBB1_14
# BB#13:                                # %if.then.13
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB1_14:                               # %if.end.17
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_gui_ungrab, .Lfunc_end1-gimp_gui_ungrab
	.cfi_endproc

	.globl	gimp_threads_enter
	.align	16, 0x90
	.type	gimp_threads_enter,@function
gimp_threads_enter:                     # @gimp_threads_enter
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_threads_enter, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_14
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB2_14
# BB#13:                                # %if.then.13
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB2_14:                               # %if.end.17
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_threads_enter, .Lfunc_end2-gimp_threads_enter
	.cfi_endproc

	.globl	gimp_threads_leave
	.align	16, 0x90
	.type	gimp_threads_leave,@function
gimp_threads_leave:                     # @gimp_threads_leave
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_threads_leave, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_14
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 112(%rax)
	je	.LBB3_14
# BB#13:                                # %if.then.13
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB3_14:                               # %if.end.17
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_threads_leave, .Lfunc_end3-gimp_threads_leave
	.cfi_endproc

	.globl	gimp_set_busy
	.align	16, 0x90
	.type	gimp_set_busy,@function
gimp_set_busy:                          # @gimp_set_busy
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_set_busy, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_16
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-8(%rbp), %rax
	movl	308(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 308(%rax)
	movq	-8(%rbp), %rax
	cmpl	$1, 308(%rax)
	jne	.LBB4_16
# BB#13:                                # %if.then.13
	movq	-8(%rbp), %rax
	cmpq	$0, 120(%rax)
	je	.LBB4_15
# BB#14:                                # %if.then.16
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB4_15:                               # %if.end.20
	jmp	.LBB4_16
.LBB4_16:                               # %if.end.21
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_set_busy, .Lfunc_end4-gimp_set_busy
	.cfi_endproc

	.globl	gimp_set_busy_until_idle
	.align	16, 0x90
	.type	gimp_set_busy_until_idle,@function
gimp_set_busy_until_idle:               # @gimp_set_busy_until_idle
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_set_busy_until_idle, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_14
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-8(%rbp), %rax
	cmpl	$0, 312(%rax)
	jne	.LBB5_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rdi
	callq	gimp_set_busy
	movl	$4294967196, %edi       # imm = 0xFFFFFF9C
	movabsq	$gimp_idle_unset_busy, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	callq	g_idle_add_full
	movq	-8(%rbp), %rcx
	movl	%eax, 312(%rcx)
.LBB5_14:                               # %if.end.15
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_set_busy_until_idle, .Lfunc_end5-gimp_set_busy_until_idle
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_idle_unset_busy,@function
gimp_idle_unset_busy:                   # @gimp_idle_unset_busy
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_unset_busy
	xorl	%eax, %eax
	movq	-16(%rbp), %rdi
	movl	$0, 312(%rdi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_idle_unset_busy, .Lfunc_end6-gimp_idle_unset_busy
	.cfi_endproc

	.globl	gimp_unset_busy
	.align	16, 0x90
	.type	gimp_unset_busy,@function
gimp_unset_busy:                        # @gimp_unset_busy
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_unset_busy, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_21
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	cmpl	$0, 308(%rax)
	jle	.LBB7_15
# BB#14:                                # %if.then.13
	jmp	.LBB7_16
.LBB7_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_unset_busy, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_21
.LBB7_16:                               # %if.end.15
	jmp	.LBB7_17
.LBB7_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	movl	308(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 308(%rax)
	movq	-8(%rbp), %rax
	cmpl	$0, 308(%rax)
	jne	.LBB7_21
# BB#18:                                # %if.then.20
	movq	-8(%rbp), %rax
	cmpq	$0, 128(%rax)
	je	.LBB7_20
# BB#19:                                # %if.then.23
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB7_20:                               # %if.end.27
	jmp	.LBB7_21
.LBB7_21:                               # %if.end.28
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_unset_busy, .Lfunc_end7-gimp_unset_busy
	.cfi_endproc

	.globl	gimp_show_message
	.align	16, 0x90
	.type	gimp_show_message,@function
gimp_show_message:                      # @gimp_show_message
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
	subq	$128, %rsp
	movabsq	$.L.str.3, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%rax, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_show_message, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_41
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB8_15
# BB#14:                                # %lor.lhs.false
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a
	cmpl	$0, %eax
	je	.LBB8_16
.LBB8_15:                               # %if.then.15
	jmp	.LBB8_17
.LBB8_16:                               # %if.else.16
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_show_message, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_41
.LBB8_17:                               # %if.end.17
	jmp	.LBB8_18
.LBB8_18:                               # %do.end.18
	jmp	.LBB8_19
.LBB8_19:                               # %do.body.19
	cmpq	$0, -40(%rbp)
	je	.LBB8_21
# BB#20:                                # %if.then.21
	jmp	.LBB8_22
.LBB8_21:                               # %if.else.22
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_show_message, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_41
.LBB8_22:                               # %if.end.23
	jmp	.LBB8_23
.LBB8_23:                               # %do.end.24
	cmpq	$0, -32(%rbp)
	jne	.LBB8_25
# BB#24:                                # %if.then.26
	movabsq	$.L.str.6, %rdi
	callq	gettext
	movq	%rax, -32(%rbp)
.LBB8_25:                               # %if.end.28
	movq	-8(%rbp), %rax
	cmpl	$0, 84(%rax)
	jne	.LBB8_40
# BB#26:                                # %if.then.30
	movq	-8(%rbp), %rax
	cmpq	$0, 136(%rax)
	je	.LBB8_28
# BB#27:                                # %if.then.32
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	callq	*%rax
	jmp	.LBB8_41
.LBB8_28:                               # %if.else.35
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB8_30
# BB#29:                                # %if.then.44
	movl	$0, -92(%rbp)
	jmp	.LBB8_35
.LBB8_30:                               # %if.else.45
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_33
# BB#31:                                # %land.lhs.true.48
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB8_33
# BB#32:                                # %if.then.52
	movl	$1, -92(%rbp)
	jmp	.LBB8_34
.LBB8_33:                               # %if.else.53
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB8_34:                               # %if.end.55
	jmp	.LBB8_35
.LBB8_35:                               # %if.end.56
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB8_38
# BB#36:                                # %land.lhs.true.59
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_progress_message
	cmpl	$0, %eax
	je	.LBB8_38
# BB#37:                                # %if.then.64
	jmp	.LBB8_41
.LBB8_38:                               # %if.end.65
	jmp	.LBB8_39
.LBB8_39:                               # %if.end.66
	jmp	.LBB8_40
.LBB8_40:                               # %if.end.67
	callq	gimp_message_severity_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-48(%rbp), %r8
	movl	-20(%rbp), %esi
	movq	%rax, %rdi
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %r9         # 8-byte Reload
	callq	gimp_enum_get_value
	movabsq	$.L.str.7, %rdi
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	g_printerr
.LBB8_41:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_show_message, .Lfunc_end8-gimp_show_message
	.cfi_endproc

	.globl	gimp_help
	.align	16, 0x90
	.type	gimp_help,@function
gimp_help:                              # @gimp_help
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_help, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_27
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB9_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB9_16
# BB#15:                                # %if.then.21
	movl	$0, -76(%rbp)
	jmp	.LBB9_21
.LBB9_16:                               # %if.else.22
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_19
# BB#17:                                # %land.lhs.true.25
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB9_19
# BB#18:                                # %if.then.29
	movl	$1, -76(%rbp)
	jmp	.LBB9_20
.LBB9_19:                               # %if.else.30
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB9_20:                               # %if.end.32
	jmp	.LBB9_21
.LBB9_21:                               # %if.end.33
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB9_23
.LBB9_22:                               # %if.then.36
	jmp	.LBB9_24
.LBB9_23:                               # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_help, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_27
.LBB9_24:                               # %if.end.38
	jmp	.LBB9_25
.LBB9_25:                               # %do.end.39
	movq	-8(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB9_27
# BB#26:                                # %if.then.41
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	*%rax
.LBB9_27:                               # %if.end.44
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_help, .Lfunc_end9-gimp_help
	.cfi_endproc

	.globl	gimp_get_program_class
	.align	16, 0x90
	.type	gimp_get_program_class,@function
gimp_get_program_class:                 # @gimp_get_program_class
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_get_program_class, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_15
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-16(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB10_14
# BB#13:                                # %if.then.12
	movq	-16(%rbp), %rax
	movq	152(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movq	%rax, -8(%rbp)
	jmp	.LBB10_15
.LBB10_14:                              # %if.end.16
	movq	$0, -8(%rbp)
.LBB10_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_get_program_class, .Lfunc_end10-gimp_get_program_class
	.cfi_endproc

	.globl	gimp_get_display_name
	.align	16, 0x90
	.type	gimp_get_display_name,@function
gimp_get_display_name:                  # @gimp_get_display_name
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_get_display_name, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB11_20
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	jmp	.LBB11_13
.LBB11_13:                              # %do.body.11
	cmpq	$0, -32(%rbp)
	je	.LBB11_15
# BB#14:                                # %if.then.13
	jmp	.LBB11_16
.LBB11_15:                              # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_get_display_name, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB11_20
.LBB11_16:                              # %if.end.15
	jmp	.LBB11_17
.LBB11_17:                              # %do.end.16
	movq	-16(%rbp), %rax
	cmpq	$0, 160(%rax)
	je	.LBB11_19
# BB#18:                                # %if.then.18
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	-32(%rbp), %rdx
	callq	*%rax
	movq	%rax, -8(%rbp)
	jmp	.LBB11_20
.LBB11_19:                              # %if.end.22
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	movq	$0, -8(%rbp)
.LBB11_20:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_get_display_name, .Lfunc_end11-gimp_get_display_name
	.cfi_endproc

	.globl	gimp_get_user_time
	.align	16, 0x90
	.type	gimp_get_user_time,@function
gimp_get_user_time:                     # @gimp_get_user_time
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
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_get_user_time, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB12_15
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-16(%rbp), %rax
	cmpq	$0, 168(%rax)
	je	.LBB12_14
# BB#13:                                # %if.then.12
	movq	-16(%rbp), %rax
	movq	168(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movl	%eax, -4(%rbp)
	jmp	.LBB12_15
.LBB12_14:                              # %if.end.16
	movl	$0, -4(%rbp)
.LBB12_15:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_get_user_time, .Lfunc_end12-gimp_get_user_time
	.cfi_endproc

	.globl	gimp_get_theme_dir
	.align	16, 0x90
	.type	gimp_get_theme_dir,@function
gimp_get_theme_dir:                     # @gimp_get_theme_dir
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_get_theme_dir, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB13_15
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	movq	-16(%rbp), %rax
	cmpq	$0, 176(%rax)
	je	.LBB13_14
# BB#13:                                # %if.then.12
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movq	%rax, -8(%rbp)
	jmp	.LBB13_15
.LBB13_14:                              # %if.end.16
	movq	$0, -8(%rbp)
.LBB13_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_get_theme_dir, .Lfunc_end13-gimp_get_theme_dir
	.cfi_endproc

	.globl	gimp_get_window_strategy
	.align	16, 0x90
	.type	gimp_get_window_strategy,@function
gimp_get_window_strategy:               # @gimp_get_window_strategy
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_get_window_strategy, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB14_15
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	movq	-16(%rbp), %rax
	cmpq	$0, 184(%rax)
	je	.LBB14_14
# BB#13:                                # %if.then.12
	movq	-16(%rbp), %rax
	movq	184(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movq	%rax, -8(%rbp)
	jmp	.LBB14_15
.LBB14_14:                              # %if.end.16
	movq	$0, -8(%rbp)
.LBB14_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_get_window_strategy, .Lfunc_end14-gimp_get_window_strategy
	.cfi_endproc

	.globl	gimp_get_empty_display
	.align	16, 0x90
	.type	gimp_get_empty_display,@function
gimp_get_empty_display:                 # @gimp_get_empty_display
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_get_empty_display, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB15_15
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	movq	-16(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB15_14
# BB#13:                                # %if.then.12
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movq	%rax, -8(%rbp)
	jmp	.LBB15_15
.LBB15_14:                              # %if.end.16
	movq	$0, -8(%rbp)
.LBB15_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_get_empty_display, .Lfunc_end15-gimp_get_empty_display
	.cfi_endproc

	.globl	gimp_get_display_by_ID
	.align	16, 0x90
	.type	gimp_get_display_by_ID,@function
gimp_get_display_by_ID:                 # @gimp_get_display_by_ID
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_get_display_by_ID, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB16_15
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	movq	-16(%rbp), %rax
	cmpq	$0, 200(%rax)
	je	.LBB16_14
# BB#13:                                # %if.then.12
	movq	-16(%rbp), %rax
	movq	200(%rax), %rax
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	*%rax
	movq	%rax, -8(%rbp)
	jmp	.LBB16_15
.LBB16_14:                              # %if.end.16
	movq	$0, -8(%rbp)
.LBB16_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_get_display_by_ID, .Lfunc_end16-gimp_get_display_by_ID
	.cfi_endproc

	.globl	gimp_get_display_ID
	.align	16, 0x90
	.type	gimp_get_display_ID,@function
gimp_get_display_ID:                    # @gimp_get_display_ID
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
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
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.8
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_get_display_ID, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB17_27
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	jmp	.LBB17_13
.LBB17_13:                              # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_object_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB17_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB17_20
.LBB17_15:                              # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB17_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB17_19
.LBB17_18:                              # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB17_19:                              # %if.end.31
	jmp	.LBB17_20
.LBB17_20:                              # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB17_22
# BB#21:                                # %if.then.35
	jmp	.LBB17_23
.LBB17_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_get_display_ID, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB17_27
.LBB17_23:                              # %if.end.37
	jmp	.LBB17_24
.LBB17_24:                              # %do.end.38
	movq	-16(%rbp), %rax
	cmpq	$0, 208(%rax)
	je	.LBB17_26
# BB#25:                                # %if.then.40
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movl	%eax, -4(%rbp)
	jmp	.LBB17_27
.LBB17_26:                              # %if.end.44
	movl	$-1, -4(%rbp)
.LBB17_27:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_get_display_ID, .Lfunc_end17-gimp_get_display_ID
	.cfi_endproc

	.globl	gimp_get_display_window_id
	.align	16, 0x90
	.type	gimp_get_display_window_id,@function
gimp_get_display_window_id:             # @gimp_get_display_window_id
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB18_8
.LBB18_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB18_7:                               # %if.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.8
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_get_display_window_id, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB18_27
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	jmp	.LBB18_13
.LBB18_13:                              # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_object_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB18_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB18_20
.LBB18_15:                              # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB18_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB18_19
.LBB18_18:                              # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB18_19:                              # %if.end.31
	jmp	.LBB18_20
.LBB18_20:                              # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB18_22
# BB#21:                                # %if.then.35
	jmp	.LBB18_23
.LBB18_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_get_display_window_id, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB18_27
.LBB18_23:                              # %if.end.37
	jmp	.LBB18_24
.LBB18_24:                              # %do.end.38
	movq	-16(%rbp), %rax
	cmpq	$0, 216(%rax)
	je	.LBB18_26
# BB#25:                                # %if.then.40
	movq	-16(%rbp), %rax
	movq	216(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movl	%eax, -4(%rbp)
	jmp	.LBB18_27
.LBB18_26:                              # %if.end.44
	movl	$-1, -4(%rbp)
.LBB18_27:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_get_display_window_id, .Lfunc_end18-gimp_get_display_window_id
	.cfi_endproc

	.globl	gimp_create_display
	.align	16, 0x90
	.type	gimp_create_display,@function
gimp_create_display:                    # @gimp_create_display
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB19_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB19_8
.LBB19_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB19_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB19_7:                               # %if.end
	jmp	.LBB19_8
.LBB19_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB19_10
# BB#9:                                 # %if.then.8
	jmp	.LBB19_11
.LBB19_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_create_display, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB19_28
.LBB19_11:                              # %if.end.10
	jmp	.LBB19_12
.LBB19_12:                              # %do.end
	jmp	.LBB19_13
.LBB19_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB19_22
# BB#14:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB19_16
# BB#15:                                # %if.then.21
	movl	$0, -84(%rbp)
	jmp	.LBB19_21
.LBB19_16:                              # %if.else.22
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_19
# BB#17:                                # %land.lhs.true.25
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB19_19
# BB#18:                                # %if.then.29
	movl	$1, -84(%rbp)
	jmp	.LBB19_20
.LBB19_19:                              # %if.else.30
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB19_20:                              # %if.end.32
	jmp	.LBB19_21
.LBB19_21:                              # %if.end.33
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB19_23
.LBB19_22:                              # %if.then.36
	jmp	.LBB19_24
.LBB19_23:                              # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_create_display, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB19_28
.LBB19_24:                              # %if.end.38
	jmp	.LBB19_25
.LBB19_25:                              # %do.end.39
	movq	-16(%rbp), %rax
	cmpq	$0, 224(%rax)
	je	.LBB19_27
# BB#26:                                # %if.then.41
	movq	-16(%rbp), %rax
	movq	224(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	*%rax
	movq	%rax, -8(%rbp)
	jmp	.LBB19_28
.LBB19_27:                              # %if.end.45
	movq	$0, -8(%rbp)
.LBB19_28:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_create_display, .Lfunc_end19-gimp_create_display
	.cfi_endproc

	.globl	gimp_delete_display
	.align	16, 0x90
	.type	gimp_delete_display,@function
gimp_delete_display:                    # @gimp_delete_display
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB20_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB20_8
.LBB20_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB20_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB20_7
.LBB20_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB20_7:                               # %if.end
	jmp	.LBB20_8
.LBB20_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB20_10
# BB#9:                                 # %if.then.8
	jmp	.LBB20_11
.LBB20_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_delete_display, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB20_26
.LBB20_11:                              # %if.end.10
	jmp	.LBB20_12
.LBB20_12:                              # %do.end
	jmp	.LBB20_13
.LBB20_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_object_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB20_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB20_20
.LBB20_15:                              # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB20_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB20_19
.LBB20_18:                              # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB20_19:                              # %if.end.31
	jmp	.LBB20_20
.LBB20_20:                              # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB20_22
# BB#21:                                # %if.then.35
	jmp	.LBB20_23
.LBB20_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_delete_display, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB20_26
.LBB20_23:                              # %if.end.37
	jmp	.LBB20_24
.LBB20_24:                              # %do.end.38
	movq	-8(%rbp), %rax
	cmpq	$0, 232(%rax)
	je	.LBB20_26
# BB#25:                                # %if.then.40
	movq	-8(%rbp), %rax
	movq	232(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
.LBB20_26:                              # %if.end.43
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_delete_display, .Lfunc_end20-gimp_delete_display
	.cfi_endproc

	.globl	gimp_reconnect_displays
	.align	16, 0x90
	.type	gimp_reconnect_displays,@function
gimp_reconnect_displays:                # @gimp_reconnect_displays
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB21_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB21_8
.LBB21_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB21_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB21_7
.LBB21_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB21_7:                               # %if.end
	jmp	.LBB21_8
.LBB21_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB21_10
# BB#9:                                 # %if.then.8
	jmp	.LBB21_11
.LBB21_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_reconnect_displays, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_38
.LBB21_11:                              # %if.end.10
	jmp	.LBB21_12
.LBB21_12:                              # %do.end
	jmp	.LBB21_13
.LBB21_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB21_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB21_20
.LBB21_15:                              # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB21_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB21_19
.LBB21_18:                              # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB21_19:                              # %if.end.31
	jmp	.LBB21_20
.LBB21_20:                              # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB21_22
# BB#21:                                # %if.then.35
	jmp	.LBB21_23
.LBB21_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_reconnect_displays, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_38
.LBB21_23:                              # %if.end.37
	jmp	.LBB21_24
.LBB21_24:                              # %do.end.38
	jmp	.LBB21_25
.LBB21_25:                              # %do.body.39
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB21_27
# BB#26:                                # %if.then.48
	movl	$0, -92(%rbp)
	jmp	.LBB21_32
.LBB21_27:                              # %if.else.49
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_30
# BB#28:                                # %land.lhs.true.52
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB21_30
# BB#29:                                # %if.then.56
	movl	$1, -92(%rbp)
	jmp	.LBB21_31
.LBB21_30:                              # %if.else.57
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB21_31:                              # %if.end.59
	jmp	.LBB21_32
.LBB21_32:                              # %if.end.60
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB21_34
# BB#33:                                # %if.then.63
	jmp	.LBB21_35
.LBB21_34:                              # %if.else.64
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_reconnect_displays, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_38
.LBB21_35:                              # %if.end.65
	jmp	.LBB21_36
.LBB21_36:                              # %do.end.66
	movq	-8(%rbp), %rax
	cmpq	$0, 240(%rax)
	je	.LBB21_38
# BB#37:                                # %if.then.68
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	*%rax
.LBB21_38:                              # %if.end.71
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_reconnect_displays, .Lfunc_end21-gimp_reconnect_displays
	.cfi_endproc

	.globl	gimp_new_progress
	.align	16, 0x90
	.type	gimp_new_progress,@function
gimp_new_progress:                      # @gimp_new_progress
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB22_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB22_8
.LBB22_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB22_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB22_7
.LBB22_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB22_7:                               # %if.end
	jmp	.LBB22_8
.LBB22_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB22_10
# BB#9:                                 # %if.then.8
	jmp	.LBB22_11
.LBB22_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_new_progress, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB22_28
.LBB22_11:                              # %if.end.10
	jmp	.LBB22_12
.LBB22_12:                              # %do.end
	jmp	.LBB22_13
.LBB22_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB22_22
# BB#14:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_object_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB22_16
# BB#15:                                # %if.then.21
	movl	$0, -68(%rbp)
	jmp	.LBB22_21
.LBB22_16:                              # %if.else.22
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_19
# BB#17:                                # %land.lhs.true.25
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB22_19
# BB#18:                                # %if.then.29
	movl	$1, -68(%rbp)
	jmp	.LBB22_20
.LBB22_19:                              # %if.else.30
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB22_20:                              # %if.end.32
	jmp	.LBB22_21
.LBB22_21:                              # %if.end.33
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB22_23
.LBB22_22:                              # %if.then.36
	jmp	.LBB22_24
.LBB22_23:                              # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_new_progress, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB22_28
.LBB22_24:                              # %if.end.38
	jmp	.LBB22_25
.LBB22_25:                              # %do.end.39
	movq	-16(%rbp), %rax
	cmpq	$0, 248(%rax)
	je	.LBB22_27
# BB#26:                                # %if.then.41
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movq	%rax, -8(%rbp)
	jmp	.LBB22_28
.LBB22_27:                              # %if.end.45
	movq	$0, -8(%rbp)
.LBB22_28:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_new_progress, .Lfunc_end22-gimp_new_progress
	.cfi_endproc

	.globl	gimp_free_progress
	.align	16, 0x90
	.type	gimp_free_progress,@function
gimp_free_progress:                     # @gimp_free_progress
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB23_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB23_8
.LBB23_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB23_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB23_7
.LBB23_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB23_7:                               # %if.end
	jmp	.LBB23_8
.LBB23_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB23_10
# BB#9:                                 # %if.then.8
	jmp	.LBB23_11
.LBB23_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_free_progress, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB23_26
.LBB23_11:                              # %if.end.10
	jmp	.LBB23_12
.LBB23_12:                              # %do.end
	jmp	.LBB23_13
.LBB23_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB23_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB23_20
.LBB23_15:                              # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB23_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB23_19
.LBB23_18:                              # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB23_19:                              # %if.end.31
	jmp	.LBB23_20
.LBB23_20:                              # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB23_22
# BB#21:                                # %if.then.35
	jmp	.LBB23_23
.LBB23_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_free_progress, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB23_26
.LBB23_23:                              # %if.end.37
	jmp	.LBB23_24
.LBB23_24:                              # %do.end.38
	movq	-8(%rbp), %rax
	cmpq	$0, 256(%rax)
	je	.LBB23_26
# BB#25:                                # %if.then.40
	movq	-8(%rbp), %rax
	movq	256(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
.LBB23_26:                              # %if.end.43
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_free_progress, .Lfunc_end23-gimp_free_progress
	.cfi_endproc

	.globl	gimp_pdb_dialog_new
	.align	16, 0x90
	.type	gimp_pdb_dialog_new,@function
gimp_pdb_dialog_new:                    # @gimp_pdb_dialog_new
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
	subq	$576, %rsp              # imm = 0x240
	testb	%al, %al
	movaps	%xmm7, -384(%rbp)       # 16-byte Spill
	movaps	%xmm6, -400(%rbp)       # 16-byte Spill
	movaps	%xmm5, -416(%rbp)       # 16-byte Spill
	movaps	%xmm4, -432(%rbp)       # 16-byte Spill
	movaps	%xmm3, -448(%rbp)       # 16-byte Spill
	movaps	%xmm2, -464(%rbp)       # 16-byte Spill
	movaps	%xmm1, -480(%rbp)       # 16-byte Spill
	movaps	%xmm0, -496(%rbp)       # 16-byte Spill
	movq	%rdi, -504(%rbp)        # 8-byte Spill
	movq	%r9, -512(%rbp)         # 8-byte Spill
	movq	%r8, -520(%rbp)         # 8-byte Spill
	movq	%rcx, -528(%rbp)        # 8-byte Spill
	movq	%rdx, -536(%rbp)        # 8-byte Spill
	movq	%rsi, -544(%rbp)        # 8-byte Spill
	je	.LBB24_64
# BB#63:                                # %entry
	movaps	-496(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -320(%rbp)
	movaps	-480(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -304(%rbp)
	movaps	-464(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -288(%rbp)
	movaps	-448(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -272(%rbp)
	movaps	-432(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -256(%rbp)
	movaps	-416(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -240(%rbp)
	movaps	-400(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -224(%rbp)
	movaps	-384(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -208(%rbp)
.LBB24_64:                              # %entry
	movq	16(%rbp), %rax
	movq	-512(%rbp), %rcx        # 8-byte Reload
	movq	-520(%rbp), %rdx        # 8-byte Reload
	movq	-528(%rbp), %rsi        # 8-byte Reload
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	-544(%rbp), %r8         # 8-byte Reload
	movq	-504(%rbp), %r9         # 8-byte Reload
	movq	%r9, -16(%rbp)
	movq	%r8, -24(%rbp)
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%rax, -64(%rbp)
	movl	$0, -68(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB24_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB24_8
.LBB24_3:                               # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB24_6
# BB#5:                                 # %if.then.4
	movl	$1, -92(%rbp)
	jmp	.LBB24_7
.LBB24_6:                               # %if.else.5
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB24_7:                               # %if.end
	jmp	.LBB24_8
.LBB24_8:                               # %if.end.7
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB24_10
# BB#9:                                 # %if.then.9
	jmp	.LBB24_11
.LBB24_10:                              # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_dialog_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB24_62
.LBB24_11:                              # %if.end.11
	jmp	.LBB24_12
.LBB24_12:                              # %do.end
	jmp	.LBB24_13
.LBB24_13:                              # %do.body.12
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB24_15
# BB#14:                                # %if.then.21
	movl	$0, -116(%rbp)
	jmp	.LBB24_20
.LBB24_15:                              # %if.else.22
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_18
# BB#16:                                # %land.lhs.true.25
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB24_18
# BB#17:                                # %if.then.29
	movl	$1, -116(%rbp)
	jmp	.LBB24_19
.LBB24_18:                              # %if.else.30
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB24_19:                              # %if.end.32
	jmp	.LBB24_20
.LBB24_20:                              # %if.end.33
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB24_22
# BB#21:                                # %if.then.36
	jmp	.LBB24_23
.LBB24_22:                              # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_dialog_new, %rsi
	movabsq	$.L.str.16, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB24_62
.LBB24_23:                              # %if.end.38
	jmp	.LBB24_24
.LBB24_24:                              # %do.end.39
	jmp	.LBB24_25
.LBB24_25:                              # %do.body.40
	cmpq	$0, -32(%rbp)
	je	.LBB24_34
# BB#26:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB24_28
# BB#27:                                # %if.then.50
	movl	$0, -140(%rbp)
	jmp	.LBB24_33
.LBB24_28:                              # %if.else.51
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_31
# BB#29:                                # %land.lhs.true.54
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB24_31
# BB#30:                                # %if.then.58
	movl	$1, -140(%rbp)
	jmp	.LBB24_32
.LBB24_31:                              # %if.else.59
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB24_32:                              # %if.end.61
	jmp	.LBB24_33
.LBB24_33:                              # %if.end.62
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB24_35
.LBB24_34:                              # %if.then.65
	jmp	.LBB24_36
.LBB24_35:                              # %if.else.66
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_dialog_new, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB24_62
.LBB24_36:                              # %if.end.67
	jmp	.LBB24_37
.LBB24_37:                              # %do.end.68
	jmp	.LBB24_38
.LBB24_38:                              # %do.body.69
	movq	-40(%rbp), %rax
	movq	%rax, -152(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB24_40
# BB#39:                                # %if.then.78
	movl	$0, -164(%rbp)
	jmp	.LBB24_45
.LBB24_40:                              # %if.else.79
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_43
# BB#41:                                # %land.lhs.true.82
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB24_43
# BB#42:                                # %if.then.86
	movl	$1, -164(%rbp)
	jmp	.LBB24_44
.LBB24_43:                              # %if.else.87
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB24_44:                              # %if.end.89
	jmp	.LBB24_45
.LBB24_45:                              # %if.end.90
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB24_47
# BB#46:                                # %if.then.93
	jmp	.LBB24_48
.LBB24_47:                              # %if.else.94
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_dialog_new, %rsi
	movabsq	$.L.str.17, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB24_62
.LBB24_48:                              # %if.end.95
	jmp	.LBB24_49
.LBB24_49:                              # %do.end.96
	jmp	.LBB24_50
.LBB24_50:                              # %do.body.97
	cmpq	$0, -48(%rbp)
	je	.LBB24_52
# BB#51:                                # %if.then.99
	jmp	.LBB24_53
.LBB24_52:                              # %if.else.100
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_dialog_new, %rsi
	movabsq	$.L.str.18, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB24_62
.LBB24_53:                              # %if.end.101
	jmp	.LBB24_54
.LBB24_54:                              # %do.end.102
	jmp	.LBB24_55
.LBB24_55:                              # %do.body.103
	cmpq	$0, -56(%rbp)
	je	.LBB24_57
# BB#56:                                # %if.then.105
	jmp	.LBB24_58
.LBB24_57:                              # %if.else.106
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_dialog_new, %rsi
	movabsq	$.L.str.19, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB24_62
.LBB24_58:                              # %if.end.107
	jmp	.LBB24_59
.LBB24_59:                              # %do.end.108
	movq	-16(%rbp), %rax
	cmpq	$0, 264(%rax)
	je	.LBB24_61
# BB#60:                                # %if.then.110
	leaq	-192(%rbp), %rax
	movq	%rax, %rcx
	leaq	-368(%rbp), %rdx
	movq	%rdx, 16(%rcx)
	leaq	24(%rbp), %rdx
	movq	%rdx, 8(%rcx)
	movl	$48, 4(%rcx)
	movl	$48, (%rcx)
	movq	-16(%rbp), %rcx
	movq	264(%rcx), %rcx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %r9
	movq	-56(%rbp), %r10
	movq	-64(%rbp), %r11
	movq	%rcx, -552(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	%r9, %r8
	movq	%r10, %r9
	movq	%r11, (%rsp)
	movq	%rax, 8(%rsp)
	movq	-552(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	leaq	-192(%rbp), %rcx
	movl	%eax, -68(%rbp)
	movq	%rcx, -560(%rbp)        # 8-byte Spill
.LBB24_61:                              # %if.end.119
	movl	-68(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB24_62:                              # %return
	movl	-4(%rbp), %eax
	addq	$576, %rsp              # imm = 0x240
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_pdb_dialog_new, .Lfunc_end24-gimp_pdb_dialog_new
	.cfi_endproc

	.globl	gimp_pdb_dialog_set
	.align	16, 0x90
	.type	gimp_pdb_dialog_set,@function
gimp_pdb_dialog_set:                    # @gimp_pdb_dialog_set
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
	subq	$496, %rsp              # imm = 0x1F0
	testb	%al, %al
	movaps	%xmm7, -320(%rbp)       # 16-byte Spill
	movaps	%xmm6, -336(%rbp)       # 16-byte Spill
	movaps	%xmm5, -352(%rbp)       # 16-byte Spill
	movaps	%xmm4, -368(%rbp)       # 16-byte Spill
	movaps	%xmm3, -384(%rbp)       # 16-byte Spill
	movaps	%xmm2, -400(%rbp)       # 16-byte Spill
	movaps	%xmm1, -416(%rbp)       # 16-byte Spill
	movaps	%xmm0, -432(%rbp)       # 16-byte Spill
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	movq	%r9, -448(%rbp)         # 8-byte Spill
	movq	%r8, -456(%rbp)         # 8-byte Spill
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	movq	%rdx, -472(%rbp)        # 8-byte Spill
	movq	%rsi, -480(%rbp)        # 8-byte Spill
	je	.LBB25_39
# BB#38:                                # %entry
	movaps	-432(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -256(%rbp)
	movaps	-416(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -240(%rbp)
	movaps	-400(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -224(%rbp)
	movaps	-384(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -208(%rbp)
	movaps	-368(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -192(%rbp)
	movaps	-352(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -176(%rbp)
	movaps	-336(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -160(%rbp)
	movaps	-320(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -144(%rbp)
.LBB25_39:                              # %entry
	movq	-448(%rbp), %rax        # 8-byte Reload
	movq	%rax, -264(%rbp)
	movq	-456(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -272(%rbp)
	movq	-464(%rbp), %rdx        # 8-byte Reload
	movq	-472(%rbp), %rsi        # 8-byte Reload
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	-440(%rbp), %r8         # 8-byte Reload
	movq	%r8, -16(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, -44(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB25_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB25_8
.LBB25_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB25_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB25_6
# BB#5:                                 # %if.then.4
	movl	$1, -68(%rbp)
	jmp	.LBB25_7
.LBB25_6:                               # %if.else.5
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB25_7:                               # %if.end
	jmp	.LBB25_8
.LBB25_8:                               # %if.end.7
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB25_10
# BB#9:                                 # %if.then.9
	jmp	.LBB25_11
.LBB25_10:                              # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_dialog_set, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB25_37
.LBB25_11:                              # %if.end.11
	jmp	.LBB25_12
.LBB25_12:                              # %do.end
	jmp	.LBB25_13
.LBB25_13:                              # %do.body.12
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB25_15
# BB#14:                                # %if.then.21
	movl	$0, -92(%rbp)
	jmp	.LBB25_20
.LBB25_15:                              # %if.else.22
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB25_18
# BB#16:                                # %land.lhs.true.25
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB25_18
# BB#17:                                # %if.then.29
	movl	$1, -92(%rbp)
	jmp	.LBB25_19
.LBB25_18:                              # %if.else.30
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB25_19:                              # %if.end.32
	jmp	.LBB25_20
.LBB25_20:                              # %if.end.33
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB25_22
# BB#21:                                # %if.then.36
	jmp	.LBB25_23
.LBB25_22:                              # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_dialog_set, %rsi
	movabsq	$.L.str.17, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB25_37
.LBB25_23:                              # %if.end.38
	jmp	.LBB25_24
.LBB25_24:                              # %do.end.39
	jmp	.LBB25_25
.LBB25_25:                              # %do.body.40
	cmpq	$0, -32(%rbp)
	je	.LBB25_27
# BB#26:                                # %if.then.42
	jmp	.LBB25_28
.LBB25_27:                              # %if.else.43
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_dialog_set, %rsi
	movabsq	$.L.str.19, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB25_37
.LBB25_28:                              # %if.end.44
	jmp	.LBB25_29
.LBB25_29:                              # %do.end.45
	jmp	.LBB25_30
.LBB25_30:                              # %do.body.46
	cmpq	$0, -40(%rbp)
	je	.LBB25_32
# BB#31:                                # %if.then.48
	jmp	.LBB25_33
.LBB25_32:                              # %if.else.49
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_dialog_set, %rsi
	movabsq	$.L.str.20, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB25_37
.LBB25_33:                              # %if.end.50
	jmp	.LBB25_34
.LBB25_34:                              # %do.end.51
	movq	-16(%rbp), %rax
	cmpq	$0, 272(%rax)
	je	.LBB25_36
# BB#35:                                # %if.then.53
	leaq	-128(%rbp), %rax
	movq	%rax, %rcx
	leaq	-304(%rbp), %rdx
	movq	%rdx, 16(%rcx)
	leaq	16(%rbp), %rdx
	movq	%rdx, 8(%rcx)
	movl	$48, 4(%rcx)
	movl	$32, (%rcx)
	movq	-16(%rbp), %rcx
	movq	272(%rcx), %rcx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %r8
	movq	%rcx, -488(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	%rax, %r8
	movq	-488(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	leaq	-128(%rbp), %rcx
	movl	%eax, -44(%rbp)
	movq	%rcx, -496(%rbp)        # 8-byte Spill
.LBB25_36:                              # %if.end.62
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB25_37:                              # %return
	movl	-4(%rbp), %eax
	addq	$496, %rsp              # imm = 0x1F0
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_pdb_dialog_set, .Lfunc_end25-gimp_pdb_dialog_set
	.cfi_endproc

	.globl	gimp_pdb_dialog_close
	.align	16, 0x90
	.type	gimp_pdb_dialog_close,@function
gimp_pdb_dialog_close:                  # @gimp_pdb_dialog_close
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB26_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB26_8
.LBB26_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB26_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB26_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB26_7
.LBB26_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB26_7:                               # %if.end
	jmp	.LBB26_8
.LBB26_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB26_10
# BB#9:                                 # %if.then.8
	jmp	.LBB26_11
.LBB26_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_dialog_close, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB26_32
.LBB26_11:                              # %if.end.10
	jmp	.LBB26_12
.LBB26_12:                              # %do.end
	jmp	.LBB26_13
.LBB26_13:                              # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB26_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB26_20
.LBB26_15:                              # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB26_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB26_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB26_19
.LBB26_18:                              # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB26_19:                              # %if.end.31
	jmp	.LBB26_20
.LBB26_20:                              # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB26_22
# BB#21:                                # %if.then.35
	jmp	.LBB26_23
.LBB26_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_dialog_close, %rsi
	movabsq	$.L.str.17, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB26_32
.LBB26_23:                              # %if.end.37
	jmp	.LBB26_24
.LBB26_24:                              # %do.end.38
	jmp	.LBB26_25
.LBB26_25:                              # %do.body.39
	cmpq	$0, -32(%rbp)
	je	.LBB26_27
# BB#26:                                # %if.then.41
	jmp	.LBB26_28
.LBB26_27:                              # %if.else.42
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_dialog_close, %rsi
	movabsq	$.L.str.19, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB26_32
.LBB26_28:                              # %if.end.43
	jmp	.LBB26_29
.LBB26_29:                              # %do.end.44
	movq	-16(%rbp), %rax
	cmpq	$0, 280(%rax)
	je	.LBB26_31
# BB#30:                                # %if.then.46
	movq	-16(%rbp), %rax
	movq	280(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	*%rax
	movl	%eax, -4(%rbp)
	jmp	.LBB26_32
.LBB26_31:                              # %if.end.50
	movl	$0, -4(%rbp)
.LBB26_32:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_pdb_dialog_close, .Lfunc_end26-gimp_pdb_dialog_close
	.cfi_endproc

	.globl	gimp_recent_list_add_uri
	.align	16, 0x90
	.type	gimp_recent_list_add_uri,@function
gimp_recent_list_add_uri:               # @gimp_recent_list_add_uri
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB27_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB27_8
.LBB27_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB27_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB27_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB27_7
.LBB27_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB27_7:                               # %if.end
	jmp	.LBB27_8
.LBB27_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB27_10
# BB#9:                                 # %if.then.8
	jmp	.LBB27_11
.LBB27_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_recent_list_add_uri, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB27_20
.LBB27_11:                              # %if.end.10
	jmp	.LBB27_12
.LBB27_12:                              # %do.end
	jmp	.LBB27_13
.LBB27_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB27_15
# BB#14:                                # %if.then.13
	jmp	.LBB27_16
.LBB27_15:                              # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_recent_list_add_uri, %rsi
	movabsq	$.L.str.21, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB27_20
.LBB27_16:                              # %if.end.15
	jmp	.LBB27_17
.LBB27_17:                              # %do.end.16
	movq	-16(%rbp), %rax
	cmpq	$0, 288(%rax)
	je	.LBB27_19
# BB#18:                                # %if.then.18
	movq	-16(%rbp), %rax
	movq	288(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	*%rax
	movl	%eax, -4(%rbp)
	jmp	.LBB27_20
.LBB27_19:                              # %if.end.22
	movl	$0, -4(%rbp)
.LBB27_20:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_recent_list_add_uri, .Lfunc_end27-gimp_recent_list_add_uri
	.cfi_endproc

	.globl	gimp_recent_list_load
	.align	16, 0x90
	.type	gimp_recent_list_load,@function
gimp_recent_list_load:                  # @gimp_recent_list_load
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB28_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB28_8
.LBB28_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB28_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB28_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB28_7
.LBB28_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB28_7:                               # %if.end
	jmp	.LBB28_8
.LBB28_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB28_10
# BB#9:                                 # %if.then.8
	jmp	.LBB28_11
.LBB28_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_recent_list_load, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB28_14
.LBB28_11:                              # %if.end.10
	jmp	.LBB28_12
.LBB28_12:                              # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 296(%rax)
	je	.LBB28_14
# BB#13:                                # %if.then.13
	movq	-8(%rbp), %rax
	movq	296(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB28_14:                              # %if.end.17
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_recent_list_load, .Lfunc_end28-gimp_recent_list_load
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_gui_init,@object # @__func__.gimp_gui_init
.L__func__.gimp_gui_init:
	.asciz	"gimp_gui_init"
	.size	.L__func__.gimp_gui_init, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.1, 20

	.type	.L__func__.gimp_gui_ungrab,@object # @__func__.gimp_gui_ungrab
.L__func__.gimp_gui_ungrab:
	.asciz	"gimp_gui_ungrab"
	.size	.L__func__.gimp_gui_ungrab, 16

	.type	.L__func__.gimp_threads_enter,@object # @__func__.gimp_threads_enter
.L__func__.gimp_threads_enter:
	.asciz	"gimp_threads_enter"
	.size	.L__func__.gimp_threads_enter, 19

	.type	.L__func__.gimp_threads_leave,@object # @__func__.gimp_threads_leave
.L__func__.gimp_threads_leave:
	.asciz	"gimp_threads_leave"
	.size	.L__func__.gimp_threads_leave, 19

	.type	.L__func__.gimp_set_busy,@object # @__func__.gimp_set_busy
.L__func__.gimp_set_busy:
	.asciz	"gimp_set_busy"
	.size	.L__func__.gimp_set_busy, 14

	.type	.L__func__.gimp_set_busy_until_idle,@object # @__func__.gimp_set_busy_until_idle
.L__func__.gimp_set_busy_until_idle:
	.asciz	"gimp_set_busy_until_idle"
	.size	.L__func__.gimp_set_busy_until_idle, 25

	.type	.L__func__.gimp_unset_busy,@object # @__func__.gimp_unset_busy
.L__func__.gimp_unset_busy:
	.asciz	"gimp_unset_busy"
	.size	.L__func__.gimp_unset_busy, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp->busy > 0"
	.size	.L.str.2, 15

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Message"
	.size	.L.str.3, 8

	.type	.L__func__.gimp_show_message,@object # @__func__.gimp_show_message
.L__func__.gimp_show_message:
	.asciz	"gimp_show_message"
	.size	.L__func__.gimp_show_message, 18

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"handler == NULL || G_IS_OBJECT (handler)"
	.size	.L.str.4, 41

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"message != NULL"
	.size	.L.str.5, 16

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%s-%s: %s\n\n"
	.size	.L.str.7, 12

	.type	.L__func__.gimp_help,@object # @__func__.gimp_help
.L__func__.gimp_help:
	.asciz	"gimp_help"
	.size	.L__func__.gimp_help, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"progress == NULL || GIMP_IS_PROGRESS (progress)"
	.size	.L.str.8, 48

	.type	.L__func__.gimp_get_program_class,@object # @__func__.gimp_get_program_class
.L__func__.gimp_get_program_class:
	.asciz	"gimp_get_program_class"
	.size	.L__func__.gimp_get_program_class, 23

	.type	.L__func__.gimp_get_display_name,@object # @__func__.gimp_get_display_name
.L__func__.gimp_get_display_name:
	.asciz	"gimp_get_display_name"
	.size	.L__func__.gimp_get_display_name, 22

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"monitor_number != NULL"
	.size	.L.str.9, 23

	.type	.L__func__.gimp_get_user_time,@object # @__func__.gimp_get_user_time
.L__func__.gimp_get_user_time:
	.asciz	"gimp_get_user_time"
	.size	.L__func__.gimp_get_user_time, 19

	.type	.L__func__.gimp_get_theme_dir,@object # @__func__.gimp_get_theme_dir
.L__func__.gimp_get_theme_dir:
	.asciz	"gimp_get_theme_dir"
	.size	.L__func__.gimp_get_theme_dir, 19

	.type	.L__func__.gimp_get_window_strategy,@object # @__func__.gimp_get_window_strategy
.L__func__.gimp_get_window_strategy:
	.asciz	"gimp_get_window_strategy"
	.size	.L__func__.gimp_get_window_strategy, 25

	.type	.L__func__.gimp_get_empty_display,@object # @__func__.gimp_get_empty_display
.L__func__.gimp_get_empty_display:
	.asciz	"gimp_get_empty_display"
	.size	.L__func__.gimp_get_empty_display, 23

	.type	.L__func__.gimp_get_display_by_ID,@object # @__func__.gimp_get_display_by_ID
.L__func__.gimp_get_display_by_ID:
	.asciz	"gimp_get_display_by_ID"
	.size	.L__func__.gimp_get_display_by_ID, 23

	.type	.L__func__.gimp_get_display_ID,@object # @__func__.gimp_get_display_ID
.L__func__.gimp_get_display_ID:
	.asciz	"gimp_get_display_ID"
	.size	.L__func__.gimp_get_display_ID, 20

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"GIMP_IS_OBJECT (display)"
	.size	.L.str.10, 25

	.type	.L__func__.gimp_get_display_window_id,@object # @__func__.gimp_get_display_window_id
.L__func__.gimp_get_display_window_id:
	.asciz	"gimp_get_display_window_id"
	.size	.L__func__.gimp_get_display_window_id, 27

	.type	.L__func__.gimp_create_display,@object # @__func__.gimp_create_display
.L__func__.gimp_create_display:
	.asciz	"gimp_create_display"
	.size	.L__func__.gimp_create_display, 20

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"image == NULL || GIMP_IS_IMAGE (image)"
	.size	.L.str.11, 39

	.type	.L__func__.gimp_delete_display,@object # @__func__.gimp_delete_display
.L__func__.gimp_delete_display:
	.asciz	"gimp_delete_display"
	.size	.L__func__.gimp_delete_display, 20

	.type	.L__func__.gimp_reconnect_displays,@object # @__func__.gimp_reconnect_displays
.L__func__.gimp_reconnect_displays:
	.asciz	"gimp_reconnect_displays"
	.size	.L__func__.gimp_reconnect_displays, 24

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"GIMP_IS_IMAGE (old_image)"
	.size	.L.str.12, 26

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"GIMP_IS_IMAGE (new_image)"
	.size	.L.str.13, 26

	.type	.L__func__.gimp_new_progress,@object # @__func__.gimp_new_progress
.L__func__.gimp_new_progress:
	.asciz	"gimp_new_progress"
	.size	.L__func__.gimp_new_progress, 18

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"display == NULL || GIMP_IS_OBJECT (display)"
	.size	.L.str.14, 44

	.type	.L__func__.gimp_free_progress,@object # @__func__.gimp_free_progress
.L__func__.gimp_free_progress:
	.asciz	"gimp_free_progress"
	.size	.L__func__.gimp_free_progress, 19

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"GIMP_IS_PROGRESS (progress)"
	.size	.L.str.15, 28

	.type	.L__func__.gimp_pdb_dialog_new,@object # @__func__.gimp_pdb_dialog_new
.L__func__.gimp_pdb_dialog_new:
	.asciz	"gimp_pdb_dialog_new"
	.size	.L__func__.gimp_pdb_dialog_new, 20

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.16, 26

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"GIMP_IS_CONTAINER (container)"
	.size	.L.str.17, 30

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"title != NULL"
	.size	.L.str.18, 14

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"callback_name != NULL"
	.size	.L.str.19, 22

	.type	.L__func__.gimp_pdb_dialog_set,@object # @__func__.gimp_pdb_dialog_set
.L__func__.gimp_pdb_dialog_set:
	.asciz	"gimp_pdb_dialog_set"
	.size	.L__func__.gimp_pdb_dialog_set, 20

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"object_name != NULL"
	.size	.L.str.20, 20

	.type	.L__func__.gimp_pdb_dialog_close,@object # @__func__.gimp_pdb_dialog_close
.L__func__.gimp_pdb_dialog_close:
	.asciz	"gimp_pdb_dialog_close"
	.size	.L__func__.gimp_pdb_dialog_close, 22

	.type	.L__func__.gimp_recent_list_add_uri,@object # @__func__.gimp_recent_list_add_uri
.L__func__.gimp_recent_list_add_uri:
	.asciz	"gimp_recent_list_add_uri"
	.size	.L__func__.gimp_recent_list_add_uri, 25

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"uri != NULL"
	.size	.L.str.21, 12

	.type	.L__func__.gimp_recent_list_load,@object # @__func__.gimp_recent_list_load
.L__func__.gimp_recent_list_load:
	.asciz	"gimp_recent_list_load"
	.size	.L__func__.gimp_recent_list_load, 22


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
