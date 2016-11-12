	.text
	.file	"gp_unix_cache.bc"
	.globl	gp_cache_insert
	.align	16, 0x90
	.type	gp_cache_insert,@function
gp_cache_insert:                        # @gp_cache_insert
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
	subq	$280, %rsp              # imm = 0x118
.Ltmp6:
	.cfi_def_cfa_offset 336
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
	movl	%r8d, 32(%rsp)          # 4-byte Spill
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movl	%edx, 36(%rsp)          # 4-byte Spill
	movq	%rsi, %r15
	movl	%edi, 20(%rsp)          # 4-byte Spill
	callq	gp_cache_prefix
	movq	%rax, %r13
	movq	%r13, %rdi
	callq	gp_cache_indexfilename
	movq	%rax, %r14
	movq	%r14, %rdi
	callq	strlen
	movq	%rax, %rbp
	movq	%rbp, %rbx
	shlq	$32, %rbx
	movabsq	$8589934592, %rax       # imm = 0x200000000
	leaq	(%rax,%rbx), %rdi
	sarq	$32, %rdi
	callq	malloc
	movq	%rax, %r12
	movslq	%ebp, %rbp
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%rbp, %rdx
	callq	memcpy
	movb	$43, (%r12,%rbp)
	movabsq	$4294967296, %rax       # imm = 0x100000000
	addq	%rbx, %rax
	sarq	$32, %rax
	movb	$0, (%r12,%rax)
	movl	$.L.str, %esi
	movq	%r14, %rdi
	callq	gp_fopen
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB0_1
# BB#3:                                 # %if.end
	movq	%r13, 40(%rsp)          # 8-byte Spill
	movl	$.L.str.3, %esi
	movq	%r12, %rdi
	callq	gp_fopen
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB0_4
# BB#5:                                 # %if.end.20
	movq	%r14, 8(%rsp)           # 8-byte Spill
	movl	$.L.str.4, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	movq	$0, 152(%rsp)
	movl	20(%rsp), %eax          # 4-byte Reload
	movl	%eax, 120(%rsp)
	movq	%r15, 128(%rsp)
	movl	36(%rsp), %ebp          # 4-byte Reload
	movl	%ebp, 124(%rsp)
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%rax, 168(%rsp)
	movl	32(%rsp), %eax          # 4-byte Reload
	movl	%eax, 160(%rsp)
	movl	$1, 176(%rsp)
	xorl	%edi, %edi
	callq	time
	movq	%rax, 184(%rsp)
	leaq	192(%rsp), %r14
	movq	%r14, %rdi
	callq	gs_md5_init
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	%ebp, %edx
	callq	gs_md5_append
	leaq	136(%rsp), %rsi
	movq	%r14, %rdi
	movq	%rsi, %r14
	callq	gs_md5_finish
	leaq	120(%rsp), %rbp
	movq	%rbp, %rdi
	callq	gp_cache_filename
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	%rbp, %rsi
	callq	gp_cache_itempath
	movq	%rax, %rbp
	movl	$.L.str.5, %esi
	movq	%rbp, %rdi
	callq	gp_fopen
	movq	%rax, %r15
	movq	%rbp, %rdi
	callq	free
	testq	%r15, %r15
	je	.LBB0_7
# BB#6:                                 # %if.then.32
	leaq	124(%rsp), %rbp
	movb	$0, 192(%rsp)
	leaq	192(%rsp), %rdi
	movl	$1, %esi
	movl	$1, %edx
	movq	%r15, %rcx
	callq	fwrite
	movl	$1, %esi
	movl	$4, %edx
	movq	%rbp, %rdi
	movq	%r15, %rcx
	callq	fwrite
	movq	128(%rsp), %rdi
	movslq	124(%rsp), %rdx
	movl	$1, %esi
	movq	%r15, %rcx
	callq	fwrite
	movl	$1, %esi
	movl	$4, %edx
	leaq	160(%rsp), %rdi
	movq	%r15, %rcx
	callq	fwrite
	movq	168(%rsp), %rdi
	movslq	160(%rsp), %rdx
	movl	$1, %esi
	movq	%r15, %rcx
	callq	fwrite
	movl	$0, 176(%rsp)
	movq	%r15, %rdi
	callq	fclose
