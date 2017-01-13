	.text
	.file	"gsserial.bc"
	.globl	enc_u_size_uint
	.align	16, 0x90
	.type	enc_u_size_uint,@function
enc_u_size_uint:                        # @enc_u_size_uint
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	.align	16, 0x90
.LBB0_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	shrl	$7, %edi
	incl	%eax
	testl	%edi, %edi
	jne	.LBB0_1
# BB#2:                                 # %while.end
	retq
.Lfunc_end0:
	.size	enc_u_size_uint, .Lfunc_end0-enc_u_size_uint
	.cfi_endproc

	.globl	enc_s_size_int
	.align	16, 0x90
	.type	enc_s_size_int,@function
enc_s_size_int:                         # @enc_s_size_int
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%edi, %edi
	jns	.LBB1_3
# BB#1:                                 # %if.then
	movl	$5, %eax
	cmpl	$-2147483648, %edi      # imm = 0xFFFFFFFF80000000
	je	.LBB1_7
# BB#2:                                 # %if.end
	negl	%edi
.LBB1_3:                                # %if.end.3
	addl	%edi, %edi
	movl	$1, %eax
	cmpl	$128, %edi
	jb	.LBB1_7
# BB#4:                                 # %cond.false
	movl	$2, %eax
	cmpl	$16384, %edi            # imm = 0x4000
	jb	.LBB1_7
# BB#5:
	xorl	%eax, %eax
	.align	16, 0x90
.LBB1_6:                                # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	shrl	$7, %edi
	incl	%eax
	testl	%edi, %edi
	jne	.LBB1_6
.LBB1_7:                                # %return
	retq
.Lfunc_end1:
	.size	enc_s_size_int, .Lfunc_end1-enc_s_size_int
	.cfi_endproc

	.globl	enc_u_put_uint
	.align	16, 0x90
	.type	enc_u_put_uint,@function
enc_u_put_uint:                         # @enc_u_put_uint
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edi, %eax
	shrl	$7, %eax
	je	.LBB2_1
	.align	16, 0x90
.LBB2_2:                                # %if.end
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	orl	$128, %edi
	movb	%dil, (%rsi)
	incq	%rsi
	shrl	$7, %eax
	movl	%ecx, %edi
	jne	.LBB2_2
	jmp	.LBB2_3
.LBB2_1:
	movl	%edi, %ecx
.LBB2_3:                                # %for.end
	andb	$127, %cl
	movb	%cl, (%rsi)
	incq	%rsi
	movq	%rsi, %rax
	retq
.Lfunc_end2:
	.size	enc_u_put_uint, .Lfunc_end2-enc_u_put_uint
	.cfi_endproc

	.globl	enc_s_put_int
	.align	16, 0x90
	.type	enc_s_put_int,@function
enc_s_put_int:                          # @enc_s_put_int
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edi, %eax
	negl	%eax
	cmpl	$-2147483648, %edi      # imm = 0xFFFFFFFF80000000
	cmovel	%edi, %eax
	testl	%edi, %edi
	cmovnsl	%edi, %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrl	$25, %edi
	andl	$64, %edi
	orl	%ecx, %edi
	cmpl	$64, %eax
	jb	.LBB3_5
# BB#1:                                 # %if.then.4
	orl	$128, %edi
	movb	%dil, (%rsi)
	incq	%rsi
	movl	%eax, %edx
	shrl	$6, %edx
	shrl	$13, %eax
	je	.LBB3_2
	.align	16, 0x90
.LBB3_3:                                # %if.end.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	orl	$128, %edx
	movb	%dl, (%rsi)
	incq	%rsi
	shrl	$7, %eax
	movl	%ecx, %edx
	jne	.LBB3_3
	jmp	.LBB3_4
.LBB3_5:                                # %if.else.6
	movb	%dil, (%rsi)
	jmp	.LBB3_6
.LBB3_2:
	movl	%edx, %ecx
.LBB3_4:                                # %enc_u_put_uint.exit
	andb	$127, %cl
	movb	%cl, (%rsi)
.LBB3_6:                                # %cleanup
	incq	%rsi
	movq	%rsi, %rax
	retq
.Lfunc_end3:
	.size	enc_s_put_int, .Lfunc_end3-enc_s_put_int
	.cfi_endproc

	.globl	enc_u_get_uint
	.align	16, 0x90
	.type	enc_u_get_uint,@function
enc_u_get_uint:                         # @enc_u_get_uint
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	(%rsi), %eax
	incq	%rsi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.LBB4_2
	.align	16, 0x90
.LBB4_1:                                # %while.body
                                        #   in Loop: Header=BB4_2 Depth=1
	andl	$127, %eax
	shll	%cl, %eax
	orl	%eax, %edx
	addl	$7, %ecx
	movzbl	(%rsi), %eax
	incq	%rsi
