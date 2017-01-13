	.text
	.file	"image.bc"
	.globl	opj_image_create0
	.align	16, 0x90
	.type	opj_image_create0,@function
opj_image_create0:                      # @opj_image_create0
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %edi
	movl	$48, %esi
	jmp	calloc                  # TAILCALL
.Lfunc_end0:
	.size	opj_image_create0, .Lfunc_end0-opj_image_create0
	.cfi_endproc

	.globl	opj_image_create
	.align	16, 0x90
	.type	opj_image_create,@function
opj_image_create:                       # @opj_image_create
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp4:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp6:
	.cfi_def_cfa_offset 64
.Ltmp7:
	.cfi_offset %rbx, -56
.Ltmp8:
	.cfi_offset %r12, -48
.Ltmp9:
	.cfi_offset %r13, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
.Ltmp12:
	.cfi_offset %rbp, -16
	movl	%edx, %ebx
	movq	%rsi, %r15
	movl	%edi, %ebp
	movl	$1, %edi
	movl	$48, %esi
	callq	calloc
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB1_8
# BB#1:                                 # %if.then
	movl	%ebx, 20(%r14)
	movl	%ebp, 16(%r14)
	movl	%ebp, %r13d
	movq	%r13, %rdi
	shlq	$6, %rdi
	callq	malloc
	movq	%rax, %r12
	movq	%r12, 24(%r14)
	testq	%r12, %r12
	je	.LBB1_7
# BB#2:                                 # %for.cond.preheader
	testl	%ebp, %ebp
	je	.LBB1_8
# BB#3:                                 # %for.body.preheader
	addq	$32, %r15
	xorl	%ebp, %ebp
	movl	$48, %ebx
	jmp	.LBB1_6
	.align	16, 0x90
.LBB1_5:                                # %for.cond.for.body_crit_edge
                                        #   in Loop: Header=BB1_6 Depth=1
	addq	$36, %r15
	addq	$64, %rbx
	movq	24(%r14), %r12
.LBB1_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-32(%r15), %xmm0
	movdqu	%xmm0, -48(%r12,%rbx)
	movups	-16(%r15), %xmm1
	movups	%xmm1, -32(%r12,%rbx)
	movl	(%r15), %eax
	movl	%eax, -16(%r12,%rbx)
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	movd	%xmm1, %eax
	pshufd	$231, %xmm0, %xmm0      # xmm0 = xmm0[3,1,2,3]
	movd	%xmm0, %edi
	imull	%eax, %edi
	movl	$4, %esi
	callq	calloc
	movq	%rax, (%r12,%rbx)
	testq	%rax, %rax
	je	.LBB1_7
# BB#4:                                 # %for.cond
                                        #   in Loop: Header=BB1_6 Depth=1
	incq	%rbp
	cmpq	%r13, %rbp
	jb	.LBB1_5
	jmp	.LBB1_8
.LBB1_7:                                # %if.then.64
	movq	stderr(%rip), %rdi
	movl	$.L.str, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	%r14, %rdi
	callq	opj_image_destroy
	xorl	%r14d, %r14d
.LBB1_8:                                # %cleanup.68
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	opj_image_create, .Lfunc_end1-opj_image_create
	.cfi_endproc

	.globl	opj_image_destroy
	.align	16, 0x90
	.type	opj_image_destroy,@function
opj_image_destroy:                      # @opj_image_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp15:
	.cfi_def_cfa_offset 32
