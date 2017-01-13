	.text
	.file	"gimpchannel-project.bc"
	.globl	gimp_channel_project_region
	.align	16, 0x90
	.type	gimp_channel_project_region,@function
gimp_channel_project_region:            # @gimp_channel_project_region
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
	subq	$240, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	%r9, -32(%rbp)
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-124(%rbp), %r8
	leaq	-123(%rbp), %rsi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	addq	$40, %rax
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rsi, %r9
	addq	$2, %r9
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movq	%r9, %rcx
	callq	gimp_rgba_get_uchar
	leaq	-112(%rbp), %rsi
	leaq	-120(%rbp), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r9d
	movq	%rax, (%rsp)
	callq	gimp_drawable_init_src_region
	cmpl	$0, -36(%rbp)
	je	.LBB0_2
# BB#1:                                 # %if.then
	leaq	-123(%rbp), %r8
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movzbl	-124(%rbp), %r9d
	movq	-48(%rbp), %rax
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%r8, -160(%rbp)         # 8-byte Spill
	movl	%r9d, -164(%rbp)        # 4-byte Spill
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_show_masked
	leaq	-112(%rbp), %rsi
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movl	$7, %r10d
	movl	$6, %r11d
	cmpl	$0, %eax
	cmovnel	%r11d, %r10d
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	-176(%rbp), %rdx        # 8-byte Reload
	movq	-160(%rbp), %r8         # 8-byte Reload
	movl	-164(%rbp), %eax        # 4-byte Reload
	movl	%r9d, -180(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movl	$0, (%rsp)
	movq	$0, 8(%rsp)
	movl	%r10d, 16(%rsp)
	callq	combine_regions
	jmp	.LBB0_3
.LBB0_2:                                # %if.else
	leaq	-123(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movzbl	-124(%rbp), %r8d
	movq	-48(%rbp), %rdi
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	movl	%r8d, -204(%rbp)        # 4-byte Spill
	callq	gimp_channel_get_show_masked
	leaq	-112(%rbp), %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	cmpl	$0, %eax
	cmovnel	%r8d, %r9d
	movq	-200(%rbp), %rsi        # 8-byte Reload
	movq	-192(%rbp), %rcx        # 8-byte Reload
	movl	-204(%rbp), %eax        # 4-byte Reload
	movl	%r8d, -208(%rbp)        # 4-byte Spill
	movl	%eax, %r8d
	movl	-208(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -212(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	-212(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 8(%rsp)
	callq	initial_region
.LBB0_3:                                # %if.end
	cmpq	$0, -120(%rbp)
	je	.LBB0_5
# BB#4:                                 # %if.then.12
	movq	-120(%rbp), %rdi
	callq	tile_manager_unref
.LBB0_5:                                # %if.end.13
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_channel_project_region, .Lfunc_end0-gimp_channel_project_region
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
