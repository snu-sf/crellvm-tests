	.text
	.file	"cmds.bc"
	.globl	Fforward_point
	.align	16, 0x90
	.type	Fforward_point,@function
Fforward_point:                         # @Fforward_point
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB0_2
# BB#1:                                 # %cond.true
	jmp	.LBB0_3
.LBB0_2:                                # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB0_3:                                # %cond.end
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	-8(%rbp), %rcx
	sarq	$2, %rcx
	addq	%rcx, %rax
	shlq	$2, %rax
	addq	$2, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	Fforward_point, .Lfunc_end0-Fforward_point
	.cfi_endproc

	.globl	Fforward_char
	.align	16, 0x90
	.type	Fforward_char,@function
Fforward_char:                          # @Fforward_char
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
	movl	$1, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	move_point
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	Fforward_char, .Lfunc_end1-Fforward_char
	.cfi_endproc

	.align	16, 0x90
	.type	move_point,@function
move_point:                             # @move_point
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
	subq	$64, %rsp
	movb	%sil, %al
	xorl	%esi, %esi
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movl	%esi, %edi
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %edi
	callq	make_natnum
	movq	%rax, -8(%rbp)
	jmp	.LBB2_6
.LBB2_2:                                # %if.else
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB2_4
# BB#3:                                 # %cond.true
	jmp	.LBB2_5
.LBB2_4:                                # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB2_5:                                # %cond.end
	jmp	.LBB2_6
.LBB2_6:                                # %if.end
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	testb	$1, -9(%rbp)
	movq	%rax, -48(%rbp)         # 8-byte Spill
	je	.LBB2_8