.Ltmp16:
	.cfi_offset %rbx, -24
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB2_13
# BB#1:                                 # %if.then
	movq	24(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB2_10
# BB#2:                                 # %for.cond.preheader
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.LBB2_9
# BB#3:
	xorl	%ebp, %ebp
	jmp	.LBB2_4
	.align	16, 0x90
.LBB2_7:                                # %if.end.for.body_crit_edge
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	24(%rbx), %rdi
.LBB2_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %ecx
	shlq	$6, %rcx
	movq	48(%rdi,%rcx), %rdi
	testq	%rdi, %rdi
	je	.LBB2_6
# BB#5:                                 # %if.then.5
                                        #   in Loop: Header=BB2_4 Depth=1
	callq	free
	movl	16(%rbx), %eax
.LBB2_6:                                # %if.end
                                        #   in Loop: Header=BB2_4 Depth=1
	incl	%ebp
	cmpl	%eax, %ebp
	jb	.LBB2_7
# BB#8:                                 # %for.cond.for.end_crit_edge
	movq	24(%rbx), %rdi
.LBB2_9:                                # %for.end
	callq	free
.LBB2_10:                               # %if.end.8
	movq	32(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB2_12
# BB#11:                                # %if.then.10
	callq	free
.LBB2_12:                               # %if.end.12
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	free                    # TAILCALL
.LBB2_13:                               # %if.end.13
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	opj_image_destroy, .Lfunc_end2-opj_image_destroy
	.cfi_endproc

	.globl	opj_image_comp_header_update
	.align	16, 0x90
	.type	opj_image_comp_header_update,@function
opj_image_comp_header_update:           # @opj_image_comp_header_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp20:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp21:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 48
.Ltmp23:
	.cfi_offset %rbx, -48
.Ltmp24:
	.cfi_offset %r12, -40
.Ltmp25:
	.cfi_offset %r14, -32
.Ltmp26:
	.cfi_offset %r15, -24
.Ltmp27:
	.cfi_offset %rbp, -16
	movl	16(%rdi), %r9d
	testl	%r9d, %r9d
	je	.LBB3_3
# BB#1:                                 # %for.body.lr.ph
	movl	4(%rsi), %eax
	movl	8(%rsi), %ecx
	movl	(%rdi), %r10d
	movl	4(%rdi), %r11d
	movl	12(%rsi), %r14d
	imull	32(%rsi), %r14d
	addl	%eax, %r14d
	movl	8(%rdi), %edx
	movl	16(%rsi), %r15d
	imull	36(%rsi), %r15d
	addl	%ecx, %r15d
	movl	12(%rdi), %esi
	movq	24(%rdi), %rbx
	cmpl	%esi, %r15d
	cmovgl	%esi, %r15d
	cmpl	%edx, %r14d
	cmovgl	%edx, %r14d
	cmpl	%r11d, %ecx
	cmovgel	%ecx, %r11d
	cmpl	%r10d, %eax
	cmovgel	%eax, %r10d
	decl	%r10d
	decl	%r11d
	decl	%r14d
	decl	%r15d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB3_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %ecx
	movl	4(%rbx), %edi
	leal	(%r10,%rcx), %eax
	cltd
	idivl	%ecx
	movl	%eax, %r8d
	leal	(%r11,%rdi), %eax
	cltd
	idivl	%edi
	movl	%eax, %r12d
	leal	(%r14,%rcx), %eax
	cltd
	idivl	%ecx
	movl	%eax, %esi
	leal	(%r15,%rdi), %eax
	cltd
	idivl	%edi
	subl	%r8d, %esi
	movb	40(%rbx), %cl
	movslq	%esi, %rdx
	movl	$1, %esi
	shll	%cl, %esi
	movslq	%esi, %rsi
	leaq	-1(%rdx,%rsi), %rdx
	sarq	%cl, %rdx
	subl	%r12d, %eax
	cltq
	leaq	-1(%rax,%rsi), %rax
	sarq	%cl, %rax
	movl	%edx, 8(%rbx)
	movl	%eax, 12(%rbx)
	movl	%r8d, 16(%rbx)
	movl	%r12d, 20(%rbx)
	incl	%ebp
	addq	$64, %rbx
	cmpl	%r9d, %ebp
	jb	.LBB3_2
.LBB3_3:                                # %for.end
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	opj_image_comp_header_update, .Lfunc_end3-opj_image_comp_header_update
	.cfi_endproc

	.globl	opj_copy_image_header
	.align	16, 0x90
	.type	opj_copy_image_header,@function
opj_copy_image_header:                  # @opj_copy_image_header
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp29:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp30:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp32:
	.cfi_def_cfa_offset 48
.Ltmp33:
	.cfi_offset %rbx, -40
.Ltmp34:
	.cfi_offset %r14, -32
.Ltmp35:
	.cfi_offset %r15, -24
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	testq	%r14, %r14
	je	.LBB4_21
# BB#1:                                 # %cond.end
	testq	%r15, %r15
	je	.LBB4_22
# BB#2:                                 # %cond.end.4
	movups	(%r14), %xmm0
	movups	%xmm0, (%r15)
	movq	24(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB4_11
# BB#3:                                 # %for.cond.preheader
	movl	16(%r15), %eax
	testl	%eax, %eax
	je	.LBB4_10
# BB#4:
	xorl	%ebp, %ebp
	jmp	.LBB4_5
	.align	16, 0x90
.LBB4_8:                                # %if.end.for.body_crit_edge
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	24(%r15), %rdi
.LBB4_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %ecx
	shlq	$6, %rcx
	movq	48(%rdi,%rcx), %rdi
	testq	%rdi, %rdi
	je	.LBB4_7
# BB#6:                                 # %if.then.12
                                        #   in Loop: Header=BB4_5 Depth=1
	callq	free
	movl	16(%r15), %eax
.LBB4_7:                                # %if.end
                                        #   in Loop: Header=BB4_5 Depth=1
	incl	%ebp
	cmpl	%eax, %ebp
	jb	.LBB4_8
# BB#9:                                 # %for.cond.for.end_crit_edge
	movq	24(%r15), %rdi
.LBB4_10:                               # %for.end
	callq	free
	movq	$0, 24(%r15)
.LBB4_11:                               # %if.end.16
	movl	16(%r14), %edi
	movl	%edi, 16(%r15)
	shlq	$6, %rdi
	callq	malloc
	movq	%rax, %rdi
	movq	%rdi, 24(%r15)
	testq	%rdi, %rdi
	je	.LBB4_23
# BB#12:                                # %for.cond.35.preheader
	cmpl	$0, 16(%r15)
	je	.LBB4_15
# BB#13:                                # %for.body.39.lr.ph
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB4_14:                               # %for.body.39
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %ebx
	shlq	$6, %rbx
	addq	%rbx, %rdi
	movq	24(%r14), %rsi
	addq	%rbx, %rsi
	movl	$64, %edx
	callq	memcpy
	movq	24(%r15), %rdi
	movq	$0, 48(%rdi,%rbx)
	incl	%ebp
	cmpl	16(%r15), %ebp
	jb	.LBB4_14
.LBB4_15:                               # %for.end.53
	movl	20(%r14), %eax
	movl	%eax, 20(%r15)
	movl	40(%r14), %edi
	testq	%rdi, %rdi
	movl	%edi, 40(%r15)
	je	.LBB4_19
# BB#16:                                # %cond.false.64
	callq	malloc
	movq	%rax, 32(%r15)
	testq	%rax, %rax
	je	.LBB4_17
# BB#18:                                # %if.end.75
	movq	32(%r14), %rsi
	movl	40(%r14), %edx
	movq	%rax, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	memcpy                  # TAILCALL
.LBB4_23:                               # %if.then.31
	movq	$0, 24(%r15)
	movl	$0, 16(%r15)
	jmp	.LBB4_20
.LBB4_19:                               # %if.else
	movq	$0, 32(%r15)
	jmp	.LBB4_20
.LBB4_17:                               # %if.then.72
	movq	$0, 32(%r15)
	movl	$0, 40(%r15)
.LBB4_20:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_21:                               # %cond.false
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	movl	$144, %edx
	movl	$.L__PRETTY_FUNCTION__.opj_copy_image_header, %ecx
	callq	__assert_fail
.LBB4_22:                               # %cond.false.3
	movl	$.L.str.3, %edi
	movl	$.L.str.2, %esi
	movl	$145, %edx
	movl	$.L__PRETTY_FUNCTION__.opj_copy_image_header, %ecx
	callq	__assert_fail
.Lfunc_end4:
	.size	opj_copy_image_header, .Lfunc_end4-opj_copy_image_header
	.cfi_endproc

	.globl	opj_image_tile_create
	.align	16, 0x90
	.type	opj_image_tile_create,@function
opj_image_tile_create:                  # @opj_image_tile_create
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp38:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp39:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp40:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp41:
	.cfi_def_cfa_offset 48
.Ltmp42:
	.cfi_offset %rbx, -40
.Ltmp43:
	.cfi_offset %r14, -32
.Ltmp44:
	.cfi_offset %r15, -24
.Ltmp45:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %rbx
	movl	%edi, %ebp
	movl	$48, %edi
	callq	malloc
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB5_6
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movl	$48, %edx
	movq	%r14, %rdi
	callq	memset
	movl	%r15d, 20(%r14)
	movl	%ebp, 16(%r14)
	movl	%ebp, %edi
	shlq	$6, %rdi
	callq	malloc
	movq	%rax, 24(%r14)
	testq	%rax, %rax
	je	.LBB5_2
# BB#3:                                 # %if.end
	movl	16(%r14), %edx
	shlq	$6, %rdx
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
	testl	%ebp, %ebp
	je	.LBB5_6
# BB#4:                                 # %for.body.lr.ph
	movq	24(%r14), %rax
	addq	$32, %rbx
	addq	$48, %rax
	.align	16, 0x90
.LBB5_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movups	-32(%rbx), %xmm0
	movups	%xmm0, -48(%rax)
	movl	-16(%rbx), %ecx
	movl	%ecx, -32(%rax)
	movl	-12(%rbx), %ecx
	movl	%ecx, -28(%rax)
	movl	-8(%rbx), %ecx
	movl	%ecx, -24(%rax)
	movl	(%rbx), %ecx
	movl	%ecx, -16(%rax)
	movq	$0, (%rax)
	addq	$36, %rbx
	addq	$64, %rax
	decl	%ebp
	jne	.LBB5_5
	jmp	.LBB5_6
.LBB5_2:                                # %if.then.10
	movq	%r14, %rdi
	callq	opj_image_destroy
	xorl	%r14d, %r14d
.LBB5_6:                                # %cleanup
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	opj_image_tile_create, .Lfunc_end5-opj_image_tile_create
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Unable to allocate memory for image.\n"
	.size	.L.str, 38

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"p_image_src != 00"
	.size	.L.str.1, 18

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"./openjpeg/libopenjpeg/image.c"
	.size	.L.str.2, 31

	.type	.L__PRETTY_FUNCTION__.opj_copy_image_header,@object # @__PRETTY_FUNCTION__.opj_copy_image_header
.L__PRETTY_FUNCTION__.opj_copy_image_header:
	.asciz	"void opj_copy_image_header(const opj_image_t *, opj_image_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_copy_image_header, 63

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"p_image_dest != 00"
	.size	.L.str.3, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
