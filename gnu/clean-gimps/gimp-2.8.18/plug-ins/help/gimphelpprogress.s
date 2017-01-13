	.text
	.file	"gimphelpprogress.bc"
	.globl	gimp_help_progress_new
	.align	16, 0x90
	.type	gimp_help_progress_new,@function
gimp_help_progress_new:                 # @gimp_help_progress_new
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.gimp_help_progress_new, %rsi
	movabsq	$.L.str, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_6
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	movl	$72, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	%rax, 56(%rdi)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_help_progress_new, .Lfunc_end0-gimp_help_progress_new
	.cfi_endproc

	.globl	gimp_help_progress_free
	.align	16, 0x90
	.type	gimp_help_progress_free,@function
gimp_help_progress_free:                # @gimp_help_progress_free
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
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.gimp_help_progress_free, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_9
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB1_7
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
.LBB1_7:                                # %if.end.4
	jmp	.LBB1_8
.LBB1_8:                                # %do.body.5
	movl	$72, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
.LBB1_9:                                # %do.end.6
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_help_progress_free, .Lfunc_end1-gimp_help_progress_free
	.cfi_endproc

	.globl	gimp_help_progress_cancel
	.align	16, 0x90
	.type	gimp_help_progress_cancel,@function
gimp_help_progress_cancel:              # @gimp_help_progress_cancel
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
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.gimp_help_progress_cancel, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_7
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB2_7
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdi
	callq	g_cancellable_cancel
.LBB2_7:                                # %if.end.3
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_help_progress_cancel, .Lfunc_end2-gimp_help_progress_cancel
	.cfi_endproc

	.hidden	_gimp_help_progress_start
	.globl	_gimp_help_progress_start
	.align	16, 0x90
	.type	_gimp_help_progress_start,@function
_gimp_help_progress_start:              # @_gimp_help_progress_start
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
	subq	$432, %rsp              # imm = 0x1B0
	testb	%al, %al
	movaps	%xmm7, -256(%rbp)       # 16-byte Spill
	movaps	%xmm6, -272(%rbp)       # 16-byte Spill
	movaps	%xmm5, -288(%rbp)       # 16-byte Spill
	movaps	%xmm4, -304(%rbp)       # 16-byte Spill
	movaps	%xmm3, -320(%rbp)       # 16-byte Spill
	movaps	%xmm2, -336(%rbp)       # 16-byte Spill
	movaps	%xmm1, -352(%rbp)       # 16-byte Spill
	movaps	%xmm0, -368(%rbp)       # 16-byte Spill
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%r9, -384(%rbp)         # 8-byte Spill
	movq	%r8, -392(%rbp)         # 8-byte Spill
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	movq	%rdx, -408(%rbp)        # 8-byte Spill
	movq	%rsi, -416(%rbp)        # 8-byte Spill
	je	.LBB3_14
