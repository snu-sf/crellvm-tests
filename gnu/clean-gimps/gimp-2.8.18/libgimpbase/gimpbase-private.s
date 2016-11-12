	.text
	.file	"gimpbase-private.bc"
	.globl	gimp_base_init
	.align	16, 0x90
	.type	gimp_base_init,@function
gimp_base_init:                         # @gimp_base_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_base_init(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB0_8
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	cmpl	$0, gimp_base_init.gimp_base_initialized(%rip)
	je	.LBB0_7
# BB#6:                                 # %if.then.1
	leaq	.L.str.2(%rip), %rdi
	movb	$0, %al
	callq	g_error
.LBB0_7:                                # %if.end.2
	movq	_gimp_unit_vtable@GOTPCREL(%rip), %rax
	movl	$128, %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	memcpy@PLT
	movl	$1, gimp_base_init.gimp_base_initialized(%rip)
.LBB0_8:                                # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_base_init, .Lfunc_end0-gimp_base_init
	.cfi_endproc

	.align	16, 0x90
	.type	g_error,@function
g_error:                                # @g_error
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
	subq	$400, %rsp              # imm = 0x190
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
	je	.LBB1_3
# BB#2:                                 # %entry
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
.LBB1_3:                                # %entry
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
	leaq	.L.str(%rip), %rdi
	movl	$4, %esi
	leaq	-32(%rbp), %r9
	movq	%r8, -8(%rbp)
	movq	%r9, %r8
	leaq	-208(%rbp), %r10
	movq	%r10, 16(%r8)
	leaq	16(%rbp), %r10
	movq	%r10, 8(%r8)
	movl	$48, 4(%r8)
	movl	$8, (%r8)
	movq	-8(%rbp), %rdx
	movq	%r9, %rcx
	callq	g_logv@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB1_1
.Lfunc_end1:
	.size	g_error, .Lfunc_end1-g_error
	.cfi_endproc

	.type	_gimp_unit_vtable,@object # @_gimp_unit_vtable
	.bss
	.globl	_gimp_unit_vtable
	.align	8
_gimp_unit_vtable:
	.zero	128
	.size	_gimp_unit_vtable, 128

	.type	gimp_base_init.gimp_base_initialized,@object # @gimp_base_init.gimp_base_initialized
	.local	gimp_base_init.gimp_base_initialized
	.comm	gimp_base_init.gimp_base_initialized,4,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LibGimpBase"
	.size	.L.str, 12

	.type	.L__func__.gimp_base_init,@object # @__func__.gimp_base_init
.L__func__.gimp_base_init:
	.asciz	"gimp_base_init"
	.size	.L__func__.gimp_base_init, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"vtable != NULL"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp_base_init() must only be called once!"
	.size	.L.str.2, 43


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
