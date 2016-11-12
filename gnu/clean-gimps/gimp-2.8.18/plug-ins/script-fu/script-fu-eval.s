	.text
	.file	"script-fu-eval.bc"
	.globl	script_fu_eval_run
	.align	16, 0x90
	.type	script_fu_eval_run,@function
script_fu_eval_run:                     # @script_fu_eval_run
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	xorl	%esi, %esi
	movl	%esi, %edi
	callq	g_string_new
	movq	%rax, -48(%rbp)
	movl	$3, -52(%rbp)
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movq	-40(%rbp), %rax
	movq	$script_fu_eval_run.values, (%rax)
	movl	$21, script_fu_eval_run.values(%rip)
	movq	-24(%rbp), %rax
	movl	8(%rax), %esi
	movl	%esi, -56(%rbp)
	movl	%esi, %edi
	callq	ts_set_run_mode
	movq	-48(%rbp), %rsi
	movl	$ts_gstring_output_func, %edi
                                        # kill: RDI<def> EDI<kill>
	callq	ts_register_output_func
	movl	-56(%rbp), %r9d
	testl	%r9d, %r9d
	movl	%r9d, -60(%rbp)         # 4-byte Spill
	je	.LBB0_4
	jmp	.LBB0_11
.LBB0_11:                               # %entry
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB0_1
	jmp	.LBB0_12
.LBB0_12:                               # %entry
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB0_4
	jmp	.LBB0_5
.LBB0_1:                                # %sw.bb
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	ts_interpret_string
	cmpl	$0, %eax
	je	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
.LBB0_3:                                # %if.end
	jmp	.LBB0_6
.LBB0_4:                                # %sw.bb.4
	movabsq	$.L.str, %rdi
	movl	$1, -52(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_string_assign
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB0_6
.LBB0_5:                                # %sw.default
	jmp	.LBB0_6
.LBB0_6:                                # %sw.epilog
	movl	-52(%rbp), %eax
	movl	%eax, script_fu_eval_run.values+8
	cmpl	$3, -52(%rbp)
	je	.LBB0_9
# BB#7:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	cmpq	$0, 8(%rax)
	jbe	.LBB0_9
# BB#8:                                 # %if.then.9
	xorl	%esi, %esi
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, script_fu_eval_run.values+40
	movq	-48(%rbp), %rdi
	callq	g_string_free
	movq	%rax, script_fu_eval_run.values+48
	jmp	.LBB0_10
.LBB0_9:                                # %if.else
	movl	$1, %esi
	movq	-48(%rbp), %rdi
	callq	g_string_free
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB0_10:                               # %if.end.12
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	script_fu_eval_run, .Lfunc_end0-script_fu_eval_run
	.cfi_endproc

	.type	script_fu_eval_run.values,@object # @script_fu_eval_run.values
	.local	script_fu_eval_run.values
	.comm	script_fu_eval_run.values,80,16
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Script-Fu evaluation mode only allows non-interactive invocation"
	.size	.L.str, 65


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
