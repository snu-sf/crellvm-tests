	.text
	.file	"bio.bc"
	.globl	opj_bio_create
	.align	16, 0x90
	.type	opj_bio_create,@function
opj_bio_create:                         # @opj_bio_create
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$32, %edi
	jmp	malloc                  # TAILCALL
.Lfunc_end0:
	.size	opj_bio_create, .Lfunc_end0-opj_bio_create
	.cfi_endproc

	.globl	opj_bio_destroy
	.align	16, 0x90
	.type	opj_bio_destroy,@function
opj_bio_destroy:                        # @opj_bio_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rdi, %rdi
	je	.LBB1_1
# BB#2:                                 # %if.then
	jmp	free                    # TAILCALL
.LBB1_1:                                # %if.end
	retq
.Lfunc_end1:
	.size	opj_bio_destroy, .Lfunc_end1-opj_bio_destroy
	.cfi_endproc

	.globl	opj_bio_numbytes
	.align	16, 0x90
	.type	opj_bio_numbytes,@function
opj_bio_numbytes:                       # @opj_bio_numbytes
	.cfi_startproc
# BB#0:                                 # %entry
	movq	16(%rdi), %rax
	subq	(%rdi), %rax
	retq
.Lfunc_end2:
	.size	opj_bio_numbytes, .Lfunc_end2-opj_bio_numbytes
	.cfi_endproc

	.globl	opj_bio_init_enc
	.align	16, 0x90
	.type	opj_bio_init_enc,@function
opj_bio_init_enc:                       # @opj_bio_init_enc
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, (%rdi)
	movl	%edx, %eax
	leaq	(%rax,%rsi), %rax
	movq	%rax, 8(%rdi)
	movq	%rsi, 16(%rdi)
	movabsq	$34359738368, %rax      # imm = 0x800000000
	movq	%rax, 24(%rdi)
	retq
.Lfunc_end3:
	.size	opj_bio_init_enc, .Lfunc_end3-opj_bio_init_enc
	.cfi_endproc

	.globl	opj_bio_init_dec
	.align	16, 0x90
	.type	opj_bio_init_dec,@function
opj_bio_init_dec:                       # @opj_bio_init_dec
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, (%rdi)
	movl	%edx, %eax
	leaq	(%rax,%rsi), %rax
	movq	%rax, 8(%rdi)
	movq	%rsi, 16(%rdi)
	movq	$0, 24(%rdi)
	retq
.Lfunc_end4:
	.size	opj_bio_init_dec, .Lfunc_end4-opj_bio_init_dec
	.cfi_endproc

	.globl	opj_bio_write
	.align	16, 0x90
	.type	opj_bio_write,@function
opj_bio_write:                          # @opj_bio_write
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edx, %r8d
	decl	%r8d
	js	.LBB5_6
# BB#1:                                 # %for.body.lr.ph
	movl	28(%rdi), %edx
	.align	16, 0x90
.LBB5_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%esi, %eax
	movb	%r8b, %cl
	shrl	%cl, %eax
	andl	$1, %eax
	testl	%edx, %edx
	jne	.LBB5_5
# BB#3:                                 # %if.then.i
                                        #   in Loop: Header=BB5_2 Depth=1
	movl	24(%rdi), %r9d
	movl	%r9d, %ecx
	shll	$8, %ecx
	movzwl	%cx, %ecx
	movl	%ecx, 24(%rdi)
	cmpl	$65280, %ecx            # imm = 0xFF00
	setne	%cl
	movzbl	%cl, %edx
	addl	$7, %edx
	movl	%edx, 28(%rdi)
	movq	16(%rdi), %rcx
	cmpq	8(%rdi), %rcx
	jae	.LBB5_5
# BB#4:                                 # %if.end.i.i
                                        #   in Loop: Header=BB5_2 Depth=1
	leaq	1(%rcx), %rdx
	movq	%rdx, 16(%rdi)
	movb	%r9b, (%rcx)
	movl	28(%rdi), %edx
	.align	16, 0x90
.LBB5_5:                                # %opj_bio_putbit.exit
                                        #   in Loop: Header=BB5_2 Depth=1
	decl	%edx
	movl	%edx, 28(%rdi)
	movb	%dl, %cl
	shll	%cl, %eax
	orl	%eax, 24(%rdi)
	decl	%r8d
	jns	.LBB5_2
.LBB5_6:                                # %for.end
	retq
.Lfunc_end5:
	.size	opj_bio_write, .Lfunc_end5-opj_bio_write
	.cfi_endproc

	.globl	opj_bio_read
	.align	16, 0x90
	.type	opj_bio_read,@function
opj_bio_read:                           # @opj_bio_read
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, %r10d
	xorl	%eax, %eax
	decl	%r10d
	js	.LBB6_6
# BB#1:                                 # %for.body.lr.ph
	movl	24(%rdi), %r8d
	movl	28(%rdi), %esi
	xorl	%eax, %eax
	.align	16, 0x90
