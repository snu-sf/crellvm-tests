	.text
	.file	"gimpplugin.bc"
	.globl	gimp_plugin_icon_register
	.align	16, 0x90
	.type	gimp_plugin_icon_register,@function
gimp_plugin_icon_register:              # @gimp_plugin_icon_register
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_plugin_icon_register(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_21
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	jmp	.LBB0_6
.LBB0_6:                                # %do.body.1
	cmpq	$0, -32(%rbp)
	je	.LBB0_8
# BB#7:                                 # %if.then.3
	jmp	.LBB0_9
.LBB0_8:                                # %if.else.4
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_plugin_icon_register(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_21
.LBB0_9:                                # %if.end.5
	jmp	.LBB0_10
.LBB0_10:                               # %do.end.6
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB0_11
	jmp	.LBB0_22
.LBB0_22:                               # %do.end.6
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB0_12
	jmp	.LBB0_23
.LBB0_23:                               # %do.end.6
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jne	.LBB0_18
	jmp	.LBB0_11
.LBB0_11:                               # %sw.bb
	movq	-32(%rbp), %rdi
	callq	strlen@PLT
	addq	$1, %rax
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	jmp	.LBB0_20
.LBB0_12:                               # %sw.bb.7
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.8
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	andl	$255, %ecx
	shll	$24, %ecx
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	andl	$65280, %edx            # imm = 0xFF00
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	andl	$16711680, %edx         # imm = 0xFF0000
	shrl	$8, %edx
	orl	%edx, %ecx
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	andl	$-16777216, %edx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %edx
	orl	%edx, %ecx
	cmpl	$1197763408, %ecx       # imm = 0x47646B50
	jne	.LBB0_15
# BB#14:                                # %if.then.18
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.19
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_plugin_icon_register(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_21
.LBB0_16:                               # %if.end.20
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.21
	movq	-32(%rbp), %rax
	movl	4(%rax), %ecx
	andl	$255, %ecx
	shll	$24, %ecx
	movq	-32(%rbp), %rax
	movl	4(%rax), %edx
	andl	$65280, %edx            # imm = 0xFF00
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-32(%rbp), %rax
	movl	4(%rax), %edx
	andl	$16711680, %edx         # imm = 0xFF0000
	shrl	$8, %edx
	orl	%edx, %ecx
	movq	-32(%rbp), %rax
	movl	4(%rax), %edx
	andl	$-16777216, %edx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %edx
	orl	%edx, %ecx
	movl	%ecx, -36(%rbp)
	jmp	.LBB0_20
.LBB0_18:                               # %sw.default
	jmp	.LBB0_19
.LBB0_19:                               # %do.body.36
	leaq	.L.str(%rip), %rdi
	movl	$8, %esi
	leaq	.L.str.4(%rip), %rdx
	leaq	.L.str.5(%rip), %rcx
	movl	$52, %r8d
	leaq	.L__func__.gimp_plugin_icon_register(%rip), %r9
	movb	$0, %al
	callq	g_log@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_21
.LBB0_20:                               # %sw.epilog
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	_gimp_plugin_icon_register
	movl	%eax, -4(%rbp)
.LBB0_21:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_plugin_icon_register, .Lfunc_end0-gimp_plugin_icon_register
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LibGimp"
	.size	.L.str, 8

	.type	.L__func__.gimp_plugin_icon_register,@object # @__func__.gimp_plugin_icon_register
.L__func__.gimp_plugin_icon_register:
	.asciz	"gimp_plugin_icon_register"
	.size	.L__func__.gimp_plugin_icon_register, 26

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"procedure_name != NULL"
	.size	.L.str.1, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"icon_data != NULL"
	.size	.L.str.2, 18

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"g_ntohl (*((gint32 *) icon_data)) == 0x47646b50"
	.size	.L.str.3, 48

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"file %s: line %d (%s): should not be reached"
	.size	.L.str.4, 45

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimpplugin.c"
	.size	.L.str.5, 13

	.hidden	_gimp_plugin_icon_register

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