.LBB4_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	testb	$-128, %al
	jne	.LBB4_1
# BB#3:                                 # %while.end
	shll	%cl, %eax
	orl	%edx, %eax
	movl	%eax, (%rdi)
	movq	%rsi, %rax
	retq
.Lfunc_end4:
	.size	enc_u_get_uint, .Lfunc_end4-enc_u_get_uint
	.cfi_endproc

	.globl	enc_u_get_uint_nc
	.align	16, 0x90
	.type	enc_u_get_uint_nc,@function
enc_u_get_uint_nc:                      # @enc_u_get_uint_nc
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	(%rsi), %eax
	incq	%rsi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.LBB5_2
	.align	16, 0x90
.LBB5_1:                                # %while.body.i
                                        #   in Loop: Header=BB5_2 Depth=1
	andl	$127, %eax
	shll	%cl, %eax
	orl	%eax, %edx
	addl	$7, %ecx
	movzbl	(%rsi), %eax
	incq	%rsi
.LBB5_2:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	testb	$-128, %al
	jne	.LBB5_1
# BB#3:                                 # %enc_u_get_uint.exit
	shll	%cl, %eax
	orl	%edx, %eax
	movl	%eax, (%rdi)
	movq	%rsi, %rax
	retq
.Lfunc_end5:
	.size	enc_u_get_uint_nc, .Lfunc_end5-enc_u_get_uint_nc
	.cfi_endproc

	.globl	enc_s_get_int
	.align	16, 0x90
	.type	enc_s_get_int,@function
enc_s_get_int:                          # @enc_s_get_int
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	(%rsi), %eax
	movl	%eax, %r8d
	andl	$64, %r8d
	movl	%eax, %r9d
	andl	$191, %r9d
	testb	$-128, %al
	jne	.LBB6_2
# BB#1:
	incq	%rsi
	jmp	.LBB6_6
.LBB6_2:                                # %if.then.5
	xorl	$128, %r9d
	movzbl	1(%rsi), %eax
	addq	$2, %rsi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.LBB6_4
	.align	16, 0x90
.LBB6_3:                                # %while.body.i
                                        #   in Loop: Header=BB6_4 Depth=1
	andl	$127, %eax
	shll	%cl, %eax
	orl	%eax, %edx
	addl	$7, %ecx
	movzbl	(%rsi), %eax
	incq	%rsi
.LBB6_4:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	testb	$-128, %al
	jne	.LBB6_3
# BB#5:                                 # %enc_u_get_uint.exit
	shll	%cl, %eax
	orl	%edx, %eax
	shll	$6, %eax
	orl	%eax, %r9d
.LBB6_6:                                # %if.end.7
	movl	%r9d, %eax
	negl	%eax
	testl	%r9d, %r9d
	cmovsl	%r9d, %eax
	testl	%r8d, %r8d
	cmovel	%r9d, %eax
	movl	%eax, (%rdi)
	movq	%rsi, %rax
	retq
.Lfunc_end6:
	.size	enc_s_get_int, .Lfunc_end6-enc_s_get_int
	.cfi_endproc

	.globl	enc_s_get_int_nc
	.align	16, 0x90
	.type	enc_s_get_int_nc,@function
enc_s_get_int_nc:                       # @enc_s_get_int_nc
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	(%rsi), %eax
	movl	%eax, %r8d
	andl	$64, %r8d
	movl	%eax, %r9d
	andl	$191, %r9d
	testb	$-128, %al
	jne	.LBB7_2
# BB#1:
	incq	%rsi
	jmp	.LBB7_6
.LBB7_2:                                # %if.then.5.i
	xorl	$128, %r9d
	movzbl	1(%rsi), %eax
	addq	$2, %rsi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.LBB7_4
	.align	16, 0x90
.LBB7_3:                                # %while.body.i.i
                                        #   in Loop: Header=BB7_4 Depth=1
	andl	$127, %eax
	shll	%cl, %eax
	orl	%eax, %edx
	addl	$7, %ecx
	movzbl	(%rsi), %eax
	incq	%rsi
.LBB7_4:                                # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	testb	$-128, %al
	jne	.LBB7_3
# BB#5:                                 # %enc_u_get_uint.exit.i
	shll	%cl, %eax
	orl	%edx, %eax
	shll	$6, %eax
	orl	%eax, %r9d
.LBB7_6:                                # %enc_s_get_int.exit
	movl	%r9d, %eax
	negl	%eax
	testl	%r9d, %r9d
	cmovsl	%r9d, %eax
	testl	%r8d, %r8d
	cmovel	%r9d, %eax
	movl	%eax, (%rdi)
	movq	%rsi, %rax
	retq
.Lfunc_end7:
	.size	enc_s_get_int_nc, .Lfunc_end7-enc_s_get_int_nc
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
