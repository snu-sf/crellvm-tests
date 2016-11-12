	.text
	.file	"gpmisc.bc"
	.globl	gp_gettmpdir
	.align	16, 0x90
	.type	gp_gettmpdir,@function
gp_gettmpdir:                           # @gp_gettmpdir
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
.Ltmp5:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	(%rbx), %ebp
	movl	$.L.str, %edi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	gp_getenv
	cmpl	$1, %eax
	jne	.LBB0_1
# BB#2:                                 # %if.end
	movl	%ebp, (%rbx)
	movl	$.L.str.1, %edi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	gp_getenv               # TAILCALL
.LBB0_1:                                # %cleanup
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gp_gettmpdir, .Lfunc_end0-gp_gettmpdir
	.cfi_endproc

	.globl	gp_fopentemp_64
	.align	16, 0x90
	.type	gp_fopentemp_64,@function
gp_fopentemp_64:                        # @gp_fopentemp_64
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp8:
	.cfi_def_cfa_offset 32
.Ltmp9:
	.cfi_offset %rbx, -32
.Ltmp10:
	.cfi_offset %r14, -24
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movl	$128, %esi
	movq	%r14, %rax
	jmp	.LBB1_1
	.align	16, 0x90
.LBB1_7:                                # %sw.bb.5.i
                                        #   in Loop: Header=BB1_1 Depth=1
	andl	$-4, %esi
	orl	$2, %esi
.LBB1_1:                                # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movsbl	(%rax), %ecx
	testl	%ecx, %ecx
	je	.LBB1_8
# BB#2:                                 # %while.body.i
                                        #   in Loop: Header=BB1_1 Depth=1
	incq	%rax
	cmpl	$43, %ecx
	je	.LBB1_7
# BB#3:                                 # %while.body.i
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	$119, %ecx
	jne	.LBB1_4
# BB#6:                                 # %sw.bb.3.i
                                        #   in Loop: Header=BB1_1 Depth=1
	orl	$577, %esi              # imm = 0x241
	jmp	.LBB1_1
	.align	16, 0x90
.LBB1_4:                                # %while.body.i
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	$97, %ecx
	jne	.LBB1_1
# BB#5:                                 # %sw.bb.i
                                        #   in Loop: Header=BB1_1 Depth=1
	orl	$1088, %esi             # imm = 0x440
	jmp	.LBB1_1
.LBB1_8:                                # %while.end.i
	xorl	%ebx, %ebx
	movl	$384, %edx              # imm = 0x180
	xorl	%eax, %eax
	callq	open64
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_11
# BB#9:                                 # %if.end.9.i
	movl	%ebp, %edi
	movq	%r14, %rsi
	callq	fdopen
	movq	%rax, %rbx
	testq	%rbx, %rbx
	jne	.LBB1_11
# BB#10:                                # %if.then.13.i
	movl	%ebp, %edi
	callq	close
	xorl	%ebx, %ebx
.LBB1_11:                               # %gp_fopentemp_generic.exit
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gp_fopentemp_64, .Lfunc_end1-gp_fopentemp_64
	.cfi_endproc

	.globl	gp_fopentemp
	.align	16, 0x90
	.type	gp_fopentemp,@function
gp_fopentemp:                           # @gp_fopentemp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 32
.Ltmp15:
	.cfi_offset %rbx, -32
.Ltmp16:
	.cfi_offset %r14, -24
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movl	$128, %esi
	movq	%r14, %rax
	jmp	.LBB2_1
	.align	16, 0x90
.LBB2_7:                                # %sw.bb.5.i
                                        #   in Loop: Header=BB2_1 Depth=1
	andl	$-4, %esi
	orl	$2, %esi
.LBB2_1:                                # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movsbl	(%rax), %ecx
	testl	%ecx, %ecx
	je	.LBB2_8
# BB#2:                                 # %while.body.i
                                        #   in Loop: Header=BB2_1 Depth=1
	incq	%rax
	cmpl	$43, %ecx
	je	.LBB2_7
# BB#3:                                 # %while.body.i
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$119, %ecx
	jne	.LBB2_4