# BB#13:                                # %entry
	movaps	-368(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -192(%rbp)
	movaps	-352(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -176(%rbp)
	movaps	-336(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -160(%rbp)
	movaps	-320(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -144(%rbp)
	movaps	-304(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -128(%rbp)
	movaps	-288(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -112(%rbp)
	movaps	-272(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -96(%rbp)
	movaps	-256(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -80(%rbp)
.LBB3_14:                               # %entry
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	-392(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -208(%rbp)
	movq	-400(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -216(%rbp)
	movq	-408(%rbp), %rsi        # 8-byte Reload
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	-376(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__._gimp_help_progress_start, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_12
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	cmpq	$0, -16(%rbp)
	je	.LBB3_7
# BB#6:                                 # %if.then.1
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	%rax, -424(%rbp)        # 8-byte Spill
.LBB3_7:                                # %if.end.2
	movq	-8(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB3_9
# BB#8:                                 # %if.then.5
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB3_9:                                # %if.end.7
	leaq	-64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 64(%rdx)
	movq	%rax, %rcx
	leaq	-240(%rbp), %rdx
	movq	%rdx, 16(%rcx)
	leaq	16(%rbp), %rdx
	movq	%rdx, 8(%rcx)
	movl	$48, 4(%rcx)
	movl	$24, (%rcx)
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_strdup_vprintf
	leaq	-64(%rbp), %rcx
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	je	.LBB3_11
# BB#10:                                # %if.then.15
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdi
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movq	-8(%rbp), %rdx
	movq	56(%rdx), %rdx
	callq	*%rax
.LBB3_11:                               # %if.end.19
	movq	-32(%rbp), %rdi
	callq	g_free
.LBB3_12:                               # %return
	addq	$432, %rsp              # imm = 0x1B0
	popq	%rbp
	retq
.Lfunc_end3:
	.size	_gimp_help_progress_start, .Lfunc_end3-_gimp_help_progress_start
	.cfi_endproc

	.hidden	_gimp_help_progress_update
	.globl	_gimp_help_progress_update
	.align	16, 0x90
	.type	_gimp_help_progress_update,@function
_gimp_help_progress_update:             # @_gimp_help_progress_update
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__._gimp_help_progress_update, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_7
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB4_7
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rcx
	movq	56(%rcx), %rdi
	callq	*%rax
.LBB4_7:                                # %if.end.4
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	_gimp_help_progress_update, .Lfunc_end4-_gimp_help_progress_update
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	-4616189618054758400    # double -1
	.text
	.hidden	_gimp_help_progress_pulse
	.globl	_gimp_help_progress_pulse
	.align	16, 0x90
	.type	_gimp_help_progress_pulse,@function
_gimp_help_progress_pulse:              # @_gimp_help_progress_pulse
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__._gimp_help_progress_pulse, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_6
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	callq	_gimp_help_progress_update
.LBB5_6:                                # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	_gimp_help_progress_pulse, .Lfunc_end5-_gimp_help_progress_pulse
	.cfi_endproc

	.hidden	_gimp_help_progress_finish
	.globl	_gimp_help_progress_finish
	.align	16, 0x90
	.type	_gimp_help_progress_finish,@function
_gimp_help_progress_finish:             # @_gimp_help_progress_finish
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
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__._gimp_help_progress_finish, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_9
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB6_7
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	56(%rcx), %rdi
	callq	*%rax
.LBB6_7:                                # %if.end.4
	movq	-8(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB6_9
# BB#8:                                 # %if.then.6
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
.LBB6_9:                                # %if.end.9
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	_gimp_help_progress_finish, .Lfunc_end6-_gimp_help_progress_finish
	.cfi_endproc

	.type	.L__func__.gimp_help_progress_new,@object # @__func__.gimp_help_progress_new
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.gimp_help_progress_new:
	.asciz	"gimp_help_progress_new"
	.size	.L__func__.gimp_help_progress_new, 23

	.type	.L.str,@object          # @.str
.L.str:
	.asciz	"vtable != NULL"
	.size	.L.str, 15

	.type	.L__func__.gimp_help_progress_free,@object # @__func__.gimp_help_progress_free
.L__func__.gimp_help_progress_free:
	.asciz	"gimp_help_progress_free"
	.size	.L__func__.gimp_help_progress_free, 24

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"progress != NULL"
	.size	.L.str.1, 17

	.type	.L__func__.gimp_help_progress_cancel,@object # @__func__.gimp_help_progress_cancel
.L__func__.gimp_help_progress_cancel:
	.asciz	"gimp_help_progress_cancel"
	.size	.L__func__.gimp_help_progress_cancel, 26

	.type	.L__func__._gimp_help_progress_start,@object # @__func__._gimp_help_progress_start
.L__func__._gimp_help_progress_start:
	.asciz	"_gimp_help_progress_start"
	.size	.L__func__._gimp_help_progress_start, 26

	.type	.L__func__._gimp_help_progress_update,@object # @__func__._gimp_help_progress_update
.L__func__._gimp_help_progress_update:
	.asciz	"_gimp_help_progress_update"
	.size	.L__func__._gimp_help_progress_update, 27

	.type	.L__func__._gimp_help_progress_pulse,@object # @__func__._gimp_help_progress_pulse
.L__func__._gimp_help_progress_pulse:
	.asciz	"_gimp_help_progress_pulse"
	.size	.L__func__._gimp_help_progress_pulse, 26

	.type	.L__func__._gimp_help_progress_finish,@object # @__func__._gimp_help_progress_finish
.L__func__._gimp_help_progress_finish:
	.asciz	"_gimp_help_progress_finish"
	.size	.L__func__._gimp_help_progress_finish, 27


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
