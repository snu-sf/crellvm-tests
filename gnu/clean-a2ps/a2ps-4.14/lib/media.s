	.text
	.file	"media.bc"
	.globl	add_medium
	.align	16, 0x90
	.type	add_medium,@function
add_medium:                             # @add_medium
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
	pushq	%rbx
	subq	$56, %rsp
.Ltmp3:
	.cfi_offset %rbx, -24
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movl	$32, %r11d
	movl	%r11d, %ebx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movl	%r10d, -44(%rbp)
	movl	%eax, -48(%rbp)
	movq	%rbx, %rdi
	callq	xmalloc
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rdi
	callq	xstrdup
	movq	-56(%rbp), %rsi
	movq	%rax, (%rsi)
	movl	-28(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 8(%rax)
	movl	-32(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 12(%rax)
	movl	-36(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 16(%rax)
	movl	-40(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 20(%rax)
	movl	-44(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 24(%rax)
	movl	-48(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 28(%rax)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	callq	hash_insert
	movq	%rax, -64(%rbp)         # 8-byte Spill
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	add_medium, .Lfunc_end0-add_medium
	.cfi_endproc

	.globl	new_medium_table
	.align	16, 0x90
	.type	new_medium_table,@function
new_medium_table:                       # @new_medium_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
.Ltmp5:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp6:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$80, %eax
	movl	%eax, %edi
	callq	xmalloc
	movl	$16, %ecx
	movl	%ecx, %esi
	movabsq	$medium_hash_1, %rdx
	movabsq	$medium_hash_2, %rcx
	movabsq	$medium_hash_cmp, %r8
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	hash_init
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	new_medium_table, .Lfunc_end1-new_medium_table
	.cfi_endproc

	.align	16, 0x90
	.type	medium_hash_1,@function
medium_hash_1:                          # @medium_hash_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp9:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	$0, -16(%rbp)
# BB#2:                                 # %do.body.1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
.LBB2_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	cmpb	$0, 1(%rax)
	je	.LBB2_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edi
	callq	tolower
	movq	-24(%rbp), %rcx
	movzbl	1(%rcx), %edi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	tolower
	andl	$15, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-28(%rbp), %eax         # 4-byte Reload
	shll	%cl, %eax
	movslq	%eax, %rdx
	addq	-16(%rbp), %rdx
	movq	%rdx, -16(%rbp)
	jmp	.LBB2_3
.LBB2_5:                                # %while.end
	jmp	.LBB2_6
.LBB2_6:                                # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
# BB#7:                                 # %do.end.5
	movq	-40(%rbp), %rax         # 8-byte Reload
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	medium_hash_1, .Lfunc_end2-medium_hash_1
	.cfi_endproc

	.align	16, 0x90
	.type	medium_hash_2,@function
medium_hash_2:                          # @medium_hash_2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	$0, -16(%rbp)
# BB#2:                                 # %do.body.1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
.LBB3_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	cmpb	$0, 1(%rax)
	je	.LBB3_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$7, %edx
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-28(%rbp), %edx         # 4-byte Reload
	shll	%cl, %edx
	movslq	%edx, %rax
	addq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB3_3
.LBB3_5:                                # %while.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
# BB#7:                                 # %do.end.4
	movq	-40(%rbp), %rax         # 8-byte Reload
	popq	%rbp
	retq
.Lfunc_end3:
	.size	medium_hash_2, .Lfunc_end3-medium_hash_2
	.cfi_endproc

	.align	16, 0x90
	.type	medium_hash_cmp,@function
medium_hash_cmp:                        # @medium_hash_cmp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp15:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB4_2
.LBB4_2:                                # %do.body.1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
.LBB4_3:                                # %do.body.4
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movzbl	1(%rax), %edx
	cmpl	$0, %edx
	jne	.LBB4_5
# BB#4:                                 # %if.then
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB4_7
.LBB4_5:                                # %if.end
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
# BB#6:                                 # %do.cond
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %edi
	callq	tolower
	movq	-40(%rbp), %rcx
	movzbl	(%rcx), %edi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	tolower
	movl	-44(%rbp), %edi         # 4-byte Reload
	cmpl	%eax, %edi
	je	.LBB4_3
.LBB4_7:                                # %do.end
	movq	-32(%rbp), %rax
	movzbl	(%rax), %edi
	callq	tolower
	movq	-40(%rbp), %rcx
	movzbl	(%rcx), %edi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	tolower
	movl	-48(%rbp), %edi         # 4-byte Reload
	subl	%eax, %edi
	movl	%edi, -20(%rbp)
# BB#8:                                 # %do.end.18
	movl	-20(%rbp), %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
# BB#9:                                 # %do.end.20
	movl	-52(%rbp), %eax         # 4-byte Reload
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	medium_hash_cmp, .Lfunc_end4-medium_hash_cmp
	.cfi_endproc

	.globl	free_medium_table
	.align	16, 0x90
	.type	free_medium_table,@function
free_medium_table:                      # @free_medium_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$hash_free_medium, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	hash_free
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	free_medium_table, .Lfunc_end5-free_medium_table
	.cfi_endproc

	.align	16, 0x90
	.type	hash_free_medium,@function
hash_free_medium:                       # @hash_free_medium
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	free
	movq	-8(%rbp), %rdi
	callq	free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	hash_free_medium, .Lfunc_end6-hash_free_medium
	.cfi_endproc

	.globl	a2ps_get_medium
	.align	16, 0x90
	.type	a2ps_get_medium,@function
a2ps_get_medium:                        # @a2ps_get_medium
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movabsq	$.L.str, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -56(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	strcasecmp
	cmpl	$0, %eax
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	$0, -56(%rbp)
.LBB7_2:                                # %if.end
	cmpq	$0, -56(%rbp)
	jne	.LBB7_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB7_4:                                # %if.end.7
	leaq	-56(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	%rax, %rsi
	callq	hash_find_item
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB7_6
# BB#5:                                 # %if.then.9
	movabsq	$.L.str.1, %rdi
	callq	gettext
	movq	-56(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	xorl	%esi, %esi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	error
.LBB7_6:                                # %if.end.13
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	a2ps_get_medium, .Lfunc_end7-a2ps_get_medium
	.cfi_endproc

	.globl	a2ps_get_medium_name
	.align	16, 0x90
	.type	a2ps_get_medium_name,@function
a2ps_get_medium_name:                   # @a2ps_get_medium_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	a2ps_get_medium
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	a2ps_get_medium_name, .Lfunc_end8-a2ps_get_medium_name
	.cfi_endproc

	.globl	a2ps_medium_libpaper_p
	.align	16, 0x90
	.type	a2ps_medium_libpaper_p,@function
a2ps_medium_libpaper_p:                 # @a2ps_medium_libpaper_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	$.L.str, %edx
	movl	%edx, %esi
	movl	%ecx, -20(%rbp)         # 4-byte Spill
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	strcmp
	cmpl	$0, %eax
	movl	-24(%rbp), %eax         # 4-byte Reload
	movl	-20(%rbp), %ecx         # 4-byte Reload
	cmovel	%ecx, %eax
	cmpl	$0, %eax
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	a2ps_medium_libpaper_p, .Lfunc_end9-a2ps_medium_libpaper_p
	.cfi_endproc

	.globl	list_media_long
	.align	16, 0x90
	.type	list_media_long,@function
list_media_long:                        # @list_media_long
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$112, %rsp
.Ltmp34:
	.cfi_offset %rbx, -32
.Ltmp35:
	.cfi_offset %r14, -24
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$medium_hash_qcmp, %rdx
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	32(%rsi), %rdi
	movq	%rcx, %rsi
	callq	hash_dump
	movabsq	$.L.str.2, %rdi
	movq	%rax, -48(%rbp)
	callq	gettext
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movl	$10, %edi
	movq	-32(%rbp), %rsi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movabsq	$.L.str.4, %rdi
	movq	-32(%rbp), %rcx
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.5, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.6, %r8
	movabsq	$.L.str.7, %r9
	movabsq	$.L.str.8, %rcx
	movabsq	$.L.str.9, %rdx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%r10, %rdx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	%r11, 8(%rsp)
	movb	$0, %al
	callq	fprintf
	movl	$0, -36(%rbp)
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB10_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-36(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB10_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movabsq	$.L.str.10, %rsi
	movq	-32(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	(%rax), %rdx
	movslq	-36(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	8(%rax), %ecx
	movslq	-36(%rbp), %rax
	movq	-48(%rbp), %r8
	movq	(%r8,%rax,8), %rax
	movl	12(%rax), %r8d
	movslq	-36(%rbp), %rax
	movq	-48(%rbp), %r9
	movq	(%r9,%rax,8), %rax
	movl	16(%rax), %r9d
	movslq	-36(%rbp), %rax
	movq	-48(%rbp), %r10
	movq	(%r10,%rax,8), %rax
	movl	20(%rax), %r11d
	movslq	-36(%rbp), %rax
	movq	-48(%rbp), %r10
	movq	(%r10,%rax,8), %rax
	movl	24(%rax), %ebx
	movslq	-36(%rbp), %rax
	movq	-48(%rbp), %r10
	movq	(%r10,%rax,8), %rax
	movl	28(%rax), %r14d
	movl	%r11d, (%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r14d, 16(%rsp)
	movb	$0, %al
	callq	fprintf
	movl	%eax, -96(%rbp)         # 4-byte Spill
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB10_1
.LBB10_4:                               # %for.end
	movl	$10, %edi
	movq	-32(%rbp), %rsi
	callq	_IO_putc
	movq	-48(%rbp), %rsi
	movq	%rsi, %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	free
	addq	$112, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end10:
	.size	list_media_long, .Lfunc_end10-list_media_long
	.cfi_endproc

	.align	16, 0x90
	.type	medium_hash_qcmp,@function
medium_hash_qcmp:                       # @medium_hash_qcmp
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB11_2
.LBB11_2:                               # %do.body.1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
.LBB11_3:                               # %do.body.4
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movzbl	1(%rax), %edx
	cmpl	$0, %edx
	jne	.LBB11_5
# BB#4:                                 # %if.then
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB11_7
.LBB11_5:                               # %if.end
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
# BB#6:                                 # %do.cond
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %edi
	callq	tolower
	movq	-40(%rbp), %rcx
	movzbl	(%rcx), %edi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	tolower
	movl	-44(%rbp), %edi         # 4-byte Reload
	cmpl	%eax, %edi
	je	.LBB11_3
.LBB11_7:                               # %do.end
	movq	-32(%rbp), %rax
	movzbl	(%rax), %edi
	callq	tolower
	movq	-40(%rbp), %rcx
	movzbl	(%rcx), %edi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	tolower
	movl	-48(%rbp), %edi         # 4-byte Reload
	subl	%eax, %edi
	movl	%edi, -20(%rbp)
# BB#8:                                 # %do.end.18
	movl	-20(%rbp), %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
# BB#9:                                 # %do.end.20
	movl	-52(%rbp), %eax         # 4-byte Reload
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	medium_hash_qcmp, .Lfunc_end11-medium_hash_qcmp
	.cfi_endproc

	.globl	list_media_short
	.align	16, 0x90
	.type	list_media_short,@function
list_media_short:                       # @list_media_short
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
	subq	$64, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$medium_hash_qcmp, %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rdi
	movq	%rcx, %rsi
	callq	hash_dump
	movabsq	$.L.str.2, %rdi
	movq	%rax, -24(%rbp)
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	_IO_putc
	xorl	%edi, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	$-1, %rcx
	movabsq	$medium_name_len, %rdx
	movabsq	$medium_name_fputs, %rsi
	movq	-16(%rbp), %r8
	movq	-24(%rbp), %r9
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%r8, %rsi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdx
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	-40(%rbp), %r9          # 8-byte Reload
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	lister_fprint_vertical
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	free
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	list_media_short, .Lfunc_end12-list_media_short
	.cfi_endproc

	.align	16, 0x90
	.type	medium_name_len,@function
medium_name_len:                        # @medium_name_len
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	strlen
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	medium_name_len, .Lfunc_end13-medium_name_len
	.cfi_endproc

	.align	16, 0x90
	.type	medium_name_fputs,@function
medium_name_fputs:                      # @medium_name_fputs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	fputs
	movl	%eax, -20(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	medium_name_fputs, .Lfunc_end14-medium_name_fputs
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"libpaper"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"unknown medium `%s'"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Known Media"
	.size	.L.str.2, 12

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"  %-10s\t%11s (%4s, %4s, %4s, %4s)\n"
	.size	.L.str.3, 35

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Name"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"dimensions"
	.size	.L.str.5, 11

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"llx"
	.size	.L.str.6, 4

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"lly"
	.size	.L.str.7, 4

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"urx"
	.size	.L.str.8, 4

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"ury"
	.size	.L.str.9, 4

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"  %-10s\t%4d x %4d (%4d, %4d, %4d, %4d)\n"
	.size	.L.str.10, 40


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
