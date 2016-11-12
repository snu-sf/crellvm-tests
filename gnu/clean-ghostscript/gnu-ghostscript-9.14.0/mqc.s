	.text
	.file	"mqc.bc"
	.globl	opj_mqc_create
	.align	16, 0x90
	.type	opj_mqc_create,@function
opj_mqc_create:                         # @opj_mqc_create
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$200, %edi
	jmp	malloc                  # TAILCALL
.Lfunc_end0:
	.size	opj_mqc_create, .Lfunc_end0-opj_mqc_create
	.cfi_endproc

	.globl	opj_mqc_destroy
	.align	16, 0x90
	.type	opj_mqc_destroy,@function
opj_mqc_destroy:                        # @opj_mqc_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rdi, %rdi
	je	.LBB1_1
# BB#2:                                 # %if.then
	jmp	free                    # TAILCALL
.LBB1_1:                                # %if.end
	retq
.Lfunc_end1:
	.size	opj_mqc_destroy, .Lfunc_end1-opj_mqc_destroy
	.cfi_endproc

	.globl	opj_mqc_numbytes
	.align	16, 0x90
	.type	opj_mqc_numbytes,@function
opj_mqc_numbytes:                       # @opj_mqc_numbytes
	.cfi_startproc
# BB#0:                                 # %entry
	movl	16(%rdi), %eax
	subl	24(%rdi), %eax
	retq
.Lfunc_end2:
	.size	opj_mqc_numbytes, .Lfunc_end2-opj_mqc_numbytes
	.cfi_endproc

	.globl	opj_mqc_init_enc
	.align	16, 0x90
	.type	opj_mqc_init_enc,@function
opj_mqc_init_enc:                       # @opj_mqc_init_enc
	.cfi_startproc
# BB#0:                                 # %entry
	leaq	40(%rdi), %rax
	movq	%rax, 192(%rdi)
	movl	$32768, 4(%rdi)         # imm = 0x8000
	movl	$0, (%rdi)
	leaq	-1(%rsi), %rax
	movq	%rax, 16(%rdi)
	movl	$12, 8(%rdi)
	movzbl	-1(%rsi), %ecx
	movl	$13, %eax
	cmpl	$255, %ecx
	je	.LBB3_2
# BB#1:                                 # %select.mid
	movl	$12, %eax
.LBB3_2:                                # %select.end
	movl	%eax, 8(%rdi)
	movq	%rsi, 24(%rdi)
	retq
.Lfunc_end3:
	.size	opj_mqc_init_enc, .Lfunc_end3-opj_mqc_init_enc
	.cfi_endproc

	.globl	opj_mqc_encode
	.align	16, 0x90
	.type	opj_mqc_encode,@function
opj_mqc_encode:                         # @opj_mqc_encode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	192(%rbx), %r8
	movq	(%r8), %rdi
	movl	(%rdi), %eax
	movl	4(%rdi), %edx
	movl	4(%rbx), %ecx
	subl	%eax, %ecx
	movl	%ecx, 4(%rbx)
	cmpl	%esi, %edx
	jne	.LBB4_10
# BB#1:                                 # %if.then
	testb	$-128, %ch
	jne	.LBB4_9
# BB#2:                                 # %if.then.i
	cmpl	%eax, %ecx
	jae	.LBB4_4
# BB#3:                                 # %if.then.6.i
	movl	%eax, 4(%rbx)
	jmp	.LBB4_5
.LBB4_10:                               # %if.else
	cmpl	%eax, %ecx
	jae	.LBB4_12
# BB#11:                                # %if.then.i.9
	addl	%eax, (%rbx)
	jmp	.LBB4_13
.LBB4_9:                                # %if.else.14.i
	addl	%eax, (%rbx)
	popq	%rbx
	retq
.LBB4_12:                               # %if.else.i.11
	movl	%eax, 4(%rbx)
	movl	%eax, %ecx
.LBB4_13:                               # %if.end.i.15
	movq	16(%rdi), %rax
	movq	%rax, (%r8)
	.align	16, 0x90
.LBB4_14:                               # %do.body.i.i.20
                                        # =>This Inner Loop Header: Depth=1
	addl	%ecx, %ecx
	movl	%ecx, 4(%rbx)
	shll	(%rbx)
	decl	8(%rbx)
	jne	.LBB4_16
# BB#15:                                # %if.then.i.i.22
                                        #   in Loop: Header=BB4_14 Depth=1
	movq	%rbx, %rdi
	callq	opj_mqc_byteout
	movl	4(%rbx), %ecx
.LBB4_16:                               # %do.cond.i.i.25
                                        #   in Loop: Header=BB4_14 Depth=1
	testb	$-128, %ch
	je	.LBB4_14
	jmp	.LBB4_17
.LBB4_4:                                # %if.else.i
	addl	%eax, (%rbx)
	movl	%ecx, %eax
.LBB4_5:                                # %if.end.i
	movq	8(%rdi), %rcx
	movq	%rcx, (%r8)
	.align	16, 0x90
.LBB4_6:                                # %do.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	addl	%eax, %eax
	movl	%eax, 4(%rbx)
	shll	(%rbx)
	decl	8(%rbx)
	jne	.LBB4_8
# BB#7:                                 # %if.then.i.i
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	%rbx, %rdi
	callq	opj_mqc_byteout
	movl	4(%rbx), %eax