# BB#7:                                 # %cond.true.7
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB2_9
.LBB2_8:                                # %cond.false.8
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	sarq	$2, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
.LBB2_9:                                # %cond.end.10
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	-48(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	jge	.LBB2_11
# BB#10:                                # %if.then.14
	movq	current_buffer, %rax
	movq	752(%rax), %rdi
	callq	set_point
	movl	$200, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	xsignal0
.LBB2_11:                               # %if.end.17
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jle	.LBB2_13
# BB#12:                                # %if.then.20
	movq	current_buffer, %rax
	movq	768(%rax), %rdi
	callq	set_point
	movl	$366, %edi              # imm = 0x16E
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	xsignal0
.LBB2_13:                               # %if.end.23
	movq	-24(%rbp), %rdi
	callq	set_point
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	move_point, .Lfunc_end2-move_point
	.cfi_endproc

	.globl	Fbackward_char
	.align	16, 0x90
	.type	Fbackward_char,@function
Fbackward_char:                         # @Fbackward_char
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
	xorl	%esi, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	move_point
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	Fbackward_char, .Lfunc_end3-Fbackward_char
	.cfi_endproc

	.globl	Fforward_line
	.align	16, 0x90
	.type	Fforward_line,@function
Fforward_line:                          # @Fforward_line
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	current_buffer, %rdi
	movq	736(%rdi), %rdi
	addq	$0, %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	$1, -48(%rbp)
	jmp	.LBB4_6
.LBB4_2:                                # %if.else
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB4_4
# BB#3:                                 # %cond.true
	jmp	.LBB4_5
.LBB4_4:                                # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB4_5:                                # %cond.end
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -48(%rbp)
.LBB4_6:                                # %if.end
	leaq	-24(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	movq	-48(%rbp), %rdi
	callq	scan_newline_from_point
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	set_point_both
	cmpq	$0, -40(%rbp)
	jle	.LBB4_15
# BB#7:                                 # %land.lhs.true
	cmpq	$0, -48(%rbp)
	jle	.LBB4_14
# BB#8:                                 # %lor.lhs.false
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	jle	.LBB4_15
# BB#9:                                 # %land.lhs.true.12
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	cmpq	-16(%rbp), %rax
	je	.LBB4_15
# BB#10:                                # %land.lhs.true.17
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	subq	$1, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB4_12
# BB#11:                                # %cond.true.21
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB4_13
.LBB4_12:                               # %cond.false.23
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB4_13
.LBB4_13:                               # %cond.end.24
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	current_buffer, %rcx
	movq	744(%rcx), %rcx
	addq	$0, %rcx
	subq	$1, %rcx
	addq	%rcx, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	cmpl	$10, %edx
	je	.LBB4_15
.LBB4_14:                               # %if.then.34
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
.LBB4_15:                               # %if.end.35
	cmpq	$0, -48(%rbp)
	jg	.LBB4_17
# BB#16:                                # %cond.true.38
	xorl	%eax, %eax
	movl	%eax, %ecx
	subq	-40(%rbp), %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB4_18
.LBB4_17:                               # %cond.false.40
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB4_18:                               # %cond.end.41
	movq	-80(%rbp), %rax         # 8-byte Reload
	shlq	$2, %rax
	addq	$2, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	Fforward_line, .Lfunc_end4-Fforward_line
	.cfi_endproc

	.globl	Fbeginning_of_line
	.align	16, 0x90
	.type	Fbeginning_of_line,@function
Fbeginning_of_line:                     # @Fbeginning_of_line
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %edi
	callq	make_natnum
	movq	%rax, -8(%rbp)
	jmp	.LBB5_6
.LBB5_2:                                # %if.else
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB5_4
# BB#3:                                 # %cond.true
	jmp	.LBB5_5
.LBB5_4:                                # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB5_5:                                # %cond.end
	jmp	.LBB5_6
.LBB5_6:                                # %if.end
	movq	-8(%rbp), %rdi
	callq	Fline_beginning_position
	sarq	$2, %rax
	movq	%rax, %rdi
	callq	set_point
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	Fbeginning_of_line, .Lfunc_end5-Fbeginning_of_line
	.cfi_endproc

	.globl	Fend_of_line
	.align	16, 0x90
	.type	Fend_of_line,@function
Fend_of_line:                           # @Fend_of_line
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %edi
	callq	make_natnum
	movq	%rax, -8(%rbp)
	jmp	.LBB6_6
.LBB6_2:                                # %if.else
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB6_4
# BB#3:                                 # %cond.true
	jmp	.LBB6_5
.LBB6_4:                                # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB6_5:                                # %cond.end
	jmp	.LBB6_6
.LBB6_6:                                # %if.end
	jmp	.LBB6_7
.LBB6_7:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	callq	Fline_end_position
	sarq	$2, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	set_point
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	cmpq	-16(%rbp), %rax
	jle	.LBB6_16
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB6_7 Depth=1
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB6_10
# BB#9:                                 # %cond.true.12
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	subq	$1, %rax
	movq	%rax, %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB6_14
.LBB6_10:                               # %cond.false.16
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	subq	$1, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB6_12
# BB#11:                                # %cond.true.22
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB6_13
.LBB6_12:                               # %cond.false.24
                                        #   in Loop: Header=BB6_7 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB6_13
.LBB6_13:                               # %cond.end.25
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	subq	$1, %rcx
	addq	%rcx, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -44(%rbp)         # 4-byte Spill
.LBB6_14:                               # %cond.end.33
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	-44(%rbp), %eax         # 4-byte Reload
	cmpl	$10, %eax
	jne	.LBB6_16
# BB#15:                                # %if.then.37
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	subq	$1, %rax
	movq	%rax, %rdi
	callq	set_point
	jmp	.LBB6_29
.LBB6_16:                               # %if.else.41
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	cmpq	-16(%rbp), %rax
	jle	.LBB6_26
# BB#17:                                # %land.lhs.true.46
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jge	.LBB6_26
# BB#18:                                # %land.lhs.true.51
                                        #   in Loop: Header=BB6_7 Depth=1
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB6_20
# BB#19:                                # %cond.true.56
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB6_24
.LBB6_20:                               # %cond.false.60
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB6_22
# BB#21:                                # %cond.true.67
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB6_23
.LBB6_22:                               # %cond.false.70
                                        #   in Loop: Header=BB6_7 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB6_23
.LBB6_23:                               # %cond.end.71
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	addq	%rcx, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -68(%rbp)         # 4-byte Spill
.LBB6_24:                               # %cond.end.81
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	cmpl	$10, %eax
	je	.LBB6_26
# BB#25:                                # %if.then.85
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	$6, -8(%rbp)
	jmp	.LBB6_27
.LBB6_26:                               # %if.else.86
	jmp	.LBB6_29
.LBB6_27:                               # %if.end.87
                                        #   in Loop: Header=BB6_7 Depth=1
	jmp	.LBB6_28
.LBB6_28:                               # %if.end.88
                                        #   in Loop: Header=BB6_7 Depth=1
	jmp	.LBB6_7
.LBB6_29:                               # %while.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	Fend_of_line, .Lfunc_end6-Fend_of_line
	.cfi_endproc

	.globl	Fdelete_char
	.align	16, 0x90
	.type	Fdelete_char,@function
Fdelete_char:                           # @Fdelete_char
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB7_2
# BB#1:                                 # %cond.true
	jmp	.LBB7_3
.LBB7_2:                                # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB7_3:                                # %cond.end
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB7_5
# BB#4:                                 # %cond.true.5
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	sarq	$2, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB7_6
.LBB7_5:                                # %cond.false.7
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB7_6:                                # %cond.end.9
	movq	-40(%rbp), %rax         # 8-byte Reload
	cmpq	$2, %rax
	jge	.LBB7_8
# BB#7:                                 # %if.then
	movl	$968, %edi              # imm = 0x3C8
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	call0
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB7_8:                                # %if.end
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	-8(%rbp), %rcx
	sarq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB7_19
# BB#9:                                 # %if.then.19
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB7_14
# BB#10:                                # %if.then.23
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	jge	.LBB7_12
# BB#11:                                # %if.then.26
	movl	$200, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	xsignal0
.LBB7_12:                               # %if.else
	movq	-24(%rbp), %rdi
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, %rsi
	callq	del_range
# BB#13:                                # %if.end.30
	jmp	.LBB7_18
.LBB7_14:                               # %if.else.31
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jle	.LBB7_16
# BB#15:                                # %if.then.34
	movl	$366, %edi              # imm = 0x16E
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	xsignal0
.LBB7_16:                               # %if.else.36
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	del_range
# BB#17:                                # %if.end.39
	jmp	.LBB7_18
.LBB7_18:                               # %if.end.40
	jmp	.LBB7_20
.LBB7_19:                               # %if.else.41
	movl	$596, %edi              # imm = 0x254
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	call1
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB7_20:                               # %if.end.44
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	Fdelete_char, .Lfunc_end7-Fdelete_char
	.cfi_endproc

	.globl	Fself_insert_command
	.align	16, 0x90
	.type	Fself_insert_command,@function
Fself_insert_command:                   # @Fself_insert_command
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB8_2
# BB#1:                                 # %cond.true
	jmp	.LBB8_3
.LBB8_2:                                # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB8_3:                                # %cond.end
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB8_5
# BB#4:                                 # %if.then
	movabsq	$.L.str, %rdi
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB8_5:                                # %if.end
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2, %rax
	jge	.LBB8_7
# BB#6:                                 # %if.then.9
	movl	$968, %edi              # imm = 0x3C8
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	call0
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB8_7:                                # %if.end.12
	movq	globals+3000, %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB8_8
	jmp	.LBB8_9
.LBB8_8:                                # %land.lhs.true
	movq	globals+3000, %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jle	.LBB8_10
.LBB8_9:                                # %if.then.18
	callq	bitch_at_user
	jmp	.LBB8_17
.LBB8_10:                               # %if.else
	movq	globals+2456, %rdi
	movq	globals+3000, %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	callq	translate_char
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %edi
	movq	-8(%rbp), %rdx
	sarq	$2, %rdx
	movq	%rdx, %rsi
	callq	internal_self_insert
	movl	%eax, -16(%rbp)
	cmpl	$2, -16(%rbp)
	jne	.LBB8_12
# BB#11:                                # %if.then.26
	movl	$964, %edi              # imm = 0x3C4
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fset
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB8_12:                               # %if.end.30
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB8_13
	jmp	.LBB8_15
.LBB8_13:                               # %land.lhs.true.33
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB8_15
# BB#14:                                # %cond.true.36
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB8_16
.LBB8_15:                               # %cond.false.38
	callq	emacs_abort
.LBB8_16:                               # %cond.end.39
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	frame_make_pointer_invisible
.LBB8_17:                               # %if.end.40
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	Fself_insert_command, .Lfunc_end8-Fself_insert_command
	.cfi_endproc

	.align	16, 0x90
	.type	internal_self_insert,@function
internal_self_insert:                   # @internal_self_insert
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
	subq	$544, %rsp              # imm = 0x220
	xorl	%eax, %eax
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	current_buffer, %rsi
	movq	280(%rsi), %rsi
	movq	%rsi, -48(%rbp)
	movq	globals+104, %rsi
	movl	%eax, %edi
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB9_2
# BB#1:                                 # %lor.lhs.false
	xorl	%edi, %edi
	movq	globals, %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_3
.LBB9_2:                                # %if.then
	movl	$1, -20(%rbp)
.LBB9_3:                                # %if.end
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_22
# BB#4:                                 # %if.then.5
	movb	$1, %al
	testb	$1, %al
	jne	.LBB9_5
	jmp	.LBB9_6
.LBB9_5:                                # %cond.true
	movl	-8(%rbp), %eax
	addl	$0, %eax
	cmpl	$127, %eax
	jbe	.LBB9_7
	jmp	.LBB9_8
.LBB9_6:                                # %cond.false
	movslq	-8(%rbp), %rax
	addq	$0, %rax
	cmpq	$127, %rax
	ja	.LBB9_8
.LBB9_7:                                # %cond.true.10
	movl	$1, %eax
	movl	-8(%rbp), %ecx
	movb	%cl, %dl
	movb	%dl, -57(%rbp)
	movl	%eax, -260(%rbp)        # 4-byte Spill
	jmp	.LBB9_19
.LBB9_8:                                # %cond.false.12
	movb	$1, %al
	testb	$1, %al
	jne	.LBB9_9
	jmp	.LBB9_10
.LBB9_9:                                # %cond.true.13
	movl	-8(%rbp), %eax
	addl	$0, %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	jbe	.LBB9_11
	jmp	.LBB9_12
.LBB9_10:                               # %cond.false.17
	movslq	-8(%rbp), %rax
	addq	$0, %rax
	cmpq	$2047, %rax             # imm = 0x7FF
	ja	.LBB9_12
.LBB9_11:                               # %cond.true.22
	movl	$2, %eax
	movl	-8(%rbp), %ecx
	sarl	$6, %ecx
	orl	$192, %ecx
	movb	%cl, %dl
	movb	%dl, -57(%rbp)
	movl	-8(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -56(%rbp)
	movl	%eax, -264(%rbp)        # 4-byte Spill
	jmp	.LBB9_18
.LBB9_12:                               # %cond.false.28
	movb	$1, %al
	testb	$1, %al
	jne	.LBB9_13
	jmp	.LBB9_14
.LBB9_13:                               # %cond.true.29
	movl	-8(%rbp), %eax
	addl	$0, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jbe	.LBB9_15
	jmp	.LBB9_16
.LBB9_14:                               # %cond.false.33
	movslq	-8(%rbp), %rax
	addq	$0, %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	ja	.LBB9_16
.LBB9_15:                               # %cond.true.38
	movl	$3, %eax
	movl	-8(%rbp), %ecx
	sarl	$12, %ecx
	orl	$224, %ecx
	movb	%cl, %dl
	movb	%dl, -57(%rbp)
	movl	-8(%rbp), %ecx
	sarl	$6, %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -56(%rbp)
	movl	-8(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -55(%rbp)
	movl	%eax, -268(%rbp)        # 4-byte Spill
	jmp	.LBB9_17
.LBB9_16:                               # %cond.false.52
	leaq	-57(%rbp), %rsi
	movl	-8(%rbp), %edi
	callq	char_string
	movl	%eax, -268(%rbp)        # 4-byte Spill
.LBB9_17:                               # %cond.end
	movl	-268(%rbp), %eax        # 4-byte Reload
	movl	%eax, -264(%rbp)        # 4-byte Spill
.LBB9_18:                               # %cond.end.54
	movl	-264(%rbp), %eax        # 4-byte Reload
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB9_19:                               # %cond.end.56
	movl	-260(%rbp), %eax        # 4-byte Reload
	movl	%eax, -52(%rbp)
	cmpl	$1, -52(%rbp)
	jne	.LBB9_21
# BB#20:                                # %if.then.60
	movzbl	-57(%rbp), %eax
	movl	%eax, -8(%rbp)
.LBB9_21:                               # %if.end.63
	jmp	.LBB9_31
.LBB9_22:                               # %if.else
	movb	$1, %al
	testb	$1, %al
	jne	.LBB9_23
	jmp	.LBB9_24
.LBB9_23:                               # %cond.true.64
	movl	-8(%rbp), %eax
	addl	$0, %eax
	cmpl	$256, %eax              # imm = 0x100
	jb	.LBB9_25
	jmp	.LBB9_26
.LBB9_24:                               # %cond.false.68
	movslq	-8(%rbp), %rax
	addq	$0, %rax
	cmpq	$256, %rax              # imm = 0x100
	jae	.LBB9_26
.LBB9_25:                               # %cond.true.73
	movl	-8(%rbp), %eax
	movl	%eax, -272(%rbp)        # 4-byte Spill
	jmp	.LBB9_30
.LBB9_26:                               # %cond.false.74
	cmpl	$4194175, -8(%rbp)      # imm = 0x3FFF7F
	jle	.LBB9_28
# BB#27:                                # %cond.true.77
	movl	-8(%rbp), %eax
	subl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -276(%rbp)        # 4-byte Spill
	jmp	.LBB9_29
.LBB9_28:                               # %cond.false.78
	movl	-8(%rbp), %eax
	andl	$255, %eax
	movl	%eax, -276(%rbp)        # 4-byte Spill
.LBB9_29:                               # %cond.end.80
	movl	-276(%rbp), %eax        # 4-byte Reload
	movl	%eax, -272(%rbp)        # 4-byte Spill
.LBB9_30:                               # %cond.end.82
	movl	-272(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movb	%cl, -57(%rbp)
	movl	$1, -52(%rbp)
.LBB9_31:                               # %if.end.86
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_71
# BB#32:                                # %land.lhs.true
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jge	.LBB9_71
# BB#33:                                # %if.then.93
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_35
# BB#34:                                # %cond.true.98
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -300(%rbp)        # 4-byte Spill
	jmp	.LBB9_39
.LBB9_35:                               # %cond.false.101
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB9_37
# BB#36:                                # %cond.true.106
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB9_38
.LBB9_37:                               # %cond.false.108
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	jmp	.LBB9_38
.LBB9_38:                               # %cond.end.109
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	current_buffer, %rcx
	movq	744(%rcx), %rcx
	addq	$0, %rcx
	addq	%rcx, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -300(%rbp)        # 4-byte Spill
.LBB9_39:                               # %cond.end.117
	movl	-300(%rbp), %eax        # 4-byte Reload
	movl	$737, %edi              # imm = 0x2E1
	movl	%eax, -84(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_44
# BB#40:                                # %if.then.122
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	cmpq	%rax, -16(%rbp)
	jge	.LBB9_42
# BB#41:                                # %cond.true.125
	movq	-16(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	jmp	.LBB9_43
.LBB9_42:                               # %cond.false.126
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, -328(%rbp)        # 8-byte Spill
	jmp	.LBB9_43
.LBB9_43:                               # %cond.end.127
	movq	-328(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	jmp	.LBB9_70
.LBB9_44:                               # %if.else.129
	cmpl	$10, -8(%rbp)
	je	.LBB9_69
# BB#45:                                # %land.lhs.true.132
	cmpl	$10, -84(%rbp)
	je	.LBB9_69
# BB#46:                                # %land.lhs.true.135
	movslq	-8(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdi
	callq	Fchar_width
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -88(%rbp)
	cmpl	$0, %ecx
	je	.LBB9_69
# BB#47:                                # %if.then.143
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -96(%rbp)
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -104(%rbp)
	callq	current_column
	movabsq	$2305843009213693951, %rcx # imm = 0x1FFFFFFFFFFFFFFF
	movq	%rax, -112(%rbp)
	movq	-16(%rbp), %rax
	subq	-112(%rbp), %rcx
	movslq	-88(%rbp), %rdx
	movq	%rax, -336(%rbp)        # 8-byte Spill
	movq	%rcx, %rax
	movq	%rdx, -344(%rbp)        # 8-byte Spill
	cqto
	movq	-344(%rbp), %rcx        # 8-byte Reload
	idivq	%rcx
	movq	-336(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jg	.LBB9_68
# BB#48:                                # %if.then.153
	xorl	%edi, %edi
	movq	-112(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	-88(%rbp), %rdx
	imulq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmove_to_column
	sarq	$2, %rax
	movq	%rax, -128(%rbp)
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	subq	-96(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-128(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jle	.LBB9_67
# BB#49:                                # %if.then.166
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -136(%rbp)
# BB#50:                                # %do.body
	movq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB9_52
# BB#51:                                # %if.then.173
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -144(%rbp)
	jmp	.LBB9_53
.LBB9_52:                               # %if.else.178
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -144(%rbp)
.LBB9_53:                               # %if.end.186
	jmp	.LBB9_54
.LBB9_54:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB9_55
	jmp	.LBB9_56
.LBB9_55:                               # %while.body
                                        #   in Loop: Header=BB9_54 Depth=1
	movq	-144(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -144(%rbp)
	movq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB9_54
.LBB9_56:                               # %while.end
	jmp	.LBB9_57
.LBB9_57:                               # %do.end
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-360(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_59
# BB#58:                                # %cond.true.196
	movq	-136(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -364(%rbp)        # 4-byte Spill
	jmp	.LBB9_63
.LBB9_59:                               # %cond.false.198
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB9_61
# BB#60:                                # %cond.true.203
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	jmp	.LBB9_62
.LBB9_61:                               # %cond.false.206
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	jmp	.LBB9_62
.LBB9_62:                               # %cond.end.207
	movq	-376(%rbp), %rax        # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -364(%rbp)        # 4-byte Spill
.LBB9_63:                               # %cond.end.215
	movl	-364(%rbp), %eax        # 4-byte Reload
	cmpl	$9, %eax
	jne	.LBB9_65
# BB#64:                                # %if.then.219
	movq	-72(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB9_66
.LBB9_65:                               # %if.else.221
	movq	-128(%rbp), %rax
	subq	-120(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB9_66:                               # %if.end.223
	jmp	.LBB9_67
.LBB9_67:                               # %if.end.224
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	set_point_both
.LBB9_68:                               # %if.end.225
	jmp	.LBB9_69
.LBB9_69:                               # %if.end.226
	jmp	.LBB9_70
.LBB9_70:                               # %if.end.227
	movl	$2, -20(%rbp)
.LBB9_71:                               # %if.end.228
	movl	-8(%rbp), %edi
	callq	SYNTAX
	xorl	%edi, %edi
	movl	%eax, -36(%rbp)
	movq	current_buffer, %rcx
	movq	288(%rcx), %rcx
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_94
# BB#72:                                # %land.lhs.true.233
	cmpl	$2, -36(%rbp)
	je	.LBB9_94
# BB#73:                                # %land.lhs.true.236
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	56(%rax), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-392(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_94
# BB#74:                                # %land.lhs.true.240
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	jle	.LBB9_94
# BB#75:                                # %land.lhs.true.245
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-400(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_77
# BB#76:                                # %cond.true.250
	callq	Fprevious_char
	sarq	$2, %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	jmp	.LBB9_83
.LBB9_77:                               # %cond.false.253
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB9_78
	jmp	.LBB9_79
.LBB9_78:                               # %cond.true.254
	callq	Fprevious_char
	sarq	$2, %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jl	.LBB9_80
	jmp	.LBB9_81
.LBB9_79:                               # %cond.false.260
	callq	Fprevious_char
	sarq	$2, %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB9_81
.LBB9_80:                               # %cond.true.266
	callq	Fprevious_char
	sarq	$2, %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	jmp	.LBB9_82
.LBB9_81:                               # %cond.false.269
	callq	Fprevious_char
	sarq	$2, %rax
	addq	$4194048, %rax          # imm = 0x3FFF00
	movq	%rax, -416(%rbp)        # 8-byte Spill
.LBB9_82:                               # %cond.end.273
	movq	-416(%rbp), %rax        # 8-byte Reload
	movq	%rax, -408(%rbp)        # 8-byte Spill
.LBB9_83:                               # %cond.end.275
	movq	-408(%rbp), %rax        # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %edi
	callq	SYNTAX
	cmpl	$2, %eax
	jne	.LBB9_94
# BB#84:                                # %if.then.281
	movl	$388, %edi              # imm = 0x184
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -152(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	call0
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_91
# BB#85:                                # %land.lhs.true.290
	xorl	%edi, %edi
	movq	-160(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-424(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_91
# BB#86:                                # %land.lhs.true.294
	xorl	%edi, %edi
	movq	-160(%rbp), %rax
	subq	$0, %rax
	movq	lispsym+24(,%rax), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-432(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_91
# BB#87:                                # %land.lhs.true.300
	movq	-160(%rbp), %rax
	subq	$0, %rax
	movq	lispsym+24(,%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_91
# BB#88:                                # %if.then.308
	movabsq	$.L.str.7, %rdi
	movq	-160(%rbp), %rax
	subq	$0, %rax
	movq	lispsym+24(,%rax), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	intern
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	xorl	%edi, %edi
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-448(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB9_90
# BB#89:                                # %if.then.317
	movl	$1, -4(%rbp)
	jmp	.LBB9_142
.LBB9_90:                               # %if.end.318
	jmp	.LBB9_91
.LBB9_91:                               # %if.end.319
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rax
	cmpq	-152(%rbp), %rax
	je	.LBB9_93
# BB#92:                                # %if.then.324
	movl	$2, -20(%rbp)
.LBB9_93:                               # %if.end.325
	jmp	.LBB9_94
.LBB9_94:                               # %if.end.326
	cmpq	$0, -72(%rbp)
	je	.LBB9_109
# BB#95:                                # %if.then.327
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-456(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_105
# BB#96:                                # %land.lhs.true.332
	movb	$1, %al
	testb	$1, %al
	jne	.LBB9_97
	jmp	.LBB9_98
.LBB9_97:                               # %cond.true.333
	movl	-8(%rbp), %eax
	addl	$0, %eax
	cmpl	$256, %eax              # imm = 0x100
	jb	.LBB9_99
	jmp	.LBB9_105
.LBB9_98:                               # %cond.false.337
	movslq	-8(%rbp), %rax
	addq	$0, %rax
	cmpq	$256, %rax              # imm = 0x100
	jae	.LBB9_105
.LBB9_99:                               # %cond.true.342
	movb	$1, %al
	testb	$1, %al
	jne	.LBB9_100
	jmp	.LBB9_101
.LBB9_100:                              # %cond.true.343
	movl	-8(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB9_102
	jmp	.LBB9_103
.LBB9_101:                              # %cond.false.347
	movslq	-8(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB9_103
.LBB9_102:                              # %cond.true.352
	movl	-8(%rbp), %eax
	movl	%eax, -460(%rbp)        # 4-byte Spill
	jmp	.LBB9_104
.LBB9_103:                              # %cond.false.353
	movl	-8(%rbp), %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -460(%rbp)        # 4-byte Spill
.LBB9_104:                              # %cond.end.355
	movl	-460(%rbp), %eax        # 4-byte Reload
	movl	%eax, -464(%rbp)        # 4-byte Spill
	jmp	.LBB9_106
.LBB9_105:                              # %cond.false.357
	movl	-8(%rbp), %eax
	movl	%eax, -464(%rbp)        # 4-byte Spill
.LBB9_106:                              # %cond.end.358
	movl	-464(%rbp), %eax        # 4-byte Reload
	movl	%eax, -172(%rbp)
	movq	-16(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movslq	-172(%rbp), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	callq	Fmake_string
	movq	%rax, -184(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB9_108
# BB#107:                               # %if.then.367
	movl	$130, %eax
	movl	%eax, %esi
	movq	-80(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rdi
	callq	Fmake_string
	movq	%rax, -32(%rbp)
	movq	-184(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	concat2
	movq	%rax, -184(%rbp)
.LBB9_108:                              # %if.end.372
	movl	$1, %eax
	xorl	%ecx, %ecx
	movq	current_buffer, %rdx
	movq	736(%rdx), %rdx
	addq	$0, %rdx
	movq	current_buffer, %rsi
	movq	736(%rsi), %rsi
	addq	$0, %rsi
	addq	-72(%rbp), %rsi
	movq	-184(%rbp), %rdi
	subq	$16, %rsp
	movq	%rdi, -472(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-472(%rbp), %rdx        # 8-byte Reload
	movl	%ecx, -476(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	%eax, %r8d
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	replace_range
	addq	$16, %rsp
	movq	-16(%rbp), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	%rdx, %rdi
	callq	Fforward_char
	movq	%rax, -488(%rbp)        # 8-byte Spill
	jmp	.LBB9_128
.LBB9_109:                              # %if.else.381
	cmpq	$1, -16(%rbp)
	jle	.LBB9_124
# BB#110:                               # %if.then.384
	movq	$16384, -192(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -200(%rbp)
	movb	$0, -201(%rbp)
# BB#111:                               # %do.body.386
	movq	-16(%rbp), %rax
	movq	-192(%rbp), %rcx
	shrq	$0, %rcx
	movslq	-52(%rbp), %rdx
	movq	%rax, -496(%rbp)        # 8-byte Spill
	movq	%rcx, %rax
	xorl	%esi, %esi
	movq	%rdx, -504(%rbp)        # 8-byte Spill
	movl	%esi, %edx
	movq	-504(%rbp), %rcx        # 8-byte Reload
	divq	%rcx
	movq	-496(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	ja	.LBB9_113
# BB#112:                               # %if.then.392
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	%rcx, %rax
	movq	-192(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -192(%rbp)
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	%rcx, %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -216(%rbp)
	jmp	.LBB9_114
.LBB9_113:                              # %if.else.400
	movq	-16(%rbp), %rdi
	movslq	-52(%rbp), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xnmalloc
	movabsq	$xfree, %rdi
	movq	%rax, -216(%rbp)
	movb	$1, -201(%rbp)
	movq	-216(%rbp), %rsi
	callq	record_unwind_protect_ptr
.LBB9_114:                              # %if.end.404
	jmp	.LBB9_115
.LBB9_115:                              # %do.end.405
	movq	-216(%rbp), %rax
	movq	%rax, -224(%rbp)
.LBB9_116:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	jle	.LBB9_119
# BB#117:                               # %for.body
                                        #   in Loop: Header=BB9_116 Depth=1
	leaq	-57(%rbp), %rax
	movq	-224(%rbp), %rdi
	movslq	-52(%rbp), %rdx
	movq	%rax, %rsi
	callq	memcpy
# BB#118:                               # %for.inc
                                        #   in Loop: Header=BB9_116 Depth=1
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	movl	-52(%rbp), %ecx
	movq	-224(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -224(%rbp)
	jmp	.LBB9_116
.LBB9_119:                              # %for.end
	movq	-216(%rbp), %rdi
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, %rsi
	callq	insert_and_inherit
# BB#120:                               # %do.body.411
	testb	$1, -201(%rbp)
	je	.LBB9_122
# BB#121:                               # %if.then.413
	xorl	%edi, %edi
	movb	$0, -201(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -520(%rbp)        # 8-byte Spill
.LBB9_122:                              # %if.end.416
	jmp	.LBB9_123
.LBB9_123:                              # %do.end.417
	jmp	.LBB9_127
.LBB9_124:                              # %if.else.418
	cmpq	$0, -16(%rbp)
	jle	.LBB9_126
# BB#125:                               # %if.then.421
	leaq	-57(%rbp), %rdi
	movslq	-52(%rbp), %rsi
	callq	insert_and_inherit
.LBB9_126:                              # %if.end.424
	jmp	.LBB9_127
.LBB9_127:                              # %if.end.425
	jmp	.LBB9_128
.LBB9_128:                              # %if.end.426
	movq	globals+56, %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB9_129
	jmp	.LBB9_130
.LBB9_129:                              # %cond.true.429
	movq	globals+56, %rdi
	movl	-8(%rbp), %esi
	callq	CHAR_TABLE_REF
	xorl	%edi, %edi
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-528(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_141
	jmp	.LBB9_132
.LBB9_130:                              # %cond.false.434
	cmpl	$32, -8(%rbp)
	je	.LBB9_132
# BB#131:                               # %lor.lhs.false.437
	cmpl	$10, -8(%rbp)
	jne	.LBB9_141
.LBB9_132:                              # %land.lhs.true.440
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	176(%rax), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-536(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_141
# BB#133:                               # %if.then.444
	cmpl	$10, -8(%rbp)
	jne	.LBB9_135
# BB#134:                               # %if.then.447
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	subq	$1, %rax
	movq	current_buffer, %rcx
	movq	744(%rcx), %rcx
	addq	$0, %rcx
	subq	$1, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	set_point_both
.LBB9_135:                              # %if.end.454
	movq	current_buffer, %rax
	movq	176(%rax), %rdi
	callq	call0
	movq	%rax, -232(%rbp)
	cmpl	$10, -8(%rbp)
	jne	.LBB9_138
# BB#136:                               # %land.lhs.true.459
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jge	.LBB9_138
# BB#137:                               # %if.then.465
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	addq	$1, %rax
	movq	current_buffer, %rcx
	movq	744(%rcx), %rcx
	addq	$0, %rcx
	addq	$1, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	set_point_both
.LBB9_138:                              # %if.end.472
	xorl	%edi, %edi
	movq	-232(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-544(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_140
# BB#139:                               # %if.then.476
	movl	$2, -20(%rbp)
.LBB9_140:                              # %if.end.477
	jmp	.LBB9_141
.LBB9_141:                              # %if.end.478
	movl	$764, %edi              # imm = 0x2FC
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	run_hook
	movl	-20(%rbp), %ecx
	movl	%ecx, -4(%rbp)
.LBB9_142:                              # %return
	movl	-4(%rbp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	internal_self_insert, .Lfunc_end9-internal_self_insert
	.cfi_endproc

	.globl	syms_of_cmds
	.align	16, 0x90
	.type	syms_of_cmds,@function
syms_of_cmds:                           # @syms_of_cmds
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
	jmp	.LBB10_1
.LBB10_1:                               # %do.body
	movabsq	$syms_of_cmds.o_fwd, %rdi
	movabsq	$.L.str.1, %rsi
	movabsq	$globals, %rax
	addq	$1768, %rax             # imm = 0x6E8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#2:                                 # %do.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$Sforward_point, %rcx
	movq	%rax, globals+1768
	movq	%rcx, %rdi
	callq	defsubr
	movabsq	$Sforward_char, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sbackward_char, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sforward_line, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sbeginning_of_line, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Send_of_line, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sdelete_char, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sself_insert_command, %rax
	movq	%rax, %rdi
	callq	defsubr
	popq	%rbp
	retq
.Lfunc_end10:
	.size	syms_of_cmds, .Lfunc_end10-syms_of_cmds
	.cfi_endproc

	.globl	keys_of_cmds
	.align	16, 0x90
	.type	keys_of_cmds,@function
keys_of_cmds:                           # @keys_of_cmds
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
	movl	$9, %esi
	movabsq	$.L.str.2, %rdx
	movq	global_map, %rdi
	callq	initial_define_key
	movl	$32, -4(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$127, -4(%rbp)
	jge	.LBB11_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movabsq	$.L.str.2, %rdx
	movq	global_map, %rdi
	movl	-4(%rbp), %esi
	callq	initial_define_key
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB11_1
.LBB11_4:                               # %for.end
	movl	$160, -4(%rbp)
.LBB11_5:                               # %for.cond.1
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -4(%rbp)          # imm = 0x100
	jge	.LBB11_8
# BB#6:                                 # %for.body.3
                                        #   in Loop: Header=BB11_5 Depth=1
	movabsq	$.L.str.2, %rdx
	movq	global_map, %rdi
	movl	-4(%rbp), %esi
	callq	initial_define_key
# BB#7:                                 # %for.inc.4
                                        #   in Loop: Header=BB11_5 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB11_5
.LBB11_8:                               # %for.end.6
	movl	$1, %esi
	movabsq	$.L.str.3, %rdx
	movq	global_map, %rdi
	callq	initial_define_key
	movl	$2, %esi
	movabsq	$.L.str.4, %rdx
	movq	global_map, %rdi
	callq	initial_define_key
	movl	$5, %esi
	movabsq	$.L.str.5, %rdx
	movq	global_map, %rdi
	callq	initial_define_key
	movl	$6, %esi
	movabsq	$.L.str.6, %rdx
	movq	global_map, %rdi
	callq	initial_define_key
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	keys_of_cmds, .Lfunc_end11-keys_of_cmds
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Negative repetition argument %ld"
	.size	.L.str, 33

	.type	syms_of_cmds.o_fwd,@object # @syms_of_cmds.o_fwd
	.local	syms_of_cmds.o_fwd
	.comm	syms_of_cmds.o_fwd,16,8
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"post-self-insert-hook"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"self-insert-command"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"beginning-of-line"
	.size	.L.str.3, 18

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"backward-char"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"end-of-line"
	.size	.L.str.5, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"forward-char"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"no-self-insert"
	.size	.L.str.7, 15

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"forward-point"
	.size	.L.str.8, 14

	.type	Sforward_point,@object  # @Sforward_point
	.data
	.align	8
Sforward_point:
	.quad	167772160               # 0xa000000
	.quad	Fforward_point
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.8
	.quad	0
	.quad	0
	.size	Sforward_point, 48

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"^p"
	.size	.L.str.9, 3

	.type	Sforward_char,@object   # @Sforward_char
	.data
	.align	8
Sforward_char:
	.quad	167772160               # 0xa000000
	.quad	Fforward_char
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.9
	.quad	0
	.size	Sforward_char, 48

	.type	Sbackward_char,@object  # @Sbackward_char
	.align	8
Sbackward_char:
	.quad	167772160               # 0xa000000
	.quad	Fbackward_char
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.9
	.quad	0
	.size	Sbackward_char, 48

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"forward-line"
	.size	.L.str.10, 13

	.type	Sforward_line,@object   # @Sforward_line
	.data
	.align	8
Sforward_line:
	.quad	167772160               # 0xa000000
	.quad	Fforward_line
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.10
	.quad	.L.str.9
	.quad	0
	.size	Sforward_line, 48

	.type	Sbeginning_of_line,@object # @Sbeginning_of_line
	.align	8
Sbeginning_of_line:
	.quad	167772160               # 0xa000000
	.quad	Fbeginning_of_line
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.3
	.quad	.L.str.9
	.quad	0
	.size	Sbeginning_of_line, 48

	.type	Send_of_line,@object    # @Send_of_line
	.align	8
Send_of_line:
	.quad	167772160               # 0xa000000
	.quad	Fend_of_line
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.5
	.quad	.L.str.9
	.quad	0
	.size	Send_of_line, 48

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"delete-char"
	.size	.L.str.11, 12

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"p\nP"
	.size	.L.str.12, 4

	.type	Sdelete_char,@object    # @Sdelete_char
	.data
	.align	8
Sdelete_char:
	.quad	167772160               # 0xa000000
	.quad	Fdelete_char
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	0
	.size	Sdelete_char, 48

	.type	.L.str.13,@object       # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"p"
	.size	.L.str.13, 2

	.type	Sself_insert_command,@object # @Sself_insert_command
	.data
	.align	8
Sself_insert_command:
	.quad	167772160               # 0xa000000
	.quad	Fself_insert_command
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.13
	.quad	0
	.size	Sself_insert_command, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
