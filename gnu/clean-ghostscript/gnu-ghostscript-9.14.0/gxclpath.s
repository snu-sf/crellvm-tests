	.text
	.file	"gxclpath.bc"
	.globl	cmd_slow_rop
	.align	16, 0x90
	.type	cmd_slow_rop,@function
cmd_slow_rop:                           # @cmd_slow_rop
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
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %r14
	movzbl	%bpl, %ebx
	testq	%rdx, %rdx
	je	.LBB0_6
# BB#1:                                 # %land.lhs.true
	movl	$gx_dc_type_data_pure, %eax
	cmpq	%rax, (%rdx)
	jne	.LBB0_6
# BB#2:                                 # %if.then
	movq	8(%rdx), %r15
	movq	%r14, %rdi
	callq	gx_device_black
	cmpq	%rax, %r15
	jne	.LBB0_4
# BB#3:                                 # %if.then.3
	andl	$15, %ebp
	movl	%ebp, %ebx
	shll	$4, %ebx
	orl	%ebp, %ebx
	jmp	.LBB0_6
.LBB0_4:                                # %if.else
	movq	%r14, %rdi
	callq	gx_device_white
	cmpq	%rax, %r15
	jne	.LBB0_6
# BB#5:                                 # %if.then.8
	movl	%ebp, %eax
	shrl	$4, %eax
	andl	$15, %eax
	andl	$240, %ebp
	orl	%eax, %ebp
	movl	%ebp, %ebx
.LBB0_6:                                # %if.end.13
	xorl	%eax, %eax
	leal	-204(%rbx), %ecx
	cmpl	$51, %ecx
	ja	.LBB0_7
# BB#9:                                 # %if.end.13
	movabsq	$2251868533161985, %rdx # imm = 0x8001000000001
	btq	%rcx, %rdx
	jb	.LBB0_10
.LBB0_7:                                # %if.end.13
	testl	%ebx, %ebx
	je	.LBB0_10
# BB#8:                                 # %lor.rhs
	movl	$1, %eax
.LBB0_10:                               # %lor.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	cmd_slow_rop, .Lfunc_end0-cmd_slow_rop
	.cfi_endproc

	.globl	cmd_put_drawing_color
	.align	16, 0x90
	.type	cmd_put_drawing_color,@function
cmd_put_drawing_color:                  # @cmd_put_drawing_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp12:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp13:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 56
	subq	$120, %rsp
.Ltmp15:
	.cfi_def_cfa_offset 176
.Ltmp16:
	.cfi_offset %rbx, -56
.Ltmp17:
	.cfi_offset %r12, -48
.Ltmp18:
	.cfi_offset %r13, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
.Ltmp21:
	.cfi_offset %rbp, -16
	movl	%r8d, 68(%rsp)          # 4-byte Spill
	movq	%rcx, %r14
	movq	%r14, 32(%rsp)          # 8-byte Spill
	movq	%rdx, %rbp
	movq	%rsi, %rbx
	movq	%rbx, 80(%rsp)          # 8-byte Spill
	movq	%rdi, %r13
	movq	(%rbp), %rax
	movq	%rbp, %rdi
	callq	*16(%rax)
	movl	$0, 116(%rsp)
	leaq	16(%rbx), %r12
	testq	%r14, %r14
	sete	%r15b
	testq	%rax, %rax
	je	.LBB1_4
# BB#1:                                 # %land.lhs.true
	movq	184(%rax), %rcx
	cmpq	12128(%r13), %rcx
	je	.LBB1_4
# BB#2:                                 # %if.then
	movq	%rbp, %rbx
	movq	%r13, %rdi
	movq	%r13, %rbp
	movq	%rax, %rsi
	callq	cmd_put_halftone
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB1_85
# BB#3:                                 # %if.end
	movq	$gx_dc_type_data_none, (%r12)
	movq	%rbp, %r13
	movq	%rbx, %rbp
.LBB1_4:                                # %if.end.10
	movq	%r12, 72(%rsp)          # 8-byte Spill
	movq	%rbp, %rdi
	callq	gx_get_dc_type_index
	movl	%eax, 44(%rsp)          # 4-byte Spill
	movq	(%rbp), %rax
	movq	%rbp, %rbx
	xorl	%r14d, %r14d
	leaq	116(%rsp), %r9
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	movq	%r13, %rbp
	callq	*64(%rax)
	cmpl	$0, 68(%rsp)            # 4-byte Folded Reload
	jne	.LBB1_6
# BB#5:                                 # %if.end.10
	testl	%eax, %eax
	jg	.LBB1_85
.LBB1_6:                                # %if.else
	testl	%eax, %eax
	jns	.LBB1_8
# BB#7:                                 # %if.else
	cmpl	$-15, %eax
	movl	%eax, %r14d
	jne	.LBB1_85
.LBB1_8:                                # %if.end.27
	movzbl	%r15b, %r12d
	movq	32(%rsp), %rax          # 8-byte Reload
	testq	%rax, %rax
	je	.LBB1_10
# BB#9:                                 # %land.lhs.true.28
	movl	36(%rax), %eax
	imull	116(%rsp), %eax
	cmpl	$1048576, %eax          # imm = 0x100000
	movl	$1, %eax
	cmoval	%eax, %r12d
.LBB1_10:                               # %if.end.32
	movq	%rbp, %r15
	movq	%rbx, %rbp
	movq	%rbp, %rdi
	callq	gx_dc_is_pattern1_color
	movl	%eax, 20(%rsp)          # 4-byte Spill
	xorl	%edx, %edx
	testl	%eax, %eax
	movq	80(%rsp), %r14          # 8-byte Reload
	je	.LBB1_12
# BB#11:                                # %if.then.35
	movq	%rbp, %rdi
	callq	gs_dc_get_pattern_id
	movq	%rax, %rdx
.LBB1_12:                               # %if.end.37
	testl	%r12d, %r12d
	je	.LBB1_18
# BB#13:                                # %if.then.39
	movslq	10144(%r15), %rcx
	testq	%rcx, %rcx
	jle	.LBB1_18
# BB#14:                                # %for.body.lr.ph
	movq	10200(%r15), %rax
	imulq	$1808, %rcx, %rcx       # imm = 0x710
	leaq	(%rcx,%rax), %rcx
	.align	16, 0x90
.LBB1_16:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rdx, 376(%rax)
	je	.LBB1_17
# BB#15:                                # %for.cond
                                        #   in Loop: Header=BB1_16 Depth=1
	addq	$1808, %rax             # imm = 0x710
	cmpq	%rcx, %rax
	jb	.LBB1_16
	jmp	.LBB1_18
.LBB1_17:                               # %if.then.46
	movq	$0, 376(%r14)
.LBB1_18:                               # %if.end.49
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movl	%r12d, 40(%rsp)         # 4-byte Spill
	movq	%r15, 88(%rsp)          # 8-byte Spill
	movq	%r14, %rbx
	movl	116(%rsp), %r15d
	movq	(%rbp), %rax
	leaq	104(%rsp), %rsi
	movq	%rbp, %rdi
	movq	%rbp, 56(%rsp)          # 8-byte Spill
	callq	*24(%rax)
	testl	%eax, %eax
	je	.LBB1_23
# BB#19:                                # %land.lhs.true.53
	movl	104(%rsp), %edx
	movl	108(%rsp), %ecx
	cmpl	384(%rbx), %edx
	jne	.LBB1_22
# BB#20:                                # %lor.lhs.false
	cmpl	$0, 40(%rsp)            # 4-byte Folded Reload
	jne	.LBB1_22
# BB#21:                                # %lor.lhs.false
	cmpl	388(%rbx), %ecx
	je	.LBB1_23
