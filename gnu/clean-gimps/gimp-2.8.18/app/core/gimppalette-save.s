	.text
	.file	"gimppalette-save.bc"
	.globl	gimp_palette_save
	.align	16, 0x90
	.type	gimp_palette_save,@function
gimp_palette_save:                      # @gimp_palette_save
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
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_data_get_filename
	movabsq	$.L.str, %rsi
	movq	%rax, %rdi
	callq	fopen
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.1, %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_data_get_filename
	movq	%rax, %rdi
	callq	gimp_filename_to_utf8
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	xorl	%edx, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	-104(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB0_16
.LBB0_2:                                # %if.end
	movabsq	$.L.str.2, %rsi
	movq	-48(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	gimp_object_get_name
	movabsq	$.L.str.3, %rsi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	gimp_palette_get_columns
	cmpl	$256, %eax              # imm = 0x100
	jle	.LBB0_4
# BB#3:                                 # %cond.true
	movl	$256, %eax              # imm = 0x100
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB0_8
.LBB0_4:                                # %cond.false
	movq	-32(%rbp), %rdi
	callq	gimp_palette_get_columns
	cmpl	$0, %eax
	jge	.LBB0_6
# BB#5:                                 # %cond.true.16
	xorl	%eax, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB0_7
.LBB0_6:                                # %cond.false.17
	movq	-32(%rbp), %rdi
	callq	gimp_palette_get_columns
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB0_7:                                # %cond.end
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB0_8:                                # %cond.end.19
	movl	-136(%rbp), %eax        # 4-byte Reload
	movabsq	$.L.str.4, %rsi
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	fprintf
	movq	-32(%rbp), %rdi
	movl	%eax, -144(%rbp)        # 4-byte Spill
	callq	gimp_palette_get_colors
	movq	%rax, -40(%rbp)
.LBB0_9:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB0_15
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB0_9 Depth=1
	leaq	-57(%rbp), %rsi
	leaq	-58(%rbp), %rdx
	leaq	-59(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_rgb_get_uchar
	movabsq	$.L.str.5, %rsi
	movq	-48(%rbp), %rdi
	movzbl	-57(%rbp), %edx
	movzbl	-58(%rbp), %ecx
	movzbl	-59(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	32(%rax), %r9
	movb	$0, %al
	callq	fprintf
	movl	%eax, -148(%rbp)        # 4-byte Spill
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB0_9 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB0_13
# BB#12:                                # %cond.true.30
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB0_14
.LBB0_13:                               # %cond.false.31
                                        #   in Loop: Header=BB0_9 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB0_14
.LBB0_14:                               # %cond.end.32
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB0_9
.LBB0_15:                               # %for.end
	movq	-48(%rbp), %rdi
	callq	fclose
	movl	$1, -4(%rbp)
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB0_16:                               # %return
	movl	-4(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_palette_save, .Lfunc_end0-gimp_palette_save
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"wb"
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Could not open '%s' for writing: %s"
	.size	.L.str.1, 36

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP Palette\n"
	.size	.L.str.2, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Name: %s\n"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Columns: %d\n#\n"
	.size	.L.str.4, 15

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%3d %3d %3d\t%s\n"
	.size	.L.str.5, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
