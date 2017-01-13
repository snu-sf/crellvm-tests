	.text
	.file	"gimpbrushgenerated-save.bc"
	.globl	gimp_brush_generated_save
	.align	16, 0x90
	.type	gimp_brush_generated_save,@function
gimp_brush_generated_save:              # @gimp_brush_generated_save
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	gimp_brush_generated_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -40(%rbp)
	movl	$0, -100(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -40(%rbp)
	je	.LBB0_4
# BB#2:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB0_4
# BB#3:                                 # %if.then
	jmp	.LBB0_5
.LBB0_4:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_brush_generated_save, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_17
.LBB0_5:                                # %if.end
	jmp	.LBB0_6
.LBB0_6:                                # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_data_get_filename
	movabsq	$.L.str.2, %rsi
	movq	%rax, %rdi
	callq	fopen
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB0_8
# BB#7:                                 # %if.then.7
	movq	-24(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.3, %rdi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_data_get_filename
	movq	%rax, %rdi
	callq	gimp_filename_to_utf8
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	xorl	%edx, %edx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movl	-140(%rbp), %esi        # 4-byte Reload
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	-160(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB0_17
.LBB0_8:                                # %if.end.14
	movabsq	$.L.str.4, %rsi
	movq	-48(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movq	-32(%rbp), %rsi
	cmpl	$0, 120(%rsi)
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jne	.LBB0_10
# BB#9:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpl	$2, 128(%rax)
	jle	.LBB0_11
.LBB0_10:                               # %if.then.20
	movabsq	$.L.str.5, %rsi
	movq	-48(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	$1, -100(%rbp)
	movl	%eax, -168(%rbp)        # 4-byte Spill
	jmp	.LBB0_12
.LBB0_11:                               # %if.else.22
	movabsq	$.L.str.6, %rsi
	movq	-48(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB0_12:                               # %if.end.24
	movabsq	$.L.str.7, %rsi
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	cmpl	$0, -100(%rbp)
	movl	%eax, -176(%rbp)        # 4-byte Spill
	je	.LBB0_14
# BB#13:                                # %if.then.27
	callq	gimp_brush_generated_shape_get_type
	movq	%rax, %rdi
	callq	g_type_class_peek
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	120(%rax), %esi
	callq	g_enum_get_value
	movabsq	$.L.str.8, %rsi
	movq	%rax, -120(%rbp)
	movq	-48(%rbp), %rdi
	movq	-120(%rbp), %rax
	movq	16(%rax), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB0_14:                               # %if.end.33
	leaq	-96(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	callq	gimp_brush_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_brush_get_spacing
	movl	$39, %esi
	movabsq	$.L.str.9, %rdx
	cvtsi2sdl	%eax, %xmm0
	movq	-192(%rbp), %rdi        # 8-byte Reload
	callq	g_ascii_formatd
	movabsq	$.L.str.8, %rsi
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	movabsq	$.L.str.9, %rdx
	leaq	-96(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %r8
	cvtss2sd	124(%r8), %xmm0
	movl	%eax, -212(%rbp)        # 4-byte Spill
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.8, %rsi
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	cmpl	$0, -100(%rbp)
	movl	%eax, -228(%rbp)        # 4-byte Spill
	je	.LBB0_16
# BB#15:                                # %if.then.45
	movabsq	$.L.str.10, %rsi
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	128(%rax), %edx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -232(%rbp)        # 4-byte Spill
.LBB0_16:                               # %if.end.48
	movl	$39, %esi
	movabsq	$.L.str.9, %rdx
	leaq	-96(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	cvtss2sd	132(%rcx), %xmm0
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.8, %rsi
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	movabsq	$.L.str.9, %rdx
	leaq	-96(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %r8
	cvtss2sd	136(%r8), %xmm0
	movl	%eax, -244(%rbp)        # 4-byte Spill
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.8, %rsi
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	movabsq	$.L.str.9, %rdx
	leaq	-96(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %r8
	cvtss2sd	140(%r8), %xmm0
	movl	%eax, -260(%rbp)        # 4-byte Spill
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.8, %rsi
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movq	-48(%rbp), %rdi
	movl	%eax, -276(%rbp)        # 4-byte Spill
	callq	fclose
	movl	$1, -4(%rbp)
	movl	%eax, -280(%rbp)        # 4-byte Spill
.LBB0_17:                               # %return
	movl	-4(%rbp), %eax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_brush_generated_save, .Lfunc_end0-gimp_brush_generated_save
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_brush_generated_save,@object # @__func__.gimp_brush_generated_save
.L__func__.gimp_brush_generated_save:
	.asciz	"gimp_brush_generated_save"
	.size	.L__func__.gimp_brush_generated_save, 26

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"name != NULL && *name != '\\0'"
	.size	.L.str.1, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"wb"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Could not open '%s' for writing: %s"
	.size	.L.str.3, 36

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP-VBR\n"
	.size	.L.str.4, 10

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"1.5\n"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"1.0\n"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%.255s\n"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%s\n"
	.size	.L.str.8, 4

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%f"
	.size	.L.str.9, 3

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%d\n"
	.size	.L.str.10, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