# BB#6:                                 # %sw.bb.3.i
                                        #   in Loop: Header=BB2_1 Depth=1
	orl	$577, %esi              # imm = 0x241
	jmp	.LBB2_1
	.align	16, 0x90
.LBB2_4:                                # %while.body.i
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$97, %ecx
	jne	.LBB2_1
# BB#5:                                 # %sw.bb.i
                                        #   in Loop: Header=BB2_1 Depth=1
	orl	$1088, %esi             # imm = 0x440
	jmp	.LBB2_1
.LBB2_8:                                # %while.end.i
	xorl	%ebx, %ebx
	movl	$384, %edx              # imm = 0x180
	xorl	%eax, %eax
	callq	open64
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_11
# BB#9:                                 # %if.end.9.i
	movl	%ebp, %edi
	movq	%r14, %rsi
	callq	fdopen
	movq	%rax, %rbx
	testq	%rbx, %rbx
	jne	.LBB2_11
# BB#10:                                # %if.then.13.i
	movl	%ebp, %edi
	callq	close
	xorl	%ebx, %ebx
.LBB2_11:                               # %gp_fopentemp_generic.exit
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gp_fopentemp, .Lfunc_end2-gp_fopentemp
	.cfi_endproc

	.globl	gp_file_name_combine_generic
	.align	16, 0x90
	.type	gp_file_name_combine_generic,@function
gp_file_name_combine_generic:           # @gp_file_name_combine_generic
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
	pushq	%r13
.Ltmp21:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp22:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp24:
	.cfi_def_cfa_offset 160
.Ltmp25:
	.cfi_offset %rbx, -56
.Ltmp26:
	.cfi_offset %r12, -48
.Ltmp27:
	.cfi_offset %r13, -40
.Ltmp28:
	.cfi_offset %r14, -32
.Ltmp29:
	.cfi_offset %r15, -24
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%r9, %rbp
	movq	%rbp, 88(%rsp)          # 8-byte Spill
	movl	%r8d, 56(%rsp)          # 4-byte Spill
	movl	%ecx, %r13d
	movq	%rdx, %r14
	movl	%esi, %ebx
	movq	%rdi, %r12
	movq	160(%rsp), %r15
	movl	(%r15), %eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movq	%r14, %rdi
	movl	%r13d, %esi
	callq	gp_file_name_root
	testl	%r13d, %r13d
	je	.LBB3_5
# BB#1:                                 # %land.lhs.true
	movzbl	(%r14), %ecx
	cmpl	$37, %ecx
	jne	.LBB3_5
# BB#2:                                 # %if.then
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movl	%r13d, (%r15)
	movl	$-1, %r14d
	movq	80(%rsp), %rax          # 8-byte Reload
	cmpl	%r13d, %eax
	jb	.LBB3_70
# BB#3:                                 # %if.end.i
	movl	%r13d, %edx
.LBB3_4:                                # %cleanup.246
	callq	memcpy
	movl	$1, %r14d
	jmp	.LBB3_70
.LBB3_5:                                # %if.end.5
	testl	%eax, %eax
	je	.LBB3_7
# BB#6:                                 # %if.then.8
	movl	%r13d, %ecx
	leaq	(%rcx,%r14), %rcx
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	movq	%r14, %r12
	jmp	.LBB3_8
.LBB3_7:                                # %if.else
	movl	%ebx, %r15d
	movq	%r12, %rdi
	movl	%ebx, %esi
	callq	gp_file_name_root
	leaq	(%r15,%r12), %rcx
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	movq	88(%rsp), %rbp          # 8-byte Reload
.LBB3_8:                                # %if.end.14
	movl	%eax, %r15d
	movq	80(%rsp), %rcx          # 8-byte Reload
	cmpl	%eax, %ecx
	jb	.LBB3_69
# BB#9:                                 # %if.end.18
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movl	%eax, %ebx
	callq	memcpy
	leaq	(%rbp,%r15), %rdi
	movq	%rbp, 88(%rsp)          # 8-byte Spill
	movl	%ebx, %esi
	negl	%esi
	movq	%rdi, %rdx
	movq	%rdi, %rbp
	callq	gs_file_name_check_separator
	movl	%ebx, %ecx
	testl	%ecx, %ecx
	je	.LBB3_10
