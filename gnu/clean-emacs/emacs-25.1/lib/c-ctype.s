	.text
	.file	"c-ctype.bc"
	.globl	c_isalnum
	.align	16, 0x90
	.type	c_isalnum,@function
c_isalnum:                              # @c_isalnum
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
	movl	%edi, -8(%rbp)
	movl	%edi, %eax
	addl	$-48, %eax
	subl	$10, %eax
	movl	%edi, -12(%rbp)         # 4-byte Spill
	movl	%eax, -16(%rbp)         # 4-byte Spill
	jb	.LBB0_1
	jmp	.LBB0_4
.LBB0_4:                                # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	addl	$-65, %eax
	subl	$26, %eax
	movl	%eax, -20(%rbp)         # 4-byte Spill
	jb	.LBB0_1
	jmp	.LBB0_5
.LBB0_5:                                # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	addl	$-97, %eax
	subl	$25, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	ja	.LBB0_2
	jmp	.LBB0_1
.LBB0_1:                                # %sw.bb
	movb	$1, -1(%rbp)
	jmp	.LBB0_3
.LBB0_2:                                # %sw.default
	movb	$0, -1(%rbp)
.LBB0_3:                                # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	c_isalnum, .Lfunc_end0-c_isalnum
	.cfi_endproc

	.globl	c_isalpha
	.align	16, 0x90
	.type	c_isalpha,@function
c_isalpha:                              # @c_isalpha
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
	movl	%edi, -8(%rbp)
	movl	%edi, %eax
	addl	$-65, %eax
	subl	$26, %eax
	movl	%edi, -12(%rbp)         # 4-byte Spill
	movl	%eax, -16(%rbp)         # 4-byte Spill
	jb	.LBB1_1
	jmp	.LBB1_4
.LBB1_4:                                # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	addl	$-97, %eax
	subl	$25, %eax
	movl	%eax, -20(%rbp)         # 4-byte Spill
	ja	.LBB1_2
	jmp	.LBB1_1
.LBB1_1:                                # %sw.bb
	movb	$1, -1(%rbp)
	jmp	.LBB1_3
.LBB1_2:                                # %sw.default
	movb	$0, -1(%rbp)
.LBB1_3:                                # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	c_isalpha, .Lfunc_end1-c_isalpha
	.cfi_endproc

	.globl	c_isascii
	.align	16, 0x90
	.type	c_isascii,@function
c_isascii:                              # @c_isascii
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
	subl	$127, %edi
	movl	%edi, -12(%rbp)         # 4-byte Spill
	ja	.LBB2_2
	jmp	.LBB2_1
.LBB2_1:                                # %sw.bb
	movb	$1, -1(%rbp)
	jmp	.LBB2_3
.LBB2_2:                                # %sw.default
	movb	$0, -1(%rbp)
.LBB2_3:                                # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	c_isascii, .Lfunc_end2-c_isascii
	.cfi_endproc

	.globl	c_isblank
	.align	16, 0x90
	.type	c_isblank,@function
c_isblank:                              # @c_isblank
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	movb	$1, %al
	movl	%edi, -4(%rbp)
	cmpl	$32, -4(%rbp)
	movb	%al, -5(%rbp)           # 1-byte Spill
	je	.LBB3_2
# BB#1:                                 # %lor.rhs
	cmpl	$9, -4(%rbp)
	sete	%al
	movb	%al, -5(%rbp)           # 1-byte Spill
