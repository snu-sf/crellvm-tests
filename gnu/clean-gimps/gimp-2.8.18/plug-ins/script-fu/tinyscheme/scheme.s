	.text
	.file	"scheme.bc"
	.globl	ts_register_output_func
	.align	16, 0x90
	.type	ts_register_output_func,@function
ts_register_output_func:                # @ts_register_output_func
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
	movq	-8(%rbp), %rsi
	movq	%rsi, ts_output_handler
	movq	-16(%rbp), %rsi
	movq	%rsi, ts_output_data
	popq	%rbp
	retq
.Lfunc_end0:
	.size	ts_register_output_func, .Lfunc_end0-ts_register_output_func
	.cfi_endproc

	.globl	ts_output_string
	.align	16, 0x90
	.type	ts_output_string,@function
ts_output_string:                       # @ts_output_string
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
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jge	.LBB1_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -20(%rbp)
.LBB1_2:                                # %if.end
	cmpq	$0, ts_output_handler
	je	.LBB1_5
# BB#3:                                 # %land.lhs.true
	cmpl	$0, -20(%rbp)
	jle	.LBB1_5
# BB#4:                                 # %if.then.3
	movq	ts_output_handler, %rax
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	ts_output_data, %rcx
	callq	*%rax
.LBB1_5:                                # %if.end.4
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	ts_output_string, .Lfunc_end1-ts_output_string
	.cfi_endproc

	.globl	is_string
	.align	16, 0x90
	.type	is_string,@function
is_string:                              # @is_string
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %eax
	andl	$31, %eax
	cmpl	$1, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	is_string, .Lfunc_end2-is_string
	.cfi_endproc

	.globl	is_vector
	.align	16, 0x90
	.type	is_vector,@function
is_vector:                              # @is_vector
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %eax
	andl	$31, %eax
	cmpl	$11, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	is_vector, .Lfunc_end3-is_vector
	.cfi_endproc

	.globl	is_number
	.align	16, 0x90
	.type	is_number,@function
is_number:                              # @is_number
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %eax
	andl	$31, %eax
	cmpl	$2, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	popq	%rbp
	retq
.Lfunc_end4:
	.size	is_number, .Lfunc_end4-is_number
	.cfi_endproc

	.globl	is_integer
	.align	16, 0x90
	.type	is_integer,@function
is_integer:                             # @is_integer
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	is_number
	cmpl	$0, %eax
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB5_6
.LBB5_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	num_is_integer
	cmpl	$0, %eax
	jne	.LBB5_4
# BB#3:                                 # %lor.lhs.false
	movq	-16(%rbp), %rdi
	callq	ivalue
	cvtsi2sdq	%rax, %xmm0
	movq	-16(%rbp), %rdi
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	callq	rvalue
	movsd	-24(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB5_5
	jp	.LBB5_5
.LBB5_4:                                # %if.then.6
	movl	$1, -4(%rbp)
	jmp	.LBB5_6
.LBB5_5:                                # %if.end.7
	movl	$0, -4(%rbp)
.LBB5_6:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	is_integer, .Lfunc_end5-is_integer
	.cfi_endproc

	.align	16, 0x90
	.type	num_is_integer,@function
num_is_integer:                         # @num_is_integer
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movsbl	8(%rdi), %eax
	popq	%rbp
	retq
.Lfunc_end6:
	.size	num_is_integer, .Lfunc_end6-num_is_integer
	.cfi_endproc

	.globl	ivalue
	.align	16, 0x90
	.type	ivalue,@function
ivalue:                                 # @ivalue
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	num_is_integer
	cmpl	$0, %eax
	je	.LBB7_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB7_3
.LBB7_2:                                # %cond.false
	movq	-8(%rbp), %rax
	cvttsd2si	16(%rax), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB7_3:                                # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	ivalue, .Lfunc_end7-ivalue
	.cfi_endproc

	.globl	rvalue
	.align	16, 0x90
	.type	rvalue,@function
rvalue:                                 # @rvalue
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	num_is_integer
	cmpl	$0, %eax
	jne	.LBB8_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	jmp	.LBB8_3
.LBB8_2:                                # %cond.false
	movq	-8(%rbp), %rax
	cvtsi2sdq	16(%rax), %xmm0
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
.LBB8_3:                                # %cond.end
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	rvalue, .Lfunc_end8-rvalue
	.cfi_endproc

	.globl	is_real
	.align	16, 0x90
	.type	is_real,@function
is_real:                                # @is_real
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	is_number
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cmpl	$0, %eax
	movb	%dl, -9(%rbp)           # 1-byte Spill
	je	.LBB9_2
# BB#1:                                 # %land.rhs
	movq	-8(%rbp), %rax
	cmpb	$0, 8(%rax)
	setne	%cl
	xorb	$-1, %cl
	movb	%cl, -9(%rbp)           # 1-byte Spill
.LBB9_2:                                # %land.end
	movb	-9(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	is_real, .Lfunc_end9-is_real
	.cfi_endproc

	.globl	is_character
	.align	16, 0x90
	.type	is_character,@function
is_character:                           # @is_character
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %eax
	andl	$31, %eax
	cmpl	$9, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	popq	%rbp
	retq
.Lfunc_end10:
	.size	is_character, .Lfunc_end10-is_character
	.cfi_endproc

	.globl	string_length
	.align	16, 0x90
	.type	string_length,@function
string_length:                          # @string_length
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	16(%rdi), %eax
	popq	%rbp
	retq
.Lfunc_end11:
	.size	string_length, .Lfunc_end11-string_length
	.cfi_endproc

	.globl	string_value
	.align	16, 0x90
	.type	string_value,@function
string_value:                           # @string_value
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end12:
	.size	string_value, .Lfunc_end12-string_value
	.cfi_endproc

	.globl	nvalue
	.align	16, 0x90
	.type	nvalue,@function
nvalue:                                 # @nvalue
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
	movq	%rdi, -24(%rbp)
	movups	8(%rdi), %xmm0
	movaps	%xmm0, -16(%rbp)
	movb	-16(%rbp), %al
	movq	-8(%rbp), %rdx
	popq	%rbp
	retq
.Lfunc_end13:
	.size	nvalue, .Lfunc_end13-nvalue
	.cfi_endproc

	.globl	charvalue
	.align	16, 0x90
	.type	charvalue,@function
charvalue:                              # @charvalue
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movl	%edi, %eax
	popq	%rbp
	retq
.Lfunc_end14:
	.size	charvalue, .Lfunc_end14-charvalue
	.cfi_endproc

	.globl	is_port
	.align	16, 0x90
	.type	is_port,@function
is_port:                                # @is_port
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %eax
	andl	$31, %eax
	cmpl	$10, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	popq	%rbp
	retq
.Lfunc_end15:
	.size	is_port, .Lfunc_end15-is_port
	.cfi_endproc

	.globl	is_inport
	.align	16, 0x90
	.type	is_inport,@function
is_inport:                              # @is_inport
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	is_port
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cmpl	$0, %eax
	movb	%dl, -9(%rbp)           # 1-byte Spill
	je	.LBB16_2
# BB#1:                                 # %land.rhs
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	setne	%dl
	movb	%dl, -9(%rbp)           # 1-byte Spill
.LBB16_2:                               # %land.end
	movb	-9(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	is_inport, .Lfunc_end16-is_inport
	.cfi_endproc

	.globl	is_outport
	.align	16, 0x90
	.type	is_outport,@function
is_outport:                             # @is_outport
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
	movq	-8(%rbp), %rdi
	callq	is_port
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cmpl	$0, %eax
	movb	%dl, -9(%rbp)           # 1-byte Spill
	je	.LBB17_2
# BB#1:                                 # %land.rhs
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	setne	%dl
	movb	%dl, -9(%rbp)           # 1-byte Spill
.LBB17_2:                               # %land.end
	movb	-9(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	is_outport, .Lfunc_end17-is_outport
	.cfi_endproc

	.globl	is_pair
	.align	16, 0x90
	.type	is_pair,@function
is_pair:                                # @is_pair
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %eax
	andl	$31, %eax
	cmpl	$5, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	popq	%rbp
	retq
.Lfunc_end18:
	.size	is_pair, .Lfunc_end18-is_pair
	.cfi_endproc

	.globl	pair_car
	.align	16, 0x90
	.type	pair_car,@function
pair_car:                               # @pair_car
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end19:
	.size	pair_car, .Lfunc_end19-pair_car
	.cfi_endproc

	.globl	pair_cdr
	.align	16, 0x90
	.type	pair_cdr,@function
pair_cdr:                               # @pair_cdr
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end20:
	.size	pair_cdr, .Lfunc_end20-pair_cdr
	.cfi_endproc

	.globl	set_car
	.align	16, 0x90
	.type	set_car,@function
set_car:                                # @set_car
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 8(%rdi)
	movq	%rsi, %rax
	popq	%rbp
	retq
.Lfunc_end21:
	.size	set_car, .Lfunc_end21-set_car
	.cfi_endproc

	.globl	set_cdr
	.align	16, 0x90
	.type	set_cdr,@function
set_cdr:                                # @set_cdr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 16(%rdi)
	movq	%rsi, %rax
	popq	%rbp
	retq
.Lfunc_end22:
	.size	set_cdr, .Lfunc_end22-set_cdr
	.cfi_endproc

	.globl	is_symbol
	.align	16, 0x90
	.type	is_symbol,@function
is_symbol:                              # @is_symbol
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %eax
	andl	$31, %eax
	cmpl	$3, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	popq	%rbp
	retq
.Lfunc_end23:
	.size	is_symbol, .Lfunc_end23-is_symbol
	.cfi_endproc

	.globl	symname
	.align	16, 0x90
	.type	symname,@function
symname:                                # @symname
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	8(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end24:
	.size	symname, .Lfunc_end24-symname
	.cfi_endproc

	.globl	is_syntax
	.align	16, 0x90
	.type	is_syntax,@function
is_syntax:                              # @is_syntax
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %eax
	andl	$4096, %eax             # imm = 0x1000
	popq	%rbp
	retq
.Lfunc_end25:
	.size	is_syntax, .Lfunc_end25-is_syntax
	.cfi_endproc

	.globl	is_proc
	.align	16, 0x90
	.type	is_proc,@function
is_proc:                                # @is_proc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %eax
	andl	$31, %eax
	cmpl	$4, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	popq	%rbp
	retq
.Lfunc_end26:
	.size	is_proc, .Lfunc_end26-is_proc
	.cfi_endproc

	.globl	is_foreign
	.align	16, 0x90
	.type	is_foreign,@function
is_foreign:                             # @is_foreign
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %eax
	andl	$31, %eax
	cmpl	$8, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	popq	%rbp
	retq
.Lfunc_end27:
	.size	is_foreign, .Lfunc_end27-is_foreign
	.cfi_endproc

	.globl	syntaxname
	.align	16, 0x90
	.type	syntaxname,@function
syntaxname:                             # @syntaxname
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	8(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end28:
	.size	syntaxname, .Lfunc_end28-syntaxname
	.cfi_endproc

	.globl	is_closure
	.align	16, 0x90
	.type	is_closure,@function
is_closure:                             # @is_closure
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %eax
	andl	$31, %eax
	cmpl	$6, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	popq	%rbp
	retq
.Lfunc_end29:
	.size	is_closure, .Lfunc_end29-is_closure
	.cfi_endproc

	.globl	is_macro
	.align	16, 0x90
	.type	is_macro,@function
is_macro:                               # @is_macro
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %eax
	andl	$31, %eax
	cmpl	$12, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	popq	%rbp
	retq
.Lfunc_end30:
	.size	is_macro, .Lfunc_end30-is_macro
	.cfi_endproc

	.globl	closure_code
	.align	16, 0x90
	.type	closure_code,@function
closure_code:                           # @closure_code
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp95:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end31:
	.size	closure_code, .Lfunc_end31-closure_code
	.cfi_endproc

	.globl	closure_env
	.align	16, 0x90
	.type	closure_env,@function
closure_env:                            # @closure_env
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end32:
	.size	closure_env, .Lfunc_end32-closure_env
	.cfi_endproc

	.globl	is_continuation
	.align	16, 0x90
	.type	is_continuation,@function
is_continuation:                        # @is_continuation
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp101:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %eax
	andl	$31, %eax
	cmpl	$7, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	popq	%rbp
	retq
.Lfunc_end33:
	.size	is_continuation, .Lfunc_end33-is_continuation
	.cfi_endproc

	.globl	is_promise
	.align	16, 0x90
	.type	is_promise,@function
is_promise:                             # @is_promise
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp104:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %eax
	andl	$31, %eax
	cmpl	$13, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	popq	%rbp
	retq
.Lfunc_end34:
	.size	is_promise, .Lfunc_end34-is_promise
	.cfi_endproc

	.globl	is_environment
	.align	16, 0x90
	.type	is_environment,@function
is_environment:                         # @is_environment
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp107:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %eax
	andl	$31, %eax
	cmpl	$14, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	popq	%rbp
	retq
.Lfunc_end35:
	.size	is_environment, .Lfunc_end35-is_environment
	.cfi_endproc

	.globl	is_immutable
	.align	16, 0x90
	.type	is_immutable,@function
is_immutable:                           # @is_immutable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp110:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %eax
	andl	$8192, %eax             # imm = 0x2000
	popq	%rbp
	retq
.Lfunc_end36:
	.size	is_immutable, .Lfunc_end36-is_immutable
	.cfi_endproc

	.globl	setimmutable
	.align	16, 0x90
	.type	setimmutable,@function
setimmutable:                           # @setimmutable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp113:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %eax
	orl	$8192, %eax             # imm = 0x2000
	movl	%eax, (%rdi)
	popq	%rbp
	retq
.Lfunc_end37:
	.size	setimmutable, .Lfunc_end37-setimmutable
	.cfi_endproc

	.globl	_cons
	.align	16, 0x90
	.type	_cons,@function
_cons:                                  # @_cons
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp114:
	.cfi_def_cfa_offset 16
.Ltmp115:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp116:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	get_cell
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$5, (%rax)
	cmpl	$0, -28(%rbp)
	je	.LBB38_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rdi
	callq	setimmutable
.LBB38_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	_cons, .Lfunc_end38-_cons
	.cfi_endproc

	.align	16, 0x90
	.type	get_cell,@function
get_cell:                               # @get_cell
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp117:
	.cfi_def_cfa_offset 16
.Ltmp118:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp119:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	get_cell_x
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$5, (%rax)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	936(%rax), %rdx
	callq	push_recent_alloc
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	get_cell, .Lfunc_end39-get_cell
	.cfi_endproc

	.globl	mk_foreign_func
	.align	16, 0x90
	.type	mk_foreign_func,@function
mk_foreign_func:                        # @mk_foreign_func
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp120:
	.cfi_def_cfa_offset 16
.Ltmp121:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp122:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	936(%rsi), %rsi
	movq	-8(%rbp), %rax
	movq	936(%rax), %rdx
	callq	get_cell
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$16392, (%rax)          # imm = 0x4008
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	mk_foreign_func, .Lfunc_end40-mk_foreign_func
	.cfi_endproc

	.globl	mk_character
	.align	16, 0x90
	.type	mk_character,@function
mk_character:                           # @mk_character
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp123:
	.cfi_def_cfa_offset 16
.Ltmp124:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp125:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	936(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	936(%rax), %rdx
	callq	get_cell
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$16393, (%rax)          # imm = 0x4009
	movl	-12(%rbp), %ecx
	movl	%ecx, %eax
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movb	$1, 8(%rax)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	mk_character, .Lfunc_end41-mk_character
	.cfi_endproc

	.globl	mk_integer
	.align	16, 0x90
	.type	mk_integer,@function
mk_integer:                             # @mk_integer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
.Ltmp127:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp128:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	936(%rsi), %rsi
	movq	-8(%rbp), %rax
	movq	936(%rax), %rdx
	callq	get_cell
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$16386, (%rax)          # imm = 0x4002
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movb	$1, 8(%rax)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	mk_integer, .Lfunc_end42-mk_integer
	.cfi_endproc

	.globl	mk_real
	.align	16, 0x90
	.type	mk_real,@function
mk_real:                                # @mk_real
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp129:
	.cfi_def_cfa_offset 16
.Ltmp130:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp131:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	936(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	936(%rax), %rdx
	callq	get_cell
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$16386, (%rax)          # imm = 0x4002
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movq	-24(%rbp), %rax
	movb	$0, 8(%rax)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	mk_real, .Lfunc_end43-mk_real
	.cfi_endproc

	.globl	foreign_error
	.align	16, 0x90
	.type	foreign_error,@function
foreign_error:                          # @foreign_error
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp132:
	.cfi_def_cfa_offset 16
.Ltmp133:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp134:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	callq	mk_string
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	_cons
	movq	-8(%rbp), %rdx
	movq	%rax, 864(%rdx)
	movq	-8(%rbp), %rax
	movq	968(%rax), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	foreign_error, .Lfunc_end44-foreign_error
	.cfi_endproc

	.globl	mk_string
	.align	16, 0x90
	.type	mk_string,@function
mk_string:                              # @mk_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp135:
	.cfi_def_cfa_offset 16
.Ltmp136:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp137:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	$-1, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	callq	g_utf8_strlen
	movl	%eax, %edx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	callq	mk_counted_string
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	mk_string, .Lfunc_end45-mk_string
	.cfi_endproc

	.globl	mk_counted_string
	.align	16, 0x90
	.type	mk_counted_string,@function
mk_counted_string:                      # @mk_counted_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp138:
	.cfi_def_cfa_offset 16
.Ltmp139:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp140:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	936(%rsi), %rsi
	movq	-8(%rbp), %rax
	movq	936(%rax), %rdx
	callq	get_cell
	xorl	%ecx, %ecx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$16385, (%rax)          # imm = 0x4001
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	-16(%rbp), %rdx
	callq	store_string
	movq	-32(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movl	-20(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 16(%rax)
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	mk_counted_string, .Lfunc_end46-mk_counted_string
	.cfi_endproc

	.align	16, 0x90
	.type	store_string,@function
store_string:                           # @store_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp141:
	.cfi_def_cfa_offset 16
.Ltmp142:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp143:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB47_5
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	movslq	-20(%rbp), %rsi
	callq	g_utf8_offset_to_pointer
	movq	$-1, %rsi
	leaq	-64(%rbp), %rdx
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_utf8_validate
	movq	-64(%rbp), %rdx
	cmpq	-72(%rbp), %rdx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	ja	.LBB47_3
# BB#2:                                 # %if.then.4
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -40(%rbp)
	jmp	.LBB47_4
.LBB47_3:                               # %if.else
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -40(%rbp)
.LBB47_4:                               # %if.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdi
	callq	*%rax
	movq	%rax, -64(%rbp)
	jmp	.LBB47_6
.LBB47_5:                               # %if.else.12
	leaq	-51(%rbp), %rsi
	movl	-36(%rbp), %edi
	callq	g_unichar_to_utf8
	movl	%eax, -40(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movl	-20(%rbp), %eax
	imull	-40(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	*%rsi
	movq	%rax, -64(%rbp)
.LBB47_6:                               # %if.end.18
	cmpq	$0, -64(%rbp)
	jne	.LBB47_8
# BB#7:                                 # %if.then.21
	movq	-16(%rbp), %rax
	movb	$1, 3505(%rax)
	movq	-16(%rbp), %rax
	addq	$4530, %rax             # imm = 0x11B2
	movq	%rax, -8(%rbp)
	jmp	.LBB47_16
.LBB47_8:                               # %if.end.23
	cmpq	$0, -32(%rbp)
	je	.LBB47_10
# BB#9:                                 # %if.then.26
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movslq	-40(%rbp), %rdx
	callq	memcpy
	movslq	-40(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movb	$0, (%rsi,%rdx)
	jmp	.LBB47_15
.LBB47_10:                              # %if.else.28
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	$0, -44(%rbp)
.LBB47_11:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB47_14
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB47_11 Depth=1
	leaq	-51(%rbp), %rax
	movq	-72(%rbp), %rdi
	movslq	-40(%rbp), %rdx
	movq	%rax, %rsi
	callq	memcpy
	movl	-40(%rbp), %ecx
	movq	-72(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB47_11 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB47_11
.LBB47_14:                              # %for.end
	movq	-72(%rbp), %rax
	movb	$0, (%rax)
.LBB47_15:                              # %if.end.32
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB47_16:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	store_string, .Lfunc_end47-store_string
	.cfi_endproc

	.globl	mk_empty_string
	.align	16, 0x90
	.type	mk_empty_string,@function
mk_empty_string:                        # @mk_empty_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp144:
	.cfi_def_cfa_offset 16
.Ltmp145:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp146:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	936(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	936(%rax), %rdx
	callq	get_cell
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$16385, (%rax)          # imm = 0x4001
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %ecx
	callq	store_string
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 16(%rax)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	mk_empty_string, .Lfunc_end48-mk_empty_string
	.cfi_endproc

	.globl	mk_symbol
	.align	16, 0x90
	.type	mk_symbol,@function
mk_symbol:                              # @mk_symbol
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp147:
	.cfi_def_cfa_offset 16
.Ltmp148:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp149:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	oblist_find_by_name
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rsi
	cmpq	936(%rsi), %rax
	je	.LBB49_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB49_3
.LBB49_2:                               # %if.else
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	oblist_add_by_name
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB49_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	mk_symbol, .Lfunc_end49-mk_symbol
	.cfi_endproc

	.align	16, 0x90
	.type	oblist_find_by_name,@function
oblist_find_by_name:                    # @oblist_find_by_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp150:
	.cfi_def_cfa_offset 16
.Ltmp151:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp152:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	1040(%rsi), %rsi
	movq	16(%rsi), %rsi
	movl	%esi, %eax
	movl	%eax, %esi
	callq	hash_fn
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdi
	movq	1040(%rdi), %rdi
	movl	-28(%rbp), %esi
	callq	vector_elem
	movq	%rax, -40(%rbp)
.LBB50_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	je	.LBB50_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB50_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	callq	symname
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	utf8_stricmp
	cmpl	$0, %eax
	jne	.LBB50_4
# BB#3:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB50_7
.LBB50_4:                               # %if.end
                                        #   in Loop: Header=BB50_1 Depth=1
	jmp	.LBB50_5
.LBB50_5:                               # %for.inc
                                        #   in Loop: Header=BB50_1 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB50_1
.LBB50_6:                               # %for.end
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB50_7:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	oblist_find_by_name, .Lfunc_end50-oblist_find_by_name
	.cfi_endproc

	.align	16, 0x90
	.type	oblist_add_by_name,@function
oblist_add_by_name:                     # @oblist_add_by_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp153:
	.cfi_def_cfa_offset 16
.Ltmp154:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp155:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	mk_string
	movl	$1, %ecx
	movq	-8(%rbp), %rsi
	movq	936(%rsi), %rdx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	_cons
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$3, (%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	setimmutable
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	1040(%rax), %rax
	movq	16(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	callq	hash_fn
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdx
	movq	1040(%rdx), %rdi
	movl	-28(%rbp), %esi
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %r8
	movq	-8(%rbp), %r9
	movq	1040(%r9), %r9
	movl	-28(%rbp), %eax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movl	%eax, %esi
	movq	%r8, -64(%rbp)          # 8-byte Spill
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	callq	vector_elem
	movl	$1, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	_cons
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	-52(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	set_vector_elem
	movq	-24(%rbp), %rdx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	oblist_add_by_name, .Lfunc_end51-oblist_add_by_name
	.cfi_endproc

	.globl	gensym
	.align	16, 0x90
	.type	gensym,@function
gensym:                                 # @gensym
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp156:
	.cfi_def_cfa_offset 16
.Ltmp157:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp158:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
.LBB52_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	cmpq	%rax, 5600(%rcx)
	jge	.LBB52_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB52_1 Depth=1
	movl	$40, %eax
	movl	%eax, %esi
	movabsq	$.L.str, %rdx
	leaq	-64(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	5600(%rcx), %rcx
	movb	$0, %al
	callq	snprintf
	leaq	-64(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	oblist_find_by_name
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	je	.LBB52_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB52_1 Depth=1
	jmp	.LBB52_5
.LBB52_4:                               # %if.else
	leaq	-64(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	oblist_add_by_name
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB52_7
.LBB52_5:                               # %for.inc
                                        #   in Loop: Header=BB52_1 Depth=1
	movq	-16(%rbp), %rax
	movq	5600(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 5600(%rax)
	jmp	.LBB52_1
.LBB52_6:                               # %for.end
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB52_7:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	gensym, .Lfunc_end52-gensym
	.cfi_endproc

	.globl	putcharacter
	.align	16, 0x90
	.type	putcharacter,@function
putcharacter:                           # @putcharacter
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp159:
	.cfi_def_cfa_offset 16
.Ltmp160:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp161:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	-19(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edi
	movq	%rax, %rsi
	callq	g_unichar_to_utf8
	movl	$1, %edx
	leaq	-19(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	putchars
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	putcharacter, .Lfunc_end53-putcharacter
	.cfi_endproc

	.align	16, 0x90
	.type	putchars,@function
putchars:                               # @putchars
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp162:
	.cfi_def_cfa_offset 16
.Ltmp163:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp164:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	1168(%rsi), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -40(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.LBB54_2
# BB#1:                                 # %if.then
	jmp	.LBB54_20
.LBB54_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movslq	-20(%rbp), %rsi
	callq	g_utf8_offset_to_pointer
	movq	-16(%rbp), %rsi
	subq	%rsi, %rax
	movl	%eax, %ecx
	movl	%ecx, -20(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB54_7
# BB#3:                                 # %if.then.3
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	stdout, %rax
	jne	.LBB54_5
# BB#4:                                 # %if.then.6
	xorl	%edi, %edi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	ts_output_string
	jmp	.LBB54_6
.LBB54_5:                               # %if.else
	movl	$1, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movslq	-20(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	callq	fwrite
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	fflush
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB54_6:                               # %if.end.16
	jmp	.LBB54_20
.LBB54_7:                               # %if.else.17
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rcx
	cmpq	24(%rcx), %rax
	je	.LBB54_12
# BB#8:                                 # %if.then.23
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	24(%rcx), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -24(%rbp)
	movl	-20(%rbp), %edx
	cmpl	-24(%rbp), %edx
	jg	.LBB54_10
# BB#9:                                 # %cond.true
	movl	-20(%rbp), %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB54_11
.LBB54_10:                              # %cond.false
	movl	-24(%rbp), %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB54_11:                              # %cond.end
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -28(%rbp)
	movq	-40(%rbp), %rcx
	movq	24(%rcx), %rdi
	movq	-16(%rbp), %rsi
	movslq	-28(%rbp), %rdx
	callq	memcpy
	movl	-28(%rbp), %eax
	movq	-40(%rbp), %rcx
	movq	24(%rcx), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rcx)
	jmp	.LBB54_19
.LBB54_12:                              # %if.else.43
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$4, %ecx
	cmpl	$0, %ecx
	je	.LBB54_18
# BB#13:                                # %land.lhs.true
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	realloc_port_string
	cmpl	$0, %eax
	je	.LBB54_18
# BB#14:                                # %if.then.50
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	24(%rcx), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -24(%rbp)
	movl	-20(%rbp), %edx
	cmpl	-24(%rbp), %edx
	jg	.LBB54_16
# BB#15:                                # %cond.true.63
	movl	-20(%rbp), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB54_17
.LBB54_16:                              # %cond.false.64
	movl	-24(%rbp), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB54_17:                              # %cond.end.65
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -28(%rbp)
	movq	-40(%rbp), %rcx
	movq	24(%rcx), %rdi
	movq	-16(%rbp), %rsi
	movslq	-20(%rbp), %rdx
	callq	memcpy
	movl	-28(%rbp), %eax
	movq	-40(%rbp), %rcx
	movq	24(%rcx), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rcx)
.LBB54_18:                              # %if.end.76
	jmp	.LBB54_19
.LBB54_19:                              # %if.end.77
	jmp	.LBB54_20
.LBB54_20:                              # %if.end.78
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	putchars, .Lfunc_end54-putchars
	.cfi_endproc

	.globl	putstr
	.align	16, 0x90
	.type	putstr,@function
putstr:                                 # @putstr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp165:
	.cfi_def_cfa_offset 16
.Ltmp166:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp167:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	$-1, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	callq	g_utf8_strlen
	movl	%eax, %edx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	callq	putchars
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	putstr, .Lfunc_end55-putstr
	.cfi_endproc

	.globl	eqv
	.align	16, 0x90
	.type	eqv,@function
eqv:                                    # @eqv
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp168:
	.cfi_def_cfa_offset 16
.Ltmp169:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp170:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	is_string
	cmpl	$0, %eax
	je	.LBB56_4
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	is_string
	cmpl	$0, %eax
	je	.LBB56_3
# BB#2:                                 # %if.then.3
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rcx
	cmpq	8(%rcx), %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movl	%esi, -4(%rbp)
	jmp	.LBB56_23
.LBB56_3:                               # %if.else
	movl	$0, -4(%rbp)
	jmp	.LBB56_23
.LBB56_4:                               # %if.else.7
	movq	-16(%rbp), %rdi
	callq	is_number
	cmpl	$0, %eax
	je	.LBB56_10
# BB#5:                                 # %if.then.10
	movq	-24(%rbp), %rdi
	callq	is_number
	cmpl	$0, %eax
	je	.LBB56_9
# BB#6:                                 # %if.then.13
	movq	-16(%rbp), %rdi
	callq	num_is_integer
	movq	-24(%rbp), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	num_is_integer
	movl	-60(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB56_8
# BB#7:                                 # %if.then.18
	movq	-16(%rbp), %rdi
	callq	nvalue
	movb	%al, -40(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	nvalue
	movb	%al, -56(%rbp)
	movq	%rdx, -48(%rbp)
	movb	-40(%rbp), %al
	movq	-32(%rbp), %rsi
	movb	-56(%rbp), %cl
	movq	-48(%rbp), %rdx
	movzbl	%al, %edi
	movzbl	%cl, %r8d
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	num_eq
	movl	%eax, -4(%rbp)
	jmp	.LBB56_23
.LBB56_8:                               # %if.end
	jmp	.LBB56_9
.LBB56_9:                               # %if.end.23
	movl	$0, -4(%rbp)
	jmp	.LBB56_23
.LBB56_10:                              # %if.else.24
	movq	-16(%rbp), %rdi
	callq	is_character
	cmpl	$0, %eax
	je	.LBB56_14
# BB#11:                                # %if.then.27
	movq	-24(%rbp), %rdi
	callq	is_character
	cmpl	$0, %eax
	je	.LBB56_13
# BB#12:                                # %if.then.30
	movq	-16(%rbp), %rdi
	callq	charvalue
	movq	-24(%rbp), %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	charvalue
	movl	-76(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB56_23
.LBB56_13:                              # %if.else.35
	movl	$0, -4(%rbp)
	jmp	.LBB56_23
.LBB56_14:                              # %if.else.36
	movq	-16(%rbp), %rdi
	callq	is_port
	cmpl	$0, %eax
	je	.LBB56_18
# BB#15:                                # %if.then.39
	movq	-24(%rbp), %rdi
	callq	is_port
	cmpl	$0, %eax
	je	.LBB56_17
# BB#16:                                # %if.then.42
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -4(%rbp)
	jmp	.LBB56_23
.LBB56_17:                              # %if.else.45
	movl	$0, -4(%rbp)
	jmp	.LBB56_23
.LBB56_18:                              # %if.else.46
	movq	-16(%rbp), %rdi
	callq	is_proc
	cmpl	$0, %eax
	je	.LBB56_22
# BB#19:                                # %if.then.49
	movq	-24(%rbp), %rdi
	callq	is_proc
	cmpl	$0, %eax
	je	.LBB56_21
# BB#20:                                # %if.then.52
	movq	-16(%rbp), %rdi
	callq	ivalue
	movq	-24(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	ivalue
	movq	-88(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -4(%rbp)
	jmp	.LBB56_23
.LBB56_21:                              # %if.else.57
	movl	$0, -4(%rbp)
	jmp	.LBB56_23
.LBB56_22:                              # %if.else.58
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -4(%rbp)
.LBB56_23:                              # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	eqv, .Lfunc_end56-eqv
	.cfi_endproc

	.align	16, 0x90
	.type	num_eq,@function
num_eq:                                 # @num_eq
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp171:
	.cfi_def_cfa_offset 16
.Ltmp172:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp173:
	.cfi_def_cfa_register %rbp
	movb	%dl, %al
	movb	%dil, %r8b
	xorl	%edx, %edx
	movb	%dl, %r9b
	movb	%r8b, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movb	%al, -32(%rbp)
	movq	%rcx, -24(%rbp)
	movsbl	-16(%rbp), %edx
	cmpl	$0, %edx
	movb	%r9b, -41(%rbp)         # 1-byte Spill
	je	.LBB57_2
# BB#1:                                 # %land.rhs
	movsbl	-32(%rbp), %eax
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -41(%rbp)          # 1-byte Spill
.LBB57_2:                               # %land.end
	movb	-41(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB57_4
# BB#3:                                 # %if.then
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -36(%rbp)
	jmp	.LBB57_11
.LBB57_4:                               # %if.else
	cmpb	$0, -16(%rbp)
	jne	.LBB57_6
# BB#5:                                 # %cond.true
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB57_7
.LBB57_6:                               # %cond.false
	cvtsi2sdq	-8(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
.LBB57_7:                               # %cond.end
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cmpb	$0, -32(%rbp)
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jne	.LBB57_9
# BB#8:                                 # %cond.true.17
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB57_10
.LBB57_9:                               # %cond.false.20
	cvtsi2sdq	-24(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
.LBB57_10:                              # %cond.end.24
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	sete	%al
	setnp	%cl
	andb	%cl, %al
	andb	$1, %al
	movzbl	%al, %edx
	movl	%edx, -36(%rbp)
.LBB57_11:                              # %if.end
	movl	-36(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end57:
	.size	num_eq, .Lfunc_end57-num_eq
	.cfi_endproc

	.globl	list_length
	.align	16, 0x90
	.type	list_length,@function
list_length:                            # @list_length
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp174:
	.cfi_def_cfa_offset 16
.Ltmp175:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp176:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -48(%rbp)
	movq	%rsi, -40(%rbp)
.LBB58_1:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	jne	.LBB58_3
# BB#2:                                 # %if.then
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB58_12
.LBB58_3:                               # %if.end
                                        #   in Loop: Header=BB58_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	is_pair
	cmpl	$0, %eax
	jne	.LBB58_5
# BB#4:                                 # %if.then.1
	movl	$4294967294, %eax       # imm = 0xFFFFFFFE
	subl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB58_12
.LBB58_5:                               # %if.end.2
                                        #   in Loop: Header=BB58_1 Depth=1
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	-28(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -28(%rbp)
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdx
	cmpq	936(%rdx), %rax
	jne	.LBB58_7
# BB#6:                                 # %if.then.5
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB58_12
.LBB58_7:                               # %if.end.6
                                        #   in Loop: Header=BB58_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	is_pair
	cmpl	$0, %eax
	jne	.LBB58_9
# BB#8:                                 # %if.then.9
	movl	$4294967294, %eax       # imm = 0xFFFFFFFE
	subl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB58_12
.LBB58_9:                               # %if.end.11
                                        #   in Loop: Header=BB58_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	movq	-48(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movq	-40(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movq	-48(%rbp), %rcx
	cmpq	-40(%rbp), %rcx
	jne	.LBB58_11
# BB#10:                                # %if.then.20
	movl	$-1, -4(%rbp)
	jmp	.LBB58_12
.LBB58_11:                              # %if.end.21
                                        #   in Loop: Header=BB58_1 Depth=1
	jmp	.LBB58_1
.LBB58_12:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	list_length, .Lfunc_end58-list_length
	.cfi_endproc

	.globl	scheme_init_new
	.align	16, 0x90
	.type	scheme_init_new,@function
scheme_init_new:                        # @scheme_init_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp177:
	.cfi_def_cfa_offset 16
.Ltmp178:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp179:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$5640, %eax             # imm = 0x1608
	movl	%eax, %edi
	callq	malloc
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	scheme_init
	cmpl	$0, %eax
	jne	.LBB59_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movq	$0, -8(%rbp)
	jmp	.LBB59_3
.LBB59_2:                               # %if.else
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB59_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	scheme_init_new, .Lfunc_end59-scheme_init_new
	.cfi_endproc

	.globl	scheme_init
	.align	16, 0x90
	.type	scheme_init,@function
scheme_init:                            # @scheme_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp180:
	.cfi_def_cfa_offset 16
.Ltmp181:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp182:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$malloc, %rsi
	movabsq	$free, %rdx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	scheme_init_custom_alloc
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end60:
	.size	scheme_init, .Lfunc_end60-scheme_init
	.cfi_endproc

	.globl	scheme_init_new_custom_alloc
	.align	16, 0x90
	.type	scheme_init_new_custom_alloc,@function
scheme_init_new_custom_alloc:           # @scheme_init_new_custom_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp183:
	.cfi_def_cfa_offset 16
.Ltmp184:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp185:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$5640, %eax             # imm = 0x1608
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rcx, %rdi
	callq	*-16(%rbp)
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	scheme_init_custom_alloc
	cmpl	$0, %eax
	jne	.LBB61_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	callq	*%rax
	movq	$0, -8(%rbp)
	jmp	.LBB61_3
.LBB61_2:                               # %if.else
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB61_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	scheme_init_new_custom_alloc, .Lfunc_end61-scheme_init_new_custom_alloc
	.cfi_endproc

	.globl	scheme_init_custom_alloc
	.align	16, 0x90
	.type	scheme_init_custom_alloc,@function
scheme_init_custom_alloc:               # @scheme_init_custom_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp186:
	.cfi_def_cfa_offset 16
.Ltmp187:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp188:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$3, %eax
	movabsq	$vtbl, %rcx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$181, -40(%rbp)
	movb	$1, num_zero
	movq	$0, num_zero+8
	movb	$1, num_one
	movq	$1, num_one+8
	movq	-16(%rbp), %rdx
	movq	%rcx, 5608(%rdx)
	movq	-16(%rbp), %rcx
	movq	$0, 5600(%rcx)
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, (%rdx)
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
	movq	-16(%rbp), %rcx
	movl	$-1, 824(%rcx)
	movq	-16(%rbp), %rcx
	addq	$880, %rcx              # imm = 0x370
	movq	-16(%rbp), %rdx
	movq	%rcx, 904(%rdx)
	movq	-16(%rbp), %rcx
	addq	$912, %rcx              # imm = 0x390
	movq	-16(%rbp), %rdx
	movq	%rcx, 936(%rdx)
	movq	-16(%rbp), %rcx
	addq	$944, %rcx              # imm = 0x3B0
	movq	-16(%rbp), %rdx
	movq	%rcx, 968(%rdx)
	movq	-16(%rbp), %rcx
	addq	$976, %rcx              # imm = 0x3D0
	movq	-16(%rbp), %rdx
	movq	%rcx, 1000(%rdx)
	movq	-16(%rbp), %rcx
	addq	$1008, %rcx             # imm = 0x3F0
	movq	-16(%rbp), %rdx
	movq	%rcx, 1032(%rdx)
	movq	-16(%rbp), %rcx
	addq	$912, %rcx              # imm = 0x390
	movq	-16(%rbp), %rdx
	movq	%rcx, 1144(%rdx)
	movq	-16(%rbp), %rcx
	movq	$0, 1152(%rcx)
	movq	-16(%rbp), %rcx
	movb	$0, 3505(%rcx)
	movq	-16(%rbp), %rcx
	movq	936(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 1160(%rdx)
	movq	-16(%rbp), %rcx
	movq	936(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 1168(%rdx)
	movq	-16(%rbp), %rcx
	movq	936(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 1176(%rdx)
	movq	-16(%rbp), %rcx
	movq	936(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 1184(%rdx)
	movq	-16(%rbp), %rcx
	movl	$0, 3500(%rcx)
	movq	-16(%rbp), %rcx
	movl	$0, 872(%rcx)
	movq	-16(%rbp), %rcx
	movl	$0, 876(%rcx)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	callq	alloc_cellseg
	cmpl	$3, %eax
	je	.LBB62_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movb	$1, 3505(%rax)
	movl	$0, -4(%rbp)
	jmp	.LBB62_9
.LBB62_2:                               # %if.end
	movq	-16(%rbp), %rax
	movb	$0, 3504(%rax)
	movq	-16(%rbp), %rdi
	callq	dump_stack_initialize
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, 848(%rdi)
	movq	-16(%rbp), %rax
	movl	$0, 20(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 5636(%rax)
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movl	$49152, (%rax)          # imm = 0xC000
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	936(%rdi), %rdi
	movq	%rax, 16(%rdi)
	movq	-16(%rbp), %rdi
	movq	936(%rdi), %rdi
	movq	%rax, 8(%rdi)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movl	$49152, (%rax)          # imm = 0xC000
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	968(%rdi), %rdi
	movq	%rax, 16(%rdi)
	movq	-16(%rbp), %rdi
	movq	968(%rdi), %rdi
	movq	%rax, 8(%rdi)
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movl	$49152, (%rax)          # imm = 0xC000
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	1000(%rdi), %rdi
	movq	%rax, 16(%rdi)
	movq	-16(%rbp), %rdi
	movq	1000(%rdi), %rdi
	movq	%rax, 8(%rdi)
	movq	-16(%rbp), %rax
	movq	904(%rax), %rax
	movl	$32773, (%rax)          # imm = 0x8005
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	904(%rdi), %rdi
	movq	%rax, 8(%rdi)
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, 1056(%rdi)
	movq	-16(%rbp), %rdi
	callq	oblist_initial_value
	movq	-16(%rbp), %rdi
	movq	%rax, 1040(%rdi)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rsi
	callq	new_frame_in_env
	movabsq	$.L.str.1, %rsi
	movq	-16(%rbp), %rax
	movq	840(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, 1048(%rdi)
	movq	-16(%rbp), %rdi
	callq	mk_symbol
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	968(%rax), %rdx
	callq	new_slot_in_env
	movabsq	$.L.str.2, %rsi
	movq	-16(%rbp), %rdi
	callq	assign_syntax
	movabsq	$.L.str.3, %rsi
	movq	-16(%rbp), %rdi
	callq	assign_syntax
	movabsq	$.L.str.4, %rsi
	movq	-16(%rbp), %rdi
	callq	assign_syntax
	movabsq	$.L.str.5, %rsi
	movq	-16(%rbp), %rdi
	callq	assign_syntax
	movabsq	$.L.str.6, %rsi
	movq	-16(%rbp), %rdi
	callq	assign_syntax
	movabsq	$.L.str.7, %rsi
	movq	-16(%rbp), %rdi
	callq	assign_syntax
	movabsq	$.L.str.8, %rsi
	movq	-16(%rbp), %rdi
	callq	assign_syntax
	movabsq	$.L.str.9, %rsi
	movq	-16(%rbp), %rdi
	callq	assign_syntax
	movabsq	$.L.str.10, %rsi
	movq	-16(%rbp), %rdi
	callq	assign_syntax
	movabsq	$.L.str.11, %rsi
	movq	-16(%rbp), %rdi
	callq	assign_syntax
	movabsq	$.L.str.12, %rsi
	movq	-16(%rbp), %rdi
	callq	assign_syntax
	movabsq	$.L.str.13, %rsi
	movq	-16(%rbp), %rdi
	callq	assign_syntax
	movabsq	$.L.str.14, %rsi
	movq	-16(%rbp), %rdi
	callq	assign_syntax
	movabsq	$.L.str.15, %rsi
	movq	-16(%rbp), %rdi
	callq	assign_syntax
	movabsq	$.L.str.16, %rsi
	movq	-16(%rbp), %rdi
	callq	assign_syntax
	movabsq	$.L.str.17, %rsi
	movq	-16(%rbp), %rdi
	callq	assign_syntax
	movl	$0, -36(%rbp)
.LBB62_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB62_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB62_3 Depth=1
	movabsq	$dispatch_table, %rax
	movslq	-36(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	cmpq	$0, 8(%rax)
	je	.LBB62_6
# BB#5:                                 # %if.then.52
                                        #   in Loop: Header=BB62_3 Depth=1
	movabsq	$dispatch_table, %rax
	movq	-16(%rbp), %rdi
	movl	-36(%rbp), %esi
	movslq	-36(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rdx
	callq	assign_proc
.LBB62_6:                               # %if.end.56
                                        #   in Loop: Header=BB62_3 Depth=1
	jmp	.LBB62_7
.LBB62_7:                               # %for.inc
                                        #   in Loop: Header=BB62_3 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB62_3
.LBB62_8:                               # %for.end
	movabsq	$.L.str.2, %rsi
	movq	-16(%rbp), %rdi
	callq	mk_symbol
	movabsq	$.L.str.3, %rsi
	movq	-16(%rbp), %rdi
	movq	%rax, 1064(%rdi)
	movq	-16(%rbp), %rdi
	callq	mk_symbol
	movabsq	$.L.str.18, %rsi
	movq	-16(%rbp), %rdi
	movq	%rax, 1072(%rdi)
	movq	-16(%rbp), %rdi
	callq	mk_symbol
	movabsq	$.L.str.19, %rsi
	movq	-16(%rbp), %rdi
	movq	%rax, 1080(%rdi)
	movq	-16(%rbp), %rdi
	callq	mk_symbol
	movabsq	$.L.str.20, %rsi
	movq	-16(%rbp), %rdi
	movq	%rax, 1088(%rdi)
	movq	-16(%rbp), %rdi
	callq	mk_symbol
	movabsq	$.L.str.21, %rsi
	movq	-16(%rbp), %rdi
	movq	%rax, 1096(%rdi)
	movq	-16(%rbp), %rdi
	callq	mk_symbol
	movabsq	$.L.str.22, %rsi
	movq	-16(%rbp), %rdi
	movq	%rax, 1104(%rdi)
	movq	-16(%rbp), %rdi
	callq	mk_symbol
	movabsq	$.L.str.23, %rsi
	movq	-16(%rbp), %rdi
	movq	%rax, 1112(%rdi)
	movq	-16(%rbp), %rdi
	callq	mk_symbol
	movabsq	$.L.str.24, %rsi
	movq	-16(%rbp), %rdi
	movq	%rax, 1120(%rdi)
	movq	-16(%rbp), %rdi
	callq	mk_symbol
	movabsq	$.L.str.25, %rsi
	movq	-16(%rbp), %rdi
	movq	%rax, 1128(%rdi)
	movq	-16(%rbp), %rdi
	callq	mk_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, 1136(%rsi)
	movq	-16(%rbp), %rax
	cmpb	$0, 3505(%rax)
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -4(%rbp)
.LBB62_9:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end62:
	.size	scheme_init_custom_alloc, .Lfunc_end62-scheme_init_custom_alloc
	.cfi_endproc

	.align	16, 0x90
	.type	alloc_cellseg,@function
alloc_cellseg:                          # @alloc_cellseg
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp189:
	.cfi_def_cfa_offset 16
.Ltmp190:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp191:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	$32, -72(%rbp)
	movslq	-72(%rbp), %rdi
	cmpq	$24, %rdi
	jae	.LBB63_2
# BB#1:                                 # %if.then
	movl	$24, -72(%rbp)
.LBB63_2:                               # %if.end
	movl	$0, -68(%rbp)
.LBB63_3:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB63_11 Depth 2
                                        #     Child Loop BB63_16 Depth 2
                                        #     Child Loop BB63_23 Depth 2
	movl	-68(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB63_30
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB63_3 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$49, 824(%rax)
	jl	.LBB63_6
# BB#5:                                 # %if.then.6
	movl	-68(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB63_31
.LBB63_6:                               # %if.end.7
                                        #   in Loop: Header=BB63_3 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movslq	-72(%rbp), %rcx
	addq	$600000, %rcx           # imm = 0x927C0
	movq	%rcx, %rdi
	callq	*%rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB63_8
# BB#7:                                 # %if.then.11
	movl	-68(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB63_31
.LBB63_8:                               # %if.end.12
                                        #   in Loop: Header=BB63_3 Depth=1
	movq	-16(%rbp), %rax
	movl	824(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 824(%rax)
	movslq	%ecx, %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rax, 24(%rsi,%rdx,8)
	movq	-56(%rbp), %rax
	movslq	-72(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movl	%ecx, %edx
	movq	-80(%rbp), %rsi         # 8-byte Reload
	divq	%rsi
	cmpq	$0, %rdx
	je	.LBB63_10
# BB#9:                                 # %if.then.18
                                        #   in Loop: Header=BB63_3 Depth=1
	movslq	-72(%rbp), %rax
	movq	-56(%rbp), %rcx
	movslq	-72(%rbp), %rdx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rax
	xorl	%esi, %esi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movl	%esi, %edx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	divq	%rcx
	addq	$1, %rax
	movq	-88(%rbp), %rdi         # 8-byte Reload
	imulq	%rax, %rdi
	movq	%rdi, -56(%rbp)
.LBB63_10:                              # %if.end.22
                                        #   in Loop: Header=BB63_3 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rax, 424(%rdx,%rcx,8)
.LBB63_11:                              # %while.cond
                                        #   Parent Loop BB63_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -64(%rbp)
	movb	%cl, -97(%rbp)          # 1-byte Spill
	jle	.LBB63_13
# BB#12:                                # %land.rhs
                                        #   in Loop: Header=BB63_11 Depth=2
	movq	-64(%rbp), %rax
	subq	$1, %rax
	movq	-16(%rbp), %rcx
	movq	424(%rcx,%rax,8), %rax
	movq	-64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	cmpq	424(%rdx,%rcx,8), %rax
	seta	%sil
	movb	%sil, -97(%rbp)         # 1-byte Spill
.LBB63_13:                              # %land.end
                                        #   in Loop: Header=BB63_11 Depth=2
	movb	-97(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB63_14
	jmp	.LBB63_15
.LBB63_14:                              # %while.body
                                        #   in Loop: Header=BB63_11 Depth=2
	movq	-64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	424(%rcx,%rax,8), %rax
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	subq	$1, %rax
	movq	-16(%rbp), %rcx
	movq	424(%rcx,%rax,8), %rax
	movq	-64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rax, 424(%rdx,%rcx,8)
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$-1, %rdx
	movq	%rdx, -64(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rax, 416(%rdx,%rcx,8)
	jmp	.LBB63_11
.LBB63_15:                              # %while.end
                                        #   in Loop: Header=BB63_3 Depth=1
	movq	-16(%rbp), %rax
	movq	1152(%rax), %rcx
	addq	$25000, %rcx            # imm = 0x61A8
	movq	%rcx, 1152(%rax)
	movq	-32(%rbp), %rax
	addq	$600000, %rax           # imm = 0x927C0
	addq	$-24, %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB63_16:                              # %for.cond.43
                                        #   Parent Loop BB63_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	ja	.LBB63_19
# BB#17:                                # %for.body.46
                                        #   in Loop: Header=BB63_16 Depth=2
	movq	-48(%rbp), %rax
	movl	$0, (%rax)
	movq	-48(%rbp), %rax
	addq	$24, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 8(%rcx)
# BB#18:                                # %for.inc
                                        #   in Loop: Header=BB63_16 Depth=2
	movq	-48(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB63_16
.LBB63_19:                              # %for.end
                                        #   in Loop: Header=BB63_3 Depth=1
	movq	-16(%rbp), %rax
	movq	1144(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	je	.LBB63_21
# BB#20:                                # %lor.lhs.false
                                        #   in Loop: Header=BB63_3 Depth=1
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	1144(%rcx), %rax
	jae	.LBB63_22
.LBB63_21:                              # %if.then.56
                                        #   in Loop: Header=BB63_3 Depth=1
	movq	-16(%rbp), %rax
	movq	1144(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 1144(%rcx)
	jmp	.LBB63_28
.LBB63_22:                              # %if.else
                                        #   in Loop: Header=BB63_3 Depth=1
	movq	-16(%rbp), %rax
	movq	1144(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB63_23:                              # %while.cond.63
                                        #   Parent Loop BB63_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	-16(%rbp), %rsi
	cmpq	936(%rsi), %rdx
	movb	%cl, -98(%rbp)          # 1-byte Spill
	je	.LBB63_25
# BB#24:                                # %land.rhs.70
                                        #   in Loop: Header=BB63_23 Depth=2
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpq	16(%rcx), %rax
	seta	%dl
	movb	%dl, -98(%rbp)          # 1-byte Spill
.LBB63_25:                              # %land.end.76
                                        #   in Loop: Header=BB63_23 Depth=2
	movb	-98(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB63_26
	jmp	.LBB63_27
.LBB63_26:                              # %while.body.77
                                        #   in Loop: Header=BB63_23 Depth=2
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB63_23
.LBB63_27:                              # %while.end.81
                                        #   in Loop: Header=BB63_3 Depth=1
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 16(%rcx)
.LBB63_28:                              # %if.end.91
                                        #   in Loop: Header=BB63_3 Depth=1
	jmp	.LBB63_29
.LBB63_29:                              # %for.inc.92
                                        #   in Loop: Header=BB63_3 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB63_3
.LBB63_30:                              # %for.end.94
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB63_31:                              # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end63:
	.size	alloc_cellseg, .Lfunc_end63-alloc_cellseg
	.cfi_endproc

	.align	16, 0x90
	.type	dump_stack_initialize,@function
dump_stack_initialize:                  # @dump_stack_initialize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp192:
	.cfi_def_cfa_offset 16
.Ltmp193:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp194:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	dump_stack_reset
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end64:
	.size	dump_stack_initialize, .Lfunc_end64-dump_stack_initialize
	.cfi_endproc

	.align	16, 0x90
	.type	oblist_initial_value,@function
oblist_initial_value:                   # @oblist_initial_value
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp195:
	.cfi_def_cfa_offset 16
.Ltmp196:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp197:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$461, %esi              # imm = 0x1CD
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	mk_vector
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end65:
	.size	oblist_initial_value, .Lfunc_end65-oblist_initial_value
	.cfi_endproc

	.align	16, 0x90
	.type	new_frame_in_env,@function
new_frame_in_env:                       # @new_frame_in_env
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp198:
	.cfi_def_cfa_offset 16
.Ltmp199:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp200:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	cmpq	936(%rdi), %rsi
	jne	.LBB66_2
# BB#1:                                 # %if.then
	movl	$461, %esi              # imm = 0x1CD
	movq	-8(%rbp), %rdi
	callq	mk_vector
	movq	%rax, -24(%rbp)
	jmp	.LBB66_3
.LBB66_2:                               # %if.else
	movq	-8(%rbp), %rax
	movq	936(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB66_3:                               # %if.end
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	_cons
	movq	-8(%rbp), %rdx
	movq	%rax, 840(%rdx)
	movq	-8(%rbp), %rax
	movq	840(%rax), %rax
	movl	$14, (%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end66:
	.size	new_frame_in_env, .Lfunc_end66-new_frame_in_env
	.cfi_endproc

	.align	16, 0x90
	.type	new_slot_in_env,@function
new_slot_in_env:                        # @new_slot_in_env
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp201:
	.cfi_def_cfa_offset 16
.Ltmp202:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp203:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	840(%rdx), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	callq	new_slot_spec_in_env
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end67:
	.size	new_slot_in_env, .Lfunc_end67-new_slot_in_env
	.cfi_endproc

	.align	16, 0x90
	.type	assign_syntax,@function
assign_syntax:                          # @assign_syntax
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp204:
	.cfi_def_cfa_offset 16
.Ltmp205:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp206:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	oblist_add_by_name
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	orl	$4096, %ecx             # imm = 0x1000
	movl	%ecx, (%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end68:
	.size	assign_syntax, .Lfunc_end68-assign_syntax
	.cfi_endproc

	.align	16, 0x90
	.type	assign_proc,@function
assign_proc:                            # @assign_proc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp207:
	.cfi_def_cfa_offset 16
.Ltmp208:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp209:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	mk_symbol
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	mk_proc
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	new_slot_in_env
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end69:
	.size	assign_proc, .Lfunc_end69-assign_proc
	.cfi_endproc

	.globl	scheme_set_input_port_file
	.align	16, 0x90
	.type	scheme_set_input_port_file,@function
scheme_set_input_port_file:             # @scheme_set_input_port_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp210:
	.cfi_def_cfa_offset 16
.Ltmp211:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp212:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$16, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	port_from_file
	movq	-8(%rbp), %rsi
	movq	%rax, 1160(%rsi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end70:
	.size	scheme_set_input_port_file, .Lfunc_end70-scheme_set_input_port_file
	.cfi_endproc

	.align	16, 0x90
	.type	port_from_file,@function
port_from_file:                         # @port_from_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp213:
	.cfi_def_cfa_offset 16
.Ltmp214:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp215:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	callq	port_rep_from_file
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB71_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB71_3
.LBB71_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	mk_port
	movq	%rax, -8(%rbp)
.LBB71_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end71:
	.size	port_from_file, .Lfunc_end71-port_from_file
	.cfi_endproc

	.globl	scheme_set_input_port_string
	.align	16, 0x90
	.type	scheme_set_input_port_string,@function
scheme_set_input_port_string:           # @scheme_set_input_port_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp216:
	.cfi_def_cfa_offset 16
.Ltmp217:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp218:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$16, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	port_from_string
	movq	-8(%rbp), %rdx
	movq	%rax, 1160(%rdx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end72:
	.size	scheme_set_input_port_string, .Lfunc_end72-scheme_set_input_port_string
	.cfi_endproc

	.align	16, 0x90
	.type	port_from_string,@function
port_from_string:                       # @port_from_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp219:
	.cfi_def_cfa_offset 16
.Ltmp220:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp221:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	callq	port_rep_from_string
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB73_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB73_3
.LBB73_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	mk_port
	movq	%rax, -8(%rbp)
.LBB73_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end73:
	.size	port_from_string, .Lfunc_end73-port_from_string
	.cfi_endproc

	.globl	scheme_set_output_port_file
	.align	16, 0x90
	.type	scheme_set_output_port_file,@function
scheme_set_output_port_file:            # @scheme_set_output_port_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp222:
	.cfi_def_cfa_offset 16
.Ltmp223:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp224:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$32, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	port_from_file
	movq	-8(%rbp), %rsi
	movq	%rax, 1168(%rsi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end74:
	.size	scheme_set_output_port_file, .Lfunc_end74-scheme_set_output_port_file
	.cfi_endproc

	.globl	scheme_set_output_port_string
	.align	16, 0x90
	.type	scheme_set_output_port_string,@function
scheme_set_output_port_string:          # @scheme_set_output_port_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp225:
	.cfi_def_cfa_offset 16
.Ltmp226:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp227:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$32, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	port_from_string
	movq	-8(%rbp), %rdx
	movq	%rax, 1168(%rdx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end75:
	.size	scheme_set_output_port_string, .Lfunc_end75-scheme_set_output_port_string
	.cfi_endproc

	.globl	scheme_set_external_data
	.align	16, 0x90
	.type	scheme_set_external_data,@function
scheme_set_external_data:               # @scheme_set_external_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp228:
	.cfi_def_cfa_offset 16
.Ltmp229:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp230:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 5592(%rdi)
	popq	%rbp
	retq
.Lfunc_end76:
	.size	scheme_set_external_data, .Lfunc_end76-scheme_set_external_data
	.cfi_endproc

	.globl	scheme_deinit
	.align	16, 0x90
	.type	scheme_deinit,@function
scheme_deinit:                          # @scheme_deinit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp231:
	.cfi_def_cfa_offset 16
.Ltmp232:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp233:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	936(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, 1040(%rax)
	movq	-8(%rbp), %rax
	movq	936(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, 1048(%rdi)
	movq	-8(%rbp), %rdi
	callq	dump_stack_free
	movq	-8(%rbp), %rax
	movq	936(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, 840(%rdi)
	movq	-8(%rbp), %rax
	movq	936(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, 848(%rdi)
	movq	-8(%rbp), %rax
	movq	936(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, 832(%rdi)
	movq	-8(%rbp), %rax
	movq	936(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, 5576(%rdi)
	movq	-8(%rbp), %rax
	movq	1160(%rax), %rdi
	callq	is_port
	cmpl	$0, %eax
	je	.LBB77_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	1160(%rax), %rax
	movl	$16384, (%rax)          # imm = 0x4000
.LBB77_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	936(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 1160(%rcx)
	movq	-8(%rbp), %rax
	movq	936(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 1168(%rcx)
	movq	-8(%rbp), %rax
	movq	1176(%rax), %rdi
	callq	is_port
	cmpl	$0, %eax
	je	.LBB77_4
# BB#3:                                 # %if.then.12
	movq	-8(%rbp), %rax
	movq	1176(%rax), %rax
	movl	$16384, (%rax)          # imm = 0x4000
.LBB77_4:                               # %if.end.15
	movq	-8(%rbp), %rax
	movq	936(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 1176(%rcx)
	movq	-8(%rbp), %rax
	movq	1184(%rax), %rdi
	callq	is_port
	cmpl	$0, %eax
	je	.LBB77_6
# BB#5:                                 # %if.then.20
	movq	-8(%rbp), %rax
	movq	1184(%rax), %rax
	movl	$16384, (%rax)          # imm = 0x4000
.LBB77_6:                               # %if.end.23
	movq	-8(%rbp), %rax
	movq	936(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 1184(%rcx)
	movq	-8(%rbp), %rax
	movb	$0, 3504(%rax)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	936(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	936(%rax), %rdx
	callq	gc
	movl	$0, -12(%rbp)
.LBB77_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	824(%rcx), %eax
	jg	.LBB77_10
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB77_7 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	24(%rdx,%rcx,8), %rdi
	callq	*%rax
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB77_7 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB77_7
.LBB77_10:                              # %for.end
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$1192, %rcx             # imm = 0x4A8
	shlq	$5, %rax
	addq	%rax, %rcx
	movq	24(%rcx), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -12(%rbp)
.LBB77_11:                              # %for.cond.30
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	3496(%rcx), %eax
	jge	.LBB77_16
# BB#12:                                # %for.body.32
                                        #   in Loop: Header=BB77_11 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB77_14
# BB#13:                                # %if.then.34
                                        #   in Loop: Header=BB77_11 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
.LBB77_14:                              # %if.end.36
                                        #   in Loop: Header=BB77_11 Depth=1
	jmp	.LBB77_15
.LBB77_15:                              # %for.inc.37
                                        #   in Loop: Header=BB77_11 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB77_11
.LBB77_16:                              # %for.end.39
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end77:
	.size	scheme_deinit, .Lfunc_end77-scheme_deinit
	.cfi_endproc

	.align	16, 0x90
	.type	dump_stack_free,@function
dump_stack_free:                        # @dump_stack_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp234:
	.cfi_def_cfa_offset 16
.Ltmp235:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp236:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	936(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, 856(%rax)
	popq	%rbp
	retq
.Lfunc_end78:
	.size	dump_stack_free, .Lfunc_end78-dump_stack_free
	.cfi_endproc

	.align	16, 0x90
	.type	gc,@function
gc:                                     # @gc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp237:
	.cfi_def_cfa_offset 16
.Ltmp238:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp239:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	cmpb	$0, 3504(%rdx)
	je	.LBB79_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.275, %rsi
	movq	-8(%rbp), %rdi
	callq	putstr
.LBB79_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	1040(%rax), %rdi
	callq	mark
	movq	-8(%rbp), %rax
	movq	1048(%rax), %rdi
	callq	mark
	movq	-8(%rbp), %rax
	movq	832(%rax), %rdi
	callq	mark
	movq	-8(%rbp), %rax
	movq	840(%rax), %rdi
	callq	mark
	movq	-8(%rbp), %rax
	movq	848(%rax), %rdi
	callq	mark
	movq	-8(%rbp), %rdi
	callq	dump_stack_mark
	movq	-8(%rbp), %rax
	movq	5576(%rax), %rdi
	callq	mark
	movq	-8(%rbp), %rax
	movq	1160(%rax), %rdi
	callq	mark
	movq	-8(%rbp), %rax
	movq	1176(%rax), %rdi
	callq	mark
	movq	-8(%rbp), %rax
	movq	1168(%rax), %rdi
	callq	mark
	movq	-8(%rbp), %rax
	movq	1184(%rax), %rdi
	callq	mark
	movq	-8(%rbp), %rax
	movq	904(%rax), %rax
	movq	8(%rax), %rdi
	callq	mark
	movq	-8(%rbp), %rax
	movq	1056(%rax), %rdi
	callq	mark
	movq	-16(%rbp), %rdi
	callq	mark
	movq	-24(%rbp), %rdi
	callq	mark
	movq	-8(%rbp), %rax
	movq	936(%rax), %rax
	movl	(%rax), %ecx
	andl	$32767, %ecx            # imm = 0x7FFF
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 1152(%rax)
	movq	-8(%rbp), %rax
	movq	936(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, 1144(%rdi)
	movq	-8(%rbp), %rax
	movl	824(%rax), %ecx
	movl	%ecx, -36(%rbp)
.LBB79_3:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB79_5 Depth 2
	cmpl	$0, -36(%rbp)
	jl	.LBB79_14
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB79_3 Depth=1
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	424(%rcx,%rax,8), %rax
	addq	$600000, %rax           # imm = 0x927C0
	movq	%rax, -32(%rbp)
.LBB79_5:                               # %while.cond
                                        #   Parent Loop BB79_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-32(%rbp), %rax
	addq	$-24, %rax
	movq	%rax, -32(%rbp)
	movslq	-36(%rbp), %rcx
	movq	-8(%rbp), %rdx
	cmpq	424(%rdx,%rcx,8), %rax
	jb	.LBB79_12
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB79_5 Depth=2
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	andl	$32768, %ecx            # imm = 0x8000
	cmpl	$0, %ecx
	je	.LBB79_8
# BB#7:                                 # %if.then.9
                                        #   in Loop: Header=BB79_5 Depth=2
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	andl	$32767, %ecx            # imm = 0x7FFF
	movl	%ecx, (%rax)
	jmp	.LBB79_11
.LBB79_8:                               # %if.else
                                        #   in Loop: Header=BB79_5 Depth=2
	movq	-32(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB79_10
# BB#9:                                 # %if.then.14
                                        #   in Loop: Header=BB79_5 Depth=2
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	finalize_cell
	movq	-32(%rbp), %rsi
	movl	$0, (%rsi)
	movq	-8(%rbp), %rsi
	movq	936(%rsi), %rsi
	movq	-32(%rbp), %rdi
	movq	%rsi, 8(%rdi)
.LBB79_10:                              # %if.end.20
                                        #   in Loop: Header=BB79_5 Depth=2
	movq	-8(%rbp), %rax
	movq	1152(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 1152(%rax)
	movq	-8(%rbp), %rax
	movq	1144(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 1144(%rcx)
.LBB79_11:                              # %if.end.26
                                        #   in Loop: Header=BB79_5 Depth=2
	jmp	.LBB79_5
.LBB79_12:                              # %while.end
                                        #   in Loop: Header=BB79_3 Depth=1
	jmp	.LBB79_13
.LBB79_13:                              # %for.inc
                                        #   in Loop: Header=BB79_3 Depth=1
	movl	-36(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB79_3
.LBB79_14:                              # %for.end
	movq	-8(%rbp), %rax
	cmpb	$0, 3504(%rax)
	je	.LBB79_16
# BB#15:                                # %if.then.29
	movl	$80, %eax
	movl	%eax, %esi
	movabsq	$.L.str.276, %rdx
	leaq	-128(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	1152(%rcx), %rcx
	movb	$0, %al
	callq	snprintf
	leaq	-128(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	putstr
.LBB79_16:                              # %if.end.32
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end79:
	.size	gc, .Lfunc_end79-gc
	.cfi_endproc

	.globl	scheme_load_file
	.align	16, 0x90
	.type	scheme_load_file,@function
scheme_load_file:                       # @scheme_load_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp240:
	.cfi_def_cfa_offset 16
.Ltmp241:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp242:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	scheme_load_named_file
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end80:
	.size	scheme_load_file, .Lfunc_end80-scheme_load_file
	.cfi_endproc

	.globl	scheme_load_named_file
	.align	16, 0x90
	.type	scheme_load_named_file,@function
scheme_load_named_file:                 # @scheme_load_named_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp243:
	.cfi_def_cfa_offset 16
.Ltmp244:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp245:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	dump_stack_reset
	movq	-8(%rbp), %rdx
	movq	1048(%rdx), %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, 840(%rsi)
	movq	-8(%rbp), %rdx
	movl	$0, 3496(%rdx)
	movq	-8(%rbp), %rdx
	movb	$17, 1192(%rdx)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, 1200(%rsi)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rdx
	addq	$1192, %rdx             # imm = 0x4A8
	movq	%rdx, %rsi
	callq	mk_port
	movq	-8(%rbp), %rdx
	movq	%rax, 1184(%rdx)
	movq	-8(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-16(%rbp), %rax
	cmpq	stdin, %rax
	jne	.LBB81_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	$1, 872(%rax)
.LBB81_2:                               # %if.end
	movq	-8(%rbp), %rax
	movl	$0, 1212(%rax)
	movq	-16(%rbp), %rax
	cmpq	stdin, %rax
	je	.LBB81_5
# BB#3:                                 # %land.lhs.true
	cmpq	$0, -24(%rbp)
	je	.LBB81_5
# BB#4:                                 # %if.then.9
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	callq	strlen
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movl	%ecx, %esi
	movl	-36(%rbp), %ecx         # 4-byte Reload
	callq	store_string
	movq	-8(%rbp), %rdx
	movq	%rax, 1216(%rdx)
.LBB81_5:                               # %if.end.17
	movq	-8(%rbp), %rax
	movq	1184(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 1160(%rcx)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movslq	3496(%rax), %rsi
	callq	mk_integer
	movl	$1, %esi
	movq	-8(%rbp), %rcx
	movq	%rax, 832(%rcx)
	movq	-8(%rbp), %rdi
	callq	Eval_Cycle
	movq	-8(%rbp), %rax
	movq	1184(%rax), %rax
	movl	$16384, (%rax)          # imm = 0x4000
	movq	-8(%rbp), %rax
	cmpl	$0, 16(%rax)
	jne	.LBB81_7
# BB#6:                                 # %if.then.26
	movq	-8(%rbp), %rax
	cmpl	$0, 3500(%rax)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 16(%rax)
.LBB81_7:                               # %if.end.30
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end81:
	.size	scheme_load_named_file, .Lfunc_end81-scheme_load_named_file
	.cfi_endproc

	.align	16, 0x90
	.type	dump_stack_reset,@function
dump_stack_reset:                       # @dump_stack_reset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp246:
	.cfi_def_cfa_offset 16
.Ltmp247:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp248:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	936(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, 856(%rax)
	popq	%rbp
	retq
.Lfunc_end82:
	.size	dump_stack_reset, .Lfunc_end82-dump_stack_reset
	.cfi_endproc

	.align	16, 0x90
	.type	mk_port,@function
mk_port:                                # @mk_port
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp249:
	.cfi_def_cfa_offset 16
.Ltmp250:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp251:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	936(%rsi), %rsi
	movq	-8(%rbp), %rax
	movq	936(%rax), %rdx
	callq	get_cell
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$16394, (%rax)          # imm = 0x400A
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end83:
	.size	mk_port, .Lfunc_end83-mk_port
	.cfi_endproc

	.align	16, 0x90
	.type	Eval_Cycle,@function
Eval_Cycle:                             # @Eval_Cycle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp252:
	.cfi_def_cfa_offset 16
.Ltmp253:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp254:
	.cfi_def_cfa_register %rbp
	subq	$1152, %rsp             # imm = 0x480
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rdi
	movl	%esi, 5584(%rdi)
.LBB84_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB84_10 Depth 2
	movabsq	$dispatch_table, %rax
	movq	-8(%rbp), %rcx
	movslq	5584(%rcx), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB84_31
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB84_1 Depth=1
	movl	$1, -1060(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	832(%rax), %rsi
	callq	list_length
	movl	%eax, -1064(%rbp)
	movl	-1064(%rbp), %eax
	movq	-24(%rbp), %rsi
	cmpl	16(%rsi), %eax
	jge	.LBB84_4
# BB#3:                                 # %if.then.4
                                        #   in Loop: Header=BB84_1 Depth=1
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %esi
	movabsq	$.L.str.277, %rdx
	movabsq	$.L.str.279, %rcx
	movabsq	$.L.str.278, %rdi
	leaq	-1056(%rbp), %r8
	movl	$0, -1060(%rbp)
	movq	-24(%rbp), %r9
	movq	8(%r9), %r9
	movq	-24(%rbp), %r10
	movl	16(%r10), %eax
	movq	-24(%rbp), %r10
	cmpl	20(%r10), %eax
	cmoveq	%rdi, %rcx
	movq	-24(%rbp), %rdi
	movl	16(%rdi), %eax
	movq	%r8, %rdi
	movq	%rcx, -1104(%rbp)       # 8-byte Spill
	movq	%r9, %rcx
	movq	-1104(%rbp), %r8        # 8-byte Reload
	movl	%eax, %r9d
	movb	$0, %al
	callq	snprintf
	movl	%eax, -1108(%rbp)       # 4-byte Spill
.LBB84_4:                               # %if.end
                                        #   in Loop: Header=BB84_1 Depth=1
	cmpl	$0, -1060(%rbp)
	je	.LBB84_7
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB84_1 Depth=1
	movl	-1064(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	20(%rcx), %eax
	jle	.LBB84_7
# BB#6:                                 # %if.then.12
                                        #   in Loop: Header=BB84_1 Depth=1
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %esi
	movabsq	$.L.str.277, %rdx
	movabsq	$.L.str.280, %rcx
	movabsq	$.L.str.278, %rdi
	leaq	-1056(%rbp), %r8
	movl	$0, -1060(%rbp)
	movq	-24(%rbp), %r9
	movq	8(%r9), %r9
	movq	-24(%rbp), %r10
	movl	16(%r10), %eax
	movq	-24(%rbp), %r10
	cmpl	20(%r10), %eax
	cmoveq	%rdi, %rcx
	movq	-24(%rbp), %rdi
	movl	20(%rdi), %eax
	movq	%r8, %rdi
	movq	%rcx, -1120(%rbp)       # 8-byte Spill
	movq	%r9, %rcx
	movq	-1120(%rbp), %r8        # 8-byte Reload
	movl	%eax, %r9d
	movb	$0, %al
	callq	snprintf
	movl	%eax, -1124(%rbp)       # 4-byte Spill
.LBB84_7:                               # %if.end.21
                                        #   in Loop: Header=BB84_1 Depth=1
	cmpl	$0, -1060(%rbp)
	je	.LBB84_26
# BB#8:                                 # %if.then.23
                                        #   in Loop: Header=BB84_1 Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB84_25
# BB#9:                                 # %if.then.25
                                        #   in Loop: Header=BB84_1 Depth=1
	movl	$0, -1068(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -1080(%rbp)
	movq	-8(%rbp), %rax
	movq	832(%rax), %rax
	movq	%rax, -1088(%rbp)
.LBB84_10:                              # %do.body
                                        #   Parent Loop BB84_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1088(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -1096(%rbp)
	movq	-1080(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, -1072(%rbp)
	movl	-1072(%rbp), %ecx
	movsbl	.L.str.139, %edx
	cmpl	%edx, %ecx
	jne	.LBB84_15
# BB#11:                                # %if.then.31
                                        #   in Loop: Header=BB84_10 Depth=2
	movq	-1096(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	936(%rcx), %rax
	je	.LBB84_14
# BB#12:                                # %land.lhs.true.34
                                        #   in Loop: Header=BB84_10 Depth=2
	movq	-1096(%rbp), %rdi
	callq	is_pair
	cmpl	$0, %eax
	jne	.LBB84_14
# BB#13:                                # %if.then.37
                                        #   in Loop: Header=BB84_1 Depth=1
	jmp	.LBB84_22
.LBB84_14:                              # %if.end.38
                                        #   in Loop: Header=BB84_10 Depth=2
	jmp	.LBB84_18
.LBB84_15:                              # %if.else
                                        #   in Loop: Header=BB84_10 Depth=2
	movabsq	$tests, %rax
	movslq	-1072(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	-1096(%rbp), %rdi
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB84_17
# BB#16:                                # %if.then.42
                                        #   in Loop: Header=BB84_1 Depth=1
	jmp	.LBB84_22
.LBB84_17:                              # %if.end.43
                                        #   in Loop: Header=BB84_10 Depth=2
	jmp	.LBB84_18
.LBB84_18:                              # %if.end.44
                                        #   in Loop: Header=BB84_10 Depth=2
	movq	-1080(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB84_20
# BB#19:                                # %if.then.49
                                        #   in Loop: Header=BB84_10 Depth=2
	movq	-1080(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1080(%rbp)
.LBB84_20:                              # %if.end.50
                                        #   in Loop: Header=BB84_10 Depth=2
	movq	-1088(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -1088(%rbp)
	movl	-1068(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -1068(%rbp)
# BB#21:                                # %do.cond
                                        #   in Loop: Header=BB84_10 Depth=2
	movl	-1068(%rbp), %eax
	cmpl	-1064(%rbp), %eax
	jl	.LBB84_10
.LBB84_22:                              # %do.end
                                        #   in Loop: Header=BB84_1 Depth=1
	movl	-1068(%rbp), %eax
	cmpl	-1064(%rbp), %eax
	jge	.LBB84_24
# BB#23:                                # %if.then.57
                                        #   in Loop: Header=BB84_1 Depth=1
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %esi
	movabsq	$.L.str.281, %rdx
	movabsq	$tests, %rcx
	leaq	-1056(%rbp), %rdi
	movl	$0, -1060(%rbp)
	movq	-24(%rbp), %r8
	movq	8(%r8), %r8
	movl	-1068(%rbp), %eax
	addl	$1, %eax
	movslq	-1072(%rbp), %r9
	shlq	$4, %r9
	addq	%r9, %rcx
	movq	8(%rcx), %r9
	movq	%r8, %rcx
	movl	%eax, %r8d
	movb	$0, %al
	callq	snprintf
	movl	%eax, -1128(%rbp)       # 4-byte Spill
.LBB84_24:                              # %if.end.63
                                        #   in Loop: Header=BB84_1 Depth=1
	jmp	.LBB84_25
.LBB84_25:                              # %if.end.64
                                        #   in Loop: Header=BB84_1 Depth=1
	jmp	.LBB84_26
.LBB84_26:                              # %if.end.65
                                        #   in Loop: Header=BB84_1 Depth=1
	cmpl	$0, -1060(%rbp)
	jne	.LBB84_30
# BB#27:                                # %if.then.67
                                        #   in Loop: Header=BB84_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	leaq	-1056(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	_Error_1
	movq	-8(%rbp), %rdx
	cmpq	936(%rdx), %rax
	jne	.LBB84_29
# BB#28:                                # %if.then.73
	jmp	.LBB84_36
.LBB84_29:                              # %if.end.74
                                        #   in Loop: Header=BB84_1 Depth=1
	movabsq	$dispatch_table, %rax
	movq	-8(%rbp), %rcx
	movslq	5584(%rcx), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
.LBB84_30:                              # %if.end.78
                                        #   in Loop: Header=BB84_1 Depth=1
	jmp	.LBB84_31
.LBB84_31:                              # %if.end.79
                                        #   in Loop: Header=BB84_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	ok_to_freely_gc
	movq	-24(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	5584(%rcx), %esi
	movq	%rdi, -1136(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	-1136(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	movq	-8(%rbp), %rcx
	cmpq	936(%rcx), %rax
	jne	.LBB84_33
# BB#32:                                # %if.then.85
	jmp	.LBB84_36
.LBB84_33:                              # %if.end.86
                                        #   in Loop: Header=BB84_1 Depth=1
	movq	-8(%rbp), %rax
	cmpb	$0, 3505(%rax)
	je	.LBB84_35
# BB#34:                                # %if.then.88
	movabsq	$.L.str.282, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -1140(%rbp)       # 4-byte Spill
	jmp	.LBB84_36
.LBB84_35:                              # %if.end.90
                                        #   in Loop: Header=BB84_1 Depth=1
	jmp	.LBB84_1
.LBB84_36:                              # %return
	addq	$1152, %rsp             # imm = 0x480
	popq	%rbp
	retq
.Lfunc_end84:
	.size	Eval_Cycle, .Lfunc_end84-Eval_Cycle
	.cfi_endproc

	.globl	scheme_load_string
	.align	16, 0x90
	.type	scheme_load_string,@function
scheme_load_string:                     # @scheme_load_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp255:
	.cfi_def_cfa_offset 16
.Ltmp256:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp257:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	dump_stack_reset
	movq	-8(%rbp), %rsi
	movq	1048(%rsi), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 840(%rdi)
	movq	-8(%rbp), %rsi
	movl	$0, 3496(%rsi)
	movq	-8(%rbp), %rsi
	movb	$18, 1192(%rsi)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 1200(%rdi)
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-24(%rbp), %rsi         # 8-byte Reload
	addq	%rax, %rsi
	movq	-8(%rbp), %rax
	movq	%rsi, 1208(%rax)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rsi
	movq	%rax, 1216(%rsi)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	addq	$1192, %rax             # imm = 0x4A8
	movq	%rax, %rsi
	callq	mk_port
	movq	-8(%rbp), %rsi
	movq	%rax, 1184(%rsi)
	movq	-8(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 872(%rax)
	movq	-8(%rbp), %rax
	movq	1184(%rax), %rax
	movq	-8(%rbp), %rsi
	movq	%rax, 1160(%rsi)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movslq	3496(%rax), %rsi
	callq	mk_integer
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movq	%rax, 832(%rdi)
	movq	-8(%rbp), %rdi
	callq	Eval_Cycle
	movq	-8(%rbp), %rax
	movq	1184(%rax), %rax
	movl	$16384, (%rax)          # imm = 0x4000
	movq	-8(%rbp), %rax
	cmpl	$0, 16(%rax)
	jne	.LBB85_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	cmpl	$0, 3500(%rax)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 16(%rax)
.LBB85_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end85:
	.size	scheme_load_string, .Lfunc_end85-scheme_load_string
	.cfi_endproc

	.globl	scheme_define
	.align	16, 0x90
	.type	scheme_define,@function
scheme_define:                          # @scheme_define
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp258:
	.cfi_def_cfa_offset 16
.Ltmp259:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp260:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	%eax, %ecx
	callq	find_slot_in_env
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	cmpq	936(%rdx), %rax
	je	.LBB86_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	set_slot_in_env
	jmp	.LBB86_3
.LBB86_2:                               # %if.else
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	new_slot_spec_in_env
.LBB86_3:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end86:
	.size	scheme_define, .Lfunc_end86-scheme_define
	.cfi_endproc

	.align	16, 0x90
	.type	find_slot_in_env,@function
find_slot_in_env:                       # @find_slot_in_env
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp261:
	.cfi_def_cfa_offset 16
.Ltmp262:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp263:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -48(%rbp)
.LBB87_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB87_6 Depth 2
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	je	.LBB87_17
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB87_1 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdi
	callq	is_vector
	cmpl	$0, %eax
	je	.LBB87_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB87_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	symname
	movq	-48(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	16(%rdi), %rdi
	movl	%edi, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	hash_fn
	movl	%eax, -60(%rbp)
	movq	-48(%rbp), %rdi
	movq	8(%rdi), %rdi
	movl	-60(%rbp), %esi
	callq	vector_elem
	movq	%rax, -56(%rbp)
	jmp	.LBB87_5
.LBB87_4:                               # %if.else
                                        #   in Loop: Header=BB87_1 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB87_5:                               # %if.end
                                        #   in Loop: Header=BB87_1 Depth=1
	jmp	.LBB87_6
.LBB87_6:                               # %for.cond.14
                                        #   Parent Loop BB87_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	je	.LBB87_11
# BB#7:                                 # %for.body.18
                                        #   in Loop: Header=BB87_6 Depth=2
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB87_9
# BB#8:                                 # %if.then.27
                                        #   in Loop: Header=BB87_1 Depth=1
	jmp	.LBB87_11
.LBB87_9:                               # %if.end.28
                                        #   in Loop: Header=BB87_6 Depth=2
	jmp	.LBB87_10
.LBB87_10:                              # %for.inc
                                        #   in Loop: Header=BB87_6 Depth=2
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB87_6
.LBB87_11:                              # %for.end
                                        #   in Loop: Header=BB87_1 Depth=1
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	je	.LBB87_13
# BB#12:                                # %if.then.34
	jmp	.LBB87_17
.LBB87_13:                              # %if.end.35
                                        #   in Loop: Header=BB87_1 Depth=1
	cmpl	$0, -36(%rbp)
	jne	.LBB87_15
# BB#14:                                # %if.then.37
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB87_20
.LBB87_15:                              # %if.end.39
                                        #   in Loop: Header=BB87_1 Depth=1
	jmp	.LBB87_16
.LBB87_16:                              # %for.inc.40
                                        #   in Loop: Header=BB87_1 Depth=1
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB87_1
.LBB87_17:                              # %for.end.44
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	je	.LBB87_19
# BB#18:                                # %if.then.48
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB87_20
.LBB87_19:                              # %if.end.52
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB87_20:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end87:
	.size	find_slot_in_env, .Lfunc_end87-find_slot_in_env
	.cfi_endproc

	.align	16, 0x90
	.type	set_slot_in_env,@function
set_slot_in_env:                        # @set_slot_in_env
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp264:
	.cfi_def_cfa_offset 16
.Ltmp265:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp266:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rdx, 16(%rsi)
	popq	%rbp
	retq
.Lfunc_end88:
	.size	set_slot_in_env, .Lfunc_end88-set_slot_in_env
	.cfi_endproc

	.align	16, 0x90
	.type	new_slot_spec_in_env,@function
new_slot_spec_in_env:                   # @new_slot_spec_in_env
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp267:
	.cfi_def_cfa_offset 16
.Ltmp268:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp269:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	%eax, %ecx
	callq	_cons
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	is_vector
	cmpl	$0, %eax
	je	.LBB89_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	symname
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	16(%rdi), %rdi
	movl	%edi, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	hash_fn
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	movl	-44(%rbp), %esi
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %r8
	movq	-16(%rbp), %r9
	movq	8(%r9), %r9
	movl	-44(%rbp), %eax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%esi, -60(%rbp)         # 4-byte Spill
	movl	%eax, %esi
	movq	%r8, -72(%rbp)          # 8-byte Spill
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	callq	vector_elem
	movl	$1, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	_cons
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	-60(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	set_vector_elem
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB89_3
.LBB89_2:                               # %if.else
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	callq	_cons
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
.LBB89_3:                               # %if.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end89:
	.size	new_slot_spec_in_env, .Lfunc_end89-new_slot_spec_in_env
	.cfi_endproc

	.globl	scheme_register_foreign_func
	.align	16, 0x90
	.type	scheme_register_foreign_func,@function
scheme_register_foreign_func:           # @scheme_register_foreign_func
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp270:
	.cfi_def_cfa_offset 16
.Ltmp271:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp272:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	1048(%rsi), %rsi
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	callq	mk_symbol
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	mk_foreign_func
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	scheme_define
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end90:
	.size	scheme_register_foreign_func, .Lfunc_end90-scheme_register_foreign_func
	.cfi_endproc

	.globl	scheme_register_foreign_func_list
	.align	16, 0x90
	.type	scheme_register_foreign_func_list,@function
scheme_register_foreign_func_list:      # @scheme_register_foreign_func_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp273:
	.cfi_def_cfa_offset 16
.Ltmp274:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp275:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$0, -24(%rbp)
.LBB91_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB91_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB91_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	%rax, %rsi
	callq	scheme_register_foreign_func
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB91_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB91_1
.LBB91_4:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end91:
	.size	scheme_register_foreign_func_list, .Lfunc_end91-scheme_register_foreign_func_list
	.cfi_endproc

	.globl	scheme_apply0
	.align	16, 0x90
	.type	scheme_apply0,@function
scheme_apply0:                          # @scheme_apply0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp276:
	.cfi_def_cfa_offset 16
.Ltmp277:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp278:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	callq	mk_symbol
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rsi
	movq	936(%rsi), %rdx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	_cons
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	scheme_eval
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end92:
	.size	scheme_apply0, .Lfunc_end92-scheme_apply0
	.cfi_endproc

	.globl	scheme_eval
	.align	16, 0x90
	.type	scheme_eval,@function
scheme_eval:                            # @scheme_eval
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp279:
	.cfi_def_cfa_offset 16
.Ltmp280:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp281:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	872(%rsi), %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rsi
	movl	$0, 872(%rsi)
	movq	-8(%rbp), %rdi
	callq	save_from_C_call
	movl	$6, %esi
	movq	-8(%rbp), %rdi
	movq	936(%rdi), %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, 832(%rcx)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movq	%rcx, 848(%rdi)
	movq	-8(%rbp), %rcx
	movl	$0, 16(%rcx)
	movq	-8(%rbp), %rdi
	callq	Eval_Cycle
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 872(%rcx)
	movq	-8(%rbp), %rdi
	callq	restore_from_C_call
	movq	-8(%rbp), %rcx
	movq	5576(%rcx), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end93:
	.size	scheme_eval, .Lfunc_end93-scheme_eval
	.cfi_endproc

	.globl	scheme_call
	.align	16, 0x90
	.type	scheme_call,@function
scheme_call:                            # @scheme_call
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp282:
	.cfi_def_cfa_offset 16
.Ltmp283:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp284:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movl	872(%rdx), %eax
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdx
	movl	$0, 872(%rdx)
	movq	-8(%rbp), %rdi
	callq	save_from_C_call
	movl	$10, %esi
	movq	-8(%rbp), %rdx
	movq	1048(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdx, 840(%rdi)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdx, 832(%rdi)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdx, 848(%rdi)
	movq	-8(%rbp), %rdx
	movl	$0, 16(%rdx)
	movq	-8(%rbp), %rdi
	callq	Eval_Cycle
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 872(%rdx)
	movq	-8(%rbp), %rdi
	callq	restore_from_C_call
	movq	-8(%rbp), %rdx
	movq	5576(%rdx), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end94:
	.size	scheme_call, .Lfunc_end94-scheme_call
	.cfi_endproc

	.align	16, 0x90
	.type	save_from_C_call,@function
save_from_C_call:                       # @save_from_C_call
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp285:
	.cfi_def_cfa_offset 16
.Ltmp286:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp287:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%ecx, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	904(%rax), %rax
	movq	8(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	840(%rdx), %rdx
	movq	-8(%rbp), %r8
	movq	856(%r8), %r8
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movq	%r8, %rdx
	callq	_cons
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	_cons
	xorl	%ecx, %ecx
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	1056(%rax), %rdx
	callq	_cons
	movq	-8(%rbp), %rdx
	movq	%rax, 1056(%rdx)
	movq	-8(%rbp), %rdi
	callq	dump_stack_reset
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end95:
	.size	save_from_C_call, .Lfunc_end95-save_from_C_call
	.cfi_endproc

	.align	16, 0x90
	.type	restore_from_C_call,@function
restore_from_C_call:                    # @restore_from_C_call
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp288:
	.cfi_def_cfa_offset 16
.Ltmp289:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp290:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	1056(%rdi), %rdi
	movq	8(%rdi), %rdi
	movq	8(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	904(%rax), %rax
	movq	%rdi, 8(%rax)
	movq	-8(%rbp), %rax
	movq	1056(%rax), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, 840(%rdi)
	movq	-8(%rbp), %rax
	movq	1056(%rax), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, 856(%rdi)
	movq	-8(%rbp), %rax
	movq	1056(%rax), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, 1056(%rdi)
	popq	%rbp
	retq
.Lfunc_end96:
	.size	restore_from_C_call, .Lfunc_end96-restore_from_C_call
	.cfi_endproc

	.align	16, 0x90
	.type	get_cell_x,@function
get_cell_x:                             # @get_cell_x
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp291:
	.cfi_def_cfa_offset 16
.Ltmp292:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp293:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	1144(%rdx), %rdx
	movq	-16(%rbp), %rsi
	cmpq	936(%rsi), %rdx
	je	.LBB97_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	1144(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 1144(%rcx)
	movq	-16(%rbp), %rax
	movq	1152(%rax), %rcx
	addq	$-1, %rcx
	movq	%rcx, 1152(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB97_3
.LBB97_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	_get_cell
	movq	%rax, -8(%rbp)
.LBB97_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end97:
	.size	get_cell_x, .Lfunc_end97-get_cell_x
	.cfi_endproc

	.align	16, 0x90
	.type	push_recent_alloc,@function
push_recent_alloc:                      # @push_recent_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp294:
	.cfi_def_cfa_offset 16
.Ltmp295:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp296:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	get_cell_x
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$8197, (%rax)           # imm = 0x2005
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	904(%rax), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	904(%rdx), %rdx
	movq	%rax, 8(%rdx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end98:
	.size	push_recent_alloc, .Lfunc_end98-push_recent_alloc
	.cfi_endproc

	.align	16, 0x90
	.type	_get_cell,@function
_get_cell:                              # @_get_cell
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp297:
	.cfi_def_cfa_offset 16
.Ltmp298:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp299:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	cmpb	$0, 3505(%rdx)
	je	.LBB99_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	904(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB99_11
.LBB99_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	1144(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	jne	.LBB99_10
# BB#3:                                 # %if.then.1
	movq	-16(%rbp), %rax
	movl	824(%rax), %ecx
	shll	$3, %ecx
	movl	%ecx, -44(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	gc
	movq	-16(%rbp), %rax
	movq	1152(%rax), %rax
	movslq	-44(%rbp), %rdx
	cmpq	%rdx, %rax
	jl	.LBB99_5
# BB#4:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	1144(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	jne	.LBB99_9
.LBB99_5:                               # %if.then.8
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	callq	alloc_cellseg
	cmpl	$0, %eax
	jne	.LBB99_8
# BB#6:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	1144(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	jne	.LBB99_8
# BB#7:                                 # %if.then.14
	movq	-16(%rbp), %rax
	movb	$1, 3505(%rax)
	movq	-16(%rbp), %rax
	movq	904(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB99_11
.LBB99_8:                               # %if.end.17
	jmp	.LBB99_9
.LBB99_9:                               # %if.end.18
	jmp	.LBB99_10
.LBB99_10:                              # %if.end.19
	movq	-16(%rbp), %rax
	movq	1144(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 1144(%rcx)
	movq	-16(%rbp), %rax
	movq	1152(%rax), %rcx
	addq	$-1, %rcx
	movq	%rcx, 1152(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB99_11:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end99:
	.size	_get_cell, .Lfunc_end99-_get_cell
	.cfi_endproc

	.align	16, 0x90
	.type	hash_fn,@function
hash_fn:                                # @hash_fn
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp300:
	.cfi_def_cfa_offset 16
.Ltmp301:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp302:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -16(%rbp)
	movl	$32, -28(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)
.LBB100_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB100_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB100_1 Depth=1
	movl	-16(%rbp), %eax
	shll	$5, %eax
	movl	-16(%rbp), %ecx
	movl	-28(%rbp), %edx
	subl	$5, %edx
	movl	%ecx, -32(%rbp)         # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-32(%rbp), %edx         # 4-byte Reload
	shrl	%cl, %edx
	orl	%edx, %eax
	movl	%eax, -16(%rbp)
	movq	-24(%rbp), %rsi
	movsbl	(%rsi), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB100_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB100_1
.LBB100_4:                              # %for.end
	movl	-16(%rbp), %eax
	xorl	%edx, %edx
	divl	-12(%rbp)
	movl	%edx, %eax
	popq	%rbp
	retq
.Lfunc_end100:
	.size	hash_fn, .Lfunc_end100-hash_fn
	.cfi_endproc

	.align	16, 0x90
	.type	vector_elem,@function
vector_elem:                            # @vector_elem
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp303:
	.cfi_def_cfa_offset 16
.Ltmp304:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp305:
	.cfi_def_cfa_register %rbp
	movl	$2, %eax
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	-20(%rbp), %esi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-28(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	cltd
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB101_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movslq	-24(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB101_3
.LBB101_2:                              # %if.else
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movslq	-24(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB101_3:                              # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end101:
	.size	vector_elem, .Lfunc_end101-vector_elem
	.cfi_endproc

	.align	16, 0x90
	.type	utf8_stricmp,@function
utf8_stricmp:                           # @utf8_stricmp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp306:
	.cfi_def_cfa_offset 16
.Ltmp307:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp308:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	$-1, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_utf8_casefold
	movq	$-1, %rsi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_utf8_casefold
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_utf8_collate
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rdi
	callq	g_free
	movl	-36(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end102:
	.size	utf8_stricmp, .Lfunc_end102-utf8_stricmp
	.cfi_endproc

	.align	16, 0x90
	.type	set_vector_elem,@function
set_vector_elem:                        # @set_vector_elem
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp309:
	.cfi_def_cfa_offset 16
.Ltmp310:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp311:
	.cfi_def_cfa_register %rbp
	movl	$2, %eax
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movl	-20(%rbp), %esi
	movl	%eax, -40(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-40(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movl	%eax, -36(%rbp)
	movl	-20(%rbp), %eax
	cltd
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB103_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$24, %rcx
	movslq	-36(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rcx
	movq	%rax, 8(%rcx)
	movq	%rax, -8(%rbp)
	jmp	.LBB103_3
.LBB103_2:                              # %if.else
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$24, %rcx
	movslq	-36(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rcx
	movq	%rax, 16(%rcx)
	movq	%rax, -8(%rbp)
.LBB103_3:                              # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end103:
	.size	set_vector_elem, .Lfunc_end103-set_vector_elem
	.cfi_endproc

	.align	16, 0x90
	.type	realloc_port_string,@function
realloc_port_string:                    # @realloc_port_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp312:
	.cfi_def_cfa_offset 16
.Ltmp313:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp314:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	-32(%rbp), %rdi
	subq	%rdi, %rsi
	addq	$1, %rsi
	addq	$256, %rsi              # imm = 0x100
	movq	%rsi, -40(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	-40(%rbp), %rdi
	callq	*%rsi
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB104_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	$32, %esi
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rdx
	subq	$1, %rdx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	memset
	movq	-40(%rbp), %rcx
	subq	$1, %rcx
	movq	-48(%rbp), %rdx
	movb	$0, (%rdx,%rcx)
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	strcpy
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, 8(%rdx)
	movq	-48(%rbp), %rcx
	addq	-40(%rbp), %rcx
	addq	$-1, %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, 16(%rdx)
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	subq	%rdx, %rcx
	movq	-24(%rbp), %rdx
	movq	24(%rdx), %rsi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	subq	%rcx, %rdi
	addq	%rdi, %rsi
	movq	%rsi, 24(%rdx)
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-32(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	*%rcx
	movl	$1, -4(%rbp)
	jmp	.LBB104_3
.LBB104_2:                              # %if.else
	movl	$0, -4(%rbp)
.LBB104_3:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end104:
	.size	realloc_port_string, .Lfunc_end104-realloc_port_string
	.cfi_endproc

	.align	16, 0x90
	.type	s_cons,@function
s_cons:                                 # @s_cons
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp315:
	.cfi_def_cfa_offset 16
.Ltmp316:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp317:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%ecx, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_cons
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end105:
	.size	s_cons, .Lfunc_end105-s_cons
	.cfi_endproc

	.align	16, 0x90
	.type	s_immutable_cons,@function
s_immutable_cons:                       # @s_immutable_cons
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp318:
	.cfi_def_cfa_offset 16
.Ltmp319:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp320:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$1, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_cons
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end106:
	.size	s_immutable_cons, .Lfunc_end106-s_immutable_cons
	.cfi_endproc

	.align	16, 0x90
	.type	reserve_cells,@function
reserve_cells:                          # @reserve_cells
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp321:
	.cfi_def_cfa_offset 16
.Ltmp322:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp323:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	cmpb	$0, 3505(%rdi)
	je	.LBB107_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB107_11
.LBB107_2:                              # %if.end
	movq	-16(%rbp), %rax
	movq	1152(%rax), %rax
	movslq	-20(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB107_10
# BB#3:                                 # %if.then.2
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rdx
	callq	gc
	movq	-16(%rbp), %rax
	movq	1152(%rax), %rax
	movslq	-20(%rbp), %rdx
	cmpq	%rdx, %rax
	jge	.LBB107_7
# BB#4:                                 # %if.then.9
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	callq	alloc_cellseg
	cmpl	$0, %eax
	jne	.LBB107_6
# BB#5:                                 # %if.then.11
	movq	-16(%rbp), %rax
	movb	$1, 3505(%rax)
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB107_11
.LBB107_6:                              # %if.end.14
	jmp	.LBB107_7
.LBB107_7:                              # %if.end.15
	movq	-16(%rbp), %rax
	movq	1152(%rax), %rax
	movslq	-20(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB107_9
# BB#8:                                 # %if.then.20
	movq	-16(%rbp), %rax
	movb	$1, 3505(%rax)
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB107_11
.LBB107_9:                              # %if.end.23
	jmp	.LBB107_10
.LBB107_10:                             # %if.end.24
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB107_11:                             # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end107:
	.size	reserve_cells, .Lfunc_end107-reserve_cells
	.cfi_endproc

	.align	16, 0x90
	.type	mk_vector,@function
mk_vector:                              # @mk_vector
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp324:
	.cfi_def_cfa_offset 16
.Ltmp325:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp326:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	936(%rax), %rdx
	callq	get_vector_object
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end108:
	.size	mk_vector, .Lfunc_end108-mk_vector
	.cfi_endproc

	.align	16, 0x90
	.type	mk_closure,@function
mk_closure:                             # @mk_closure
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp327:
	.cfi_def_cfa_offset 16
.Ltmp328:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp329:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	get_cell
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$6, (%rax)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end109:
	.size	mk_closure, .Lfunc_end109-mk_closure
	.cfi_endproc

	.align	16, 0x90
	.type	is_list,@function
is_list:                                # @is_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp330:
	.cfi_def_cfa_offset 16
.Ltmp331:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp332:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	list_length
	cmpl	$0, %eax
	setge	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end110:
	.size	is_list, .Lfunc_end110-is_list
	.cfi_endproc

	.align	16, 0x90
	.type	fill_vector,@function
fill_vector:                            # @fill_vector
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp333:
	.cfi_def_cfa_offset 16
.Ltmp334:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp335:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	ivalue
	movl	$2, %ecx
	movl	%ecx, %esi
	cqto
	idivq	%rsi
	movq	-8(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	ivalue
	movl	$2, %ecx
	movl	%ecx, %esi
	cqto
	idivq	%rsi
	movq	-32(%rbp), %rsi         # 8-byte Reload
	addq	%rdx, %rsi
	movl	%esi, %ecx
	movl	%ecx, -24(%rbp)
	movl	$0, -20(%rbp)
.LBB111_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB111_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB111_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movslq	-20(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	$5, (%rax)
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movslq	-20(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	callq	setimmutable
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$24, %rcx
	movslq	-20(%rbp), %rdi
	imulq	$24, %rdi, %rdi
	addq	%rdi, %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$24, %rcx
	movslq	-20(%rbp), %rdi
	imulq	$24, %rdi, %rdi
	addq	%rdi, %rcx
	movq	%rax, 16(%rcx)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB111_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB111_1
.LBB111_4:                              # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end111:
	.size	fill_vector, .Lfunc_end111-fill_vector
	.cfi_endproc

	.align	16, 0x90
	.type	get_vector_object,@function
get_vector_object:                      # @get_vector_object
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp336:
	.cfi_def_cfa_offset 16
.Ltmp337:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp338:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$2, %eax
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-44(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movl	-20(%rbp), %ecx
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	%esi
	movl	-48(%rbp), %ecx         # 4-byte Reload
	addl	%edx, %ecx
	addl	$1, %ecx
	movl	%ecx, %esi
	callq	get_consecutive_cells
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	cmpb	$0, 3505(%rax)
	je	.LBB112_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	904(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB112_3
.LBB112_2:                              # %if.end
	movq	-40(%rbp), %rax
	movl	$16395, (%rax)          # imm = 0x400B
	movslq	-20(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rax
	movb	$1, 8(%rax)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	fill_vector
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rdx
	callq	push_recent_alloc
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB112_3:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end112:
	.size	get_vector_object, .Lfunc_end112-get_vector_object
	.cfi_endproc

	.align	16, 0x90
	.type	get_consecutive_cells,@function
get_consecutive_cells:                  # @get_consecutive_cells
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp339:
	.cfi_def_cfa_offset 16
.Ltmp340:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp341:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	cmpb	$0, 3505(%rdi)
	je	.LBB113_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	904(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB113_11
.LBB113_2:                              # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	find_consecutive_cells
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	cmpq	936(%rdi), %rax
	je	.LBB113_4
# BB#3:                                 # %if.then.1
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB113_11
.LBB113_4:                              # %if.end.2
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rdx
	callq	gc
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	find_consecutive_cells
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	cmpq	936(%rdx), %rax
	je	.LBB113_6
# BB#5:                                 # %if.then.8
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB113_11
.LBB113_6:                              # %if.end.9
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	callq	alloc_cellseg
	cmpl	$0, %eax
	jne	.LBB113_8
# BB#7:                                 # %if.then.12
	movq	-16(%rbp), %rax
	movb	$1, 3505(%rax)
	movq	-16(%rbp), %rax
	movq	904(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB113_11
.LBB113_8:                              # %if.end.15
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	find_consecutive_cells
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	cmpq	936(%rdi), %rax
	je	.LBB113_10
# BB#9:                                 # %if.then.19
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB113_11
.LBB113_10:                             # %if.end.20
	movq	-16(%rbp), %rax
	movb	$1, 3505(%rax)
	movq	-16(%rbp), %rax
	movq	904(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB113_11:                             # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end113:
	.size	get_consecutive_cells, .Lfunc_end113-get_consecutive_cells
	.cfi_endproc

	.align	16, 0x90
	.type	find_consecutive_cells,@function
find_consecutive_cells:                 # @find_consecutive_cells
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp342:
	.cfi_def_cfa_offset 16
.Ltmp343:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp344:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	addq	$1144, %rdi             # imm = 0x478
	movq	%rdi, -32(%rbp)
.LBB114_1:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	je	.LBB114_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB114_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movl	-20(%rbp), %esi
	callq	count_consecutive_cells
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.LBB114_4
# BB#3:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movslq	-20(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	-8(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	1152(%rcx), %rdx
	subq	%rax, %rdx
	movq	%rdx, 1152(%rcx)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB114_6
.LBB114_4:                              # %if.end
                                        #   in Loop: Header=BB114_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movslq	-36(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	addq	$-24, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB114_1
.LBB114_5:                              # %while.end
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB114_6:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end114:
	.size	find_consecutive_cells, .Lfunc_end114-find_consecutive_cells
	.cfi_endproc

	.align	16, 0x90
	.type	count_consecutive_cells,@function
count_consecutive_cells:                # @count_consecutive_cells
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp345:
	.cfi_def_cfa_offset 16
.Ltmp346:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp347:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	$1, -24(%rbp)
.LBB115_1:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	addq	$24, %rcx
	cmpq	%rcx, %rax
	jne	.LBB115_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB115_1 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	-24(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -24(%rbp)
	movl	-24(%rbp), %ecx
	cmpl	-20(%rbp), %ecx
	jle	.LBB115_4
# BB#3:                                 # %if.then
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB115_6
.LBB115_4:                              # %if.end
                                        #   in Loop: Header=BB115_1 Depth=1
	jmp	.LBB115_1
.LBB115_5:                              # %while.end
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB115_6:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end115:
	.size	count_consecutive_cells, .Lfunc_end115-count_consecutive_cells
	.cfi_endproc

	.align	16, 0x90
	.type	opexe_0,@function
opexe_0:                                # @opexe_0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp348:
	.cfi_def_cfa_offset 16
.Ltmp349:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp350:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	-20(%rbp), %esi
	movl	%esi, %edi
	movq	%rdi, %rax
	subq	$31, %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	ja	.LBB116_194
# BB#196:                               # %entry
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	.LJTI116_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB116_1:                              # %sw.bb
	movq	-16(%rbp), %rdi
	callq	file_interactive
	cmpl	$0, %eax
	je	.LBB116_3
# BB#2:                                 # %if.then
	movabsq	$.L.str.172, %rsi
	movq	-16(%rbp), %rax
	movq	1168(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB116_3:                              # %if.end
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rsi
	callq	file_push
	cmpl	$0, %eax
	jne	.LBB116_5
# BB#4:                                 # %if.then.13
	movabsq	$.L.str.173, %rsi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rdx
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_5:                              # %if.else
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movslq	3496(%rax), %rsi
	callq	mk_integer
	movq	-16(%rbp), %rsi
	movq	%rax, 832(%rsi)
# BB#6:                                 # %do.body
	movq	-16(%rbp), %rax
	movl	$1, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_7:                              # %sw.bb.23
	movq	-16(%rbp), %rax
	movq	1184(%rax), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %ecx
	andl	$64, %ecx
	cmpl	$0, %ecx
	je	.LBB116_12
# BB#8:                                 # %if.then.28
	movq	-16(%rbp), %rax
	cmpl	$0, 3496(%rax)
	jne	.LBB116_11
# BB#9:                                 # %if.then.31
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 832(%rcx)
# BB#10:                                # %do.body.33
	movq	-16(%rbp), %rax
	movl	$139, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_11:                             # %if.else.37
	movq	-16(%rbp), %rdi
	callq	file_pop
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	5576(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_12:                             # %if.end.40
	movq	-16(%rbp), %rdi
	callq	file_interactive
	cmpl	$0, %eax
	je	.LBB116_14
# BB#13:                                # %if.then.43
	movq	-16(%rbp), %rax
	movq	1048(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 840(%rcx)
	movq	-16(%rbp), %rdi
	callq	dump_stack_reset
	movabsq	$.L.str.71, %rsi
	movq	-16(%rbp), %rdi
	callq	putstr
	movabsq	$.L.str.174, %rsi
	movq	-16(%rbp), %rdi
	callq	putstr
.LBB116_14:                             # %if.end.44
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movl	$0, 3500(%rax)
	movq	-16(%rbp), %rax
	movq	1160(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 1176(%rcx)
	movq	-16(%rbp), %rax
	movq	1184(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 1160(%rcx)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	936(%rax), %rcx
	callq	s_save
	movl	$5, %esi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	936(%rax), %rcx
	callq	s_save
	movl	$2, %esi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	936(%rax), %rcx
	callq	s_save
# BB#15:                                # %do.body.53
	movq	-16(%rbp), %rax
	movl	$3, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_16:                             # %sw.bb.57
	movq	-16(%rbp), %rax
	movq	5576(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 848(%rcx)
	movq	-16(%rbp), %rax
	movq	1176(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 1160(%rcx)
# BB#17:                                # %do.body.61
	movq	-16(%rbp), %rax
	movl	$6, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_18:                             # %sw.bb.65
	movq	-16(%rbp), %rdi
	callq	token
	movq	-16(%rbp), %rdi
	movl	%eax, 5568(%rdi)
	movq	-16(%rbp), %rdi
	cmpl	$-1, 5568(%rdi)
	jne	.LBB116_20
# BB#19:                                # %if.then.70
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	1032(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_20:                             # %if.end.72
	jmp	.LBB116_21
.LBB116_21:                             # %do.body.73
	movq	-16(%rbp), %rax
	movl	$163, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_22:                             # %sw.bb.77
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gensym
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_23:                             # %sw.bb.80
	movq	-16(%rbp), %rax
	cmpl	$0, 20(%rax)
	je	.LBB116_25
# BB#24:                                # %if.then.82
	movabsq	$.L.str.175, %rsi
	movq	-16(%rbp), %rdi
	callq	putstr
.LBB116_25:                             # %if.end.83
	movq	-16(%rbp), %rdi
	callq	file_interactive
	cmpl	$0, %eax
	jne	.LBB116_27
# BB#26:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	cmpl	$0, 876(%rax)
	je	.LBB116_29
.LBB116_27:                             # %if.then.87
	movq	-16(%rbp), %rax
	movl	$1, 5572(%rax)
	movq	-16(%rbp), %rax
	movq	5576(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 832(%rcx)
# BB#28:                                # %do.body.90
	movq	-16(%rbp), %rax
	movl	$172, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_29:                             # %if.else.94
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	5576(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_30:                             # %sw.bb.98
	movq	-16(%rbp), %rax
	cmpl	$0, 20(%rax)
	je	.LBB116_33
# BB#31:                                # %if.then.101
	movl	$7, %esi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	848(%rax), %rcx
	callq	s_save
	movabsq	$.L.str.176, %rsi
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 832(%rcx)
	movq	-16(%rbp), %rdi
	callq	putstr
# BB#32:                                # %do.body.106
	movq	-16(%rbp), %rax
	movl	$172, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_33:                             # %if.end.110
	jmp	.LBB116_34
.LBB116_34:                             # %sw.bb.111
	movq	-16(%rbp), %rax
	movq	848(%rax), %rdi
	callq	is_symbol
	cmpl	$0, %eax
	je	.LBB116_38
# BB#35:                                # %if.then.115
	movl	$1, %ecx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	840(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	848(%rax), %rdx
	callq	find_slot_in_env
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	cmpq	936(%rdx), %rax
	je	.LBB116_37
# BB#36:                                # %if.then.122
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	slot_value_in_env
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_37:                             # %if.else.125
	movabsq	$.L.str.177, %rsi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	848(%rax), %rdx
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_38:                             # %if.else.128
	movq	-16(%rbp), %rax
	movq	848(%rax), %rdi
	callq	is_pair
	cmpl	$0, %eax
	je	.LBB116_44
# BB#39:                                # %if.then.132
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	%rax, %rdi
	callq	is_syntax
	cmpl	$0, %eax
	je	.LBB116_42
# BB#40:                                # %if.then.139
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 848(%rcx)
# BB#41:                                # %do.body.144
	movq	-32(%rbp), %rdi
	callq	syntaxnum
	movq	-16(%rbp), %rdi
	movl	%eax, 5584(%rdi)
	movq	-16(%rbp), %rdi
	movq	968(%rdi), %rdi
	movq	%rdi, -8(%rbp)
	jmp	.LBB116_195
.LBB116_42:                             # %if.else.149
	movl	$8, %esi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	848(%rax), %rcx
	callq	s_save
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 848(%rcx)
# BB#43:                                # %do.body.157
	movq	-16(%rbp), %rax
	movl	$6, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_44:                             # %if.else.162
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	848(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_45:                             # %sw.bb.167
	movq	-16(%rbp), %rax
	movq	5576(%rax), %rdi
	callq	is_macro
	cmpl	$0, %eax
	je	.LBB116_48
# BB#46:                                # %if.then.171
	movl	$13, %esi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	936(%rax), %rcx
	callq	s_save
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	848(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rdx
	callq	_cons
	movq	-16(%rbp), %rdx
	movq	%rax, 832(%rdx)
	movq	-16(%rbp), %rax
	movq	5576(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, 848(%rdx)
# BB#47:                                # %do.body.180
	movq	-16(%rbp), %rax
	movl	$10, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_48:                             # %if.else.184
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 848(%rcx)
# BB#49:                                # %do.body.190
	movq	-16(%rbp), %rax
	movl	$9, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_50:                             # %sw.bb.195
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	5576(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rdx
	callq	_cons
	movq	-16(%rbp), %rdx
	movq	%rax, 832(%rdx)
	movq	-16(%rbp), %rax
	movq	848(%rax), %rdi
	callq	is_pair
	cmpl	$0, %eax
	je	.LBB116_53
# BB#51:                                # %if.then.203
	movl	$9, %esi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	16(%rax), %rcx
	callq	s_save
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 848(%rcx)
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 832(%rcx)
# BB#52:                                # %do.body.216
	movq	-16(%rbp), %rax
	movl	$6, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_53:                             # %if.else.220
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rdx
	callq	reverse_in_place
	movq	-16(%rbp), %rdx
	movq	%rax, 832(%rdx)
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, 848(%rdx)
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, 832(%rdx)
# BB#54:                                # %do.body.235
	movq	-16(%rbp), %rax
	movl	$10, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_55:                             # %sw.bb.240
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rdi
	callq	ivalue
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 20(%rax)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rsi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	mk_integer
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_56:                             # %sw.bb.252
	movq	-16(%rbp), %rax
	cmpl	$0, 20(%rax)
	je	.LBB116_59
# BB#57:                                # %if.then.255
	movl	$11, %esi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	848(%rax), %rcx
	callq	s_save
	movabsq	$.L.str.178, %rsi
	movq	-16(%rbp), %rax
	movl	$1, 5572(%rax)
	movq	-16(%rbp), %rdi
	callq	putstr
# BB#58:                                # %do.body.259
	movq	-16(%rbp), %rax
	movl	$172, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_59:                             # %if.end.263
	jmp	.LBB116_60
.LBB116_60:                             # %sw.bb.264
	movq	-16(%rbp), %rax
	movq	848(%rax), %rdi
	callq	is_proc
	cmpl	$0, %eax
	je	.LBB116_63
# BB#61:                                # %if.then.268
	jmp	.LBB116_62
.LBB116_62:                             # %do.body.269
	movq	-16(%rbp), %rax
	movq	848(%rax), %rdi
	callq	ivalue
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_63:                             # %if.else.276
	movq	-16(%rbp), %rax
	movq	848(%rax), %rdi
	callq	is_foreign
	cmpl	$0, %eax
	je	.LBB116_67
# BB#64:                                # %if.then.280
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rdx
	callq	push_recent_alloc
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, 864(%rdx)
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	832(%rdx), %rsi
	callq	*%rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	864(%rax), %rax
	movq	-16(%rbp), %rdx
	cmpq	936(%rdx), %rax
	jne	.LBB116_66
# BB#65:                                # %if.then.292
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_66:                             # %if.else.294
	movq	-16(%rbp), %rax
	movq	864(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 864(%rcx)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	string_value
	movq	-32(%rbp), %rcx
	movq	16(%rcx), %rdx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_67:                             # %if.else.306
	movq	-16(%rbp), %rax
	movq	848(%rax), %rdi
	callq	is_closure
	cmpl	$0, %eax
	jne	.LBB116_70
# BB#68:                                # %lor.lhs.false.310
	movq	-16(%rbp), %rax
	movq	848(%rax), %rdi
	callq	is_macro
	cmpl	$0, %eax
	jne	.LBB116_70
# BB#69:                                # %lor.lhs.false.314
	movq	-16(%rbp), %rax
	movq	848(%rax), %rdi
	callq	is_promise
	cmpl	$0, %eax
	je	.LBB116_85
.LBB116_70:                             # %if.then.318
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	closure_env
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	new_frame_in_env
	movq	-16(%rbp), %rax
	movq	848(%rax), %rdi
	callq	closure_code
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB116_71:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rdi
	callq	is_pair
	cmpl	$0, %eax
	je	.LBB116_77
# BB#72:                                # %for.body
                                        #   in Loop: Header=BB116_71 Depth=1
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	jne	.LBB116_74
# BB#73:                                # %if.then.332
	movabsq	$.L.str.179, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_74:                             # %if.else.334
                                        #   in Loop: Header=BB116_71 Depth=1
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	callq	new_slot_in_env
# BB#75:                                # %if.end.341
                                        #   in Loop: Header=BB116_71 Depth=1
	jmp	.LBB116_76
.LBB116_76:                             # %for.inc
                                        #   in Loop: Header=BB116_71 Depth=1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB116_71
.LBB116_77:                             # %for.end
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	jne	.LBB116_79
# BB#78:                                # %if.then.351
	jmp	.LBB116_83
.LBB116_79:                             # %if.else.352
	movq	-32(%rbp), %rdi
	callq	is_symbol
	cmpl	$0, %eax
	je	.LBB116_81
# BB#80:                                # %if.then.355
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	new_slot_in_env
	jmp	.LBB116_82
.LBB116_81:                             # %if.else.356
	movabsq	$.L.str.180, %rsi
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_82:                             # %if.end.358
	jmp	.LBB116_83
.LBB116_83:                             # %if.end.359
	movq	-16(%rbp), %rax
	movq	848(%rax), %rdi
	callq	closure_code
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, 848(%rdi)
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, 832(%rdi)
# BB#84:                                # %do.body.368
	movq	-16(%rbp), %rax
	movl	$21, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_85:                             # %if.else.372
	movq	-16(%rbp), %rax
	movq	848(%rax), %rdi
	callq	is_continuation
	cmpl	$0, %eax
	je	.LBB116_90
# BB#86:                                # %if.then.376
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 856(%rcx)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	je	.LBB116_88
# BB#87:                                # %cond.true
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB116_89
.LBB116_88:                             # %cond.false
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB116_89:                             # %cond.end
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_90:                             # %if.else.391
	movabsq	$.L.str.181, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_91:                             # %sw.bb.396
	movq	-16(%rbp), %rax
	movq	5576(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 848(%rcx)
# BB#92:                                # %do.body.399
	movq	-16(%rbp), %rax
	movl	$6, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_93:                             # %sw.bb.403
	movl	$1, %ecx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	840(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	1136(%rax), %rdx
	callq	find_slot_in_env
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdx
	cmpq	936(%rdx), %rax
	jne	.LBB116_95
# BB#94:                                # %if.then.409
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 5576(%rcx)
	jmp	.LBB116_97
.LBB116_95:                             # %if.else.412
	movl	$15, %esi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	848(%rax), %rcx
	callq	s_save
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	848(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rdx
	callq	_cons
	movq	-16(%rbp), %rdx
	movq	%rax, 832(%rdx)
	movq	-56(%rbp), %rdi
	callq	slot_value_in_env
	movq	-16(%rbp), %rdx
	movq	%rax, 848(%rdx)
# BB#96:                                # %do.body.421
	movq	-16(%rbp), %rax
	movl	$10, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_97:                             # %if.end.425
	jmp	.LBB116_98
.LBB116_98:                             # %sw.bb.426
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	5576(%rcx), %rsi
	movq	-16(%rbp), %rcx
	movq	840(%rcx), %rdx
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	mk_closure
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_99:                             # %sw.bb.431
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	1064(%rcx), %rax
	jne	.LBB116_101
# BB#100:                               # %if.then.441
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB116_101:                            # %if.end.445
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	jne	.LBB116_103
# BB#102:                               # %if.then.453
	movq	-16(%rbp), %rax
	movq	840(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB116_104
.LBB116_103:                            # %if.else.455
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB116_104:                            # %if.end.463
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	mk_closure
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_105:                            # %sw.bb.466
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_106:                            # %sw.bb.472
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rdi
	callq	is_immutable
	cmpl	$0, %eax
	je	.LBB116_108
# BB#107:                               # %if.then.479
	movabsq	$.L.str.182, %rsi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rdx
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_108:                            # %if.end.485
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rdi
	callq	is_pair
	cmpl	$0, %eax
	je	.LBB116_110
# BB#109:                               # %if.then.492
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	1064(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	848(%rdx), %rdx
	movq	8(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	-16(%rbp), %r8
	movq	848(%r8), %r8
	movq	16(%r8), %r8
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	%r8, %rdx
	callq	_cons
	xorl	%ecx, %ecx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	-168(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	_cons
	movq	-16(%rbp), %rdx
	movq	%rax, 848(%rdx)
	jmp	.LBB116_111
.LBB116_110:                            # %if.else.515
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 848(%rcx)
.LBB116_111:                            # %if.end.528
	movq	-32(%rbp), %rdi
	callq	is_symbol
	cmpl	$0, %eax
	jne	.LBB116_113
# BB#112:                               # %if.then.531
	movabsq	$.L.str.183, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_113:                            # %if.end.533
	movl	$19, %esi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rdx
	movq	-32(%rbp), %rcx
	callq	s_save
# BB#114:                               # %do.body.535
	movq	-16(%rbp), %rax
	movl	$6, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_115:                            # %sw.bb.539
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	840(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	848(%rax), %rdx
	callq	find_slot_in_env
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	cmpq	936(%rdx), %rax
	je	.LBB116_117
# BB#116:                               # %if.then.546
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	5576(%rax), %rdx
	callq	set_slot_in_env
	jmp	.LBB116_118
.LBB116_117:                            # %if.else.548
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	848(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	5576(%rax), %rdx
	callq	new_slot_in_env
.LBB116_118:                            # %if.end.551
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	848(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_119:                            # %sw.bb.554
	movq	-16(%rbp), %rax
	movq	840(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	je	.LBB116_121
# BB#120:                               # %if.then.563
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB116_121:                            # %if.end.571
	movl	$1, %ecx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	832(%rdx), %rdx
	movq	8(%rdx), %rdx
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	find_slot_in_env
	movq	-16(%rbp), %rdx
	cmpq	936(%rdx), %rax
	je	.LBB116_123
# BB#122:                               # %cond.true.580
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB116_124
.LBB116_123:                            # %cond.false.582
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB116_124:                            # %cond.end.583
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_125:                            # %sw.bb.586
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rdi
	callq	is_immutable
	cmpl	$0, %eax
	je	.LBB116_127
# BB#126:                               # %if.then.593
	movabsq	$.L.str.184, %rsi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rdx
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_127:                            # %if.end.599
	movl	$25, %esi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rcx
	callq	s_save
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 848(%rcx)
# BB#128:                               # %do.body.613
	movq	-16(%rbp), %rax
	movl	$6, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_129:                            # %sw.bb.617
	movl	$1, %ecx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	840(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	848(%rax), %rdx
	callq	find_slot_in_env
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	cmpq	936(%rdx), %rax
	je	.LBB116_131
# BB#130:                               # %if.then.624
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	5576(%rax), %rdx
	callq	set_slot_in_env
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	5576(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_131:                            # %if.else.628
	movabsq	$.L.str.185, %rsi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	848(%rax), %rdx
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_132:                            # %sw.bb.631
	movq	-16(%rbp), %rax
	movq	848(%rax), %rdi
	callq	is_pair
	cmpl	$0, %eax
	jne	.LBB116_134
# BB#133:                               # %if.then.635
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	848(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_134:                            # %if.end.638
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	je	.LBB116_136
# BB#135:                               # %if.then.646
	movl	$21, %esi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	16(%rax), %rcx
	callq	s_save
.LBB116_136:                            # %if.end.652
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 848(%rcx)
# BB#137:                               # %do.body.658
	movq	-16(%rbp), %rax
	movl	$6, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_138:                            # %sw.bb.662
	movl	$23, %esi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	16(%rax), %rcx
	callq	s_save
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 848(%rcx)
# BB#139:                               # %do.body.673
	movq	-16(%rbp), %rax
	movl	$6, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_140:                            # %sw.bb.677
	movq	-16(%rbp), %rax
	movq	5576(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	1000(%rcx), %rax
	je	.LBB116_142
# BB#141:                               # %if.then.682
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 848(%rcx)
	jmp	.LBB116_143
.LBB116_142:                            # %if.else.688
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 848(%rcx)
.LBB116_143:                            # %if.end.697
	jmp	.LBB116_144
.LBB116_144:                            # %do.body.698
	movq	-16(%rbp), %rax
	movl	$6, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_145:                            # %sw.bb.702
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 832(%rcx)
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 5576(%rcx)
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rdi
	callq	is_symbol
	cmpl	$0, %eax
	je	.LBB116_147
# BB#146:                               # %cond.true.713
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB116_148
.LBB116_147:                            # %cond.false.721
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB116_148:                            # %cond.end.726
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	movq	%rax, 848(%rcx)
# BB#149:                               # %do.body.729
	movq	-16(%rbp), %rax
	movl	$27, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_150:                            # %sw.bb.733
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	5576(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rdx
	callq	_cons
	movq	-16(%rbp), %rdx
	movq	%rax, 832(%rdx)
	movq	-16(%rbp), %rax
	movq	848(%rax), %rdi
	callq	is_pair
	cmpl	$0, %eax
	je	.LBB116_156
# BB#151:                               # %if.then.741
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rdi
	callq	is_pair
	cmpl	$0, %eax
	je	.LBB116_153
# BB#152:                               # %lor.lhs.false.748
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rdi
	callq	is_pair
	cmpl	$0, %eax
	jne	.LBB116_154
.LBB116_153:                            # %if.then.758
	movabsq	$.L.str.186, %rsi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rdx
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_154:                            # %if.end.764
	movl	$27, %esi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	16(%rax), %rcx
	callq	s_save
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 848(%rcx)
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 832(%rcx)
# BB#155:                               # %do.body.783
	movq	-16(%rbp), %rax
	movl	$6, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_156:                            # %if.else.787
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rdx
	callq	reverse_in_place
	movq	-16(%rbp), %rdx
	movq	%rax, 832(%rdx)
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, 848(%rdx)
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, 832(%rdx)
# BB#157:                               # %do.body.802
	movq	-16(%rbp), %rax
	movl	$28, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_158:                            # %sw.bb.807
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	840(%rax), %rsi
	callq	new_frame_in_env
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rdi
	callq	is_symbol
	cmpl	$0, %eax
	je	.LBB116_160
# BB#159:                               # %cond.true.815
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jmp	.LBB116_161
.LBB116_160:                            # %cond.false.823
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB116_161:                            # %cond.end.828
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB116_162:                            # %for.cond.831
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	je	.LBB116_165
# BB#163:                               # %for.body.835
                                        #   in Loop: Header=BB116_162 Depth=1
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	callq	new_slot_in_env
# BB#164:                               # %for.inc.845
                                        #   in Loop: Header=BB116_162 Depth=1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB116_162
.LBB116_165:                            # %for.end.852
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rdi
	callq	is_symbol
	cmpl	$0, %eax
	je	.LBB116_175
# BB#166:                               # %if.then.859
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 832(%rcx)
.LBB116_167:                            # %for.cond.869
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	je	.LBB116_174
# BB#168:                               # %for.body.873
                                        #   in Loop: Header=BB116_167 Depth=1
	movq	-32(%rbp), %rdi
	callq	is_pair
	cmpl	$0, %eax
	jne	.LBB116_170
# BB#169:                               # %if.then.876
	movabsq	$.L.str.187, %rsi
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_170:                            # %if.end.878
                                        #   in Loop: Header=BB116_167 Depth=1
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rsi
	callq	is_list
	cmpl	$0, %eax
	jne	.LBB116_172
# BB#171:                               # %if.then.884
	movabsq	$.L.str.187, %rsi
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_172:                            # %if.end.889
                                        #   in Loop: Header=BB116_167 Depth=1
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rdx
	callq	_cons
	movq	-16(%rbp), %rdx
	movq	%rax, 832(%rdx)
# BB#173:                               # %for.inc.899
                                        #   in Loop: Header=BB116_167 Depth=1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB116_167
.LBB116_174:                            # %for.end.903
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	936(%rdx), %rsi
	movq	-16(%rbp), %rdx
	movq	832(%rdx), %rdx
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	reverse_in_place
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdx
	movq	848(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_cons
	movq	-16(%rbp), %rdx
	movq	840(%rdx), %rdx
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	mk_closure
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rsi
	movq	-32(%rbp), %rdx
	callq	new_slot_in_env
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, 848(%rdx)
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, 832(%rdx)
	jmp	.LBB116_176
.LBB116_175:                            # %if.else.931
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 848(%rcx)
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 832(%rcx)
.LBB116_176:                            # %if.end.939
	jmp	.LBB116_177
.LBB116_177:                            # %do.body.940
	movq	-16(%rbp), %rax
	movl	$21, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_178:                            # %sw.bb.944
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	jne	.LBB116_181
# BB#179:                               # %if.then.952
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	840(%rax), %rsi
	callq	new_frame_in_env
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, 848(%rsi)
# BB#180:                               # %do.body.959
	movq	-16(%rbp), %rax
	movl	$21, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_181:                            # %if.end.963
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rdi
	callq	is_pair
	cmpl	$0, %eax
	je	.LBB116_184
# BB#182:                               # %lor.lhs.false.970
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdi
	callq	is_pair
	cmpl	$0, %eax
	je	.LBB116_184
# BB#183:                               # %lor.lhs.false.980
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rdi
	callq	is_pair
	cmpl	$0, %eax
	jne	.LBB116_185
.LBB116_184:                            # %if.then.993
	movabsq	$.L.str.188, %rsi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rdx
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_185:                            # %if.end.999
	movl	$30, %esi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rcx
	callq	s_save
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 848(%rcx)
# BB#186:                               # %do.body.1022
	movq	-16(%rbp), %rax
	movl	$6, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_187:                            # %sw.bb.1026
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	840(%rax), %rsi
	callq	new_frame_in_env
# BB#188:                               # %do.body.1028
	movq	-16(%rbp), %rax
	movl	$31, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_189:                            # %sw.bb.1032
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	5576(%rax), %rdx
	callq	new_slot_in_env
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, 848(%rdx)
	movq	-16(%rbp), %rax
	movq	848(%rax), %rdi
	callq	is_pair
	cmpl	$0, %eax
	je	.LBB116_192
# BB#190:                               # %if.then.1049
	movl	$31, %esi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	848(%rax), %rcx
	callq	s_save
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 848(%rcx)
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 832(%rcx)
# BB#191:                               # %do.body.1065
	movq	-16(%rbp), %rax
	movl	$6, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_192:                            # %if.else.1069
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 848(%rcx)
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 832(%rcx)
# BB#193:                               # %do.body.1074
	movq	-16(%rbp), %rax
	movl	$21, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB116_195
.LBB116_194:                            # %sw.default
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %esi
	movabsq	$.L.str.189, %rdx
	movq	-16(%rbp), %rcx
	addq	$4530, %rcx             # imm = 0x11B2
	movq	-16(%rbp), %rdi
	movl	5584(%rdi), %eax
	movq	%rcx, %rdi
	movl	%eax, %ecx
	movb	$0, %al
	callq	snprintf
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rsi
	addq	$4530, %rsi             # imm = 0x11B2
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	_Error_1
	movq	%rax, -8(%rbp)
.LBB116_195:                            # %return
	movq	-8(%rbp), %rax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end116:
	.size	opexe_0, .Lfunc_end116-opexe_0
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI116_0:
	.quad	.LBB116_1
	.quad	.LBB116_7
	.quad	.LBB116_16
	.quad	.LBB116_18
	.quad	.LBB116_22
	.quad	.LBB116_23
	.quad	.LBB116_30
	.quad	.LBB116_34
	.quad	.LBB116_45
	.quad	.LBB116_50
	.quad	.LBB116_56
	.quad	.LBB116_60
	.quad	.LBB116_55
	.quad	.LBB116_91
	.quad	.LBB116_93
	.quad	.LBB116_98
	.quad	.LBB116_99
	.quad	.LBB116_105
	.quad	.LBB116_106
	.quad	.LBB116_115
	.quad	.LBB116_119
	.quad	.LBB116_132
	.quad	.LBB116_138
	.quad	.LBB116_140
	.quad	.LBB116_125
	.quad	.LBB116_129
	.quad	.LBB116_145
	.quad	.LBB116_150
	.quad	.LBB116_158
	.quad	.LBB116_178
	.quad	.LBB116_187
	.quad	.LBB116_189

	.text
	.align	16, 0x90
	.type	opexe_1,@function
opexe_1:                                # @opexe_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp351:
	.cfi_def_cfa_offset 16
.Ltmp352:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp353:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	addl	$-32, %esi
	movl	%esi, %edi
	subl	$19, %esi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movl	%esi, -52(%rbp)         # 4-byte Spill
	ja	.LBB117_107
# BB#109:                               # %entry
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	.LJTI117_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB117_1:                              # %sw.bb
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	840(%rax), %rsi
	callq	new_frame_in_env
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, 832(%rsi)
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, 5576(%rsi)
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, 848(%rsi)
# BB#2:                                 # %do.body
	movq	-16(%rbp), %rax
	movl	$33, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB117_108
.LBB117_3:                              # %sw.bb.4
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	5576(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rdx
	callq	_cons
	movq	-16(%rbp), %rdx
	movq	%rax, 832(%rdx)
	movq	-16(%rbp), %rax
	movq	848(%rax), %rdi
	callq	is_pair
	cmpl	$0, %eax
	je	.LBB117_9
# BB#4:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rdi
	callq	is_pair
	cmpl	$0, %eax
	je	.LBB117_6
# BB#5:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rdi
	callq	is_pair
	cmpl	$0, %eax
	jne	.LBB117_7
.LBB117_6:                              # %if.then.24
	movabsq	$.L.str.195, %rsi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rdx
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB117_108
.LBB117_7:                              # %if.end
	movl	$33, %esi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	16(%rax), %rcx
	callq	s_save
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 848(%rcx)
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 832(%rcx)
# BB#8:                                 # %do.body.48
	movq	-16(%rbp), %rax
	movl	$6, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB117_108
.LBB117_9:                              # %if.else
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rdx
	callq	reverse_in_place
	movq	-16(%rbp), %rdx
	movq	%rax, 832(%rdx)
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, 848(%rdx)
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, 832(%rdx)
# BB#10:                                # %do.body.66
	movq	-16(%rbp), %rax
	movl	$34, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB117_108
.LBB117_11:                             # %sw.bb.71
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB117_12:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	je	.LBB117_15
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB117_12 Depth=1
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	callq	new_slot_in_env
# BB#14:                                # %for.inc
                                        #   in Loop: Header=BB117_12 Depth=1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB117_12
.LBB117_15:                             # %for.end
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 848(%rcx)
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 832(%rcx)
# BB#16:                                # %do.body.100
	movq	-16(%rbp), %rax
	movl	$21, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB117_108
.LBB117_17:                             # %sw.bb.104
	movq	-16(%rbp), %rax
	movq	848(%rax), %rdi
	callq	is_pair
	cmpl	$0, %eax
	jne	.LBB117_19
# BB#18:                                # %if.then.108
	movabsq	$.L.str.196, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB117_108
.LBB117_19:                             # %if.end.110
	movl	$36, %esi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	848(%rax), %rcx
	callq	s_save
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 848(%rcx)
# BB#20:                                # %do.body.121
	movq	-16(%rbp), %rax
	movl	$6, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB117_108
.LBB117_21:                             # %sw.bb.125
	movq	-16(%rbp), %rax
	movq	5576(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	1000(%rcx), %rax
	je	.LBB117_33
# BB#22:                                # %if.then.128
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 848(%rcx)
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	jne	.LBB117_24
# BB#23:                                # %if.then.139
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	5576(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB117_108
.LBB117_24:                             # %if.end.142
	movq	-16(%rbp), %rax
	cmpq	$0, 848(%rax)
	jne	.LBB117_26
# BB#25:                                # %if.then.145
	movabsq	$.L.str.196, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB117_108
.LBB117_26:                             # %if.end.147
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	1104(%rcx), %rax
	jne	.LBB117_31
# BB#27:                                # %if.then.153
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	16(%rax), %rdi
	callq	is_pair
	cmpl	$0, %eax
	jne	.LBB117_29
# BB#28:                                # %if.then.160
	movabsq	$.L.str.196, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB117_108
.LBB117_29:                             # %if.end.162
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	1072(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	5576(%rdx), %rdx
	movq	-16(%rbp), %r8
	movq	936(%r8), %r8
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movq	%r8, %rdx
	callq	_cons
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	_cons
	xorl	%ecx, %ecx
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %r8
	movq	936(%r8), %r8
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movq	%r8, %rdx
	callq	_cons
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	_cons
	movq	-16(%rbp), %rdx
	movq	%rax, 848(%rdx)
# BB#30:                                # %do.body.178
	movq	-16(%rbp), %rax
	movl	$6, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB117_108
.LBB117_31:                             # %if.end.182
	jmp	.LBB117_32
.LBB117_32:                             # %do.body.183
	movq	-16(%rbp), %rax
	movl	$21, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB117_108
.LBB117_33:                             # %if.else.187
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 848(%rcx)
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	jne	.LBB117_35
# BB#34:                                # %if.then.195
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB117_108
.LBB117_35:                             # %if.else.198
	movl	$36, %esi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	848(%rax), %rcx
	callq	s_save
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 848(%rcx)
# BB#36:                                # %do.body.209
	movq	-16(%rbp), %rax
	movl	$6, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB117_108
.LBB117_37:                             # %sw.bb.215
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	936(%rdx), %rsi
	movq	-16(%rbp), %rdx
	movq	848(%rdx), %rdx
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	_cons
	movq	-16(%rbp), %rdx
	movq	840(%rdx), %rdx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	mk_closure
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$13, (%rax)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB117_108
.LBB117_38:                             # %sw.bb.222
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	jne	.LBB117_40
# BB#39:                                # %if.then.226
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	968(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB117_108
.LBB117_40:                             # %if.end.229
	movl	$39, %esi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	16(%rax), %rcx
	callq	s_save
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 848(%rcx)
# BB#41:                                # %do.body.240
	movq	-16(%rbp), %rax
	movl	$6, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB117_108
.LBB117_42:                             # %sw.bb.244
	movq	-16(%rbp), %rax
	movq	5576(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	1000(%rcx), %rax
	jne	.LBB117_44
# BB#43:                                # %if.then.248
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	5576(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB117_108
.LBB117_44:                             # %if.else.251
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	jne	.LBB117_46
# BB#45:                                # %if.then.255
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	5576(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB117_108
.LBB117_46:                             # %if.else.258
	movl	$39, %esi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	16(%rax), %rcx
	callq	s_save
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 848(%rcx)
# BB#47:                                # %do.body.269
	movq	-16(%rbp), %rax
	movl	$6, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB117_108
.LBB117_48:                             # %sw.bb.275
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	jne	.LBB117_50
# BB#49:                                # %if.then.279
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB117_108
.LBB117_50:                             # %if.end.282
	movl	$41, %esi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	16(%rax), %rcx
	callq	s_save
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 848(%rcx)
# BB#51:                                # %do.body.293
	movq	-16(%rbp), %rax
	movl	$6, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB117_108
.LBB117_52:                             # %sw.bb.297
	movq	-16(%rbp), %rax
	movq	5576(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	1000(%rcx), %rax
	je	.LBB117_54
# BB#53:                                # %if.then.301
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	5576(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB117_108
.LBB117_54:                             # %if.else.304
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	jne	.LBB117_56
# BB#55:                                # %if.then.308
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	5576(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB117_108
.LBB117_56:                             # %if.else.311
	movl	$41, %esi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	16(%rax), %rcx
	callq	s_save
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 848(%rcx)
# BB#57:                                # %do.body.322
	movq	-16(%rbp), %rax
	movl	$6, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB117_108
.LBB117_58:                             # %sw.bb.328
	movl	$43, %esi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	16(%rax), %rcx
	callq	s_save
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 848(%rcx)
# BB#59:                                # %do.body.339
	movq	-16(%rbp), %rax
	movl	$6, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB117_108
.LBB117_60:                             # %sw.bb.343
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rax
	movq	5576(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, 832(%rdx)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	936(%rdx), %rsi
	movq	-16(%rbp), %rdx
	movq	848(%rdx), %rdx
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	_cons
	movq	-16(%rbp), %rdx
	movq	840(%rdx), %rdx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	mk_closure
	xorl	%ecx, %ecx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$13, (%rax)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	832(%rdx), %rsi
	movq	-32(%rbp), %rdx
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	_cons
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB117_108
.LBB117_61:                             # %sw.bb.355
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rdi
	callq	is_pair
	cmpl	$0, %eax
	je	.LBB117_63
# BB#62:                                # %if.then.362
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	1064(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	848(%rdx), %rdx
	movq	8(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	-16(%rbp), %r8
	movq	848(%r8), %r8
	movq	16(%r8), %r8
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	%r8, %rdx
	callq	_cons
	xorl	%ecx, %ecx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	_cons
	movq	-16(%rbp), %rdx
	movq	%rax, 848(%rdx)
	jmp	.LBB117_64
.LBB117_63:                             # %if.else.384
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 848(%rcx)
.LBB117_64:                             # %if.end.397
	movq	-32(%rbp), %rdi
	callq	is_symbol
	cmpl	$0, %eax
	jne	.LBB117_66
# BB#65:                                # %if.then.400
	movabsq	$.L.str.183, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB117_108
.LBB117_66:                             # %if.end.402
	movl	$45, %esi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rdx
	movq	-32(%rbp), %rcx
	callq	s_save
# BB#67:                                # %do.body.404
	movq	-16(%rbp), %rax
	movl	$6, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB117_108
.LBB117_68:                             # %sw.bb.408
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rax
	movq	5576(%rax), %rax
	movl	$12, (%rax)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	840(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	848(%rax), %rdx
	callq	find_slot_in_env
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	cmpq	936(%rdx), %rax
	je	.LBB117_70
# BB#69:                                # %if.then.416
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	5576(%rax), %rdx
	callq	set_slot_in_env
	jmp	.LBB117_71
.LBB117_70:                             # %if.else.418
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	848(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	5576(%rax), %rdx
	callq	new_slot_in_env
.LBB117_71:                             # %if.end.421
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	848(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB117_108
.LBB117_72:                             # %sw.bb.424
	movl	$47, %esi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	16(%rax), %rcx
	callq	s_save
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 848(%rcx)
# BB#73:                                # %do.body.435
	movq	-16(%rbp), %rax
	movl	$6, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB117_108
.LBB117_74:                             # %sw.bb.439
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB117_75:                             # %for.cond.441
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB117_79 Depth 2
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	je	.LBB117_88
# BB#76:                                # %for.body.444
                                        #   in Loop: Header=BB117_75 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	%rax, %rdi
	callq	is_pair
	cmpl	$0, %eax
	jne	.LBB117_78
# BB#77:                                # %if.then.453
	jmp	.LBB117_88
.LBB117_78:                             # %if.end.454
                                        #   in Loop: Header=BB117_75 Depth=1
	jmp	.LBB117_79
.LBB117_79:                             # %for.cond.455
                                        #   Parent Loop BB117_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	je	.LBB117_84
# BB#80:                                # %for.body.458
                                        #   in Loop: Header=BB117_79 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	5576(%rax), %rsi
	callq	eqv
	cmpl	$0, %eax
	je	.LBB117_82
# BB#81:                                # %if.then.465
                                        #   in Loop: Header=BB117_75 Depth=1
	jmp	.LBB117_84
.LBB117_82:                             # %if.end.466
                                        #   in Loop: Header=BB117_79 Depth=2
	jmp	.LBB117_83
.LBB117_83:                             # %for.inc.467
                                        #   in Loop: Header=BB117_79 Depth=2
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB117_79
.LBB117_84:                             # %for.end.471
                                        #   in Loop: Header=BB117_75 Depth=1
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	je	.LBB117_86
# BB#85:                                # %if.then.474
	jmp	.LBB117_88
.LBB117_86:                             # %if.end.475
                                        #   in Loop: Header=BB117_75 Depth=1
	jmp	.LBB117_87
.LBB117_87:                             # %for.inc.476
                                        #   in Loop: Header=BB117_75 Depth=1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB117_75
.LBB117_88:                             # %for.end.480
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	je	.LBB117_94
# BB#89:                                # %if.then.483
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdi
	callq	is_pair
	cmpl	$0, %eax
	je	.LBB117_92
# BB#90:                                # %if.then.492
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 848(%rcx)
# BB#91:                                # %do.body.500
	movq	-16(%rbp), %rax
	movl	$21, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB117_108
.LBB117_92:                             # %if.else.504
	movl	$48, %esi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rcx
	callq	s_save
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 848(%rcx)
# BB#93:                                # %do.body.519
	movq	-16(%rbp), %rax
	movl	$6, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB117_108
.LBB117_94:                             # %if.else.524
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB117_108
.LBB117_95:                             # %sw.bb.528
	movq	-16(%rbp), %rax
	movq	5576(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	1000(%rcx), %rax
	je	.LBB117_98
# BB#96:                                # %if.then.532
	jmp	.LBB117_97
.LBB117_97:                             # %do.body.533
	movq	-16(%rbp), %rax
	movl	$21, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB117_108
.LBB117_98:                             # %if.else.537
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB117_108
.LBB117_99:                             # %sw.bb.541
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 848(%rcx)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rsi
	callq	list_star
	movq	-16(%rbp), %rcx
	movq	%rax, 832(%rcx)
# BB#100:                               # %do.body.553
	movq	-16(%rbp), %rax
	movl	$10, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB117_108
.LBB117_101:                            # %sw.bb.557
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	je	.LBB117_103
# BB#102:                               # %if.then.564
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 840(%rcx)
.LBB117_103:                            # %if.end.573
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 848(%rcx)
# BB#104:                               # %do.body.579
	movq	-16(%rbp), %rax
	movl	$6, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB117_108
.LBB117_105:                            # %sw.bb.583
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 848(%rcx)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	856(%rcx), %rsi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	mk_continuation
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rsi
	movq	936(%rsi), %rdx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_cons
	movq	-16(%rbp), %rdx
	movq	%rax, 832(%rdx)
# BB#106:                               # %do.body.593
	movq	-16(%rbp), %rax
	movl	$10, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB117_108
.LBB117_107:                            # %sw.default
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %esi
	movabsq	$.L.str.189, %rdx
	movq	-16(%rbp), %rcx
	addq	$4530, %rcx             # imm = 0x11B2
	movq	-16(%rbp), %rdi
	movl	5584(%rdi), %eax
	movq	%rcx, %rdi
	movl	%eax, %ecx
	movb	$0, %al
	callq	snprintf
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rsi
	addq	$4530, %rsi             # imm = 0x11B2
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	_Error_1
	movq	%rax, -8(%rbp)
.LBB117_108:                            # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end117:
	.size	opexe_1, .Lfunc_end117-opexe_1
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI117_0:
	.quad	.LBB117_1
	.quad	.LBB117_3
	.quad	.LBB117_11
	.quad	.LBB117_17
	.quad	.LBB117_21
	.quad	.LBB117_37
	.quad	.LBB117_38
	.quad	.LBB117_42
	.quad	.LBB117_48
	.quad	.LBB117_52
	.quad	.LBB117_58
	.quad	.LBB117_60
	.quad	.LBB117_61
	.quad	.LBB117_68
	.quad	.LBB117_72
	.quad	.LBB117_74
	.quad	.LBB117_95
	.quad	.LBB117_101
	.quad	.LBB117_99
	.quad	.LBB117_105

	.text
	.align	16, 0x90
	.type	opexe_2,@function
opexe_2:                                # @opexe_2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp354:
	.cfi_def_cfa_offset 16
.Ltmp355:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp356:
	.cfi_def_cfa_register %rbp
	subq	$1328, %rsp             # imm = 0x530
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	addl	$-52, %esi
	movl	%esi, %edi
	subl	$45, %esi
	movq	%rdi, -696(%rbp)        # 8-byte Spill
	movl	%esi, -700(%rbp)        # 4-byte Spill
	ja	.LBB118_176
# BB#178:                               # %entry
	movq	-696(%rbp), %rax        # 8-byte Reload
	movq	.LJTI118_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB118_1:                              # %sw.bb
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	num_is_integer
	cmpl	$0, %eax
	je	.LBB118_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_3:                              # %if.else
	leaq	-56(%rbp), %rdi
	movq	-32(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	modf
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB118_5
	jp	.LBB118_5
# BB#4:                                 # %if.then.4
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rdi, -712(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	ivalue
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	mk_integer
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_5:                              # %if.else.8
	movabsq	$.L.str.197, %rsi
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_6:                              # %sw.bb.10
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rdi, -728(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	rvalue
	callq	exp
	movq	-736(%rbp), %rdi        # 8-byte Reload
	callq	mk_real
	movq	-728(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_7:                              # %sw.bb.19
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rdi, -744(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	rvalue
	callq	log
	movq	-752(%rbp), %rdi        # 8-byte Reload
	callq	mk_real
	movq	-744(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_8:                              # %sw.bb.28
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rdi, -760(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	rvalue
	callq	sin
	movq	-768(%rbp), %rdi        # 8-byte Reload
	callq	mk_real
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_9:                              # %sw.bb.37
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rdi, -776(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	rvalue
	callq	cos
	movq	-784(%rbp), %rdi        # 8-byte Reload
	callq	mk_real
	movq	-776(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_10:                             # %sw.bb.46
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rdi, -792(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -800(%rbp)        # 8-byte Spill
	callq	rvalue
	callq	tan
	movq	-800(%rbp), %rdi        # 8-byte Reload
	callq	mk_real
	movq	-792(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_11:                             # %sw.bb.55
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rdi, -808(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -816(%rbp)        # 8-byte Spill
	callq	rvalue
	callq	asin
	movq	-816(%rbp), %rdi        # 8-byte Reload
	callq	mk_real
	movq	-808(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_12:                             # %sw.bb.64
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rdi, -824(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -832(%rbp)        # 8-byte Spill
	callq	rvalue
	callq	acos
	movq	-832(%rbp), %rdi        # 8-byte Reload
	callq	mk_real
	movq	-824(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_13:                             # %sw.bb.73
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	jne	.LBB118_15
# BB#14:                                # %if.then.82
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rdi, -840(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -848(%rbp)        # 8-byte Spill
	callq	rvalue
	callq	atan
	movq	-848(%rbp), %rdi        # 8-byte Reload
	callq	mk_real
	movq	-840(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_15:                             # %if.else.87
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rdi, -856(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -864(%rbp)        # 8-byte Spill
	callq	rvalue
	movq	-64(%rbp), %rdi
	movsd	%xmm0, -872(%rbp)       # 8-byte Spill
	callq	rvalue
	movsd	-872(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -880(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-880(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	atan2
	movq	-864(%rbp), %rdi        # 8-byte Reload
	callq	mk_real
	movq	-856(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_16:                             # %sw.bb.100
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rdi, -888(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -896(%rbp)        # 8-byte Spill
	callq	rvalue
	callq	sqrt
	movq	-896(%rbp), %rdi        # 8-byte Reload
	callq	mk_real
	movq	-888(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_17:                             # %sw.bb.109
	movl	$1, -76(%rbp)
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	num_is_integer
	cmpl	$0, %eax
	je	.LBB118_20
# BB#18:                                # %land.lhs.true
	movq	-88(%rbp), %rdi
	callq	num_is_integer
	cmpl	$0, %eax
	je	.LBB118_20
# BB#19:                                # %if.then.126
	movl	$0, -76(%rbp)
.LBB118_20:                             # %if.end
	movq	-32(%rbp), %rdi
	callq	rvalue
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB118_23
	jp	.LBB118_23
# BB#21:                                # %land.lhs.true.129
	movq	-88(%rbp), %rdi
	callq	rvalue
	xorps	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB118_23
# BB#22:                                # %if.then.132
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -72(%rbp)
	jmp	.LBB118_24
.LBB118_23:                             # %if.else.133
	movq	-32(%rbp), %rdi
	callq	rvalue
	movq	-88(%rbp), %rdi
	movsd	%xmm0, -904(%rbp)       # 8-byte Spill
	callq	rvalue
	movsd	-904(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -912(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-912(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	pow
	movsd	%xmm0, -72(%rbp)
.LBB118_24:                             # %if.end.137
	cmpl	$0, -76(%rbp)
	jne	.LBB118_28
# BB#25:                                # %if.then.139
	cvttsd2si	-72(%rbp), %rax
	movq	%rax, -96(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdq	-96(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB118_26
	jp	.LBB118_26
	jmp	.LBB118_27
.LBB118_26:                             # %if.then.143
	movl	$1, -76(%rbp)
.LBB118_27:                             # %if.end.144
	jmp	.LBB118_28
.LBB118_28:                             # %if.end.145
	cmpl	$0, -76(%rbp)
	je	.LBB118_30
# BB#29:                                # %if.then.147
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rdi, -920(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	mk_real
	movq	-920(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_30:                             # %if.else.150
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	cvttsd2si	-72(%rbp), %rsi
	movq	%rdi, -928(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	mk_integer
	movq	-928(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_31:                             # %sw.bb.154
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rdi, -936(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -944(%rbp)        # 8-byte Spill
	callq	rvalue
	callq	floor
	movq	-944(%rbp), %rdi        # 8-byte Reload
	callq	mk_real
	movq	-936(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_32:                             # %sw.bb.163
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rdi, -952(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -960(%rbp)        # 8-byte Spill
	callq	rvalue
	callq	ceil
	movq	-960(%rbp), %rdi        # 8-byte Reload
	callq	mk_real
	movq	-952(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_33:                             # %sw.bb.172
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	rvalue
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -104(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB118_35
# BB#34:                                # %if.then.180
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rdi, -968(%rbp)        # 8-byte Spill
	movq	%rax, -976(%rbp)        # 8-byte Spill
	callq	floor
	movq	-976(%rbp), %rdi        # 8-byte Reload
	callq	mk_real
	movq	-968(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_35:                             # %if.else.184
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rdi, -984(%rbp)        # 8-byte Spill
	movq	%rax, -992(%rbp)        # 8-byte Spill
	callq	ceil
	movq	-992(%rbp), %rdi        # 8-byte Reload
	callq	mk_real
	movq	-984(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_36:                             # %sw.bb.188
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	num_is_integer
	cmpl	$0, %eax
	je	.LBB118_38
# BB#37:                                # %if.then.195
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_38:                             # %if.end.197
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rdi, -1000(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	callq	rvalue
	callq	round_per_R5RS
	movq	-1008(%rbp), %rdi       # 8-byte Reload
	callq	mk_real
	movq	-1000(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_39:                             # %sw.bb.202
	movq	num_zero, %rax
	movq	%rax, -48(%rbp)
	movq	num_zero+8, %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB118_40:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	je	.LBB118_43
# BB#41:                                # %for.body
                                        #   in Loop: Header=BB118_40 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	nvalue
	movb	%al, -120(%rbp)
	movq	%rdx, -112(%rbp)
	movb	-48(%rbp), %al
	movq	-40(%rbp), %rsi
	movb	-120(%rbp), %cl
	movq	-112(%rbp), %rdx
	movzbl	%al, %edi
	movzbl	%cl, %r8d
	movq	%rdx, -1016(%rbp)       # 8-byte Spill
	movl	%r8d, %edx
	movq	-1016(%rbp), %rcx       # 8-byte Reload
	callq	num_add
	movb	%al, -136(%rbp)
	movq	%rdx, -128(%rbp)
	movq	-136(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	-128(%rbp), %rcx
	movq	%rcx, -40(%rbp)
# BB#42:                                # %for.inc
                                        #   in Loop: Header=BB118_40 Depth=1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB118_40
.LBB118_43:                             # %for.end
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movb	-48(%rbp), %cl
	movq	-40(%rbp), %rdx
	movq	%rdi, -1024(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movzbl	%cl, %esi
	callq	mk_number
	movq	-1024(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_44:                             # %sw.bb.217
	movq	num_one, %rax
	movq	%rax, -48(%rbp)
	movq	num_one+8, %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB118_45:                             # %for.cond.219
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	je	.LBB118_48
# BB#46:                                # %for.body.223
                                        #   in Loop: Header=BB118_45 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	nvalue
	movb	%al, -152(%rbp)
	movq	%rdx, -144(%rbp)
	movb	-48(%rbp), %al
	movq	-40(%rbp), %rsi
	movb	-152(%rbp), %cl
	movq	-144(%rbp), %rdx
	movzbl	%al, %edi
	movzbl	%cl, %r8d
	movq	%rdx, -1032(%rbp)       # 8-byte Spill
	movl	%r8d, %edx
	movq	-1032(%rbp), %rcx       # 8-byte Reload
	callq	num_mul
	movb	%al, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	-168(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	-160(%rbp), %rcx
	movq	%rcx, -40(%rbp)
# BB#47:                                # %for.inc.231
                                        #   in Loop: Header=BB118_45 Depth=1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB118_45
.LBB118_48:                             # %for.end.235
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movb	-48(%rbp), %cl
	movq	-40(%rbp), %rdx
	movq	%rdi, -1040(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movzbl	%cl, %esi
	callq	mk_number
	movq	-1040(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_49:                             # %sw.bb.238
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	jne	.LBB118_51
# BB#50:                                # %if.then.246
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	num_zero, %rax
	movq	%rax, -48(%rbp)
	movq	num_zero+8, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB118_52
.LBB118_51:                             # %if.else.248
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rdi
	callq	nvalue
	movb	%al, -184(%rbp)
	movq	%rdx, -176(%rbp)
	movq	-184(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movq	-176(%rbp), %rdx
	movq	%rdx, -40(%rbp)
.LBB118_52:                             # %if.end.259
	jmp	.LBB118_53
.LBB118_53:                             # %for.cond.260
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	je	.LBB118_56
# BB#54:                                # %for.body.264
                                        #   in Loop: Header=BB118_53 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	nvalue
	movb	%al, -200(%rbp)
	movq	%rdx, -192(%rbp)
	movb	-48(%rbp), %al
	movq	-40(%rbp), %rsi
	movb	-200(%rbp), %cl
	movq	-192(%rbp), %rdx
	movzbl	%al, %edi
	movzbl	%cl, %r8d
	movq	%rdx, -1048(%rbp)       # 8-byte Spill
	movl	%r8d, %edx
	movq	-1048(%rbp), %rcx       # 8-byte Reload
	callq	num_sub
	movb	%al, -216(%rbp)
	movq	%rdx, -208(%rbp)
	movq	-216(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	-208(%rbp), %rcx
	movq	%rcx, -40(%rbp)
# BB#55:                                # %for.inc.272
                                        #   in Loop: Header=BB118_53 Depth=1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB118_53
.LBB118_56:                             # %for.end.276
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movb	-48(%rbp), %cl
	movq	-40(%rbp), %rdx
	movq	%rdi, -1056(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movzbl	%cl, %esi
	callq	mk_number
	movq	-1056(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_57:                             # %sw.bb.279
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	jne	.LBB118_59
# BB#58:                                # %if.then.287
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	num_one, %rax
	movq	%rax, -48(%rbp)
	movq	num_one+8, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB118_60
.LBB118_59:                             # %if.else.289
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rdi
	callq	nvalue
	movb	%al, -232(%rbp)
	movq	%rdx, -224(%rbp)
	movq	-232(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movq	-224(%rbp), %rdx
	movq	%rdx, -40(%rbp)
.LBB118_60:                             # %if.end.300
	jmp	.LBB118_61
.LBB118_61:                             # %for.cond.301
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	je	.LBB118_67
# BB#62:                                # %for.body.305
                                        #   in Loop: Header=BB118_61 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	rvalue
	callq	is_zero_double
	cmpl	$0, %eax
	jne	.LBB118_64
# BB#63:                                # %if.then.312
                                        #   in Loop: Header=BB118_61 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	nvalue
	movb	%al, -248(%rbp)
	movq	%rdx, -240(%rbp)
	movb	-48(%rbp), %al
	movq	-40(%rbp), %rsi
	movb	-248(%rbp), %cl
	movq	-240(%rbp), %rdx
	movzbl	%al, %edi
	movzbl	%cl, %r8d
	movq	%rdx, -1064(%rbp)       # 8-byte Spill
	movl	%r8d, %edx
	movq	-1064(%rbp), %rcx       # 8-byte Reload
	callq	num_div
	movb	%al, -264(%rbp)
	movq	%rdx, -256(%rbp)
	movq	-264(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	-256(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	jmp	.LBB118_65
.LBB118_64:                             # %if.else.320
	movabsq	$.L.str.198, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_65:                             # %if.end.322
                                        #   in Loop: Header=BB118_61 Depth=1
	jmp	.LBB118_66
.LBB118_66:                             # %for.inc.323
                                        #   in Loop: Header=BB118_61 Depth=1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB118_61
.LBB118_67:                             # %for.end.327
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movb	-48(%rbp), %cl
	movq	-40(%rbp), %rdx
	movq	%rdi, -1072(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movzbl	%cl, %esi
	callq	mk_number
	movq	-1072(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_68:                             # %sw.bb.330
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	jne	.LBB118_70
# BB#69:                                # %if.then.338
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	num_one, %rax
	movq	%rax, -48(%rbp)
	movq	num_one+8, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB118_71
.LBB118_70:                             # %if.else.340
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rdi
	callq	nvalue
	movb	%al, -280(%rbp)
	movq	%rdx, -272(%rbp)
	movq	-280(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movq	-272(%rbp), %rdx
	movq	%rdx, -40(%rbp)
.LBB118_71:                             # %if.end.351
	jmp	.LBB118_72
.LBB118_72:                             # %for.cond.352
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	je	.LBB118_78
# BB#73:                                # %for.body.356
                                        #   in Loop: Header=BB118_72 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	ivalue
	cmpq	$0, %rax
	je	.LBB118_75
# BB#74:                                # %if.then.363
                                        #   in Loop: Header=BB118_72 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	nvalue
	movb	%al, -296(%rbp)
	movq	%rdx, -288(%rbp)
	movb	-48(%rbp), %al
	movq	-40(%rbp), %rsi
	movb	-296(%rbp), %cl
	movq	-288(%rbp), %rdx
	movzbl	%al, %edi
	movzbl	%cl, %r8d
	movq	%rdx, -1080(%rbp)       # 8-byte Spill
	movl	%r8d, %edx
	movq	-1080(%rbp), %rcx       # 8-byte Reload
	callq	num_intdiv
	movb	%al, -312(%rbp)
	movq	%rdx, -304(%rbp)
	movq	-312(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	-304(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	jmp	.LBB118_76
.LBB118_75:                             # %if.else.371
	movabsq	$.L.str.199, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_76:                             # %if.end.373
                                        #   in Loop: Header=BB118_72 Depth=1
	jmp	.LBB118_77
.LBB118_77:                             # %for.inc.374
                                        #   in Loop: Header=BB118_72 Depth=1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB118_72
.LBB118_78:                             # %for.end.378
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movb	-48(%rbp), %cl
	movq	-40(%rbp), %rdx
	movq	%rdi, -1088(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movzbl	%cl, %esi
	callq	mk_number
	movq	-1088(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_79:                             # %sw.bb.381
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rdi
	callq	nvalue
	movb	%al, -328(%rbp)
	movq	%rdx, -320(%rbp)
	movq	-328(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movq	-320(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-16(%rbp), %rdx
	movq	832(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	8(%rdx), %rdi
	callq	ivalue
	cmpq	$0, %rax
	je	.LBB118_81
# BB#80:                                # %if.then.398
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rdi
	callq	nvalue
	movb	%al, -344(%rbp)
	movq	%rdx, -336(%rbp)
	movb	-48(%rbp), %al
	movq	-40(%rbp), %rsi
	movb	-344(%rbp), %cl
	movq	-336(%rbp), %rdx
	movzbl	%al, %edi
	movzbl	%cl, %r8d
	movq	%rdx, -1096(%rbp)       # 8-byte Spill
	movl	%r8d, %edx
	movq	-1096(%rbp), %rcx       # 8-byte Reload
	callq	num_rem
	movb	%al, -360(%rbp)
	movq	%rdx, -352(%rbp)
	movq	-360(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	-352(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	jmp	.LBB118_82
.LBB118_81:                             # %if.else.410
	movabsq	$.L.str.200, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_82:                             # %if.end.412
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movb	-48(%rbp), %cl
	movq	-40(%rbp), %rdx
	movq	%rdi, -1104(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movzbl	%cl, %esi
	callq	mk_number
	movq	-1104(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_83:                             # %sw.bb.415
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rdi
	callq	nvalue
	movb	%al, -376(%rbp)
	movq	%rdx, -368(%rbp)
	movq	-376(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movq	-368(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-16(%rbp), %rdx
	movq	832(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	8(%rdx), %rdi
	callq	ivalue
	cmpq	$0, %rax
	je	.LBB118_85
# BB#84:                                # %if.then.432
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rdi
	callq	nvalue
	movb	%al, -392(%rbp)
	movq	%rdx, -384(%rbp)
	movb	-48(%rbp), %al
	movq	-40(%rbp), %rsi
	movb	-392(%rbp), %cl
	movq	-384(%rbp), %rdx
	movzbl	%al, %edi
	movzbl	%cl, %r8d
	movq	%rdx, -1112(%rbp)       # 8-byte Spill
	movl	%r8d, %edx
	movq	-1112(%rbp), %rcx       # 8-byte Reload
	callq	num_mod
	movb	%al, -408(%rbp)
	movq	%rdx, -400(%rbp)
	movq	-408(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	-400(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	jmp	.LBB118_86
.LBB118_85:                             # %if.else.444
	movabsq	$.L.str.201, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_86:                             # %if.end.446
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movb	-48(%rbp), %cl
	movq	-40(%rbp), %rdx
	movq	%rdi, -1120(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movzbl	%cl, %esi
	callq	mk_number
	movq	-1120(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_87:                             # %sw.bb.449
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_88:                             # %sw.bb.458
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_89:                             # %sw.bb.467
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	832(%rcx), %rcx
	movq	%rax, 16(%rcx)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_90:                             # %sw.bb.481
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rdi
	callq	is_immutable
	cmpl	$0, %eax
	jne	.LBB118_92
# BB#91:                                # %if.then.488
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	832(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_92:                             # %if.else.508
	movabsq	$.L.str.202, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_93:                             # %sw.bb.510
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rdi
	callq	is_immutable
	cmpl	$0, %eax
	jne	.LBB118_95
# BB#94:                                # %if.then.517
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	832(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, 16(%rcx)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_95:                             # %if.else.537
	movabsq	$.L.str.203, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_96:                             # %sw.bb.539
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rdi
	callq	ivalue
	movl	%eax, %ecx
	movl	%ecx, -412(%rbp)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	-412(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rdi, -1128(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	mk_integer
	movq	-1128(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_97:                             # %sw.bb.549
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rdi
	callq	ivalue
	movl	%eax, %ecx
	movl	%ecx, -416(%rbp)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	-416(%rbp), %esi
	movq	%rdi, -1136(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	mk_character
	movq	-1136(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_98:                             # %sw.bb.559
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rdi
	callq	ivalue
	movl	%eax, %ecx
	movl	%ecx, -420(%rbp)
	movl	-420(%rbp), %edi
	callq	g_unichar_toupper
	movl	%eax, -420(%rbp)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movl	-420(%rbp), %esi
	movq	%rdi, -1144(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	callq	mk_character
	movq	-1144(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_99:                             # %sw.bb.570
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rdi
	callq	ivalue
	movl	%eax, %ecx
	movl	%ecx, -424(%rbp)
	movl	-424(%rbp), %edi
	callq	g_unichar_tolower
	movl	%eax, -424(%rbp)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movl	-424(%rbp), %esi
	movq	%rdi, -1152(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	callq	mk_character
	movq	-1152(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_100:                            # %sw.bb.581
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	832(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	8(%rcx), %rsi
	movq	%rdi, -1160(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	mk_symbol
	movq	-1160(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_101:                            # %sw.bb.589
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -432(%rbp)
	movq	-432(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$35, %ecx
	jne	.LBB118_103
# BB#102:                               # %if.then.600
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-432(%rbp), %rcx
	addq	$1, %rcx
	movq	%rdi, -1168(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	mk_sharp_const
	movq	-1168(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_103:                            # %if.else.603
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-432(%rbp), %rsi
	movq	%rdi, -1176(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	mk_atom
	movq	-1176(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_104:                            # %sw.bb.606
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rdi, -1184(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	symname
	movq	-1184(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	mk_string
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	setimmutable
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_105:                            # %sw.bb.614
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	is_number
	cmpl	$0, %eax
	jne	.LBB118_109
# BB#106:                               # %lor.lhs.false
	movq	-32(%rbp), %rdi
	callq	is_character
	cmpl	$0, %eax
	jne	.LBB118_109
# BB#107:                               # %lor.lhs.false.623
	movq	-32(%rbp), %rdi
	callq	is_string
	cmpl	$0, %eax
	jne	.LBB118_109
# BB#108:                               # %lor.lhs.false.626
	movq	-32(%rbp), %rdi
	callq	is_symbol
	cmpl	$0, %eax
	je	.LBB118_110
.LBB118_109:                            # %if.then.629
	xorl	%edx, %edx
	leaq	-440(%rbp), %rcx
	leaq	-444(%rbp), %r8
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	atom2str
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-440(%rbp), %rsi
	movl	-444(%rbp), %edx
	movq	%rdi, -1192(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	callq	mk_counted_string
	movq	-1192(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_110:                            # %if.else.632
	movabsq	$.L.str.204, %rsi
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_111:                            # %sw.bb.634
	movl	$32, -448(%rbp)
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rdi
	callq	ivalue
	movl	%eax, %ecx
	movl	%ecx, -452(%rbp)
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdi
	cmpq	936(%rdi), %rax
	je	.LBB118_113
# BB#112:                               # %if.then.649
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rdi
	callq	charvalue
	movl	%eax, -448(%rbp)
.LBB118_113:                            # %if.end.658
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	-452(%rbp), %esi
	movl	-448(%rbp), %edx
	movq	%rdi, -1200(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	mk_empty_string
	movq	-1200(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_114:                            # %sw.bb.661
	movq	$-1, %rsi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	832(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	%rdi, -1208(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -1216(%rbp)       # 8-byte Spill
	callq	g_utf8_strlen
	movq	-1216(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	mk_integer
	movq	-1208(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_115:                            # %sw.bb.672
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -464(%rbp)
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rdi
	callq	ivalue
	movq	$-1, %rsi
	movl	%eax, %ecx
	movl	%ecx, -468(%rbp)
	movslq	-468(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	832(%rdi), %rdi
	movq	8(%rdi), %rdi
	movq	8(%rdi), %rdi
	movq	%rax, -1224(%rbp)       # 8-byte Spill
	callq	g_utf8_strlen
	movq	-1224(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	jl	.LBB118_117
# BB#116:                               # %if.then.700
	movabsq	$.L.str.205, %rsi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rdx
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_117:                            # %if.end.709
	movq	-464(%rbp), %rdi
	movslq	-468(%rbp), %rsi
	callq	g_utf8_offset_to_pointer
	movq	%rax, -464(%rbp)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-464(%rbp), %rsi
	movq	%rdi, -1232(%rbp)       # 8-byte Spill
	movq	%rsi, %rdi
	movq	%rax, -1240(%rbp)       # 8-byte Spill
	callq	g_utf8_get_char
	movq	-1240(%rbp), %rdi       # 8-byte Reload
	movl	%eax, %esi
	callq	mk_character
	movq	-1232(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_118:                            # %sw.bb.715
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -480(%rbp)
	movq	-480(%rbp), %rdi
	callq	is_immutable
	cmpl	$0, %eax
	je	.LBB118_120
# BB#119:                               # %if.then.725
	movabsq	$.L.str.206, %rsi
	movq	-16(%rbp), %rdi
	movq	-480(%rbp), %rdx
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_120:                            # %if.end.727
	movq	-480(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -488(%rbp)
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rdi
	callq	ivalue
	movq	$-1, %rsi
	movl	%eax, %ecx
	movl	%ecx, -492(%rbp)
	movslq	-492(%rbp), %rax
	movq	-488(%rbp), %rdi
	movq	%rax, -1248(%rbp)       # 8-byte Spill
	callq	g_utf8_strlen
	movq	-1248(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	jl	.LBB118_122
# BB#121:                               # %if.then.744
	movabsq	$.L.str.207, %rsi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rdx
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_122:                            # %if.end.753
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rdi
	callq	charvalue
	leaq	-503(%rbp), %rsi
	movl	%eax, -496(%rbp)
	movl	-496(%rbp), %edi
	callq	g_unichar_to_utf8
	movl	%eax, -508(%rbp)
	movq	-488(%rbp), %rdi
	movslq	-492(%rbp), %rsi
	callq	g_utf8_offset_to_pointer
	movq	%rax, -520(%rbp)
	movq	-488(%rbp), %rdi
	movslq	-492(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	callq	g_utf8_offset_to_pointer
	movq	%rax, -528(%rbp)
	movq	-520(%rbp), %rax
	movq	-488(%rbp), %rsi
	subq	%rsi, %rax
	movl	%eax, %ecx
	movl	%ecx, -532(%rbp)
	movq	-528(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -536(%rbp)
	movl	-532(%rbp), %ecx
	addl	-508(%rbp), %ecx
	addl	-536(%rbp), %ecx
	movl	%ecx, -512(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	-512(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdi
	callq	*%rax
	movq	%rax, -544(%rbp)
	cmpq	$0, -544(%rbp)
	jne	.LBB118_124
# BB#123:                               # %if.then.780
	movabsq	$.L.str.208, %rsi
	movq	-16(%rbp), %rax
	movb	$1, 3505(%rax)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rdx
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_124:                            # %if.end.786
	cmpl	$0, -532(%rbp)
	jle	.LBB118_126
# BB#125:                               # %if.then.789
	movq	-544(%rbp), %rdi
	movq	-488(%rbp), %rsi
	movslq	-532(%rbp), %rdx
	callq	memcpy
.LBB118_126:                            # %if.end.791
	leaq	-503(%rbp), %rax
	movq	-544(%rbp), %rcx
	movslq	-532(%rbp), %rdx
	addq	%rdx, %rcx
	movslq	-508(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	memcpy
	cmpl	$0, -536(%rbp)
	jle	.LBB118_128
# BB#127:                               # %if.then.796
	movq	-544(%rbp), %rax
	movslq	-532(%rbp), %rcx
	addq	%rcx, %rax
	movslq	-508(%rbp), %rcx
	addq	%rcx, %rax
	movq	-528(%rbp), %rsi
	movslq	-536(%rbp), %rdx
	movq	%rax, %rdi
	callq	memcpy
.LBB118_128:                            # %if.end.802
	movslq	-512(%rbp), %rax
	movq	-544(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	movq	-480(%rbp), %rax
	movq	8(%rax), %rdi
	callq	free
	movq	$-1, %rsi
	movq	-544(%rbp), %rax
	movq	-480(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-544(%rbp), %rdi
	callq	g_utf8_strlen
	movl	%eax, %edx
	movq	-480(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-16(%rbp), %rdi
	movq	-480(%rbp), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_129:                            # %sw.bb.814
	movl	$0, -548(%rbp)
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB118_130:                            # %for.cond.818
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	je	.LBB118_133
# BB#131:                               # %for.body.822
                                        #   in Loop: Header=BB118_130 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -560(%rbp)
	movq	-560(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-560(%rbp), %rax
	movslq	16(%rax), %rsi
	callq	g_utf8_offset_to_pointer
	movq	%rax, -584(%rbp)
	movq	-584(%rbp), %rax
	movq	-560(%rbp), %rsi
	movq	8(%rsi), %rsi
	subq	%rsi, %rax
	movslq	-548(%rbp), %rsi
	addq	%rax, %rsi
	movl	%esi, %ecx
	movl	%ecx, -548(%rbp)
# BB#132:                               # %for.inc.843
                                        #   in Loop: Header=BB118_130 Depth=1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB118_130
.LBB118_133:                            # %for.end.847
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	-548(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdi
	callq	*%rax
	movq	%rax, -568(%rbp)
	cmpq	$0, -568(%rbp)
	jne	.LBB118_135
# BB#134:                               # %if.then.854
	movabsq	$.L.str.209, %rsi
	movq	-16(%rbp), %rax
	movb	$1, 3505(%rax)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rdx
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_135:                            # %if.end.861
	movq	-568(%rbp), %rax
	movq	%rax, -576(%rbp)
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB118_136:                            # %for.cond.863
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	je	.LBB118_139
# BB#137:                               # %for.body.867
                                        #   in Loop: Header=BB118_136 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -560(%rbp)
	movq	-560(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-560(%rbp), %rax
	movslq	16(%rax), %rsi
	callq	g_utf8_offset_to_pointer
	movq	%rax, -584(%rbp)
	movq	-584(%rbp), %rax
	movq	-560(%rbp), %rsi
	movq	8(%rsi), %rsi
	subq	%rsi, %rax
	movl	%eax, %ecx
	movl	%ecx, -548(%rbp)
	movq	-576(%rbp), %rdi
	movq	-560(%rbp), %rax
	movq	8(%rax), %rsi
	movslq	-548(%rbp), %rdx
	callq	memcpy
	movl	-548(%rbp), %ecx
	movq	-576(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -576(%rbp)
# BB#138:                               # %for.inc.892
                                        #   in Loop: Header=BB118_136 Depth=1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB118_136
.LBB118_139:                            # %for.end.896
	movq	-576(%rbp), %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rdi
	movq	-568(%rbp), %rsi
	callq	mk_string
	movq	%rax, -560(%rbp)
	movq	-568(%rbp), %rdi
	callq	g_free
	movq	-16(%rbp), %rdi
	movq	-560(%rbp), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_140:                            # %sw.bb.899
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -592(%rbp)
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rdi
	callq	ivalue
	movq	$-1, %rsi
	movl	%eax, %ecx
	movl	%ecx, -612(%rbp)
	movslq	-612(%rbp), %rax
	movq	-592(%rbp), %rdi
	movq	%rax, -1256(%rbp)       # 8-byte Spill
	callq	g_utf8_strlen
	movq	-1256(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	jle	.LBB118_142
# BB#141:                               # %if.then.924
	movabsq	$.L.str.210, %rsi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rdx
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_142:                            # %if.end.933
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	je	.LBB118_147
# BB#143:                               # %if.then.944
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rdi
	callq	ivalue
	movq	$-1, %rsi
	movl	%eax, %ecx
	movl	%ecx, -616(%rbp)
	movslq	-616(%rbp), %rax
	movq	-592(%rbp), %rdi
	movq	%rax, -1264(%rbp)       # 8-byte Spill
	callq	g_utf8_strlen
	movq	-1264(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	jg	.LBB118_145
# BB#144:                               # %lor.lhs.false.961
	movl	-616(%rbp), %eax
	cmpl	-612(%rbp), %eax
	jge	.LBB118_146
.LBB118_145:                            # %if.then.964
	movabsq	$.L.str.211, %rsi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rdx
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_146:                            # %if.end.976
	jmp	.LBB118_148
.LBB118_147:                            # %if.else.977
	movq	$-1, %rsi
	movq	-592(%rbp), %rdi
	callq	g_utf8_strlen
	movl	%eax, %ecx
	movl	%ecx, -616(%rbp)
.LBB118_148:                            # %if.end.980
	movq	-592(%rbp), %rdi
	movslq	-612(%rbp), %rsi
	callq	g_utf8_offset_to_pointer
	movq	%rax, -600(%rbp)
	movq	-592(%rbp), %rdi
	movslq	-616(%rbp), %rsi
	callq	g_utf8_offset_to_pointer
	movq	%rax, -608(%rbp)
	movq	-608(%rbp), %rax
	movq	-600(%rbp), %rsi
	subq	%rsi, %rax
	movl	%eax, %ecx
	movl	%ecx, -620(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	-620(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdi
	callq	*%rax
	movq	%rax, -592(%rbp)
	cmpq	$0, -592(%rbp)
	jne	.LBB118_150
# BB#149:                               # %if.then.995
	movabsq	$.L.str.212, %rsi
	movq	-16(%rbp), %rax
	movb	$1, 3505(%rax)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rdx
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_150:                            # %if.end.1002
	movq	-592(%rbp), %rdi
	movq	-600(%rbp), %rsi
	movslq	-620(%rbp), %rdx
	callq	memcpy
	movslq	-620(%rbp), %rdx
	movq	-592(%rbp), %rsi
	movb	$0, (%rsi,%rdx)
	movq	-16(%rbp), %rdi
	movq	-592(%rbp), %rsi
	callq	mk_string
	movq	%rax, -632(%rbp)
	movq	-592(%rbp), %rdi
	callq	g_free
	movq	-16(%rbp), %rdi
	movq	-632(%rbp), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_151:                            # %sw.bb.1008
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rsi
	callq	list_length
	movl	%eax, -652(%rbp)
	cmpl	$0, -652(%rbp)
	jge	.LBB118_153
# BB#152:                               # %if.then.1014
	movabsq	$.L.str.213, %rsi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rdx
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_153:                            # %if.end.1017
	movq	-16(%rbp), %rdi
	movl	-652(%rbp), %esi
	callq	mk_vector
	movq	%rax, -648(%rbp)
	movq	-16(%rbp), %rax
	cmpb	$0, 3505(%rax)
	je	.LBB118_155
# BB#154:                               # %if.then.1021
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	904(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_155:                            # %if.end.1023
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -636(%rbp)
.LBB118_156:                            # %for.cond.1025
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rdi
	callq	is_pair
	cmpl	$0, %eax
	je	.LBB118_159
# BB#157:                               # %for.body.1028
                                        #   in Loop: Header=BB118_156 Depth=1
	movq	-648(%rbp), %rdi
	movl	-636(%rbp), %esi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	callq	set_vector_elem
	movq	%rax, -1272(%rbp)       # 8-byte Spill
# BB#158:                               # %for.inc.1033
                                        #   in Loop: Header=BB118_156 Depth=1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	-636(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -636(%rbp)
	jmp	.LBB118_156
.LBB118_159:                            # %for.end.1037
	movq	-16(%rbp), %rdi
	movq	-648(%rbp), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_160:                            # %sw.bb.1039
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	%rax, -664(%rbp)
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rdi
	callq	ivalue
	movl	%eax, %ecx
	movl	%ecx, -668(%rbp)
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdi
	cmpq	936(%rdi), %rax
	je	.LBB118_162
# BB#161:                               # %if.then.1057
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -664(%rbp)
.LBB118_162:                            # %if.end.1065
	movq	-16(%rbp), %rdi
	movl	-668(%rbp), %esi
	callq	mk_vector
	movq	%rax, -680(%rbp)
	movq	-16(%rbp), %rax
	cmpb	$0, 3505(%rax)
	je	.LBB118_164
# BB#163:                               # %if.then.1069
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	904(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_164:                            # %if.end.1072
	movq	-664(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	je	.LBB118_166
# BB#165:                               # %if.then.1076
	movq	-680(%rbp), %rdi
	movq	-664(%rbp), %rsi
	callq	fill_vector
.LBB118_166:                            # %if.end.1077
	movq	-16(%rbp), %rdi
	movq	-680(%rbp), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_167:                            # %sw.bb.1079
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	832(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	%rdi, -1280(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -1288(%rbp)       # 8-byte Spill
	callq	ivalue
	movq	-1288(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	mk_integer
	movq	-1280(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_168:                            # %sw.bb.1087
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rdi
	callq	ivalue
	movl	%eax, %ecx
	movl	%ecx, -684(%rbp)
	movslq	-684(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	832(%rdi), %rdi
	movq	8(%rdi), %rdi
	movq	%rax, -1296(%rbp)       # 8-byte Spill
	callq	ivalue
	movq	-1296(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB118_170
# BB#169:                               # %if.then.1106
	movabsq	$.L.str.214, %rsi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rdx
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_170:                            # %if.end.1115
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movl	-684(%rbp), %esi
	movq	%rdi, -1304(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	vector_elem
	movq	-1304(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_171:                            # %sw.bb.1122
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rdi
	callq	is_immutable
	cmpl	$0, %eax
	je	.LBB118_173
# BB#172:                               # %if.then.1130
	movabsq	$.L.str.215, %rsi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rdx
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_173:                            # %if.end.1136
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rdi
	callq	ivalue
	movl	%eax, %ecx
	movl	%ecx, -688(%rbp)
	movslq	-688(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	832(%rdi), %rdi
	movq	8(%rdi), %rdi
	movq	%rax, -1312(%rbp)       # 8-byte Spill
	callq	ivalue
	movq	-1312(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB118_175
# BB#174:                               # %if.then.1154
	movabsq	$.L.str.216, %rsi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rdx
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_175:                            # %if.end.1163
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rdi
	movl	-688(%rbp), %esi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rdx
	callq	set_vector_elem
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	832(%rdx), %rdx
	movq	8(%rdx), %rsi
	movq	%rax, -1320(%rbp)       # 8-byte Spill
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB118_177
.LBB118_176:                            # %sw.default
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %esi
	movabsq	$.L.str.189, %rdx
	movq	-16(%rbp), %rcx
	addq	$4530, %rcx             # imm = 0x11B2
	movq	-16(%rbp), %rdi
	movl	5584(%rdi), %eax
	movq	%rcx, %rdi
	movl	%eax, %ecx
	movb	$0, %al
	callq	snprintf
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rsi
	addq	$4530, %rsi             # imm = 0x11B2
	movl	%eax, -1324(%rbp)       # 4-byte Spill
	callq	_Error_1
	movq	%rax, -8(%rbp)
.LBB118_177:                            # %return
	movq	-8(%rbp), %rax
	addq	$1328, %rsp             # imm = 0x530
	popq	%rbp
	retq
.Lfunc_end118:
	.size	opexe_2, .Lfunc_end118-opexe_2
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI118_0:
	.quad	.LBB118_1
	.quad	.LBB118_6
	.quad	.LBB118_7
	.quad	.LBB118_8
	.quad	.LBB118_9
	.quad	.LBB118_10
	.quad	.LBB118_11
	.quad	.LBB118_12
	.quad	.LBB118_13
	.quad	.LBB118_16
	.quad	.LBB118_17
	.quad	.LBB118_31
	.quad	.LBB118_32
	.quad	.LBB118_33
	.quad	.LBB118_36
	.quad	.LBB118_39
	.quad	.LBB118_49
	.quad	.LBB118_44
	.quad	.LBB118_57
	.quad	.LBB118_68
	.quad	.LBB118_79
	.quad	.LBB118_83
	.quad	.LBB118_87
	.quad	.LBB118_88
	.quad	.LBB118_89
	.quad	.LBB118_90
	.quad	.LBB118_93
	.quad	.LBB118_96
	.quad	.LBB118_97
	.quad	.LBB118_98
	.quad	.LBB118_99
	.quad	.LBB118_104
	.quad	.LBB118_105
	.quad	.LBB118_100
	.quad	.LBB118_101
	.quad	.LBB118_111
	.quad	.LBB118_114
	.quad	.LBB118_115
	.quad	.LBB118_118
	.quad	.LBB118_129
	.quad	.LBB118_140
	.quad	.LBB118_151
	.quad	.LBB118_160
	.quad	.LBB118_167
	.quad	.LBB118_168
	.quad	.LBB118_171

	.text
	.align	16, 0x90
	.type	opexe_3,@function
opexe_3:                                # @opexe_3
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp357:
	.cfi_def_cfa_offset 16
.Ltmp358:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp359:
	.cfi_def_cfa_register %rbp
	subq	$560, %rsp              # imm = 0x230
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	$0, -56(%rbp)
	movl	-20(%rbp), %esi
	addl	$-98, %esi
	movl	%esi, %edi
	subl	$29, %esi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%esi, -116(%rbp)        # 4-byte Spill
	ja	.LBB119_119
# BB#121:                               # %entry
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	.LJTI119_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB119_1:                              # %sw.bb
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	1000(%rcx), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	jne	.LBB119_3
# BB#2:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB119_4
.LBB119_3:                              # %cond.false
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB119_4:                              # %cond.end
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB119_120
.LBB119_5:                              # %sw.bb.2
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	1000(%rcx), %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	je	.LBB119_7
# BB#6:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	968(%rcx), %rax
	jne	.LBB119_8
.LBB119_7:                              # %cond.true.15
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB119_9
.LBB119_8:                              # %cond.false.17
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB119_9:                              # %cond.end.19
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB119_120
.LBB119_10:                             # %sw.bb.22
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	1032(%rcx), %rax
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	jne	.LBB119_12
# BB#11:                                # %cond.true.28
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB119_13
.LBB119_12:                             # %cond.false.30
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB119_13:                             # %cond.end.32
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB119_120
.LBB119_14:                             # %sw.bb.35
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	jne	.LBB119_16
# BB#15:                                # %cond.true.41
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB119_17
.LBB119_16:                             # %cond.false.43
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB119_17:                             # %cond.end.45
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB119_120
.LBB119_18:                             # %sw.bb.48
	movl	-20(%rbp), %eax
	addl	$-102, %eax
	movl	%eax, %ecx
	subl	$4, %eax
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	movl	%eax, -196(%rbp)        # 4-byte Spill
	ja	.LBB119_24
# BB#122:                               # %sw.bb.48
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	.LJTI119_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB119_19:                             # %sw.bb.49
	movabsq	$num_eq, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB119_25
.LBB119_20:                             # %sw.bb.50
	movabsq	$num_lt, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB119_25
.LBB119_21:                             # %sw.bb.51
	movabsq	$num_gt, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB119_25
.LBB119_22:                             # %sw.bb.52
	movabsq	$num_le, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB119_25
.LBB119_23:                             # %sw.bb.53
	movabsq	$num_ge, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB119_25
.LBB119_24:                             # %sw.default
	jmp	.LBB119_25
.LBB119_25:                             # %sw.epilog
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	nvalue
	movb	%al, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movq	-72(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	%rdx, -32(%rbp)
.LBB119_26:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	je	.LBB119_31
# BB#27:                                # %for.body
                                        #   in Loop: Header=BB119_26 Depth=1
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	nvalue
	movb	%al, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movb	-48(%rbp), %al
	movq	-40(%rbp), %rsi
	movb	-88(%rbp), %r8b
	movq	-80(%rbp), %rcx
	movzbl	%al, %edi
	movzbl	%r8b, %edx
	movq	-208(%rbp), %r9         # 8-byte Reload
	callq	*%r9
	cmpl	$0, %eax
	jne	.LBB119_29
# BB#28:                                # %if.then
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB119_120
.LBB119_29:                             # %if.end
                                        #   in Loop: Header=BB119_26 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	nvalue
	movb	%al, -104(%rbp)
	movq	%rdx, -96(%rbp)
	movq	-104(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movq	-96(%rbp), %rdx
	movq	%rdx, -40(%rbp)
# BB#30:                                # %for.inc
                                        #   in Loop: Header=BB119_26 Depth=1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB119_26
.LBB119_31:                             # %for.end
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	968(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB119_120
.LBB119_32:                             # %sw.bb.80
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	is_symbol
	cmpl	$0, %eax
	je	.LBB119_34
# BB#33:                                # %cond.true.87
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB119_35
.LBB119_34:                             # %cond.false.89
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB119_35:                             # %cond.end.91
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB119_120
.LBB119_36:                             # %sw.bb.94
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	is_number
	cmpl	$0, %eax
	je	.LBB119_38
# BB#37:                                # %cond.true.101
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jmp	.LBB119_39
.LBB119_38:                             # %cond.false.103
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
.LBB119_39:                             # %cond.end.105
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB119_120
.LBB119_40:                             # %sw.bb.108
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	is_string
	cmpl	$0, %eax
	je	.LBB119_42
# BB#41:                                # %cond.true.115
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jmp	.LBB119_43
.LBB119_42:                             # %cond.false.117
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB119_43:                             # %cond.end.119
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB119_120
.LBB119_44:                             # %sw.bb.122
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	is_integer
	cmpl	$0, %eax
	je	.LBB119_46
# BB#45:                                # %cond.true.129
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jmp	.LBB119_47
.LBB119_46:                             # %cond.false.131
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
.LBB119_47:                             # %cond.end.133
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB119_120
.LBB119_48:                             # %sw.bb.136
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	is_number
	cmpl	$0, %eax
	je	.LBB119_50
# BB#49:                                # %cond.true.143
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jmp	.LBB119_51
.LBB119_50:                             # %cond.false.145
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
.LBB119_51:                             # %cond.end.147
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB119_120
.LBB119_52:                             # %sw.bb.150
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	is_character
	cmpl	$0, %eax
	je	.LBB119_54
# BB#53:                                # %cond.true.157
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB119_55
.LBB119_54:                             # %cond.false.159
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB119_55:                             # %cond.end.161
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB119_120
.LBB119_56:                             # %sw.bb.164
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	ivalue
	movl	%eax, %ecx
	movl	%ecx, %edi
	callq	Cisalpha
	cmpl	$0, %eax
	je	.LBB119_58
# BB#57:                                # %cond.true.172
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB119_59
.LBB119_58:                             # %cond.false.174
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB119_59:                             # %cond.end.176
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB119_120
.LBB119_60:                             # %sw.bb.179
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	ivalue
	movl	%eax, %ecx
	movl	%ecx, %edi
	callq	Cisdigit
	cmpl	$0, %eax
	je	.LBB119_62
# BB#61:                                # %cond.true.188
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jmp	.LBB119_63
.LBB119_62:                             # %cond.false.190
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
.LBB119_63:                             # %cond.end.192
	movq	-336(%rbp), %rax        # 8-byte Reload
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB119_120
.LBB119_64:                             # %sw.bb.195
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	ivalue
	movl	%eax, %ecx
	movl	%ecx, %edi
	callq	Cisspace
	cmpl	$0, %eax
	je	.LBB119_66
# BB#65:                                # %cond.true.204
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jmp	.LBB119_67
.LBB119_66:                             # %cond.false.206
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
.LBB119_67:                             # %cond.end.208
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB119_120
.LBB119_68:                             # %sw.bb.211
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	ivalue
	movl	%eax, %ecx
	movl	%ecx, %edi
	callq	Cisupper
	cmpl	$0, %eax
	je	.LBB119_70
# BB#69:                                # %cond.true.220
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jmp	.LBB119_71
.LBB119_70:                             # %cond.false.222
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
.LBB119_71:                             # %cond.end.224
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB119_120
.LBB119_72:                             # %sw.bb.227
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	ivalue
	movl	%eax, %ecx
	movl	%ecx, %edi
	callq	Cislower
	cmpl	$0, %eax
	je	.LBB119_74
# BB#73:                                # %cond.true.236
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jmp	.LBB119_75
.LBB119_74:                             # %cond.false.238
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
.LBB119_75:                             # %cond.end.240
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB119_120
.LBB119_76:                             # %sw.bb.243
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	is_port
	cmpl	$0, %eax
	je	.LBB119_78
# BB#77:                                # %cond.true.250
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	jmp	.LBB119_79
.LBB119_78:                             # %cond.false.252
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
.LBB119_79:                             # %cond.end.254
	movq	-400(%rbp), %rax        # 8-byte Reload
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB119_120
.LBB119_80:                             # %sw.bb.257
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	is_inport
	cmpl	$0, %eax
	je	.LBB119_82
# BB#81:                                # %cond.true.264
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	jmp	.LBB119_83
.LBB119_82:                             # %cond.false.266
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
.LBB119_83:                             # %cond.end.268
	movq	-416(%rbp), %rax        # 8-byte Reload
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB119_120
.LBB119_84:                             # %sw.bb.271
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	is_outport
	cmpl	$0, %eax
	je	.LBB119_86
# BB#85:                                # %cond.true.278
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	jmp	.LBB119_87
.LBB119_86:                             # %cond.false.280
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
.LBB119_87:                             # %cond.end.282
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB119_120
.LBB119_88:                             # %sw.bb.285
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	is_proc
	cmpl	$0, %eax
	jne	.LBB119_92
# BB#89:                                # %lor.lhs.false.292
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rdi
	callq	is_closure
	cmpl	$0, %eax
	jne	.LBB119_92
# BB#90:                                # %lor.lhs.false.299
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rdi
	callq	is_continuation
	cmpl	$0, %eax
	jne	.LBB119_92
# BB#91:                                # %lor.lhs.false.306
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rdi
	callq	is_foreign
	cmpl	$0, %eax
	je	.LBB119_93
.LBB119_92:                             # %cond.true.313
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	jmp	.LBB119_94
.LBB119_93:                             # %cond.false.315
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
.LBB119_94:                             # %cond.end.317
	movq	-448(%rbp), %rax        # 8-byte Reload
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB119_120
.LBB119_95:                             # %sw.bb.320
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	is_pair
	cmpl	$0, %eax
	je	.LBB119_97
# BB#96:                                # %cond.true.327
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	jmp	.LBB119_98
.LBB119_97:                             # %cond.false.329
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
.LBB119_98:                             # %cond.end.331
	movq	-464(%rbp), %rax        # 8-byte Reload
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB119_120
.LBB119_99:                             # %sw.bb.334
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	832(%rcx), %rcx
	movq	8(%rcx), %rsi
	movq	%rdi, -472(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	list_length
	cmpl	$0, %eax
	jl	.LBB119_101
# BB#100:                               # %cond.true.342
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	jmp	.LBB119_102
.LBB119_101:                            # %cond.false.344
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
.LBB119_102:                            # %cond.end.346
	movq	-480(%rbp), %rax        # 8-byte Reload
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB119_120
.LBB119_103:                            # %sw.bb.349
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rdi, -488(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	is_environment
	cmpl	$0, %eax
	je	.LBB119_105
# BB#104:                               # %cond.true.356
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	jmp	.LBB119_106
.LBB119_105:                            # %cond.false.358
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
.LBB119_106:                            # %cond.end.360
	movq	-496(%rbp), %rax        # 8-byte Reload
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB119_120
.LBB119_107:                            # %sw.bb.363
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rdi, -504(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	is_vector
	cmpl	$0, %eax
	je	.LBB119_109
# BB#108:                               # %cond.true.370
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	jmp	.LBB119_110
.LBB119_109:                            # %cond.false.372
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
.LBB119_110:                            # %cond.end.374
	movq	-512(%rbp), %rax        # 8-byte Reload
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB119_120
.LBB119_111:                            # %sw.bb.377
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	832(%rcx), %rcx
	movq	16(%rcx), %rcx
	cmpq	8(%rcx), %rax
	movq	%rdi, -520(%rbp)        # 8-byte Spill
	jne	.LBB119_113
# BB#112:                               # %cond.true.391
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	jmp	.LBB119_114
.LBB119_113:                            # %cond.false.393
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
.LBB119_114:                            # %cond.end.395
	movq	-528(%rbp), %rax        # 8-byte Reload
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB119_120
.LBB119_115:                            # %sw.bb.398
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	832(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	8(%rcx), %rsi
	movq	%rdi, -536(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	eqv
	cmpl	$0, %eax
	je	.LBB119_117
# BB#116:                               # %cond.true.412
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	jmp	.LBB119_118
.LBB119_117:                            # %cond.false.414
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
.LBB119_118:                            # %cond.end.416
	movq	-544(%rbp), %rax        # 8-byte Reload
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB119_120
.LBB119_119:                            # %sw.default.419
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %esi
	movabsq	$.L.str.189, %rdx
	movq	-16(%rbp), %rcx
	addq	$4530, %rcx             # imm = 0x11B2
	movq	-16(%rbp), %rdi
	movl	5584(%rdi), %eax
	movq	%rcx, %rdi
	movl	%eax, %ecx
	movb	$0, %al
	callq	snprintf
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rsi
	addq	$4530, %rsi             # imm = 0x11B2
	movl	%eax, -548(%rbp)        # 4-byte Spill
	callq	_Error_1
	movq	%rax, -8(%rbp)
.LBB119_120:                            # %return
	movq	-8(%rbp), %rax
	addq	$560, %rsp              # imm = 0x230
	popq	%rbp
	retq
.Lfunc_end119:
	.size	opexe_3, .Lfunc_end119-opexe_3
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI119_0:
	.quad	.LBB119_1
	.quad	.LBB119_5
	.quad	.LBB119_10
	.quad	.LBB119_14
	.quad	.LBB119_18
	.quad	.LBB119_18
	.quad	.LBB119_18
	.quad	.LBB119_18
	.quad	.LBB119_18
	.quad	.LBB119_32
	.quad	.LBB119_36
	.quad	.LBB119_40
	.quad	.LBB119_44
	.quad	.LBB119_48
	.quad	.LBB119_52
	.quad	.LBB119_56
	.quad	.LBB119_60
	.quad	.LBB119_64
	.quad	.LBB119_68
	.quad	.LBB119_72
	.quad	.LBB119_76
	.quad	.LBB119_80
	.quad	.LBB119_84
	.quad	.LBB119_88
	.quad	.LBB119_95
	.quad	.LBB119_99
	.quad	.LBB119_103
	.quad	.LBB119_107
	.quad	.LBB119_111
	.quad	.LBB119_115
.LJTI119_1:
	.quad	.LBB119_19
	.quad	.LBB119_20
	.quad	.LBB119_21
	.quad	.LBB119_22
	.quad	.LBB119_23

	.text
	.align	16, 0x90
	.type	opexe_4,@function
opexe_4:                                # @opexe_4
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp360:
	.cfi_def_cfa_offset 16
.Ltmp361:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp362:
	.cfi_def_cfa_register %rbp
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	addl	$-128, %esi
	movl	%esi, %edi
	subl	$28, %esi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movl	%esi, -124(%rbp)        # 4-byte Spill
	ja	.LBB120_88
# BB#90:                                # %entry
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	.LJTI120_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB120_1:                              # %sw.bb
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 848(%rcx)
	movq	-16(%rbp), %rax
	movq	848(%rax), %rdi
	callq	is_promise
	cmpl	$0, %eax
	je	.LBB120_4
# BB#2:                                 # %if.then
	movl	$129, %esi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	848(%rax), %rcx
	callq	s_save
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 832(%rcx)
# BB#3:                                 # %do.body
	movq	-16(%rbp), %rax
	movl	$10, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB120_89
.LBB120_4:                              # %if.else
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	848(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB120_89
.LBB120_5:                              # %sw.bb.8
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5576(%rcx), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	16(%rcx), %rcx
	movq	%rcx, 16(%rax)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	5576(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB120_89
.LBB120_6:                              # %sw.bb.12
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rdi
	callq	is_pair
	cmpl	$0, %eax
	je	.LBB120_10
# BB#7:                                 # %if.then.18
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	1168(%rcx), %rax
	je	.LBB120_9
# BB#8:                                 # %if.then.26
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	1168(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rdx
	callq	_cons
	movl	$162, %esi
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	936(%rax), %rcx
	callq	s_save
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 1168(%rcx)
.LBB120_9:                              # %if.end.39
	jmp	.LBB120_10
.LBB120_10:                             # %if.end.40
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 832(%rcx)
	cmpl	$130, -20(%rbp)
	jne	.LBB120_12
# BB#11:                                # %if.then.47
	movq	-16(%rbp), %rax
	movl	$1, 5572(%rax)
	jmp	.LBB120_13
.LBB120_12:                             # %if.else.48
	movq	-16(%rbp), %rax
	movl	$0, 5572(%rax)
.LBB120_13:                             # %if.end.50
	jmp	.LBB120_14
.LBB120_14:                             # %do.body.51
	movq	-16(%rbp), %rax
	movl	$172, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB120_89
.LBB120_15:                             # %sw.bb.55
	movq	-16(%rbp), %rax
	movq	832(%rax), %rdi
	callq	is_pair
	cmpl	$0, %eax
	je	.LBB120_19
# BB#16:                                # %if.then.59
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	1168(%rcx), %rax
	je	.LBB120_18
# BB#17:                                # %if.then.66
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	1168(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rdx
	callq	_cons
	movl	$162, %esi
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	936(%rax), %rcx
	callq	s_save
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 1168(%rcx)
.LBB120_18:                             # %if.end.76
	jmp	.LBB120_19
.LBB120_19:                             # %if.end.77
	movabsq	$.L.str.71, %rsi
	movq	-16(%rbp), %rdi
	callq	putstr
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	968(%rsi), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB120_89
.LBB120_20:                             # %sw.bb.80
	movq	-16(%rbp), %rax
	movl	$-1, 16(%rax)
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rdi
	callq	is_string
	cmpl	$0, %eax
	jne	.LBB120_22
# BB#21:                                # %if.then.87
	movabsq	$.L.str.250, %rsi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	mk_string
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rsi
	movq	832(%rsi), %rdx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_cons
	movq	-16(%rbp), %rdx
	movq	%rax, 832(%rdx)
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rdi
	callq	setimmutable
.LBB120_22:                             # %if.end.96
	movabsq	$.L.str.251, %rsi
	movq	-16(%rbp), %rdi
	callq	putstr
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	832(%rsi), %rsi
	movq	8(%rsi), %rsi
	movq	8(%rsi), %rsi
	callq	putstr
	movq	-16(%rbp), %rsi
	movq	832(%rsi), %rsi
	movq	16(%rsi), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, 832(%rdi)
# BB#23:                                # %do.body.107
	movq	-16(%rbp), %rax
	movl	$135, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB120_89
.LBB120_24:                             # %sw.bb.111
	movabsq	$.L.str.252, %rsi
	movq	-16(%rbp), %rdi
	callq	putstr
	movq	-16(%rbp), %rsi
	movq	832(%rsi), %rsi
	movq	-16(%rbp), %rdi
	cmpq	936(%rdi), %rsi
	je	.LBB120_27
# BB#25:                                # %if.then.115
	movl	$135, %esi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	936(%rax), %rcx
	callq	s_save
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 832(%rcx)
	movq	-16(%rbp), %rax
	movl	$1, 5572(%rax)
# BB#26:                                # %do.body.127
	movq	-16(%rbp), %rax
	movl	$172, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB120_89
.LBB120_27:                             # %if.else.131
	movabsq	$.L.str.71, %rsi
	movq	-16(%rbp), %rdi
	callq	putstr
	movq	-16(%rbp), %rsi
	cmpl	$0, 872(%rsi)
	je	.LBB120_30
# BB#28:                                # %if.then.133
	jmp	.LBB120_29
.LBB120_29:                             # %do.body.134
	movq	-16(%rbp), %rax
	movl	$1, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB120_89
.LBB120_30:                             # %if.else.138
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB120_89
.LBB120_31:                             # %sw.bb.142
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	832(%rcx), %rcx
	movq	8(%rcx), %rsi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	reverse
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB120_89
.LBB120_32:                             # %sw.bb.149
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	832(%rcx), %rsi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	list_star
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB120_89
.LBB120_33:                             # %sw.bb.153
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB120_35
# BB#34:                                # %if.then.157
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB120_89
.LBB120_35:                             # %if.end.159
	jmp	.LBB120_36
.LBB120_36:                             # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	je	.LBB120_40
# BB#37:                                # %while.body
                                        #   in Loop: Header=BB120_36 Depth=1
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	callq	revappend
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	cmpq	1000(%rdx), %rax
	jne	.LBB120_39
# BB#38:                                # %if.then.173
	movabsq	$.L.str.253, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB120_89
.LBB120_39:                             # %if.end.175
                                        #   in Loop: Header=BB120_36 Depth=1
	jmp	.LBB120_36
.LBB120_40:                             # %while.end
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rsi
	movq	-32(%rbp), %rdx
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	reverse_in_place
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB120_89
.LBB120_41:                             # %sw.bb.181
	movq	-16(%rbp), %rax
	movq	832(%rax), %rdi
	callq	is_pair
	cmpl	$0, %eax
	je	.LBB120_43
# BB#42:                                # %if.then.185
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rdi
	callq	ivalue
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 16(%rax)
.LBB120_43:                             # %if.end.192
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB120_89
.LBB120_44:                             # %sw.bb.194
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rdx
	callq	gc
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	968(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB120_89
.LBB120_45:                             # %sw.bb.199
	movq	-16(%rbp), %rax
	movsbl	3504(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	cmpq	1000(%rdx), %rax
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	movb	%cl, %sil
	movq	-16(%rbp), %rax
	movb	%sil, 3504(%rax)
	movq	-16(%rbp), %rdi
	cmpl	$0, -44(%rbp)
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	je	.LBB120_47
# BB#46:                                # %cond.true
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB120_48
.LBB120_47:                             # %cond.false
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB120_48:                             # %cond.end
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB120_89
.LBB120_49:                             # %sw.bb.214
	movq	-16(%rbp), %rax
	movq	832(%rax), %rdi
	callq	is_pair
	cmpl	$0, %eax
	je	.LBB120_51
# BB#50:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rdi
	callq	is_number
	cmpl	$0, %eax
	jne	.LBB120_52
.LBB120_51:                             # %if.then.224
	movabsq	$.L.str.254, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB120_89
.LBB120_52:                             # %if.end.226
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	ivalue
	movl	%eax, %ecx
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	callq	alloc_cellseg
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	968(%rdx), %rsi
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB120_89
.LBB120_53:                             # %sw.bb.236
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	oblist_all_symbols
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB120_89
.LBB120_54:                             # %sw.bb.239
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	1160(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB120_89
.LBB120_55:                             # %sw.bb.241
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	1168(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB120_89
.LBB120_56:                             # %sw.bb.244
	movl	$0, -48(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	subl	$146, %ecx
	movl	%eax, -204(%rbp)        # 4-byte Spill
	movl	%ecx, -208(%rbp)        # 4-byte Spill
	je	.LBB120_57
	jmp	.LBB120_92
.LBB120_92:                             # %sw.bb.244
	movl	-204(%rbp), %eax        # 4-byte Reload
	subl	$147, %eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
	je	.LBB120_58
	jmp	.LBB120_93
.LBB120_93:                             # %sw.bb.244
	movl	-204(%rbp), %eax        # 4-byte Reload
	subl	$148, %eax
	movl	%eax, -216(%rbp)        # 4-byte Spill
	je	.LBB120_59
	jmp	.LBB120_60
.LBB120_57:                             # %sw.bb.245
	movl	$16, -48(%rbp)
	jmp	.LBB120_61
.LBB120_58:                             # %sw.bb.246
	movl	$32, -48(%rbp)
	jmp	.LBB120_61
.LBB120_59:                             # %sw.bb.247
	movl	$48, -48(%rbp)
	jmp	.LBB120_61
.LBB120_60:                             # %sw.default
	jmp	.LBB120_61
.LBB120_61:                             # %sw.epilog
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rsi
	movl	-48(%rbp), %edx
	callq	port_from_filename
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rsi
	cmpq	936(%rsi), %rax
	jne	.LBB120_63
# BB#62:                                # %if.then.259
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB120_89
.LBB120_63:                             # %if.end.262
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB120_89
.LBB120_64:                             # %sw.bb.264
	movl	$0, -60(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	subl	$149, %ecx
	movl	%eax, -220(%rbp)        # 4-byte Spill
	movl	%ecx, -224(%rbp)        # 4-byte Spill
	je	.LBB120_65
	jmp	.LBB120_91
.LBB120_91:                             # %sw.bb.264
	movl	-220(%rbp), %eax        # 4-byte Reload
	subl	$150, %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
	je	.LBB120_66
	jmp	.LBB120_67
.LBB120_65:                             # %sw.bb.267
	movl	$16, -60(%rbp)
	jmp	.LBB120_68
.LBB120_66:                             # %sw.bb.268
	movl	$48, -60(%rbp)
	jmp	.LBB120_68
.LBB120_67:                             # %sw.default.269
	jmp	.LBB120_68
.LBB120_68:                             # %sw.epilog.270
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	832(%rcx), %rcx
	movq	8(%rcx), %rcx
	movslq	16(%rcx), %rcx
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	callq	g_utf8_offset_to_pointer
	movl	-60(%rbp), %ecx
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	-248(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	port_from_string
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rdx
	cmpq	936(%rdx), %rax
	jne	.LBB120_70
# BB#69:                                # %if.then.297
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB120_89
.LBB120_70:                             # %if.end.300
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB120_89
.LBB120_71:                             # %sw.bb.302
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	jne	.LBB120_75
# BB#72:                                # %if.then.311
	movq	-16(%rbp), %rdi
	callq	port_from_scratch
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	-16(%rbp), %rdi
	cmpq	936(%rdi), %rax
	jne	.LBB120_74
# BB#73:                                # %if.then.316
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB120_89
.LBB120_74:                             # %if.end.319
	jmp	.LBB120_78
.LBB120_75:                             # %if.else.320
	movl	$32, %ecx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	832(%rdx), %rdx
	movq	8(%rdx), %rdx
	movslq	16(%rdx), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdx
	callq	port_from_string
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	-16(%rbp), %rdx
	cmpq	936(%rdx), %rax
	jne	.LBB120_77
# BB#76:                                # %if.then.346
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB120_89
.LBB120_77:                             # %if.end.349
	jmp	.LBB120_78
.LBB120_78:                             # %if.end.350
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB120_89
.LBB120_79:                             # %sw.bb.352
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	movzbl	(%rax), %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	je	.LBB120_83
# BB#80:                                # %if.then.361
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	-88(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	%rax, -96(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-96(%rbp), %rdi
	callq	*%rax
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB120_82
# BB#81:                                # %if.then.367
	movq	-104(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-96(%rbp), %rax
	subq	$1, %rax
	movq	%rax, %rdx
	callq	memcpy
	movq	-96(%rbp), %rax
	subq	$1, %rax
	movq	-104(%rbp), %rdx
	movb	$0, (%rdx,%rax)
	movq	-16(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	mk_string
	movq	%rax, -112(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-104(%rbp), %rdi
	callq	*%rax
	movq	-16(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB120_89
.LBB120_82:                             # %if.end.374
	jmp	.LBB120_83
.LBB120_83:                             # %if.end.375
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB120_89
.LBB120_84:                             # %sw.bb.378
	movl	$16, %edx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rsi
	callq	port_close
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	968(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB120_89
.LBB120_85:                             # %sw.bb.385
	movl	$32, %edx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rsi
	callq	port_close
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	968(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB120_89
.LBB120_86:                             # %sw.bb.392
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	1048(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB120_89
.LBB120_87:                             # %sw.bb.394
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	840(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB120_89
.LBB120_88:                             # %sw.default.396
	movabsq	$.L.str.189, %rsi
	movq	-16(%rbp), %rax
	addq	$4530, %rax             # imm = 0x11B2
	movq	-16(%rbp), %rcx
	movl	5584(%rcx), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	sprintf
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rcx
	addq	$4530, %rcx             # imm = 0x11B2
	movq	%rcx, %rsi
	movl	%eax, -252(%rbp)        # 4-byte Spill
	callq	_Error_1
	movq	%rax, -8(%rbp)
.LBB120_89:                             # %return
	movq	-8(%rbp), %rax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end120:
	.size	opexe_4, .Lfunc_end120-opexe_4
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI120_0:
	.quad	.LBB120_1
	.quad	.LBB120_5
	.quad	.LBB120_6
	.quad	.LBB120_6
	.quad	.LBB120_6
	.quad	.LBB120_15
	.quad	.LBB120_20
	.quad	.LBB120_24
	.quad	.LBB120_31
	.quad	.LBB120_32
	.quad	.LBB120_33
	.quad	.LBB120_41
	.quad	.LBB120_44
	.quad	.LBB120_45
	.quad	.LBB120_49
	.quad	.LBB120_53
	.quad	.LBB120_54
	.quad	.LBB120_55
	.quad	.LBB120_56
	.quad	.LBB120_56
	.quad	.LBB120_56
	.quad	.LBB120_64
	.quad	.LBB120_64
	.quad	.LBB120_71
	.quad	.LBB120_79
	.quad	.LBB120_84
	.quad	.LBB120_85
	.quad	.LBB120_86
	.quad	.LBB120_87

	.text
	.align	16, 0x90
	.type	opexe_5,@function
opexe_5:                                # @opexe_5
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp363:
	.cfi_def_cfa_offset 16
.Ltmp364:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp365:
	.cfi_def_cfa_register %rbp
	subq	$416, %rsp              # imm = 0x1A0
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	cmpl	$0, 3500(%rdi)
	je	.LBB121_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	3500(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, 3500(%rax)
	movq	-16(%rbp), %rax
	movl	$-1, 16(%rax)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rsi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	mk_integer
	movabsq	$.L.str.257, %rsi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_2:                              # %if.end
	movl	-20(%rbp), %eax
	addl	$-157, %eax
	movl	%eax, %ecx
	subl	$17, %eax
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movl	%eax, -124(%rbp)        # 4-byte Spill
	ja	.LBB121_134
# BB#136:                               # %if.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	.LJTI121_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB121_3:                              # %sw.bb
	movq	-16(%rbp), %rax
	movq	832(%rax), %rdi
	callq	is_pair
	cmpl	$0, %eax
	jne	.LBB121_6
# BB#4:                                 # %if.then.5
	jmp	.LBB121_5
.LBB121_5:                              # %do.body
	movq	-16(%rbp), %rax
	movl	$3, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_6:                              # %if.end.7
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rdi
	callq	is_inport
	cmpl	$0, %eax
	jne	.LBB121_8
# BB#7:                                 # %if.then.11
	movabsq	$.L.str.258, %rsi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rdx
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_8:                              # %if.end.17
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	1160(%rcx), %rax
	jne	.LBB121_11
# BB#9:                                 # %if.then.24
	jmp	.LBB121_10
.LBB121_10:                             # %do.body.25
	movq	-16(%rbp), %rax
	movl	$3, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_11:                             # %if.end.29
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rax
	movq	1160(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, 1160(%rdx)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rdx
	callq	_cons
	movl	$161, %esi
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	936(%rax), %rcx
	callq	s_save
# BB#12:                                # %do.body.38
	movq	-16(%rbp), %rax
	movl	$3, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_13:                             # %sw.bb.42
	movq	-16(%rbp), %rax
	movq	832(%rax), %rdi
	callq	is_pair
	cmpl	$0, %eax
	je	.LBB121_17
# BB#14:                                # %if.then.46
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	1160(%rcx), %rax
	je	.LBB121_16
# BB#15:                                # %if.then.54
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rax
	movq	1160(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rdx
	callq	_cons
	movl	$161, %esi
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	936(%rax), %rcx
	callq	s_save
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 1160(%rcx)
.LBB121_16:                             # %if.end.64
	jmp	.LBB121_17
.LBB121_17:                             # %if.end.65
	movq	-16(%rbp), %rdi
	callq	inchar
	movl	%eax, -48(%rbp)
	cmpl	$-1, -48(%rbp)
	jne	.LBB121_19
# BB#18:                                # %if.then.69
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	1032(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_19:                             # %if.end.71
	movq	-16(%rbp), %rax
	cmpl	$159, 5584(%rax)
	jne	.LBB121_21
# BB#20:                                # %if.then.75
	movq	-16(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	backchar
.LBB121_21:                             # %if.end.76
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	-48(%rbp), %esi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	mk_character
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_22:                             # %sw.bb.79
	movq	-16(%rbp), %rax
	movq	1160(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	832(%rax), %rdi
	callq	is_pair
	cmpl	$0, %eax
	je	.LBB121_24
# BB#23:                                # %if.then.84
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB121_24:                             # %if.end.89
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %ecx
	andl	$2, %ecx
	movl	%ecx, -60(%rbp)
	movq	-16(%rbp), %rdi
	cmpl	$0, -60(%rbp)
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	je	.LBB121_26
# BB#25:                                # %cond.true
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB121_27
.LBB121_26:                             # %cond.false
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB121_27:                             # %cond.end
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_28:                             # %sw.bb.95
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 1160(%rcx)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	5576(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_29:                             # %sw.bb.102
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 1168(%rcx)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	5576(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_30:                             # %sw.bb.109
	movq	-16(%rbp), %rax
	movl	5568(%rax), %ecx
	incl	%ecx
	movl	%ecx, %eax
	subl	$14, %ecx
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	ja	.LBB121_67
# BB#137:                               # %sw.bb.109
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	.LJTI121_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB121_31:                             # %sw.bb.110
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	1032(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_32:                             # %sw.bb.113
	movl	$171, %esi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	936(%rax), %rcx
	callq	s_save
.LBB121_33:                             # %sw.bb.116
	movq	-16(%rbp), %rdi
	callq	token
	movq	-16(%rbp), %rdi
	movl	%eax, 5568(%rdi)
	movq	-16(%rbp), %rdi
	cmpl	$1, 5568(%rdi)
	jne	.LBB121_35
# BB#34:                                # %if.then.122
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_35:                             # %if.else
	movq	-16(%rbp), %rax
	cmpl	$2, 5568(%rax)
	jne	.LBB121_37
# BB#36:                                # %if.then.128
	movabsq	$.L.str.259, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_37:                             # %if.else.130
	movl	$164, %esi
	movq	-16(%rbp), %rax
	movslq	3496(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	3240(%rcx,%rax,4), %edx
	addl	$1, %edx
	movl	%edx, 3240(%rcx,%rax,4)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	936(%rax), %rcx
	callq	s_save
# BB#38:                                # %do.body.133
	movq	-16(%rbp), %rax
	movl	$163, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_39:                             # %sw.bb.139
	movl	$166, %esi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	936(%rax), %rcx
	callq	s_save
	movq	-16(%rbp), %rdi
	callq	token
	movq	-16(%rbp), %rcx
	movl	%eax, 5568(%rcx)
# BB#40:                                # %do.body.144
	movq	-16(%rbp), %rax
	movl	$163, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_41:                             # %sw.bb.148
	movq	-16(%rbp), %rdi
	callq	token
	movq	-16(%rbp), %rdi
	movl	%eax, 5568(%rdi)
	movq	-16(%rbp), %rdi
	cmpl	$12, 5568(%rdi)
	jne	.LBB121_44
# BB#42:                                # %if.then.154
	movl	$168, %esi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	936(%rax), %rcx
	callq	s_save
	movq	-16(%rbp), %rax
	movl	$0, 5568(%rax)
# BB#43:                                # %do.body.158
	movq	-16(%rbp), %rax
	movl	$163, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_44:                             # %if.else.162
	movl	$167, %esi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	936(%rax), %rcx
	callq	s_save
# BB#45:                                # %if.end.165
	jmp	.LBB121_46
.LBB121_46:                             # %do.body.166
	movq	-16(%rbp), %rax
	movl	$163, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_47:                             # %sw.bb.170
	movl	$169, %esi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	936(%rax), %rcx
	callq	s_save
	movq	-16(%rbp), %rdi
	callq	token
	movq	-16(%rbp), %rcx
	movl	%eax, 5568(%rcx)
# BB#48:                                # %do.body.175
	movq	-16(%rbp), %rax
	movl	$163, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_49:                             # %sw.bb.179
	movl	$170, %esi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	936(%rax), %rcx
	callq	s_save
	movq	-16(%rbp), %rdi
	callq	token
	movq	-16(%rbp), %rcx
	movl	%eax, 5568(%rcx)
# BB#50:                                # %do.body.184
	movq	-16(%rbp), %rax
	movl	$163, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_51:                             # %sw.bb.188
	movabsq	$.L.str.260, %rsi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	readstr_upto
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	mk_atom
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_52:                             # %sw.bb.192
	movq	-16(%rbp), %rdi
	callq	readstrexp
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	cmpq	1000(%rdi), %rax
	jne	.LBB121_54
# BB#53:                                # %if.then.197
	movabsq	$.L.str.261, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_54:                             # %if.end.199
	movq	-32(%rbp), %rdi
	callq	setimmutable
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_55:                             # %sw.bb.201
	movq	-16(%rbp), %rdi
	callq	readstrexp
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	cmpq	1000(%rdi), %rax
	jne	.LBB121_57
# BB#56:                                # %if.then.206
	movabsq	$.L.str.261, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_57:                             # %if.end.208
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gettext
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdi
	cmpq	8(%rdi), %rax
	je	.LBB121_59
# BB#58:                                # %if.then.216
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	*%rax
	movq	$-1, %rsi
	movq	-40(%rbp), %rdi
	callq	g_utf8_strlen
	xorl	%ecx, %ecx
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	16(%rax), %esi
	movq	-40(%rbp), %rdx
	callq	store_string
	movq	-32(%rbp), %rdx
	movq	%rax, 8(%rdx)
.LBB121_59:                             # %if.end.231
	movq	-32(%rbp), %rdi
	callq	setimmutable
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_60:                             # %sw.bb.233
	movl	$1, %ecx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	840(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	1128(%rax), %rdx
	callq	find_slot_in_env
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rdx
	cmpq	936(%rdx), %rax
	jne	.LBB121_62
# BB#61:                                # %if.then.238
	movabsq	$.L.str.262, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_62:                             # %if.else.240
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	slot_value_in_env
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movq	936(%rdi), %rdx
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_cons
	movq	-16(%rbp), %rdx
	movq	%rax, 848(%rdx)
# BB#63:                                # %do.body.244
	movq	-16(%rbp), %rax
	movl	$6, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_64:                             # %sw.bb.249
	movabsq	$.L.str.260, %rsi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	readstr_upto
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	mk_sharp_const
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	936(%rsi), %rax
	jne	.LBB121_66
# BB#65:                                # %if.then.255
	movabsq	$.L.str.262, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_66:                             # %if.else.257
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_67:                             # %sw.default
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	5568(%rcx), %rsi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	mk_integer
	movabsq	$.L.str.263, %rsi
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_68:                             # %sw.bb.263
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	5576(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rdx
	callq	_cons
	movq	-16(%rbp), %rdx
	movq	%rax, 832(%rdx)
	movq	-16(%rbp), %rdi
	callq	token
	movq	-16(%rbp), %rdx
	movl	%eax, 5568(%rdx)
	movq	-16(%rbp), %rdx
	cmpl	$-1, 5568(%rdx)
	jne	.LBB121_70
# BB#69:                                # %if.then.273
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	1032(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_70:                             # %if.else.276
	movq	-16(%rbp), %rax
	cmpl	$1, 5568(%rax)
	jne	.LBB121_75
# BB#71:                                # %if.then.280
	movq	-16(%rbp), %rdi
	callq	inchar
	movl	%eax, -76(%rbp)
	cmpl	$10, -76(%rbp)
	je	.LBB121_73
# BB#72:                                # %if.then.285
	movq	-16(%rbp), %rdi
	movl	-76(%rbp), %esi
	callq	backchar
	jmp	.LBB121_74
.LBB121_73:                             # %if.else.286
	movq	-16(%rbp), %rax
	movslq	3496(%rax), %rax
	movq	-16(%rbp), %rcx
	addq	$1192, %rcx             # imm = 0x4A8
	shlq	$5, %rax
	addq	%rax, %rcx
	movl	20(%rcx), %edx
	addl	$1, %edx
	movl	%edx, 20(%rcx)
.LBB121_74:                             # %if.end.291
	movq	-16(%rbp), %rax
	movslq	3496(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	3240(%rcx,%rax,4), %edx
	addl	$-1, %edx
	movl	%edx, 3240(%rcx,%rax,4)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	936(%rcx), %rsi
	movq	-16(%rbp), %rcx
	movq	832(%rcx), %rdx
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	reverse_in_place
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_75:                             # %if.else.300
	movq	-16(%rbp), %rax
	cmpl	$2, 5568(%rax)
	jne	.LBB121_78
# BB#76:                                # %if.then.304
	movl	$165, %esi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	936(%rax), %rcx
	callq	s_save
	movq	-16(%rbp), %rdi
	callq	token
	movq	-16(%rbp), %rcx
	movl	%eax, 5568(%rcx)
# BB#77:                                # %do.body.309
	movq	-16(%rbp), %rax
	movl	$163, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_78:                             # %if.else.313
	movl	$164, %esi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	936(%rax), %rcx
	callq	s_save
# BB#79:                                # %do.body.316
	movq	-16(%rbp), %rax
	movl	$163, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_80:                             # %sw.bb.323
	movq	-16(%rbp), %rdi
	callq	token
	cmpl	$1, %eax
	je	.LBB121_82
# BB#81:                                # %if.then.327
	movabsq	$.L.str.259, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_82:                             # %if.else.329
	movq	-16(%rbp), %rax
	movslq	3496(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	3240(%rcx,%rax,4), %edx
	addl	$-1, %edx
	movl	%edx, 3240(%rcx,%rax,4)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	5576(%rcx), %rsi
	movq	-16(%rbp), %rcx
	movq	832(%rcx), %rdx
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	reverse_in_place
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_83:                             # %sw.bb.339
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	1072(%rdx), %rsi
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %r8
	movq	5576(%r8), %r8
	movq	-16(%rbp), %r9
	movq	936(%r9), %r9
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	%r9, %rdx
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	_cons
	xorl	%ecx, %ecx
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	-240(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	_cons
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_84:                             # %sw.bb.345
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	1080(%rdx), %rsi
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %r8
	movq	5576(%r8), %r8
	movq	-16(%rbp), %r9
	movq	936(%r9), %r9
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	%r9, %rdx
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	_cons
	xorl	%ecx, %ecx
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	-264(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	_cons
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_85:                             # %sw.bb.351
	movabsq	$.L.str.37, %rsi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	mk_symbol
	movabsq	$.L.str.90, %rsi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	mk_symbol
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	1080(%rdx), %rdx
	movq	-16(%rbp), %r8
	movq	-16(%rbp), %r9
	movq	5576(%r9), %r9
	movq	-16(%rbp), %r10
	movq	936(%r10), %r10
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rsi, -320(%rbp)        # 8-byte Spill
	movq	%r9, %rsi
	movq	%rdx, -328(%rbp)        # 8-byte Spill
	movq	%r10, %rdx
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	_cons
	xorl	%ecx, %ecx
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	-328(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	_cons
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdx
	movq	936(%rdx), %rdx
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_cons
	xorl	%ecx, %ecx
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	-336(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	_cons
	xorl	%ecx, %ecx
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	-304(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	_cons
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_86:                             # %sw.bb.364
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	1088(%rdx), %rsi
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %r8
	movq	5576(%r8), %r8
	movq	-16(%rbp), %r9
	movq	936(%r9), %r9
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rsi, -352(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	%r9, %rdx
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	_cons
	xorl	%ecx, %ecx
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	-352(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	_cons
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_87:                             # %sw.bb.370
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	1096(%rdx), %rsi
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %r8
	movq	5576(%r8), %r8
	movq	-16(%rbp), %r9
	movq	936(%r9), %r9
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rsi, -376(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	%r9, %rdx
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	_cons
	xorl	%ecx, %ecx
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	_cons
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_88:                             # %sw.bb.376
	movq	-16(%rbp), %rax
	movq	5576(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 832(%rcx)
# BB#89:                                # %do.body.379
	movq	-16(%rbp), %rax
	movl	$93, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_90:                             # %sw.bb.383
	movq	-16(%rbp), %rax
	movq	832(%rax), %rdi
	callq	is_vector
	cmpl	$0, %eax
	je	.LBB121_93
# BB#91:                                # %if.then.387
	movabsq	$.L.str.264, %rsi
	movq	-16(%rbp), %rdi
	callq	putstr
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	832(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	callq	mk_integer
	xorl	%ecx, %ecx
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	-400(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	_cons
	movq	-16(%rbp), %rdx
	movq	%rax, 832(%rdx)
# BB#92:                                # %do.body.392
	movq	-16(%rbp), %rax
	movl	$174, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_93:                             # %if.else.396
	movq	-16(%rbp), %rax
	movq	832(%rax), %rdi
	callq	is_environment
	cmpl	$0, %eax
	je	.LBB121_95
# BB#94:                                # %if.then.400
	movabsq	$.L.str.265, %rsi
	movq	-16(%rbp), %rdi
	callq	putstr
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	968(%rsi), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_95:                             # %if.else.403
	movq	-16(%rbp), %rax
	movq	832(%rax), %rdi
	callq	is_pair
	cmpl	$0, %eax
	jne	.LBB121_97
# BB#96:                                # %if.then.407
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rsi
	movq	-16(%rbp), %rax
	movl	5572(%rax), %edx
	callq	printatom
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	968(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_97:                             # %if.else.411
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	1072(%rcx), %rax
	jne	.LBB121_102
# BB#98:                                # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rdi
	callq	is_pair
	cmpl	$0, %eax
	je	.LBB121_102
# BB#99:                                # %land.lhs.true.424
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	jne	.LBB121_102
# BB#100:                               # %if.then.435
	movabsq	$.L.str.266, %rsi
	movq	-16(%rbp), %rdi
	callq	putstr
	movq	-16(%rbp), %rsi
	movq	832(%rsi), %rsi
	movq	16(%rsi), %rsi
	movq	8(%rsi), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, 832(%rdi)
# BB#101:                               # %do.body.444
	movq	-16(%rbp), %rax
	movl	$172, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_102:                            # %if.else.448
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	1080(%rcx), %rax
	jne	.LBB121_107
# BB#103:                               # %land.lhs.true.456
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rdi
	callq	is_pair
	cmpl	$0, %eax
	je	.LBB121_107
# BB#104:                               # %land.lhs.true.463
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	jne	.LBB121_107
# BB#105:                               # %if.then.474
	movabsq	$.L.str.267, %rsi
	movq	-16(%rbp), %rdi
	callq	putstr
	movq	-16(%rbp), %rsi
	movq	832(%rsi), %rsi
	movq	16(%rsi), %rsi
	movq	8(%rsi), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, 832(%rdi)
# BB#106:                               # %do.body.483
	movq	-16(%rbp), %rax
	movl	$172, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_107:                            # %if.else.487
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	1088(%rcx), %rax
	jne	.LBB121_112
# BB#108:                               # %land.lhs.true.495
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rdi
	callq	is_pair
	cmpl	$0, %eax
	je	.LBB121_112
# BB#109:                               # %land.lhs.true.502
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	jne	.LBB121_112
# BB#110:                               # %if.then.513
	movabsq	$.L.str.268, %rsi
	movq	-16(%rbp), %rdi
	callq	putstr
	movq	-16(%rbp), %rsi
	movq	832(%rsi), %rsi
	movq	16(%rsi), %rsi
	movq	8(%rsi), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, 832(%rdi)
# BB#111:                               # %do.body.522
	movq	-16(%rbp), %rax
	movl	$172, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_112:                            # %if.else.526
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	1096(%rcx), %rax
	jne	.LBB121_117
# BB#113:                               # %land.lhs.true.534
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rdi
	callq	is_pair
	cmpl	$0, %eax
	je	.LBB121_117
# BB#114:                               # %land.lhs.true.541
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	jne	.LBB121_117
# BB#115:                               # %if.then.552
	movabsq	$.L.str.269, %rsi
	movq	-16(%rbp), %rdi
	callq	putstr
	movq	-16(%rbp), %rsi
	movq	832(%rsi), %rsi
	movq	16(%rsi), %rsi
	movq	8(%rsi), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, 832(%rdi)
# BB#116:                               # %do.body.561
	movq	-16(%rbp), %rax
	movl	$172, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_117:                            # %if.else.565
	movabsq	$.L.str.270, %rsi
	movq	-16(%rbp), %rdi
	callq	putstr
	movl	$173, %esi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	936(%rax), %rcx
	callq	s_save
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 832(%rcx)
# BB#118:                               # %do.body.576
	movq	-16(%rbp), %rax
	movl	$172, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_119:                            # %sw.bb.587
	movq	-16(%rbp), %rax
	movq	832(%rax), %rdi
	callq	is_pair
	cmpl	$0, %eax
	je	.LBB121_122
# BB#120:                               # %if.then.591
	movl	$173, %esi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	936(%rax), %rcx
	callq	s_save
	movabsq	$.L.str.252, %rsi
	movq	-16(%rbp), %rdi
	callq	putstr
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 832(%rcx)
# BB#121:                               # %do.body.602
	movq	-16(%rbp), %rax
	movl	$172, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_122:                            # %if.else.606
	movq	-16(%rbp), %rax
	movq	832(%rax), %rdi
	callq	is_vector
	cmpl	$0, %eax
	je	.LBB121_125
# BB#123:                               # %if.then.610
	movl	$173, %esi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	936(%rax), %rcx
	callq	s_save
	movabsq	$.L.str.271, %rsi
	movq	-16(%rbp), %rdi
	callq	putstr
# BB#124:                               # %do.body.613
	movq	-16(%rbp), %rax
	movl	$172, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_125:                            # %if.else.617
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	je	.LBB121_127
# BB#126:                               # %if.then.622
	movabsq	$.L.str.271, %rsi
	movq	-16(%rbp), %rdi
	callq	putstr
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	832(%rsi), %rsi
	movq	-16(%rbp), %rax
	movl	5572(%rax), %edx
	callq	printatom
.LBB121_127:                            # %if.end.625
	movabsq	$.L.str.272, %rsi
	movq	-16(%rbp), %rdi
	callq	putstr
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	968(%rsi), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_128:                            # %sw.bb.630
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, -92(%rbp)
	movl	-80(%rbp), %ecx
	cmpl	-92(%rbp), %ecx
	jne	.LBB121_130
# BB#129:                               # %if.then.649
	movabsq	$.L.str.272, %rsi
	movq	-16(%rbp), %rdi
	callq	putstr
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	968(%rsi), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_130:                            # %if.else.652
	movq	-88(%rbp), %rdi
	movl	-80(%rbp), %esi
	callq	vector_elem
	movl	$174, %esi
	movq	%rax, -104(%rbp)
	movl	-80(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	movq	-16(%rbp), %rdi
	movq	832(%rdi), %rdi
	movq	16(%rdi), %rdi
	movq	%rax, 16(%rdi)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	936(%rax), %rcx
	callq	s_save
	movq	-104(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 832(%rcx)
	cmpl	$0, -80(%rbp)
	jle	.LBB121_132
# BB#131:                               # %if.then.668
	movabsq	$.L.str.252, %rsi
	movq	-16(%rbp), %rdi
	callq	putstr
.LBB121_132:                            # %if.end.669
	jmp	.LBB121_133
.LBB121_133:                            # %do.body.670
	movq	-16(%rbp), %rax
	movl	$172, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB121_135
.LBB121_134:                            # %sw.default.675
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %esi
	movabsq	$.L.str.189, %rdx
	movq	-16(%rbp), %rcx
	addq	$4530, %rcx             # imm = 0x11B2
	movq	-16(%rbp), %rdi
	movl	5584(%rdi), %eax
	movq	%rcx, %rdi
	movl	%eax, %ecx
	movb	$0, %al
	callq	snprintf
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rsi
	addq	$4530, %rsi             # imm = 0x11B2
	movl	%eax, -404(%rbp)        # 4-byte Spill
	callq	_Error_1
	movq	%rax, -8(%rbp)
.LBB121_135:                            # %return
	movq	-8(%rbp), %rax
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbp
	retq
.Lfunc_end121:
	.size	opexe_5, .Lfunc_end121-opexe_5
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI121_0:
	.quad	.LBB121_3
	.quad	.LBB121_13
	.quad	.LBB121_13
	.quad	.LBB121_22
	.quad	.LBB121_28
	.quad	.LBB121_29
	.quad	.LBB121_30
	.quad	.LBB121_68
	.quad	.LBB121_80
	.quad	.LBB121_83
	.quad	.LBB121_84
	.quad	.LBB121_85
	.quad	.LBB121_86
	.quad	.LBB121_87
	.quad	.LBB121_88
	.quad	.LBB121_90
	.quad	.LBB121_119
	.quad	.LBB121_128
.LJTI121_1:
	.quad	.LBB121_31
	.quad	.LBB121_33
	.quad	.LBB121_67
	.quad	.LBB121_67
	.quad	.LBB121_51
	.quad	.LBB121_39
	.quad	.LBB121_67
	.quad	.LBB121_52
	.quad	.LBB121_41
	.quad	.LBB121_47
	.quad	.LBB121_49
	.quad	.LBB121_60
	.quad	.LBB121_64
	.quad	.LBB121_32
	.quad	.LBB121_55

	.text
	.align	16, 0x90
	.type	opexe_6,@function
opexe_6:                                # @opexe_6
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp366:
	.cfi_def_cfa_offset 16
.Ltmp367:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp368:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	addl	$-175, %esi
	movl	%esi, %edi
	subl	$4, %esi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movl	%esi, -60(%rbp)         # 4-byte Spill
	ja	.LBB122_30
# BB#32:                                # %entry
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	.LJTI122_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB122_1:                              # %sw.bb
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rsi
	callq	list_length
	movslq	%eax, %rsi
	movq	%rsi, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jge	.LBB122_3
# BB#2:                                 # %if.then
	movabsq	$.L.str.273, %rsi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rdx
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB122_31
.LBB122_3:                              # %if.end
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rsi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	mk_integer
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB122_31
.LBB122_4:                              # %sw.bb.9
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB122_5:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rdi
	callq	is_pair
	cmpl	$0, %eax
	je	.LBB122_12
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB122_5 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	callq	is_pair
	cmpl	$0, %eax
	jne	.LBB122_8
# BB#7:                                 # %if.then.26
	movabsq	$.L.str.274, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	_Error_1
	movq	%rax, -8(%rbp)
	jmp	.LBB122_31
.LBB122_8:                              # %if.end.28
                                        #   in Loop: Header=BB122_5 Depth=1
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpq	8(%rcx), %rax
	jne	.LBB122_10
# BB#9:                                 # %if.then.37
	jmp	.LBB122_12
.LBB122_10:                             # %if.end.38
                                        #   in Loop: Header=BB122_5 Depth=1
	jmp	.LBB122_11
.LBB122_11:                             # %for.inc
                                        #   in Loop: Header=BB122_5 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB122_5
.LBB122_12:                             # %for.end
	movq	-40(%rbp), %rdi
	callq	is_pair
	cmpl	$0, %eax
	je	.LBB122_14
# BB#13:                                # %if.then.44
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB122_31
.LBB122_14:                             # %if.else
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB122_31
.LBB122_15:                             # %sw.bb.50
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 832(%rcx)
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	jne	.LBB122_17
# BB#16:                                # %if.then.59
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB122_31
.LBB122_17:                             # %if.else.62
	movq	-16(%rbp), %rax
	movq	832(%rax), %rdi
	callq	is_closure
	cmpl	$0, %eax
	je	.LBB122_19
# BB#18:                                # %if.then.66
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	1064(%rcx), %rsi
	movq	-16(%rbp), %rcx
	movq	5576(%rcx), %rcx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	closure_code
	xorl	%ecx, %ecx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	_cons
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB122_31
.LBB122_19:                             # %if.else.70
	movq	-16(%rbp), %rax
	movq	832(%rax), %rdi
	callq	is_macro
	cmpl	$0, %eax
	je	.LBB122_21
# BB#20:                                # %if.then.74
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	1064(%rcx), %rsi
	movq	-16(%rbp), %rcx
	movq	5576(%rcx), %rcx
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	closure_code
	xorl	%ecx, %ecx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	_cons
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB122_31
.LBB122_21:                             # %if.else.80
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB122_31
.LBB122_22:                             # %sw.bb.83
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	is_closure
	cmpl	$0, %eax
	je	.LBB122_24
# BB#23:                                # %cond.true
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB122_25
.LBB122_24:                             # %cond.false
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB122_25:                             # %cond.end
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB122_31
.LBB122_26:                             # %sw.bb.92
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	is_macro
	cmpl	$0, %eax
	je	.LBB122_28
# BB#27:                                # %cond.true.99
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB122_29
.LBB122_28:                             # %cond.false.101
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB122_29:                             # %cond.end.103
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_s_return
	movq	%rax, -8(%rbp)
	jmp	.LBB122_31
.LBB122_30:                             # %sw.default
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %esi
	movabsq	$.L.str.189, %rdx
	movq	-16(%rbp), %rcx
	addq	$4530, %rcx             # imm = 0x11B2
	movq	-16(%rbp), %rdi
	movl	5584(%rdi), %eax
	movq	%rcx, %rdi
	movl	%eax, %ecx
	movb	$0, %al
	callq	snprintf
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rsi
	addq	$4530, %rsi             # imm = 0x11B2
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	_Error_1
	movq	%rax, -8(%rbp)
.LBB122_31:                             # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end122:
	.size	opexe_6, .Lfunc_end122-opexe_6
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI122_0:
	.quad	.LBB122_1
	.quad	.LBB122_4
	.quad	.LBB122_15
	.quad	.LBB122_22
	.quad	.LBB122_26

	.text
	.align	16, 0x90
	.type	file_interactive,@function
file_interactive:                       # @file_interactive
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp369:
	.cfi_def_cfa_offset 16
.Ltmp370:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp371:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movb	%al, %cl
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 3496(%rdi)
	movb	%cl, -9(%rbp)           # 1-byte Spill
	jne	.LBB123_3
# BB#1:                                 # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	1200(%rdx), %rdx
	cmpq	stdin, %rdx
	movb	%cl, -9(%rbp)           # 1-byte Spill
	jne	.LBB123_3
# BB#2:                                 # %land.rhs
	movq	-8(%rbp), %rax
	movq	1160(%rax), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	setne	%dl
	movb	%dl, -9(%rbp)           # 1-byte Spill
.LBB123_3:                              # %land.end
	movb	-9(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end123:
	.size	file_interactive, .Lfunc_end123-file_interactive
	.cfi_endproc

	.align	16, 0x90
	.type	file_push,@function
file_push:                              # @file_push
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp372:
	.cfi_def_cfa_offset 16
.Ltmp373:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp374:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$63, 3496(%rsi)
	jne	.LBB124_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB124_7
.LBB124_2:                              # %if.end
	movabsq	$.L.str.190, %rsi
	movq	-24(%rbp), %rdi
	callq	fopen
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB124_6
# BB#3:                                 # %if.then.2
	movq	-16(%rbp), %rax
	movl	3496(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 3496(%rax)
	movq	-16(%rbp), %rax
	movslq	3496(%rax), %rax
	movq	-16(%rbp), %rdx
	addq	$1192, %rdx             # imm = 0x4A8
	shlq	$5, %rax
	addq	%rax, %rdx
	movb	$17, (%rdx)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movslq	3496(%rdx), %rdx
	movq	-16(%rbp), %rsi
	addq	$1192, %rsi             # imm = 0x4A8
	shlq	$5, %rdx
	addq	%rdx, %rsi
	movq	%rax, 8(%rsi)
	movq	-16(%rbp), %rax
	movslq	3496(%rax), %rax
	movq	-16(%rbp), %rdx
	addq	$1192, %rdx             # imm = 0x4A8
	shlq	$5, %rax
	addq	%rax, %rdx
	movl	$1, 16(%rdx)
	movq	-16(%rbp), %rax
	movslq	3496(%rax), %rax
	movq	-16(%rbp), %rdx
	movl	$0, 3240(%rdx,%rax,4)
	movq	-16(%rbp), %rax
	addq	$1192, %rax             # imm = 0x4A8
	movq	-16(%rbp), %rdx
	movslq	3496(%rdx), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rax
	movq	-16(%rbp), %rdx
	movq	1184(%rdx), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movslq	3496(%rax), %rax
	movq	-16(%rbp), %rdx
	addq	$1192, %rdx             # imm = 0x4A8
	shlq	$5, %rax
	addq	%rax, %rdx
	movl	$0, 20(%rdx)
	cmpq	$0, -24(%rbp)
	je	.LBB124_5
# BB#4:                                 # %if.then.26
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	callq	strlen
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movl	%ecx, %esi
	movl	-44(%rbp), %ecx         # 4-byte Reload
	callq	store_string
	movq	-16(%rbp), %rdx
	movslq	3496(%rdx), %rdx
	movq	-16(%rbp), %rdi
	addq	$1192, %rdi             # imm = 0x4A8
	shlq	$5, %rdx
	addq	%rdx, %rdi
	movq	%rax, 24(%rdi)
.LBB124_5:                              # %if.end.35
	jmp	.LBB124_6
.LBB124_6:                              # %if.end.36
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
.LBB124_7:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end124:
	.size	file_push, .Lfunc_end124-file_push
	.cfi_endproc

	.align	16, 0x90
	.type	_Error_1,@function
_Error_1:                               # @_Error_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp375:
	.cfi_def_cfa_offset 16
.Ltmp376:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp377:
	.cfi_def_cfa_register %rbp
	subq	$1168, %rsp             # imm = 0x490
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-16(%rbp), %rdx
	movq	1120(%rdx), %rdx
	movq	%rdx, -56(%rbp)
	movq	-16(%rbp), %rdx
	movslq	3496(%rdx), %rdx
	movq	-16(%rbp), %rsi
	addq	$1192, %rsi             # imm = 0x4A8
	shlq	$5, %rdx
	addq	%rdx, %rsi
	movq	8(%rsi), %rdx
	cmpq	stdin, %rdx
	je	.LBB125_4
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movslq	3496(%rax), %rax
	movq	-16(%rbp), %rcx
	addq	$1192, %rcx             # imm = 0x4A8
	shlq	$5, %rax
	addq	%rax, %rcx
	movl	20(%rcx), %edx
	movl	%edx, -1092(%rbp)
	movq	-16(%rbp), %rax
	movslq	3496(%rax), %rax
	movq	-16(%rbp), %rcx
	addq	$1192, %rcx             # imm = 0x4A8
	shlq	$5, %rax
	addq	%rax, %rcx
	movq	24(%rcx), %rax
	movq	%rax, -1104(%rbp)
	cmpq	$0, -1104(%rbp)
	jne	.LBB125_3
# BB#2:                                 # %if.then.13
	movabsq	$.L.str.191, %rax
	movq	%rax, -1104(%rbp)
.LBB125_3:                              # %if.end
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %esi
	movabsq	$.L.str.192, %rdx
	leaq	-1088(%rbp), %rdi
	movl	-1092(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1092(%rbp)
	movq	-1104(%rbp), %rcx
	movl	-1092(%rbp), %r8d
	movq	-24(%rbp), %r9
	movb	$0, %al
	callq	snprintf
	leaq	-1088(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movl	%eax, -1108(%rbp)       # 4-byte Spill
.LBB125_4:                              # %if.end.15
	movl	$1, %ecx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	840(%rax), %rsi
	movq	-56(%rbp), %rdx
	callq	find_slot_in_env
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdx
	cmpq	936(%rdx), %rax
	je	.LBB125_9
# BB#5:                                 # %if.then.18
	cmpq	$0, -32(%rbp)
	je	.LBB125_7
# BB#6:                                 # %if.then.20
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	1072(%rdx), %rsi
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %r8
	movq	-16(%rbp), %r9
	movq	936(%r9), %r9
	movq	%rdi, -1120(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rsi, -1128(%rbp)       # 8-byte Spill
	movq	%r8, %rsi
	movq	%r9, %rdx
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	callq	_cons
	xorl	%ecx, %ecx
	movq	-1136(%rbp), %rdi       # 8-byte Reload
	movq	-1128(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	_cons
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdx
	movq	936(%rdx), %rdx
	movq	-1120(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	_cons
	movq	-16(%rbp), %rdx
	movq	%rax, 848(%rdx)
	jmp	.LBB125_8
.LBB125_7:                              # %if.else
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 848(%rcx)
.LBB125_8:                              # %if.end.28
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	%rdi, -1144(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	mk_string
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rsi
	movq	848(%rsi), %rdx
	movq	-1144(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	_cons
	movq	-16(%rbp), %rdx
	movq	%rax, 848(%rdx)
	movq	-16(%rbp), %rax
	movq	848(%rax), %rax
	movq	8(%rax), %rdi
	callq	setimmutable
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -1152(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	slot_value_in_env
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdx
	movq	848(%rdx), %rdx
	movq	-1152(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	_cons
	movq	-16(%rbp), %rdx
	movq	%rax, 848(%rdx)
	movq	-16(%rbp), %rax
	movl	$6, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB125_13
.LBB125_9:                              # %if.end.38
	cmpq	$0, -32(%rbp)
	je	.LBB125_11
# BB#10:                                # %if.then.40
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	936(%rax), %rdx
	callq	_cons
	movq	-16(%rbp), %rdx
	movq	%rax, 832(%rdx)
	jmp	.LBB125_12
.LBB125_11:                             # %if.else.43
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 832(%rcx)
.LBB125_12:                             # %if.end.46
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	%rdi, -1160(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	mk_string
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rsi
	movq	832(%rsi), %rdx
	movq	-1160(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	_cons
	movq	-16(%rbp), %rdx
	movq	%rax, 832(%rdx)
	movq	-16(%rbp), %rax
	movq	832(%rax), %rax
	movq	8(%rax), %rdi
	callq	setimmutable
	movq	-16(%rbp), %rax
	movl	$134, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB125_13:                             # %return
	movq	-8(%rbp), %rax
	addq	$1168, %rsp             # imm = 0x490
	popq	%rbp
	retq
.Lfunc_end125:
	.size	_Error_1, .Lfunc_end125-_Error_1
	.cfi_endproc

	.align	16, 0x90
	.type	file_pop,@function
file_pop:                               # @file_pop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp378:
	.cfi_def_cfa_offset 16
.Ltmp379:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp380:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 3496(%rdi)
	je	.LBB126_2
# BB#1:                                 # %if.then
	movl	$16, %edx
	movq	-8(%rbp), %rax
	movslq	3496(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	3240(%rcx,%rax,4), %esi
	movq	-8(%rbp), %rax
	movl	%esi, 3500(%rax)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	1184(%rax), %rsi
	callq	port_close
	movq	-8(%rbp), %rax
	movl	3496(%rax), %edx
	addl	$-1, %edx
	movl	%edx, 3496(%rax)
	movq	-8(%rbp), %rax
	addq	$1192, %rax             # imm = 0x4A8
	movq	-8(%rbp), %rcx
	movslq	3496(%rcx), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	-8(%rbp), %rcx
	movq	1184(%rcx), %rcx
	movq	%rax, 8(%rcx)
.LBB126_2:                              # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end126:
	.size	file_pop, .Lfunc_end126-file_pop
	.cfi_endproc

	.align	16, 0x90
	.type	_s_return,@function
_s_return:                              # @_s_return
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp381:
	.cfi_def_cfa_offset 16
.Ltmp382:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp383:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, 5576(%rdi)
	movq	-16(%rbp), %rsi
	movq	856(%rsi), %rsi
	movq	-16(%rbp), %rdi
	cmpq	936(%rdi), %rsi
	jne	.LBB127_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB127_3
.LBB127_2:                              # %if.end
	movq	-16(%rbp), %rax
	movq	856(%rax), %rax
	movq	8(%rax), %rdi
	callq	ivalue
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 5584(%rax)
	movq	-16(%rbp), %rax
	movq	856(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, 832(%rdi)
	movq	-16(%rbp), %rax
	movq	856(%rax), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, 840(%rdi)
	movq	-16(%rbp), %rax
	movq	856(%rax), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, 848(%rdi)
	movq	-16(%rbp), %rax
	movq	856(%rax), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, 856(%rdi)
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB127_3:                              # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end127:
	.size	_s_return, .Lfunc_end127-_s_return
	.cfi_endproc

	.align	16, 0x90
	.type	s_save,@function
s_save:                                 # @s_save
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp384:
	.cfi_def_cfa_offset 16
.Ltmp385:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp386:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	840(%rcx), %rsi
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %r8
	movq	856(%r8), %r8
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movq	%r8, %rdx
	movl	%eax, %ecx
	callq	_cons
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	_cons
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdx
	movq	%rax, 856(%rdx)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	856(%rax), %rdx
	callq	_cons
	movq	-8(%rbp), %rdx
	movq	%rax, 856(%rdx)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	mk_integer
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdx
	movq	856(%rdx), %rdx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	_cons
	movq	-8(%rbp), %rdx
	movq	%rax, 856(%rdx)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end128:
	.size	s_save, .Lfunc_end128-s_save
	.cfi_endproc

	.align	16, 0x90
	.type	token,@function
token:                                  # @token
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp387:
	.cfi_def_cfa_offset 16
.Ltmp388:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp389:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	skipspace
	movl	%eax, -20(%rbp)
	cmpl	$-1, -20(%rbp)
	jne	.LBB129_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB129_45
.LBB129_2:                              # %if.end
	movq	-16(%rbp), %rdi
	callq	inchar
	movl	%eax, -20(%rbp)
	movl	%eax, %ecx
	subl	$-1, %eax
	movl	%ecx, -24(%rbp)         # 4-byte Spill
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB129_3
	jmp	.LBB129_46
.LBB129_46:                             # %if.end
	movl	-24(%rbp), %eax         # 4-byte Reload
	subl	$34, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	je	.LBB129_20
	jmp	.LBB129_47
.LBB129_47:                             # %if.end
	movl	-24(%rbp), %eax         # 4-byte Reload
	subl	$35, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB129_28
	jmp	.LBB129_48
.LBB129_48:                             # %if.end
	movl	-24(%rbp), %eax         # 4-byte Reload
	subl	$39, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB129_9
	jmp	.LBB129_49
.LBB129_49:                             # %if.end
	movl	-24(%rbp), %eax         # 4-byte Reload
	subl	$40, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB129_4
	jmp	.LBB129_50
.LBB129_50:                             # %if.end
	movl	-24(%rbp), %eax         # 4-byte Reload
	subl	$41, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB129_5
	jmp	.LBB129_51
.LBB129_51:                             # %if.end
	movl	-24(%rbp), %eax         # 4-byte Reload
	subl	$44, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB129_25
	jmp	.LBB129_52
.LBB129_52:                             # %if.end
	movl	-24(%rbp), %eax         # 4-byte Reload
	subl	$46, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB129_6
	jmp	.LBB129_53
.LBB129_53:                             # %if.end
	movl	-24(%rbp), %eax         # 4-byte Reload
	subl	$59, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB129_10
	jmp	.LBB129_54
.LBB129_54:                             # %if.end
	movl	-24(%rbp), %eax         # 4-byte Reload
	subl	$95, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB129_21
	jmp	.LBB129_55
.LBB129_55:                             # %if.end
	movl	-24(%rbp), %eax         # 4-byte Reload
	subl	$96, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB129_24
	jmp	.LBB129_44
.LBB129_3:                              # %sw.bb
	movl	$-1, -4(%rbp)
	jmp	.LBB129_45
.LBB129_4:                              # %sw.bb.2
	movl	$0, -4(%rbp)
	jmp	.LBB129_45
.LBB129_5:                              # %sw.bb.3
	movl	$1, -4(%rbp)
	jmp	.LBB129_45
.LBB129_6:                              # %sw.bb.4
	movq	-16(%rbp), %rdi
	callq	inchar
	movabsq	$.L.str.193, %rdi
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %esi
	callq	is_one_of
	cmpl	$0, %eax
	je	.LBB129_8
# BB#7:                                 # %if.then.7
	movl	$2, -4(%rbp)
	jmp	.LBB129_45
.LBB129_8:                              # %if.else
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	backchar
	movl	$46, %esi
	movq	-16(%rbp), %rdi
	callq	backchar
	movl	$3, -4(%rbp)
	jmp	.LBB129_45
.LBB129_9:                              # %sw.bb.8
	movl	$4, -4(%rbp)
	jmp	.LBB129_45
.LBB129_10:                             # %sw.bb.9
	jmp	.LBB129_11
.LBB129_11:                             # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	inchar
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -20(%rbp)
	cmpl	$10, %eax
	movb	%dl, -69(%rbp)          # 1-byte Spill
	je	.LBB129_13
# BB#12:                                # %land.rhs
                                        #   in Loop: Header=BB129_11 Depth=1
	cmpl	$-1, -20(%rbp)
	setne	%al
	movb	%al, -69(%rbp)          # 1-byte Spill
.LBB129_13:                             # %land.end
                                        #   in Loop: Header=BB129_11 Depth=1
	movb	-69(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB129_14
	jmp	.LBB129_15
.LBB129_14:                             # %while.body
                                        #   in Loop: Header=BB129_11 Depth=1
	jmp	.LBB129_11
.LBB129_15:                             # %while.end
	cmpl	$10, -20(%rbp)
	jne	.LBB129_17
# BB#16:                                # %if.then.14
	movq	-16(%rbp), %rax
	movslq	3496(%rax), %rax
	movq	-16(%rbp), %rcx
	addq	$1192, %rcx             # imm = 0x4A8
	shlq	$5, %rax
	addq	%rax, %rcx
	movl	20(%rcx), %edx
	addl	$1, %edx
	movl	%edx, 20(%rcx)
.LBB129_17:                             # %if.end.15
	cmpl	$-1, -20(%rbp)
	jne	.LBB129_19
# BB#18:                                # %if.then.17
	movl	$-1, -4(%rbp)
	jmp	.LBB129_45
.LBB129_19:                             # %if.else.18
	movq	-16(%rbp), %rdi
	callq	token
	movl	%eax, -4(%rbp)
	jmp	.LBB129_45
.LBB129_20:                             # %sw.bb.20
	movl	$6, -4(%rbp)
	jmp	.LBB129_45
.LBB129_21:                             # %sw.bb.21
	movq	-16(%rbp), %rdi
	callq	inchar
	movl	%eax, -20(%rbp)
	cmpl	$34, %eax
	jne	.LBB129_23
# BB#22:                                # %if.then.24
	movl	$13, -4(%rbp)
	jmp	.LBB129_45
.LBB129_23:                             # %if.end.25
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	backchar
	movl	$3, -4(%rbp)
	jmp	.LBB129_45
.LBB129_24:                             # %sw.bb.26
	movl	$7, -4(%rbp)
	jmp	.LBB129_45
.LBB129_25:                             # %sw.bb.27
	movq	-16(%rbp), %rdi
	callq	inchar
	movl	%eax, -20(%rbp)
	cmpl	$64, %eax
	jne	.LBB129_27
# BB#26:                                # %if.then.30
	movl	$9, -4(%rbp)
	jmp	.LBB129_45
.LBB129_27:                             # %if.else.31
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	backchar
	movl	$8, -4(%rbp)
	jmp	.LBB129_45
.LBB129_28:                             # %sw.bb.32
	movq	-16(%rbp), %rdi
	callq	inchar
	movl	%eax, -20(%rbp)
	cmpl	$40, -20(%rbp)
	jne	.LBB129_30
# BB#29:                                # %if.then.35
	movl	$12, -4(%rbp)
	jmp	.LBB129_45
.LBB129_30:                             # %if.else.36
	cmpl	$33, -20(%rbp)
	jne	.LBB129_41
# BB#31:                                # %if.then.38
	jmp	.LBB129_32
.LBB129_32:                             # %while.cond.39
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	inchar
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -20(%rbp)
	cmpl	$10, %eax
	movb	%dl, -70(%rbp)          # 1-byte Spill
	je	.LBB129_34
# BB#33:                                # %land.rhs.42
                                        #   in Loop: Header=BB129_32 Depth=1
	cmpl	$-1, -20(%rbp)
	setne	%al
	movb	%al, -70(%rbp)          # 1-byte Spill
.LBB129_34:                             # %land.end.44
                                        #   in Loop: Header=BB129_32 Depth=1
	movb	-70(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB129_35
	jmp	.LBB129_36
.LBB129_35:                             # %while.body.45
                                        #   in Loop: Header=BB129_32 Depth=1
	jmp	.LBB129_32
.LBB129_36:                             # %while.end.46
	cmpl	$10, -20(%rbp)
	jne	.LBB129_38
# BB#37:                                # %if.then.48
	movq	-16(%rbp), %rax
	movslq	3496(%rax), %rax
	movq	-16(%rbp), %rcx
	addq	$1192, %rcx             # imm = 0x4A8
	shlq	$5, %rax
	addq	%rax, %rcx
	movl	20(%rcx), %edx
	addl	$1, %edx
	movl	%edx, 20(%rcx)
.LBB129_38:                             # %if.end.57
	cmpl	$-1, -20(%rbp)
	jne	.LBB129_40
# BB#39:                                # %if.then.59
	movl	$-1, -4(%rbp)
	jmp	.LBB129_45
.LBB129_40:                             # %if.else.60
	movq	-16(%rbp), %rdi
	callq	token
	movl	%eax, -4(%rbp)
	jmp	.LBB129_45
.LBB129_41:                             # %if.else.62
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	backchar
	movabsq	$.L.str.194, %rdi
	movl	-20(%rbp), %esi
	callq	is_one_of
	cmpl	$0, %eax
	je	.LBB129_43
# BB#42:                                # %if.then.65
	movl	$11, -4(%rbp)
	jmp	.LBB129_45
.LBB129_43:                             # %if.else.66
	movl	$10, -4(%rbp)
	jmp	.LBB129_45
.LBB129_44:                             # %sw.default
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	backchar
	movl	$3, -4(%rbp)
.LBB129_45:                             # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end129:
	.size	token, .Lfunc_end129-token
	.cfi_endproc

	.align	16, 0x90
	.type	slot_value_in_env,@function
slot_value_in_env:                      # @slot_value_in_env
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp390:
	.cfi_def_cfa_offset 16
.Ltmp391:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp392:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end130:
	.size	slot_value_in_env, .Lfunc_end130-slot_value_in_env
	.cfi_endproc

	.align	16, 0x90
	.type	syntaxnum,@function
syntaxnum:                              # @syntaxnum
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp393:
	.cfi_def_cfa_offset 16
.Ltmp394:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp395:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	8(%rdi), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	movl	16(%rdi), %eax
	addl	$-2, %eax
	movl	%eax, %edi
	subl	$4, %eax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movl	%eax, -36(%rbp)         # 4-byte Spill
	ja	.LBB131_21
# BB#23:                                # %entry
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	.LJTI131_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB131_1:                              # %sw.bb
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$105, %ecx
	jne	.LBB131_3
# BB#2:                                 # %if.then
	movl	$22, -4(%rbp)
	jmp	.LBB131_22
.LBB131_3:                              # %if.else
	movl	$40, -4(%rbp)
	jmp	.LBB131_22
.LBB131_4:                              # %sw.bb.8
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$97, %ecx
	jne	.LBB131_6
# BB#5:                                 # %if.then.13
	movl	$38, -4(%rbp)
	jmp	.LBB131_22
.LBB131_6:                              # %if.else.14
	movl	$26, -4(%rbp)
	jmp	.LBB131_22
.LBB131_7:                              # %sw.bb.15
	movq	-24(%rbp), %rax
	movsbl	3(%rax), %ecx
	movl	%ecx, %edx
	subl	$42, %edx
	movl	%ecx, -40(%rbp)         # 4-byte Spill
	movl	%edx, -44(%rbp)         # 4-byte Spill
	je	.LBB131_10
	jmp	.LBB131_27
.LBB131_27:                             # %sw.bb.15
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$100, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB131_9
	jmp	.LBB131_28
.LBB131_28:                             # %sw.bb.15
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$101, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jne	.LBB131_11
	jmp	.LBB131_8
.LBB131_8:                              # %sw.bb.18
	movl	$46, -4(%rbp)
	jmp	.LBB131_22
.LBB131_9:                              # %sw.bb.19
	movl	$35, -4(%rbp)
	jmp	.LBB131_22
.LBB131_10:                             # %sw.bb.20
	movl	$29, -4(%rbp)
	jmp	.LBB131_22
.LBB131_11:                             # %sw.default
	movl	$24, -4(%rbp)
	jmp	.LBB131_22
.LBB131_12:                             # %sw.bb.21
	movq	-24(%rbp), %rax
	movsbl	2(%rax), %ecx
	movl	%ecx, %edx
	subl	$99, %edx
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	movl	%edx, -60(%rbp)         # 4-byte Spill
	je	.LBB131_15
	jmp	.LBB131_25
.LBB131_25:                             # %sw.bb.21
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$103, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB131_13
	jmp	.LBB131_26
.LBB131_26:                             # %sw.bb.21
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$108, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB131_14
	jmp	.LBB131_16
.LBB131_13:                             # %sw.bb.24
	movl	$21, -4(%rbp)
	jmp	.LBB131_22
.LBB131_14:                             # %sw.bb.25
	movl	$37, -4(%rbp)
	jmp	.LBB131_22
.LBB131_15:                             # %sw.bb.26
	movl	$44, -4(%rbp)
	jmp	.LBB131_22
.LBB131_16:                             # %sw.default.27
	movl	$17, -4(%rbp)
	jmp	.LBB131_22
.LBB131_17:                             # %sw.bb.28
	movq	-24(%rbp), %rax
	movsbl	2(%rax), %ecx
	movl	%ecx, %edx
	subl	$102, %edx
	movl	%ecx, -72(%rbp)         # 4-byte Spill
	movl	%edx, -76(%rbp)         # 4-byte Spill
	je	.LBB131_19
	jmp	.LBB131_24
.LBB131_24:                             # %sw.bb.28
	movl	-72(%rbp), %eax         # 4-byte Reload
	subl	$109, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jne	.LBB131_20
	jmp	.LBB131_18
.LBB131_18:                             # %sw.bb.31
	movl	$14, -4(%rbp)
	jmp	.LBB131_22
.LBB131_19:                             # %sw.bb.32
	movl	$18, -4(%rbp)
	jmp	.LBB131_22
.LBB131_20:                             # %sw.default.33
	movl	$32, -4(%rbp)
	jmp	.LBB131_22
.LBB131_21:                             # %sw.default.34
	movl	$42, -4(%rbp)
.LBB131_22:                             # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end131:
	.size	syntaxnum, .Lfunc_end131-syntaxnum
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI131_0:
	.quad	.LBB131_1
	.quad	.LBB131_4
	.quad	.LBB131_7
	.quad	.LBB131_12
	.quad	.LBB131_17

	.text
	.align	16, 0x90
	.type	reverse_in_place,@function
reverse_in_place:                       # @reverse_in_place
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp396:
	.cfi_def_cfa_offset 16
.Ltmp397:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp398:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -40(%rbp)
.LBB132_1:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	936(%rcx), %rax
	je	.LBB132_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB132_1 Depth=1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB132_1
.LBB132_3:                              # %while.end
	movq	-40(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end132:
	.size	reverse_in_place, .Lfunc_end132-reverse_in_place
	.cfi_endproc

	.align	16, 0x90
	.type	port_close,@function
port_close:                             # @port_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp399:
	.cfi_def_cfa_offset 16
.Ltmp400:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp401:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movl	-20(%rbp), %edx
	xorl	$-1, %edx
	movq	-32(%rbp), %rsi
	movzbl	(%rsi), %eax
	andl	%edx, %eax
	movb	%al, %cl
	movb	%cl, (%rsi)
	movq	-32(%rbp), %rsi
	movzbl	(%rsi), %eax
	andl	$48, %eax
	cmpl	$0, %eax
	jne	.LBB133_6
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB133_5
# BB#2:                                 # %if.then.9
	movq	-32(%rbp), %rax
	movl	$0, 20(%rax)
	movq	-32(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB133_4
# BB#3:                                 # %if.then.13
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	24(%rcx), %rdi
	callq	*%rax
.LBB133_4:                              # %if.end
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	fclose
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB133_5:                              # %if.end.19
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
.LBB133_6:                              # %if.end.21
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end133:
	.size	port_close, .Lfunc_end133-port_close
	.cfi_endproc

	.align	16, 0x90
	.type	skipspace,@function
skipspace:                              # @skipspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp402:
	.cfi_def_cfa_offset 16
.Ltmp403:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp404:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	$0, -24(%rbp)
.LBB134_1:                              # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	inchar
	movl	%eax, -20(%rbp)
	cmpl	$10, -20(%rbp)
	jne	.LBB134_3
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB134_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
.LBB134_3:                              # %if.end
                                        #   in Loop: Header=BB134_1 Depth=1
	jmp	.LBB134_4
.LBB134_4:                              # %do.cond
                                        #   in Loop: Header=BB134_1 Depth=1
	movl	-20(%rbp), %edi
	callq	g_unichar_isspace
	cmpl	$0, %eax
	jne	.LBB134_1
# BB#5:                                 # %do.end
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	movslq	3496(%rcx), %rcx
	movq	-16(%rbp), %rdx
	addq	$1192, %rdx             # imm = 0x4A8
	shlq	$5, %rcx
	addq	%rcx, %rdx
	addl	20(%rdx), %eax
	movl	%eax, 20(%rdx)
	cmpl	$-1, -20(%rbp)
	je	.LBB134_7
# BB#6:                                 # %if.then.4
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	backchar
	movl	$1, -4(%rbp)
	jmp	.LBB134_8
.LBB134_7:                              # %if.else
	movl	$-1, -4(%rbp)
.LBB134_8:                              # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end134:
	.size	skipspace, .Lfunc_end134-skipspace
	.cfi_endproc

	.align	16, 0x90
	.type	inchar,@function
inchar:                                 # @inchar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp405:
	.cfi_def_cfa_offset 16
.Ltmp406:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp407:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	1160(%rdi), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movzbl	(%rdi), %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB135_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB135_12
.LBB135_2:                              # %if.end
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB135_7
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	cmpl	$0, 5636(%rax)
	je	.LBB135_5
# BB#4:                                 # %if.then.7
	movq	-16(%rbp), %rax
	movl	5636(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 5636(%rax)
	movslq	%ecx, %rax
	movq	-16(%rbp), %rdx
	movl	5628(%rdx,%rax,4), %ecx
	movl	%ecx, -20(%rbp)
	jmp	.LBB135_6
.LBB135_5:                              # %if.else
	movq	-32(%rbp), %rdi
	callq	basic_inchar
	movl	%eax, -20(%rbp)
.LBB135_6:                              # %if.end.9
	jmp	.LBB135_8
.LBB135_7:                              # %if.else.10
	movq	-32(%rbp), %rdi
	callq	basic_inchar
	movl	%eax, -20(%rbp)
.LBB135_8:                              # %if.end.12
	cmpl	$-1, -20(%rbp)
	jne	.LBB135_11
# BB#9:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	1160(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	1184(%rcx), %rax
	jne	.LBB135_11
# BB#10:                                # %if.then.17
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	orl	$64, %ecx
	movb	%cl, %dl
	movb	%dl, (%rax)
	movl	$-1, -4(%rbp)
	jmp	.LBB135_12
.LBB135_11:                             # %if.end.21
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB135_12:                             # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end135:
	.size	inchar, .Lfunc_end135-inchar
	.cfi_endproc

	.align	16, 0x90
	.type	is_one_of,@function
is_one_of:                              # @is_one_of
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp408:
	.cfi_def_cfa_offset 16
.Ltmp409:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp410:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	cmpl	$-1, -20(%rbp)
	jne	.LBB136_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB136_5
.LBB136_2:                              # %if.end
	movq	$-1, %rsi
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %edx
	callq	g_utf8_strchr
	cmpq	$0, %rax
	je	.LBB136_4
# BB#3:                                 # %if.then.2
	movl	$1, -4(%rbp)
	jmp	.LBB136_5
.LBB136_4:                              # %if.end.3
	movl	$0, -4(%rbp)
.LBB136_5:                              # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end136:
	.size	is_one_of, .Lfunc_end136-is_one_of
	.cfi_endproc

	.align	16, 0x90
	.type	backchar,@function
backchar:                               # @backchar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp411:
	.cfi_def_cfa_offset 16
.Ltmp412:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp413:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$-1, -12(%rbp)
	jne	.LBB137_2
# BB#1:                                 # %if.then
	jmp	.LBB137_12
.LBB137_2:                              # %if.end
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	-12(%rbp), %edi
	callq	g_unichar_to_utf8
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rsi
	movq	1160(%rsi), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movzbl	(%rsi), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB137_6
# BB#3:                                 # %if.then.1
	movq	-8(%rbp), %rax
	cmpl	$2, 5636(%rax)
	jge	.LBB137_5
# BB#4:                                 # %if.then.4
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	5636(%rcx), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, 5636(%rcx)
	movslq	%edx, %rcx
	movq	-8(%rbp), %rdi
	movl	%eax, 5628(%rdi,%rcx,4)
.LBB137_5:                              # %if.end.6
	jmp	.LBB137_12
.LBB137_6:                              # %if.else
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rcx
	cmpq	8(%rcx), %rax
	je	.LBB137_11
# BB#7:                                 # %if.then.11
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	%rcx, %rax
	movslq	-28(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB137_9
# BB#8:                                 # %if.then.21
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rdx
	movq	24(%rdx), %rsi
	movslq	%eax, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rsi
	movq	%rsi, 24(%rdx)
	jmp	.LBB137_10
.LBB137_9:                              # %if.else.25
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 24(%rcx)
.LBB137_10:                             # %if.end.32
	jmp	.LBB137_11
.LBB137_11:                             # %if.end.33
	jmp	.LBB137_12
.LBB137_12:                             # %if.end.34
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end137:
	.size	backchar, .Lfunc_end137-backchar
	.cfi_endproc

	.align	16, 0x90
	.type	basic_inchar,@function
basic_inchar:                           # @basic_inchar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp414:
	.cfi_def_cfa_offset 16
.Ltmp415:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp416:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movzbl	(%rdi), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB138_19
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	fgetc
	movl	%eax, -20(%rbp)
.LBB138_2:                              # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB138_10 Depth 2
	cmpl	$-1, -20(%rbp)
	jne	.LBB138_4
# BB#3:                                 # %if.then.2
	movl	$-1, -4(%rbp)
	jmp	.LBB138_26
.LBB138_4:                              # %if.end
                                        #   in Loop: Header=BB138_2 Depth=1
	cmpl	$127, -20(%rbp)
	jg	.LBB138_6
# BB#5:                                 # %if.then.5
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB138_26
.LBB138_6:                              # %if.end.6
                                        #   in Loop: Header=BB138_2 Depth=1
	cmpl	$194, -20(%rbp)
	jl	.LBB138_8
# BB#7:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB138_2 Depth=1
	cmpl	$244, -20(%rbp)
	jle	.LBB138_9
.LBB138_8:                              # %if.then.11
                                        #   in Loop: Header=BB138_2 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	fgetc
	movl	%eax, -20(%rbp)
	jmp	.LBB138_18
.LBB138_9:                              # %if.else
                                        #   in Loop: Header=BB138_2 Depth=1
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movb	%cl, -27(%rbp)
	movl	-20(%rbp), %eax
	andl	$63, %eax
	movslq	%eax, %rdx
	movsbl	utf8_length(,%rdx), %eax
	movl	%eax, -32(%rbp)
	movl	$1, -36(%rbp)
.LBB138_10:                             # %for.cond
                                        #   Parent Loop BB138_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jg	.LBB138_15
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB138_10 Depth=2
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	fgetc
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	andl	$192, %eax
	cmpl	$128, %eax
	je	.LBB138_13
# BB#12:                                # %if.then.29
                                        #   in Loop: Header=BB138_2 Depth=1
	jmp	.LBB138_15
.LBB138_13:                             # %if.end.30
                                        #   in Loop: Header=BB138_10 Depth=2
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movslq	-36(%rbp), %rdx
	movb	%cl, -27(%rbp,%rdx)
# BB#14:                                # %for.inc
                                        #   in Loop: Header=BB138_10 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB138_10
.LBB138_15:                             # %for.end
                                        #   in Loop: Header=BB138_2 Depth=1
	movl	-36(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jle	.LBB138_17
# BB#16:                                # %if.then.36
	movl	$7, %eax
	movl	%eax, %esi
	leaq	-27(%rbp), %rdi
	callq	g_utf8_get_char_validated
	movl	%eax, -4(%rbp)
	jmp	.LBB138_26
.LBB138_17:                             # %if.end.38
                                        #   in Loop: Header=BB138_2 Depth=1
	jmp	.LBB138_18
.LBB138_18:                             # %if.end.39
                                        #   in Loop: Header=BB138_2 Depth=1
	jmp	.LBB138_2
.LBB138_19:                             # %if.else.40
	jmp	.LBB138_20
.LBB138_20:                             # %while.body.43
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB138_22
# BB#21:                                # %lor.lhs.false.48
                                        #   in Loop: Header=BB138_20 Depth=1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	16(%rcx), %rax
	jne	.LBB138_23
.LBB138_22:                             # %if.then.56
	movl	$-1, -4(%rbp)
	jmp	.LBB138_26
.LBB138_23:                             # %if.end.57
                                        #   in Loop: Header=BB138_20 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -44(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-44(%rbp), %rsi
	callq	g_utf8_get_char_validated
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jb	.LBB138_25
# BB#24:                                # %if.then.72
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	-40(%rbp), %edi
	callq	g_unichar_to_utf8
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rsi
	movq	24(%rsi), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 24(%rsi)
	movl	-40(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB138_26
.LBB138_25:                             # %if.end.77
                                        #   in Loop: Header=BB138_20 Depth=1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rsi
	callq	g_utf8_find_next_char
	movq	-16(%rbp), %rsi
	movq	%rax, 24(%rsi)
	jmp	.LBB138_20
.LBB138_26:                             # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end138:
	.size	basic_inchar, .Lfunc_end138-basic_inchar
	.cfi_endproc

	.align	16, 0x90
	.type	list_star,@function
list_star:                              # @list_star
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp417:
	.cfi_def_cfa_offset 16
.Ltmp418:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp419:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	-16(%rbp), %rdi
	cmpq	936(%rdi), %rsi
	jne	.LBB139_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB139_8
.LBB139_2:                              # %if.end
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	callq	_cons
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB139_3:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	je	.LBB139_7
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB139_3 Depth=1
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	callq	_cons
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdx
	cmpq	936(%rdx), %rax
	je	.LBB139_6
# BB#5:                                 # %if.then.32
                                        #   in Loop: Header=BB139_3 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB139_6:                              # %if.end.36
                                        #   in Loop: Header=BB139_3 Depth=1
	jmp	.LBB139_3
.LBB139_7:                              # %while.end
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB139_8:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end139:
	.size	list_star, .Lfunc_end139-list_star
	.cfi_endproc

	.align	16, 0x90
	.type	mk_continuation,@function
mk_continuation:                        # @mk_continuation
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp420:
	.cfi_def_cfa_offset 16
.Ltmp421:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp422:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	936(%rsi), %rsi
	movq	-16(%rbp), %rdx
	callq	get_cell
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$7, (%rax)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end140:
	.size	mk_continuation, .Lfunc_end140-mk_continuation
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI141_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	round_per_R5RS,@function
round_per_R5RS:                         # @round_per_R5RS
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp423:
	.cfi_def_cfa_offset 16
.Ltmp424:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp425:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	movsd	%xmm0, -24(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	ceil
	movsd	%xmm0, -32(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-24(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-16(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-48(%rbp), %xmm0
	jbe	.LBB141_2
# BB#1:                                 # %if.then
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB141_7
.LBB141_2:                              # %if.else
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB141_4
# BB#3:                                 # %if.then.4
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB141_7
.LBB141_4:                              # %if.else.5
	movsd	.LCPI141_0, %xmm1       # xmm1 = mem[0],zero
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	fmod
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB141_6
	jp	.LBB141_6
# BB#5:                                 # %if.then.8
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB141_7
.LBB141_6:                              # %if.else.9
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB141_7:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end141:
	.size	round_per_R5RS, .Lfunc_end141-round_per_R5RS
	.cfi_endproc

	.align	16, 0x90
	.type	num_add,@function
num_add:                                # @num_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp426:
	.cfi_def_cfa_offset 16
.Ltmp427:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp428:
	.cfi_def_cfa_register %rbp
	movb	%dl, %al
	movb	%dil, %r8b
	xorl	%edx, %edx
	movb	%dl, %r9b
	movb	%r8b, -32(%rbp)
	movq	%rsi, -24(%rbp)
	movb	%al, -48(%rbp)
	movq	%rcx, -40(%rbp)
	movsbl	-32(%rbp), %edx
	cmpl	$0, %edx
	movb	%r9b, -65(%rbp)         # 1-byte Spill
	je	.LBB142_2
# BB#1:                                 # %land.rhs
	movsbl	-48(%rbp), %eax
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -65(%rbp)          # 1-byte Spill
.LBB142_2:                              # %land.end
	movb	-65(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movb	%cl, %al
	movb	%al, -64(%rbp)
	cmpb	$0, -64(%rbp)
	je	.LBB142_4
# BB#3:                                 # %if.then
	movq	-24(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB142_11
.LBB142_4:                              # %if.else
	cmpb	$0, -32(%rbp)
	jne	.LBB142_6
# BB#5:                                 # %cond.true
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB142_7
.LBB142_6:                              # %cond.false
	cvtsi2sdq	-24(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
.LBB142_7:                              # %cond.end
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cmpb	$0, -48(%rbp)
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jne	.LBB142_9
# BB#8:                                 # %cond.true.20
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB142_10
.LBB142_9:                              # %cond.false.23
	cvtsi2sdq	-40(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
.LBB142_10:                             # %cond.end.27
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
.LBB142_11:                             # %if.end
	movups	-64(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movb	-16(%rbp), %al
	movq	-8(%rbp), %rdx
	popq	%rbp
	retq
.Lfunc_end142:
	.size	num_add, .Lfunc_end142-num_add
	.cfi_endproc

	.align	16, 0x90
	.type	mk_number,@function
mk_number:                              # @mk_number
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp429:
	.cfi_def_cfa_offset 16
.Ltmp430:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp431:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movb	%sil, %al
	movb	%al, -24(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rdi, -32(%rbp)
	cmpb	$0, -24(%rbp)
	je	.LBB143_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	mk_integer
	movq	%rax, -8(%rbp)
	jmp	.LBB143_3
.LBB143_2:                              # %if.else
	movq	-32(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	mk_real
	movq	%rax, -8(%rbp)
.LBB143_3:                              # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end143:
	.size	mk_number, .Lfunc_end143-mk_number
	.cfi_endproc

	.align	16, 0x90
	.type	num_mul,@function
num_mul:                                # @num_mul
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp432:
	.cfi_def_cfa_offset 16
.Ltmp433:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp434:
	.cfi_def_cfa_register %rbp
	movb	%dl, %al
	movb	%dil, %r8b
	xorl	%edx, %edx
	movb	%dl, %r9b
	movb	%r8b, -32(%rbp)
	movq	%rsi, -24(%rbp)
	movb	%al, -48(%rbp)
	movq	%rcx, -40(%rbp)
	movsbl	-32(%rbp), %edx
	cmpl	$0, %edx
	movb	%r9b, -65(%rbp)         # 1-byte Spill
	je	.LBB144_2
# BB#1:                                 # %land.rhs
	movsbl	-48(%rbp), %eax
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -65(%rbp)          # 1-byte Spill
.LBB144_2:                              # %land.end
	movb	-65(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movb	%cl, %al
	movb	%al, -64(%rbp)
	cmpb	$0, -64(%rbp)
	je	.LBB144_4
# BB#3:                                 # %if.then
	movq	-24(%rbp), %rax
	imulq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB144_11
.LBB144_4:                              # %if.else
	cmpb	$0, -32(%rbp)
	jne	.LBB144_6
# BB#5:                                 # %cond.true
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB144_7
.LBB144_6:                              # %cond.false
	cvtsi2sdq	-24(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
.LBB144_7:                              # %cond.end
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cmpb	$0, -48(%rbp)
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jne	.LBB144_9
# BB#8:                                 # %cond.true.20
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB144_10
.LBB144_9:                              # %cond.false.23
	cvtsi2sdq	-40(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
.LBB144_10:                             # %cond.end.27
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
.LBB144_11:                             # %if.end
	movups	-64(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movb	-16(%rbp), %al
	movq	-8(%rbp), %rdx
	popq	%rbp
	retq
.Lfunc_end144:
	.size	num_mul, .Lfunc_end144-num_mul
	.cfi_endproc

	.align	16, 0x90
	.type	num_sub,@function
num_sub:                                # @num_sub
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp435:
	.cfi_def_cfa_offset 16
.Ltmp436:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp437:
	.cfi_def_cfa_register %rbp
	movb	%dl, %al
	movb	%dil, %r8b
	xorl	%edx, %edx
	movb	%dl, %r9b
	movb	%r8b, -32(%rbp)
	movq	%rsi, -24(%rbp)
	movb	%al, -48(%rbp)
	movq	%rcx, -40(%rbp)
	movsbl	-32(%rbp), %edx
	cmpl	$0, %edx
	movb	%r9b, -65(%rbp)         # 1-byte Spill
	je	.LBB145_2
# BB#1:                                 # %land.rhs
	movsbl	-48(%rbp), %eax
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -65(%rbp)          # 1-byte Spill
.LBB145_2:                              # %land.end
	movb	-65(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movb	%cl, %al
	movb	%al, -64(%rbp)
	cmpb	$0, -64(%rbp)
	je	.LBB145_4
# BB#3:                                 # %if.then
	movq	-24(%rbp), %rax
	subq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB145_11
.LBB145_4:                              # %if.else
	cmpb	$0, -32(%rbp)
	jne	.LBB145_6
# BB#5:                                 # %cond.true
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB145_7
.LBB145_6:                              # %cond.false
	cvtsi2sdq	-24(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
.LBB145_7:                              # %cond.end
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cmpb	$0, -48(%rbp)
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jne	.LBB145_9
# BB#8:                                 # %cond.true.20
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB145_10
.LBB145_9:                              # %cond.false.23
	cvtsi2sdq	-40(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
.LBB145_10:                             # %cond.end.27
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
.LBB145_11:                             # %if.end
	movups	-64(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movb	-16(%rbp), %al
	movq	-8(%rbp), %rdx
	popq	%rbp
	retq
.Lfunc_end145:
	.size	num_sub, .Lfunc_end145-num_sub
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI146_0:
	.quad	4503599627370496        # double 2.2250738585072014E-308
.LCPI146_1:
	.quad	-9218868437227405312    # double -2.2250738585072014E-308
	.text
	.align	16, 0x90
	.type	is_zero_double,@function
is_zero_double:                         # @is_zero_double
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp438:
	.cfi_def_cfa_offset 16
.Ltmp439:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp440:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movb	%al, %cl
	movsd	.LCPI146_0, %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	ucomisd	-8(%rbp), %xmm1
	movb	%cl, -9(%rbp)           # 1-byte Spill
	jbe	.LBB146_2
# BB#1:                                 # %land.rhs
	movsd	.LCPI146_1, %xmm0       # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	seta	%al
	movb	%al, -9(%rbp)           # 1-byte Spill
.LBB146_2:                              # %land.end
	movb	-9(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end146:
	.size	is_zero_double, .Lfunc_end146-is_zero_double
	.cfi_endproc

	.align	16, 0x90
	.type	num_div,@function
num_div:                                # @num_div
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp441:
	.cfi_def_cfa_offset 16
.Ltmp442:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp443:
	.cfi_def_cfa_register %rbp
	movb	%dl, %al
	movb	%dil, %r8b
	xorl	%edx, %edx
	movb	%dl, %r9b
	movb	%r8b, -32(%rbp)
	movq	%rsi, -24(%rbp)
	movb	%al, -48(%rbp)
	movq	%rcx, -40(%rbp)
	movsbl	-32(%rbp), %edx
	cmpl	$0, %edx
	movb	%r9b, -65(%rbp)         # 1-byte Spill
	je	.LBB147_3
# BB#1:                                 # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	movsbl	-48(%rbp), %eax
	cmpl	$0, %eax
	movb	%cl, -65(%rbp)          # 1-byte Spill
	je	.LBB147_3
# BB#2:                                 # %land.rhs
	movq	-24(%rbp), %rax
	cqto
	idivq	-40(%rbp)
	cmpq	$0, %rdx
	sete	%cl
	movb	%cl, -65(%rbp)          # 1-byte Spill
.LBB147_3:                              # %land.end
	movb	-65(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movb	%cl, %al
	movb	%al, -64(%rbp)
	cmpb	$0, -64(%rbp)
	je	.LBB147_5
# BB#4:                                 # %if.then
	movq	-24(%rbp), %rax
	cqto
	idivq	-40(%rbp)
	movq	%rax, -56(%rbp)
	jmp	.LBB147_12
.LBB147_5:                              # %if.else
	cmpb	$0, -32(%rbp)
	jne	.LBB147_7
# BB#6:                                 # %cond.true
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB147_8
.LBB147_7:                              # %cond.false
	cvtsi2sdq	-24(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
.LBB147_8:                              # %cond.end
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cmpb	$0, -48(%rbp)
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jne	.LBB147_10
# BB#9:                                 # %cond.true.25
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB147_11
.LBB147_10:                             # %cond.false.28
	cvtsi2sdq	-40(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
.LBB147_11:                             # %cond.end.32
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
.LBB147_12:                             # %if.end
	movups	-64(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movb	-16(%rbp), %al
	movq	-8(%rbp), %rdx
	popq	%rbp
	retq
.Lfunc_end147:
	.size	num_div, .Lfunc_end147-num_div
	.cfi_endproc

	.align	16, 0x90
	.type	num_intdiv,@function
num_intdiv:                             # @num_intdiv
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp444:
	.cfi_def_cfa_offset 16
.Ltmp445:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp446:
	.cfi_def_cfa_register %rbp
	movb	%dl, %al
	movb	%dil, %r8b
	xorl	%edx, %edx
	movb	%dl, %r9b
	movb	%r8b, -32(%rbp)
	movq	%rsi, -24(%rbp)
	movb	%al, -48(%rbp)
	movq	%rcx, -40(%rbp)
	movsbl	-32(%rbp), %edx
	cmpl	$0, %edx
	movb	%r9b, -65(%rbp)         # 1-byte Spill
	je	.LBB148_2
# BB#1:                                 # %land.rhs
	movsbl	-48(%rbp), %eax
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -65(%rbp)          # 1-byte Spill
.LBB148_2:                              # %land.end
	movb	-65(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movb	%cl, %al
	movb	%al, -64(%rbp)
	cmpb	$0, -64(%rbp)
	je	.LBB148_4
# BB#3:                                 # %if.then
	movq	-24(%rbp), %rax
	cqto
	idivq	-40(%rbp)
	movq	%rax, -56(%rbp)
	jmp	.LBB148_11
.LBB148_4:                              # %if.else
	cmpb	$0, -32(%rbp)
	jne	.LBB148_6
# BB#5:                                 # %cond.true
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB148_7
.LBB148_6:                              # %cond.false
	cvtsi2sdq	-24(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
.LBB148_7:                              # %cond.end
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cmpb	$0, -48(%rbp)
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jne	.LBB148_9
# BB#8:                                 # %cond.true.20
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB148_10
.LBB148_9:                              # %cond.false.23
	cvtsi2sdq	-40(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
.LBB148_10:                             # %cond.end.27
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
.LBB148_11:                             # %if.end
	movups	-64(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movb	-16(%rbp), %al
	movq	-8(%rbp), %rdx
	popq	%rbp
	retq
.Lfunc_end148:
	.size	num_intdiv, .Lfunc_end148-num_intdiv
	.cfi_endproc

	.align	16, 0x90
	.type	num_rem,@function
num_rem:                                # @num_rem
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp447:
	.cfi_def_cfa_offset 16
.Ltmp448:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp449:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movb	%dl, %al
	movb	%dil, %r8b
	xorl	%edx, %edx
	movb	%dl, %r9b
	movb	%r8b, -32(%rbp)
	movq	%rsi, -24(%rbp)
	movb	%al, -48(%rbp)
	movq	%rcx, -40(%rbp)
	movsbl	-32(%rbp), %edx
	cmpl	$0, %edx
	movb	%r9b, -89(%rbp)         # 1-byte Spill
	je	.LBB149_2
# BB#1:                                 # %land.rhs
	movsbl	-48(%rbp), %eax
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -89(%rbp)          # 1-byte Spill
.LBB149_2:                              # %land.end
	movb	-89(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movb	%cl, %al
	movb	%al, -64(%rbp)
	movsbl	-32(%rbp), %ecx
	cmpl	$0, %ecx
	je	.LBB149_4
# BB#3:                                 # %cond.true
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB149_5
.LBB149_4:                              # %cond.false
	cvttsd2si	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB149_5:                              # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	movsbl	-48(%rbp), %ecx
	cmpl	$0, %ecx
	je	.LBB149_7
# BB#6:                                 # %cond.true.14
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB149_8
.LBB149_7:                              # %cond.false.17
	cvttsd2si	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB149_8:                              # %cond.end.21
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	cqto
	idivq	-80(%rbp)
	movq	%rdx, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jle	.LBB149_12
# BB#9:                                 # %if.then
	cmpq	$0, -72(%rbp)
	jge	.LBB149_11
# BB#10:                                # %if.then.26
	movq	-80(%rbp), %rdi
	callq	labs
	movq	-88(%rbp), %rdi
	subq	%rax, %rdi
	movq	%rdi, -88(%rbp)
.LBB149_11:                             # %if.end
	jmp	.LBB149_17
.LBB149_12:                             # %if.else
	cmpq	$0, -88(%rbp)
	jge	.LBB149_16
# BB#13:                                # %if.then.29
	cmpq	$0, -72(%rbp)
	jle	.LBB149_15
# BB#14:                                # %if.then.32
	movq	-80(%rbp), %rdi
	callq	labs
	addq	-88(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB149_15:                             # %if.end.34
	jmp	.LBB149_16
.LBB149_16:                             # %if.end.35
	jmp	.LBB149_17
.LBB149_17:                             # %if.end.36
	movq	-88(%rbp), %rax
	movq	%rax, -56(%rbp)
	movups	-64(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movb	-16(%rbp), %al
	movq	-8(%rbp), %rdx
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end149:
	.size	num_rem, .Lfunc_end149-num_rem
	.cfi_endproc

	.align	16, 0x90
	.type	num_mod,@function
num_mod:                                # @num_mod
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp450:
	.cfi_def_cfa_offset 16
.Ltmp451:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp452:
	.cfi_def_cfa_register %rbp
	movb	%dl, %al
	movb	%dil, %r8b
	xorl	%edx, %edx
	movb	%dl, %r9b
	movb	%r8b, -32(%rbp)
	movq	%rsi, -24(%rbp)
	movb	%al, -48(%rbp)
	movq	%rcx, -40(%rbp)
	movsbl	-32(%rbp), %edx
	cmpl	$0, %edx
	movb	%r9b, -89(%rbp)         # 1-byte Spill
	je	.LBB150_2
# BB#1:                                 # %land.rhs
	movsbl	-48(%rbp), %eax
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -89(%rbp)          # 1-byte Spill
.LBB150_2:                              # %land.end
	movb	-89(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movb	%cl, %al
	movb	%al, -64(%rbp)
	movsbl	-32(%rbp), %ecx
	cmpl	$0, %ecx
	je	.LBB150_4
# BB#3:                                 # %cond.true
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB150_5
.LBB150_4:                              # %cond.false
	cvttsd2si	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB150_5:                              # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	movsbl	-48(%rbp), %ecx
	cmpl	$0, %ecx
	je	.LBB150_7
# BB#6:                                 # %cond.true.14
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB150_8
.LBB150_7:                              # %cond.false.17
	cvttsd2si	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB150_8:                              # %cond.end.21
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	cqto
	idivq	-80(%rbp)
	movq	%rdx, -88(%rbp)
	cmpq	$0, -88(%rbp)
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	cmpq	$0, -80(%rbp)
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %edi
	cmpl	%edi, %esi
	je	.LBB150_11
# BB#9:                                 # %land.lhs.true
	cmpq	$0, -88(%rbp)
	je	.LBB150_11
# BB#10:                                # %if.then
	movq	-80(%rbp), %rax
	addq	-88(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB150_11:                             # %if.end
	movq	-88(%rbp), %rax
	movq	%rax, -56(%rbp)
	movups	-64(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movb	-16(%rbp), %al
	movq	-8(%rbp), %rdx
	popq	%rbp
	retq
.Lfunc_end150:
	.size	num_mod, .Lfunc_end150-num_mod
	.cfi_endproc

	.align	16, 0x90
	.type	mk_sharp_const,@function
mk_sharp_const:                         # @mk_sharp_const
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp453:
	.cfi_def_cfa_offset 16
.Ltmp454:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp455:
	.cfi_def_cfa_register %rbp
	subq	$1088, %rsp             # imm = 0x440
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	$.L.str.217, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB151_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB151_38
.LBB151_2:                              # %if.else
	movq	-24(%rbp), %rdi
	movl	$.L.str.218, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB151_4
# BB#3:                                 # %if.then.3
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB151_38
.LBB151_4:                              # %if.else.4
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$111, %ecx
	jne	.LBB151_6
# BB#5:                                 # %if.then.6
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %esi
	movabsq	$.L.str.219, %rdx
	leaq	-1056(%rbp), %rdi
	movq	-24(%rbp), %rcx
	addq	$1, %rcx
	movb	$0, %al
	callq	snprintf
	movabsq	$.L.str.220, %rsi
	leaq	-32(%rbp), %rdx
	leaq	-1056(%rbp), %rdi
	movl	%eax, -1068(%rbp)       # 4-byte Spill
	movb	$0, %al
	callq	__isoc99_sscanf
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	%eax, -1072(%rbp)       # 4-byte Spill
	callq	mk_integer
	movq	%rax, -8(%rbp)
	jmp	.LBB151_38
.LBB151_6:                              # %if.else.11
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$100, %ecx
	jne	.LBB151_8
# BB#7:                                 # %if.then.15
	movabsq	$.L.str.221, %rsi
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	__isoc99_sscanf
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	%eax, -1076(%rbp)       # 4-byte Spill
	callq	mk_integer
	movq	%rax, -8(%rbp)
	jmp	.LBB151_38
.LBB151_8:                              # %if.else.19
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$120, %ecx
	jne	.LBB151_10
# BB#9:                                 # %if.then.23
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %esi
	movabsq	$.L.str.222, %rdx
	leaq	-1056(%rbp), %rdi
	movq	-24(%rbp), %rcx
	addq	$1, %rcx
	movb	$0, %al
	callq	snprintf
	movabsq	$.L.str.223, %rsi
	leaq	-32(%rbp), %rdx
	leaq	-1056(%rbp), %rdi
	movl	%eax, -1080(%rbp)       # 4-byte Spill
	movb	$0, %al
	callq	__isoc99_sscanf
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	%eax, -1084(%rbp)       # 4-byte Spill
	callq	mk_integer
	movq	%rax, -8(%rbp)
	jmp	.LBB151_38
.LBB151_10:                             # %if.else.30
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$98, %ecx
	jne	.LBB151_12
# BB#11:                                # %if.then.34
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	binary_decode
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	mk_integer
	movq	%rax, -8(%rbp)
	jmp	.LBB151_38
.LBB151_12:                             # %if.else.38
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$92, %ecx
	jne	.LBB151_37
# BB#13:                                # %if.then.42
	movabsq	$.L.str.224, %rsi
	movl	$0, -1060(%rbp)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	utf8_stricmp
	cmpl	$0, %eax
	jne	.LBB151_15
# BB#14:                                # %if.then.48
	movl	$32, -1060(%rbp)
	jmp	.LBB151_36
.LBB151_15:                             # %if.else.49
	movabsq	$.L.str.135, %rsi
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	utf8_stricmp
	cmpl	$0, %eax
	jne	.LBB151_17
# BB#16:                                # %if.then.54
	movl	$10, -1060(%rbp)
	jmp	.LBB151_35
.LBB151_17:                             # %if.else.55
	movabsq	$.L.str.225, %rsi
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	utf8_stricmp
	cmpl	$0, %eax
	jne	.LBB151_19
# BB#18:                                # %if.then.60
	movl	$13, -1060(%rbp)
	jmp	.LBB151_34
.LBB151_19:                             # %if.else.61
	movabsq	$.L.str.226, %rsi
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	utf8_stricmp
	cmpl	$0, %eax
	jne	.LBB151_21
# BB#20:                                # %if.then.66
	movl	$9, -1060(%rbp)
	jmp	.LBB151_33
.LBB151_21:                             # %if.else.67
	movq	-24(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$120, %ecx
	jne	.LBB151_28
# BB#22:                                # %land.lhs.true
	movq	-24(%rbp), %rax
	movsbl	2(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB151_28
# BB#23:                                # %if.then.75
	movabsq	$.L.str.227, %rsi
	leaq	-1064(%rbp), %rdx
	movl	$0, -1064(%rbp)
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	jne	.LBB151_26
# BB#24:                                # %land.lhs.true.81
	cmpl	$255, -1064(%rbp)
	jge	.LBB151_26
# BB#25:                                # %if.then.84
	movl	-1064(%rbp), %eax
	movl	%eax, -1060(%rbp)
	jmp	.LBB151_27
.LBB151_26:                             # %if.else.85
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB151_38
.LBB151_27:                             # %if.end
	jmp	.LBB151_32
.LBB151_28:                             # %if.else.86
	movq	-24(%rbp), %rax
	movsbl	2(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB151_30
# BB#29:                                # %if.then.91
	movq	-24(%rbp), %rax
	movsbl	1(%rax), %ecx
	movl	%ecx, -1060(%rbp)
	jmp	.LBB151_31
.LBB151_30:                             # %if.else.94
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB151_38
.LBB151_31:                             # %if.end.96
	jmp	.LBB151_32
.LBB151_32:                             # %if.end.97
	jmp	.LBB151_33
.LBB151_33:                             # %if.end.98
	jmp	.LBB151_34
.LBB151_34:                             # %if.end.99
	jmp	.LBB151_35
.LBB151_35:                             # %if.end.100
	jmp	.LBB151_36
.LBB151_36:                             # %if.end.101
	movq	-16(%rbp), %rdi
	movl	-1060(%rbp), %esi
	callq	mk_character
	movq	%rax, -8(%rbp)
	jmp	.LBB151_38
.LBB151_37:                             # %if.else.103
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB151_38:                             # %return
	movq	-8(%rbp), %rax
	addq	$1088, %rsp             # imm = 0x440
	popq	%rbp
	retq
.Lfunc_end151:
	.size	mk_sharp_const, .Lfunc_end151-mk_sharp_const
	.cfi_endproc

	.align	16, 0x90
	.type	mk_atom,@function
mk_atom:                                # @mk_atom
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp456:
	.cfi_def_cfa_offset 16
.Ltmp457:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp458:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movabsq	$.L.str.228, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	callq	strstr
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	je	.LBB152_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	1112(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	1072(%rdx), %rdx
	movq	-16(%rbp), %r8
	movq	-16(%rbp), %r9
	movq	-40(%rbp), %r10
	addq	$2, %r10
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%r10, %rsi
	movq	%r8, -72(%rbp)          # 8-byte Spill
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	mk_atom
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdx
	movq	936(%rdx), %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	_cons
	xorl	%ecx, %ecx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	_cons
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	mk_symbol
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdx
	movq	936(%rdx), %rdx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_cons
	xorl	%ecx, %ecx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	_cons
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	_cons
	movq	%rax, -8(%rbp)
	jmp	.LBB152_40
.LBB152_2:                              # %if.end
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	(%rax), %dl
	movb	%dl, -25(%rbp)
	movsbl	-25(%rbp), %esi
	cmpl	$43, %esi
	je	.LBB152_4
# BB#3:                                 # %lor.lhs.false
	movsbl	-25(%rbp), %eax
	cmpl	$45, %eax
	jne	.LBB152_9
.LBB152_4:                              # %if.then.14
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	(%rax), %dl
	movb	%dl, -25(%rbp)
	movsbl	-25(%rbp), %esi
	cmpl	$46, %esi
	jne	.LBB152_6
# BB#5:                                 # %if.then.19
	movl	$1, -44(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	(%rax), %dl
	movb	%dl, -25(%rbp)
.LBB152_6:                              # %if.end.21
	movsbl	-25(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$2048, %edx             # imm = 0x800
	cmpl	$0, %edx
	jne	.LBB152_8
# BB#7:                                 # %if.then.25
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	mk_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB152_40
.LBB152_8:                              # %if.end.27
	jmp	.LBB152_17
.LBB152_9:                              # %if.else
	movsbl	-25(%rbp), %eax
	cmpl	$46, %eax
	jne	.LBB152_13
# BB#10:                                # %if.then.31
	movl	$1, -44(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	(%rax), %dl
	movb	%dl, -25(%rbp)
	movsbl	-25(%rbp), %esi
	movslq	%esi, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rax,%rcx,2), %esi
	andl	$2048, %esi             # imm = 0x800
	cmpl	$0, %esi
	jne	.LBB152_12
# BB#11:                                # %if.then.40
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	mk_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB152_40
.LBB152_12:                             # %if.end.42
	jmp	.LBB152_16
.LBB152_13:                             # %if.else.43
	movsbl	-25(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$2048, %edx             # imm = 0x800
	cmpl	$0, %edx
	jne	.LBB152_15
# BB#14:                                # %if.then.51
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	mk_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB152_40
.LBB152_15:                             # %if.end.53
	jmp	.LBB152_16
.LBB152_16:                             # %if.end.54
	jmp	.LBB152_17
.LBB152_17:                             # %if.end.55
	jmp	.LBB152_18
.LBB152_18:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -25(%rbp)
	movsbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB152_37
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB152_18 Depth=1
	movsbl	-25(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$2048, %edx             # imm = 0x800
	cmpl	$0, %edx
	jne	.LBB152_35
# BB#20:                                # %if.then.66
                                        #   in Loop: Header=BB152_18 Depth=1
	movsbl	-25(%rbp), %eax
	cmpl	$46, %eax
	jne	.LBB152_24
# BB#21:                                # %if.then.70
                                        #   in Loop: Header=BB152_18 Depth=1
	cmpl	$0, -44(%rbp)
	jne	.LBB152_23
# BB#22:                                # %if.then.72
                                        #   in Loop: Header=BB152_18 Depth=1
	movl	$1, -44(%rbp)
	jmp	.LBB152_36
.LBB152_23:                             # %if.end.73
	jmp	.LBB152_34
.LBB152_24:                             # %if.else.74
                                        #   in Loop: Header=BB152_18 Depth=1
	movsbl	-25(%rbp), %eax
	cmpl	$101, %eax
	je	.LBB152_26
# BB#25:                                # %lor.lhs.false.78
                                        #   in Loop: Header=BB152_18 Depth=1
	movsbl	-25(%rbp), %eax
	cmpl	$69, %eax
	jne	.LBB152_33
.LBB152_26:                             # %if.then.82
                                        #   in Loop: Header=BB152_18 Depth=1
	cmpl	$0, -48(%rbp)
	jne	.LBB152_32
# BB#27:                                # %if.then.84
                                        #   in Loop: Header=BB152_18 Depth=1
	movl	$1, -44(%rbp)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	je	.LBB152_30
# BB#28:                                # %lor.lhs.false.89
                                        #   in Loop: Header=BB152_18 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$43, %ecx
	je	.LBB152_30
# BB#29:                                # %lor.lhs.false.93
                                        #   in Loop: Header=BB152_18 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	movslq	%ecx, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movzwl	(%rax,%rdx,2), %ecx
	andl	$2048, %ecx             # imm = 0x800
	cmpl	$0, %ecx
	je	.LBB152_31
.LBB152_30:                             # %if.then.101
                                        #   in Loop: Header=BB152_18 Depth=1
	jmp	.LBB152_36
.LBB152_31:                             # %if.end.102
	jmp	.LBB152_32
.LBB152_32:                             # %if.end.103
	jmp	.LBB152_33
.LBB152_33:                             # %if.end.104
	jmp	.LBB152_34
.LBB152_34:                             # %if.end.105
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	mk_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB152_40
.LBB152_35:                             # %if.end.107
                                        #   in Loop: Header=BB152_18 Depth=1
	jmp	.LBB152_36
.LBB152_36:                             # %for.inc
                                        #   in Loop: Header=BB152_18 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB152_18
.LBB152_37:                             # %for.end
	cmpl	$0, -44(%rbp)
	je	.LBB152_39
# BB#38:                                # %if.then.110
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_ascii_strtod
	movq	-160(%rbp), %rdi        # 8-byte Reload
	callq	mk_real
	movq	%rax, -8(%rbp)
	jmp	.LBB152_40
.LBB152_39:                             # %if.end.113
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	atol
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	mk_integer
	movq	%rax, -8(%rbp)
.LBB152_40:                             # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end152:
	.size	mk_atom, .Lfunc_end152-mk_atom
	.cfi_endproc

	.align	16, 0x90
	.type	atom2str,@function
atom2str:                               # @atom2str
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp459:
	.cfi_def_cfa_offset 16
.Ltmp460:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp461:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rsi
	cmpq	936(%rsi), %rcx
	jne	.LBB153_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.229, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB153_64
.LBB153_2:                              # %if.else
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	968(%rcx), %rax
	jne	.LBB153_4
# BB#3:                                 # %if.then.2
	movabsq	$.L.str.230, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB153_63
.LBB153_4:                              # %if.else.3
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	1000(%rcx), %rax
	jne	.LBB153_6
# BB#5:                                 # %if.then.5
	movabsq	$.L.str.231, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB153_62
.LBB153_6:                              # %if.else.6
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	1032(%rcx), %rax
	jne	.LBB153_8
# BB#7:                                 # %if.then.8
	movabsq	$.L.str.232, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB153_61
.LBB153_8:                              # %if.else.9
	movq	-16(%rbp), %rdi
	callq	is_port
	cmpl	$0, %eax
	je	.LBB153_10
# BB#9:                                 # %if.then.10
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %esi
	movabsq	$.L.str.233, %rdx
	movq	-8(%rbp), %rcx
	addq	$4530, %rcx             # imm = 0x11B2
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rdi
	movb	$0, %al
	callq	snprintf
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB153_60
.LBB153_10:                             # %if.else.12
	movq	-16(%rbp), %rdi
	callq	is_number
	cmpl	$0, %eax
	je	.LBB153_17
# BB#11:                                # %if.then.15
	movq	-8(%rbp), %rax
	addq	$4530, %rax             # imm = 0x11B2
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	num_is_integer
	cmpl	$0, %eax
	je	.LBB153_13
# BB#12:                                # %if.then.20
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %esi
	movabsq	$.L.str.221, %rdx
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movb	$0, %al
	callq	snprintf
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB153_16
.LBB153_13:                             # %if.else.22
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %esi
	movabsq	$.L.str.234, %rdx
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	movb	$1, %al
	callq	snprintf
	movabsq	$.L.str.235, %rsi
	movq	-48(%rbp), %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	strcspn
	movl	%eax, %r8d
	movl	%r8d, -20(%rbp)
	movslq	-20(%rbp), %rax
	movq	-48(%rbp), %rcx
	movsbl	(%rcx,%rax), %r8d
	cmpl	$0, %r8d
	jne	.LBB153_15
# BB#14:                                # %if.then.31
	movslq	-20(%rbp), %rax
	movq	-48(%rbp), %rcx
	movb	$46, (%rcx,%rax)
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-48(%rbp), %rcx
	movb	$48, (%rcx,%rax)
	movl	-20(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rax
	movq	-48(%rbp), %rcx
	movb	$0, (%rcx,%rax)
.LBB153_15:                             # %if.end
	jmp	.LBB153_16
.LBB153_16:                             # %if.end.39
	jmp	.LBB153_59
.LBB153_17:                             # %if.else.40
	movq	-16(%rbp), %rdi
	callq	is_string
	cmpl	$0, %eax
	je	.LBB153_22
# BB#18:                                # %if.then.43
	cmpl	$0, -20(%rbp)
	jne	.LBB153_20
# BB#19:                                # %if.then.45
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB153_21
.LBB153_20:                             # %if.else.47
	movq	$-1, %rsi
	movq	-8(%rbp), %rax
	addq	$4530, %rax             # imm = 0x11B2
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_utf8_strlen
	movl	%eax, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	callq	printslashstring
	jmp	.LBB153_65
.LBB153_21:                             # %if.end.58
	jmp	.LBB153_58
.LBB153_22:                             # %if.else.59
	movq	-16(%rbp), %rdi
	callq	is_character
	cmpl	$0, %eax
	je	.LBB153_35
# BB#23:                                # %if.then.62
	movq	-16(%rbp), %rdi
	callq	charvalue
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rdi
	addq	$4530, %rdi             # imm = 0x11B2
	movq	%rdi, -48(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.LBB153_25
# BB#24:                                # %if.then.67
	movl	-52(%rbp), %edi
	movq	-48(%rbp), %rsi
	callq	g_unichar_to_utf8
	movl	%eax, -56(%rbp)
	movslq	-56(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movb	$0, (%rcx,%rsi)
	jmp	.LBB153_34
.LBB153_25:                             # %if.else.71
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	subl	$9, %ecx
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movl	%ecx, -96(%rbp)         # 4-byte Spill
	je	.LBB153_29
	jmp	.LBB153_66
.LBB153_66:                             # %if.else.71
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$10, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB153_27
	jmp	.LBB153_67
.LBB153_67:                             # %if.else.71
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$13, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB153_28
	jmp	.LBB153_68
.LBB153_68:                             # %if.else.71
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$32, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jne	.LBB153_30
	jmp	.LBB153_26
.LBB153_26:                             # %sw.bb
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %esi
	movabsq	$.L.str.236, %rdx
	movq	-48(%rbp), %rdi
	movb	$0, %al
	callq	snprintf
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB153_33
.LBB153_27:                             # %sw.bb.73
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %esi
	movabsq	$.L.str.237, %rdx
	movq	-48(%rbp), %rdi
	movb	$0, %al
	callq	snprintf
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB153_33
.LBB153_28:                             # %sw.bb.75
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %esi
	movabsq	$.L.str.238, %rdx
	movq	-48(%rbp), %rdi
	movb	$0, %al
	callq	snprintf
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB153_33
.LBB153_29:                             # %sw.bb.77
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %esi
	movabsq	$.L.str.239, %rdx
	movq	-48(%rbp), %rdi
	movb	$0, %al
	callq	snprintf
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB153_33
.LBB153_30:                             # %sw.default
	cmpl	$32, -52(%rbp)
	jae	.LBB153_32
# BB#31:                                # %if.then.81
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %esi
	movabsq	$.L.str.240, %rdx
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %ecx
	movb	$0, %al
	callq	snprintf
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB153_33
.LBB153_32:                             # %if.end.83
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %esi
	movabsq	$.L.str.241, %rdx
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %ecx
	movb	$0, %al
	callq	snprintf
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB153_33:                             # %sw.epilog
	jmp	.LBB153_34
.LBB153_34:                             # %if.end.85
	jmp	.LBB153_57
.LBB153_35:                             # %if.else.86
	movq	-16(%rbp), %rdi
	callq	is_symbol
	cmpl	$0, %eax
	je	.LBB153_37
# BB#36:                                # %if.then.89
	movq	-16(%rbp), %rdi
	callq	symname
	movq	%rax, -48(%rbp)
	jmp	.LBB153_56
.LBB153_37:                             # %if.else.91
	movq	-16(%rbp), %rdi
	callq	is_proc
	cmpl	$0, %eax
	je	.LBB153_39
# BB#38:                                # %if.then.94
	movq	-8(%rbp), %rax
	addq	$4530, %rax             # imm = 0x11B2
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	procname
	movq	-16(%rbp), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	ivalue
	movl	$1024, %ecx             # imm = 0x400
	movl	%ecx, %esi
	movabsq	$.L.str.242, %rdx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	snprintf
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jmp	.LBB153_55
.LBB153_39:                             # %if.else.100
	movq	-16(%rbp), %rdi
	callq	is_macro
	cmpl	$0, %eax
	je	.LBB153_41
# BB#40:                                # %if.then.103
	movabsq	$.L.str.243, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB153_54
.LBB153_41:                             # %if.else.104
	movq	-16(%rbp), %rdi
	callq	is_closure
	cmpl	$0, %eax
	je	.LBB153_43
# BB#42:                                # %if.then.107
	movabsq	$.L.str.244, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB153_53
.LBB153_43:                             # %if.else.108
	movq	-16(%rbp), %rdi
	callq	is_promise
	cmpl	$0, %eax
	je	.LBB153_45
# BB#44:                                # %if.then.111
	movabsq	$.L.str.245, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB153_52
.LBB153_45:                             # %if.else.112
	movq	-16(%rbp), %rdi
	callq	is_foreign
	cmpl	$0, %eax
	je	.LBB153_47
# BB#46:                                # %if.then.115
	movq	-8(%rbp), %rax
	addq	$4530, %rax             # imm = 0x11B2
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	ivalue
	movl	$1024, %ecx             # imm = 0x400
	movl	%ecx, %esi
	movabsq	$.L.str.246, %rdx
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	snprintf
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB153_51
.LBB153_47:                             # %if.else.120
	movq	-16(%rbp), %rdi
	callq	is_continuation
	cmpl	$0, %eax
	je	.LBB153_49
# BB#48:                                # %if.then.123
	movabsq	$.L.str.247, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB153_50
.LBB153_49:                             # %if.else.124
	movabsq	$.L.str.248, %rax
	movq	%rax, -48(%rbp)
.LBB153_50:                             # %if.end.125
	jmp	.LBB153_51
.LBB153_51:                             # %if.end.126
	jmp	.LBB153_52
.LBB153_52:                             # %if.end.127
	jmp	.LBB153_53
.LBB153_53:                             # %if.end.128
	jmp	.LBB153_54
.LBB153_54:                             # %if.end.129
	jmp	.LBB153_55
.LBB153_55:                             # %if.end.130
	jmp	.LBB153_56
.LBB153_56:                             # %if.end.131
	jmp	.LBB153_57
.LBB153_57:                             # %if.end.132
	jmp	.LBB153_58
.LBB153_58:                             # %if.end.133
	jmp	.LBB153_59
.LBB153_59:                             # %if.end.134
	jmp	.LBB153_60
.LBB153_60:                             # %if.end.135
	jmp	.LBB153_61
.LBB153_61:                             # %if.end.136
	jmp	.LBB153_62
.LBB153_62:                             # %if.end.137
	jmp	.LBB153_63
.LBB153_63:                             # %if.end.138
	jmp	.LBB153_64
.LBB153_64:                             # %if.end.139
	movq	$-1, %rsi
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rdi
	callq	g_utf8_strlen
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
.LBB153_65:                             # %return
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end153:
	.size	atom2str, .Lfunc_end153-atom2str
	.cfi_endproc

	.align	16, 0x90
	.type	binary_decode,@function
binary_decode:                          # @binary_decode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp462:
	.cfi_def_cfa_offset 16
.Ltmp463:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp464:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
.LBB154_1:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -17(%rbp)          # 1-byte Spill
	je	.LBB154_5
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB154_1 Depth=1
	movb	$1, %al
	movq	-8(%rbp), %rcx
	movsbl	(%rcx), %edx
	cmpl	$49, %edx
	movb	%al, -18(%rbp)          # 1-byte Spill
	je	.LBB154_4
# BB#3:                                 # %lor.rhs
                                        #   in Loop: Header=BB154_1 Depth=1
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$48, %ecx
	sete	%dl
	movb	%dl, -18(%rbp)          # 1-byte Spill
.LBB154_4:                              # %lor.end
                                        #   in Loop: Header=BB154_1 Depth=1
	movb	-18(%rbp), %al          # 1-byte Reload
	movb	%al, -17(%rbp)          # 1-byte Spill
.LBB154_5:                              # %land.end
                                        #   in Loop: Header=BB154_1 Depth=1
	movb	-17(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB154_6
	jmp	.LBB154_7
.LBB154_6:                              # %while.body
                                        #   in Loop: Header=BB154_1 Depth=1
	movq	-16(%rbp), %rax
	shlq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rax
	addq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB154_1
.LBB154_7:                              # %while.end
	movq	-16(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end154:
	.size	binary_decode, .Lfunc_end154-binary_decode
	.cfi_endproc

	.align	16, 0x90
	.type	printslashstring,@function
printslashstring:                       # @printslashstring
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp465:
	.cfi_def_cfa_offset 16
.Ltmp466:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp467:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	$34, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	callq	putcharacter
	movl	$0, -24(%rbp)
.LBB155_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB155_23
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB155_1 Depth=1
	movq	-40(%rbp), %rdi
	callq	g_utf8_get_char
	movl	%eax, -28(%rbp)
	cmpl	$255, -28(%rbp)
	je	.LBB155_6
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB155_1 Depth=1
	cmpl	$34, -28(%rbp)
	je	.LBB155_6
# BB#4:                                 # %lor.lhs.false.3
                                        #   in Loop: Header=BB155_1 Depth=1
	cmpl	$32, -28(%rbp)
	jb	.LBB155_6
# BB#5:                                 # %lor.lhs.false.5
                                        #   in Loop: Header=BB155_1 Depth=1
	cmpl	$92, -28(%rbp)
	jne	.LBB155_20
.LBB155_6:                              # %if.then
                                        #   in Loop: Header=BB155_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	$92, %esi
	callq	putcharacter
	movl	-28(%rbp), %esi
	movl	%esi, %eax
	subl	$9, %eax
	movl	%esi, -48(%rbp)         # 4-byte Spill
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB155_9
	jmp	.LBB155_24
.LBB155_24:                             # %if.then
                                        #   in Loop: Header=BB155_1 Depth=1
	movl	-48(%rbp), %eax         # 4-byte Reload
	subl	$10, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB155_8
	jmp	.LBB155_25
.LBB155_25:                             # %if.then
                                        #   in Loop: Header=BB155_1 Depth=1
	movl	-48(%rbp), %eax         # 4-byte Reload
	subl	$13, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB155_10
	jmp	.LBB155_26
.LBB155_26:                             # %if.then
                                        #   in Loop: Header=BB155_1 Depth=1
	movl	-48(%rbp), %eax         # 4-byte Reload
	subl	$34, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB155_7
	jmp	.LBB155_27
.LBB155_27:                             # %if.then
                                        #   in Loop: Header=BB155_1 Depth=1
	movl	-48(%rbp), %eax         # 4-byte Reload
	subl	$92, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB155_11
	jmp	.LBB155_12
.LBB155_7:                              # %sw.bb
                                        #   in Loop: Header=BB155_1 Depth=1
	movl	$34, %esi
	movq	-8(%rbp), %rdi
	callq	putcharacter
	jmp	.LBB155_19
.LBB155_8:                              # %sw.bb.7
                                        #   in Loop: Header=BB155_1 Depth=1
	movl	$110, %esi
	movq	-8(%rbp), %rdi
	callq	putcharacter
	jmp	.LBB155_19
.LBB155_9:                              # %sw.bb.8
                                        #   in Loop: Header=BB155_1 Depth=1
	movl	$116, %esi
	movq	-8(%rbp), %rdi
	callq	putcharacter
	jmp	.LBB155_19
.LBB155_10:                             # %sw.bb.9
                                        #   in Loop: Header=BB155_1 Depth=1
	movl	$114, %esi
	movq	-8(%rbp), %rdi
	callq	putcharacter
	jmp	.LBB155_19
.LBB155_11:                             # %sw.bb.10
                                        #   in Loop: Header=BB155_1 Depth=1
	movl	$92, %esi
	movq	-8(%rbp), %rdi
	callq	putcharacter
	jmp	.LBB155_19
.LBB155_12:                             # %sw.default
                                        #   in Loop: Header=BB155_1 Depth=1
	movl	$120, %esi
	movl	-28(%rbp), %eax
	shrl	$4, %eax
	movl	%eax, -44(%rbp)
	movq	-8(%rbp), %rdi
	callq	putcharacter
	cmpl	$10, -44(%rbp)
	jge	.LBB155_14
# BB#13:                                # %if.then.12
                                        #   in Loop: Header=BB155_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	-44(%rbp), %eax
	addl	$48, %eax
	movl	%eax, %esi
	callq	putcharacter
	jmp	.LBB155_15
.LBB155_14:                             # %if.else
                                        #   in Loop: Header=BB155_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	-44(%rbp), %eax
	subl	$10, %eax
	addl	$65, %eax
	movl	%eax, %esi
	callq	putcharacter
.LBB155_15:                             # %if.end
                                        #   in Loop: Header=BB155_1 Depth=1
	movl	-28(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -44(%rbp)
	cmpl	$10, -44(%rbp)
	jge	.LBB155_17
# BB#16:                                # %if.then.15
                                        #   in Loop: Header=BB155_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	-44(%rbp), %eax
	addl	$48, %eax
	movl	%eax, %esi
	callq	putcharacter
	jmp	.LBB155_18
.LBB155_17:                             # %if.else.17
                                        #   in Loop: Header=BB155_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	-44(%rbp), %eax
	subl	$10, %eax
	addl	$65, %eax
	movl	%eax, %esi
	callq	putcharacter
.LBB155_18:                             # %if.end.20
                                        #   in Loop: Header=BB155_1 Depth=1
	jmp	.LBB155_19
.LBB155_19:                             # %sw.epilog
                                        #   in Loop: Header=BB155_1 Depth=1
	jmp	.LBB155_21
.LBB155_20:                             # %if.else.21
                                        #   in Loop: Header=BB155_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	putcharacter
.LBB155_21:                             # %if.end.22
                                        #   in Loop: Header=BB155_1 Depth=1
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	movq	g_utf8_skip, %rsi
	movsbl	(%rsi,%rcx), %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
# BB#22:                                # %for.inc
                                        #   in Loop: Header=BB155_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB155_1
.LBB155_23:                             # %for.end
	movl	$34, %esi
	movq	-8(%rbp), %rdi
	callq	putcharacter
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end155:
	.size	printslashstring, .Lfunc_end155-printslashstring
	.cfi_endproc

	.align	16, 0x90
	.type	procname,@function
procname:                               # @procname
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp468:
	.cfi_def_cfa_offset 16
.Ltmp469:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp470:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	ivalue
	movabsq	$dispatch_table, %rdi
	movl	%eax, %ecx
	movl	%ecx, -12(%rbp)
	movslq	-12(%rbp), %rax
	shlq	$5, %rax
	addq	%rax, %rdi
	movq	8(%rdi), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB156_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.249, %rax
	movq	%rax, -24(%rbp)
.LBB156_2:                              # %if.end
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end156:
	.size	procname, .Lfunc_end156-procname
	.cfi_endproc

	.align	16, 0x90
	.type	num_lt,@function
num_lt:                                 # @num_lt
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp471:
	.cfi_def_cfa_offset 16
.Ltmp472:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp473:
	.cfi_def_cfa_register %rbp
	movb	%dl, %al
	movb	%dil, %r8b
	xorl	%edx, %edx
	movb	%dl, %r9b
	movb	%r8b, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movb	%al, -32(%rbp)
	movq	%rcx, -24(%rbp)
	movsbl	-16(%rbp), %edx
	cmpl	$0, %edx
	movb	%r9b, -41(%rbp)         # 1-byte Spill
	je	.LBB157_2
# BB#1:                                 # %land.rhs
	movsbl	-32(%rbp), %eax
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -41(%rbp)          # 1-byte Spill
.LBB157_2:                              # %land.end
	movb	-41(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB157_4
# BB#3:                                 # %if.then
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -36(%rbp)
	jmp	.LBB157_11
.LBB157_4:                              # %if.else
	cmpb	$0, -16(%rbp)
	jne	.LBB157_6
# BB#5:                                 # %cond.true
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB157_7
.LBB157_6:                              # %cond.false
	cvtsi2sdq	-8(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
.LBB157_7:                              # %cond.end
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cmpb	$0, -32(%rbp)
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jne	.LBB157_9
# BB#8:                                 # %cond.true.17
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB157_10
.LBB157_9:                              # %cond.false.20
	cvtsi2sdq	-24(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
.LBB157_10:                             # %cond.end.24
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	seta	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -36(%rbp)
.LBB157_11:                             # %if.end
	movl	-36(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end157:
	.size	num_lt, .Lfunc_end157-num_lt
	.cfi_endproc

	.align	16, 0x90
	.type	num_gt,@function
num_gt:                                 # @num_gt
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp474:
	.cfi_def_cfa_offset 16
.Ltmp475:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp476:
	.cfi_def_cfa_register %rbp
	movb	%dl, %al
	movb	%dil, %r8b
	xorl	%edx, %edx
	movb	%dl, %r9b
	movb	%r8b, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movb	%al, -32(%rbp)
	movq	%rcx, -24(%rbp)
	movsbl	-16(%rbp), %edx
	cmpl	$0, %edx
	movb	%r9b, -41(%rbp)         # 1-byte Spill
	je	.LBB158_2
# BB#1:                                 # %land.rhs
	movsbl	-32(%rbp), %eax
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -41(%rbp)          # 1-byte Spill
.LBB158_2:                              # %land.end
	movb	-41(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB158_4
# BB#3:                                 # %if.then
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	setg	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -36(%rbp)
	jmp	.LBB158_11
.LBB158_4:                              # %if.else
	cmpb	$0, -16(%rbp)
	jne	.LBB158_6
# BB#5:                                 # %cond.true
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB158_7
.LBB158_6:                              # %cond.false
	cvtsi2sdq	-8(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
.LBB158_7:                              # %cond.end
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cmpb	$0, -32(%rbp)
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jne	.LBB158_9
# BB#8:                                 # %cond.true.17
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB158_10
.LBB158_9:                              # %cond.false.20
	cvtsi2sdq	-24(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
.LBB158_10:                             # %cond.end.24
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	seta	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -36(%rbp)
.LBB158_11:                             # %if.end
	movl	-36(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end158:
	.size	num_gt, .Lfunc_end158-num_gt
	.cfi_endproc

	.align	16, 0x90
	.type	num_le,@function
num_le:                                 # @num_le
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp477:
	.cfi_def_cfa_offset 16
.Ltmp478:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp479:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movb	%dl, %al
	movb	%dil, %r8b
	movb	%r8b, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movb	%al, -32(%rbp)
	movq	%rcx, -24(%rbp)
	movb	-16(%rbp), %al
	movq	-8(%rbp), %rsi
	movb	-32(%rbp), %r8b
	movq	-24(%rbp), %rcx
	movzbl	%al, %edi
	movzbl	%r8b, %edx
	callq	num_gt
	cmpl	$0, %eax
	setne	%r8b
	xorb	$-1, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end159:
	.size	num_le, .Lfunc_end159-num_le
	.cfi_endproc

	.align	16, 0x90
	.type	num_ge,@function
num_ge:                                 # @num_ge
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp480:
	.cfi_def_cfa_offset 16
.Ltmp481:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp482:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movb	%dl, %al
	movb	%dil, %r8b
	movb	%r8b, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movb	%al, -32(%rbp)
	movq	%rcx, -24(%rbp)
	movb	-16(%rbp), %al
	movq	-8(%rbp), %rsi
	movb	-32(%rbp), %r8b
	movq	-24(%rbp), %rcx
	movzbl	%al, %edi
	movzbl	%r8b, %edx
	callq	num_lt
	cmpl	$0, %eax
	setne	%r8b
	xorb	$-1, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end160:
	.size	num_ge, .Lfunc_end160-num_ge
	.cfi_endproc

	.align	16, 0x90
	.type	Cisalpha,@function
Cisalpha:                               # @Cisalpha
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp483:
	.cfi_def_cfa_offset 16
.Ltmp484:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp485:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	g_unichar_isalpha
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end161:
	.size	Cisalpha, .Lfunc_end161-Cisalpha
	.cfi_endproc

	.align	16, 0x90
	.type	Cisdigit,@function
Cisdigit:                               # @Cisdigit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp486:
	.cfi_def_cfa_offset 16
.Ltmp487:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp488:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	g_unichar_isdigit
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end162:
	.size	Cisdigit, .Lfunc_end162-Cisdigit
	.cfi_endproc

	.align	16, 0x90
	.type	Cisspace,@function
Cisspace:                               # @Cisspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp489:
	.cfi_def_cfa_offset 16
.Ltmp490:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp491:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	g_unichar_isspace
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end163:
	.size	Cisspace, .Lfunc_end163-Cisspace
	.cfi_endproc

	.align	16, 0x90
	.type	Cisupper,@function
Cisupper:                               # @Cisupper
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp492:
	.cfi_def_cfa_offset 16
.Ltmp493:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp494:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	g_unichar_isupper
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end164:
	.size	Cisupper, .Lfunc_end164-Cisupper
	.cfi_endproc

	.align	16, 0x90
	.type	Cislower,@function
Cislower:                               # @Cislower
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp495:
	.cfi_def_cfa_offset 16
.Ltmp496:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp497:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	g_unichar_islower
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end165:
	.size	Cislower, .Lfunc_end165-Cislower
	.cfi_endproc

	.align	16, 0x90
	.type	reverse,@function
reverse:                                # @reverse
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp498:
	.cfi_def_cfa_offset 16
.Ltmp499:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp500:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	936(%rsi), %rsi
	movq	%rsi, -24(%rbp)
.LBB166_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	is_pair
	cmpl	$0, %eax
	je	.LBB166_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB166_1 Depth=1
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-24(%rbp), %rdx
	callq	_cons
	movq	%rax, -24(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB166_1 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB166_1
.LBB166_4:                              # %for.end
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end166:
	.size	reverse, .Lfunc_end166-reverse
	.cfi_endproc

	.align	16, 0x90
	.type	revappend,@function
revappend:                              # @revappend
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp501:
	.cfi_def_cfa_offset 16
.Ltmp502:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp503:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, -48(%rbp)
.LBB167_1:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rdi
	callq	is_pair
	cmpl	$0, %eax
	je	.LBB167_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB167_1 Depth=1
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-40(%rbp), %rdx
	callq	_cons
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB167_1
.LBB167_3:                              # %while.end
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	jne	.LBB167_5
# BB#4:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB167_6
.LBB167_5:                              # %if.end
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB167_6:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end167:
	.size	revappend, .Lfunc_end167-revappend
	.cfi_endproc

	.align	16, 0x90
	.type	oblist_all_symbols,@function
oblist_all_symbols:                     # @oblist_all_symbols
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp504:
	.cfi_def_cfa_offset 16
.Ltmp505:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp506:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	936(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movl	$0, -12(%rbp)
.LBB168_1:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB168_3 Depth 2
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	1040(%rcx), %rcx
	cmpq	16(%rcx), %rax
	jge	.LBB168_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB168_1 Depth=1
	movq	-8(%rbp), %rax
	movq	1040(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	vector_elem
	movq	%rax, -24(%rbp)
.LBB168_3:                              # %for.cond.3
                                        #   Parent Loop BB168_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	936(%rcx), %rax
	je	.LBB168_6
# BB#4:                                 # %for.body.7
                                        #   in Loop: Header=BB168_3 Depth=2
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	_cons
	movq	%rax, -32(%rbp)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB168_3 Depth=2
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB168_3
.LBB168_6:                              # %for.end
                                        #   in Loop: Header=BB168_1 Depth=1
	jmp	.LBB168_7
.LBB168_7:                              # %for.inc.10
                                        #   in Loop: Header=BB168_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB168_1
.LBB168_8:                              # %for.end.11
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end168:
	.size	oblist_all_symbols, .Lfunc_end168-oblist_all_symbols
	.cfi_endproc

	.align	16, 0x90
	.type	port_from_filename,@function
port_from_filename:                     # @port_from_filename
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp507:
	.cfi_def_cfa_offset 16
.Ltmp508:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp509:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	callq	port_rep_from_filename
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB169_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB169_3
.LBB169_2:                              # %if.end
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	mk_port
	movq	%rax, -8(%rbp)
.LBB169_3:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end169:
	.size	port_from_filename, .Lfunc_end169-port_from_filename
	.cfi_endproc

	.align	16, 0x90
	.type	port_from_scratch,@function
port_from_scratch:                      # @port_from_scratch
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp510:
	.cfi_def_cfa_offset 16
.Ltmp511:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp512:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	port_rep_from_scratch
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB170_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB170_3
.LBB170_2:                              # %if.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	mk_port
	movq	%rax, -8(%rbp)
.LBB170_3:                              # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end170:
	.size	port_from_scratch, .Lfunc_end170-port_from_scratch
	.cfi_endproc

	.align	16, 0x90
	.type	port_rep_from_filename,@function
port_rep_from_filename:                 # @port_rep_from_filename
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp513:
	.cfi_def_cfa_offset 16
.Ltmp514:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp515:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	cmpl	$48, -28(%rbp)
	jne	.LBB171_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.255, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB171_6
.LBB171_2:                              # %if.else
	cmpl	$32, -28(%rbp)
	jne	.LBB171_4
# BB#3:                                 # %if.then.2
	movabsq	$.L.str.256, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB171_5
.LBB171_4:                              # %if.else.3
	movabsq	$.L.str.190, %rax
	movq	%rax, -48(%rbp)
.LBB171_5:                              # %if.end
	jmp	.LBB171_6
.LBB171_6:                              # %if.end.4
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	fopen
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB171_8
# BB#7:                                 # %if.then.6
	movq	$0, -8(%rbp)
	jmp	.LBB171_11
.LBB171_8:                              # %if.end.7
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-28(%rbp), %edx
	callq	port_rep_from_file
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	$1, 16(%rax)
	cmpq	$0, -24(%rbp)
	je	.LBB171_10
# BB#9:                                 # %if.then.9
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	callq	strlen
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	%ecx, %esi
	movl	-68(%rbp), %ecx         # 4-byte Reload
	callq	store_string
	movq	-56(%rbp), %rdx
	movq	%rax, 24(%rdx)
.LBB171_10:                             # %if.end.14
	movq	-56(%rbp), %rax
	movl	$0, 20(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB171_11:                             # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end171:
	.size	port_rep_from_filename, .Lfunc_end171-port_rep_from_filename
	.cfi_endproc

	.align	16, 0x90
	.type	port_rep_from_file,@function
port_rep_from_file:                     # @port_rep_from_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp516:
	.cfi_def_cfa_offset 16
.Ltmp517:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp518:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$32, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	callq	*(%rsi)
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB172_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB172_3
.LBB172_2:                              # %if.end
	movl	-28(%rbp), %eax
	orl	$1, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movb	%cl, (%rdx)
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	%rdx, 8(%rsi)
	movq	-40(%rbp), %rdx
	movl	$0, 16(%rdx)
	movq	-40(%rbp), %rdx
	movq	%rdx, -8(%rbp)
.LBB172_3:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end172:
	.size	port_rep_from_file, .Lfunc_end172-port_rep_from_file
	.cfi_endproc

	.align	16, 0x90
	.type	port_rep_from_scratch,@function
port_rep_from_scratch:                  # @port_rep_from_scratch
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp519:
	.cfi_def_cfa_offset 16
.Ltmp520:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp521:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$32, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-40(%rbp), %rcx         # 8-byte Reload
	callq	*(%rcx)
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB173_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB173_5
.LBB173_2:                              # %if.end
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %edi
	movq	-16(%rbp), %rcx
	callq	*(%rcx)
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB173_4
# BB#3:                                 # %if.then.4
	movq	$0, -8(%rbp)
	jmp	.LBB173_5
.LBB173_4:                              # %if.end.5
	movl	$32, %esi
	movl	$255, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	callq	memset
	movq	-32(%rbp), %rdx
	movb	$0, 255(%rdx)
	movq	-24(%rbp), %rdx
	movb	$38, (%rdx)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdx, 8(%rdi)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdx, 24(%rdi)
	movq	-32(%rbp), %rdx
	addq	$256, %rdx              # imm = 0x100
	addq	$-1, %rdx
	movq	-24(%rbp), %rdi
	movq	%rdx, 16(%rdi)
	movq	-24(%rbp), %rdx
	movq	%rdx, -8(%rbp)
.LBB173_5:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end173:
	.size	port_rep_from_scratch, .Lfunc_end173-port_rep_from_scratch
	.cfi_endproc

	.align	16, 0x90
	.type	readstr_upto,@function
readstr_upto:                           # @readstr_upto
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp522:
	.cfi_def_cfa_offset 16
.Ltmp523:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp524:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	addq	$4530, %rsi             # imm = 0x11B2
	movq	%rsi, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB174_1:                              # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	inchar
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %edi
	movq	-24(%rbp), %rsi
	callq	g_unichar_to_utf8
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rsi
	movslq	%eax, %rcx
	addq	%rcx, %rsi
	movq	%rsi, -24(%rbp)
# BB#2:                                 # %do.cond
                                        #   in Loop: Header=BB174_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	addq	$4530, %rsi             # imm = 0x11B2
	subq	%rsi, %rdx
	cmpq	$1024, %rdx             # imm = 0x400
	movb	%cl, -37(%rbp)          # 1-byte Spill
	jae	.LBB174_6
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB174_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -28(%rbp)
	movb	%cl, -38(%rbp)          # 1-byte Spill
	je	.LBB174_5
# BB#4:                                 # %land.rhs.4
                                        #   in Loop: Header=BB174_1 Depth=1
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	is_one_of
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	movb	%cl, -38(%rbp)          # 1-byte Spill
.LBB174_5:                              # %land.end
                                        #   in Loop: Header=BB174_1 Depth=1
	movb	-38(%rbp), %al          # 1-byte Reload
	movb	%al, -37(%rbp)          # 1-byte Spill
.LBB174_6:                              # %land.end.7
                                        #   in Loop: Header=BB174_1 Depth=1
	movb	-37(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB174_1
# BB#7:                                 # %do.end
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$4530, %rcx             # imm = 0x11B2
	addq	$2, %rcx
	cmpq	%rcx, %rax
	jne	.LBB174_10
# BB#8:                                 # %land.lhs.true
	cmpl	$92, -32(%rbp)
	jne	.LBB174_10
# BB#9:                                 # %if.then
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	jmp	.LBB174_11
.LBB174_10:                             # %if.else
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	backchar
	xorl	%esi, %esi
	subl	-36(%rbp), %esi
	movslq	%esi, %rdi
	movq	-24(%rbp), %rax
	movb	$0, (%rax,%rdi)
.LBB174_11:                             # %if.end
	movq	-8(%rbp), %rax
	addq	$4530, %rax             # imm = 0x11B2
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end174:
	.size	readstr_upto, .Lfunc_end174-readstr_upto
	.cfi_endproc

	.align	16, 0x90
	.type	readstrexp,@function
readstrexp:                             # @readstrexp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp525:
	.cfi_def_cfa_offset 16
.Ltmp526:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp527:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	addq	$4530, %rdi             # imm = 0x11B2
	movq	%rdi, -24(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -40(%rbp)
.LBB175_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	inchar
	movl	%eax, -28(%rbp)
	cmpl	$-1, -28(%rbp)
	je	.LBB175_3
# BB#2:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB175_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$4530, %rcx             # imm = 0x11B2
	subq	%rcx, %rax
	cmpq	$1023, %rax             # imm = 0x3FF
	jbe	.LBB175_4
.LBB175_3:                              # %if.then
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB175_37
.LBB175_4:                              # %if.end
                                        #   in Loop: Header=BB175_1 Depth=1
	movl	-40(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$5, %rdx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	ja	.LBB175_36
# BB#38:                                # %if.end
                                        #   in Loop: Header=BB175_1 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	.LJTI175_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB175_5:                              # %sw.bb
                                        #   in Loop: Header=BB175_1 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	subl	$34, %ecx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	je	.LBB175_7
	jmp	.LBB175_45
.LBB175_45:                             # %sw.bb
                                        #   in Loop: Header=BB175_1 Depth=1
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$92, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jne	.LBB175_8
	jmp	.LBB175_6
.LBB175_6:                              # %sw.bb.4
                                        #   in Loop: Header=BB175_1 Depth=1
	movl	$1, -40(%rbp)
	jmp	.LBB175_9
.LBB175_7:                              # %sw.bb.5
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movb	$0, (%rcx)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rcx
	addq	$4530, %rcx             # imm = 0x11B2
	movq	-16(%rbp), %rdx
	addq	$4530, %rdx             # imm = 0x11B2
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	g_utf8_strlen
	movl	%eax, %r8d
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movl	%r8d, %edx
	callq	mk_counted_string
	movq	%rax, -8(%rbp)
	jmp	.LBB175_37
.LBB175_8:                              # %sw.default
                                        #   in Loop: Header=BB175_1 Depth=1
	movl	-28(%rbp), %edi
	movq	-24(%rbp), %rsi
	callq	g_unichar_to_utf8
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rsi
	movslq	%eax, %rcx
	addq	%rcx, %rsi
	movq	%rsi, -24(%rbp)
.LBB175_9:                              # %sw.epilog
                                        #   in Loop: Header=BB175_1 Depth=1
	jmp	.LBB175_36
.LBB175_10:                             # %sw.bb.13
                                        #   in Loop: Header=BB175_1 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	subl	$34, %ecx
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movl	%ecx, -96(%rbp)         # 4-byte Spill
	je	.LBB175_16
	jmp	.LBB175_39
.LBB175_39:                             # %sw.bb.13
                                        #   in Loop: Header=BB175_1 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	addl	$-48, %eax
	subl	$8, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jb	.LBB175_11
	jmp	.LBB175_40
.LBB175_40:                             # %sw.bb.13
                                        #   in Loop: Header=BB175_1 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$88, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB175_12
	jmp	.LBB175_41
.LBB175_41:                             # %sw.bb.13
                                        #   in Loop: Header=BB175_1 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$110, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB175_13
	jmp	.LBB175_42
.LBB175_42:                             # %sw.bb.13
                                        #   in Loop: Header=BB175_1 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$114, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB175_15
	jmp	.LBB175_43
.LBB175_43:                             # %sw.bb.13
                                        #   in Loop: Header=BB175_1 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$116, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB175_14
	jmp	.LBB175_44
.LBB175_44:                             # %sw.bb.13
                                        #   in Loop: Header=BB175_1 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$120, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	je	.LBB175_12
	jmp	.LBB175_17
.LBB175_11:                             # %sw.bb.14
                                        #   in Loop: Header=BB175_1 Depth=1
	movl	$4, -40(%rbp)
	movl	-28(%rbp), %edi
	callq	g_unichar_digit_value
	movl	%eax, -32(%rbp)
	jmp	.LBB175_18
.LBB175_12:                             # %sw.bb.16
                                        #   in Loop: Header=BB175_1 Depth=1
	movl	$2, -40(%rbp)
	movl	$0, -32(%rbp)
	jmp	.LBB175_18
.LBB175_13:                             # %sw.bb.17
                                        #   in Loop: Header=BB175_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$10, (%rax)
	movl	$0, -40(%rbp)
	jmp	.LBB175_18
.LBB175_14:                             # %sw.bb.18
                                        #   in Loop: Header=BB175_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$9, (%rax)
	movl	$0, -40(%rbp)
	jmp	.LBB175_18
.LBB175_15:                             # %sw.bb.20
                                        #   in Loop: Header=BB175_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$13, (%rax)
	movl	$0, -40(%rbp)
	jmp	.LBB175_18
.LBB175_16:                             # %sw.bb.22
                                        #   in Loop: Header=BB175_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$34, (%rax)
	movl	$0, -40(%rbp)
	jmp	.LBB175_18
.LBB175_17:                             # %sw.default.24
                                        #   in Loop: Header=BB175_1 Depth=1
	movl	-28(%rbp), %edi
	movq	-24(%rbp), %rsi
	callq	g_unichar_to_utf8
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rsi
	movslq	%eax, %rcx
	addq	%rcx, %rsi
	movq	%rsi, -24(%rbp)
	movl	$0, -40(%rbp)
.LBB175_18:                             # %sw.epilog.28
                                        #   in Loop: Header=BB175_1 Depth=1
	jmp	.LBB175_36
.LBB175_19:                             # %sw.bb.29
                                        #   in Loop: Header=BB175_1 Depth=1
	movl	-28(%rbp), %edi
	callq	g_unichar_isxdigit
	cmpl	$0, %eax
	jne	.LBB175_21
# BB#20:                                # %if.then.31
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB175_37
.LBB175_21:                             # %if.end.33
                                        #   in Loop: Header=BB175_1 Depth=1
	movl	-32(%rbp), %eax
	shll	$4, %eax
	movl	-28(%rbp), %edi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	g_unichar_xdigit_value
	movl	-124(%rbp), %edi        # 4-byte Reload
	addl	%eax, %edi
	movl	%edi, -32(%rbp)
	cmpl	$2, -40(%rbp)
	jne	.LBB175_23
# BB#22:                                # %if.then.37
                                        #   in Loop: Header=BB175_1 Depth=1
	movl	$3, -40(%rbp)
	jmp	.LBB175_24
.LBB175_23:                             # %if.else
                                        #   in Loop: Header=BB175_1 Depth=1
	movl	-32(%rbp), %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -24(%rbp)
	movb	%cl, (%rdx)
	movl	$0, -40(%rbp)
.LBB175_24:                             # %if.end.40
                                        #   in Loop: Header=BB175_1 Depth=1
	jmp	.LBB175_36
.LBB175_25:                             # %sw.bb.41
                                        #   in Loop: Header=BB175_1 Depth=1
	movl	-28(%rbp), %edi
	callq	g_unichar_isdigit
	cmpl	$0, %eax
	je	.LBB175_27
# BB#26:                                # %lor.lhs.false.44
                                        #   in Loop: Header=BB175_1 Depth=1
	movl	-28(%rbp), %edi
	callq	g_unichar_digit_value
	cmpl	$7, %eax
	jle	.LBB175_28
.LBB175_27:                             # %if.then.48
                                        #   in Loop: Header=BB175_1 Depth=1
	movl	-32(%rbp), %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -24(%rbp)
	movb	%cl, (%rdx)
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	backchar
	movl	$0, -40(%rbp)
	jmp	.LBB175_35
.LBB175_28:                             # %if.else.51
                                        #   in Loop: Header=BB175_1 Depth=1
	cmpl	$5, -40(%rbp)
	jne	.LBB175_31
# BB#29:                                # %land.lhs.true
                                        #   in Loop: Header=BB175_1 Depth=1
	cmpl	$32, -32(%rbp)
	jl	.LBB175_31
# BB#30:                                # %if.then.56
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB175_37
.LBB175_31:                             # %if.end.58
                                        #   in Loop: Header=BB175_1 Depth=1
	movl	-32(%rbp), %eax
	shll	$3, %eax
	movl	-28(%rbp), %edi
	movl	%eax, -128(%rbp)        # 4-byte Spill
	callq	g_unichar_digit_value
	movl	-128(%rbp), %edi        # 4-byte Reload
	addl	%eax, %edi
	movl	%edi, -32(%rbp)
	cmpl	$4, -40(%rbp)
	jne	.LBB175_33
# BB#32:                                # %if.then.64
                                        #   in Loop: Header=BB175_1 Depth=1
	movl	$5, -40(%rbp)
	jmp	.LBB175_34
.LBB175_33:                             # %if.else.65
                                        #   in Loop: Header=BB175_1 Depth=1
	movl	-32(%rbp), %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -24(%rbp)
	movb	%cl, (%rdx)
	movl	$0, -40(%rbp)
.LBB175_34:                             # %if.end.68
                                        #   in Loop: Header=BB175_1 Depth=1
	jmp	.LBB175_35
.LBB175_35:                             # %if.end.69
                                        #   in Loop: Header=BB175_1 Depth=1
	jmp	.LBB175_36
.LBB175_36:                             # %sw.epilog.70
                                        #   in Loop: Header=BB175_1 Depth=1
	jmp	.LBB175_1
.LBB175_37:                             # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end175:
	.size	readstrexp, .Lfunc_end175-readstrexp
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI175_0:
	.quad	.LBB175_5
	.quad	.LBB175_10
	.quad	.LBB175_19
	.quad	.LBB175_19
	.quad	.LBB175_25
	.quad	.LBB175_25

	.text
	.align	16, 0x90
	.type	printatom,@function
printatom:                              # @printatom
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp528:
	.cfi_def_cfa_offset 16
.Ltmp529:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp530:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-32(%rbp), %rcx
	leaq	-36(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	atom2str
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %edx
	callq	putchars
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end176:
	.size	printatom, .Lfunc_end176-printatom
	.cfi_endproc

	.align	16, 0x90
	.type	mk_proc,@function
mk_proc:                                # @mk_proc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp531:
	.cfi_def_cfa_offset 16
.Ltmp532:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp533:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	936(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	936(%rax), %rdx
	callq	get_cell
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$16388, (%rax)          # imm = 0x4004
	movl	-12(%rbp), %ecx
	movl	%ecx, %eax
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movb	$1, 8(%rax)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end177:
	.size	mk_proc, .Lfunc_end177-mk_proc
	.cfi_endproc

	.align	16, 0x90
	.type	port_rep_from_string,@function
port_rep_from_string:                   # @port_rep_from_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp534:
	.cfi_def_cfa_offset 16
.Ltmp535:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp536:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$32, %eax
	movl	%eax, %r8d
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	-16(%rbp), %rdx
	movq	%r8, %rdi
	callq	*(%rdx)
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB178_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB178_3
.LBB178_2:                              # %if.end
	movl	-36(%rbp), %eax
	orl	$2, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movb	%cl, (%rdx)
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	%rdx, 8(%rsi)
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	%rdx, 24(%rsi)
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	%rdx, 16(%rsi)
	movq	-48(%rbp), %rdx
	movq	%rdx, -8(%rbp)
.LBB178_3:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end178:
	.size	port_rep_from_string, .Lfunc_end178-port_rep_from_string
	.cfi_endproc

	.align	16, 0x90
	.type	mark,@function
mark:                                   # @mark
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp537:
	.cfi_def_cfa_offset 16
.Ltmp538:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp539:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)
.LBB179_1:                              # %E2
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB179_3 Depth 2
                                        #     Child Loop BB179_17 Depth 2
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	orl	$32768, %ecx            # imm = 0x8000
	movl	%ecx, (%rax)
	movq	-32(%rbp), %rdi
	callq	is_vector
	cmpl	$0, %eax
	je	.LBB179_7
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB179_1 Depth=1
	movl	$2, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	16(%rdx), %rax
	cqto
	idivq	%rcx
	movq	-32(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rsi, %rax
	cqto
	idivq	%rcx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	addq	%rdx, %rcx
	movl	%ecx, %edi
	movl	%edi, -40(%rbp)
	movl	$0, -36(%rbp)
.LBB179_3:                              # %for.cond
                                        #   Parent Loop BB179_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB179_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB179_3 Depth=2
	movq	-32(%rbp), %rax
	addq	$24, %rax
	movslq	-36(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	callq	mark
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB179_3 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB179_3
.LBB179_6:                              # %for.end
                                        #   in Loop: Header=BB179_1 Depth=1
	jmp	.LBB179_7
.LBB179_7:                              # %if.end
                                        #   in Loop: Header=BB179_1 Depth=1
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	andl	$16384, %ecx            # imm = 0x4000
	cmpl	$0, %ecx
	je	.LBB179_9
# BB#8:                                 # %if.then.9
                                        #   in Loop: Header=BB179_1 Depth=1
	jmp	.LBB179_17
.LBB179_9:                              # %if.end.10
                                        #   in Loop: Header=BB179_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB179_12
# BB#10:                                # %land.lhs.true
                                        #   in Loop: Header=BB179_1 Depth=1
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	andl	$32768, %ecx            # imm = 0x8000
	cmpl	$0, %ecx
	jne	.LBB179_12
# BB#11:                                # %if.then.16
                                        #   in Loop: Header=BB179_1 Depth=1
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	orl	$16384, %ecx            # imm = 0x4000
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB179_1
.LBB179_12:                             # %if.end.22
                                        #   in Loop: Header=BB179_1 Depth=1
	jmp	.LBB179_13
.LBB179_13:                             # %E5
                                        #   in Loop: Header=BB179_1 Depth=1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB179_16
# BB#14:                                # %land.lhs.true.26
                                        #   in Loop: Header=BB179_1 Depth=1
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	andl	$32768, %ecx            # imm = 0x8000
	cmpl	$0, %ecx
	jne	.LBB179_16
# BB#15:                                # %if.then.30
                                        #   in Loop: Header=BB179_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB179_1
.LBB179_16:                             # %if.end.34
                                        #   in Loop: Header=BB179_1 Depth=1
	jmp	.LBB179_17
.LBB179_17:                             # %E6
                                        #   Parent Loop BB179_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -16(%rbp)
	jne	.LBB179_19
# BB#18:                                # %if.then.36
	addq	$48, %rsp
	popq	%rbp
	retq
.LBB179_19:                             # %if.end.37
                                        #   in Loop: Header=BB179_17 Depth=2
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	andl	$16384, %ecx            # imm = 0x4000
	cmpl	$0, %ecx
	je	.LBB179_21
# BB#20:                                # %if.then.41
                                        #   in Loop: Header=BB179_1 Depth=1
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	andl	$49151, %ecx            # imm = 0xBFFF
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB179_13
.LBB179_21:                             # %if.else
                                        #   in Loop: Header=BB179_17 Depth=2
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB179_17
.Lfunc_end179:
	.size	mark, .Lfunc_end179-mark
	.cfi_endproc

	.align	16, 0x90
	.type	dump_stack_mark,@function
dump_stack_mark:                        # @dump_stack_mark
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp540:
	.cfi_def_cfa_offset 16
.Ltmp541:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp542:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	856(%rdi), %rdi
	callq	mark
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end180:
	.size	dump_stack_mark, .Lfunc_end180-dump_stack_mark
	.cfi_endproc

	.align	16, 0x90
	.type	finalize_cell,@function
finalize_cell:                          # @finalize_cell
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp543:
	.cfi_def_cfa_offset 16
.Ltmp544:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp545:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	is_string
	cmpl	$0, %eax
	je	.LBB181_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	*%rax
	jmp	.LBB181_8
.LBB181_2:                              # %if.else
	movq	-16(%rbp), %rdi
	callq	is_port
	cmpl	$0, %eax
	je	.LBB181_7
# BB#3:                                 # %if.then.3
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB181_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpl	$0, 16(%rax)
	je	.LBB181_6
# BB#5:                                 # %if.then.9
	movl	$48, %edx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	port_close
.LBB181_6:                              # %if.end
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	callq	*%rax
.LBB181_7:                              # %if.end.13
	jmp	.LBB181_8
.LBB181_8:                              # %if.end.14
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end181:
	.size	finalize_cell, .Lfunc_end181-finalize_cell
	.cfi_endproc

	.align	16, 0x90
	.type	ok_to_freely_gc,@function
ok_to_freely_gc:                        # @ok_to_freely_gc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp546:
	.cfi_def_cfa_offset 16
.Ltmp547:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp548:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	936(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	904(%rax), %rax
	movq	%rdi, 8(%rax)
	popq	%rbp
	retq
.Lfunc_end182:
	.size	ok_to_freely_gc, .Lfunc_end182-ok_to_freely_gc
	.cfi_endproc

	.align	16, 0x90
	.type	is_any,@function
is_any:                                 # @is_any
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp549:
	.cfi_def_cfa_offset 16
.Ltmp550:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp551:
	.cfi_def_cfa_register %rbp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end183:
	.size	is_any, .Lfunc_end183-is_any
	.cfi_endproc

	.align	16, 0x90
	.type	is_nonneg,@function
is_nonneg:                              # @is_nonneg
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp552:
	.cfi_def_cfa_offset 16
.Ltmp553:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp554:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	ivalue
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cmpq	$0, %rax
	movb	%dl, -9(%rbp)           # 1-byte Spill
	jl	.LBB184_2
# BB#1:                                 # %land.rhs
	movq	-8(%rbp), %rdi
	callq	is_integer
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -9(%rbp)           # 1-byte Spill
.LBB184_2:                              # %land.end
	movb	-9(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end184:
	.size	is_nonneg, .Lfunc_end184-is_nonneg
	.cfi_endproc

	.type	ts_output_handler,@object # @ts_output_handler
	.local	ts_output_handler
	.comm	ts_output_handler,8,8
	.type	ts_output_data,@object  # @ts_output_data
	.local	ts_output_data
	.comm	ts_output_data,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gensym-%ld"
	.size	.L.str, 11

	.type	num_zero,@object        # @num_zero
	.local	num_zero
	.comm	num_zero,16,8
	.type	num_one,@object         # @num_one
	.local	num_one
	.comm	num_one,16,8
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"else"
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"lambda"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"quote"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"define"
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"if"
	.size	.L.str.5, 3

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"begin"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"set!"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"let"
	.size	.L.str.8, 4

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"let*"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"letrec"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"cond"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"delay"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"and"
	.size	.L.str.13, 4

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"or"
	.size	.L.str.14, 3

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"cons-stream"
	.size	.L.str.15, 12

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"macro"
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"case"
	.size	.L.str.17, 5

	.type	dispatch_table,@object  # @dispatch_table
	.data
	.align	16
dispatch_table:
	.quad	opexe_0
	.quad	.L.str.26
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.27
	.quad	opexe_0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_0
	.quad	.L.str.28
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_0
	.quad	.L.str.29
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.30
	.quad	opexe_0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_0
	.quad	.L.str.31
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	.L.str.32
	.quad	opexe_0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_0
	.quad	.L.str.33
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	.L.str.34
	.quad	opexe_0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_1
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_1
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_1
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_1
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_1
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_1
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_1
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_1
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_1
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_1
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_1
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_1
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_1
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_1
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_1
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_1
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_1
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_1
	.quad	.L.str.35
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	.L.str.36
	.quad	opexe_1
	.quad	.L.str.37
	.long	1                       # 0x1
	.long	65535                   # 0xffff
	.quad	0
	.quad	opexe_1
	.quad	.L.str.38
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	0
	.quad	opexe_2
	.quad	.L.str.39
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.40
	.quad	opexe_2
	.quad	.L.str.41
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.40
	.quad	opexe_2
	.quad	.L.str.42
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.40
	.quad	opexe_2
	.quad	.L.str.43
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.40
	.quad	opexe_2
	.quad	.L.str.44
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.40
	.quad	opexe_2
	.quad	.L.str.45
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.40
	.quad	opexe_2
	.quad	.L.str.46
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.40
	.quad	opexe_2
	.quad	.L.str.47
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.40
	.quad	opexe_2
	.quad	.L.str.48
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	.L.str.40
	.quad	opexe_2
	.quad	.L.str.49
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.40
	.quad	opexe_2
	.quad	.L.str.50
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	.L.str.40
	.quad	opexe_2
	.quad	.L.str.51
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.40
	.quad	opexe_2
	.quad	.L.str.52
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.40
	.quad	opexe_2
	.quad	.L.str.53
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.40
	.quad	opexe_2
	.quad	.L.str.54
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.40
	.quad	opexe_2
	.quad	.L.str.55
	.long	0                       # 0x0
	.long	65535                   # 0xffff
	.quad	.L.str.40
	.quad	opexe_2
	.quad	.L.str.56
	.long	1                       # 0x1
	.long	65535                   # 0xffff
	.quad	.L.str.40
	.quad	opexe_2
	.quad	.L.str.57
	.long	0                       # 0x0
	.long	65535                   # 0xffff
	.quad	.L.str.40
	.quad	opexe_2
	.quad	.L.str.58
	.long	1                       # 0x1
	.long	65535                   # 0xffff
	.quad	.L.str.40
	.quad	opexe_2
	.quad	.L.str.59
	.long	1                       # 0x1
	.long	65535                   # 0xffff
	.quad	.L.str.60
	.quad	opexe_2
	.quad	.L.str.61
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	.L.str.60
	.quad	opexe_2
	.quad	.L.str.62
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	.L.str.60
	.quad	opexe_2
	.quad	.L.str.63
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.64
	.quad	opexe_2
	.quad	.L.str.65
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.64
	.quad	opexe_2
	.quad	.L.str.66
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	0
	.quad	opexe_2
	.quad	.L.str.67
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	.L.str.68
	.quad	opexe_2
	.quad	.L.str.69
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	.L.str.68
	.quad	opexe_2
	.quad	.L.str.70
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.71
	.quad	opexe_2
	.quad	.L.str.72
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.30
	.quad	opexe_2
	.quad	.L.str.73
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.71
	.quad	opexe_2
	.quad	.L.str.74
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.71
	.quad	opexe_2
	.quad	.L.str.75
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.76
	.quad	opexe_2
	.quad	.L.str.77
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.78
	.quad	opexe_2
	.quad	.L.str.79
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.27
	.quad	opexe_2
	.quad	.L.str.80
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.27
	.quad	opexe_2
	.quad	.L.str.81
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	.L.str.82
	.quad	opexe_2
	.quad	.L.str.83
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.27
	.quad	opexe_2
	.quad	.L.str.84
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	.L.str.85
	.quad	opexe_2
	.quad	.L.str.86
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	.L.str.87
	.quad	opexe_2
	.quad	.L.str.88
	.long	0                       # 0x0
	.long	65535                   # 0xffff
	.quad	.L.str.27
	.quad	opexe_2
	.quad	.L.str.89
	.long	2                       # 0x2
	.long	3                       # 0x3
	.quad	.L.str.85
	.quad	opexe_2
	.quad	.L.str.90
	.long	0                       # 0x0
	.long	65535                   # 0xffff
	.quad	0
	.quad	opexe_2
	.quad	.L.str.91
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	.L.str.92
	.quad	opexe_2
	.quad	.L.str.93
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.94
	.quad	opexe_2
	.quad	.L.str.95
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	.L.str.96
	.quad	opexe_2
	.quad	.L.str.97
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	.L.str.98
	.quad	opexe_3
	.quad	.L.str.99
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	0
	.quad	opexe_3
	.quad	.L.str.100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	0
	.quad	opexe_3
	.quad	.L.str.101
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	0
	.quad	opexe_3
	.quad	.L.str.102
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	0
	.quad	opexe_3
	.quad	.L.str.103
	.long	2                       # 0x2
	.long	65535                   # 0xffff
	.quad	.L.str.40
	.quad	opexe_3
	.quad	.L.str.104
	.long	2                       # 0x2
	.long	65535                   # 0xffff
	.quad	.L.str.40
	.quad	opexe_3
	.quad	.L.str.105
	.long	2                       # 0x2
	.long	65535                   # 0xffff
	.quad	.L.str.40
	.quad	opexe_3
	.quad	.L.str.106
	.long	2                       # 0x2
	.long	65535                   # 0xffff
	.quad	.L.str.40
	.quad	opexe_3
	.quad	.L.str.107
	.long	2                       # 0x2
	.long	65535                   # 0xffff
	.quad	.L.str.40
	.quad	opexe_3
	.quad	.L.str.108
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.78
	.quad	opexe_3
	.quad	.L.str.109
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.78
	.quad	opexe_3
	.quad	.L.str.110
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.78
	.quad	opexe_3
	.quad	.L.str.111
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.78
	.quad	opexe_3
	.quad	.L.str.112
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.78
	.quad	opexe_3
	.quad	.L.str.113
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.78
	.quad	opexe_3
	.quad	.L.str.114
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.71
	.quad	opexe_3
	.quad	.L.str.115
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.71
	.quad	opexe_3
	.quad	.L.str.116
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.71
	.quad	opexe_3
	.quad	.L.str.117
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.71
	.quad	opexe_3
	.quad	.L.str.118
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.71
	.quad	opexe_3
	.quad	.L.str.119
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.78
	.quad	opexe_3
	.quad	.L.str.120
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.78
	.quad	opexe_3
	.quad	.L.str.121
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.78
	.quad	opexe_3
	.quad	.L.str.122
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.78
	.quad	opexe_3
	.quad	.L.str.123
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.78
	.quad	opexe_3
	.quad	.L.str.124
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.78
	.quad	opexe_3
	.quad	.L.str.125
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.78
	.quad	opexe_3
	.quad	.L.str.126
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.78
	.quad	opexe_3
	.quad	.L.str.127
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	.L.str.78
	.quad	opexe_3
	.quad	.L.str.128
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	.L.str.78
	.quad	opexe_4
	.quad	.L.str.129
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.78
	.quad	opexe_4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_4
	.quad	.L.str.130
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	.L.str.131
	.quad	opexe_4
	.quad	.L.str.132
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	.L.str.133
	.quad	opexe_4
	.quad	.L.str.134
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	.L.str.131
	.quad	opexe_4
	.quad	.L.str.135
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.136
	.quad	opexe_4
	.quad	.L.str.137
	.long	1                       # 0x1
	.long	65535                   # 0xffff
	.quad	0
	.quad	opexe_4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_4
	.quad	.L.str.138
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.139
	.quad	opexe_4
	.quad	.L.str.140
	.long	1                       # 0x1
	.long	65535                   # 0xffff
	.quad	0
	.quad	opexe_4
	.quad	.L.str.141
	.long	0                       # 0x0
	.long	65535                   # 0xffff
	.quad	0
	.quad	opexe_4
	.quad	.L.str.142
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.40
	.quad	opexe_4
	.quad	.L.str.143
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_4
	.quad	.L.str.144
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	opexe_4
	.quad	.L.str.145
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.40
	.quad	opexe_4
	.quad	.L.str.146
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_4
	.quad	.L.str.147
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_4
	.quad	.L.str.148
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_4
	.quad	.L.str.149
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.27
	.quad	opexe_4
	.quad	.L.str.150
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.27
	.quad	opexe_4
	.quad	.L.str.151
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.27
	.quad	opexe_4
	.quad	.L.str.152
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.27
	.quad	opexe_4
	.quad	.L.str.153
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.27
	.quad	opexe_4
	.quad	.L.str.154
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.27
	.quad	opexe_4
	.quad	.L.str.155
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.136
	.quad	opexe_4
	.quad	.L.str.156
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.157
	.quad	opexe_4
	.quad	.L.str.158
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.136
	.quad	opexe_4
	.quad	.L.str.159
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_4
	.quad	.L.str.160
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_5
	.quad	.L.str.161
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.157
	.quad	opexe_5
	.quad	.L.str.162
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.157
	.quad	opexe_5
	.quad	.L.str.163
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.157
	.quad	opexe_5
	.quad	.L.str.164
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.157
	.quad	opexe_5
	.quad	.L.str.165
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.157
	.quad	opexe_5
	.quad	.L.str.166
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.136
	.quad	opexe_5
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_5
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_5
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_5
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_5
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_5
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_5
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_5
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_5
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_5
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_5
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_5
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	opexe_6
	.quad	.L.str.167
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.139
	.quad	opexe_6
	.quad	.L.str.168
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	0
	.quad	opexe_6
	.quad	.L.str.169
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	0
	.quad	opexe_6
	.quad	.L.str.170
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	0
	.quad	opexe_6
	.quad	.L.str.171
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	0
	.zero	32
	.size	dispatch_table, 5792

	.type	.L.str.18,@object       # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"quasiquote"
	.size	.L.str.18, 11

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"unquote"
	.size	.L.str.19, 8

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"unquote-splicing"
	.size	.L.str.20, 17

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"=>"
	.size	.L.str.21, 3

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"*colon-hook*"
	.size	.L.str.22, 13

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"*error-hook*"
	.size	.L.str.23, 13

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"*sharp-hook*"
	.size	.L.str.24, 13

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"*compile-hook*"
	.size	.L.str.25, 15

	.type	vtbl,@object            # @vtbl
	.data
	.align	8
vtbl:
	.quad	scheme_define
	.quad	s_cons
	.quad	s_immutable_cons
	.quad	reserve_cells
	.quad	mk_integer
	.quad	mk_real
	.quad	mk_symbol
	.quad	gensym
	.quad	mk_string
	.quad	mk_counted_string
	.quad	mk_character
	.quad	mk_vector
	.quad	mk_foreign_func
	.quad	mk_closure
	.quad	putstr
	.quad	putcharacter
	.quad	is_string
	.quad	string_length
	.quad	string_value
	.quad	is_number
	.quad	nvalue
	.quad	ivalue
	.quad	rvalue
	.quad	is_integer
	.quad	is_real
	.quad	is_character
	.quad	charvalue
	.quad	is_list
	.quad	is_vector
	.quad	list_length
	.quad	ivalue
	.quad	fill_vector
	.quad	vector_elem
	.quad	set_vector_elem
	.quad	is_port
	.quad	is_pair
	.quad	pair_car
	.quad	pair_cdr
	.quad	set_car
	.quad	set_cdr
	.quad	is_symbol
	.quad	symname
	.quad	is_syntax
	.quad	is_proc
	.quad	is_foreign
	.quad	syntaxname
	.quad	is_closure
	.quad	is_macro
	.quad	closure_code
	.quad	closure_env
	.quad	is_continuation
	.quad	is_promise
	.quad	is_environment
	.quad	is_immutable
	.quad	setimmutable
	.quad	scheme_load_file
	.quad	scheme_load_string
	.size	vtbl, 456

	.type	.L.str.26,@object       # @.str.26
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.26:
	.asciz	"load"
	.size	.L.str.26, 5

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"\002"
	.size	.L.str.27, 2

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gensym"
	.size	.L.str.28, 7

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"tracing"
	.size	.L.str.29, 8

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"\016"
	.size	.L.str.30, 2

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"make-closure"
	.size	.L.str.31, 13

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"\b\007"
	.size	.L.str.32, 3

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"defined?"
	.size	.L.str.33, 9

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"\003\007"
	.size	.L.str.34, 3

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"eval"
	.size	.L.str.35, 5

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"\001\007"
	.size	.L.str.36, 3

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"apply"
	.size	.L.str.37, 6

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"call-with-current-continuation"
	.size	.L.str.38, 31

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"inexact->exact"
	.size	.L.str.39, 15

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"\f"
	.size	.L.str.40, 2

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"exp"
	.size	.L.str.41, 4

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"log"
	.size	.L.str.42, 4

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"sin"
	.size	.L.str.43, 4

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"cos"
	.size	.L.str.44, 4

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"tan"
	.size	.L.str.45, 4

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"asin"
	.size	.L.str.46, 5

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"acos"
	.size	.L.str.47, 5

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"atan"
	.size	.L.str.48, 5

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"sqrt"
	.size	.L.str.49, 5

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"expt"
	.size	.L.str.50, 5

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"floor"
	.size	.L.str.51, 6

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"ceiling"
	.size	.L.str.52, 8

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"truncate"
	.size	.L.str.53, 9

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"round"
	.size	.L.str.54, 6

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"+"
	.size	.L.str.55, 2

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"-"
	.size	.L.str.56, 2

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"*"
	.size	.L.str.57, 2

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"/"
	.size	.L.str.58, 2

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"quotient"
	.size	.L.str.59, 9

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"\r"
	.size	.L.str.60, 2

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"remainder"
	.size	.L.str.61, 10

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"modulo"
	.size	.L.str.62, 7

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"car"
	.size	.L.str.63, 4

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"\b"
	.size	.L.str.64, 2

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"cdr"
	.size	.L.str.65, 4

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"cons"
	.size	.L.str.66, 5

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"set-car!"
	.size	.L.str.67, 9

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"\b\001"
	.size	.L.str.68, 3

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"set-cdr!"
	.size	.L.str.69, 9

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"char->integer"
	.size	.L.str.70, 14

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"\n"
	.size	.L.str.71, 2

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"integer->char"
	.size	.L.str.72, 14

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"char-upcase"
	.size	.L.str.73, 12

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"char-downcase"
	.size	.L.str.74, 14

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"symbol->string"
	.size	.L.str.75, 15

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"\003"
	.size	.L.str.76, 2

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"atom->string"
	.size	.L.str.77, 13

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"\001"
	.size	.L.str.78, 2

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"string->symbol"
	.size	.L.str.79, 15

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"string->atom"
	.size	.L.str.80, 13

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"make-string"
	.size	.L.str.81, 12

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"\016\n"
	.size	.L.str.82, 3

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"string-length"
	.size	.L.str.83, 14

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"string-ref"
	.size	.L.str.84, 11

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"\002\016"
	.size	.L.str.85, 3

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"string-set!"
	.size	.L.str.86, 12

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"\002\016\n"
	.size	.L.str.87, 4

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"string-append"
	.size	.L.str.88, 14

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"substring"
	.size	.L.str.89, 10

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"vector"
	.size	.L.str.90, 7

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"make-vector"
	.size	.L.str.91, 12

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"\016\001"
	.size	.L.str.92, 3

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"vector-length"
	.size	.L.str.93, 14

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"\013"
	.size	.L.str.94, 2

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"vector-ref"
	.size	.L.str.95, 11

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"\013\016"
	.size	.L.str.96, 3

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"vector-set!"
	.size	.L.str.97, 12

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"\013\016\001"
	.size	.L.str.98, 4

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"not"
	.size	.L.str.99, 4

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"boolean?"
	.size	.L.str.100, 9

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"eof-object?"
	.size	.L.str.101, 12

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"null?"
	.size	.L.str.102, 6

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"="
	.size	.L.str.103, 2

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"<"
	.size	.L.str.104, 2

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	">"
	.size	.L.str.105, 2

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"<="
	.size	.L.str.106, 3

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	">="
	.size	.L.str.107, 3

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"symbol?"
	.size	.L.str.108, 8

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"number?"
	.size	.L.str.109, 8

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"string?"
	.size	.L.str.110, 8

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"integer?"
	.size	.L.str.111, 9

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"real?"
	.size	.L.str.112, 6

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"char?"
	.size	.L.str.113, 6

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"char-alphabetic?"
	.size	.L.str.114, 17

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"char-numeric?"
	.size	.L.str.115, 14

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"char-whitespace?"
	.size	.L.str.116, 17

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"char-upper-case?"
	.size	.L.str.117, 17

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"char-lower-case?"
	.size	.L.str.118, 17

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"port?"
	.size	.L.str.119, 6

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"input-port?"
	.size	.L.str.120, 12

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"output-port?"
	.size	.L.str.121, 13

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"procedure?"
	.size	.L.str.122, 11

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"pair?"
	.size	.L.str.123, 6

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"list?"
	.size	.L.str.124, 6

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"environment?"
	.size	.L.str.125, 13

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"vector?"
	.size	.L.str.126, 8

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"eq?"
	.size	.L.str.127, 4

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"eqv?"
	.size	.L.str.128, 5

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"force"
	.size	.L.str.129, 6

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"write"
	.size	.L.str.130, 6

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"\001\006"
	.size	.L.str.131, 3

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"write-char"
	.size	.L.str.132, 11

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"\n\006"
	.size	.L.str.133, 3

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"display"
	.size	.L.str.134, 8

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"newline"
	.size	.L.str.135, 8

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"\006"
	.size	.L.str.136, 2

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"error"
	.size	.L.str.137, 6

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"reverse"
	.size	.L.str.138, 8

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"\t"
	.size	.L.str.139, 2

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"list*"
	.size	.L.str.140, 6

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"append"
	.size	.L.str.141, 7

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"quit"
	.size	.L.str.142, 5

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"gc"
	.size	.L.str.143, 3

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"gc-verbose"
	.size	.L.str.144, 11

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"new-segment"
	.size	.L.str.145, 12

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"oblist"
	.size	.L.str.146, 7

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"current-input-port"
	.size	.L.str.147, 19

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"current-output-port"
	.size	.L.str.148, 20

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"open-input-file"
	.size	.L.str.149, 16

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"open-output-file"
	.size	.L.str.150, 17

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"open-input-output-file"
	.size	.L.str.151, 23

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"open-input-string"
	.size	.L.str.152, 18

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"open-input-output-string"
	.size	.L.str.153, 25

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"open-output-string"
	.size	.L.str.154, 19

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"get-output-string"
	.size	.L.str.155, 18

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"close-input-port"
	.size	.L.str.156, 17

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"\005"
	.size	.L.str.157, 2

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"close-output-port"
	.size	.L.str.158, 18

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"interaction-environment"
	.size	.L.str.159, 24

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"current-environment"
	.size	.L.str.160, 20

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"read"
	.size	.L.str.161, 5

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"read-char"
	.size	.L.str.162, 10

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"peek-char"
	.size	.L.str.163, 10

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"char-ready?"
	.size	.L.str.164, 12

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"set-input-port"
	.size	.L.str.165, 15

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"set-output-port"
	.size	.L.str.166, 16

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"length"
	.size	.L.str.167, 7

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"assq"
	.size	.L.str.168, 5

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"get-closure-code"
	.size	.L.str.169, 17

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"closure?"
	.size	.L.str.170, 9

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"macro?"
	.size	.L.str.171, 7

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"Loading %s\n"
	.size	.L.str.172, 12

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"unable to open"
	.size	.L.str.173, 15

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"ts> "
	.size	.L.str.174, 5

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"\nGives: "
	.size	.L.str.175, 9

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"\nEval: "
	.size	.L.str.176, 8

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"eval: unbound variable:"
	.size	.L.str.177, 24

	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	"\nApply to: "
	.size	.L.str.178, 12

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"not enough arguments"
	.size	.L.str.179, 21

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	"syntax error in closure: not a symbol:"
	.size	.L.str.180, 39

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"illegal function"
	.size	.L.str.181, 17

	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	"define: unable to alter immutable"
	.size	.L.str.182, 34

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"variable is not a symbol"
	.size	.L.str.183, 25

	.type	.L.str.184,@object      # @.str.184
.L.str.184:
	.asciz	"set!: unable to alter immutable variable"
	.size	.L.str.184, 41

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	"set!: unbound variable:"
	.size	.L.str.185, 24

	.type	.L.str.186,@object      # @.str.186
.L.str.186:
	.asciz	"Bad syntax of binding spec in let :"
	.size	.L.str.186, 36

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"Bad syntax of binding in let :"
	.size	.L.str.187, 31

	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	"Bad syntax of binding spec in let* :"
	.size	.L.str.188, 37

	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	"%d: illegal operator"
	.size	.L.str.189, 21

	.type	.L.str.190,@object      # @.str.190
.L.str.190:
	.asciz	"rb"
	.size	.L.str.190, 3

	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	"<unknown>"
	.size	.L.str.191, 10

	.type	.L.str.192,@object      # @.str.192
.L.str.192:
	.asciz	"(%s : %i) %s"
	.size	.L.str.192, 13

	.type	.L.str.193,@object      # @.str.193
.L.str.193:
	.asciz	" \n\t"
	.size	.L.str.193, 4

	.type	.L.str.194,@object      # @.str.194
.L.str.194:
	.asciz	" tfodxb\\"
	.size	.L.str.194, 9

	.type	utf8_length,@object     # @utf8_length
	.section	.rodata,"a",@progbits
	.align	16
utf8_length:
	.asciz	"\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\003\003\003\003\003\003\003\003\004\004\004\004\005\005\000"
	.size	utf8_length, 64

	.type	.L.str.195,@object      # @.str.195
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.195:
	.asciz	"Bad syntax of binding spec in letrec :"
	.size	.L.str.195, 39

	.type	.L.str.196,@object      # @.str.196
.L.str.196:
	.asciz	"syntax error in cond"
	.size	.L.str.196, 21

	.type	.L.str.197,@object      # @.str.197
.L.str.197:
	.asciz	"inexact->exact: not integral:"
	.size	.L.str.197, 30

	.type	.L.str.198,@object      # @.str.198
.L.str.198:
	.asciz	"/: division by zero"
	.size	.L.str.198, 20

	.type	.L.str.199,@object      # @.str.199
.L.str.199:
	.asciz	"quotient: division by zero"
	.size	.L.str.199, 27

	.type	.L.str.200,@object      # @.str.200
.L.str.200:
	.asciz	"remainder: division by zero"
	.size	.L.str.200, 28

	.type	.L.str.201,@object      # @.str.201
.L.str.201:
	.asciz	"modulo: division by zero"
	.size	.L.str.201, 25

	.type	.L.str.202,@object      # @.str.202
.L.str.202:
	.asciz	"set-car!: unable to alter immutable pair"
	.size	.L.str.202, 41

	.type	.L.str.203,@object      # @.str.203
.L.str.203:
	.asciz	"set-cdr!: unable to alter immutable pair"
	.size	.L.str.203, 41

	.type	.L.str.204,@object      # @.str.204
.L.str.204:
	.asciz	"atom->string: not an atom:"
	.size	.L.str.204, 27

	.type	.L.str.205,@object      # @.str.205
.L.str.205:
	.asciz	"string-ref: out of bounds:"
	.size	.L.str.205, 27

	.type	.L.str.206,@object      # @.str.206
.L.str.206:
	.asciz	"string-set!: unable to alter immutable string:"
	.size	.L.str.206, 47

	.type	.L.str.207,@object      # @.str.207
.L.str.207:
	.asciz	"string-set!: out of bounds:"
	.size	.L.str.207, 28

	.type	.L.str.208,@object      # @.str.208
.L.str.208:
	.asciz	"string-set!: No memory to alter string:"
	.size	.L.str.208, 40

	.type	.L.str.209,@object      # @.str.209
.L.str.209:
	.asciz	"string-set!: No memory to append strings:"
	.size	.L.str.209, 42

	.type	.L.str.210,@object      # @.str.210
.L.str.210:
	.asciz	"substring: start out of bounds:"
	.size	.L.str.210, 32

	.type	.L.str.211,@object      # @.str.211
.L.str.211:
	.asciz	"substring: end out of bounds:"
	.size	.L.str.211, 30

	.type	.L.str.212,@object      # @.str.212
.L.str.212:
	.asciz	"string-set!: No memory to extract substring:"
	.size	.L.str.212, 45

	.type	.L.str.213,@object      # @.str.213
.L.str.213:
	.asciz	"vector: not a proper list:"
	.size	.L.str.213, 27

	.type	.L.str.214,@object      # @.str.214
.L.str.214:
	.asciz	"vector-ref: out of bounds:"
	.size	.L.str.214, 27

	.type	.L.str.215,@object      # @.str.215
.L.str.215:
	.asciz	"vector-set!: unable to alter immutable vector:"
	.size	.L.str.215, 47

	.type	.L.str.216,@object      # @.str.216
.L.str.216:
	.asciz	"vector-set!: out of bounds:"
	.size	.L.str.216, 28

	.type	.L.str.217,@object      # @.str.217
.L.str.217:
	.asciz	"t"
	.size	.L.str.217, 2

	.type	.L.str.218,@object      # @.str.218
.L.str.218:
	.asciz	"f"
	.size	.L.str.218, 2

	.type	.L.str.219,@object      # @.str.219
.L.str.219:
	.asciz	"0%s"
	.size	.L.str.219, 4

	.type	.L.str.220,@object      # @.str.220
.L.str.220:
	.asciz	"%lo"
	.size	.L.str.220, 4

	.type	.L.str.221,@object      # @.str.221
.L.str.221:
	.asciz	"%ld"
	.size	.L.str.221, 4

	.type	.L.str.222,@object      # @.str.222
.L.str.222:
	.asciz	"0x%s"
	.size	.L.str.222, 5

	.type	.L.str.223,@object      # @.str.223
.L.str.223:
	.asciz	"%lx"
	.size	.L.str.223, 4

	.type	.L.str.224,@object      # @.str.224
.L.str.224:
	.asciz	"space"
	.size	.L.str.224, 6

	.type	.L.str.225,@object      # @.str.225
.L.str.225:
	.asciz	"return"
	.size	.L.str.225, 7

	.type	.L.str.226,@object      # @.str.226
.L.str.226:
	.asciz	"tab"
	.size	.L.str.226, 4

	.type	.L.str.227,@object      # @.str.227
.L.str.227:
	.asciz	"%x"
	.size	.L.str.227, 3

	.type	.L.str.228,@object      # @.str.228
.L.str.228:
	.asciz	"::"
	.size	.L.str.228, 3

	.type	.L.str.229,@object      # @.str.229
.L.str.229:
	.asciz	"()"
	.size	.L.str.229, 3

	.type	.L.str.230,@object      # @.str.230
.L.str.230:
	.asciz	"#t"
	.size	.L.str.230, 3

	.type	.L.str.231,@object      # @.str.231
.L.str.231:
	.asciz	"#f"
	.size	.L.str.231, 3

	.type	.L.str.232,@object      # @.str.232
.L.str.232:
	.asciz	"#<EOF>"
	.size	.L.str.232, 7

	.type	.L.str.233,@object      # @.str.233
.L.str.233:
	.asciz	"#<PORT>"
	.size	.L.str.233, 8

	.type	.L.str.234,@object      # @.str.234
.L.str.234:
	.asciz	"%.10g"
	.size	.L.str.234, 6

	.type	.L.str.235,@object      # @.str.235
.L.str.235:
	.asciz	".e"
	.size	.L.str.235, 3

	.type	.L.str.236,@object      # @.str.236
.L.str.236:
	.asciz	"#\\space"
	.size	.L.str.236, 8

	.type	.L.str.237,@object      # @.str.237
.L.str.237:
	.asciz	"#\\newline"
	.size	.L.str.237, 10

	.type	.L.str.238,@object      # @.str.238
.L.str.238:
	.asciz	"#\\return"
	.size	.L.str.238, 9

	.type	.L.str.239,@object      # @.str.239
.L.str.239:
	.asciz	"#\\tab"
	.size	.L.str.239, 6

	.type	.L.str.240,@object      # @.str.240
.L.str.240:
	.asciz	"#\\x%x"
	.size	.L.str.240, 6

	.type	.L.str.241,@object      # @.str.241
.L.str.241:
	.asciz	"#\\%c"
	.size	.L.str.241, 5

	.type	.L.str.242,@object      # @.str.242
.L.str.242:
	.asciz	"#<%s PROCEDURE %ld>"
	.size	.L.str.242, 20

	.type	.L.str.243,@object      # @.str.243
.L.str.243:
	.asciz	"#<MACRO>"
	.size	.L.str.243, 9

	.type	.L.str.244,@object      # @.str.244
.L.str.244:
	.asciz	"#<CLOSURE>"
	.size	.L.str.244, 11

	.type	.L.str.245,@object      # @.str.245
.L.str.245:
	.asciz	"#<PROMISE>"
	.size	.L.str.245, 11

	.type	.L.str.246,@object      # @.str.246
.L.str.246:
	.asciz	"#<FOREIGN PROCEDURE %ld>"
	.size	.L.str.246, 25

	.type	.L.str.247,@object      # @.str.247
.L.str.247:
	.asciz	"#<CONTINUATION>"
	.size	.L.str.247, 16

	.type	.L.str.248,@object      # @.str.248
.L.str.248:
	.asciz	"#<ERROR>"
	.size	.L.str.248, 9

	.type	.L.str.249,@object      # @.str.249
.L.str.249:
	.asciz	"ILLEGAL!"
	.size	.L.str.249, 9

	.type	.L.str.250,@object      # @.str.250
.L.str.250:
	.asciz	" -- "
	.size	.L.str.250, 5

	.type	.L.str.251,@object      # @.str.251
.L.str.251:
	.asciz	"Error: "
	.size	.L.str.251, 8

	.type	.L.str.252,@object      # @.str.252
.L.str.252:
	.asciz	" "
	.size	.L.str.252, 2

	.type	.L.str.253,@object      # @.str.253
.L.str.253:
	.asciz	"non-list argument to append"
	.size	.L.str.253, 28

	.type	.L.str.254,@object      # @.str.254
.L.str.254:
	.asciz	"new-segment: argument must be a number"
	.size	.L.str.254, 39

	.type	.L.str.255,@object      # @.str.255
.L.str.255:
	.asciz	"a+b"
	.size	.L.str.255, 4

	.type	.L.str.256,@object      # @.str.256
.L.str.256:
	.asciz	"wb"
	.size	.L.str.256, 3

	.type	.L.str.257,@object      # @.str.257
.L.str.257:
	.asciz	"unmatched parentheses:"
	.size	.L.str.257, 23

	.type	.L.str.258,@object      # @.str.258
.L.str.258:
	.asciz	"read: not an input port:"
	.size	.L.str.258, 25

	.type	.L.str.259,@object      # @.str.259
.L.str.259:
	.asciz	"syntax error: illegal dot expression"
	.size	.L.str.259, 37

	.type	.L.str.260,@object      # @.str.260
.L.str.260:
	.asciz	"();\t\n\r "
	.size	.L.str.260, 8

	.type	.L.str.261,@object      # @.str.261
.L.str.261:
	.asciz	"Error reading string"
	.size	.L.str.261, 21

	.type	.L.str.262,@object      # @.str.262
.L.str.262:
	.asciz	"undefined sharp expression"
	.size	.L.str.262, 27

	.type	.L.str.263,@object      # @.str.263
.L.str.263:
	.asciz	"syntax error: illegal token"
	.size	.L.str.263, 28

	.type	.L.str.264,@object      # @.str.264
.L.str.264:
	.asciz	"#("
	.size	.L.str.264, 3

	.type	.L.str.265,@object      # @.str.265
.L.str.265:
	.asciz	"#<ENVIRONMENT>"
	.size	.L.str.265, 15

	.type	.L.str.266,@object      # @.str.266
.L.str.266:
	.asciz	"'"
	.size	.L.str.266, 2

	.type	.L.str.267,@object      # @.str.267
.L.str.267:
	.asciz	"`"
	.size	.L.str.267, 2

	.type	.L.str.268,@object      # @.str.268
.L.str.268:
	.asciz	","
	.size	.L.str.268, 2

	.type	.L.str.269,@object      # @.str.269
.L.str.269:
	.asciz	",@"
	.size	.L.str.269, 3

	.type	.L.str.270,@object      # @.str.270
.L.str.270:
	.asciz	"("
	.size	.L.str.270, 2

	.type	.L.str.271,@object      # @.str.271
.L.str.271:
	.asciz	" . "
	.size	.L.str.271, 4

	.type	.L.str.272,@object      # @.str.272
.L.str.272:
	.asciz	")"
	.size	.L.str.272, 2

	.type	.L.str.273,@object      # @.str.273
.L.str.273:
	.asciz	"length: not a list:"
	.size	.L.str.273, 20

	.type	.L.str.274,@object      # @.str.274
.L.str.274:
	.asciz	"unable to handle non pair element"
	.size	.L.str.274, 34

	.type	.L.str.275,@object      # @.str.275
.L.str.275:
	.asciz	"gc..."
	.size	.L.str.275, 6

	.type	.L.str.276,@object      # @.str.276
.L.str.276:
	.asciz	"done: %ld cells were recovered.\n"
	.size	.L.str.276, 33

	.type	.L.str.277,@object      # @.str.277
.L.str.277:
	.asciz	"%s: needs%s %d argument(s)"
	.size	.L.str.277, 27

	.type	.L.str.278,@object      # @.str.278
.L.str.278:
	.zero	1
	.size	.L.str.278, 1

	.type	.L.str.279,@object      # @.str.279
.L.str.279:
	.asciz	" at least"
	.size	.L.str.279, 10

	.type	.L.str.280,@object      # @.str.280
.L.str.280:
	.asciz	" at most"
	.size	.L.str.280, 9

	.type	tests,@object           # @tests
	.data
	.align	16
tests:
	.zero	16
	.quad	is_any
	.quad	0
	.quad	is_string
	.quad	.L.str.283
	.quad	is_symbol
	.quad	.L.str.284
	.quad	is_port
	.quad	.L.str.285
	.quad	is_inport
	.quad	.L.str.286
	.quad	is_outport
	.quad	.L.str.287
	.quad	is_environment
	.quad	.L.str.288
	.quad	is_pair
	.quad	.L.str.289
	.quad	0
	.quad	.L.str.290
	.quad	is_character
	.quad	.L.str.291
	.quad	is_vector
	.quad	.L.str.90
	.quad	is_number
	.quad	.L.str.292
	.quad	is_integer
	.quad	.L.str.293
	.quad	is_nonneg
	.quad	.L.str.294
	.size	tests, 240

	.type	.L.str.281,@object      # @.str.281
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.281:
	.asciz	"%s: argument %d must be: %s"
	.size	.L.str.281, 28

	.type	.L.str.282,@object      # @.str.282
.L.str.282:
	.asciz	"No memory!\n"
	.size	.L.str.282, 12

	.type	.L.str.283,@object      # @.str.283
.L.str.283:
	.asciz	"string"
	.size	.L.str.283, 7

	.type	.L.str.284,@object      # @.str.284
.L.str.284:
	.asciz	"symbol"
	.size	.L.str.284, 7

	.type	.L.str.285,@object      # @.str.285
.L.str.285:
	.asciz	"port"
	.size	.L.str.285, 5

	.type	.L.str.286,@object      # @.str.286
.L.str.286:
	.asciz	"input port"
	.size	.L.str.286, 11

	.type	.L.str.287,@object      # @.str.287
.L.str.287:
	.asciz	"output port"
	.size	.L.str.287, 12

	.type	.L.str.288,@object      # @.str.288
.L.str.288:
	.asciz	"environment"
	.size	.L.str.288, 12

	.type	.L.str.289,@object      # @.str.289
.L.str.289:
	.asciz	"pair"
	.size	.L.str.289, 5

	.type	.L.str.290,@object      # @.str.290
.L.str.290:
	.asciz	"pair or '()"
	.size	.L.str.290, 12

	.type	.L.str.291,@object      # @.str.291
.L.str.291:
	.asciz	"character"
	.size	.L.str.291, 10

	.type	.L.str.292,@object      # @.str.292
.L.str.292:
	.asciz	"number"
	.size	.L.str.292, 7

	.type	.L.str.293,@object      # @.str.293
.L.str.293:
	.asciz	"integer"
	.size	.L.str.293, 8

	.type	.L.str.294,@object      # @.str.294
.L.str.294:
	.asciz	"non-negative integer"
	.size	.L.str.294, 21


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