# BB#11:                                # %if.end.18
	testl	%eax, %eax
	jne	.LBB3_12
# BB#13:                                # %if.then.26
	movl	%ecx, 52(%rsp)          # 4-byte Spill
	movl	%r13d, 48(%rsp)         # 4-byte Spill
	movq	%r14, 40(%rsp)          # 8-byte Spill
	callq	gp_file_name_directory_separator
	movq	%rax, %r14
	movq	%r14, %rdi
	callq	strlen
	movq	%rax, %r13
	movq	80(%rsp), %rax          # 8-byte Reload
	subq	%r15, %rax
	movq	%r13, %rbx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	andq	%rcx, %rbx
	cmpq	%rbx, %rax
	jl	.LBB3_69
# BB#14:                                # %append.exit132.thread
	movq	%r14, %rsi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	memcpy
	addq	%rbx, %rbp
	addl	52(%rsp), %r13d         # 4-byte Folded Reload
	movl	%r13d, %ecx
	movq	88(%rsp), %rdx          # 8-byte Reload
	movq	40(%rsp), %r14          # 8-byte Reload
	movl	48(%rsp), %r13d         # 4-byte Reload
	jmp	.LBB3_15
.LBB3_10:
	movq	88(%rsp), %rdx          # 8-byte Reload
	jmp	.LBB3_15
.LBB3_12:
	movq	88(%rsp), %rdx          # 8-byte Reload
.LBB3_15:                               # %for.cond.preheader
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	movl	%ecx, 52(%rsp)          # 4-byte Spill
	movq	80(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rdx), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	addq	%r15, %r12
	movl	%ecx, %eax
	leaq	(%rax,%rdx), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movl	%r13d, %eax
	leaq	(%rax,%r14), %r15
	movq	%r15, 24(%rsp)          # 8-byte Spill
	movl	$0, 80(%rsp)            # 4-byte Folded Spill
	movl	$0, 60(%rsp)            # 4-byte Folded Spill
	movq	96(%rsp), %rbx          # 8-byte Reload
	jmp	.LBB3_16
