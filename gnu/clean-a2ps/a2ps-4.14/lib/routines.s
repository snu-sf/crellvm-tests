	.text
	.file	"routines.bc"
	.globl	string_to_array
	.align	16, 0x90
	.type	string_to_array,@function
string_to_array:                        # @string_to_array
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -20(%rbp)         # imm = 0x100
	jge	.LBB0_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	$0, (%rcx,%rax)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_1
.LBB0_4:                                # %for.end
	jmp	.LBB0_5
.LBB0_5:                                # %for.cond.1
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB0_8
# BB#6:                                 # %for.body.2
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-8(%rbp), %rdx
	movb	$1, (%rdx,%rax)
# BB#7:                                 # %for.inc.5
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_5
.LBB0_8:                                # %for.end.6
	popq	%rbp
	retq
.Lfunc_end0:
	.size	string_to_array, .Lfunc_end0-string_to_array
	.cfi_endproc

	.globl	ustrccat
	.align	16, 0x90
	.type	ustrccat,@function
ustrccat:                               # @ustrccat
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
	subq	$16, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen
	movl	%eax, %esi
	movl	%esi, -16(%rbp)
	movb	-9(%rbp), %cl
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rdi
	movb	%cl, (%rax,%rdi)
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rdi
	movb	$0, 1(%rax,%rdi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	ustrccat, .Lfunc_end1-ustrccat
	.cfi_endproc

	.globl	is_strlower
	.align	16, 0x90
	.type	is_strlower,@function
is_strlower:                            # @is_strlower
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB2_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movslq	%ecx, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movzwl	(%rax,%rdx,2), %ecx
	andl	$256, %ecx              # imm = 0x100
	cmpl	$0, %ecx
	je	.LBB2_4
# BB#3:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB2_7
.LBB2_4:                                # %if.end
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_5
.LBB2_5:                                # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB2_1
.LBB2_6:                                # %for.end
	movl	$1, -4(%rbp)
.LBB2_7:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	is_strlower, .Lfunc_end2-is_strlower
	.cfi_endproc

	.globl	strnlower
	.align	16, 0x90
	.type	strnlower,@function
strnlower:                              # @strnlower
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	_strncpylc
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	strnlower, .Lfunc_end3-strnlower
	.cfi_endproc

	.align	16, 0x90
	.type	_strncpylc,@function
_strncpylc:                             # @_strncpylc
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -32(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB4_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edi
	callq	tolower
	movb	%al, %dl
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movb	%dl, (%rsi,%rcx)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB4_1
.LBB4_4:                                # %for.end
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	_strncpylc, .Lfunc_end4-_strncpylc
	.cfi_endproc

	.globl	strlower
	.align	16, 0x90
	.type	strlower,@function
strlower:                               # @strlower
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	_strncpylc
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	strlower, .Lfunc_end5-strlower
	.cfi_endproc

	.globl	strcpylc
	.align	16, 0x90
	.type	strcpylc,@function
strcpylc:                               # @strcpylc
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	_strncpylc
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	strcpylc, .Lfunc_end6-strcpylc
	.cfi_endproc

	.globl	strcnt
	.align	16, 0x90
	.type	strcnt,@function
strcnt:                                 # @strcnt
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
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movl	$0, -16(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB7_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	movzbl	-9(%rbp), %edx
	cmpl	%edx, %ecx
	jne	.LBB7_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
.LBB7_4:                                # %if.end
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_5
.LBB7_5:                                # %for.inc
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB7_1
.LBB7_6:                                # %for.end
	movl	-16(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end7:
	.size	strcnt, .Lfunc_end7-strcnt
	.cfi_endproc

	.globl	strsub
	.align	16, 0x90
	.type	strsub,@function
strsub:                                 # @strsub
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movslq	-20(%rbp), %rax
	addq	%rax, %rsi
	movslq	-24(%rbp), %rdx
	callq	stpncpy
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	strsub, .Lfunc_end8-strsub
	.cfi_endproc

	.globl	xfopen
	.align	16, 0x90
	.type	xfopen,@function
xfopen:                                 # @xfopen
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_xfopen
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	xfopen, .Lfunc_end9-xfopen
	.cfi_endproc

	.align	16, 0x90
	.type	_xfopen,@function
_xfopen:                                # @_xfopen
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movl	msg_verbosity, %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB10_3
# BB#2:                                 # %if.then
	movq	stderr, %rdi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	quotearg
	movabsq	$.L.str.7, %rsi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB10_3:                               # %if.end
	jmp	.LBB10_4
.LBB10_4:                               # %do.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	fopen
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB10_6
# BB#5:                                 # %if.then.4
	callq	__errno_location
	movl	(%rax), %esi
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movl	%esi, -56(%rbp)         # 4-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	movl	-56(%rbp), %esi         # 4-byte Reload
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	error
.LBB10_6:                               # %if.end.7
	movq	-32(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	_xfopen, .Lfunc_end10-_xfopen
	.cfi_endproc

	.globl	xrfopen
	.align	16, 0x90
	.type	xrfopen,@function
xrfopen:                                # @xrfopen
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
	subq	$16, %rsp
	movabsq	$.L.str.1, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gettext
	movabsq	$.L.str, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	_xfopen
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	xrfopen, .Lfunc_end11-xrfopen
	.cfi_endproc

	.globl	xwfopen
	.align	16, 0x90
	.type	xwfopen,@function
xwfopen:                                # @xwfopen
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
	subq	$16, %rsp
	movabsq	$.L.str.3, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gettext
	movabsq	$.L.str.2, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	_xfopen
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	xwfopen, .Lfunc_end12-xwfopen
	.cfi_endproc

	.globl	xpopen
	.align	16, 0x90
	.type	xpopen,@function
xpopen:                                 # @xpopen
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_xpopen
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	xpopen, .Lfunc_end13-xpopen
	.cfi_endproc

	.align	16, 0x90
	.type	_xpopen,@function
_xpopen:                                # @_xpopen
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movl	msg_verbosity, %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB14_3
# BB#2:                                 # %if.then
	movabsq	$.L.str.8, %rsi
	movq	stderr, %rdi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB14_3:                               # %if.end
	jmp	.LBB14_4
.LBB14_4:                               # %do.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	popen
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	callq	__errno_location
	movl	(%rax), %esi
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movl	%esi, -40(%rbp)         # 4-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	movl	-40(%rbp), %esi         # 4-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	error
.LBB14_6:                               # %if.end.6
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	_xpopen, .Lfunc_end14-_xpopen
	.cfi_endproc

	.globl	xrpopen
	.align	16, 0x90
	.type	xrpopen,@function
xrpopen:                                # @xrpopen
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
	subq	$16, %rsp
	movabsq	$.L.str.4, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gettext
	movabsq	$.L.str, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	_xpopen
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	xrpopen, .Lfunc_end15-xrpopen
	.cfi_endproc

	.globl	xwpopen
	.align	16, 0x90
	.type	xwpopen,@function
xwpopen:                                # @xwpopen
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.L.str.4, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gettext
	movabsq	$.L.str.2, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	_xpopen
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	xwpopen, .Lfunc_end16-xwpopen
	.cfi_endproc

	.globl	streams_copy
	.align	16, 0x90
	.type	streams_copy,@function
streams_copy:                           # @streams_copy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_streams_copy
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	streams_copy, .Lfunc_end17-streams_copy
	.cfi_endproc

	.align	16, 0x90
	.type	_streams_copy,@function
_streams_copy:                          # @_streams_copy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$8240, %rsp             # imm = 0x2030
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.LBB18_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movl	$8192, %eax             # imm = 0x2000
	movl	%eax, %edx
	leaq	-8224(%rbp), %rdi
	movq	-8(%rbp), %rcx
	callq	fread
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	je	.LBB18_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	leaq	-8224(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	fwrite
	movq	%rax, -8232(%rbp)       # 8-byte Spill
	jmp	.LBB18_1
.LBB18_3:                               # %while.end
	addq	$8240, %rsp             # imm = 0x2030
	popq	%rbp
	retq
.Lfunc_end18:
	.size	_streams_copy, .Lfunc_end18-_streams_copy
	.cfi_endproc

	.globl	stream_dump
	.align	16, 0x90
	.type	stream_dump,@function
stream_dump:                            # @stream_dump
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movl	msg_verbosity, %eax
	andl	$192, %eax
	cmpl	$0, %eax
	je	.LBB19_3
# BB#2:                                 # %if.then
	movabsq	$.L.str.5, %rsi
	movq	stderr, %rdi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB19_3:                               # %if.end
	jmp	.LBB19_4
.LBB19_4:                               # %do.end
	movq	-16(%rbp), %rdi
	callq	xrfopen
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	_streams_copy
	movq	-24(%rbp), %rdi
	callq	fclose
	movl	%eax, -32(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	stream_dump, .Lfunc_end19-stream_dump
	.cfi_endproc

	.globl	unlink2
	.align	16, 0x90
	.type	unlink2,@function
unlink2:                                # @unlink2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movl	msg_verbosity, %eax
	andl	$192, %eax
	cmpl	$0, %eax
	je	.LBB20_3
# BB#2:                                 # %if.then
	movabsq	$.L.str.6, %rsi
	movq	stderr, %rdi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -20(%rbp)         # 4-byte Spill
.LBB20_3:                               # %if.end
	jmp	.LBB20_4
.LBB20_4:                               # %do.end
	movq	-16(%rbp), %rdi
	callq	unlink
	movl	%eax, -24(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	unlink2, .Lfunc_end20-unlink2
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"r"
	.size	.L.str, 2

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"cannot open file `%s'"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"w"
	.size	.L.str.2, 2

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"cannot create file `%s'"
	.size	.L.str.3, 24

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"cannot open a pipe on `%s'"
	.size	.L.str.4, 27

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Dumping file `%s'\n"
	.size	.L.str.5, 19

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Unlinking file `%s'\n"
	.size	.L.str.6, 21

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%s-fopen (%s)\n"
	.size	.L.str.7, 15

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%s-popen (%s)\n"
	.size	.L.str.8, 15


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