.LBB4_8:                                # %do.cond.i.i
                                        #   in Loop: Header=BB4_6 Depth=1
	testb	$-128, %ah
	je	.LBB4_6
.LBB4_17:                               # %if.end
	popq	%rbx
	retq
.Lfunc_end4:
	.size	opj_mqc_encode, .Lfunc_end4-opj_mqc_encode
	.cfi_endproc

	.globl	opj_mqc_flush
	.align	16, 0x90
	.type	opj_mqc_flush,@function
opj_mqc_flush:                          # @opj_mqc_flush
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 16
.Ltmp3:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	(%rbx), %eax
	movl	4(%rbx), %ecx
	addl	%eax, %ecx
	orl	$65535, %eax            # imm = 0xFFFF
	leal	-32768(%rax), %edx
	cmpl	%ecx, %eax
	cmovbl	%eax, %edx
	movb	8(%rbx), %cl
	shll	%cl, %edx
	movl	%edx, (%rbx)
	callq	opj_mqc_byteout
	movb	8(%rbx), %cl
	shll	%cl, (%rbx)
	movq	%rbx, %rdi
	callq	opj_mqc_byteout
	movq	16(%rbx), %rax
	movzbl	(%rax), %ecx
	cmpl	$255, %ecx
	je	.LBB5_2
# BB#1:                                 # %if.then
	incq	%rax
	movq	%rax, 16(%rbx)
.LBB5_2:                                # %if.end
	popq	%rbx
	retq
.Lfunc_end5:
	.size	opj_mqc_flush, .Lfunc_end5-opj_mqc_flush
	.cfi_endproc

	.align	16, 0x90
	.type	opj_mqc_byteout,@function
opj_mqc_byteout:                        # @opj_mqc_byteout
	.cfi_startproc
# BB#0:                                 # %entry
	movq	16(%rdi), %rax
	movzbl	(%rax), %ecx
	cmpl	$255, %ecx
	je	.LBB6_1
# BB#3:                                 # %if.else
	movl	(%rdi), %edx
	testl	$134217728, %edx        # imm = 0x8000000
	jne	.LBB6_5
# BB#4:                                 # %if.then.10
	leaq	1(%rax), %rcx
	movq	%rcx, 16(%rdi)
	shrl	$19, %edx
	movb	%dl, 1(%rax)
	jmp	.LBB6_8
.LBB6_1:                                # %if.then
	leaq	1(%rax), %rcx
	movq	%rcx, 16(%rdi)
	movl	(%rdi), %ecx
	jmp	.LBB6_2
.LBB6_5:                                # %if.else.20
	incb	%cl
	movb	%cl, (%rax)
	movq	16(%rdi), %rax
	movzbl	(%rax), %ecx
	cmpl	$255, %ecx
	je	.LBB6_6
# BB#7:                                 # %if.else.38
	leaq	1(%rax), %rcx
	movq	%rcx, 16(%rdi)
	movl	(%rdi), %ecx
	shrl	$19, %ecx
	movb	%cl, 1(%rax)
.LBB6_8:                                # %if.end.49
	andl	$524287, (%rdi)         # imm = 0x7FFFF
	movl	$8, 8(%rdi)
	retq
.LBB6_6:                                # %if.then.26
	movl	$134217727, %ecx        # imm = 0x7FFFFFF
	andl	(%rdi), %ecx
	movl	%ecx, (%rdi)
	leaq	1(%rax), %rdx
	movq	%rdx, 16(%rdi)
.LBB6_2:                                # %if.end.49
	shrl	$20, %ecx
	movb	%cl, 1(%rax)
	andl	$1048575, (%rdi)        # imm = 0xFFFFF
	movl	$7, 8(%rdi)
	retq
.Lfunc_end6:
	.size	opj_mqc_byteout, .Lfunc_end6-opj_mqc_byteout
	.cfi_endproc

	.globl	opj_mqc_bypass_init_enc
	.align	16, 0x90
	.type	opj_mqc_bypass_init_enc,@function
opj_mqc_bypass_init_enc:                # @opj_mqc_bypass_init_enc
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$0, (%rdi)
	movl	$8, 8(%rdi)
	retq
.Lfunc_end7:
	.size	opj_mqc_bypass_init_enc, .Lfunc_end7-opj_mqc_bypass_init_enc
	.cfi_endproc

	.globl	opj_mqc_bypass_enc
	.align	16, 0x90
	.type	opj_mqc_bypass_enc,@function
opj_mqc_bypass_enc:                     # @opj_mqc_bypass_enc
	.cfi_startproc
# BB#0:                                 # %entry
	movl	8(%rdi), %ecx
	decl	%ecx
	movl	%ecx, 8(%rdi)
	shll	%cl, %esi
	addl	(%rdi), %esi
	movl	%esi, (%rdi)
	testl	%ecx, %ecx
	jne	.LBB8_4
