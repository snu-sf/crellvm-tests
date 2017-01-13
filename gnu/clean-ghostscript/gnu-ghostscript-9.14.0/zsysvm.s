	.text
	.file	"zsysvm.bc"
	.align	16, 0x90
	.type	zglobalvmarray,@function
zglobalvmarray:                         # @zglobalvmarray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
.Ltmp5:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	leaq	8(%rbx), %r14
	movl	56(%rbx), %ebp
	movl	$8, %esi
	movq	%r14, %rdi
	callq	ialloc_set_space
	movq	%rbx, %rdi
	callq	zarray
	movl	%eax, %ebx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	ialloc_set_space
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	zglobalvmarray, .Lfunc_end0-zglobalvmarray
	.cfi_endproc

	.align	16, 0x90
	.type	zglobalvmdict,@function
zglobalvmdict:                          # @zglobalvmdict
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp8:
	.cfi_def_cfa_offset 32
.Ltmp9:
	.cfi_offset %rbx, -32
.Ltmp10:
	.cfi_offset %r14, -24
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	leaq	8(%rbx), %r14
	movl	56(%rbx), %ebp
	movl	$8, %esi
	movq	%r14, %rdi
	callq	ialloc_set_space
	movq	%rbx, %rdi
	callq	zdict
	movl	%eax, %ebx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	ialloc_set_space
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	zglobalvmdict, .Lfunc_end1-zglobalvmdict
	.cfi_endproc

	.align	16, 0x90
	.type	zglobalvmpackedarray,@function
zglobalvmpackedarray:                   # @zglobalvmpackedarray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 32
.Ltmp15:
	.cfi_offset %rbx, -32
.Ltmp16:
	.cfi_offset %r14, -24
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	leaq	8(%rbx), %r14
	movl	56(%rbx), %ebp
	movl	$8, %esi
	movq	%r14, %rdi
	callq	ialloc_set_space
	movq	%rbx, %rdi
	callq	zpackedarray
	movl	%eax, %ebx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	ialloc_set_space
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	zglobalvmpackedarray, .Lfunc_end2-zglobalvmpackedarray
	.cfi_endproc

	.align	16, 0x90
	.type	zglobalvmstring,@function
zglobalvmstring:                        # @zglobalvmstring
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 32
.Ltmp21:
	.cfi_offset %rbx, -32
.Ltmp22:
	.cfi_offset %r14, -24
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	leaq	8(%rbx), %r14
	movl	56(%rbx), %ebp
	movl	$8, %esi
	movq	%r14, %rdi
	callq	ialloc_set_space
	movq	%rbx, %rdi
	callq	zstring
	movl	%eax, %ebx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	ialloc_set_space
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	zglobalvmstring, .Lfunc_end3-zglobalvmstring
	.cfi_endproc

	.align	16, 0x90
	.type	zlocalvmarray,@function
zlocalvmarray:                          # @zlocalvmarray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp25:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 32
.Ltmp27:
	.cfi_offset %rbx, -32
.Ltmp28:
	.cfi_offset %r14, -24
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	leaq	8(%rbx), %r14
	movl	56(%rbx), %ebp
	movl	$12, %esi
	movq	%r14, %rdi
	callq	ialloc_set_space
	movq	%rbx, %rdi
	callq	zarray
	movl	%eax, %ebx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	ialloc_set_space
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	zlocalvmarray, .Lfunc_end4-zlocalvmarray
	.cfi_endproc

	.align	16, 0x90
	.type	zlocalvmdict,@function
zlocalvmdict:                           # @zlocalvmdict
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp31:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 32
.Ltmp33:
	.cfi_offset %rbx, -32
.Ltmp34:
	.cfi_offset %r14, -24
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	leaq	8(%rbx), %r14
	movl	56(%rbx), %ebp
	movl	$12, %esi
	movq	%r14, %rdi
	callq	ialloc_set_space
	movq	%rbx, %rdi
	callq	zdict
	movl	%eax, %ebx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	ialloc_set_space
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	zlocalvmdict, .Lfunc_end5-zlocalvmdict
	.cfi_endproc

	.align	16, 0x90
	.type	zlocalvmpackedarray,@function
zlocalvmpackedarray:                    # @zlocalvmpackedarray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp37:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 32
.Ltmp39:
	.cfi_offset %rbx, -32
