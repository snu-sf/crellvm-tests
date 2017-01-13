	.text
	.file	"zdfilter.bc"
	.align	16, 0x90
	.type	zpopdevicefilter,@function
zpopdevicefilter:                       # @zpopdevicefilter
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	8(%rbx), %rdi
	callq	*32(%rdi)
	movq	(%rbx), %rsi
	movq	%rax, %rdi
	popq	%rbx
	jmp	gs_pop_device_filter    # TAILCALL
.Lfunc_end0:
	.size	zpopdevicefilter, .Lfunc_end0-zpopdevicefilter
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"0.popdevicefilter"
	.size	.L.str, 18

	.type	zdfilter_op_defs,@object # @zdfilter_op_defs
	.section	.rodata,"a",@progbits
	.globl	zdfilter_op_defs
	.align	16
zdfilter_op_defs:
	.quad	.L.str
	.quad	zpopdevicefilter
	.zero	16
	.size	zdfilter_op_defs, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
