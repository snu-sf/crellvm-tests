	.text
	.file	"gsrop.bc"
	.globl	gs_setrasterop
	.align	16, 0x90
	.type	gs_setrasterop,@function
gs_setrasterop:                         # @gs_setrasterop
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-21, %eax
	cmpl	$0, 1848(%rdi)
	jne	.LBB0_2
# BB#1:                                 # %if.end
	movb	%sil, 212(%rdi)
	xorl	%eax, %eax
.LBB0_2:                                # %return
	retq
.Lfunc_end0:
	.size	gs_setrasterop, .Lfunc_end0-gs_setrasterop
	.cfi_endproc

	.globl	gs_currentrasterop
	.align	16, 0x90
	.type	gs_currentrasterop,@function
gs_currentrasterop:                     # @gs_currentrasterop
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	212(%rdi), %eax
	retq
.Lfunc_end1:
	.size	gs_currentrasterop, .Lfunc_end1-gs_currentrasterop
	.cfi_endproc

	.globl	gs_setsourcetransparent
	.align	16, 0x90
	.type	gs_setsourcetransparent,@function
gs_setsourcetransparent:                # @gs_setsourcetransparent
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-21, %eax
	cmpl	$0, 1848(%rdi)
	jne	.LBB2_2
# BB#1:                                 # %if.end
	movl	212(%rdi), %eax
	movl	%eax, %ecx
	orl	$256, %ecx              # imm = 0x100
	andl	$-257, %eax             # imm = 0xFFFFFFFFFFFFFEFF
	testl	%esi, %esi
	cmovnel	%ecx, %eax
	movl	%eax, 212(%rdi)
	xorl	%eax, %eax
.LBB2_2:                                # %return
	retq
.Lfunc_end2:
	.size	gs_setsourcetransparent, .Lfunc_end2-gs_setsourcetransparent
	.cfi_endproc

	.globl	gs_currentsourcetransparent
	.align	16, 0x90
	.type	gs_currentsourcetransparent,@function
gs_currentsourcetransparent:            # @gs_currentsourcetransparent
	.cfi_startproc
# BB#0:                                 # %entry
	movl	212(%rdi), %eax
	shrl	$8, %eax
	andl	$1, %eax
	retq
.Lfunc_end3:
	.size	gs_currentsourcetransparent, .Lfunc_end3-gs_currentsourcetransparent
	.cfi_endproc

	.globl	gs_settexturetransparent
	.align	16, 0x90
	.type	gs_settexturetransparent,@function
gs_settexturetransparent:               # @gs_settexturetransparent
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-21, %eax
	cmpl	$0, 1848(%rdi)
	jne	.LBB4_2
# BB#1:                                 # %if.end
	movl	212(%rdi), %eax
	movl	%eax, %ecx
	orl	$512, %ecx              # imm = 0x200
	andl	$-513, %eax             # imm = 0xFFFFFFFFFFFFFDFF
	testl	%esi, %esi
	cmovnel	%ecx, %eax
	movl	%eax, 212(%rdi)
	xorl	%eax, %eax
.LBB4_2:                                # %return
	retq
.Lfunc_end4:
	.size	gs_settexturetransparent, .Lfunc_end4-gs_settexturetransparent
	.cfi_endproc

	.globl	gs_currenttexturetransparent
	.align	16, 0x90
	.type	gs_currenttexturetransparent,@function
gs_currenttexturetransparent:           # @gs_currenttexturetransparent
	.cfi_startproc
# BB#0:                                 # %entry
	movl	212(%rdi), %eax
	shrl	$9, %eax
	andl	$1, %eax
	retq
.Lfunc_end5:
	.size	gs_currenttexturetransparent, .Lfunc_end5-gs_currenttexturetransparent
	.cfi_endproc

	.globl	gs_set_logical_op
	.align	16, 0x90
	.type	gs_set_logical_op,@function
gs_set_logical_op:                      # @gs_set_logical_op
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, 212(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end6:
	.size	gs_set_logical_op, .Lfunc_end6-gs_set_logical_op
	.cfi_endproc

	.globl	gs_current_logical_op
	.align	16, 0x90
	.type	gs_current_logical_op,@function
gs_current_logical_op:                  # @gs_current_logical_op
	.cfi_startproc
# BB#0:                                 # %entry
	movl	212(%rdi), %eax
	retq
.Lfunc_end7:
	.size	gs_current_logical_op, .Lfunc_end7-gs_current_logical_op
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