.Ltmp40:
	.cfi_offset %r14, -24
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	leaq	8(%rbx), %r14
	movl	56(%rbx), %ebp
	movl	$12, %esi
	movq	%r14, %rdi
	callq	ialloc_set_space
	movq	%rbx, %rdi
	callq	zpackedarray
	movl	%eax, %ebx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	ialloc_set_space
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	zlocalvmpackedarray, .Lfunc_end6-zlocalvmpackedarray
	.cfi_endproc

	.align	16, 0x90
	.type	zlocalvmstring,@function
zlocalvmstring:                         # @zlocalvmstring
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp43:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp44:
	.cfi_def_cfa_offset 32
.Ltmp45:
	.cfi_offset %rbx, -32
.Ltmp46:
	.cfi_offset %r14, -24
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	leaq	8(%rbx), %r14
	movl	56(%rbx), %ebp
	movl	$12, %esi
	movq	%r14, %rdi
	callq	ialloc_set_space
	movq	%rbx, %rdi
	callq	zstring
	movl	%eax, %ebx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	ialloc_set_space
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	zlocalvmstring, .Lfunc_end7-zlocalvmstring
	.cfi_endproc

	.align	16, 0x90
	.type	zsystemvmarray,@function
zsystemvmarray:                         # @zsystemvmarray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp49:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp50:
	.cfi_def_cfa_offset 32
.Ltmp51:
	.cfi_offset %rbx, -32
.Ltmp52:
	.cfi_offset %r14, -24
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	leaq	8(%rbx), %r14
	movl	56(%rbx), %ebp
	movl	$4, %esi
	movq	%r14, %rdi
	callq	ialloc_set_space
	movq	%rbx, %rdi
	callq	zarray
	movl	%eax, %ebx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	ialloc_set_space
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end8:
	.size	zsystemvmarray, .Lfunc_end8-zsystemvmarray
	.cfi_endproc

	.align	16, 0x90
	.type	zsystemvmcheck,@function
zsystemvmcheck:                         # @zsystemvmcheck
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rax
	movzwl	(%rax), %ecx
	andl	$12, %ecx
	cmpl	$4, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	movw	%cx, 8(%rax)
	movw	$256, (%rax)            # imm = 0x100
	xorl	%eax, %eax
	retq
.Lfunc_end9:
	.size	zsystemvmcheck, .Lfunc_end9-zsystemvmcheck
	.cfi_endproc

	.align	16, 0x90
	.type	zsystemvmdict,@function
zsystemvmdict:                          # @zsystemvmdict
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp55:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp56:
	.cfi_def_cfa_offset 32
.Ltmp57:
	.cfi_offset %rbx, -32
.Ltmp58:
	.cfi_offset %r14, -24
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	leaq	8(%rbx), %r14
	movl	56(%rbx), %ebp
	movl	$4, %esi
	movq	%r14, %rdi
	callq	ialloc_set_space
	movq	%rbx, %rdi
	callq	zdict
	movl	%eax, %ebx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	ialloc_set_space
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end10:
	.size	zsystemvmdict, .Lfunc_end10-zsystemvmdict
	.cfi_endproc

	.align	16, 0x90
	.type	zsystemvmpackedarray,@function
zsystemvmpackedarray:                   # @zsystemvmpackedarray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp61:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp62:
	.cfi_def_cfa_offset 32
.Ltmp63:
	.cfi_offset %rbx, -32
.Ltmp64:
	.cfi_offset %r14, -24
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	leaq	8(%rbx), %r14
	movl	56(%rbx), %ebp
	movl	$4, %esi
	movq	%r14, %rdi
	callq	ialloc_set_space
	movq	%rbx, %rdi
	callq	zpackedarray
	movl	%eax, %ebx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	ialloc_set_space
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end11:
	.size	zsystemvmpackedarray, .Lfunc_end11-zsystemvmpackedarray
	.cfi_endproc

	.align	16, 0x90
	.type	zsystemvmstring,@function
zsystemvmstring:                        # @zsystemvmstring
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp67:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp68:
	.cfi_def_cfa_offset 32
.Ltmp69:
	.cfi_offset %rbx, -32
.Ltmp70:
	.cfi_offset %r14, -24
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	leaq	8(%rbx), %r14
	movl	56(%rbx), %ebp
	movl	$4, %esi
	movq	%r14, %rdi
	callq	ialloc_set_space
	movq	%rbx, %rdi
	callq	zstring
	movl	%eax, %ebx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	ialloc_set_space
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end12:
	.size	zsystemvmstring, .Lfunc_end12-zsystemvmstring
	.cfi_endproc

	.align	16, 0x90
	.type	zsystemvmfile,@function