# BB#1:                                 # %if.then
	movq	16(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 16(%rdi)
	movb	%sil, 1(%rax)
	movl	$8, 8(%rdi)
	movq	16(%rdi), %rax
	movzbl	(%rax), %ecx
	movl	$7, %eax
	cmpl	$255, %ecx
	je	.LBB8_3
# BB#2:                                 # %select.mid
	movl	$8, %eax
.LBB8_3:                                # %select.end
	movl	%eax, 8(%rdi)
	movl	$0, (%rdi)
.LBB8_4:                                # %if.end.14
	retq
.Lfunc_end8:
	.size	opj_mqc_bypass_enc, .Lfunc_end8-opj_mqc_bypass_enc
	.cfi_endproc

	.globl	opj_mqc_bypass_flush_enc
	.align	16, 0x90
	.type	opj_mqc_bypass_flush_enc,@function
opj_mqc_bypass_flush_enc:               # @opj_mqc_bypass_flush_enc
	.cfi_startproc
# BB#0:                                 # %entry
	movl	8(%rdi), %r10d
	testl	%r10d, %r10d
	je	.LBB9_9
# BB#1:                                 # %while.body.lr.ph
	movl	(%rdi), %edx
	leal	-1(%r10), %r8d
	testb	$3, %r10b
	je	.LBB9_2
# BB#3:                                 # %while.body.prol.preheader
	movl	%r10d, %r9d
	andl	$3, %r9d
	negl	%r9d
	xorl	%esi, %esi
	.align	16, 0x90
.LBB9_4:                                # %while.body.prol
                                        # =>This Inner Loop Header: Depth=1
	decl	%r10d
	movl	%esi, %eax
	movb	%r10b, %cl
	shll	%cl, %eax
	notl	%esi
	addl	%eax, %edx
	andl	$1, %esi
	incl	%r9d
	jne	.LBB9_4
	jmp	.LBB9_5
.LBB9_2:
	xorl	%esi, %esi
.LBB9_5:                                # %while.body.lr.ph.split
	cmpl	$3, %r8d
	jb	.LBB9_8
# BB#6:                                 # %while.body.lr.ph.split.split
	addl	$-2, %r10d
	.align	16, 0x90
.LBB9_7:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	leal	1(%r10), %ecx
	movl	%esi, %r8d
	shll	%cl, %r8d
	addl	%edx, %r8d
	andl	$1, %esi
	movl	%esi, %edx
	xorl	$1, %edx
	movl	%edx, %eax
	movb	%r10b, %cl
	shll	%cl, %eax
	addl	%r8d, %eax
	leal	-1(%r10), %ecx
	movl	%esi, %r8d
	shll	%cl, %r8d
	addl	%eax, %r8d
	leal	-2(%r10), %ecx
	shll	%cl, %edx
	addl	%r8d, %edx
	addl	$-4, %r10d
	cmpl	$-2, %r10d
	jne	.LBB9_7
.LBB9_8:                                # %while.end
	movq	16(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 16(%rdi)
	movb	%dl, 1(%rax)
	movl	$8, 8(%rdi)
	movl	$0, (%rdi)
.LBB9_9:                                # %if.end
	movl	$1, %eax
	retq
.Lfunc_end9:
	.size	opj_mqc_bypass_flush_enc, .Lfunc_end9-opj_mqc_bypass_flush_enc
	.cfi_endproc

	.globl	opj_mqc_reset_enc
	.align	16, 0x90
	.type	opj_mqc_reset_enc,@function
opj_mqc_reset_enc:                      # @opj_mqc_reset_enc
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$mqc_states, %eax
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, 48(%rdi)
	movdqu	%xmm0, 64(%rdi)
	movdqu	%xmm0, 80(%rdi)
	movdqu	%xmm0, 96(%rdi)
	movdqu	%xmm0, 112(%rdi)
	movdqu	%xmm0, 128(%rdi)
	movdqu	%xmm0, 144(%rdi)
	movdqu	%xmm0, 160(%rdi)
	movl	$mqc_states+2208, %eax
	movd	%rax, %xmm0
	movl	$mqc_states+144, %eax
	movd	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, 176(%rdi)
	movq	$mqc_states+192, 40(%rdi)
	retq
.Lfunc_end10:
	.size	opj_mqc_reset_enc, .Lfunc_end10-opj_mqc_reset_enc
	.cfi_endproc

	.globl	opj_mqc_resetstates
	.align	16, 0x90
	.type	opj_mqc_resetstates,@function
opj_mqc_resetstates:                    # @opj_mqc_resetstates
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$mqc_states, %eax
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, 40(%rdi)
	movdqu	%xmm0, 56(%rdi)
	movdqu	%xmm0, 72(%rdi)
	movdqu	%xmm0, 88(%rdi)
	movdqu	%xmm0, 104(%rdi)
	movdqu	%xmm0, 120(%rdi)
	movdqu	%xmm0, 136(%rdi)
	movdqu	%xmm0, 152(%rdi)
	movdqu	%xmm0, 168(%rdi)
	movq	$mqc_states, 184(%rdi)
	retq
.Lfunc_end11:
	.size	opj_mqc_resetstates, .Lfunc_end11-opj_mqc_resetstates
	.cfi_endproc

	.globl	opj_mqc_setstate
	.align	16, 0x90
	.type	opj_mqc_setstate,@function
opj_mqc_setstate:                       # @opj_mqc_setstate
	.cfi_startproc
# BB#0:                                 # %entry
	leal	(%rdx,%rcx,2), %eax
	leaq	(%rax,%rax,2), %rax
	leaq	mqc_states(,%rax,8), %rax
	movl	%esi, %ecx
	movq	%rax, 40(%rdi,%rcx,8)
	retq
.Lfunc_end12:
	.size	opj_mqc_setstate, .Lfunc_end12-opj_mqc_setstate
	.cfi_endproc

	.globl	opj_mqc_restart_enc
	.align	16, 0x90
	.type	opj_mqc_restart_enc,@function
opj_mqc_restart_enc:                    # @opj_mqc_restart_enc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp6:
	.cfi_def_cfa_offset 32
.Ltmp7:
	.cfi_offset %rbx, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	8(%rbx), %ecx
	movl	$12, %ebp
	jmp	.LBB13_2
	.align	16, 0x90
.LBB13_1:                               # %while.body
                                        #   in Loop: Header=BB13_2 Depth=1
	movl	8(%rbx), %ecx
.LBB13_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	subl	%ecx, %ebp
	shll	%cl, (%rbx)
	movq	%rbx, %rdi
	callq	opj_mqc_byteout
	testl	%ebp, %ebp
	jg	.LBB13_1
# BB#3:                                 # %while.end
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end13:
	.size	opj_mqc_restart_enc, .Lfunc_end13-opj_mqc_restart_enc
	.cfi_endproc

	.globl	opj_mqc_restart_init_enc
	.align	16, 0x90
	.type	opj_mqc_restart_init_enc,@function
opj_mqc_restart_init_enc:               # @opj_mqc_restart_init_enc
	.cfi_startproc
# BB#0:                                 # %entry
	leaq	40(%rdi), %rax
	movq	%rax, 192(%rdi)
	movabsq	$140737488355328, %rax  # imm = 0x800000000000
	movq	%rax, (%rdi)
	movl	$12, 8(%rdi)
	movq	16(%rdi), %rax
	leaq	-1(%rax), %rcx
	movq	%rcx, 16(%rdi)
	movzbl	-1(%rax), %eax
	cmpl	$255, %eax
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movl	$13, 8(%rdi)
.LBB14_2:                               # %if.end
	retq
.Lfunc_end14:
	.size	opj_mqc_restart_init_enc, .Lfunc_end14-opj_mqc_restart_init_enc
	.cfi_endproc

	.globl	opj_mqc_erterm_enc
	.align	16, 0x90
	.type	opj_mqc_erterm_enc,@function
opj_mqc_erterm_enc:                     # @opj_mqc_erterm_enc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp11:
	.cfi_def_cfa_offset 32
.Ltmp12:
	.cfi_offset %rbx, -24
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	8(%rbx), %ecx
	movl	$12, %ebp
	jmp	.LBB15_2
	.align	16, 0x90
.LBB15_1:                               # %while.body
                                        #   in Loop: Header=BB15_2 Depth=1
	shll	%cl, (%rbx)
	movl	$0, 8(%rbx)
	movq	%rbx, %rdi
	callq	opj_mqc_byteout
	movl	8(%rbx), %ecx
.LBB15_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	subl	%ecx, %ebp
	testl	%ebp, %ebp
	jg	.LBB15_1
# BB#3:                                 # %while.end
	movq	16(%rbx), %rax
	movzbl	(%rax), %eax
	cmpl	$255, %eax
	je	.LBB15_4
# BB#5:                                 # %if.then
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	opj_mqc_byteout         # TAILCALL
.LBB15_4:                               # %if.end
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end15:
	.size	opj_mqc_erterm_enc, .Lfunc_end15-opj_mqc_erterm_enc
	.cfi_endproc

	.globl	opj_mqc_segmark_enc
	.align	16, 0x90
	.type	opj_mqc_segmark_enc,@function
opj_mqc_segmark_enc:                    # @opj_mqc_segmark_enc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	leaq	184(%rbx), %rax
	movq	%rax, 192(%rbx)
	movl	$1, %esi
	callq	opj_mqc_encode
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	opj_mqc_encode
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	opj_mqc_encode
	xorl	%esi, %esi
	movq	%rbx, %rdi
	popq	%rbx
	jmp	opj_mqc_encode          # TAILCALL
.Lfunc_end16:
	.size	opj_mqc_segmark_enc, .Lfunc_end16-opj_mqc_segmark_enc
	.cfi_endproc

	.globl	opj_mqc_init_dec
	.align	16, 0x90
	.type	opj_mqc_init_dec,@function
opj_mqc_init_dec:                       # @opj_mqc_init_dec
	.cfi_startproc
# BB#0:                                 # %entry
	leaq	40(%rdi), %rax
	movq	%rax, 192(%rdi)
	movq	%rsi, 24(%rdi)
	movl	%edx, %eax
	leaq	(%rax,%rsi), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, 16(%rdi)
	testl	%edx, %edx
	je	.LBB17_9
# BB#1:                                 # %if.then.i
	movzbl	(%rsi), %eax
	shll	$16, %eax
	movl	%eax, (%rdi)
	leaq	1(%rsi), %r8
	movl	$255, %ecx
	cmpl	$1, %edx
	je	.LBB17_3
# BB#2:                                 # %if.then.4.i
	movzbl	(%r8), %ecx
.LBB17_3:                               # %if.end.i
	movzbl	(%rsi), %edx
	cmpl	$255, %edx
	je	.LBB17_4
# BB#8:                                 # %if.else.22.i
	movq	%r8, 16(%rdi)
	shll	$8, %ecx
	orl	%ecx, %eax
	jmp	.LBB17_6
.LBB17_9:                               # %if.else.30.i
	movl	$16776960, (%rdi)       # imm = 0xFFFF00
	movl	$8, 8(%rdi)
	movl	$16776960, %eax         # imm = 0xFFFF00
	jmp	.LBB17_10
.LBB17_4:                               # %if.then.11.i
	cmpl	$144, %ecx
	jb	.LBB17_7
# BB#5:                                 # %if.then.14.i
	orl	$65280, %eax            # imm = 0xFF00
.LBB17_6:                               # %opj_mqc_bytein.exit
	movl	%eax, (%rdi)
	movl	$8, 8(%rdi)
.LBB17_10:                              # %opj_mqc_bytein.exit
	movl	$1, %ecx
.LBB17_11:                              # %opj_mqc_bytein.exit
	shll	$7, %eax
	movl	%eax, (%rdi)
	movl	%ecx, 8(%rdi)
	movl	$32768, 4(%rdi)         # imm = 0x8000
	movl	$1, %eax
	retq
.LBB17_7:                               # %if.else.16.i
	movq	%r8, 16(%rdi)
	shll	$9, %ecx
	addl	%ecx, %eax
	movl	%eax, (%rdi)
	movl	$7, 8(%rdi)
	xorl	%ecx, %ecx
	jmp	.LBB17_11
.Lfunc_end17:
	.size	opj_mqc_init_dec, .Lfunc_end17-opj_mqc_init_dec
	.cfi_endproc

	.globl	opj_mqc_decode
	.align	16, 0x90
	.type	opj_mqc_decode,@function
opj_mqc_decode:                         # @opj_mqc_decode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbx, -16
	movq	192(%rdi), %r8
	movq	(%r8), %rsi
	movl	(%rsi), %edx
	movl	4(%rdi), %ebx
	subl	%edx, %ebx
	movl	%ebx, 4(%rdi)
	movl	(%rdi), %ecx
	movl	%ecx, %eax
	shrl	$16, %eax
	cmpl	%edx, %eax
	jae	.LBB18_16
# BB#1:                                 # %if.then
	movl	%edx, 4(%rdi)
	movl	4(%rsi), %eax
	cmpl	%edx, %ebx
	jae	.LBB18_3
# BB#2:                                 # %if.then.i
	movq	8(%rsi), %rsi
	movq	%rsi, (%r8)
	jmp	.LBB18_4
.LBB18_16:                              # %if.else
	movl	%edx, %eax
	shll	$16, %eax
	subl	%eax, %ecx
	movl	%ecx, (%rdi)
	testb	$-128, %bh
	jne	.LBB18_32
# BB#17:                                # %if.then.9
	movl	4(%rsi), %eax
	cmpl	%edx, %ebx
	jae	.LBB18_19
# BB#18:                                # %if.then.i.21
	movl	$1, %edx
	subl	%eax, %edx
	movq	16(%rsi), %rax
	movq	%rax, (%r8)
	movl	%edx, %eax
	jmp	.LBB18_20
.LBB18_3:                               # %if.else.i
	movl	$1, %ebx
	subl	%eax, %ebx
	movq	16(%rsi), %rax
	movq	%rax, (%r8)
	movl	%ebx, %eax
.LBB18_4:                               # %opj_mqc_lpsexchange.exit
	movl	8(%rdi), %esi
	jmp	.LBB18_5
.LBB18_11:                              # %if.else.16.i.i.52
                                        #   in Loop: Header=BB18_5 Depth=1
	movq	%r8, 16(%rdi)
	shll	$9, %r9d
	addl	%r9d, %ecx
	movl	%ecx, (%rdi)
	movl	$7, 8(%rdi)
	movl	$7, %esi
	jmp	.LBB18_15
	.align	16, 0x90
.LBB18_5:                               # %do.body.i.33
                                        # =>This Inner Loop Header: Depth=1
	testl	%esi, %esi
	jne	.LBB18_15
# BB#6:                                 # %if.then.i.37
                                        #   in Loop: Header=BB18_5 Depth=1
	movq	16(%rdi), %rbx
	movq	32(%rdi), %rsi
	cmpq	%rsi, %rbx
	je	.LBB18_13
# BB#7:                                 # %if.then.i.i.40
                                        #   in Loop: Header=BB18_5 Depth=1
	leaq	1(%rbx), %r8
	movl	$255, %r9d
	cmpq	%rsi, %r8
	je	.LBB18_9
# BB#8:                                 # %if.then.4.i.i.42
                                        #   in Loop: Header=BB18_5 Depth=1
	movzbl	(%r8), %r9d
.LBB18_9:                               # %if.end.i.i.45
                                        #   in Loop: Header=BB18_5 Depth=1
	movzbl	(%rbx), %esi
	cmpl	$255, %esi
	je	.LBB18_10
# BB#12:                                # %if.else.22.i.i.55
                                        #   in Loop: Header=BB18_5 Depth=1
	movq	%r8, 16(%rdi)
	shll	$8, %r9d
	addl	%r9d, %ecx
	jmp	.LBB18_14
.LBB18_10:                              # %if.then.11.i.i.47
                                        #   in Loop: Header=BB18_5 Depth=1
	cmpl	$144, %r9d
	jb	.LBB18_11
.LBB18_13:                              # %if.else.30.i.i.57
                                        #   in Loop: Header=BB18_5 Depth=1
	addl	$65280, %ecx            # imm = 0xFF00
.LBB18_14:                              # %if.end.i.62
                                        #   in Loop: Header=BB18_5 Depth=1
	movl	%ecx, (%rdi)
	movl	$8, 8(%rdi)
	movl	$8, %esi
.LBB18_15:                              # %if.end.i.62
                                        #   in Loop: Header=BB18_5 Depth=1
	addl	%edx, %edx
	movl	%edx, 4(%rdi)
	addl	%ecx, %ecx
	movl	%ecx, (%rdi)
	decl	%esi
	movl	%esi, 8(%rdi)
	cmpl	$32768, %edx            # imm = 0x8000
	jb	.LBB18_5
	jmp	.LBB18_33
.LBB18_32:                              # %if.else.11
	movl	4(%rsi), %eax
	jmp	.LBB18_33
.LBB18_19:                              # %if.else.i.23
	movq	8(%rsi), %rdx
	movq	%rdx, (%r8)
.LBB18_20:                              # %opj_mqc_mpsexchange.exit
	movl	8(%rdi), %edx
	jmp	.LBB18_21
.LBB18_27:                              # %if.else.16.i.i
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	%r8, 16(%rdi)
	shll	$9, %r9d
	addl	%r9d, %ecx
	movl	%ecx, (%rdi)
	movl	$7, 8(%rdi)
	movl	$7, %edx
	jmp	.LBB18_31
	.align	16, 0x90
.LBB18_21:                              # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	testl	%edx, %edx
	jne	.LBB18_31
# BB#22:                                # %if.then.i.13
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	16(%rdi), %rsi
	movq	32(%rdi), %rdx
	cmpq	%rdx, %rsi
	je	.LBB18_29
# BB#23:                                # %if.then.i.i
                                        #   in Loop: Header=BB18_21 Depth=1
	leaq	1(%rsi), %r8
	movl	$255, %r9d
	cmpq	%rdx, %r8
	je	.LBB18_25
# BB#24:                                # %if.then.4.i.i
                                        #   in Loop: Header=BB18_21 Depth=1
	movzbl	(%r8), %r9d
.LBB18_25:                              # %if.end.i.i
                                        #   in Loop: Header=BB18_21 Depth=1
	movzbl	(%rsi), %edx
	cmpl	$255, %edx
	je	.LBB18_26
# BB#28:                                # %if.else.22.i.i
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	%r8, 16(%rdi)
	shll	$8, %r9d
	addl	%r9d, %ecx
	jmp	.LBB18_30
.LBB18_26:                              # %if.then.11.i.i
                                        #   in Loop: Header=BB18_21 Depth=1
	cmpl	$144, %r9d
	jb	.LBB18_27
.LBB18_29:                              # %if.else.30.i.i
                                        #   in Loop: Header=BB18_21 Depth=1
	addl	$65280, %ecx            # imm = 0xFF00
.LBB18_30:                              # %if.end.i
                                        #   in Loop: Header=BB18_21 Depth=1
	movl	%ecx, (%rdi)
	movl	$8, 8(%rdi)
	movl	$8, %edx
.LBB18_31:                              # %if.end.i
                                        #   in Loop: Header=BB18_21 Depth=1
	addl	%ebx, %ebx
	movl	%ebx, 4(%rdi)
	addl	%ecx, %ecx
	movl	%ecx, (%rdi)
	decl	%edx
	movl	%edx, 8(%rdi)
	cmpl	$32768, %ebx            # imm = 0x8000
	jb	.LBB18_21
.LBB18_33:                              # %if.end.13
	popq	%rbx
	retq
.Lfunc_end18:
	.size	opj_mqc_decode, .Lfunc_end18-opj_mqc_decode
	.cfi_endproc

	.type	mqc_states,@object      # @mqc_states
	.data
	.align	16
mqc_states:
	.long	22017                   # 0x5601
	.long	0                       # 0x0
	.quad	mqc_states+48
	.quad	mqc_states+72
	.long	22017                   # 0x5601
	.long	1                       # 0x1
	.quad	mqc_states+72
	.quad	mqc_states+48
	.long	13313                   # 0x3401
	.long	0                       # 0x0
	.quad	mqc_states+96
	.quad	mqc_states+288
	.long	13313                   # 0x3401
	.long	1                       # 0x1
	.quad	mqc_states+120
	.quad	mqc_states+312
	.long	6145                    # 0x1801
	.long	0                       # 0x0
	.quad	mqc_states+144
	.quad	mqc_states+432
	.long	6145                    # 0x1801
	.long	1                       # 0x1
	.quad	mqc_states+168
	.quad	mqc_states+456
	.long	2753                    # 0xac1
	.long	0                       # 0x0
	.quad	mqc_states+192
	.quad	mqc_states+576
	.long	2753                    # 0xac1
	.long	1                       # 0x1
	.quad	mqc_states+216
	.quad	mqc_states+600
	.long	1313                    # 0x521
	.long	0                       # 0x0
	.quad	mqc_states+240
	.quad	mqc_states+1392
	.long	1313                    # 0x521
	.long	1                       # 0x1
	.quad	mqc_states+264
	.quad	mqc_states+1416
	.long	545                     # 0x221
	.long	0                       # 0x0
	.quad	mqc_states+1824
	.quad	mqc_states+1584
	.long	545                     # 0x221
	.long	1                       # 0x1
	.quad	mqc_states+1848
	.quad	mqc_states+1608
	.long	22017                   # 0x5601
	.long	0                       # 0x0
	.quad	mqc_states+336
	.quad	mqc_states+312
	.long	22017                   # 0x5601
	.long	1                       # 0x1
	.quad	mqc_states+360
	.quad	mqc_states+288
	.long	21505                   # 0x5401
	.long	0                       # 0x0
	.quad	mqc_states+384
	.quad	mqc_states+672
	.long	21505                   # 0x5401
	.long	1                       # 0x1
	.quad	mqc_states+408
	.quad	mqc_states+696
	.long	18433                   # 0x4801
	.long	0                       # 0x0
	.quad	mqc_states+432
	.quad	mqc_states+672
	.long	18433                   # 0x4801
	.long	1                       # 0x1
	.quad	mqc_states+456
	.quad	mqc_states+696
	.long	14337                   # 0x3801
	.long	0                       # 0x0
	.quad	mqc_states+480
	.quad	mqc_states+672
	.long	14337                   # 0x3801
	.long	1                       # 0x1
	.quad	mqc_states+504
	.quad	mqc_states+696
	.long	12289                   # 0x3001
	.long	0                       # 0x0
	.quad	mqc_states+528
	.quad	mqc_states+816
	.long	12289                   # 0x3001
	.long	1                       # 0x1
	.quad	mqc_states+552
	.quad	mqc_states+840
	.long	9217                    # 0x2401
	.long	0                       # 0x0
	.quad	mqc_states+576
	.quad	mqc_states+864
	.long	9217                    # 0x2401
	.long	1                       # 0x1
	.quad	mqc_states+600
	.quad	mqc_states+888
	.long	7169                    # 0x1c01
	.long	0                       # 0x0
	.quad	mqc_states+624
	.quad	mqc_states+960
	.long	7169                    # 0x1c01
	.long	1                       # 0x1
	.quad	mqc_states+648
	.quad	mqc_states+984
	.long	5633                    # 0x1601
	.long	0                       # 0x0
	.quad	mqc_states+1392
	.quad	mqc_states+1008
	.long	5633                    # 0x1601
	.long	1                       # 0x1
	.quad	mqc_states+1416
	.quad	mqc_states+1032
	.long	22017                   # 0x5601
	.long	0                       # 0x0
	.quad	mqc_states+720
	.quad	mqc_states+696
	.long	22017                   # 0x5601
	.long	1                       # 0x1
	.quad	mqc_states+744
	.quad	mqc_states+672
	.long	21505                   # 0x5401
	.long	0                       # 0x0
	.quad	mqc_states+768
	.quad	mqc_states+672
	.long	21505                   # 0x5401
	.long	1                       # 0x1
	.quad	mqc_states+792
	.quad	mqc_states+696
	.long	20737                   # 0x5101
	.long	0                       # 0x0
	.quad	mqc_states+816
	.quad	mqc_states+720
	.long	20737                   # 0x5101
	.long	1                       # 0x1
	.quad	mqc_states+840
	.quad	mqc_states+744
	.long	18433                   # 0x4801
	.long	0                       # 0x0
	.quad	mqc_states+864
	.quad	mqc_states+768
	.long	18433                   # 0x4801
	.long	1                       # 0x1
	.quad	mqc_states+888
	.quad	mqc_states+792
	.long	14337                   # 0x3801
	.long	0                       # 0x0
	.quad	mqc_states+912
	.quad	mqc_states+816
	.long	14337                   # 0x3801
	.long	1                       # 0x1
	.quad	mqc_states+936
	.quad	mqc_states+840
	.long	13313                   # 0x3401
	.long	0                       # 0x0
	.quad	mqc_states+960
	.quad	mqc_states+864
	.long	13313                   # 0x3401
	.long	1                       # 0x1
	.quad	mqc_states+984
	.quad	mqc_states+888
	.long	12289                   # 0x3001
	.long	0                       # 0x0
	.quad	mqc_states+1008
	.quad	mqc_states+912
	.long	12289                   # 0x3001
	.long	1                       # 0x1
	.quad	mqc_states+1032
	.quad	mqc_states+936
	.long	10241                   # 0x2801
	.long	0                       # 0x0
	.quad	mqc_states+1056
	.quad	mqc_states+912
	.long	10241                   # 0x2801
	.long	1                       # 0x1
	.quad	mqc_states+1080
	.quad	mqc_states+936
	.long	9217                    # 0x2401
	.long	0                       # 0x0
	.quad	mqc_states+1104
	.quad	mqc_states+960
	.long	9217                    # 0x2401
	.long	1                       # 0x1
	.quad	mqc_states+1128
	.quad	mqc_states+984
	.long	8705                    # 0x2201
	.long	0                       # 0x0
	.quad	mqc_states+1152
	.quad	mqc_states+1008
	.long	8705                    # 0x2201
	.long	1                       # 0x1
	.quad	mqc_states+1176
	.quad	mqc_states+1032
	.long	7169                    # 0x1c01
	.long	0                       # 0x0
	.quad	mqc_states+1200
	.quad	mqc_states+1056
	.long	7169                    # 0x1c01
	.long	1                       # 0x1
	.quad	mqc_states+1224
	.quad	mqc_states+1080
	.long	6145                    # 0x1801
	.long	0                       # 0x0
	.quad	mqc_states+1248
	.quad	mqc_states+1104
	.long	6145                    # 0x1801
	.long	1                       # 0x1
	.quad	mqc_states+1272
	.quad	mqc_states+1128
	.long	5633                    # 0x1601
	.long	0                       # 0x0
	.quad	mqc_states+1296
	.quad	mqc_states+1152
	.long	5633                    # 0x1601
	.long	1                       # 0x1
	.quad	mqc_states+1320
	.quad	mqc_states+1176
	.long	5121                    # 0x1401
	.long	0                       # 0x0
	.quad	mqc_states+1344
	.quad	mqc_states+1200
	.long	5121                    # 0x1401
	.long	1                       # 0x1
	.quad	mqc_states+1368
	.quad	mqc_states+1224
	.long	4609                    # 0x1201
	.long	0                       # 0x0
	.quad	mqc_states+1392
	.quad	mqc_states+1248
	.long	4609                    # 0x1201
	.long	1                       # 0x1
	.quad	mqc_states+1416
	.quad	mqc_states+1272
	.long	4353                    # 0x1101
	.long	0                       # 0x0
	.quad	mqc_states+1440
	.quad	mqc_states+1296
	.long	4353                    # 0x1101
	.long	1                       # 0x1
	.quad	mqc_states+1464
	.quad	mqc_states+1320
	.long	2753                    # 0xac1
	.long	0                       # 0x0
	.quad	mqc_states+1488
	.quad	mqc_states+1344
	.long	2753                    # 0xac1
	.long	1                       # 0x1
	.quad	mqc_states+1512
	.quad	mqc_states+1368
	.long	2497                    # 0x9c1
	.long	0                       # 0x0
	.quad	mqc_states+1536
	.quad	mqc_states+1392
	.long	2497                    # 0x9c1
	.long	1                       # 0x1
	.quad	mqc_states+1560
	.quad	mqc_states+1416
	.long	2209                    # 0x8a1
	.long	0                       # 0x0
	.quad	mqc_states+1584
	.quad	mqc_states+1440
	.long	2209                    # 0x8a1
	.long	1                       # 0x1
	.quad	mqc_states+1608
	.quad	mqc_states+1464
	.long	1313                    # 0x521
	.long	0                       # 0x0
	.quad	mqc_states+1632
	.quad	mqc_states+1488
	.long	1313                    # 0x521
	.long	1                       # 0x1
	.quad	mqc_states+1656
	.quad	mqc_states+1512
	.long	1089                    # 0x441
	.long	0                       # 0x0
	.quad	mqc_states+1680
	.quad	mqc_states+1536
	.long	1089                    # 0x441
	.long	1                       # 0x1
	.quad	mqc_states+1704
	.quad	mqc_states+1560
	.long	673                     # 0x2a1
	.long	0                       # 0x0
	.quad	mqc_states+1728
	.quad	mqc_states+1584
	.long	673                     # 0x2a1
	.long	1                       # 0x1
	.quad	mqc_states+1752
	.quad	mqc_states+1608
	.long	545                     # 0x221
	.long	0                       # 0x0
	.quad	mqc_states+1776
	.quad	mqc_states+1632
	.long	545                     # 0x221
	.long	1                       # 0x1
	.quad	mqc_states+1800
	.quad	mqc_states+1656
	.long	321                     # 0x141
	.long	0                       # 0x0
	.quad	mqc_states+1824
	.quad	mqc_states+1680
	.long	321                     # 0x141
	.long	1                       # 0x1
	.quad	mqc_states+1848
	.quad	mqc_states+1704
	.long	273                     # 0x111
	.long	0                       # 0x0
	.quad	mqc_states+1872
	.quad	mqc_states+1728
	.long	273                     # 0x111
	.long	1                       # 0x1
	.quad	mqc_states+1896
	.quad	mqc_states+1752
	.long	133                     # 0x85
	.long	0                       # 0x0
	.quad	mqc_states+1920
	.quad	mqc_states+1776
	.long	133                     # 0x85
	.long	1                       # 0x1
	.quad	mqc_states+1944
	.quad	mqc_states+1800
	.long	73                      # 0x49
	.long	0                       # 0x0
	.quad	mqc_states+1968
	.quad	mqc_states+1824
	.long	73                      # 0x49
	.long	1                       # 0x1
	.quad	mqc_states+1992
	.quad	mqc_states+1848
	.long	37                      # 0x25
	.long	0                       # 0x0
	.quad	mqc_states+2016
	.quad	mqc_states+1872
	.long	37                      # 0x25
	.long	1                       # 0x1
	.quad	mqc_states+2040
	.quad	mqc_states+1896
	.long	21                      # 0x15
	.long	0                       # 0x0
	.quad	mqc_states+2064
	.quad	mqc_states+1920
	.long	21                      # 0x15
	.long	1                       # 0x1
	.quad	mqc_states+2088
	.quad	mqc_states+1944
	.long	9                       # 0x9
	.long	0                       # 0x0
	.quad	mqc_states+2112
	.quad	mqc_states+1968
	.long	9                       # 0x9
	.long	1                       # 0x1
	.quad	mqc_states+2136
	.quad	mqc_states+1992
	.long	5                       # 0x5
	.long	0                       # 0x0
	.quad	mqc_states+2160
	.quad	mqc_states+2016
	.long	5                       # 0x5
	.long	1                       # 0x1
	.quad	mqc_states+2184
	.quad	mqc_states+2040
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	mqc_states+2160
	.quad	mqc_states+2064
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	mqc_states+2184
	.quad	mqc_states+2088
	.long	22017                   # 0x5601
	.long	0                       # 0x0
	.quad	mqc_states+2208
	.quad	mqc_states+2208
	.long	22017                   # 0x5601
	.long	1                       # 0x1
	.quad	mqc_states+2232
	.quad	mqc_states+2232
	.size	mqc_states, 2256


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