.LBB0_7:                                # %if.end.35
	movl	$-1, 48(%rsp)
	movq	$0, 56(%rsp)
	movl	$0, 52(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 96(%rsp)
	movl	$0, 88(%rsp)
	movl	$0, 104(%rsp)
	movq	$0, 112(%rsp)
	leaq	48(%rsp), %rsi
	movq	%rbx, %rdi
	callq	gp_cache_read_entry
	testl	%eax, %eax
	js	.LBB0_13
# BB#8:                                 # %while.body.lr.ph.lr.ph
	leaq	64(%rsp), %rbp
	leaq	48(%rsp), %r15
	xorl	%ecx, %ecx
.LBB0_9:                                # %while.body.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
	movl	%ecx, 36(%rsp)          # 4-byte Spill
	.align	16, 0x90
.LBB0_10:                               # %while.body
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$1, %eax
	je	.LBB0_11
# BB#14:                                # %if.end.42
                                        #   in Loop: Header=BB0_10 Depth=2
	movl	$16, %edx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB0_15
# BB#18:                                # %if.else
                                        #   in Loop: Header=BB0_10 Depth=2
	movq	80(%rsp), %rdx
	movq	112(%rsp), %rcx
	movl	$.L.str.14, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
.LBB0_11:                               # %while.cond.backedge
                                        #   in Loop: Header=BB0_10 Depth=2
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	gp_cache_read_entry
	testl	%eax, %eax
	jns	.LBB0_10
	jmp	.LBB0_12
.LBB0_15:                               # %if.then.46
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	152(%rsp), %rdx
	movq	184(%rsp), %rcx
	movl	$.L.str.14, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	gp_cache_read_entry
	movl	$1, %ecx
	testl	%eax, %eax
	jns	.LBB0_9
	jmp	.LBB0_16
.LBB0_1:                                # %if.then
	movl	$.L.str.1, %edi
	movl	$350, %esi              # imm = 0x15E
	callq	dprintf_file_and_line
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	movq	%r14, %rsi
	callq	errprintf_nomem
	movq	%r13, %rdi
	jmp	.LBB0_2
.LBB0_4:                                # %if.then.17
	movl	$.L.str.1, %edi
	movl	$358, %esi              # imm = 0x166
	callq	dprintf_file_and_line
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	movq	%r12, %rsi
	callq	errprintf_nomem
	movq	%rbx, %rdi
	callq	fclose
	movq	40(%rsp), %rdi          # 8-byte Reload
.LBB0_2:                                # %cleanup
	callq	free
	movq	%r14, %rdi
	callq	free
	movq	%r12, %rdi
	callq	free
	movl	$-1, %eax
	jmp	.LBB0_17
.LBB0_12:                               # %while.end
	cmpl	$0, 36(%rsp)            # 4-byte Folded Reload
	jne	.LBB0_16
.LBB0_13:                               # %if.then.51
	movq	152(%rsp), %rdx
	movq	184(%rsp), %rcx
	movl	$.L.str.14, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
.LBB0_16:                               # %if.end.53
	movq	152(%rsp), %rdi
	callq	free
	movq	%r13, %rdi
	callq	fclose
	movq	%rbx, %rdi
	callq	fclose
	movq	8(%rsp), %rbx           # 8-byte Reload
	movq	%rbx, %rdi
	callq	unlink
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	rename
	movq	40(%rsp), %rdi          # 8-byte Reload
	callq	free
	movq	%rbx, %rdi
	callq	free
	movq	%r12, %rdi
	callq	free
	xorl	%eax, %eax
.LBB0_17:                               # %cleanup
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gp_cache_insert, .Lfunc_end0-gp_cache_insert
	.cfi_endproc

	.align	16, 0x90
	.type	gp_cache_prefix,@function
gp_cache_prefix:                        # @gp_cache_prefix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp17:
	.cfi_def_cfa_offset 64
.Ltmp18:
	.cfi_offset %rbx, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
.Ltmp21:
	.cfi_offset %rbp, -16
	movl	$0, 20(%rsp)
	leaq	20(%rsp), %rdx
	movl	$.L.str.7, %edi
	xorl	%esi, %esi
	callq	gp_getenv
	testl	%eax, %eax
	js	.LBB1_1
# BB#2:                                 # %cond.false
	movl	$.L.str.8, %edi
	callq	strlen
	movq	%rax, %rbp
	incq	%rbp
	movq	%rbp, %rdi
	callq	malloc
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB1_4
# BB#3:                                 # %if.then.12
	movl	$.L.str.8, %esi
	movq	%rax, %rdi
	movq	%rbp, %rdx
	callq	memcpy
	movq	%rax, %rbx
.LBB1_4:                                # %cond.end.16
	movq	%rbx, %rdi
	callq	strlen
	jmp	.LBB1_5
.LBB1_1:                                # %if.then
	movslq	20(%rsp), %rdi
	callq	malloc
	movq	%rax, %rbx
	leaq	20(%rsp), %rdx
	movl	$.L.str.7, %edi
	movq	%rbx, %rsi
	callq	gp_getenv
	movl	20(%rsp), %eax
	decl	%eax
.LBB1_5:                                # %if.end.20
	movl	%eax, 20(%rsp)
	testl	%eax, %eax
	jle	.LBB1_19
# BB#6:                                 # %land.lhs.true
	movzbl	(%rbx), %eax
	cmpl	$126, %eax
	jne	.LBB1_19
# BB#7:                                 # %if.then.26
	movl	$0, 16(%rsp)
	movl	$0, 12(%rsp)
	leaq	16(%rsp), %rdx
	movl	$.L.str.9, %edi
	xorl	%esi, %esi
	callq	gp_getenv
	testl	%eax, %eax
	jns	.LBB1_19
# BB#8:                                 # %if.then.35
	movslq	16(%rsp), %rdi
	callq	malloc
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB1_13
# BB#9:                                 # %if.end.41
	leaq	16(%rsp), %rdx
	movl	$.L.str.9, %edi
	movq	%r14, %rsi
	callq	gp_getenv
	movl	16(%rsp), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 16(%rsp)
	movl	20(%rsp), %edi
	cmpl	$1, %edi
	jne	.LBB1_11
# BB#10:                                # %if.then.46
	movq	%rbx, %rdi
	callq	free
	movq	%r14, %rbx
	jmp	.LBB1_19
.LBB1_11:                               # %if.end.47
	addl	%eax, %edi
	movl	%edi, 12(%rsp)
	callq	malloc
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB1_12
# BB#15:                                # %if.end.55
	movl	16(%rsp), %esi
	leaq	2(%rbx), %rdx
	movl	20(%rsp), %ecx
	addl	$-2, %ecx
	leaq	12(%rsp), %rax
	movq	%rax, (%rsp)
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	movq	%r15, %r9
	callq	gp_file_name_combine
	movl	%eax, %ebp
	cmpl	$1, %ebp
	jne	.LBB1_17
# BB#16:                                # %if.then.59
	movq	%rbx, %rdi
	callq	free
	jmp	.LBB1_18
.LBB1_12:                               # %if.then.54
	movq	%r14, %rdi
	callq	free
.LBB1_13:                               # %cleanup.thread
	movq	%rbx, %r14
	jmp	.LBB1_19
.LBB1_17:                               # %if.else.60
	movl	$.L.str.1, %edi
	movl	$106, %esi
	callq	dprintf_file_and_line
	movl	$.L.str.10, %edi
	xorl	%eax, %eax
	movl	%ebp, %esi
	callq	errprintf_nomem
	movq	%r15, %rdi
	callq	free
	movq	%rbx, %r15
.LBB1_18:                               # %if.end.62
	movq	%r14, %rdi
	callq	free
	movq	%r15, %rbx
.LBB1_19:                               # %cleanup.69
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gp_cache_prefix, .Lfunc_end1-gp_cache_prefix
	.cfi_endproc

	.align	16, 0x90
	.type	gp_cache_indexfilename,@function
gp_cache_indexfilename:                 # @gp_cache_indexfilename
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp23:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp24:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp26:
	.cfi_def_cfa_offset 64
.Ltmp27:
	.cfi_offset %rbx, -40
.Ltmp28:
	.cfi_offset %r14, -32
.Ltmp29:
	.cfi_offset %r15, -24
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	callq	strlen
	movq	%rax, %rbp
	movl	$.L.str.11, %edi
	callq	strlen
	leaq	2(%rbp,%rax), %rax
	movl	%eax, 20(%rsp)
	movl	%eax, %edi
	callq	malloc
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %rbp
	movl	$.L.str.11, %edi
	callq	strlen
	leaq	20(%rsp), %r15
	movq	%r15, (%rsp)
	movl	$.L.str.11, %edx
	movl	$1, %r8d
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movl	%eax, %ecx
	movq	%r14, %r9
	callq	gp_file_name_combine
	movl	%eax, %ebp
	cmpl	$-1, %ebp
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movq	%r14, %rdi
	callq	free
	movl	20(%rsp), %edi
	incl	%edi
	movl	%edi, 20(%rsp)
	callq	malloc
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %rbp
	movl	$.L.str.11, %edi
	callq	strlen
	movq	%r15, (%rsp)
	movl	$.L.str.11, %edx
	movl	$1, %r8d
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movl	%eax, %ecx
	movq	%r14, %r9
	callq	gp_file_name_combine
	movl	%eax, %ebp
.LBB2_2:                                # %if.end
	cmpl	$1, %ebp
	je	.LBB2_4
# BB#3:                                 # %if.then.20
	movl	$.L.str.1, %edi
	movl	$138, %esi
	callq	dprintf_file_and_line
	movl	$.L.str.12, %edi
	xorl	%eax, %eax
	movl	%ebp, %esi
	callq	errprintf_nomem
	movq	%r14, %rdi
	callq	free
	xorl	%r14d, %r14d
.LBB2_4:                                # %cleanup
	movq	%r14, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gp_cache_indexfilename, .Lfunc_end2-gp_cache_indexfilename
	.cfi_endproc

	.align	16, 0x90
	.type	gp_cache_filename,@function
gp_cache_filename:                      # @gp_cache_filename
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp33:
	.cfi_def_cfa_offset 32
.Ltmp34:
	.cfi_offset %rbx, -24
.Ltmp35:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movl	$4096, %edi             # imm = 0x1000
	callq	malloc
	movq	%rax, %rbx
	movl	(%r14), %eax
	movl	%eax, %ecx
	shrl	$4, %ecx
	andl	$15, %ecx
	movb	gp_cache_filename.hexmap(%rcx), %cl
	movb	%cl, (%rbx)
	andl	$15, %eax
	movb	gp_cache_filename.hexmap(%rax), %al
	movb	%al, 1(%rbx)
	movb	$46, 2(%rbx)
	xorl	%eax, %eax
	.align	16, 0x90
.LBB3_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	16(%r14,%rax), %ecx
	shrq	$4, %rcx
	movb	gp_cache_filename.hexmap(%rcx), %cl
	movb	%cl, 3(%rbx,%rax,2)
	movzbl	16(%r14,%rax), %ecx
	andl	$15, %ecx
	movb	gp_cache_filename.hexmap(%rcx), %cl
	movb	%cl, 4(%rbx,%rax,2)
	incq	%rax
	cmpq	$16, %rax
	jne	.LBB3_1
# BB#2:                                 # %for.end
	movb	$0, 35(%rbx)
	movq	32(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB3_4
# BB#3:                                 # %if.then
	callq	free
.LBB3_4:                                # %if.end
	movq	%rbx, 32(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end3:
	.size	gp_cache_filename, .Lfunc_end3-gp_cache_filename
	.cfi_endproc

	.align	16, 0x90
	.type	gp_cache_itempath,@function
gp_cache_itempath:                      # @gp_cache_itempath
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp36:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp37:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp38:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp39:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp40:
	.cfi_def_cfa_offset 64
.Ltmp41:
	.cfi_offset %rbx, -40
.Ltmp42:
	.cfi_offset %r12, -32
.Ltmp43:
	.cfi_offset %r14, -24
.Ltmp44:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	movq	32(%rsi), %r12
	callq	strlen
	movq	%rax, %rbx
	movq	%r12, %rdi
	callq	strlen
	leaq	2(%rbx,%rax), %rax
	movl	%eax, 20(%rsp)
	movl	%eax, %edi
	callq	malloc
	movq	%rax, %r14
	movq	%r15, %rdi
	callq	strlen
	movq	%rax, %rbx
	movq	%r12, %rdi
	callq	strlen
	leaq	20(%rsp), %rcx
	movq	%rcx, (%rsp)
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	movl	%ebx, %esi
	movq	%r12, %rdx
	movl	%eax, %ecx
	movq	%r14, %r9
	callq	gp_file_name_combine
	movl	%eax, %ebx
	cmpl	$1, %ebx
	je	.LBB4_2
# BB#1:                                 # %if.then
	movl	$.L.str.1, %edi
	movl	$191, %esi
	callq	dprintf_file_and_line
	movl	$.L.str.13, %edi
	xorl	%eax, %eax
	movl	%ebx, %esi
	callq	errprintf_nomem
.LBB4_2:                                # %if.end
	movq	%r14, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end4:
	.size	gp_cache_itempath, .Lfunc_end4-gp_cache_itempath
	.cfi_endproc

	.align	16, 0x90
	.type	gp_cache_read_entry,@function
gp_cache_read_entry:                    # @gp_cache_read_entry
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp45:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 24
	subq	$312, %rsp              # imm = 0x138
.Ltmp47:
	.cfi_def_cfa_offset 336
.Ltmp48:
	.cfi_offset %rbx, -24
.Ltmp49:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %rax
	leaq	48(%rsp), %rdi
	movl	$256, %esi              # imm = 0x100
	movq	%rax, %rdx
	callq	fgets
	movq	%rax, %rcx
	movl	$-1, %eax
	testq	%rcx, %rcx
	je	.LBB5_6
# BB#1:                                 # %if.end
	movl	$1, %eax
	movzbl	48(%rsp), %ecx
	cmpl	$35, %ecx
	je	.LBB5_6
# BB#2:                                 # %if.end.3
	leaq	64(%rbx), %rcx
	leaq	48(%rsp), %rdi
	leaq	(%rsp), %rdx
	movl	$.L.str.14, %esi
	xorl	%eax, %eax
	callq	__isoc99_sscanf
	cmpl	$2, %eax
	movl	$-1, %eax
	jne	.LBB5_6
# BB#3:                                 # %if.end.10
	leaq	(%rsp), %rdi
	callq	readhexbyte
	movl	%eax, (%rbx)
	leaq	3(%rsp), %rdi
	callq	readhexbyte
	movb	%al, 16(%rbx)
	leaq	5(%rsp), %rdi
	callq	readhexbyte
	movb	%al, 17(%rbx)
	leaq	7(%rsp), %rdi
	callq	readhexbyte
	movb	%al, 18(%rbx)
	leaq	9(%rsp), %rdi
	callq	readhexbyte
	movb	%al, 19(%rbx)
	leaq	11(%rsp), %rdi
	callq	readhexbyte
	movb	%al, 20(%rbx)
	leaq	13(%rsp), %rdi
	callq	readhexbyte
	movb	%al, 21(%rbx)
	leaq	15(%rsp), %rdi
	callq	readhexbyte
	movb	%al, 22(%rbx)
	leaq	17(%rsp), %rdi
	callq	readhexbyte
	movb	%al, 23(%rbx)
	leaq	19(%rsp), %rdi
	callq	readhexbyte
	movb	%al, 24(%rbx)
	leaq	21(%rsp), %rdi
	callq	readhexbyte
	movb	%al, 25(%rbx)
	leaq	23(%rsp), %rdi
	callq	readhexbyte
	movb	%al, 26(%rbx)
	leaq	25(%rsp), %rdi
	callq	readhexbyte
	movb	%al, 27(%rbx)
	leaq	27(%rsp), %rdi
	callq	readhexbyte
	movb	%al, 28(%rbx)
	leaq	29(%rsp), %rdi
	callq	readhexbyte
	movb	%al, 29(%rbx)
	leaq	31(%rsp), %rdi
	callq	readhexbyte
	movb	%al, 30(%rbx)
	leaq	33(%rsp), %rdi
	callq	readhexbyte
	movb	%al, 31(%rbx)
	movq	32(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB5_5
# BB#4:                                 # %if.then.21
	callq	free
.LBB5_5:                                # %if.end.23
	leaq	(%rsp), %r14
	movq	%r14, %rdi
	callq	strlen
	leaq	1(%rax), %rdi
	callq	malloc
	movq	%rax, 32(%rbx)
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	strcpy
	movq	$0, 8(%rbx)
	movl	$0, 4(%rbx)
	movl	$0, 40(%rbx)
	movq	$0, 48(%rbx)
	xorl	%eax, %eax
.LBB5_6:                                # %cleanup
	addq	$312, %rsp              # imm = 0x138
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end5:
	.size	gp_cache_read_entry, .Lfunc_end5-gp_cache_read_entry
	.cfi_endproc

	.globl	gp_cache_query
	.align	16, 0x90
	.type	gp_cache_query,@function
gp_cache_query:                         # @gp_cache_query
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp51:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp52:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp53:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp54:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp55:
	.cfi_def_cfa_offset 56
	subq	$296, %rsp              # imm = 0x128
.Ltmp56:
	.cfi_def_cfa_offset 352
.Ltmp57:
	.cfi_offset %rbx, -56
.Ltmp58:
	.cfi_offset %r12, -48
.Ltmp59:
	.cfi_offset %r13, -40
.Ltmp60:
	.cfi_offset %r14, -32
.Ltmp61:
	.cfi_offset %r15, -24
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%r9, 8(%rsp)            # 8-byte Spill
	movq	%r8, 16(%rsp)           # 8-byte Spill
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movl	%edx, 36(%rsp)          # 4-byte Spill
	movq	%rsi, %r15
	movl	%edi, 32(%rsp)          # 4-byte Spill
	callq	gp_cache_prefix
	movq	%rax, %r12
	movq	%r12, %rdi
	callq	gp_cache_indexfilename
	movq	%rax, %r13
	movq	%r13, %rdi
	callq	strlen
	movq	%rax, %rbp
	movq	%rbp, %rbx
	shlq	$32, %rbx
	movabsq	$8589934592, %rax       # imm = 0x200000000
	leaq	(%rax,%rbx), %rdi
	sarq	$32, %rdi
	callq	malloc
	movq	%rax, %r14
	movslq	%ebp, %rbp
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	callq	memcpy
	movb	$43, (%r14,%rbp)
	movabsq	$4294967296, %rax       # imm = 0x100000000
	addq	%rbx, %rax
	sarq	$32, %rax
	movb	$0, (%r14,%rax)
	movl	$.L.str, %esi
	movq	%r13, %rdi
	callq	gp_fopen
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB6_1
# BB#3:                                 # %if.end
	movq	%r12, 48(%rsp)          # 8-byte Spill
	movq	%r13, 24(%rsp)          # 8-byte Spill
	movl	$.L.str.3, %esi
	movq	%r14, %rdi
	callq	gp_fopen
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB6_4
# BB#5:                                 # %if.end.20
	movq	%r14, (%rsp)            # 8-byte Spill
	movl	$.L.str.4, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movl	$0, 168(%rsp)
	movl	$0, 184(%rsp)
	movl	32(%rsp), %eax          # 4-byte Reload
	movl	%eax, 128(%rsp)
	movq	%r15, 136(%rsp)
	movl	36(%rsp), %ebp          # 4-byte Reload
	movl	%ebp, 132(%rsp)
	xorl	%edi, %edi
	callq	time
	movq	%rax, 192(%rsp)
	leaq	200(%rsp), %r14
	movq	%r14, %rdi
	callq	gs_md5_init
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	%ebp, %edx
	callq	gs_md5_append
	leaq	144(%rsp), %rsi
	movq	%r14, %rdi
	movq	%rsi, %r14
	callq	gs_md5_finish
	leaq	128(%rsp), %rbp
	movq	%rbp, %rdi
	callq	gp_cache_filename
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	%rbp, %rsi
	callq	gp_cache_itempath
	movq	%rax, %rbp
	movl	$.L.str.6, %esi
	movq	%rbp, %rdi
	callq	gp_fopen
	movq	%rax, %r12
	movq	%rbp, %rdi
	callq	free
	movl	$-1, %r15d
	testq	%r12, %r12
	je	.LBB6_16
# BB#6:                                 # %if.then.30
	leaq	295(%rsp), %rdi
	movl	$1, %esi
	movl	$1, %edx
	movq	%r12, %rcx
	callq	fread
	movl	$-1, %r15d
	cmpb	$0, 295(%rsp)
	jne	.LBB6_15
# BB#7:                                 # %if.end.i
	leaq	288(%rsp), %rdi
	movl	$1, %esi
	movl	$4, %edx
	movq	%r12, %rcx
	callq	fread
	movslq	288(%rsp), %rdi
	cmpl	132(%rsp), %edi
	jne	.LBB6_15
# BB#8:                                 # %if.end.7.i
	callq	malloc
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB6_9
# BB#10:                                # %if.end.14.i
	movslq	288(%rsp), %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	movq	%r12, %rcx
	callq	fread
	movq	136(%rsp), %rsi
	movslq	288(%rsp), %rdx
	movq	%rbp, %rdi
	callq	memcmp
	movl	%eax, 36(%rsp)          # 4-byte Spill
	movq	%rbp, %rdi
	callq	free
	cmpl	$0, 36(%rsp)            # 4-byte Folded Reload
	je	.LBB6_12
# BB#11:                                # %if.then.19.i
	movq	$0, 176(%rsp)
	movl	$0, 168(%rsp)
	jmp	.LBB6_15
.LBB6_1:                                # %if.then
	movl	$.L.str.1, %edi
	movl	$443, %esi              # imm = 0x1BB
	callq	dprintf_file_and_line
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	movq	%r13, %rsi
	callq	errprintf_nomem
	movq	%r12, %rdi
	callq	free
	movq	%r13, %rdi
	jmp	.LBB6_2
.LBB6_4:                                # %if.then.17
	movl	$.L.str.1, %edi
	movl	$451, %esi              # imm = 0x1C3
	callq	dprintf_file_and_line
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	movq	%r14, %rsi
	callq	errprintf_nomem
	movq	%rbx, %rdi
	callq	fclose
	movq	48(%rsp), %rdi          # 8-byte Reload
	callq	free
	movq	24(%rsp), %rdi          # 8-byte Reload
.LBB6_2:                                # %cleanup
	callq	free
	movq	%r14, %rdi
	callq	free
	jmp	.LBB6_29
.LBB6_9:                                # %if.then.12.i
	movl	$.L.str.15, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
	jmp	.LBB6_15
.LBB6_12:                               # %if.end.21.i
	leaq	200(%rsp), %rdi
	movl	$1, %esi
	movl	$4, %edx
	movq	%r12, %rcx
	callq	fread
	movl	200(%rsp), %esi
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	*16(%rsp)               # 8-byte Folded Reload
	movq	%rax, 176(%rsp)
	testq	%rax, %rax
	je	.LBB6_13
# BB#14:                                # %if.end.31.i
	movslq	200(%rsp), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	movq	%r12, %rcx
	callq	fread
	movl	%eax, 168(%rsp)
	movl	$1, 184(%rsp)
	xorl	%r15d, %r15d
	xorl	%edi, %edi
	callq	time
	movq	%rax, 192(%rsp)
	jmp	.LBB6_15
.LBB6_13:                               # %if.then.28.i
	movl	$.L.str.1, %edi
	movl	$258, %esi              # imm = 0x102
	callq	dprintf_file_and_line
	movl	$.L.str.16, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
	movl	$0, 168(%rsp)
.LBB6_15:                               # %gp_cache_loaditem.exit
	movq	%r12, %rdi
	callq	fclose
.LBB6_16:                               # %if.end.33
	movl	$-1, 56(%rsp)
	movq	$0, 64(%rsp)
	movl	$0, 60(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 104(%rsp)
	movl	$0, 96(%rsp)
	movl	$0, 112(%rsp)
	movq	$0, 120(%rsp)
	leaq	56(%rsp), %rsi
	movq	%rbx, %rdi
	callq	gp_cache_read_entry
	testl	%eax, %eax
	movq	%r14, %r12
	js	.LBB6_20
# BB#17:                                # %while.body.lr.ph
	leaq	72(%rsp), %r14
	leaq	56(%rsp), %rbp
	jmp	.LBB6_18
.LBB6_26:                               # %if.then.45
                                        #   in Loop: Header=BB6_18 Depth=1
	movq	160(%rsp), %rdx
	movq	192(%rsp), %rcx
	movl	$.L.str.14, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	movl	$0, 184(%rsp)
	jmp	.LBB6_19
	.align	16, 0x90
.LBB6_18:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$1, %eax
	je	.LBB6_19
# BB#24:                                # %if.end.40
                                        #   in Loop: Header=BB6_18 Depth=1
	testl	%r15d, %r15d
	jne	.LBB6_27
# BB#25:                                # %land.lhs.true
                                        #   in Loop: Header=BB6_18 Depth=1
	movl	$16, %edx
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB6_26
.LBB6_27:                               # %if.else.47
                                        #   in Loop: Header=BB6_18 Depth=1
	movq	88(%rsp), %rdx
	movq	120(%rsp), %rcx
	movl	$.L.str.14, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
.LBB6_19:                               # %while.cond.backedge
                                        #   in Loop: Header=BB6_18 Depth=1
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	gp_cache_read_entry
	testl	%eax, %eax
	jns	.LBB6_18
.LBB6_20:                               # %while.end
	cmpl	$0, 184(%rsp)
	movq	48(%rsp), %r14          # 8-byte Reload
	je	.LBB6_22
# BB#21:                                # %if.then.52
	movq	160(%rsp), %rdx
	movq	192(%rsp), %rcx
	movl	$.L.str.14, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
.LBB6_22:                               # %if.end.54
	movq	160(%rsp), %rdi
	callq	free
	movq	%r13, %rdi
	callq	fclose
	movq	%rbx, %rdi
	callq	fclose
	movq	24(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	callq	unlink
	movq	(%rsp), %rbp            # 8-byte Reload
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	rename
	movq	%r14, %rdi
	callq	free
	movq	%rbx, %rdi
	callq	free
	movq	%rbp, %rdi
	callq	free
	testl	%r15d, %r15d
	je	.LBB6_23
# BB#28:                                # %if.else.63
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	$0, (%rax)
.LBB6_29:                               # %cleanup
	movl	$-1, %eax
.LBB6_30:                               # %cleanup
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_23:                               # %if.then.60
	movq	176(%rsp), %rax
	movq	40(%rsp), %rcx          # 8-byte Reload
	movq	%rax, (%rcx)
	movl	168(%rsp), %eax
	jmp	.LBB6_30
.Lfunc_end6:
	.size	gp_cache_query, .Lfunc_end6-gp_cache_query
	.cfi_endproc

	.align	16, 0x90
	.type	readhexbyte,@function
readhexbyte:                            # @readhexbyte
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	(%rdi), %eax
	xorl	%ecx, %ecx
	cmpl	$48, %eax
	movl	$0, %edx
	je	.LBB7_2
# BB#1:                                 # %for.inc
	movl	$16, %edx
	movzbl	%al, %esi
	cmpl	$49, %esi
	je	.LBB7_2
# BB#20:                                # %for.inc.1
	movl	$32, %edx
	cmpl	$50, %esi
	je	.LBB7_2
# BB#21:                                # %for.inc.2
	movl	$48, %edx
	cmpl	$51, %esi
	je	.LBB7_2
# BB#22:                                # %for.inc.3
	movl	$64, %edx
	cmpl	$52, %esi
	je	.LBB7_2
# BB#23:                                # %for.inc.4
	movl	$80, %edx
	cmpl	$53, %esi
	je	.LBB7_2
# BB#24:                                # %for.inc.5
	movl	$96, %edx
	cmpl	$54, %esi
	je	.LBB7_2
# BB#25:                                # %for.inc.6
	movl	$112, %edx
	cmpl	$55, %esi
	je	.LBB7_2
# BB#26:                                # %for.inc.7
	movl	$128, %edx
	cmpl	$56, %esi
	je	.LBB7_2
# BB#27:                                # %for.inc.8
	movl	$144, %edx
	cmpl	$57, %esi
	je	.LBB7_2
# BB#28:                                # %for.inc.9
	movl	$160, %edx
	cmpl	$97, %esi
	je	.LBB7_2
# BB#29:                                # %for.inc.10
	movl	$176, %edx
	cmpl	$98, %esi
	je	.LBB7_2
# BB#30:                                # %for.inc.11
	movl	$192, %edx
	cmpl	$99, %esi
	je	.LBB7_2
# BB#31:                                # %for.inc.12
	movl	$208, %edx
	cmpl	$100, %esi
	je	.LBB7_2
# BB#32:                                # %for.inc.13
	movl	$224, %edx
	cmpl	$101, %esi
	je	.LBB7_2
# BB#33:                                # %for.inc.14
	movl	$-1, %eax
	movl	$240, %edx
	cmpl	$102, %esi
	jne	.LBB7_5
.LBB7_2:                                # %if.end.7
	movzbl	1(%rdi), %eax
	cmpl	$48, %eax
	je	.LBB7_4
# BB#3:                                 # %for.inc.20
	movl	$1, %ecx
	movzbl	%al, %esi
	cmpl	$49, %esi
	je	.LBB7_4
# BB#6:                                 # %for.inc.20.1
	movl	$2, %ecx
	cmpl	$50, %esi
	je	.LBB7_4
# BB#7:                                 # %for.inc.20.2
	movl	$3, %ecx
	cmpl	$51, %esi
	je	.LBB7_4
# BB#8:                                 # %for.inc.20.3
	movl	$4, %ecx
	cmpl	$52, %esi
	je	.LBB7_4
# BB#9:                                 # %for.inc.20.4
	movl	$5, %ecx
	cmpl	$53, %esi
	je	.LBB7_4
# BB#10:                                # %for.inc.20.5
	movl	$6, %ecx
	cmpl	$54, %esi
	je	.LBB7_4
# BB#11:                                # %for.inc.20.6
	movl	$7, %ecx
	cmpl	$55, %esi
	je	.LBB7_4
# BB#12:                                # %for.inc.20.7
	movl	$8, %ecx
	cmpl	$56, %esi
	je	.LBB7_4
# BB#13:                                # %for.inc.20.8
	movl	$9, %ecx
	cmpl	$57, %esi
	je	.LBB7_4
# BB#14:                                # %for.inc.20.9
	movl	$10, %ecx
	cmpl	$97, %esi
	je	.LBB7_4
# BB#15:                                # %for.inc.20.10
	movl	$11, %ecx
	cmpl	$98, %esi
	je	.LBB7_4
# BB#16:                                # %for.inc.20.11
	movl	$12, %ecx
	cmpl	$99, %esi
	je	.LBB7_4
# BB#17:                                # %for.inc.20.12
	movl	$13, %ecx
	cmpl	$100, %esi
	je	.LBB7_4
# BB#18:                                # %for.inc.20.13
	movl	$14, %ecx
	cmpl	$101, %esi
	je	.LBB7_4
# BB#19:                                # %for.inc.20.14
	movl	$-1, %eax
	movl	$15, %ecx
	cmpl	$102, %esi
	jne	.LBB7_5
.LBB7_4:                                # %if.end.26
	orl	%edx, %ecx
	movl	%ecx, %eax
.LBB7_5:                                # %cleanup
	retq
.Lfunc_end7:
	.size	readhexbyte, .Lfunc_end7-readhexbyte
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"r"
	.size	.L.str, 2

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"./base/gp_unix_cache.c"
	.size	.L.str.1, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"pcache: unable to open '%s'\n"
	.size	.L.str.2, 29

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"w"
	.size	.L.str.3, 2

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"# Ghostscript persistent cache index table\n"
	.size	.L.str.4, 44

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"wb"
	.size	.L.str.5, 3

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"rb"
	.size	.L.str.6, 3

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GS_CACHE_DIR"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"~/.ghostscript/cache/"
	.size	.L.str.8, 22

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"HOME"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"file_name_combine failed with code %d\n"
	.size	.L.str.10, 39

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gs_cache"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"pcache: file_name_combine for indexfilename failed with code %d\n"
	.size	.L.str.12, 65

	.type	gp_cache_filename.hexmap,@object # @gp_cache_filename.hexmap
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
gp_cache_filename.hexmap:
	.ascii	"0123456789abcdef"
	.size	gp_cache_filename.hexmap, 16

	.type	.L.str.13,@object       # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"pcache: file_name_combine failed on cache item filename with code %d\n"
	.size	.L.str.13, 70

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%s %lu\n"
	.size	.L.str.14, 8

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"pcache: couldn't allocate file key!\n"
	.size	.L.str.15, 37

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"pcache: couldn't allocate buffer for file data!\n"
	.size	.L.str.16, 49


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