zsystemvmfile:                          # @zsystemvmfile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp73:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp74:
	.cfi_def_cfa_offset 32
.Ltmp75:
	.cfi_offset %rbx, -32
.Ltmp76:
	.cfi_offset %r14, -24
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	leaq	8(%rbx), %r14
	movl	56(%rbx), %ebp
	movl	$4, %esi
	movq	%r14, %rdi
	callq	ialloc_set_space
	movq	%rbx, %rdi
	callq	zfile
	movl	%eax, %ebx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	ialloc_set_space
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end13:
	.size	zsystemvmfile, .Lfunc_end13-zsystemvmfile
	.cfi_endproc

	.align	16, 0x90
	.type	zsystemvmlibfile,@function
zsystemvmlibfile:                       # @zsystemvmlibfile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp79:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp80:
	.cfi_def_cfa_offset 32
.Ltmp81:
	.cfi_offset %rbx, -32
.Ltmp82:
	.cfi_offset %r14, -24
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	leaq	8(%rbx), %r14
	movl	56(%rbx), %ebp
	movl	$4, %esi
	movq	%r14, %rdi
	callq	ialloc_set_space
	movq	%rbx, %rdi
	callq	zlibfile
	movl	%eax, %ebx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	ialloc_set_space
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end14:
	.size	zsystemvmlibfile, .Lfunc_end14-zsystemvmlibfile
	.cfi_endproc

	.align	16, 0x90
	.type	zsystemvmSFD,@function
zsystemvmSFD:                           # @zsystemvmSFD
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp85:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp86:
	.cfi_def_cfa_offset 32
.Ltmp87:
	.cfi_offset %rbx, -32
.Ltmp88:
	.cfi_offset %r14, -24
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	leaq	8(%rbx), %r14
	movl	56(%rbx), %ebp
	movl	$4, %esi
	movq	%r14, %rdi
	callq	ialloc_set_space
	movq	%rbx, %rdi
	callq	zSFD
	movl	%eax, %ebx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	ialloc_set_space
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end15:
	.size	zsystemvmSFD, .Lfunc_end15-zsystemvmSFD
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"1.globalvmarray"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"1.globalvmdict"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"1.globalvmpackedarray"
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"1.globalvmstring"
	.size	.L.str.3, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"1.localvmarray"
	.size	.L.str.4, 15

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"1.localvmdict"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"1.localvmpackedarray"
	.size	.L.str.6, 21

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"1.localvmstring"
	.size	.L.str.7, 16

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"1.systemvmarray"
	.size	.L.str.8, 16

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"1.systemvmcheck"
	.size	.L.str.9, 16

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"1.systemvmdict"
	.size	.L.str.10, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"1.systemvmpackedarray"
	.size	.L.str.11, 22

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"1.systemvmstring"
	.size	.L.str.12, 17

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"1.systemvmfile"
	.size	.L.str.13, 15

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"1.systemvmlibfile"
	.size	.L.str.14, 18

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"2.systemvmSFD"
	.size	.L.str.15, 14

	.type	zsysvm_op_defs,@object  # @zsysvm_op_defs
	.section	.rodata,"a",@progbits
	.globl	zsysvm_op_defs
	.align	16
zsysvm_op_defs:
	.quad	.L.str
	.quad	zglobalvmarray
	.quad	.L.str.1
	.quad	zglobalvmdict
	.quad	.L.str.2
	.quad	zglobalvmpackedarray
	.quad	.L.str.3
	.quad	zglobalvmstring
	.quad	.L.str.4
	.quad	zlocalvmarray
	.quad	.L.str.5
	.quad	zlocalvmdict
	.quad	.L.str.6
	.quad	zlocalvmpackedarray
	.quad	.L.str.7
	.quad	zlocalvmstring
	.quad	.L.str.8
	.quad	zsystemvmarray
	.quad	.L.str.9
	.quad	zsystemvmcheck
	.quad	.L.str.10
	.quad	zsystemvmdict
	.quad	.L.str.11
	.quad	zsystemvmpackedarray
	.quad	.L.str.12
	.quad	zsystemvmstring
	.quad	.L.str.13
	.quad	zsystemvmfile
	.quad	.L.str.14
	.quad	zsystemvmlibfile
	.quad	.L.str.15
	.quad	zsystemvmSFD
	.zero	16
	.size	zsysvm_op_defs, 272


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