.LBB1_22:                               # %land.lhs.true.63
	movq	88(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rsi
	movl	40(%rsp), %r8d          # 4-byte Reload
	callq	cmd_set_tile_phase_generic
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB1_85
.LBB1_23:                               # %if.end.70
	cmpl	$0, 20(%rsp)            # 4-byte Folded Reload
	je	.LBB1_24
# BB#25:                                # %if.then.72
	movq	56(%rsp), %rdi          # 8-byte Reload
	callq	gs_dc_get_pattern_id
	testq	%rax, %rax
	je	.LBB1_26
# BB#27:                                # %land.lhs.true.76
	movl	$8, %ecx
	movq	%rbx, %rbp
	cmpq	%rax, 376(%rbp)
	je	.LBB1_29
# BB#28:                                # %select.mid
	movl	%r15d, %ecx
.LBB1_29:                               # %select.end
	movl	%ecx, %ebx
	movq	%rax, 8(%rsp)           # 8-byte Spill
	jmp	.LBB1_30
.LBB1_26:
	xorl	%eax, %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
.LBB1_24:
	movq	%rbx, %rbp
	movq	%r15, %rbx
.LBB1_30:                               # %do.body.preheader
	leaq	1760(%rbp), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB1_31:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	testl	%r15d, %r15d
	movl	$0, %r13d
	jle	.LBB1_35
# BB#32:                                # %cond.true
                                        #   in Loop: Header=BB1_31 Depth=1
	movl	$1, %r13d
	cmpl	$128, %r15d
	jb	.LBB1_35
# BB#33:                                # %cond.false
                                        #   in Loop: Header=BB1_31 Depth=1
	movl	$2, %r13d
	cmpl	$16384, %r15d           # imm = 0x4000
	jb	.LBB1_35
# BB#34:                                # %cond.false.91
                                        #   in Loop: Header=BB1_31 Depth=1
	movl	%r15d, %edi
	callq	enc_u_size_uint
	movl	%eax, %r13d
	.align	16, 0x90
.LBB1_35:                               # %cond.end.96
                                        #   in Loop: Header=BB1_31 Depth=1
	leal	3(%r13,%rbx), %r12d
	movl	$1, %eax
	cmpl	$128, %ebx
	jb	.LBB1_38
# BB#36:                                # %cond.false.102
                                        #   in Loop: Header=BB1_31 Depth=1
	movl	$2, %eax
	cmpl	$16384, %ebx            # imm = 0x4000
	jb	.LBB1_38
# BB#37:                                # %cond.false.106
                                        #   in Loop: Header=BB1_31 Depth=1
	movl	%ebx, %edi
	callq	enc_u_size_uint
.LBB1_38:                               # %cond.end.110
                                        #   in Loop: Header=BB1_31 Depth=1
	addl	%eax, %r12d
	movq	88(%rsp), %rdi          # 8-byte Reload
	movq	%rbp, %rsi
	movq	%rbp, 80(%rsp)          # 8-byte Spill
	movl	%r12d, %edx
	callq	cmd_get_buffer_space
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB1_85
# BB#39:                                # %if.end.117
                                        #   in Loop: Header=BB1_31 Depth=1
	addl	$3, %r13d
	cmpl	%r12d, %r14d
	cmovbl	%r14d, %r12d
	movl	%r12d, %ebp
	subl	%r13d, %ebp
	cmpl	$128, %ebx
	movl	$1, %r14d
	movl	$1, %eax
	jb	.LBB1_42
# BB#40:                                # %cond.false.127
                                        #   in Loop: Header=BB1_31 Depth=1
	movl	$2, %eax
	cmpl	$16384, %ebx            # imm = 0x4000
	jb	.LBB1_42
# BB#41:                                # %cond.false.131
                                        #   in Loop: Header=BB1_31 Depth=1
	movl	%ebx, %edi
	callq	enc_u_size_uint
.LBB1_42:                               # %cond.end.135
                                        #   in Loop: Header=BB1_31 Depth=1
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	subl	%eax, %ebp
	movl	%ebp, 100(%rsp)
	leal	(%r13,%rbp), %ebx
	cmpl	$128, %ebp
	jb	.LBB1_45
# BB#43:                                # %cond.false.142
                                        #   in Loop: Header=BB1_31 Depth=1
	movl	$2, %r14d
	cmpl	$16384, %ebp            # imm = 0x4000
	jb	.LBB1_45
# BB#44:                                # %cond.false.146
                                        #   in Loop: Header=BB1_31 Depth=1
	movl	%ebp, %edi
	callq	enc_u_size_uint
	movl	%eax, %r14d
.LBB1_45:                               # %cond.end.150
                                        #   in Loop: Header=BB1_31 Depth=1
	addl	%r14d, %ebx
	movl	$-28, %r14d
	cmpl	%r12d, %ebx
	jg	.LBB1_85
# BB#46:                                # %if.end.156
                                        #   in Loop: Header=BB1_31 Depth=1
	movl	40(%rsp), %eax          # 4-byte Reload
	testl	%eax, %eax
	je	.LBB1_49
# BB#47:                                # %if.then.158
                                        #   in Loop: Header=BB1_31 Depth=1
	movq	88(%rsp), %rbp          # 8-byte Reload
	movl	10144(%rbp), %edx
	decl	%edx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	movl	%ebx, %ecx
	callq	cmd_put_range_op
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB1_51
# BB#48:                                # %cond.false.165
                                        #   in Loop: Header=BB1_31 Depth=1
	movb	$-33, (%rbx)
	jmp	.LBB1_52
	.align	16, 0x90
.LBB1_49:                               # %if.else.168
                                        #   in Loop: Header=BB1_31 Depth=1
	movq	88(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	movq	24(%rsp), %rsi          # 8-byte Reload
	movl	%ebx, %edx
	callq	cmd_put_list_op
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB1_51
# BB#50:                                # %cond.false.174
                                        #   in Loop: Header=BB1_31 Depth=1
	movb	$-33, (%rbx)
	jmp	.LBB1_52
	.align	16, 0x90
.LBB1_51:                               # %if.end.177
                                        #   in Loop: Header=BB1_31 Depth=1
	movl	10192(%rbp), %r14d
	testl	%r14d, %r14d
	movl	$0, %ebx
	js	.LBB1_85
.LBB1_52:                               # %if.end.181
                                        #   in Loop: Header=BB1_31 Depth=1
	movl	68(%rsp), %eax          # 4-byte Reload
	cmpl	$2, %eax
	je	.LBB1_56
# BB#53:                                # %if.end.181
                                        #   in Loop: Header=BB1_31 Depth=1
	cmpl	$1, %eax
	jne	.LBB1_54
# BB#55:                                # %sw.bb.182
                                        #   in Loop: Header=BB1_31 Depth=1
	movb	$6, 1(%rbx)
	jmp	.LBB1_57
	.align	16, 0x90
.LBB1_56:                               # %sw.bb.184
                                        #   in Loop: Header=BB1_31 Depth=1
	movb	$7, 1(%rbx)
	jmp	.LBB1_57
	.align	16, 0x90
.LBB1_54:                               # %if.end.181
                                        #   in Loop: Header=BB1_31 Depth=1
	testl	%eax, %eax
	movb	$4, 1(%rbx)
.LBB1_57:                               # %sw.epilog
                                        #   in Loop: Header=BB1_31 Depth=1
	movq	%rbp, %r12
	movq	72(%rsp), %r13          # 8-byte Reload
	movq	56(%rsp), %rbp          # 8-byte Reload
	testl	%r15d, %r15d
	setg	%al
	shlb	$7, %al
	movzbl	%al, %eax
	orl	44(%rsp), %eax          # 4-byte Folded Reload
	leaq	3(%rbx), %r8
	testl	%r15d, %r15d
	movb	%al, 2(%rbx)
	jle	.LBB1_63
# BB#58:                                # %do.body.196
                                        #   in Loop: Header=BB1_31 Depth=1
	cmpl	$127, %r15d
	ja	.LBB1_60
# BB#59:                                # %if.then.199
                                        #   in Loop: Header=BB1_31 Depth=1
	leaq	4(%rbx), %r8
	movb	%r15b, 3(%rbx)
	jmp	.LBB1_63
	.align	16, 0x90
.LBB1_60:                               # %if.else.202
                                        #   in Loop: Header=BB1_31 Depth=1
	cmpl	$16383, %r15d           # imm = 0x3FFF
	ja	.LBB1_62
# BB#61:                                # %if.then.205
                                        #   in Loop: Header=BB1_31 Depth=1
	movl	%r15d, %eax
	orl	$128, %eax
	movb	%al, 3(%rbx)
	movl	%r15d, %eax
	shrl	$7, %eax
	leaq	5(%rbx), %r8
	movb	%al, 4(%rbx)
	jmp	.LBB1_63
.LBB1_62:                               # %if.else.211
                                        #   in Loop: Header=BB1_31 Depth=1
	movl	%r15d, %edi
	movq	%r8, %rsi
	callq	enc_u_put_uint
	movq	%rax, %r8
	.align	16, 0x90
.LBB1_63:                               # %do.body.216
                                        #   in Loop: Header=BB1_31 Depth=1
	movl	100(%rsp), %edi
	cmpl	$127, %edi
	ja	.LBB1_65
# BB#64:                                # %if.then.219
                                        #   in Loop: Header=BB1_31 Depth=1
	movb	%dil, (%r8)
	incq	%r8
	jmp	.LBB1_68
	.align	16, 0x90
.LBB1_65:                               # %if.else.222
                                        #   in Loop: Header=BB1_31 Depth=1
	cmpl	$16383, %edi            # imm = 0x3FFF
	ja	.LBB1_67
# BB#66:                                # %if.then.225
                                        #   in Loop: Header=BB1_31 Depth=1
	orl	$128, %edi
	movb	%dil, (%r8)
	movl	100(%rsp), %eax
	shrl	$7, %eax
	movb	%al, 1(%r8)
	addq	$2, %r8
	jmp	.LBB1_68
	.align	16, 0x90
.LBB1_67:                               # %if.else.233
                                        #   in Loop: Header=BB1_31 Depth=1
	movq	%r8, %rsi
	callq	enc_u_put_uint
	movq	%rax, %r8
.LBB1_68:                               # %do.end.238
                                        #   in Loop: Header=BB1_31 Depth=1
	movq	(%rbp), %rax
	movslq	%r15d, %rcx
	movq	%rbp, %rdi
	movq	%rbp, 56(%rsp)          # 8-byte Spill
	movq	%r13, %rsi
	movq	%r12, %rdx
	leaq	100(%rsp), %r9
	callq	*64(%rax)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB1_69
# BB#71:                                # %if.end.251
                                        #   in Loop: Header=BB1_31 Depth=1
	movq	%r13, 72(%rsp)          # 8-byte Spill
	movq	%r12, 88(%rsp)          # 8-byte Spill
	movl	100(%rsp), %eax
	leal	(%r15,%rax), %r15d
	movq	48(%rsp), %rbx          # 8-byte Reload
	subl	%eax, %ebx
	movq	80(%rsp), %rbp          # 8-byte Reload
	jne	.LBB1_31
# BB#72:                                # %do.end.256
	movq	88(%rsp), %r15          # 8-byte Reload
	movq	%r15, %rdi
	movq	56(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rsi
	callq	cmd_drawing_color_usage
	orq	%rax, 1776(%rbp)
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movq	72(%rsp), %r12          # 8-byte Reload
	movq	%r12, %rsi
	callq	*8(%rax)
	movq	8(%rsp), %rax           # 8-byte Reload
	testq	%rax, %rax
	je	.LBB1_74
# BB#73:                                # %if.then.263
	movq	%rax, 376(%rbp)
.LBB1_74:                               # %if.end.265
	cmpl	$0, 20(%rsp)            # 4-byte Folded Reload
	je	.LBB1_85
# BB#75:                                # %if.then.267
	movq	%rax, 24(%rbp)
	testq	%rax, %rax
	je	.LBB1_81
# BB#76:                                # %land.lhs.true.271
	movq	%rbx, %rdi
	callq	gx_pattern1_get_transptr
	testq	%rax, %rax
	jne	.LBB1_78
# BB#77:                                # %lor.lhs.false.275
	movq	%rbx, %rdi
	callq	gx_pattern1_clist_has_trans
	testl	%eax, %eax
	je	.LBB1_81
.LBB1_78:                               # %if.then.278
	movl	$0, 1788(%rbp)
	movl	832(%r15), %eax
	movl	%eax, 1796(%rbp)
	cmpl	$0, 40(%rsp)            # 4-byte Folded Reload
	je	.LBB1_80
# BB#79:                                # %if.end.317.thread
	leaq	1788(%rbp), %rsi
	movl	$0, 1792(%rbp)
	movl	836(%r15), %eax
	movl	%eax, 1800(%rbp)
	movq	%r15, %rdi
	callq	clist_update_trans_bbox
	jmp	.LBB1_82
.LBB1_69:                               # %if.then.246
	testl	%r15d, %r15d
	jne	.LBB1_85
# BB#70:                                # %if.then.249
	movq	%rbx, 10216(%r12)
	jmp	.LBB1_85
.LBB1_81:                               # %if.end.317
	cmpl	$0, 40(%rsp)            # 4-byte Folded Reload
	je	.LBB1_85
.LBB1_82:                               # %if.then.321
	cmpl	$0, 10144(%r15)
	jle	.LBB1_85
# BB#83:                                # %for.body.331.lr.ph
	movq	10200(%r15), %rbx
	.align	16, 0x90
.LBB1_84:                               # %for.body.331
                                        # =>This Inner Loop Header: Depth=1
	leaq	16(%rbx), %rdi
	movl	$344, %edx              # imm = 0x158
	movq	%r12, %rsi
	callq	memcpy
	movq	376(%rbp), %rax
	movq	%rax, 376(%rbx)
	movl	384(%rbp), %eax
	movl	%eax, 384(%rbx)
	movl	388(%rbp), %eax
	movl	%eax, 388(%rbx)
	addq	$1808, %rbx             # imm = 0x710
	movslq	10144(%r15), %rax
	imulq	$1808, %rax, %rax       # imm = 0x710
	addq	10200(%r15), %rax
	cmpq	%rax, %rbx
	jb	.LBB1_84
	jmp	.LBB1_85
.LBB1_80:                               # %if.else.296
	movq	32(%rsp), %rcx          # 8-byte Reload
	movl	(%rcx), %eax
	movl	%eax, 1792(%rbp)
	movl	8(%rcx), %eax
	movl	%eax, 1800(%rbp)
.LBB1_85:                               # %cleanup
	movl	%r14d, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	cmd_put_drawing_color, .Lfunc_end1-cmd_put_drawing_color
	.cfi_endproc

	.globl	cmd_drawing_color_usage
	.align	16, 0x90
	.type	cmd_drawing_color_usage,@function
cmd_drawing_color_usage:                # @cmd_drawing_color_usage
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp22:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp23:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp25:
	.cfi_def_cfa_offset 48
.Ltmp26:
	.cfi_offset %rbx, -32
.Ltmp27:
	.cfi_offset %r14, -24
.Ltmp28:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	(%rbx), %rax
	movl	$gx_dc_type_data_pure, %ecx
	cmpq	%rcx, %rax
	je	.LBB2_1
# BB#2:                                 # %if.else
	movl	$gx_dc_type_data_ht_binary, %ecx
	cmpq	%rcx, %rax
	je	.LBB2_3
# BB#4:                                 # %if.else.12
	movl	$gx_dc_type_data_ht_colored, %ecx
	cmpq	%rcx, %rax
	je	.LBB2_5
# BB#10:                                # %if.else.18
	movl	$gx_dc_type_data_devn, %ecx
	cmpq	%rcx, %rax
	je	.LBB2_11
# BB#12:                                # %if.else.23
	movb	100(%r14), %cl
	movl	$1, %eax
	shlq	%cl, %rax
	decq	%rax
	jmp	.LBB2_13
.LBB2_1:                                # %if.then
	movq	8(%rbx), %rsi
	jmp	.LBB2_8
.LBB2_3:                                # %if.then.3
	movq	16(%rbx), %rsi
	movq	%r14, %rdi
	callq	gx_color_index2usage
	movq	%rax, %r15
	movq	24(%rbx), %rsi
	movq	%r14, %rdi
	callq	gx_color_index2usage
	orq	%r15, %rax
	movq	%r14, %rdi
	movq	%rax, %rsi
	jmp	.LBB2_9
.LBB2_5:                                # %if.then.15
	movl	$8, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	callq	*1664(%r14)
	testl	%eax, %eax
	jle	.LBB2_6
# BB#7:                                 # %if.end.i
	movzbl	18(%rbx), %eax
	shll	$3, %eax
	movzbl	19(%rbx), %ecx
	shll	$2, %ecx
	orl	%eax, %ecx
	movzbl	20(%rbx), %eax
	addl	%eax, %eax
	orl	%ecx, %eax
	movzbl	21(%rbx), %ecx
	orl	%eax, %ecx
	movq	344(%rbx), %rax
	movzbl	byte_reverse_bits(%rax), %esi
	shrl	$4, %esi
	orl	%ecx, %esi
	jmp	.LBB2_8
.LBB2_11:                               # %if.then.21
	movq	$0, 8(%rsp)
	leaq	8(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	gx_dc_devn_get_nonzero_comps
	movq	8(%rsp), %rax
.LBB2_13:                               # %return
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB2_6:                                # %if.then.i
	movb	108(%r14), %cl
	movl	$1, %esi
	shlq	%cl, %rsi
	decq	%rsi
.LBB2_8:                                # %colored_halftone_color_usage.exit
	movq	%r14, %rdi
.LBB2_9:                                # %colored_halftone_color_usage.exit
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	gx_color_index2usage    # TAILCALL
.Lfunc_end2:
	.size	cmd_drawing_color_usage, .Lfunc_end2-cmd_drawing_color_usage
	.cfi_endproc

	.globl	cmd_clear_known
	.align	16, 0x90
	.type	cmd_clear_known,@function
cmd_clear_known:                        # @cmd_clear_known
	.cfi_startproc
# BB#0:                                 # %entry
	movl	10144(%rdi), %eax
	testl	%eax, %eax
	jle	.LBB3_3
# BB#1:                                 # %for.body.lr.ph
	notl	%esi
	incl	%eax
	movl	$1752, %ecx             # imm = 0x6D8
	addq	10200(%rdi), %rcx
	.align	16, 0x90
.LBB3_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	andl	%esi, (%rcx)
	decl	%eax
	addq	$1808, %rcx             # imm = 0x710
	cmpl	$1, %eax
	jg	.LBB3_2
.LBB3_3:                                # %for.end
	retq
.Lfunc_end3:
	.size	cmd_clear_known, .Lfunc_end3-cmd_clear_known
	.cfi_endproc

	.globl	cmd_check_clip_path
	.align	16, 0x90
	.type	cmd_check_clip_path,@function
cmd_check_clip_path:                    # @cmd_check_clip_path
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.LBB4_3
# BB#1:                                 # %if.end
	movq	%rsi, 12016(%rdi)
	movq	296(%rsi), %rcx
	cmpq	12024(%rdi), %rcx
	je	.LBB4_3
# BB#2:                                 # %if.end.3
	movq	%rcx, 12024(%rdi)
	movl	$1, %eax
.LBB4_3:                                # %return
	retq
.Lfunc_end4:
	.size	cmd_check_clip_path, .Lfunc_end4-cmd_check_clip_path
	.cfi_endproc

	.globl	cmd_write_ctm_return_length
	.align	16, 0x90
	.type	cmd_write_ctm_return_length,@function
cmd_write_ctm_return_length:            # @cmd_write_ctm_return_length
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp29:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 24
	subq	$360, %rsp              # imm = 0x168
.Ltmp31:
	.cfi_def_cfa_offset 384
.Ltmp32:
	.cfi_offset %rbx, -24
.Ltmp33:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	24(%rdi), %rsi
	leaq	8(%rsp), %rbx
	movq	%rbx, %rdi
	callq	s_init
	movq	%rbx, %rdi
	callq	swrite_position_only
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	sput_matrix
	movq	%rbx, %rdi
	callq	stell
	addq	$360, %rsp              # imm = 0x168
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end5:
	.size	cmd_write_ctm_return_length, .Lfunc_end5-cmd_write_ctm_return_length
	.cfi_endproc

	.globl	cmd_write_ctm_return_length_nodevice
	.align	16, 0x90
	.type	cmd_write_ctm_return_length_nodevice,@function
cmd_write_ctm_return_length_nodevice:   # @cmd_write_ctm_return_length_nodevice
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp34:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp35:
	.cfi_def_cfa_offset 24
	subq	$360, %rsp              # imm = 0x168
.Ltmp36:
	.cfi_def_cfa_offset 384
.Ltmp37:
	.cfi_offset %rbx, -24
.Ltmp38:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	leaq	8(%rsp), %rbx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	s_init
	movq	%rbx, %rdi
	callq	swrite_position_only
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	sput_matrix
	movq	%rbx, %rdi
	callq	stell
	addq	$360, %rsp              # imm = 0x168
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end6:
	.size	cmd_write_ctm_return_length_nodevice, .Lfunc_end6-cmd_write_ctm_return_length_nodevice
	.cfi_endproc

	.globl	cmd_write_ctm
	.align	16, 0x90
	.type	cmd_write_ctm,@function
cmd_write_ctm:                          # @cmd_write_ctm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp41:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 40
	subq	$360, %rsp              # imm = 0x168
.Ltmp43:
	.cfi_def_cfa_offset 400
.Ltmp44:
	.cfi_offset %rbx, -40
.Ltmp45:
	.cfi_offset %r14, -32
.Ltmp46:
	.cfi_offset %r15, -24
.Ltmp47:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	8(%rsp), %rbp
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	s_init
	incq	%rbx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%r15d, %edx
	callq	swrite_string
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	sput_matrix
	xorl	%eax, %eax
	addq	$360, %rsp              # imm = 0x168
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	cmd_write_ctm, .Lfunc_end7-cmd_write_ctm
	.cfi_endproc

	.globl	cmd_write_unknown
	.align	16, 0x90
	.type	cmd_write_unknown,@function
cmd_write_unknown:                      # @cmd_write_unknown
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp49:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp50:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp51:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp52:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp53:
	.cfi_def_cfa_offset 56
	subq	$424, %rsp              # imm = 0x1A8
.Ltmp54:
	.cfi_def_cfa_offset 480
.Ltmp55:
	.cfi_offset %rbx, -56
.Ltmp56:
	.cfi_offset %r12, -48
.Ltmp57:
	.cfi_offset %r13, -40
.Ltmp58:
	.cfi_offset %r14, -32
.Ltmp59:
	.cfi_offset %r15, -24
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsi, %r13
	movq	%rdi, %r14
	movl	1752(%r13), %ebx
	notl	%ebx
	andl	%edx, %ebx
	movl	%ebx, %r15d
	andl	$1023, %r15d            # imm = 0x3FF
	je	.LBB8_26
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	testb	$1, %bl
	jne	.LBB8_3
# BB#2:
	leaq	64(%rsp), %rbp
	jmp	.LBB8_4
.LBB8_3:                                # %if.then.4
	movl	10364(%r14), %eax
	shll	$3, %eax
	addl	10376(%r14), %eax
	movb	%al, 64(%rsp)
	movl	10368(%r14), %eax
	shll	$3, %eax
	addl	10372(%r14), %eax
	leaq	66(%rsp), %rbp
	movb	%al, 65(%rsp)
	movl	$2, %eax
.LBB8_4:                                # %if.end
	testb	$2, %bl
	je	.LBB8_8
# BB#5:                                 # %if.then.17
	leaq	64(%rsp,%rax), %rax
	movl	10380(%r14), %ecx
	leal	4(,%rcx,4), %edx
	movl	$2, %ecx
	cmpl	$0, 10648(%r14)
	jne	.LBB8_7
# BB#6:                                 # %select.mid
	xorl	%ecx, %ecx
.LBB8_7:                                # %select.end
	orl	%edx, %ecx
	cmpl	$0, 10644(%r14)
	setne	%dl
	movzbl	%dl, %edx
	orl	%ecx, %edx
	incq	%rax
	movb	%dl, (%rbp)
	movq	%rax, %rbp
.LBB8_8:                                # %if.end.31
	testb	$4, %bl
	je	.LBB8_10
# BB#9:                                 # %if.then.34
	leaq	10632(%r14), %rsi
	movl	$4, %edx
	movq	%rbp, %rdi
	callq	memcpy
	addq	$4, %rbp
.LBB8_10:                               # %if.end.36
	testb	$8, %bl
	je	.LBB8_12
# BB#11:                                # %if.then.39
	movss	10360(%r14), %xmm0      # xmm0 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm0
	movss	%xmm0, 48(%rsp)
	leaq	48(%rsp), %rsi
	movl	$4, %edx
	movq	%rbp, %rdi
	callq	memcpy
	addq	$4, %rbp
.LBB8_12:                               # %if.end.44
	testb	$16, %bl
	je	.LBB8_14
# BB#13:                                # %if.then.47
	leaq	10384(%r14), %rsi
	movl	$4, %edx
	movq	%rbp, %rdi
	callq	memcpy
	addq	$4, %rbp
.LBB8_14:                               # %if.end.52
	testb	$32, %bl
	je	.LBB8_16
# BB#15:                                # %if.then.55
	movl	10556(%r14), %eax
	movl	10584(%r14), %ecx
	shll	$3, %eax
	leal	(%rax,%rcx,4), %eax
	movl	10612(%r14), %ecx
	leal	(%rax,%rcx,2), %eax
	addl	10608(%r14), %eax
	movb	%al, (%rbp)
	movb	10660(%r14), %al
	movb	%al, 1(%rbp)
	addq	$2, %rbp
.LBB8_16:                               # %if.end.71
	testb	$-128, %bl
	je	.LBB8_18
# BB#17:                                # %if.then.74
	leaq	10560(%r14), %rsi
	movl	$4, %edx
	movq	%rbp, %rdi
	callq	memcpy
	addq	$4, %rbp
.LBB8_18:                               # %if.end.78
	testb	$1, %bh
	je	.LBB8_20
# BB#19:                                # %if.then.81
	leaq	10564(%r14), %rsi
	movl	$4, %edx
	movq	%rbp, %rdi
	callq	memcpy
	addq	$4, %rbp
.LBB8_20:                               # %if.end.86
	testb	$2, %bh
	je	.LBB8_22
# BB#21:                                # %if.then.89
	leaq	10552(%r14), %rsi
	movl	$2, %edx
	movq	%rbp, %rdi
	callq	memcpy
	addq	$2, %rbp
.LBB8_22:                               # %if.end.94
	leaq	1760(%r13), %rsi
	movl	%ebx, %eax
	movl	%ebx, %r12d
	andl	$896, %eax              # imm = 0x380
	cmpl	$1, %eax
	movl	%ebp, %edx
	sbbl	$-1, %edx
	addl	$2, %edx
	leaq	64(%rsp), %rbx
	subl	%ebx, %edx
	movq	%r14, %rdi
	callq	cmd_put_list_op
	testq	%rax, %rax
	je	.LBB8_24
# BB#23:                                # %cond.end.113.thread
	movb	$-43, (%rax)
	jmp	.LBB8_25
.LBB8_24:                               # %cond.end.113
	cmpl	$0, 10192(%r14)
	js	.LBB8_97
.LBB8_25:                               # %if.end.118
	incq	%rax
	movl	%r15d, %edi
	movq	%rax, %rsi
	callq	cmd_put_w
	subq	%rbx, %rbp
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	callq	memcpy
	orl	%r15d, 1752(%r13)
	movl	%r12d, %ebx
.LBB8_26:                               # %if.end.129
	testb	$4, %bh
	je	.LBB8_31
# BB#27:                                # %if.then.132
	movl	%ebx, %r15d
	leaq	1760(%r13), %rsi
	movl	$9, %edx
	movq	%r14, %rdi
	callq	cmd_put_list_op
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB8_29
# BB#28:                                # %cond.end.140.thread
	movb	$-46, (%rbx)
	jmp	.LBB8_30
.LBB8_29:                               # %cond.end.140
	movl	10192(%r14), %ebp
	testl	%ebp, %ebp
	js	.LBB8_98
.LBB8_30:                               # %if.end.145
	leaq	1(%rbx), %rdi
	leaq	10636(%r14), %rsi
	movl	$4, %edx
	callq	memcpy
	addq	$5, %rbx
	leaq	10640(%r14), %rsi
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	memcpy
	orb	$4, 1753(%r13)
	movl	%r15d, %ebx
.LBB8_31:                               # %if.end.156
	testb	$8, %bh
	je	.LBB8_36
# BB#32:                                # %if.then.159
	movl	%ebx, 40(%rsp)          # 4-byte Spill
	leaq	10468(%r14), %r15
	movq	24(%r14), %rsi
	leaq	64(%rsp), %rbx
	movq	%rbx, %rdi
	callq	s_init
	movq	%rbx, %rdi
	callq	swrite_position_only
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	sput_matrix
	movq	%rbx, %rdi
	callq	stell
	movq	%rax, %r12
	leaq	1760(%r13), %rsi
	leal	1(%r12), %edx
	movq	%r14, %rdi
	callq	cmd_put_list_op
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB8_34
# BB#33:                                # %cond.end.170.thread
	movb	$-45, (%rbx)
	jmp	.LBB8_35
.LBB8_34:                               # %cond.end.170
	movl	10192(%r14), %ebp
	testl	%ebp, %ebp
	js	.LBB8_98
.LBB8_35:                               # %cleanup.185.thread
	leaq	64(%rsp), %rbp
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	s_init
	incq	%rbx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%r12d, %edx
	callq	swrite_string
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	sput_matrix
	orb	$8, 1753(%r13)
	movl	40(%rsp), %ebx          # 4-byte Reload
.LBB8_36:                               # %if.end.188
	testb	$16, %bh
	je	.LBB8_47
# BB#37:                                # %if.then.191
	movl	%ebx, %r12d
	movslq	10432(%r14), %r15
	leaq	1760(%r13), %rsi
	leal	10(,%r15,4), %edx
	movq	%r14, %rdi
	callq	cmd_put_list_op
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB8_39
# BB#38:                                # %cond.end.206.thread
	movb	$-42, (%rbx)
	jmp	.LBB8_40
.LBB8_39:                               # %cond.end.206
	movl	10192(%r14), %ebp
	testl	%ebp, %ebp
	js	.LBB8_98
.LBB8_40:                               # %if.end.211
	movl	$128, %eax
	cmpl	$0, 10440(%r14)
	jne	.LBB8_42
# BB#41:                                # %select.mid278
	xorl	%eax, %eax
.LBB8_42:                               # %select.end277
	addl	%r15d, %eax
	movl	$64, %ecx
	cmpl	$0, 10396(%r14)
	jne	.LBB8_44
# BB#43:                                # %select.mid305
	xorl	%ecx, %ecx
.LBB8_44:                               # %select.end304
	addl	%ecx, %eax
	movb	%al, 1(%rbx)
	leaq	2(%rbx), %rdi
	leaq	10392(%r14), %rsi
	movl	$4, %edx
	callq	memcpy
	leaq	6(%rbx), %rdi
	leaq	10436(%r14), %rsi
	movl	$4, %edx
	callq	memcpy
	testl	%r15d, %r15d
	je	.LBB8_46
# BB#45:                                # %if.then.236
	addq	$10, %rbx
	leaq	11968(%r14), %rsi
	shlq	$2, %r15
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	memcpy
.LBB8_46:                               # %cleanup.246.thread
	orb	$16, 1753(%r13)
	movl	%r12d, %ebx
.LBB8_47:                               # %if.end.249
	testb	$32, %bh
	je	.LBB8_81
# BB#48:                                # %if.then.252
	movq	12016(%r14), %r15
	movq	%r13, %rax
	subq	10200(%r14), %rax
	shrq	$4, %rax
	movl	10132(%r14), %ecx
	imull	%ecx, %eax
	imull	$266059921, %eax, %r12d # imm = 0xFDBC091
	leal	(%rcx,%r12), %eax
	movq	%r13, %rcx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movl	836(%r14), %r13d
	cmpl	%r13d, %eax
	cmovlel	%eax, %r13d
	leaq	1760(%rcx), %rsi
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movl	$1, %edx
	movq	%r14, %rdi
	callq	cmd_put_list_op
	testq	%rax, %rax
	je	.LBB8_50
# BB#49:                                # %cond.end.276.thread
	movb	$-39, (%rax)
	xorl	%ebp, %ebp
	jmp	.LBB8_51
.LBB8_50:                               # %cond.end.276
	movl	10192(%r14), %ebp
	testl	%ebp, %ebp
	js	.LBB8_98
.LBB8_51:                               # %if.end.281
	movl	%ebx, 40(%rsp)          # 4-byte Spill
	cmpl	$0, 280(%r15)
	je	.LBB8_59
# BB#52:                                # %if.then.283
	leaq	64(%rsp), %rsi
	movq	%r15, %rdi
	callq	gx_path_is_rectangular
	testl	%eax, %eax
	je	.LBB8_55
# BB#53:                                # %land.lhs.true
	movl	64(%rsp), %ecx
	movl	68(%rsp), %r8d
	movl	%r8d, %edx
	orl	%ecx, %edx
	movl	72(%rsp), %r9d
	orl	%r9d, %edx
	movl	76(%rsp), %eax
	movb	%al, %bl
	orb	%dl, %bl
	je	.LBB8_54
.LBB8_55:                               # %if.else
	testb	$8, 12168(%r14)
	jne	.LBB8_69
# BB#56:                                # %if.then.318
	shll	$8, %r12d
	addl	$-256, %r12d
	shll	$8, %r13d
	addl	$256, %r13d             # imm = 0x100
	movb	$-13, %al
	cmpl	$1, 232(%r15)
	je	.LBB8_58
# BB#57:                                # %select.mid285
	movb	$-16, %al
.LBB8_58:                               # %select.end284
	movl	$1, 8(%rsp)
	movl	$1, (%rsp)
	movzbl	%al, %r9d
	movq	%r14, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	%r15, %rdx
	movl	%r12d, %ecx
	movl	%r13d, %r8d
	callq	cmd_put_path
	jmp	.LBB8_71
.LBB8_59:                               # %if.else.332
	movq	%r15, %rdi
	callq	gx_cpath_list
	movq	40(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB8_60
# BB#61:                                # %if.else.338
	testb	$8, 12168(%r14)
	je	.LBB8_62
.LBB8_69:                               # %if.then.375
	leaq	48(%rsp), %rsi
	movq	%r15, %rdi
	callq	gx_cpath_outer_box
	movl	48(%rsp), %ecx
	movl	%ecx, %eax
	andl	$-256, %eax
	movl	%eax, 48(%rsp)
	movl	52(%rsp), %r8d
	movl	%r8d, %edx
	andl	$-256, %edx
	movl	%edx, 52(%rsp)
	sarl	$8, %ecx
	sarl	$8, %r8d
	movl	$255, %esi
	movl	$255, %r9d
	subl	%eax, %r9d
	addl	56(%rsp), %r9d
	sarl	$8, %r9d
	subl	%edx, %esi
	addl	60(%rsp), %esi
	sarl	$8, %esi
	movl	%esi, (%rsp)
	jmp	.LBB8_70
.LBB8_54:                               # %if.then.298
	subl	%ecx, %r9d
	sarl	$8, %ecx
	sarl	$8, %r9d
	subl	%r8d, %eax
	sarl	$8, %r8d
	sarl	$8, %eax
	movl	%eax, (%rsp)
.LBB8_70:                               # %if.end.413
	movl	$48, %edx
	movq	%r14, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	callq	cmd_write_rect_cmd
.LBB8_71:                               # %if.end.413
	movl	%eax, %ebp
	movq	24(%rsp), %r15          # 8-byte Reload
.LBB8_72:                               # %if.end.413
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	cmd_put_list_op
	testq	%rax, %rax
	je	.LBB8_74
# BB#73:                                # %cond.end.421.thread
	movb	$-38, (%rax)
	testl	%ebp, %ebp
	movl	40(%rsp), %ebx          # 4-byte Reload
	jns	.LBB8_80
	jmp	.LBB8_98
.LBB8_74:                               # %cond.end.421
	movl	10192(%r14), %eax
	testl	%ebp, %ebp
	cmovnsl	%eax, %ebp
	testl	%eax, %eax
	movl	40(%rsp), %ebx          # 4-byte Reload
	jns	.LBB8_79
# BB#75:                                # %land.lhs.true.429
	cmpl	$0, 12144(%r14)
	je	.LBB8_79
# BB#76:                                # %if.then.431
	incl	12156(%r14)
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	cmd_put_list_op
	testq	%rax, %rax
	je	.LBB8_78
# BB#77:                                # %cond.false.438
	movb	$-38, (%rax)
.LBB8_78:                               # %cond.end.439
	decl	12156(%r14)
.LBB8_79:                               # %if.end.442
	testl	%ebp, %ebp
	js	.LBB8_98
.LBB8_80:                               # %cleanup.449
	movq	32(%rsp), %r13          # 8-byte Reload
	movw	$1, 1742(%r13)
	orb	$32, 1753(%r13)
.LBB8_81:                               # %if.end.458
	xorl	%ebp, %ebp
	testb	$64, %bh
	je	.LBB8_98
# BB#82:                                # %if.then.461
	testb	$8, 12032(%r14)
	jne	.LBB8_83
# BB#92:                                # %if.else.535
	leaq	1760(%r13), %rsi
	movl	$26, %edx
	movq	%r14, %rdi
	callq	cmd_put_list_op
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB8_93
# BB#94:                                # %cond.false.542
	movb	$-44, (%rbx)
	xorl	%ebp, %ebp
	jmp	.LBB8_95
.LBB8_83:                               # %if.then.466
	movq	12072(%r14), %rbx
	movl	72(%rbx), %r15d
	leal	1(%r15), %ebp
	movq	40(%rbx), %rdi
	callq	gs_color_space_num_components
	movl	%eax, %r12d
	imull	%ebp, %r12d
	addq	$80, %rbx
	testb	$4, 12032(%r14)
	je	.LBB8_85
# BB#84:                                # %if.then.477
	movq	(%rbx), %rbx
	addq	$48, %rbx
	shll	$2, %r12d
.LBB8_85:                               # %if.end.487
	movq	(%rbx), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	leaq	1760(%r13), %rbx
	movl	$3, %eax
	cmpl	$128, %r15d
	jb	.LBB8_88
# BB#86:                                # %cond.false.492
	movl	$4, %eax
	cmpl	$16384, %r15d           # imm = 0x4000
	jb	.LBB8_88
# BB#87:                                # %cond.false.496
	movl	%r15d, %edi
	callq	cmd_size_w
	addl	$2, %eax
.LBB8_88:                               # %cond.end.500
	leal	24(%r12,%rax), %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	cmd_put_list_op
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB8_90
# BB#89:                                # %cond.end.513.thread
	movb	$-44, (%rbx)
	jmp	.LBB8_91
.LBB8_93:                               # %cond.true.540
	movl	10192(%r14), %ebp
.LBB8_95:                               # %cond.end.543
	movq	%rbx, %rdi
	addq	$2, %rdi
	leaq	12048(%r14), %rsi
	movl	$24, %edx
	callq	memcpy
	testl	%ebp, %ebp
	jns	.LBB8_96
	jmp	.LBB8_98
.LBB8_90:                               # %cond.end.513
	movl	10192(%r14), %ebp
	testl	%ebp, %ebp
	js	.LBB8_98
.LBB8_91:                               # %cleanup.527.thread
	leaq	2(%rbx), %rdi
	leaq	12048(%r14), %rsi
	movl	$24, %edx
	callq	memcpy
	movq	%rbx, %rsi
	addq	$26, %rsi
	movl	%r15d, %edi
	callq	cmd_put_w
	movl	%r12d, %edx
	movq	%rax, %rdi
	movq	40(%rsp), %rsi          # 8-byte Reload
	callq	memcpy
.LBB8_96:                               # %cleanup.559
	movb	12032(%r14), %al
	movb	%al, 1(%rbx)
	orb	$64, 1753(%r13)
.LBB8_97:                               # %cleanup.563
	xorl	%ebp, %ebp
.LBB8_98:                               # %cleanup.563
	movl	%ebp, %eax
	addq	$424, %rsp              # imm = 0x1A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_60:                               # %if.then.337
	movq	%rax, %rbx
.LBB8_62:                               # %for.cond.preheader
	testq	%rbx, %rbx
	movq	24(%rsp), %r15          # 8-byte Reload
	je	.LBB8_72
	.align	16, 0x90
.LBB8_63:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	24(%rbx), %ecx
	movl	28(%rbx), %r9d
	subl	%ecx, %r9d
	jle	.LBB8_67
# BB#64:                                # %land.lhs.true.353
                                        #   in Loop: Header=BB8_63 Depth=1
	movl	16(%rbx), %r8d
	cmpl	%r13d, %r8d
	jge	.LBB8_67
# BB#65:                                # %land.lhs.true.357
                                        #   in Loop: Header=BB8_63 Depth=1
	movl	20(%rbx), %eax
	cmpl	%r12d, %eax
	jle	.LBB8_67
# BB#66:                                # %if.then.361
                                        #   in Loop: Header=BB8_63 Depth=1
	subl	%r8d, %eax
	movl	%eax, (%rsp)
	movl	$48, %edx
	movq	%r14, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	callq	cmd_write_rect_cmd
	movl	%eax, %ebp
	.align	16, 0x90
.LBB8_67:                               # %for.inc
                                        #   in Loop: Header=BB8_63 Depth=1
	testl	%ebp, %ebp
	js	.LBB8_72
# BB#68:                                # %for.inc
                                        #   in Loop: Header=BB8_63 Depth=1
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB8_63
	jmp	.LBB8_72
.Lfunc_end8:
	.size	cmd_write_unknown, .Lfunc_end8-cmd_write_unknown
	.cfi_endproc

	.align	16, 0x90
	.type	cmd_put_path,@function
cmd_put_path:                           # @cmd_put_path
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp62:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp63:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp64:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp65:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp66:
	.cfi_def_cfa_offset 56
	subq	$312, %rsp              # imm = 0x138
.Ltmp67:
	.cfi_def_cfa_offset 368
.Ltmp68:
	.cfi_offset %rbx, -56
.Ltmp69:
	.cfi_offset %r12, -48
.Ltmp70:
	.cfi_offset %r13, -40
.Ltmp71:
	.cfi_offset %r14, -32
.Ltmp72:
	.cfi_offset %r15, -24
.Ltmp73:
	.cfi_offset %rbp, -16
	movl	%r9d, 12(%rsp)          # 4-byte Spill
	movl	%r8d, 84(%rsp)          # 4-byte Spill
	movl	%ecx, 80(%rsp)          # 4-byte Spill
	movq	%rsi, %rbp
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movb	$0, 167(%rsp)
	movl	1720(%rbp), %r13d
	movl	1724(%rbp), %eax
	shll	$8, %r13d
	shll	$8, %eax
	movl	%eax, 52(%rsp)          # 4-byte Spill
	leaq	248(%rsp), %r15
	movq	%r15, %rdi
	movq	%rdx, %rsi
	callq	gx_path_enum_init
	movq	%rbx, 168(%rsp)
	movq	%rbp, 176(%rsp)
	movl	$0, 184(%rsp)
	leaq	167(%rsp), %rax
	movq	%rax, 192(%rsp)
	movl	$2074996749, 76(%rsp)   # 4-byte Folded Spill
                                        # imm = 0x7BADF00D
	xorl	%edx, %edx
	movl	$0, 32(%rsp)            # 4-byte Folded Spill
	movl	$0, %r12d
	movl	$0, %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movl	$0, %r14d
	movl	$2074996749, %ebx       # imm = 0x7BADF00D
	movl	$2074996749, 100(%rsp)  # 4-byte Folded Spill
                                        # imm = 0x7BADF00D
	movl	$2074996749, 44(%rsp)   # 4-byte Folded Spill
                                        # imm = 0x7BADF00D
	movl	$0, 40(%rsp)            # 4-byte Folded Spill
	movl	$0, 36(%rsp)            # 4-byte Folded Spill
                                        # implicit-def: ECX
	jmp	.LBB9_1
.LBB9_22:                               #   in Loop: Header=BB9_1 Depth=1
	movl	%r13d, %r12d
	movq	88(%rsp), %rax          # 8-byte Reload
.LBB9_23:                               # %if.end.294
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movl	%r12d, %ebx
	xorl	%r12d, %r12d
	movl	$239, %esi
	xorl	%ecx, %ecx
	leaq	168(%rsp), %rdi
	leaq	112(%rsp), %rdx
	callq	cmd_put_segment
	movq	64(%rsp), %r13          # 8-byte Reload
	movl	%r13d, %edx
	movl	32(%rsp), %ecx          # 4-byte Reload
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	jmp	.LBB9_116
.LBB9_115:                              # %if.end.51
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	%ebp, %eax
	subl	56(%rsp), %eax          # 4-byte Folded Reload
	movl	%eax, 120(%rsp)
	movl	%edx, %eax
	subl	52(%rsp), %eax          # 4-byte Folded Reload
	movl	%eax, 124(%rsp)
	xorl	%ebx, %ebx
	movl	$224, %esi
	xorl	%ecx, %ecx
	leaq	168(%rsp), %rdi
	movq	%rdx, %r12
	leaq	120(%rsp), %rdx
	callq	cmd_put_segment
	movq	%r12, %rdx
	movl	$-1, %r12d
	movl	%edx, %r13d
	movl	%ebp, %ecx
	movl	%ecx, 32(%rsp)          # 4-byte Spill
	movl	$0, 100(%rsp)           # 4-byte Folded Spill
	movl	$0, 44(%rsp)            # 4-byte Folded Spill
	movl	%ebp, %ecx
	movq	%rbp, 56(%rsp)          # 8-byte Spill
	movl	%ecx, 40(%rsp)          # 4-byte Spill
	movl	%edx, %ecx
	movl	%ecx, 36(%rsp)          # 4-byte Spill
	jmp	.LBB9_116
	.align	16, 0x90
.LBB9_1:                                # %for.cond.outer.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_2 Depth 2
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	movl	%ecx, 48(%rsp)          # 4-byte Spill
	movl	%r13d, %eax
	movl	%eax, 56(%rsp)          # 4-byte Spill
	movl	%ebx, %r13d
	jmp	.LBB9_2
	.align	16, 0x90
.LBB9_29:                               # %if.then.81
                                        #   in Loop: Header=BB9_2 Depth=2
	testl	%r12d, %r12d
	movl	$1, %eax
	movl	100(%rsp), %ecx         # 4-byte Reload
	cmovsl	%eax, %ecx
	movl	%ecx, 100(%rsp)         # 4-byte Spill
	movq	112(%rsp), %r14
	movq	%r14, 88(%rsp)          # 8-byte Spill
	shrq	$32, %r14
	movl	%ebp, 76(%rsp)          # 4-byte Spill
.LBB9_2:                                # %for.cond
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r15, %rdi
	leaq	112(%rsp), %rsi
	callq	gx_path_enum_next
	movl	%eax, %ecx
	movl	$-15, %eax
	movl	%ecx, %edx
	cmpl	$5, %ecx
	ja	.LBB9_114
# BB#3:                                 # %for.cond
                                        #   in Loop: Header=BB9_2 Depth=2
	jmpq	*.LJTI9_0(,%rdx,8)
.LBB9_41:                               # %sw.bb.146
                                        #   in Loop: Header=BB9_2 Depth=2
	movl	116(%rsp), %eax
	cmpl	84(%rsp), %eax          # 4-byte Folded Reload
	setge	%cl
	cmpl	80(%rsp), %eax          # 4-byte Folded Reload
	movzbl	%cl, %ebx
	movl	$-1, %eax
	cmovll	%eax, %ebx
	movq	%r15, %rdi
	callq	gx_path_enum_notes
	movl	%eax, %ebp
	andl	376(%rsp), %ebp
	testl	%r13d, %r13d
	je	.LBB9_43
# BB#42:                                # %sw.bb.146
                                        #   in Loop: Header=BB9_2 Depth=2
	cmpl	%r13d, %ebx
	je	.LBB9_29
	jmp	.LBB9_43
	.align	16, 0x90
.LBB9_55:                               # %sw.bb.302
                                        #   in Loop: Header=BB9_2 Depth=2
	movq	%r15, %rdi
	movq	%r15, %rbp
	callq	gx_path_enum_notes
	movl	%eax, %r15d
	andl	376(%rsp), %r15d
	movl	116(%rsp), %ecx
	movl	124(%rsp), %eax
	cmpl	%eax, %ecx
	movl	%eax, %edx
	cmovlel	%ecx, %edx
	cmovll	%eax, %ecx
	movl	132(%rsp), %eax
	cmpl	%ecx, %eax
	movl	%ecx, %esi
	cmovgel	%eax, %esi
	cmpl	%edx, %eax
	cmovlel	%eax, %edx
	cmovll	%ecx, %esi
	cmpl	84(%rsp), %edx          # 4-byte Folded Reload
	setg	%cl
	cmpl	80(%rsp), %esi          # 4-byte Folded Reload
	movzbl	%cl, %ebx
	movl	$-1, %ecx
	cmovll	%ecx, %ebx
	testl	%ebx, %ebx
	je	.LBB9_58
# BB#56:                                # %if.then.335
                                        #   in Loop: Header=BB9_2 Depth=2
	cmpl	%r13d, %ebx
	jne	.LBB9_59
# BB#57:                                # %if.then.337
                                        #   in Loop: Header=BB9_2 Depth=2
	testl	%r12d, %r12d
	movl	$1, %ecx
	movl	100(%rsp), %edx         # 4-byte Reload
	cmovsl	%ecx, %edx
	movl	%edx, 100(%rsp)         # 4-byte Spill
	movl	128(%rsp), %ecx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	movl	%r15d, 76(%rsp)         # 4-byte Spill
	movl	%eax, %r14d
	movq	%rbp, %r15
	jmp	.LBB9_2
	.align	16, 0x90
.LBB9_27:                               # %sw.bb.66
                                        #   in Loop: Header=BB9_2 Depth=2
	movl	116(%rsp), %eax
	cmpl	84(%rsp), %eax          # 4-byte Folded Reload
	setge	%cl
	cmpl	80(%rsp), %eax          # 4-byte Folded Reload
	movzbl	%cl, %ebx
	movl	$-1, %eax
	cmovll	%eax, %ebx
	movq	%r15, %rdi
	callq	gx_path_enum_notes
	movl	%eax, %ebp
	andl	376(%rsp), %ebp
	testl	%r13d, %r13d
	je	.LBB9_30
# BB#28:                                # %sw.bb.66
                                        #   in Loop: Header=BB9_2 Depth=2
	cmpl	%r13d, %ebx
	je	.LBB9_29
	jmp	.LBB9_30
.LBB9_4:                                # %sw.bb
                                        #   in Loop: Header=BB9_2 Depth=2
	cmpl	$0, 368(%rsp)
	je	.LBB9_6
# BB#5:                                 # %sw.bb
                                        #   in Loop: Header=BB9_2 Depth=2
	testl	%r12d, %r12d
	jg	.LBB9_11
	jmp	.LBB9_6
.LBB9_8:                                # %sw.bb.23
                                        #   in Loop: Header=BB9_2 Depth=2
	cmpl	$0, 368(%rsp)
	je	.LBB9_24
# BB#9:                                 # %sw.bb.23
                                        #   in Loop: Header=BB9_2 Depth=2
	testl	%r12d, %r12d
	jle	.LBB9_24
# BB#10:                                # %if.then.27
                                        #   in Loop: Header=BB9_2 Depth=2
	movq	%r15, %rdi
	callq	gx_path_enum_backup
.LBB9_11:                               # %close
                                        #   in Loop: Header=BB9_2 Depth=2
	cmpl	44(%rsp), %r13d         # 4-byte Folded Reload
	je	.LBB9_20
# BB#12:                                # %if.then.235
                                        #   in Loop: Header=BB9_2 Depth=2
	testl	%r13d, %r13d
	movq	88(%rsp), %rdx          # 8-byte Reload
	je	.LBB9_17
# BB#13:                                # %land.lhs.true.237
                                        #   in Loop: Header=BB9_2 Depth=2
	leaq	167(%rsp), %rax
	cmpq	%rax, 192(%rsp)
	sete	%cl
	movl	%edx, %eax
	movl	56(%rsp), %edx          # 4-byte Reload
	subl	%edx, %eax
	movl	52(%rsp), %edx          # 4-byte Reload
	jne	.LBB9_16
# BB#14:                                # %land.lhs.true.237
                                        #   in Loop: Header=BB9_2 Depth=2
	cmpl	%edx, %r14d
	jne	.LBB9_16
# BB#15:                                # %land.lhs.true.237
                                        #   in Loop: Header=BB9_2 Depth=2
	testb	%cl, %cl
	je	.LBB9_17
.LBB9_16:                               # %if.then.246
                                        #   in Loop: Header=BB9_2 Depth=2
	movl	%eax, 120(%rsp)
	movl	%r14d, %eax
	subl	%edx, %eax
	movl	%eax, 124(%rsp)
	movl	$225, %esi
	leaq	168(%rsp), %rdi
	leaq	120(%rsp), %rdx
	movl	76(%rsp), %ecx          # 4-byte Reload
	callq	cmd_put_segment
	testl	%eax, %eax
	movl	%r14d, %ecx
	movl	%ecx, 52(%rsp)          # 4-byte Spill
	movq	88(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, 56(%rsp)          # 4-byte Spill
	js	.LBB9_114
.LBB9_17:                               # %if.end.263
                                        #   in Loop: Header=BB9_2 Depth=2
	testl	%r12d, %r12d
	jle	.LBB9_20
# BB#18:                                # %if.end.263
                                        #   in Loop: Header=BB9_2 Depth=2
	cmpl	$0, 100(%rsp)           # 4-byte Folded Reload
	je	.LBB9_20
# BB#19:                                # %if.then.267
                                        #   in Loop: Header=BB9_2 Depth=2
	movl	40(%rsp), %ebx          # 4-byte Reload
	movl	%ebx, %eax
	subl	56(%rsp), %eax          # 4-byte Folded Reload
	movl	%eax, 120(%rsp)
	movl	36(%rsp), %ebp          # 4-byte Reload
	movl	%ebp, %eax
	subl	52(%rsp), %eax          # 4-byte Folded Reload
	movl	%eax, 124(%rsp)
	movl	$225, %esi
	xorl	%ecx, %ecx
	leaq	168(%rsp), %rdi
	leaq	120(%rsp), %rdx
	callq	cmd_put_segment
	testl	%eax, %eax
	movl	%ebp, 52(%rsp)          # 4-byte Spill
	movl	%ebx, 56(%rsp)          # 4-byte Spill
	js	.LBB9_114
.LBB9_20:                               # %if.end.285
                                        #   in Loop: Header=BB9_2 Depth=2
	cmpl	$0, 368(%rsp)
	jne	.LBB9_53
# BB#21:                                # %if.end.285
                                        #   in Loop: Header=BB9_2 Depth=2
	testl	%r12d, %r12d
	jg	.LBB9_22
.LBB9_53:                               # %if.then.289
                                        #   in Loop: Header=BB9_2 Depth=2
	leaq	167(%rsp), %rax
	movq	%rax, 192(%rsp)
	xorl	%r12d, %r12d
	testl	%r13d, %r13d
	movq	88(%rsp), %rax          # 8-byte Reload
	je	.LBB9_23
# BB#54:                                #   in Loop: Header=BB9_2 Depth=2
	movl	%eax, %ebp
	movl	%r14d, %edx
	jmp	.LBB9_26
.LBB9_24:                               # %if.end.29
                                        #   in Loop: Header=BB9_2 Depth=2
	movq	112(%rsp), %rbp
	movq	%rbp, %rdx
	shrq	$32, %rdx
	cmpl	84(%rsp), %edx          # 4-byte Folded Reload
	setge	%al
	cmpl	80(%rsp), %edx          # 4-byte Folded Reload
	movzbl	%al, %r13d
	movl	$-1, %r12d
	cmovll	%r12d, %r13d
	movl	$0, 100(%rsp)           # 4-byte Folded Spill
	testl	%r13d, %r13d
	je	.LBB9_115
# BB#25:                                #   in Loop: Header=BB9_2 Depth=2
	movl	%r13d, 44(%rsp)         # 4-byte Spill
	movl	%ebp, %eax
	movl	%eax, 40(%rsp)          # 4-byte Spill
	movl	%edx, %eax
	movl	%eax, 36(%rsp)          # 4-byte Spill
.LBB9_26:                               # %cleanup.653.thread216
                                        #   in Loop: Header=BB9_2 Depth=2
	movl	%ebp, %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movl	%edx, %r14d
	jmp	.LBB9_2
.LBB9_43:                               # %if.end.174
                                        #   in Loop: Header=BB9_1 Depth=1
	testl	%r13d, %r13d
	je	.LBB9_44
# BB#45:                                # %land.lhs.true.176
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	167(%rsp), %rax
	cmpq	%rax, 192(%rsp)
	sete	%cl
	movq	88(%rsp), %rdx          # 8-byte Reload
	movl	%edx, %eax
	movl	56(%rsp), %edi          # 4-byte Reload
	subl	%edi, %eax
	movl	52(%rsp), %esi          # 4-byte Reload
	jne	.LBB9_48
# BB#46:                                # %land.lhs.true.176
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpl	%esi, %r14d
	jne	.LBB9_48
# BB#47:                                # %land.lhs.true.176
                                        #   in Loop: Header=BB9_1 Depth=1
	testb	%cl, %cl
	je	.LBB9_52
.LBB9_48:                               # %if.then.185
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	%rdx, %r13
	movl	%eax, 120(%rsp)
	movl	%r14d, %eax
	subl	%esi, %eax
	movl	%eax, 124(%rsp)
	testl	%r12d, %r12d
	js	.LBB9_49
# BB#50:                                # %if.else.196
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$225, %esi
	leaq	168(%rsp), %rdi
	leaq	120(%rsp), %rdx
	movl	76(%rsp), %ecx          # 4-byte Reload
	callq	cmd_put_segment
	movq	%r13, %rdx
	jmp	.LBB9_51
.LBB9_58:                               # %if.else.349
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpl	84(%rsp), %eax          # 4-byte Folded Reload
	setge	%cl
	cmpl	80(%rsp), %eax          # 4-byte Folded Reload
	movzbl	%cl, %ebx
	movl	$-1, %eax
	cmovll	%eax, %ebx
.LBB9_59:                               # %if.end.359
                                        #   in Loop: Header=BB9_1 Depth=1
	testl	%r13d, %r13d
	je	.LBB9_60
# BB#69:                                # %land.lhs.true.361
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	167(%rsp), %rax
	cmpq	%rax, 192(%rsp)
	sete	%cl
	movq	88(%rsp), %rdx          # 8-byte Reload
	movl	%edx, %eax
	movl	56(%rsp), %esi          # 4-byte Reload
	subl	%esi, %eax
	movl	52(%rsp), %r10d         # 4-byte Reload
	jne	.LBB9_74
# BB#70:                                # %land.lhs.true.361
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpl	%r10d, %r14d
	jne	.LBB9_74
# BB#71:                                # %land.lhs.true.361
                                        #   in Loop: Header=BB9_1 Depth=1
	testb	%cl, %cl
	jne	.LBB9_74
# BB#72:                                #   in Loop: Header=BB9_1 Depth=1
	movl	%r10d, %r14d
	movl	%esi, %edx
	jmp	.LBB9_73
.LBB9_30:                               # %if.end.92
                                        #   in Loop: Header=BB9_1 Depth=1
	testl	%r13d, %r13d
	je	.LBB9_31
# BB#32:                                # %land.lhs.true.94
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	167(%rsp), %rax
	cmpq	%rax, 192(%rsp)
	sete	%cl
	movq	88(%rsp), %rdx          # 8-byte Reload
	movl	%edx, %eax
	movl	56(%rsp), %edi          # 4-byte Reload
	subl	%edi, %eax
	movl	52(%rsp), %esi          # 4-byte Reload
	jne	.LBB9_35
# BB#33:                                # %land.lhs.true.94
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpl	%esi, %r14d
	jne	.LBB9_35
# BB#34:                                # %land.lhs.true.94
                                        #   in Loop: Header=BB9_1 Depth=1
	testb	%cl, %cl
	je	.LBB9_39
.LBB9_35:                               # %if.then.102
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	%rdx, %r13
	movl	%eax, 120(%rsp)
	movl	%r14d, %eax
	subl	%esi, %eax
	movl	%eax, 124(%rsp)
	testl	%r12d, %r12d
	js	.LBB9_36
# BB#37:                                # %if.else
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$225, %esi
	leaq	168(%rsp), %rdi
	leaq	120(%rsp), %rdx
	movl	76(%rsp), %ecx          # 4-byte Reload
	callq	cmd_put_segment
	movq	%r13, %rdx
	jmp	.LBB9_38
.LBB9_60:                               #   in Loop: Header=BB9_1 Depth=1
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	%rax, (%rsp)            # 8-byte Spill
	movq	88(%rsp), %rdx          # 8-byte Reload
	movl	52(%rsp), %r10d         # 4-byte Reload
	movl	56(%rsp), %esi          # 4-byte Reload
	jmp	.LBB9_61
.LBB9_74:                               # %if.then.370
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	%rdx, %r13
	movl	%eax, 104(%rsp)
	movl	%r14d, %eax
	subl	%r10d, %eax
	movl	%eax, 108(%rsp)
	testl	%r12d, %r12d
	js	.LBB9_75
# BB#76:                                # %if.else.381
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	%r10d, %r12d
	movl	$225, %esi
	leaq	168(%rsp), %rdi
	leaq	104(%rsp), %rdx
	movl	76(%rsp), %ecx          # 4-byte Reload
	callq	cmd_put_segment
	movl	%r12d, %r10d
	movl	48(%rsp), %ecx          # 4-byte Reload
	movq	%r13, %rdx
	jmp	.LBB9_77
.LBB9_44:                               #   in Loop: Header=BB9_1 Depth=1
	movq	88(%rsp), %rdx          # 8-byte Reload
	movl	52(%rsp), %esi          # 4-byte Reload
	movl	56(%rsp), %edi          # 4-byte Reload
	jmp	.LBB9_52
.LBB9_31:                               #   in Loop: Header=BB9_1 Depth=1
	movq	88(%rsp), %rdx          # 8-byte Reload
	movl	52(%rsp), %esi          # 4-byte Reload
	movl	56(%rsp), %edi          # 4-byte Reload
	jmp	.LBB9_39
.LBB9_75:                               # %if.then.378
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	%r10d, %r12d
	movl	$224, %esi
	xorl	%ecx, %ecx
	leaq	168(%rsp), %rdi
	leaq	104(%rsp), %rdx
	callq	cmd_put_segment
	movl	%r12d, %r10d
	movl	%r14d, %ecx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movq	%r13, %rdx
	movl	%edx, %ecx
	movl	%ecx, 32(%rsp)          # 4-byte Spill
	movl	48(%rsp), %ecx          # 4-byte Reload
.LBB9_77:                               # %if.end.384
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	56(%rsp), %esi          # 4-byte Reload
	testl	%eax, %eax
	cmovnsl	%r14d, %r10d
	cmovnsl	%edx, %esi
	cmovsl	%eax, %ecx
	js	.LBB9_118
# BB#78:                                #   in Loop: Header=BB9_1 Depth=1
	movl	%ecx, 48(%rsp)          # 4-byte Spill
.LBB9_73:                               # %cleanup.cont.409
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	%rax, (%rsp)            # 8-byte Spill
.LBB9_61:                               # %cleanup.cont.409
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	120(%rsp), %r12
	movq	128(%rsp), %rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movq	%rcx, %rax
	shrq	$32, %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	testl	%ebx, %ebx
	cmovnel	%ecx, %edx
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	cmovnel	%eax, %r14d
	movl	%ecx, %r8d
	subl	%r12d, %r8d
	movl	%r8d, 128(%rsp)
	movq	%r12, %rcx
	shrq	$32, %rcx
	movl	%eax, %r11d
	subl	%ecx, %r11d
	movl	%r11d, 132(%rsp)
	movq	112(%rsp), %rax
	movl	%r12d, %r9d
	subl	%eax, %r9d
	movl	%r9d, 120(%rsp)
	movq	%rax, %rdi
	shrq	$32, %rdi
	subl	%edi, %ecx
	movl	%ecx, 124(%rsp)
	subl	%esi, %eax
	movl	%eax, 112(%rsp)
	subl	%r10d, %edi
	movl	%edi, 116(%rsp)
	movq	192(%rsp), %rsi
	movb	(%rsi), %dl
	addb	$25, %dl
	movzbl	%dl, %edx
	cmpl	$7, %edx
	ja	.LBB9_86
# BB#62:                                # %land.lhs.true.440
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	136(%rsp), %r10d
	movl	152(%rsp), %esi
	testl	%r10d, %r10d
	je	.LBB9_63
# BB#79:                                # %land.lhs.true.489
                                        #   in Loop: Header=BB9_1 Depth=1
	addl	%eax, %esi
	jne	.LBB9_86
# BB#80:                                # %land.lhs.true.496
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	144(%rsp), %edx
	addl	%r9d, %edx
	jne	.LBB9_86
# BB#81:                                # %land.lhs.true.496
                                        #   in Loop: Header=BB9_1 Depth=1
	negl	%r10d
	cmpl	%r10d, %r8d
	jne	.LBB9_86
# BB#82:                                # %land.lhs.true.496
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpl	156(%rsp), %edi
	jne	.LBB9_86
# BB#83:                                # %land.lhs.true.496
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpl	148(%rsp), %ecx
	jne	.LBB9_86
# BB#84:                                # %land.lhs.true.496
                                        #   in Loop: Header=BB9_1 Depth=1
	movb	$-18, %r12b
	cmpl	140(%rsp), %r11d
.LBB9_85:                               # %land.lhs.true.496
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	112(%rsp), %r13
	je	.LBB9_112
	jmp	.LBB9_86
.LBB9_63:                               # %land.lhs.true.445
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpl	%esi, %eax
	jne	.LBB9_86
# BB#64:                                # %land.lhs.true.451
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpl	144(%rsp), %r9d
	jne	.LBB9_86
# BB#65:                                # %land.lhs.true.451
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	56(%rsp), %rdx          # 8-byte Reload
	cmpl	%r12d, %edx
	jne	.LBB9_86
# BB#66:                                # %land.lhs.true.463
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	156(%rsp), %edx
	addl	%edi, %edx
	jne	.LBB9_86
# BB#67:                                # %land.lhs.true.470
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	148(%rsp), %edx
	addl	%ecx, %edx
	jne	.LBB9_86
# BB#68:                                # %land.lhs.true.477
                                        #   in Loop: Header=BB9_1 Depth=1
	movb	$-18, %r12b
	movl	140(%rsp), %edx
	addl	%r11d, %edx
	jmp	.LBB9_85
.LBB9_86:                               # %if.else.529
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	%r8d, %edx
	orl	%edi, %edx
	je	.LBB9_87
# BB#97:                                # %if.else.575
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	%r11d, %edx
	orl	%eax, %edx
	je	.LBB9_98
# BB#108:                               # %if.else.617
                                        #   in Loop: Header=BB9_1 Depth=1
	movb	$-22, %r12b
	orl	%edi, %eax
	leaq	120(%rsp), %r13
	je	.LBB9_112
# BB#109:                               # %if.else.626
                                        #   in Loop: Header=BB9_1 Depth=1
	orl	%r8d, %r11d
	movb	$-21, %r12b
	je	.LBB9_111
# BB#110:                               # %if.else.626
                                        #   in Loop: Header=BB9_1 Depth=1
	movb	$-25, %r12b
.LBB9_111:                              # %if.else.626
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	112(%rsp), %r13
	jmp	.LBB9_112
.LBB9_87:                               # %if.then.537
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	%eax, 116(%rsp)
	movl	%r11d, 128(%rsp)
	movl	%ecx, %edx
	xorl	%eax, %edx
	js	.LBB9_93
# BB#88:                                # %if.then.546
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpl	%ecx, %r9d
	movb	$-19, %r12b
	je	.LBB9_90
# BB#89:                                # %if.then.546
                                        #   in Loop: Header=BB9_1 Depth=1
	movb	$-24, %r12b
.LBB9_90:                               # %if.then.546
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpl	%eax, %r11d
	je	.LBB9_92
# BB#91:                                # %if.then.546
                                        #   in Loop: Header=BB9_1 Depth=1
	movb	$-24, %r12b
.LBB9_92:                               # %if.then.546
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	116(%rsp), %r13
	jmp	.LBB9_112
.LBB9_98:                               # %if.then.583
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	%r9d, %eax
	xorl	%edi, %eax
	js	.LBB9_104
# BB#99:                                # %if.then.590
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpl	%r9d, %ecx
	movb	$-20, %r12b
	je	.LBB9_101
# BB#100:                               # %if.then.590
                                        #   in Loop: Header=BB9_1 Depth=1
	movb	$-23, %r12b
.LBB9_101:                              # %if.then.590
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpl	%edi, %r8d
	je	.LBB9_103
# BB#102:                               # %if.then.590
                                        #   in Loop: Header=BB9_1 Depth=1
	movb	$-23, %r12b
.LBB9_103:                              # %if.then.590
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	116(%rsp), %r13
	jmp	.LBB9_112
.LBB9_93:                               # %if.else.558
                                        #   in Loop: Header=BB9_1 Depth=1
	movb	$-24, %r12b
	addl	%eax, %r11d
	jne	.LBB9_94
# BB#95:                                # %if.else.558
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	%ecx, %eax
	negl	%eax
	cmpl	%eax, %r9d
	leaq	116(%rsp), %r13
	jne	.LBB9_112
# BB#96:                                # %if.then.570
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	%ecx, 120(%rsp)
	movb	$-19, %r12b
	leaq	116(%rsp), %r13
	jmp	.LBB9_112
.LBB9_104:                              # %if.else.602
                                        #   in Loop: Header=BB9_1 Depth=1
	movb	$-23, %r12b
	addl	%r9d, %ecx
	leaq	116(%rsp), %r13
	jne	.LBB9_112
# BB#105:                               # %land.lhs.true.608
                                        #   in Loop: Header=BB9_1 Depth=1
	addl	%edi, %r8d
	movb	$-20, %r12b
	je	.LBB9_107
# BB#106:                               # %land.lhs.true.608
                                        #   in Loop: Header=BB9_1 Depth=1
	movb	$-23, %r12b
.LBB9_107:                              # %land.lhs.true.608
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	116(%rsp), %r13
	jmp	.LBB9_112
.LBB9_49:                               # %if.then.193
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$224, %esi
	xorl	%ecx, %ecx
	leaq	168(%rsp), %rdi
	leaq	120(%rsp), %rdx
	callq	cmd_put_segment
	movl	%r14d, %ecx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movq	%r13, %rdx
	movl	%edx, %ecx
	movl	%ecx, 32(%rsp)          # 4-byte Spill
.LBB9_51:                               # %if.end.199
                                        #   in Loop: Header=BB9_1 Depth=1
	testl	%eax, %eax
	movl	%r14d, %esi
	movl	%edx, %edi
	js	.LBB9_114
.LBB9_52:                               # %cleanup.226
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	64(%rsp), %rax          # 8-byte Reload
	movl	%eax, %r12d
	movq	112(%rsp), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	%rax, %r13
	shrq	$32, %r13
	testl	%ebx, %ebx
	cmovnel	%eax, %edx
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	cmovnel	%r13d, %r14d
	subl	%edi, %eax
	movl	%eax, 120(%rsp)
	movl	%r13d, %eax
	subl	%esi, %eax
	movl	%eax, 124(%rsp)
	movl	$225, %esi
	jmp	.LBB9_40
.LBB9_36:                               # %if.then.110
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$224, %esi
	xorl	%ecx, %ecx
	leaq	168(%rsp), %rdi
	leaq	120(%rsp), %rdx
	callq	cmd_put_segment
	movl	%r14d, %ecx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movq	%r13, %rdx
	movl	%edx, %ecx
	movl	%ecx, 32(%rsp)          # 4-byte Spill
.LBB9_38:                               # %if.end.115
                                        #   in Loop: Header=BB9_1 Depth=1
	testl	%eax, %eax
	movl	%r14d, %esi
	movl	%edx, %edi
	js	.LBB9_114
.LBB9_39:                               # %cleanup
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	64(%rsp), %rax          # 8-byte Reload
	movl	%eax, %r12d
	movq	112(%rsp), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	%rax, %r13
	shrq	$32, %r13
	testl	%ebx, %ebx
	cmovnel	%eax, %edx
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	cmovnel	%r13d, %r14d
	subl	%edi, %eax
	movl	%eax, 120(%rsp)
	movl	%r13d, %eax
	subl	%esi, %eax
	movl	%eax, 124(%rsp)
	movl	$241, %esi
.LBB9_40:                               # %cleanup.653
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	168(%rsp), %rdi
	leaq	120(%rsp), %rdx
	movl	%ebp, %ecx
	callq	cmd_put_segment
	movq	%r12, %rdx
	movl	$1, %r12d
.LBB9_116:                              # %cleanup.653
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	48(%rsp), %ecx          # 4-byte Reload
	jmp	.LBB9_117
.LBB9_94:                               #   in Loop: Header=BB9_1 Depth=1
	leaq	116(%rsp), %r13
.LBB9_112:                              # %cleanup.646.thread
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$24, %edx
	leaq	136(%rsp), %rdi
	leaq	112(%rsp), %rsi
	callq	memcpy
	movzbl	%r12b, %esi
	leaq	168(%rsp), %rdi
	movq	%r13, %rdx
	movl	%r15d, %ecx
	callq	cmd_put_segment
	movl	$1, %r12d
	movq	%rbp, %r15
	movl	48(%rsp), %ecx          # 4-byte Reload
	movq	64(%rsp), %r13          # 8-byte Reload
	movq	(%rsp), %rdx            # 8-byte Reload
.LBB9_117:                              # %cleanup.653
                                        #   in Loop: Header=BB9_1 Depth=1
	testl	%eax, %eax
	cmovsl	%eax, %ecx
	movl	%r13d, %eax
	movl	%eax, 52(%rsp)          # 4-byte Spill
	movq	56(%rsp), %r13          # 8-byte Reload
	jns	.LBB9_1
	jmp	.LBB9_118
.LBB9_6:                                # %if.end
	movl	56(%rsp), %eax          # 4-byte Reload
	sarl	$8, %eax
	movq	16(%rsp), %rsi          # 8-byte Reload
	movl	%eax, 1720(%rsi)
	movl	52(%rsp), %eax          # 4-byte Reload
	sarl	$8, %eax
	movl	%eax, 1724(%rsi)
	addq	$1760, %rsi             # imm = 0x6E0
	movl	$1, %edx
	movq	24(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	callq	cmd_put_list_op
	testq	%rax, %rax
	je	.LBB9_7
# BB#113:                               # %cond.false
	movl	12(%rsp), %ecx          # 4-byte Reload
	movb	%cl, (%rax)
	xorl	%eax, %eax
.LBB9_114:                              # %cleanup.653.thread224
	movl	%eax, %ecx
.LBB9_118:                              # %cleanup.659
	movl	%ecx, %eax
	addq	$312, %rsp              # imm = 0x138
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_7:                                # %cond.true
	movl	10192(%rbx), %eax
	movl	%eax, %ecx
	jmp	.LBB9_118
.Lfunc_end9:
	.size	cmd_put_path, .Lfunc_end9-cmd_put_path
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI9_0:
	.quad	.LBB9_4
	.quad	.LBB9_8
	.quad	.LBB9_41
	.quad	.LBB9_55
	.quad	.LBB9_11
	.quad	.LBB9_27

	.text
	.globl	clist_fill_path
	.align	16, 0x90
	.type	clist_fill_path,@function
clist_fill_path:                        # @clist_fill_path
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp75:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp76:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp77:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp78:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp79:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp80:
	.cfi_def_cfa_offset 208
.Ltmp81:
	.cfi_offset %rbx, -56
.Ltmp82:
	.cfi_offset %r12, -48
.Ltmp83:
	.cfi_offset %r13, -40
.Ltmp84:
	.cfi_offset %r14, -32
.Ltmp85:
	.cfi_offset %r15, -24
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%r9, %r12
	movq	%rcx, %r13
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	movl	$0, 148(%rsp)
	movl	212(%rsi), %ecx
	movb	$-13, %sil
	cmpl	$1, (%r13)
	je	.LBB10_2
# BB#1:                                 # %select.mid
	movb	$-16, %sil
.LBB10_2:                               # %select.end
	movl	%ecx, %eax
	andl	$51, %eax
	shll	$2, %eax
	movl	%ecx, %ebx
	andl	$-461, %ebx             # imm = 0xFFFFFFFFFFFFFE33
	orl	%eax, %ebx
	movzbl	%bl, %ebp
	testq	%r8, %r8
	je	.LBB10_3
# BB#4:                                 # %land.lhs.true.i
	movb	%sil, 35(%rsp)          # 1-byte Spill
	movl	%ecx, 36(%rsp)          # 4-byte Spill
	movl	$gx_dc_type_data_pure, %eax
	cmpq	%rax, (%r8)
	jne	.LBB10_5
# BB#6:                                 # %if.then.i
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movq	8(%r8), %r14
	movq	%r8, 64(%rsp)           # 8-byte Spill
	movq	%rdi, %r15
	callq	gx_device_black
	cmpq	%rax, %r14
	jne	.LBB10_8
# BB#7:                                 # %if.then.3.i
	andl	$15, %ebx
	movl	%ebx, %ebp
	shll	$4, %ebp
	orl	%ebx, %ebp
	movq	72(%rsp), %rdx          # 8-byte Reload
	jmp	.LBB10_10
.LBB10_3:
	movb	%sil, 35(%rsp)          # 1-byte Spill
	movl	%ecx, 36(%rsp)          # 4-byte Spill
.LBB10_5:
	movq	%r8, 64(%rsp)           # 8-byte Spill
	movq	%rdi, %r15
.LBB10_10:                              # %if.end.13.i
	xorl	%r14d, %r14d
	leal	-204(%rbp), %eax
	cmpl	$51, %eax
	ja	.LBB10_11
# BB#13:                                # %if.end.13.i
	movabsq	$2251868533161985, %rcx # imm = 0x8001000000001
	btq	%rax, %rcx
	jb	.LBB10_14
.LBB10_11:                              # %if.end.13.i
	testl	%ebp, %ebp
	je	.LBB10_14
# BB#12:                                # %lor.rhs.i
	movl	$1, %r14d
.LBB10_14:                              # %cmd_slow_rop.exit
	movq	4(%r13), %rax
	movq	%rax, 136(%rsp)
	testq	%rdx, %rdx
	je	.LBB10_16
# BB#15:                                # %if.then
	movq	%r13, 40(%rsp)          # 8-byte Spill
	leaq	80(%rsp), %rsi
	movq	%rdx, %rdi
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	callq	gx_path_bbox
	jmp	.LBB10_17
.LBB10_16:                              # %if.else
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movq	%r13, 40(%rsp)          # 8-byte Spill
	leaq	80(%rsp), %rsi
	movq	%r12, %rdi
	callq	gx_cpath_outer_box
.LBB10_17:                              # %if.end
	movq	%r15, %rbp
	movl	84(%rsp), %ecx
	sarl	$8, %ecx
	leal	-1(%rcx), %edx
	movl	$255, %eax
	movl	92(%rsp), %esi
	addl	%eax, %esi
	sarl	$8, %esi
	subl	%edx, %esi
	movl	12184(%rbp), %r15d
	movl	12188(%rbp), %edi
	subl	%r15d, %ecx
	movl	$1, %ebx
	cmovlel	%ecx, %ebx
	cmovgl	%edx, %r15d
	addl	%esi, %ebx
	leal	(%rbx,%r15), %ecx
	movl	%edi, %r13d
	subl	%r15d, %r13d
	cmpl	%edi, %ecx
	cmovlel	%ebx, %r13d
	testl	%r13d, %r13d
	jle	.LBB10_18
# BB#19:                                # %cleanup.cont
	movl	%r14d, 28(%rsp)         # 4-byte Spill
	movq	%r12, 56(%rsp)          # 8-byte Spill
	movl	80(%rsp), %r12d
	sarl	$8, %r12d
	leal	-1(%r12), %ebx
	addl	88(%rsp), %eax
	sarl	$8, %eax
	subl	%ebx, %eax
	leal	1(%rax), %ecx
	movl	832(%rbp), %r14d
	subl	%ebx, %r14d
	cmpl	%r14d, %eax
	cmovll	%ecx, %r14d
	testb	$1, 12168(%rbp)
	jne	.LBB10_21
# BB#20:                                # %lor.lhs.false
	movl	$44, %edi
	callq	gs_debug_c
	testl	%eax, %eax
	je	.LBB10_22
.LBB10_21:                              # %if.then.53
	movq	%rbp, %rdi
.LBB10_54:                              # %if.then.305
	movq	48(%rsp), %rsi          # 8-byte Reload
	movq	72(%rsp), %rdx          # 8-byte Reload
	movq	40(%rsp), %rcx          # 8-byte Reload
	movq	64(%rsp), %r8           # 8-byte Reload
	movq	56(%rsp), %r9           # 8-byte Reload
	callq	gx_default_fill_path
	jmp	.LBB10_57
.LBB10_18:                              # %cleanup
	xorl	%eax, %eax
.LBB10_57:                              # %cleanup.353
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_8:                               # %if.else.i
	movq	%r15, %rdi
	callq	gx_device_white
	cmpq	%rax, %r14
	movq	72(%rsp), %rdx          # 8-byte Reload
	jne	.LBB10_10
# BB#9:                                 # %if.then.8.i
	movl	%ebx, %eax
	shrl	$4, %eax
	andl	$15, %eax
	andl	$240, %ebx
	orl	%eax, %ebx
	movl	%ebx, %ebp
	jmp	.LBB10_10
.LBB10_22:                              # %if.end.55
	movq	64(%rsp), %rdi          # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB10_26
# BB#23:                                # %land.lhs.true
	callq	gx_dc_is_pattern2_color
	testl	%eax, %eax
	movq	64(%rsp), %r8           # 8-byte Reload
	je	.LBB10_26
# BB#24:                                # %if.then.60
	movl	$0, 12200(%rbp)
	movq	%rbp, %rdi
	movq	48(%rsp), %rsi          # 8-byte Reload
	movq	72(%rsp), %rdx          # 8-byte Reload
	movq	40(%rsp), %rcx          # 8-byte Reload
	movq	56(%rsp), %r9           # 8-byte Reload
	callq	gx_default_fill_path
	movq	%rbp, %rdx
	cmpl	$0, 12200(%rdx)
	je	.LBB10_57
# BB#25:                                # %if.then.64
	movl	12192(%rdx), %ecx
	movl	%ecx, 12184(%rdx)
	movl	12196(%rdx), %ecx
	movl	%ecx, 12188(%rdx)
	jmp	.LBB10_57
.LBB10_26:                              # %if.end.71
	movq	40(%rsp), %rax          # 8-byte Reload
	movss	12(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	leaq	136(%rsp), %rdx
	leaq	148(%rsp), %r8
	movq	%rbp, %rdi
	movq	48(%rsp), %rsi          # 8-byte Reload
	movq	56(%rsp), %rcx          # 8-byte Reload
	callq	cmd_check_fill_known
	movq	%rbp, %rdi
	movl	148(%rsp), %eax
	testl	%eax, %eax
	je	.LBB10_30
# BB#27:                                # %if.then.75
	movl	10144(%rdi), %ecx
	testl	%ecx, %ecx
	jle	.LBB10_30
# BB#28:                                # %for.body.lr.ph.i
	notl	%eax
	incl	%ecx
	movl	$1752, %edx             # imm = 0x6D8
	addq	10200(%rdi), %rdx
	.align	16, 0x90
.LBB10_29:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	andl	%eax, (%rdx)
	decl	%ecx
	addq	$1808, %rdx             # imm = 0x710
	cmpl	$1, %ecx
	jg	.LBB10_29
.LBB10_30:                              # %if.end.76
	movl	12148(%rdi), %eax
	testl	%eax, %eax
	js	.LBB10_57
# BB#31:                                # %if.end.81
	leal	(%r13,%r15), %esi
	cmpq	$0, 64(%rsp)            # 8-byte Folded Reload
	je	.LBB10_32
# BB#41:                                # %if.else.189
	cmpl	$0, 11952(%rdi)
	je	.LBB10_42
# BB#43:                                # %if.then.191
	movl	%ebx, 80(%rsp)
	leal	-2(%r12,%r14), %eax
	movl	%eax, 88(%rsp)
	movl	%r15d, 84(%rsp)
	movq	%rsi, %r12
	leal	-1(%r12), %ebp
	movl	%ebp, 92(%rsp)
	leaq	80(%rsp), %rsi
	movq	%rdi, %rbx
	callq	clist_update_trans_bbox
	movq	%rbx, %rdi
	jmp	.LBB10_44
.LBB10_32:                              # %if.then.84
	movl	$1, 12200(%rdi)
	movl	12184(%rdi), %eax
	movl	%eax, 12192(%rdi)
	movl	12188(%rdi), %ecx
	movl	%ecx, 12196(%rdi)
	cmpl	%eax, %r15d
	cmovgel	%r15d, %eax
	movl	%eax, 12184(%rdi)
	cmpl	%ecx, %esi
	cmovlel	%esi, %ecx
	movl	%ecx, 12188(%rdi)
	movl	%r15d, 96(%rsp)
	movl	%r13d, 100(%rsp)
	movl	%esi, 104(%rsp)
	movl	10132(%rdi), %ecx
	movl	%ecx, 108(%rsp)
	leal	-1(%rsi,%rcx), %eax
	subl	%r15d, %eax
	cltd
	idivl	%ecx
	movl	%eax, 132(%rsp)
	cmpq	$0, 56(%rsp)            # 8-byte Folded Reload
	setne	%al
	movzbl	%al, %r12d
	movl	%r12d, %r14d
	xorl	$1, %r14d
	movq	%rsi, %rbp
	.align	16, 0x90
.LBB10_33:                              # %do.body.121
                                        # =>This Inner Loop Header: Depth=1
	movl	%r15d, %eax
	cltd
	idivl	%ecx
	movl	%eax, 116(%rsp)
	movq	10200(%rdi), %rdx
	movslq	%eax, %rbx
	imulq	$1808, %rbx, %rax       # imm = 0x710
	leaq	(%rdx,%rax), %rsi
	movq	%rsi, 120(%rsp)
	incl	%ebx
	imull	%ecx, %ebx
	movl	%ebx, 128(%rsp)
	cmpl	%ebp, %ebx
	cmovgl	%ebp, %ebx
	subl	%r15d, %ebx
	movl	%ebx, 100(%rsp)
	cmpq	$0, 56(%rsp)            # 8-byte Folded Reload
	je	.LBB10_37
# BB#34:                                # %if.then.144
                                        #   in Loop: Header=BB10_33 Depth=1
	testb	$32, 1753(%rdx,%rax)
	jne	.LBB10_37
# BB#35:                                # %cond.end.152
                                        #   in Loop: Header=BB10_33 Depth=1
	movl	$8192, %edx             # imm = 0x2000
	movq	%rdi, %rbx
	callq	cmd_write_unknown
	movq	%rbx, %rdi
	testl	%eax, %eax
	js	.LBB10_57
# BB#36:                                # %cond.end.152.if.end.158_crit_edge
                                        #   in Loop: Header=BB10_33 Depth=1
	movq	120(%rsp), %rsi
.LBB10_37:                              # %if.end.158
                                        #   in Loop: Header=BB10_33 Depth=1
	movswl	1742(%rsi), %eax
	cmpl	%r14d, %eax
	jne	.LBB10_40
# BB#38:                                # %land.lhs.true.165
                                        #   in Loop: Header=BB10_33 Depth=1
	movl	%r12d, %edx
	movq	%rdi, %rbx
	callq	cmd_put_enable_clip
	movq	%rbx, %rdi
	testl	%eax, %eax
	jns	.LBB10_40
# BB#39:                                # %cond.end.174
                                        #   in Loop: Header=BB10_33 Depth=1
	movl	10192(%rdi), %eax
	testl	%eax, %eax
	js	.LBB10_57
	.align	16, 0x90
.LBB10_40:                              # %if.end.179
                                        #   in Loop: Header=BB10_33 Depth=1
	movl	96(%rsp), %r15d
	addl	100(%rsp), %r15d
	movl	%r15d, 96(%rsp)
	movq	104(%rsp), %rbp
	movq	%rbp, %rcx
	shrq	$32, %rcx
	xorl	%eax, %eax
	cmpl	%ebp, %r15d
	jl	.LBB10_33
	jmp	.LBB10_57
.LBB10_42:                              # %if.else.189.if.end.205_crit_edge
	movq	%rsi, %r12
	leal	-1(%r12), %ebp
.LBB10_44:                              # %if.end.205
	movq	56(%rsp), %rcx          # 8-byte Reload
	movl	%r15d, 96(%rsp)
	movl	%r13d, 100(%rsp)
	movl	%r12d, 104(%rsp)
	movl	10132(%rdi), %ebx
	movl	%ebx, 108(%rsp)
	addl	%ebx, %ebp
	subl	%r15d, %ebp
	movl	%ebp, %eax
	cltd
	idivl	%ebx
	movl	%eax, 132(%rsp)
	testq	%rcx, %rcx
	setne	%al
	movzbl	%al, %r13d
	movl	%r13d, %r14d
	xorl	$1, %r14d
	movl	%r12d, %ebp
	movl	%r15d, %ecx
.LBB10_45:                              # %do.body.225
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %eax
	cltd
	idivl	%ebx
	movl	%eax, 116(%rsp)
	movq	10200(%rdi), %r8
	cltq
	imulq	$1808, %rax, %rdx       # imm = 0x710
	leaq	(%r8,%rdx), %rsi
	movq	%rsi, 120(%rsp)
	incl	%eax
	imull	%ebx, %eax
	movl	%eax, 128(%rsp)
	cmpl	%ebp, %eax
	cmovgl	%ebp, %eax
	subl	%ecx, %eax
	movl	%eax, 100(%rsp)
	movl	1752(%r8,%rdx), %eax
	movl	$10150, %ecx            # imm = 0x27A6
	andl	%ecx, %eax
	cmpl	$10150, %eax            # imm = 0x27A6
	je	.LBB10_48
# BB#46:                                # %cond.end.262
                                        #   in Loop: Header=BB10_45 Depth=1
	movl	$10150, %edx            # imm = 0x27A6
	movq	%rdi, %rbx
	callq	cmd_write_unknown
	movq	%rbx, %rdi
	testl	%eax, %eax
	js	.LBB10_57
# BB#47:                                # %cond.end.262.if.end.267_crit_edge
                                        #   in Loop: Header=BB10_45 Depth=1
	movq	120(%rsp), %rsi
.LBB10_48:                              # %if.end.267
                                        #   in Loop: Header=BB10_45 Depth=1
	movswl	1742(%rsi), %eax
	cmpl	%r14d, %eax
	jne	.LBB10_51
# BB#49:                                # %land.lhs.true.276
                                        #   in Loop: Header=BB10_45 Depth=1
	movl	%r13d, %edx
	movq	%rdi, %rbx
	callq	cmd_put_enable_clip
	movq	%rbx, %rdi
	testl	%eax, %eax
	jns	.LBB10_51
# BB#50:                                # %cond.end.286
                                        #   in Loop: Header=BB10_45 Depth=1
	movl	10192(%rdi), %eax
	testl	%eax, %eax
	js	.LBB10_57
.LBB10_51:                              # %lor.lhs.false.290
                                        #   in Loop: Header=BB10_45 Depth=1
	movq	120(%rsp), %rsi
	movl	36(%rsp), %edx          # 4-byte Reload
	movq	%rdi, %rbx
	callq	cmd_update_lop
	movq	%rbx, %rdi
	testl	%eax, %eax
	js	.LBB10_57
# BB#52:                                # %if.end.296
                                        #   in Loop: Header=BB10_45 Depth=1
	movq	120(%rsp), %rsi
	xorl	%r8d, %r8d
	movq	64(%rsp), %rdx          # 8-byte Reload
	leaq	96(%rsp), %rcx
	movq	%rdi, %rbx
	callq	cmd_put_drawing_color
	movq	%rbx, %rdi
	movl	%eax, %ecx
	movl	$-28, %eax
	cmpl	$-28, %ecx
	je	.LBB10_57
# BB#53:                                # %if.end.302
                                        #   in Loop: Header=BB10_45 Depth=1
	testl	%ecx, %ecx
	js	.LBB10_54
# BB#55:                                # %if.end.307
                                        #   in Loop: Header=BB10_45 Depth=1
	movq	120(%rsp), %rsi
	movl	28(%rsp), %eax          # 4-byte Reload
	orl	%eax, 1784(%rsi)
	movq	96(%rsp), %rax
	leal	-1(%rax), %ecx
	cmpl	%r15d, %ecx
	cmovll	%r15d, %ecx
	shll	$8, %ecx
	movq	%rax, %rdx
	shrq	$32, %rdx
	leal	1(%rax,%rdx), %r8d
	cmpl	%r12d, %r8d
	cmovgl	%r12d, %r8d
	shll	$8, %r8d
	movl	$0, 8(%rsp)
	movl	$1, (%rsp)
	movzbl	35(%rsp), %r9d          # 1-byte Folded Reload
	movq	72(%rsp), %rdx          # 8-byte Reload
	movq	%rdi, %rbx
	callq	cmd_put_path
	movq	%rbx, %rdi
	testl	%eax, %eax
	js	.LBB10_57
# BB#56:                                # %if.end.342
                                        #   in Loop: Header=BB10_45 Depth=1
	movl	96(%rsp), %ecx
	addl	100(%rsp), %ecx
	movl	%ecx, 96(%rsp)
	movq	104(%rsp), %rbp
	movq	%rbp, %rbx
	shrq	$32, %rbx
	xorl	%eax, %eax
	cmpl	%ebp, %ecx
	jl	.LBB10_45
	jmp	.LBB10_57
.Lfunc_end10:
	.size	clist_fill_path, .Lfunc_end10-clist_fill_path
	.cfi_endproc

	.align	16, 0x90
	.type	cmd_check_fill_known,@function
cmd_check_fill_known:                   # @cmd_check_fill_known
	.cfi_startproc
# BB#0:                                 # %entry
	movl	10380(%rdi), %eax
	cmpl	44(%rsi), %eax
	jne	.LBB11_1
# BB#2:                                 # %lor.lhs.false
	leaq	10648(%rdi), %r9
	movl	10648(%rdi), %r10d
	leaq	312(%rsi), %r11
	cmpl	312(%rsi), %r10d
	jne	.LBB11_4
# BB#3:                                 # %lor.lhs.false.6
	movl	10644(%rdi), %eax
	cmpl	308(%rsi), %eax
	je	.LBB11_5
	jmp	.LBB11_4
.LBB11_1:                               # %entry.if.then_crit_edge
	leaq	312(%rsi), %r11
	leaq	10648(%rdi), %r9
.LBB11_4:                               # %if.then
	orb	$2, (%r8)
	movl	44(%rsi), %eax
	movl	%eax, 10380(%rdi)
	movl	(%r11), %eax
	movl	%eax, (%r9)
	movl	308(%rsi), %eax
	movl	%eax, 10644(%rdi)
.LBB11_5:                               # %if.end
	movss	10632(%rdi), %xmm1      # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jne	.LBB11_6
	jnp	.LBB11_7
.LBB11_6:                               # %if.then.25
	orb	$4, (%r8)
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 10632(%rdi)
.LBB11_7:                               # %if.end.30
	movl	10608(%rdi), %eax
	cmpl	272(%rsi), %eax
	jne	.LBB11_8
# BB#9:                                 # %lor.lhs.false.35
	leaq	10612(%rdi), %r9
	movl	10612(%rdi), %eax
	leaq	276(%rsi), %r10
	cmpl	276(%rsi), %eax
	jne	.LBB11_13
# BB#10:                                # %lor.lhs.false.40
	movl	10556(%rdi), %eax
	cmpl	220(%rsi), %eax
	jne	.LBB11_13
# BB#11:                                # %lor.lhs.false.45
	movl	10584(%rdi), %eax
	cmpl	248(%rsi), %eax
	jne	.LBB11_13
# BB#12:                                # %lor.lhs.false.50
	movl	10660(%rdi), %eax
	cmpl	324(%rsi), %eax
	je	.LBB11_14
	jmp	.LBB11_13
.LBB11_8:                               # %if.end.30.if.then.55_crit_edge
	leaq	276(%rsi), %r10
	leaq	10612(%rdi), %r9
.LBB11_13:                              # %if.then.55
	orb	$32, (%r8)
	movl	272(%rsi), %eax
	movl	%eax, 10608(%rdi)
	movl	(%r10), %eax
	movl	%eax, (%r9)
	movl	220(%rsi), %eax
	movl	%eax, 10556(%rdi)
	movl	248(%rsi), %eax
	movl	%eax, 10584(%rdi)
	movl	324(%rsi), %eax
	movl	%eax, 10660(%rdi)
.LBB11_14:                              # %if.end.72
	movss	10560(%rdi), %xmm1      # xmm1 = mem[0],zero,zero,zero
	movss	224(%rsi), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB11_15
	jnp	.LBB11_16
.LBB11_15:                              # %if.then.78
	orb	$-128, (%r8)
	movss	%xmm0, 10560(%rdi)
.LBB11_16:                              # %if.end.85
	movss	10564(%rdi), %xmm1      # xmm1 = mem[0],zero,zero,zero
	movss	228(%rsi), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB11_17
	jnp	.LBB11_18
.LBB11_17:                              # %if.then.92
	orb	$1, 1(%r8)
	movss	%xmm0, 10564(%rdi)
.LBB11_18:                              # %if.end.99
	movl	10636(%rdi), %eax
	cmpl	(%rdx), %eax
	jne	.LBB11_20
# BB#19:                                # %lor.lhs.false.104
	movl	10640(%rdi), %eax
	cmpl	4(%rdx), %eax
	je	.LBB11_21
.LBB11_20:                              # %if.then.110
	orb	$4, 1(%r8)
	movq	(%rdx), %rax
	movq	%rax, 10636(%rdi)
.LBB11_21:                              # %if.end.114
	movzwl	216(%rsi), %eax
	movzwl	10552(%rdi), %edx
	cmpl	%eax, %edx
	je	.LBB11_23
# BB#22:                                # %if.then.122
	orb	$2, 1(%r8)
	movw	%ax, 10552(%rdi)
.LBB11_23:                              # %if.end.127
	testq	%rcx, %rcx
	je	.LBB11_26
# BB#24:                                # %if.end.i
	movq	%rcx, 12016(%rdi)
	movq	296(%rcx), %rax
	cmpq	12024(%rdi), %rax
	je	.LBB11_26
# BB#25:                                # %if.then.128
	movq	%rax, 12024(%rdi)
	orb	$32, 1(%r8)
.LBB11_26:                              # %if.end.130
	retq
.Lfunc_end11:
	.size	cmd_check_fill_known, .Lfunc_end11-cmd_check_fill_known
	.cfi_endproc

	.globl	clist_stroke_path
	.align	16, 0x90
	.type	clist_stroke_path,@function
clist_stroke_path:                      # @clist_stroke_path
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp88:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp89:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp90:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp91:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp92:
	.cfi_def_cfa_offset 56
	subq	$200, %rsp
.Ltmp93:
	.cfi_def_cfa_offset 256
.Ltmp94:
	.cfi_offset %rbx, -56
.Ltmp95:
	.cfi_offset %r12, -48
.Ltmp96:
	.cfi_offset %r13, -40
.Ltmp97:
	.cfi_offset %r14, -32
.Ltmp98:
	.cfi_offset %r15, -24
.Ltmp99:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	movq	%rdx, %r12
	movq	%rsi, 104(%rsp)         # 8-byte Spill
	movq	%rdi, %r15
	movslq	96(%rsi), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movl	$0, 196(%rsp)
	movl	212(%rsi), %ecx
	movl	%ecx, 92(%rsp)          # 4-byte Spill
	movl	%ecx, %eax
	andl	$51, %eax
	shll	$2, %eax
	movl	%ecx, %ebp
	andl	$-461, %ebp             # imm = 0xFFFFFFFFFFFFFE33
	orl	%eax, %ebp
	movzbl	%bpl, %ebx
	testq	%r14, %r14
	je	.LBB12_6
# BB#1:                                 # %land.lhs.true.i
	movl	$gx_dc_type_data_pure, %eax
	cmpq	%rax, (%r14)
	jne	.LBB12_6
# BB#2:                                 # %if.then.i
	movq	%r9, 64(%rsp)           # 8-byte Spill
	movq	%r12, 72(%rsp)          # 8-byte Spill
	movq	%r14, %r12
	movq	8(%r12), %r14
	movq	%r15, %rdi
	callq	gx_device_black
	cmpq	%rax, %r14
	jne	.LBB12_4
# BB#3:                                 # %if.then.3.i
	andl	$15, %ebp
	movl	%ebp, %ebx
	shll	$4, %ebx
	orl	%ebp, %ebx
	movq	%r12, %r14
	movq	72(%rsp), %r12          # 8-byte Reload
	movq	64(%rsp), %r9           # 8-byte Reload
	jmp	.LBB12_6
.LBB12_4:                               # %if.else.i
	movq	%r15, %rdi
	callq	gx_device_white
	cmpq	%rax, %r14
	movq	%r12, %r14
	movq	72(%rsp), %r12          # 8-byte Reload
	movq	64(%rsp), %r9           # 8-byte Reload
	jne	.LBB12_6
# BB#5:                                 # %if.then.8.i
	movl	%ebp, %eax
	shrl	$4, %eax
	andl	$15, %eax
	andl	$240, %ebp
	orl	%eax, %ebp
	movl	%ebp, %ebx
.LBB12_6:                               # %if.end.13.i
	xorl	%r13d, %r13d
	leal	-204(%rbx), %eax
	cmpl	$51, %eax
	ja	.LBB12_7
# BB#9:                                 # %if.end.13.i
	movabsq	$2251868533161985, %rcx # imm = 0x8001000000001
	btq	%rax, %rcx
	jae	.LBB12_7
# BB#10:
	movq	104(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB12_11
.LBB12_7:                               # %if.end.13.i
	testl	%ebx, %ebx
	movq	104(%rsp), %rbx         # 8-byte Reload
	je	.LBB12_11
# BB#8:                                 # %lor.rhs.i
	movl	$1, %r13d
.LBB12_11:                              # %cmd_slow_rop.exit
	testb	$2, 12168(%r15)
	jne	.LBB12_13
# BB#12:                                # %lor.lhs.false
	movl	$44, %edi
	movq	%rbx, %rbp
	movq	%r9, %rbx
	callq	gs_debug_c
	movq	%rbx, %r9
	movq	%rbp, %rbx
	testl	%eax, %eax
	je	.LBB12_14
.LBB12_13:                              # %if.then
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movq	96(%rsp), %rcx          # 8-byte Reload
	movq	%r14, %r8
	callq	gx_default_stroke_path
.LBB12_70:                              # %cleanup.410
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB12_14:                              # %if.end
	movl	%r13d, 52(%rsp)         # 4-byte Spill
	movq	%r14, 56(%rsp)          # 8-byte Spill
	movq	%r9, 64(%rsp)           # 8-byte Spill
	leaq	176(%rsp), %rsi
	movq	%r12, 72(%rsp)          # 8-byte Spill
	movq	%r12, %rdi
	callq	gx_path_bbox
	leaq	168(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	gx_stroke_path_expansion
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB12_15
# BB#16:                                # %if.else
	movl	$255, %ecx
	movl	172(%rsp), %edi
	addl	%ecx, %edi
	sarl	$8, %edi
	incl	%edi
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	movl	180(%rsp), %edx
	sarl	$8, %edx
	addl	188(%rsp), %ecx
	sarl	$8, %ecx
	xorl	%eax, %eax
	movl	%edx, %esi
	subl	%edi, %esi
	cmovnsl	%edi, %edx
	movl	%esi, %r14d
	cmovsl	%eax, %r14d
	subl	%esi, %ecx
	addl	%edx, %ecx
	movq	%r15, %r13
	movl	836(%r13), %edx
	subl	%r14d, %edx
	cmpl	%edx, %ecx
	cmovlel	%ecx, %edx
	testl	%edx, %edx
	movq	80(%rsp), %r15          # 8-byte Reload
	jg	.LBB12_17
	jmp	.LBB12_70
.LBB12_15:                              # %if.then.10
	movq	%r15, %r13
	movl	836(%r13), %edx
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	80(%rsp), %r15          # 8-byte Reload
.LBB12_17:                              # %if.end.36
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movl	%ebp, 28(%rsp)          # 4-byte Spill
	leaq	10336(%r13), %r12
	leaq	10360(%r13), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	leaq	10424(%r13), %rbp
	cmpl	%r15d, 10432(%r13)
	jne	.LBB12_24
# BB#18:                                # %lor.lhs.false.41
	testl	%r15d, %r15d
	je	.LBB12_20
# BB#19:                                # %land.lhs.true
	leaq	11968(%r13), %rdi
	movq	88(%rbx), %rsi
	leaq	(,%r15,4), %rdx
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB12_24
.LBB12_20:                              # %lor.lhs.false.47
	movss	12(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	100(%rbx), %xmm0
	jne	.LBB12_24
	jp	.LBB12_24
# BB#21:                                # %lor.lhs.false.56
	movl	104(%r12), %eax
	cmpl	104(%rbx), %eax
	jne	.LBB12_24
# BB#22:                                # %lor.lhs.false.65
	movss	56(%r12), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	56(%rbx), %xmm0
	jne	.LBB12_24
	jp	.LBB12_24
# BB#23:                                # %lor.lhs.false.72
	movq	80(%rsp), %rax          # 8-byte Reload
	movl	36(%rax), %ecx
	movl	$1, %eax
	cmpl	60(%rbx), %ecx
	je	.LBB12_28
.LBB12_24:                              # %if.then.79
	cmpl	$12, %r15d
	jl	.LBB12_27
# BB#25:                                # %if.then.82
	movq	%r13, %rdi
	movq	%rbx, %rsi
.LBB12_26:                              # %cleanup.410
	movq	72(%rsp), %rdx          # 8-byte Reload
	movq	96(%rsp), %rcx          # 8-byte Reload
	movq	56(%rsp), %r8           # 8-byte Reload
	movq	64(%rsp), %r9           # 8-byte Reload
	callq	gx_default_stroke_path
	jmp	.LBB12_70
.LBB12_27:                              # %if.end.84
	movl	$4096, 196(%rsp)        # imm = 0x1000
	leaq	11968(%r13), %rax
	movq	%rax, 10424(%r13)
	movq	88(%rbx), %rsi
	movl	96(%rbx), %edx
	movss	100(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	xorl	%ecx, %ecx
	movq	%rbp, %rdi
	callq	gx_set_dash
	movq	$0, 10424(%r13)
	movl	104(%rbx), %eax
	movl	%eax, 10440(%r13)
	movss	56(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	60(%rbx), %esi
	movq	80(%rsp), %rdi          # 8-byte Reload
	callq	gx_set_dot_length
	movl	$4097, %eax             # imm = 0x1001
.LBB12_28:                              # %if.end.125
	movl	28(%rbx), %ecx
	movq	80(%rsp), %rdx          # 8-byte Reload
	cmpl	%ecx, 4(%rdx)
	jne	.LBB12_29
# BB#30:                                # %lor.lhs.false.132
	movl	40(%r12), %esi
	movl	40(%rbx), %edx
	cmpl	%edx, %esi
	jne	.LBB12_34
# BB#31:                                # %lor.lhs.false.139
	movl	32(%r12), %edx
	cmpl	32(%rbx), %edx
	jne	.LBB12_32
# BB#33:                                # %lor.lhs.false.146
	movq	80(%rsp), %rdx          # 8-byte Reload
	movl	12(%rdx), %edx
	cmpl	36(%rbx), %edx
	movl	%esi, %edx
	je	.LBB12_35
	jmp	.LBB12_34
.LBB12_29:                              # %if.end.125.if.then.153_crit_edge
	movl	40(%rbx), %edx
	jmp	.LBB12_34
.LBB12_32:
	movl	%esi, %edx
.LBB12_34:                              # %if.then.153
	movl	%eax, 196(%rsp)
	movl	%ecx, 28(%r12)
	movl	32(%rbx), %eax
	movl	%eax, 32(%r12)
	movl	36(%rbx), %eax
	movl	%eax, 36(%r12)
	movl	%edx, 40(%r12)
.LBB12_35:                              # %if.end.175
	movq	96(%rsp), %rax          # 8-byte Reload
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	leaq	300(%rbx), %rdx
	leaq	196(%rsp), %r8
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	64(%rsp), %rcx          # 8-byte Reload
	callq	cmd_check_fill_known
	movss	10360(%r13), %xmm1      # xmm1 = mem[0],zero,zero,zero
	movss	24(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB12_36
	jnp	.LBB12_37
.LBB12_36:                              # %if.then.183
	orb	$8, 196(%rsp)
	movq	80(%rsp), %rax          # 8-byte Reload
	movss	%xmm0, (%rax)
.LBB12_37:                              # %if.end.190
	movss	48(%r12), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	48(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB12_38
	jnp	.LBB12_39
.LBB12_38:                              # %if.then.197
	orb	$16, 196(%rsp)
	cvtss2sd	%xmm0, %xmm0
	movq	80(%rsp), %rdi          # 8-byte Reload
	callq	gx_set_miter_limit
.LBB12_39:                              # %if.end.205
	movss	132(%r12), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	132(%rbx), %xmm0
	jne	.LBB12_45
	jp	.LBB12_45
# BB#40:                                # %lor.lhs.false.211
	movss	136(%r12), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	136(%rbx), %xmm0
	jne	.LBB12_45
	jp	.LBB12_45
# BB#41:                                # %lor.lhs.false.218
	movss	140(%r12), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	140(%rbx), %xmm0
	jne	.LBB12_45
	jp	.LBB12_45
# BB#42:                                # %lor.lhs.false.225
	movss	144(%r12), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	144(%rbx), %xmm0
	jne	.LBB12_45
	jp	.LBB12_45
# BB#43:                                # %lor.lhs.false.232
	movss	148(%r12), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	148(%rbx), %xmm0
	jne	.LBB12_45
	jp	.LBB12_45
# BB#44:                                # %lor.lhs.false.239
	movss	152(%r12), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	152(%rbx), %xmm0
	jne	.LBB12_45
	jnp	.LBB12_46
.LBB12_45:                              # %if.end.251.thread
	addq	$132, %r12
	leaq	132(%rbx), %rcx
	movl	$2048, %eax             # imm = 0x800
	orl	196(%rsp), %eax
	movl	%eax, 196(%rsp)
	movl	32(%rcx), %edx
	movl	%edx, 32(%r12)
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	movups	%xmm1, 16(%r12)
	movups	%xmm0, (%r12)
	movl	28(%rsp), %ebp          # 4-byte Reload
	movq	32(%rsp), %r12          # 8-byte Reload
.LBB12_47:                              # %if.then.253
	movl	10144(%r13), %ecx
	testl	%ecx, %ecx
	jle	.LBB12_50
# BB#48:                                # %for.body.lr.ph.i
	notl	%eax
	incl	%ecx
	movl	$1752, %edx             # imm = 0x6D8
	addq	10200(%r13), %rdx
	.align	16, 0x90
.LBB12_49:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	andl	%eax, (%rdx)
	decl	%ecx
	addq	$1808, %rdx             # imm = 0x710
	cmpl	$1, %ecx
	jg	.LBB12_49
	jmp	.LBB12_50
.LBB12_46:                              # %if.end.251
	movl	196(%rsp), %eax
	testl	%eax, %eax
	movl	28(%rsp), %ebp          # 4-byte Reload
	movq	32(%rsp), %r12          # 8-byte Reload
	jne	.LBB12_47
.LBB12_50:                              # %if.end.254
	movl	12148(%r13), %eax
	testl	%eax, %eax
	js	.LBB12_70
# BB#51:                                # %if.end.259
	movq	%rbx, 104(%rsp)         # 8-byte Spill
	cmpl	$0, 11952(%r13)
	je	.LBB12_53
# BB#52:                                # %if.then.261
	movl	176(%rsp), %eax
	sarl	$8, %eax
	leal	-1(%rax), %ecx
	movl	$255, %edx
	addl	184(%rsp), %edx
	sarl	$8, %edx
	subl	%ecx, %edx
	leal	1(%rdx), %esi
	movl	832(%r13), %edi
	subl	%ecx, %edi
	cmpl	%edi, %edx
	cmovll	%esi, %edi
	movl	%ecx, 112(%rsp)
	leal	-2(%rax,%rdi), %eax
	movl	%eax, 120(%rsp)
	movl	%r14d, 116(%rsp)
	leal	-1(%r12,%r14), %eax
	movl	%eax, 124(%rsp)
	leaq	112(%rsp), %rsi
	movq	%r13, %rdi
	callq	clist_update_trans_bbox
.LBB12_53:                              # %if.end.293
	testl	%ebp, %ebp
	sets	%sil
	movl	%r14d, 128(%rsp)
	movl	%r12d, 132(%rsp)
	leal	(%r12,%r14), %ecx
	movl	%ecx, 136(%rsp)
	movl	10132(%r13), %edi
	movl	%edi, 140(%rsp)
	leal	-1(%rdi,%rcx), %eax
	subl	%r14d, %eax
	cltd
	idivl	%edi
	movl	%eax, 164(%rsp)
	cmpq	$0, 64(%rsp)            # 8-byte Folded Reload
	setne	%al
	movzbl	%al, %ebx
	movl	%ebx, 80(%rsp)          # 4-byte Spill
	xorl	$1, %ebx
	testl	%r15d, %r15d
	setne	%r15b
	orb	%sil, %r15b
                                        # implicit-def: R12D
	.align	16, 0x90
.LBB12_54:                              # %do.body.306
                                        # =>This Inner Loop Header: Depth=1
	movl	%r14d, %eax
	cltd
	idivl	%edi
	movl	%eax, 148(%rsp)
	movq	10200(%r13), %rdx
	cltq
	imulq	$1808, %rax, %rbp       # imm = 0x710
	leaq	(%rdx,%rbp), %rsi
	movq	%rsi, 152(%rsp)
	incl	%eax
	imull	%edi, %eax
	movl	%eax, 160(%rsp)
	cmpl	%ecx, %eax
	cmovgl	%ecx, %eax
	subl	%r14d, %eax
	movl	%eax, 132(%rsp)
	movl	1752(%rdx,%rbp), %eax
	movl	$16383, %ecx            # imm = 0x3FFF
	andl	%ecx, %eax
	cmpl	$16383, %eax            # imm = 0x3FFF
	je	.LBB12_57
# BB#55:                                # %cond.end.331
                                        #   in Loop: Header=BB12_54 Depth=1
	movl	$16383, %edx            # imm = 0x3FFF
	movq	%r13, %rdi
	callq	cmd_write_unknown
	testl	%eax, %eax
	js	.LBB12_70
# BB#56:                                # %cond.end.331.lor.lhs.false.335_crit_edge
                                        #   in Loop: Header=BB12_54 Depth=1
	movq	152(%rsp), %rsi
.LBB12_57:                              # %lor.lhs.false.335
                                        #   in Loop: Header=BB12_54 Depth=1
	movswl	1742(%rsi), %eax
	cmpl	%ebx, %eax
	jne	.LBB12_60
# BB#58:                                # %land.lhs.true.342
                                        #   in Loop: Header=BB12_54 Depth=1
	movq	%r13, %rdi
	movl	80(%rsp), %edx          # 4-byte Reload
	callq	cmd_put_enable_clip
	testl	%eax, %eax
	jns	.LBB12_60
# BB#59:                                # %cond.end.351
                                        #   in Loop: Header=BB12_54 Depth=1
	movl	10192(%r13), %eax
	testl	%eax, %eax
	js	.LBB12_70
	.align	16, 0x90
.LBB12_60:                              # %lor.lhs.false.355
                                        #   in Loop: Header=BB12_54 Depth=1
	movq	152(%rsp), %rsi
	movq	%r13, %rdi
	movl	92(%rsp), %edx          # 4-byte Reload
	callq	cmd_update_lop
	testl	%eax, %eax
	js	.LBB12_70
# BB#61:                                # %if.end.361
                                        #   in Loop: Header=BB12_54 Depth=1
	movq	152(%rsp), %rsi
	xorl	%r8d, %r8d
	movq	%r13, %rdi
	movq	56(%rsp), %rdx          # 8-byte Reload
	leaq	128(%rsp), %rcx
	callq	cmd_put_drawing_color
	movl	%eax, %ecx
	movl	$-28, %eax
	cmpl	$-28, %ecx
	je	.LBB12_70
# BB#62:                                # %if.end.367
                                        #   in Loop: Header=BB12_54 Depth=1
	testl	%ecx, %ecx
	js	.LBB12_63
# BB#64:                                # %if.end.372
                                        #   in Loop: Header=BB12_54 Depth=1
	movq	152(%rsp), %rsi
	movl	52(%rsp), %eax          # 4-byte Reload
	orl	%eax, 1784(%rsi)
	testb	%r15b, %r15b
	je	.LBB12_66
# BB#65:                                #   in Loop: Header=BB12_54 Depth=1
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jmp	.LBB12_67
.LBB12_66:                              # %if.else.381
                                        #   in Loop: Header=BB12_54 Depth=1
	movq	128(%rsp), %rax
	movq	%rax, %rdx
	movq	40(%rsp), %rdi          # 8-byte Reload
	leal	(%rax,%rdi), %r8d
	movl	%eax, %ecx
	subl	%edi, %ecx
	shll	$8, %ecx
	shrq	$32, %rdx
	addl	%edx, %r8d
	shll	$8, %r8d
.LBB12_67:                              # %if.end.390
                                        #   in Loop: Header=BB12_54 Depth=1
	movl	$-1, 8(%rsp)
	movl	$0, (%rsp)
	movl	$246, %r9d
	movq	%r13, %rdi
	movq	72(%rsp), %rdx          # 8-byte Reload
	callq	cmd_put_path
	testl	%eax, %eax
	cmovsl	%eax, %r12d
	js	.LBB12_68
# BB#69:                                # %do.cond.404
                                        #   in Loop: Header=BB12_54 Depth=1
	movl	128(%rsp), %r14d
	addl	132(%rsp), %r14d
	movl	%r14d, 128(%rsp)
	movq	136(%rsp), %rcx
	movq	%rcx, %rdi
	shrq	$32, %rdi
	xorl	%eax, %eax
	cmpl	%ecx, %r14d
	jl	.LBB12_54
	jmp	.LBB12_70
.LBB12_63:                              # %if.then.370
	movq	%r13, %rdi
	movq	104(%rsp), %rsi         # 8-byte Reload
	jmp	.LBB12_26
.LBB12_68:
	movl	%r12d, %eax
	jmp	.LBB12_70
.Lfunc_end12:
	.size	clist_stroke_path, .Lfunc_end12-clist_stroke_path
	.cfi_endproc

	.globl	clist_fill_parallelogram
	.align	16, 0x90
	.type	clist_fill_parallelogram,@function
clist_fill_parallelogram:               # @clist_fill_parallelogram
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp100:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp101:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp102:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp103:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp104:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp105:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp106:
	.cfi_def_cfa_offset 112
.Ltmp107:
	.cfi_offset %rbx, -56
.Ltmp108:
	.cfi_offset %r12, -48
.Ltmp109:
	.cfi_offset %r13, -40
.Ltmp110:
	.cfi_offset %r14, -32
.Ltmp111:
	.cfi_offset %r15, -24
.Ltmp112:
	.cfi_offset %rbp, -16
	movl	%r9d, %r13d
	movl	%r8d, %ebx
	movl	%ecx, %ebp
	movl	%edx, %r12d
	movl	%esi, %r14d
	movq	%rdi, %r10
	movl	128(%rsp), %r15d
	movq	120(%rsp), %r9
	movl	112(%rsp), %edx
	movl	%r13d, %eax
	orl	%ebx, %eax
	je	.LBB13_2
# BB#1:                                 # %entry
	movl	%edx, %eax
	orl	%ebp, %eax
	je	.LBB13_2
# BB#3:                                 # %if.end.53
	leal	(%rbp,%r14), %eax
	movl	%eax, 32(%rsp)
	leal	(%rbx,%r12), %ecx
	movl	%ecx, 36(%rsp)
	addl	%r13d, %eax
	movl	%eax, 40(%rsp)
	addl	%edx, %ecx
	movl	%ecx, 44(%rsp)
	leal	(%r13,%r14), %eax
	movl	%eax, 48(%rsp)
	leal	(%rdx,%r12), %eax
	movl	%eax, 52(%rsp)
	movl	%r15d, (%rsp)
	leaq	32(%rsp), %rcx
	movl	$3, %r8d
	movq	%r10, %rdi
	movl	%r14d, %esi
	movl	%r12d, %edx
	movq	%r10, 24(%rsp)          # 8-byte Spill
	callq	clist_put_polyfill
	testl	%eax, %eax
	jns	.LBB13_5
# BB#4:                                 # %cond.false
	movl	%r15d, 16(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, 8(%rsp)
	movl	112(%rsp), %eax
	movl	%eax, (%rsp)
	movq	24(%rsp), %rdi          # 8-byte Reload
	movl	%r14d, %esi
	movl	%r12d, %edx
	movl	%ebp, %ecx
	movl	%ebx, %r8d
	movl	%r13d, %r9d
	callq	gx_default_fill_parallelogram
	jmp	.LBB13_5
.LBB13_2:                               # %if.then
	movslq	%r14d, %rax
	addq	$127, %rax
	shrq	$8, %rax
	movslq	%r12d, %rdi
	addq	$127, %rdi
	shrq	$8, %rdi
	addl	%r14d, %ebp
	addl	%r13d, %ebp
	movslq	%ebp, %rcx
	addq	$127, %rcx
	shrq	$8, %rcx
	addl	%r12d, %ebx
	addl	%edx, %ebx
	movslq	%ebx, %r8
	addq	$127, %r8
	shrq	$8, %r8
	cmpl	%eax, %ecx
	movl	%eax, %esi
	cmovlel	%ecx, %esi
	cmovll	%eax, %ecx
	cmpl	%edi, %r8d
	movl	%edi, %edx
	cmovlel	%r8d, %edx
	cmovll	%edi, %r8d
	movq	(%r9), %rax
	subl	%esi, %ecx
	subl	%edx, %r8d
	movl	%r15d, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r9, %rdi
	movq	%r10, %r9
	callq	*40(%rax)
.LBB13_5:                               # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	clist_fill_parallelogram, .Lfunc_end13-clist_fill_parallelogram
	.cfi_endproc

	.align	16, 0x90
	.type	clist_put_polyfill,@function
clist_put_polyfill:                     # @clist_put_polyfill
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp113:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp114:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp115:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp116:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp117:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp118:
	.cfi_def_cfa_offset 56
	subq	$248, %rsp
.Ltmp119:
	.cfi_def_cfa_offset 304
.Ltmp120:
	.cfi_offset %rbx, -56
.Ltmp121:
	.cfi_offset %r12, -48
.Ltmp122:
	.cfi_offset %r13, -40
.Ltmp123:
	.cfi_offset %r14, -32
.Ltmp124:
	.cfi_offset %r15, -24
.Ltmp125:
	.cfi_offset %rbp, -16
	movl	%r8d, 32(%rsp)          # 4-byte Spill
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movl	%edx, 36(%rsp)          # 4-byte Spill
	movl	%esi, %r15d
	movq	%rdi, %r14
	movl	304(%rsp), %ecx
	movq	24(%r14), %r12
	movl	%ecx, %eax
	andl	$51, %eax
	shll	$2, %eax
	movl	%ecx, %ebx
	andl	$-461, %ebx             # imm = 0xFFFFFFFFFFFFFE33
	orl	%eax, %ebx
	movzbl	%bl, %ebp
	testq	%r9, %r9
	je	.LBB14_6
# BB#1:                                 # %land.lhs.true.i
	movl	$gx_dc_type_data_pure, %eax
	cmpq	%rax, (%r9)
	jne	.LBB14_6
# BB#2:                                 # %if.then.i
	movq	8(%r9), %r13
	movq	%r9, 40(%rsp)           # 8-byte Spill
	movq	%r14, %rdi
	callq	gx_device_black
	cmpq	%rax, %r13
	jne	.LBB14_4
# BB#3:                                 # %if.then.3.i
	andl	$15, %ebx
	movl	%ebx, %ebp
	shll	$4, %ebp
	orl	%ebx, %ebp
	movq	40(%rsp), %r9           # 8-byte Reload
	jmp	.LBB14_6
.LBB14_4:                               # %if.else.i
	movq	%r14, %rdi
	callq	gx_device_white
	cmpq	%rax, %r13
	movq	40(%rsp), %r9           # 8-byte Reload
	jne	.LBB14_6
# BB#5:                                 # %if.then.8.i
	movl	%ebx, %eax
	shrl	$4, %eax
	andl	$15, %eax
	andl	$240, %ebx
	orl	%eax, %ebx
	movl	%ebx, %ebp
.LBB14_6:                               # %if.end.13.i
	xorl	%ebx, %ebx
	leal	-204(%rbp), %eax
	cmpl	$51, %eax
	ja	.LBB14_7
# BB#9:                                 # %if.end.13.i
	movabsq	$2251868533161985, %rcx # imm = 0x8001000000001
	btq	%rax, %rcx
	jae	.LBB14_7
# BB#10:
	movq	%r9, 40(%rsp)           # 8-byte Spill
	jmp	.LBB14_11
.LBB14_7:                               # %if.end.13.i
	movq	%r9, 40(%rsp)           # 8-byte Spill
	testl	%ebp, %ebp
	je	.LBB14_11
# BB#8:                                 # %lor.rhs.i
	movl	$1, %ebx
.LBB14_11:                              # %cmd_slow_rop.exit
	movl	$44, %edi
	callq	gs_debug_c
	movl	$-1, %r13d
	testl	%eax, %eax
	jne	.LBB14_25
# BB#12:                                # %if.end
	leaq	120(%rsp), %rbp
	xorl	%esi, %esi
	movq	%rbp, %rdi
	movq	%r12, %rdx
	callq	gx_path_init_local_shared
	movq	%rbp, %rdi
	movl	%r15d, %esi
	movl	36(%rsp), %edx          # 4-byte Reload
	callq	gx_path_add_point
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB14_24
# BB#13:                                # %lor.lhs.false
	leaq	120(%rsp), %rdi
	xorl	%r13d, %r13d
	xorl	%ecx, %ecx
	movq	24(%rsp), %rsi          # 8-byte Reload
	movl	32(%rsp), %edx          # 4-byte Reload
	callq	gx_path_add_lines_notes
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB14_24
# BB#14:                                # %if.end.9
	leaq	120(%rsp), %rdi
	leaq	104(%rsp), %rsi
	callq	gx_path_bbox
	movl	108(%rsp), %eax
	sarl	$8, %eax
	leal	-1(%rax), %r12d
	movl	$255, %ecx
	addl	116(%rsp), %ecx
	sarl	$8, %ecx
	subl	%r12d, %ecx
	cmpl	$2, %eax
	movl	$1, %edx
	cmovll	%eax, %edx
	testl	%eax, %eax
	cmovlel	%r13d, %r12d
	addl	%ecx, %edx
	movl	836(%r14), %ebp
	subl	%r12d, %ebp
	cmpl	%ebp, %edx
	cmovlel	%edx, %ebp
	testl	%ebp, %ebp
	jle	.LBB14_25
# BB#15:                                # %if.end.30
	movl	12148(%r14), %r13d
	testl	%r13d, %r13d
	js	.LBB14_25
# BB#16:                                # %if.end.35
	leal	(%rbp,%r12), %ecx
	cmpl	$0, 11952(%r14)
	je	.LBB14_17
# BB#18:                                # %if.then.37
	movl	%ebx, %r13d
	movl	104(%rsp), %eax
	sarl	$8, %eax
	leal	-1(%rax), %ebx
	movl	$255, %edx
	addl	112(%rsp), %edx
	sarl	$8, %edx
	subl	%ebx, %edx
	leal	1(%rdx), %esi
	movl	832(%r14), %edi
	subl	%ebx, %edi
	cmpl	%edi, %edx
	cmovll	%esi, %edi
	movl	%ebx, 48(%rsp)
	leal	-2(%rax,%rdi), %eax
	movl	%eax, 56(%rsp)
	movl	%r12d, 52(%rsp)
	leal	-1(%rcx), %r15d
	movl	%r15d, 60(%rsp)
	leaq	48(%rsp), %rsi
	movq	%r14, %rdi
	movq	%rcx, %rbx
	callq	clist_update_trans_bbox
	movq	%rbx, %rcx
	jmp	.LBB14_19
.LBB14_17:                              # %if.end.35.if.end.68_crit_edge
	movl	%ebx, %r13d
	leal	-1(%rcx), %r15d
.LBB14_19:                              # %if.end.68
	movl	%r12d, 64(%rsp)
	movl	%ebp, 68(%rsp)
	movl	%ecx, 72(%rsp)
	movl	10132(%r14), %edi
	movl	%edi, 76(%rsp)
	addl	%edi, %r15d
	subl	%r12d, %r15d
	movl	%r15d, %eax
	cltd
	idivl	%edi
	movl	%eax, 100(%rsp)
	movl	%ecx, %ebx
	movq	%rcx, %r15
	movl	%r12d, %ecx
	.align	16, 0x90
.LBB14_20:                              # %do.body.81
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %eax
	cltd
	idivl	%edi
	movl	%eax, 84(%rsp)
	cltq
	imulq	$1808, %rax, %rsi       # imm = 0x710
	addq	10200(%r14), %rsi
	movq	%rsi, 88(%rsp)
	incl	%eax
	imull	%edi, %eax
	movl	%eax, 96(%rsp)
	cmpl	%ebx, %eax
	cmovgl	%ebx, %eax
	subl	%ecx, %eax
	movl	%eax, 68(%rsp)
	movq	%r14, %rdi
	movl	304(%rsp), %edx
	callq	cmd_update_lop
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB14_24
# BB#21:                                # %lor.lhs.false.100
                                        #   in Loop: Header=BB14_20 Depth=1
	movq	88(%rsp), %rsi
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	movq	40(%rsp), %rdx          # 8-byte Reload
	leaq	64(%rsp), %rcx
	callq	cmd_put_drawing_color
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB14_24
# BB#22:                                # %if.end.105
                                        #   in Loop: Header=BB14_20 Depth=1
	movq	88(%rsp), %rsi
	orl	%r13d, 1784(%rsi)
	movq	64(%rsp), %rax
	leal	-1(%rax), %ecx
	cmpl	%r12d, %ecx
	cmovll	%r12d, %ecx
	shll	$8, %ecx
	movq	%rax, %rdx
	shrq	$32, %rdx
	leal	1(%rax,%rdx), %r8d
	cmpl	%r15d, %r8d
	cmovgl	%r15d, %r8d
	shll	$8, %r8d
	movl	$0, 8(%rsp)
	movl	$1, (%rsp)
	movl	$249, %r9d
	movq	%r14, %rdi
	leaq	120(%rsp), %rdx
	callq	cmd_put_path
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB14_24
# BB#23:                                # %if.end.137
                                        #   in Loop: Header=BB14_20 Depth=1
	movl	64(%rsp), %ecx
	addl	68(%rsp), %ecx
	movl	%ecx, 64(%rsp)
	movq	72(%rsp), %rbx
	movq	%rbx, %rdi
	shrq	$32, %rdi
	cmpl	%ebx, %ecx
	jl	.LBB14_20
.LBB14_24:                              # %out
	leaq	120(%rsp), %rdi
	movl	$.L.str, %esi
	callq	gx_path_free
	movl	%ebp, %r13d
.LBB14_25:                              # %cleanup
	movl	%r13d, %eax
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	clist_put_polyfill, .Lfunc_end14-clist_put_polyfill
	.cfi_endproc

	.globl	clist_fill_triangle
	.align	16, 0x90
	.type	clist_fill_triangle,@function
clist_fill_triangle:                    # @clist_fill_triangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp127:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp128:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp129:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp130:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp131:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp132:
	.cfi_def_cfa_offset 128
.Ltmp133:
	.cfi_offset %rbx, -56
.Ltmp134:
	.cfi_offset %r12, -48
.Ltmp135:
	.cfi_offset %r13, -40
.Ltmp136:
	.cfi_offset %r14, -32
.Ltmp137:
	.cfi_offset %r15, -24
.Ltmp138:
	.cfi_offset %rbp, -16
	movl	%r9d, %ebp
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	movq	%r8, 32(%rsp)           # 8-byte Spill
	movl	%ecx, %r12d
	movl	%edx, %r13d
	movl	%esi, %ebx
	movq	%rdi, %r15
	movl	144(%rsp), %ecx
	movq	136(%rsp), %r14
	movl	128(%rsp), %edx
	leal	(%r12,%rbx), %eax
	movl	%eax, 48(%rsp)
	leal	(%r8,%r13), %eax
	movl	%eax, 52(%rsp)
	leal	(%rbp,%rbx), %eax
	movl	%ecx, %ebp
	movl	%eax, 56(%rsp)
	leal	(%rdx,%r13), %eax
	movl	%eax, 60(%rsp)
	movl	%ebp, (%rsp)
	leaq	48(%rsp), %rcx
	movl	$2, %r8d
	movl	%r13d, %edx
	movq	%r14, %r9
	callq	clist_put_polyfill
	testl	%eax, %eax
	jns	.LBB15_2
# BB#1:                                 # %cond.false
	movl	%ebp, 16(%rsp)
	movq	%r14, 8(%rsp)
	movl	128(%rsp), %eax
	movl	%eax, (%rsp)
	movq	%r15, %rdi
	movl	%ebx, %esi
	movl	%r13d, %edx
	movl	%r12d, %ecx
	movq	32(%rsp), %r8           # 8-byte Reload
	movq	40(%rsp), %r9           # 8-byte Reload
	callq	gx_default_fill_triangle
.LBB15_2:                               # %cond.end
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	clist_fill_triangle, .Lfunc_end15-clist_fill_triangle
	.cfi_endproc

	.align	16, 0x90
	.type	cmd_put_segment,@function
cmd_put_segment:                        # @cmd_put_segment
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp139:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp140:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp141:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp142:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp143:
	.cfi_def_cfa_offset 48
.Ltmp144:
	.cfi_offset %rbx, -48
.Ltmp145:
	.cfi_offset %r12, -40
.Ltmp146:
	.cfi_offset %r14, -32
.Ltmp147:
	.cfi_offset %r15, -24
.Ltmp148:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movq	%rdi, %r15
	movb	%sil, %r12b
	movl	%esi, %ecx
	andl	$15, %ecx
	leaq	43(%r15), %rbp
	cmpl	$225, %esi
	jne	.LBB16_7
# BB#1:                                 # %if.then
	movl	(%rdx), %edi
	leaq	4(%rdx), %rbx
	testl	%edi, %edi
	movl	$1, %eax
	movb	$-29, %r12b
	je	.LBB16_2
# BB#3:                                 # %if.else
	movl	(%rbx), %r8d
	movb	$-30, %r12b
	testl	%r8d, %r8d
	je	.LBB16_9
# BB#4:                                 # %if.else.13
	movq	24(%r15), %r9
	movzbl	(%r9), %eax
	cmpl	$229, %eax
	movb	$-31, %r12b
	je	.LBB16_15
# BB#5:                                 # %if.else.13
	cmpl	$228, %eax
	jne	.LBB16_6
# BB#14:                                # %sw.bb.23
	movb	$-27, %al
	cmpl	%r14d, 16(%r15)
	jne	.LBB16_7
	jmp	.LBB16_13
.LBB16_2:
	movq	%rbx, %rdx
	jmp	.LBB16_9
.LBB16_15:                              # %sw.bb.28
	cmpl	%r14d, 16(%r15)
	jne	.LBB16_7
# BB#16:                                # %if.end.33
	addl	36(%r15), %edi
	jne	.LBB16_7
# BB#17:                                # %land.lhs.true
	addl	40(%r15), %r8d
	jne	.LBB16_7
# BB#18:                                # %do.end.49
	movb	$-26, (%r9)
	jmp	.LBB16_39
.LBB16_6:                               # %if.else.13
	cmpl	$224, %eax
	jne	.LBB16_7
# BB#12:                                # %sw.bb
	movl	%edi, 36(%r15)
	movl	(%rbx), %eax
	movl	%eax, 40(%r15)
	movb	$-28, %al
.LBB16_13:                              # %do.end
	movslq	32(%r15), %rdi
	movq	8(%r15), %rbx
	movq	1768(%rbx), %rbx
	subl	%edi, 8(%rbx)
	movq	(%r15), %rbx
	subq	%rdi, 10216(%rbx)
	leaq	-1(%rdi,%rbp), %rbp
	movb	%al, %r12b
.LBB16_7:                               # %for.cond.preheader
	andl	$14, %esi
	cmpq	$14, %rsi
	je	.LBB16_30
# BB#8:
	movzbl	cmd_put_segment.op_num_operands(%rcx), %eax
	.align	16, 0x90
.LBB16_9:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rdx), %ecx
	leal	262144(%rcx), %esi
	cmpl	$524287, %esi           # imm = 0x7FFFF
	ja	.LBB16_19
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB16_9 Depth=1
	movl	%ecx, %edi
	andl	$63, %edi
	jne	.LBB16_19
# BB#11:                                # %do.end.64
                                        #   in Loop: Header=BB16_9 Depth=1
	shrl	$6, %ecx
	andl	$8191, %ecx             # imm = 0x1FFF
	orl	$49152, %ecx            # imm = 0xC000
	addq	$2, %rbp
	jmp	.LBB16_28
	.align	16, 0x90
.LBB16_19:                              # %if.else.68
                                        #   in Loop: Header=BB16_9 Depth=1
	cmpl	$2, %eax
	jl	.LBB16_23
# BB#20:                                # %if.else.68
                                        #   in Loop: Header=BB16_9 Depth=1
	cmpl	$524287, %esi           # imm = 0x7FFFF
	ja	.LBB16_23
# BB#21:                                # %land.lhs.true.75
                                        #   in Loop: Header=BB16_9 Depth=1
	movl	4(%rdx), %ebx
	leal	262144(%rbx), %esi
	cmpl	$524287, %esi           # imm = 0x7FFFF
	jbe	.LBB16_22
.LBB16_23:                              # %if.else.104
                                        #   in Loop: Header=BB16_9 Depth=1
	leal	2097152(%rcx), %esi
	cmpl	$4194303, %esi          # imm = 0x3FFFFF
	jbe	.LBB16_24
# BB#25:                                # %if.else.118
                                        #   in Loop: Header=BB16_9 Depth=1
	leal	536870912(%rcx), %esi
	cmpl	$1073741823, %esi       # imm = 0x3FFFFFFF
	jbe	.LBB16_26
# BB#27:                                # %if.else.135
                                        #   in Loop: Header=BB16_9 Depth=1
	movb	$-32, 1(%rbp)
	movl	%ecx, %esi
	shrl	$24, %esi
	movb	%sil, 2(%rbp)
	movl	%ecx, %esi
	shrl	$16, %esi
	movb	%sil, 3(%rbp)
	addq	$5, %rbp
	jmp	.LBB16_28
.LBB16_24:                              # %do.end.111
                                        #   in Loop: Header=BB16_9 Depth=1
	movl	%ecx, %esi
	shrl	$16, %esi
	andl	$63, %esi
	orl	$64, %esi
	movb	%sil, 1(%rbp)
	addq	$3, %rbp
	jmp	.LBB16_28
.LBB16_22:                              # %do.end.83
                                        #   in Loop: Header=BB16_9 Depth=1
	addq	$4, %rdx
	movl	%ecx, %esi
	shrl	$13, %esi
	andb	$63, %sil
	movb	%sil, 1(%rbp)
	movl	%ecx, %esi
	shrl	$5, %esi
	movb	%sil, 2(%rbp)
	shll	$3, %ecx
	movl	%ebx, %esi
	shrl	$16, %esi
	andl	$7, %esi
	orl	%ecx, %esi
	movb	%sil, 3(%rbp)
	movb	%bh, 4(%rbp)  # NOREX
	movb	%bl, 5(%rbp)
	addq	$5, %rbp
	addl	$-2, %eax
	jmp	.LBB16_29
.LBB16_26:                              # %do.end.125
                                        #   in Loop: Header=BB16_9 Depth=1
	movl	%ecx, %esi
	shrl	$24, %esi
	andl	$63, %esi
	orl	$128, %esi
	movb	%sil, 1(%rbp)
	movl	%ecx, %esi
	shrl	$16, %esi
	movb	%sil, 2(%rbp)
	addq	$4, %rbp
	.align	16, 0x90
.LBB16_28:                              # %if.end.152
                                        #   in Loop: Header=BB16_9 Depth=1
	decl	%eax
	movb	%ch, -1(%rbp)  # NOREX
	movb	%cl, (%rbp)
.LBB16_29:                              # %cleanup
                                        #   in Loop: Header=BB16_9 Depth=1
	addq	$4, %rdx
	testl	%eax, %eax
	jg	.LBB16_9
.LBB16_30:                              # %for.end.160
	cmpl	%r14d, 16(%r15)
	je	.LBB16_35
# BB#31:                                # %if.then.164
	movq	(%r15), %rdi
	movl	$1760, %esi             # imm = 0x6E0
	addq	8(%r15), %rsi
	movl	$3, %edx
	callq	cmd_put_list_op
	testq	%rax, %rax
	je	.LBB16_33
# BB#32:                                # %cond.end.thread
	movb	$-43, (%rax)
	jmp	.LBB16_34
.LBB16_33:                              # %cond.end
	movq	(%r15), %rcx
	movl	10192(%rcx), %ecx
	testl	%ecx, %ecx
	js	.LBB16_40
.LBB16_34:                              # %if.end.175
	movb	$64, 1(%rax)
	movb	%r14b, 2(%rax)
	movl	%r14d, 16(%r15)
.LBB16_35:                              # %if.end.184
	leaq	44(%r15), %r14
	addq	$2, %rbp
	subq	%r14, %rbp
	movq	(%r15), %rdi
	movl	$1760, %esi             # imm = 0x6E0
	addq	8(%r15), %rsi
	movl	%ebp, %edx
	callq	cmd_put_list_op
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB16_37
# BB#36:                                # %cond.end.202.thread
	movb	%r12b, (%rbx)
	jmp	.LBB16_38
.LBB16_37:                              # %cond.end.202
	movq	(%r15), %rax
	movl	10192(%rax), %ecx
	testl	%ecx, %ecx
	js	.LBB16_40
.LBB16_38:                              # %if.end.207
	movq	%rbx, %rdi
	incq	%rdi
	movq	%rbp, %rax
	shlq	$32, %rax
	movabsq	$-4294967296, %rdx      # imm = 0xFFFFFFFF00000000
	addq	%rax, %rdx
	sarq	$32, %rdx
	movq	%r14, %rsi
	callq	memcpy
	movl	%ebp, 32(%r15)
	movq	%rbx, 24(%r15)
.LBB16_39:                              # %cleanup.216
	xorl	%ecx, %ecx
.LBB16_40:                              # %cleanup.216
	movl	%ecx, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	cmd_put_segment, .Lfunc_end16-cmd_put_segment
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"clist_put_polyfill"
	.size	.L.str, 19

	.type	cmd_put_segment.op_num_operands,@object # @cmd_put_segment.op_num_operands
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
cmd_put_segment.op_num_operands:
	.asciz	"\002\002\001\001\004\006\006\006\004\004\004\004\002\002\000"
	.size	cmd_put_segment.op_num_operands, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