.LBB3_72:                               # %cleanup.236.thread
                                        #   in Loop: Header=BB3_16 Depth=1
	movl	80(%rsp), %edx          # 4-byte Reload
	movl	%edx, %eax
	movq	64(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	cmpq	%rax, %rbp
	movl	$0, %eax
	cmovnel	%eax, %r15d
	addl	%edx, %r15d
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	addq	%rbx, %rbp
	movq	%r12, %r14
	movl	%r15d, %ecx
	movl	%ecx, 80(%rsp)          # 4-byte Spill
	movq	24(%rsp), %r15          # 8-byte Reload
	movq	%r15, %rbx
	movl	48(%rsp), %r13d         # 4-byte Reload
.LBB3_16:                               # %for.cond.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_17 Depth 2
                                        #       Child Loop BB3_19 Depth 3
                                        #       Child Loop BB3_44 Depth 3
                                        #       Child Loop BB3_49 Depth 3
                                        #     Child Loop BB3_65 Depth 2
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	movq	%r14, 40(%rsp)          # 8-byte Spill
	testl	%r13d, %r13d
	movl	%r13d, 48(%rsp)         # 4-byte Spill
	sete	%al
	cmpl	$0, 56(%rsp)            # 4-byte Folded Reload
	sete	%cl
	cmpq	%r15, %rbx
	setne	%dl
	orb	%al, %dl
	orb	%cl, %dl
	movb	%dl, 39(%rsp)           # 1-byte Spill
	.align	16, 0x90
.LBB3_17:                               # %for.cond
                                        #   Parent Loop BB3_16 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_19 Depth 3
                                        #       Child Loop BB3_44 Depth 3
                                        #       Child Loop BB3_49 Depth 3
	cmpq	%rbx, %r12
	movq	%r12, %r15
	js	.LBB3_19
# BB#18:                                #   in Loop: Header=BB3_17 Depth=2
	movq	%r12, %r15
	jmp	.LBB3_21
	.align	16, 0x90
.LBB3_19:                               # %for.body.i
                                        #   Parent Loop BB3_16 Depth=1
                                        #     Parent Loop BB3_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%ebx, %esi
	subl	%r15d, %esi
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	gs_file_name_check_separator
	movl	%eax, %r14d
	testl	%r14d, %r14d
	jne	.LBB3_22
# BB#20:                                # %for.inc.i
                                        #   in Loop: Header=BB3_19 Depth=3
	incq	%r15
	cmpq	%rbx, %r15
	js	.LBB3_19
.LBB3_21:                               #   in Loop: Header=BB3_17 Depth=2
	xorl	%r14d, %r14d
.LBB3_22:                               # %search_separator.exit
                                        #   in Loop: Header=BB3_17 Depth=2
	movq	%r15, %r13
	subq	%r12, %r13
	testl	%r13d, %r13d
	jne	.LBB3_25
# BB#23:                                # %land.lhs.true.42
                                        #   in Loop: Header=BB3_17 Depth=2
	callq	gp_file_name_is_empty_item_meanful
	testl	%eax, %eax
	je	.LBB3_24
.LBB3_25:                               # %if.else.48
                                        #   in Loop: Header=BB3_17 Depth=2
	movq	%r12, %rdi
	movl	%r13d, %esi
	callq	gp_file_name_is_current
	testl	%eax, %eax
	je	.LBB3_31
# BB#26:                                # %if.then.51
                                        #   in Loop: Header=BB3_17 Depth=2
	cmpq	88(%rsp), %rbp          # 8-byte Folded Reload
	je	.LBB3_27
.LBB3_24:                               # %if.then.45
                                        #   in Loop: Header=BB3_17 Depth=2
	movl	%r14d, %eax
	addq	%rax, %r15
	movb	$1, %cl
	jmp	.LBB3_55
	.align	16, 0x90
.LBB3_31:                               # %if.else.63
                                        #   in Loop: Header=BB3_17 Depth=2
	movq	%r12, %rdi
	movl	%r13d, %esi
	callq	gp_file_name_is_parent
	testl	%eax, %eax
	je	.LBB3_32
# BB#34:                                # %if.else.71
                                        #   in Loop: Header=BB3_17 Depth=2
	movl	80(%rsp), %eax          # 4-byte Reload
	movq	64(%rsp), %r14          # 8-byte Reload
	leaq	(%rax,%r14), %rax
	cmpq	%rax, %rbp
	je	.LBB3_35
# BB#43:                                # %if.else.110
                                        #   in Loop: Header=BB3_17 Depth=2
	movl	%r14d, %esi
	subl	%ebp, %esi
	movq	%rbp, %rdi
	movq	%rbp, %rdx
	callq	gs_file_name_check_separator
	movl	%eax, %eax
	subq	%rax, %rbp
	cmpq	%rbp, %r14
	movq	%rbp, %rbx
	movq	%r14, %r13
	movq	96(%rsp), %r14          # 8-byte Reload
	movq	%rbp, %r12
	jns	.LBB3_46
	.align	16, 0x90
.LBB3_44:                               # %for.body.i.181
                                        #   Parent Loop BB3_16 Depth=1
                                        #     Parent Loop BB3_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%r13d, %esi
	subl	%ebx, %esi
	movq	%rbx, %rdi
	movq	%r12, %rdx
	callq	gs_file_name_check_separator
	testl	%eax, %eax
	jne	.LBB3_46
# BB#45:                                # %for.inc.i.186
                                        #   in Loop: Header=BB3_44 Depth=3
	decq	%rbx
	cmpq	%rbx, %r13
	js	.LBB3_44
.LBB3_46:                               # %search_separator.exit188
                                        #   in Loop: Header=BB3_17 Depth=2
	movl	%r14d, %esi
	subl	%r15d, %esi
	movq	%r15, %rdi
	movq	%r15, %rdx
	callq	gs_file_name_check_separator
	movl	%eax, %eax
	addq	%rax, %r15
	cmpl	$0, 56(%rsp)            # 4-byte Folded Reload
	movb	$1, %cl
	je	.LBB3_47
# BB#48:                                # %if.then.131
                                        #   in Loop: Header=BB3_17 Depth=2
	cmpq	%r14, %r15
	movq	%r15, %rbp
	jns	.LBB3_51
	.align	16, 0x90
.LBB3_49:                               # %for.body.i.198
                                        #   Parent Loop BB3_16 Depth=1
                                        #     Parent Loop BB3_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%r14d, %esi
	subl	%ebp, %esi
	movq	%rbp, %rdi
	movq	%r15, %rdx
	callq	gs_file_name_check_separator
	testl	%eax, %eax
	jne	.LBB3_51
# BB#50:                                # %for.inc.i.203
                                        #   in Loop: Header=BB3_49 Depth=3
	incq	%rbp
	cmpq	%r14, %rbp
	js	.LBB3_49
.LBB3_51:                               # %search_separator.exit205
                                        #   in Loop: Header=BB3_17 Depth=2
	subq	%r15, %rbp
	subq	%rbx, %r12
	movq	%r12, %rax
	xorl	%r14d, %r14d
	cmpq	%rax, %rbp
	jne	.LBB3_70
# BB#52:                                # %lor.lhs.false.141
                                        #   in Loop: Header=BB3_17 Depth=2
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	callq	memcmp
	testl	%eax, %eax
	movq	%rbx, %rbp
	movb	$1, %cl
	je	.LBB3_55
	jmp	.LBB3_70
	.align	16, 0x90
.LBB3_27:                               # %if.then.54
                                        #   in Loop: Header=BB3_17 Depth=2
	movq	72(%rsp), %rax          # 8-byte Reload
	subq	%rbp, %rax
	movq	%r13, %rbx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	andq	%rcx, %rbx
	cmpq	%rbx, %rax
	jl	.LBB3_69
# BB#28:                                # %append.exit149
                                        #   in Loop: Header=BB3_17 Depth=2
	movq	88(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	leaq	(%rbx,%rbp), %rbp
	movl	$1, 60(%rsp)            # 4-byte Folded Spill
	jmp	.LBB3_29
.LBB3_32:                               # %if.then.66
                                        #   in Loop: Header=BB3_17 Depth=2
	movq	72(%rsp), %rax          # 8-byte Reload
	subq	%rbp, %rax
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	andq	%rcx, %r13
	cmpq	%r13, %rax
	jl	.LBB3_69
# BB#33:                                # %append.exit160
                                        #   in Loop: Header=BB3_17 Depth=2
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	memcpy
	addq	%r13, %rbp
	movl	80(%rsp), %eax          # 4-byte Reload
	movl	%eax, %r13d
	jmp	.LBB3_29
.LBB3_35:                               # %if.then.78
                                        #   in Loop: Header=BB3_17 Depth=2
	xorl	%r14d, %r14d
	movl	52(%rsp), %eax          # 4-byte Reload
	testl	%eax, %eax
	jne	.LBB3_70
# BB#36:                                # %if.end.82
                                        #   in Loop: Header=BB3_17 Depth=2
	movl	60(%rsp), %eax          # 4-byte Reload
	testl	%eax, %eax
	je	.LBB3_39
# BB#37:                                # %if.end.82
                                        #   in Loop: Header=BB3_17 Depth=2
	cmpl	$1, %eax
	jne	.LBB3_41
# BB#38:                                # %sw.bb
                                        #   in Loop: Header=BB3_17 Depth=2
	movl	$0, 80(%rsp)            # 4-byte Folded Spill
	movq	64(%rsp), %rbp          # 8-byte Reload
.LBB3_39:                               # %sw.bb.85
                                        #   in Loop: Header=BB3_17 Depth=2
	cmpb	$0, 39(%rsp)            # 1-byte Folded Reload
	je	.LBB3_70
# BB#40:                                # %lor.lhs.false
                                        #   in Loop: Header=BB3_17 Depth=2
	callq	gp_file_name_is_parent_allowed
	testl	%eax, %eax
	je	.LBB3_70
.LBB3_41:                               # %sw.epilog
                                        #   in Loop: Header=BB3_17 Depth=2
	movq	72(%rsp), %rax          # 8-byte Reload
	subq	%rbp, %rax
	movq	%r13, %rbx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	andq	%rcx, %rbx
	cmpq	%rbx, %rax
	jl	.LBB3_69
# BB#42:                                # %if.end.103
                                        #   in Loop: Header=BB3_17 Depth=2
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	addq	%rbx, %rbp
	movl	80(%rsp), %ebx          # 4-byte Reload
	addl	%r13d, %ebx
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	%eax, %esi
	subl	%r15d, %esi
	movq	%r15, %rdi
	movq	%r15, %rdx
	callq	gs_file_name_check_separator
	movl	%eax, %r14d
	movl	$2, 60(%rsp)            # 4-byte Folded Spill
	movl	%ebx, %r13d
	.align	16, 0x90
.LBB3_29:                               # %if.end.160
                                        #   in Loop: Header=BB3_17 Depth=2
	testl	%r14d, %r14d
	je	.LBB3_30
# BB#53:                                # %if.then.162
                                        #   in Loop: Header=BB3_17 Depth=2
	movq	72(%rsp), %rax          # 8-byte Reload
	subq	%rbp, %rax
	movl	%r14d, %ebx
	cmpq	%rbx, %rax
	jl	.LBB3_69
# BB#54:                                # %append.exit216
                                        #   in Loop: Header=BB3_17 Depth=2
	movl	%r13d, %eax
	movq	64(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	xorl	%ecx, %ecx
	cmpq	%rax, %rbp
	cmovnel	%ecx, %r14d
	addl	%r13d, %r14d
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	xorl	%ecx, %ecx
	addq	%rbx, %rbp
	addq	%rbx, %r15
	movl	%r14d, 80(%rsp)         # 4-byte Spill
	jmp	.LBB3_55
.LBB3_30:                               #   in Loop: Header=BB3_17 Depth=2
	movb	$1, %cl
	movl	%r13d, %eax
	movl	%eax, 80(%rsp)          # 4-byte Spill
	jmp	.LBB3_55
.LBB3_47:                               #   in Loop: Header=BB3_17 Depth=2
	movq	%rbx, %rbp
	.align	16, 0x90
.LBB3_55:                               # %if.end.176
                                        #   in Loop: Header=BB3_17 Depth=2
	movq	96(%rsp), %rbx          # 8-byte Reload
	cmpq	%rbx, %r15
	movq	%r15, %r12
	jne	.LBB3_17
# BB#56:                                # %if.then.179
                                        #   in Loop: Header=BB3_16 Depth=1
	movq	24(%rsp), %r15          # 8-byte Reload
	cmpq	%r15, %rbx
	je	.LBB3_57
# BB#63:                                # %if.else.209
                                        #   in Loop: Header=BB3_16 Depth=1
	testb	%cl, %cl
	movq	40(%rsp), %r14          # 8-byte Reload
	movq	%r14, %r12
	movq	%r15, %rbx
	movl	48(%rsp), %r13d         # 4-byte Reload
	je	.LBB3_16
# BB#64:                                # %if.then.214
                                        #   in Loop: Header=BB3_16 Depth=1
	testl	%r13d, %r13d
	movq	%r14, %rbx
	je	.LBB3_67
	.align	16, 0x90
.LBB3_65:                               # %for.body.i.247
                                        #   Parent Loop BB3_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r15d, %esi
	subl	%ebx, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	gs_file_name_check_separator
	testl	%eax, %eax
	jne	.LBB3_71
# BB#66:                                # %for.inc.i.252
                                        #   in Loop: Header=BB3_65 Depth=2
	incq	%rbx
	cmpq	%r15, %rbx
	js	.LBB3_65
.LBB3_67:                               # %cond.false
                                        #   in Loop: Header=BB3_16 Depth=1
	movq	%r14, %r12
	callq	gp_file_name_separator
	jmp	.LBB3_68
.LBB3_71:                               # %cond.true
                                        #   in Loop: Header=BB3_16 Depth=1
	movq	%r14, %r12
	callq	gp_file_name_directory_separator
.LBB3_68:                               # %cond.end
                                        #   in Loop: Header=BB3_16 Depth=1
	movq	%rax, %r14
	movq	%r14, %rdi
	callq	strlen
	movq	%rax, %r15
	movq	72(%rsp), %rax          # 8-byte Reload
	subq	%rbp, %rax
	movq	%r15, %rbx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	andq	%rcx, %rbx
	cmpq	%rbx, %rax
	jge	.LBB3_72
	jmp	.LBB3_69
.LBB3_57:                               # %if.then.184
	movl	$4294967295, %r12d      # imm = 0xFFFFFFFF
	movq	88(%rsp), %rax          # 8-byte Reload
	cmpq	%rax, %rbp
	je	.LBB3_59
# BB#58:
	movq	%rax, %rcx
	movq	160(%rsp), %rbx
	jmp	.LBB3_61
.LBB3_59:                               # %if.then.187
	movq	%rax, %r15
	callq	gp_file_name_current
	movq	%rbp, %rbx
	movq	%rax, %r14
	movq	%r14, %rdi
	callq	strlen
	movq	%rax, %rbp
	movq	72(%rsp), %rax          # 8-byte Reload
	subq	%rbx, %rax
	andq	%r12, %rbp
	cmpq	%rbp, %rax
	movq	160(%rsp), %rbx
	jge	.LBB3_60
.LBB3_69:
	movl	$-1, %r14d
.LBB3_70:                               # %cleanup.246
	movl	%r14d, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_60:                               # %append.exit227.thread
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbp, %rdx
	callq	memcpy
	leaq	(%rbp,%r15), %rbp
	movq	%r15, %rcx
.LBB3_61:                               # %if.end.199
	movl	%ebp, %eax
	subl	%ecx, %eax
	movl	%eax, (%rbx)
	movq	72(%rsp), %rax          # 8-byte Reload
	subq	%rbp, %rax
	testq	%rax, %rax
	movl	$-1, %r14d
	jle	.LBB3_70
# BB#62:                                # %if.end.i.235
	movl	$.L.str.2, %esi
	movl	$1, %edx
	movq	%rbp, %rdi
	jmp	.LBB3_4
.Lfunc_end3:
	.size	gp_file_name_combine_generic, .Lfunc_end3-gp_file_name_combine_generic
	.cfi_endproc

	.globl	gp_file_name_reduce
	.align	16, 0x90
	.type	gp_file_name_reduce,@function
gp_file_name_reduce:                    # @gp_file_name_reduce
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp31:
	.cfi_def_cfa_offset 16
	movq	%rdx, %rax
	movl	%esi, %edx
	movq	%rcx, (%rsp)
	leaq	(%rdx,%rdi), %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%rax, %r9
	callq	gp_file_name_combine
	popq	%rdx
	retq
.Lfunc_end4:
	.size	gp_file_name_reduce, .Lfunc_end4-gp_file_name_reduce
	.cfi_endproc

	.globl	gp_file_name_is_absolute
	.align	16, 0x90
	.type	gp_file_name_is_absolute,@function
gp_file_name_is_absolute:               # @gp_file_name_is_absolute
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp32:
	.cfi_def_cfa_offset 16
	callq	gp_file_name_root
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	popq	%rdx
	retq
.Lfunc_end5:
	.size	gp_file_name_is_absolute, .Lfunc_end5-gp_file_name_is_absolute
	.cfi_endproc

	.globl	gp_file_name_parents
	.align	16, 0x90
	.type	gp_file_name_parents,@function
gp_file_name_parents:                   # @gp_file_name_parents
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp34:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp35:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp36:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp37:
	.cfi_def_cfa_offset 48
.Ltmp38:
	.cfi_offset %rbx, -48
.Ltmp39:
	.cfi_offset %r12, -40
.Ltmp40:
	.cfi_offset %r14, -32
.Ltmp41:
	.cfi_offset %r15, -24
.Ltmp42:
	.cfi_offset %rbp, -16
	movl	%esi, %ebx
	movq	%rdi, %r14
	callq	gp_file_name_root
	xorl	%r15d, %r15d
	testl	%eax, %eax
	jne	.LBB6_11
# BB#1:                                 # %if.end.i
	movl	%ebx, %eax
	testl	%ebx, %ebx
	movq	%r14, %r15
	je	.LBB6_10
# BB#2:                                 # %for.body.lr.ph.i
	leaq	(%rax,%r14), %r12
	movq	%r14, %rbx
	.align	16, 0x90
.LBB6_3:                                # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_5 Depth 2
	movq	%rbx, %r15
	cmpq	%r12, %r15
	js	.LBB6_5
# BB#4:                                 #   in Loop: Header=BB6_3 Depth=1
	movq	%r15, %rbx
	jmp	.LBB6_7
	.align	16, 0x90
.LBB6_5:                                # %for.body.i.i
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r12d, %esi
	subl	%ebx, %esi
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	gs_file_name_check_separator
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB6_8
# BB#6:                                 # %for.inc.i.i
                                        #   in Loop: Header=BB6_5 Depth=2
	incq	%rbx
	cmpq	%r12, %rbx
	js	.LBB6_5
.LBB6_7:                                #   in Loop: Header=BB6_3 Depth=1
	xorl	%ebp, %ebp
.LBB6_8:                                # %search_separator.exit.i
                                        #   in Loop: Header=BB6_3 Depth=1
	movl	%ebx, %esi
	subl	%r15d, %esi
	movq	%r15, %rdi
	callq	gp_file_name_is_parent
	testl	%eax, %eax
	je	.LBB6_10
# BB#9:                                 # %if.end.7.i
                                        #   in Loop: Header=BB6_3 Depth=1
	movl	%ebp, %eax
	addq	%rax, %rbx
	cmpq	%r12, %rbx
	jb	.LBB6_3
.LBB6_10:                               # %for.end.i
	subl	%r14d, %r15d
.LBB6_11:                               # %gp_file_name_prefix.exit
	movl	%r15d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gp_file_name_parents, .Lfunc_end6-gp_file_name_parents
	.cfi_endproc

	.globl	gp_file_name_cwds
	.align	16, 0x90
	.type	gp_file_name_cwds,@function
gp_file_name_cwds:                      # @gp_file_name_cwds
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp44:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp45:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp46:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp47:
	.cfi_def_cfa_offset 48
.Ltmp48:
	.cfi_offset %rbx, -48
.Ltmp49:
	.cfi_offset %r12, -40
.Ltmp50:
	.cfi_offset %r14, -32
.Ltmp51:
	.cfi_offset %r15, -24
.Ltmp52:
	.cfi_offset %rbp, -16
	movl	%esi, %ebx
	movq	%rdi, %r14
	callq	gp_file_name_root
	xorl	%r15d, %r15d
	testl	%eax, %eax
	jne	.LBB7_11
# BB#1:                                 # %if.end.i
	movl	%ebx, %eax
	testl	%ebx, %ebx
	movq	%r14, %r15
	je	.LBB7_10
# BB#2:                                 # %for.body.lr.ph.i
	leaq	(%rax,%r14), %r12
	movq	%r14, %rbx
	.align	16, 0x90
.LBB7_3:                                # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_5 Depth 2
	movq	%rbx, %r15
	cmpq	%r12, %r15
	js	.LBB7_5
# BB#4:                                 #   in Loop: Header=BB7_3 Depth=1
	movq	%r15, %rbx
	jmp	.LBB7_7
	.align	16, 0x90
.LBB7_5:                                # %for.body.i.i
                                        #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r12d, %esi
	subl	%ebx, %esi
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	gs_file_name_check_separator
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB7_8
# BB#6:                                 # %for.inc.i.i
                                        #   in Loop: Header=BB7_5 Depth=2
	incq	%rbx
	cmpq	%r12, %rbx
	js	.LBB7_5
.LBB7_7:                                #   in Loop: Header=BB7_3 Depth=1
	xorl	%ebp, %ebp
.LBB7_8:                                # %search_separator.exit.i
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	%ebx, %esi
	subl	%r15d, %esi
	movq	%r15, %rdi
	callq	gp_file_name_is_current
	testl	%eax, %eax
	je	.LBB7_10
# BB#9:                                 # %if.end.7.i
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	%ebp, %eax
	addq	%rax, %rbx
	cmpq	%r12, %rbx
	jb	.LBB7_3
.LBB7_10:                               # %for.end.i
	subl	%r14d, %r15d
.LBB7_11:                               # %gp_file_name_prefix.exit
	movl	%r15d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gp_file_name_cwds, .Lfunc_end7-gp_file_name_cwds
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"TMPDIR"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"TEMP"
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.zero	1
	.size	.L.str.2, 1


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
