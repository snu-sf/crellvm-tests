	.text
	.file	"decompress.bc"
	.globl	Fzlib_available_p
	.align	16, 0x90
	.type	Fzlib_available_p,@function
Fzlib_available_p:                      # @Fzlib_available_p
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
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	popq	%rbp
	retq
.Lfunc_end0:
	.size	Fzlib_available_p, .Lfunc_end0-Fzlib_available_p
	.cfi_endproc

	.globl	Fzlib_decompress_region
	.align	16, 0x90
	.type	Fzlib_decompress_region,@function
Fzlib_decompress_region:                # @Fzlib_decompress_region
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	callq	SPECPDL_INDEX
	leaq	-16(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	movq	%rax, -208(%rbp)
	callq	validate_region
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB1_2:                                # %if.end
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	move_gap_both
	leaq	-160(%rbp), %rdi
	movl	$47, %esi
	movabsq	$.L.str.1, %rdx
	movl	$112, %ecx
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movl	$0, -152(%rbp)
	movq	$0, -160(%rbp)
	callq	inflateInit2_
	cmpl	$0, %eax
	je	.LBB1_4
# BB#3:                                 # %if.then.5
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB1_26
.LBB1_4:                                # %if.end.7
	movabsq	$unwind_decompress, %rdi
	leaq	-200(%rbp), %rax
	leaq	-160(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rdx, -192(%rbp)
	movq	%rcx, -176(%rbp)
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	movq	%rcx, -200(%rbp)
	movq	$0, -184(%rbp)
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
	movq	-40(%rbp), %rdi
	callq	set_point
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB1_5:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	subq	-48(%rbp), %rdx
	cmpq	%rcx, %rdx
	jge	.LBB1_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-40(%rbp), %rax
	subq	-48(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jmp	.LBB1_8
.LBB1_7:                                # %cond.false
                                        #   in Loop: Header=BB1_5 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, %ecx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	jmp	.LBB1_8
.LBB1_8:                                # %cond.end
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	%rax, -216(%rbp)
	movl	$16384, -220(%rbp)      # imm = 0x4000
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movslq	-220(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB1_10
# BB#9:                                 # %if.then.15
                                        #   in Loop: Header=BB1_5 Depth=1
	movslq	-220(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	subq	40(%rcx), %rax
	movq	%rax, %rdi
	callq	make_gap
.LBB1_10:                               # %if.end.20
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB1_12
# BB#11:                                # %cond.true.24
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB1_13
.LBB1_12:                               # %cond.false.27
                                        #   in Loop: Header=BB1_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	jmp	.LBB1_13
.LBB1_13:                               # %cond.end.28
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-248(%rbp), %rax        # 8-byte Reload
	leaq	-160(%rbp), %rdi
	xorl	%esi, %esi
	addq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -160(%rbp)
	movq	-216(%rbp), %rax
	movl	%eax, %edx
	movl	%edx, -152(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	24(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -136(%rbp)
	movl	-220(%rbp), %edx
	movl	%edx, -128(%rbp)
	callq	inflate
	xorl	%edx, %edx
	movl	%eax, -164(%rbp)
	movq	-216(%rbp), %rcx
	movl	-152(%rbp), %eax
	movl	%eax, %edi
	subq	%rdi, %rcx
	addq	-48(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movl	-220(%rbp), %eax
	subl	-128(%rbp), %eax
	movl	%eax, -224(%rbp)
	movslq	-224(%rbp), %rdi
	movslq	-224(%rbp), %rsi
	callq	insert_from_gap
	movslq	-224(%rbp), %rcx
	addq	-184(%rbp), %rcx
	movq	%rcx, -184(%rbp)
# BB#14:                                # %do.body.55
                                        #   in Loop: Header=BB1_5 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB1_17
# BB#15:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_5 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_17
# BB#16:                                # %if.then.62
                                        #   in Loop: Header=BB1_5 Depth=1
	callq	process_quit_flag
	jmp	.LBB1_20
.LBB1_17:                               # %if.else
                                        #   in Loop: Header=BB1_5 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB1_19
# BB#18:                                # %if.then.63
                                        #   in Loop: Header=BB1_5 Depth=1
	callq	process_pending_signals
.LBB1_19:                               # %if.end.64
                                        #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_20
.LBB1_20:                               # %if.end.65
                                        #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_21
.LBB1_21:                               # %do.end
                                        #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_22
.LBB1_22:                               # %do.cond
                                        #   in Loop: Header=BB1_5 Depth=1
	cmpl	$0, -164(%rbp)
	je	.LBB1_5
# BB#23:                                # %do.end.68
	cmpl	$1, -164(%rbp)
	je	.LBB1_25
# BB#24:                                # %if.then.71
	xorl	%edi, %edi
	movq	-208(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -8(%rbp)
	jmp	.LBB1_26
.LBB1_25:                               # %if.end.74
	movq	$0, -192(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	del_range
	movl	$901, %edi              # imm = 0x385
	movq	-208(%rbp), %rsi
	movq	%rsi, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -8(%rbp)
.LBB1_26:                               # %return
	movq	-8(%rbp), %rax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end1:
	.size	Fzlib_decompress_region, .Lfunc_end1-Fzlib_decompress_region
	.cfi_endproc

	.align	16, 0x90
	.type	unwind_decompress,@function
unwind_decompress:                      # @unwind_decompress
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	24(%rdi), %rdi
	callq	inflateEnd
	movq	-16(%rbp), %rdi
	cmpq	$0, 8(%rdi)
	movl	%eax, -20(%rbp)         # 4-byte Spill
	je	.LBB2_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	addq	16(%rcx), %rax
	movq	%rax, %rsi
	callq	del_range
.LBB2_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jge	.LBB2_4
# BB#3:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB2_5
.LBB2_4:                                # %cond.false
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB2_5:                                # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	callq	set_point
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	unwind_decompress, .Lfunc_end2-unwind_decompress
	.cfi_endproc

	.globl	syms_of_decompress
	.align	16, 0x90
	.type	syms_of_decompress,@function
syms_of_decompress:                     # @syms_of_decompress
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
	movabsq	$Szlib_decompress_region, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Szlib_available_p, %rdi
	callq	defsubr
	popq	%rbp
	retq
.Lfunc_end3:
	.size	syms_of_decompress, .Lfunc_end3-syms_of_decompress
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"This function can be called only in unibyte buffers"
	.size	.L.str, 52

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"1.2.7"
	.size	.L.str.1, 6

	.type	Szlib_available_p,@object # @Szlib_available_p
	.data
	.align	8
Szlib_available_p:
	.quad	167772160               # 0xa000000
	.quad	Fzlib_available_p
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.3
	.quad	0
	.quad	0
	.size	Szlib_available_p, 48

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"zlib-decompress-region"
	.size	.L.str.2, 23

	.type	Szlib_decompress_region,@object # @Szlib_decompress_region
	.data
	.align	8
Szlib_decompress_region:
	.quad	167772160               # 0xa000000
	.quad	Fzlib_decompress_region
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.2
	.quad	0
	.quad	0
	.size	Szlib_decompress_region, 48

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"zlib-available-p"
	.size	.L.str.3, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
