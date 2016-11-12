	.text
	.file	"undo.bc"
	.globl	record_insert
	.align	16, 0x90
	.type	record_insert,@function
record_insert:                          # @record_insert
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
	subq	$64, %rsp
	movl	$901, %eax              # imm = 0x385
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	current_buffer, %rsi
	movq	968(%rsi), %rsi
	movl	%eax, %edi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB0_2
# BB#1:                                 # %if.then
	jmp	.LBB0_10
.LBB0_2:                                # %if.end
	callq	prepare_record
	movq	-8(%rbp), %rdi
	callq	record_point
	movq	current_buffer, %rdi
	movq	968(%rdi), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$3, %eax
	jne	.LBB0_9
# BB#3:                                 # %if.then.4
	movq	current_buffer, %rax
	movq	968(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB0_8
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB0_8
# BB#5:                                 # %land.lhs.true.17
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB0_8
# BB#6:                                 # %land.lhs.true.24
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB0_8
# BB#7:                                 # %if.then.30
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rax
	addq	-16(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	XSETCDR
	jmp	.LBB0_10
.LBB0_8:                                # %if.end.32
	jmp	.LBB0_9
.LBB0_9:                                # %if.end.33
	movq	-8(%rbp), %rdi
	callq	make_natnum
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	addq	-16(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -32(%rbp)
	movq	current_buffer, %rdi
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcons
	movq	current_buffer, %rsi
	movq	968(%rsi), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_undo_list
.LBB0_10:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	record_insert, .Lfunc_end0-record_insert
	.cfi_endproc

	.align	16, 0x90
	.type	prepare_record,@function
prepare_record:                         # @prepare_record
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
	xorl	%edi, %edi
	movq	pending_boundary, %rax
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rcx          # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, pending_boundary
.LBB1_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	prepare_record, .Lfunc_end1-prepare_record
	.cfi_endproc

	.align	16, 0x90
	.type	record_point,@function
record_point:                           # @record_point
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
	testb	$1, globals+3431
	je	.LBB2_2
# BB#1:                                 # %if.then
	jmp	.LBB2_10
.LBB2_2:                                # %if.end
	movb	$1, %al
	movq	current_buffer, %rcx
	movq	968(%rcx), %rcx
	andq	$7, %rcx
	movl	%ecx, %edx
	cmpl	$3, %edx
	movb	%al, -10(%rbp)          # 1-byte Spill
	jne	.LBB2_4
# BB#3:                                 # %lor.rhs
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	968(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	movb	%dl, -10(%rbp)          # 1-byte Spill
.LBB2_4:                                # %lor.end
	movb	-10(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movb	%al, -9(%rbp)
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	cmpq	64(%rdx), %rcx
	jg	.LBB2_6
# BB#5:                                 # %if.then.8
	callq	record_first_change
.LBB2_6:                                # %if.end.9
	testb	$1, -9(%rbp)
	je	.LBB2_10
# BB#7:                                 # %land.lhs.true
	movq	point_before_last_command_or_undo, %rax
	cmpq	-8(%rbp), %rax
	je	.LBB2_10
# BB#8:                                 # %land.lhs.true.14
	movq	buffer_before_last_command_or_undo, %rax
	cmpq	current_buffer, %rax
	jne	.LBB2_10
# BB#9:                                 # %if.then.17
	movq	current_buffer, %rdi
	movq	point_before_last_command_or_undo, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	current_buffer, %rcx
	movq	968(%rcx), %rsi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcons
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_undo_list
.LBB2_10:                               # %if.end.20
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	record_point, .Lfunc_end2-record_point
	.cfi_endproc

	.globl	record_delete
	.align	16, 0x90
	.type	record_delete,@function
record_delete:                          # @record_delete
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
	subq	$80, %rsp
	movb	%dl, %al
	movl	$901, %edx              # imm = 0x385
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	current_buffer, %rsi
	movq	968(%rsi), %rsi
	movl	%edx, %edi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB3_2
# BB#1:                                 # %if.then
	jmp	.LBB3_8
.LBB3_2:                                # %if.end
	callq	prepare_record
	movq	-8(%rbp), %rdi
	callq	record_point
	movq	current_buffer, %rdi
	movq	736(%rdi), %rdi
	addq	$0, %rdi
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	SCHARS
	movq	-56(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpq	%rcx, %rax
	jne	.LBB3_4
# BB#3:                                 # %if.then.4
	xorl	%eax, %eax
	movl	%eax, %ecx
	subq	-8(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB3_5
.LBB3_4:                                # %if.else
	movq	-8(%rbp), %rdi
	callq	make_natnum
	movq	%rax, -32(%rbp)
.LBB3_5:                                # %if.end.7
	testb	$1, -17(%rbp)
	je	.LBB3_7
# BB#6:                                 # %if.then.8
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	SCHARS
	movq	-72(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rcx, %rsi
	callq	record_marker_adjustments
.LBB3_7:                                # %if.end.11
	movq	current_buffer, %rdi
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcons
	movq	current_buffer, %rsi
	movq	968(%rsi), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_undo_list
.LBB3_8:                                # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	record_delete, .Lfunc_end3-record_delete
	.cfi_endproc

	.align	16, 0x90
	.type	record_marker_adjustments,@function
record_marker_adjustments:              # @record_marker_adjustments
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	prepare_record
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	movq	128(%rsi), %rsi
	movq	%rsi, -32(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB4_12
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jg	.LBB4_10
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jg	.LBB4_10
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$31, %ecx
	testl	$1, %ecx
	je	.LBB4_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB4_7
.LBB4_6:                                # %cond.false
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB4_7:                                # %cond.end
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	subq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB4_9
# BB#8:                                 # %if.then.4
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	$1, %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -24(%rbp)
	movq	current_buffer, %rdi
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	Fcons
	movq	current_buffer, %rcx
	movq	968(%rcx), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_undo_list
.LBB4_9:                                # %if.end
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_10
.LBB4_10:                               # %if.end.7
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_11
.LBB4_11:                               # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB4_1
.LBB4_12:                               # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	record_marker_adjustments, .Lfunc_end4-record_marker_adjustments
	.cfi_endproc

	.globl	record_change
	.align	16, 0x90
	.type	record_change,@function
record_change:                          # @record_change
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
	movl	$1, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rax
	addq	-16(%rbp), %rax
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	make_buffer_string
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	record_delete
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	record_insert
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	record_change, .Lfunc_end5-record_change
	.cfi_endproc

	.globl	record_first_change
	.align	16, 0x90
	.type	record_first_change,@function
record_first_change:                    # @record_first_change
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
	movl	$901, %edi              # imm = 0x385
	movq	current_buffer, %rax
	movq	%rax, -8(%rbp)
	movq	current_buffer, %rax
	movq	968(%rax), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_2
# BB#1:                                 # %if.then
	jmp	.LBB6_5
.LBB6_2:                                # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 784(%rax)
	je	.LBB6_4
# BB#3:                                 # %if.then.2
	movq	-8(%rbp), %rax
	movq	784(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB6_4:                                # %if.end.4
	movl	$901, %edi              # imm = 0x385
	movq	current_buffer, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	Fvisited_file_modtime
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	current_buffer, %rsi
	movq	968(%rsi), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_undo_list
.LBB6_5:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	record_first_change, .Lfunc_end6-record_first_change
	.cfi_endproc

	.globl	record_property_change
	.align	16, 0x90
	.type	record_property_change,@function
record_property_change:                 # @record_property_change
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	XBUFFER
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB7_2
# BB#1:                                 # %if.then
	jmp	.LBB7_5
.LBB7_2:                                # %if.end
	callq	prepare_record
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	64(%rcx), %rax
	jg	.LBB7_4
# BB#3:                                 # %if.then.5
	callq	record_first_change
.LBB7_4:                                # %if.end.6
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	addq	-16(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -56(%rbp)
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	Fcons
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, -64(%rbp)
	movq	current_buffer, %rdi
	movq	-64(%rbp), %rax
	movq	current_buffer, %rcx
	movq	968(%rcx), %rsi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcons
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_undo_list
.LBB7_5:                                # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	record_property_change, .Lfunc_end7-record_property_change
	.cfi_endproc

	.globl	Fundo_boundary
	.align	16, 0x90
	.type	Fundo_boundary,@function
Fundo_boundary:                         # @Fundo_boundary
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
	movl	$901, %edi              # imm = 0x385
	movq	current_buffer, %rax
	movq	968(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB8_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB8_8
.LBB8_2:                                # %if.end
	movq	current_buffer, %rax
	movq	968(%rax), %rdi
	callq	Fcar
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB8_7
# BB#3:                                 # %if.then.6
	xorl	%edi, %edi
	movq	pending_boundary, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB8_5
# BB#4:                                 # %if.then.9
	movq	pending_boundary, %rdi
	movq	current_buffer, %rax
	movq	968(%rax), %rsi
	callq	XSETCDR
	movq	current_buffer, %rdi
	movq	pending_boundary, %rsi
	callq	bset_undo_list
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, pending_boundary
	jmp	.LBB8_6
.LBB8_5:                                # %if.else
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	current_buffer, %rcx
	movq	968(%rcx), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_undo_list
.LBB8_6:                                # %if.end.15
	jmp	.LBB8_7
.LBB8_7:                                # %if.end.16
	movl	$963, %edi              # imm = 0x3C3
	callq	builtin_lisp_symbol
	movl	$390, %edi              # imm = 0x186
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fset
	xorl	%edi, %edi
	movq	current_buffer, %rsi
	movq	736(%rsi), %rsi
	addq	$0, %rsi
	movq	%rsi, point_before_last_command_or_undo
	movq	current_buffer, %rsi
	movq	%rsi, buffer_before_last_command_or_undo
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB8_8:                                # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	Fundo_boundary, .Lfunc_end8-Fundo_boundary
	.cfi_endproc

	.globl	truncate_undo_list
	.align	16, 0x90
	.type	truncate_undo_list,@function
truncate_undo_list:                     # @truncate_undo_list
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -48(%rbp)
	callq	inhibit_garbage_collection
	movq	%rax, -56(%rbp)
	callq	record_unwind_current_buffer
	movq	-8(%rbp), %rdi
	callq	set_buffer_internal
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -16(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edi
	cmpl	$3, %edi
	jne	.LBB9_3
# BB#1:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movq	-48(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB9_3:                                # %if.end
	jmp	.LBB9_4
.LBB9_4:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -89(%rbp)          # 1-byte Spill
	jne	.LBB9_6
# BB#5:                                 # %land.rhs
                                        #   in Loop: Header=BB9_4 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	movb	%dl, -89(%rbp)          # 1-byte Spill
.LBB9_6:                                # %land.end
                                        #   in Loop: Header=BB9_4 Depth=1
	movb	-89(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB9_7
	jmp	.LBB9_12
.LBB9_7:                                # %while.body
                                        #   in Loop: Header=BB9_4 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB9_11
# BB#8:                                 # %if.then.24
                                        #   in Loop: Header=BB9_4 Depth=1
	movq	-48(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB9_9
	jmp	.LBB9_10
.LBB9_9:                                # %if.then.29
                                        #   in Loop: Header=BB9_4 Depth=1
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	SCHARS
	addq	$31, %rax
	addq	-48(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB9_10:                               # %if.end.35
                                        #   in Loop: Header=BB9_4 Depth=1
	jmp	.LBB9_11
.LBB9_11:                               # %if.end.36
                                        #   in Loop: Header=BB9_4 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB9_4
.LBB9_12:                               # %while.end
	movq	globals+2496, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB9_18
# BB#13:                                # %land.lhs.true.45
	movq	-48(%rbp), %rax
	movq	globals+2496, %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB9_18
# BB#14:                                # %land.lhs.true.48
	xorl	%edi, %edi
	movq	globals+2504, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_18
# BB#15:                                # %if.then.52
	movq	globals+2504, %rdi
	movq	-48(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	call1
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB9_17
# BB#16:                                # %if.then.58
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB9_40
.LBB9_17:                               # %if.end.61
	jmp	.LBB9_18
.LBB9_18:                               # %if.end.62
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB9_20
# BB#19:                                # %if.then.67
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB9_20:                               # %if.end.68
	jmp	.LBB9_21
.LBB9_21:                               # %while.cond.69
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB9_33
# BB#22:                                # %while.body.74
                                        #   in Loop: Header=BB9_21 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_28
# BB#23:                                # %if.then.81
                                        #   in Loop: Header=BB9_21 Depth=1
	movq	-48(%rbp), %rax
	cmpq	globals+3336, %rax
	jle	.LBB9_25
# BB#24:                                # %if.then.84
	jmp	.LBB9_33
.LBB9_25:                               # %if.end.85
                                        #   in Loop: Header=BB9_21 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	cmpq	globals+3328, %rax
	jle	.LBB9_27
# BB#26:                                # %if.then.88
	jmp	.LBB9_33
.LBB9_27:                               # %if.end.89
                                        #   in Loop: Header=BB9_21 Depth=1
	jmp	.LBB9_28
.LBB9_28:                               # %if.end.90
                                        #   in Loop: Header=BB9_21 Depth=1
	movq	-48(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -48(%rbp)
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB9_32
# BB#29:                                # %if.then.96
                                        #   in Loop: Header=BB9_21 Depth=1
	movq	-48(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -48(%rbp)
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB9_30
	jmp	.LBB9_31
.LBB9_30:                               # %if.then.101
                                        #   in Loop: Header=BB9_21 Depth=1
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	SCHARS
	addq	$31, %rax
	addq	-48(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB9_31:                               # %if.end.107
                                        #   in Loop: Header=BB9_21 Depth=1
	jmp	.LBB9_32
.LBB9_32:                               # %if.end.108
                                        #   in Loop: Header=BB9_21 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB9_21
.LBB9_33:                               # %while.end.112
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_35
# BB#34:                                # %if.then.116
	jmp	.LBB9_39
.LBB9_35:                               # %if.else
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_37
# BB#36:                                # %if.then.120
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCDR
	jmp	.LBB9_38
.LBB9_37:                               # %if.else.122
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_undo_list
.LBB9_38:                               # %if.end.124
	jmp	.LBB9_39
.LBB9_39:                               # %if.end.125
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB9_40:                               # %return
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	truncate_undo_list, .Lfunc_end9-truncate_undo_list
	.cfi_endproc

	.globl	syms_of_undo
	.align	16, 0x90
	.type	syms_of_undo,@function
syms_of_undo:                           # @syms_of_undo
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
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$pending_boundary, %rdi
	movq	%rax, pending_boundary
	callq	staticpro
	movabsq	$Sundo_boundary, %rdi
	callq	defsubr
# BB#1:                                 # %do.body
	movabsq	$syms_of_undo.i_fwd, %rdi
	movabsq	$.L.str, %rsi
	movabsq	$globals, %rax
	addq	$3328, %rax             # imm = 0xD00
	movq	%rax, %rdx
	callq	defvar_int
# BB#2:                                 # %do.end
	movq	$80000, globals+3328    # imm = 0x13880
# BB#3:                                 # %do.body.1
	movabsq	$syms_of_undo.i_fwd.1, %rdi
	movabsq	$.L.str.2, %rsi
	movabsq	$globals, %rax
	addq	$3336, %rax             # imm = 0xD08
	movq	%rax, %rdx
	callq	defvar_int
# BB#4:                                 # %do.end.2
	movq	$120000, globals+3336   # imm = 0x1D4C0
# BB#5:                                 # %do.body.3
	movabsq	$syms_of_undo.o_fwd, %rdi
	movabsq	$.L.str.3, %rsi
	movabsq	$globals, %rax
	addq	$2496, %rax             # imm = 0x9C0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#6:                                 # %do.end.4
	movq	$48000002, globals+2496 # imm = 0x2DC6C02
# BB#7:                                 # %do.body.5
	movabsq	$syms_of_undo.o_fwd.4, %rdi
	movabsq	$.L.str.5, %rsi
	movabsq	$globals, %rax
	addq	$2504, %rax             # imm = 0x9C8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#8:                                 # %do.end.6
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2504
# BB#9:                                 # %do.body.8
	movabsq	$syms_of_undo.b_fwd, %rdi
	movabsq	$.L.str.6, %rsi
	movabsq	$globals, %rax
	addq	$3431, %rax             # imm = 0xD67
	movq	%rax, %rdx
	callq	defvar_bool
# BB#10:                                # %do.end.9
	movb	$0, globals+3431
	popq	%rbp
	retq
.Lfunc_end10:
	.size	syms_of_undo, .Lfunc_end10-syms_of_undo
	.cfi_endproc

	.type	pending_boundary,@object # @pending_boundary
	.local	pending_boundary
	.comm	pending_boundary,8,8
	.type	Sundo_boundary,@object  # @Sundo_boundary
	.data
	.align	8
Sundo_boundary:
	.quad	167772160               # 0xa000000
	.quad	Fundo_boundary
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.7
	.quad	0
	.quad	0
	.size	Sundo_boundary, 48

	.type	syms_of_undo.i_fwd,@object # @syms_of_undo.i_fwd
	.local	syms_of_undo.i_fwd
	.comm	syms_of_undo.i_fwd,16,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"undo-limit"
	.size	.L.str, 11

	.type	syms_of_undo.i_fwd.1,@object # @syms_of_undo.i_fwd.1
	.local	syms_of_undo.i_fwd.1
	.comm	syms_of_undo.i_fwd.1,16,8
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"undo-strong-limit"
	.size	.L.str.2, 18

	.type	syms_of_undo.o_fwd,@object # @syms_of_undo.o_fwd
	.local	syms_of_undo.o_fwd
	.comm	syms_of_undo.o_fwd,16,8
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"undo-outer-limit"
	.size	.L.str.3, 17

	.type	syms_of_undo.o_fwd.4,@object # @syms_of_undo.o_fwd.4
	.local	syms_of_undo.o_fwd.4
	.comm	syms_of_undo.o_fwd.4,16,8
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"undo-outer-limit-function"
	.size	.L.str.5, 26

	.type	syms_of_undo.b_fwd,@object # @syms_of_undo.b_fwd
	.local	syms_of_undo.b_fwd
	.comm	syms_of_undo.b_fwd,16,8
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"undo-inhibit-record-point"
	.size	.L.str.6, 26

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"undo-boundary"
	.size	.L.str.7, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
