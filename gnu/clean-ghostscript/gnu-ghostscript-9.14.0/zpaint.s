	.text
	.file	"zpaint.bc"
	.align	16, 0x90
	.type	zeofill,@function
zeofill:                                # @zeofill
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_eofill               # TAILCALL
.Lfunc_end0:
	.size	zeofill, .Lfunc_end0-zeofill
	.cfi_endproc

	.align	16, 0x90
	.type	zfill,@function
zfill:                                  # @zfill
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_fill                 # TAILCALL
.Lfunc_end1:
	.size	zfill, .Lfunc_end1-zfill
	.cfi_endproc

	.align	16, 0x90
	.type	zstroke,@function
zstroke:                                # @zstroke
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_stroke               # TAILCALL
.Lfunc_end2:
	.size	zstroke, .Lfunc_end2-zstroke
	.cfi_endproc

	.align	16, 0x90
	.type	zfillpage,@function
zfillpage:                              # @zfillpage
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_fillpage             # TAILCALL
.Lfunc_end3:
	.size	zfillpage, .Lfunc_end3-zfillpage
	.cfi_endproc

	.align	16, 0x90
	.type	zimagepath,@function
zimagepath:                             # @zimagepath
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	movzbl	-31(%rdi), %eax
	cmpl	$11, %eax
	jne	.LBB4_9
# BB#1:                                 # %if.end
	movzbl	-15(%rdi), %eax
	cmpl	$11, %eax
	jne	.LBB4_10
# BB#2:                                 # %if.end.14
	movzwl	(%rdi), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$4640, %eax             # imm = 0x1220
	jne	.LBB4_3
# BB#5:                                 # %if.end.28
	movl	4(%rdi), %r8d
	movq	-24(%rdi), %rsi
	movq	-8(%rdi), %rdx
	leaq	7(%rsi), %rcx
	sarq	$3, %rcx
	imulq	%rdx, %rcx
	movl	$-15, %eax
	cmpq	%rcx, %r8
	jl	.LBB4_8
# BB#6:                                 # %if.end.38
	movq	(%rbx), %rax
	movq	8(%rdi), %rcx
	movq	%rax, %rdi
	callq	gs_imagepath
	testl	%eax, %eax
	js	.LBB4_8
# BB#7:                                 # %if.then.51
	addq	$-48, 624(%rbx)
	jmp	.LBB4_8
.LBB4_9:                                # %if.then
	addq	$-32, %rdi
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.LBB4_10:                               # %if.then.11
	addq	$-16, %rdi
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.LBB4_3:                                # %if.then.20
	movzbl	1(%rdi), %ecx
	movl	$-7, %eax
	cmpl	$18, %ecx
	jne	.LBB4_4
.LBB4_8:                                # %cleanup
	popq	%rbx
	retq
.LBB4_4:                                # %cond.true
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.Lfunc_end4:
	.size	zimagepath, .Lfunc_end4-zimagepath
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"0eofill"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"0fill"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"0stroke"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"0.fillpage"
	.size	.L.str.3, 11

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"3.imagepath"
	.size	.L.str.4, 12

	.type	zpaint_op_defs,@object  # @zpaint_op_defs
	.section	.rodata,"a",@progbits
	.globl	zpaint_op_defs
	.align	16
zpaint_op_defs:
	.quad	.L.str
	.quad	zeofill
	.quad	.L.str.1
	.quad	zfill
	.quad	.L.str.2
	.quad	zstroke
	.quad	.L.str.3
	.quad	zfillpage
	.quad	.L.str.4
	.quad	zimagepath
	.zero	16
	.size	zpaint_op_defs, 96


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