.LBB3_2:                                # %lor.end
	movb	-5(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	c_isblank, .Lfunc_end3-c_isblank
	.cfi_endproc

	.globl	c_iscntrl
	.align	16, 0x90
	.type	c_iscntrl,@function
c_iscntrl:                              # @c_iscntrl
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
	movl	%edi, %eax
	subl	$32, %edi
	movl	%eax, -12(%rbp)         # 4-byte Spill
	movl	%edi, -16(%rbp)         # 4-byte Spill
	jb	.LBB4_1
	jmp	.LBB4_4
.LBB4_4:                                # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$127, %eax
	movl	%eax, -20(%rbp)         # 4-byte Spill
	jne	.LBB4_2
	jmp	.LBB4_1
.LBB4_1:                                # %sw.bb
	movb	$1, -1(%rbp)
	jmp	.LBB4_3
.LBB4_2:                                # %sw.default
	movb	$0, -1(%rbp)
.LBB4_3:                                # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end4:
	.size	c_iscntrl, .Lfunc_end4-c_iscntrl
	.cfi_endproc

	.globl	c_isdigit
	.align	16, 0x90
	.type	c_isdigit,@function
c_isdigit:                              # @c_isdigit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
	addl	$-48, %edi
	subl	$9, %edi
	movl	%edi, -12(%rbp)         # 4-byte Spill
	ja	.LBB5_2
	jmp	.LBB5_1
.LBB5_1:                                # %sw.bb
	movb	$1, -1(%rbp)
	jmp	.LBB5_3
.LBB5_2:                                # %sw.default
	movb	$0, -1(%rbp)
.LBB5_3:                                # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end5:
	.size	c_isdigit, .Lfunc_end5-c_isdigit
	.cfi_endproc

	.globl	c_isgraph
	.align	16, 0x90
	.type	c_isgraph,@function
c_isgraph:                              # @c_isgraph
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
	addl	$-33, %edi
	subl	$93, %edi
	movl	%edi, -12(%rbp)         # 4-byte Spill
	ja	.LBB6_2
	jmp	.LBB6_1
.LBB6_1:                                # %sw.bb
	movb	$1, -1(%rbp)
	jmp	.LBB6_3
.LBB6_2:                                # %sw.default
	movb	$0, -1(%rbp)
.LBB6_3:                                # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end6:
	.size	c_isgraph, .Lfunc_end6-c_isgraph
	.cfi_endproc

	.globl	c_islower
	.align	16, 0x90
	.type	c_islower,@function
c_islower:                              # @c_islower
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
	addl	$-97, %edi
	subl	$25, %edi
	movl	%edi, -12(%rbp)         # 4-byte Spill
	ja	.LBB7_2
	jmp	.LBB7_1
.LBB7_1:                                # %sw.bb
	movb	$1, -1(%rbp)
	jmp	.LBB7_3
.LBB7_2:                                # %sw.default
	movb	$0, -1(%rbp)
.LBB7_3:                                # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end7:
	.size	c_islower, .Lfunc_end7-c_islower
	.cfi_endproc

	.globl	c_isprint
	.align	16, 0x90
	.type	c_isprint,@function
c_isprint:                              # @c_isprint
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
	addl	$-32, %edi
	subl	$94, %edi
	movl	%edi, -12(%rbp)         # 4-byte Spill
	ja	.LBB8_2
	jmp	.LBB8_1
.LBB8_1:                                # %sw.bb
	movb	$1, -1(%rbp)
	jmp	.LBB8_3
.LBB8_2:                                # %sw.default
	movb	$0, -1(%rbp)
.LBB8_3:                                # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end8:
	.size	c_isprint, .Lfunc_end8-c_isprint
	.cfi_endproc

	.globl	c_ispunct
	.align	16, 0x90
	.type	c_ispunct,@function
c_ispunct:                              # @c_ispunct
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
	movl	%edi, %eax
	addl	$-33, %eax
	subl	$15, %eax
	movl	%edi, -12(%rbp)         # 4-byte Spill
	movl	%eax, -16(%rbp)         # 4-byte Spill
	jb	.LBB9_1
	jmp	.LBB9_4
.LBB9_4:                                # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	addl	$-58, %eax
	subl	$7, %eax
	movl	%eax, -20(%rbp)         # 4-byte Spill
	jb	.LBB9_1
	jmp	.LBB9_5
.LBB9_5:                                # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	addl	$-91, %eax
	subl	$6, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	jb	.LBB9_1
	jmp	.LBB9_6
.LBB9_6:                                # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	addl	$-123, %eax
	subl	$3, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	ja	.LBB9_2
	jmp	.LBB9_1
.LBB9_1:                                # %sw.bb
	movb	$1, -1(%rbp)
	jmp	.LBB9_3
.LBB9_2:                                # %sw.default
	movb	$0, -1(%rbp)
.LBB9_3:                                # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end9:
	.size	c_ispunct, .Lfunc_end9-c_ispunct
	.cfi_endproc

	.globl	c_isspace
	.align	16, 0x90
	.type	c_isspace,@function
c_isspace:                              # @c_isspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
	movl	%edi, %eax
	addl	$-9, %eax
	subl	$5, %eax
	movl	%edi, -12(%rbp)         # 4-byte Spill
	movl	%eax, -16(%rbp)         # 4-byte Spill
	jb	.LBB10_1
	jmp	.LBB10_4
.LBB10_4:                               # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$32, %eax
	movl	%eax, -20(%rbp)         # 4-byte Spill
	jne	.LBB10_2
	jmp	.LBB10_1
.LBB10_1:                               # %sw.bb
	movb	$1, -1(%rbp)
	jmp	.LBB10_3
.LBB10_2:                               # %sw.default
	movb	$0, -1(%rbp)
.LBB10_3:                               # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end10:
	.size	c_isspace, .Lfunc_end10-c_isspace
	.cfi_endproc

	.globl	c_isupper
	.align	16, 0x90
	.type	c_isupper,@function
c_isupper:                              # @c_isupper
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
	addl	$-65, %edi
	subl	$25, %edi
	movl	%edi, -12(%rbp)         # 4-byte Spill
	ja	.LBB11_2
	jmp	.LBB11_1
.LBB11_1:                               # %sw.bb
	movb	$1, -1(%rbp)
	jmp	.LBB11_3
.LBB11_2:                               # %sw.default
	movb	$0, -1(%rbp)
.LBB11_3:                               # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end11:
	.size	c_isupper, .Lfunc_end11-c_isupper
	.cfi_endproc

	.globl	c_isxdigit
	.align	16, 0x90
	.type	c_isxdigit,@function
c_isxdigit:                             # @c_isxdigit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
	movl	%edi, %eax
	addl	$-48, %eax
	subl	$10, %eax
	movl	%edi, -12(%rbp)         # 4-byte Spill
	movl	%eax, -16(%rbp)         # 4-byte Spill
	jb	.LBB12_1
	jmp	.LBB12_4
.LBB12_4:                               # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	addl	$-65, %eax
	subl	$6, %eax
	movl	%eax, -20(%rbp)         # 4-byte Spill
	jb	.LBB12_1
	jmp	.LBB12_5
.LBB12_5:                               # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	addl	$-97, %eax
	subl	$5, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	ja	.LBB12_2
	jmp	.LBB12_1
.LBB12_1:                               # %sw.bb
	movb	$1, -1(%rbp)
	jmp	.LBB12_3
.LBB12_2:                               # %sw.default
	movb	$0, -1(%rbp)
.LBB12_3:                               # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end12:
	.size	c_isxdigit, .Lfunc_end12-c_isxdigit
	.cfi_endproc

	.globl	c_tolower
	.align	16, 0x90
	.type	c_tolower,@function
c_tolower:                              # @c_tolower
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
	addl	$-65, %edi
	subl	$25, %edi
	movl	%edi, -12(%rbp)         # 4-byte Spill
	ja	.LBB13_2
	jmp	.LBB13_1
.LBB13_1:                               # %sw.bb
	movl	-8(%rbp), %eax
	subl	$65, %eax
	addl	$97, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB13_3
.LBB13_2:                               # %sw.default
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB13_3:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end13:
	.size	c_tolower, .Lfunc_end13-c_tolower
	.cfi_endproc

	.globl	c_toupper
	.align	16, 0x90
	.type	c_toupper,@function
c_toupper:                              # @c_toupper
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
	addl	$-97, %edi
	subl	$25, %edi
	movl	%edi, -12(%rbp)         # 4-byte Spill
	ja	.LBB14_2
	jmp	.LBB14_1
.LBB14_1:                               # %sw.bb
	movl	-8(%rbp), %eax
	subl	$97, %eax
	addl	$65, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB14_3
.LBB14_2:                               # %sw.default
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB14_3:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end14:
	.size	c_toupper, .Lfunc_end14-c_toupper
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