.LBB6_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	testl	%esi, %esi
	jne	.LBB6_5
# BB#3:                                 # %if.then.i
                                        #   in Loop: Header=BB6_2 Depth=1
	shll	$8, %r8d
	movzwl	%r8w, %r8d
	movl	%r8d, 24(%rdi)
	cmpl	$65280, %r8d            # imm = 0xFF00
	setne	%cl
	movzbl	%cl, %esi
	addl	$7, %esi
	movl	%esi, 28(%rdi)
	movq	16(%rdi), %r9
	cmpq	8(%rdi), %r9
	jae	.LBB6_5
# BB#4:                                 # %if.end.i.i
                                        #   in Loop: Header=BB6_2 Depth=1
	leaq	1(%r9), %rcx
	movq	%rcx, 16(%rdi)
	movzbl	(%r9), %ecx
	orl	%ecx, %r8d
	movl	%r8d, 24(%rdi)
	.align	16, 0x90
.LBB6_5:                                # %opj_bio_getbit.exit
                                        #   in Loop: Header=BB6_2 Depth=1
	decl	%esi
	movl	%esi, 28(%rdi)
	movl	%r8d, %edx
	movb	%sil, %cl
	shrl	%cl, %edx
	andl	$1, %edx
	movb	%r10b, %cl
	shll	%cl, %edx
	addl	%edx, %eax
	decl	%r10d
	jns	.LBB6_2
.LBB6_6:                                # %for.end
	retq
.Lfunc_end6:
	.size	opj_bio_read, .Lfunc_end6-opj_bio_read
	.cfi_endproc

	.globl	opj_bio_flush
	.align	16, 0x90
	.type	opj_bio_flush,@function
opj_bio_flush:                          # @opj_bio_flush
	.cfi_startproc
# BB#0:                                 # %entry
	movl	24(%rdi), %ecx
	movl	%ecx, %eax
	shll	$8, %eax
	movzwl	%ax, %eax
	movl	%eax, 24(%rdi)
	cmpl	$65280, %eax            # imm = 0xFF00
	setne	%al
	movzbl	%al, %eax
	addl	$7, %eax
	movl	%eax, 28(%rdi)
	movq	16(%rdi), %rdx
	xorl	%eax, %eax
	cmpq	8(%rdi), %rdx
	jae	.LBB7_5
# BB#1:                                 # %if.end
	leaq	1(%rdx), %rsi
	movq	%rsi, 16(%rdi)
	movb	%cl, (%rdx)
	cmpl	$7, 28(%rdi)
	jne	.LBB7_4
# BB#2:                                 # %if.then.2
	movl	24(%rdi), %ecx
	movl	%ecx, %edx
	shll	$8, %edx
	movzwl	%dx, %edx
	movl	%edx, 24(%rdi)
	cmpl	$65280, %edx            # imm = 0xFF00
	setne	%dl
	movzbl	%dl, %edx
	addl	$7, %edx
	movl	%edx, 28(%rdi)
	movq	16(%rdi), %rdx
	cmpq	8(%rdi), %rdx
	jae	.LBB7_5
# BB#3:                                 # %opj_bio_byteout.exit18
	leaq	1(%rdx), %rax
	movq	%rax, 16(%rdi)
	movb	%cl, (%rdx)
.LBB7_4:                                # %return
	movl	$1, %eax
.LBB7_5:                                # %return
	retq
.Lfunc_end7:
	.size	opj_bio_flush, .Lfunc_end7-opj_bio_flush
	.cfi_endproc

	.globl	opj_bio_inalign
	.align	16, 0x90
	.type	opj_bio_inalign,@function
opj_bio_inalign:                        # @opj_bio_inalign
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$0, 28(%rdi)
	movl	24(%rdi), %ecx
	movl	$1, %eax
	movzbl	%cl, %edx
	cmpl	$255, %edx
	jne	.LBB8_3
# BB#1:                                 # %if.then
	shll	$8, %ecx
	movzwl	%cx, %ecx
	movl	%ecx, 24(%rdi)
	cmpl	$65280, %ecx            # imm = 0xFF00
	setne	%al
	movzbl	%al, %eax
	addl	$7, %eax
	movl	%eax, 28(%rdi)
	movq	16(%rdi), %rdx
	xorl	%eax, %eax
	cmpq	8(%rdi), %rdx
	jae	.LBB8_3
# BB#2:                                 # %if.end
	leaq	1(%rdx), %rax
	movq	%rax, 16(%rdi)
	movzbl	(%rdx), %eax
	orl	%ecx, %eax
	movl	%eax, 24(%rdi)
	movl	$0, 28(%rdi)
	movl	$1, %eax
.LBB8_3:                                # %return
	retq
.Lfunc_end8:
	.size	opj_bio_inalign, .Lfunc_end8-opj_bio_inalign
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
