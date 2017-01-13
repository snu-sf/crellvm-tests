	.text
	.file	"j2k.bc"
	.align	16, 0x90
	.type	opj_j2k_read_int16_to_float,@function
opj_j2k_read_int16_to_float:            # @opj_j2k_read_int16_to_float
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
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	testl	%r14d, %r14d
	je	.LBB0_3
# BB#1:                                 # %for.body.lr.ph
	leaq	4(%rsp), %r15
	.align	16, 0x90
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$2, %edx
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	opj_read_bytes_LE
	addq	$2, %rbp
	movl	4(%rsp), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	movss	%xmm0, (%rbx)
	addq	$4, %rbx
	decl	%r14d
	jne	.LBB0_2
.LBB0_3:                                # %for.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	opj_j2k_read_int16_to_float, .Lfunc_end0-opj_j2k_read_int16_to_float
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_read_int32_to_float,@function
opj_j2k_read_int32_to_float:            # @opj_j2k_read_int32_to_float
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
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp13:
	.cfi_def_cfa_offset 48
.Ltmp14:
	.cfi_offset %rbx, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
.Ltmp17:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	testl	%r14d, %r14d
	je	.LBB1_3
# BB#1:                                 # %for.body.lr.ph
	leaq	4(%rsp), %r15
	.align	16, 0x90
.LBB1_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$4, %edx
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	opj_read_bytes_LE
	addq	$4, %rbp
	movl	4(%rsp), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	movss	%xmm0, (%rbx)
	addq	$4, %rbx
	decl	%r14d
	jne	.LBB1_2
.LBB1_3:                                # %for.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	opj_j2k_read_int32_to_float, .Lfunc_end1-opj_j2k_read_int32_to_float
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_read_float32_to_float,@function
opj_j2k_read_float32_to_float:          # @opj_j2k_read_float32_to_float
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
	pushq	%rbx
.Ltmp21:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp22:
	.cfi_def_cfa_offset 48
.Ltmp23:
	.cfi_offset %rbx, -40
.Ltmp24:
	.cfi_offset %r14, -32
.Ltmp25:
	.cfi_offset %r15, -24
.Ltmp26:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	testl	%r14d, %r14d
	je	.LBB2_3
# BB#1:                                 # %for.body.lr.ph
	leaq	4(%rsp), %r15
	.align	16, 0x90
.LBB2_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	opj_read_float_LE
	addq	$4, %rbp
	movl	4(%rsp), %eax
	movl	%eax, (%rbx)
	addq	$4, %rbx
	decl	%r14d
	jne	.LBB2_2
.LBB2_3:                                # %for.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	opj_j2k_read_float32_to_float, .Lfunc_end2-opj_j2k_read_float32_to_float
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_read_float64_to_float,@function
opj_j2k_read_float64_to_float:          # @opj_j2k_read_float64_to_float
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp28:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp29:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp31:
	.cfi_def_cfa_offset 48
.Ltmp32:
	.cfi_offset %rbx, -40
.Ltmp33:
	.cfi_offset %r14, -32
.Ltmp34:
	.cfi_offset %r15, -24
.Ltmp35:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	testl	%r14d, %r14d
	je	.LBB3_3
# BB#1:                                 # %for.body.lr.ph
	leaq	(%rsp), %r15
	.align	16, 0x90
.LBB3_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	opj_read_double_LE
	addq	$8, %rbp
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rbx)
	addq	$4, %rbx
	decl	%r14d
	jne	.LBB3_2
.LBB3_3:                                # %for.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	opj_j2k_read_float64_to_float, .Lfunc_end3-opj_j2k_read_float64_to_float
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_read_int16_to_int32,@function
opj_j2k_read_int16_to_int32:            # @opj_j2k_read_int16_to_int32
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp37:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp38:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp39:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp40:
	.cfi_def_cfa_offset 48
.Ltmp41:
	.cfi_offset %rbx, -40
.Ltmp42:
	.cfi_offset %r14, -32
.Ltmp43:
	.cfi_offset %r15, -24
.Ltmp44:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	testl	%r14d, %r14d
	je	.LBB4_3
# BB#1:                                 # %for.body.lr.ph
	leaq	4(%rsp), %r15
	.align	16, 0x90
.LBB4_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$2, %edx
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	opj_read_bytes_LE
	addq	$2, %rbp
	movl	4(%rsp), %eax
	movl	%eax, (%rbx)
	addq	$4, %rbx
	decl	%r14d
	jne	.LBB4_2
.LBB4_3:                                # %for.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	opj_j2k_read_int16_to_int32, .Lfunc_end4-opj_j2k_read_int16_to_int32
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_read_int32_to_int32,@function
opj_j2k_read_int32_to_int32:            # @opj_j2k_read_int32_to_int32
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp46:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp47:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp48:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp49:
	.cfi_def_cfa_offset 48
.Ltmp50:
	.cfi_offset %rbx, -40
.Ltmp51:
	.cfi_offset %r14, -32
.Ltmp52:
	.cfi_offset %r15, -24
.Ltmp53:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	testl	%r14d, %r14d
	je	.LBB5_3
# BB#1:                                 # %for.body.lr.ph
	leaq	4(%rsp), %r15
	.align	16, 0x90
.LBB5_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$4, %edx
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	opj_read_bytes_LE
	addq	$4, %rbp
	movl	4(%rsp), %eax
	movl	%eax, (%rbx)
	addq	$4, %rbx
	decl	%r14d
	jne	.LBB5_2
.LBB5_3:                                # %for.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	opj_j2k_read_int32_to_int32, .Lfunc_end5-opj_j2k_read_int32_to_int32
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_read_float32_to_int32,@function
opj_j2k_read_float32_to_int32:          # @opj_j2k_read_float32_to_int32
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp55:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp56:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp57:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp58:
	.cfi_def_cfa_offset 48
.Ltmp59:
	.cfi_offset %rbx, -40
.Ltmp60:
	.cfi_offset %r14, -32
.Ltmp61:
	.cfi_offset %r15, -24
.Ltmp62:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	testl	%r14d, %r14d
	je	.LBB6_3
# BB#1:                                 # %for.body.lr.ph
	leaq	4(%rsp), %r15
	.align	16, 0x90
.LBB6_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	opj_read_float_LE
	addq	$4, %rbp
	cvttss2si	4(%rsp), %eax
	movl	%eax, (%rbx)
	addq	$4, %rbx
	decl	%r14d
	jne	.LBB6_2
.LBB6_3:                                # %for.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	opj_j2k_read_float32_to_int32, .Lfunc_end6-opj_j2k_read_float32_to_int32
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_read_float64_to_int32,@function
opj_j2k_read_float64_to_int32:          # @opj_j2k_read_float64_to_int32
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp64:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp65:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp66:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp67:
	.cfi_def_cfa_offset 48
.Ltmp68:
	.cfi_offset %rbx, -40
.Ltmp69:
	.cfi_offset %r14, -32
.Ltmp70:
	.cfi_offset %r15, -24
.Ltmp71:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	testl	%r14d, %r14d
	je	.LBB7_3
# BB#1:                                 # %for.body.lr.ph
	leaq	(%rsp), %r15
	.align	16, 0x90
.LBB7_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	opj_read_double_LE
	addq	$8, %rbp
	cvttsd2si	(%rsp), %eax
	movl	%eax, (%rbx)
	addq	$4, %rbx
	decl	%r14d
	jne	.LBB7_2
.LBB7_3:                                # %for.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	opj_j2k_read_float64_to_int32, .Lfunc_end7-opj_j2k_read_float64_to_int32
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_write_float_to_int16,@function
opj_j2k_write_float_to_int16:           # @opj_j2k_write_float_to_int16
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp73:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp74:
	.cfi_def_cfa_offset 32
.Ltmp75:
	.cfi_offset %rbx, -32
.Ltmp76:
	.cfi_offset %r14, -24
.Ltmp77:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	testl	%r14d, %r14d
	je	.LBB8_2
	.align	16, 0x90
.LBB8_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cvttss2si	(%rbp), %rsi
	addq	$4, %rbp
	movl	$2, %edx
	movq	%rbx, %rdi
	callq	opj_write_bytes_LE
	addq	$2, %rbx
	decl	%r14d
	jne	.LBB8_1
.LBB8_2:                                # %for.end
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end8:
	.size	opj_j2k_write_float_to_int16, .Lfunc_end8-opj_j2k_write_float_to_int16
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_write_float_to_int32,@function
opj_j2k_write_float_to_int32:           # @opj_j2k_write_float_to_int32
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp79:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp80:
	.cfi_def_cfa_offset 32
.Ltmp81:
	.cfi_offset %rbx, -32
.Ltmp82:
	.cfi_offset %r14, -24
.Ltmp83:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	testl	%r14d, %r14d
	je	.LBB9_2
	.align	16, 0x90
.LBB9_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cvttss2si	(%rbp), %rsi
	addq	$4, %rbp
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	opj_write_bytes_LE
	addq	$4, %rbx
	decl	%r14d
	jne	.LBB9_1
.LBB9_2:                                # %for.end
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end9:
	.size	opj_j2k_write_float_to_int32, .Lfunc_end9-opj_j2k_write_float_to_int32
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_write_float_to_float,@function
opj_j2k_write_float_to_float:           # @opj_j2k_write_float_to_float
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp85:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp86:
	.cfi_def_cfa_offset 32
.Ltmp87:
	.cfi_offset %rbx, -32
.Ltmp88:
	.cfi_offset %r14, -24
.Ltmp89:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	testl	%r14d, %r14d
	je	.LBB10_2
	.align	16, 0x90
.LBB10_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rbp), %xmm0           # xmm0 = mem[0],zero,zero,zero
	addq	$4, %rbp
	movq	%rbx, %rdi
	callq	opj_write_float_LE
	addq	$4, %rbx
	decl	%r14d
	jne	.LBB10_1
.LBB10_2:                               # %for.end
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end10:
	.size	opj_j2k_write_float_to_float, .Lfunc_end10-opj_j2k_write_float_to_float
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_write_float_to_float64,@function
opj_j2k_write_float_to_float64:         # @opj_j2k_write_float_to_float64
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp91:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp92:
	.cfi_def_cfa_offset 32
.Ltmp93:
	.cfi_offset %rbx, -32
.Ltmp94:
	.cfi_offset %r14, -24
.Ltmp95:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	testl	%r14d, %r14d
	je	.LBB11_2
	.align	16, 0x90
.LBB11_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rbp), %xmm0           # xmm0 = mem[0],zero,zero,zero
	addq	$4, %rbp
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	opj_write_double_LE
	addq	$8, %rbx
	decl	%r14d
	jne	.LBB11_1
.LBB11_2:                               # %for.end
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end11:
	.size	opj_j2k_write_float_to_float64, .Lfunc_end11-opj_j2k_write_float_to_float64
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_read_sot,@function
opj_j2k_read_sot:                       # @opj_j2k_read_sot
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp97:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp98:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp99:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp100:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp101:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp102:
	.cfi_def_cfa_offset 96
.Ltmp103:
	.cfi_offset %rbx, -56
.Ltmp104:
	.cfi_offset %r12, -48
.Ltmp105:
	.cfi_offset %r13, -40
.Ltmp106:
	.cfi_offset %r14, -32
.Ltmp107:
	.cfi_offset %r15, -24
.Ltmp108:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rsi, %rbp
	movq	%rdi, %r15
	movl	$0, 32(%rsp)
	testq	%rbp, %rbp
	je	.LBB12_49
# BB#1:                                 # %cond.end
	testq	%r15, %r15
	je	.LBB12_50
# BB#2:                                 # %cond.end.4
	testq	%r14, %r14
	je	.LBB12_51
# BB#3:                                 # %cond.end.8
	cmpl	$8, %edx
	jne	.LBB12_4
# BB#6:                                 # %if.end
	leaq	280(%r15), %rbx
	movl	$2, %edx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	opj_read_bytes_LE
	movl	144(%r15), %ecx
	movl	280(%r15), %r12d
	movl	148(%r15), %eax
	imull	%ecx, %eax
	cmpl	%eax, %r12d
	jae	.LBB12_7
# BB#8:                                 # %if.end.15
	leaq	2(%rbp), %rdi
	movq	208(%r15), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	xorl	%edx, %edx
	movl	%r12d, %eax
	divl	%ecx
	movl	%edx, 24(%rsp)          # 4-byte Spill
	movl	%eax, %r13d
	leaq	36(%rsp), %rsi
	movl	$4, %edx
	callq	opj_read_bytes_LE
	movl	36(%rsp), %ecx
	leal	-1(%rcx), %eax
	cmpl	$12, %eax
	ja	.LBB12_9
# BB#10:                                # %if.then.24
	cmpl	$12, %ecx
	jne	.LBB12_52
# BB#11:                                # %if.then.26
	movl	%r13d, 12(%rsp)         # 4-byte Spill
	movl	$2, %esi
	movl	$.L.str.94, %edx
	movl	$12, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	opj_event_msg
	movl	36(%rsp), %ecx
	jmp	.LBB12_12
.LBB12_4:                               # %if.then
	xorl	%ebp, %ebp
	movl	$1, %esi
	movl	$.L.str.92, %edx
.LBB12_5:                               # %cleanup.346
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	opj_event_msg
	jmp	.LBB12_48
.LBB12_7:                               # %if.then.12
	xorl	%ebp, %ebp
	movl	$1, %esi
	movl	$.L.str.93, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%r12d, %ecx
	callq	opj_event_msg
	jmp	.LBB12_48
.LBB12_9:
	movl	%r13d, 12(%rsp)         # 4-byte Spill
.LBB12_12:                              # %if.end.30
	leaq	6(%rbp), %r13
	testl	%ecx, %ecx
	jne	.LBB12_14
# BB#13:                                # %if.then.31
	movl	$4, %esi
	movl	$.L.str.96, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	opj_event_msg
	movl	$1, 88(%r15)
.LBB12_14:                              # %if.end.33
	leaq	28(%rsp), %rsi
	movl	$1, %edx
	movq	%r13, %rdi
	callq	opj_read_bytes_LE
	addq	$7, %rbp
	leaq	32(%rsp), %rsi
	movl	$1, %edx
	movq	%rbp, %rdi
	callq	opj_read_bytes_LE
	movl	32(%rsp), %eax
	imulq	$5680, %r12, %rdx       # imm = 0x1630
	testl	%eax, %eax
	movq	16(%rsp), %rsi          # 8-byte Reload
	movl	5592(%rsi,%rdx), %ecx
	je	.LBB12_15
# BB#16:                                # %if.then.36
	cmpl	%ecx, %eax
	jae	.LBB12_18
# BB#17:                                # %if.then.38
	movl	%ecx, 32(%rsp)
	movl	%ecx, %eax
.LBB12_18:                              # %if.end.40
	leaq	5592(%rsi,%rdx), %rcx
	movl	28(%rsp), %edx
	cmpl	%eax, %edx
	movq	%rbx, %rsi
	movl	12(%rsp), %edi          # 4-byte Reload
	jb	.LBB12_20
# BB#19:                                # %if.then.42
	incl	%edx
	movl	%edx, 32(%rsp)
	movl	%edx, %eax
.LBB12_20:                              # %if.end.43
	movl	%eax, (%rcx)
	movl	%eax, %ecx
	jmp	.LBB12_21
.LBB12_15:
	movq	%rbx, %rsi
	movl	12(%rsp), %edi          # 4-byte Reload
.LBB12_21:                              # %if.end.45
	testl	%ecx, %ecx
	je	.LBB12_24
# BB#22:                                # %if.end.45
	cmpl	28(%rsp), %ecx
	jne	.LBB12_24
# BB#23:                                # %if.then.51
	orb	$1, 92(%r15)
.LBB12_24:                              # %if.end.55
	cmpl	$0, 88(%r15)
	je	.LBB12_25
# BB#26:                                # %select.mid
	xorl	%eax, %eax
	jmp	.LBB12_27
.LBB12_25:
	movl	36(%rsp), %eax
	addl	$-12, %eax
.LBB12_27:                              # %select.end
	movl	24(%rsp), %ecx          # 4-byte Reload
	movl	%eax, 36(%r15)
	movl	$16, 8(%r15)
	movl	72(%r15), %eax
	cmpl	$-1, %eax
	je	.LBB12_28
# BB#32:                                # %if.else.92
	testl	%eax, %eax
	js	.LBB12_53
# BB#33:                                # %cond.end.99
	cmpl	%eax, 280(%r15)
	setne	%al
	jmp	.LBB12_34
.LBB12_28:                              # %if.then.73
	movb	$1, %al
	cmpl	40(%r15), %ecx
	jb	.LBB12_34
# BB#29:                                # %lor.lhs.false
	cmpl	48(%r15), %ecx
	jae	.LBB12_34
# BB#30:                                # %lor.lhs.false.80
	cmpl	44(%r15), %edi
	jb	.LBB12_34
# BB#31:                                # %lor.rhs
	cmpl	52(%r15), %edi
	setae	%al
.LBB12_34:                              # %if.end.114
	movb	92(%r15), %cl
	shlb	$2, %al
	andb	$-5, %cl
	orb	%al, %cl
	movb	%cl, 92(%r15)
	movq	272(%r15), %rax
	movl	$1, %ebp
	testq	%rax, %rax
	je	.LBB12_48
# BB#35:                                # %if.then.116
	movq	48(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB12_54
# BB#36:                                # %cond.end.122
	movl	(%rsi), %edx
	imulq	$56, %rdx, %rax
	movl	%edx, (%rcx,%rax)
	movl	28(%rsp), %esi
	movl	%esi, 12(%rcx,%rax)
	movl	32(%rsp), %esi
	testl	%esi, %esi
	je	.LBB12_42
# BB#37:                                # %if.then.136
	movl	%esi, 4(%rcx,%rax)
	movl	32(%rsp), %edx
	movl	%edx, 8(%rcx,%rax)
	movq	16(%rcx,%rax), %rax
	movl	32(%rsp), %edi
	testq	%rax, %rax
	je	.LBB12_38
# BB#39:                                # %cond.false.178
	shlq	$3, %rdi
	leaq	(%rdi,%rdi,2), %rsi
	movq	%rax, %rdi
	callq	realloc
	movl	280(%r15), %ecx
	movq	272(%r15), %rdx
	movq	48(%rdx), %rdx
	imulq	$56, %rcx, %rcx
	leaq	16(%rdx,%rcx), %rcx
	testq	%rax, %rax
	jne	.LBB12_47
# BB#40:                                # %if.then.191
	movq	(%rcx), %rdi
	callq	free
	movl	280(%r15), %eax
	movq	272(%r15), %rcx
	movq	48(%rcx), %rcx
	imulq	$56, %rax, %rax
	movq	$0, 16(%rcx,%rax)
	jmp	.LBB12_41
.LBB12_52:                              # %if.else
	xorl	%ebp, %ebp
	movl	$1, %esi
	movl	$.L.str.95, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	opj_event_msg
	jmp	.LBB12_48
.LBB12_42:                              # %if.else.213
	cmpq	$0, 16(%rcx,%rax)
	jne	.LBB12_44
# BB#43:                                # %if.then.221
	movl	$10, 8(%rcx,%rax)
	movl	$10, %edi
	movl	$24, %esi
	callq	calloc
	movl	280(%r15), %edx
	movq	272(%r15), %rcx
	movq	48(%rcx), %rcx
	imulq	$56, %rdx, %rsi
	movq	%rax, 16(%rcx,%rsi)
.LBB12_44:                              # %if.end.265
	movl	28(%rsp), %eax
	movl	%edx, %edx
	imulq	$56, %rdx, %rdx
	cmpl	8(%rcx,%rdx), %eax
	jb	.LBB12_48
# BB#45:                                # %if.then.274
	leaq	8(%rcx,%rdx), %rsi
	incl	%eax
	movl	%eax, (%rsi)
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rsi
	movq	16(%rcx,%rdx), %rdi
	callq	realloc
	movl	280(%r15), %ecx
	movq	272(%r15), %rdx
	movq	48(%rdx), %rdx
	imulq	$56, %rcx, %rcx
	leaq	16(%rdx,%rcx), %rcx
	testq	%rax, %rax
	je	.LBB12_46
.LBB12_47:                              # %if.end.333
	movq	%rax, (%rcx)
	jmp	.LBB12_48
.LBB12_38:                              # %if.then.153
	movl	$24, %esi
	callq	calloc
	movl	280(%r15), %ecx
	movq	272(%r15), %rdx
	movq	48(%rdx), %rdx
	imulq	$56, %rcx, %rcx
	movq	%rax, 16(%rdx,%rcx)
.LBB12_48:                              # %cleanup.346
	movl	%ebp, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB12_46:                              # %if.then.313
	movq	(%rcx), %rdi
	callq	free
	movl	280(%r15), %eax
	movq	272(%r15), %rcx
	movq	48(%rcx), %rcx
	imulq	$56, %rax, %rax
	movq	$0, 16(%rcx,%rax)
	movl	$0, 8(%rcx,%rax)
.LBB12_41:                              # %cleanup.346
	xorl	%ebp, %ebp
	movl	$1, %esi
	movl	$.L.str.91, %edx
	jmp	.LBB12_5
.LBB12_49:                              # %cond.false
	movl	$.L.str.52, %edi
	movl	$.L.str.1, %esi
	movl	$3881, %edx             # imm = 0xF29
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_sot, %ecx
	callq	__assert_fail
.LBB12_50:                              # %cond.false.3
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$3882, %edx             # imm = 0xF2A
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_sot, %ecx
	callq	__assert_fail
.LBB12_51:                              # %cond.false.7
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$3883, %edx             # imm = 0xF2B
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_sot, %ecx
	callq	__assert_fail
.LBB12_53:                              # %cond.false.98
	movl	$.L.str.97, %edi
	movl	$.L.str.1, %esi
	movl	$4027, %edx             # imm = 0xFBB
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_sot, %ecx
	callq	__assert_fail
.LBB12_54:                              # %cond.false.121
	movl	$.L.str.98, %edi
	movl	$.L.str.1, %esi
	movl	$4035, %edx             # imm = 0xFC3
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_sot, %ecx
	callq	__assert_fail
.Lfunc_end12:
	.size	opj_j2k_read_sot, .Lfunc_end12-opj_j2k_read_sot
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_read_cod,@function
opj_j2k_read_cod:                       # @opj_j2k_read_cod
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp109:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp110:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp111:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp112:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp113:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp114:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp115:
	.cfi_def_cfa_offset 80
.Ltmp116:
	.cfi_offset %rbx, -56
.Ltmp117:
	.cfi_offset %r12, -48
.Ltmp118:
	.cfi_offset %r13, -40
.Ltmp119:
	.cfi_offset %r14, -32
.Ltmp120:
	.cfi_offset %r15, -24
.Ltmp121:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %r15
	movq	%rdi, %r12
	movl	%ebp, 20(%rsp)
	testq	%r15, %r15
	je	.LBB13_29
# BB#1:                                 # %cond.end
	testq	%r12, %r12
	je	.LBB13_30
# BB#2:                                 # %cond.end.4
	testq	%rcx, %rcx
	je	.LBB13_31
# BB#3:                                 # %cond.end.8
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movq	96(%r12), %r14
	cmpl	$16, 8(%r12)
	jne	.LBB13_5
# BB#4:                                 # %cond.true.10
	movl	280(%r12), %eax
	imulq	$5680, %rax, %rbx       # imm = 0x1630
	addq	208(%r12), %rbx
	jmp	.LBB13_6
.LBB13_5:                               # %cond.false.11
	movq	16(%r12), %rbx
.LBB13_6:                               # %cond.end.14
	cmpl	$4, %ebp
	ja	.LBB13_8
# BB#7:                                 # %if.then
	xorl	%ebp, %ebp
	movl	$1, %esi
	movl	$.L.str.62, %edx
	xorl	%eax, %eax
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	opj_event_msg
	jmp	.LBB13_28
.LBB13_8:                               # %if.end
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	opj_read_bytes_LE
	leaq	1(%r15), %rdi
	leaq	16(%rsp), %rsi
	movl	$1, %edx
	callq	opj_read_bytes_LE
	leaq	2(%r15), %rdi
	movl	16(%rsp), %eax
	movl	%eax, 4(%rbx)
	leaq	8(%rbx), %r13
	movl	$2, %edx
	movq	%r13, %rsi
	callq	opj_read_bytes_LE
	leaq	4(%r15), %rdi
	movl	220(%r12), %eax
	testl	%eax, %eax
	jne	.LBB13_10
# BB#9:                                 # %if.else
	movl	(%r13), %eax
.LBB13_10:                              # %if.end.24
	movl	%eax, 12(%rbx)
	leaq	16(%rbx), %rsi
	movl	$1, %edx
	callq	opj_read_bytes_LE
	addq	$5, %r15
	addl	$-5, %ebp
	movl	%ebp, 20(%rsp)
	movl	16(%r14), %ebp
	testq	%rbp, %rbp
	je	.LBB13_17
# BB#11:                                # %for.body.lr.ph
	movl	(%rbx), %ecx
	andl	$1, %ecx
	movq	5584(%rbx), %rbx
	leaq	-1(%rbp), %rdi
	xorl	%esi, %esi
	testb	$7, %bpl
	je	.LBB13_14
# BB#12:                                # %for.body.prol.preheader
	movl	%ebp, %eax
	andl	$7, %eax
	xorl	%esi, %esi
	movq	%rbx, %rdx
	.align	16, 0x90
.LBB13_13:                              # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, (%rdx)
	incq	%rsi
	addq	$1080, %rdx             # imm = 0x438
	cmpq	%rsi, %rax
	jne	.LBB13_13
.LBB13_14:                              # %for.body.lr.ph.split
	cmpq	$7, %rdi
	jb	.LBB13_17
# BB#15:                                # %for.body.lr.ph.split.split
	imulq	$1080, %rsi, %rax       # imm = 0x438
	addq	%rax, %rbx
	.align	16, 0x90
.LBB13_16:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, (%rbx)
	movl	%ecx, 1080(%rbx)
	movl	%ecx, 2160(%rbx)
	movl	%ecx, 3240(%rbx)
	movl	%ecx, 4320(%rbx)
	movl	%ecx, 5400(%rbx)
	movl	%ecx, 6480(%rbx)
	movl	%ecx, 7560(%rbx)
	addq	$8, %rsi
	addq	$8640, %rbx             # imm = 0x21C0
	cmpq	%rbp, %rsi
	jb	.LBB13_16
.LBB13_17:                              # %for.end
	xorl	%ebp, %ebp
	leaq	20(%rsp), %rcx
	xorl	%esi, %esi
	movq	%r12, %rdi
	movq	%r15, %rdx
	movq	8(%rsp), %rbx           # 8-byte Reload
	movq	%rbx, %r8
	callq	opj_j2k_read_SPCod_SPCoc
	testl	%eax, %eax
	je	.LBB13_18
# BB#19:                                # %if.end.35
	cmpl	$0, 20(%rsp)
	je	.LBB13_21
# BB#20:                                # %if.then.37
	xorl	%ebp, %ebp
.LBB13_18:                              # %if.then.33
	movl	$1, %esi
	movl	$.L.str.62, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	opj_event_msg
.LBB13_28:                              # %cleanup
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB13_21:                              # %cond.end.i
	cmpl	$16, 8(%r12)
	jne	.LBB13_23
# BB#22:                                # %cond.true.2.i
	movl	280(%r12), %eax
	imulq	$5680, %rax, %rax       # imm = 0x1630
	addq	208(%r12), %rax
	jmp	.LBB13_24
.LBB13_23:                              # %cond.false.3.i
	movq	16(%r12), %rax
.LBB13_24:                              # %cond.end.6.i
	movq	96(%r12), %rcx
	movl	$1, %ebp
	cmpl	$2, 16(%rcx)
	jb	.LBB13_28
# BB#25:                                # %for.body.lr.ph.i
	movq	5584(%rax), %r13
	movl	4(%r13), %eax
	leal	(,%rax,4), %ebx
	leaq	812(%r13), %rcx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	leaq	944(%r13), %r15
	leaq	2024(%r13), %rbp
	movl	$1, %r14d
	jmp	.LBB13_26
	.align	16, 0x90
.LBB13_32:                              # %for.body.for.body_crit_edge.i
                                        #   in Loop: Header=BB13_26 Depth=1
	addq	$1080, %rbp             # imm = 0x438
	movl	4(%r13), %eax
.LBB13_26:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, -940(%rbp)
	movups	8(%r13), %xmm0
	movups	%xmm0, -936(%rbp)
	leaq	-132(%rbp), %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	movq	%rbx, %rdx
	callq	memcpy
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	incl	%r14d
	movq	96(%r12), %rax
	cmpl	16(%rax), %r14d
	jb	.LBB13_32
# BB#27:
	movl	$1, %ebp
	jmp	.LBB13_28
.LBB13_29:                              # %cond.false
	movl	$.L.str.52, %edi
	movl	$.L.str.1, %esi
	movl	$2366, %edx             # imm = 0x93E
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_cod, %ecx
	callq	__assert_fail
.LBB13_30:                              # %cond.false.3
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$2367, %edx             # imm = 0x93F
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_cod, %ecx
	callq	__assert_fail
.LBB13_31:                              # %cond.false.7
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$2368, %edx             # imm = 0x940
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_cod, %ecx
	callq	__assert_fail
.Lfunc_end13:
	.size	opj_j2k_read_cod, .Lfunc_end13-opj_j2k_read_cod
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_read_coc,@function
opj_j2k_read_coc:                       # @opj_j2k_read_coc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp122:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp123:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp124:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp125:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp126:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp127:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp128:
	.cfi_def_cfa_offset 64
.Ltmp129:
	.cfi_offset %rbx, -56
.Ltmp130:
	.cfi_offset %r12, -48
.Ltmp131:
	.cfi_offset %r13, -40
.Ltmp132:
	.cfi_offset %r14, -32
.Ltmp133:
	.cfi_offset %r15, -24
.Ltmp134:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	%edx, 4(%rsp)
	testq	%r15, %r15
	je	.LBB14_16
# BB#1:                                 # %cond.end
	testq	%rbx, %rbx
	je	.LBB14_17
# BB#2:                                 # %cond.end.4
	testq	%r14, %r14
	je	.LBB14_18
# BB#3:                                 # %cond.end.8
	cmpl	$16, 8(%rbx)
	jne	.LBB14_5
# BB#4:                                 # %cond.true.10
	movl	280(%rbx), %eax
	imulq	$5680, %rax, %r12       # imm = 0x1630
	addq	208(%rbx), %r12
	jmp	.LBB14_6
.LBB14_5:                               # %cond.false.11
	movq	16(%rbx), %r12
.LBB14_6:                               # %cond.end.14
	movq	96(%rbx), %r13
	movl	$1, %ebp
	cmpl	$257, 16(%r13)          # imm = 0x101
	jb	.LBB14_8
# BB#7:                                 # %select.mid
	movl	$2, %ebp
.LBB14_8:                               # %select.end
	leal	1(%rbp), %eax
	cmpl	%edx, %eax
	ja	.LBB14_13
# BB#9:                                 # %if.end
	subl	%eax, %edx
	movl	%edx, 4(%rsp)
	leaq	(%rsp), %rsi
	movq	%r15, %rdi
	movl	%ebp, %edx
	callq	opj_read_bytes_LE
	movl	%ebp, %eax
	movl	(%rsp), %ecx
	cmpl	16(%r13), %ecx
	jae	.LBB14_10
# BB#11:                                # %if.end.23
	addq	%rax, %r15
	imulq	$1080, %rcx, %rsi       # imm = 0x438
	addq	5584(%r12), %rsi
	movl	$1, %ebp
	movl	$1, %edx
	movq	%r15, %rdi
	callq	opj_read_bytes_LE
	incq	%r15
	movl	(%rsp), %esi
	leaq	4(%rsp), %rcx
	movq	%rbx, %rdi
	movq	%r15, %rdx
	movq	%r14, %r8
	callq	opj_j2k_read_SPCod_SPCoc
	testl	%eax, %eax
	je	.LBB14_13
# BB#12:                                # %if.end.29
	cmpl	$0, 4(%rsp)
	je	.LBB14_15
.LBB14_13:                              # %if.then.31
	xorl	%ebp, %ebp
	movl	$1, %esi
	movl	$.L.str.67, %edx
	jmp	.LBB14_14
.LBB14_10:                              # %if.then.21
	xorl	%ebp, %ebp
	movl	$1, %esi
	movl	$.L.str.68, %edx
.LBB14_14:                              # %cleanup
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	opj_event_msg
.LBB14_15:                              # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB14_16:                              # %cond.false
	movl	$.L.str.52, %edi
	movl	$.L.str.1, %esi
	movl	$2568, %edx             # imm = 0xA08
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_coc, %ecx
	callq	__assert_fail
.LBB14_17:                              # %cond.false.3
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$2569, %edx             # imm = 0xA09
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_coc, %ecx
	callq	__assert_fail
.LBB14_18:                              # %cond.false.7
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$2570, %edx             # imm = 0xA0A
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_coc, %ecx
	callq	__assert_fail
.Lfunc_end14:
	.size	opj_j2k_read_coc, .Lfunc_end14-opj_j2k_read_coc
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_read_rgn,@function
opj_j2k_read_rgn:                       # @opj_j2k_read_rgn
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp135:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp136:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp137:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp138:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp139:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp140:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp141:
	.cfi_def_cfa_offset 64
.Ltmp142:
	.cfi_offset %rbx, -56
.Ltmp143:
	.cfi_offset %r12, -48
.Ltmp144:
	.cfi_offset %r13, -40
.Ltmp145:
	.cfi_offset %r14, -32
.Ltmp146:
	.cfi_offset %r15, -24
.Ltmp147:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rsi, %r12
	testq	%r12, %r12
	je	.LBB15_12
# BB#1:                                 # %cond.end
	testq	%rdi, %rdi
	je	.LBB15_13
# BB#2:                                 # %cond.end.4
	testq	%r14, %r14
	je	.LBB15_14
# BB#3:                                 # %cond.end.8
	movq	96(%rdi), %rax
	movl	16(%rax), %r15d
	cmpl	$256, %r15d             # imm = 0x100
	seta	%al
	movzbl	%al, %ebx
	leal	3(%rbx), %eax
	cmpl	%edx, %eax
	jne	.LBB15_4
# BB#5:                                 # %if.end.12
	incl	%ebx
	cmpl	$16, 8(%rdi)
	jne	.LBB15_7
# BB#6:                                 # %cond.true.14
	movl	280(%rdi), %eax
	imulq	$5680, %rax, %r13       # imm = 0x1630
	addq	208(%rdi), %r13
	jmp	.LBB15_8
.LBB15_4:                               # %if.then.11
	xorl	%r12d, %r12d
	movl	$1, %esi
	movl	$.L.str.99, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	opj_event_msg
	jmp	.LBB15_11
.LBB15_7:                               # %cond.false.15
	movq	16(%rdi), %r13
.LBB15_8:                               # %cond.end.18
	leaq	4(%rsp), %rsi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	opj_read_bytes_LE
	movl	%ebx, %ebp
	addq	%r12, %rbp
	leaq	(%rsp), %rsi
	movl	$1, %r12d
	movl	$1, %edx
	movq	%rbp, %rdi
	callq	opj_read_bytes_LE
	cmpl	%r15d, %ebx
	jae	.LBB15_9
# BB#10:                                # %if.end.22
	incq	%rbp
	movl	4(%rsp), %eax
	movq	5584(%r13), %rcx
	imulq	$1080, %rax, %rax       # imm = 0x438
	leaq	808(%rcx,%rax), %rsi
	movl	$1, %edx
	movq	%rbp, %rdi
	callq	opj_read_bytes_LE
	jmp	.LBB15_11
.LBB15_9:                               # %if.then.20
	xorl	%r12d, %r12d
	movl	$1, %esi
	movl	$.L.str.100, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%ebx, %ecx
	movl	%r15d, %r8d
	callq	opj_event_msg
.LBB15_11:                              # %cleanup
	movl	%r12d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB15_12:                              # %cond.false
	movl	$.L.str.52, %edi
	movl	$.L.str.1, %esi
	movl	$4419, %edx             # imm = 0x1143
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_rgn, %ecx
	callq	__assert_fail
.LBB15_13:                              # %cond.false.3
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$4420, %edx             # imm = 0x1144
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_rgn, %ecx
	callq	__assert_fail
.LBB15_14:                              # %cond.false.7
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$4421, %edx             # imm = 0x1145
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_rgn, %ecx
	callq	__assert_fail
.Lfunc_end15:
	.size	opj_j2k_read_rgn, .Lfunc_end15-opj_j2k_read_rgn
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_read_qcd,@function
opj_j2k_read_qcd:                       # @opj_j2k_read_qcd
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp148:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp149:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp150:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp151:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp152:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp153:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp154:
	.cfi_def_cfa_offset 64
.Ltmp155:
	.cfi_offset %rbx, -56
.Ltmp156:
	.cfi_offset %r12, -48
.Ltmp157:
	.cfi_offset %r13, -40
.Ltmp158:
	.cfi_offset %r14, -32
.Ltmp159:
	.cfi_offset %r15, -24
.Ltmp160:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbp
	movq	%rsi, %rax
	movq	%rdi, %r15
	movl	%edx, 4(%rsp)
	testq	%rax, %rax
	je	.LBB16_14
# BB#1:                                 # %cond.end
	testq	%r15, %r15
	je	.LBB16_15
# BB#2:                                 # %cond.end.4
	testq	%rbp, %rbp
	je	.LBB16_16
# BB#3:                                 # %cond.end.8
	xorl	%r14d, %r14d
	leaq	4(%rsp), %rcx
	xorl	%esi, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	movq	%rbp, %r8
	callq	opj_j2k_read_SQcd_SQcc
	testl	%eax, %eax
	je	.LBB16_4
# BB#5:                                 # %if.end
	cmpl	$0, 4(%rsp)
	je	.LBB16_7
# BB#6:                                 # %if.then.11
	xorl	%r14d, %r14d
.LBB16_4:                               # %if.then
	movl	$1, %esi
	movl	$.L.str.69, %edx
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	opj_event_msg
.LBB16_13:                              # %return
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB16_7:                               # %cond.end.i
	cmpl	$16, 8(%r15)
	jne	.LBB16_9
# BB#8:                                 # %cond.true.2.i
	movl	280(%r15), %eax
	imulq	$5680, %rax, %rax       # imm = 0x1630
	addq	208(%r15), %rax
	jmp	.LBB16_10
.LBB16_9:                               # %cond.false.3.i
	movq	16(%r15), %rax
.LBB16_10:                              # %cond.end.6.i
	movq	96(%r15), %rcx
	movl	$1, %r14d
	cmpl	$2, 16(%rcx)
	jb	.LBB16_13
# BB#11:                                # %for.body.lr.ph.i
	movq	5584(%rax), %r13
	leaq	28(%r13), %r12
	leaq	1884(%r13), %rbp
	movl	$1, %r14d
	movl	$1, %ebx
	.align	16, 0x90
.LBB16_12:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	24(%r13), %eax
	movl	%eax, -780(%rbp)
	movl	804(%r13), %eax
	movl	%eax, (%rbp)
	leaq	-776(%rbp), %rdi
	movl	$776, %edx              # imm = 0x308
	movq	%r12, %rsi
	callq	memcpy
	incl	%ebx
	movq	96(%r15), %rax
	addq	$1080, %rbp             # imm = 0x438
	cmpl	16(%rax), %ebx
	jb	.LBB16_12
	jmp	.LBB16_13
.LBB16_14:                              # %cond.false
	movl	$.L.str.52, %edi
	movl	$.L.str.1, %esi
	movl	$2679, %edx             # imm = 0xA77
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_qcd, %ecx
	callq	__assert_fail
.LBB16_15:                              # %cond.false.3
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$2680, %edx             # imm = 0xA78
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_qcd, %ecx
	callq	__assert_fail
.LBB16_16:                              # %cond.false.7
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$2681, %edx             # imm = 0xA79
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_qcd, %ecx
	callq	__assert_fail
.Lfunc_end16:
	.size	opj_j2k_read_qcd, .Lfunc_end16-opj_j2k_read_qcd
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_read_qcc,@function
opj_j2k_read_qcc:                       # @opj_j2k_read_qcc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp161:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp162:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp163:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp164:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp165:
	.cfi_def_cfa_offset 48
.Ltmp166:
	.cfi_offset %rbx, -40
.Ltmp167:
	.cfi_offset %r14, -32
.Ltmp168:
	.cfi_offset %r15, -24
.Ltmp169:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%edx, %ebp
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movl	%ebp, 4(%rsp)
	testq	%rbx, %rbx
	je	.LBB17_14
# BB#1:                                 # %cond.end
	testq	%r15, %r15
	je	.LBB17_15
# BB#2:                                 # %cond.end.4
	testq	%r14, %r14
	je	.LBB17_16
# BB#3:                                 # %cond.end.8
	movq	96(%r15), %rax
	cmpl	$256, 16(%rax)          # imm = 0x100
	ja	.LBB17_6
# BB#4:                                 # %if.then
	testl	%ebp, %ebp
	je	.LBB17_12
# BB#5:                                 # %if.end
	leaq	(%rsp), %rsi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	opj_read_bytes_LE
	incq	%rbx
	decl	%ebp
	jmp	.LBB17_8
.LBB17_6:                               # %if.else
	cmpl	$1, %ebp
	jbe	.LBB17_12
# BB#7:                                 # %if.end.15
	leaq	(%rsp), %rsi
	movl	$2, %edx
	movq	%rbx, %rdi
	callq	opj_read_bytes_LE
	addq	$2, %rbx
	addl	$-2, %ebp
.LBB17_8:                               # %if.end.16
	movl	%ebp, 4(%rsp)
	movl	(%rsp), %ecx
	movq	96(%r15), %rax
	movl	16(%rax), %r8d
	cmpl	%r8d, %ecx
	jae	.LBB17_9
# BB#10:                                # %if.end.24
	leaq	4(%rsp), %rax
	movq	%r15, %rdi
	movl	%ecx, %esi
	movq	%rbx, %rdx
	movq	%rax, %rcx
	movq	%r14, %r8
	callq	opj_j2k_read_SQcd_SQcc
	testl	%eax, %eax
	je	.LBB17_12
# BB#11:                                # %if.end.28
	movl	$1, %ebx
	cmpl	$0, 4(%rsp)
	je	.LBB17_13
.LBB17_12:                              # %if.then.30
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.73, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	opj_event_msg
	jmp	.LBB17_13
.LBB17_9:                               # %if.then.20
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.74, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	opj_event_msg
.LBB17_13:                              # %cleanup
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB17_14:                              # %cond.false
	movl	$.L.str.52, %edi
	movl	$.L.str.1, %esi
	movl	$2807, %edx             # imm = 0xAF7
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_qcc, %ecx
	callq	__assert_fail
.LBB17_15:                              # %cond.false.3
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$2808, %edx             # imm = 0xAF8
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_qcc, %ecx
	callq	__assert_fail
.LBB17_16:                              # %cond.false.7
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$2809, %edx             # imm = 0xAF9
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_qcc, %ecx
	callq	__assert_fail
.Lfunc_end17:
	.size	opj_j2k_read_qcc, .Lfunc_end17-opj_j2k_read_qcc
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_read_poc,@function
opj_j2k_read_poc:                       # @opj_j2k_read_poc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp170:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp171:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp172:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp173:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp174:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp175:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp176:
	.cfi_def_cfa_offset 80
.Ltmp177:
	.cfi_offset %rbx, -56
.Ltmp178:
	.cfi_offset %r12, -48
.Ltmp179:
	.cfi_offset %r13, -40
.Ltmp180:
	.cfi_offset %r14, -32
.Ltmp181:
	.cfi_offset %r15, -24
.Ltmp182:
	.cfi_offset %rbp, -16
	movl	%edx, %eax
	movq	%rsi, %r15
	testq	%r15, %r15
	je	.LBB18_17
# BB#1:                                 # %cond.end
	testq	%rdi, %rdi
	je	.LBB18_18
# BB#2:                                 # %cond.end.4
	testq	%rcx, %rcx
	je	.LBB18_19
# BB#3:                                 # %cond.end.8
	movq	96(%rdi), %rdx
	movl	16(%rdx), %edx
	movl	%edx, 16(%rsp)          # 4-byte Spill
	cmpl	$256, %edx              # imm = 0x100
	seta	%dl
	movzbl	%dl, %ebp
	leal	7(%rbp,%rbp), %esi
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	divl	%esi
	testl	%eax, %eax
	je	.LBB18_5
# BB#4:                                 # %cond.end.8
	testl	%edx, %edx
	jne	.LBB18_5
# BB#6:                                 # %if.end.13
	cmpl	$16, 8(%rdi)
	jne	.LBB18_8
# BB#7:                                 # %cond.true.15
	movq	%rbp, %rdx
	movl	280(%rdi), %ecx
	imulq	$5680, %rcx, %rsi       # imm = 0x1630
	addq	208(%rdi), %rsi
	jmp	.LBB18_9
.LBB18_5:                               # %if.then.12
	movl	$1, %esi
	movl	$.L.str.75, %edx
	xorl	%eax, %eax
	movq	%rcx, %rdi
	callq	opj_event_msg
	jmp	.LBB18_16
.LBB18_8:                               # %cond.false.16
	movq	%rbp, %rdx
	movq	16(%rdi), %rsi
.LBB18_9:                               # %cond.end.19
	movb	5672(%rsi), %cl
	xorl	%r12d, %r12d
	testb	$2, %cl
	je	.LBB18_11
# BB#10:                                # %cond.true.20
	movl	420(%rsi), %r12d
	incl	%r12d
.LBB18_11:                              # %cond.end.23
	leal	(%rax,%r12), %edi
	movl	%edi, 12(%rsp)          # 4-byte Spill
	cmpl	$32, %edi
	jae	.LBB18_20
# BB#12:                                # %cond.end.29
	orb	$2, %cl
	movb	%cl, 5672(%rsi)
	movq	%rsi, (%rsp)            # 8-byte Spill
	cmpl	%edi, %r12d
	jae	.LBB18_15
# BB#13:                                # %for.body.lr.ph
	movq	%rdx, %r14
	incl	%r14d
	movl	%r12d, %eax
	imulq	$148, %rax, %rax
	movq	(%rsp), %rcx            # 8-byte Reload
	leaq	424(%rcx,%rax), %rbx
	movl	%r14d, %ebp
	.align	16, 0x90
.LBB18_14:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	opj_read_bytes_LE
	leaq	1(%r15), %rdi
	leaq	4(%rbx), %rsi
	movl	%r14d, %edx
	callq	opj_read_bytes_LE
	leaq	1(%r15,%rbp), %r13
	leaq	8(%rbx), %rsi
	movl	$2, %edx
	movq	%r13, %rdi
	callq	opj_read_bytes_LE
	leaq	3(%r15,%rbp), %rdi
	leaq	12(%rbx), %rsi
	movl	$1, %edx
	callq	opj_read_bytes_LE
	leaq	4(%r15,%rbp), %rdi
	leaq	16(%rbx), %rsi
	movl	%r14d, %edx
	callq	opj_read_bytes_LE
	leaq	3(%rbp,%r13), %rdi
	movl	$1, %edx
	leaq	20(%rsp), %rsi
	callq	opj_read_bytes_LE
	movl	12(%rsp), %edi          # 4-byte Reload
	movl	16(%rsp), %ecx          # 4-byte Reload
	movl	20(%rsp), %eax
	movl	%eax, 36(%rbx)
	movl	16(%rbx), %eax
	cmpl	%ecx, %eax
	cmovael	%ecx, %eax
	movl	%eax, 16(%rbx)
	incl	%r12d
	addq	$148, %rbx
	cmpl	%edi, %r12d
	leaq	4(%rbp,%r13), %r15
	jb	.LBB18_14
.LBB18_15:                              # %for.end
	decl	%edi
	movq	(%rsp), %rax            # 8-byte Reload
	movl	%edi, 420(%rax)
	movl	$1, %ebx
.LBB18_16:                              # %cleanup
	movl	%ebx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB18_17:                              # %cond.false
	movl	$.L.str.52, %edi
	movl	$.L.str.1, %esi
	movl	$3091, %edx             # imm = 0xC13
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_poc, %ecx
	callq	__assert_fail
.LBB18_18:                              # %cond.false.3
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$3092, %edx             # imm = 0xC14
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_poc, %ecx
	callq	__assert_fail
.LBB18_19:                              # %cond.false.7
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$3093, %edx             # imm = 0xC15
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_poc, %ecx
	callq	__assert_fail
.LBB18_20:                              # %cond.false.28
	movl	$.L.str.76, %edi
	movl	$.L.str.1, %esi
	movl	$3119, %edx             # imm = 0xC2F
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_poc, %ecx
	callq	__assert_fail
.Lfunc_end18:
	.size	opj_j2k_read_poc, .Lfunc_end18-opj_j2k_read_poc
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_read_siz,@function
opj_j2k_read_siz:                       # @opj_j2k_read_siz
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp183:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp184:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp185:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp186:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp187:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp188:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp189:
	.cfi_def_cfa_offset 96
.Ltmp190:
	.cfi_offset %rbx, -56
.Ltmp191:
	.cfi_offset %r12, -48
.Ltmp192:
	.cfi_offset %r13, -40
.Ltmp193:
	.cfi_offset %r14, -32
.Ltmp194:
	.cfi_offset %r15, -24
.Ltmp195:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r12
	testq	%r12, %r12
	je	.LBB19_57
# BB#1:                                 # %cond.end
	testq	%rcx, %rcx
	je	.LBB19_58
# BB#2:                                 # %cond.end.4
	testq	%rbx, %rbx
	je	.LBB19_59
# BB#3:                                 # %cond.end.8
	cmpl	$35, %edx
	jbe	.LBB19_4
# BB#5:                                 # %if.end
	addl	$-36, %edx
	movl	$2863311531, %ebp       # imm = 0xAAAAAAAB
	imulq	%rdx, %rbp
	shrq	$33, %rbp
	leal	(%rbp,%rbp,2), %eax
	cmpl	%eax, %edx
	je	.LBB19_6
.LBB19_4:                               # %if.then
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.53, %edx
	xorl	%eax, %eax
	movq	%rcx, %rdi
	callq	opj_event_msg
.LBB19_56:                              # %cleanup.372
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB19_6:                               # %if.end.13
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movq	96(%r12), %r13
	leaq	36(%rsp), %rsi
	movl	$2, %edx
	movq	%rbx, %rdi
	callq	opj_read_bytes_LE
	leaq	2(%rbx), %rdi
	movl	36(%rsp), %eax
	movl	%eax, 112(%r12)
	leaq	8(%r13), %rsi
	movq	%rsi, (%rsp)            # 8-byte Spill
	movl	$4, %edx
	callq	opj_read_bytes_LE
	leaq	6(%rbx), %rdi
	leaq	12(%r13), %rsi
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movl	$4, %edx
	callq	opj_read_bytes_LE
	leaq	10(%rbx), %rdi
	movl	$4, %edx
	movq	%r13, %rsi
	callq	opj_read_bytes_LE
	leaq	14(%rbx), %rdi
	leaq	4(%r13), %r15
	movl	$4, %edx
	movq	%r15, %rsi
	callq	opj_read_bytes_LE
	leaq	18(%rbx), %rdi
	leaq	124(%r12), %rsi
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movl	$4, %edx
	callq	opj_read_bytes_LE
	leaq	22(%rbx), %rdi
	movq	%r12, %r14
	subq	$-128, %r14
	movl	$4, %edx
	movq	%r14, %rsi
	callq	opj_read_bytes_LE
	leaq	26(%rbx), %rdi
	leaq	116(%r12), %rsi
	movl	$4, %edx
	callq	opj_read_bytes_LE
	leaq	30(%rbx), %rdi
	leaq	120(%r12), %rsi
	movl	$4, %edx
	callq	opj_read_bytes_LE
	leaq	34(%rbx), %rdi
	movl	$2, %edx
	leaq	36(%rsp), %rsi
	callq	opj_read_bytes_LE
	movl	36(%rsp), %ecx
	cmpl	$16384, %ecx            # imm = 0x4000
	ja	.LBB19_60
# BB#7:                                 # %if.then.24
	movzwl	%cx, %ecx
	movl	%ecx, 16(%r13)
	cmpl	%ebp, %ecx
	jne	.LBB19_8
# BB#9:                                 # %if.end.34
	movl	(%r13), %eax
	movl	8(%r13), %ecx
	cmpl	%eax, %ecx
	jae	.LBB19_11
# BB#10:                                # %if.end.34.if.then.43_crit_edge
	movq	16(%rsp), %rdx          # 8-byte Reload
	movl	(%rdx), %r8d
	movl	(%r15), %edx
	jmp	.LBB19_12
.LBB19_60:                              # %if.else
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.54, %edx
	xorl	%eax, %eax
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	opj_event_msg
	jmp	.LBB19_56
.LBB19_8:                               # %if.then.31
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.55, %edx
	xorl	%eax, %eax
	movq	24(%rsp), %rdi          # 8-byte Reload
	movl	%ebp, %r8d
	callq	opj_event_msg
	jmp	.LBB19_56
.LBB19_11:                              # %lor.lhs.false
	movl	(%r15), %edx
	movq	16(%rsp), %rsi          # 8-byte Reload
	movl	(%rsi), %r8d
	cmpl	%r8d, %edx
	jbe	.LBB19_13
.LBB19_12:                              # %if.then.43
	subl	%eax, %ecx
	subl	%edx, %r8d
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.56, %edx
.LBB19_17:                              # %cleanup.372
	xorl	%eax, %eax
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	opj_event_msg
	jmp	.LBB19_56
.LBB19_13:                              # %if.end.51
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	(%rax), %r9d
	movl	(%r14), %r10d
	movl	%r10d, %eax
	imull	%r9d, %eax
	testl	%eax, %eax
	je	.LBB19_14
# BB#15:                                # %if.end.58
	movq	%r8, %rax
	imulq	%rcx, %rax
	movl	%r8d, %edx
	imull	%ecx, %edx
	cmpq	%rdx, %rax
	jne	.LBB19_16
# BB#18:                                # %if.end.74
	movl	%ebp, %edi
	movl	$64, %esi
	callq	calloc
	movq	%rax, 24(%r13)
	testq	%rax, %rax
	je	.LBB19_19
# BB#20:                                # %if.end.95
	movl	16(%r13), %edx
	shlq	$6, %rdx
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
	movq	%r13, %rsi
	cmpl	$0, 16(%rsi)
	je	.LBB19_26
# BB#21:                                # %for.body.lr.ph
	addq	$36, %rbx
	movq	24(%rsi), %rbp
	addq	$40, %rbp
	leaq	32(%rsp), %r13
.LBB19_22:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, %r15
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	opj_read_bytes_LE
	movl	32(%rsp), %eax
	andl	$127, %eax
	incl	%eax
	movl	%eax, -16(%rbp)
	movl	32(%rsp), %eax
	shrl	$7, %eax
	movl	%eax, -8(%rbp)
	leaq	1(%rbx), %rdi
	movl	$1, %edx
	movq	%r13, %rsi
	callq	opj_read_bytes_LE
	movl	32(%rsp), %eax
	movl	%eax, -40(%rbp)
	addq	$2, %rbx
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	opj_read_bytes_LE
	movl	32(%rsp), %r9d
	movl	%r9d, -36(%rbp)
	movl	-40(%rbp), %r8d
	leal	-1(%r9), %eax
	cmpl	$254, %eax
	ja	.LBB19_24
# BB#23:                                # %for.body
                                        #   in Loop: Header=BB19_22 Depth=1
	leal	-1(%r8), %eax
	cmpl	$255, %eax
	jae	.LBB19_24
# BB#25:                                # %for.inc
                                        #   in Loop: Header=BB19_22 Depth=1
	movl	$0, -4(%rbp)
	movl	216(%r12), %eax
	movl	%eax, (%rbp)
	incl	%r14d
	addq	$64, %rbp
	incq	%rbx
	movq	%r15, %rsi
	cmpl	16(%rsi), %r14d
	jb	.LBB19_22
.LBB19_26:                              # %for.end
	movq	(%rsp), %rax            # 8-byte Reload
	movl	(%rax), %eax
	movl	116(%r12), %r8d
	movl	124(%r12), %ebx
	decl	%eax
	subl	%r8d, %eax
	addl	%ebx, %eax
	cltd
	idivl	%ebx
	movl	%eax, %ecx
	movl	%ecx, 144(%r12)
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %eax
	movl	120(%r12), %r9d
	movl	128(%r12), %edi
	decl	%eax
	subl	%r9d, %eax
	addl	%edi, %eax
	cltd
	idivl	%edi
	movl	%eax, %ebp
	movl	%ebp, 148(%r12)
	testl	%ebp, %ebp
	je	.LBB19_29
# BB#27:                                # %for.end
	testl	%ecx, %ecx
	je	.LBB19_29
# BB#28:                                # %lor.lhs.false.145
	movl	$65535, %eax            # imm = 0xFFFF
	xorl	%edx, %edx
	divl	%ebp
	cmpl	%eax, %ecx
	jbe	.LBB19_30
.LBB19_29:                              # %if.then.151
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.61, %edx
	xorl	%eax, %eax
	movq	24(%rsp), %rdi          # 8-byte Reload
	movl	%ebp, %r8d
	callq	opj_event_msg
	jmp	.LBB19_56
.LBB19_14:                              # %if.then.54
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.57, %edx
	xorl	%eax, %eax
	movq	24(%rsp), %rdi          # 8-byte Reload
	movl	%r9d, %ecx
	movl	%r10d, %r8d
	callq	opj_event_msg
	jmp	.LBB19_56
.LBB19_16:                              # %if.then.70
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.58, %edx
	jmp	.LBB19_17
.LBB19_19:                              # %if.then.92
	movl	$0, 16(%r13)
	xorl	%ebx, %ebx
.LBB19_36:                              # %if.then.261
	movl	$1, %esi
	movl	$.L.str.59, %edx
	xorl	%eax, %eax
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	opj_event_msg
	jmp	.LBB19_56
.LBB19_24:                              # %cleanup
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.60, %edx
	xorl	%eax, %eax
	movq	24(%rsp), %rdi          # 8-byte Reload
	movl	%r14d, %ecx
	callq	opj_event_msg
	jmp	.LBB19_56
.LBB19_30:                              # %if.end.155
	movl	%ecx, %r14d
	imull	%ebp, %r14d
	testb	$2, 92(%r12)
	jne	.LBB19_31
# BB#32:                                # %if.else.198
	movq	%rsi, %r15
	movl	$0, 40(%r12)
	movl	$0, 44(%r12)
	movl	%ecx, 48(%r12)
	movl	%ebp, 52(%r12)
	jmp	.LBB19_33
.LBB19_31:                              # %if.then.161
	movq	%rsi, %r15
	movl	40(%r12), %eax
	subl	%r8d, %eax
	xorl	%edx, %edx
	divl	%ebx
	movl	%eax, 40(%r12)
	movl	44(%r12), %eax
	subl	%r9d, %eax
	xorl	%edx, %edx
	divl	%edi
	movl	%eax, 44(%r12)
	movl	48(%r12), %eax
	decl	%eax
	subl	%r8d, %eax
	addl	%ebx, %eax
	cltd
	idivl	%ebx
	movl	%eax, 48(%r12)
	movl	52(%r12), %eax
	decl	%eax
	subl	%r9d, %eax
	addl	%edi, %eax
	cltd
	idivl	%edi
	movl	%eax, 52(%r12)
.LBB19_33:                              # %if.end.213
	movl	%r14d, %ebx
	movl	$5680, %esi             # imm = 0x1630
	movq	%rbx, %rdi
	callq	calloc
	movq	%rax, 208(%r12)
	testq	%rax, %rax
	je	.LBB19_34
# BB#35:                                # %if.end.232
	imulq	$5680, %rbx, %rdx       # imm = 0x1630
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
	movl	16(%r15), %edi
	movl	$1080, %esi             # imm = 0x438
	callq	calloc
	movq	16(%r12), %rcx
	movq	%rax, 5584(%rcx)
	testq	%rax, %rax
	je	.LBB19_36
# BB#37:                                # %if.end.263
	movl	16(%r15), %ecx
	imulq	$1080, %rcx, %rdx       # imm = 0x438
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
	movl	$320, %edi              # imm = 0x140
	callq	malloc
	movq	16(%r12), %rcx
	movq	%rax, 5640(%rcx)
	testq	%rax, %rax
	je	.LBB19_36
# BB#38:                                # %if.end.283
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movl	$320, %edx              # imm = 0x140
	movq	%rax, %rdi
	callq	memset
	movq	16(%r12), %rax
	movl	$10, 5652(%rax)
	movl	$320, %edi              # imm = 0x140
	callq	malloc
	movq	16(%r12), %rcx
	movq	%rax, 5656(%rcx)
	testq	%rax, %rax
	je	.LBB19_36
# BB#39:                                # %if.end.303
	xorl	%esi, %esi
	movl	$320, %edx              # imm = 0x140
	movq	%rax, %rdi
	callq	memset
	movq	16(%r12), %rdx
	movl	$10, 5668(%rdx)
	movl	16(%r15), %eax
	testq	%rax, %rax
	je	.LBB19_50
# BB#40:                                # %for.body.316.lr.ph
	movq	24(%r15), %rdi
	xorl	%esi, %esi
	testb	$1, %al
	je	.LBB19_43
# BB#41:                                # %for.body.316.prol
	movl	$1, %esi
	cmpl	$0, 32(%rdi)
	jne	.LBB19_43
# BB#42:                                # %if.then.320.prol
	movl	24(%rdi), %ecx
	decl	%ecx
	movl	$1, %esi
	shll	%cl, %esi
	movq	5584(%rdx), %rcx
	movl	%esi, 1076(%rcx)
	movl	$1, %esi
.LBB19_43:                              # %for.body.316.lr.ph.split
	cmpl	$1, %eax
	je	.LBB19_50
# BB#44:                                # %for.body.316.lr.ph.split.split
	movq	%rsi, %rcx
	shlq	$6, %rcx
	leaq	96(%rcx,%rdi), %rdi
	imulq	$1080, %rsi, %rbp       # imm = 0x438
.LBB19_45:                              # %for.body.316
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -64(%rdi)
	jne	.LBB19_47
# BB#46:                                # %if.then.320
                                        #   in Loop: Header=BB19_45 Depth=1
	movl	-72(%rdi), %ecx
	decl	%ecx
	movl	$1, %ebx
	shll	%cl, %ebx
	movq	5584(%rdx), %rcx
	movl	%ebx, 1076(%rcx,%rbp)
.LBB19_47:                              # %for.inc.333
                                        #   in Loop: Header=BB19_45 Depth=1
	cmpl	$0, (%rdi)
	jne	.LBB19_49
# BB#48:                                # %if.then.320.1
                                        #   in Loop: Header=BB19_45 Depth=1
	movl	-8(%rdi), %ecx
	decl	%ecx
	movl	$1, %ebx
	shll	%cl, %ebx
	movq	5584(%rdx), %rcx
	movl	%ebx, 2156(%rcx,%rbp)
.LBB19_49:                              # %for.inc.333.1
                                        #   in Loop: Header=BB19_45 Depth=1
	addq	$2, %rsi
	subq	$-128, %rdi
	addq	$2160, %rbp             # imm = 0x870
	cmpq	%rax, %rsi
	jb	.LBB19_45
.LBB19_50:                              # %for.end.335
	testl	%r14d, %r14d
	je	.LBB19_55
# BB#51:                                # %cond.false.347.lr.ph
	movq	208(%r12), %rbx
	imulq	$1080, %rax, %rdi       # imm = 0x438
	callq	malloc
	movq	%rax, 5584(%rbx)
	testq	%rax, %rax
	je	.LBB19_34
# BB#52:                                # %if.end.360.preheader
	addq	$11264, %rbx            # imm = 0x2C00
	xorl	%ebp, %ebp
.LBB19_53:                              # %if.end.360
                                        # =>This Inner Loop Header: Depth=1
	movl	16(%r15), %ecx
	imulq	$1080, %rcx, %rdx       # imm = 0x438
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
	incl	%ebp
	cmpl	%r14d, %ebp
	jae	.LBB19_55
# BB#54:                                # %if.end.360.cond.false.347_crit_edge
                                        #   in Loop: Header=BB19_53 Depth=1
	movl	16(%r15), %eax
	imulq	$1080, %rax, %rdi       # imm = 0x438
	callq	malloc
	movq	%rax, (%rbx)
	leaq	5680(%rbx), %rbx
	testq	%rax, %rax
	jne	.LBB19_53
.LBB19_34:                              # %if.then.230
	xorl	%ebx, %ebx
	jmp	.LBB19_36
.LBB19_55:                              # %for.end.369
	movl	$4, 8(%r12)
	addq	$112, %r12
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	opj_image_comp_header_update
	movl	$1, %ebx
	jmp	.LBB19_56
.LBB19_57:                              # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$1881, %edx             # imm = 0x759
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_siz, %ecx
	callq	__assert_fail
.LBB19_58:                              # %cond.false.3
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$1882, %edx             # imm = 0x75A
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_siz, %ecx
	callq	__assert_fail
.LBB19_59:                              # %cond.false.7
	movl	$.L.str.52, %edi
	movl	$.L.str.1, %esi
	movl	$1883, %edx             # imm = 0x75B
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_siz, %ecx
	callq	__assert_fail
.Lfunc_end19:
	.size	opj_j2k_read_siz, .Lfunc_end19-opj_j2k_read_siz
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_read_tlm,@function
opj_j2k_read_tlm:                       # @opj_j2k_read_tlm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp196:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp197:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp198:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp199:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp200:
	.cfi_def_cfa_offset 48
.Ltmp201:
	.cfi_offset %rbx, -40
.Ltmp202:
	.cfi_offset %r14, -32
.Ltmp203:
	.cfi_offset %r15, -24
.Ltmp204:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%edx, %ebp
	movq	%rsi, %rbx
	testq	%rbx, %rbx
	je	.LBB20_8
# BB#1:                                 # %cond.end
	testq	%rdi, %rdi
	je	.LBB20_9
# BB#2:                                 # %cond.end.4
	testq	%r14, %r14
	je	.LBB20_10
# BB#3:                                 # %cond.end.8
	cmpl	$1, %ebp
	ja	.LBB20_5
# BB#4:                                 # %if.then
	xorl	%r15d, %r15d
	movl	$1, %esi
	movl	$.L.str.78, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	opj_event_msg
	jmp	.LBB20_7
.LBB20_5:                               # %if.end
	addl	$-2, %ebp
	leaq	4(%rsp), %rsi
	movl	$1, %r15d
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	opj_read_bytes_LE
	incq	%rbx
	leaq	(%rsp), %rsi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	opj_read_bytes_LE
	movl	(%rsp), %eax
	movl	%eax, %ecx
	shrl	$4, %ecx
	andl	$3, %ecx
	shrl	$5, %eax
	andl	$2, %eax
	leal	2(%rax,%rcx), %ecx
	xorl	%edx, %edx
	movl	%ebp, %eax
	divl	%ecx
	testl	%edx, %edx
	je	.LBB20_7
# BB#6:                                 # %if.then.15
	movl	$1, %esi
	movl	$.L.str.78, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	opj_event_msg
	xorl	%r15d, %r15d
.LBB20_7:                               # %cleanup
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB20_8:                               # %cond.false
	movl	$.L.str.52, %edi
	movl	$.L.str.1, %esi
	movl	$3204, %edx             # imm = 0xC84
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_tlm, %ecx
	callq	__assert_fail
.LBB20_9:                               # %cond.false.3
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$3205, %edx             # imm = 0xC85
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_tlm, %ecx
	callq	__assert_fail
.LBB20_10:                              # %cond.false.7
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$3206, %edx             # imm = 0xC86
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_tlm, %ecx
	callq	__assert_fail
.Lfunc_end20:
	.size	opj_j2k_read_tlm, .Lfunc_end20-opj_j2k_read_tlm
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_read_plm,@function
opj_j2k_read_plm:                       # @opj_j2k_read_plm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp205:
	.cfi_def_cfa_offset 16
.Ltmp206:
	.cfi_offset %rbx, -16
	testq	%rsi, %rsi
	je	.LBB21_6
# BB#1:                                 # %cond.end
	testq	%rdi, %rdi
	je	.LBB21_7
# BB#2:                                 # %cond.end.4
	testq	%rcx, %rcx
	je	.LBB21_8
# BB#3:                                 # %cond.end.8
	movl	$1, %ebx
	testl	%edx, %edx
	jne	.LBB21_5
# BB#4:                                 # %if.then
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.79, %edx
	xorl	%eax, %eax
	movq	%rcx, %rdi
	callq	opj_event_msg
.LBB21_5:                               # %return
	movl	%ebx, %eax
	popq	%rbx
	retq
.LBB21_6:                               # %cond.false
	movl	$.L.str.52, %edi
	movl	$.L.str.1, %esi
	movl	$3259, %edx             # imm = 0xCBB
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_plm, %ecx
	callq	__assert_fail
.LBB21_7:                               # %cond.false.3
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$3260, %edx             # imm = 0xCBC
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_plm, %ecx
	callq	__assert_fail
.LBB21_8:                               # %cond.false.7
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$3261, %edx             # imm = 0xCBD
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_plm, %ecx
	callq	__assert_fail
.Lfunc_end21:
	.size	opj_j2k_read_plm, .Lfunc_end21-opj_j2k_read_plm
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_read_plt,@function
opj_j2k_read_plt:                       # @opj_j2k_read_plt
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp207:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp208:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp209:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp210:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp211:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp212:
	.cfi_def_cfa_offset 64
.Ltmp213:
	.cfi_offset %rbx, -48
.Ltmp214:
	.cfi_offset %r12, -40
.Ltmp215:
	.cfi_offset %r14, -32
.Ltmp216:
	.cfi_offset %r15, -24
.Ltmp217:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%edx, %r12d
	movq	%rsi, %rbx
	testq	%rbx, %rbx
	je	.LBB22_12
# BB#1:                                 # %cond.end
	testq	%rdi, %rdi
	je	.LBB22_13
# BB#2:                                 # %cond.end.4
	testq	%r14, %r14
	je	.LBB22_14
# BB#3:                                 # %cond.end.8
	testl	%r12d, %r12d
	je	.LBB22_10
# BB#4:                                 # %if.end
	leaq	12(%rsp), %rsi
	movl	$1, %r15d
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	opj_read_bytes_LE
	cmpl	$1, %r12d
	je	.LBB22_11
# BB#5:                                 # %for.body.preheader
	incq	%rbx
	decl	%r12d
	xorl	%ebp, %ebp
	leaq	8(%rsp), %r15
	.align	16, 0x90
.LBB22_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	opj_read_bytes_LE
	movl	8(%rsp), %ecx
	testb	$-128, %cl
	movl	$0, %eax
	je	.LBB22_8
# BB#7:                                 # %if.then.13
                                        #   in Loop: Header=BB22_6 Depth=1
	andl	$127, %ecx
	orl	%ebp, %ecx
	shll	$7, %ecx
	movl	%ecx, %eax
.LBB22_8:                               # %for.inc
                                        #   in Loop: Header=BB22_6 Depth=1
	incq	%rbx
	decl	%r12d
	movl	%eax, %ebp
	jne	.LBB22_6
# BB#9:                                 # %for.end
	movl	$1, %r15d
	testl	%eax, %eax
	je	.LBB22_11
.LBB22_10:                              # %if.then.16
	xorl	%r15d, %r15d
	movl	$1, %esi
	movl	$.L.str.80, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	opj_event_msg
.LBB22_11:                              # %cleanup
	movl	%r15d, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB22_12:                              # %cond.false
	movl	$.L.str.52, %edi
	movl	$.L.str.1, %esi
	movl	$3331, %edx             # imm = 0xD03
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_plt, %ecx
	callq	__assert_fail
.LBB22_13:                              # %cond.false.3
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$3332, %edx             # imm = 0xD04
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_plt, %ecx
	callq	__assert_fail
.LBB22_14:                              # %cond.false.7
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$3333, %edx             # imm = 0xD05
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_plt, %ecx
	callq	__assert_fail
.Lfunc_end22:
	.size	opj_j2k_read_plt, .Lfunc_end22-opj_j2k_read_plt
	.cfi_endproc

	.align	16, 0x90
	.type	j2k_read_ppm_v3,@function
j2k_read_ppm_v3:                        # @j2k_read_ppm_v3
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp218:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp219:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp220:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp221:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp222:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp223:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp224:
	.cfi_def_cfa_offset 80
.Ltmp225:
	.cfi_offset %rbx, -56
.Ltmp226:
	.cfi_offset %r12, -48
.Ltmp227:
	.cfi_offset %r13, -40
.Ltmp228:
	.cfi_offset %r14, -32
.Ltmp229:
	.cfi_offset %r15, -24
.Ltmp230:
	.cfi_offset %rbp, -16
	movl	%edx, %r13d
	movq	%rsi, %rbx
	movq	%rdi, %r15
	testq	%rbx, %rbx
	je	.LBB23_40
# BB#1:                                 # %cond.end
	testq	%r15, %r15
	je	.LBB23_41
# BB#2:                                 # %cond.end.4
	testq	%rcx, %rcx
	je	.LBB23_42
# BB#3:                                 # %cond.end.8
	testl	%r13d, %r13d
	je	.LBB23_4
# BB#5:                                 # %if.end
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	orb	$1, 248(%r15)
	leaq	20(%rsp), %rsi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	opj_read_bytes_LE
	leaq	1(%rbx), %r12
	leal	-1(%r13), %r14d
	cmpl	$0, 20(%rsp)
	je	.LBB23_6
# BB#12:                                # %if.else
	cmpl	$3, %r14d
	ja	.LBB23_14
# BB#13:                                # %if.then.39
	movl	$2, %esi
	movl	$.L.str.83, %edx
	xorl	%eax, %eax
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	opj_event_msg
	movl	$1, %ebx
	jmp	.LBB23_39
.LBB23_4:                               # %if.then
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.81, %edx
	xorl	%eax, %eax
	movq	%rcx, %rdi
	callq	opj_event_msg
	jmp	.LBB23_39
.LBB23_6:                               # %if.then.11
	cmpl	$3, %r14d
	ja	.LBB23_9
# BB#7:                                 # %if.then.13
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.81, %edx
	jmp	.LBB23_8
.LBB23_14:                              # %if.else.41
	movl	160(%r15), %esi
	movl	164(%r15), %eax
	cmpl	%eax, %esi
	jbe	.LBB23_16
# BB#15:                                # %if.then.46
	movq	%rax, %rdi
	addq	152(%r15), %rdi
	movq	%rdi, 168(%r15)
	subl	%eax, %esi
	movl	%esi, 16(%rsp)
	movl	$1, %eax
	jmp	.LBB23_21
.LBB23_9:                               # %if.end.15
	leaq	16(%rsp), %rsi
	movl	$4, %edx
	movq	%r12, %rdi
	callq	opj_read_bytes_LE
	movl	16(%rsp), %edi
	movl	%edi, 160(%r15)
	movl	$0, 164(%r15)
	callq	malloc
	movq	%rax, 152(%r15)
	movq	%rax, 176(%r15)
	testq	%rax, %rax
	je	.LBB23_10
# BB#11:                                # %if.end.31
	addl	$-5, %r13d
	leaq	5(%rbx), %r12
	movl	160(%r15), %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
	movq	152(%r15), %rdi
	movq	%rdi, 168(%r15)
	movl	16(%rsp), %esi
	jmp	.LBB23_20
.LBB23_16:                              # %if.else.53
	leaq	16(%rsp), %rsi
	movl	$4, %edx
	movq	%r12, %rdi
	callq	opj_read_bytes_LE
	movq	152(%r15), %rdi
	cmpq	176(%r15), %rdi
	jne	.LBB23_43
# BB#17:                                # %cond.false.68
	movl	16(%rsp), %esi
	addl	160(%r15), %esi
	callq	realloc
	movq	%rax, %rdi
	testq	%rdi, %rdi
	je	.LBB23_18
# BB#19:                                # %if.end.82
	leaq	5(%rbx), %r12
	addl	$-5, %r13d
	movq	%rdi, 152(%r15)
	movq	%rdi, 176(%r15)
	movl	160(%r15), %eax
	addq	%rax, %rdi
	movq	%rdi, 168(%r15)
	movl	16(%rsp), %esi
	leal	(%rsi,%rax), %eax
	movl	%eax, 160(%r15)
.LBB23_20:                              # %while.cond.preheader
	movl	$5, %eax
	movl	%r13d, %r14d
.LBB23_21:                              # %while.cond.preheader
	cmpl	%esi, %r14d
	jae	.LBB23_23
# BB#22:
	movl	%r14d, %ebp
	jmp	.LBB23_34
.LBB23_23:                              # %while.body.lr.ph
	addq	%rax, %rbx
	movl	%esi, %edx
	movq	%r12, %rsi
	callq	memcpy
	movl	16(%rsp), %eax
	movq	%rbx, %r12
	addq	%rax, %r12
	addl	%eax, 164(%r15)
	movl	%r14d, %ebp
	subl	%eax, %ebp
	jne	.LBB23_25
# BB#24:
	movl	%r14d, %esi
	jmp	.LBB23_34
.LBB23_25:
	leaq	16(%rsp), %r14
	.align	16, 0x90
.LBB23_26:                              # %if.then.106
                                        # =>This Inner Loop Header: Depth=1
	movl	$4, %edx
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	opj_read_bytes_LE
	movl	%ebp, %ebx
	addl	$-4, %ebx
	movl	16(%rsp), %esi
	cmpl	%esi, %ebx
	jbe	.LBB23_27
# BB#29:                                # %if.then.113
                                        #   in Loop: Header=BB23_26 Depth=1
	movq	152(%r15), %rdi
	cmpq	176(%r15), %rdi
	jne	.LBB23_44
# BB#30:                                # %cond.end.122
                                        #   in Loop: Header=BB23_26 Depth=1
	addl	160(%r15), %esi
	callq	realloc
	testq	%rax, %rax
	je	.LBB23_31
# BB#32:                                # %if.end.144
                                        #   in Loop: Header=BB23_26 Depth=1
	movq	%rax, 152(%r15)
	movq	%rax, 176(%r15)
	movl	160(%r15), %ecx
	addq	%rcx, %rax
	movq	%rax, 168(%r15)
	movl	16(%rsp), %esi
	leal	(%rsi,%rcx), %eax
	movl	%eax, 160(%r15)
.LBB23_27:                              # %while.cond.backedge
                                        #   in Loop: Header=BB23_26 Depth=1
	addq	$4, %r12
	cmpl	%esi, %ebx
	jb	.LBB23_28
# BB#33:                                # %while.cond.backedge.while.body_crit_edge
                                        #   in Loop: Header=BB23_26 Depth=1
	movq	168(%r15), %rdi
	movl	%esi, %edx
	movq	%r12, %rsi
	callq	memcpy
	movl	16(%rsp), %eax
	addq	%rax, %r12
	addl	%eax, 164(%r15)
	movl	%ebx, %ebp
	subl	%eax, %ebp
	movl	%ebx, %esi
	jne	.LBB23_26
	jmp	.LBB23_34
.LBB23_10:                              # %if.then.29
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.82, %edx
	jmp	.LBB23_8
.LBB23_18:                              # %if.then.76
	movq	152(%r15), %rdi
	callq	free
	movq	$0, 152(%r15)
	movq	$0, 176(%r15)
	movl	$0, 160(%r15)
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.86, %edx
	jmp	.LBB23_8
.LBB23_28:
	movl	%ebx, %ebp
.LBB23_34:                              # %while.end
	movl	$1, %ebx
	testl	%ebp, %ebp
	je	.LBB23_39
# BB#35:                                # %if.then.160
	movq	152(%r15), %rdi
	cmpq	176(%r15), %rdi
	jne	.LBB23_45
# BB#36:                                # %cond.end.169
	addl	160(%r15), %esi
	callq	realloc
	testq	%rax, %rax
	je	.LBB23_37
# BB#38:                                # %if.end.191
	movq	%rax, 152(%r15)
	movq	%rax, 176(%r15)
	movl	160(%r15), %ecx
	addq	%rcx, %rax
	movq	%rax, 168(%r15)
	movl	16(%rsp), %edx
	addl	%ecx, %edx
	movl	%edx, 160(%r15)
	movl	%ebp, %edx
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	memcpy
	addl	%ebp, 164(%r15)
	jmp	.LBB23_39
.LBB23_37:                              # %if.then.185
	movq	152(%r15), %rdi
	callq	free
	movq	$0, 152(%r15)
	movq	$0, 176(%r15)
	movl	$0, 160(%r15)
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.88, %edx
	jmp	.LBB23_8
.LBB23_31:                              # %if.then.138
	movq	152(%r15), %rdi
	callq	free
	movq	$0, 152(%r15)
	movq	$0, 176(%r15)
	movl	$0, 160(%r15)
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.87, %edx
.LBB23_8:                               # %cleanup.214
	xorl	%eax, %eax
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	opj_event_msg
.LBB23_39:                              # %cleanup.214
	movl	%ebx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB23_40:                              # %cond.false
	movl	$.L.str.52, %edi
	movl	$.L.str.1, %esi
	movl	$3480, %edx             # imm = 0xD98
	movl	$.L__PRETTY_FUNCTION__.j2k_read_ppm_v3, %ecx
	callq	__assert_fail
.LBB23_41:                              # %cond.false.3
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$3481, %edx             # imm = 0xD99
	movl	$.L__PRETTY_FUNCTION__.j2k_read_ppm_v3, %ecx
	callq	__assert_fail
.LBB23_42:                              # %cond.false.7
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$3482, %edx             # imm = 0xD9A
	movl	$.L__PRETTY_FUNCTION__.j2k_read_ppm_v3, %ecx
	callq	__assert_fail
.LBB23_44:                              # %cond.false.121
	movl	$.L.str.85, %edi
	movl	$.L.str.1, %esi
	movl	$3591, %edx             # imm = 0xE07
	movl	$.L__PRETTY_FUNCTION__.j2k_read_ppm_v3, %ecx
	callq	__assert_fail
.LBB23_45:                              # %cond.false.168
	movl	$.L.str.85, %edi
	movl	$.L.str.1, %esi
	movl	$3614, %edx             # imm = 0xE1E
	movl	$.L__PRETTY_FUNCTION__.j2k_read_ppm_v3, %ecx
	callq	__assert_fail
.LBB23_43:                              # %cond.false.61
	movl	$.L.str.85, %edi
	movl	$.L.str.1, %esi
	movl	$3544, %edx             # imm = 0xDD8
	movl	$.L__PRETTY_FUNCTION__.j2k_read_ppm_v3, %ecx
	callq	__assert_fail
.Lfunc_end23:
	.size	j2k_read_ppm_v3, .Lfunc_end23-j2k_read_ppm_v3
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_read_ppt,@function
opj_j2k_read_ppt:                       # @opj_j2k_read_ppt
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp231:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp232:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp233:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp234:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp235:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp236:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp237:
	.cfi_def_cfa_offset 64
.Ltmp238:
	.cfi_offset %rbx, -56
.Ltmp239:
	.cfi_offset %r12, -48
.Ltmp240:
	.cfi_offset %r13, -40
.Ltmp241:
	.cfi_offset %r14, -32
.Ltmp242:
	.cfi_offset %r15, -24
.Ltmp243:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%edx, %r13d
	movq	%rsi, %r12
	testq	%r12, %r12
	je	.LBB24_17
# BB#1:                                 # %cond.end
	testq	%rdi, %rdi
	je	.LBB24_18
# BB#2:                                 # %cond.end.4
	testq	%r14, %r14
	je	.LBB24_19
# BB#3:                                 # %cond.end.8
	testl	%r13d, %r13d
	je	.LBB24_4
# BB#6:                                 # %if.end
	testb	$1, 248(%rdi)
	jne	.LBB24_7
# BB#8:                                 # %if.end.12
	movl	280(%rdi), %eax
	movq	208(%rdi), %rbx
	imulq	$5680, %rax, %rbp       # imm = 0x1630
	orb	$1, 5672(%rbx,%rbp)
	leaq	4(%rsp), %rsi
	movl	$1, %edx
	movq	%r12, %rdi
	callq	opj_read_bytes_LE
	decl	%r13d
	cmpl	$0, 4(%rsp)
	je	.LBB24_9
# BB#12:                                # %if.else
	movl	5180(%rbx,%rbp), %esi
	addl	%r13d, %esi
	movl	%esi, 5180(%rbx,%rbp)
	leaq	5168(%rbx,%rbp), %r15
	movq	5168(%rbx,%rbp), %rdi
	callq	realloc
	testq	%rax, %rax
	je	.LBB24_13
# BB#14:                                # %if.end.56
	movq	%rax, (%r15)
	movq	%rax, 5160(%rbx,%rbp)
	leaq	5176(%rbx,%rbp), %r14
	movl	5176(%rbx,%rbp), %edi
	addq	%rax, %rdi
	movl	%r13d, %ebx
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	memset
	movq	(%r15), %rax
	jmp	.LBB24_15
.LBB24_4:                               # %if.then
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.89, %edx
	jmp	.LBB24_5
.LBB24_7:                               # %if.then.10
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.90, %edx
	jmp	.LBB24_5
.LBB24_9:                               # %if.then.16
	movl	$0, 5176(%rbx,%rbp)
	movl	%r13d, 5180(%rbx,%rbp)
	movl	%r13d, %edi
	movl	$1, %esi
	movq	%rdi, %r15
	callq	calloc
	movq	%rax, 5168(%rbx,%rbp)
	testq	%rax, %rax
	je	.LBB24_10
# BB#11:                                # %if.end.35
	leaq	5176(%rbx,%rbp), %r14
	movq	%rax, 5160(%rbx,%rbp)
	movq	%r15, %rbx
.LBB24_15:                              # %if.end.64
	incq	%r12
	movl	(%r14), %edi
	addq	%rax, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	addl	%r13d, (%r14)
	movl	$1, %ebx
	jmp	.LBB24_16
.LBB24_13:                              # %if.then.51
	leaq	5180(%rbx,%rbp), %rbx
	movq	(%r15), %rdi
	callq	free
	movq	$0, (%r15)
	movl	$0, (%rbx)
.LBB24_10:                              # %if.then.33
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.91, %edx
.LBB24_5:                               # %cleanup.73
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	opj_event_msg
.LBB24_16:                              # %cleanup.73
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB24_17:                              # %cond.false
	movl	$.L.str.52, %edi
	movl	$.L.str.1, %esi
	movl	$3707, %edx             # imm = 0xE7B
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_ppt, %ecx
	callq	__assert_fail
.LBB24_18:                              # %cond.false.3
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$3708, %edx             # imm = 0xE7C
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_ppt, %ecx
	callq	__assert_fail
.LBB24_19:                              # %cond.false.7
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$3709, %edx             # imm = 0xE7D
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_ppt, %ecx
	callq	__assert_fail
.Lfunc_end24:
	.size	opj_j2k_read_ppt, .Lfunc_end24-opj_j2k_read_ppt
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_read_crg,@function
opj_j2k_read_crg:                       # @opj_j2k_read_crg
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp244:
	.cfi_def_cfa_offset 16
.Ltmp245:
	.cfi_offset %rbx, -16
	testq	%rsi, %rsi
	je	.LBB25_6
# BB#1:                                 # %cond.end
	testq	%rdi, %rdi
	je	.LBB25_7
# BB#2:                                 # %cond.end.4
	testq	%rcx, %rcx
	je	.LBB25_8
# BB#3:                                 # %cond.end.8
	movq	96(%rdi), %rax
	movl	16(%rax), %eax
	shll	$2, %eax
	movl	$1, %ebx
	cmpl	%edx, %eax
	je	.LBB25_5
# BB#4:                                 # %if.then
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.77, %edx
	xorl	%eax, %eax
	movq	%rcx, %rdi
	callq	opj_event_msg
.LBB25_5:                               # %cleanup
	movl	%ebx, %eax
	popq	%rbx
	retq
.LBB25_6:                               # %cond.false
	movl	$.L.str.52, %edi
	movl	$.L.str.1, %esi
	movl	$3164, %edx             # imm = 0xC5C
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_crg, %ecx
	callq	__assert_fail
.LBB25_7:                               # %cond.false.3
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$3165, %edx             # imm = 0xC5D
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_crg, %ecx
	callq	__assert_fail
.LBB25_8:                               # %cond.false.7
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$3166, %edx             # imm = 0xC5E
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_crg, %ecx
	callq	__assert_fail
.Lfunc_end25:
	.size	opj_j2k_read_crg, .Lfunc_end25-opj_j2k_read_crg
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_read_com,@function
opj_j2k_read_com:                       # @opj_j2k_read_com
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp246:
	.cfi_def_cfa_offset 16
	testq	%rdi, %rdi
	je	.LBB26_4
# BB#1:                                 # %cond.end
	testq	%rcx, %rcx
	je	.LBB26_5
# BB#2:                                 # %cond.end.4
	testq	%rsi, %rsi
	je	.LBB26_6
# BB#3:                                 # %cond.end.8
	movl	$1, %eax
	popq	%rdx
	retq
.LBB26_4:                               # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$2266, %edx             # imm = 0x8DA
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_com, %ecx
	callq	__assert_fail
.LBB26_5:                               # %cond.false.3
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$2267, %edx             # imm = 0x8DB
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_com, %ecx
	callq	__assert_fail
.LBB26_6:                               # %cond.false.7
	movl	$.L.str.52, %edi
	movl	$.L.str.1, %esi
	movl	$2268, %edx             # imm = 0x8DC
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_com, %ecx
	callq	__assert_fail
.Lfunc_end26:
	.size	opj_j2k_read_com, .Lfunc_end26-opj_j2k_read_com
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_read_mct,@function
opj_j2k_read_mct:                       # @opj_j2k_read_mct
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp247:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp248:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp249:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp250:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp251:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp252:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp253:
	.cfi_def_cfa_offset 80
.Ltmp254:
	.cfi_offset %rbx, -56
.Ltmp255:
	.cfi_offset %r12, -48
.Ltmp256:
	.cfi_offset %r13, -40
.Ltmp257:
	.cfi_offset %r14, -32
.Ltmp258:
	.cfi_offset %r15, -24
.Ltmp259:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%edx, %r15d
	movq	%rsi, %rbx
	testq	%rbx, %rbx
	je	.LBB27_29
# BB#1:                                 # %cond.end
	testq	%rdi, %rdi
	je	.LBB27_30
# BB#2:                                 # %cond.end.4
	cmpl	$16, 8(%rdi)
	jne	.LBB27_4
# BB#3:                                 # %cond.true.6
	movl	280(%rdi), %eax
	imulq	$5680, %rax, %r13       # imm = 0x1630
	addq	208(%rdi), %r13
	jmp	.LBB27_5
.LBB27_4:                               # %cond.false.7
	movq	16(%rdi), %r13
.LBB27_5:                               # %cond.end.10
	cmpl	$1, %r15d
	jbe	.LBB27_6
# BB#8:                                 # %if.end
	leaq	20(%rsp), %rsi
	movl	$2, %edx
	movq	%rbx, %rdi
	callq	opj_read_bytes_LE
	cmpl	$0, 20(%rsp)
	je	.LBB27_11
# BB#9:                                 # %if.then.13
	movl	$2, %esi
	movl	$.L.str.102, %edx
.LBB27_10:                              # %cleanup.102
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	opj_event_msg
.LBB27_27:                              # %cleanup.102
	movl	$1, %ebx
	jmp	.LBB27_28
.LBB27_11:                              # %if.end.15
	cmpl	$6, %r15d
	jbe	.LBB27_6
# BB#12:                                # %if.end.19
	leaq	2(%rbx), %rdi
	leaq	20(%rsp), %rsi
	movl	$2, %edx
	callq	opj_read_bytes_LE
	movzbl	20(%rsp), %ebp
	movq	5640(%r13), %rdi
	movl	5648(%r13), %esi
	xorl	%eax, %eax
	movq	%rdi, %r12
	testl	%esi, %esi
	je	.LBB27_15
	.align	16, 0x90
.LBB27_13:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ebp, 8(%r12)
	je	.LBB27_15
# BB#14:                                # %if.end.24
                                        #   in Loop: Header=BB27_13 Depth=1
	addq	$32, %r12
	incl	%eax
	cmpl	%esi, %eax
	jb	.LBB27_13
.LBB27_15:                              # %for.end
	cmpl	%esi, %eax
	jne	.LBB27_21
# BB#16:                                # %if.then.27
	cmpl	5652(%r13), %esi
	jne	.LBB27_20
# BB#17:                                # %if.then.30
	addl	$10, %esi
	movl	%esi, 5652(%r13)
	shlq	$5, %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB27_18
# BB#19:                                # %if.end.50
	movq	%rax, 5640(%r13)
	movl	5648(%r13), %edi
	movl	5652(%r13), %edx
	subl	%edi, %edx
	shlq	$5, %rdi
	addq	%rax, %rdi
	shlq	$5, %rdx
	xorl	%esi, %esi
	callq	memset
	movq	5640(%r13), %rdi
	movl	5648(%r13), %esi
.LBB27_20:                              # %if.end.60
	movl	%esi, %r12d
	shlq	$5, %r12
	addq	%rdi, %r12
.LBB27_21:                              # %if.end.65
	leaq	4(%rbx), %r8
	movq	16(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB27_23
# BB#22:                                # %if.then.67
	movq	%r8, 8(%rsp)            # 8-byte Spill
	callq	free
	movq	8(%rsp), %r8            # 8-byte Reload
	movq	$0, 16(%r12)
.LBB27_23:                              # %if.end.70
	movl	%ebp, 8(%r12)
	movl	20(%rsp), %eax
	movl	%eax, %ecx
	shrl	$8, %ecx
	andl	$3, %ecx
	movl	%ecx, 4(%r12)
	shrl	$10, %eax
	andl	$3, %eax
	movl	%eax, (%r12)
	leaq	20(%rsp), %rsi
	movl	$2, %edx
	movq	%r8, %rdi
	callq	opj_read_bytes_LE
	cmpl	$0, 20(%rsp)
	je	.LBB27_25
# BB#24:                                # %if.then.78
	movl	$2, %esi
	movl	$.L.str.104, %edx
	jmp	.LBB27_10
.LBB27_25:                              # %if.end.80
	addl	$-6, %r15d
	movq	%r15, %rdi
	callq	malloc
	movq	%rax, 16(%r12)
	testq	%rax, %rax
	je	.LBB27_6
# BB#26:                                # %if.end.96
	addq	$6, %rbx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	memcpy
	movl	%r15d, 24(%r12)
	incl	5648(%r13)
	jmp	.LBB27_27
.LBB27_6:                               # %if.then
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.101, %edx
.LBB27_7:                               # %cleanup.102
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	opj_event_msg
.LBB27_28:                              # %cleanup.102
	movl	%ebx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB27_18:                              # %if.then.44
	movq	5640(%r13), %rdi
	callq	free
	xorps	%xmm0, %xmm0
	movups	%xmm0, 5640(%r13)
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.103, %edx
	jmp	.LBB27_7
.LBB27_29:                              # %cond.false
	movl	$.L.str.52, %edi
	movl	$.L.str.1, %esi
	movl	$4992, %edx             # imm = 0x1380
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_mct, %ecx
	callq	__assert_fail
.LBB27_30:                              # %cond.false.3
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$4993, %edx             # imm = 0x1381
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_mct, %ecx
	callq	__assert_fail
.Lfunc_end27:
	.size	opj_j2k_read_mct, .Lfunc_end27-opj_j2k_read_mct
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_read_cbd,@function
opj_j2k_read_cbd:                       # @opj_j2k_read_cbd
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp260:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp261:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp262:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp263:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp264:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp265:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp266:
	.cfi_def_cfa_offset 64
.Ltmp267:
	.cfi_offset %rbx, -56
.Ltmp268:
	.cfi_offset %r12, -48
.Ltmp269:
	.cfi_offset %r13, -40
.Ltmp270:
	.cfi_offset %r14, -32
.Ltmp271:
	.cfi_offset %r15, -24
.Ltmp272:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	testq	%rbx, %rbx
	je	.LBB28_10
# BB#1:                                 # %cond.end
	testq	%r15, %r15
	je	.LBB28_11
# BB#2:                                 # %cond.end.4
	testq	%r14, %r14
	je	.LBB28_12
# BB#3:                                 # %cond.end.8
	movq	96(%r15), %rax
	movl	16(%rax), %r13d
	leal	2(%r13), %eax
	cmpl	%edx, %eax
	jne	.LBB28_4
# BB#5:                                 # %if.end
	leaq	4(%rsp), %rsi
	movl	$2, %edx
	movq	%rbx, %rdi
	callq	opj_read_bytes_LE
	cmpl	%r13d, 4(%rsp)
	jne	.LBB28_4
# BB#6:                                 # %if.end.15
	movl	$1, %r12d
	testl	%r13d, %r13d
	je	.LBB28_9
# BB#7:                                 # %for.body.lr.ph
	movq	96(%r15), %rax
	movq	24(%rax), %rbp
	addq	$2, %rbx
	addq	$32, %rbp
	leaq	(%rsp), %r14
	movl	$1, %r12d
	.align	16, 0x90
.LBB28_8:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	opj_read_bytes_LE
	incq	%rbx
	movl	(%rsp), %eax
	shrl	$7, %eax
	andl	$1, %eax
	movl	%eax, (%rbp)
	movl	(%rsp), %eax
	andl	$127, %eax
	incl	%eax
	movl	%eax, -8(%rbp)
	addq	$64, %rbp
	decl	%r13d
	jne	.LBB28_8
	jmp	.LBB28_9
.LBB28_4:                               # %if.then
	xorl	%r12d, %r12d
	movl	$1, %esi
	movl	$.L.str.114, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	opj_event_msg
.LBB28_9:                               # %cleanup
	movl	%r12d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB28_10:                              # %cond.false
	movl	$.L.str.52, %edi
	movl	$.L.str.1, %esi
	movl	$5692, %edx             # imm = 0x163C
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_cbd, %ecx
	callq	__assert_fail
.LBB28_11:                              # %cond.false.3
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$5693, %edx             # imm = 0x163D
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_cbd, %ecx
	callq	__assert_fail
.LBB28_12:                              # %cond.false.7
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$5694, %edx             # imm = 0x163E
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_cbd, %ecx
	callq	__assert_fail
.Lfunc_end28:
	.size	opj_j2k_read_cbd, .Lfunc_end28-opj_j2k_read_cbd
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI29_0:
	.zero	16
	.text
	.align	16, 0x90
	.type	opj_j2k_read_mcc,@function
opj_j2k_read_mcc:                       # @opj_j2k_read_mcc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp273:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp274:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp275:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp276:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp277:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp278:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp279:
	.cfi_def_cfa_offset 96
.Ltmp280:
	.cfi_offset %rbx, -56
.Ltmp281:
	.cfi_offset %r12, -48
.Ltmp282:
	.cfi_offset %r13, -40
.Ltmp283:
	.cfi_offset %r14, -32
.Ltmp284:
	.cfi_offset %r15, -24
.Ltmp285:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%edx, %r12d
	movq	%rsi, %rbx
	testq	%rbx, %rbx
	je	.LBB29_63
# BB#1:                                 # %cond.end
	testq	%rdi, %rdi
	je	.LBB29_64
# BB#2:                                 # %cond.end.4
	testq	%r14, %r14
	je	.LBB29_65
# BB#3:                                 # %cond.end.8
	cmpl	$16, 8(%rdi)
	jne	.LBB29_5
# BB#4:                                 # %cond.true.10
	movl	280(%rdi), %eax
	imulq	$5680, %rax, %rbp       # imm = 0x1630
	addq	208(%rdi), %rbp
	jmp	.LBB29_6
.LBB29_5:                               # %cond.false.11
	movq	16(%rdi), %rbp
.LBB29_6:                               # %cond.end.14
	cmpl	$1, %r12d
	jbe	.LBB29_7
# BB#10:                                # %if.end
	leaq	36(%rsp), %rsi
	movl	$2, %edx
	movq	%rbx, %rdi
	callq	opj_read_bytes_LE
	cmpl	$0, 36(%rsp)
	jne	.LBB29_11
# BB#14:                                # %if.end.19
	cmpl	$6, %r12d
	jbe	.LBB29_7
# BB#15:                                # %if.end.23
	leaq	2(%rbx), %rdi
	leaq	32(%rsp), %rsi
	movl	$1, %edx
	callq	opj_read_bytes_LE
	movq	5656(%rbp), %rdi
	movl	5664(%rbp), %esi
	xorl	%eax, %eax
	testl	%esi, %esi
	movq	%rdi, %r15
	je	.LBB29_19
# BB#16:                                # %for.body.lr.ph
	xorl	%eax, %eax
	movl	32(%rsp), %ecx
	movq	%rdi, %r15
	.align	16, 0x90
.LBB29_17:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ecx, (%r15)
	je	.LBB29_19
# BB#18:                                # %if.end.27
                                        #   in Loop: Header=BB29_17 Depth=1
	addq	$32, %r15
	incl	%eax
	cmpl	%esi, %eax
	jb	.LBB29_17
.LBB29_19:                              # %for.end
	cmpl	%esi, %eax
	jne	.LBB29_25
# BB#20:                                # %if.then.31
	cmpl	5668(%rbp), %esi
	jne	.LBB29_24
# BB#21:                                # %if.then.34
	addl	$10, %esi
	movl	%esi, 5668(%rbp)
	shlq	$5, %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB29_22
# BB#23:                                # %if.end.54
	movq	%rax, 5656(%rbp)
	movl	5664(%rbp), %edi
	movl	5668(%rbp), %edx
	subl	%edi, %edx
	shlq	$5, %rdi
	addq	%rax, %rdi
	shlq	$5, %rdx
	xorl	%esi, %esi
	callq	memset
	movq	5656(%rbp), %rdi
	movl	5664(%rbp), %esi
.LBB29_24:                              # %if.end.64
	movl	%esi, %r15d
	shlq	$5, %r15
	addq	%rdi, %r15
.LBB29_25:                              # %if.end.69
	leaq	3(%rbx), %rdi
	movl	32(%rsp), %eax
	movl	%eax, (%r15)
	leaq	36(%rsp), %rsi
	movl	$2, %edx
	callq	opj_read_bytes_LE
	cmpl	$0, 36(%rsp)
	je	.LBB29_26
.LBB29_11:                              # %if.then.17
	movl	$2, %esi
	movl	$.L.str.106, %edx
.LBB29_12:                              # %cleanup.233
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	opj_event_msg
	movl	$1, %ebx
	jmp	.LBB29_9
.LBB29_26:                              # %if.end.76
	leaq	5(%rbx), %rdi
	leaq	28(%rsp), %rsi
	movl	$2, %edx
	callq	opj_read_bytes_LE
	movl	28(%rsp), %eax
	cmpl	$2, %eax
	jb	.LBB29_28
# BB#27:                                # %if.then.80
	movl	$2, %esi
	movl	$.L.str.108, %edx
	jmp	.LBB29_12
.LBB29_28:                              # %if.end.82
	addl	$-7, %r12d
	testl	%eax, %eax
	je	.LBB29_58
# BB#29:                                # %for.body.87.lr.ph
	addq	$7, %rbx
	xorl	%eax, %eax
.LBB29_30:                              # %for.body.87
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_36 Depth 2
                                        #     Child Loop BB29_44 Depth 2
                                        #     Child Loop BB29_50 Depth 2
                                        #     Child Loop BB29_55 Depth 2
	cmpl	$2, %r12d
	jbe	.LBB29_7
# BB#31:                                # %if.end.92
                                        #   in Loop: Header=BB29_30 Depth=1
	movl	%eax, 4(%rsp)           # 4-byte Spill
	movl	$1, %edx
	movq	%rbx, %rdi
	leaq	36(%rsp), %rsi
	callq	opj_read_bytes_LE
	cmpl	$1, 36(%rsp)
	jne	.LBB29_32
# BB#33:                                # %if.end.98
                                        #   in Loop: Header=BB29_30 Depth=1
	leaq	1(%rbx), %rdi
	movl	$2, %edx
	leaq	24(%rsp), %rsi
	callq	opj_read_bytes_LE
	addl	$-3, %r12d
	movl	24(%rsp), %eax
	movl	%eax, %ecx
	shrl	$15, %ecx
	incl	%ecx
	movl	%ecx, 16(%rsp)          # 4-byte Spill
	andl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, 4(%r15)
	imull	%eax, %ecx
	addl	$2, %ecx
	subl	%ecx, %r12d
	jb	.LBB29_7
# BB#34:                                # %if.end.109
                                        #   in Loop: Header=BB29_30 Depth=1
	addq	$3, %rbx
	testl	%eax, %eax
	je	.LBB29_39
# BB#35:                                # %for.body.118.lr.ph
                                        #   in Loop: Header=BB29_30 Depth=1
	movl	16(%rsp), %eax          # 4-byte Reload
	movq	%rax, 8(%rsp)           # 8-byte Spill
	xorl	%r13d, %r13d
.LBB29_36:                              # %for.body.118
                                        #   Parent Loop BB29_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rdi
	leaq	36(%rsp), %rsi
	movl	16(%rsp), %edx          # 4-byte Reload
	callq	opj_read_bytes_LE
	cmpl	36(%rsp), %r13d
	jne	.LBB29_37
# BB#38:                                # %for.inc.126
                                        #   in Loop: Header=BB29_36 Depth=2
	addq	8(%rsp), %rbx           # 8-byte Folded Reload
	incl	%r13d
	cmpl	4(%r15), %r13d
	jb	.LBB29_36
.LBB29_39:                              # %for.end.128
                                        #   in Loop: Header=BB29_30 Depth=1
	movl	$2, %edx
	movq	%rbx, %rdi
	leaq	24(%rsp), %rsi
	callq	opj_read_bytes_LE
	movl	24(%rsp), %edx
	movl	%edx, %eax
	andl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, 24(%rsp)
	cmpl	4(%r15), %eax
	jne	.LBB29_40
# BB#41:                                # %if.end.138
                                        #   in Loop: Header=BB29_30 Depth=1
	shrl	$15, %edx
	incl	%edx
	movl	%edx, %ecx
	imull	%eax, %ecx
	addl	$3, %ecx
	subl	%ecx, %r12d
	jb	.LBB29_7
# BB#42:                                # %if.end.146
                                        #   in Loop: Header=BB29_30 Depth=1
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	addq	$2, %rbx
	movq	%r14, %rbp
	testl	%eax, %eax
	je	.LBB29_47
# BB#43:                                # %for.body.155.lr.ph
                                        #   in Loop: Header=BB29_30 Depth=1
	movl	%edx, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	xorl	%r13d, %r13d
.LBB29_44:                              # %for.body.155
                                        #   Parent Loop BB29_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rdi
	leaq	36(%rsp), %rsi
	movl	%edx, %r14d
	callq	opj_read_bytes_LE
	cmpl	36(%rsp), %r13d
	jne	.LBB29_45
# BB#46:                                # %for.inc.163
                                        #   in Loop: Header=BB29_44 Depth=2
	addq	16(%rsp), %rbx          # 8-byte Folded Reload
	incl	%r13d
	cmpl	4(%r15), %r13d
	movl	%r14d, %edx
	jb	.LBB29_44
.LBB29_47:                              # %for.end.165
                                        #   in Loop: Header=BB29_30 Depth=1
	movl	$3, %edx
	movq	%rbx, %rdi
	leaq	36(%rsp), %rsi
	callq	opj_read_bytes_LE
	movzwl	38(%rsp), %eax
	notl	%eax
	movb	24(%r15), %cl
	andb	$1, %al
	andb	$-2, %cl
	orb	%al, %cl
	movb	%cl, 24(%r15)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%r15)
	movl	36(%rsp), %eax
	movzbl	%al, %ecx
	movl	%ecx, 32(%rsp)
	testl	%ecx, %ecx
	movq	%rbp, %r14
	movq	8(%rsp), %rbp           # 8-byte Reload
	je	.LBB29_52
# BB#48:                                # %if.then.173
                                        #   in Loop: Header=BB29_30 Depth=1
	movl	5648(%rbp), %edx
	testl	%edx, %edx
	je	.LBB29_7
# BB#49:                                # %for.body.177.lr.ph
                                        #   in Loop: Header=BB29_30 Depth=1
	movq	5640(%rbp), %rsi
	xorl	%edi, %edi
.LBB29_50:                              # %for.body.177
                                        #   Parent Loop BB29_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%ecx, 8(%rsi)
	je	.LBB29_51
# BB#61:                                # %if.end.183
                                        #   in Loop: Header=BB29_50 Depth=2
	addq	$32, %rsi
	incl	%edi
	cmpl	%edx, %edi
	jb	.LBB29_50
	jmp	.LBB29_7
.LBB29_51:                              # %for.end.187.thread
                                        #   in Loop: Header=BB29_30 Depth=1
	movq	%rsi, 8(%r15)
.LBB29_52:                              # %if.end.194
                                        #   in Loop: Header=BB29_30 Depth=1
	movzbl	%ah, %eax  # NOREX
	movl	%eax, 32(%rsp)
	testl	%eax, %eax
	je	.LBB29_57
# BB#53:                                # %if.then.199
                                        #   in Loop: Header=BB29_30 Depth=1
	movl	5648(%rbp), %ecx
	testl	%ecx, %ecx
	je	.LBB29_7
# BB#54:                                # %for.body.205.lr.ph
                                        #   in Loop: Header=BB29_30 Depth=1
	movq	5640(%rbp), %rdx
	xorl	%esi, %esi
.LBB29_55:                              # %for.body.205
                                        #   Parent Loop BB29_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%eax, 8(%rdx)
	je	.LBB29_56
# BB#62:                                # %if.end.211
                                        #   in Loop: Header=BB29_55 Depth=2
	addq	$32, %rdx
	incl	%esi
	cmpl	%ecx, %esi
	jb	.LBB29_55
	jmp	.LBB29_7
.LBB29_56:                              # %for.end.215.thread
                                        #   in Loop: Header=BB29_30 Depth=1
	movq	%rdx, 16(%r15)
.LBB29_57:                              # %for.inc.223
                                        #   in Loop: Header=BB29_30 Depth=1
	addq	$3, %rbx
	movl	4(%rsp), %eax           # 4-byte Reload
	incl	%eax
	cmpl	28(%rsp), %eax
	jb	.LBB29_30
.LBB29_58:                              # %for.end.225
	testl	%r12d, %r12d
	je	.LBB29_59
.LBB29_7:                               # %if.then
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.105, %edx
.LBB29_8:                               # %cleanup.233
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	opj_event_msg
.LBB29_9:                               # %cleanup.233
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB29_22:                              # %if.then.48
	movq	5656(%rbp), %rdi
	callq	free
	xorps	%xmm0, %xmm0
	movups	%xmm0, 5656(%rbp)
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.107, %edx
	jmp	.LBB29_8
.LBB29_37:                              # %if.then.123
	movl	$2, %esi
	movl	$.L.str.110, %edx
	jmp	.LBB29_12
.LBB29_59:                              # %if.end.230
	incl	5664(%rbp)
	movl	$1, %ebx
	jmp	.LBB29_9
.LBB29_45:                              # %if.then.160
	movl	$2, %esi
	movl	$.L.str.110, %edx
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	opj_event_msg
	movl	$1, %ebx
	jmp	.LBB29_9
.LBB29_32:                              # %if.then.96
	movl	$2, %esi
	movl	$.L.str.109, %edx
	jmp	.LBB29_12
.LBB29_40:                              # %if.then.136
	movl	$2, %esi
	movl	$.L.str.111, %edx
	jmp	.LBB29_12
.LBB29_63:                              # %cond.false
	movl	$.L.str.52, %edi
	movl	$.L.str.1, %esi
	movl	$5204, %edx             # imm = 0x1454
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_mcc, %ecx
	callq	__assert_fail
.LBB29_64:                              # %cond.false.3
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$5205, %edx             # imm = 0x1455
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_mcc, %ecx
	callq	__assert_fail
.LBB29_65:                              # %cond.false.7
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$5206, %edx             # imm = 0x1456
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_mcc, %ecx
	callq	__assert_fail
.Lfunc_end29:
	.size	opj_j2k_read_mcc, .Lfunc_end29-opj_j2k_read_mcc
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_read_mco,@function
opj_j2k_read_mco:                       # @opj_j2k_read_mco
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp286:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp287:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp288:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp289:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp290:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp291:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp292:
	.cfi_def_cfa_offset 96
.Ltmp293:
	.cfi_offset %rbx, -56
.Ltmp294:
	.cfi_offset %r12, -48
.Ltmp295:
	.cfi_offset %r13, -40
.Ltmp296:
	.cfi_offset %r14, -32
.Ltmp297:
	.cfi_offset %r15, -24
.Ltmp298:
	.cfi_offset %rbp, -16
	movq	%rcx, %r15
	movl	%edx, %r12d
	movq	%rsi, %r13
	movq	%rdi, %rbx
	testq	%r13, %r13
	je	.LBB30_49
# BB#1:                                 # %cond.end
	testq	%rbx, %rbx
	je	.LBB30_50
# BB#2:                                 # %cond.end.4
	testq	%r15, %r15
	je	.LBB30_51
# BB#3:                                 # %cond.end.8
	movq	96(%rbx), %rcx
	cmpl	$16, 8(%rbx)
	jne	.LBB30_5
# BB#4:                                 # %cond.true.10
	movl	280(%rbx), %eax
	imulq	$5680, %rax, %r14       # imm = 0x1630
	addq	208(%rbx), %r14
	jmp	.LBB30_6
.LBB30_5:                               # %cond.false.11
	movq	16(%rbx), %r14
.LBB30_6:                               # %cond.end.14
	testl	%r12d, %r12d
	je	.LBB30_7
# BB#10:                                # %if.end
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	leaq	32(%rsp), %rsi
	movl	$1, %ebp
	movl	$1, %edx
	movq	%r13, %rdi
	callq	opj_read_bytes_LE
	movl	32(%rsp), %eax
	cmpl	$2, %eax
	jb	.LBB30_12
# BB#11:                                # %if.then.17
	movl	$2, %esi
	movl	$.L.str.113, %edx
	jmp	.LBB30_9
.LBB30_7:                               # %if.then
	xorl	%ebp, %ebp
	movl	$1, %esi
	jmp	.LBB30_8
.LBB30_12:                              # %if.end.19
	incl	%eax
	cmpl	%r12d, %eax
	jne	.LBB30_13
# BB#14:                                # %if.end.23
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	movq	%r13, 24(%rsp)          # 8-byte Spill
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.LBB30_21
# BB#15:                                # %for.body.lr.ph
	movq	5584(%r14), %rcx
	leal	-1(%rax), %esi
	xorl	%edx, %edx
	testb	$7, %al
	je	.LBB30_18
# BB#16:                                # %for.body.prol.preheader
	movl	%eax, %edi
	andl	$7, %edi
	xorl	%edx, %edx
	.align	16, 0x90
.LBB30_17:                              # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, 1076(%rcx)
	addq	$1080, %rcx             # imm = 0x438
	incl	%edx
	cmpl	%edx, %edi
	jne	.LBB30_17
.LBB30_18:                              # %for.body.lr.ph.split
	cmpl	$7, %esi
	jb	.LBB30_21
# BB#19:                                # %for.body.lr.ph.split.split
	addq	$8636, %rcx             # imm = 0x21BC
	.align	16, 0x90
.LBB30_20:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, -7560(%rcx)
	movl	$0, -6480(%rcx)
	movl	$0, -5400(%rcx)
	movl	$0, -4320(%rcx)
	movl	$0, -3240(%rcx)
	movl	$0, -2160(%rcx)
	movl	$0, -1080(%rcx)
	movl	$0, (%rcx)
	addl	$8, %edx
	addq	$8640, %rcx             # imm = 0x21C0
	cmpl	%eax, %edx
	jb	.LBB30_20
.LBB30_21:                              # %for.end
	movq	5624(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB30_23
# BB#22:                                # %if.then.26
	callq	free
	movq	$0, 5624(%r14)
.LBB30_23:                              # %for.cond.30.preheader
	movq	%r14, 16(%rsp)          # 8-byte Spill
	movl	$1, %ebp
	cmpl	$0, 32(%rsp)
	je	.LBB30_48
# BB#24:                                # %for.body.32.lr.ph
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB30_25:                              # %for.body.32
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_27 Depth 2
                                        #     Child Loop BB30_42 Depth 2
                                        #     Child Loop BB30_45 Depth 2
	movq	24(%rsp), %rdi          # 8-byte Reload
	incq	%rdi
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movl	$1, %edx
	leaq	36(%rsp), %rsi
	callq	opj_read_bytes_LE
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	96(%rax), %r12
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	5656(%rax), %r14
	movl	5664(%rax), %eax
	testl	%eax, %eax
	movl	$0, %ecx
	je	.LBB30_29
# BB#26:                                # %for.body.lr.ph.i
                                        #   in Loop: Header=BB30_25 Depth=1
	movl	36(%rsp), %edx
	movl	(%r14), %esi
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB30_27:                              # %for.body.i
                                        #   Parent Loop BB30_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%edx, %esi
	je	.LBB30_29
# BB#28:                                # %for.inc.i
                                        #   in Loop: Header=BB30_27 Depth=2
	incl	%ecx
	cmpl	%eax, %ecx
	jb	.LBB30_27
.LBB30_29:                              # %for.end.i
                                        #   in Loop: Header=BB30_25 Depth=1
	cmpl	%eax, %ecx
	je	.LBB30_47
# BB#30:                                # %if.end.6.i
                                        #   in Loop: Header=BB30_25 Depth=1
	movl	4(%r14), %ebx
	cmpl	16(%r12), %ebx
	jne	.LBB30_47
# BB#31:                                # %if.end.9.i
                                        #   in Loop: Header=BB30_25 Depth=1
	movq	8(%r14), %r13
	testq	%r13, %r13
	je	.LBB30_35
# BB#32:                                # %if.then.10.i
                                        #   in Loop: Header=BB30_25 Depth=1
	movl	(%r13), %eax
	imull	%ebx, %ebx
	movl	MCT_ELEMENT_SIZE(,%rax,4), %eax
	imull	%ebx, %eax
	xorl	%ebp, %ebp
	cmpl	%eax, 24(%r13)
	jne	.LBB30_48
# BB#33:                                # %if.end.16.i
                                        #   in Loop: Header=BB30_25 Depth=1
	leal	(,%rbx,4), %edi
	callq	malloc
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	%rax, 5624(%rcx)
	testq	%rax, %rax
	je	.LBB30_48
# BB#34:                                # %if.end.32.i
                                        #   in Loop: Header=BB30_25 Depth=1
	movl	(%r13), %ecx
	movq	16(%r13), %rdi
	movq	%rax, %rsi
	movl	%ebx, %edx
	callq	*j2k_mct_read_functions_to_float(,%rcx,8)
.LBB30_35:                              # %if.end.37.i
                                        #   in Loop: Header=BB30_25 Depth=1
	movq	16(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB30_47
# BB#36:                                # %if.then.39.i
                                        #   in Loop: Header=BB30_25 Depth=1
	movl	(%rbx), %eax
	movl	16(%r12), %r14d
	movl	MCT_ELEMENT_SIZE(,%rax,4), %eax
	imull	%r14d, %eax
	xorl	%ebp, %ebp
	cmpl	%eax, 24(%rbx)
	jne	.LBB30_48
# BB#37:                                # %cond.false.58.i
                                        #   in Loop: Header=BB30_25 Depth=1
	leal	(,%r14,4), %edi
	callq	malloc
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB30_48
# BB#38:                                # %if.end.65.i
                                        #   in Loop: Header=BB30_25 Depth=1
	movl	(%rbx), %eax
	movq	16(%rbx), %rdi
	movq	%r13, %rsi
	movl	%r14d, %edx
	callq	*j2k_mct_read_functions_to_int32(,%rax,8)
	movl	16(%r12), %eax
	testl	%eax, %eax
	je	.LBB30_46
# BB#39:                                # %for.body.74.lr.ph.i
                                        #   in Loop: Header=BB30_25 Depth=1
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	5584(%rcx), %rcx
	leal	-1(%rax), %esi
	testb	$7, %al
	je	.LBB30_40
# BB#41:                                # %for.body.74.i.prol.preheader
                                        #   in Loop: Header=BB30_25 Depth=1
	movl	%eax, %ebp
	andl	$7, %ebp
	xorl	%edi, %edi
	movq	%r13, %rdx
	.align	16, 0x90
.LBB30_42:                              # %for.body.74.i.prol
                                        #   Parent Loop BB30_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %ebx
	addq	$4, %rdx
	movl	%ebx, 1076(%rcx)
	addq	$1080, %rcx             # imm = 0x438
	incl	%edi
	cmpl	%edi, %ebp
	jne	.LBB30_42
	jmp	.LBB30_43
.LBB30_40:                              #   in Loop: Header=BB30_25 Depth=1
	xorl	%edi, %edi
	movq	%r13, %rdx
.LBB30_43:                              # %for.body.74.lr.ph.i.split
                                        #   in Loop: Header=BB30_25 Depth=1
	cmpl	$7, %esi
	jb	.LBB30_46
# BB#44:                                # %for.body.74.lr.ph.i.split.split
                                        #   in Loop: Header=BB30_25 Depth=1
	addq	$8636, %rcx             # imm = 0x21BC
	subl	%edi, %eax
	.align	16, 0x90
.LBB30_45:                              # %for.body.74.i
                                        #   Parent Loop BB30_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %esi
	movl	%esi, -7560(%rcx)
	movl	4(%rdx), %esi
	movl	%esi, -6480(%rcx)
	movl	8(%rdx), %esi
	movl	%esi, -5400(%rcx)
	movl	12(%rdx), %esi
	movl	%esi, -4320(%rcx)
	movl	16(%rdx), %esi
	movl	%esi, -3240(%rcx)
	movl	20(%rdx), %esi
	movl	%esi, -2160(%rcx)
	movl	24(%rdx), %esi
	movl	%esi, -1080(%rcx)
	movl	28(%rdx), %esi
	movl	%esi, (%rcx)
	addq	$8640, %rcx             # imm = 0x21C0
	addq	$32, %rdx
	addl	$-8, %eax
	jne	.LBB30_45
.LBB30_46:                              # %for.end.78.i
                                        #   in Loop: Header=BB30_25 Depth=1
	movq	%r13, %rdi
	callq	free
	.align	16, 0x90
.LBB30_47:                              # %for.inc.39
                                        #   in Loop: Header=BB30_25 Depth=1
	incl	%r15d
	movl	$1, %ebp
	cmpl	32(%rsp), %r15d
	jb	.LBB30_25
	jmp	.LBB30_48
.LBB30_13:                              # %if.then.21
	xorl	%ebp, %ebp
	movl	$2, %esi
.LBB30_8:                               # %cleanup
	movl	$.L.str.112, %edx
.LBB30_9:                               # %cleanup
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	opj_event_msg
.LBB30_48:                              # %cleanup
	movl	%ebp, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB30_49:                              # %cond.false
	movl	$.L.str.52, %edi
	movl	$.L.str.1, %esi
	movl	$5482, %edx             # imm = 0x156A
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_mco, %ecx
	callq	__assert_fail
.LBB30_50:                              # %cond.false.3
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$5483, %edx             # imm = 0x156B
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_mco, %ecx
	callq	__assert_fail
.LBB30_51:                              # %cond.false.7
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$5484, %edx             # imm = 0x156C
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_mco, %ecx
	callq	__assert_fail
.Lfunc_end30:
	.size	opj_j2k_read_mco, .Lfunc_end30-opj_j2k_read_mco
	.cfi_endproc

	.globl	opj_j2k_convert_progression_order
	.align	16, 0x90
	.type	opj_j2k_convert_progression_order,@function
opj_j2k_convert_progression_order:      # @opj_j2k_convert_progression_order
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$j2k_prog_order_list-12, %eax
	.align	16, 0x90
.LBB31_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	12(%rax), %ecx
	addq	$12, %rax
	cmpl	$-1, %ecx
	je	.LBB31_3
# BB#2:                                 # %for.cond
                                        #   in Loop: Header=BB31_1 Depth=1
	cmpl	%edi, %ecx
	jne	.LBB31_1
.LBB31_3:                               # %cleanup
	addq	$4, %rax
	retq
.Lfunc_end31:
	.size	opj_j2k_convert_progression_order, .Lfunc_end31-opj_j2k_convert_progression_order
	.cfi_endproc

	.globl	opj_j2k_setup_decoder
	.align	16, 0x90
	.type	opj_j2k_setup_decoder,@function
opj_j2k_setup_decoder:                  # @opj_j2k_setup_decoder
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rdi, %rdi
	je	.LBB32_3
# BB#1:                                 # %entry
	testq	%rsi, %rsi
	je	.LBB32_3
# BB#2:                                 # %if.then
	movl	4(%rsi), %eax
	movl	%eax, 220(%rdi)
	movl	(%rsi), %eax
	movl	%eax, 216(%rdi)
.LBB32_3:                               # %if.end
	retq
.Lfunc_end32:
	.size	opj_j2k_setup_decoder, .Lfunc_end32-opj_j2k_setup_decoder
	.cfi_endproc

	.globl	opj_j2k_create_compress
	.align	16, 0x90
	.type	opj_j2k_create_compress,@function
opj_j2k_create_compress:                # @opj_j2k_create_compress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp299:
	.cfi_def_cfa_offset 16
.Ltmp300:
	.cfi_offset %rbx, -16
	movl	$296, %edi              # imm = 0x128
	callq	malloc
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB33_5
# BB#1:                                 # %if.end
	xorl	%esi, %esi
	movl	$296, %edx              # imm = 0x128
	movq	%rbx, %rdi
	callq	memset
	movl	$0, (%rbx)
	andb	$-3, 248(%rbx)
	movl	$1000, %edi             # imm = 0x3E8
	callq	malloc
	movq	%rax, 64(%rbx)
	testq	%rax, %rax
	je	.LBB33_4
# BB#2:                                 # %if.end.9
	movl	$1000, 72(%rbx)         # imm = 0x3E8
	callq	opj_procedure_list_create
	movq	%rax, 264(%rbx)
	testq	%rax, %rax
	je	.LBB33_4
# BB#3:                                 # %if.end.16
	callq	opj_procedure_list_create
	movq	%rax, 256(%rbx)
	testq	%rax, %rax
	movq	%rbx, %rax
	jne	.LBB33_5
.LBB33_4:                               # %if.then.20
	movq	%rbx, %rdi
	callq	opj_j2k_destroy
	xorl	%eax, %eax
.LBB33_5:                               # %cleanup
	popq	%rbx
	retq
.Lfunc_end33:
	.size	opj_j2k_create_compress, .Lfunc_end33-opj_j2k_create_compress
	.cfi_endproc

	.globl	opj_j2k_destroy
	.align	16, 0x90
	.type	opj_j2k_destroy,@function
opj_j2k_destroy:                        # @opj_j2k_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp301:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp302:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp303:
	.cfi_def_cfa_offset 32
.Ltmp304:
	.cfi_offset %rbx, -32
.Ltmp305:
	.cfi_offset %r14, -24
.Ltmp306:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	testq	%r14, %r14
	je	.LBB34_20
# BB#1:                                 # %if.end
	cmpl	$0, (%r14)
	je	.LBB34_6
# BB#2:                                 # %if.then.1
	movq	16(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB34_4
# BB#3:                                 # %if.then.3
	callq	opj_j2k_tcp_destroy
	movq	16(%r14), %rdi
	callq	free
	movq	$0, 16(%r14)
.LBB34_4:                               # %if.end.13
	movq	24(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB34_12
# BB#5:                                 # %if.then.17
	callq	free
	movq	$0, 24(%r14)
	movl	$0, 32(%r14)
	jmp	.LBB34_12
.LBB34_20:                              # %return
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB34_6:                               # %if.else
	movq	48(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB34_8
# BB#7:                                 # %if.then.29
	callq	free
	movq	$0, 48(%r14)
.LBB34_8:                               # %if.end.36
	movq	24(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB34_10
# BB#9:                                 # %if.then.40
	callq	free
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%r14)
.LBB34_10:                              # %if.end.49
	movq	64(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB34_12
# BB#11:                                # %if.then.53
	callq	free
	movq	$0, 64(%r14)
	movl	$0, 72(%r14)
.LBB34_12:                              # %if.end.63
	movq	288(%r14), %rdi
	callq	opj_tcd_destroy
	movq	208(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB34_17
# BB#13:                                # %if.then.2.i
	movl	148(%r14), %ebp
	imull	144(%r14), %ebp
	testl	%ebp, %ebp
	je	.LBB34_16
	.align	16, 0x90
.LBB34_14:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	opj_j2k_tcp_destroy
	addq	$5680, %rbx             # imm = 0x1630
	decl	%ebp
	jne	.LBB34_14
# BB#15:                                # %for.cond.for.end_crit_edge.i
	movq	208(%r14), %rbx
.LBB34_16:                              # %for.end.i
	movq	%rbx, %rdi
	callq	free
	movq	$0, 208(%r14)
.LBB34_17:                              # %if.end.7.i
	leaq	112(%r14), %rbx
	movq	176(%r14), %rdi
	callq	free
	movq	$0, 176(%r14)
	movq	$0, 152(%r14)
	movq	136(%r14), %rdi
	callq	free
	movq	$0, 136(%r14)
	testb	$2, 248(%r14)
	jne	.LBB34_19
# BB#18:                                # %if.then.10.i
	movq	232(%r14), %rdi
	callq	free
	movq	$0, 232(%r14)
.LBB34_19:                              # %opj_j2k_cp_destroy.exit
	xorl	%esi, %esi
	movl	$144, %edx
	movq	%rbx, %rdi
	callq	memset
	movq	256(%r14), %rdi
	callq	opj_procedure_list_destroy
	movq	$0, 256(%r14)
	movq	264(%r14), %rdi
	callq	opj_procedure_list_destroy
	movq	$0, 256(%r14)
	movq	272(%r14), %rdi
	callq	j2k_destroy_cstr_index
	movq	$0, 272(%r14)
	movq	96(%r14), %rdi
	callq	opj_image_destroy
	movq	$0, 96(%r14)
	movq	104(%r14), %rdi
	callq	opj_image_destroy
	movq	$0, 104(%r14)
	movq	%r14, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	free                    # TAILCALL
.Lfunc_end34:
	.size	opj_j2k_destroy, .Lfunc_end34-opj_j2k_destroy
	.cfi_endproc

	.globl	opj_j2k_setup_encoder
	.align	16, 0x90
	.type	opj_j2k_setup_encoder,@function
opj_j2k_setup_encoder:                  # @opj_j2k_setup_encoder
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp307:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp308:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp309:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp310:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp311:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp312:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp313:
	.cfi_def_cfa_offset 160
.Ltmp314:
	.cfi_offset %rbx, -56
.Ltmp315:
	.cfi_offset %r12, -48
.Ltmp316:
	.cfi_offset %r13, -40
.Ltmp317:
	.cfi_offset %r14, -32
.Ltmp318:
	.cfi_offset %r15, -24
.Ltmp319:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdx, %rbp
	movq	%rsi, %r13
	movq	%rdi, %r12
	movq	%r12, 40(%rsp)          # 8-byte Spill
	testq	%r12, %r12
	je	.LBB35_146
# BB#1:                                 # %entry
	testq	%r13, %r13
	je	.LBB35_146
# BB#2:                                 # %entry
	testq	%rbp, %rbp
	je	.LBB35_146
# BB#3:                                 # %if.end
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, 144(%r12)
	movl	18684(%r13), %eax
	movl	%eax, 216(%r12)
	movl	18688(%r13), %eax
	movl	%eax, 220(%r12)
	movl	18692(%r13), %eax
	movl	%eax, 112(%r12)
	movb	20(%r13), %al
	movb	241(%r12), %cl
	andb	$1, %al
	andb	$-2, %cl
	orb	%al, %cl
	movb	%cl, 241(%r12)
	movb	24(%r13), %al
	addb	%al, %al
	andb	$2, %al
	andb	$-3, %cl
	orb	%al, %cl
	movb	%cl, 241(%r12)
	movb	28(%r13), %al
	shlb	$2, %al
	andb	$4, %al
	andb	$-5, %cl
	orb	%al, %cl
	movb	%cl, 241(%r12)
	movq	32(%r13), %rsi
	testq	%rsi, %rsi
	je	.LBB35_7
# BB#4:                                 # %if.then.24
	movl	4796(%r13), %eax
	imull	5600(%r13), %eax
	leal	(%rax,%rax,2), %eax
	movslq	%eax, %rbx
	shlq	$2, %rbx
	xorl	%edi, %edi
	cmpq	$-257, %rbx             # imm = 0xFFFFFFFFFFFFFEFF
	ja	.LBB35_6
# BB#5:                                 # %cond.false
	movq	%rbx, %rdi
	callq	malloc
	movq	%rax, %rdi
	movq	32(%r13), %rsi
.LBB35_6:                               # %cond.end
	movq	%rdi, 232(%r12)
	movq	%rbx, %rdx
	callq	memcpy
.LBB35_7:                               # %if.end.35
	movups	4(%r13), %xmm0
	movups	%xmm0, 116(%r12)
	movq	40(%r13), %rdi
	testq	%rdi, %rdi
	je	.LBB35_12
# BB#8:                                 # %if.then.37
	callq	strlen
	incq	%rax
	cmpq	$-256, %rax
	jb	.LBB35_10
# BB#9:                                 # %cond.end.48.thread
	movq	$0, 136(%r12)
	jmp	.LBB35_12
.LBB35_10:                              # %cond.end.48
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, 136(%r12)
	testq	%rax, %rax
	je	.LBB35_12
# BB#11:                                # %if.then.52
	movq	40(%r13), %rsi
	movq	%rax, %rdi
	callq	strcpy
.LBB35_12:                              # %if.end.57
	movl	8(%rbp), %eax
	movl	12(%rbp), %ecx
	subl	116(%r12), %eax
	cmpl	$0, (%r13)
	je	.LBB35_14
# BB#13:                                # %if.then.59
	movl	124(%r12), %esi
	leal	-1(%rax,%rsi), %eax
	cltd
	idivl	%esi
	movl	%eax, 144(%r12)
	movl	128(%r12), %esi
	decl	%ecx
	subl	120(%r12), %ecx
	addl	%esi, %ecx
	movl	%ecx, %eax
	cltd
	idivl	%esi
	movl	%eax, 148(%r12)
	jmp	.LBB35_15
.LBB35_14:                              # %if.else
	movl	%eax, 124(%r12)
	subl	120(%r12), %ecx
	movl	%ecx, 128(%r12)
.LBB35_15:                              # %if.end.77
	movq	%rbp, 80(%rsp)          # 8-byte Spill
	cmpb	$0, 18696(%r13)
	je	.LBB35_17
# BB#16:                                # %if.then.79
	movb	18697(%r13), %al
	movb	%al, 240(%r12)
	orb	$8, 241(%r12)
.LBB35_17:                              # %if.end.87
	movl	148(%r12), %edi
	imull	144(%r12), %edi
	movl	$5680, %esi             # imm = 0x1630
	callq	calloc
	movq	%rax, 208(%r12)
	movl	4792(%r13), %eax
	movl	%eax, 32(%rsp)          # 4-byte Spill
	testl	%eax, %eax
	je	.LBB35_62
# BB#18:                                # %if.then.110
	movq	%r12, 40(%rsp)          # 8-byte Spill
	movl	5600(%r13), %ecx
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	movq	80(%rsp), %rax          # 8-byte Reload
	movl	16(%rax), %ebx
	movl	4796(%r13), %edx
	movl	%edx, 48(%rsp)          # 4-byte Spill
	movl	%ebx, %r12d
	imull	%ecx, %r12d
	movl	%r12d, %ebp
	imull	%edx, %ebp
	movl	$4, %esi
	movq	%rbp, %rdi
	callq	calloc
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB35_19
# BB#20:                                # %if.end.20.i
	movq	%r14, 8(%rsp)           # 8-byte Spill
	shlq	$2, %rbp
	xorl	%esi, %esi
	movq	%r15, %rdi
	movq	%rbp, %rdx
	callq	memset
	movl	56(%r13), %eax
	movl	68(%r13), %ecx
	movl	%ecx, 24(%rsp)          # 4-byte Spill
	cmpl	%ecx, %eax
	jae	.LBB35_32
# BB#21:                                # %for.body.lr.ph.i
	movl	%eax, %ecx
	imull	%ebx, %ecx
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	movl	60(%r13), %ecx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movl	72(%r13), %ecx
	movl	%ecx, 96(%rsp)          # 4-byte Spill
	leal	(%r12,%r12,2), %ecx
	leal	(%r12,%r12), %esi
	.align	16, 0x90
.LBB35_22:                              # %for.body.i.333
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB35_24 Depth 2
                                        #       Child Loop BB35_26 Depth 3
                                        #       Child Loop BB35_29 Depth 3
	movl	%eax, 64(%rsp)          # 4-byte Spill
	movq	56(%rsp), %rax          # 8-byte Reload
	cmpl	96(%rsp), %eax          # 4-byte Folded Reload
	jae	.LBB35_31
# BB#23:                                # %for.cond.33.preheader.lr.ph.i
                                        #   in Loop: Header=BB35_22 Depth=1
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	56(%rsp), %rdi          # 8-byte Reload
	leal	(%rax,%rdi), %ebp
	movl	64(%r13), %edx
	leal	-1(%rdx), %eax
	movl	%eax, 88(%rsp)          # 4-byte Spill
	movl	%edx, %r8d
	andl	$3, %r8d
	movl	%edi, %r9d
	.align	16, 0x90
.LBB35_24:                              # %for.cond.33.preheader.i
                                        #   Parent Loop BB35_22 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB35_26 Depth 3
                                        #       Child Loop BB35_29 Depth 3
	testl	%edx, %edx
	je	.LBB35_30
# BB#25:                                # %for.body.36.i.preheader
                                        #   in Loop: Header=BB35_24 Depth=2
	xorl	%r14d, %r14d
	testl	%r8d, %r8d
	movl	%ebp, %r10d
	je	.LBB35_27
	.align	16, 0x90
.LBB35_26:                              # %for.body.36.i.prol
                                        #   Parent Loop BB35_22 Depth=1
                                        #     Parent Loop BB35_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%r10d, %eax
	movl	$1, (%r15,%rax,4)
	addl	%r12d, %r10d
	incl	%r14d
	cmpl	%r14d, %r8d
	jne	.LBB35_26
.LBB35_27:                              # %for.body.36.i.preheader.split
                                        #   in Loop: Header=BB35_24 Depth=2
	cmpl	$3, 88(%rsp)            # 4-byte Folded Reload
	jb	.LBB35_30
# BB#28:                                # %for.body.36.i.preheader.split.split
                                        #   in Loop: Header=BB35_24 Depth=2
	movl	%edx, %r11d
	subl	%r14d, %r11d
	.align	16, 0x90
.LBB35_29:                              # %for.body.36.i
                                        #   Parent Loop BB35_22 Depth=1
                                        #     Parent Loop BB35_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%r10d, %eax
	movl	$1, (%r15,%rax,4)
	leal	(%rsi,%r10), %eax
	leal	(%r10,%rcx), %edi
	leal	(%r10,%r12), %r10d
	movl	$1, (%r15,%r10,4)
	addl	%r12d, %r10d
	movl	$1, (%r15,%rax,4)
	addl	%r12d, %r10d
	movl	$1, (%r15,%rdi,4)
	addl	%r12d, %r10d
	addl	$-4, %r11d
	jne	.LBB35_29
.LBB35_30:                              # %for.end.i
                                        #   in Loop: Header=BB35_24 Depth=2
	incl	%ebp
	incl	%r9d
	cmpl	96(%rsp), %r9d          # 4-byte Folded Reload
	jne	.LBB35_24
.LBB35_31:                              # %for.end.41.i
                                        #   in Loop: Header=BB35_22 Depth=1
	movq	72(%rsp), %rax          # 8-byte Reload
	addl	%ebx, %eax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movl	64(%rsp), %eax          # 4-byte Reload
	incl	%eax
	cmpl	24(%rsp), %eax          # 4-byte Folded Reload
	jne	.LBB35_22
.LBB35_32:                              # %for.cond.46.preheader.i
	cmpl	$1, 32(%rsp)            # 4-byte Folded Reload
	jbe	.LBB35_46
# BB#33:
	leaq	56(%r13), %rax
	movl	$1, %r9d
	.align	16, 0x90
.LBB35_34:                              # %for.body.49.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB35_36 Depth 2
                                        #       Child Loop BB35_38 Depth 3
                                        #         Child Loop BB35_40 Depth 4
	movl	156(%rax), %ebp
	movl	8(%rax), %ecx
	movl	148(%rax), %r11d
	cmpl	%ecx, %ebp
	movl	$0, %edx
	cmovbel	%edx, %ecx
	movl	160(%rax), %r8d
	cmpl	%r8d, %r11d
	jae	.LBB35_45
# BB#35:                                # %for.body.65.lr.ph.i
                                        #   in Loop: Header=BB35_34 Depth=1
	movl	%r11d, %r10d
	imull	%ebx, %r10d
	movl	%ecx, %r14d
	imull	%r12d, %r14d
	movl	164(%rax), %edx
	.align	16, 0x90
.LBB35_36:                              # %for.body.65.i
                                        #   Parent Loop BB35_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB35_38 Depth 3
                                        #         Child Loop BB35_40 Depth 4
	movl	152(%rax), %edi
	cmpl	%edx, %edi
	jae	.LBB35_44
# BB#37:                                # %for.body.75.lr.ph.i
                                        #   in Loop: Header=BB35_36 Depth=2
	leal	(%rdi,%r10), %r8d
	.align	16, 0x90
.LBB35_38:                              # %for.body.75.i
                                        #   Parent Loop BB35_34 Depth=1
                                        #     Parent Loop BB35_36 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB35_40 Depth 4
	cmpl	%ebp, %ecx
	jae	.LBB35_42
# BB#39:                                # %for.body.83.lr.ph.i
                                        #   in Loop: Header=BB35_38 Depth=3
	leal	(%r8,%r14), %edx
	movl	%ecx, %esi
	.align	16, 0x90
.LBB35_40:                              # %for.body.83.i
                                        #   Parent Loop BB35_34 Depth=1
                                        #     Parent Loop BB35_36 Depth=2
                                        #       Parent Loop BB35_38 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%edx, %ebp
	movl	$1, (%r15,%rbp,4)
	addl	%r12d, %edx
	incl	%esi
	movl	156(%rax), %ebp
	cmpl	%ebp, %esi
	jb	.LBB35_40
# BB#41:                                # %for.cond.79.for.end.89_crit_edge.i
                                        #   in Loop: Header=BB35_38 Depth=3
	movl	164(%rax), %edx
.LBB35_42:                              # %for.end.89.i
                                        #   in Loop: Header=BB35_38 Depth=3
	incl	%r8d
	incl	%edi
	cmpl	%edx, %edi
	jb	.LBB35_38
# BB#43:                                # %for.cond.71.for.end.93_crit_edge.i
                                        #   in Loop: Header=BB35_36 Depth=2
	movl	160(%rax), %r8d
.LBB35_44:                              # %for.end.93.i
                                        #   in Loop: Header=BB35_36 Depth=2
	addl	%ebx, %r10d
	incl	%r11d
	cmpl	%r8d, %r11d
	jb	.LBB35_36
.LBB35_45:                              # %for.end.97.i
                                        #   in Loop: Header=BB35_34 Depth=1
	addq	$148, %rax
	incl	%r9d
	cmpl	32(%rsp), %r9d          # 4-byte Folded Reload
	jne	.LBB35_34
.LBB35_46:                              # %for.cond.102.preheader.i
	cmpl	$0, 48(%rsp)            # 4-byte Folded Reload
	movq	40(%rsp), %r12          # 8-byte Reload
	je	.LBB35_61
# BB#47:                                # %for.cond.106.preheader.lr.ph.i
	movq	%rbx, %r8
	leal	-1(%r8), %r9d
	movl	%r8d, %r11d
	andl	$3, %r11d
	xorl	%ebx, %ebx
	xorl	%ebp, %ebp
	xorl	%edi, %edi
	movl	20(%rsp), %r14d         # 4-byte Reload
	.align	16, 0x90
.LBB35_48:                              # %for.cond.106.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB35_49 Depth 2
                                        #       Child Loop BB35_51 Depth 3
                                        #       Child Loop BB35_55 Depth 3
	testl	%r14d, %r14d
	movl	$0, %r10d
	je	.LBB35_58
	.align	16, 0x90
.LBB35_49:                              # %for.cond.110.preheader.i
                                        #   Parent Loop BB35_48 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB35_51 Depth 3
                                        #       Child Loop BB35_55 Depth 3
	testl	%r8d, %r8d
	je	.LBB35_57
# BB#50:                                # %for.body.113.i.preheader
                                        #   in Loop: Header=BB35_49 Depth=2
	xorl	%esi, %esi
	testl	%r11d, %r11d
	movl	%ebp, %edx
	je	.LBB35_53
	.align	16, 0x90
.LBB35_51:                              # %for.body.113.i.prol
                                        #   Parent Loop BB35_48 Depth=1
                                        #     Parent Loop BB35_49 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%esi, %eax
	leal	(%rbp,%rax), %edx
	cmpl	$1, (%r15,%rdx,4)
	setne	%dl
	movzbl	%dl, %edx
	orl	%edx, %ebx
	leal	1(%rax), %esi
	cmpl	%esi, %r11d
	jne	.LBB35_51
# BB#52:                                #   in Loop: Header=BB35_49 Depth=2
	leal	1(%rbp,%rax), %edx
.LBB35_53:                              # %for.body.113.i.preheader.split
                                        #   in Loop: Header=BB35_49 Depth=2
	cmpl	$3, %r9d
	jb	.LBB35_56
# BB#54:                                # %for.body.113.i.preheader.split.split
                                        #   in Loop: Header=BB35_49 Depth=2
	movl	%r8d, %eax
	subl	%esi, %eax
	.align	16, 0x90
.LBB35_55:                              # %for.body.113.i
                                        #   Parent Loop BB35_48 Depth=1
                                        #     Parent Loop BB35_49 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%edx, %esi
	cmpl	$1, (%r15,%rsi,4)
	setne	%cl
	movzbl	%cl, %ecx
	orl	%ebx, %ecx
	leal	1(%rdx), %esi
	cmpl	$1, (%r15,%rsi,4)
	setne	%bl
	movzbl	%bl, %esi
	orl	%ecx, %esi
	leal	2(%rdx), %ecx
	cmpl	$1, (%r15,%rcx,4)
	setne	%cl
	movzbl	%cl, %ecx
	orl	%esi, %ecx
	leal	3(%rdx), %esi
	cmpl	$1, (%r15,%rsi,4)
	setne	%bl
	movzbl	%bl, %ebx
	orl	%ecx, %ebx
	addl	$4, %edx
	addl	$-4, %eax
	jne	.LBB35_55
.LBB35_56:                              # %for.cond.110.for.inc.122_crit_edge.i
                                        #   in Loop: Header=BB35_49 Depth=2
	addl	%r8d, %ebp
.LBB35_57:                              # %for.inc.122.i
                                        #   in Loop: Header=BB35_49 Depth=2
	incl	%r10d
	cmpl	%r14d, %r10d
	jne	.LBB35_49
.LBB35_58:                              # %for.inc.125.i
                                        #   in Loop: Header=BB35_48 Depth=1
	incl	%edi
	cmpl	48(%rsp), %edi          # 4-byte Folded Reload
	jne	.LBB35_48
# BB#59:                                # %for.end.127.i
	testl	%ebx, %ebx
	movq	8(%rsp), %rdi           # 8-byte Reload
	je	.LBB35_61
# BB#60:                                # %if.then.128.i
	movl	$1, %esi
	movl	$.L.str.116, %edx
	xorl	%eax, %eax
	callq	opj_event_msg
.LBB35_61:                              # %if.end.130.i
	movq	%r15, %rdi
	callq	free
	jmp	.LBB35_62
.LBB35_19:                              # %if.then.i
	movl	$1, %esi
	movl	$.L.str.115, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	opj_event_msg
	movq	40(%rsp), %r12          # 8-byte Reload
.LBB35_62:                              # %for.cond.preheader
	movl	148(%r12), %eax
	imull	144(%r12), %eax
	testl	%eax, %eax
	je	.LBB35_63
# BB#64:                                # %for.body.lr.ph
	leaq	18704(%r13), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leaq	104(%r13), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	xorl	%r8d, %r8d
	.align	16, 0x90
.LBB35_65:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB35_67 Depth 2
                                        #     Child Loop BB35_77 Depth 2
                                        #     Child Loop BB35_98 Depth 2
                                        #     Child Loop BB35_101 Depth 2
                                        #     Child Loop BB35_89 Depth 2
                                        #     Child Loop BB35_104 Depth 2
                                        #       Child Loop BB35_105 Depth 3
                                        #       Child Loop BB35_107 Depth 3
                                        #       Child Loop BB35_112 Depth 3
                                        #       Child Loop BB35_118 Depth 3
                                        #         Child Loop BB35_133 Depth 4
                                        #         Child Loop BB35_138 Depth 4
                                        #         Child Loop BB35_122 Depth 4
                                        #         Child Loop BB35_127 Depth 4
                                        #       Child Loop BB35_115 Depth 3
	movl	%r8d, %r8d
	movq	208(%r12), %r9
	imulq	$5680, %r8, %r15        # imm = 0x1630
	leaq	(%r9,%r15), %r14
	movl	4796(%r13), %eax
	movl	%eax, 8(%r9,%r15)
	testl	%eax, %eax
	je	.LBB35_74
# BB#66:                                # %for.body.127.lr.ph
                                        #   in Loop: Header=BB35_65 Depth=1
	leaq	8(%r9,%r15), %rax
	movl	216(%r12), %ecx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB35_67:                              # %for.body.127
                                        #   Parent Loop BB35_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	241(%r12), %bl
	andb	$4, %bl
	testl	%ecx, %ecx
	movl	%edx, %edx
	je	.LBB35_71
# BB#68:                                # %if.then.132
                                        #   in Loop: Header=BB35_67 Depth=2
	testb	%bl, %bl
	je	.LBB35_70
# BB#69:                                # %if.then.139
                                        #   in Loop: Header=BB35_67 Depth=2
	movl	5200(%r13,%rdx,4), %esi
	movl	%esi, 5184(%r14,%rdx,4)
	jmp	.LBB35_70
	.align	16, 0x90
.LBB35_71:                              # %if.else.149
                                        #   in Loop: Header=BB35_67 Depth=2
	testb	%bl, %bl
	je	.LBB35_70
# BB#72:                                # %if.then.158
                                        #   in Loop: Header=BB35_67 Depth=2
	movl	5200(%r13,%rdx,4), %esi
	movl	%esi, 5184(%r14,%rdx,4)
	jmp	.LBB35_73
	.align	16, 0x90
.LBB35_70:                              # %if.else.165
                                        #   in Loop: Header=BB35_67 Depth=2
	movl	4800(%r13,%rdx,4), %esi
	movl	%esi, 20(%r14,%rdx,4)
.LBB35_73:                              # %for.inc
                                        #   in Loop: Header=BB35_67 Depth=2
	incl	%edx
	cmpl	(%rax), %edx
	jb	.LBB35_67
.LBB35_74:                              # %for.end
                                        #   in Loop: Header=BB35_65 Depth=1
	movl	48(%r13), %eax
	movl	%eax, (%r14)
	movl	52(%r13), %eax
	movl	%eax, 4(%r9,%r15)
	movsbl	18698(%r13), %eax
	movl	%eax, 16(%r9,%r15)
	movb	5672(%r9,%r15), %al
	movb	%al, %cl
	andb	$-3, %cl
	movb	%cl, 5672(%r9,%r15)
	cmpl	$0, 4792(%r13)
	je	.LBB35_81
# BB#75:                                # %if.then.181
                                        #   in Loop: Header=BB35_65 Depth=1
	leaq	5672(%r9,%r15), %rcx
	orb	$2, %al
	movb	%al, (%rcx)
	movl	4792(%r13), %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	je	.LBB35_80
# BB#76:                                # %for.body.190.lr.ph
                                        #   in Loop: Header=BB35_65 Depth=1
	leal	1(%r8), %edx
	xorl	%esi, %esi
	movq	24(%rsp), %rdi          # 8-byte Reload
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB35_77:                              # %for.body.190
                                        #   Parent Loop BB35_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	(%rdi), %edx
	jne	.LBB35_79
# BB#78:                                # %if.then.197
                                        #   in Loop: Header=BB35_77 Depth=2
	movl	%ecx, %ebp
	imulq	$148, %rbp, %rbp
	movups	56(%r13,%rbp), %xmm0
	movups	%xmm0, 424(%rbp,%r14)
	movl	72(%r13,%rbp), %ebx
	movl	%ebx, 440(%rbp,%r14)
	movl	88(%r13,%rbp), %ebx
	movl	%ebx, 456(%rbp,%r14)
	movl	104(%r13,%rbp), %ebx
	movl	%ebx, 472(%rbp,%r14)
	incl	%ecx
.LBB35_79:                              # %for.inc.231
                                        #   in Loop: Header=BB35_77 Depth=2
	incl	%esi
	addq	$148, %rdi
	cmpl	%eax, %esi
	jb	.LBB35_77
.LBB35_80:                              # %for.end.233
                                        #   in Loop: Header=BB35_65 Depth=1
	movq	%r8, 64(%rsp)           # 8-byte Spill
	decl	%ecx
	movl	%ecx, 420(%r9,%r15)
	jmp	.LBB35_82
	.align	16, 0x90
.LBB35_81:                              # %if.else.236
                                        #   in Loop: Header=BB35_65 Depth=1
	movq	%r8, 64(%rsp)           # 8-byte Spill
	movl	$0, 420(%r9,%r15)
.LBB35_82:                              # %if.end.238
                                        #   in Loop: Header=BB35_65 Depth=1
	movq	%r9, %rbp
	movq	80(%rsp), %rbx          # 8-byte Reload
	movl	16(%rbx), %edi
	movl	$1080, %esi             # imm = 0x438
	callq	calloc
	leaq	5584(%rbp,%r15), %rcx
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	movq	%rax, 5584(%rbp,%r15)
	movl	16(%rbx), %r12d
	movq	32(%rsp), %rbx          # 8-byte Reload
	cmpq	$0, (%rbx)
	je	.LBB35_83
# BB#94:                                # %if.then.256
                                        #   in Loop: Header=BB35_65 Depth=1
	leaq	16(%rbp,%r15), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	imull	%r12d, %r12d
	shll	$2, %r12d
	movq	%r12, %rdi
	movq	%rbp, 72(%rsp)          # 8-byte Spill
	callq	malloc
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	(%rbx), %rbp
	movq	56(%rsp), %rax          # 8-byte Reload
	movl	$2, (%rax)
	movq	%r12, %rdi
	callq	malloc
	movq	72(%rsp), %rcx          # 8-byte Reload
	movq	%rax, 5632(%rcx,%r15)
	movq	(%rbx), %rsi
	movq	%rax, %rdi
	movq	%r12, %rdx
	callq	memcpy
	movq	(%rbx), %rsi
	movq	88(%rsp), %rdi          # 8-byte Reload
	movq	%r12, %rdx
	callq	memcpy
	movq	%r12, %rdi
	callq	malloc
	movq	72(%rsp), %rcx          # 8-byte Reload
	movq	%rax, 5624(%rcx,%r15)
	movq	%r15, 56(%rsp)          # 8-byte Spill
	movq	%rcx, %r15
	movq	80(%rsp), %rbx          # 8-byte Reload
	movl	16(%rbx), %edx
	movq	88(%rsp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	opj_matrix_inversion_f
	testl	%eax, %eax
	je	.LBB35_147
# BB#95:                                # %cond.false.312
                                        #   in Loop: Header=BB35_65 Depth=1
	movq	%r15, %rax
	movq	56(%rsp), %r15          # 8-byte Reload
	leaq	5624(%rax,%r15), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movl	16(%rbx), %edi
	shlq	$3, %rdi
	callq	malloc
	movq	72(%rsp), %rcx          # 8-byte Reload
	movq	%rax, 5616(%rcx,%r15)
	movl	16(%rbx), %esi
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rax, %rdi
	callq	opj_calculate_norms
	movq	88(%rsp), %rdi          # 8-byte Reload
	callq	free
	movl	16(%rbx), %r9d
	testl	%r9d, %r9d
	movq	%rbx, %r15
	je	.LBB35_102
# BB#96:                                # %for.body.326.lr.ph
                                        #   in Loop: Header=BB35_65 Depth=1
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rcx
	leal	-1(%r9), %r8d
	xorl	%edx, %edx
	testb	$3, %r9b
	je	.LBB35_99
# BB#97:                                # %for.body.326.prol.preheader
                                        #   in Loop: Header=BB35_65 Depth=1
	leaq	1076(%rcx), %rdi
	leaq	(%r12,%rbp), %rsi
	movl	%r9d, %eax
	andl	$3, %eax
	xorl	%edx, %edx
	.align	16, 0x90
.LBB35_98:                              # %for.body.326.prol
                                        #   Parent Loop BB35_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi,%rdx,4), %ebx
	movl	%ebx, (%rdi)
	incq	%rdx
	addq	$1080, %rdi             # imm = 0x438
	cmpl	%edx, %eax
	jne	.LBB35_98
.LBB35_99:                              # %for.body.326.lr.ph.split
                                        #   in Loop: Header=BB35_65 Depth=1
	cmpl	$3, %r8d
	jb	.LBB35_102
# BB#100:                               #   in Loop: Header=BB35_65 Depth=1
	addq	%r12, %rbp
	.align	16, 0x90
.LBB35_101:                             # %for.body.326
                                        #   Parent Loop BB35_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %eax
	movl	(%rbp,%rax,4), %esi
	imulq	$1080, %rax, %rax       # imm = 0x438
	movl	%esi, 1076(%rcx,%rax)
	leal	1(%rdx), %eax
	movl	(%rbp,%rax,4), %esi
	imulq	$1080, %rax, %rax       # imm = 0x438
	movl	%esi, 1076(%rcx,%rax)
	leal	2(%rdx), %eax
	movl	(%rbp,%rax,4), %esi
	imulq	$1080, %rax, %rax       # imm = 0x438
	movl	%esi, 1076(%rcx,%rax)
	leal	3(%rdx), %eax
	movl	(%rbp,%rax,4), %esi
	imulq	$1080, %rax, %rax       # imm = 0x438
	movl	%esi, 1076(%rcx,%rax)
	addl	$4, %edx
	cmpl	%r9d, %edx
	jb	.LBB35_101
.LBB35_102:                             # %for.end.334
                                        #   in Loop: Header=BB35_65 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	opj_j2k_setup_mct_encoding
	movl	16(%r15), %r12d
.LBB35_103:                             # %for.cond.357.preheader
                                        #   in Loop: Header=BB35_65 Depth=1
	xorl	%eax, %eax
	testl	%r12d, %r12d
	je	.LBB35_142
	.align	16, 0x90
.LBB35_104:                             # %for.body.361
                                        #   Parent Loop BB35_65 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB35_105 Depth 3
                                        #       Child Loop BB35_107 Depth 3
                                        #       Child Loop BB35_112 Depth 3
                                        #       Child Loop BB35_118 Depth 3
                                        #         Child Loop BB35_133 Depth 4
                                        #         Child Loop BB35_138 Depth 4
                                        #         Child Loop BB35_122 Depth 4
                                        #         Child Loop BB35_127 Depth 4
                                        #       Child Loop BB35_115 Depth 3
	movl	%eax, %r14d
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rcx
	imulq	$1080, %r14, %rdx       # imm = 0x438
	movl	48(%r13), %eax
	andl	$1, %eax
	movl	%eax, (%rcx,%rdx)
	movl	5600(%r13), %eax
	movl	%eax, 4(%rcx,%rdx)
	movl	5604(%r13), %edi
	cmpl	$2, %edi
	movl	$0, %esi
	jl	.LBB35_106
	.align	16, 0x90
.LBB35_105:                             # %for.body.i.327
                                        #   Parent Loop BB35_65 Depth=1
                                        #     Parent Loop BB35_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	sarl	%edi
	incl	%esi
	cmpl	$1, %edi
	jg	.LBB35_105
.LBB35_106:                             # %opj_int_floorlog2.exit329
                                        #   in Loop: Header=BB35_104 Depth=2
	movl	%esi, 8(%rcx,%rdx)
	movl	5608(%r13), %edi
	xorl	%ebp, %ebp
	cmpl	$2, %edi
	movl	$0, %esi
	jl	.LBB35_108
	.align	16, 0x90
.LBB35_107:                             # %for.body.i.318
                                        #   Parent Loop BB35_65 Depth=1
                                        #     Parent Loop BB35_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	sarl	%edi
	incl	%esi
	cmpl	$1, %edi
	jg	.LBB35_107
.LBB35_108:                             # %opj_int_floorlog2.exit320
                                        #   in Loop: Header=BB35_104 Depth=2
	movl	%esi, 12(%rcx,%rdx)
	movl	5612(%r13), %esi
	movl	%esi, 16(%rcx,%rdx)
	cmpl	$0, 5616(%r13)
	sete	%bl
	movzbl	%bl, %esi
	movl	%esi, 20(%rcx,%rdx)
	setne	%bl
	movzbl	%bl, %esi
	addl	%esi, %esi
	movl	%esi, 24(%rcx,%rdx)
	movl	$2, 804(%rcx,%rdx)
	cmpl	5620(%r13), %r14d
	jne	.LBB35_110
# BB#109:                               # %if.then.378
                                        #   in Loop: Header=BB35_104 Depth=2
	movl	5624(%r13), %ebp
.LBB35_110:                             # %if.end.381
                                        #   in Loop: Header=BB35_104 Depth=2
	leaq	(%rcx,%rdx), %rdi
	leaq	4(%rcx,%rdx), %rsi
	movl	%ebp, 808(%rcx,%rdx)
	cmpl	$0, 18684(%r13)
	je	.LBB35_113
# BB#111:                               # %if.then.384
                                        #   in Loop: Header=BB35_104 Depth=2
	movl	$7, 812(%rcx,%rdx)
	movl	$7, 944(%rcx,%rdx)
	movl	$1, %ecx
	cmpl	$2, %eax
	jb	.LBB35_141
	.align	16, 0x90
.LBB35_112:                             # %for.body.391
                                        #   Parent Loop BB35_65 Depth=1
                                        #     Parent Loop BB35_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%ecx, %eax
	movl	$8, 812(%rdi,%rax,4)
	movl	$8, 944(%rdi,%rax,4)
	incl	%ecx
	cmpl	(%rsi), %ecx
	jb	.LBB35_112
	jmp	.LBB35_141
	.align	16, 0x90
.LBB35_113:                             # %if.else.401
                                        #   in Loop: Header=BB35_104 Depth=2
	testb	$1, 48(%r13)
	jne	.LBB35_116
# BB#114:                               # %for.cond.499.preheader
                                        #   in Loop: Header=BB35_104 Depth=2
	xorl	%ecx, %ecx
	testl	%eax, %eax
	je	.LBB35_141
	.align	16, 0x90
.LBB35_115:                             # %for.body.503
                                        #   Parent Loop BB35_65 Depth=1
                                        #     Parent Loop BB35_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%ecx, %eax
	movl	$15, 812(%rdi,%rax,4)
	movl	$15, 944(%rdi,%rax,4)
	incl	%ecx
	cmpl	(%rsi), %ecx
	jb	.LBB35_115
	jmp	.LBB35_141
.LBB35_116:                             # %if.then.405
                                        #   in Loop: Header=BB35_104 Depth=2
	decl	%eax
	js	.LBB35_141
# BB#117:                               # %for.body.411.lr.ph
                                        #   in Loop: Header=BB35_104 Depth=2
	cltq
	xorl	%edx, %edx
	.align	16, 0x90
.LBB35_118:                             # %for.body.411
                                        #   Parent Loop BB35_65 Depth=1
                                        #     Parent Loop BB35_104 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB35_133 Depth 4
                                        #         Child Loop BB35_138 Depth 4
                                        #         Child Loop BB35_122 Depth 4
                                        #         Child Loop BB35_127 Depth 4
	movslq	5628(%r13), %rsi
	cmpq	%rsi, %rdx
	jge	.LBB35_129
# BB#119:                               # %if.then.414
                                        #   in Loop: Header=BB35_118 Depth=3
	movl	5632(%r13,%rdx,4), %ecx
	testl	%ecx, %ecx
	jle	.LBB35_120
# BB#121:                               # %if.else.423
                                        #   in Loop: Header=BB35_118 Depth=3
	xorl	%esi, %esi
	cmpl	$2, %ecx
	jl	.LBB35_123
	.align	16, 0x90
.LBB35_122:                             # %for.body.i.309
                                        #   Parent Loop BB35_65 Depth=1
                                        #     Parent Loop BB35_104 Depth=2
                                        #       Parent Loop BB35_118 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	sarl	%ecx
	incl	%esi
	cmpl	$1, %ecx
	jg	.LBB35_122
.LBB35_123:                             # %opj_int_floorlog2.exit311
                                        #   in Loop: Header=BB35_118 Depth=3
	movl	%esi, 812(%rdi,%rax,4)
	jmp	.LBB35_124
	.align	16, 0x90
.LBB35_129:                             # %if.else.449
                                        #   in Loop: Header=BB35_118 Depth=3
	testl	%esi, %esi
	jle	.LBB35_148
# BB#130:                               # %cond.end.456
                                        #   in Loop: Header=BB35_118 Depth=3
	leaq	-1(%rsi), %rbx
	movl	5628(%r13,%rsi,4), %ebp
	movl	%edx, %ecx
	subl	%ebx, %ecx
	sarl	%cl, %ebp
	movl	5760(%r13,%rsi,4), %esi
	sarl	%cl, %esi
	testl	%ebp, %ebp
	jle	.LBB35_131
# BB#132:                               # %if.else.476
                                        #   in Loop: Header=BB35_118 Depth=3
	xorl	%ecx, %ecx
	cmpl	$2, %ebp
	jl	.LBB35_134
	.align	16, 0x90
.LBB35_133:                             # %for.body.i.291
                                        #   Parent Loop BB35_65 Depth=1
                                        #     Parent Loop BB35_104 Depth=2
                                        #       Parent Loop BB35_118 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	sarl	%ebp
	incl	%ecx
	cmpl	$1, %ebp
	jg	.LBB35_133
.LBB35_134:                             # %opj_int_floorlog2.exit293
                                        #   in Loop: Header=BB35_118 Depth=3
	movl	%ecx, 812(%rdi,%rax,4)
	jmp	.LBB35_135
.LBB35_120:                             # %if.then.419
                                        #   in Loop: Header=BB35_118 Depth=3
	movl	$1, 812(%rdi,%rax,4)
.LBB35_124:                             # %if.end.431
                                        #   in Loop: Header=BB35_118 Depth=3
	movl	5764(%r13,%rdx,4), %ecx
	testl	%ecx, %ecx
	jle	.LBB35_125
# BB#126:                               # %if.else.440
                                        #   in Loop: Header=BB35_118 Depth=3
	xorl	%esi, %esi
	cmpl	$2, %ecx
	jl	.LBB35_128
	.align	16, 0x90
.LBB35_127:                             # %for.body.i.300
                                        #   Parent Loop BB35_65 Depth=1
                                        #     Parent Loop BB35_104 Depth=2
                                        #       Parent Loop BB35_118 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	sarl	%ecx
	incl	%esi
	cmpl	$1, %ecx
	jg	.LBB35_127
.LBB35_128:                             # %opj_int_floorlog2.exit302
                                        #   in Loop: Header=BB35_118 Depth=3
	movl	%esi, 944(%rdi,%rax,4)
	jmp	.LBB35_140
.LBB35_125:                             # %if.then.436
                                        #   in Loop: Header=BB35_118 Depth=3
	movl	$1, 944(%rdi,%rax,4)
	jmp	.LBB35_140
.LBB35_131:                             # %if.then.472
                                        #   in Loop: Header=BB35_118 Depth=3
	movl	$1, 812(%rdi,%rax,4)
.LBB35_135:                             # %if.end.481
                                        #   in Loop: Header=BB35_118 Depth=3
	testl	%esi, %esi
	jle	.LBB35_136
# BB#137:                               # %if.else.488
                                        #   in Loop: Header=BB35_118 Depth=3
	xorl	%ecx, %ecx
	cmpl	$2, %esi
	jl	.LBB35_139
	.align	16, 0x90
.LBB35_138:                             # %for.body.i
                                        #   Parent Loop BB35_65 Depth=1
                                        #     Parent Loop BB35_104 Depth=2
                                        #       Parent Loop BB35_118 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	sarl	%esi
	incl	%ecx
	cmpl	$1, %esi
	jg	.LBB35_138
.LBB35_139:                             # %opj_int_floorlog2.exit
                                        #   in Loop: Header=BB35_118 Depth=3
	movl	%ecx, 944(%rdi,%rax,4)
	jmp	.LBB35_140
.LBB35_136:                             # %if.then.484
                                        #   in Loop: Header=BB35_118 Depth=3
	movl	$1, 944(%rdi,%rax,4)
	.align	16, 0x90
.LBB35_140:                             # %if.end.494
                                        #   in Loop: Header=BB35_118 Depth=3
	incq	%rdx
	decq	%rax
	testl	%eax, %eax
	jns	.LBB35_118
	.align	16, 0x90
.LBB35_141:                             # %if.end.514
                                        #   in Loop: Header=BB35_104 Depth=2
	movq	24(%r15), %rax
	movq	%r14, %rcx
	shlq	$6, %rcx
	movl	24(%rax,%rcx), %esi
	callq	opj_dwt_calc_explicit_stepsizes
	leal	1(%r14), %eax
	cmpl	16(%r15), %eax
	jb	.LBB35_104
	jmp	.LBB35_142
	.align	16, 0x90
.LBB35_83:                              # %for.cond.337.preheader
                                        #   in Loop: Header=BB35_65 Depth=1
	testl	%r12d, %r12d
	movq	80(%rsp), %r15          # 8-byte Reload
	je	.LBB35_142
# BB#84:                                # %for.body.341.lr.ph
                                        #   in Loop: Header=BB35_65 Depth=1
	movq	24(%r15), %rsi
	testb	$1, %r12b
	movl	$0, %edx
	je	.LBB35_87
# BB#85:                                # %for.body.341.prol
                                        #   in Loop: Header=BB35_65 Depth=1
	cmpl	$0, 32(%rsi)
	movl	$1, %edx
	jne	.LBB35_87
# BB#86:                                # %if.then.349.prol
                                        #   in Loop: Header=BB35_65 Depth=1
	movl	24(%rsi), %ecx
	decl	%ecx
	movl	$1, %edx
	shll	%cl, %edx
	movl	%edx, 1076(%rax)
	movl	$1, %edx
	.align	16, 0x90
.LBB35_87:                              # %for.body.341.lr.ph.split
                                        #   in Loop: Header=BB35_65 Depth=1
	cmpl	$1, %r12d
	je	.LBB35_103
# BB#88:                                # %for.body.341.lr.ph.split.split
                                        #   in Loop: Header=BB35_65 Depth=1
	movq	%rdx, %rcx
	shlq	$6, %rcx
	leaq	96(%rsi,%rcx), %rsi
	imulq	$1080, %rdx, %rcx       # imm = 0x438
	leaq	2156(%rax,%rcx), %rax
	.align	16, 0x90
.LBB35_89:                              # %for.body.341
                                        #   Parent Loop BB35_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -64(%rsi)
	jne	.LBB35_91
# BB#90:                                # %if.then.349
                                        #   in Loop: Header=BB35_89 Depth=2
	movl	-72(%rsi), %ecx
	decl	%ecx
	movl	$1, %edi
	shll	%cl, %edi
	movl	%edi, -1080(%rax)
.LBB35_91:                              # %if.end.352
                                        #   in Loop: Header=BB35_89 Depth=2
	cmpl	$0, (%rsi)
	jne	.LBB35_93
# BB#92:                                # %if.then.349.1
                                        #   in Loop: Header=BB35_89 Depth=2
	movl	-8(%rsi), %ecx
	decl	%ecx
	movl	$1, %edi
	shll	%cl, %edi
	movl	%edi, (%rax)
.LBB35_93:                              # %if.end.352.1
                                        #   in Loop: Header=BB35_89 Depth=2
	addq	$2, %rdx
	subq	$-128, %rsi
	addq	$2160, %rax             # imm = 0x870
	cmpq	%r12, %rdx
	jb	.LBB35_89
	jmp	.LBB35_103
	.align	16, 0x90
.LBB35_142:                             # %for.end.521
                                        #   in Loop: Header=BB35_65 Depth=1
	movq	%r15, 80(%rsp)          # 8-byte Spill
	movq	64(%rsp), %r8           # 8-byte Reload
	incl	%r8d
	movq	40(%rsp), %r12          # 8-byte Reload
	movl	148(%r12), %eax
	imull	144(%r12), %eax
	cmpl	%eax, %r8d
	jb	.LBB35_65
# BB#143:
	movq	32(%rsp), %rbx          # 8-byte Reload
	jmp	.LBB35_144
.LBB35_63:                              # %for.cond.preheader.for.end.524_crit_edge
	addq	$18704, %r13            # imm = 0x4910
	movq	%r13, %rbx
.LBB35_144:                             # %for.end.524
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB35_146
# BB#145:                               # %if.then.527
	callq	free
	movq	$0, (%rbx)
.LBB35_146:                             # %cleanup
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB35_148:                             # %cond.false.455
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$6056, %edx             # imm = 0x17A8
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_setup_encoder, %ecx
	callq	__assert_fail
.LBB35_147:                             # %cond.false.304
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$5980, %edx             # imm = 0x175C
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_setup_encoder, %ecx
	callq	__assert_fail
.Lfunc_end35:
	.size	opj_j2k_setup_encoder, .Lfunc_end35-opj_j2k_setup_encoder
	.cfi_endproc

	.globl	opj_j2k_setup_mct_encoding
	.align	16, 0x90
	.type	opj_j2k_setup_mct_encoding,@function
opj_j2k_setup_mct_encoding:             # @opj_j2k_setup_mct_encoding
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp320:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp321:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp322:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp323:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp324:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp325:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp326:
	.cfi_def_cfa_offset 96
.Ltmp327:
	.cfi_offset %rbx, -56
.Ltmp328:
	.cfi_offset %r12, -48
.Ltmp329:
	.cfi_offset %r13, -40
.Ltmp330:
	.cfi_offset %r14, -32
.Ltmp331:
	.cfi_offset %r15, -24
.Ltmp332:
	.cfi_offset %rbp, -16
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movq	%rdi, %r13
	testq	%r13, %r13
	je	.LBB36_37
# BB#1:                                 # %cond.end
	movl	$1, %ecx
	cmpl	$2, 16(%r13)
	jne	.LBB36_36
# BB#2:                                 # %if.end
	cmpq	$0, 5624(%r13)
	movl	5648(%r13), %esi
	movl	$1, %r12d
	je	.LBB36_3
# BB#4:                                 # %if.then.2
	cmpl	5652(%r13), %esi
	jne	.LBB36_5
# BB#6:                                 # %if.then.4
	addl	$10, %esi
	movl	%esi, 5652(%r13)
	shlq	$5, %rsi
	movq	5640(%r13), %rdi
	callq	realloc
	testq	%rax, %rax
	je	.LBB36_7
# BB#8:                                 # %if.end.21
	leaq	5640(%r13), %rbx
	movq	%rax, 5640(%r13)
	movl	5648(%r13), %edi
	movl	5652(%r13), %edx
	subl	%edi, %edx
	shlq	$5, %rdi
	addq	%rax, %rdi
	shlq	$5, %rdx
	xorl	%esi, %esi
	callq	memset
	movl	5648(%r13), %esi
	jmp	.LBB36_9
.LBB36_3:
	xorl	%eax, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	jmp	.LBB36_13
.LBB36_5:                               # %if.then.2.if.end.30_crit_edge
	leaq	5640(%r13), %rbx
.LBB36_9:                               # %if.end.30
	movq	(%rbx), %r12
	movl	%esi, %ebx
	shlq	$5, %rbx
	leaq	(%r12,%rbx), %r15
	leaq	16(%r12,%rbx), %r14
	movq	16(%r12,%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB36_11
# BB#10:                                # %if.then.36
	callq	free
	movq	$0, (%r14)
.LBB36_11:                              # %if.end.39
	movl	$1, 8(%r12,%rbx)
	movl	$1, 4(%r12,%rbx)
	movl	$2, (%r15)
	movq	32(%rsp), %rax          # 8-byte Reload
	movl	16(%rax), %ebp
	imull	%ebp, %ebp
	leal	(,%rbp,4), %edi
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	callq	malloc
	movq	%rax, (%r14)
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB36_36
# BB#12:                                # %if.end.57
	movl	(%r15), %ecx
	movq	%r15, 16(%rsp)          # 8-byte Spill
	movq	5624(%r13), %rdi
	movq	%rax, %rsi
	movl	%ebp, %edx
	callq	*j2k_mct_write_functions_from_float(,%rcx,8)
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	%eax, 24(%r12,%rbx)
	movl	5648(%r13), %esi
	incl	%esi
	movl	%esi, 5648(%r13)
	movl	$2, %r12d
.LBB36_13:                              # %if.end.65
	cmpl	5652(%r13), %esi
	jne	.LBB36_14
# BB#15:                                # %if.then.70
	addl	$10, %esi
	movl	%esi, 5652(%r13)
	shlq	$5, %rsi
	movq	5640(%r13), %rdi
	callq	realloc
	movq	%rax, %rbp
	testq	%rbp, %rbp
	movq	16(%rsp), %r15          # 8-byte Reload
	je	.LBB36_7
# BB#16:                                # %cleanup.110.thread
	leaq	5640(%r13), %r14
	movq	%rbp, 5640(%r13)
	movl	5648(%r13), %eax
	movl	5652(%r13), %edx
	subl	%eax, %edx
	movq	%rax, %rbx
	shlq	$5, %rbx
	leaq	(%rbp,%rbx), %rdi
	shlq	$5, %rdx
	xorl	%esi, %esi
	callq	memset
	testq	%r15, %r15
	leaq	-32(%rbp,%rbx), %rax
	cmovneq	%rax, %r15
	movq	%r15, 16(%rsp)          # 8-byte Spill
	movl	5648(%r13), %esi
	jmp	.LBB36_17
.LBB36_14:                              # %if.end.65.if.end.113_crit_edge
	leaq	5640(%r13), %r14
.LBB36_17:                              # %if.end.113
	movq	(%r14), %rbp
	movl	%esi, %r15d
	shlq	$5, %r15
	leaq	(%rbp,%r15), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	leaq	16(%rbp,%r15), %rbx
	movq	16(%rbp,%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB36_19
# BB#18:                                # %if.then.120
	callq	free
	movq	$0, (%rbx)
.LBB36_19:                              # %if.end.123
	movl	%r12d, 8(%rbp,%r15)
	movl	%r12d, 12(%rsp)         # 4-byte Spill
	movl	$2, 4(%rbp,%r15)
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	$2, (%rax)
	movq	32(%rsp), %rax          # 8-byte Reload
	movl	16(%rax), %r12d
	leal	(,%r12,4), %r14d
	movq	%r14, %rdi
	callq	malloc
	movq	%rax, (%rbx)
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB36_36
# BB#20:                                # %cond.false.152
	leaq	(,%r12,4), %rdi
	callq	malloc
	movq	%rax, %r8
	testq	%r8, %r8
	je	.LBB36_21
# BB#22:                                # %if.end.162
	testl	%r12d, %r12d
	je	.LBB36_30
# BB#23:                                # %for.body.lr.ph
	movq	5584(%r13), %rax
	leal	-1(%r12), %edx
	testb	$3, %r12b
	je	.LBB36_24
# BB#25:                                # %for.body.prol.preheader
	movl	%r12d, %edi
	andl	$3, %edi
	xorl	%esi, %esi
	movq	%r8, %rcx
	.align	16, 0x90
.LBB36_26:                              # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	1076(%rax), %xmm0
	movss	%xmm0, (%rcx)
	addq	$4, %rcx
	addq	$1080, %rax             # imm = 0x438
	incl	%esi
	cmpl	%esi, %edi
	jne	.LBB36_26
	jmp	.LBB36_27
.LBB36_7:                               # %if.then.16
	movq	5640(%r13), %rdi
	callq	free
	xorps	%xmm0, %xmm0
	movups	%xmm0, 5640(%r13)
	xorl	%ecx, %ecx
	jmp	.LBB36_36
.LBB36_21:                              # %if.then.159
	movq	(%rbx), %rdi
	callq	free
	movq	$0, (%rbx)
	xorl	%ecx, %ecx
	jmp	.LBB36_36
.LBB36_24:
	xorl	%esi, %esi
	movq	%r8, %rcx
.LBB36_27:                              # %for.body.lr.ph.split
	cmpl	$3, %edx
	jb	.LBB36_30
# BB#28:                                # %for.body.lr.ph.split.split
	movl	%r12d, %edx
	subl	%esi, %edx
	addq	$4316, %rax             # imm = 0x10DC
	.align	16, 0x90
.LBB36_29:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	-3240(%rax), %xmm0
	movss	%xmm0, (%rcx)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	-2160(%rax), %xmm0
	movss	%xmm0, 4(%rcx)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	-1080(%rax), %xmm0
	movss	%xmm0, 8(%rcx)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	(%rax), %xmm0
	movss	%xmm0, 12(%rcx)
	addq	$4320, %rax             # imm = 0x10E0
	addq	$16, %rcx
	addl	$-4, %edx
	jne	.LBB36_29
.LBB36_30:                              # %for.end
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %eax
	movq	(%rbx), %rsi
	movq	%r8, %rdi
	movl	%r12d, %edx
	movq	%r8, %rbx
	callq	*j2k_mct_write_functions_from_float(,%rax,8)
	movq	%rbx, %rdi
	callq	free
	movl	%r14d, 24(%rbp,%r15)
	incl	5648(%r13)
	movl	5664(%r13), %esi
	cmpl	5668(%r13), %esi
	jne	.LBB36_31
# BB#32:                                # %if.then.177
	addl	$10, %esi
	movl	%esi, 5668(%r13)
	shlq	$5, %rsi
	movq	5656(%r13), %rdi
	callq	realloc
	testq	%rax, %rax
	movq	16(%rsp), %rbx          # 8-byte Reload
	movl	12(%rsp), %r14d         # 4-byte Reload
	je	.LBB36_33
# BB#34:                                # %if.end.199
	movq	%rax, 5656(%r13)
	movl	5664(%r13), %edi
	movl	5668(%r13), %edx
	subl	%edi, %edx
	shlq	$5, %rdi
	addq	%rax, %rdi
	shlq	$5, %rdx
	xorl	%esi, %esi
	callq	memset
	movl	5664(%r13), %esi
	jmp	.LBB36_35
.LBB36_31:
	movq	16(%rsp), %rbx          # 8-byte Reload
	movl	12(%rsp), %r14d         # 4-byte Reload
.LBB36_35:                              # %if.end.214
	movq	5656(%r13), %rax
	movl	%esi, %ecx
	shlq	$5, %rcx
	movq	%rbx, 8(%rax,%rcx)
	orb	$1, 24(%rax,%rcx)
	incl	%r14d
	movq	32(%rsp), %rdx          # 8-byte Reload
	movl	16(%rdx), %edx
	movl	%edx, 4(%rax,%rcx)
	movl	%r14d, (%rax,%rcx)
	movq	24(%rsp), %rdx          # 8-byte Reload
	movq	%rdx, 16(%rax,%rcx)
	incl	5664(%r13)
	movl	$1, %ecx
	jmp	.LBB36_36
.LBB36_33:                              # %if.then.194
	movq	5656(%r13), %rdi
	callq	free
	xorps	%xmm0, %xmm0
	movups	%xmm0, 5656(%r13)
	xorl	%ecx, %ecx
.LBB36_36:                              # %cleanup.224
	movl	%ecx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB36_37:                              # %cond.false
	movl	$.L.str.6, %edi
	movl	$.L.str.1, %esi
	movl	$6297, %edx             # imm = 0x1899
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_setup_mct_encoding, %ecx
	callq	__assert_fail
.Lfunc_end36:
	.size	opj_j2k_setup_mct_encoding, .Lfunc_end36-opj_j2k_setup_mct_encoding
	.cfi_endproc

	.globl	opj_j2k_end_decompress
	.align	16, 0x90
	.type	opj_j2k_end_decompress,@function
opj_j2k_end_decompress:                 # @opj_j2k_end_decompress
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %eax
	retq
.Lfunc_end37:
	.size	opj_j2k_end_decompress, .Lfunc_end37-opj_j2k_end_decompress
	.cfi_endproc

	.globl	opj_j2k_read_header
	.align	16, 0x90
	.type	opj_j2k_read_header,@function
opj_j2k_read_header:                    # @opj_j2k_read_header
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp333:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp334:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp335:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp336:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp337:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp338:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp339:
	.cfi_def_cfa_offset 64
.Ltmp340:
	.cfi_offset %rbx, -56
.Ltmp341:
	.cfi_offset %r12, -48
.Ltmp342:
	.cfi_offset %r13, -40
.Ltmp343:
	.cfi_offset %r14, -32
.Ltmp344:
	.cfi_offset %r15, -24
.Ltmp345:
	.cfi_offset %rbp, -16
	movq	%rcx, %r12
	movq	%rdx, %r15
	movq	%rsi, %r13
	movq	%rdi, %rbp
	testq	%r13, %r13
	je	.LBB38_15
# BB#1:                                 # %cond.end
	testq	%rbp, %rbp
	je	.LBB38_16
# BB#2:                                 # %cond.end.4
	testq	%r12, %r12
	je	.LBB38_17
# BB#3:                                 # %cond.end.8
	callq	opj_image_create0
	movq	%rax, 96(%r13)
	xorl	%r14d, %r14d
	testq	%rax, %rax
	je	.LBB38_14
# BB#4:                                 # %opj_j2k_setup_decoding_validation.exit
	movq	264(%r13), %rdi
	movl	$opj_j2k_build_decoder, %esi
	callq	opj_procedure_list_add_procedure
	movq	264(%r13), %rdi
	movl	$opj_j2k_decoding_validation, %esi
	callq	opj_procedure_list_add_procedure
	movq	264(%r13), %rsi
	movq	%r13, %rdi
	movq	%rbp, %rdx
	movq	%r12, %rcx
	callq	opj_j2k_exec
	testl	%eax, %eax
	je	.LBB38_5
# BB#6:                                 # %opj_j2k_setup_header_reading.exit
	movq	256(%r13), %rdi
	movl	$opj_j2k_read_header_procedure, %esi
	callq	opj_procedure_list_add_procedure
	movq	256(%r13), %rdi
	movl	$opj_j2k_copy_default_tcp_and_create_tcd, %esi
	callq	opj_procedure_list_add_procedure
	movq	256(%r13), %rsi
	movq	%r13, %rdi
	movq	%rbp, %rdx
	movq	%r12, %rcx
	callq	opj_j2k_exec
	testl	%eax, %eax
	je	.LBB38_5
# BB#7:                                 # %if.end.21
	callq	opj_image_create0
	movq	%rax, (%r15)
	testq	%rax, %rax
	je	.LBB38_14
# BB#8:                                 # %if.end.25
	movq	96(%r13), %rdi
	movq	%rax, %rsi
	callq	opj_copy_image_header
	movl	148(%r13), %edi
	imull	144(%r13), %edi
	movq	272(%r13), %rax
	movl	%edi, 44(%rax)
	movl	$56, %esi
	callq	calloc
	movq	272(%r13), %rcx
	movq	%rax, 48(%rcx)
	testq	%rax, %rax
	je	.LBB38_14
# BB#9:                                 # %for.cond.preheader.i
	movl	$1, %r14d
	cmpl	$0, 44(%rcx)
	je	.LBB38_14
# BB#10:                                # %for.body.i.preheader
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB38_12:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %ecx
	imulq	$56, %rcx, %rbx
	movl	$100, 40(%rax,%rbx)
	movl	$0, 24(%rax,%rbx)
	movl	$100, %edi
	movl	$24, %esi
	callq	calloc
	movq	%rax, %rcx
	movq	272(%r13), %rdx
	movq	48(%rdx), %rax
	movq	%rcx, 32(%rax,%rbx)
	testq	%rcx, %rcx
	je	.LBB38_13
# BB#11:                                # %for.cond.i
                                        #   in Loop: Header=BB38_12 Depth=1
	incl	%ebp
	cmpl	44(%rdx), %ebp
	jb	.LBB38_12
	jmp	.LBB38_14
.LBB38_5:                               # %if.then.12
	movq	96(%r13), %rdi
	callq	opj_image_destroy
	movq	$0, 96(%r13)
.LBB38_14:                              # %return
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB38_13:
	xorl	%r14d, %r14d
	jmp	.LBB38_14
.LBB38_15:                              # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$6184, %edx             # imm = 0x1828
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_header, %ecx
	callq	__assert_fail
.LBB38_16:                              # %cond.false.3
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$6185, %edx             # imm = 0x1829
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_header, %ecx
	callq	__assert_fail
.LBB38_17:                              # %cond.false.7
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$6186, %edx             # imm = 0x182A
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_header, %ecx
	callq	__assert_fail
.Lfunc_end38:
	.size	opj_j2k_read_header, .Lfunc_end38-opj_j2k_read_header
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_exec,@function
opj_j2k_exec:                           # @opj_j2k_exec
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp346:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp347:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp348:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp349:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp350:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp351:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp352:
	.cfi_def_cfa_offset 64
.Ltmp353:
	.cfi_offset %rbx, -56
.Ltmp354:
	.cfi_offset %r12, -48
.Ltmp355:
	.cfi_offset %r13, -40
.Ltmp356:
	.cfi_offset %r14, -32
.Ltmp357:
	.cfi_offset %r15, -24
.Ltmp358:
	.cfi_offset %rbp, -16
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %rbx
	movq	%rdi, %r13
	testq	%rbx, %rbx
	je	.LBB39_11
# BB#1:                                 # %cond.end
	testq	%r13, %r13
	je	.LBB39_12
# BB#2:                                 # %cond.end.4
	testq	%r12, %r12
	je	.LBB39_13
# BB#3:                                 # %cond.end.8
	testq	%r15, %r15
	je	.LBB39_14
# BB#4:                                 # %cond.end.12
	movq	%rbx, %rdi
	callq	opj_procedure_list_get_nb_procedures
	movl	%eax, %ebp
	movq	%rbx, %rdi
	movq	%rbx, (%rsp)            # 8-byte Spill
	callq	opj_procedure_list_get_first_procedure
	movq	%rax, %rbx
	movl	$1, %r14d
	testl	%ebp, %ebp
	je	.LBB39_10
# BB#5:                                 # %for.body.lr.ph
	movl	$1, %r14d
	.align	16, 0x90
.LBB39_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	testl	%r14d, %r14d
	je	.LBB39_7
# BB#8:                                 # %land.rhs
                                        #   in Loop: Header=BB39_6 Depth=1
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	*(%rbx)
	testl	%eax, %eax
	setne	%al
	jmp	.LBB39_9
	.align	16, 0x90
.LBB39_7:                               #   in Loop: Header=BB39_6 Depth=1
	xorl	%eax, %eax
.LBB39_9:                               # %land.end
                                        #   in Loop: Header=BB39_6 Depth=1
	movzbl	%al, %r14d
	addq	$8, %rbx
	decl	%ebp
	jne	.LBB39_6
.LBB39_10:                              # %for.end
	movq	(%rsp), %rdi            # 8-byte Reload
	callq	opj_procedure_list_clear
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB39_11:                              # %cond.false
	movl	$.L.str.126, %edi
	movl	$.L.str.1, %esi
	movl	$6667, %edx             # imm = 0x1A0B
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_exec, %ecx
	callq	__assert_fail
.LBB39_12:                              # %cond.false.3
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$6668, %edx             # imm = 0x1A0C
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_exec, %ecx
	callq	__assert_fail
.LBB39_13:                              # %cond.false.7
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$6669, %edx             # imm = 0x1A0D
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_exec, %ecx
	callq	__assert_fail
.LBB39_14:                              # %cond.false.11
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$6670, %edx             # imm = 0x1A0E
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_exec, %ecx
	callq	__assert_fail
.Lfunc_end39:
	.size	opj_j2k_exec, .Lfunc_end39-opj_j2k_exec
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_tcp_destroy,@function
opj_j2k_tcp_destroy:                    # @opj_j2k_tcp_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp359:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp360:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp361:
	.cfi_def_cfa_offset 32
.Ltmp362:
	.cfi_offset %rbx, -32
.Ltmp363:
	.cfi_offset %r14, -24
.Ltmp364:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	testq	%r14, %r14
	je	.LBB40_23
# BB#1:                                 # %if.end
	movq	5168(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB40_3
# BB#2:                                 # %if.then.2
	callq	free
	movq	$0, 5168(%r14)
.LBB40_3:                               # %if.end.5
	movq	5584(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB40_5
# BB#4:                                 # %if.then.7
	callq	free
	movq	$0, 5584(%r14)
.LBB40_5:                               # %if.end.10
	movq	5632(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB40_7
# BB#6:                                 # %if.then.12
	callq	free
	movq	$0, 5632(%r14)
.LBB40_7:                               # %if.end.15
	movq	5624(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB40_9
# BB#8:                                 # %if.then.17
	callq	free
	movq	$0, 5624(%r14)
.LBB40_9:                               # %if.end.20
	movq	5656(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB40_11
# BB#10:                                # %if.then.21
	callq	free
	xorps	%xmm0, %xmm0
	movups	%xmm0, 5656(%r14)
.LBB40_11:                              # %if.end.24
	movq	5640(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB40_19
# BB#12:                                # %for.cond.preheader
	movl	5648(%r14), %eax
	testl	%eax, %eax
	je	.LBB40_18
# BB#13:                                # %for.body.preheader
	addq	$16, %rbx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB40_14:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB40_16
# BB#15:                                # %if.then.30
                                        #   in Loop: Header=BB40_14 Depth=1
	callq	free
	movq	$0, (%rbx)
	movl	5648(%r14), %eax
.LBB40_16:                              # %if.end.33
                                        #   in Loop: Header=BB40_14 Depth=1
	incl	%ebp
	addq	$32, %rbx
	cmpl	%eax, %ebp
	jb	.LBB40_14
# BB#17:                                # %for.cond.for.end_crit_edge
	movq	5640(%r14), %rbx
.LBB40_18:                              # %for.end
	movq	%rbx, %rdi
	callq	free
	movq	$0, 5640(%r14)
.LBB40_19:                              # %if.end.36
	movq	5616(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB40_21
# BB#20:                                # %if.then.38
	callq	free
	movq	$0, 5616(%r14)
.LBB40_21:                              # %if.end.41
	movq	5600(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB40_23
# BB#22:                                # %if.then.i
	callq	free
	movq	$0, 5600(%r14)
	movl	$0, 5608(%r14)
.LBB40_23:                              # %return
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end40:
	.size	opj_j2k_tcp_destroy, .Lfunc_end40-opj_j2k_tcp_destroy
	.cfi_endproc

	.globl	j2k_destroy_cstr_index
	.align	16, 0x90
	.type	j2k_destroy_cstr_index,@function
j2k_destroy_cstr_index:                 # @j2k_destroy_cstr_index
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp365:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp366:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp367:
	.cfi_def_cfa_offset 32
.Ltmp368:
	.cfi_offset %rbx, -32
.Ltmp369:
	.cfi_offset %r14, -24
.Ltmp370:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	testq	%r14, %r14
	je	.LBB41_15
# BB#1:                                 # %if.then
	movq	32(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB41_3
# BB#2:                                 # %if.then.2
	callq	free
	movq	$0, 32(%r14)
.LBB41_3:                               # %if.end
	movq	48(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB41_14
# BB#4:                                 # %for.cond.preheader
	cmpl	$0, 44(%r14)
	je	.LBB41_13
# BB#5:
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB41_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ebx
	imulq	$56, %rbx, %r15
	movq	48(%rdi,%r15), %rax
	testq	%rax, %rax
	je	.LBB41_8
# BB#7:                                 # %if.then.9
                                        #   in Loop: Header=BB41_6 Depth=1
	movq	%rax, %rdi
	callq	free
	movq	48(%r14), %rdi
	movq	$0, 48(%rdi,%r15)
.LBB41_8:                               # %if.end.18
                                        #   in Loop: Header=BB41_6 Depth=1
	movq	16(%rdi,%r15), %rax
	testq	%rax, %rax
	je	.LBB41_10
# BB#9:                                 # %if.then.23
                                        #   in Loop: Header=BB41_6 Depth=1
	movq	%rax, %rdi
	callq	free
	movq	48(%r14), %rdi
	movq	$0, 16(%rdi,%r15)
.LBB41_10:                              # %if.end.32
                                        #   in Loop: Header=BB41_6 Depth=1
	movq	32(%rdi,%r15), %rax
	testq	%rax, %rax
	je	.LBB41_12
# BB#11:                                # %if.then.38
                                        #   in Loop: Header=BB41_6 Depth=1
	movq	%rax, %rdi
	callq	free
	movq	48(%r14), %rdi
	movq	$0, 32(%rdi,%r15)
.LBB41_12:                              # %for.inc
                                        #   in Loop: Header=BB41_6 Depth=1
	incl	%ebx
	cmpl	44(%r14), %ebx
	jb	.LBB41_6
.LBB41_13:                              # %for.end
	callq	free
	movq	$0, 48(%r14)
.LBB41_14:                              # %if.end.50
	movq	%r14, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	free                    # TAILCALL
.LBB41_15:                              # %if.end.51
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end41:
	.size	j2k_destroy_cstr_index, .Lfunc_end41-j2k_destroy_cstr_index
	.cfi_endproc

	.globl	opj_j2k_read_tile_header
	.align	16, 0x90
	.type	opj_j2k_read_tile_header,@function
opj_j2k_read_tile_header:               # @opj_j2k_read_tile_header
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp371:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp372:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp373:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp374:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp375:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp376:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp377:
	.cfi_def_cfa_offset 128
.Ltmp378:
	.cfi_offset %rbx, -56
.Ltmp379:
	.cfi_offset %r12, -48
.Ltmp380:
	.cfi_offset %r13, -40
.Ltmp381:
	.cfi_offset %r14, -32
.Ltmp382:
	.cfi_offset %r15, -24
.Ltmp383:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	152(%rsp), %r12
	movl	$65424, 68(%rsp)        # imm = 0xFF90
	testq	%r12, %r12
	je	.LBB42_85
# BB#1:                                 # %cond.end
	testq	%rbx, %rbx
	je	.LBB42_86
# BB#2:                                 # %cond.end.4
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	%r8, 40(%rsp)           # 8-byte Spill
	movq	%r9, 48(%rsp)           # 8-byte Spill
	movq	160(%rsp), %r13
	testq	%r13, %r13
	je	.LBB42_87
# BB#3:                                 # %cond.end.8
	movl	8(%rbx), %eax
	cmpl	$8, %eax
	jne	.LBB42_4
# BB#6:                                 # %while.cond.preheader
	leaq	92(%rbx), %r14
	movq	%r14, 56(%rsp)          # 8-byte Spill
	testb	$1, 92(%rbx)
	jne	.LBB42_72
# BB#7:                                 # %while.cond.19.preheader.lr.ph
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movl	$65424, %eax            # imm = 0xFF90
.LBB42_8:                               # %while.cond.19.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB42_9 Depth 2
                                        #       Child Loop BB42_17 Depth 3
	cmpl	$65427, %eax            # imm = 0xFF93
	je	.LBB42_42
.LBB42_9:                               # %while.body.21
                                        #   Parent Loop BB42_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB42_17 Depth 3
	movq	%r12, %rdi
	callq	opj_stream_get_number_byte_left
	testq	%rax, %rax
	je	.LBB42_10
# BB#11:                                # %if.end.27
                                        #   in Loop: Header=BB42_9 Depth=2
	movq	24(%rbx), %rsi
	movl	$2, %edx
	movq	%r12, %rdi
	movq	%r13, %rcx
	callq	opj_stream_read_data
	cmpq	$2, %rax
	jne	.LBB42_12
# BB#14:                                # %if.end.34
                                        #   in Loop: Header=BB42_9 Depth=2
	movq	24(%rbx), %rdi
	movl	$2, %edx
	leaq	64(%rsp), %rsi
	callq	opj_read_bytes_LE
	movl	8(%rbx), %eax
	testb	$16, %al
	movl	64(%rsp), %ecx
	je	.LBB42_16
# BB#15:                                # %if.then.42
                                        #   in Loop: Header=BB42_9 Depth=2
	movl	$-2, %edx
	subl	%ecx, %edx
	addl	%edx, 36(%rbx)
.LBB42_16:                              # %if.end.45
                                        #   in Loop: Header=BB42_9 Depth=2
	addl	$-2, %ecx
	movl	%ecx, 64(%rsp)
	movl	68(%rsp), %edx
	movl	$j2k_memory_marker_handler_tab-16, %r14d
	.align	16, 0x90
.LBB42_17:                              # %for.cond.i
                                        #   Parent Loop BB42_8 Depth=1
                                        #     Parent Loop BB42_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	16(%r14), %esi
	addq	$16, %r14
	testl	%esi, %esi
	je	.LBB42_19
# BB#18:                                # %for.cond.i
                                        #   in Loop: Header=BB42_17 Depth=3
	cmpl	%edx, %esi
	jne	.LBB42_17
.LBB42_19:                              # %opj_j2k_get_marker_handler.exit
                                        #   in Loop: Header=BB42_9 Depth=2
	testl	4(%r14), %eax
	je	.LBB42_20
# BB#21:                                # %if.end.55
                                        #   in Loop: Header=BB42_9 Depth=2
	cmpl	32(%rbx), %ecx
	jbe	.LBB42_22
# BB#23:                                # %cond.false.63
                                        #   in Loop: Header=BB42_9 Depth=2
	movl	%ecx, %esi
	movq	24(%rbx), %rdi
	callq	realloc
	testq	%rax, %rax
	je	.LBB42_24
# BB#25:                                # %if.end.82
                                        #   in Loop: Header=BB42_9 Depth=2
	movq	%rax, 24(%rbx)
	movl	64(%rsp), %ecx
	movl	%ecx, 32(%rbx)
	jmp	.LBB42_26
	.align	16, 0x90
.LBB42_22:                              # %if.end.55.if.end.89_crit_edge
                                        #   in Loop: Header=BB42_9 Depth=2
	movq	24(%rbx), %rax
.LBB42_26:                              # %if.end.89
                                        #   in Loop: Header=BB42_9 Depth=2
	movl	%ecx, %edx
	movq	%r12, %rdi
	movq	%rax, %rsi
	movq	%r13, %rcx
	callq	opj_stream_read_data
	movl	64(%rsp), %edx
	cmpq	%rdx, %rax
	jne	.LBB42_12
# BB#27:                                # %if.end.100
                                        #   in Loop: Header=BB42_9 Depth=2
	movq	8(%r14), %rax
	testq	%rax, %rax
	je	.LBB42_28
# BB#29:                                # %if.end.104
                                        #   in Loop: Header=BB42_9 Depth=2
	movq	%rbx, %r15
	movq	24(%r15), %rsi
	movq	%r15, %rdi
	movq	%r13, %rcx
	callq	*%rax
	testl	%eax, %eax
	je	.LBB42_30
# BB#31:                                # %if.end.113
                                        #   in Loop: Header=BB42_9 Depth=2
	movl	280(%r15), %ebp
	movq	272(%r15), %r13
	movl	(%r14), %ebx
	movq	%r12, %rdi
	callq	opj_stream_tell
	movl	64(%rsp), %r8d
	movl	$-4, %ecx
	subl	%r8d, %ecx
	addl	%eax, %ecx
	addl	$4, %r8d
	movl	%ebp, %edi
	movq	%r13, %rsi
	movl	%ebx, %edx
	callq	opj_j2k_add_tlmarker
	testl	%eax, %eax
	je	.LBB42_32
# BB#34:                                # %if.end.125
                                        #   in Loop: Header=BB42_9 Depth=2
	cmpl	$65424, (%r14)          # imm = 0xFF90
	jne	.LBB42_37
# BB#35:                                # %if.then.129
                                        #   in Loop: Header=BB42_9 Depth=2
	movq	%r12, %rdi
	callq	opj_stream_tell
	movl	$-4, %ecx
	subl	64(%rsp), %ecx
	addl	%eax, %ecx
	cmpq	80(%r15), %rcx
	jle	.LBB42_37
# BB#36:                                # %if.then.139
                                        #   in Loop: Header=BB42_9 Depth=2
	movq	%rcx, 80(%r15)
.LBB42_37:                              # %if.end.145
                                        #   in Loop: Header=BB42_9 Depth=2
	movq	56(%rsp), %r14          # 8-byte Reload
	testb	$4, (%r14)
	movq	160(%rsp), %r13
	movq	%r15, %rbx
	jne	.LBB42_38
# BB#40:                                # %if.else.167
                                        #   in Loop: Header=BB42_9 Depth=2
	movq	24(%rbx), %rsi
	movl	$2, %edx
	movq	%r12, %rdi
	movq	%r13, %rcx
	callq	opj_stream_read_data
	cmpq	$2, %rax
	jne	.LBB42_12
# BB#41:                                # %while.cond.19.backedge
                                        #   in Loop: Header=BB42_9 Depth=2
	movq	24(%rbx), %rdi
	movl	$2, %edx
	leaq	68(%rsp), %rsi
	callq	opj_read_bytes_LE
	cmpl	$65427, 68(%rsp)        # imm = 0xFF93
	jne	.LBB42_9
	jmp	.LBB42_42
.LBB42_10:                              # %if.then.23
                                        #   in Loop: Header=BB42_8 Depth=1
	movl	$64, 8(%rbx)
	jmp	.LBB42_42
.LBB42_38:                              # %if.then.152
                                        #   in Loop: Header=BB42_8 Depth=1
	movl	36(%rbx), %esi
	movq	%r12, %rdi
	movq	%r13, %rdx
	callq	opj_stream_skip
	movl	36(%rbx), %ecx
	cmpq	%rcx, %rax
	jne	.LBB42_12
# BB#39:                                # %while.cond.19.backedge.thread
                                        #   in Loop: Header=BB42_8 Depth=1
	movl	$65427, 68(%rsp)        # imm = 0xFF93
	.align	16, 0x90
.LBB42_42:                              # %while.end
                                        #   in Loop: Header=BB42_8 Depth=1
	movq	%r12, %rdi
	callq	opj_stream_get_number_byte_left
	testq	%rax, %rax
	jne	.LBB42_44
# BB#43:                                # %land.lhs.true
                                        #   in Loop: Header=BB42_8 Depth=1
	cmpl	$64, 8(%rbx)
	je	.LBB42_68
.LBB42_44:                              # %if.end.190
                                        #   in Loop: Header=BB42_8 Depth=1
	movb	(%r14), %al
	testb	$4, %al
	jne	.LBB42_67
# BB#45:                                # %cond.end.8.i
                                        #   in Loop: Header=BB42_8 Depth=1
	movl	280(%rbx), %r14d
	movq	208(%rbx), %r15
	cmpl	$0, 88(%rbx)
	je	.LBB42_47
# BB#46:                                # %if.then.i
                                        #   in Loop: Header=BB42_8 Depth=1
	movq	%r12, %rdi
	callq	opj_stream_get_number_byte_left
	jmp	.LBB42_48
.LBB42_67:                              # %if.else.225
                                        #   in Loop: Header=BB42_8 Depth=1
	andb	$-6, %al
	movb	%al, 92(%rbx)
	movl	$8, 8(%rbx)
	jmp	.LBB42_60
.LBB42_47:                              # %if.else.i
                                        #   in Loop: Header=BB42_8 Depth=1
	movl	36(%rbx), %eax
	cmpl	$2, %eax
	jb	.LBB42_49
.LBB42_48:                              # %if.then.16.i
                                        #   in Loop: Header=BB42_8 Depth=1
	addl	$-2, %eax
	movl	%eax, 36(%rbx)
.LBB42_49:                              # %if.end.22.i
                                        #   in Loop: Header=BB42_8 Depth=1
	imulq	$5680, %r14, %rcx       # imm = 0x1630
	leaq	5600(%r15,%rcx), %r14
	leaq	5608(%r15,%rcx), %r15
	movl	$1, %r13d
	testl	%eax, %eax
	je	.LBB42_53
# BB#50:                                # %if.then.27.i
                                        #   in Loop: Header=BB42_8 Depth=1
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB42_65
# BB#51:                                # %cond.false.52.i
                                        #   in Loop: Header=BB42_8 Depth=1
	addl	(%r15), %eax
	movq	%rax, %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB42_64
# BB#52:                                # %if.end.64.thread59.i
                                        #   in Loop: Header=BB42_8 Depth=1
	movq	%rax, (%r14)
	xorl	%r13d, %r13d
	jmp	.LBB42_53
.LBB42_65:                              # %if.end.64.i
                                        #   in Loop: Header=BB42_8 Depth=1
	movl	%eax, %edi
	callq	malloc
	movq	%rax, (%r14)
	xorl	%r13d, %r13d
	testq	%rax, %rax
	je	.LBB42_66
.LBB42_53:                              # %if.end.71.i
                                        #   in Loop: Header=BB42_8 Depth=1
	movq	272(%rbx), %rbp
	testq	%rbp, %rbp
	je	.LBB42_55
# BB#54:                                # %if.then.73.i
                                        #   in Loop: Header=BB42_8 Depth=1
	movq	152(%rsp), %rdi
	callq	opj_stream_tell
	leaq	-2(%rax), %rcx
	movl	280(%rbx), %edi
	movq	48(%rbp), %rdx
	imulq	$56, %rdi, %rsi
	movl	12(%rdx,%rsi), %r8d
	movq	16(%rdx,%rsi), %r9
	leaq	(%r8,%r8,2), %rsi
	movq	%rcx, 8(%r9,%rsi,8)
	movl	36(%rbx), %edx
	leal	2(%rdx), %r8d
	addq	%rax, %rdx
	movq	%rdx, 16(%r9,%rsi,8)
	movl	$65427, %edx            # imm = 0xFF93
	movq	%rbp, %rsi
	callq	opj_j2k_add_tlmarker
	testl	%eax, %eax
	je	.LBB42_32
.LBB42_55:                              # %if.end.110.i
                                        #   in Loop: Header=BB42_8 Depth=1
	xorl	%eax, %eax
	testl	%r13d, %r13d
	jne	.LBB42_57
# BB#56:                                # %if.then.112.i
                                        #   in Loop: Header=BB42_8 Depth=1
	movl	(%r15), %esi
	addq	(%r14), %rsi
	movl	36(%rbx), %edx
	movq	152(%rsp), %rdi
	movq	160(%rsp), %rcx
	callq	opj_stream_read_data
.LBB42_57:                              # %if.end.203
                                        #   in Loop: Header=BB42_8 Depth=1
	movl	$8, %ecx
	cmpl	36(%rbx), %eax
	je	.LBB42_59
# BB#58:                                # %select.mid
                                        #   in Loop: Header=BB42_8 Depth=1
	movl	$64, %ecx
.LBB42_59:                              # %select.end
                                        #   in Loop: Header=BB42_8 Depth=1
	movl	%ecx, 8(%rbx)
	addl	%eax, (%r15)
	testb	$1, 92(%rbx)
	movq	160(%rsp), %r13
	movq	56(%rsp), %r14          # 8-byte Reload
	movq	152(%rsp), %r12
	jne	.LBB42_62
.LBB42_60:                              # %if.then.211
                                        #   in Loop: Header=BB42_8 Depth=1
	movq	24(%rbx), %rsi
	movl	$2, %edx
	movq	%r12, %rdi
	movq	%r13, %rcx
	callq	opj_stream_read_data
	cmpq	$2, %rax
	jne	.LBB42_12
# BB#61:                                # %if.end.220
                                        #   in Loop: Header=BB42_8 Depth=1
	movq	24(%rbx), %rdi
	movl	$2, %edx
	leaq	68(%rsp), %rsi
	callq	opj_read_bytes_LE
.LBB42_62:                              # %while.cond.backedge
                                        #   in Loop: Header=BB42_8 Depth=1
	movl	68(%rsp), %eax
	cmpl	$65497, %eax            # imm = 0xFFD9
	je	.LBB42_69
# BB#63:                                # %while.cond.backedge
                                        #   in Loop: Header=BB42_8 Depth=1
	movb	(%r14), %cl
	andb	$1, %cl
	je	.LBB42_8
	jmp	.LBB42_69
.LBB42_4:                               # %cond.end.8
	xorl	%r14d, %r14d
	cmpl	$256, %eax              # imm = 0x100
	jne	.LBB42_84
# BB#5:                                 # %while.end.252.thread
	movl	$65497, 68(%rsp)        # imm = 0xFFD9
	leaq	92(%rbx), %r14
.LBB42_70:                              # %if.then.255
	cmpl	$256, 8(%rbx)           # imm = 0x100
	je	.LBB42_72
# BB#71:                                # %if.then.261
	movl	$0, 280(%rbx)
	movl	$256, 8(%rbx)           # imm = 0x100
.LBB42_72:                              # %if.end.267
	movq	144(%rsp), %r15
	testb	$1, (%r14)
	jne	.LBB42_73
# BB#76:                                # %if.then.275
	movl	144(%rbx), %eax
	movl	280(%rbx), %esi
	imull	148(%rbx), %eax
	movq	%rcx, %r12
	cmpl	%eax, %esi
	jae	.LBB42_80
# BB#77:                                # %land.end.286.lr.ph
	movq	208(%rbx), %rcx
	imulq	$5680, %rsi, %rdx       # imm = 0x1630
	leaq	5600(%rcx,%rdx), %rcx
	.align	16, 0x90
.LBB42_78:                              # %land.end.286
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, (%rcx)
	jne	.LBB42_80
# BB#79:                                # %while.body.287
                                        #   in Loop: Header=BB42_78 Depth=1
	incl	%esi
	movl	%esi, 280(%rbx)
	addq	$5680, %rcx             # imm = 0x1630
	cmpl	%eax, %esi
	jb	.LBB42_78
.LBB42_80:                              # %while.end.289
	cmpl	%eax, %esi
	jne	.LBB42_74
# BB#81:                                # %if.then.293
	movl	$0, (%r15)
	jmp	.LBB42_83
.LBB42_73:                              # %if.end.267.if.end.295_crit_edge
	movq	%rcx, %r12
	movl	280(%rbx), %esi
.LBB42_74:                              # %if.end.295
	movq	288(%rbx), %rdi
	callq	opj_tcd_init_decode_tile
	testl	%eax, %eax
	je	.LBB42_75
# BB#82:                                # %if.end.301
	movq	136(%rsp), %r14
	movq	%rbx, %rbp
	movq	128(%rsp), %rbx
	movl	144(%rbp), %r8d
	movl	280(%rbp), %ecx
	imull	148(%rbp), %r8d
	decl	%r8d
	movl	$4, %esi
	movl	$.L.str.14, %edx
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	opj_event_msg
	movl	280(%rbp), %eax
	movq	24(%rsp), %rcx          # 8-byte Reload
	movl	%eax, (%rcx)
	movl	$1, (%r15)
	movq	288(%rbp), %rdi
	callq	opj_tcd_get_decoded_tile_size
	movq	32(%rsp), %rcx          # 8-byte Reload
	movl	%eax, (%rcx)
	movq	288(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movl	(%rax), %ecx
	movl	%ecx, (%r12)
	movl	4(%rax), %ecx
	movq	40(%rsp), %rdx          # 8-byte Reload
	movl	%ecx, (%rdx)
	movl	8(%rax), %ecx
	movq	48(%rsp), %rdx          # 8-byte Reload
	movl	%ecx, (%rdx)
	movl	12(%rax), %ecx
	movl	%ecx, (%rbx)
	movl	16(%rax), %eax
	movl	%eax, (%r14)
	orb	$-128, 8(%rbp)
.LBB42_83:                              # %cleanup.329
	movl	$1, %r14d
	jmp	.LBB42_84
.LBB42_75:                              # %if.then.299
	xorl	%r14d, %r14d
	movl	$1, %esi
	movl	$.L.str.13, %edx
	jmp	.LBB42_13
.LBB42_12:                              # %if.then.32
	xorl	%r14d, %r14d
	movl	$1, %esi
	movl	$.L.str.7, %edx
	jmp	.LBB42_13
.LBB42_20:                              # %if.then.53
	xorl	%r14d, %r14d
	movl	$1, %esi
	movl	$.L.str.8, %edx
	jmp	.LBB42_13
.LBB42_32:                              # %if.then.123
	xorl	%r14d, %r14d
	movl	$1, %esi
	movl	$.L.str.12, %edx
.LBB42_33:                              # %cleanup.329
	xorl	%eax, %eax
	movq	160(%rsp), %rdi
	callq	opj_event_msg
	jmp	.LBB42_84
.LBB42_28:                              # %if.then.102
	xorl	%r14d, %r14d
	movl	$1, %esi
	movl	$.L.str.10, %edx
	jmp	.LBB42_13
.LBB42_30:                              # %if.then.111
	movl	68(%rsp), %ecx
	xorl	%r14d, %r14d
	movl	$1, %esi
	movl	$.L.str.11, %edx
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	opj_event_msg
	jmp	.LBB42_84
.LBB42_24:                              # %if.then.71
	movq	24(%rbx), %rdi
	callq	free
	movq	$0, 24(%rbx)
	movl	$0, 32(%rbx)
	xorl	%r14d, %r14d
	movl	$1, %esi
	movl	$.L.str.9, %edx
.LBB42_13:                              # %cleanup.329
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	opj_event_msg
.LBB42_84:                              # %cleanup.329
	movl	%r14d, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB42_68:                              # %while.end.252thread-pre-split
	movl	68(%rsp), %eax
.LBB42_69:                              # %while.end.252
	cmpl	$65497, %eax            # imm = 0xFFD9
	movq	16(%rsp), %rcx          # 8-byte Reload
	jne	.LBB42_72
	jmp	.LBB42_70
.LBB42_64:                              # %if.end.64.thread.i
	movq	(%r14), %rdi
	callq	free
	movq	$0, (%r14)
.LBB42_66:                              # %if.then.67.i
	xorl	%r14d, %r14d
	movl	$1, %esi
	movl	$.L.str.128, %edx
	jmp	.LBB42_33
.LBB42_85:                              # %cond.false
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$7048, %edx             # imm = 0x1B88
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_tile_header, %ecx
	callq	__assert_fail
.LBB42_86:                              # %cond.false.3
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$7049, %edx             # imm = 0x1B89
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_tile_header, %ecx
	callq	__assert_fail
.LBB42_87:                              # %cond.false.7
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$7050, %edx             # imm = 0x1B8A
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_tile_header, %ecx
	callq	__assert_fail
.Lfunc_end42:
	.size	opj_j2k_read_tile_header, .Lfunc_end42-opj_j2k_read_tile_header
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_add_tlmarker,@function
opj_j2k_add_tlmarker:                   # @opj_j2k_add_tlmarker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp384:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp385:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp386:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp387:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp388:
	.cfi_def_cfa_offset 48
.Ltmp389:
	.cfi_offset %rbx, -48
.Ltmp390:
	.cfi_offset %r12, -40
.Ltmp391:
	.cfi_offset %r14, -32
.Ltmp392:
	.cfi_offset %r15, -24
.Ltmp393:
	.cfi_offset %rbp, -16
	movl	%r8d, %r14d
	movq	%rcx, %r15
	movl	%edx, %r12d
	movq	%rsi, %rbx
	testq	%rbx, %rbx
	je	.LBB43_11
# BB#1:                                 # %cond.end
	movq	48(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB43_12
# BB#2:                                 # %cond.end.4
	movl	%edi, %eax
	imulq	$56, %rax, %rbp
	movl	24(%rcx,%rbp), %edx
	movl	40(%rcx,%rbp), %eax
	leal	1(%rdx), %esi
	cmpl	%eax, %esi
	jbe	.LBB43_3
# BB#4:                                 # %if.then
	leaq	40(%rcx,%rbp), %rdx
	movl	%eax, %eax
	cvtsi2ssq	%rax, %xmm0
	cvttss2si	%xmm0, %eax
	addl	$100, %eax
	movl	%eax, (%rdx)
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rsi
	movq	32(%rcx,%rbp), %rdi
	callq	realloc
	movq	48(%rbx), %rcx
	leaq	32(%rcx,%rbp), %rdx
	testq	%rax, %rax
	je	.LBB43_5
# BB#6:                                 # %if.end
	movq	%rax, (%rdx)
	movl	24(%rcx,%rbp), %edx
	jmp	.LBB43_7
.LBB43_3:                               # %cond.end.4.if.end.61_crit_edge
	movq	32(%rcx,%rbp), %rax
.LBB43_7:                               # %if.end.61
	movl	%edx, %esi
	leaq	(%rsi,%rsi,2), %rsi
	movw	%r12w, (%rax,%rsi,8)
	movslq	%r15d, %rdi
	movq	%rdi, 8(%rax,%rsi,8)
	movl	%r14d, 16(%rax,%rsi,8)
	incl	%edx
	movl	%edx, 24(%rcx,%rbp)
	movl	$1, %eax
	cmpl	$65424, %r12d           # imm = 0xFF90
	jne	.LBB43_10
# BB#8:                                 # %if.then.104
	movq	16(%rcx,%rbp), %rdx
	testq	%rdx, %rdx
	je	.LBB43_10
# BB#9:                                 # %if.then.112
	movl	12(%rcx,%rbp), %ecx
	leaq	(%rcx,%rcx,2), %rcx
	movq	%r15, (%rdx,%rcx,8)
	jmp	.LBB43_10
.LBB43_5:                               # %if.then.40
	movq	(%rdx), %rdi
	callq	free
	movq	48(%rbx), %rax
	movq	$0, 32(%rax,%rbp)
	movl	$0, 40(%rax,%rbp)
	movl	$0, 24(%rax,%rbp)
	xorl	%eax, %eax
.LBB43_10:                              # %return
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB43_11:                              # %cond.false
	movl	$.L.str.125, %edi
	movl	$.L.str.1, %esi
	movl	$6124, %edx             # imm = 0x17EC
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_add_tlmarker, %ecx
	callq	__assert_fail
.LBB43_12:                              # %cond.false.3
	movl	$.L.str.127, %edi
	movl	$.L.str.1, %esi
	movl	$6125, %edx             # imm = 0x17ED
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_add_tlmarker, %ecx
	callq	__assert_fail
.Lfunc_end43:
	.size	opj_j2k_add_tlmarker, .Lfunc_end43-opj_j2k_add_tlmarker
	.cfi_endproc

	.globl	opj_j2k_decode_tile
	.align	16, 0x90
	.type	opj_j2k_decode_tile,@function
opj_j2k_decode_tile:                    # @opj_j2k_decode_tile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp394:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp395:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp396:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp397:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp398:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp399:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp400:
	.cfi_def_cfa_offset 80
.Ltmp401:
	.cfi_offset %rbx, -56
.Ltmp402:
	.cfi_offset %r12, -48
.Ltmp403:
	.cfi_offset %r13, -40
.Ltmp404:
	.cfi_offset %r14, -32
.Ltmp405:
	.cfi_offset %r15, -24
.Ltmp406:
	.cfi_offset %rbp, -16
	movq	%r8, %r12
	movl	%ecx, %r13d
	movq	%rdx, %rbp
	movl	%esi, %eax
	movq	%rdi, %rbx
	testq	%r12, %r12
	je	.LBB44_23
# BB#1:                                 # %cond.end
	testq	%rbx, %rbx
	je	.LBB44_24
# BB#2:                                 # %cond.end.4
	testq	%r9, %r9
	je	.LBB44_25
# BB#3:                                 # %cond.end.8
	xorl	%edx, %edx
	testb	$-128, 8(%rbx)
	je	.LBB44_22
# BB#4:                                 # %lor.lhs.false
	cmpl	%eax, 280(%rbx)
	jne	.LBB44_22
# BB#5:                                 # %if.end
	movl	%eax, %ecx
	movq	208(%rbx), %r14
	imulq	$5680, %rcx, %r15       # imm = 0x1630
	leaq	(%r14,%r15), %rdi
	movq	5600(%r14,%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB44_6
# BB#7:                                 # %if.end.12
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movq	%r9, (%rsp)             # 8-byte Spill
	movq	272(%rbx), %r8
	movq	288(%rbx), %rdi
	movl	5608(%r14,%r15), %edx
	movl	%eax, %ecx
	callq	opj_tcd_decode_tile
	testl	%eax, %eax
	je	.LBB44_8
# BB#9:                                 # %if.end.19
	movq	288(%rbx), %rdi
	movq	%rbp, %rsi
	movl	%r13d, %edx
	callq	opj_tcd_update_tile_data
	testl	%eax, %eax
	movl	$0, %edx
	je	.LBB44_22
# BB#10:                                # %if.end.24
	leaq	5600(%r14,%r15), %rbp
	movq	(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB44_12
# BB#11:                                # %if.then.i
	leaq	5608(%r14,%r15), %r14
	callq	free
	movq	$0, (%rbp)
	movl	$0, (%r14)
.LBB44_12:                              # %opj_j2k_tcp_data_destroy.exit
	andb	$-2, 92(%rbx)
	andb	$127, 8(%rbx)
	movq	%r12, %rdi
	callq	opj_stream_get_number_byte_left
	testq	%rax, %rax
	sete	%al
	movl	8(%rbx), %edx
	cmpl	$64, %edx
	sete	%cl
	cmpl	$256, %edx              # imm = 0x100
	movl	$1, %edx
	je	.LBB44_22
# BB#13:                                # %opj_j2k_tcp_data_destroy.exit
	andb	%cl, %al
	jne	.LBB44_22
# BB#14:                                # %if.then.43
	leaq	18(%rsp), %rsi
	movl	$2, %edx
	movq	%r12, %rdi
	movq	(%rsp), %rbp            # 8-byte Reload
	movq	%rbp, %rcx
	callq	opj_stream_read_data
	cmpq	$2, %rax
	jne	.LBB44_15
# BB#16:                                # %if.end.48
	leaq	18(%rsp), %rdi
	leaq	20(%rsp), %rsi
	movl	$2, %edx
	callq	opj_read_bytes_LE
	movl	20(%rsp), %eax
	cmpl	$65424, %eax            # imm = 0xFF90
	je	.LBB44_21
# BB#17:                                # %if.end.48
	cmpl	$65497, %eax            # imm = 0xFFD9
	movl	$1, %edx
	jne	.LBB44_19
# BB#18:                                # %if.then.51
	movl	$0, 280(%rbx)
	movl	$256, 8(%rbx)           # imm = 0x100
	jmp	.LBB44_22
.LBB44_6:                               # %if.then.11
	callq	opj_j2k_tcp_destroy
	xorl	%edx, %edx
	jmp	.LBB44_22
.LBB44_8:                               # %if.then.15
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	opj_j2k_tcp_destroy
	orb	$-128, 9(%rbx)
	xorl	%edx, %edx
	jmp	.LBB44_22
.LBB44_15:                              # %if.then.46
	movl	$1, %esi
	movl	$.L.str.7, %edx
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	opj_event_msg
	xorl	%edx, %edx
	jmp	.LBB44_22
.LBB44_19:                              # %if.then.57
	movl	$1, %esi
	movl	$.L.str.15, %edx
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	opj_event_msg
	movq	%r12, %rdi
	callq	opj_stream_get_number_byte_left
	xorl	%edx, %edx
	testq	%rax, %rax
	jne	.LBB44_22
# BB#20:                                # %if.then.61
	movl	$64, 8(%rbx)
.LBB44_21:                              # %cleanup
	movl	$1, %edx
.LBB44_22:                              # %cleanup
	movl	%edx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB44_23:                              # %cond.false
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$7264, %edx             # imm = 0x1C60
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_decode_tile, %ecx
	callq	__assert_fail
.LBB44_24:                              # %cond.false.3
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$7265, %edx             # imm = 0x1C61
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_decode_tile, %ecx
	callq	__assert_fail
.LBB44_25:                              # %cond.false.7
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$7266, %edx             # imm = 0x1C62
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_decode_tile, %ecx
	callq	__assert_fail
.Lfunc_end44:
	.size	opj_j2k_decode_tile, .Lfunc_end44-opj_j2k_decode_tile
	.cfi_endproc

	.globl	opj_j2k_set_decode_area
	.align	16, 0x90
	.type	opj_j2k_set_decode_area,@function
opj_j2k_set_decode_area:                # @opj_j2k_set_decode_area
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp407:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp408:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp409:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp410:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp411:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp412:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp413:
	.cfi_def_cfa_offset 96
.Ltmp414:
	.cfi_offset %rbx, -56
.Ltmp415:
	.cfi_offset %r12, -48
.Ltmp416:
	.cfi_offset %r13, -40
.Ltmp417:
	.cfi_offset %r14, -32
.Ltmp418:
	.cfi_offset %r15, -24
.Ltmp419:
	.cfi_offset %rbp, -16
	movl	%r9d, %r12d
	movl	%r8d, %r13d
	movl	%ecx, %ebp
	movl	%edx, %ecx
	movq	%rdi, %rbx
	movq	96(%rsp), %rdi
	cmpl	$8, 8(%rbx)
	jne	.LBB45_1
# BB#2:                                 # %if.end
	movl	%ebp, %eax
	orl	%ecx, %eax
	orl	%r13d, %eax
	orl	%r12d, %eax
	je	.LBB45_3
# BB#4:                                 # %if.end.16
	testl	%ecx, %ecx
	js	.LBB45_41
# BB#5:                                 # %cond.end
	testl	%ebp, %ebp
	js	.LBB45_42
# BB#6:                                 # %cond.end.21
	movq	96(%rbx), %r15
	movl	8(%r15), %r8d
	cmpl	%ecx, %r8d
	jae	.LBB45_8
# BB#7:                                 # %if.then.23
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.20, %edx
	xorl	%eax, %eax
	callq	opj_event_msg
	jmp	.LBB45_40
.LBB45_1:                               # %if.then
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.16, %edx
	xorl	%eax, %eax
	callq	opj_event_msg
	jmp	.LBB45_40
.LBB45_3:                               # %if.then.6
	movl	$4, %esi
	movl	$.L.str.17, %edx
	xorl	%eax, %eax
	callq	opj_event_msg
	movq	$0, 40(%rbx)
	movl	144(%rbx), %eax
	movl	%eax, 48(%rbx)
	movl	148(%rbx), %eax
	movl	%eax, 52(%rbx)
.LBB45_39:                              # %cleanup.168
	movl	$1, %ebx
	jmp	.LBB45_40
.LBB45_8:                               # %if.else
	movl	(%r15), %r8d
	cmpl	%ecx, %r8d
	jbe	.LBB45_10
# BB#9:                                 # %if.then.27
	xorl	%r14d, %r14d
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movl	$2, %esi
	movl	$.L.str.21, %edx
	xorl	%eax, %eax
	callq	opj_event_msg
	movq	32(%rsp), %rsi          # 8-byte Reload
	movl	(%r15), %ecx
	jmp	.LBB45_11
.LBB45_10:                              # %if.else.35
	movl	%ecx, %eax
	subl	116(%rbx), %eax
	xorl	%edx, %edx
	divl	124(%rbx)
	movl	%eax, %r14d
.LBB45_11:                              # %if.end.41
	movl	%r14d, 40(%rbx)
	movl	%ecx, (%rsi)
	movl	12(%r15), %r8d
	cmpl	%ebp, %r8d
	jae	.LBB45_13
# BB#12:                                # %if.then.43
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.22, %edx
	xorl	%eax, %eax
	movq	96(%rsp), %rdi
	movl	%ebp, %ecx
	callq	opj_event_msg
	jmp	.LBB45_40
.LBB45_13:                              # %if.else.46
	movl	4(%r15), %r8d
	cmpl	%ebp, %r8d
	jbe	.LBB45_15
# BB#14:                                # %if.then.48
	xorl	%r14d, %r14d
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movl	$2, %esi
	movl	$.L.str.23, %edx
	xorl	%eax, %eax
	movq	96(%rsp), %rdi
	movl	%ebp, %ecx
	callq	opj_event_msg
	movq	32(%rsp), %rsi          # 8-byte Reload
	movl	4(%r15), %ebp
	jmp	.LBB45_16
.LBB45_15:                              # %if.else.56
	movl	%ebp, %eax
	subl	120(%rbx), %eax
	xorl	%edx, %edx
	divl	128(%rbx)
	movl	%eax, %r14d
.LBB45_16:                              # %if.end.64
	movl	%r14d, 44(%rbx)
	movl	%ebp, 4(%rsi)
	testl	%r13d, %r13d
	je	.LBB45_43
# BB#17:                                # %cond.end.68
	testl	%r12d, %r12d
	movq	96(%rsp), %rdi
	je	.LBB45_44
# BB#18:                                # %cond.end.72
	movl	(%r15), %r8d
	cmpl	%r13d, %r8d
	jbe	.LBB45_20
# BB#19:                                # %if.then.75
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.26, %edx
	xorl	%eax, %eax
	movl	%r13d, %ecx
	callq	opj_event_msg
	jmp	.LBB45_40
.LBB45_20:                              # %if.else.78
	movl	8(%r15), %r8d
	cmpl	%r13d, %r8d
	jae	.LBB45_22
# BB#21:                                # %if.then.81
	movq	%rsi, %rbp
	movl	$2, %esi
	movl	$.L.str.27, %edx
	xorl	%eax, %eax
	movl	%r13d, %ecx
	callq	opj_event_msg
	movq	%rbp, %rsi
	movl	144(%rbx), %eax
	movl	8(%r15), %r13d
	jmp	.LBB45_23
.LBB45_22:                              # %if.else.90
	movl	124(%rbx), %ecx
	leal	-1(%r13), %eax
	subl	116(%rbx), %eax
	addl	%ecx, %eax
	cltd
	idivl	%ecx
.LBB45_23:                              # %if.end.100
	movl	%eax, 48(%rbx)
	movl	%r13d, 8(%rsi)
	movl	4(%r15), %r8d
	cmpl	%r12d, %r8d
	jbe	.LBB45_25
# BB#24:                                # %if.then.103
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.28, %edx
	xorl	%eax, %eax
	movq	96(%rsp), %rdi
	movl	%r12d, %ecx
	callq	opj_event_msg
	jmp	.LBB45_40
.LBB45_25:                              # %if.end.106
	movl	12(%r15), %r8d
	cmpl	%r12d, %r8d
	jae	.LBB45_27
# BB#26:                                # %if.then.109
	movq	%rsi, %rbp
	movl	$2, %esi
	movl	$.L.str.29, %edx
	xorl	%eax, %eax
	movq	96(%rsp), %rdi
	movl	%r12d, %ecx
	callq	opj_event_msg
	movq	%rbp, %rsi
	movl	148(%rbx), %eax
	movl	12(%r15), %r12d
	jmp	.LBB45_28
.LBB45_27:                              # %if.else.118
	movl	128(%rbx), %ecx
	leal	-1(%r12), %eax
	subl	120(%rbx), %eax
	addl	%ecx, %eax
	cltd
	idivl	%ecx
.LBB45_28:                              # %if.end.127
	movl	%eax, 52(%rbx)
	movl	%r12d, 12(%rsi)
	orb	$2, 92(%rbx)
	movl	(%rsi), %ecx
	movl	16(%rsi), %r14d
	testl	%r14d, %r14d
	je	.LBB45_29
# BB#30:                                # %for.body.lr.ph
	movq	24(%rsi), %rbx
	movl	4(%rsi), %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	8(%rsi), %edx
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%rsi, %r9
	leal	-1(%rax), %r8d
	leal	-1(%rdx), %r12d
	leal	-1(%rcx), %r13d
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	xorl	%r10d, %r10d
.LBB45_31:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %ecx
	leal	(%r13,%rcx), %eax
	cltd
	idivl	%ecx
	movl	%eax, %edi
	movl	%edi, 16(%rbx)
	movl	4(%rbx), %r11d
	leal	(%r8,%r11), %eax
	cltd
	idivl	%r11d
	movl	%eax, %esi
	movl	%esi, 20(%rbx)
	leal	(%r12,%rcx), %eax
	cltd
	idivl	%ecx
	cltq
	movl	40(%rbx), %ecx
	movl	$1, %edx
	shll	%cl, %edx
	movslq	%edx, %r15
	leaq	-1(%rax,%r15), %rbp
	sarq	%cl, %rbp
	movslq	%edi, %rax
	leaq	-1(%rax,%r15), %rax
	sarq	%cl, %rax
	subl	%eax, %ebp
	js	.LBB45_32
# BB#34:                                # %if.end.151
                                        #   in Loop: Header=BB45_31 Depth=1
	movl	12(%r9), %edi
	leal	-1(%r11,%rdi), %eax
	cltd
	idivl	%r11d
	movl	%ebp, 8(%rbx)
	cltq
	leaq	-1(%rax,%r15), %rbp
	sarq	%cl, %rbp
	movslq	%esi, %rax
	leaq	-1(%rax,%r15), %rax
	sarq	%cl, %rax
	subl	%eax, %ebp
	js	.LBB45_35
# BB#36:                                # %for.inc
                                        #   in Loop: Header=BB45_31 Depth=1
	movl	%ebp, 12(%rbx)
	incl	%r10d
	addq	$64, %rbx
	cmpl	%r14d, %r10d
	jb	.LBB45_31
# BB#37:
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	24(%rsp), %r8           # 8-byte Reload
	movq	16(%rsp), %r9           # 8-byte Reload
	jmp	.LBB45_38
.LBB45_29:                              # %if.end.127.for.end_crit_edge
	movl	4(%rsi), %r8d
	movl	8(%rsi), %r9d
	movl	12(%rsi), %edi
.LBB45_38:                              # %for.end
	movl	%edi, (%rsp)
	movl	$4, %esi
	movl	$.L.str.32, %edx
	xorl	%eax, %eax
	movq	96(%rsp), %rdi
	callq	opj_event_msg
	jmp	.LBB45_39
.LBB45_32:                              # %if.then.149
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.30, %edx
	jmp	.LBB45_33
.LBB45_35:                              # %if.then.159
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.31, %edx
.LBB45_33:                              # %cleanup.168
	xorl	%eax, %eax
	movq	96(%rsp), %rdi
	movl	%r10d, %ecx
	movl	%ebp, %r8d
	callq	opj_event_msg
.LBB45_40:                              # %cleanup.168
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB45_41:                              # %cond.false
	movl	$.L.str.18, %edi
	movl	$.L.str.1, %esi
	movl	$7630, %edx             # imm = 0x1DCE
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_set_decode_area, %ecx
	callq	__assert_fail
.LBB45_42:                              # %cond.false.20
	movl	$.L.str.19, %edi
	movl	$.L.str.1, %esi
	movl	$7631, %edx             # imm = 0x1DCF
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_set_decode_area, %ecx
	callq	__assert_fail
.LBB45_43:                              # %cond.false.67
	movl	$.L.str.24, %edi
	movl	$.L.str.1, %esi
	movl	$7671, %edx             # imm = 0x1DF7
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_set_decode_area, %ecx
	callq	__assert_fail
.LBB45_44:                              # %cond.false.71
	movl	$.L.str.25, %edi
	movl	$.L.str.1, %esi
	movl	$7672, %edx             # imm = 0x1DF8
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_set_decode_area, %ecx
	callq	__assert_fail
.Lfunc_end45:
	.size	opj_j2k_set_decode_area, .Lfunc_end45-opj_j2k_set_decode_area
	.cfi_endproc

	.globl	opj_j2k_create_decompress
	.align	16, 0x90
	.type	opj_j2k_create_decompress,@function
opj_j2k_create_decompress:              # @opj_j2k_create_decompress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp420:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp421:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp422:
	.cfi_def_cfa_offset 32
.Ltmp423:
	.cfi_offset %rbx, -24
.Ltmp424:
	.cfi_offset %r14, -16
	movl	$296, %edi              # imm = 0x128
	callq	malloc
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB46_9
# BB#1:                                 # %if.end
	xorl	%esi, %esi
	movl	$296, %edx              # imm = 0x128
	movq	%rbx, %rdi
	callq	memset
	movl	$1, (%rbx)
	orb	$2, 248(%rbx)
	movl	$5680, %edi             # imm = 0x1630
	callq	malloc
	movq	%rax, 16(%rbx)
	testq	%rax, %rax
	je	.LBB46_8
# BB#2:                                 # %if.end.9
	xorl	%esi, %esi
	movl	$5680, %edx             # imm = 0x1630
	movq	%rax, %rdi
	callq	memset
	movl	$1000, %edi             # imm = 0x3E8
	callq	malloc
	movq	%rax, 24(%rbx)
	testq	%rax, %rax
	je	.LBB46_8
# BB#3:                                 # %if.end.22
	movl	$1000, 32(%rbx)         # imm = 0x3E8
	movl	$-1, 72(%rbx)
	movq	$0, 80(%rbx)
	movl	$1, %edi
	movl	$56, %esi
	callq	calloc
	movq	%rax, %r14
	xorl	%ecx, %ecx
	testq	%r14, %r14
	je	.LBB46_6
# BB#4:                                 # %if.end.i
	movl	$100, 40(%r14)
	movl	$0, 24(%r14)
	movl	$100, %edi
	movl	$24, %esi
	callq	calloc
	movq	%rax, 32(%r14)
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB46_6
# BB#5:                                 # %if.end.13.i
	movq	$0, 48(%r14)
	movq	%r14, %rcx
.LBB46_6:                               # %opj_j2k_create_cstr_index.exit
	movq	%rcx, 272(%rbx)
	callq	opj_procedure_list_create
	movq	%rax, 264(%rbx)
	testq	%rax, %rax
	je	.LBB46_8
# BB#7:                                 # %if.end.34
	callq	opj_procedure_list_create
	movq	%rax, 256(%rbx)
	testq	%rax, %rax
	movq	%rbx, %rax
	jne	.LBB46_9
.LBB46_8:                               # %if.then.38
	movq	%rbx, %rdi
	callq	opj_j2k_destroy
	xorl	%eax, %eax
.LBB46_9:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end46:
	.size	opj_j2k_create_decompress, .Lfunc_end46-opj_j2k_create_decompress
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI47_0:
	.quad	2                       # 0x2
	.quad	3                       # 0x3
.LCPI47_1:
	.quad	6                       # 0x6
	.quad	7                       # 0x7
.LCPI47_2:
	.quad	4                       # 0x4
	.quad	5                       # 0x5
	.text
	.globl	j2k_dump
	.align	16, 0x90
	.type	j2k_dump,@function
j2k_dump:                               # @j2k_dump
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp425:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp426:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp427:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp428:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp429:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp430:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp431:
	.cfi_def_cfa_offset 96
.Ltmp432:
	.cfi_offset %rbx, -56
.Ltmp433:
	.cfi_offset %r12, -48
.Ltmp434:
	.cfi_offset %r13, -40
.Ltmp435:
	.cfi_offset %r14, -32
.Ltmp436:
	.cfi_offset %r15, -24
.Ltmp437:
	.cfi_offset %rbp, -16
	movq	%rdx, %r13
	movl	%esi, %ebp
	movq	%rdi, %r14
	testw	$384, %bp               # imm = 0x180
	je	.LBB47_3
# BB#1:                                 # %if.then
	movl	$.L.str.33, %esi
	jmp	.LBB47_2
.LBB47_3:                               # %if.end
	testb	$1, %bpl
	je	.LBB47_6
# BB#4:                                 # %if.then.5
	movq	96(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB47_6
# BB#5:                                 # %if.then.7
	xorl	%esi, %esi
	movq	%r13, %rdx
	callq	j2k_dump_image_header
.LBB47_6:                               # %if.end.10
	testb	$2, %bpl
	je	.LBB47_19
# BB#7:                                 # %if.then.13
	movl	$.L.str.137, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	movl	116(%r14), %edx
	movl	120(%r14), %ecx
	movl	$.L.str.138, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	movl	124(%r14), %edx
	movl	128(%r14), %ecx
	movl	$.L.str.139, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	movl	144(%r14), %edx
	movl	148(%r14), %ecx
	movl	$.L.str.140, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	movq	16(%r14), %rbx
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	testq	%rbx, %rbx
	je	.LBB47_18
# BB#8:                                 # %if.then.i
	movl	%ebp, 4(%rsp)           # 4-byte Spill
	movq	96(%r14), %rax
	movq	%r14, 8(%rsp)           # 8-byte Spill
	movl	16(%rax), %ebp
	movl	%ebp, 20(%rsp)          # 4-byte Spill
	movl	$.L.str.141, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	movl	(%rbx), %edx
	movl	$.L.str.142, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	movl	4(%rbx), %edx
	movl	$.L.str.143, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	movl	8(%rbx), %edx
	movl	$.L.str.144, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	movl	16(%rbx), %edx
	movl	$.L.str.145, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	testl	%ebp, %ebp
	jle	.LBB47_17
# BB#9:                                 # %for.body.lr.ph.i
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB47_10:                              # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_11 Depth 2
                                        #     Child Loop BB47_15 Depth 2
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movq	5584(%rbx), %r14
	movl	$.L.str.146, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	%ebp, %edx
	callq	fprintf
	imulq	$1080, %rbp, %r15       # imm = 0x438
	movl	(%r14,%r15), %edx
	movl	$.L.str.147, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	leaq	4(%r14,%r15), %rbx
	movl	4(%r14,%r15), %edx
	movl	$.L.str.148, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	movl	8(%r14,%r15), %edx
	movl	$.L.str.149, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	movl	12(%r14,%r15), %edx
	movl	$.L.str.150, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	movl	16(%r14,%r15), %edx
	movl	$.L.str.151, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	movl	20(%r14,%r15), %edx
	movl	$.L.str.152, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	movl	$.L.str.153, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	cmpl	$0, 4(%r14,%r15)
	movl	$0, %ebp
	je	.LBB47_12
	.align	16, 0x90
.LBB47_11:                              # %for.body.27.i
                                        #   Parent Loop BB47_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebp, %eax
	leaq	(%r14,%r15), %rcx
	movl	812(%rcx,%rax,4), %edx
	movl	944(%rcx,%rax,4), %ecx
	movl	$.L.str.154, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	incl	%ebp
	cmpl	(%rbx), %ebp
	jb	.LBB47_11
.LBB47_12:                              # %for.end.i
                                        #   in Loop: Header=BB47_10 Depth=1
	movl	$.L.str.155, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	movl	24(%r14,%r15), %edx
	movl	$.L.str.156, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	movl	804(%r14,%r15), %edx
	movl	$.L.str.157, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	movl	$.L.str.158, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	movl	$1, %r12d
	cmpl	$1, 24(%r14,%r15)
	je	.LBB47_14
# BB#13:                                # %cond.end.i
                                        #   in Loop: Header=BB47_10 Depth=1
	movl	(%rbx), %eax
	leal	-2(%rax,%rax,2), %r12d
	testl	%r12d, %r12d
	jle	.LBB47_16
.LBB47_14:                              # %for.body.42.lr.ph.i
                                        #   in Loop: Header=BB47_10 Depth=1
	leaq	32(%r14,%r15), %rbx
	.align	16, 0x90
.LBB47_15:                              # %for.body.42.i
                                        #   Parent Loop BB47_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%rbx), %ecx
	movl	(%rbx), %edx
	movl	$.L.str.154, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	addq	$8, %rbx
	decl	%r12d
	jne	.LBB47_15
.LBB47_16:                              # %for.end.51.i
                                        #   in Loop: Header=BB47_10 Depth=1
	movl	$.L.str.155, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	movl	808(%r14,%r15), %edx
	movl	$.L.str.159, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	movl	$.L.str.160, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	movq	32(%rsp), %rbp          # 8-byte Reload
	incq	%rbp
	cmpl	20(%rsp), %ebp          # 4-byte Folded Reload
	movq	24(%rsp), %rbx          # 8-byte Reload
	jne	.LBB47_10
.LBB47_17:                              # %for.end.57.i
	movl	$.L.str.133, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	movq	8(%rsp), %r14           # 8-byte Reload
	movl	4(%rsp), %ebp           # 4-byte Reload
.LBB47_18:                              # %opj_j2k_dump_MH_info.exit
	movl	$.L.str.41, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
.LBB47_19:                              # %if.end.14
	testb	$16, %bpl
	jne	.LBB47_20
# BB#49:                                # %if.end.22
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB47_20:                              # %if.then.21
	movq	272(%r14), %r15
	movl	$.L.str.129, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	movq	(%r15), %rdx
	movq	8(%r15), %rcx
	movl	$.L.str.130, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	movl	$.L.str.131, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	movq	32(%r15), %rax
	testq	%rax, %rax
	je	.LBB47_25
# BB#21:                                # %for.cond.preheader.i
	cmpl	$0, 24(%r15)
	je	.LBB47_25
# BB#22:
	movl	$1, %ebx
	jmp	.LBB47_23
	.align	16, 0x90
.LBB47_24:                              # %for.body.for.body_crit_edge.i
                                        #   in Loop: Header=BB47_23 Depth=1
	movq	32(%r15), %rax
	incl	%ebx
.LBB47_23:                              # %for.body.i.17
                                        # =>This Inner Loop Header: Depth=1
	leal	-1(%rbx), %ecx
	leaq	(%rcx,%rcx,2), %rsi
	movzwl	(%rax,%rsi,8), %edx
	movq	8(%rax,%rsi,8), %rcx
	movl	16(%rax,%rsi,8), %r8d
	movl	$.L.str.132, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	cmpl	24(%r15), %ebx
	jb	.LBB47_24
.LBB47_25:                              # %if.end.i
	movl	$.L.str.133, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	movq	48(%r15), %r12
	testq	%r12, %r12
	je	.LBB47_45
# BB#26:                                # %for.cond.15.preheader.i
	movl	44(%r15), %r10d
	testq	%r10, %r10
	je	.LBB47_45
# BB#27:                                # %for.body.18.lr.ph.i
	movl	%r10d, %esi
	andl	$7, %esi
	pxor	%xmm0, %xmm0
	xorl	%r8d, %r8d
	cmpl	%esi, %r10d
	pxor	%xmm1, %xmm1
	je	.LBB47_30
# BB#28:                                # %vector.body.preheader
	movq	%r10, %r8
	subq	%rsi, %r8
	leaq	4(%r12), %rsi
	movl	%r10d, %ebp
	andl	$7, %ebp
	movq	%r10, %r9
	subq	%rbp, %r9
	pxor	%xmm0, %xmm0
	xorl	%ebp, %ebp
	movl	$1, %ebx
	movd	%rbx, %xmm2
	pslldq	$8, %xmm2               # xmm2 = zero,zero,zero,zero,zero,zero,zero,zero,xmm2[0,1,2,3,4,5,6,7]
	movdqa	.LCPI47_0(%rip), %xmm8  # xmm8 = [2,3]
	movdqa	.LCPI47_1(%rip), %xmm9  # xmm9 = [6,7]
	movdqa	.LCPI47_2(%rip), %xmm5  # xmm5 = [4,5]
	pxor	%xmm1, %xmm1
	.align	16, 0x90
.LBB47_29:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movd	%rbp, %xmm6
	pshufd	$68, %xmm6, %xmm6       # xmm6 = xmm6[0,1,0,1]
	movdqa	%xmm6, %xmm7
	paddq	%xmm2, %xmm7
	movdqa	%xmm6, %xmm3
	paddq	%xmm8, %xmm3
	movdqa	%xmm6, %xmm4
	paddq	%xmm9, %xmm4
	paddq	%xmm5, %xmm6
	pshufd	$78, %xmm7, %xmm7       # xmm7 = xmm7[2,3,0,1]
	movd	%xmm7, %rbx
	imulq	$56, %rbx, %rbx
	movd	%xmm3, %rdx
	imulq	$56, %rdx, %rdx
	pshufd	$78, %xmm3, %xmm3       # xmm3 = xmm3[2,3,0,1]
	movd	%xmm3, %rdi
	imulq	$56, %rdi, %rdi
	movd	%xmm6, %rax
	imulq	$56, %rax, %r11
	pshufd	$78, %xmm6, %xmm3       # xmm3 = xmm6[2,3,0,1]
	movd	%xmm3, %rax
	imulq	$56, %rax, %r14
	movd	%xmm4, %rax
	imulq	$56, %rax, %rax
	pshufd	$78, %xmm4, %xmm3       # xmm3 = xmm4[2,3,0,1]
	movd	%xmm3, %rcx
	imulq	$56, %rcx, %rcx
	movd	4(%r12,%rdi), %xmm3     # xmm3 = mem[0],zero,zero,zero
	movd	4(%r12,%rbx), %xmm4     # xmm4 = mem[0],zero,zero,zero
	punpckldq	%xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1]
	movd	4(%r12,%rdx), %xmm3     # xmm3 = mem[0],zero,zero,zero
	movd	(%rsi), %xmm6           # xmm6 = mem[0],zero,zero,zero
	punpckldq	%xmm3, %xmm6    # xmm6 = xmm6[0],xmm3[0],xmm6[1],xmm3[1]
	punpckldq	%xmm4, %xmm6    # xmm6 = xmm6[0],xmm4[0],xmm6[1],xmm4[1]
	movd	4(%r12,%rax), %xmm3     # xmm3 = mem[0],zero,zero,zero
	movd	4(%r12,%r11), %xmm4     # xmm4 = mem[0],zero,zero,zero
	punpckldq	%xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1]
	movd	4(%r12,%rcx), %xmm3     # xmm3 = mem[0],zero,zero,zero
	movd	4(%r12,%r14), %xmm7     # xmm7 = mem[0],zero,zero,zero
	punpckldq	%xmm3, %xmm7    # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1]
	punpckldq	%xmm7, %xmm4    # xmm4 = xmm4[0],xmm7[0],xmm4[1],xmm7[1]
	paddd	%xmm6, %xmm0
	paddd	%xmm4, %xmm1
	addq	$8, %rbp
	addq	$448, %rsi              # imm = 0x1C0
	cmpq	%rbp, %r9
	jne	.LBB47_29
.LBB47_30:                              # %middle.block
	paddd	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	paddd	%xmm0, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	paddd	%xmm1, %xmm0
	movd	%xmm0, %esi
	subq	%r8, %r10
	je	.LBB47_33
# BB#31:                                # %for.body.18.i.preheader
	imulq	$56, %r8, %rax
	leaq	4(%r12,%rax), %rcx
	.align	16, 0x90
.LBB47_32:                              # %for.body.18.i
                                        # =>This Inner Loop Header: Depth=1
	addl	(%rcx), %esi
	addq	$56, %rcx
	decq	%r10
	jne	.LBB47_32
.LBB47_33:                              # %for.end.24.i
	testl	%esi, %esi
	je	.LBB47_45
# BB#34:                                # %if.then.26.i
	movl	$.L.str.134, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	cmpl	$0, 44(%r15)
	je	.LBB47_44
# BB#35:                                # %for.body.32.lr.ph.i
	movq	48(%r15), %rax
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB47_36:                              # %for.body.32.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_40 Depth 2
                                        #     Child Loop BB47_47 Depth 2
	movl	%r14d, %edx
	movl	%edx, %ebp
	imulq	$56, %rbp, %rbx
	movl	4(%rax,%rbx), %r14d
	movl	$.L.str.135, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	%r14d, %ecx
	callq	fprintf
	movq	48(%r15), %rax
	testl	%r14d, %r14d
	je	.LBB47_37
# BB#38:                                # %for.body.32.i
                                        #   in Loop: Header=BB47_36 Depth=1
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movq	16(%rax,%rbx), %rdx
	testq	%rdx, %rdx
	je	.LBB47_41
# BB#39:                                # %for.body.46.i.preheader
                                        #   in Loop: Header=BB47_36 Depth=1
	movq	(%rdx), %rcx
	movq	8(%rdx), %r8
	movq	16(%rdx), %r9
	movl	$.L.str.136, %esi
	movl	$0, %edx
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	movq	48(%r15), %rax
	movl	$1, %ebp
	cmpl	$1, %r14d
	movl	$40, %r12d
	je	.LBB47_41
	.align	16, 0x90
.LBB47_40:                              # %for.body.46.for.body.46_crit_edge.i
                                        #   Parent Loop BB47_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax,%rbx), %rax
	movq	-16(%rax,%r12), %rcx
	movq	-8(%rax,%r12), %r8
	movq	(%rax,%r12), %r9
	movl	$.L.str.136, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	%ebp, %edx
	callq	fprintf
	movq	48(%r15), %rax
	addq	$24, %r12
	incl	%ebp
	cmpl	%ebp, %r14d
	jne	.LBB47_40
	jmp	.LBB47_41
	.align	16, 0x90
.LBB47_37:                              #   in Loop: Header=BB47_36 Depth=1
	movq	%rbp, 32(%rsp)          # 8-byte Spill
.LBB47_41:                              # %if.end.69.i
                                        #   in Loop: Header=BB47_36 Depth=1
	movq	32(%rax,%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB47_42
# BB#46:                                # %for.cond.76.preheader.i
                                        #   in Loop: Header=BB47_36 Depth=1
	movl	$1, %ebp
	cmpl	$0, 24(%rax,%rbx)
	movq	32(%rsp), %r14          # 8-byte Reload
	jne	.LBB47_47
	jmp	.LBB47_43
	.align	16, 0x90
.LBB47_48:                              # %for.body.83.for.body.83_crit_edge.i
                                        #   in Loop: Header=BB47_47 Depth=2
	movq	32(%rax,%rbx), %rsi
	incl	%ebp
.LBB47_47:                              # %for.body.83.i
                                        #   Parent Loop BB47_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-1(%rbp), %eax
	leaq	(%rax,%rax,2), %rax
	movzwl	(%rsi,%rax,8), %edx
	movq	8(%rsi,%rax,8), %rcx
	movl	16(%rsi,%rax,8), %r8d
	movl	$.L.str.132, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	movq	48(%r15), %rax
	cmpl	24(%rax,%rbx), %ebp
	jb	.LBB47_48
	jmp	.LBB47_43
	.align	16, 0x90
.LBB47_42:                              #   in Loop: Header=BB47_36 Depth=1
	movq	32(%rsp), %r14          # 8-byte Reload
.LBB47_43:                              # %if.end.110.i
                                        #   in Loop: Header=BB47_36 Depth=1
	incl	%r14d
	cmpl	44(%r15), %r14d
	jb	.LBB47_36
.LBB47_44:                              # %for.end.113.i
	movl	$.L.str.133, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
.LBB47_45:                              # %opj_j2k_dump_MH_index.exit
	movl	$.L.str.41, %esi
.LBB47_2:                               # %if.then
	xorl	%eax, %eax
	movq	%r13, %rdi
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	fprintf                 # TAILCALL
.Lfunc_end47:
	.size	j2k_dump, .Lfunc_end47-j2k_dump
	.cfi_endproc

	.globl	j2k_dump_image_header
	.align	16, 0x90
	.type	j2k_dump_image_header,@function
j2k_dump_image_header:                  # @j2k_dump_image_header
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp438:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp439:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp440:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp441:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp442:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp443:
	.cfi_def_cfa_offset 64
.Ltmp444:
	.cfi_offset %rbx, -48
.Ltmp445:
	.cfi_offset %r12, -40
.Ltmp446:
	.cfi_offset %r14, -32
.Ltmp447:
	.cfi_offset %r15, -24
.Ltmp448:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movl	%esi, %r14d
	movq	%rdi, %r15
	testl	%r14d, %r14d
	je	.LBB48_2
# BB#1:                                 # %if.then
	movq	stdout(%rip), %rdi
	movl	$.L.str.34, %esi
	xorl	%eax, %eax
	callq	fprintf
	movb	$0, 14(%rsp)
	jmp	.LBB48_3
.LBB48_2:                               # %if.else
	movl	$.L.str.35, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	movw	$9, 14(%rsp)
.LBB48_3:                               # %if.end
	movl	(%r15), %ecx
	movl	4(%r15), %r8d
	xorl	%ebp, %ebp
	leaq	14(%rsp), %r12
	movl	$.L.str.36, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%r12, %rdx
	callq	fprintf
	movl	8(%r15), %ecx
	movl	12(%r15), %r8d
	movl	$.L.str.37, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%r12, %rdx
	callq	fprintf
	movl	16(%r15), %ecx
	movl	$.L.str.38, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%r12, %rdx
	callq	fprintf
	cmpq	$0, 24(%r15)
	je	.LBB48_7
# BB#4:                                 # %for.cond.preheader
	cmpl	$0, 16(%r15)
	je	.LBB48_7
# BB#5:
	leaq	14(%rsp), %r12
	.align	16, 0x90
.LBB48_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.39, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%r12, %rdx
	movl	%ebp, %ecx
	callq	fprintf
	movl	%ebp, %edi
	shlq	$6, %rdi
	addq	24(%r15), %rdi
	movl	%r14d, %esi
	movq	%rbx, %rdx
	callq	j2k_dump_image_comp_header
	movl	$.L.str.40, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%r12, %rdx
	callq	fprintf
	incl	%ebp
	cmpl	16(%r15), %ebp
	jb	.LBB48_6
.LBB48_7:                               # %if.end.18
	movl	$.L.str.41, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end48:
	.size	j2k_dump_image_header, .Lfunc_end48-j2k_dump_image_header
	.cfi_endproc

	.globl	j2k_dump_image_comp_header
	.align	16, 0x90
	.type	j2k_dump_image_comp_header,@function
j2k_dump_image_comp_header:             # @j2k_dump_image_comp_header
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp449:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp450:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp451:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp452:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp453:
	.cfi_def_cfa_offset 48
.Ltmp454:
	.cfi_offset %rbx, -40
.Ltmp455:
	.cfi_offset %r14, -32
.Ltmp456:
	.cfi_offset %r15, -24
.Ltmp457:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movl	%esi, %r14d
	movq	%rdi, %rbp
	testl	%r14d, %r14d
	je	.LBB49_2
# BB#1:                                 # %if.then
	movq	stdout(%rip), %rdi
	movl	$.L.str.42, %esi
	xorl	%eax, %eax
	callq	fprintf
	movb	$0, 5(%rsp)
	jmp	.LBB49_3
.LBB49_2:                               # %if.else
	movw	$2313, 5(%rsp)          # imm = 0x909
	movb	$0, 7(%rsp)
.LBB49_3:                               # %if.end
	movl	(%rbp), %ecx
	movl	4(%rbp), %r8d
	leaq	5(%rsp), %r15
	movl	$.L.str.43, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	fprintf
	movl	24(%rbp), %ecx
	movl	$.L.str.44, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	fprintf
	movl	32(%rbp), %ecx
	movl	$.L.str.45, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	fprintf
	testl	%r14d, %r14d
	je	.LBB49_5
# BB#4:                                 # %if.then.10
	movl	$.L.str.41, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
.LBB49_5:                               # %if.end.12
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end49:
	.size	j2k_dump_image_comp_header, .Lfunc_end49-j2k_dump_image_comp_header
	.cfi_endproc

	.globl	j2k_get_cstr_info
	.align	16, 0x90
	.type	j2k_get_cstr_info,@function
j2k_get_cstr_info:                      # @j2k_get_cstr_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp458:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp459:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp460:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp461:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp462:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp463:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp464:
	.cfi_def_cfa_offset 80
.Ltmp465:
	.cfi_offset %rbx, -56
.Ltmp466:
	.cfi_offset %r12, -48
.Ltmp467:
	.cfi_offset %r13, -40
.Ltmp468:
	.cfi_offset %r14, -32
.Ltmp469:
	.cfi_offset %r15, -24
.Ltmp470:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	96(%rbx), %rax
	movl	16(%rax), %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	movl	$1, %edi
	movl	$72, %esi
	callq	calloc
	movq	%rax, 16(%rsp)
	xorl	%r14d, %r14d
	testq	%rax, %rax
	je	.LBB50_17
# BB#1:                                 # %if.end
	movq	96(%rbx), %rcx
	movl	16(%rcx), %ecx
	movl	%ecx, 24(%rax)
	movdqu	116(%rbx), %xmm0
	movdqu	%xmm0, (%rax)
	movl	144(%rbx), %ecx
	movl	%ecx, 16(%rax)
	movl	148(%rbx), %ecx
	movl	%ecx, 20(%rax)
	movq	$0, 64(%rax)
	movq	16(%rbx), %rcx
	movq	%rcx, (%rsp)            # 8-byte Spill
	movl	(%rcx), %eax
	movq	16(%rsp), %rbx
	movl	%eax, 36(%rbx)
	movl	4(%rcx), %eax
	movl	%eax, 40(%rbx)
	movl	8(%rcx), %eax
	movl	%eax, 44(%rbx)
	movl	16(%rcx), %eax
	movl	%eax, 48(%rbx)
	movl	24(%rbx), %edi
	movl	$1080, %esi             # imm = 0x438
	callq	calloc
	movq	%rax, 56(%rbx)
	movq	16(%rsp), %r14
	movq	56(%r14), %rbp
	testq	%rbp, %rbp
	je	.LBB50_16
# BB#2:                                 # %for.cond.preheader
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	je	.LBB50_17
# BB#3:                                 # %for.body.lr.ph
	xorl	%r13d, %r13d
	jmp	.LBB50_4
	.align	16, 0x90
.LBB50_15:                              # %if.end.92.for.body_crit_edge
                                        #   in Loop: Header=BB50_4 Depth=1
	movq	56(%r14), %rbp
.LBB50_4:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB50_13 Depth 2
	movq	(%rsp), %rax            # 8-byte Reload
	movq	5584(%rax), %rbx
	imulq	$1080, %r13, %r15       # imm = 0x438
	leaq	4(%rbx,%r15), %r12
	movdqu	(%rbx,%r15), %xmm0
	movdqu	%xmm0, 4(%rbp,%r15)
	movl	16(%rbx,%r15), %eax
	movl	%eax, 20(%rbp,%r15)
	movl	20(%rbx,%r15), %eax
	movl	%eax, 24(%rbp,%r15)
	pshufd	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	movd	%xmm0, %eax
	cmpl	$32, %eax
	ja	.LBB50_6
# BB#5:                                 # %if.then.53
                                        #   in Loop: Header=BB50_4 Depth=1
	leaq	948(%rbp,%r15), %rdi
	leaq	944(%rbx,%r15), %rsi
	movl	%eax, %edx
	callq	memcpy
	leaq	816(%rbp,%r15), %rdi
	leaq	812(%rbx,%r15), %rsi
	movl	(%r12), %edx
	callq	memcpy
.LBB50_6:                               # %if.end.65
                                        #   in Loop: Header=BB50_4 Depth=1
	movl	24(%rbx,%r15), %ecx
	movl	%ecx, 28(%rbp,%r15)
	movl	804(%rbx,%r15), %eax
	movl	%eax, 808(%rbp,%r15)
	movl	$1, %eax
	cmpl	$1, %ecx
	je	.LBB50_9
# BB#7:                                 # %cond.end.74
                                        #   in Loop: Header=BB50_4 Depth=1
	movl	(%r12), %eax
	leal	-3(%rax,%rax,2), %ecx
	cmpl	$95, %ecx
	ja	.LBB50_14
# BB#8:                                 #   in Loop: Header=BB50_4 Depth=1
	leal	-2(%rax,%rax,2), %eax
.LBB50_9:                               # %for.body.82.lr.ph
                                        #   in Loop: Header=BB50_4 Depth=1
	testb	$1, %al
	movl	$0, %edx
	je	.LBB50_11
# BB#10:                                # %for.body.82.prol
                                        #   in Loop: Header=BB50_4 Depth=1
	movl	32(%rbx,%r15), %ecx
	movl	%ecx, 32(%rbp,%r15)
	movl	28(%rbx,%r15), %ecx
	movl	%ecx, 420(%rbp,%r15)
	movl	$1, %edx
.LBB50_11:                              # %for.body.82.lr.ph.split
                                        #   in Loop: Header=BB50_4 Depth=1
	cmpl	$1, %eax
	je	.LBB50_14
# BB#12:                                # %for.body.82.lr.ph.split.split
                                        #   in Loop: Header=BB50_4 Depth=1
	subl	%edx, %eax
	leaq	(%rbx,%r15), %rcx
	leaq	28(%rcx,%rdx,8), %rcx
	leaq	(%rbp,%r15), %rsi
	leaq	(%rsi,%rdx,4), %rdx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB50_13:                              # %for.body.82
                                        #   Parent Loop BB50_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	4(%rcx,%rsi,8), %edi
	movl	%edi, 32(%rdx,%rsi,4)
	movl	(%rcx,%rsi,8), %edi
	movl	%edi, 420(%rdx,%rsi,4)
	movl	12(%rcx,%rsi,8), %edi
	movl	%edi, 36(%rdx,%rsi,4)
	movl	8(%rcx,%rsi,8), %edi
	movl	%edi, 424(%rdx,%rsi,4)
	addq	$2, %rsi
	cmpl	%esi, %eax
	jne	.LBB50_13
.LBB50_14:                              # %if.end.92
                                        #   in Loop: Header=BB50_4 Depth=1
	movl	808(%rbx,%r15), %eax
	movl	%eax, 812(%rbp,%r15)
	incq	%r13
	cmpl	12(%rsp), %r13d         # 4-byte Folded Reload
	jne	.LBB50_15
	jmp	.LBB50_17
.LBB50_16:                              # %if.then.35
	leaq	16(%rsp), %rdi
	callq	opj_destroy_cstr_info
	xorl	%r14d, %r14d
.LBB50_17:                              # %cleanup
	movq	%r14, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end50:
	.size	j2k_get_cstr_info, .Lfunc_end50-j2k_get_cstr_info
	.cfi_endproc

	.globl	j2k_get_cstr_index
	.align	16, 0x90
	.type	j2k_get_cstr_index,@function
j2k_get_cstr_index:                     # @j2k_get_cstr_index
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp471:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp472:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp473:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp474:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp475:
	.cfi_def_cfa_offset 48
.Ltmp476:
	.cfi_offset %rbx, -48
.Ltmp477:
	.cfi_offset %r12, -40
.Ltmp478:
	.cfi_offset %r14, -32
.Ltmp479:
	.cfi_offset %r15, -24
.Ltmp480:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movl	$1, %edi
	movl	$56, %esi
	callq	calloc
	xorl	%r15d, %r15d
	testq	%rax, %rax
	je	.LBB51_32
# BB#1:                                 # %if.end
	movq	%rax, %r15
	movq	272(%r14), %rax
	movups	(%rax), %xmm0
	movups	%xmm0, (%r15)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%r15)
	movl	24(%rax), %eax
	movl	%eax, 24(%r15)
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rdi
	callq	malloc
	movq	%rax, 32(%r15)
	testq	%rax, %rax
	je	.LBB51_2
# BB#3:                                 # %if.end.17
	movq	272(%r14), %rcx
	movq	32(%rcx), %rsi
	testq	%rsi, %rsi
	je	.LBB51_5
# BB#4:                                 # %if.then.21
	movl	24(%r15), %ecx
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rdx
	movq	%rax, %rdi
	callq	memcpy
	jmp	.LBB51_6
.LBB51_5:                               # %if.else
	movq	%rax, %rdi
	callq	free
	movq	$0, 32(%r15)
.LBB51_6:                               # %if.end.31
	movq	272(%r14), %rax
	movl	44(%rax), %edi
	movl	%edi, 44(%r15)
	movl	$56, %esi
	callq	calloc
	movq	%rax, 48(%r15)
	testq	%rax, %rax
	je	.LBB51_7
# BB#8:                                 # %if.end.53
	movq	272(%r14), %rcx
	movq	48(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB51_31
# BB#9:                                 # %for.cond.preheader
	cmpl	$0, 44(%r15)
	je	.LBB51_32
# BB#10:                                # %for.body.preheader
	movl	24(%rcx), %ecx
	movl	%ecx, 24(%rax)
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rdi
	callq	malloc
	movq	48(%r15), %rdi
	movq	%rax, 32(%rdi)
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	jmp	.LBB51_11
	.align	16, 0x90
.LBB51_30:                              # %if.end.231.for.body_crit_edge
                                        #   in Loop: Header=BB51_11 Depth=1
	movq	272(%r14), %rcx
	movq	48(%rcx), %rcx
	movl	%r12d, %ebx
	imulq	$56, %rbx, %rbp
	movl	24(%rcx,%rbp), %ecx
	movl	%ecx, 24(%rax,%rbp)
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rdi
	callq	malloc
	movq	48(%r15), %rdi
	movq	%rax, 32(%rdi,%rbp)
.LBB51_11:                              # %for.body.preheader
                                        # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB51_12
# BB#18:                                # %if.end.110
                                        #   in Loop: Header=BB51_11 Depth=1
	movq	272(%r14), %rcx
	movq	48(%rcx), %rcx
	imulq	$56, %rbx, %rbx
	movq	32(%rcx,%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB51_20
# BB#19:                                # %if.then.117
                                        #   in Loop: Header=BB51_11 Depth=1
	movl	24(%rdi,%rbx), %ecx
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rdx
	movq	%rax, %rdi
	callq	memcpy
	movq	48(%r15), %rax
	jmp	.LBB51_21
	.align	16, 0x90
.LBB51_20:                              # %if.else.134
                                        #   in Loop: Header=BB51_11 Depth=1
	movq	%rax, %rdi
	callq	free
	movq	48(%r15), %rax
	movq	$0, 32(%rax,%rbx)
.LBB51_21:                              # %if.end.143
                                        #   in Loop: Header=BB51_11 Depth=1
	movq	272(%r14), %rcx
	movq	48(%rcx), %rcx
	movl	4(%rcx,%rbx), %ecx
	movl	%ecx, 4(%rax,%rbx)
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rdi
	callq	malloc
	movq	48(%r15), %rdi
	movq	%rax, 16(%rdi,%rbx)
	testq	%rax, %rax
	je	.LBB51_22
# BB#26:                                # %if.end.198
                                        #   in Loop: Header=BB51_11 Depth=1
	movq	272(%r14), %rcx
	movq	48(%rcx), %rcx
	movq	16(%rcx,%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB51_28
# BB#27:                                # %if.then.205
                                        #   in Loop: Header=BB51_11 Depth=1
	movl	4(%rdi,%rbx), %ecx
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rdx
	movq	%rax, %rdi
	callq	memcpy
	movq	48(%r15), %rax
	jmp	.LBB51_29
	.align	16, 0x90
.LBB51_28:                              # %if.else.222
                                        #   in Loop: Header=BB51_11 Depth=1
	movq	%rax, %rdi
	callq	free
	movq	48(%r15), %rax
	movq	$0, 16(%rax,%rbx)
.LBB51_29:                              # %if.end.231
                                        #   in Loop: Header=BB51_11 Depth=1
	movl	$0, 44(%rax,%rbx)
	movq	$0, 48(%rax,%rbx)
	incl	%r12d
	cmpl	44(%r15), %r12d
	jb	.LBB51_30
	jmp	.LBB51_32
.LBB51_31:                              # %if.then.57
	movq	%rax, %rdi
	callq	free
	movq	$0, 48(%r15)
	jmp	.LBB51_32
.LBB51_12:                              # %for.cond.100.preheader
	testl	%r12d, %r12d
	je	.LBB51_17
# BB#13:                                # %for.body.103.preheader
	movq	32(%rdi), %rdi
	callq	free
	cmpl	$1, %r12d
	je	.LBB51_16
# BB#14:                                # %for.body.103.for.body.103_crit_edge.preheader
	decl	%r12d
	movl	$88, %ebx
	.align	16, 0x90
.LBB51_15:                              # %for.body.103.for.body.103_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	movq	48(%r15), %rax
	movq	(%rax,%rbx), %rdi
	callq	free
	addq	$56, %rbx
	decl	%r12d
	jne	.LBB51_15
	jmp	.LBB51_16
.LBB51_22:                              # %for.cond.181.preheader
	testl	%r12d, %r12d
	je	.LBB51_17
# BB#23:                                # %for.body.184.preheader
	movq	32(%rdi), %rdi
	callq	free
	movq	48(%r15), %rax
	movq	16(%rax), %rdi
	callq	free
	cmpl	$1, %r12d
	je	.LBB51_16
# BB#24:                                # %for.body.184.for.body.184_crit_edge.preheader
	decl	%r12d
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB51_25:                              # %for.body.184.for.body.184_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	movq	48(%r15), %rax
	movq	88(%rax,%rbx), %rdi
	callq	free
	movq	48(%r15), %rax
	movq	72(%rax,%rbx), %rdi
	callq	free
	addq	$56, %rbx
	decl	%r12d
	jne	.LBB51_25
.LBB51_16:                              # %for.cond.100.for.end_crit_edge
	movq	48(%r15), %rdi
.LBB51_17:                              # %for.end
	callq	free
.LBB51_7:                               # %if.then.51
	movq	32(%r15), %rdi
	callq	free
.LBB51_2:                               # %if.then.16
	movq	%r15, %rdi
	callq	free
	xorl	%r15d, %r15d
.LBB51_32:                              # %cleanup.242
	movq	%r15, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end51:
	.size	j2k_get_cstr_index, .Lfunc_end51-j2k_get_cstr_index
	.cfi_endproc

	.globl	opj_j2k_decode
	.align	16, 0x90
	.type	opj_j2k_decode,@function
opj_j2k_decode:                         # @opj_j2k_decode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp481:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp482:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp483:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp484:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp485:
	.cfi_def_cfa_offset 48
.Ltmp486:
	.cfi_offset %rbx, -48
.Ltmp487:
	.cfi_offset %r12, -40
.Ltmp488:
	.cfi_offset %r14, -32
.Ltmp489:
	.cfi_offset %r15, -24
.Ltmp490:
	.cfi_offset %rbp, -16
	movq	%rcx, %r15
	movq	%rdx, %rbp
	movq	%rsi, %r12
	movq	%rdi, %rbx
	xorl	%r14d, %r14d
	testq	%rbp, %rbp
	je	.LBB52_9
# BB#1:                                 # %if.end
	callq	opj_image_create0
	movq	%rax, 104(%rbx)
	testq	%rax, %rax
	je	.LBB52_9
# BB#2:                                 # %opj_j2k_setup_decoding.exit
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	opj_copy_image_header
	movq	256(%rbx), %rdi
	movl	$opj_j2k_decode_tiles, %esi
	callq	opj_procedure_list_add_procedure
	movq	256(%rbx), %rsi
	movq	%rbx, %rdi
	movq	%r12, %rdx
	movq	%r15, %rcx
	callq	opj_j2k_exec
	testl	%eax, %eax
	je	.LBB52_10
# BB#3:                                 # %for.cond.preheader
	movl	16(%rbp), %eax
	testq	%rax, %rax
	movl	$1, %r14d
	je	.LBB52_9
# BB#4:                                 # %for.body.lr.ph
	movq	104(%rbx), %rcx
	movq	24(%rcx), %rdx
	movq	24(%rbp), %rsi
	xorl	%ecx, %ecx
	testb	$1, %al
	je	.LBB52_6
# BB#5:                                 # %for.body.prol
	movl	36(%rdx), %ecx
	movl	%ecx, 36(%rsi)
	movq	48(%rdx), %rcx
	movq	%rcx, 48(%rsi)
	movq	$0, 48(%rdx)
	movl	$1, %ecx
.LBB52_6:                               # %for.body.lr.ph.split
	cmpl	$1, %eax
	je	.LBB52_9
# BB#7:                                 # %for.body.lr.ph.split.split
	movq	%rcx, %rdi
	shlq	$6, %rdi
	leaq	112(%rdx,%rdi), %rdx
	leaq	112(%rsi,%rdi), %rsi
	.align	16, 0x90
.LBB52_8:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rdx), %edi
	movl	%edi, -76(%rsi)
	movq	-64(%rdx), %rdi
	movq	%rdi, -64(%rsi)
	movq	$0, -64(%rdx)
	movl	-12(%rdx), %edi
	movl	%edi, -12(%rsi)
	movq	(%rdx), %rdi
	movq	%rdi, (%rsi)
	movq	$0, (%rdx)
	addq	$2, %rcx
	subq	$-128, %rdx
	subq	$-128, %rsi
	cmpq	%rax, %rcx
	jb	.LBB52_8
	jmp	.LBB52_9
.LBB52_10:                              # %if.then.8
	movq	96(%rbx), %rdi
	callq	opj_image_destroy
	movq	$0, 96(%rbx)
.LBB52_9:                               # %cleanup
	movl	%r14d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end52:
	.size	opj_j2k_decode, .Lfunc_end52-opj_j2k_decode
	.cfi_endproc

	.globl	opj_j2k_get_tile
	.align	16, 0x90
	.type	opj_j2k_get_tile,@function
opj_j2k_get_tile:                       # @opj_j2k_get_tile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp491:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp492:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp493:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp494:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp495:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp496:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp497:
	.cfi_def_cfa_offset 96
.Ltmp498:
	.cfi_offset %rbx, -56
.Ltmp499:
	.cfi_offset %r12, -48
.Ltmp500:
	.cfi_offset %r13, -40
.Ltmp501:
	.cfi_offset %r14, -32
.Ltmp502:
	.cfi_offset %r15, -24
.Ltmp503:
	.cfi_offset %rbp, -16
	movl	%r8d, %r9d
	movq	%rdx, %rbx
	testq	%rbx, %rbx
	je	.LBB53_1
# BB#2:                                 # %if.end
	movl	144(%rdi), %ebp
	movl	148(%rdi), %r8d
	imull	%ebp, %r8d
	cmpl	%r9d, %r8d
	jbe	.LBB53_3
# BB#4:                                 # %if.end.9
	movq	%rsi, (%rsp)            # 8-byte Spill
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	xorl	%edx, %edx
	movl	%r9d, %eax
	movl	%r9d, 12(%rsp)          # 4-byte Spill
	divl	%ebp
	movl	%eax, %r8d
	movl	%edx, %r10d
	movl	116(%rdi), %ecx
	movl	124(%rdi), %edx
	movl	%edx, %r9d
	imull	%r10d, %r9d
	addl	%ecx, %r9d
	movl	%r9d, (%rbx)
	movq	96(%rdi), %rax
	movl	(%rax), %esi
	cmpl	%esi, %r9d
	cmovbl	%esi, %r9d
	movl	%r9d, (%rbx)
	incl	%r10d
	imull	%edx, %r10d
	addl	%ecx, %r10d
	movl	%r10d, 8(%rbx)
	movl	8(%rax), %ecx
	cmpl	%ecx, %r10d
	cmoval	%ecx, %r10d
	movl	%r10d, 8(%rbx)
	movl	120(%rdi), %ecx
	movl	128(%rdi), %edx
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movl	%edx, %edi
	imull	%r8d, %edi
	addl	%ecx, %edi
	movl	%edi, 4(%rbx)
	movl	4(%rax), %esi
	cmpl	%esi, %edi
	cmovbl	%esi, %edi
	movl	%edi, 4(%rbx)
	incl	%r8d
	imull	%edx, %r8d
	addl	%ecx, %r8d
	movl	%r8d, 12(%rbx)
	movl	12(%rax), %ecx
	cmpl	%ecx, %r8d
	cmoval	%ecx, %r8d
	movl	%r8d, 12(%rbx)
	movl	16(%rbx), %r11d
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	testq	%r11, %r11
	je	.LBB53_7
# BB#5:                                 # %for.body.lr.ph
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	24(%rcx), %r15
	movq	24(%rax), %r13
	decl	%r9d
	decl	%edi
	decl	%r10d
	decl	%r8d
	addq	$40, %r13
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB53_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%r13), %ecx
	movl	%ecx, 40(%r15)
	movl	(%r15), %esi
	leal	(%r9,%rsi), %eax
	cltd
	idivl	%esi
	movl	%eax, %ebx
	movl	%ebx, 16(%r15)
	movl	4(%r15), %r12d
	leal	(%rdi,%r12), %eax
	cltd
	idivl	%r12d
	movl	%eax, %ebp
	movl	%ebp, 20(%r15)
	leal	(%r10,%rsi), %eax
	cltd
	idivl	%esi
	movl	%eax, %esi
	leal	(%r8,%r12), %eax
	cltd
	idivl	%r12d
	movslq	%esi, %rdx
	movl	$1, %esi
	shll	%cl, %esi
	movslq	%esi, %rsi
	leaq	-1(%rdx,%rsi), %rdx
	sarq	%cl, %rdx
	movslq	%ebx, %rbx
	leaq	-1(%rbx,%rsi), %rbx
	sarq	%cl, %rbx
	subl	%ebx, %edx
	movl	%edx, 8(%r15)
	cltq
	leaq	-1(%rax,%rsi), %rax
	sarq	%cl, %rax
	movslq	%ebp, %rdx
	leaq	-1(%rdx,%rsi), %rdx
	sarq	%cl, %rdx
	subl	%edx, %eax
	movl	%eax, 12(%r15)
	addq	$64, %r15
	incq	%r14
	addq	$64, %r13
	cmpq	%r11, %r14
	jb	.LBB53_6
.LBB53_7:                               # %for.end
	movq	24(%rsp), %r15          # 8-byte Reload
	movq	104(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB53_9
# BB#8:                                 # %if.then.99
	callq	opj_image_destroy
.LBB53_9:                               # %if.end.101
	callq	opj_image_create0
	movq	%rax, 104(%r15)
	xorl	%r14d, %r14d
	testq	%rax, %rax
	movq	32(%rsp), %r12          # 8-byte Reload
	je	.LBB53_16
# BB#10:                                # %opj_j2k_setup_decoding_tile.exit
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	opj_copy_image_header
	movl	12(%rsp), %eax          # 4-byte Reload
	movl	%eax, 72(%r15)
	movq	256(%r15), %rdi
	movl	$opj_j2k_decode_one_tile, %esi
	callq	opj_procedure_list_add_procedure
	movq	256(%r15), %rsi
	movq	%r15, %rdi
	movq	(%rsp), %rdx            # 8-byte Reload
	movq	16(%rsp), %rcx          # 8-byte Reload
	callq	opj_j2k_exec
	testl	%eax, %eax
	je	.LBB53_17
# BB#11:                                # %for.cond.115.preheader
	movl	16(%r12), %eax
	movl	$1, %r14d
	testl	%eax, %eax
	je	.LBB53_16
# BB#12:                                # %for.body.118.lr.ph
	movq	104(%r15), %rcx
	movq	24(%rcx), %rcx
	movq	24(%r12), %rdx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB53_13:                              # %for.body.118
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %ebp
	movq	%rbp, %rbx
	shlq	$6, %rbx
	movl	36(%rcx,%rbx), %esi
	movl	%esi, 36(%rdx,%rbx)
	movq	48(%rdx,%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB53_15
# BB#14:                                # %if.then.131
                                        #   in Loop: Header=BB53_13 Depth=1
	callq	free
	movq	104(%r15), %rax
	movq	24(%rax), %rcx
	movq	24(%r12), %rdx
	movl	16(%r12), %eax
.LBB53_15:                              # %if.end.136
                                        #   in Loop: Header=BB53_13 Depth=1
	movq	48(%rcx,%rbx), %rsi
	movq	%rsi, 48(%rdx,%rbx)
	movq	$0, 48(%rcx,%rbx)
	incl	%ebp
	cmpl	%eax, %ebp
	jb	.LBB53_13
	jmp	.LBB53_16
.LBB53_1:                               # %if.then
	xorl	%r14d, %r14d
	movl	$1, %esi
	movl	$.L.str.46, %edx
	xorl	%eax, %eax
	movq	%rcx, %rdi
	callq	opj_event_msg
	jmp	.LBB53_16
.LBB53_3:                               # %if.then.2
	decl	%r8d
	xorl	%r14d, %r14d
	movl	$1, %esi
	movl	$.L.str.47, %edx
	xorl	%eax, %eax
	movq	%rcx, %rdi
	movl	%r9d, %ecx
	callq	opj_event_msg
	jmp	.LBB53_16
.LBB53_17:                              # %if.then.111
	movq	96(%r15), %rdi
	callq	opj_image_destroy
	movq	$0, 96(%r15)
.LBB53_16:                              # %cleanup
	movl	%r14d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end53:
	.size	opj_j2k_get_tile, .Lfunc_end53-opj_j2k_get_tile
	.cfi_endproc

	.globl	opj_j2k_set_decoded_resolution_factor
	.align	16, 0x90
	.type	opj_j2k_set_decoded_resolution_factor,@function
opj_j2k_set_decoded_resolution_factor:  # @opj_j2k_set_decoded_resolution_factor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp504:
	.cfi_def_cfa_offset 16
.Ltmp505:
	.cfi_offset %rbx, -16
	movq	%rdx, %r8
	movl	%esi, 216(%rdi)
	movq	96(%rdi), %rcx
	xorl	%ebx, %ebx
	testq	%rcx, %rcx
	je	.LBB54_9
# BB#1:                                 # %if.then
	movq	24(%rcx), %rax
	testq	%rax, %rax
	je	.LBB54_9
# BB#2:                                 # %if.then.3
	movq	16(%rdi), %rdx
	testq	%rdx, %rdx
	je	.LBB54_9
# BB#3:                                 # %if.then.6
	movq	5584(%rdx), %rdx
	testq	%rdx, %rdx
	je	.LBB54_9
# BB#4:                                 # %for.cond.preheader
	movl	16(%rcx), %edi
	movl	$1, %ebx
	testl	%edi, %edi
	je	.LBB54_9
# BB#5:                                 # %for.body.preheader
	addq	$40, %rax
	addq	$4, %rdx
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB54_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%esi, (%rdx)
	jbe	.LBB54_7
# BB#8:                                 # %if.end
                                        #   in Loop: Header=BB54_6 Depth=1
	movl	%esi, (%rax)
	incl	%ecx
	addq	$64, %rax
	addq	$1080, %rdx             # imm = 0x438
	cmpl	%edi, %ecx
	jb	.LBB54_6
	jmp	.LBB54_9
.LBB54_7:                               # %if.then.18
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.48, %edx
	xorl	%eax, %eax
	movq	%r8, %rdi
	callq	opj_event_msg
.LBB54_9:                               # %cleanup.27
	movl	%ebx, %eax
	popq	%rbx
	retq
.Lfunc_end54:
	.size	opj_j2k_set_decoded_resolution_factor, .Lfunc_end54-opj_j2k_set_decoded_resolution_factor
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI55_0:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.text
	.globl	opj_j2k_encode
	.align	16, 0x90
	.type	opj_j2k_encode,@function
opj_j2k_encode:                         # @opj_j2k_encode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp506:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp507:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp508:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp509:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp510:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp511:
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
.Ltmp512:
	.cfi_def_cfa_offset 224
.Ltmp513:
	.cfi_offset %rbx, -56
.Ltmp514:
	.cfi_offset %r12, -48
.Ltmp515:
	.cfi_offset %r13, -40
.Ltmp516:
	.cfi_offset %r14, -32
.Ltmp517:
	.cfi_offset %r15, -24
.Ltmp518:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%r15, 32(%rsp)          # 8-byte Spill
	movq	%rsi, %rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movq	%rdi, %r13
	movq	%r13, 16(%rsp)          # 8-byte Spill
	testq	%r13, %r13
	je	.LBB55_124
# BB#1:                                 # %cond.end
	testq	%rcx, %rcx
	je	.LBB55_125
# BB#2:                                 # %cond.end.4
	testq	%r15, %r15
	je	.LBB55_126
# BB#3:                                 # %cond.end.8
	movl	$1000, %edi             # imm = 0x3E8
	callq	malloc
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB55_4
# BB#5:                                 # %if.end
	movl	144(%r13), %eax
	imull	148(%r13), %eax
	testl	%eax, %eax
	je	.LBB55_6
# BB#8:                                 # %for.body.lr.ph
	movl	%eax, %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	$1000, 44(%rsp)         # 4-byte Folded Spill
                                        # imm = 0x3E8
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB55_10:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB55_18 Depth 2
                                        #       Child Loop BB55_27 Depth 3
                                        #         Child Loop BB55_46 Depth 4
                                        #         Child Loop BB55_51 Depth 4
                                        #         Child Loop BB55_54 Depth 4
                                        #       Child Loop BB55_37 Depth 3
                                        #         Child Loop BB55_58 Depth 4
                                        #         Child Loop BB55_63 Depth 4
                                        #         Child Loop BB55_66 Depth 4
                                        #       Child Loop BB55_72 Depth 3
                                        #         Child Loop BB55_78 Depth 4
                                        #         Child Loop BB55_82 Depth 4
                                        #       Child Loop BB55_87 Depth 3
                                        #         Child Loop BB55_93 Depth 4
                                        #         Child Loop BB55_97 Depth 4
                                        #       Child Loop BB55_102 Depth 3
                                        #         Child Loop BB55_110 Depth 4
                                        #         Child Loop BB55_115 Depth 4
                                        #         Child Loop BB55_118 Depth 4
	movl	280(%r13), %eax
	cmpq	%rbx, %rax
	jne	.LBB55_11
# BB#12:                                # %opj_j2k_pre_write_tile.exit
                                        #   in Loop: Header=BB55_10 Depth=1
	leaq	1(%rbx), %r12
	movl	148(%r13), %r8d
	imull	144(%r13), %r8d
	movl	$4, %esi
	movl	$.L.str.171, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
	movl	%r12d, %ecx
	callq	opj_event_msg
	movl	$0, 12(%r13)
	imulq	$5680, %rbx, %rax       # imm = 0x1630
	movq	208(%r13), %rcx
	movq	288(%r13), %rdi
	movl	5592(%rcx,%rax), %eax
	movl	%eax, 12(%rdi)
	movl	$0, 8(%r13)
	movl	280(%r13), %esi
	callq	opj_tcd_init_encode_tile
	testl	%eax, %eax
	je	.LBB55_13
# BB#14:                                # %if.end.15
                                        #   in Loop: Header=BB55_10 Depth=1
	movq	288(%r13), %rdi
	callq	opj_tcd_get_encoded_tile_size
	movl	%eax, %ebx
	cmpl	44(%rsp), %ebx          # 4-byte Folded Reload
	jbe	.LBB55_15
# BB#22:                                # %cond.false.22
                                        #   in Loop: Header=BB55_10 Depth=1
	movl	%ebx, %esi
	movq	%r14, %rdi
	callq	realloc
	testq	%rax, %rax
	movl	%ebx, 44(%rsp)          # 4-byte Spill
	jne	.LBB55_16
	jmp	.LBB55_23
	.align	16, 0x90
.LBB55_15:                              #   in Loop: Header=BB55_10 Depth=1
	movq	%r14, %rax
.LBB55_16:                              # %if.end.30
                                        #   in Loop: Header=BB55_10 Depth=1
	movl	%ebx, 60(%rsp)          # 4-byte Spill
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	%r12, 48(%rsp)          # 8-byte Spill
	movq	288(%r13), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	32(%rax), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	cmpl	$0, 16(%rax)
	je	.LBB55_122
# BB#17:                                # %for.body.lr.ph.i
                                        #   in Loop: Header=BB55_10 Depth=1
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rsi
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rbx
	xorl	%ecx, %ecx
	movq	64(%rsp), %r9           # 8-byte Reload
	.align	16, 0x90
.LBB55_18:                              # %for.body.i
                                        #   Parent Loop BB55_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB55_27 Depth 3
                                        #         Child Loop BB55_46 Depth 4
                                        #         Child Loop BB55_51 Depth 4
                                        #         Child Loop BB55_54 Depth 4
                                        #       Child Loop BB55_37 Depth 3
                                        #         Child Loop BB55_58 Depth 4
                                        #         Child Loop BB55_63 Depth 4
                                        #         Child Loop BB55_66 Depth 4
                                        #       Child Loop BB55_72 Depth 3
                                        #         Child Loop BB55_78 Depth 4
                                        #         Child Loop BB55_82 Depth 4
                                        #       Child Loop BB55_87 Depth 3
                                        #         Child Loop BB55_93 Depth 4
                                        #         Child Loop BB55_97 Depth 4
                                        #       Child Loop BB55_102 Depth 3
                                        #         Child Loop BB55_110 Depth 4
                                        #         Child Loop BB55_115 Depth 4
                                        #         Child Loop BB55_118 Depth 4
	movq	%r9, 152(%rsp)          # 8-byte Spill
	movl	%ecx, 116(%rsp)         # 4-byte Spill
	movl	24(%rsi), %eax
	movl	%eax, %ebp
	shrl	$3, %ebp
	andl	$7, %eax
	cmpl	$1, %eax
	sbbl	$-1, %ebp
	cmpl	$3, %ebp
	movl	$4, %eax
	cmovel	%eax, %ebp
	movl	8(%rbx), %r12d
	movl	(%rbx), %r8d
	movl	4(%rbx), %r9d
	movl	12(%rbx), %r13d
	movl	(%rsi), %r15d
	movl	4(%rsi), %r14d
	movq	80(%rsp), %rcx          # 8-byte Reload
	movl	(%rcx), %edi
	movl	4(%rcx), %r11d
	leal	-1(%rdi,%r15), %eax
	cltd
	idivl	%r15d
	movl	%eax, %r10d
	leal	-1(%r11,%r14), %eax
	cltd
	idivl	%r14d
	movl	%eax, %r11d
	notl	%edi
	leal	(%rdi,%r15), %eax
	movl	%r9d, %edi
	addl	8(%rcx), %eax
	cltd
	idivl	%r15d
	movl	%r8d, %ecx
	subl	%r10d, %ecx
	movl	%edi, %edx
	subl	%r11d, %edx
	shlq	$2, %rcx
	addq	48(%rsi), %rcx
	imull	%eax, %edx
	leaq	(%rcx,%rdx,4), %r11
	movl	%r12d, %ecx
	subl	%r8d, %ecx
	movl	%ecx, 164(%rsp)         # 4-byte Spill
	movl	%r8d, %edx
	subl	%ecx, %eax
	cmpl	$4, %ebp
	movdqa	.LCPI55_0(%rip), %xmm2  # xmm2 = [255,255,255,255]
	je	.LBB55_100
# BB#19:                                # %for.body.i
                                        #   in Loop: Header=BB55_18 Depth=2
	cmpl	$2, %ebp
	movq	152(%rsp), %r9          # 8-byte Reload
	jne	.LBB55_20
# BB#69:                                # %sw.bb.59.i
                                        #   in Loop: Header=BB55_18 Depth=2
	movq	%rbx, 120(%rsp)         # 8-byte Spill
	cmpl	$0, 32(%rsi)
	je	.LBB55_85
# BB#70:                                # %for.cond.64.preheader.i
                                        #   in Loop: Header=BB55_18 Depth=2
	movq	%rsi, 128(%rsp)         # 8-byte Spill
	subl	%edi, %r13d
	movl	%r13d, %ecx
	movl	%edx, %r13d
	je	.LBB55_121
# BB#71:                                # %for.cond.68.preheader.lr.ph.i
                                        #   in Loop: Header=BB55_18 Depth=2
	movl	%eax, %r14d
	leal	-1(%r12), %r8d
	subl	%r13d, %r8d
	leaq	1(%r8), %r15
	movq	%r15, %r10
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%rax, %r10
	leaq	-8(%r10), %rax
	shrq	$3, %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	andl	$1, %eax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB55_72:                              # %for.cond.68.preheader.i
                                        #   Parent Loop BB55_10 Depth=1
                                        #     Parent Loop BB55_18 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB55_78 Depth 4
                                        #         Child Loop BB55_82 Depth 4
	cmpl	%r13d, %r12d
	je	.LBB55_84
# BB#73:                                # %for.body.71.lr.ph.i
                                        #   in Loop: Header=BB55_72 Depth=3
	xorl	%eax, %eax
	testq	%r10, %r10
	movq	%r9, %rdx
	movq	%r11, %rdi
	movl	$0, %esi
	je	.LBB55_80
# BB#74:                                # %vector.body256.preheader
                                        #   in Loop: Header=BB55_72 Depth=3
	cmpq	$0, 96(%rsp)            # 8-byte Folded Reload
	movl	$0, %eax
	jne	.LBB55_76
# BB#75:                                # %vector.body256.prol
                                        #   in Loop: Header=BB55_72 Depth=3
	movdqu	(%r11), %xmm0
	movdqu	16(%r11), %xmm1
	pshuflw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, (%r9)
	pshuflw	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, 8(%r9)
	movl	$8, %eax
.LBB55_76:                              # %vector.body256.preheader.split
                                        #   in Loop: Header=BB55_72 Depth=3
	leaq	(%r9,%r10,2), %rdx
	leaq	(%r11,%r10,4), %rdi
	cmpq	$0, 104(%rsp)           # 8-byte Folded Reload
	je	.LBB55_79
# BB#77:                                # %vector.body256.preheader.split.split
                                        #   in Loop: Header=BB55_72 Depth=3
	movq	%r10, %rsi
	subq	%rax, %rsi
	leaq	48(%r11,%rax,4), %rbx
	leaq	24(%r9,%rax,2), %rax
	.align	16, 0x90
.LBB55_78:                              # %vector.body256
                                        #   Parent Loop BB55_10 Depth=1
                                        #     Parent Loop BB55_18 Depth=2
                                        #       Parent Loop BB55_72 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movdqu	-48(%rbx), %xmm0
	movdqu	-32(%rbx), %xmm1
	pshuflw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, -24(%rax)
	pshuflw	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, -16(%rax)
	movdqu	-16(%rbx), %xmm0
	movdqu	(%rbx), %xmm1
	pshuflw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, -8(%rax)
	pshuflw	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, (%rax)
	addq	$64, %rbx
	addq	$32, %rax
	addq	$-16, %rsi
	jne	.LBB55_78
.LBB55_79:                              #   in Loop: Header=BB55_72 Depth=3
	movq	%r10, %rax
	movl	%r10d, %esi
.LBB55_80:                              # %middle.block257
                                        #   in Loop: Header=BB55_72 Depth=3
	addq	$2, %r9
	cmpq	%rax, %r15
	je	.LBB55_83
# BB#81:                                # %for.body.71.i.preheader
                                        #   in Loop: Header=BB55_72 Depth=3
	movl	164(%rsp), %eax         # 4-byte Reload
	subl	%esi, %eax
	.align	16, 0x90
.LBB55_82:                              # %for.body.71.i
                                        #   Parent Loop BB55_10 Depth=1
                                        #     Parent Loop BB55_18 Depth=2
                                        #       Parent Loop BB55_72 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movw	(%rdi), %si
	addq	$4, %rdi
	movw	%si, (%rdx)
	addq	$2, %rdx
	decl	%eax
	jne	.LBB55_82
.LBB55_83:                              # %for.cond.68.for.end.77_crit_edge.i
                                        #   in Loop: Header=BB55_72 Depth=3
	leaq	(%r9,%r8,2), %r9
	leaq	4(%r11,%r8,4), %r11
.LBB55_84:                              # %for.end.77.i
                                        #   in Loop: Header=BB55_72 Depth=3
	leaq	(%r11,%r14,4), %r11
	incl	%ebp
	cmpl	%ecx, %ebp
	jne	.LBB55_72
	jmp	.LBB55_121
	.align	16, 0x90
.LBB55_100:                             # %sw.bb.105.i
                                        #   in Loop: Header=BB55_18 Depth=2
	movq	%rbx, 120(%rsp)         # 8-byte Spill
	movq	%rsi, 128(%rsp)         # 8-byte Spill
	subl	%edi, %r13d
	movq	%r12, %rbx
	movl	%r13d, %r8d
	movl	%edx, %esi
	movq	152(%rsp), %r9          # 8-byte Reload
	je	.LBB55_121
# BB#101:                               # %for.cond.111.preheader.lr.ph.i
                                        #   in Loop: Header=BB55_18 Depth=2
	movl	%eax, %edx
	leal	-1(%rbx), %r12d
	subl	%esi, %r12d
	leaq	1(%r12), %rax
	movq	%rax, %r13
	movabsq	$8589934584, %rcx       # imm = 0x1FFFFFFF8
	andq	%rcx, %r13
	leaq	-8(%r13), %rcx
	shrq	$3, %rcx
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	andl	$1, %ecx
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	xorl	%r10d, %r10d
	.align	16, 0x90
.LBB55_102:                             # %for.cond.111.preheader.i
                                        #   Parent Loop BB55_10 Depth=1
                                        #     Parent Loop BB55_18 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB55_110 Depth 4
                                        #         Child Loop BB55_115 Depth 4
                                        #         Child Loop BB55_118 Depth 4
	cmpl	%esi, %ebx
	je	.LBB55_120
# BB#103:                               # %for.body.114.lr.ph.i
                                        #   in Loop: Header=BB55_102 Depth=3
	xorl	%ecx, %ecx
	testq	%r13, %r13
	movq	%r9, %rbp
	movq	%r11, %r15
	movl	$0, %edi
	je	.LBB55_112
# BB#104:                               # %vector.memcheck343
                                        #   in Loop: Header=BB55_102 Depth=3
	leaq	(%r11,%r12,4), %rdi
	xorl	%ecx, %ecx
	cmpq	%rdi, %r9
	ja	.LBB55_106
# BB#105:                               # %vector.memcheck343
                                        #   in Loop: Header=BB55_102 Depth=3
	leaq	(%r9,%r12,4), %rdi
	cmpq	%rdi, %r11
	movq	%r9, %rbp
	movq	%r11, %r15
	movl	$0, %edi
	jbe	.LBB55_112
.LBB55_106:                             # %vector.body322.preheader
                                        #   in Loop: Header=BB55_102 Depth=3
	movq	%rbx, %r14
	cmpq	$0, 96(%rsp)            # 8-byte Folded Reload
	movl	$0, %ebx
	jne	.LBB55_108
# BB#107:                               # %vector.body322.prol
                                        #   in Loop: Header=BB55_102 Depth=3
	movdqu	(%r11), %xmm0
	movdqu	16(%r11), %xmm1
	movdqu	%xmm0, (%r9)
	movdqu	%xmm1, 16(%r9)
	movl	$8, %ebx
.LBB55_108:                             # %vector.body322.preheader.split
                                        #   in Loop: Header=BB55_102 Depth=3
	leaq	(%r9,%r13,4), %rbp
	leaq	(%r11,%r13,4), %r15
	cmpq	$0, 104(%rsp)           # 8-byte Folded Reload
	je	.LBB55_111
# BB#109:                               # %vector.body322.preheader.split.split
                                        #   in Loop: Header=BB55_102 Depth=3
	movq	%r13, %rcx
	subq	%rbx, %rcx
	leaq	48(%r11,%rbx,4), %rdi
	leaq	48(%r9,%rbx,4), %rbx
	.align	16, 0x90
.LBB55_110:                             # %vector.body322
                                        #   Parent Loop BB55_10 Depth=1
                                        #     Parent Loop BB55_18 Depth=2
                                        #       Parent Loop BB55_102 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movups	-48(%rdi), %xmm0
	movups	-32(%rdi), %xmm1
	movups	%xmm0, -48(%rbx)
	movups	%xmm1, -32(%rbx)
	movdqu	-16(%rdi), %xmm0
	movdqu	(%rdi), %xmm1
	movdqu	%xmm0, -16(%rbx)
	movdqu	%xmm1, (%rbx)
	addq	$64, %rdi
	addq	$64, %rbx
	addq	$-16, %rcx
	jne	.LBB55_110
.LBB55_111:                             #   in Loop: Header=BB55_102 Depth=3
	movq	%r13, %rcx
	movl	%r13d, %edi
	movq	%r14, %rbx
.LBB55_112:                             # %middle.block323
                                        #   in Loop: Header=BB55_102 Depth=3
	addq	$4, %r9
	cmpq	%rcx, %rax
	je	.LBB55_119
# BB#113:                               # %for.body.114.i.preheader
                                        #   in Loop: Header=BB55_102 Depth=3
	movq	%r9, 152(%rsp)          # 8-byte Spill
	movq	%r13, %r9
	movl	%r8d, %r13d
	movq	%rbx, %r8
	movl	164(%rsp), %r14d        # 4-byte Reload
	subl	%edi, %r14d
	movl	%r12d, %ecx
	subl	%edi, %ecx
	testb	$7, %r14b
	je	.LBB55_116
# BB#114:                               # %for.body.114.i.prol.preheader
                                        #   in Loop: Header=BB55_102 Depth=3
	andl	$7, %r14d
	negl	%r14d
	.align	16, 0x90
.LBB55_115:                             # %for.body.114.i.prol
                                        #   Parent Loop BB55_10 Depth=1
                                        #     Parent Loop BB55_18 Depth=2
                                        #       Parent Loop BB55_102 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	(%r15), %ebx
	addq	$4, %r15
	movl	%ebx, (%rbp)
	addq	$4, %rbp
	incl	%edi
	incl	%r14d
	jne	.LBB55_115
.LBB55_116:                             # %for.body.114.i.preheader.split
                                        #   in Loop: Header=BB55_102 Depth=3
	cmpl	$7, %ecx
	movq	%r8, %rbx
	movl	%r13d, %r8d
	movq	%r9, %r13
	movq	152(%rsp), %r9          # 8-byte Reload
	jb	.LBB55_119
# BB#117:                               # %for.body.114.i.preheader.split.split
                                        #   in Loop: Header=BB55_102 Depth=3
	movl	164(%rsp), %ecx         # 4-byte Reload
	subl	%edi, %ecx
	.align	16, 0x90
.LBB55_118:                             # %for.body.114.i
                                        #   Parent Loop BB55_10 Depth=1
                                        #     Parent Loop BB55_18 Depth=2
                                        #       Parent Loop BB55_102 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	(%r15), %edi
	movl	%edi, (%rbp)
	movl	4(%r15), %edi
	movl	%edi, 4(%rbp)
	movl	8(%r15), %edi
	movl	%edi, 8(%rbp)
	movl	12(%r15), %edi
	movl	%edi, 12(%rbp)
	movl	16(%r15), %edi
	movl	%edi, 16(%rbp)
	movl	20(%r15), %edi
	movl	%edi, 20(%rbp)
	movl	24(%r15), %edi
	movl	%edi, 24(%rbp)
	movl	28(%r15), %edi
	movl	%edi, 28(%rbp)
	addq	$32, %r15
	addq	$32, %rbp
	addl	$-8, %ecx
	jne	.LBB55_118
.LBB55_119:                             # %for.cond.111.for.end.119_crit_edge.i
                                        #   in Loop: Header=BB55_102 Depth=3
	leaq	(%r9,%r12,4), %r9
	leaq	4(%r11,%r12,4), %r11
.LBB55_120:                             # %for.end.119.i
                                        #   in Loop: Header=BB55_102 Depth=3
	leaq	(%r11,%rdx,4), %r11
	incl	%r10d
	cmpl	%r8d, %r10d
	jne	.LBB55_102
	jmp	.LBB55_121
	.align	16, 0x90
.LBB55_20:                              # %for.body.i
                                        #   in Loop: Header=BB55_18 Depth=2
	cmpl	$1, %ebp
	jne	.LBB55_21
# BB#24:                                # %sw.bb.i
                                        #   in Loop: Header=BB55_18 Depth=2
	cmpl	$0, 32(%rsi)
	je	.LBB55_35
# BB#25:                                # %for.cond.25.preheader.i
                                        #   in Loop: Header=BB55_18 Depth=2
	movq	%rbx, 120(%rsp)         # 8-byte Spill
	movq	%rsi, 128(%rsp)         # 8-byte Spill
	subl	%edi, %r13d
	je	.LBB55_121
# BB#26:                                # %for.cond.28.preheader.lr.ph.i
                                        #   in Loop: Header=BB55_18 Depth=2
	movl	%eax, %r10d
	movq	%r12, %rbx
	leal	-1(%rbx), %r15d
	subl	%edx, %r15d
	leaq	1(%r15), %r14
	movq	%r14, 104(%rsp)         # 8-byte Spill
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%rax, %r14
	leaq	-8(%r14), %rax
	shrq	$3, %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	andl	$1, %eax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	xorl	%r8d, %r8d
	movl	%r13d, %r12d
	movl	%edx, %r13d
	.align	16, 0x90
.LBB55_27:                              # %for.cond.28.preheader.i
                                        #   Parent Loop BB55_10 Depth=1
                                        #     Parent Loop BB55_18 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB55_46 Depth 4
                                        #         Child Loop BB55_51 Depth 4
                                        #         Child Loop BB55_54 Depth 4
	cmpl	%r13d, %ebx
	je	.LBB55_56
# BB#28:                                # %for.body.30.lr.ph.i
                                        #   in Loop: Header=BB55_27 Depth=3
	xorl	%eax, %eax
	testq	%r14, %r14
	movq	%r9, %rdx
	movq	%r11, %rcx
	movl	$0, %ebp
	je	.LBB55_48
# BB#29:                                # %vector.memcheck133
                                        #   in Loop: Header=BB55_27 Depth=3
	leaq	(%r11,%r15,4), %rcx
	xorl	%eax, %eax
	cmpq	%rcx, %r9
	ja	.LBB55_31
# BB#30:                                # %vector.memcheck133
                                        #   in Loop: Header=BB55_27 Depth=3
	leaq	(%r9,%r15), %rcx
	cmpq	%rcx, %r11
	movq	%r9, %rdx
	movq	%r11, %rcx
	movl	$0, %ebp
	jbe	.LBB55_48
.LBB55_31:                              # %vector.body114.preheader
                                        #   in Loop: Header=BB55_27 Depth=3
	cmpq	$0, 72(%rsp)            # 8-byte Folded Reload
	movl	$0, %eax
	jne	.LBB55_33
# BB#32:                                # %vector.body114.prol
                                        #   in Loop: Header=BB55_27 Depth=3
	movdqu	(%r11), %xmm0
	movdqu	16(%r11), %xmm1
	pand	%xmm2, %xmm0
	packuswb	%xmm0, %xmm0
	packuswb	%xmm0, %xmm0
	movd	%xmm0, (%r9)
	pand	%xmm2, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm1
	movd	%xmm1, 4(%r9)
	movl	$8, %eax
.LBB55_33:                              # %vector.body114.preheader.split
                                        #   in Loop: Header=BB55_27 Depth=3
	leaq	(%r9,%r14), %rdx
	leaq	(%r11,%r14,4), %rcx
	cmpq	$0, 96(%rsp)            # 8-byte Folded Reload
	je	.LBB55_34
# BB#45:                                # %vector.body114.preheader.split.split
                                        #   in Loop: Header=BB55_27 Depth=3
	movq	%r10, %rsi
	movq	%r14, %rdi
	subq	%rax, %rdi
	leaq	48(%r11,%rax,4), %rbp
	leaq	12(%r9,%rax), %r10
	.align	16, 0x90
.LBB55_46:                              # %vector.body114
                                        #   Parent Loop BB55_10 Depth=1
                                        #     Parent Loop BB55_18 Depth=2
                                        #       Parent Loop BB55_27 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movdqu	-48(%rbp), %xmm0
	movdqu	-32(%rbp), %xmm1
	pand	%xmm2, %xmm0
	packuswb	%xmm0, %xmm0
	packuswb	%xmm0, %xmm0
	movd	%xmm0, -12(%r10)
	pand	%xmm2, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm1
	movd	%xmm1, -8(%r10)
	movdqu	-16(%rbp), %xmm0
	movdqu	(%rbp), %xmm1
	pand	%xmm2, %xmm0
	packuswb	%xmm0, %xmm0
	packuswb	%xmm0, %xmm0
	movd	%xmm0, -4(%r10)
	pand	%xmm2, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm1
	movd	%xmm1, (%r10)
	addq	$64, %rbp
	addq	$16, %r10
	addq	$-16, %rdi
	jne	.LBB55_46
# BB#47:                                #   in Loop: Header=BB55_27 Depth=3
	movq	%r14, %rax
	movl	%r14d, %ebp
	movq	%rsi, %r10
	jmp	.LBB55_48
.LBB55_34:                              #   in Loop: Header=BB55_27 Depth=3
	movq	%r14, %rax
	movl	%r14d, %ebp
	.align	16, 0x90
.LBB55_48:                              # %middle.block115
                                        #   in Loop: Header=BB55_27 Depth=3
	movq	%rbx, %rsi
	addq	$4, %r11
	cmpq	%rax, 104(%rsp)         # 8-byte Folded Reload
	je	.LBB55_55
# BB#49:                                # %for.body.30.i.preheader
                                        #   in Loop: Header=BB55_27 Depth=3
	movl	164(%rsp), %eax         # 4-byte Reload
	subl	%ebp, %eax
	movl	%r15d, %edi
	subl	%ebp, %edi
	testb	$7, %al
	je	.LBB55_52
# BB#50:                                # %for.body.30.i.prol.preheader
                                        #   in Loop: Header=BB55_27 Depth=3
	andl	$7, %eax
	negl	%eax
	.align	16, 0x90
.LBB55_51:                              # %for.body.30.i.prol
                                        #   Parent Loop BB55_10 Depth=1
                                        #     Parent Loop BB55_18 Depth=2
                                        #       Parent Loop BB55_27 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movb	(%rcx), %bl
	movb	%bl, (%rdx)
	incq	%rdx
	addq	$4, %rcx
	incl	%ebp
	incl	%eax
	jne	.LBB55_51
.LBB55_52:                              # %for.body.30.i.preheader.split
                                        #   in Loop: Header=BB55_27 Depth=3
	cmpl	$7, %edi
	jb	.LBB55_55
# BB#53:                                # %for.body.30.i.preheader.split.split
                                        #   in Loop: Header=BB55_27 Depth=3
	movl	164(%rsp), %eax         # 4-byte Reload
	subl	%ebp, %eax
	.align	16, 0x90
.LBB55_54:                              # %for.body.30.i
                                        #   Parent Loop BB55_10 Depth=1
                                        #     Parent Loop BB55_18 Depth=2
                                        #       Parent Loop BB55_27 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movb	(%rcx), %bl
	movb	%bl, (%rdx)
	movb	4(%rcx), %bl
	movb	%bl, 1(%rdx)
	movb	8(%rcx), %bl
	movb	%bl, 2(%rdx)
	movb	12(%rcx), %bl
	movb	%bl, 3(%rdx)
	movb	16(%rcx), %bl
	movb	%bl, 4(%rdx)
	movb	20(%rcx), %bl
	movb	%bl, 5(%rdx)
	movb	24(%rcx), %bl
	movb	%bl, 6(%rdx)
	movb	28(%rcx), %bl
	movb	%bl, 7(%rdx)
	addq	$32, %rcx
	addq	$8, %rdx
	addl	$-8, %eax
	jne	.LBB55_54
.LBB55_55:                              # %for.cond.28.for.end_crit_edge.i
                                        #   in Loop: Header=BB55_27 Depth=3
	leaq	(%r11,%r15,4), %r11
	leaq	1(%r9,%r15), %r9
	movq	%rsi, %rbx
.LBB55_56:                              # %for.end.i
                                        #   in Loop: Header=BB55_27 Depth=3
	leaq	(%r11,%r10,4), %r11
	incl	%r8d
	cmpl	%r12d, %r8d
	jne	.LBB55_27
	jmp	.LBB55_121
.LBB55_21:                              #   in Loop: Header=BB55_18 Depth=2
	movq	%rbx, 120(%rsp)         # 8-byte Spill
	movq	%rsi, 128(%rsp)         # 8-byte Spill
	jmp	.LBB55_121
.LBB55_85:                              # %for.cond.84.preheader.i
                                        #   in Loop: Header=BB55_18 Depth=2
	movq	%rsi, 128(%rsp)         # 8-byte Spill
	subl	%edi, %r13d
	movl	%r13d, %ecx
	movl	%edx, %r13d
	je	.LBB55_121
# BB#86:                                # %for.cond.88.preheader.lr.ph.i
                                        #   in Loop: Header=BB55_18 Depth=2
	movl	%eax, %r14d
	leal	-1(%r12), %r8d
	subl	%r13d, %r8d
	leaq	1(%r8), %r15
	movq	%r15, %r10
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%rax, %r10
	leaq	-8(%r10), %rax
	shrq	$3, %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	andl	$1, %eax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB55_87:                              # %for.cond.88.preheader.i
                                        #   Parent Loop BB55_10 Depth=1
                                        #     Parent Loop BB55_18 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB55_93 Depth 4
                                        #         Child Loop BB55_97 Depth 4
	cmpl	%r13d, %r12d
	je	.LBB55_99
# BB#88:                                # %for.body.91.lr.ph.i
                                        #   in Loop: Header=BB55_87 Depth=3
	xorl	%eax, %eax
	testq	%r10, %r10
	movq	%r9, %rdx
	movq	%r11, %rdi
	movl	$0, %esi
	je	.LBB55_95
# BB#89:                                # %vector.body190.preheader
                                        #   in Loop: Header=BB55_87 Depth=3
	cmpq	$0, 96(%rsp)            # 8-byte Folded Reload
	movl	$0, %eax
	jne	.LBB55_91
# BB#90:                                # %vector.body190.prol
                                        #   in Loop: Header=BB55_87 Depth=3
	movdqu	(%r11), %xmm0
	movdqu	16(%r11), %xmm1
	pshuflw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, (%r9)
	pshuflw	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, 8(%r9)
	movl	$8, %eax
.LBB55_91:                              # %vector.body190.preheader.split
                                        #   in Loop: Header=BB55_87 Depth=3
	leaq	(%r9,%r10,2), %rdx
	leaq	(%r11,%r10,4), %rdi
	cmpq	$0, 104(%rsp)           # 8-byte Folded Reload
	je	.LBB55_94
# BB#92:                                # %vector.body190.preheader.split.split
                                        #   in Loop: Header=BB55_87 Depth=3
	movq	%r10, %rsi
	subq	%rax, %rsi
	leaq	48(%r11,%rax,4), %rbx
	leaq	24(%r9,%rax,2), %rax
	.align	16, 0x90
.LBB55_93:                              # %vector.body190
                                        #   Parent Loop BB55_10 Depth=1
                                        #     Parent Loop BB55_18 Depth=2
                                        #       Parent Loop BB55_87 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movdqu	-48(%rbx), %xmm0
	movdqu	-32(%rbx), %xmm1
	pshuflw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, -24(%rax)
	pshuflw	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, -16(%rax)
	movdqu	-16(%rbx), %xmm0
	movdqu	(%rbx), %xmm1
	pshuflw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, -8(%rax)
	pshuflw	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, (%rax)
	addq	$64, %rbx
	addq	$32, %rax
	addq	$-16, %rsi
	jne	.LBB55_93
.LBB55_94:                              #   in Loop: Header=BB55_87 Depth=3
	movq	%r10, %rax
	movl	%r10d, %esi
.LBB55_95:                              # %middle.block191
                                        #   in Loop: Header=BB55_87 Depth=3
	addq	$2, %r9
	cmpq	%rax, %r15
	je	.LBB55_98
# BB#96:                                # %for.body.91.i.preheader
                                        #   in Loop: Header=BB55_87 Depth=3
	movl	164(%rsp), %eax         # 4-byte Reload
	subl	%esi, %eax
	.align	16, 0x90
.LBB55_97:                              # %for.body.91.i
                                        #   Parent Loop BB55_10 Depth=1
                                        #     Parent Loop BB55_18 Depth=2
                                        #       Parent Loop BB55_87 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movw	(%rdi), %si
	addq	$4, %rdi
	movw	%si, (%rdx)
	addq	$2, %rdx
	decl	%eax
	jne	.LBB55_97
.LBB55_98:                              # %for.cond.88.for.end.98_crit_edge.i
                                        #   in Loop: Header=BB55_87 Depth=3
	leaq	(%r9,%r8,2), %r9
	leaq	4(%r11,%r8,4), %r11
.LBB55_99:                              # %for.end.98.i
                                        #   in Loop: Header=BB55_87 Depth=3
	leaq	(%r11,%r14,4), %r11
	incl	%ebp
	cmpl	%ecx, %ebp
	jne	.LBB55_87
	jmp	.LBB55_121
.LBB55_35:                              # %for.cond.38.preheader.i
                                        #   in Loop: Header=BB55_18 Depth=2
	movq	%rbx, 120(%rsp)         # 8-byte Spill
	movq	%rsi, 128(%rsp)         # 8-byte Spill
	subl	%edi, %r13d
	je	.LBB55_121
# BB#36:                                # %for.cond.42.preheader.lr.ph.i
                                        #   in Loop: Header=BB55_18 Depth=2
	movl	%eax, %r10d
	movq	%r12, %rbx
	leal	-1(%rbx), %r15d
	subl	%edx, %r15d
	leaq	1(%r15), %r14
	movq	%r14, 104(%rsp)         # 8-byte Spill
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%rax, %r14
	leaq	-8(%r14), %rax
	shrq	$3, %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	andl	$1, %eax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	xorl	%r8d, %r8d
	movl	%r13d, %r12d
	movl	%edx, %r13d
	.align	16, 0x90
.LBB55_37:                              # %for.cond.42.preheader.i
                                        #   Parent Loop BB55_10 Depth=1
                                        #     Parent Loop BB55_18 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB55_58 Depth 4
                                        #         Child Loop BB55_63 Depth 4
                                        #         Child Loop BB55_66 Depth 4
	cmpl	%r13d, %ebx
	je	.LBB55_68
# BB#38:                                # %for.body.45.lr.ph.i
                                        #   in Loop: Header=BB55_37 Depth=3
	xorl	%eax, %eax
	testq	%r14, %r14
	movq	%r9, %rdx
	movq	%r11, %rcx
	movl	$0, %ebp
	je	.LBB55_60
# BB#39:                                # %vector.memcheck
                                        #   in Loop: Header=BB55_37 Depth=3
	leaq	(%r11,%r15,4), %rcx
	xorl	%eax, %eax
	cmpq	%rcx, %r9
	ja	.LBB55_41
# BB#40:                                # %vector.memcheck
                                        #   in Loop: Header=BB55_37 Depth=3
	leaq	(%r9,%r15), %rcx
	cmpq	%rcx, %r11
	movq	%r9, %rdx
	movq	%r11, %rcx
	movl	$0, %ebp
	jbe	.LBB55_60
.LBB55_41:                              # %vector.body.preheader
                                        #   in Loop: Header=BB55_37 Depth=3
	cmpq	$0, 72(%rsp)            # 8-byte Folded Reload
	movl	$0, %edi
	jne	.LBB55_43
# BB#42:                                # %vector.body.prol
                                        #   in Loop: Header=BB55_37 Depth=3
	movdqu	(%r11), %xmm0
	movdqu	16(%r11), %xmm1
	pand	%xmm2, %xmm0
	packuswb	%xmm0, %xmm0
	packuswb	%xmm0, %xmm0
	movd	%xmm0, (%r9)
	pand	%xmm2, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm1
	movd	%xmm1, 4(%r9)
	movl	$8, %edi
.LBB55_43:                              # %vector.body.preheader.split
                                        #   in Loop: Header=BB55_37 Depth=3
	leaq	(%r9,%r14), %rdx
	leaq	(%r11,%r14,4), %rcx
	cmpq	$0, 96(%rsp)            # 8-byte Folded Reload
	je	.LBB55_44
# BB#57:                                # %vector.body.preheader.split.split
                                        #   in Loop: Header=BB55_37 Depth=3
	movq	%r10, %rsi
	movq	%r14, %rax
	subq	%rdi, %rax
	leaq	48(%r11,%rdi,4), %rbp
	leaq	12(%r9,%rdi), %r10
	.align	16, 0x90
.LBB55_58:                              # %vector.body
                                        #   Parent Loop BB55_10 Depth=1
                                        #     Parent Loop BB55_18 Depth=2
                                        #       Parent Loop BB55_37 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movdqu	-48(%rbp), %xmm0
	movdqu	-32(%rbp), %xmm1
	pand	%xmm2, %xmm0
	packuswb	%xmm0, %xmm0
	packuswb	%xmm0, %xmm0
	movd	%xmm0, -12(%r10)
	pand	%xmm2, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm1
	movd	%xmm1, -8(%r10)
	movdqu	-16(%rbp), %xmm0
	movdqu	(%rbp), %xmm1
	pand	%xmm2, %xmm0
	packuswb	%xmm0, %xmm0
	packuswb	%xmm0, %xmm0
	movd	%xmm0, -4(%r10)
	pand	%xmm2, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm1
	movd	%xmm1, (%r10)
	addq	$64, %rbp
	addq	$16, %r10
	addq	$-16, %rax
	jne	.LBB55_58
# BB#59:                                #   in Loop: Header=BB55_37 Depth=3
	movq	%r14, %rax
	movl	%r14d, %ebp
	movq	%rsi, %r10
	jmp	.LBB55_60
.LBB55_44:                              #   in Loop: Header=BB55_37 Depth=3
	movq	%r14, %rax
	movl	%r14d, %ebp
	.align	16, 0x90
.LBB55_60:                              # %middle.block
                                        #   in Loop: Header=BB55_37 Depth=3
	movq	%rbx, %rsi
	addq	$4, %r11
	cmpq	%rax, 104(%rsp)         # 8-byte Folded Reload
	je	.LBB55_67
# BB#61:                                # %for.body.45.i.preheader
                                        #   in Loop: Header=BB55_37 Depth=3
	movl	164(%rsp), %edi         # 4-byte Reload
	subl	%ebp, %edi
	movl	%r15d, %eax
	subl	%ebp, %eax
	testb	$7, %dil
	je	.LBB55_64
# BB#62:                                # %for.body.45.i.prol.preheader
                                        #   in Loop: Header=BB55_37 Depth=3
	andl	$7, %edi
	negl	%edi
	.align	16, 0x90
.LBB55_63:                              # %for.body.45.i.prol
                                        #   Parent Loop BB55_10 Depth=1
                                        #     Parent Loop BB55_18 Depth=2
                                        #       Parent Loop BB55_37 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movb	(%rcx), %bl
	movb	%bl, (%rdx)
	incq	%rdx
	addq	$4, %rcx
	incl	%ebp
	incl	%edi
	jne	.LBB55_63
.LBB55_64:                              # %for.body.45.i.preheader.split
                                        #   in Loop: Header=BB55_37 Depth=3
	cmpl	$7, %eax
	jb	.LBB55_67
# BB#65:                                # %for.body.45.i.preheader.split.split
                                        #   in Loop: Header=BB55_37 Depth=3
	movl	164(%rsp), %eax         # 4-byte Reload
	subl	%ebp, %eax
	.align	16, 0x90
.LBB55_66:                              # %for.body.45.i
                                        #   Parent Loop BB55_10 Depth=1
                                        #     Parent Loop BB55_18 Depth=2
                                        #       Parent Loop BB55_37 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movb	(%rcx), %bl
	movb	%bl, (%rdx)
	movb	4(%rcx), %bl
	movb	%bl, 1(%rdx)
	movb	8(%rcx), %bl
	movb	%bl, 2(%rdx)
	movb	12(%rcx), %bl
	movb	%bl, 3(%rdx)
	movb	16(%rcx), %bl
	movb	%bl, 4(%rdx)
	movb	20(%rcx), %bl
	movb	%bl, 5(%rdx)
	movb	24(%rcx), %bl
	movb	%bl, 6(%rdx)
	movb	28(%rcx), %bl
	movb	%bl, 7(%rdx)
	addq	$32, %rcx
	addq	$8, %rdx
	addl	$-8, %eax
	jne	.LBB55_66
.LBB55_67:                              # %for.cond.42.for.end.52_crit_edge.i
                                        #   in Loop: Header=BB55_37 Depth=3
	leaq	(%r11,%r15,4), %r11
	leaq	1(%r9,%r15), %r9
	movq	%rsi, %rbx
.LBB55_68:                              # %for.end.52.i
                                        #   in Loop: Header=BB55_37 Depth=3
	leaq	(%r11,%r10,4), %r11
	incl	%r8d
	cmpl	%r12d, %r8d
	jne	.LBB55_37
	.align	16, 0x90
.LBB55_121:                             # %sw.epilog.i
                                        #   in Loop: Header=BB55_18 Depth=2
	movq	128(%rsp), %rsi         # 8-byte Reload
	addq	$64, %rsi
	movq	120(%rsp), %rbx         # 8-byte Reload
	addq	$56, %rbx
	movl	116(%rsp), %ecx         # 4-byte Reload
	incl	%ecx
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	32(%rax), %rax
	cmpl	16(%rax), %ecx
	jb	.LBB55_18
.LBB55_122:                             # %opj_j2k_get_tile_data.exit
                                        #   in Loop: Header=BB55_10 Depth=1
	movq	16(%rsp), %r13          # 8-byte Reload
	movq	%r13, %rdi
	movq	64(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rsi
	movl	60(%rsp), %edx          # 4-byte Reload
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	32(%rsp), %r15          # 8-byte Reload
	movq	%r15, %r8
	callq	opj_j2k_post_write_tile
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB55_123
# BB#9:                                 # %for.cond
                                        #   in Loop: Header=BB55_10 Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	cmpq	8(%rsp), %rax           # 8-byte Folded Reload
	movq	%rax, %rbx
	movq	%rbp, %r14
	jb	.LBB55_10
	jmp	.LBB55_7
.LBB55_4:                               # %if.then
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.49, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	opj_event_msg
	jmp	.LBB55_123
.LBB55_6:
	movq	%r14, %rbp
.LBB55_7:                               # %for.end
	movq	%rbp, %rdi
	callq	free
	movl	$1, %ebx
	jmp	.LBB55_123
.LBB55_11:                              # %opj_j2k_pre_write_tile.exit.thread
	movl	$1, %esi
	movl	$.L.str.170, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	opj_event_msg
.LBB55_13:                              # %if.then.14
	movq	%r14, %rdi
	callq	free
	xorl	%ebx, %ebx
	jmp	.LBB55_123
.LBB55_23:                              # %cleanup
	movq	%r14, %rdi
	callq	free
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.49, %edx
	xorl	%eax, %eax
	movq	32(%rsp), %rdi          # 8-byte Reload
	callq	opj_event_msg
.LBB55_123:                             # %cleanup.36
	movl	%ebx, %eax
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB55_124:                             # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$9122, %edx             # imm = 0x23A2
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_encode, %ecx
	callq	__assert_fail
.LBB55_125:                             # %cond.false.3
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$9123, %edx             # imm = 0x23A3
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_encode, %ecx
	callq	__assert_fail
.LBB55_126:                             # %cond.false.7
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$9124, %edx             # imm = 0x23A4
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_encode, %ecx
	callq	__assert_fail
.Lfunc_end55:
	.size	opj_j2k_encode, .Lfunc_end55-opj_j2k_encode
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_post_write_tile,@function
opj_j2k_post_write_tile:                # @opj_j2k_post_write_tile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp519:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp520:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp521:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp522:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp523:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp524:
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
.Ltmp525:
	.cfi_def_cfa_offset 192
.Ltmp526:
	.cfi_offset %rbx, -56
.Ltmp527:
	.cfi_offset %r12, -48
.Ltmp528:
	.cfi_offset %r13, -40
.Ltmp529:
	.cfi_offset %r14, -32
.Ltmp530:
	.cfi_offset %r15, -24
.Ltmp531:
	.cfi_offset %rbp, -16
	movq	%r8, %r13
	movq	%r13, 72(%rsp)          # 8-byte Spill
	movq	%rcx, 112(%rsp)         # 8-byte Spill
	movq	48(%rdi), %r12
	testq	%r12, %r12
	je	.LBB56_35
# BB#1:                                 # %cond.end
	movq	%rdi, %rax
	movq	288(%rax), %rdi
	movl	56(%rax), %r14d
	movq	%rax, %rbp
	callq	opj_tcd_copy_tile_data
	testl	%eax, %eax
	je	.LBB56_2
# BB#3:                                 # %if.end
	movq	%rbp, 104(%rsp)         # 8-byte Spill
	movq	288(%rbp), %rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movl	$0, 16(%rax)
	movl	$0, 8(%rbp)
	movl	$0, 128(%rsp)
	leaq	128(%rsp), %rdx
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movq	112(%rsp), %rcx         # 8-byte Reload
	movq	%r13, %r8
	callq	opj_j2k_write_sot
	movl	128(%rsp), %ebx
	leaq	(%rbx,%r12), %r15
	movl	%r14d, 100(%rsp)        # 4-byte Spill
	subl	%ebx, %r14d
	cmpl	$0, 216(%rbp)
	jne	.LBB56_10
# BB#4:                                 # %for.cond.preheader.i
	movq	%rbx, %rbp
	movq	%r12, 88(%rsp)          # 8-byte Spill
	movq	%r13, %rbx
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	96(%rax), %rax
	cmpl	$2, 16(%rax)
	jb	.LBB56_7
# BB#5:
	movl	$1, %r13d
	leaq	128(%rsp), %r12
	.align	16, 0x90
.LBB56_6:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, 128(%rsp)
	movq	104(%rsp), %rdi         # 8-byte Reload
	movl	%r13d, %esi
	movq	%r15, %rdx
	movq	%r12, %rcx
	movq	%rbx, %r8
	callq	opj_j2k_write_coc_in_memory
	movl	128(%rsp), %eax
	leal	(%rbp,%rax), %ebp
	addq	%rax, %r15
	subl	%eax, %r14d
	movl	$0, 128(%rsp)
	movq	104(%rsp), %rdi         # 8-byte Reload
	movl	%r13d, %esi
	movq	%r15, %rdx
	movq	%r12, %rcx
	movq	%rbx, %r8
	callq	opj_j2k_write_qcc_in_memory
	movl	128(%rsp), %eax
	addl	%eax, %ebp
	addq	%rax, %r15
	subl	%eax, %r14d
	incl	%r13d
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	96(%rax), %rax
	cmpl	16(%rax), %r13d
	jb	.LBB56_6
.LBB56_7:                               # %for.end.i
	movq	104(%rsp), %rcx         # 8-byte Reload
	movl	280(%rcx), %eax
	movq	208(%rcx), %rcx
	imulq	$5680, %rax, %rax       # imm = 0x1630
	cmpl	$0, 420(%rcx,%rax)
	je	.LBB56_8
# BB#9:                                 # %if.then.13.i
	movl	$0, 128(%rsp)
	leaq	128(%rsp), %rdx
	movq	104(%rsp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	movq	%rbx, %r13
	movq	%r13, %rcx
	callq	opj_j2k_write_poc_in_memory
	movl	128(%rsp), %eax
	movq	%rbp, %rbx
	leal	(%rbx,%rax), %ebx
	addq	%rax, %r15
	subl	%eax, %r14d
	movq	88(%rsp), %r12          # 8-byte Reload
.LBB56_10:                              # %if.end.19.i
	movq	120(%rsp), %rsi         # 8-byte Reload
.LBB56_11:                              # %if.end.19.i
	movl	$0, 128(%rsp)
	movq	%r13, (%rsp)
	leaq	128(%rsp), %rcx
	movq	104(%rsp), %rdi         # 8-byte Reload
	movq	%r15, %rdx
	movl	%r14d, %r8d
	movq	112(%rsp), %r9          # 8-byte Reload
	callq	opj_j2k_write_sod
	testl	%eax, %eax
	je	.LBB56_12
# BB#13:                                # %if.end.23.i
	addl	128(%rsp), %ebx
	leaq	6(%r12), %rdi
	movl	$4, %edx
	movl	%ebx, %esi
	callq	opj_write_bytes_LE
	movq	104(%rsp), %rax         # 8-byte Reload
	cmpl	$0, 216(%rax)
	je	.LBB56_14
# BB#15:                                # %if.then.30.i
	movq	104(%rsp), %rbp         # 8-byte Reload
	movq	32(%rbp), %rdi
	leaq	280(%rbp), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movl	280(%rbp), %esi
	movl	$1, %edx
	callq	opj_write_bytes_LE
	movq	32(%rbp), %rdi
	incq	%rdi
	movq	%rdi, 32(%rbp)
	movl	$4, %edx
	movl	%ebx, %esi
	callq	opj_write_bytes_LE
	addq	$4, 32(%rbp)
	jmp	.LBB56_16
.LBB56_2:                               # %if.then
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.173, %edx
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	opj_event_msg
	jmp	.LBB56_34
.LBB56_12:                              # %opj_j2k_write_first_tile_part.exit.thread51
	xorl	%ebx, %ebx
	jmp	.LBB56_34
.LBB56_14:                              # %if.end.23.i.if.end.11_crit_edge
	movq	104(%rsp), %rax         # 8-byte Reload
	leaq	280(%rax), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
.LBB56_16:                              # %if.end.11
	movl	100(%rsp), %ecx         # 4-byte Reload
	movq	%r13, 72(%rsp)          # 8-byte Spill
	movl	%ebx, %eax
	addq	%rax, %r12
	subl	%ebx, %ecx
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	movl	%ecx, %ebx
	movq	104(%rsp), %r15         # 8-byte Reload
	movq	288(%r15), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	leaq	112(%r15), %rdi
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	movq	208(%r15), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movl	280(%r15), %edx
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	callq	opj_j2k_get_num_tp
	movl	%eax, 88(%rsp)          # 4-byte Spill
	cmpl	$2, %eax
	jb	.LBB56_17
# BB#20:                                # %for.body.lr.ph.i
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movl	%ebx, %ebp
	.align	16, 0x90
.LBB56_21:                              # %for.body.i.39
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, 100(%rsp)         # 4-byte Spill
	movl	%ecx, 8(%r15)
	movl	$0, 132(%rsp)
	movq	%r15, %rdi
	movq	%r12, %rsi
	leaq	132(%rsp), %r13
	movq	%r13, %rdx
	movq	112(%rsp), %rcx         # 8-byte Reload
	movq	72(%rsp), %r15          # 8-byte Reload
	movq	%r15, %r8
	callq	opj_j2k_write_sot
	movl	132(%rsp), %ebx
	leaq	(%rbx,%r12), %r14
	subl	%ebx, %ebp
	movl	$0, 132(%rsp)
	movq	%r15, (%rsp)
	movq	104(%rsp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movq	64(%rsp), %rsi          # 8-byte Reload
	movq	%r14, %rdx
	movq	%r13, %rcx
	movl	%ebp, %r8d
	movq	112(%rsp), %r9          # 8-byte Reload
	callq	opj_j2k_write_sod
	testl	%eax, %eax
	je	.LBB56_36
# BB#22:                                # %if.end.9.i
                                        #   in Loop: Header=BB56_21 Depth=1
	movq	120(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rbx), %eax
	movl	132(%rsp), %ebx
	leal	(%rbx,%rax), %ecx
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	leal	(%rax,%rcx), %r13d
	addq	$6, %r12
	movl	$4, %edx
	movq	%r12, %rdi
	movl	%r13d, %esi
	callq	opj_write_bytes_LE
	cmpl	$0, 216(%r15)
	je	.LBB56_24
# BB#23:                                # %if.then.18.i
                                        #   in Loop: Header=BB56_21 Depth=1
	movq	32(%r15), %rdi
	movl	280(%r15), %esi
	movl	$1, %edx
	callq	opj_write_bytes_LE
	movq	32(%r15), %rdi
	incq	%rdi
	movq	%rdi, 32(%r15)
	movl	$4, %edx
	movl	%r13d, %esi
	callq	opj_write_bytes_LE
	addq	$4, 32(%r15)
.LBB56_24:                              # %if.end.19.i.45
                                        #   in Loop: Header=BB56_21 Depth=1
	addq	%rbx, %r14
	subl	%ebx, %ebp
	incl	12(%r15)
	movl	100(%rsp), %ecx         # 4-byte Reload
	incl	%ecx
	cmpl	88(%rsp), %ecx          # 4-byte Folded Reload
	movq	%r14, %r12
	jb	.LBB56_21
	jmp	.LBB56_18
.LBB56_17:
	xorl	%eax, %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movq	%r12, %r14
	movl	%ebx, %ebp
.LBB56_18:                              # %for.cond.23.preheader.i
	imulq	$5680, 56(%rsp), %rax   # 8-byte Folded Reload
                                        # imm = 0x1630
	movq	80(%rsp), %rcx          # 8-byte Reload
	cmpl	$0, 420(%rcx,%rax)
	je	.LBB56_19
# BB#25:                                # %for.body.25.lr.ph.i
	movq	%r14, %r13
	leaq	420(%rcx,%rax), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	$1, %ecx
	leaq	132(%rsp), %r14
	movl	%ebp, %ebx
	movq	72(%rsp), %r12          # 8-byte Reload
.LBB56_26:                              # %for.body.25.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB56_27 Depth 2
	movl	%ecx, 32(%rsp)          # 4-byte Spill
	movq	64(%rsp), %rax          # 8-byte Reload
	movl	%ecx, 16(%rax)
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %edx
	movq	40(%rsp), %rdi          # 8-byte Reload
	movl	%ecx, %esi
	callq	opj_j2k_get_num_tp
	movl	%eax, 56(%rsp)          # 4-byte Spill
	xorl	%ecx, %ecx
	testl	%eax, %eax
	je	.LBB56_31
	.align	16, 0x90
.LBB56_27:                              # %for.body.30.i
                                        #   Parent Loop BB56_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, 88(%rsp)          # 4-byte Spill
	movl	%ecx, 8(%r15)
	movl	$0, 132(%rsp)
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	movq	112(%rsp), %rcx         # 8-byte Reload
	movq	%r12, %r8
	callq	opj_j2k_write_sot
	movl	132(%rsp), %ebp
	leaq	(%rbp,%r13), %rdx
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	subl	%ebp, %ebx
	movl	%ebx, 100(%rsp)         # 4-byte Spill
	movl	$0, 132(%rsp)
	movq	%r12, (%rsp)
	movq	%r15, %rdi
	movq	64(%rsp), %rsi          # 8-byte Reload
	movq	%r14, %rcx
	movl	%ebx, %r8d
	movq	112(%rsp), %r9          # 8-byte Reload
	callq	opj_j2k_write_sod
	testl	%eax, %eax
	je	.LBB56_36
# BB#28:                                # %if.end.46.i
                                        #   in Loop: Header=BB56_27 Depth=2
	movq	120(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rbp), %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movl	132(%rsp), %r12d
	leal	(%r12,%rbp), %ebx
	addq	$6, %r13
	movl	$4, %edx
	movq	%r13, %rdi
	movl	%ebx, %esi
	callq	opj_write_bytes_LE
	cmpl	$0, 216(%r15)
	je	.LBB56_30
# BB#29:                                # %if.then.57.i
                                        #   in Loop: Header=BB56_27 Depth=2
	movq	32(%r15), %rdi
	movl	280(%r15), %esi
	movl	$1, %edx
	callq	opj_write_bytes_LE
	movq	32(%r15), %rdi
	incq	%rdi
	movq	%rdi, 32(%r15)
	movl	$4, %edx
	movl	%ebx, %esi
	callq	opj_write_bytes_LE
	addq	$4, 32(%r15)
.LBB56_30:                              # %if.end.58.i
                                        #   in Loop: Header=BB56_27 Depth=2
	movq	120(%rsp), %rax         # 8-byte Reload
	addl	%r12d, %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movq	80(%rsp), %r13          # 8-byte Reload
	addq	%r12, %r13
	movl	100(%rsp), %ebx         # 4-byte Reload
	subl	%r12d, %ebx
	incl	12(%r15)
	movl	88(%rsp), %ecx          # 4-byte Reload
	incl	%ecx
	cmpl	56(%rsp), %ecx          # 4-byte Folded Reload
	movq	72(%rsp), %r12          # 8-byte Reload
	jb	.LBB56_27
.LBB56_31:                              # %for.inc.66.i
                                        #   in Loop: Header=BB56_26 Depth=1
	movl	32(%rsp), %ecx          # 4-byte Reload
	incl	%ecx
	movq	24(%rsp), %rax          # 8-byte Reload
	cmpl	(%rax), %ecx
	jbe	.LBB56_26
	jmp	.LBB56_32
.LBB56_36:                              # %opj_j2k_write_all_tile_parts.exit.thread
	xorl	%ebx, %ebx
	jmp	.LBB56_34
.LBB56_19:
	movq	72(%rsp), %r12          # 8-byte Reload
.LBB56_32:                              # %if.end.15
	movq	16(%rsp), %rbp          # 8-byte Reload
	movq	120(%rsp), %rax         # 8-byte Reload
	addl	%eax, %ebp
	movq	48(%r15), %rsi
	movq	112(%rsp), %rdi         # 8-byte Reload
	movq	%rbp, %rdx
	movq	%r12, %rcx
	callq	opj_stream_write_data
	xorl	%ebx, %ebx
	cmpq	%rbp, %rax
	jne	.LBB56_34
# BB#33:                                # %if.end.25
	movq	48(%rsp), %rax          # 8-byte Reload
	incl	(%rax)
	movl	$1, %ebx
.LBB56_34:                              # %cleanup
	movl	%ebx, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB56_8:
	movq	%rbx, %r13
	movq	88(%rsp), %r12          # 8-byte Reload
	movq	120(%rsp), %rsi         # 8-byte Reload
	movq	%rbp, %rbx
	jmp	.LBB56_11
.LBB56_35:                              # %cond.false
	movl	$.L.str.172, %edi
	movl	$.L.str.1, %esi
	movl	$9363, %edx             # imm = 0x2493
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_post_write_tile, %ecx
	callq	__assert_fail
.Lfunc_end56:
	.size	opj_j2k_post_write_tile, .Lfunc_end56-opj_j2k_post_write_tile
	.cfi_endproc

	.globl	opj_j2k_end_compress
	.align	16, 0x90
	.type	opj_j2k_end_compress,@function
opj_j2k_end_compress:                   # @opj_j2k_end_compress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp532:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp533:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp534:
	.cfi_def_cfa_offset 32
.Ltmp535:
	.cfi_offset %rbx, -32
.Ltmp536:
	.cfi_offset %r14, -24
.Ltmp537:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB57_4
# BB#1:                                 # %cond.end.i
	movq	256(%rbx), %rdi
	movl	$opj_j2k_write_eoc, %esi
	callq	opj_procedure_list_add_procedure
	cmpl	$0, 216(%rbx)
	je	.LBB57_3
# BB#2:                                 # %if.then.i
	movq	256(%rbx), %rdi
	movl	$opj_j2k_write_updated_tlm, %esi
	callq	opj_procedure_list_add_procedure
.LBB57_3:                               # %opj_j2k_setup_end_compress.exit
	movq	256(%rbx), %rdi
	movl	$opj_j2k_write_epc, %esi
	callq	opj_procedure_list_add_procedure
	movq	256(%rbx), %rdi
	movl	$opj_j2k_end_encoding, %esi
	callq	opj_procedure_list_add_procedure
	movq	256(%rbx), %rdi
	movl	$opj_j2k_destroy_header_memory, %esi
	callq	opj_procedure_list_add_procedure
	movq	256(%rbx), %rsi
	movq	%rbx, %rdi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	opj_j2k_exec
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB57_4:                               # %cond.false.i
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$9405, %edx             # imm = 0x24BD
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_setup_end_compress, %ecx
	callq	__assert_fail
.Lfunc_end57:
	.size	opj_j2k_end_compress, .Lfunc_end57-opj_j2k_end_compress
	.cfi_endproc

	.globl	opj_j2k_start_compress
	.align	16, 0x90
	.type	opj_j2k_start_compress,@function
opj_j2k_start_compress:                 # @opj_j2k_start_compress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp538:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp539:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp540:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp541:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp542:
	.cfi_def_cfa_offset 48
.Ltmp543:
	.cfi_offset %rbx, -40
.Ltmp544:
	.cfi_offset %r12, -32
.Ltmp545:
	.cfi_offset %r14, -24
.Ltmp546:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdx, %r12
	movq	%rsi, %r15
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB58_27
# BB#1:                                 # %cond.end
	testq	%r15, %r15
	je	.LBB58_28
# BB#2:                                 # %cond.end.4
	testq	%r14, %r14
	je	.LBB58_29
# BB#3:                                 # %cond.end.8
	callq	opj_image_create0
	movq	%rax, 96(%rbx)
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	opj_copy_image_header
	movq	24(%r12), %rax
	testq	%rax, %rax
	je	.LBB58_15
# BB#4:                                 # %for.cond.preheader
	movl	16(%r12), %r8d
	testq	%r8, %r8
	je	.LBB58_15
# BB#5:                                 # %for.body.lr.ph
	xorl	%edx, %edx
	testb	$1, %r8b
	je	.LBB58_8
# BB#6:                                 # %for.body.prol
	movq	48(%rax), %rsi
	movl	$1, %edx
	testq	%rsi, %rsi
	je	.LBB58_8
# BB#7:                                 # %if.then.13.prol
	movq	96(%rbx), %rdx
	movq	24(%rdx), %rdx
	movq	%rsi, 48(%rdx)
	movq	$0, 48(%rax)
	movl	$1, %edx
.LBB58_8:                               # %for.body.lr.ph.split
	cmpl	$1, %r8d
	je	.LBB58_15
# BB#9:                                 # %for.body.lr.ph.split.split
	movq	%rdx, %rsi
	shlq	$6, %rsi
	.align	16, 0x90
.LBB58_10:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	48(%rax,%rsi), %rdi
	testq	%rdi, %rdi
	je	.LBB58_12
# BB#11:                                # %if.then.13
                                        #   in Loop: Header=BB58_10 Depth=1
	movq	96(%rbx), %rcx
	movq	24(%rcx), %rcx
	movq	%rdi, 48(%rcx,%rsi)
	movq	$0, 48(%rax,%rsi)
.LBB58_12:                              # %for.inc
                                        #   in Loop: Header=BB58_10 Depth=1
	movq	112(%rax,%rsi), %rdi
	testq	%rdi, %rdi
	je	.LBB58_14
# BB#13:                                # %if.then.13.1
                                        #   in Loop: Header=BB58_10 Depth=1
	movq	96(%rbx), %rcx
	movq	24(%rcx), %rcx
	movq	%rdi, 112(%rcx,%rsi)
	movq	$0, 112(%rax,%rsi)
.LBB58_14:                              # %for.inc.1
                                        #   in Loop: Header=BB58_10 Depth=1
	addq	$2, %rdx
	subq	$-128, %rsi
	cmpq	%r8, %rdx
	jb	.LBB58_10
.LBB58_15:                              # %opj_j2k_setup_encoding_validation.exit
	movq	264(%rbx), %rdi
	movl	$opj_j2k_build_encoder, %esi
	callq	opj_procedure_list_add_procedure
	movq	264(%rbx), %rdi
	movl	$opj_j2k_encoding_validation, %esi
	callq	opj_procedure_list_add_procedure
	movq	264(%rbx), %rdi
	movl	$opj_j2k_mct_validation, %esi
	callq	opj_procedure_list_add_procedure
	movq	264(%rbx), %rsi
	movq	%rbx, %rdi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	opj_j2k_exec
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB58_26
# BB#16:                                # %cond.end.i
	movq	256(%rbx), %rdi
	movl	$opj_j2k_init_info, %esi
	callq	opj_procedure_list_add_procedure
	movq	256(%rbx), %rdi
	movl	$opj_j2k_write_soc, %esi
	callq	opj_procedure_list_add_procedure
	movq	256(%rbx), %rdi
	movl	$opj_j2k_write_siz, %esi
	callq	opj_procedure_list_add_procedure
	movq	256(%rbx), %rdi
	movl	$opj_j2k_write_cod, %esi
	callq	opj_procedure_list_add_procedure
	movq	256(%rbx), %rdi
	movl	$opj_j2k_write_qcd, %esi
	callq	opj_procedure_list_add_procedure
	cmpl	$0, 216(%rbx)
	je	.LBB58_19
# BB#17:                                # %if.then.i
	movq	256(%rbx), %rdi
	movl	$opj_j2k_write_image_components, %esi
	callq	opj_procedure_list_add_procedure
	movq	256(%rbx), %rdi
	movl	$opj_j2k_write_tlm, %esi
	callq	opj_procedure_list_add_procedure
	cmpl	$3, 216(%rbx)
	jne	.LBB58_19
# BB#18:                                # %if.then.18.i
	movq	256(%rbx), %rdi
	movl	$opj_j2k_write_poc, %esi
	callq	opj_procedure_list_add_procedure
.LBB58_19:                              # %if.end.21.i
	movq	256(%rbx), %rdi
	movl	$opj_j2k_write_regions, %esi
	callq	opj_procedure_list_add_procedure
	cmpq	$0, 136(%rbx)
	je	.LBB58_21
# BB#20:                                # %if.then.26.i
	movq	256(%rbx), %rdi
	movl	$opj_j2k_write_com, %esi
	callq	opj_procedure_list_add_procedure
.LBB58_21:                              # %if.end.29.i
	testb	$-127, 113(%rbx)
	je	.LBB58_23
# BB#22:                                # %if.then.32.i
	movq	256(%rbx), %rdi
	movl	$opj_j2k_write_mct_data_group, %esi
	callq	opj_procedure_list_add_procedure
.LBB58_23:                              # %if.end.35.i
	cmpq	$0, 272(%rbx)
	je	.LBB58_25
# BB#24:                                # %if.then.37.i
	movq	256(%rbx), %rdi
	movl	$opj_j2k_get_end_header, %esi
	callq	opj_procedure_list_add_procedure
.LBB58_25:                              # %opj_j2k_setup_header_writing.exit
	movq	256(%rbx), %rdi
	movl	$opj_j2k_create_tcd, %esi
	callq	opj_procedure_list_add_procedure
	movq	256(%rbx), %rdi
	movl	$opj_j2k_update_rates, %esi
	callq	opj_procedure_list_add_procedure
	movq	256(%rbx), %rsi
	movq	%rbx, %rdi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	opj_j2k_exec
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
.LBB58_26:                              # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB58_27:                              # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$9184, %edx             # imm = 0x23E0
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_start_compress, %ecx
	callq	__assert_fail
.LBB58_28:                              # %cond.false.3
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$9185, %edx             # imm = 0x23E1
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_start_compress, %ecx
	callq	__assert_fail
.LBB58_29:                              # %cond.false.7
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$9186, %edx             # imm = 0x23E2
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_start_compress, %ecx
	callq	__assert_fail
.Lfunc_end58:
	.size	opj_j2k_start_compress, .Lfunc_end58-opj_j2k_start_compress
	.cfi_endproc

	.globl	opj_j2k_write_tile
	.align	16, 0x90
	.type	opj_j2k_write_tile,@function
opj_j2k_write_tile:                     # @opj_j2k_write_tile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp547:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp548:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp549:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp550:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp551:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp552:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp553:
	.cfi_def_cfa_offset 64
.Ltmp554:
	.cfi_offset %rbx, -56
.Ltmp555:
	.cfi_offset %r12, -48
.Ltmp556:
	.cfi_offset %r13, -40
.Ltmp557:
	.cfi_offset %r14, -32
.Ltmp558:
	.cfi_offset %r15, -24
.Ltmp559:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movq	%r8, %r15
	movl	%ecx, %r12d
	movq	%rdx, %r13
	movl	%esi, %ebx
	movq	%rdi, %rbp
	cmpl	%ebx, 280(%rbp)
	jne	.LBB59_1
# BB#2:                                 # %opj_j2k_pre_write_tile.exit
	leal	1(%rbx), %ecx
	movl	148(%rbp), %r8d
	imull	144(%rbp), %r8d
	movl	$4, %esi
	movl	$.L.str.171, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	opj_event_msg
	movl	$0, 12(%rbp)
	movl	%ebx, %eax
	imulq	$5680, %rax, %rax       # imm = 0x1630
	movq	208(%rbp), %rcx
	movq	288(%rbp), %rdi
	movl	5592(%rcx,%rax), %eax
	movl	%eax, 12(%rdi)
	movl	$0, 8(%rbp)
	movl	280(%rbp), %esi
	callq	opj_tcd_init_encode_tile
	testl	%eax, %eax
	je	.LBB59_3
# BB#4:                                 # %if.else
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movl	%r12d, %edx
	movq	%r15, %rcx
	movq	%r14, %r8
	callq	opj_j2k_post_write_tile
	movl	$1, %ebp
	testl	%eax, %eax
	jne	.LBB59_7
# BB#5:                                 # %if.then.4
	xorl	%ebp, %ebp
	movl	$1, %esi
	movl	$.L.str.51, %edx
	jmp	.LBB59_6
.LBB59_1:                               # %opj_j2k_pre_write_tile.exit.thread
	movl	$1, %esi
	movl	$.L.str.170, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	opj_event_msg
.LBB59_3:                               # %if.then
	xorl	%ebp, %ebp
	movl	$1, %esi
	movl	$.L.str.50, %edx
.LBB59_6:                               # %return
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%ebx, %ecx
	callq	opj_event_msg
.LBB59_7:                               # %return
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end59:
	.size	opj_j2k_write_tile, .Lfunc_end59-opj_j2k_write_tile
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_read_SPCod_SPCoc,@function
opj_j2k_read_SPCod_SPCoc:               # @opj_j2k_read_SPCod_SPCoc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp560:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp561:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp562:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp563:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp564:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp565:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp566:
	.cfi_def_cfa_offset 80
.Ltmp567:
	.cfi_offset %rbx, -56
.Ltmp568:
	.cfi_offset %r12, -48
.Ltmp569:
	.cfi_offset %r13, -40
.Ltmp570:
	.cfi_offset %r14, -32
.Ltmp571:
	.cfi_offset %r15, -24
.Ltmp572:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movl	%esi, %r14d
	movq	%rdi, %rbp
	testq	%rbp, %rbp
	je	.LBB60_25
# BB#1:                                 # %cond.end
	testq	%r8, %r8
	je	.LBB60_26
# BB#2:                                 # %cond.end.4
	testq	%rbx, %rbx
	je	.LBB60_27
# BB#3:                                 # %cond.end.8
	cmpl	$16, 8(%rbp)
	jne	.LBB60_5
# BB#4:                                 # %cond.true.10
	movl	280(%rbp), %eax
	imulq	$5680, %rax, %rax       # imm = 0x1630
	addq	208(%rbp), %rax
	jmp	.LBB60_6
.LBB60_5:                               # %cond.false.11
	movq	16(%rbp), %rax
.LBB60_6:                               # %cond.end.14
	movq	96(%rbp), %rdx
	cmpl	%r14d, 16(%rdx)
	jbe	.LBB60_28
# BB#7:                                 # %cond.end.18
	movq	%r8, 8(%rsp)            # 8-byte Spill
	movl	%r14d, %edx
	cmpl	$4, (%rcx)
	jbe	.LBB60_8
# BB#9:                                 # %if.end
	movq	%rcx, (%rsp)            # 8-byte Spill
	movq	5584(%rax), %r13
	imulq	$1080, %rdx, %r15       # imm = 0x438
	leaq	4(%r13,%r15), %r12
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	opj_read_bytes_LE
	movl	4(%r13,%r15), %ecx
	incl	%ecx
	movl	%ecx, 4(%r13,%r15)
	cmpl	$34, %ecx
	jb	.LBB60_11
# BB#10:                                # %if.then.25
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.65, %edx
	movl	$33, %r8d
	xorl	%eax, %eax
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	opj_event_msg
	jmp	.LBB60_24
.LBB60_11:                              # %if.end.28
	cmpl	%ecx, 216(%rbp)
	jae	.LBB60_12
# BB#13:                                # %if.end.37
	leaq	1(%rbx), %rdi
	leaq	8(%r13,%r15), %rsi
	movl	$1, %edx
	callq	opj_read_bytes_LE
	leaq	2(%rbx), %rdi
	addl	$2, 8(%r13,%r15)
	leaq	12(%r13,%r15), %rsi
	movl	$1, %edx
	callq	opj_read_bytes_LE
	leaq	3(%rbx), %rdi
	addl	$2, 12(%r13,%r15)
	leaq	16(%r13,%r15), %rsi
	movl	$1, %edx
	callq	opj_read_bytes_LE
	leaq	4(%rbx), %rdi
	leaq	20(%r13,%r15), %rsi
	movl	$1, %edx
	callq	opj_read_bytes_LE
	movq	(%rsp), %rsi            # 8-byte Reload
	movl	(%rsi), %eax
	addl	$-5, %eax
	movl	%eax, (%rsi)
	movl	(%r12), %edx
	testb	$1, (%r13,%r15)
	jne	.LBB60_16
# BB#14:                                # %for.cond.62.preheader
	testl	%edx, %edx
	je	.LBB60_15
# BB#22:
	xorl	%eax, %eax
	addq	%r15, %r13
	movl	$1, %ebx
	.align	16, 0x90
.LBB60_23:                              # %for.body.65
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	movl	$15, 812(%r13,%rcx,4)
	movl	$15, 944(%r13,%rcx,4)
	incl	%eax
	cmpl	(%r12), %eax
	jb	.LBB60_23
	jmp	.LBB60_24
.LBB60_12:                              # %if.then.32
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.66, %edx
	xorl	%eax, %eax
	movq	8(%rsp), %rdi           # 8-byte Reload
	movl	%r14d, %ecx
	callq	opj_event_msg
	orb	$-128, 9(%rbp)
	jmp	.LBB60_24
.LBB60_16:                              # %if.then.45
	cmpl	%edx, %eax
	jae	.LBB60_17
.LBB60_8:                               # %if.then
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.64, %edx
	xorl	%eax, %eax
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	opj_event_msg
.LBB60_24:                              # %cleanup
	movl	%ebx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB60_17:                              # %for.cond.preheader
	xorl	%ecx, %ecx
	testl	%edx, %edx
	je	.LBB60_21
# BB#18:                                # %for.body.preheader
	addq	$5, %rbx
	xorl	%ebp, %ebp
	leaq	20(%rsp), %r14
	addq	%r15, %r13
	.align	16, 0x90
.LBB60_19:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%rbx,%rbp), %rdi
	movl	$1, %edx
	movq	%r14, %rsi
	callq	opj_read_bytes_LE
	movl	20(%rsp), %eax
	andl	$15, %eax
	movl	%ebp, %ecx
	movl	%eax, 812(%r13,%rcx,4)
	movl	20(%rsp), %eax
	shrl	$4, %eax
	movl	%eax, 944(%r13,%rcx,4)
	movl	(%r12), %ecx
	incq	%rbp
	cmpl	%ecx, %ebp
	jb	.LBB60_19
# BB#20:                                # %for.cond.for.end_crit_edge
	movq	(%rsp), %rsi            # 8-byte Reload
	movl	(%rsi), %eax
.LBB60_21:                              # %for.end
	subl	%ecx, %eax
	movl	%eax, (%rsi)
	movl	$1, %ebx
	jmp	.LBB60_24
.LBB60_15:
	movl	$1, %ebx
	jmp	.LBB60_24
.LBB60_25:                              # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$7936, %edx             # imm = 0x1F00
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_SPCod_SPCoc, %ecx
	callq	__assert_fail
.LBB60_26:                              # %cond.false.3
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$7937, %edx             # imm = 0x1F01
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_SPCod_SPCoc, %ecx
	callq	__assert_fail
.LBB60_27:                              # %cond.false.7
	movl	$.L.str.52, %edi
	movl	$.L.str.1, %esi
	movl	$7938, %edx             # imm = 0x1F02
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_SPCod_SPCoc, %ecx
	callq	__assert_fail
.LBB60_28:                              # %cond.false.17
	movl	$.L.str.63, %edi
	movl	$.L.str.1, %esi
	movl	$7946, %edx             # imm = 0x1F0A
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_SPCod_SPCoc, %ecx
	callq	__assert_fail
.Lfunc_end60:
	.size	opj_j2k_read_SPCod_SPCoc, .Lfunc_end60-opj_j2k_read_SPCod_SPCoc
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_read_SQcd_SQcc,@function
opj_j2k_read_SQcd_SQcc:                 # @opj_j2k_read_SQcd_SQcc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp573:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp574:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp575:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp576:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp577:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp578:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp579:
	.cfi_def_cfa_offset 112
.Ltmp580:
	.cfi_offset %rbx, -56
.Ltmp581:
	.cfi_offset %r12, -48
.Ltmp582:
	.cfi_offset %r13, -40
.Ltmp583:
	.cfi_offset %r14, -32
.Ltmp584:
	.cfi_offset %r15, -24
.Ltmp585:
	.cfi_offset %rbp, -16
	movq	%r8, %r13
	movq	%rcx, %r15
	movq	%rdx, %rbx
	testq	%rdi, %rdi
	je	.LBB61_30
# BB#1:                                 # %cond.end
	testq	%r13, %r13
	je	.LBB61_31
# BB#2:                                 # %cond.end.4
	testq	%rbx, %rbx
	je	.LBB61_32
# BB#3:                                 # %cond.end.8
	cmpl	$16, 8(%rdi)
	jne	.LBB61_5
# BB#4:                                 # %cond.true.10
	movl	280(%rdi), %eax
	imulq	$5680, %rax, %rax       # imm = 0x1630
	addq	208(%rdi), %rax
	jmp	.LBB61_6
.LBB61_5:                               # %cond.false.11
	movq	16(%rdi), %rax
.LBB61_6:                               # %cond.end.14
	movq	96(%rdi), %rcx
	cmpl	%esi, 16(%rcx)
	jbe	.LBB61_33
# BB#7:                                 # %cond.end.18
	movl	%esi, %r14d
	movl	(%r15), %ecx
	testl	%ecx, %ecx
	je	.LBB61_8
# BB#9:                                 # %if.end
	movq	5584(%rax), %rbp
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	decl	%ecx
	movl	%ecx, (%r15)
	leaq	52(%rsp), %rsi
	movl	$1, %r12d
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	opj_read_bytes_LE
	movl	52(%rsp), %eax
	andl	$31, %eax
	imulq	$1080, %r14, %rdx       # imm = 0x438
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	leaq	24(%rbp,%rdx), %rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movl	%eax, 24(%rbp,%rdx)
	movl	52(%rsp), %ecx
	shrl	$5, %ecx
	movl	%ecx, 804(%rbp,%rdx)
	cmpl	$1, %eax
	je	.LBB61_14
# BB#10:                                # %if.else
	movl	(%r15), %r12d
	testl	%eax, %eax
	setne	%cl
	shrl	%cl, %r12d
	cmpl	$98, %r12d
	jb	.LBB61_12
# BB#11:                                # %if.then.32
	movl	$2, %esi
	movl	$.L.str.72, %edx
	movl	$97, %r8d
	movl	$97, %r9d
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	%r12d, %ecx
	callq	opj_event_msg
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %eax
.LBB61_12:                              # %if.end.35
	testl	%eax, %eax
	je	.LBB61_20
# BB#13:                                # %for.cond.52.preheader
	xorl	%r13d, %r13d
	testl	%r12d, %r12d
	je	.LBB61_19
.LBB61_14:                              # %for.body.54.lr.ph
	movq	%r15, 16(%rsp)          # 8-byte Spill
	incq	%rbx
	imulq	$1080, %r14, %rax       # imm = 0x438
	movq	%r14, 40(%rsp)          # 8-byte Spill
	movq	32(%rsp), %rcx          # 8-byte Reload
	leaq	32(%rcx,%rax), %r14
	movl	%r12d, %r13d
	xorl	%ebp, %ebp
	leaq	52(%rsp), %r15
	movl	$2047, %r12d            # imm = 0x7FF
	.align	16, 0x90
.LBB61_15:                              # %for.body.54
                                        # =>This Inner Loop Header: Depth=1
	movl	$2, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	opj_read_bytes_LE
	cmpq	$96, %rbp
	ja	.LBB61_17
# BB#16:                                # %if.then.56
                                        #   in Loop: Header=BB61_15 Depth=1
	movl	52(%rsp), %eax
	shrl	$11, %eax
	movl	%eax, -4(%r14,%rbp,8)
	movl	52(%rsp), %eax
	andl	%r12d, %eax
	movl	%eax, (%r14,%rbp,8)
.LBB61_17:                              # %for.inc.68
                                        #   in Loop: Header=BB61_15 Depth=1
	addq	$2, %rbx
	incq	%rbp
	cmpl	%ebp, %r13d
	jne	.LBB61_15
# BB#18:                                # %for.end.70.loopexit
	movq	16(%rsp), %r15          # 8-byte Reload
	movq	40(%rsp), %r14          # 8-byte Reload
.LBB61_19:                              # %for.end.70
	movq	%r14, 40(%rsp)          # 8-byte Spill
	movl	(%r15), %eax
	addl	%r13d, %r13d
	subl	%r13d, %eax
	jmp	.LBB61_26
.LBB61_8:                               # %if.then
	xorl	%r14d, %r14d
	movl	$1, %esi
	movl	$.L.str.71, %edx
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	opj_event_msg
	jmp	.LBB61_29
.LBB61_20:                              # %for.cond.preheader
	movq	%r14, 40(%rsp)          # 8-byte Spill
	movq	%r15, 16(%rsp)          # 8-byte Spill
	testl	%r12d, %r12d
	je	.LBB61_25
# BB#21:                                # %for.body.preheader
	imulq	$1080, 40(%rsp), %rax   # 8-byte Folded Reload
                                        # imm = 0x438
	movq	32(%rsp), %rcx          # 8-byte Reload
	leaq	32(%rcx,%rax), %r15
	movl	%r12d, %r13d
	incq	%rbx
	xorl	%ebp, %ebp
	leaq	52(%rsp), %r14
	.align	16, 0x90
.LBB61_22:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%rbx,%rbp), %rdi
	movl	$1, %edx
	movq	%r14, %rsi
	callq	opj_read_bytes_LE
	cmpq	$96, %rbp
	ja	.LBB61_24
# BB#23:                                # %if.then.42
                                        #   in Loop: Header=BB61_22 Depth=1
	movl	52(%rsp), %eax
	shrl	$3, %eax
	movl	%eax, -4(%r15,%rbp,8)
	movl	$0, (%r15,%rbp,8)
.LBB61_24:                              # %for.inc
                                        #   in Loop: Header=BB61_22 Depth=1
	incq	%rbp
	cmpl	%ebp, %r13d
	jne	.LBB61_22
.LBB61_25:                              # %for.end
	movq	16(%rsp), %r15          # 8-byte Reload
	movl	(%r15), %eax
	subl	%r12d, %eax
.LBB61_26:                              # %if.end.72
	movl	%eax, (%r15)
	movl	$1, %r14d
	movq	24(%rsp), %rax          # 8-byte Reload
	cmpl	$1, (%rax)
	jne	.LBB61_29
# BB#27:                                # %for.cond.76.preheader
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	8(%rsp), %rcx           # 8-byte Reload
	leaq	28(%rsi,%rcx), %rax
	leaq	32(%rsi,%rcx), %rcx
	imulq	$1080, 40(%rsp), %rdx   # 8-byte Folded Reload
                                        # imm = 0x438
	leaq	48(%rsi,%rdx), %rdx
	xorl	%esi, %esi
	movl	$2863311531, %edi       # imm = 0xAAAAAAAB
	.align	16, 0x90
.LBB61_28:                              # %for.body.78
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rax), %ebp
	movl	%esi, %ebx
	imulq	%rdi, %rbx
	shrq	$33, %rbx
	subl	%ebx, %ebp
	movl	%ebp, -12(%rdx,%rsi,8)
	movl	(%rcx), %ebp
	movl	%ebp, -8(%rdx,%rsi,8)
	movl	(%rax), %ebp
	leal	1(%rsi), %ebx
	imulq	%rdi, %rbx
	shrq	$33, %rbx
	subl	%ebx, %ebp
	movl	%ebp, -4(%rdx,%rsi,8)
	movl	(%rcx), %ebp
	movl	%ebp, (%rdx,%rsi,8)
	addq	$2, %rsi
	cmpq	$96, %rsi
	jne	.LBB61_28
.LBB61_29:                              # %cleanup
	movl	%r14d, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB61_30:                              # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$8188, %edx             # imm = 0x1FFC
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_SQcd_SQcc, %ecx
	callq	__assert_fail
.LBB61_31:                              # %cond.false.3
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$8189, %edx             # imm = 0x1FFD
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_SQcd_SQcc, %ecx
	callq	__assert_fail
.LBB61_32:                              # %cond.false.7
	movl	$.L.str.52, %edi
	movl	$.L.str.1, %esi
	movl	$8190, %edx             # imm = 0x1FFE
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_SQcd_SQcc, %ecx
	callq	__assert_fail
.LBB61_33:                              # %cond.false.17
	movl	$.L.str.70, %edi
	movl	$.L.str.1, %esi
	movl	$8199, %edx             # imm = 0x2007
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_SQcd_SQcc, %ecx
	callq	__assert_fail
.Lfunc_end61:
	.size	opj_j2k_read_SQcd_SQcc, .Lfunc_end61-opj_j2k_read_SQcd_SQcc
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_read_header_procedure,@function
opj_j2k_read_header_procedure:          # @opj_j2k_read_header_procedure
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp586:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp587:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp588:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp589:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp590:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp591:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp592:
	.cfi_def_cfa_offset 80
.Ltmp593:
	.cfi_offset %rbx, -56
.Ltmp594:
	.cfi_offset %r12, -48
.Ltmp595:
	.cfi_offset %r13, -40
.Ltmp596:
	.cfi_offset %r14, -32
.Ltmp597:
	.cfi_offset %r15, -24
.Ltmp598:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	testq	%r15, %r15
	je	.LBB62_54
# BB#1:                                 # %cond.end
	testq	%rbx, %rbx
	je	.LBB62_55
# BB#2:                                 # %cond.end.4
	testq	%r14, %r14
	je	.LBB62_56
# BB#3:                                 # %cond.end.8.i
	movl	$1, 8(%rbx)
	leaq	18(%rsp), %rsi
	movl	$2, %edx
	movq	%r15, %rdi
	movq	%r14, %rcx
	callq	opj_stream_read_data
	cmpq	$2, %rax
	jne	.LBB62_7
# BB#4:                                 # %if.end.i
	leaq	18(%rsp), %rdi
	leaq	20(%rsp), %rsi
	movl	$2, %edx
	callq	opj_read_bytes_LE
	cmpl	$65359, 20(%rsp)        # imm = 0xFF4F
	jne	.LBB62_7
# BB#5:                                 # %if.end.13.i
	movl	$2, 8(%rbx)
	movq	%r15, %rdi
	callq	opj_stream_tell
	movq	%rax, %rcx
	addq	$-2, %rcx
	movq	272(%rbx), %rax
	movq	%rcx, (%rax)
	movl	$4, %esi
	movl	$.L.str.123, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	opj_event_msg
	movq	272(%rbx), %rdi
	movq	(%rdi), %rdx
	movl	$65359, %esi            # imm = 0xFF4F
	movl	$2, %ecx
	callq	opj_j2k_add_mhmarker
	testl	%eax, %eax
	je	.LBB62_6
# BB#9:                                 # %if.end
	movq	24(%rbx), %rsi
	movl	$2, %edx
	movq	%r15, %rdi
	movq	%r14, %rcx
	callq	opj_stream_read_data
	cmpq	$2, %rax
	jne	.LBB62_10
# BB#11:                                # %if.end.16
	movq	24(%rbx), %rdi
	leaq	12(%rsp), %rsi
	movl	$2, %edx
	callq	opj_read_bytes_LE
	movl	12(%rsp), %ecx
	cmpl	$65424, %ecx            # imm = 0xFF90
	je	.LBB62_52
# BB#12:                                # %while.body.lr.ph
	leaq	20(%rsp), %r13
.LBB62_13:                              # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB62_15 Depth 2
                                        #     Child Loop BB62_19 Depth 2
                                        #       Child Loop BB62_24 Depth 3
                                        #     Child Loop BB62_35 Depth 2
	cmpl	$65279, %ecx            # imm = 0xFEFF
	movl	$j2k_memory_marker_handler_tab-16, %ebp
	jbe	.LBB62_14
	.align	16, 0x90
.LBB62_15:                              # %for.cond.i
                                        #   Parent Loop BB62_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	16(%rbp), %eax
	addq	$16, %rbp
	testl	%eax, %eax
	je	.LBB62_17
# BB#16:                                # %for.cond.i
                                        #   in Loop: Header=BB62_15 Depth=2
	cmpl	%ecx, %eax
	jne	.LBB62_15
.LBB62_17:                              # %opj_j2k_get_marker_handler.exit
                                        #   in Loop: Header=BB62_13 Depth=1
	testl	%eax, %eax
	jne	.LBB62_37
# BB#18:                                # %cond.end.8.i.69
                                        #   in Loop: Header=BB62_13 Depth=1
	movl	$2, %r12d
	movl	$2, %esi
	movl	$.L.str.124, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	opj_event_msg
	jmp	.LBB62_19
.LBB62_33:                              # %if.else.36.i
                                        #   in Loop: Header=BB62_19 Depth=2
	addl	$2, %r12d
	.align	16, 0x90
.LBB62_19:                              # %while.body.i
                                        #   Parent Loop BB62_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB62_24 Depth 3
	movq	24(%rbx), %rsi
	movl	$2, %edx
	movq	%r15, %rdi
	movq	%r14, %rcx
	callq	opj_stream_read_data
	cmpq	$2, %rax
	jne	.LBB62_20
# BB#22:                                # %if.end.i.70
                                        #   in Loop: Header=BB62_19 Depth=2
	movq	24(%rbx), %rdi
	movl	$2, %edx
	movq	%r13, %rsi
	callq	opj_read_bytes_LE
	movl	20(%rsp), %ecx
	cmpl	$65280, %ecx            # imm = 0xFF00
	jb	.LBB62_19
# BB#23:                                # %for.cond.i.i.preheader
                                        #   in Loop: Header=BB62_19 Depth=2
	movl	$j2k_memory_marker_handler_tab-16, %ebp
	.align	16, 0x90
.LBB62_24:                              # %for.cond.i.i
                                        #   Parent Loop BB62_13 Depth=1
                                        #     Parent Loop BB62_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	16(%rbp), %eax
	addq	$16, %rbp
	testl	%eax, %eax
	je	.LBB62_26
# BB#25:                                # %for.cond.i.i
                                        #   in Loop: Header=BB62_24 Depth=3
	cmpl	%ecx, %eax
	jne	.LBB62_24
.LBB62_26:                              # %opj_j2k_get_marker_handler.exit.i
                                        #   in Loop: Header=BB62_19 Depth=2
	movl	4(%rbp), %ecx
	testl	8(%rbx), %ecx
	je	.LBB62_27
# BB#28:                                # %if.else.i
                                        #   in Loop: Header=BB62_19 Depth=2
	testl	%eax, %eax
	je	.LBB62_33
# BB#29:                                # %if.else.i
                                        #   in Loop: Header=BB62_13 Depth=1
	cmpl	$65424, %eax            # imm = 0xFF90
	je	.LBB62_30
# BB#31:                                # %if.then.26.i
                                        #   in Loop: Header=BB62_13 Depth=1
	movq	272(%rbx), %r13
	movq	%r15, %rdi
	callq	opj_stream_tell
	subl	%r12d, %eax
	xorl	%esi, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%r12d, %ecx
	callq	opj_j2k_add_mhmarker
	testl	%eax, %eax
	je	.LBB62_32
# BB#34:                                # %if.end.32
                                        #   in Loop: Header=BB62_13 Depth=1
	movl	(%rbp), %eax
	movl	%eax, 12(%rsp)
	cmpl	$65424, %eax            # imm = 0xFF90
	movl	$j2k_memory_marker_handler_tab-16, %ebp
	je	.LBB62_52
.LBB62_35:                              # %for.cond.i.80
                                        #   Parent Loop BB62_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	16(%rbp), %ecx
	addq	$16, %rbp
	testl	%ecx, %ecx
	je	.LBB62_37
# BB#36:                                # %for.cond.i.80
                                        #   in Loop: Header=BB62_35 Depth=2
	cmpl	%eax, %ecx
	jne	.LBB62_35
.LBB62_37:                              # %if.end.37
                                        #   in Loop: Header=BB62_13 Depth=1
	movl	4(%rbp), %eax
	testl	8(%rbx), %eax
	je	.LBB62_38
# BB#39:                                # %if.end.44
                                        #   in Loop: Header=BB62_13 Depth=1
	movq	24(%rbx), %rsi
	movl	$2, %edx
	movq	%r15, %rdi
	movq	%r14, %rcx
	callq	opj_stream_read_data
	cmpq	$2, %rax
	jne	.LBB62_10
# BB#40:                                # %if.end.52
                                        #   in Loop: Header=BB62_13 Depth=1
	movq	24(%rbx), %rdi
	movl	$2, %edx
	leaq	8(%rsp), %rsi
	callq	opj_read_bytes_LE
	movl	8(%rsp), %ecx
	addl	$-2, %ecx
	movl	%ecx, 8(%rsp)
	cmpl	32(%rbx), %ecx
	jbe	.LBB62_41
# BB#42:                                # %cond.false.63
                                        #   in Loop: Header=BB62_13 Depth=1
	movl	%ecx, %esi
	movq	24(%rbx), %rdi
	callq	realloc
	testq	%rax, %rax
	je	.LBB62_43
# BB#44:                                # %if.end.82
                                        #   in Loop: Header=BB62_13 Depth=1
	movq	%rax, 24(%rbx)
	movl	8(%rsp), %ecx
	movl	%ecx, 32(%rbx)
	jmp	.LBB62_45
.LBB62_41:                              # %if.end.52.if.end.89_crit_edge
                                        #   in Loop: Header=BB62_13 Depth=1
	movq	24(%rbx), %rax
.LBB62_45:                              # %if.end.89
                                        #   in Loop: Header=BB62_13 Depth=1
	movl	%ecx, %edx
	movq	%r15, %rdi
	movq	%rax, %rsi
	movq	%r14, %rcx
	callq	opj_stream_read_data
	movl	8(%rsp), %edx
	cmpq	%rdx, %rax
	jne	.LBB62_10
# BB#46:                                # %if.end.100
                                        #   in Loop: Header=BB62_13 Depth=1
	movq	24(%rbx), %rsi
	movq	%rbx, %rdi
	movq	%r14, %rcx
	callq	*8(%rbp)
	testl	%eax, %eax
	je	.LBB62_47
# BB#48:                                # %if.end.108
                                        #   in Loop: Header=BB62_13 Depth=1
	movq	272(%rbx), %r12
	movl	(%rbp), %r13d
	movq	%r15, %rdi
	callq	opj_stream_tell
	movl	8(%rsp), %ecx
	movl	$-4, %edx
	subl	%ecx, %edx
	addl	%eax, %edx
	addl	$4, %ecx
	movq	%r12, %rdi
	movl	%r13d, %esi
	callq	opj_j2k_add_mhmarker
	testl	%eax, %eax
	je	.LBB62_49
# BB#50:                                # %if.end.120
                                        #   in Loop: Header=BB62_13 Depth=1
	movq	24(%rbx), %rsi
	movl	$2, %edx
	movq	%r15, %rdi
	movq	%r14, %rcx
	callq	opj_stream_read_data
	cmpq	$2, %rax
	jne	.LBB62_10
# BB#51:                                # %if.end.129
                                        #   in Loop: Header=BB62_13 Depth=1
	movq	24(%rbx), %rdi
	movl	$2, %edx
	leaq	12(%rsp), %rsi
	callq	opj_read_bytes_LE
	movl	12(%rsp), %ecx
	cmpl	$65424, %ecx            # imm = 0xFF90
	leaq	20(%rsp), %r13
	jne	.LBB62_13
	jmp	.LBB62_52
.LBB62_6:                               # %if.then.23.i
	movl	$1, %esi
	movl	$.L.str.121, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	opj_event_msg
.LBB62_7:                               # %if.then
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.117, %edx
.LBB62_8:                               # %cleanup.142
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	opj_event_msg
.LBB62_53:                              # %cleanup.142
	movl	%ebx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB62_10:                              # %if.then.14
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.7, %edx
	jmp	.LBB62_8
.LBB62_20:                              # %if.then.i
	movl	$1, %esi
	movl	$.L.str.7, %edx
.LBB62_21:                              # %if.then.30
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	opj_event_msg
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.119, %edx
	jmp	.LBB62_8
.LBB62_14:                              # %if.then.22
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.118, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	opj_event_msg
	jmp	.LBB62_53
.LBB62_38:                              # %if.then.42
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.8, %edx
	jmp	.LBB62_8
.LBB62_47:                              # %if.then.106
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.120, %edx
	jmp	.LBB62_8
.LBB62_49:                              # %if.then.118
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.121, %edx
	jmp	.LBB62_8
.LBB62_27:                              # %if.then.20.i
	movl	$1, %esi
	movl	$.L.str.8, %edx
	jmp	.LBB62_21
.LBB62_43:                              # %if.then.71
	movq	24(%rbx), %rdi
	callq	free
	movq	$0, 24(%rbx)
	movl	$0, 32(%rbx)
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.9, %edx
	jmp	.LBB62_8
.LBB62_30:                              # %if.end.32.thread
	movl	$65424, 12(%rsp)        # imm = 0xFF90
.LBB62_52:                              # %while.end
	movl	$4, %esi
	movl	$.L.str.122, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	opj_event_msg
	movq	%r15, %rdi
	callq	opj_stream_tell
	addl	$-2, %eax
	movl	$4294967294, %ecx       # imm = 0xFFFFFFFE
	orq	$1, %rcx
	andq	%rax, %rcx
	movq	272(%rbx), %rax
	movq	%rcx, 8(%rax)
	movl	$8, 8(%rbx)
	movl	$1, %ebx
	jmp	.LBB62_53
.LBB62_32:                              # %if.then.32.i
	movl	$1, %esi
	movl	$.L.str.121, %edx
	jmp	.LBB62_21
.LBB62_54:                              # %cond.false
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$6537, %edx             # imm = 0x1989
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_header_procedure, %ecx
	callq	__assert_fail
.LBB62_55:                              # %cond.false.3
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$6538, %edx             # imm = 0x198A
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_header_procedure, %ecx
	callq	__assert_fail
.LBB62_56:                              # %cond.false.7
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$6539, %edx             # imm = 0x198B
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_read_header_procedure, %ecx
	callq	__assert_fail
.Lfunc_end62:
	.size	opj_j2k_read_header_procedure, .Lfunc_end62-opj_j2k_read_header_procedure
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_copy_default_tcp_and_create_tcd,@function
opj_j2k_copy_default_tcp_and_create_tcd: # @opj_j2k_copy_default_tcp_and_create_tcd
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp599:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp600:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp601:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp602:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp603:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp604:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp605:
	.cfi_def_cfa_offset 128
.Ltmp606:
	.cfi_offset %rbx, -56
.Ltmp607:
	.cfi_offset %r12, -48
.Ltmp608:
	.cfi_offset %r13, -40
.Ltmp609:
	.cfi_offset %r14, -32
.Ltmp610:
	.cfi_offset %r15, -24
.Ltmp611:
	.cfi_offset %rbp, -16
	testq	%rdi, %rdi
	je	.LBB63_28
# BB#1:                                 # %cond.end
	testq	%rsi, %rsi
	je	.LBB63_29
# BB#2:                                 # %cond.end.4
	testq	%rdx, %rdx
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	je	.LBB63_30
# BB#3:                                 # %cond.end.8
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	movq	96(%rdi), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	144(%rdi), %eax
	imull	148(%rdi), %eax
	movl	%eax, 36(%rsp)          # 4-byte Spill
	testl	%eax, %eax
	je	.LBB63_24
# BB#4:                                 # %for.body.lr.ph
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	16(%rax), %r12
	movq	16(%rsp), %rcx          # 8-byte Reload
	movl	16(%rcx), %ecx
	imull	$1080, %ecx, %edx       # imm = 0x438
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	imull	%ecx, %ecx
	shll	$2, %ecx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	208(%rax), %r14
	xorl	%eax, %eax
.LBB63_5:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB63_11 Depth 2
                                        #     Child Loop BB63_18 Depth 2
	movl	%eax, 68(%rsp)          # 4-byte Spill
	movq	5584(%r14), %rbx
	movq	%rbx, 56(%rsp)          # 8-byte Spill
	movl	$5680, %edx             # imm = 0x1630
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	memcpy
	andb	$-2, 5672(%r14)
	movq	$0, 5160(%r14)
	movq	%rbx, 5584(%r14)
	cmpq	$0, 5624(%r12)
	je	.LBB63_8
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB63_5 Depth=1
	movq	48(%rsp), %rdi          # 8-byte Reload
	callq	malloc
	movq	%rax, 5624(%r14)
	xorl	%r13d, %r13d
	testq	%rax, %rax
	je	.LBB63_27
# BB#7:                                 # %if.end
                                        #   in Loop: Header=BB63_5 Depth=1
	movq	5624(%r12), %rsi
	movq	%rax, %rdi
	movq	48(%rsp), %rdx          # 8-byte Reload
	callq	memcpy
.LBB63_8:                               # %if.end.38
                                        #   in Loop: Header=BB63_5 Depth=1
	movl	5652(%r12), %ebx
	shll	$5, %ebx
	movq	%rbx, %rdi
	callq	malloc
	movq	%rax, 5640(%r14)
	xorl	%r13d, %r13d
	testq	%rax, %rax
	je	.LBB63_27
# BB#9:                                 # %if.end.54
                                        #   in Loop: Header=BB63_5 Depth=1
	movq	5640(%r12), %rsi
	movq	%rax, %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movl	5648(%r12), %eax
	testl	%eax, %eax
	je	.LBB63_15
# BB#10:                                # %for.body.64.lr.ph
                                        #   in Loop: Header=BB63_5 Depth=1
	movq	5640(%r14), %r15
	movq	5640(%r12), %rbp
	addq	$16, %r15
	addq	$24, %rbp
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB63_11:                              # %for.body.64
                                        #   Parent Loop BB63_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -8(%rbp)
	je	.LBB63_14
# BB#12:                                # %if.then.66
                                        #   in Loop: Header=BB63_11 Depth=2
	movl	(%rbp), %edi
	callq	malloc
	movq	%rax, (%r15)
	xorl	%r13d, %r13d
	testq	%rax, %rax
	je	.LBB63_27
# BB#13:                                # %if.end.81
                                        #   in Loop: Header=BB63_11 Depth=2
	movq	-8(%rbp), %rsi
	movl	(%rbp), %edx
	movq	%rax, %rdi
	callq	memcpy
	movl	5648(%r12), %eax
.LBB63_14:                              # %if.end.87
                                        #   in Loop: Header=BB63_11 Depth=2
	incl	%ebx
	addq	$32, %r15
	addq	$32, %rbp
	cmpl	%eax, %ebx
	jb	.LBB63_11
.LBB63_15:                              # %for.end
                                        #   in Loop: Header=BB63_5 Depth=1
	movl	5668(%r12), %r15d
	shll	$5, %r15d
	movq	%r15, %rdi
	callq	malloc
	movq	%rax, 5656(%r14)
	testq	%rax, %rax
	movl	$0, %r13d
	je	.LBB63_27
# BB#16:                                # %if.end.104
                                        #   in Loop: Header=BB63_5 Depth=1
	movq	5656(%r12), %rsi
	movq	%rax, %rdi
	movq	%r15, %rdx
	callq	memcpy
	movl	5668(%r12), %eax
	testl	%eax, %eax
	movl	$4294967295, %ebp       # imm = 0xFFFFFFFF
	je	.LBB63_23
# BB#17:                                # %for.body.115.lr.ph
                                        #   in Loop: Header=BB63_5 Depth=1
	movq	5656(%r14), %rcx
	movq	5656(%r12), %rdx
	addq	$16, %rcx
	addq	$16, %rdx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB63_18:                              # %for.body.115
                                        #   Parent Loop BB63_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rdx), %rdi
	testq	%rdi, %rdi
	je	.LBB63_20
# BB#19:                                # %if.then.117
                                        #   in Loop: Header=BB63_18 Depth=2
	subq	5640(%r12), %rdi
	shrq	$5, %rdi
	andq	%rbp, %rdi
	shlq	$5, %rdi
	addq	5640(%r14), %rdi
	movq	%rdi, -8(%rcx)
.LBB63_20:                              # %if.end.123
                                        #   in Loop: Header=BB63_18 Depth=2
	movq	(%rdx), %rdi
	testq	%rdi, %rdi
	je	.LBB63_22
# BB#21:                                # %if.then.125
                                        #   in Loop: Header=BB63_18 Depth=2
	subq	5640(%r12), %rdi
	shrq	$5, %rdi
	andq	%rbp, %rdi
	shlq	$5, %rdi
	addq	5640(%r14), %rdi
	movq	%rdi, (%rcx)
.LBB63_22:                              # %if.end.137
                                        #   in Loop: Header=BB63_18 Depth=2
	incl	%esi
	addq	$32, %rcx
	addq	$32, %rdx
	cmpl	%eax, %esi
	jb	.LBB63_18
.LBB63_23:                              # %for.end.142
                                        #   in Loop: Header=BB63_5 Depth=1
	movq	5584(%r12), %rsi
	movq	56(%rsp), %rdi          # 8-byte Reload
	movq	24(%rsp), %rdx          # 8-byte Reload
	callq	memcpy
	addq	$5680, %r14             # imm = 0x1630
	movl	68(%rsp), %eax          # 4-byte Reload
	incl	%eax
	cmpl	36(%rsp), %eax          # 4-byte Folded Reload
	jb	.LBB63_5
.LBB63_24:                              # %for.end.149
	movl	$1, %edi
	callq	opj_tcd_create
	movq	40(%rsp), %rcx          # 8-byte Reload
	movq	%rax, 288(%rcx)
	xorl	%r13d, %r13d
	testq	%rax, %rax
	je	.LBB63_27
# BB#25:                                # %if.end.154
	movq	40(%rsp), %rcx          # 8-byte Reload
	leaq	112(%rcx), %rdx
	movq	%rax, %rdi
	movq	16(%rsp), %rsi          # 8-byte Reload
	callq	opj_tcd_init
	testl	%eax, %eax
	movl	$1, %r13d
	jne	.LBB63_27
# BB#26:                                # %if.then.159
	movq	40(%rsp), %rbx          # 8-byte Reload
	movq	288(%rbx), %rdi
	callq	opj_tcd_destroy
	movq	$0, 288(%rbx)
	xorl	%r13d, %r13d
	movl	$1, %esi
	movl	$.L.str.13, %edx
	xorl	%eax, %eax
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	opj_event_msg
.LBB63_27:                              # %cleanup
	movl	%r13d, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB63_28:                              # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$6705, %edx             # imm = 0x1A31
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_copy_default_tcp_and_create_tcd, %ecx
	callq	__assert_fail
.LBB63_29:                              # %cond.false.3
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$6706, %edx             # imm = 0x1A32
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_copy_default_tcp_and_create_tcd, %ecx
	callq	__assert_fail
.LBB63_30:                              # %cond.false.7
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$6707, %edx             # imm = 0x1A33
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_copy_default_tcp_and_create_tcd, %ecx
	callq	__assert_fail
.Lfunc_end63:
	.size	opj_j2k_copy_default_tcp_and_create_tcd, .Lfunc_end63-opj_j2k_copy_default_tcp_and_create_tcd
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_add_mhmarker,@function
opj_j2k_add_mhmarker:                   # @opj_j2k_add_mhmarker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp612:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp613:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp614:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp615:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp616:
	.cfi_def_cfa_offset 48
.Ltmp617:
	.cfi_offset %rbx, -40
.Ltmp618:
	.cfi_offset %r14, -32
.Ltmp619:
	.cfi_offset %r15, -24
.Ltmp620:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movq	%rdx, %r15
	movl	%esi, %ebp
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB64_8
# BB#1:                                 # %cond.end
	movl	24(%rbx), %ecx
	movl	40(%rbx), %eax
	leal	1(%rcx), %edx
	cmpl	%eax, %edx
	jbe	.LBB64_2
# BB#3:                                 # %if.then
	movl	%eax, %eax
	cvtsi2ssq	%rax, %xmm0
	cvttss2si	%xmm0, %eax
	addl	$100, %eax
	movl	%eax, 40(%rbx)
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rsi
	movq	32(%rbx), %rdi
	callq	realloc
	testq	%rax, %rax
	je	.LBB64_4
# BB#5:                                 # %if.end
	movq	%rax, 32(%rbx)
	movl	24(%rbx), %ecx
	jmp	.LBB64_6
.LBB64_2:                               # %cond.end.if.end.23_crit_edge
	movq	32(%rbx), %rax
.LBB64_6:                               # %if.end.23
	movl	%ecx, %edx
	leaq	(%rdx,%rdx,2), %rdx
	movw	%bp, (%rax,%rdx,8)
	movslq	%r15d, %rsi
	movq	%rsi, 8(%rax,%rdx,8)
	movl	%r14d, 16(%rax,%rdx,8)
	incl	%ecx
	movl	$1, %eax
	jmp	.LBB64_7
.LBB64_4:                               # %if.then.17
	movq	32(%rbx), %rdi
	callq	free
	movq	$0, 32(%rbx)
	movl	$0, 40(%rbx)
	xorl	%ecx, %ecx
	xorl	%eax, %eax
.LBB64_7:                               # %return
	movl	%ecx, 24(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB64_8:                               # %cond.false
	movl	$.L.str.125, %edi
	movl	$.L.str.1, %esi
	movl	$6096, %edx             # imm = 0x17D0
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_add_mhmarker, %ecx
	callq	__assert_fail
.Lfunc_end64:
	.size	opj_j2k_add_mhmarker, .Lfunc_end64-opj_j2k_add_mhmarker
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_build_decoder,@function
opj_j2k_build_decoder:                  # @opj_j2k_build_decoder
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %eax
	retq
.Lfunc_end65:
	.size	opj_j2k_build_decoder, .Lfunc_end65-opj_j2k_build_decoder
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_decoding_validation,@function
opj_j2k_decoding_validation:            # @opj_j2k_decoding_validation
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp621:
	.cfi_def_cfa_offset 16
	testq	%rdi, %rdi
	je	.LBB66_4
# BB#1:                                 # %cond.end
	testq	%rsi, %rsi
	je	.LBB66_5
# BB#2:                                 # %cond.end.4
	testq	%rdx, %rdx
	je	.LBB66_6
# BB#3:                                 # %cond.end.8
	cmpl	$0, 8(%rdi)
	sete	%al
	cmpq	$0, 256(%rdi)
	setne	%cl
	andb	%al, %cl
	cmpq	$0, 264(%rdi)
	setne	%al
	andb	%cl, %al
	movzbl	%al, %eax
	popq	%rdx
	retq
.LBB66_4:                               # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$6506, %edx             # imm = 0x196A
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_decoding_validation, %ecx
	callq	__assert_fail
.LBB66_5:                               # %cond.false.3
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$6507, %edx             # imm = 0x196B
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_decoding_validation, %ecx
	callq	__assert_fail
.LBB66_6:                               # %cond.false.7
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$6508, %edx             # imm = 0x196C
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_decoding_validation, %ecx
	callq	__assert_fail
.Lfunc_end66:
	.size	opj_j2k_decoding_validation, .Lfunc_end66-opj_j2k_decoding_validation
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_decode_tiles,@function
opj_j2k_decode_tiles:                   # @opj_j2k_decode_tiles
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp622:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp623:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp624:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp625:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp626:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp627:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp628:
	.cfi_def_cfa_offset 144
.Ltmp629:
	.cfi_offset %rbx, -56
.Ltmp630:
	.cfi_offset %r12, -48
.Ltmp631:
	.cfi_offset %r13, -40
.Ltmp632:
	.cfi_offset %r14, -32
.Ltmp633:
	.cfi_offset %r15, -24
.Ltmp634:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbp
	movq	%rsi, %r15
	movq	%r15, 40(%rsp)          # 8-byte Spill
	movq	%rdi, %r13
	movl	$1, 84(%rsp)
	movl	$1000, %edi             # imm = 0x3E8
	callq	malloc
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB67_19
# BB#1:                                 # %while.body.preheader
	movl	$1000, 52(%rsp)         # 4-byte Folded Spill
                                        # imm = 0x3E8
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB67_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, 32(%rsp)
	movq	%r15, 24(%rsp)
	leaq	84(%rsp), %rax
	movq	%rax, 16(%rsp)
	leaq	56(%rsp), %rax
	movq	%rax, 8(%rsp)
	leaq	60(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%r13, %rdi
	leaq	80(%rsp), %rsi
	leaq	76(%rsp), %rdx
	leaq	72(%rsp), %rcx
	leaq	68(%rsp), %r8
	leaq	64(%rsp), %r9
	callq	opj_j2k_read_tile_header
	testl	%eax, %eax
	je	.LBB67_3
# BB#5:                                 # %if.end.5
                                        #   in Loop: Header=BB67_2 Depth=1
	cmpl	$0, 84(%rsp)
	je	.LBB67_6
# BB#7:                                 # %if.end.8
                                        #   in Loop: Header=BB67_2 Depth=1
	movl	76(%rsp), %r15d
	cmpl	52(%rsp), %r15d         # 4-byte Folded Reload
	jbe	.LBB67_8
# BB#11:                                # %cond.false
                                        #   in Loop: Header=BB67_2 Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	realloc
	movq	%rax, %r12
	testq	%r12, %r12
	movl	%r15d, %eax
	movl	%eax, 52(%rsp)          # 4-byte Spill
	jne	.LBB67_9
	jmp	.LBB67_12
	.align	16, 0x90
.LBB67_8:                               #   in Loop: Header=BB67_2 Depth=1
	movq	%rbx, %r12
.LBB67_9:                               # %if.end.19
                                        #   in Loop: Header=BB67_2 Depth=1
	movl	80(%rsp), %ebx
	movq	%r13, %rdi
	movl	%ebx, %esi
	movq	%r12, %rdx
	movl	%r15d, %ecx
	movq	40(%rsp), %r15          # 8-byte Reload
	movq	%r15, %r8
	movq	%rbp, %r9
	callq	opj_j2k_decode_tile
	testl	%eax, %eax
	je	.LBB67_10
# BB#13:                                # %if.end.23
                                        #   in Loop: Header=BB67_2 Depth=1
	incl	%ebx
	movl	144(%r13), %r8d
	imull	148(%r13), %r8d
	movl	$4, %esi
	movl	$.L.str.163, %edx
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	%ebx, %ecx
	callq	opj_event_msg
	movq	104(%r13), %rdx
	movq	288(%r13), %rdi
	movq	%r12, %rsi
	callq	opj_j2k_update_image_data
	testl	%eax, %eax
	je	.LBB67_10
# BB#14:                                # %if.end.34
                                        #   in Loop: Header=BB67_2 Depth=1
	movl	$4, %esi
	movl	$.L.str.164, %edx
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	%ebx, %ecx
	callq	opj_event_msg
	movq	%r15, %rdi
	callq	opj_stream_get_number_byte_left
	testq	%rax, %rax
	jne	.LBB67_16
# BB#15:                                # %land.lhs.true
                                        #   in Loop: Header=BB67_2 Depth=1
	cmpl	$64, 8(%r13)
	je	.LBB67_17
.LBB67_16:                              # %if.end.43
                                        #   in Loop: Header=BB67_2 Depth=1
	incl	%r14d
	movl	144(%r13), %eax
	imull	148(%r13), %eax
	cmpl	%eax, %r14d
	movq	%r12, %rbx
	jne	.LBB67_2
	jmp	.LBB67_17
.LBB67_19:                              # %if.then
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.161, %edx
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	opj_event_msg
	jmp	.LBB67_18
.LBB67_10:                              # %if.then.22
	movq	%r12, %rdi
	jmp	.LBB67_4
.LBB67_3:                               # %if.then.4
	movq	%rbx, %rdi
.LBB67_4:                               # %cleanup.53
	callq	free
	xorl	%ebx, %ebx
	jmp	.LBB67_18
.LBB67_6:
	movq	%rbx, %r12
.LBB67_17:                              # %while.end
	movq	%r12, %rdi
	callq	free
	movl	$1, %ebx
	jmp	.LBB67_18
.LBB67_12:                              # %cleanup
	movq	%rbx, %rdi
	callq	free
	movl	80(%rsp), %ecx
	incl	%ecx
	movl	144(%r13), %r8d
	imull	148(%r13), %r8d
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.162, %edx
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	opj_event_msg
.LBB67_18:                              # %cleanup.53
	movl	%ebx, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end67:
	.size	opj_j2k_decode_tiles, .Lfunc_end67-opj_j2k_decode_tiles
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_update_image_data,@function
opj_j2k_update_image_data:              # @opj_j2k_update_image_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp635:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp636:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp637:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp638:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp639:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp640:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp641:
	.cfi_def_cfa_offset 144
.Ltmp642:
	.cfi_offset %rbx, -56
.Ltmp643:
	.cfi_offset %r12, -48
.Ltmp644:
	.cfi_offset %r13, -40
.Ltmp645:
	.cfi_offset %r14, -32
.Ltmp646:
	.cfi_offset %r15, -24
.Ltmp647:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	32(%rdi), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	$1, %ecx
	cmpl	$0, 16(%rax)
	je	.LBB68_127
# BB#1:                                 # %for.body.lr.ph
	movq	24(%rdx), %r14
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	24(%rax), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	24(%rdi), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB68_2:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB68_29 Depth 2
                                        #       Child Loop BB68_37 Depth 3
                                        #       Child Loop BB68_42 Depth 3
                                        #       Child Loop BB68_45 Depth 3
                                        #     Child Loop BB68_50 Depth 2
                                        #       Child Loop BB68_58 Depth 3
                                        #       Child Loop BB68_63 Depth 3
                                        #       Child Loop BB68_66 Depth 3
                                        #     Child Loop BB68_73 Depth 2
                                        #       Child Loop BB68_88 Depth 3
                                        #       Child Loop BB68_92 Depth 3
                                        #     Child Loop BB68_81 Depth 2
                                        #       Child Loop BB68_96 Depth 3
                                        #       Child Loop BB68_100 Depth 3
                                        #     Child Loop BB68_106 Depth 2
                                        #       Child Loop BB68_114 Depth 3
                                        #       Child Loop BB68_119 Depth 3
                                        #       Child Loop BB68_122 Depth 3
	movq	48(%r14), %rax
	testq	%rax, %rax
	jne	.LBB68_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB68_2 Depth=1
	movl	12(%r14), %edi
	imull	8(%r14), %edi
	movl	$4, %esi
	callq	calloc
	movq	%rax, 48(%r14)
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB68_127
.LBB68_4:                               # %if.end.19
                                        #   in Loop: Header=BB68_2 Depth=1
	movq	64(%rsp), %rdx          # 8-byte Reload
	movl	36(%rdx), %ecx
	movl	%ecx, 36(%r14)
	movl	24(%rdx), %ecx
	movl	36(%rdx), %esi
	movl	%ecx, %edx
	shrl	$3, %edx
	andl	$7, %ecx
	movq	56(%rsp), %rdi          # 8-byte Reload
	movq	24(%rdi), %rdi
	cmpl	$1, %ecx
	sbbl	$-1, %edx
	cmpl	$3, %edx
	movl	$4, %ecx
	cmovel	%ecx, %edx
	imulq	$176, %rsi, %rsi
	movl	(%rdi,%rsi), %r9d
	movb	40(%r14), %cl
	movslq	16(%r14), %rbp
	movl	$1, %ebx
	shll	%cl, %ebx
	movslq	%ebx, %r8
	leaq	-1(%rbp,%r8), %rbp
	sarq	%cl, %rbp
	movslq	20(%r14), %rbx
	movq	%r14, %r11
	leaq	-1(%rbx,%r8), %rbx
	sarq	%cl, %rbx
	testl	%r9d, %r9d
	js	.LBB68_128
# BB#5:                                 # %cond.end.44
                                        #   in Loop: Header=BB68_2 Depth=1
	movl	8(%rdi,%rsi), %r13d
	testl	%r13d, %r13d
	js	.LBB68_129
# BB#6:                                 # %cond.end.50
                                        #   in Loop: Header=BB68_2 Depth=1
	movl	4(%rdi,%rsi), %r8d
	movl	%r13d, %r10d
	subl	%r9d, %r10d
	movl	12(%rdi,%rsi), %ecx
	movq	%r11, 80(%rsp)          # 8-byte Spill
	movl	8(%r11), %edi
	movq	%rdi, 72(%rsp)          # 8-byte Spill
	movl	12(%r11), %r12d
	leal	(%rbp,%rdi), %r14d
	movl	%ebp, %r11d
	subl	%r9d, %r11d
	jae	.LBB68_10
# BB#7:                                 # %if.then.54
                                        #   in Loop: Header=BB68_2 Depth=1
	movl	%r9d, %edi
	subl	%ebp, %edi
	movl	%edi, 32(%rsp)          # 4-byte Spill
	xorl	%r11d, %r11d
	cmpl	%r14d, %r13d
	jbe	.LBB68_8
# BB#9:                                 # %if.else
                                        #   in Loop: Header=BB68_2 Depth=1
	subl	%r9d, %r14d
	movq	%r14, 40(%rsp)          # 8-byte Spill
	movl	%r10d, %r13d
	subl	%r14d, %r13d
	jmp	.LBB68_14
	.align	16, 0x90
.LBB68_10:                              # %if.else.65
                                        #   in Loop: Header=BB68_2 Depth=1
	subl	%r14d, %r13d
	jbe	.LBB68_11
# BB#12:                                # %if.else.73
                                        #   in Loop: Header=BB68_2 Depth=1
	movl	$0, 32(%rsp)            # 4-byte Folded Spill
	movq	72(%rsp), %rdi          # 8-byte Reload
	jmp	.LBB68_13
	.align	16, 0x90
.LBB68_8:                               #   in Loop: Header=BB68_2 Depth=1
	xorl	%r13d, %r13d
	movl	%r10d, %edi
.LBB68_13:                              # %if.end.78
                                        #   in Loop: Header=BB68_2 Depth=1
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	jmp	.LBB68_14
	.align	16, 0x90
.LBB68_11:                              # %if.then.71
                                        #   in Loop: Header=BB68_2 Depth=1
	movl	%r10d, %edi
	subl	%r11d, %edi
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	xorl	%r13d, %r13d
	movl	$0, 32(%rsp)            # 4-byte Folded Spill
.LBB68_14:                              # %if.end.78
                                        #   in Loop: Header=BB68_2 Depth=1
	movl	%ecx, %ebp
	subl	%r8d, %ebp
	leal	(%rbx,%r12), %r9d
	movl	%ebx, %edi
	subl	%r8d, %edi
	jae	.LBB68_19
# BB#15:                                # %if.then.82
                                        #   in Loop: Header=BB68_2 Depth=1
	movl	%r8d, %r14d
	subl	%ebx, %r14d
	xorl	%edi, %edi
	cmpl	%r9d, %ecx
	jbe	.LBB68_16
# BB#18:                                # %if.else.89
                                        #   in Loop: Header=BB68_2 Depth=1
	subl	%r8d, %r9d
	subl	%r9d, %ebp
	movl	%ebp, %ebx
	movl	%r9d, %r12d
	jmp	.LBB68_22
	.align	16, 0x90
.LBB68_19:                              # %if.else.94
                                        #   in Loop: Header=BB68_2 Depth=1
	subl	%r9d, %ecx
	movl	%ecx, %ebx
	jbe	.LBB68_20
# BB#21:                                # %if.else.102
                                        #   in Loop: Header=BB68_2 Depth=1
	xorl	%r14d, %r14d
	jmp	.LBB68_22
	.align	16, 0x90
.LBB68_16:                              #   in Loop: Header=BB68_2 Depth=1
	xorl	%ebx, %ebx
	movl	%ebp, %r12d
	jmp	.LBB68_22
	.align	16, 0x90
.LBB68_20:                              # %if.then.100
                                        #   in Loop: Header=BB68_2 Depth=1
	subl	%edi, %ebp
	xorl	%ebx, %ebx
	xorl	%r14d, %r14d
	movl	%ebp, %r12d
.LBB68_22:                              # %if.end.107
                                        #   in Loop: Header=BB68_2 Depth=1
	movq	80(%rsp), %r9           # 8-byte Reload
	movl	%r11d, %ebp
	orl	%r13d, %ebp
	movq	40(%rsp), %rsi          # 8-byte Reload
	orl	%esi, %ebp
	orl	%ebx, %ebp
	orl	%edi, %ebp
	xorl	%ecx, %ecx
	orl	%r12d, %ebp
	js	.LBB68_127
# BB#23:                                # %if.end.126
                                        #   in Loop: Header=BB68_2 Depth=1
	movq	%r9, 80(%rsp)           # 8-byte Spill
	imull	%r10d, %edi
	addl	%r11d, %edi
	leal	(%r13,%r11), %r8d
	imull	%r10d, %ebx
	subl	%r11d, %ebx
	movl	%ebx, 28(%rsp)          # 4-byte Spill
	movq	72(%rsp), %rcx          # 8-byte Reload
	imull	%ecx, %r14d
	addl	32(%rsp), %r14d         # 4-byte Folded Reload
	subl	%esi, %ecx
	movq	%rsi, %rbx
	movslq	%r14d, %rsi
	leaq	(%rax,%rsi,4), %r14
	cmpl	$4, %edx
	je	.LBB68_104
# BB#24:                                # %if.end.126
                                        #   in Loop: Header=BB68_2 Depth=1
	cmpl	$2, %edx
	jne	.LBB68_25
# BB#70:                                # %sw.bb.188
                                        #   in Loop: Header=BB68_2 Depth=1
	movslq	%edi, %rax
	leaq	(%r15,%rax,2), %r15
	movq	64(%rsp), %rax          # 8-byte Reload
	cmpl	$0, 32(%rax)
	je	.LBB68_79
# BB#71:                                # %for.cond.195.preheader
                                        #   in Loop: Header=BB68_2 Depth=1
	movq	%r12, %rdi
	testl	%edi, %edi
	je	.LBB68_103
# BB#72:                                # %for.cond.199.preheader.lr.ph
                                        #   in Loop: Header=BB68_2 Depth=1
	movslq	%ecx, %r13
	movslq	%r8d, %r11
	movq	%r11, 16(%rsp)          # 8-byte Spill
	movq	%rbx, %r12
	leal	-1(%r12), %r10d
	leaq	1(%r10), %r8
	movq	%r8, %rbx
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%rax, %rbx
	leaq	-8(%rbx), %rax
	shrq	$3, %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	andl	$1, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB68_73:                              # %for.cond.199.preheader
                                        #   Parent Loop BB68_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB68_88 Depth 3
                                        #       Child Loop BB68_92 Depth 3
	testl	%r12d, %r12d
	je	.LBB68_94
# BB#74:                                # %for.body.202.lr.ph
                                        #   in Loop: Header=BB68_73 Depth=2
	xorl	%ecx, %ecx
	testq	%rbx, %rbx
	movq	%r15, %rax
	movq	%r14, %rdx
	movl	$0, %esi
	je	.LBB68_90
# BB#75:                                # %vector.body481.preheader
                                        #   in Loop: Header=BB68_73 Depth=2
	cmpq	$0, 32(%rsp)            # 8-byte Folded Reload
	movl	$0, %esi
	jne	.LBB68_77
# BB#76:                                # %vector.body481.prol
                                        #   in Loop: Header=BB68_73 Depth=2
	movq	(%r15), %xmm0           # xmm0 = mem[0],zero
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm0
	movq	8(%r15), %xmm1          # xmm1 = mem[0],zero
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm1
	movdqu	%xmm0, (%r14)
	movdqu	%xmm1, 16(%r14)
	movl	$8, %esi
.LBB68_77:                              # %vector.body481.preheader.split
                                        #   in Loop: Header=BB68_73 Depth=2
	leaq	(%r15,%rbx,2), %rax
	leaq	(%r14,%rbx,4), %rdx
	cmpq	$0, 72(%rsp)            # 8-byte Folded Reload
	je	.LBB68_78
# BB#87:                                # %vector.body481.preheader.split.split
                                        #   in Loop: Header=BB68_73 Depth=2
	movq	%r8, %r11
	movq	%rbx, %rcx
	subq	%rsi, %rcx
	leaq	48(%r14,%rsi,4), %r9
	leaq	24(%r15,%rsi,2), %r8
	.align	16, 0x90
.LBB68_88:                              # %vector.body481
                                        #   Parent Loop BB68_2 Depth=1
                                        #     Parent Loop BB68_73 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-24(%r8), %xmm0         # xmm0 = mem[0],zero
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm0
	movq	-16(%r8), %xmm1         # xmm1 = mem[0],zero
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm1
	movdqu	%xmm0, -48(%r9)
	movdqu	%xmm1, -32(%r9)
	movq	-8(%r8), %xmm0          # xmm0 = mem[0],zero
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm0
	movq	(%r8), %xmm1            # xmm1 = mem[0],zero
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm1
	movdqu	%xmm0, -16(%r9)
	movdqu	%xmm1, (%r9)
	addq	$64, %r9
	addq	$32, %r8
	addq	$-16, %rcx
	jne	.LBB68_88
# BB#89:                                #   in Loop: Header=BB68_73 Depth=2
	movq	%rbx, %rcx
	movl	%ebx, %esi
	movq	%r11, %r8
	movq	16(%rsp), %r11          # 8-byte Reload
	jmp	.LBB68_90
.LBB68_78:                              #   in Loop: Header=BB68_73 Depth=2
	movq	%rbx, %rcx
	movl	%ebx, %esi
.LBB68_90:                              # %middle.block482
                                        #   in Loop: Header=BB68_73 Depth=2
	addq	$4, %r14
	addq	$2, %r15
	cmpq	%rcx, %r8
	je	.LBB68_93
# BB#91:                                # %for.body.202.preheader
                                        #   in Loop: Header=BB68_73 Depth=2
	movl	%r12d, %ecx
	subl	%esi, %ecx
	.align	16, 0x90
.LBB68_92:                              # %for.body.202
                                        #   Parent Loop BB68_2 Depth=1
                                        #     Parent Loop BB68_73 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movswl	(%rax), %esi
	addq	$2, %rax
	movl	%esi, (%rdx)
	addq	$4, %rdx
	decl	%ecx
	jne	.LBB68_92
.LBB68_93:                              # %for.cond.199.for.end.208_crit_edge
                                        #   in Loop: Header=BB68_73 Depth=2
	leaq	(%r14,%r10,4), %r14
	leaq	(%r15,%r10,2), %r15
.LBB68_94:                              # %for.end.208
                                        #   in Loop: Header=BB68_73 Depth=2
	leaq	(%r14,%r13,4), %r14
	leaq	(%r15,%r11,2), %r15
	incl	%ebp
	cmpl	%edi, %ebp
	jne	.LBB68_73
	jmp	.LBB68_103
	.align	16, 0x90
.LBB68_104:                             # %sw.bb.242
                                        #   in Loop: Header=BB68_2 Depth=1
	movslq	%edi, %rax
	leaq	(%r15,%rax,4), %rbp
	movq	%r12, %r9
	testl	%r9d, %r9d
	je	.LBB68_125
# BB#105:                               # %for.cond.250.preheader.lr.ph
                                        #   in Loop: Header=BB68_2 Depth=1
	movslq	%ecx, %r11
	movslq	%r8d, %r15
	movq	%rbx, %r12
	leal	-1(%r12), %r8d
	leaq	1(%r8), %r10
	movq	%r10, %r13
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%rax, %r13
	movq	%r13, 72(%rsp)          # 8-byte Spill
	leaq	-8(%r13), %rax
	shrq	$3, %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	andl	$1, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	.align	16, 0x90
.LBB68_106:                             # %for.cond.250.preheader
                                        #   Parent Loop BB68_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB68_114 Depth 3
                                        #       Child Loop BB68_119 Depth 3
                                        #       Child Loop BB68_122 Depth 3
	testl	%r12d, %r12d
	je	.LBB68_124
# BB#107:                               # %for.body.253.lr.ph
                                        #   in Loop: Header=BB68_106 Depth=2
	xorl	%edi, %edi
	testq	%r13, %r13
	movq	%rbp, %rcx
	movq	%r14, %rax
	movl	$0, %ebx
	je	.LBB68_116
# BB#108:                               # %vector.memcheck568
                                        #   in Loop: Header=BB68_106 Depth=2
	leaq	(%rbp,%r8,4), %rax
	xorl	%edi, %edi
	cmpq	%rax, %r14
	ja	.LBB68_110
# BB#109:                               # %vector.memcheck568
                                        #   in Loop: Header=BB68_106 Depth=2
	leaq	(%r14,%r8,4), %rax
	cmpq	%rax, %rbp
	movq	%rbp, %rcx
	movq	%r14, %rax
	movl	$0, %ebx
	jbe	.LBB68_116
.LBB68_110:                             # %vector.body547.preheader
                                        #   in Loop: Header=BB68_106 Depth=2
	cmpq	$0, 16(%rsp)            # 8-byte Folded Reload
	movl	$0, %edx
	jne	.LBB68_112
# BB#111:                               # %vector.body547.prol
                                        #   in Loop: Header=BB68_106 Depth=2
	movdqu	(%rbp), %xmm0
	movdqu	16(%rbp), %xmm1
	movdqu	%xmm0, (%r14)
	movdqu	%xmm1, 16(%r14)
	movl	$8, %edx
.LBB68_112:                             # %vector.body547.preheader.split
                                        #   in Loop: Header=BB68_106 Depth=2
	leaq	(%rbp,%r13,4), %rcx
	leaq	(%r14,%r13,4), %rax
	cmpq	$0, 32(%rsp)            # 8-byte Folded Reload
	je	.LBB68_115
# BB#113:                               # %vector.body547.preheader.split.split
                                        #   in Loop: Header=BB68_106 Depth=2
	movq	%r13, %rdi
	subq	%rdx, %rdi
	leaq	48(%r14,%rdx,4), %rbx
	leaq	48(%rbp,%rdx,4), %rdx
	.align	16, 0x90
.LBB68_114:                             # %vector.body547
                                        #   Parent Loop BB68_2 Depth=1
                                        #     Parent Loop BB68_106 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	-48(%rdx), %xmm0
	movups	-32(%rdx), %xmm1
	movups	%xmm0, -48(%rbx)
	movups	%xmm1, -32(%rbx)
	movdqu	-16(%rdx), %xmm0
	movdqu	(%rdx), %xmm1
	movdqu	%xmm0, -16(%rbx)
	movdqu	%xmm1, (%rbx)
	addq	$64, %rbx
	addq	$64, %rdx
	addq	$-16, %rdi
	jne	.LBB68_114
.LBB68_115:                             #   in Loop: Header=BB68_106 Depth=2
	movq	%r13, %rdi
	movl	%r13d, %ebx
.LBB68_116:                             # %middle.block548
                                        #   in Loop: Header=BB68_106 Depth=2
	addq	$4, %r14
	addq	$4, %rbp
	cmpq	%rdi, %r10
	je	.LBB68_123
# BB#117:                               # %for.body.253.preheader
                                        #   in Loop: Header=BB68_106 Depth=2
	movq	%r12, %r13
	movq	%r15, %r12
	movq	%r11, %r15
	movq	%r10, %r11
	movq	%r9, %rdi
	movl	%r13d, %r9d
	subl	%ebx, %r9d
	movl	%r8d, %r10d
	subl	%ebx, %r10d
	testb	$7, %r9b
	je	.LBB68_120
# BB#118:                               # %for.body.253.prol.preheader
                                        #   in Loop: Header=BB68_106 Depth=2
	andl	$7, %r9d
	negl	%r9d
	.align	16, 0x90
.LBB68_119:                             # %for.body.253.prol
                                        #   Parent Loop BB68_2 Depth=1
                                        #     Parent Loop BB68_106 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rcx), %edx
	addq	$4, %rcx
	movl	%edx, (%rax)
	addq	$4, %rax
	incl	%ebx
	incl	%r9d
	jne	.LBB68_119
.LBB68_120:                             # %for.body.253.preheader.split
                                        #   in Loop: Header=BB68_106 Depth=2
	cmpl	$7, %r10d
	movq	%rdi, %r9
	movq	%r11, %r10
	movq	%r15, %r11
	movq	%r12, %r15
	movq	%r13, %r12
	movq	72(%rsp), %r13          # 8-byte Reload
	jb	.LBB68_123
# BB#121:                               # %for.body.253.preheader.split.split
                                        #   in Loop: Header=BB68_106 Depth=2
	movl	%r12d, %edi
	subl	%ebx, %edi
	.align	16, 0x90
.LBB68_122:                             # %for.body.253
                                        #   Parent Loop BB68_2 Depth=1
                                        #     Parent Loop BB68_106 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rcx), %edx
	movl	%edx, (%rax)
	movl	4(%rcx), %edx
	movl	%edx, 4(%rax)
	movl	8(%rcx), %edx
	movl	%edx, 8(%rax)
	movl	12(%rcx), %edx
	movl	%edx, 12(%rax)
	movl	16(%rcx), %edx
	movl	%edx, 16(%rax)
	movl	20(%rcx), %edx
	movl	%edx, 20(%rax)
	movl	24(%rcx), %edx
	movl	%edx, 24(%rax)
	movl	28(%rcx), %edx
	movl	%edx, 28(%rax)
	addq	$32, %rcx
	addq	$32, %rax
	addl	$-8, %edi
	jne	.LBB68_122
.LBB68_123:                             # %for.cond.250.for.end.258_crit_edge
                                        #   in Loop: Header=BB68_106 Depth=2
	leaq	(%r14,%r8,4), %r14
	leaq	(%rbp,%r8,4), %rbp
.LBB68_124:                             # %for.end.258
                                        #   in Loop: Header=BB68_106 Depth=2
	leaq	(%r14,%r11,4), %r14
	leaq	(%rbp,%r15,4), %rbp
	incl	%esi
	cmpl	%r9d, %esi
	jne	.LBB68_106
.LBB68_125:                             # %for.end.265
                                        #   in Loop: Header=BB68_2 Depth=1
	movslq	28(%rsp), %rax          # 4-byte Folded Reload
	leaq	(%rbp,%rax,4), %r15
	jmp	.LBB68_126
	.align	16, 0x90
.LBB68_25:                              # %if.end.126
                                        #   in Loop: Header=BB68_2 Depth=1
	cmpl	$1, %edx
	jne	.LBB68_126
# BB#26:                                # %sw.bb
                                        #   in Loop: Header=BB68_2 Depth=1
	movslq	%edi, %rax
	addq	%rax, %r15
	movq	64(%rsp), %rax          # 8-byte Reload
	cmpl	$0, 32(%rax)
	pxor	%xmm2, %xmm2
	je	.LBB68_48
# BB#27:                                # %for.cond.144.preheader
                                        #   in Loop: Header=BB68_2 Depth=1
	testl	%r12d, %r12d
	je	.LBB68_69
# BB#28:                                # %for.cond.148.preheader.lr.ph
                                        #   in Loop: Header=BB68_2 Depth=1
	movq	%r12, 72(%rsp)          # 8-byte Spill
	movslq	%ecx, %r10
	movslq	%r8d, %r9
	movq	%rbx, %r12
	leal	-1(%r12), %ecx
	leaq	1(%rcx), %r8
	movq	%r8, %r13
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%rax, %r13
	leaq	-8(%r13), %rax
	shrq	$3, %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	andl	$1, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	xorl	%r11d, %r11d
	.align	16, 0x90
.LBB68_29:                              # %for.cond.148.preheader
                                        #   Parent Loop BB68_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB68_37 Depth 3
                                        #       Child Loop BB68_42 Depth 3
                                        #       Child Loop BB68_45 Depth 3
	testl	%r12d, %r12d
	je	.LBB68_47
# BB#30:                                # %for.body.151.lr.ph
                                        #   in Loop: Header=BB68_29 Depth=2
	xorl	%edi, %edi
	testq	%r13, %r13
	movq	%r15, %rdx
	movq	%r14, %rsi
	movl	$0, %eax
	je	.LBB68_39
# BB#31:                                # %vector.memcheck358
                                        #   in Loop: Header=BB68_29 Depth=2
	leaq	(%r15,%rcx), %rax
	xorl	%edi, %edi
	cmpq	%rax, %r14
	ja	.LBB68_33
# BB#32:                                # %vector.memcheck358
                                        #   in Loop: Header=BB68_29 Depth=2
	leaq	(%r14,%rcx,4), %rax
	cmpq	%rax, %r15
	movq	%r15, %rdx
	movq	%r14, %rsi
	movl	$0, %eax
	jbe	.LBB68_39
.LBB68_33:                              # %vector.body339.preheader
                                        #   in Loop: Header=BB68_29 Depth=2
	cmpq	$0, 16(%rsp)            # 8-byte Folded Reload
	movl	$0, %ebx
	jne	.LBB68_35
# BB#34:                                # %vector.body339.prol
                                        #   in Loop: Header=BB68_29 Depth=2
	movd	(%r15), %xmm0           # xmm0 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm0
	movd	4(%r15), %xmm1          # xmm1 = mem[0],zero,zero,zero
	punpcklbw	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm1
	movdqu	%xmm0, (%r14)
	movdqu	%xmm1, 16(%r14)
	movl	$8, %ebx
.LBB68_35:                              # %vector.body339.preheader.split
                                        #   in Loop: Header=BB68_29 Depth=2
	leaq	(%r15,%r13), %rdx
	leaq	(%r14,%r13,4), %rsi
	cmpq	$0, 32(%rsp)            # 8-byte Folded Reload
	je	.LBB68_38
# BB#36:                                # %vector.body339.preheader.split.split
                                        #   in Loop: Header=BB68_29 Depth=2
	movq	%r13, %rax
	subq	%rbx, %rax
	leaq	48(%r14,%rbx,4), %rdi
	leaq	12(%r15,%rbx), %rbx
	.align	16, 0x90
.LBB68_37:                              # %vector.body339
                                        #   Parent Loop BB68_2 Depth=1
                                        #     Parent Loop BB68_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movd	-12(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm0
	movd	-8(%rbx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	punpcklbw	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm1
	movdqu	%xmm0, -48(%rdi)
	movdqu	%xmm1, -32(%rdi)
	movd	-4(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm0
	movd	(%rbx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	punpcklbw	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm1
	movdqu	%xmm0, -16(%rdi)
	movdqu	%xmm1, (%rdi)
	addq	$64, %rdi
	addq	$16, %rbx
	addq	$-16, %rax
	jne	.LBB68_37
.LBB68_38:                              #   in Loop: Header=BB68_29 Depth=2
	movq	%r13, %rdi
	movl	%r13d, %eax
.LBB68_39:                              # %middle.block340
                                        #   in Loop: Header=BB68_29 Depth=2
	addq	$4, %r14
	incq	%r15
	cmpq	%rdi, %r8
	je	.LBB68_46
# BB#40:                                # %for.body.151.preheader
                                        #   in Loop: Header=BB68_29 Depth=2
	movl	%r12d, %ebx
	subl	%eax, %ebx
	movl	%ecx, %edi
	subl	%eax, %edi
	testb	$3, %bl
	je	.LBB68_43
# BB#41:                                # %for.body.151.prol.preheader
                                        #   in Loop: Header=BB68_29 Depth=2
	andl	$3, %ebx
	negl	%ebx
	.align	16, 0x90
.LBB68_42:                              # %for.body.151.prol
                                        #   Parent Loop BB68_2 Depth=1
                                        #     Parent Loop BB68_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsbl	(%rdx), %ebp
	incq	%rdx
	movl	%ebp, (%rsi)
	addq	$4, %rsi
	incl	%eax
	incl	%ebx
	jne	.LBB68_42
.LBB68_43:                              # %for.body.151.preheader.split
                                        #   in Loop: Header=BB68_29 Depth=2
	cmpl	$3, %edi
	jb	.LBB68_46
# BB#44:                                # %for.body.151.preheader.split.split
                                        #   in Loop: Header=BB68_29 Depth=2
	movl	%r12d, %edi
	subl	%eax, %edi
	.align	16, 0x90
.LBB68_45:                              # %for.body.151
                                        #   Parent Loop BB68_2 Depth=1
                                        #     Parent Loop BB68_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsbl	(%rdx), %eax
	movl	%eax, (%rsi)
	movsbl	1(%rdx), %eax
	movl	%eax, 4(%rsi)
	movsbl	2(%rdx), %eax
	movl	%eax, 8(%rsi)
	movsbl	3(%rdx), %eax
	movl	%eax, 12(%rsi)
	addq	$4, %rdx
	addq	$16, %rsi
	addl	$-4, %edi
	jne	.LBB68_45
.LBB68_46:                              # %for.cond.148.for.end_crit_edge
                                        #   in Loop: Header=BB68_29 Depth=2
	leaq	(%r14,%rcx,4), %r14
	addq	%rcx, %r15
.LBB68_47:                              # %for.end
                                        #   in Loop: Header=BB68_29 Depth=2
	leaq	(%r14,%r10,4), %r14
	addq	%r9, %r15
	incl	%r11d
	movq	72(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %r11d
	jne	.LBB68_29
	jmp	.LBB68_69
.LBB68_79:                              # %for.cond.217.preheader
                                        #   in Loop: Header=BB68_2 Depth=1
	movq	%r12, %r9
	testl	%r9d, %r9d
	pxor	%xmm2, %xmm2
	je	.LBB68_103
# BB#80:                                # %for.cond.221.preheader.lr.ph
                                        #   in Loop: Header=BB68_2 Depth=1
	movslq	%ecx, %r11
	movslq	%r8d, %r13
	movq	%rbx, %r12
	leal	-1(%r12), %r8d
	movq	%r8, 16(%rsp)           # 8-byte Spill
	leaq	1(%r8), %r10
	movq	%r10, %rdx
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%rax, %rdx
	leaq	-8(%rdx), %rax
	shrq	$3, %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	andl	$1, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	.align	16, 0x90
.LBB68_81:                              # %for.cond.221.preheader
                                        #   Parent Loop BB68_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB68_96 Depth 3
                                        #       Child Loop BB68_100 Depth 3
	testl	%r12d, %r12d
	je	.LBB68_102
# BB#82:                                # %for.body.224.lr.ph
                                        #   in Loop: Header=BB68_81 Depth=2
	xorl	%esi, %esi
	testq	%rdx, %rdx
	movq	%r15, %rcx
	movq	%r14, %rbp
	movl	$0, %ebx
	je	.LBB68_98
# BB#83:                                # %vector.body415.preheader
                                        #   in Loop: Header=BB68_81 Depth=2
	cmpq	$0, 32(%rsp)            # 8-byte Folded Reload
	movl	$0, %edi
	jne	.LBB68_85
# BB#84:                                # %vector.body415.prol
                                        #   in Loop: Header=BB68_81 Depth=2
	movq	(%r15), %xmm0           # xmm0 = mem[0],zero
	movq	8(%r15), %xmm1          # xmm1 = mem[0],zero
	punpcklwd	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3]
	punpcklwd	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	movdqu	%xmm0, (%r14)
	movdqu	%xmm1, 16(%r14)
	movl	$8, %edi
.LBB68_85:                              # %vector.body415.preheader.split
                                        #   in Loop: Header=BB68_81 Depth=2
	leaq	(%r15,%rdx,2), %rcx
	leaq	(%r14,%rdx,4), %rbp
	cmpq	$0, 72(%rsp)            # 8-byte Folded Reload
	je	.LBB68_86
# BB#95:                                # %vector.body415.preheader.split.split
                                        #   in Loop: Header=BB68_81 Depth=2
	movq	%r13, %r8
	movq	%r11, %r13
	movq	%r10, %r11
	movq	%r12, %r10
	movq	%r9, %r12
	movq	%rdx, %rbx
	subq	%rdi, %rbx
	leaq	48(%r14,%rdi,4), %rsi
	leaq	24(%r15,%rdi,2), %r9
	.align	16, 0x90
.LBB68_96:                              # %vector.body415
                                        #   Parent Loop BB68_2 Depth=1
                                        #     Parent Loop BB68_81 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-24(%r9), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%r9), %xmm1         # xmm1 = mem[0],zero
	punpcklwd	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3]
	punpcklwd	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	movdqu	%xmm0, -48(%rsi)
	movdqu	%xmm1, -32(%rsi)
	movq	-8(%r9), %xmm0          # xmm0 = mem[0],zero
	movq	(%r9), %xmm1            # xmm1 = mem[0],zero
	punpcklwd	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3]
	punpcklwd	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	movdqu	%xmm0, -16(%rsi)
	movdqu	%xmm1, (%rsi)
	addq	$64, %rsi
	addq	$32, %r9
	addq	$-16, %rbx
	jne	.LBB68_96
# BB#97:                                #   in Loop: Header=BB68_81 Depth=2
	movq	%rdx, %rsi
	movl	%edx, %ebx
	movq	%r12, %r9
	movq	%r10, %r12
	movq	%r11, %r10
	movq	%r13, %r11
	movq	%r8, %r13
	movq	16(%rsp), %r8           # 8-byte Reload
	jmp	.LBB68_98
.LBB68_86:                              #   in Loop: Header=BB68_81 Depth=2
	movq	%rdx, %rsi
	movl	%edx, %ebx
.LBB68_98:                              # %middle.block416
                                        #   in Loop: Header=BB68_81 Depth=2
	addq	$4, %r14
	addq	$2, %r15
	cmpq	%rsi, %r10
	je	.LBB68_101
# BB#99:                                # %for.body.224.preheader
                                        #   in Loop: Header=BB68_81 Depth=2
	movl	%r12d, %esi
	subl	%ebx, %esi
	.align	16, 0x90
.LBB68_100:                             # %for.body.224
                                        #   Parent Loop BB68_2 Depth=1
                                        #     Parent Loop BB68_81 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzwl	(%rcx), %edi
	addq	$2, %rcx
	movl	%edi, (%rbp)
	addq	$4, %rbp
	decl	%esi
	jne	.LBB68_100
.LBB68_101:                             # %for.cond.221.for.end.231_crit_edge
                                        #   in Loop: Header=BB68_81 Depth=2
	leaq	(%r14,%r8,4), %r14
	leaq	(%r15,%r8,2), %r15
.LBB68_102:                             # %for.end.231
                                        #   in Loop: Header=BB68_81 Depth=2
	leaq	(%r14,%r11,4), %r14
	leaq	(%r15,%r13,2), %r15
	incl	%eax
	cmpl	%r9d, %eax
	jne	.LBB68_81
.LBB68_103:                             # %if.end.239
                                        #   in Loop: Header=BB68_2 Depth=1
	movslq	28(%rsp), %rax          # 4-byte Folded Reload
	leaq	(%r15,%rax,2), %r15
	jmp	.LBB68_126
.LBB68_48:                              # %for.cond.163.preheader
                                        #   in Loop: Header=BB68_2 Depth=1
	testl	%r12d, %r12d
	je	.LBB68_69
# BB#49:                                # %for.cond.167.preheader.lr.ph
                                        #   in Loop: Header=BB68_2 Depth=1
	movq	%r12, 72(%rsp)          # 8-byte Spill
	movslq	%ecx, %r10
	movslq	%r8d, %r9
	movq	%rbx, %r12
	leal	-1(%r12), %ecx
	leaq	1(%rcx), %r8
	movq	%r8, %r13
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%rax, %r13
	leaq	-8(%r13), %rax
	shrq	$3, %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	andl	$1, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	xorl	%r11d, %r11d
	.align	16, 0x90
.LBB68_50:                              # %for.cond.167.preheader
                                        #   Parent Loop BB68_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB68_58 Depth 3
                                        #       Child Loop BB68_63 Depth 3
                                        #       Child Loop BB68_66 Depth 3
	testl	%r12d, %r12d
	je	.LBB68_68
# BB#51:                                # %for.body.170.lr.ph
                                        #   in Loop: Header=BB68_50 Depth=2
	xorl	%edi, %edi
	testq	%r13, %r13
	movq	%r15, %rdx
	movq	%r14, %rsi
	movl	$0, %eax
	je	.LBB68_60
# BB#52:                                # %vector.memcheck
                                        #   in Loop: Header=BB68_50 Depth=2
	leaq	(%r15,%rcx), %rax
	xorl	%edi, %edi
	cmpq	%rax, %r14
	ja	.LBB68_54
# BB#53:                                # %vector.memcheck
                                        #   in Loop: Header=BB68_50 Depth=2
	leaq	(%r14,%rcx,4), %rax
	cmpq	%rax, %r15
	movq	%r15, %rdx
	movq	%r14, %rsi
	movl	$0, %eax
	jbe	.LBB68_60
.LBB68_54:                              # %vector.body.preheader
                                        #   in Loop: Header=BB68_50 Depth=2
	cmpq	$0, 16(%rsp)            # 8-byte Folded Reload
	movl	$0, %ebx
	jne	.LBB68_56
# BB#55:                                # %vector.body.prol
                                        #   in Loop: Header=BB68_50 Depth=2
	movd	(%r15), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movd	4(%r15), %xmm1          # xmm1 = mem[0],zero,zero,zero
	punpcklbw	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3],xmm0[4],xmm2[4],xmm0[5],xmm2[5],xmm0[6],xmm2[6],xmm0[7],xmm2[7]
	punpcklwd	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3]
	punpcklbw	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	punpcklwd	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	movdqu	%xmm0, (%r14)
	movdqu	%xmm1, 16(%r14)
	movl	$8, %ebx
.LBB68_56:                              # %vector.body.preheader.split
                                        #   in Loop: Header=BB68_50 Depth=2
	leaq	(%r15,%r13), %rdx
	leaq	(%r14,%r13,4), %rsi
	cmpq	$0, 32(%rsp)            # 8-byte Folded Reload
	je	.LBB68_59
# BB#57:                                # %vector.body.preheader.split.split
                                        #   in Loop: Header=BB68_50 Depth=2
	movq	%r13, %rax
	subq	%rbx, %rax
	leaq	48(%r14,%rbx,4), %rdi
	leaq	12(%r15,%rbx), %rbx
	.align	16, 0x90
.LBB68_58:                              # %vector.body
                                        #   Parent Loop BB68_2 Depth=1
                                        #     Parent Loop BB68_50 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movd	-12(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movd	-8(%rbx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	punpcklbw	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3],xmm0[4],xmm2[4],xmm0[5],xmm2[5],xmm0[6],xmm2[6],xmm0[7],xmm2[7]
	punpcklwd	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3]
	punpcklbw	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	punpcklwd	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	movdqu	%xmm0, -48(%rdi)
	movdqu	%xmm1, -32(%rdi)
	movd	-4(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movd	(%rbx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	punpcklbw	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3],xmm0[4],xmm2[4],xmm0[5],xmm2[5],xmm0[6],xmm2[6],xmm0[7],xmm2[7]
	punpcklwd	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3]
	punpcklbw	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	punpcklwd	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	movdqu	%xmm0, -16(%rdi)
	movdqu	%xmm1, (%rdi)
	addq	$64, %rdi
	addq	$16, %rbx
	addq	$-16, %rax
	jne	.LBB68_58
.LBB68_59:                              #   in Loop: Header=BB68_50 Depth=2
	movq	%r13, %rdi
	movl	%r13d, %eax
.LBB68_60:                              # %middle.block
                                        #   in Loop: Header=BB68_50 Depth=2
	addq	$4, %r14
	incq	%r15
	cmpq	%rdi, %r8
	je	.LBB68_67
# BB#61:                                # %for.body.170.preheader
                                        #   in Loop: Header=BB68_50 Depth=2
	movl	%r12d, %ebx
	subl	%eax, %ebx
	movl	%ecx, %edi
	subl	%eax, %edi
	testb	$3, %bl
	je	.LBB68_64
# BB#62:                                # %for.body.170.prol.preheader
                                        #   in Loop: Header=BB68_50 Depth=2
	andl	$3, %ebx
	negl	%ebx
	.align	16, 0x90
.LBB68_63:                              # %for.body.170.prol
                                        #   Parent Loop BB68_2 Depth=1
                                        #     Parent Loop BB68_50 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rdx), %ebp
	incq	%rdx
	movl	%ebp, (%rsi)
	addq	$4, %rsi
	incl	%eax
	incl	%ebx
	jne	.LBB68_63
.LBB68_64:                              # %for.body.170.preheader.split
                                        #   in Loop: Header=BB68_50 Depth=2
	cmpl	$3, %edi
	jb	.LBB68_67
# BB#65:                                # %for.body.170.preheader.split.split
                                        #   in Loop: Header=BB68_50 Depth=2
	movl	%r12d, %edi
	subl	%eax, %edi
	.align	16, 0x90
.LBB68_66:                              # %for.body.170
                                        #   Parent Loop BB68_2 Depth=1
                                        #     Parent Loop BB68_50 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rdx), %eax
	movl	%eax, (%rsi)
	movzbl	1(%rdx), %eax
	movl	%eax, 4(%rsi)
	movzbl	2(%rdx), %eax
	movl	%eax, 8(%rsi)
	movzbl	3(%rdx), %eax
	movl	%eax, 12(%rsi)
	addq	$4, %rdx
	addq	$16, %rsi
	addl	$-4, %edi
	jne	.LBB68_66
.LBB68_67:                              # %for.cond.167.for.end.177_crit_edge
                                        #   in Loop: Header=BB68_50 Depth=2
	leaq	(%r14,%rcx,4), %r14
	addq	%rcx, %r15
.LBB68_68:                              # %for.end.177
                                        #   in Loop: Header=BB68_50 Depth=2
	leaq	(%r14,%r10,4), %r14
	addq	%r9, %r15
	incl	%r11d
	movq	72(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %r11d
	jne	.LBB68_50
.LBB68_69:                              # %if.end.185
                                        #   in Loop: Header=BB68_2 Depth=1
	movslq	28(%rsp), %rax          # 4-byte Folded Reload
	addq	%rax, %r15
	.align	16, 0x90
.LBB68_126:                             # %sw.epilog
                                        #   in Loop: Header=BB68_2 Depth=1
	movq	80(%rsp), %r14          # 8-byte Reload
	addq	$64, %r14
	addq	$64, 64(%rsp)           # 8-byte Folded Spill
	addq	$56, 56(%rsp)           # 8-byte Folded Spill
	movq	48(%rsp), %rdx          # 8-byte Reload
	incl	%edx
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movl	$1, %ecx
	movq	8(%rsp), %rax           # 8-byte Reload
	cmpl	16(%rax), %edx
	jb	.LBB68_2
.LBB68_127:                             # %cleanup
	movl	%ecx, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB68_128:                             # %cond.false.43
	movl	$.L.str.165, %edi
	movl	$.L.str.1, %esi
	movl	$7416, %edx             # imm = 0x1CF8
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_update_image_data, %ecx
	callq	__assert_fail
.LBB68_129:                             # %cond.false.49
	movl	$.L.str.166, %edi
	movl	$.L.str.1, %esi
	movl	$7417, %edx             # imm = 0x1CF9
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_update_image_data, %ecx
	callq	__assert_fail
.Lfunc_end68:
	.size	opj_j2k_update_image_data, .Lfunc_end68-opj_j2k_update_image_data
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_decode_one_tile,@function
opj_j2k_decode_one_tile:                # @opj_j2k_decode_one_tile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp648:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp649:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp650:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp651:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp652:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp653:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp654:
	.cfi_def_cfa_offset 144
.Ltmp655:
	.cfi_offset %rbx, -56
.Ltmp656:
	.cfi_offset %r12, -48
.Ltmp657:
	.cfi_offset %r13, -40
.Ltmp658:
	.cfi_offset %r14, -32
.Ltmp659:
	.cfi_offset %r15, -24
.Ltmp660:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	movq	%rdi, %r15
	movl	$1, 84(%rsp)
	movl	$1000, %edi             # imm = 0x3E8
	callq	malloc
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB69_1
# BB#3:                                 # %if.end
	movq	272(%r15), %rcx
	movq	48(%rcx), %rax
	testq	%rax, %rax
	je	.LBB69_5
# BB#4:                                 # %if.end.8.thread
	movl	72(%r15), %ebx
.LBB69_13:                              # %if.then.12
	cmpq	$0, 16(%rax)
	je	.LBB69_21
# BB#14:                                # %if.then.16
	movl	%ebx, %ecx
	imulq	$56, %rcx, %rcx
	cmpl	$0, 4(%rax,%rcx)
	je	.LBB69_15
# BB#18:                                # %if.else
	movq	16(%rax,%rcx), %rax
	movq	(%rax), %rsi
	jmp	.LBB69_16
.LBB69_1:                               # %if.then
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.167, %edx
	jmp	.LBB69_2
.LBB69_5:                               # %if.then.3
	movl	148(%r15), %edi
	imull	144(%r15), %edi
	movl	%edi, 44(%rcx)
	movl	$56, %esi
	callq	calloc
	movq	272(%r15), %rcx
	movq	%rax, 48(%rcx)
	testq	%rax, %rax
	je	.LBB69_10
# BB#6:                                 # %for.cond.preheader.i
	cmpl	$0, 44(%rcx)
	je	.LBB69_12
# BB#7:                                 # %for.body.i.preheader
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB69_9:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ecx
	imulq	$56, %rcx, %rbp
	movl	$100, 40(%rax,%rbp)
	movl	$0, 24(%rax,%rbp)
	movl	$100, %edi
	movl	$24, %esi
	callq	calloc
	movq	%rax, %rcx
	movq	272(%r15), %rdx
	movq	48(%rdx), %rax
	movq	%rcx, 32(%rax,%rbp)
	testq	%rcx, %rcx
	je	.LBB69_10
# BB#8:                                 # %for.cond.i
                                        #   in Loop: Header=BB69_9 Depth=1
	incl	%ebx
	cmpl	44(%rdx), %ebx
	jb	.LBB69_9
.LBB69_12:                              # %if.end.8
	movl	72(%r15), %ebx
	testq	%rax, %rax
	jne	.LBB69_13
	jmp	.LBB69_21
.LBB69_10:                              # %if.then.6
	movq	%r13, %rdi
	jmp	.LBB69_11
.LBB69_15:                              # %if.then.20
	movq	80(%r15), %rsi
.LBB69_16:                              # %if.then.20
	addq	$2, %rsi
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	%r14, %rdx
	callq	opj_stream_read_seek
	testl	%eax, %eax
	je	.LBB69_17
# BB#19:                                # %if.end.40
	cmpl	$256, 8(%r15)           # imm = 0x100
	jne	.LBB69_21
# BB#20:                                # %if.then.43
	movl	$8, 8(%r15)
.LBB69_21:                              # %while.body.preheader
	movl	%ebx, 40(%rsp)          # 4-byte Spill
	movq	%r14, 32(%rsp)
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	%rax, 24(%rsp)
	leaq	84(%rsp), %rax
	movq	%rax, 16(%rsp)
	leaq	56(%rsp), %rax
	movq	%rax, 8(%rsp)
	leaq	60(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	80(%rsp), %rsi
	leaq	76(%rsp), %rdx
	leaq	72(%rsp), %rcx
	leaq	68(%rsp), %r8
	leaq	64(%rsp), %r9
	movq	%r15, %rdi
	callq	opj_j2k_read_tile_header
	testl	%eax, %eax
	je	.LBB69_22
# BB#24:                                # %if.end.53.lr.ph
	movl	$1000, 44(%rsp)         # 4-byte Folded Spill
                                        # imm = 0x3E8
	.align	16, 0x90
.LBB69_25:                              # %if.end.53
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, 84(%rsp)
	je	.LBB69_26
# BB#27:                                # %if.end.56
                                        #   in Loop: Header=BB69_25 Depth=1
	movl	76(%rsp), %r12d
	cmpl	44(%rsp), %r12d         # 4-byte Folded Reload
	jbe	.LBB69_28
# BB#34:                                # %cond.false
                                        #   in Loop: Header=BB69_25 Depth=1
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	realloc
	movq	%rax, %rbp
	testq	%rbp, %rbp
	movl	%r12d, %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
	jne	.LBB69_29
	jmp	.LBB69_35
	.align	16, 0x90
.LBB69_28:                              #   in Loop: Header=BB69_25 Depth=1
	movq	%r13, %rbp
.LBB69_29:                              # %if.end.68
                                        #   in Loop: Header=BB69_25 Depth=1
	movl	80(%rsp), %ebx
	movq	%r15, %rdi
	movl	%ebx, %esi
	movq	%rbp, %rdx
	movl	%r12d, %ecx
	movq	48(%rsp), %r8           # 8-byte Reload
	movq	%r14, %r9
	callq	opj_j2k_decode_tile
	testl	%eax, %eax
	je	.LBB69_23
# BB#30:                                # %if.end.72
                                        #   in Loop: Header=BB69_25 Depth=1
	movl	144(%r15), %r8d
	imull	148(%r15), %r8d
	decl	%r8d
	movl	$4, %esi
	movl	$.L.str.163, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%ebx, %ecx
	callq	opj_event_msg
	movq	104(%r15), %rdx
	movq	288(%r15), %rdi
	movq	%rbp, %rsi
	callq	opj_j2k_update_image_data
	testl	%eax, %eax
	je	.LBB69_23
# BB#31:                                # %if.end.83
                                        #   in Loop: Header=BB69_25 Depth=1
	movl	$4, %esi
	movl	$.L.str.164, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%ebx, %ecx
	callq	opj_event_msg
	movl	40(%rsp), %r8d          # 4-byte Reload
	cmpl	%r8d, %ebx
	je	.LBB69_32
# BB#37:                                # %if.else.95
                                        #   in Loop: Header=BB69_25 Depth=1
	movl	$2, %esi
	movl	$.L.str.169, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%ebx, %ecx
	callq	opj_event_msg
	movq	%r14, 32(%rsp)
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	%rax, 24(%rsp)
	leaq	84(%rsp), %rax
	movq	%rax, 16(%rsp)
	leaq	56(%rsp), %rax
	movq	%rax, 8(%rsp)
	leaq	60(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%r15, %rdi
	leaq	80(%rsp), %rsi
	leaq	76(%rsp), %rdx
	leaq	72(%rsp), %rcx
	leaq	68(%rsp), %r8
	leaq	64(%rsp), %r9
	callq	opj_j2k_read_tile_header
	testl	%eax, %eax
	movq	%rbp, %r13
	jne	.LBB69_25
	jmp	.LBB69_23
.LBB69_22:
	movq	%r13, %rbp
.LBB69_23:                              # %if.then.52
	movq	%rbp, %rdi
.LBB69_11:                              # %cleanup.98
	callq	free
	xorl	%ebx, %ebx
	jmp	.LBB69_36
.LBB69_26:
	movq	%r13, %rbp
	jmp	.LBB69_33
.LBB69_32:                              # %if.then.87
	movq	272(%r15), %rax
	movq	8(%rax), %rsi
	addq	$2, %rsi
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	%r14, %rdx
	callq	opj_stream_read_seek
	testl	%eax, %eax
	je	.LBB69_17
.LBB69_33:                              # %while.end
	movq	%rbp, %rdi
	callq	free
	movl	$1, %ebx
	jmp	.LBB69_36
.LBB69_17:                              # %if.then.25
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.168, %edx
.LBB69_2:                               # %cleanup.98
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	opj_event_msg
.LBB69_36:                              # %cleanup.98
	movl	%ebx, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB69_35:                              # %cleanup
	movq	%r13, %rdi
	callq	free
	movl	80(%rsp), %ecx
	movl	144(%r15), %r8d
	imull	148(%r15), %r8d
	decl	%r8d
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.162, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	opj_event_msg
	jmp	.LBB69_36
.Lfunc_end69:
	.size	opj_j2k_decode_one_tile, .Lfunc_end69-opj_j2k_decode_one_tile
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_write_sot,@function
opj_j2k_write_sot:                      # @opj_j2k_write_sot
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp661:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp662:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp663:
	.cfi_def_cfa_offset 32
.Ltmp664:
	.cfi_offset %rbx, -32
.Ltmp665:
	.cfi_offset %r14, -24
.Ltmp666:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	testq	%r15, %r15
	je	.LBB70_4
# BB#1:                                 # %cond.end
	testq	%r8, %r8
	je	.LBB70_5
# BB#2:                                 # %cond.end.4
	testq	%rcx, %rcx
	je	.LBB70_6
# BB#3:                                 # %cond.end.8
	movl	$65424, %esi            # imm = 0xFF90
	movl	$2, %edx
	movq	%rbx, %rdi
	callq	opj_write_bytes_LE
	leaq	2(%rbx), %rdi
	movl	$10, %esi
	movl	$2, %edx
	callq	opj_write_bytes_LE
	leaq	4(%rbx), %rdi
	movl	280(%r15), %esi
	movl	$2, %edx
	callq	opj_write_bytes_LE
	leaq	10(%rbx), %rdi
	movl	12(%r15), %esi
	movl	$1, %edx
	callq	opj_write_bytes_LE
	addq	$11, %rbx
	movl	280(%r15), %eax
	movq	208(%r15), %rcx
	imulq	$5680, %rax, %rax       # imm = 0x1630
	movl	5592(%rcx,%rax), %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	opj_write_bytes_LE
	movl	$12, (%r14)
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB70_4:                               # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$3833, %edx             # imm = 0xEF9
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_sot, %ecx
	callq	__assert_fail
.LBB70_5:                               # %cond.false.3
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$3834, %edx             # imm = 0xEFA
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_sot, %ecx
	callq	__assert_fail
.LBB70_6:                               # %cond.false.7
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$3835, %edx             # imm = 0xEFB
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_sot, %ecx
	callq	__assert_fail
.Lfunc_end70:
	.size	opj_j2k_write_sot, .Lfunc_end70-opj_j2k_write_sot
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_write_coc_in_memory,@function
opj_j2k_write_coc_in_memory:            # @opj_j2k_write_coc_in_memory
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp667:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp668:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp669:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp670:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp671:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp672:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp673:
	.cfi_def_cfa_offset 112
.Ltmp674:
	.cfi_offset %rbx, -56
.Ltmp675:
	.cfi_offset %r12, -48
.Ltmp676:
	.cfi_offset %r13, -40
.Ltmp677:
	.cfi_offset %r14, -32
.Ltmp678:
	.cfi_offset %r15, -24
.Ltmp679:
	.cfi_offset %rbp, -16
	movq	%rdx, %r12
	movl	%esi, %edx
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB71_5
# BB#1:                                 # %cond.end
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	testq	%r8, %r8
	movq	%r8, 32(%rsp)           # 8-byte Spill
	je	.LBB71_6
# BB#2:                                 # %cond.end.4
	movl	280(%rbx), %r13d
	movq	96(%rbx), %rax
	movq	208(%rbx), %rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movl	$1, %r15d
	cmpl	$257, 16(%rax)          # imm = 0x101
	jb	.LBB71_4
# BB#3:                                 # %select.mid
	movl	$2, %r15d
.LBB71_4:                               # %select.end
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movl	%edx, %r13d
	callq	opj_j2k_get_SPCod_SPCoc_size
	movl	%eax, %r14d
	leal	5(%r15,%r14), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movl	%eax, 52(%rsp)
	movl	$65363, %esi            # imm = 0xFF53
	movl	$2, %edx
	movq	%r12, %rdi
	callq	opj_write_bytes_LE
	leaq	2(%r12), %rdi
	leal	3(%r15,%r14), %esi
	movl	$2, %edx
	callq	opj_write_bytes_LE
	leaq	4(%r12), %rdi
	movl	%r13d, %esi
	movl	%r15d, %edx
	callq	opj_write_bytes_LE
	movl	%r15d, %ebp
	leaq	4(%r12,%rbp), %rdi
	movl	%r13d, %eax
	imulq	$5680, 8(%rsp), %rcx    # 8-byte Folded Reload
                                        # imm = 0x1630
	movq	24(%rsp), %rdx          # 8-byte Reload
	movq	5584(%rdx,%rcx), %rcx
	imulq	$1080, %rax, %rax       # imm = 0x438
	movl	(%rcx,%rax), %esi
	movl	$1, %edx
	callq	opj_write_bytes_LE
	leaq	5(%r12,%rbp), %rdx
	movl	%r14d, 52(%rsp)
	movl	280(%rbx), %esi
	leaq	52(%rsp), %rcx
	movq	%rbx, %rdi
	movq	32(%rsp), %r8           # 8-byte Reload
	callq	opj_j2k_write_SPCod_SPCoc
	movq	40(%rsp), %rax          # 8-byte Reload
	movl	20(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, (%rax)
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB71_5:                               # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$2497, %edx             # imm = 0x9C1
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_coc_in_memory, %ecx
	callq	__assert_fail
.LBB71_6:                               # %cond.false.3
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$2498, %edx             # imm = 0x9C2
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_coc_in_memory, %ecx
	callq	__assert_fail
.Lfunc_end71:
	.size	opj_j2k_write_coc_in_memory, .Lfunc_end71-opj_j2k_write_coc_in_memory
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_write_qcc_in_memory,@function
opj_j2k_write_qcc_in_memory:            # @opj_j2k_write_qcc_in_memory
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp680:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp681:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp682:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp683:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp684:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp685:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp686:
	.cfi_def_cfa_offset 80
.Ltmp687:
	.cfi_offset %rbx, -56
.Ltmp688:
	.cfi_offset %r12, -48
.Ltmp689:
	.cfi_offset %r13, -40
.Ltmp690:
	.cfi_offset %r14, -32
.Ltmp691:
	.cfi_offset %r15, -24
.Ltmp692:
	.cfi_offset %rbp, -16
	movq	%r8, %r15
	movq	%rdx, %rbx
	movl	%esi, %r12d
	movq	%rdi, %rbp
	testq	%rbp, %rbp
	je	.LBB72_6
# BB#1:                                 # %cond.end
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	testq	%r15, %r15
	je	.LBB72_7
# BB#2:                                 # %cond.end.4
	movl	280(%rbp), %esi
	movq	%rbp, %rdi
	movl	%r12d, %edx
	callq	opj_j2k_get_SQcd_SQcc_size
	movl	%eax, %r13d
	leal	6(%r13), %r14d
	movl	%r14d, 20(%rsp)
	movl	$65373, %esi            # imm = 0xFF5D
	movl	$2, %edx
	movq	%rbx, %rdi
	callq	opj_write_bytes_LE
	leaq	2(%rbx), %rdi
	movq	96(%rbp), %rax
	cmpl	$256, 16(%rax)          # imm = 0x100
	ja	.LBB72_4
# BB#3:                                 # %if.then
	leal	5(%r13), %r14d
	movl	%r13d, %esi
	addl	$3, %esi
	movl	$2, %edx
	callq	opj_write_bytes_LE
	leaq	4(%rbx), %rdi
	movl	$1, %edx
	movl	%r12d, %esi
	callq	opj_write_bytes_LE
	addq	$5, %rbx
	jmp	.LBB72_5
.LBB72_4:                               # %if.else
	movl	%r13d, %esi
	addl	$4, %esi
	movl	$2, %edx
	callq	opj_write_bytes_LE
	leaq	4(%rbx), %rdi
	movl	$2, %edx
	movl	%r12d, %esi
	callq	opj_write_bytes_LE
	addq	$6, %rbx
.LBB72_5:                               # %if.end
	movl	%r13d, 20(%rsp)
	movl	280(%rbp), %esi
	leaq	20(%rsp), %r8
	movq	%rbp, %rdi
	movl	%r12d, %edx
	movq	%rbx, %rcx
	movq	%r15, %r9
	callq	opj_j2k_write_SQcd_SQcc
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	%r14d, (%rax)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB72_6:                               # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$2748, %edx             # imm = 0xABC
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_qcc_in_memory, %ecx
	callq	__assert_fail
.LBB72_7:                               # %cond.false.3
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$2749, %edx             # imm = 0xABD
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_qcc_in_memory, %ecx
	callq	__assert_fail
.Lfunc_end72:
	.size	opj_j2k_write_qcc_in_memory, .Lfunc_end72-opj_j2k_write_qcc_in_memory
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_write_poc_in_memory,@function
opj_j2k_write_poc_in_memory:            # @opj_j2k_write_poc_in_memory
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp693:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp694:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp695:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp696:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp697:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp698:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp699:
	.cfi_def_cfa_offset 96
.Ltmp700:
	.cfi_offset %rbx, -56
.Ltmp701:
	.cfi_offset %r12, -48
.Ltmp702:
	.cfi_offset %r13, -40
.Ltmp703:
	.cfi_offset %r14, -32
.Ltmp704:
	.cfi_offset %r15, -24
.Ltmp705:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	testq	%rdi, %rdi
	je	.LBB73_6
# BB#1:                                 # %cond.end
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	testq	%rcx, %rcx
	je	.LBB73_7
# BB#2:                                 # %cond.end.4
	movl	280(%rdi), %eax
	movq	96(%rdi), %rcx
	movq	208(%rdi), %r13
	imulq	$5680, %rax, %rdx       # imm = 0x1630
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	5584(%r13,%rdx), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	16(%rcx), %r15d
	movl	420(%r13,%rdx), %ebp
	incl	%ebp
	cmpl	$256, %r15d             # imm = 0x100
	seta	%al
	movzbl	%al, %r14d
	leal	7(%r14,%r14), %r12d
	imull	%ebp, %r12d
	leal	4(%r12), %eax
	movl	%eax, 4(%rsp)           # 4-byte Spill
	movl	$65375, %esi            # imm = 0xFF5F
	movl	$2, %edx
	movq	%rbx, %rdi
	callq	opj_write_bytes_LE
	leaq	2(%rbx), %rdi
	addl	$2, %r12d
	movl	$2, %edx
	movl	%r12d, %esi
	callq	opj_write_bytes_LE
	movl	%ebp, %eax
	testl	%eax, %eax
	je	.LBB73_5
# BB#3:                                 # %for.body.lr.ph
	incl	%r14d
	movq	%r13, %rcx
	movq	32(%rsp), %rdx          # 8-byte Reload
	leaq	424(%rcx,%rdx), %r13
	addq	$4, %rbx
	leaq	8(%rcx,%rdx), %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movl	%r14d, %ebp
	.align	16, 0x90
.LBB73_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, 32(%rsp)          # 4-byte Spill
	movl	(%r13), %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	opj_write_bytes_LE
	movl	4(%r13), %esi
	leaq	1(%rbx), %rdi
	movl	%r14d, %edx
	callq	opj_write_bytes_LE
	movl	8(%r13), %esi
	leaq	1(%rbx,%rbp), %r12
	movl	$2, %edx
	movq	%r12, %rdi
	callq	opj_write_bytes_LE
	movl	12(%r13), %esi
	leaq	3(%rbx,%rbp), %rdi
	movl	$1, %edx
	callq	opj_write_bytes_LE
	movl	16(%r13), %esi
	leaq	4(%rbx,%rbp), %rdi
	movl	%r14d, %edx
	callq	opj_write_bytes_LE
	movl	36(%r13), %esi
	leaq	3(%rbp,%r12), %rdi
	movl	$1, %edx
	callq	opj_write_bytes_LE
	movl	8(%r13), %eax
	movq	16(%rsp), %rcx          # 8-byte Reload
	movl	(%rcx), %ecx
	cmpl	%ecx, %eax
	cmovlel	%eax, %ecx
	movl	%ecx, 8(%r13)
	movl	12(%r13), %eax
	movq	24(%rsp), %rcx          # 8-byte Reload
	movl	4(%rcx), %ecx
	cmpl	%ecx, %eax
	cmovlel	%eax, %ecx
	movl	%ecx, 12(%r13)
	movl	16(%r13), %eax
	cmpl	%r15d, %eax
	cmovgl	%r15d, %eax
	movl	%eax, 16(%r13)
	movl	32(%rsp), %eax          # 4-byte Reload
	addq	$148, %r13
	decl	%eax
	leaq	4(%rbp,%r12), %rbx
	jne	.LBB73_4
.LBB73_5:                               # %for.end
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	4(%rsp), %ecx           # 4-byte Reload
	movl	%ecx, (%rax)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB73_6:                               # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$2947, %edx             # imm = 0xB83
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_poc_in_memory, %ecx
	callq	__assert_fail
.LBB73_7:                               # %cond.false.3
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$2948, %edx             # imm = 0xB84
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_poc_in_memory, %ecx
	callq	__assert_fail
.Lfunc_end73:
	.size	opj_j2k_write_poc_in_memory, .Lfunc_end73-opj_j2k_write_poc_in_memory
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_write_sod,@function
opj_j2k_write_sod:                      # @opj_j2k_write_sod
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp706:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp707:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp708:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp709:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp710:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp711:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp712:
	.cfi_def_cfa_offset 64
.Ltmp713:
	.cfi_offset %rbx, -56
.Ltmp714:
	.cfi_offset %r12, -48
.Ltmp715:
	.cfi_offset %r13, -40
.Ltmp716:
	.cfi_offset %r14, -32
.Ltmp717:
	.cfi_offset %r15, -24
.Ltmp718:
	.cfi_offset %rbp, -16
	movl	%r8d, %r12d
	movq	%rcx, %r15
	movq	%rdx, %rbx
	movq	%rsi, %r13
	movq	%rdi, %rbp
	testq	%rbp, %rbp
	je	.LBB74_9
# BB#1:                                 # %cond.end
	movq	64(%rsp), %r14
	testq	%r14, %r14
	je	.LBB74_10
# BB#2:                                 # %cond.end.4
	testq	%r9, %r9
	je	.LBB74_11
# BB#3:                                 # %cond.end.8
	movl	$65427, %esi            # imm = 0xFF93
	movl	$2, %edx
	movq	%rbx, %rdi
	callq	opj_write_bytes_LE
	addq	$2, %rbx
	addl	$-4, %r12d
	movl	8(%rbp), %eax
	movl	%eax, 4(%r13)
	movl	12(%rbp), %eax
	movl	%eax, 8(%r13)
	testl	%eax, %eax
	jne	.LBB74_5
# BB#4:                                 # %if.then
	movq	24(%r13), %rax
	movq	(%rax), %rax
	movl	$0, 848(%rax)
.LBB74_5:                               # %if.end.17
	movl	$0, (%r15)
	movl	280(%rbp), %esi
	xorl	%ebp, %ebp
	xorl	%r9d, %r9d
	movq	%r13, %rdi
	movq	%rbx, %rdx
	movq	%r15, %rcx
	movl	%r12d, %r8d
	callq	opj_tcd_encode_tile
	testl	%eax, %eax
	je	.LBB74_6
# BB#7:                                 # %if.end.21
	addl	$2, (%r15)
	movl	$1, %ebp
	jmp	.LBB74_8
.LBB74_6:                               # %if.then.19
	movl	$1, %esi
	movl	$.L.str.182, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	opj_event_msg
.LBB74_8:                               # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB74_9:                               # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$4133, %edx             # imm = 0x1025
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_sod, %ecx
	callq	__assert_fail
.LBB74_10:                              # %cond.false.3
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$4134, %edx             # imm = 0x1026
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_sod, %ecx
	callq	__assert_fail
.LBB74_11:                              # %cond.false.7
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$4135, %edx             # imm = 0x1027
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_sod, %ecx
	callq	__assert_fail
.Lfunc_end74:
	.size	opj_j2k_write_sod, .Lfunc_end74-opj_j2k_write_sod
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_get_SPCod_SPCoc_size,@function
opj_j2k_get_SPCod_SPCoc_size:           # @opj_j2k_get_SPCod_SPCoc_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp719:
	.cfi_def_cfa_offset 16
	testq	%rdi, %rdi
	je	.LBB75_6
# BB#1:                                 # %cond.end
	movl	%esi, %ecx
	movl	%edx, %r8d
	movl	148(%rdi), %eax
	imull	144(%rdi), %eax
	cmpl	%esi, %eax
	jbe	.LBB75_7
# BB#2:                                 # %cond.end.6
	movq	96(%rdi), %rax
	cmpl	%edx, 16(%rax)
	jbe	.LBB75_8
# BB#3:                                 # %cond.end.10
	movq	208(%rdi), %rax
	imulq	$5680, %rcx, %rcx       # imm = 0x1630
	movq	5584(%rax,%rcx), %rcx
	imulq	$1080, %r8, %rdx        # imm = 0x438
	movl	$5, %eax
	testb	$1, (%rcx,%rdx)
	je	.LBB75_5
# BB#4:                                 # %if.then
	movl	4(%rcx,%rdx), %eax
	addl	$5, %eax
.LBB75_5:                               # %cleanup
	popq	%rdx
	retq
.LBB75_6:                               # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$7839, %edx             # imm = 0x1E9F
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_get_SPCod_SPCoc_size, %ecx
	callq	__assert_fail
.LBB75_7:                               # %cond.false.5
	movl	$.L.str.174, %edi
	movl	$.L.str.1, %esi
	movl	$7846, %edx             # imm = 0x1EA6
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_get_SPCod_SPCoc_size, %ecx
	callq	__assert_fail
.LBB75_8:                               # %cond.false.9
	movl	$.L.str.70, %edi
	movl	$.L.str.1, %esi
	movl	$7847, %edx             # imm = 0x1EA7
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_get_SPCod_SPCoc_size, %ecx
	callq	__assert_fail
.Lfunc_end75:
	.size	opj_j2k_get_SPCod_SPCoc_size, .Lfunc_end75-opj_j2k_get_SPCod_SPCoc_size
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_write_SPCod_SPCoc,@function
opj_j2k_write_SPCod_SPCoc:              # @opj_j2k_write_SPCod_SPCoc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp720:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp721:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp722:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp723:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp724:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp725:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp726:
	.cfi_def_cfa_offset 64
.Ltmp727:
	.cfi_offset %rbx, -56
.Ltmp728:
	.cfi_offset %r12, -48
.Ltmp729:
	.cfi_offset %r13, -40
.Ltmp730:
	.cfi_offset %r14, -32
.Ltmp731:
	.cfi_offset %r15, -24
.Ltmp732:
	.cfi_offset %rbp, -16
	movq	%r8, %r12
	movq	%rcx, %r14
	movq	%rdx, %r13
	testq	%rdi, %rdi
	je	.LBB76_16
# BB#1:                                 # %cond.end
	testq	%r14, %r14
	je	.LBB76_17
# BB#2:                                 # %cond.end.4
	testq	%r12, %r12
	je	.LBB76_18
# BB#3:                                 # %cond.end.8
	testq	%r13, %r13
	je	.LBB76_19
# BB#4:                                 # %cond.end.12
	movl	%esi, %eax
	movl	148(%rdi), %ecx
	imull	144(%rdi), %ecx
	cmpl	%esi, %ecx
	jbe	.LBB76_20
# BB#5:                                 # %cond.end.18
	movq	96(%rdi), %rcx
	cmpl	$0, 16(%rcx)
	je	.LBB76_21
# BB#6:                                 # %cond.end.22
	cmpl	$4, (%r14)
	jbe	.LBB76_7
# BB#8:                                 # %if.end
	movq	208(%rdi), %rcx
	imulq	$5680, %rax, %rax       # imm = 0x1630
	movq	5584(%rcx,%rax), %rbp
	movl	4(%rbp), %esi
	decl	%esi
	movl	$1, %r15d
	movl	$1, %edx
	movq	%r13, %rdi
	callq	opj_write_bytes_LE
	leaq	1(%r13), %rdi
	movl	8(%rbp), %esi
	addl	$-2, %esi
	movl	$1, %edx
	callq	opj_write_bytes_LE
	leaq	2(%r13), %rdi
	movl	12(%rbp), %esi
	addl	$-2, %esi
	movl	$1, %edx
	callq	opj_write_bytes_LE
	leaq	3(%r13), %rdi
	movl	16(%rbp), %esi
	movl	$1, %edx
	callq	opj_write_bytes_LE
	leaq	4(%r13), %rdi
	movl	20(%rbp), %esi
	movl	$1, %edx
	callq	opj_write_bytes_LE
	movl	(%r14), %eax
	addl	$-5, %eax
	movl	%eax, (%r14)
	testb	$1, (%rbp)
	je	.LBB76_15
# BB#9:                                 # %if.then.31
	movl	4(%rbp), %edx
	cmpl	%edx, %eax
	jae	.LBB76_10
.LBB76_7:                               # %if.then
	xorl	%r15d, %r15d
	movl	$1, %esi
	movl	$.L.str.178, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	opj_event_msg
	jmp	.LBB76_15
.LBB76_10:                              # %for.cond.preheader
	xorl	%ecx, %ecx
	testl	%edx, %edx
	je	.LBB76_14
# BB#11:                                # %for.body.preheader
	addq	$5, %r13
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB76_12:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %eax
	movl	944(%rbp,%rax,4), %esi
	shll	$4, %esi
	addl	812(%rbp,%rax,4), %esi
	leaq	(%r13,%rbx), %rdi
	movl	$1, %edx
	callq	opj_write_bytes_LE
	movl	4(%rbp), %ecx
	incq	%rbx
	cmpl	%ecx, %ebx
	jb	.LBB76_12
# BB#13:                                # %for.cond.for.end_crit_edge
	movl	(%r14), %eax
.LBB76_14:                              # %for.end
	subl	%ecx, %eax
	movl	%eax, (%r14)
.LBB76_15:                              # %cleanup
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB76_16:                              # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$7870, %edx             # imm = 0x1EBE
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_SPCod_SPCoc, %ecx
	callq	__assert_fail
.LBB76_17:                              # %cond.false.3
	movl	$.L.str.175, %edi
	movl	$.L.str.1, %esi
	movl	$7871, %edx             # imm = 0x1EBF
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_SPCod_SPCoc, %ecx
	callq	__assert_fail
.LBB76_18:                              # %cond.false.7
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$7872, %edx             # imm = 0x1EC0
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_SPCod_SPCoc, %ecx
	callq	__assert_fail
.LBB76_19:                              # %cond.false.11
	movl	$.L.str.176, %edi
	movl	$.L.str.1, %esi
	movl	$7873, %edx             # imm = 0x1EC1
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_SPCod_SPCoc, %ecx
	callq	__assert_fail
.LBB76_20:                              # %cond.false.17
	movl	$.L.str.174, %edi
	movl	$.L.str.1, %esi
	movl	$7880, %edx             # imm = 0x1EC8
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_SPCod_SPCoc, %ecx
	callq	__assert_fail
.LBB76_21:                              # %cond.false.21
	movl	$.L.str.177, %edi
	movl	$.L.str.1, %esi
	movl	$7881, %edx             # imm = 0x1EC9
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_SPCod_SPCoc, %ecx
	callq	__assert_fail
.Lfunc_end76:
	.size	opj_j2k_write_SPCod_SPCoc, .Lfunc_end76-opj_j2k_write_SPCod_SPCoc
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_get_SQcd_SQcc_size,@function
opj_j2k_get_SQcd_SQcc_size:             # @opj_j2k_get_SQcd_SQcc_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp733:
	.cfi_def_cfa_offset 16
	testq	%rdi, %rdi
	je	.LBB77_6
# BB#1:                                 # %cond.end
	movl	%esi, %ecx
	movl	%edx, %r8d
	movl	148(%rdi), %eax
	imull	144(%rdi), %eax
	cmpl	%esi, %eax
	jbe	.LBB77_7
# BB#2:                                 # %cond.end.6
	movq	96(%rdi), %rax
	cmpl	%edx, 16(%rax)
	jbe	.LBB77_8
# BB#3:                                 # %cond.end.10
	movq	208(%rdi), %rax
	imulq	$5680, %rcx, %rcx       # imm = 0x1630
	movq	5584(%rax,%rcx), %rdx
	imulq	$1080, %r8, %rsi        # imm = 0x438
	movl	24(%rdx,%rsi), %eax
	movl	$1, %ecx
	cmpl	$1, %eax
	je	.LBB77_5
# BB#4:                                 # %cond.false.13
	movl	4(%rdx,%rsi), %ecx
	leal	-2(%rcx,%rcx,2), %ecx
.LBB77_5:                               # %cond.end.15
	leal	1(%rcx), %edx
	testl	%eax, %eax
	leal	1(%rcx,%rcx), %eax
	cmovel	%edx, %eax
	popq	%rdx
	retq
.LBB77_6:                               # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$8079, %edx             # imm = 0x1F8F
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_get_SQcd_SQcc_size, %ecx
	callq	__assert_fail
.LBB77_7:                               # %cond.false.5
	movl	$.L.str.179, %edi
	movl	$.L.str.1, %esi
	movl	$8086, %edx             # imm = 0x1F96
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_get_SQcd_SQcc_size, %ecx
	callq	__assert_fail
.LBB77_8:                               # %cond.false.9
	movl	$.L.str.70, %edi
	movl	$.L.str.1, %esi
	movl	$8087, %edx             # imm = 0x1F97
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_get_SQcd_SQcc_size, %ecx
	callq	__assert_fail
.Lfunc_end77:
	.size	opj_j2k_get_SQcd_SQcc_size, .Lfunc_end77-opj_j2k_get_SQcd_SQcc_size
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_write_SQcd_SQcc,@function
opj_j2k_write_SQcd_SQcc:                # @opj_j2k_write_SQcd_SQcc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp734:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp735:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp736:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp737:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp738:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp739:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp740:
	.cfi_def_cfa_offset 64
.Ltmp741:
	.cfi_offset %rbx, -56
.Ltmp742:
	.cfi_offset %r12, -48
.Ltmp743:
	.cfi_offset %r13, -40
.Ltmp744:
	.cfi_offset %r14, -32
.Ltmp745:
	.cfi_offset %r15, -24
.Ltmp746:
	.cfi_offset %rbp, -16
	movq	%r8, %r12
	movq	%rcx, %r15
	testq	%rdi, %rdi
	je	.LBB78_21
# BB#1:                                 # %cond.end
	testq	%r12, %r12
	je	.LBB78_22
# BB#2:                                 # %cond.end.4
	testq	%r9, %r9
	je	.LBB78_23
# BB#3:                                 # %cond.end.8
	testq	%r15, %r15
	je	.LBB78_24
# BB#4:                                 # %cond.end.12
	movl	%esi, %eax
	movl	%edx, %ebx
	movl	148(%rdi), %ecx
	imull	144(%rdi), %ecx
	cmpl	%esi, %ecx
	jbe	.LBB78_25
# BB#5:                                 # %cond.end.18
	movq	96(%rdi), %rcx
	cmpl	%edx, 16(%rcx)
	jbe	.LBB78_26
# BB#6:                                 # %cond.end.22
	movq	208(%rdi), %rcx
	imulq	$5680, %rax, %rax       # imm = 0x1630
	movq	5584(%rcx,%rax), %r13
	imulq	$1080, %rbx, %rax       # imm = 0x438
	movl	24(%r13,%rax), %edx
	movl	$1, %ebp
	cmpl	$1, %edx
	movl	$1, %ecx
	je	.LBB78_9
# BB#7:                                 # %cond.end.27
	movl	4(%r13,%rax), %r14d
	leal	-2(%r14,%r14,2), %ebp
	testl	%edx, %edx
	je	.LBB78_13
# BB#8:
	movl	%edx, %ecx
.LBB78_9:                               # %if.else
	movq	%rbx, %r14
	leal	1(%rbp,%rbp), %ebx
	cmpl	%ebx, (%r12)
	jb	.LBB78_14
# BB#10:                                # %if.end.44
	movl	804(%r13,%rax), %esi
	shll	$5, %esi
	addl	%ecx, %esi
	movl	$1, %edx
	movq	%r15, %rdi
	callq	opj_write_bytes_LE
	testl	%ebp, %ebp
	je	.LBB78_19
# BB#11:                                # %for.body.52.lr.ph
	movl	%ebx, 4(%rsp)           # 4-byte Spill
	incq	%r15
	imulq	$1080, %r14, %rax       # imm = 0x438
	leaq	32(%r13,%rax), %rbx
	.align	16, 0x90
.LBB78_12:                              # %for.body.52
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbx), %esi
	shll	$11, %esi
	addl	(%rbx), %esi
	movl	$2, %edx
	movq	%r15, %rdi
	callq	opj_write_bytes_LE
	addq	$2, %r15
	addq	$8, %rbx
	decl	%ebp
	jne	.LBB78_12
	jmp	.LBB78_18
.LBB78_13:                              # %if.then
	leal	(%r14,%r14,2), %ecx
	decl	%ecx
	movl	%ecx, 4(%rsp)           # 4-byte Spill
	cmpl	%ecx, (%r12)
	jae	.LBB78_15
.LBB78_14:                              # %if.then.31
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.181, %edx
	xorl	%eax, %eax
	movq	%r9, %rdi
	callq	opj_event_msg
	jmp	.LBB78_20
.LBB78_15:                              # %if.end
	movl	804(%r13,%rax), %esi
	shll	$5, %esi
	movl	$1, %edx
	movq	%r15, %rdi
	callq	opj_write_bytes_LE
	testl	%ebp, %ebp
	je	.LBB78_18
# BB#16:                                # %for.body.preheader
	imulq	$1080, %rbx, %rax       # imm = 0x438
	leaq	28(%r13,%rax), %rbp
	leal	-2(%r14,%r14,2), %r14d
	incq	%r15
	.align	16, 0x90
.LBB78_17:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbp), %esi
	shll	$3, %esi
	movl	$1, %edx
	movq	%r15, %rdi
	callq	opj_write_bytes_LE
	addq	$8, %rbp
	incq	%r15
	decl	%r14d
	jne	.LBB78_17
.LBB78_18:
	movl	4(%rsp), %ebx           # 4-byte Reload
.LBB78_19:                              # %if.end.65
	subl	%ebx, (%r12)
	movl	$1, %ebx
.LBB78_20:                              # %cleanup
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB78_21:                              # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$8115, %edx             # imm = 0x1FB3
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_SQcd_SQcc, %ecx
	callq	__assert_fail
.LBB78_22:                              # %cond.false.3
	movl	$.L.str.175, %edi
	movl	$.L.str.1, %esi
	movl	$8116, %edx             # imm = 0x1FB4
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_SQcd_SQcc, %ecx
	callq	__assert_fail
.LBB78_23:                              # %cond.false.7
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$8117, %edx             # imm = 0x1FB5
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_SQcd_SQcc, %ecx
	callq	__assert_fail
.LBB78_24:                              # %cond.false.11
	movl	$.L.str.176, %edi
	movl	$.L.str.1, %esi
	movl	$8118, %edx             # imm = 0x1FB6
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_SQcd_SQcc, %ecx
	callq	__assert_fail
.LBB78_25:                              # %cond.false.17
	movl	$.L.str.179, %edi
	movl	$.L.str.1, %esi
	movl	$8125, %edx             # imm = 0x1FBD
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_SQcd_SQcc, %ecx
	callq	__assert_fail
.LBB78_26:                              # %cond.false.21
	movl	$.L.str.180, %edi
	movl	$.L.str.1, %esi
	movl	$8126, %edx             # imm = 0x1FBE
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_SQcd_SQcc, %ecx
	callq	__assert_fail
.Lfunc_end78:
	.size	opj_j2k_write_SQcd_SQcc, .Lfunc_end78-opj_j2k_write_SQcd_SQcc
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_get_num_tp,@function
opj_j2k_get_num_tp:                     # @opj_j2k_get_num_tp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp747:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp748:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp749:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp750:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp751:
	.cfi_def_cfa_offset 48
.Ltmp752:
	.cfi_offset %rbx, -48
.Ltmp753:
	.cfi_offset %r12, -40
.Ltmp754:
	.cfi_offset %r13, -32
.Ltmp755:
	.cfi_offset %r14, -24
.Ltmp756:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movl	36(%r14), %eax
	imull	32(%r14), %eax
	cmpl	%edx, %eax
	jbe	.LBB79_46
# BB#1:                                 # %cond.end
	movl	%edx, %ecx
	movq	96(%r14), %rax
	imulq	$5680, %rcx, %rcx       # imm = 0x1630
	movl	420(%rax,%rcx), %edx
	incl	%edx
	cmpl	%esi, %edx
	jbe	.LBB79_47
# BB#2:                                 # %cond.end.4
	movq	%rax, %r12
	addq	%rcx, %r12
	je	.LBB79_48
# BB#3:                                 # %cond.end.11
	movl	4(%rax,%rcx), %eax
	movl	$j2k_prog_order_list-12, %ebx
	.align	16, 0x90
.LBB79_4:                               # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movl	12(%rbx), %ecx
	addq	$12, %rbx
	cmpl	$-1, %ecx
	je	.LBB79_6
# BB#5:                                 # %for.cond.i
                                        #   in Loop: Header=BB79_4 Depth=1
	cmpl	%eax, %ecx
	jne	.LBB79_4
.LBB79_6:                               # %opj_j2k_convert_progression_order.exit
	movl	%esi, %r13d
	leaq	4(%rbx), %r15
	movq	%r15, %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB79_49
# BB#7:                                 # %cond.end.22
	movl	$1, %eax
	testb	$8, 129(%r14)
	je	.LBB79_45
# BB#8:                                 # %for.cond.preheader
	movzbl	128(%r14), %ecx
	imulq	$148, %r13, %rax
	leaq	516(%rax,%r12), %r10
	leaq	512(%rax,%r12), %r8
	leaq	520(%rax,%r12), %rdx
	leaq	508(%rax,%r12), %r9
	movsbl	(%r15), %edi
	movl	$1, %eax
	cmpl	$79, %edi
	jg	.LBB79_12
# BB#9:                                 # %for.cond.preheader
	cmpl	$67, %edi
	jne	.LBB79_10
# BB#50:                                # %sw.bb
	movl	(%r10), %eax
	jmp	.LBB79_16
.LBB79_12:                              # %for.cond.preheader
	cmpl	$80, %edi
	jne	.LBB79_13
# BB#15:                                # %sw.bb.30
	movl	(%rdx), %eax
	jmp	.LBB79_16
.LBB79_10:                              # %for.cond.preheader
	cmpl	$76, %edi
	jne	.LBB79_16
# BB#11:                                # %sw.bb.32
	movl	(%r9), %eax
	jmp	.LBB79_16
.LBB79_13:                              # %for.cond.preheader
	cmpl	$82, %edi
	jne	.LBB79_16
# BB#14:                                # %sw.bb.28
	movl	(%r8), %eax
.LBB79_16:                              # %sw.epilog
	xorl	%esi, %esi
	cmpl	%edi, %ecx
	je	.LBB79_17
# BB#18:                                # %for.inc
	movsbl	5(%rbx), %edi
	cmpl	$79, %edi
	jg	.LBB79_22
# BB#19:                                # %for.inc
	cmpl	$67, %edi
	jne	.LBB79_20
# BB#25:                                # %sw.bb.1
	imull	(%r10), %eax
	jmp	.LBB79_26
.LBB79_22:                              # %for.inc
	cmpl	$80, %edi
	jne	.LBB79_23
# BB#51:                                # %sw.bb.30.1
	imull	(%rdx), %eax
	jmp	.LBB79_26
.LBB79_20:                              # %for.inc
	cmpl	$76, %edi
	jne	.LBB79_26
# BB#21:                                # %sw.bb.32.1
	imull	(%r9), %eax
	jmp	.LBB79_26
.LBB79_23:                              # %for.inc
	cmpl	$82, %edi
	jne	.LBB79_26
# BB#24:                                # %sw.bb.28.1
	imull	(%r8), %eax
.LBB79_26:                              # %sw.epilog.1
	movl	$1, %esi
	cmpl	%edi, %ecx
	je	.LBB79_17
# BB#27:                                # %for.inc.1
	movsbl	6(%rbx), %edi
	cmpl	$79, %edi
	jg	.LBB79_31
# BB#28:                                # %for.inc.1
	cmpl	$67, %edi
	jne	.LBB79_29
# BB#34:                                # %sw.bb.2
	imull	(%r10), %eax
	jmp	.LBB79_35
.LBB79_31:                              # %for.inc.1
	cmpl	$80, %edi
	jne	.LBB79_32
# BB#52:                                # %sw.bb.30.2
	imull	(%rdx), %eax
	jmp	.LBB79_35
.LBB79_29:                              # %for.inc.1
	cmpl	$76, %edi
	jne	.LBB79_35
# BB#30:                                # %sw.bb.32.2
	imull	(%r9), %eax
	jmp	.LBB79_35
.LBB79_32:                              # %for.inc.1
	cmpl	$82, %edi
	jne	.LBB79_35
# BB#33:                                # %sw.bb.28.2
	imull	(%r8), %eax
.LBB79_35:                              # %sw.epilog.2
	movl	$2, %esi
	cmpl	%edi, %ecx
	je	.LBB79_17
# BB#36:                                # %for.inc.2
	movsbl	7(%rbx), %edi
	cmpl	$79, %edi
	jg	.LBB79_40
# BB#37:                                # %for.inc.2
	cmpl	$67, %edi
	jne	.LBB79_38
# BB#43:                                # %sw.bb.3
	imull	(%r10), %eax
	jmp	.LBB79_44
.LBB79_40:                              # %for.inc.2
	cmpl	$80, %edi
	jne	.LBB79_41
# BB#53:                                # %sw.bb.30.3
	imull	(%rdx), %eax
	jmp	.LBB79_44
.LBB79_38:                              # %for.inc.2
	cmpl	$76, %edi
	jne	.LBB79_44
# BB#39:                                # %sw.bb.32.3
	imull	(%r9), %eax
	jmp	.LBB79_44
.LBB79_41:                              # %for.inc.2
	cmpl	$82, %edi
	jne	.LBB79_44
# BB#42:                                # %sw.bb.28.3
	imull	(%r8), %eax
.LBB79_44:                              # %sw.epilog.3
	movl	$3, %esi
	cmpl	%edi, %ecx
	jne	.LBB79_45
.LBB79_17:                              # %if.then.42
	movl	%esi, 112(%r14)
.LBB79_45:                              # %if.end.45
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.LBB79_46:                              # %cond.false
	movl	$.L.str.183, %edi
	movl	$.L.str.1, %esi
	movl	$1556, %edx             # imm = 0x614
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_get_num_tp, %ecx
	callq	__assert_fail
.LBB79_47:                              # %cond.false.3
	movl	$.L.str.184, %edi
	movl	$.L.str.1, %esi
	movl	$1557, %edx             # imm = 0x615
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_get_num_tp, %ecx
	callq	__assert_fail
.LBB79_48:                              # %cond.false.10
	movl	$.L.str.185, %edi
	movl	$.L.str.1, %esi
	movl	$1561, %edx             # imm = 0x619
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_get_num_tp, %ecx
	callq	__assert_fail
.LBB79_49:                              # %cond.false.21
	movl	$.L.str.187, %edi
	movl	$.L.str.1, %esi
	movl	$1568, %edx             # imm = 0x620
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_get_num_tp, %ecx
	callq	__assert_fail
.Lfunc_end79:
	.size	opj_j2k_get_num_tp, .Lfunc_end79-opj_j2k_get_num_tp
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_write_eoc,@function
opj_j2k_write_eoc:                      # @opj_j2k_write_eoc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp757:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp758:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp759:
	.cfi_def_cfa_offset 32
.Ltmp760:
	.cfi_offset %rbx, -32
.Ltmp761:
	.cfi_offset %r14, -24
.Ltmp762:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB80_6
# BB#1:                                 # %cond.end
	testq	%r14, %r14
	je	.LBB80_7
# BB#2:                                 # %cond.end.4
	testq	%r15, %r15
	je	.LBB80_8
# BB#3:                                 # %cond.end.8
	movq	64(%rbx), %rdi
	movl	$65497, %esi            # imm = 0xFFD9
	movl	$2, %edx
	callq	opj_write_bytes_LE
	movq	64(%rbx), %rsi
	movl	$2, %edx
	movq	%r15, %rdi
	movq	%r14, %rcx
	callq	opj_stream_write_data
	movq	%rax, %rcx
	xorl	%eax, %eax
	cmpq	$2, %rcx
	jne	.LBB80_5
# BB#4:                                 # %if.end
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	opj_stream_flush
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
.LBB80_5:                               # %return
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB80_6:                               # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$4372, %edx             # imm = 0x1114
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_eoc, %ecx
	callq	__assert_fail
.LBB80_7:                               # %cond.false.3
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$4373, %edx             # imm = 0x1115
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_eoc, %ecx
	callq	__assert_fail
.LBB80_8:                               # %cond.false.7
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$4374, %edx             # imm = 0x1116
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_eoc, %ecx
	callq	__assert_fail
.Lfunc_end80:
	.size	opj_j2k_write_eoc, .Lfunc_end80-opj_j2k_write_eoc
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_write_updated_tlm,@function
opj_j2k_write_updated_tlm:              # @opj_j2k_write_updated_tlm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp763:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp764:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp765:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp766:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp767:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp768:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp769:
	.cfi_def_cfa_offset 64
.Ltmp770:
	.cfi_offset %rbx, -56
.Ltmp771:
	.cfi_offset %r12, -48
.Ltmp772:
	.cfi_offset %r13, -40
.Ltmp773:
	.cfi_offset %r14, -32
.Ltmp774:
	.cfi_offset %r15, -24
.Ltmp775:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB81_7
# BB#1:                                 # %cond.end
	testq	%r14, %r14
	je	.LBB81_8
# BB#2:                                 # %cond.end.4
	testq	%r15, %r15
	je	.LBB81_9
# BB#3:                                 # %cond.end.8
	movl	40(%rbx), %r12d
	movq	16(%rbx), %rbp
	addq	$6, %rbp
	movq	%r15, %rdi
	callq	opj_stream_tell
	movq	%rax, (%rsp)            # 8-byte Spill
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movq	%r14, %rdx
	callq	opj_stream_seek
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB81_6
# BB#4:                                 # %if.end
	leal	(%r12,%r12,4), %ebp
	movq	24(%rbx), %rsi
	movq	%r15, %rdi
	movq	%rbp, %rdx
	movq	%r14, %rcx
	callq	opj_stream_write_data
	cmpq	%rbp, %rax
	jne	.LBB81_6
# BB#5:                                 # %if.end.19
	movq	%r15, %rdi
	movq	(%rsp), %rsi            # 8-byte Reload
	movq	%r14, %rdx
	callq	opj_stream_seek
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %r13d
.LBB81_6:                               # %cleanup
	movl	%r13d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB81_7:                               # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$9667, %edx             # imm = 0x25C3
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_updated_tlm, %ecx
	callq	__assert_fail
.LBB81_8:                               # %cond.false.3
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$9668, %edx             # imm = 0x25C4
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_updated_tlm, %ecx
	callq	__assert_fail
.LBB81_9:                               # %cond.false.7
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$9669, %edx             # imm = 0x25C5
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_updated_tlm, %ecx
	callq	__assert_fail
.Lfunc_end81:
	.size	opj_j2k_write_updated_tlm, .Lfunc_end81-opj_j2k_write_updated_tlm
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_write_epc,@function
opj_j2k_write_epc:                      # @opj_j2k_write_epc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp776:
	.cfi_def_cfa_offset 16
.Ltmp777:
	.cfi_offset %rbx, -16
	testq	%rdi, %rdi
	je	.LBB82_6
# BB#1:                                 # %cond.end
	testq	%rdx, %rdx
	je	.LBB82_7
# BB#2:                                 # %cond.end.4
	testq	%rsi, %rsi
	je	.LBB82_8
# BB#3:                                 # %cond.end.8
	movq	272(%rdi), %rbx
	testq	%rbx, %rbx
	je	.LBB82_5
# BB#4:                                 # %if.then
	movq	%rsi, %rdi
	callq	opj_stream_tell
	subq	(%rbx), %rax
	movq	%rax, 16(%rbx)
.LBB82_5:                               # %if.end
	movl	$1, %eax
	popq	%rbx
	retq
.LBB82_6:                               # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$4820, %edx             # imm = 0x12D4
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_epc, %ecx
	callq	__assert_fail
.LBB82_7:                               # %cond.false.3
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$4821, %edx             # imm = 0x12D5
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_epc, %ecx
	callq	__assert_fail
.LBB82_8:                               # %cond.false.7
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$4822, %edx             # imm = 0x12D6
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_epc, %ecx
	callq	__assert_fail
.Lfunc_end82:
	.size	opj_j2k_write_epc, .Lfunc_end82-opj_j2k_write_epc
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_end_encoding,@function
opj_j2k_end_encoding:                   # @opj_j2k_end_encoding
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp778:
	.cfi_def_cfa_offset 16
.Ltmp779:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB83_8
# BB#1:                                 # %cond.end
	testq	%rdx, %rdx
	je	.LBB83_9
# BB#2:                                 # %cond.end.4
	testq	%rsi, %rsi
	je	.LBB83_10
# BB#3:                                 # %cond.end.8
	movq	288(%rbx), %rdi
	callq	opj_tcd_destroy
	movq	$0, 288(%rbx)
	movq	24(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB83_5
# BB#4:                                 # %if.then
	callq	free
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%rbx)
.LBB83_5:                               # %if.end
	movq	48(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB83_7
# BB#6:                                 # %if.then.21
	callq	free
	movq	$0, 48(%rbx)
.LBB83_7:                               # %if.end.28
	movl	$0, 56(%rbx)
	movl	$1, %eax
	popq	%rbx
	retq
.LBB83_8:                               # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$9695, %edx             # imm = 0x25DF
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_end_encoding, %ecx
	callq	__assert_fail
.LBB83_9:                               # %cond.false.3
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$9696, %edx             # imm = 0x25E0
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_end_encoding, %ecx
	callq	__assert_fail
.LBB83_10:                              # %cond.false.7
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$9697, %edx             # imm = 0x25E1
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_end_encoding, %ecx
	callq	__assert_fail
.Lfunc_end83:
	.size	opj_j2k_end_encoding, .Lfunc_end83-opj_j2k_end_encoding
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_destroy_header_memory,@function
opj_j2k_destroy_header_memory:          # @opj_j2k_destroy_header_memory
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp780:
	.cfi_def_cfa_offset 16
.Ltmp781:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB84_6
# BB#1:                                 # %cond.end
	testq	%rsi, %rsi
	je	.LBB84_7
# BB#2:                                 # %cond.end.4
	testq	%rdx, %rdx
	je	.LBB84_8
# BB#3:                                 # %cond.end.8
	movq	64(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB84_5
# BB#4:                                 # %if.then
	callq	free
	movq	$0, 64(%rbx)
.LBB84_5:                               # %if.end
	movl	$0, 72(%rbx)
	movl	$1, %eax
	popq	%rbx
	retq
.LBB84_6:                               # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$9727, %edx             # imm = 0x25FF
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_destroy_header_memory, %ecx
	callq	__assert_fail
.LBB84_7:                               # %cond.false.3
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$9728, %edx             # imm = 0x2600
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_destroy_header_memory, %ecx
	callq	__assert_fail
.LBB84_8:                               # %cond.false.7
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$9729, %edx             # imm = 0x2601
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_destroy_header_memory, %ecx
	callq	__assert_fail
.Lfunc_end84:
	.size	opj_j2k_destroy_header_memory, .Lfunc_end84-opj_j2k_destroy_header_memory
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_build_encoder,@function
opj_j2k_build_encoder:                  # @opj_j2k_build_encoder
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %eax
	retq
.Lfunc_end85:
	.size	opj_j2k_build_encoder, .Lfunc_end85-opj_j2k_build_encoder
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_encoding_validation,@function
opj_j2k_encoding_validation:            # @opj_j2k_encoding_validation
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp782:
	.cfi_def_cfa_offset 16
.Ltmp783:
	.cfi_offset %rbx, -16
	movq	%rdx, %r8
	testq	%rdi, %rdi
	je	.LBB86_8
# BB#1:                                 # %cond.end
	testq	%rsi, %rsi
	je	.LBB86_9
# BB#2:                                 # %cond.end.4
	testq	%r8, %r8
	je	.LBB86_10
# BB#3:                                 # %cond.end.8
	movq	208(%rdi), %rax
	movq	5584(%rax), %rax
	movb	4(%rax), %cl
	movl	$1, %eax
	shll	%cl, %eax
	cmpl	%eax, 124(%rdi)
	jb	.LBB86_6
# BB#4:                                 # %if.end
	cmpl	$0, 8(%rdi)
	sete	%cl
	cmpq	$0, 256(%rdi)
	setne	%dl
	cmpq	$0, 264(%rdi)
	setne	%bl
	cmpl	%eax, 128(%rdi)
	jae	.LBB86_5
.LBB86_6:                               # %if.then.27
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.188, %edx
	xorl	%eax, %eax
	movq	%r8, %rdi
	callq	opj_event_msg
	jmp	.LBB86_7
.LBB86_5:
	andb	%dl, %cl
	andb	%bl, %cl
	movzbl	%cl, %ebx
.LBB86_7:                               # %cleanup
	movl	%ebx, %eax
	popq	%rbx
	retq
.LBB86_8:                               # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$6470, %edx             # imm = 0x1946
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_encoding_validation, %ecx
	callq	__assert_fail
.LBB86_9:                               # %cond.false.3
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$6471, %edx             # imm = 0x1947
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_encoding_validation, %ecx
	callq	__assert_fail
.LBB86_10:                              # %cond.false.7
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$6472, %edx             # imm = 0x1948
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_encoding_validation, %ecx
	callq	__assert_fail
.Lfunc_end86:
	.size	opj_j2k_encoding_validation, .Lfunc_end86-opj_j2k_encoding_validation
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_mct_validation,@function
opj_j2k_mct_validation:                 # @opj_j2k_mct_validation
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp784:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp785:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp786:
	.cfi_def_cfa_offset 32
.Ltmp787:
	.cfi_offset %rbx, -24
.Ltmp788:
	.cfi_offset %rbp, -16
	testq	%rdi, %rdi
	je	.LBB87_18
# BB#1:                                 # %cond.end
	testq	%rsi, %rsi
	je	.LBB87_19
# BB#2:                                 # %cond.end.4
	testq	%rdx, %rdx
	je	.LBB87_20
# BB#3:                                 # %cond.end.8
	movl	$33280, %ecx            # imm = 0x8200
	andl	112(%rdi), %ecx
	movl	$1, %eax
	cmpl	$33280, %ecx            # imm = 0x8200
	jne	.LBB87_17
# BB#4:                                 # %if.then
	movl	144(%rdi), %r8d
	imull	148(%rdi), %r8d
	testl	%r8d, %r8d
	je	.LBB87_17
# BB#5:                                 # %for.body.lr.ph
	movq	208(%rdi), %r10
	xorl	%r9d, %r9d
	movl	$1, %eax
	.align	16, 0x90
.LBB87_6:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB87_12 Depth 2
                                        #     Child Loop BB87_15 Depth 2
	cmpl	$2, 16(%r10)
	jne	.LBB87_16
# BB#7:                                 # %if.then.15
                                        #   in Loop: Header=BB87_6 Depth=1
	cmpq	$0, 5632(%r10)
	setne	%cl
	movzbl	%cl, %ebx
	andl	%eax, %ebx
	movq	96(%rdi), %rax
	movl	16(%rax), %ecx
	testl	%ecx, %ecx
	je	.LBB87_8
# BB#9:                                 # %for.body.21.lr.ph
                                        #   in Loop: Header=BB87_6 Depth=1
	movq	5584(%r10), %rsi
	leal	-1(%rcx), %r11d
	xorl	%edx, %edx
	testb	$3, %cl
	je	.LBB87_10
# BB#11:                                # %for.body.21.prol.preheader
                                        #   in Loop: Header=BB87_6 Depth=1
	movl	%ecx, %ebp
	andl	$3, %ebp
	xorl	%edx, %edx
	.align	16, 0x90
.LBB87_12:                              # %for.body.21.prol
                                        #   Parent Loop BB87_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	20(%rsi), %eax
	notl	%eax
	andl	%ebx, %eax
	andl	$1, %eax
	addq	$1080, %rsi             # imm = 0x438
	incl	%edx
	cmpl	%edx, %ebp
	movl	%eax, %ebx
	jne	.LBB87_12
	jmp	.LBB87_13
.LBB87_8:                               #   in Loop: Header=BB87_6 Depth=1
	movl	%ebx, %eax
	jmp	.LBB87_16
.LBB87_10:                              #   in Loop: Header=BB87_6 Depth=1
	movl	%ebx, %eax
.LBB87_13:                              # %for.body.21.lr.ph.split
                                        #   in Loop: Header=BB87_6 Depth=1
	cmpl	$3, %r11d
	jb	.LBB87_16
# BB#14:                                # %for.body.21.lr.ph.split.split
                                        #   in Loop: Header=BB87_6 Depth=1
	addq	$3260, %rsi             # imm = 0xCBC
	.align	16, 0x90
.LBB87_15:                              # %for.body.21
                                        #   Parent Loop BB87_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-3240(%rsi), %ebp
	notl	%ebp
	andl	%eax, %ebp
	movl	-2160(%rsi), %eax
	notl	%eax
	andl	%ebp, %eax
	movl	-1080(%rsi), %ebp
	notl	%ebp
	andl	%eax, %ebp
	movl	(%rsi), %eax
	notl	%eax
	andl	%ebp, %eax
	andl	$1, %eax
	addl	$4, %edx
	addq	$4320, %rsi             # imm = 0x10E0
	cmpl	%ecx, %edx
	jb	.LBB87_15
	.align	16, 0x90
.LBB87_16:                              # %if.end
                                        #   in Loop: Header=BB87_6 Depth=1
	addq	$5680, %r10             # imm = 0x1630
	incl	%r9d
	cmpl	%r8d, %r9d
	jne	.LBB87_6
.LBB87_17:                              # %if.end.28
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB87_18:                              # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$6261, %edx             # imm = 0x1875
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_mct_validation, %ecx
	callq	__assert_fail
.LBB87_19:                              # %cond.false.3
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$6262, %edx             # imm = 0x1876
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_mct_validation, %ecx
	callq	__assert_fail
.LBB87_20:                              # %cond.false.7
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$6263, %edx             # imm = 0x1877
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_mct_validation, %ecx
	callq	__assert_fail
.Lfunc_end87:
	.size	opj_j2k_mct_validation, .Lfunc_end87-opj_j2k_mct_validation
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_init_info,@function
opj_j2k_init_info:                      # @opj_j2k_init_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp789:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp790:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp791:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp792:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp793:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp794:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp795:
	.cfi_def_cfa_offset 80
.Ltmp796:
	.cfi_offset %rbx, -56
.Ltmp797:
	.cfi_offset %r12, -48
.Ltmp798:
	.cfi_offset %r13, -40
.Ltmp799:
	.cfi_offset %r14, -32
.Ltmp800:
	.cfi_offset %r15, -24
.Ltmp801:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	testq	%r15, %r15
	je	.LBB88_10
# BB#1:                                 # %cond.end
	testq	%rdx, %rdx
	je	.LBB88_11
# BB#2:                                 # %cond.end.4
	testq	%rsi, %rsi
	je	.LBB88_12
# BB#3:                                 # %cond.end.8
	movq	96(%r15), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	je	.LBB88_13
# BB#4:                                 # %cond.end.16.i
	movl	148(%r15), %eax
	imull	144(%r15), %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	movl	$0, 40(%r15)
	testl	%eax, %eax
	je	.LBB88_9
# BB#5:                                 # %for.body.lr.ph.i
	leaq	112(%r15), %r12
	movq	208(%r15), %r14
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB88_6:                               # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB88_7 Depth 2
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	%r12, %rsi
	movl	%ebp, %edx
	callq	opj_pi_update_encoding_parameters
	xorl	%ebx, %ebx
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB88_7:                               # %for.body.20.i
                                        #   Parent Loop BB88_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r12, %rdi
	movl	%ebx, %esi
	movl	%ebp, %edx
	callq	opj_j2k_get_num_tp
	addl	%eax, 40(%r15)
	addl	%eax, %r13d
	incl	%ebx
	cmpl	420(%r14), %ebx
	jbe	.LBB88_7
# BB#8:                                 # %for.end.i
                                        #   in Loop: Header=BB88_6 Depth=1
	movl	%r13d, 5592(%r14)
	addq	$5680, %r14             # imm = 0x1630
	incl	%ebp
	cmpl	12(%rsp), %ebp          # 4-byte Folded Reload
	jne	.LBB88_6
.LBB88_9:                               # %opj_j2k_calculate_tp.exit
	movl	$1, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB88_10:                              # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$9748, %edx             # imm = 0x2614
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_init_info, %ecx
	callq	__assert_fail
.LBB88_11:                              # %cond.false.3
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$9749, %edx             # imm = 0x2615
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_init_info, %ecx
	callq	__assert_fail
.LBB88_12:                              # %cond.false.7
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$9750, %edx             # imm = 0x2616
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_init_info, %ecx
	callq	__assert_fail
.LBB88_13:                              # %cond.false.7.i
	movl	$.L.str.191, %edi
	movl	$.L.str.1, %esi
	movl	$1619, %edx             # imm = 0x653
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_calculate_tp, %ecx
	callq	__assert_fail
.Lfunc_end88:
	.size	opj_j2k_init_info, .Lfunc_end88-opj_j2k_init_info
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_write_soc,@function
opj_j2k_write_soc:                      # @opj_j2k_write_soc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp802:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp803:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp804:
	.cfi_def_cfa_offset 32
.Ltmp805:
	.cfi_offset %rbx, -32
.Ltmp806:
	.cfi_offset %r14, -24
.Ltmp807:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	testq	%r15, %r15
	je	.LBB89_4
# BB#1:                                 # %cond.end
	testq	%rdi, %rdi
	je	.LBB89_5
# BB#2:                                 # %cond.end.4
	testq	%r14, %r14
	je	.LBB89_6
# BB#3:                                 # %cond.end.8
	movq	64(%rdi), %rbx
	movl	$65359, %esi            # imm = 0xFF4F
	movl	$2, %edx
	movq	%rbx, %rdi
	callq	opj_write_bytes_LE
	movl	$2, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rcx
	callq	opj_stream_write_data
	cmpq	$2, %rax
	sete	%al
	movzbl	%al, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB89_4:                               # %cond.false
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$1691, %edx             # imm = 0x69B
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_soc, %ecx
	callq	__assert_fail
.LBB89_5:                               # %cond.false.3
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$1692, %edx             # imm = 0x69C
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_soc, %ecx
	callq	__assert_fail
.LBB89_6:                               # %cond.false.7
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$1693, %edx             # imm = 0x69D
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_soc, %ecx
	callq	__assert_fail
.Lfunc_end89:
	.size	opj_j2k_write_soc, .Lfunc_end89-opj_j2k_write_soc
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_write_siz,@function
opj_j2k_write_siz:                      # @opj_j2k_write_siz
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp808:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp809:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp810:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp811:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp812:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp813:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp814:
	.cfi_def_cfa_offset 96
.Ltmp815:
	.cfi_offset %rbx, -56
.Ltmp816:
	.cfi_offset %r12, -48
.Ltmp817:
	.cfi_offset %r13, -40
.Ltmp818:
	.cfi_offset %r14, -32
.Ltmp819:
	.cfi_offset %r15, -24
.Ltmp820:
	.cfi_offset %rbp, -16
	movq	%rdx, %r13
	movq	%rdi, %r12
	testq	%rsi, %rsi
	je	.LBB90_13
# BB#1:                                 # %cond.end
	testq	%r12, %r12
	je	.LBB90_14
# BB#2:                                 # %cond.end.4
	testq	%r13, %r13
	je	.LBB90_15
# BB#3:                                 # %cond.end.8
	movq	96(%r12), %r14
	movl	16(%r14), %ebp
	leal	40(%rbp,%rbp,2), %eax
	movq	24(%r14), %r15
	cmpl	72(%r12), %eax
	jbe	.LBB90_4
# BB#5:                                 # %cond.false.13
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movl	%eax, %esi
	movq	64(%r12), %rdi
	movl	%eax, 36(%rsp)          # 4-byte Spill
	callq	realloc
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB90_6
# BB#7:                                 # %if.end
	movq	%r13, 16(%rsp)          # 8-byte Spill
	leaq	64(%r12), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	%rbx, 64(%r12)
	movl	36(%rsp), %eax          # 4-byte Reload
	movl	%eax, 72(%r12)
	jmp	.LBB90_8
.LBB90_4:                               # %cond.end.8.if.end.35_crit_edge
	movl	%eax, 36(%rsp)          # 4-byte Spill
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movq	%r13, 16(%rsp)          # 8-byte Spill
	leaq	64(%r12), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	64(%r12), %rbx
.LBB90_8:                               # %if.end.35
	leal	(%rbp,%rbp,2), %r13d
	movl	$65361, %esi            # imm = 0xFF51
	movl	$2, %edx
	movq	%rbx, %rdi
	callq	opj_write_bytes_LE
	leaq	2(%rbx), %rdi
	addl	$38, %r13d
	movl	$2, %edx
	movl	%r13d, %esi
	callq	opj_write_bytes_LE
	leaq	4(%rbx), %rdi
	movl	112(%r12), %esi
	movl	$2, %edx
	callq	opj_write_bytes_LE
	leaq	6(%rbx), %rdi
	movl	8(%r14), %esi
	movl	$4, %edx
	callq	opj_write_bytes_LE
	leaq	10(%rbx), %rdi
	movl	12(%r14), %esi
	movl	$4, %edx
	callq	opj_write_bytes_LE
	leaq	14(%rbx), %rdi
	movl	(%r14), %esi
	movl	$4, %edx
	callq	opj_write_bytes_LE
	leaq	18(%rbx), %rdi
	movl	4(%r14), %esi
	movl	$4, %edx
	callq	opj_write_bytes_LE
	leaq	22(%rbx), %rdi
	movl	124(%r12), %esi
	movl	$4, %edx
	callq	opj_write_bytes_LE
	leaq	26(%rbx), %rdi
	movl	128(%r12), %esi
	movl	$4, %edx
	callq	opj_write_bytes_LE
	leaq	30(%rbx), %rdi
	movl	116(%r12), %esi
	movl	$4, %edx
	callq	opj_write_bytes_LE
	leaq	34(%rbx), %rdi
	movl	120(%r12), %esi
	movl	$4, %edx
	callq	opj_write_bytes_LE
	leaq	38(%rbx), %rdi
	movl	16(%r14), %esi
	movl	$2, %edx
	callq	opj_write_bytes_LE
	cmpl	$0, 16(%r14)
	je	.LBB90_11
# BB#9:                                 # %for.body.lr.ph
	addq	$40, %rbx
	addq	$32, %r15
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB90_10:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-8(%r15), %eax
	movl	(%r15), %ecx
	shll	$7, %ecx
	leal	-1(%rax,%rcx), %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	opj_write_bytes_LE
	movl	-32(%r15), %esi
	leaq	1(%rbx), %rdi
	movl	$1, %edx
	callq	opj_write_bytes_LE
	movl	-28(%r15), %esi
	leaq	2(%rbx), %rdi
	movl	$1, %edx
	callq	opj_write_bytes_LE
	incl	%ebp
	addq	$64, %r15
	addq	$3, %rbx
	cmpl	16(%r14), %ebp
	jb	.LBB90_10
.LBB90_11:                              # %for.end
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	(%rax), %rsi
	movl	36(%rsp), %ebx          # 4-byte Reload
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rdx
	movq	16(%rsp), %rcx          # 8-byte Reload
	callq	opj_stream_write_data
	cmpq	%rbx, %rax
	sete	%al
	movzbl	%al, %ebx
	jmp	.LBB90_12
.LBB90_6:                               # %if.then.18
	movq	64(%r12), %rdi
	callq	free
	movq	$0, 64(%r12)
	movl	$0, 72(%r12)
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.192, %edx
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	opj_event_msg
.LBB90_12:                              # %cleanup.69
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB90_13:                              # %cond.false
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$1773, %edx             # imm = 0x6ED
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_siz, %ecx
	callq	__assert_fail
.LBB90_14:                              # %cond.false.3
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$1774, %edx             # imm = 0x6EE
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_siz, %ecx
	callq	__assert_fail
.LBB90_15:                              # %cond.false.7
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$1775, %edx             # imm = 0x6EF
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_siz, %ecx
	callq	__assert_fail
.Lfunc_end90:
	.size	opj_j2k_write_siz, .Lfunc_end90-opj_j2k_write_siz
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_write_cod,@function
opj_j2k_write_cod:                      # @opj_j2k_write_cod
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp821:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp822:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp823:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp824:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp825:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp826:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp827:
	.cfi_def_cfa_offset 96
.Ltmp828:
	.cfi_offset %rbx, -56
.Ltmp829:
	.cfi_offset %r12, -48
.Ltmp830:
	.cfi_offset %r13, -40
.Ltmp831:
	.cfi_offset %r14, -32
.Ltmp832:
	.cfi_offset %r15, -24
.Ltmp833:
	.cfi_offset %rbp, -16
	movq	%rdi, %r13
	testq	%r13, %r13
	je	.LBB91_13
# BB#1:                                 # %cond.end
	testq	%rdx, %rdx
	je	.LBB91_14
# BB#2:                                 # %cond.end.4
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	testq	%rsi, %rsi
	je	.LBB91_15
# BB#3:                                 # %cond.end.8
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movl	280(%r13), %ebp
	movq	208(%r13), %r15
	xorl	%edx, %edx
	movq	%r13, %rdi
	movl	%ebp, %esi
	callq	opj_j2k_get_SPCod_SPCoc_size
	movl	%eax, %r12d
	leal	9(%r12), %r14d
	movl	%r14d, 36(%rsp)
	cmpl	72(%r13), %r14d
	jbe	.LBB91_4
# BB#5:                                 # %cond.false.14
	movl	%r14d, %esi
	movq	64(%r13), %rdi
	callq	realloc
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB91_6
# BB#7:                                 # %if.end
	leaq	64(%r13), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	%rbx, 64(%r13)
	movl	%r14d, 72(%r13)
	jmp	.LBB91_8
.LBB91_4:                               # %cond.end.8.if.end.37_crit_edge
	leaq	64(%r13), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	64(%r13), %rbx
.LBB91_8:                               # %if.end.37
	movl	$65362, %esi            # imm = 0xFF52
	movl	$2, %edx
	movq	%rbx, %rdi
	callq	opj_write_bytes_LE
	leaq	2(%rbx), %rdi
	movl	%r12d, %esi
	addl	$7, %esi
	movl	$2, %edx
	callq	opj_write_bytes_LE
	leaq	4(%rbx), %rdi
	imulq	$5680, %rbp, %rbp       # imm = 0x1630
	movl	(%r15,%rbp), %esi
	movl	$1, %edx
	callq	opj_write_bytes_LE
	leaq	5(%rbx), %rdi
	movl	4(%r15,%rbp), %esi
	movl	$1, %edx
	callq	opj_write_bytes_LE
	leaq	6(%rbx), %rdi
	movl	8(%r15,%rbp), %esi
	movl	$2, %edx
	callq	opj_write_bytes_LE
	leaq	8(%rbx), %rdi
	movl	16(%r15,%rbp), %esi
	movl	$1, %edx
	callq	opj_write_bytes_LE
	addq	$9, %rbx
	movl	%r12d, 36(%rsp)
	movl	280(%r13), %esi
	leaq	36(%rsp), %rcx
	movq	%r13, %rdi
	movq	%rbx, %rdx
	movq	24(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %r8
	callq	opj_j2k_write_SPCod_SPCoc
	testl	%eax, %eax
	je	.LBB91_9
# BB#10:                                # %if.end.51
	cmpl	$0, 36(%rsp)
	je	.LBB91_11
.LBB91_9:                               # %if.then.49
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.194, %edx
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	opj_event_msg
	jmp	.LBB91_12
.LBB91_11:                              # %if.end.56
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	(%rax), %rsi
	movl	%r14d, %ebx
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rdx
	movq	%rbp, %rcx
	callq	opj_stream_write_data
	cmpq	%rbx, %rax
	sete	%al
	movzbl	%al, %ebx
	jmp	.LBB91_12
.LBB91_6:                               # %if.then.20
	movq	64(%r13), %rdi
	callq	free
	movq	$0, 64(%r13)
	movl	$0, 72(%r13)
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.193, %edx
	xorl	%eax, %eax
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	opj_event_msg
.LBB91_12:                              # %cleanup.67
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB91_13:                              # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$2284, %edx             # imm = 0x8EC
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_cod, %ecx
	callq	__assert_fail
.LBB91_14:                              # %cond.false.3
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$2285, %edx             # imm = 0x8ED
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_cod, %ecx
	callq	__assert_fail
.LBB91_15:                              # %cond.false.7
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$2286, %edx             # imm = 0x8EE
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_cod, %ecx
	callq	__assert_fail
.Lfunc_end91:
	.size	opj_j2k_write_cod, .Lfunc_end91-opj_j2k_write_cod
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_write_qcd,@function
opj_j2k_write_qcd:                      # @opj_j2k_write_qcd
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp834:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp835:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp836:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp837:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp838:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp839:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp840:
	.cfi_def_cfa_offset 80
.Ltmp841:
	.cfi_offset %rbx, -56
.Ltmp842:
	.cfi_offset %r12, -48
.Ltmp843:
	.cfi_offset %r13, -40
.Ltmp844:
	.cfi_offset %r14, -32
.Ltmp845:
	.cfi_offset %r15, -24
.Ltmp846:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB92_15
# BB#1:                                 # %cond.end
	testq	%r15, %r15
	je	.LBB92_16
# BB#2:                                 # %cond.end.4
	testq	%r14, %r14
	je	.LBB92_17
# BB#3:                                 # %cond.end.8
	movl	280(%rbx), %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	opj_j2k_get_SQcd_SQcc_size
	movl	%eax, %r12d
	leal	4(%r12), %r13d
	movl	%r13d, 20(%rsp)
	cmpl	72(%rbx), %r13d
	jbe	.LBB92_4
# BB#5:                                 # %cond.false.13
	movl	%r13d, %esi
	movq	64(%rbx), %rdi
	callq	realloc
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB92_6
# BB#7:                                 # %if.end
	leaq	64(%rbx), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	%rbp, 64(%rbx)
	movl	%r13d, 72(%rbx)
	jmp	.LBB92_8
.LBB92_4:                               # %cond.end.8.if.end.36_crit_edge
	leaq	64(%rbx), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	64(%rbx), %rbp
.LBB92_8:                               # %if.end.36
	movl	$65372, %esi            # imm = 0xFF5C
	movl	$2, %edx
	movq	%rbp, %rdi
	callq	opj_write_bytes_LE
	leaq	2(%rbp), %rdi
	movl	%r12d, %esi
	addl	$2, %esi
	movl	$2, %edx
	callq	opj_write_bytes_LE
	addq	$4, %rbp
	movl	%r12d, 20(%rsp)
	movl	280(%rbx), %esi
	xorl	%r12d, %r12d
	leaq	20(%rsp), %r8
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rcx
	movq	%r15, %r9
	callq	opj_j2k_write_SQcd_SQcc
	testl	%eax, %eax
	je	.LBB92_9
# BB#11:                                # %if.end.47
	cmpl	$0, 20(%rsp)
	je	.LBB92_13
# BB#12:                                # %if.then.50
	xorl	%r12d, %r12d
.LBB92_9:                               # %if.then.45
	movl	$1, %esi
	movl	$.L.str.196, %edx
	jmp	.LBB92_10
.LBB92_13:                              # %if.end.52
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	(%rax), %rsi
	movl	%r13d, %ebx
	movq	%r14, %rdi
	movq	%rbx, %rdx
	movq	%r15, %rcx
	callq	opj_stream_write_data
	cmpq	%rbx, %rax
	sete	%al
	movzbl	%al, %r12d
	jmp	.LBB92_14
.LBB92_6:                               # %if.then.19
	movq	64(%rbx), %rdi
	callq	free
	movq	$0, 64(%rbx)
	movl	$0, 72(%rbx)
	xorl	%r12d, %r12d
	movl	$1, %esi
	movl	$.L.str.195, %edx
.LBB92_10:                              # %cleanup.63
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	opj_event_msg
.LBB92_14:                              # %cleanup.63
	movl	%r12d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB92_15:                              # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$2618, %edx             # imm = 0xA3A
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_qcd, %ecx
	callq	__assert_fail
.LBB92_16:                              # %cond.false.3
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$2619, %edx             # imm = 0xA3B
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_qcd, %ecx
	callq	__assert_fail
.LBB92_17:                              # %cond.false.7
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$2620, %edx             # imm = 0xA3C
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_qcd, %ecx
	callq	__assert_fail
.Lfunc_end92:
	.size	opj_j2k_write_qcd, .Lfunc_end92-opj_j2k_write_qcd
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_write_image_components,@function
opj_j2k_write_image_components:         # @opj_j2k_write_image_components
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp847:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp848:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp849:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp850:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp851:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp852:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp853:
	.cfi_def_cfa_offset 80
.Ltmp854:
	.cfi_offset %rbx, -56
.Ltmp855:
	.cfi_offset %r12, -48
.Ltmp856:
	.cfi_offset %r13, -40
.Ltmp857:
	.cfi_offset %r14, -32
.Ltmp858:
	.cfi_offset %r15, -24
.Ltmp859:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB93_21
# BB#1:                                 # %cond.end
	testq	%r14, %r14
	je	.LBB93_22
# BB#2:                                 # %cond.end.4
	cmpq	$0, 8(%rsp)             # 8-byte Folded Reload
	je	.LBB93_5
# BB#3:                                 # %for.cond.preheader
	movq	96(%rbx), %rax
	movl	16(%rax), %eax
	movl	$1, %r13d
	cmpl	$2, %eax
	jb	.LBB93_20
# BB#4:                                 # %cond.end.8.i.lr.ph
	movl	$1, %r15d
	.align	16, 0x90
.LBB93_7:                               # %cond.end.8.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, %eax              # imm = 0x100
	seta	%al
	movzbl	%al, %ebp
	movl	280(%rbx), %esi
	movq	%rbx, %rdi
	movl	%r15d, %edx
	callq	opj_j2k_get_SPCod_SPCoc_size
	leal	6(%rbp,%rax), %ebp
	cmpl	72(%rbx), %ebp
	jbe	.LBB93_8
# BB#9:                                 # %cond.false.15.i
                                        #   in Loop: Header=BB93_7 Depth=1
	movl	%ebp, %r12d
	movq	64(%rbx), %rdi
	movq	%r12, %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB93_10
# BB#12:                                # %if.end.i
                                        #   in Loop: Header=BB93_7 Depth=1
	movq	%rax, 64(%rbx)
	movl	%ebp, 72(%rbx)
	jmp	.LBB93_13
	.align	16, 0x90
.LBB93_8:                               # %cond.end.8.if.end.39_crit_edge.i
                                        #   in Loop: Header=BB93_7 Depth=1
	movq	64(%rbx), %rax
	movl	%ebp, %r12d
.LBB93_13:                              # %opj_j2k_write_coc.exit
                                        #   in Loop: Header=BB93_7 Depth=1
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movq	%rax, %rdx
	leaq	16(%rsp), %rcx
	movq	%r14, %r8
	callq	opj_j2k_write_coc_in_memory
	movq	64(%rbx), %rsi
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	%r12, %rdx
	movq	%r14, %rcx
	callq	opj_stream_write_data
	xorl	%r13d, %r13d
	cmpq	%r12, %rax
	jne	.LBB93_20
# BB#14:                                # %cond.end.8.i.25
                                        #   in Loop: Header=BB93_7 Depth=1
	movl	280(%rbx), %esi
	movq	%rbx, %rdi
	movl	%r15d, %edx
	callq	opj_j2k_get_SQcd_SQcc_size
	movl	%eax, %ebp
	addl	$6, %ebp
	movl	%ebp, 20(%rsp)
	cmpl	72(%rbx), %ebp
	jbe	.LBB93_15
# BB#16:                                # %cond.false.13.i
                                        #   in Loop: Header=BB93_7 Depth=1
	movl	%ebp, %r12d
	movq	64(%rbx), %rdi
	movq	%r12, %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB93_17
# BB#18:                                # %if.end.i.31
                                        #   in Loop: Header=BB93_7 Depth=1
	movq	%rax, 64(%rbx)
	movl	%ebp, 72(%rbx)
	jmp	.LBB93_19
	.align	16, 0x90
.LBB93_15:                              # %cond.end.8.if.end.36_crit_edge.i
                                        #   in Loop: Header=BB93_7 Depth=1
	movq	64(%rbx), %rax
	movl	%ebp, %r12d
.LBB93_19:                              # %opj_j2k_write_qcc.exit
                                        #   in Loop: Header=BB93_7 Depth=1
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movq	%rax, %rdx
	leaq	20(%rsp), %rcx
	movq	%r14, %r8
	callq	opj_j2k_write_qcc_in_memory
	movq	64(%rbx), %rsi
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	%r12, %rdx
	movq	%r14, %rcx
	callq	opj_stream_write_data
	cmpq	%r12, %rax
	jne	.LBB93_20
# BB#6:                                 # %for.cond
                                        #   in Loop: Header=BB93_7 Depth=1
	incl	%r15d
	movq	96(%rbx), %rax
	movl	16(%rax), %eax
	movl	$1, %r13d
	cmpl	%eax, %r15d
	jb	.LBB93_7
	jmp	.LBB93_20
.LBB93_10:                              # %opj_j2k_write_coc.exit.thread
	movq	64(%rbx), %rdi
	callq	free
	movq	$0, 64(%rbx)
	movl	$0, 72(%rbx)
	xorl	%r13d, %r13d
	movl	$1, %esi
	movl	$.L.str.197, %edx
	jmp	.LBB93_11
.LBB93_17:                              # %opj_j2k_write_qcc.exit.thread
	movq	64(%rbx), %rdi
	callq	free
	movq	$0, 64(%rbx)
	movl	$0, 72(%rbx)
	xorl	%r13d, %r13d
	movl	$1, %esi
	movl	$.L.str.198, %edx
.LBB93_11:                              # %cleanup
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	opj_event_msg
.LBB93_20:                              # %cleanup
	movl	%r13d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB93_21:                              # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$4767, %edx             # imm = 0x129F
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_image_components, %ecx
	callq	__assert_fail
.LBB93_22:                              # %cond.false.3
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$4768, %edx             # imm = 0x12A0
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_image_components, %ecx
	callq	__assert_fail
.LBB93_5:                               # %cond.false.7
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$4769, %edx             # imm = 0x12A1
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_image_components, %ecx
	callq	__assert_fail
.Lfunc_end93:
	.size	opj_j2k_write_image_components, .Lfunc_end93-opj_j2k_write_image_components
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_write_tlm,@function
opj_j2k_write_tlm:                      # @opj_j2k_write_tlm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp860:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp861:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp862:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp863:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp864:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp865:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp866:
	.cfi_def_cfa_offset 64
.Ltmp867:
	.cfi_offset %rbx, -56
.Ltmp868:
	.cfi_offset %r12, -48
.Ltmp869:
	.cfi_offset %r13, -40
.Ltmp870:
	.cfi_offset %r14, -32
.Ltmp871:
	.cfi_offset %r15, -24
.Ltmp872:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %r13
	testq	%r13, %r13
	je	.LBB94_10
# BB#1:                                 # %cond.end
	testq	%rdx, %rdx
	je	.LBB94_11
# BB#2:                                 # %cond.end.4
	testq	%r15, %r15
	je	.LBB94_12
# BB#3:                                 # %cond.end.8
	movq	%rdx, (%rsp)            # 8-byte Spill
	movl	40(%r13), %ebp
	leal	6(%rbp,%rbp,4), %r14d
	cmpl	72(%r13), %r14d
	jbe	.LBB94_4
# BB#5:                                 # %cond.false.15
	movl	%r14d, %r12d
	movq	64(%r13), %rdi
	movq	%r12, %rsi
	callq	realloc
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB94_6
# BB#7:                                 # %if.end
	movq	%rbx, 64(%r13)
	movl	%r14d, 72(%r13)
	jmp	.LBB94_8
.LBB94_4:                               # %cond.end.8.if.end.37_crit_edge
	movq	64(%r13), %rbx
	movl	%r14d, %r12d
.LBB94_8:                               # %if.end.37
	leal	(%rbp,%rbp,4), %ebp
	movq	%r15, %rdi
	callq	opj_stream_tell
	movq	%rax, 16(%r13)
	movl	$65365, %esi            # imm = 0xFF55
	movl	$2, %edx
	movq	%rbx, %rdi
	callq	opj_write_bytes_LE
	leaq	2(%rbx), %rdi
	addl	$4, %ebp
	movl	$2, %edx
	movl	%ebp, %esi
	callq	opj_write_bytes_LE
	leaq	4(%rbx), %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	opj_write_bytes_LE
	addq	$5, %rbx
	movl	$80, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	opj_write_bytes_LE
	movq	64(%r13), %rsi
	movq	%r15, %rdi
	movq	%r12, %rdx
	movq	(%rsp), %rcx            # 8-byte Reload
	callq	opj_stream_write_data
	cmpq	%r12, %rax
	sete	%al
	movzbl	%al, %ebx
	jmp	.LBB94_9
.LBB94_6:                               # %if.then.20
	movq	64(%r13), %rdi
	callq	free
	movq	$0, 64(%r13)
	movl	$0, 72(%r13)
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.199, %edx
	xorl	%eax, %eax
	movq	(%rsp), %rdi            # 8-byte Reload
	callq	opj_event_msg
.LBB94_9:                               # %cleanup.56
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB94_10:                              # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$3780, %edx             # imm = 0xEC4
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_tlm, %ecx
	callq	__assert_fail
.LBB94_11:                              # %cond.false.3
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$3781, %edx             # imm = 0xEC5
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_tlm, %ecx
	callq	__assert_fail
.LBB94_12:                              # %cond.false.7
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$3782, %edx             # imm = 0xEC6
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_tlm, %ecx
	callq	__assert_fail
.Lfunc_end94:
	.size	opj_j2k_write_tlm, .Lfunc_end94-opj_j2k_write_tlm
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_write_poc,@function
opj_j2k_write_poc:                      # @opj_j2k_write_poc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp873:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp874:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp875:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp876:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp877:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp878:
	.cfi_def_cfa_offset 64
.Ltmp879:
	.cfi_offset %rbx, -48
.Ltmp880:
	.cfi_offset %r12, -40
.Ltmp881:
	.cfi_offset %r14, -32
.Ltmp882:
	.cfi_offset %r15, -24
.Ltmp883:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	$0, 12(%rsp)
	testq	%rbx, %rbx
	je	.LBB95_12
# BB#1:                                 # %cond.end
	testq	%r14, %r14
	je	.LBB95_13
# BB#2:                                 # %cond.end.4
	testq	%r15, %r15
	je	.LBB95_14
# BB#3:                                 # %cond.end.8
	movl	280(%rbx), %eax
	movq	96(%rbx), %rcx
	movq	208(%rbx), %rdx
	imulq	$5680, %rax, %rax       # imm = 0x1630
	movl	420(%rdx,%rax), %eax
	incl	%eax
	movl	$7, %ebp
	cmpl	$257, 16(%rcx)          # imm = 0x101
	jb	.LBB95_5
# BB#4:                                 # %select.mid
	movl	$9, %ebp
.LBB95_5:                               # %select.end
	imull	%eax, %ebp
	addl	$4, %ebp
	cmpl	72(%rbx), %ebp
	jbe	.LBB95_6
# BB#7:                                 # %cond.false.18
	movl	%ebp, %r12d
	movq	64(%rbx), %rdi
	movq	%r12, %rsi
	callq	realloc
	movq	%rax, %rsi
	testq	%rsi, %rsi
	je	.LBB95_8
# BB#9:                                 # %if.end.34
	movq	%rsi, 64(%rbx)
	movl	%ebp, 72(%rbx)
	jmp	.LBB95_10
.LBB95_6:                               # %cond.end.8.if.end.41_crit_edge
	movq	64(%rbx), %rsi
	movl	%ebp, %r12d
.LBB95_10:                              # %if.end.41
	leaq	12(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rcx
	callq	opj_j2k_write_poc_in_memory
	movq	64(%rbx), %rsi
	movq	%r15, %rdi
	movq	%r12, %rdx
	movq	%r14, %rcx
	callq	opj_stream_write_data
	cmpq	%r12, %rax
	sete	%al
	movzbl	%al, %ebx
	jmp	.LBB95_11
.LBB95_8:                               # %if.then.23
	movq	64(%rbx), %rdi
	callq	free
	movq	$0, 64(%rbx)
	movl	$0, 72(%rbx)
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.200, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	opj_event_msg
.LBB95_11:                              # %cleanup.55
	movl	%ebx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB95_12:                              # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$2891, %edx             # imm = 0xB4B
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_poc, %ecx
	callq	__assert_fail
.LBB95_13:                              # %cond.false.3
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$2892, %edx             # imm = 0xB4C
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_poc, %ecx
	callq	__assert_fail
.LBB95_14:                              # %cond.false.7
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$2893, %edx             # imm = 0xB4D
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_poc, %ecx
	callq	__assert_fail
.Lfunc_end95:
	.size	opj_j2k_write_poc, .Lfunc_end95-opj_j2k_write_poc
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_write_regions,@function
opj_j2k_write_regions:                  # @opj_j2k_write_regions
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp884:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp885:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp886:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp887:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp888:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp889:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp890:
	.cfi_def_cfa_offset 96
.Ltmp891:
	.cfi_offset %rbx, -56
.Ltmp892:
	.cfi_offset %r12, -48
.Ltmp893:
	.cfi_offset %r13, -40
.Ltmp894:
	.cfi_offset %r14, -32
.Ltmp895:
	.cfi_offset %r15, -24
.Ltmp896:
	.cfi_offset %rbp, -16
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	testq	%rdi, %rdi
	je	.LBB96_10
# BB#1:                                 # %cond.end
	testq	%rdx, %rdx
	je	.LBB96_11
# BB#2:                                 # %cond.end.4
	movq	%rdx, (%rsp)            # 8-byte Spill
	cmpq	$0, 8(%rsp)             # 8-byte Folded Reload
	je	.LBB96_12
# BB#3:                                 # %cond.end.8
	movq	96(%rdi), %rax
	movl	16(%rax), %ecx
	movl	$1, %ebx
	testl	%ecx, %ecx
	je	.LBB96_9
# BB#4:                                 # %for.body.lr.ph
	movq	208(%rdi), %rdx
	movl	$808, %r12d             # imm = 0x328
	addq	5584(%rdx), %r12
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB96_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%r12)
	je	.LBB96_8
# BB#6:                                 # %opj_j2k_write_rgn.exit
                                        #   in Loop: Header=BB96_5 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	64(%rax), %r14
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	208(%rax), %rax
	movl	%ebp, %edx
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	5584(%rax), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	cmpl	$256, %ecx              # imm = 0x100
	seta	%al
	movzbl	%al, %r13d
	leal	1(%r13), %r15d
	addl	$7, %r13d
	movl	$65374, %esi            # imm = 0xFF5E
	movl	$2, %edx
	movq	%r14, %rdi
	callq	opj_write_bytes_LE
	leaq	2(%r14), %rdi
	leal	4(%r15), %esi
	movl	$2, %edx
	callq	opj_write_bytes_LE
	leaq	4(%r14), %rdi
	movl	%ebp, %esi
	movl	%r15d, %edx
	callq	opj_write_bytes_LE
	leaq	4(%r14,%r15), %rdi
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movl	$1, %edx
	callq	opj_write_bytes_LE
	leaq	5(%r14,%r15), %rdi
	movq	32(%rsp), %r14          # 8-byte Reload
	imulq	$1080, 24(%rsp), %rax   # 8-byte Folded Reload
                                        # imm = 0x438
	movq	16(%rsp), %rcx          # 8-byte Reload
	movl	808(%rcx,%rax), %esi
	movl	$1, %edx
	callq	opj_write_bytes_LE
	movq	64(%r14), %rsi
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	%r13, %rdx
	movq	(%rsp), %rcx            # 8-byte Reload
	callq	opj_stream_write_data
	cmpq	%r13, %rax
	jne	.LBB96_9
# BB#7:                                 # %opj_j2k_write_rgn.exit.if.end.14_crit_edge
                                        #   in Loop: Header=BB96_5 Depth=1
	movq	96(%r14), %rax
.LBB96_8:                               # %if.end.14
                                        #   in Loop: Header=BB96_5 Depth=1
	incl	%ebp
	movl	16(%rax), %ecx
	addq	$1080, %r12             # imm = 0x438
	movl	$1, %ebx
	cmpl	%ecx, %ebp
	jb	.LBB96_5
.LBB96_9:                               # %cleanup
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB96_10:                              # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$4793, %edx             # imm = 0x12B9
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_regions, %ecx
	callq	__assert_fail
.LBB96_11:                              # %cond.false.3
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$4794, %edx             # imm = 0x12BA
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_regions, %ecx
	callq	__assert_fail
.LBB96_12:                              # %cond.false.7
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$4795, %edx             # imm = 0x12BB
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_regions, %ecx
	callq	__assert_fail
.Lfunc_end96:
	.size	opj_j2k_write_regions, .Lfunc_end96-opj_j2k_write_regions
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_write_com,@function
opj_j2k_write_com:                      # @opj_j2k_write_com
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp897:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp898:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp899:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp900:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp901:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp902:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp903:
	.cfi_def_cfa_offset 80
.Ltmp904:
	.cfi_offset %rbx, -56
.Ltmp905:
	.cfi_offset %r12, -48
.Ltmp906:
	.cfi_offset %r13, -40
.Ltmp907:
	.cfi_offset %r14, -32
.Ltmp908:
	.cfi_offset %r15, -24
.Ltmp909:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB97_10
# BB#1:                                 # %cond.end
	testq	%rsi, %rsi
	je	.LBB97_11
# BB#2:                                 # %cond.end.4
	testq	%rdx, %rdx
	je	.LBB97_12
# BB#3:                                 # %cond.end.8
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	136(%rbx), %r12
	movq	%r12, %rdi
	callq	strlen
	movq	%rax, %rbp
	leal	6(%rbp), %r15d
	cmpl	72(%rbx), %r15d
	jbe	.LBB97_4
# BB#5:                                 # %cond.false.15
	movl	%r15d, %r13d
	movq	64(%rbx), %rdi
	movq	%r13, %rsi
	callq	realloc
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB97_6
# BB#7:                                 # %if.end
	movq	%r14, 64(%rbx)
	movl	%r15d, 72(%rbx)
	leaq	64(%rbx), %rbx
	jmp	.LBB97_8
.LBB97_4:                               # %cond.end.8.if.end.38_crit_edge
	movq	64(%rbx), %r14
	addq	$64, %rbx
	movl	%r15d, %r13d
.LBB97_8:                               # %if.end.38
	movl	$65380, %esi            # imm = 0xFF64
	movl	$2, %edx
	movq	%r14, %rdi
	callq	opj_write_bytes_LE
	leaq	2(%r14), %rdi
	leal	4(%rbp), %esi
	movl	$2, %edx
	callq	opj_write_bytes_LE
	leaq	4(%r14), %rdi
	movl	$1, %esi
	movl	$2, %edx
	callq	opj_write_bytes_LE
	addq	$6, %r14
	movl	%ebp, %edx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	memcpy
	movq	(%rbx), %rsi
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	%r13, %rdx
	movq	16(%rsp), %rcx          # 8-byte Reload
	callq	opj_stream_write_data
	cmpq	%r13, %rax
	sete	%al
	movzbl	%al, %ebx
	jmp	.LBB97_9
.LBB97_6:                               # %if.then.21
	movq	64(%rbx), %rdi
	callq	free
	movq	$0, 64(%rbx)
	movl	$0, 72(%rbx)
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.201, %edx
	xorl	%eax, %eax
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	opj_event_msg
.LBB97_9:                               # %cleanup.56
	movl	%ebx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB97_10:                              # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$2211, %edx             # imm = 0x8A3
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_com, %ecx
	callq	__assert_fail
.LBB97_11:                              # %cond.false.3
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$2212, %edx             # imm = 0x8A4
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_com, %ecx
	callq	__assert_fail
.LBB97_12:                              # %cond.false.7
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$2213, %edx             # imm = 0x8A5
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_com, %ecx
	callq	__assert_fail
.Lfunc_end97:
	.size	opj_j2k_write_com, .Lfunc_end97-opj_j2k_write_com
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_write_mct_data_group,@function
opj_j2k_write_mct_data_group:           # @opj_j2k_write_mct_data_group
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp910:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp911:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp912:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp913:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp914:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp915:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp916:
	.cfi_def_cfa_offset 128
.Ltmp917:
	.cfi_offset %rbx, -56
.Ltmp918:
	.cfi_offset %r12, -48
.Ltmp919:
	.cfi_offset %r13, -40
.Ltmp920:
	.cfi_offset %r14, -32
.Ltmp921:
	.cfi_offset %r15, -24
.Ltmp922:
	.cfi_offset %rbp, -16
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB98_53
# BB#1:                                 # %cond.end
	testq	%rsi, %rsi
	je	.LBB98_54
# BB#2:                                 # %cond.end.4
	cmpq	$0, 64(%rsp)            # 8-byte Folded Reload
	je	.LBB98_55
# BB#3:                                 # %cond.end.8.i
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	movq	96(%rbx), %r13
	movl	16(%r13), %r14d
	leal	6(%r14), %r15d
	cmpl	72(%rbx), %r15d
	jbe	.LBB98_4
# BB#5:                                 # %cond.false.14.i
	movl	%r15d, %esi
	movq	64(%rbx), %rdi
	callq	realloc
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB98_6
# BB#8:                                 # %if.end.i
	leaq	64(%rbx), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	%r12, 64(%rbx)
	movl	%r15d, 72(%rbx)
	jmp	.LBB98_9
.LBB98_4:                               # %cond.end.8.if.end.36_crit_edge.i
	leaq	64(%rbx), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	64(%rbx), %r12
.LBB98_9:                               # %if.end.36.i
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	movl	$65400, %esi            # imm = 0xFF78
	movl	$2, %edx
	movq	%r12, %rdi
	callq	opj_write_bytes_LE
	leaq	2(%r12), %rdi
	addl	$4, %r14d
	movl	$2, %edx
	movl	%r14d, %esi
	callq	opj_write_bytes_LE
	leaq	4(%r12), %rdi
	movl	16(%r13), %esi
	movl	$2, %edx
	callq	opj_write_bytes_LE
	cmpl	$0, 16(%r13)
	je	.LBB98_12
# BB#10:                                # %for.body.lr.ph.i
	movq	24(%r13), %rbp
	addq	$32, %rbp
	addq	$6, %r12
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB98_11:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	-8(%rbp), %esi
	movl	(%rbp), %eax
	shll	$7, %eax
	decl	%esi
	orl	%eax, %esi
	leaq	(%r12,%rbx), %rdi
	movl	$1, %edx
	callq	opj_write_bytes_LE
	addq	$64, %rbp
	incq	%rbx
	cmpl	16(%r13), %ebx
	jb	.LBB98_11
.LBB98_12:                              # %opj_j2k_write_cbd.exit
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rsi
	movl	%r15d, %ebp
	movq	56(%rsp), %r12          # 8-byte Reload
	movq	%r12, %rdi
	movq	%rbp, %rdx
	movq	64(%rsp), %rcx          # 8-byte Reload
	callq	opj_stream_write_data
	xorl	%ebx, %ebx
	cmpq	%rbp, %rax
	movq	40(%rsp), %r13          # 8-byte Reload
	jne	.LBB98_52
# BB#13:                                # %if.end
	movl	280(%r13), %eax
	movq	208(%r13), %rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	imulq	$5680, %rax, %rax       # imm = 0x1630
	movq	%rax, 16(%rsp)          # 8-byte Spill
	cmpl	$0, 5648(%rcx,%rax)
	je	.LBB98_22
# BB#14:                                # %cond.end.8.i.35.lr.ph
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	16(%rsp), %rcx          # 8-byte Reload
	leaq	5648(%rax,%rcx), %rdx
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	5640(%rax,%rcx), %r14
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB98_15:                              # %cond.end.8.i.35
                                        # =>This Inner Loop Header: Depth=1
	movl	24(%r14), %ebx
	leal	10(%rbx), %r12d
	cmpl	72(%r13), %r12d
	jbe	.LBB98_16
# BB#17:                                # %cond.false.13.i
                                        #   in Loop: Header=BB98_15 Depth=1
	movl	%ecx, 48(%rsp)          # 4-byte Spill
	movl	%r12d, %r15d
	movq	64(%r13), %rdi
	movq	%r15, %rsi
	callq	realloc
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB98_18
# BB#19:                                # %if.end.i.42
                                        #   in Loop: Header=BB98_15 Depth=1
	movq	%rbp, 64(%r13)
	movl	%r12d, 72(%r13)
	jmp	.LBB98_20
	.align	16, 0x90
.LBB98_16:                              # %cond.end.8.if.end.35_crit_edge.i
                                        #   in Loop: Header=BB98_15 Depth=1
	movl	%ecx, 48(%rsp)          # 4-byte Spill
	movq	64(%r13), %rbp
	movl	%r12d, %r15d
.LBB98_20:                              # %opj_j2k_write_mct_record.exit
                                        #   in Loop: Header=BB98_15 Depth=1
	movl	$65396, %esi            # imm = 0xFF74
	movl	$2, %edx
	movq	%rbp, %rdi
	callq	opj_write_bytes_LE
	leaq	2(%rbp), %rdi
	addl	$8, %ebx
	movl	$2, %edx
	movl	%ebx, %esi
	callq	opj_write_bytes_LE
	leaq	4(%rbp), %rdi
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movl	$2, %edx
	callq	opj_write_bytes_LE
	leaq	6(%rbp), %rdi
	movzbl	8(%r14), %eax
	movl	(%r14), %esi
	movl	4(%r14), %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	shll	$10, %esi
	orl	%ecx, %esi
	movl	$2, %edx
	callq	opj_write_bytes_LE
	leaq	8(%rbp), %rdi
	xorl	%esi, %esi
	movl	$2, %edx
	callq	opj_write_bytes_LE
	addq	$10, %rbp
	movq	16(%r14), %rsi
	movl	24(%r14), %edx
	movq	%rbp, %rdi
	callq	memcpy
	movq	64(%r13), %rsi
	movq	56(%rsp), %r12          # 8-byte Reload
	movq	%r12, %rdi
	movq	%r15, %rdx
	movq	64(%rsp), %rcx          # 8-byte Reload
	callq	opj_stream_write_data
	cmpq	%r15, %rax
	jne	.LBB98_52
# BB#21:                                # %if.end.13
                                        #   in Loop: Header=BB98_15 Depth=1
	addq	$32, %r14
	movl	48(%rsp), %ecx          # 4-byte Reload
	incl	%ecx
	movq	32(%rsp), %rax          # 8-byte Reload
	cmpl	(%rax), %ecx
	jb	.LBB98_15
.LBB98_22:                              # %for.end
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	16(%rsp), %rdx          # 8-byte Reload
	cmpl	$0, 5664(%rcx,%rdx)
	je	.LBB98_23
# BB#24:                                # %cond.end.8.i.64.lr.ph
	leaq	5664(%rcx,%rdx), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	5656(%rcx,%rdx), %r15
	leaq	64(%r13), %r14
	movq	%r14, 16(%rsp)          # 8-byte Spill
	movq	%r13, 40(%rsp)          # 8-byte Spill
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB98_25:                              # %cond.end.8.i.64
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB98_33 Depth 2
                                        #     Child Loop BB98_36 Depth 2
	movl	%ecx, 24(%rsp)          # 4-byte Spill
	movl	4(%r15), %ebp
	cmpl	$255, %ebp
	seta	%al
	movzbl	%al, %ecx
	leal	1(%rcx), %r13d
	imull	%r13d, %ebp
	leal	19(%rbp,%rbp), %r12d
	movq	40(%rsp), %rax          # 8-byte Reload
	cmpl	72(%rax), %r12d
	jbe	.LBB98_26
# BB#27:                                # %cond.false.17.i
                                        #   in Loop: Header=BB98_25 Depth=1
	movq	%r14, %rax
	movq	%rcx, %r14
	movl	%r12d, %esi
	movq	(%rax), %rdi
	callq	realloc
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB98_28
# BB#29:                                # %if.end.33.i
                                        #   in Loop: Header=BB98_25 Depth=1
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	%rbx, 64(%rax)
	movl	%r12d, 72(%rax)
	movq	%r14, %rcx
	jmp	.LBB98_30
	.align	16, 0x90
.LBB98_26:                              # %cond.end.8.if.end.40_crit_edge.i
                                        #   in Loop: Header=BB98_25 Depth=1
	movq	(%r14), %rbx
.LBB98_30:                              # %if.end.40.i
                                        #   in Loop: Header=BB98_25 Depth=1
	shll	$15, %ecx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	addl	%ebp, %ebp
	movl	$65397, %esi            # imm = 0xFF75
	movl	$2, %edx
	movq	%rbx, %rdi
	movq	%rcx, %r14
	callq	opj_write_bytes_LE
	leaq	2(%rbx), %rdi
	addl	$17, %ebp
	movl	$2, %edx
	movl	%ebp, %esi
	callq	opj_write_bytes_LE
	leaq	4(%rbx), %rdi
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movl	$2, %edx
	callq	opj_write_bytes_LE
	leaq	6(%rbx), %rdi
	movl	(%r15), %esi
	movl	$1, %edx
	callq	opj_write_bytes_LE
	leaq	7(%rbx), %rdi
	xorl	%esi, %esi
	movl	$2, %edx
	callq	opj_write_bytes_LE
	leaq	9(%rbx), %rdi
	movl	$1, %esi
	movl	$2, %edx
	callq	opj_write_bytes_LE
	leaq	11(%rbx), %rdi
	movl	$1, %esi
	movl	$1, %edx
	callq	opj_write_bytes_LE
	leaq	12(%rbx), %rdi
	movl	4(%r15), %esi
	orl	%r14d, %esi
	movl	$2, %edx
	callq	opj_write_bytes_LE
	addq	$14, %rbx
	cmpl	$0, 4(%r15)
	je	.LBB98_31
# BB#32:                                # %for.body.lr.ph.i.78
                                        #   in Loop: Header=BB98_25 Depth=1
	movl	%r12d, 48(%rsp)         # 4-byte Spill
	movl	%r13d, %r12d
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB98_33:                              # %for.body.i.80
                                        #   Parent Loop BB98_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rdi
	movl	%r14d, %esi
	movl	%r13d, %edx
	callq	opj_write_bytes_LE
	addq	%r12, %rbx
	incl	%r14d
	movl	4(%r15), %ebp
	cmpl	%ebp, %r14d
	jb	.LBB98_33
	jmp	.LBB98_34
	.align	16, 0x90
.LBB98_31:                              #   in Loop: Header=BB98_25 Depth=1
	movl	%r12d, 48(%rsp)         # 4-byte Spill
.LBB98_34:                              # %for.end.i.81
                                        #   in Loop: Header=BB98_25 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	orl	%eax, %ebp
	movl	$2, %edx
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	opj_write_bytes_LE
	addq	$2, %rbx
	cmpl	$0, 4(%r15)
	movq	56(%rsp), %r12          # 8-byte Reload
	je	.LBB98_37
# BB#35:                                # %for.body.62.lr.ph.i
                                        #   in Loop: Header=BB98_25 Depth=1
	movl	%r13d, %r14d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB98_36:                              # %for.body.62.i
                                        #   Parent Loop BB98_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movl	%r13d, %edx
	callq	opj_write_bytes_LE
	addq	%r14, %rbx
	incl	%ebp
	cmpl	4(%r15), %ebp
	jb	.LBB98_36
.LBB98_37:                              # %for.end.67.i
                                        #   in Loop: Header=BB98_25 Depth=1
	movb	24(%r15), %al
	notb	%al
	movzbl	%al, %esi
	andl	$1, %esi
	shll	$16, %esi
	movq	8(%r15), %rax
	testq	%rax, %rax
	je	.LBB98_39
# BB#38:                                # %if.then.70.i
                                        #   in Loop: Header=BB98_25 Depth=1
	orl	8(%rax), %esi
.LBB98_39:                              # %if.end.74.i
                                        #   in Loop: Header=BB98_25 Depth=1
	movq	16(%rsp), %r14          # 8-byte Reload
	movq	16(%r15), %rax
	testq	%rax, %rax
	je	.LBB98_41
# BB#40:                                # %if.then.76.i
                                        #   in Loop: Header=BB98_25 Depth=1
	movl	8(%rax), %eax
	shll	$8, %eax
	orl	%eax, %esi
.LBB98_41:                              # %opj_j2k_write_mcc_record.exit
                                        #   in Loop: Header=BB98_25 Depth=1
	movl	$3, %edx
	movq	%rbx, %rdi
	callq	opj_write_bytes_LE
	movq	(%r14), %rsi
	movl	48(%rsp), %ebp          # 4-byte Reload
	movq	%r12, %rdi
	movq	%rbp, %rdx
	movq	64(%rsp), %rcx          # 8-byte Reload
	callq	opj_stream_write_data
	xorl	%ebx, %ebx
	cmpq	%rbp, %rax
	jne	.LBB98_52
# BB#42:                                # %if.end.20
                                        #   in Loop: Header=BB98_25 Depth=1
	addq	$32, %r15
	movl	24(%rsp), %ecx          # 4-byte Reload
	incl	%ecx
	movq	8(%rsp), %rax           # 8-byte Reload
	cmpl	(%rax), %ecx
	jb	.LBB98_25
	jmp	.LBB98_43
.LBB98_6:                               # %opj_j2k_write_cbd.exit.thread
	movq	64(%rbx), %rdi
	callq	free
	movq	$0, 64(%rbx)
	movl	$0, 72(%rbx)
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.202, %edx
	jmp	.LBB98_7
.LBB98_23:                              # %for.end.cond.end.8.i.95_crit_edge
	leaq	64(%r13), %r14
	movq	%r13, 40(%rsp)          # 8-byte Spill
.LBB98_43:                              # %cond.end.8.i.95
	movq	%r14, 16(%rsp)          # 8-byte Spill
	movq	%r12, 56(%rsp)          # 8-byte Spill
	movq	40(%rsp), %rbp          # 8-byte Reload
	movl	280(%rbp), %eax
	movq	64(%rbp), %r14
	movq	208(%rbp), %r12
	imulq	$5680, %rax, %r13       # imm = 0x1630
	movl	5664(%r12,%r13), %r15d
	leal	5(%r15), %ebx
	cmpl	72(%rbp), %ebx
	jbe	.LBB98_47
# BB#44:                                # %cond.false.15.i
	movl	%ebx, %esi
	movq	%r14, %rdi
	callq	realloc
	testq	%rax, %rax
	je	.LBB98_45
# BB#46:                                # %if.end.i.99
	movq	%rax, 64(%rbp)
	movl	%ebx, 72(%rbp)
.LBB98_47:                              # %if.end.38.i
	movl	%ebx, 48(%rsp)          # 4-byte Spill
	movq	%r12, %rbx
	leaq	5664(%rbx,%r13), %r12
	movl	$65399, %esi            # imm = 0xFF77
	movl	$2, %edx
	movq	%r14, %rdi
	callq	opj_write_bytes_LE
	leaq	2(%r14), %rdi
	addl	$3, %r15d
	movl	$2, %edx
	movl	%r15d, %esi
	callq	opj_write_bytes_LE
	leaq	4(%r14), %rdi
	movl	(%r12), %esi
	movl	$1, %edx
	callq	opj_write_bytes_LE
	cmpl	$0, (%r12)
	je	.LBB98_50
# BB#48:                                # %for.body.lr.ph.i.104
	movq	5656(%rbx,%r13), %rbx
	addq	$5, %r14
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB98_49:                              # %for.body.i.107
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %esi
	leaq	(%r14,%rbp), %rdi
	movl	$1, %edx
	callq	opj_write_bytes_LE
	addq	$32, %rbx
	incq	%rbp
	cmpl	(%r12), %ebp
	jb	.LBB98_49
.LBB98_50:                              # %for.end.i.110
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rsi
	movl	48(%rsp), %ebx          # 4-byte Reload
	movq	56(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rdx
	movq	64(%rsp), %rcx          # 8-byte Reload
	callq	opj_stream_write_data
	cmpq	%rbx, %rax
	setne	%al
	jmp	.LBB98_51
.LBB98_18:                              # %opj_j2k_write_mct_record.exit.thread
	movq	64(%r13), %rdi
	callq	free
	movq	$0, 64(%r13)
	movl	$0, 72(%r13)
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.203, %edx
	jmp	.LBB98_7
.LBB98_28:                              # %opj_j2k_write_mcc_record.exit.thread
	movq	40(%rsp), %rbx          # 8-byte Reload
	movq	64(%rbx), %rdi
	callq	free
	movq	$0, 64(%rbx)
	movl	$0, 72(%rbx)
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.204, %edx
.LBB98_7:                               # %cleanup
	xorl	%eax, %eax
	movq	64(%rsp), %rdi          # 8-byte Reload
	callq	opj_event_msg
	jmp	.LBB98_52
.LBB98_45:                              # %if.then.21.i
	movq	64(%rbp), %rdi
	callq	free
	movq	$0, 64(%rbp)
	movl	$0, 72(%rbp)
	movl	$1, %esi
	movl	$.L.str.205, %edx
	xorl	%eax, %eax
	movq	64(%rsp), %rdi          # 8-byte Reload
	callq	opj_event_msg
	movb	$1, %al
.LBB98_51:                              # %opj_j2k_write_mco.exit
	movzbl	%al, %ebx
	xorl	$1, %ebx
.LBB98_52:                              # %cleanup
	movl	%ebx, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB98_53:                              # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$4722, %edx             # imm = 0x1272
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_mct_data_group, %ecx
	callq	__assert_fail
.LBB98_54:                              # %cond.false.3
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$4723, %edx             # imm = 0x1273
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_mct_data_group, %ecx
	callq	__assert_fail
.LBB98_55:                              # %cond.false.7
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$4724, %edx             # imm = 0x1274
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_write_mct_data_group, %ecx
	callq	__assert_fail
.Lfunc_end98:
	.size	opj_j2k_write_mct_data_group, .Lfunc_end98-opj_j2k_write_mct_data_group
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_get_end_header,@function
opj_j2k_get_end_header:                 # @opj_j2k_get_end_header
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp923:
	.cfi_def_cfa_offset 16
.Ltmp924:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB99_4
# BB#1:                                 # %cond.end
	testq	%rdx, %rdx
	je	.LBB99_5
# BB#2:                                 # %cond.end.4
	testq	%rsi, %rsi
	je	.LBB99_6
# BB#3:                                 # %cond.end.8
	movq	%rsi, %rdi
	callq	opj_stream_tell
	movq	272(%rbx), %rcx
	movq	%rax, 8(%rcx)
	movl	$1, %eax
	popq	%rbx
	retq
.LBB99_4:                               # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$4703, %edx             # imm = 0x125F
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_get_end_header, %ecx
	callq	__assert_fail
.LBB99_5:                               # %cond.false.3
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$4704, %edx             # imm = 0x1260
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_get_end_header, %ecx
	callq	__assert_fail
.LBB99_6:                               # %cond.false.7
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$4705, %edx             # imm = 0x1261
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_get_end_header, %ecx
	callq	__assert_fail
.Lfunc_end99:
	.size	opj_j2k_get_end_header, .Lfunc_end99-opj_j2k_get_end_header
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_create_tcd,@function
opj_j2k_create_tcd:                     # @opj_j2k_create_tcd
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp925:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp926:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp927:
	.cfi_def_cfa_offset 32
.Ltmp928:
	.cfi_offset %rbx, -32
.Ltmp929:
	.cfi_offset %r14, -24
.Ltmp930:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB100_8
# BB#1:                                 # %cond.end
	testq	%r14, %r14
	je	.LBB100_9
# BB#2:                                 # %cond.end.4
	testq	%rsi, %rsi
	je	.LBB100_10
# BB#3:                                 # %cond.end.8
	xorl	%ebp, %ebp
	xorl	%edi, %edi
	callq	opj_tcd_create
	movq	%rax, 288(%rbx)
	testq	%rax, %rax
	je	.LBB100_4
# BB#5:                                 # %if.end
	movq	96(%rbx), %rsi
	leaq	112(%rbx), %rdx
	movq	%rax, %rdi
	callq	opj_tcd_init
	movl	$1, %ebp
	testl	%eax, %eax
	jne	.LBB100_7
# BB#6:                                 # %if.then.14
	movq	288(%rbx), %rdi
	callq	opj_tcd_destroy
	movq	$0, 288(%rbx)
	xorl	%ebp, %ebp
	jmp	.LBB100_7
.LBB100_4:                              # %if.then
	movl	$1, %esi
	movl	$.L.str.206, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	opj_event_msg
.LBB100_7:                              # %return
	movl	%ebp, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB100_8:                              # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$9808, %edx             # imm = 0x2650
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_create_tcd, %ecx
	callq	__assert_fail
.LBB100_9:                              # %cond.false.3
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$9809, %edx             # imm = 0x2651
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_create_tcd, %ecx
	callq	__assert_fail
.LBB100_10:                             # %cond.false.7
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$9810, %edx             # imm = 0x2652
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_create_tcd, %ecx
	callq	__assert_fail
.Lfunc_end100:
	.size	opj_j2k_create_tcd, .Lfunc_end100-opj_j2k_create_tcd
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI101_0:
	.long	1073741824              # float 2
.LCPI101_1:
	.long	1106247680              # float 30
.LCPI101_2:
	.long	1092616192              # float 10
.LCPI101_3:
	.long	1101004800              # float 20
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI101_4:
	.quad	4595022699806117069     # double 0.16250000000000001
	.text
	.align	16, 0x90
	.type	opj_j2k_update_rates,@function
opj_j2k_update_rates:                   # @opj_j2k_update_rates
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp931:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp932:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp933:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp934:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp935:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp936:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp937:
	.cfi_def_cfa_offset 96
.Ltmp938:
	.cfi_offset %rbx, -56
.Ltmp939:
	.cfi_offset %r12, -48
.Ltmp940:
	.cfi_offset %r13, -40
.Ltmp941:
	.cfi_offset %r14, -32
.Ltmp942:
	.cfi_offset %r15, -24
.Ltmp943:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	testq	%r15, %r15
	je	.LBB101_98
# BB#1:                                 # %cond.end
	testq	%rdx, %rdx
	je	.LBB101_99
# BB#2:                                 # %cond.end.4
	testq	%rsi, %rsi
	je	.LBB101_100
# BB#3:                                 # %cond.end.8
	movq	96(%r15), %r12
	movq	208(%r15), %r13
	movq	24(%r12), %rax
	movl	(%rax), %ebp
	movl	4(%rax), %r14d
	movl	24(%rax), %eax
	imull	16(%r12), %eax
	movl	%eax, 32(%rsp)          # 4-byte Spill
	movq	%rsi, %rdi
	callq	opj_stream_tell
	movl	144(%r15), %ecx
	movl	148(%r15), %r8d
	movl	%ecx, %edx
	imull	%r8d, %edx
	testb	$8, 241(%r15)
	movl	$opj_j2k_get_default_stride, %esi
	movl	$opj_j2k_get_tp_stride, %edi
	cmoveq	%rsi, %rdi
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	testl	%r8d, %r8d
	je	.LBB101_48
# BB#4:                                 # %for.cond.18.preheader.lr.ph
	cvtsi2ssq	%rax, %xmm1
	cvtsi2ssq	%rdx, %xmm0
	divss	%xmm0, %xmm1
	movss	%xmm1, (%rsp)           # 4-byte Spill
	imull	%r14d, %ebp
	shll	$3, %ebp
	xorps	%xmm0, %xmm0
	cvtsi2ssq	%rbp, %xmm0
	movss	%xmm0, 4(%rsp)          # 4-byte Spill
	xorl	%edx, %edx
	movl	%ecx, %eax
	.align	16, 0x90
.LBB101_5:                              # %for.cond.18.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB101_6 Depth 2
                                        #       Child Loop BB101_15 Depth 3
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	leal	1(%rdx), %edx
	movl	%edx, 28(%rsp)          # 4-byte Spill
	testl	%eax, %eax
	movl	$0, %r14d
	movl	$0, %eax
	je	.LBB101_20
	.align	16, 0x90
.LBB101_6:                              # %for.body.22
                                        #   Parent Loop BB101_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB101_15 Depth 3
	movq	%r13, %rdi
	callq	*8(%rsp)                # 8-byte Folded Reload
	movl	8(%r13), %r9d
	xorps	%xmm1, %xmm1
	cvtsi2ssq	%r9, %xmm1
	divss	%xmm1, %xmm0
	movl	124(%r15), %edx
	movl	%edx, %esi
	imull	%r14d, %esi
	movl	116(%r15), %ecx
	movl	120(%r15), %r8d
	addl	%ecx, %esi
	movl	(%r12), %edi
	movl	4(%r12), %ebx
	cmpl	%edi, %esi
	cmovll	%edi, %esi
	movl	128(%r15), %eax
	movl	%eax, %ebp
	movq	16(%rsp), %rdi          # 8-byte Reload
	imull	%edi, %ebp
	addl	%r8d, %ebp
	cmpl	%ebx, %ebp
	cmovll	%ebx, %ebp
	incl	%r14d
	imull	%r14d, %edx
	addl	%ecx, %edx
	movl	8(%r12), %ecx
	cmpl	%ecx, %edx
	cmovgl	%ecx, %edx
	imull	28(%rsp), %eax          # 4-byte Folded Reload
	addl	%r8d, %eax
	movl	12(%r12), %ecx
	cmpl	%ecx, %eax
	cmovgl	%ecx, %eax
	movss	20(%r13), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm5, %xmm5
	ucomiss	%xmm5, %xmm1
	movss	4(%rsp), %xmm4          # 4-byte Reload
                                        # xmm4 = mem[0],zero,zero,zero
	jne	.LBB101_7
	jnp	.LBB101_8
.LBB101_7:                              # %if.then.44
                                        #   in Loop: Header=BB101_6 Depth=2
	movl	%edx, %ecx
	subl	%esi, %ecx
	imull	32(%rsp), %ecx          # 4-byte Folded Reload
	movl	%eax, %edi
	subl	%ebp, %edi
	imull	%ecx, %edi
	cvtsi2ssq	%rdi, %xmm2
	mulss	%xmm4, %xmm1
	divss	%xmm1, %xmm2
	subss	%xmm0, %xmm2
	movss	%xmm2, 20(%r13)
.LBB101_8:                              # %if.end.53
                                        #   in Loop: Header=BB101_6 Depth=2
	cmpl	$2, %r9d
	jb	.LBB101_18
# BB#9:                                 # %for.body.58.lr.ph
                                        #   in Loop: Header=BB101_6 Depth=2
	leaq	24(%r13), %rcx
	subl	%esi, %edx
	imull	32(%rsp), %edx          # 4-byte Folded Reload
	subl	%ebp, %eax
	imull	%edx, %eax
	xorps	%xmm1, %xmm1
	cvtsi2ssq	%rax, %xmm1
	movl	$1, %edx
	testb	$1, %r9b
	jne	.LBB101_13
# BB#10:                                # %for.body.58.prol
                                        #   in Loop: Header=BB101_6 Depth=2
	movss	(%rcx), %xmm2           # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm5, %xmm2
	jne	.LBB101_11
	jnp	.LBB101_12
.LBB101_11:                             # %if.then.60.prol
                                        #   in Loop: Header=BB101_6 Depth=2
	mulss	%xmm4, %xmm2
	movaps	%xmm1, %xmm3
	divss	%xmm2, %xmm3
	subss	%xmm0, %xmm3
	movss	%xmm3, (%rcx)
.LBB101_12:                             # %if.end.70.prol
                                        #   in Loop: Header=BB101_6 Depth=2
	leaq	28(%r13), %rcx
	movl	$2, %edx
.LBB101_13:                             # %for.body.58.lr.ph.split
                                        #   in Loop: Header=BB101_6 Depth=2
	cmpl	$2, %r9d
	je	.LBB101_18
# BB#14:                                # %for.body.58.lr.ph.split.split
                                        #   in Loop: Header=BB101_6 Depth=2
	addq	$4, %rcx
	.align	16, 0x90
.LBB101_15:                             # %for.body.58
                                        #   Parent Loop BB101_5 Depth=1
                                        #     Parent Loop BB101_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movss	-4(%rcx), %xmm2         # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm5, %xmm2
	jne	.LBB101_16
	jnp	.LBB101_17
.LBB101_16:                             # %if.then.60
                                        #   in Loop: Header=BB101_15 Depth=3
	mulss	%xmm4, %xmm2
	movaps	%xmm1, %xmm3
	divss	%xmm2, %xmm3
	subss	%xmm0, %xmm3
	movss	%xmm3, -4(%rcx)
.LBB101_17:                             # %if.end.70
                                        #   in Loop: Header=BB101_15 Depth=3
	movss	(%rcx), %xmm2           # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm5, %xmm2
	jne	.LBB101_96
	jnp	.LBB101_97
	jmp	.LBB101_96
.LBB101_96:                             # %if.then.60.1
                                        #   in Loop: Header=BB101_15 Depth=3
	mulss	%xmm4, %xmm2
	movaps	%xmm1, %xmm3
	divss	%xmm2, %xmm3
	subss	%xmm0, %xmm3
	movss	%xmm3, (%rcx)
.LBB101_97:                             # %if.end.70.1
                                        #   in Loop: Header=BB101_15 Depth=3
	addl	$2, %edx
	addq	$8, %rcx
	cmpl	%r9d, %edx
	jb	.LBB101_15
.LBB101_18:                             # %for.end
                                        #   in Loop: Header=BB101_6 Depth=2
	addq	$5680, %r13             # imm = 0x1630
	movl	144(%r15), %ecx
	cmpl	%ecx, %r14d
	jb	.LBB101_6
# BB#19:                                # %for.cond.18.for.inc.76_crit_edge
                                        #   in Loop: Header=BB101_5 Depth=1
	movl	148(%r15), %r8d
	movl	%ecx, %eax
.LBB101_20:                             # %for.inc.76
                                        #   in Loop: Header=BB101_5 Depth=1
	movl	28(%rsp), %edx          # 4-byte Reload
	cmpl	%r8d, %edx
	jb	.LBB101_5
# BB#21:                                # %for.end.78
	testl	%r8d, %r8d
	movss	(%rsp), %xmm2           # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	je	.LBB101_48
# BB#22:                                # %for.cond.85.preheader.lr.ph
	movq	208(%r15), %rax
	movss	.LCPI101_0(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
	addss	%xmm2, %xmm0
	xorl	%r9d, %r9d
	xorps	%xmm1, %xmm1
	movss	.LCPI101_1(%rip), %xmm8 # xmm8 = mem[0],zero,zero,zero
	movss	.LCPI101_2(%rip), %xmm3 # xmm3 = mem[0],zero,zero,zero
	movss	.LCPI101_3(%rip), %xmm4 # xmm4 = mem[0],zero,zero,zero
	.align	16, 0x90
.LBB101_23:                             # %for.cond.85.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB101_25 Depth 2
                                        #       Child Loop BB101_37 Depth 3
	testl	%ecx, %ecx
	je	.LBB101_47
# BB#24:                                # %for.body.89.lr.ph
                                        #   in Loop: Header=BB101_23 Depth=1
	leaq	28(%rax), %rdi
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB101_25:                             # %for.body.89
                                        #   Parent Loop BB101_23 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB101_37 Depth 3
	movss	20(%rax), %xmm5         # xmm5 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm5
	jne	.LBB101_26
	jnp	.LBB101_28
.LBB101_26:                             # %if.then.93
                                        #   in Loop: Header=BB101_25 Depth=2
	subss	%xmm2, %xmm5
	movss	%xmm5, 20(%rax)
	ucomiss	%xmm5, %xmm8
	jbe	.LBB101_28
# BB#27:                                # %if.then.97
                                        #   in Loop: Header=BB101_25 Depth=2
	movl	$1106247680, 20(%rax)   # imm = 0x41F00000
.LBB101_28:                             # %if.end.99
                                        #   in Loop: Header=BB101_25 Depth=2
	leaq	24(%rax), %rdx
	movl	8(%rax), %ebp
	leal	-1(%rbp), %esi
	movss	24(%rax), %xmm5         # xmm5 = mem[0],zero,zero,zero
	cmpl	$2, %esi
	jb	.LBB101_43
# BB#29:                                # %for.body.106.lr.ph
                                        #   in Loop: Header=BB101_25 Depth=2
	leal	-3(%rbp), %r10d
	testb	$1, %bpl
	jne	.LBB101_31
# BB#30:                                #   in Loop: Header=BB101_25 Depth=2
	xorps	%xmm6, %xmm6
	cmpneqss	%xmm5, %xmm6
	movd	%xmm6, %ebp
	andl	$1, %ebp
	movl	$1, %r11d
	jmp	.LBB101_35
	.align	16, 0x90
.LBB101_31:                             # %for.body.106.prol
                                        #   in Loop: Header=BB101_25 Depth=2
	ucomiss	%xmm1, %xmm5
	jne	.LBB101_32
	jnp	.LBB101_34
.LBB101_32:                             # %if.then.108.prol
                                        #   in Loop: Header=BB101_25 Depth=2
	subss	%xmm2, %xmm5
	movss	%xmm5, 24(%rax)
	movss	20(%rax), %xmm6         # xmm6 = mem[0],zero,zero,zero
	movaps	%xmm6, %xmm7
	addss	%xmm3, %xmm7
	ucomiss	%xmm5, %xmm7
	jbe	.LBB101_34
# BB#33:                                # %if.then.113.prol
                                        #   in Loop: Header=BB101_25 Depth=2
	addss	%xmm4, %xmm6
	movss	%xmm6, (%rdx)
.LBB101_34:                             # %if.end.117.prol
                                        #   in Loop: Header=BB101_25 Depth=2
	leaq	28(%rax), %rdx
	movss	28(%rax), %xmm5         # xmm5 = mem[0],zero,zero,zero
	xorps	%xmm6, %xmm6
	cmpneqss	%xmm5, %xmm6
	movd	%xmm6, %ebp
	andl	$1, %ebp
	movl	$2, %r11d
.LBB101_35:                             # %for.body.106.lr.ph.split
                                        #   in Loop: Header=BB101_25 Depth=2
	testl	%r10d, %r10d
	je	.LBB101_41
# BB#36:                                # %for.body.106.lr.ph.split.split
                                        #   in Loop: Header=BB101_25 Depth=2
	subl	%r11d, %esi
	.align	16, 0x90
.LBB101_37:                             # %for.body.106
                                        #   Parent Loop BB101_23 Depth=1
                                        #     Parent Loop BB101_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testb	$1, %bpl
	je	.LBB101_40
# BB#38:                                # %if.then.108
                                        #   in Loop: Header=BB101_37 Depth=3
	subss	%xmm2, %xmm5
	movss	%xmm5, (%rdx)
	movss	-4(%rdx), %xmm6         # xmm6 = mem[0],zero,zero,zero
	movaps	%xmm6, %xmm7
	addss	%xmm3, %xmm7
	ucomiss	%xmm5, %xmm7
	jbe	.LBB101_40
# BB#39:                                # %if.then.113
                                        #   in Loop: Header=BB101_37 Depth=3
	addss	%xmm4, %xmm6
	movss	%xmm6, (%rdx)
.LBB101_40:                             # %if.end.117
                                        #   in Loop: Header=BB101_37 Depth=3
	movss	4(%rdx), %xmm5          # xmm5 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm5
	jne	.LBB101_93
	jnp	.LBB101_95
	jmp	.LBB101_93
.LBB101_93:                             # %if.then.108.1
                                        #   in Loop: Header=BB101_37 Depth=3
	subss	%xmm2, %xmm5
	movss	%xmm5, 4(%rdx)
	movss	(%rdx), %xmm6           # xmm6 = mem[0],zero,zero,zero
	movaps	%xmm6, %xmm7
	addss	%xmm3, %xmm7
	ucomiss	%xmm5, %xmm7
	jbe	.LBB101_95
# BB#94:                                # %if.then.113.1
                                        #   in Loop: Header=BB101_37 Depth=3
	addss	%xmm4, %xmm6
	movss	%xmm6, 4(%rdx)
.LBB101_95:                             # %if.end.117.1
                                        #   in Loop: Header=BB101_37 Depth=3
	movss	8(%rdx), %xmm5          # xmm5 = mem[0],zero,zero,zero
	addq	$8, %rdx
	xorps	%xmm6, %xmm6
	cmpneqss	%xmm5, %xmm6
	movd	%xmm6, %ebp
	andl	$1, %ebp
	addl	$-2, %esi
	jne	.LBB101_37
.LBB101_41:                             # %for.cond.103.for.end.121_crit_edge
                                        #   in Loop: Header=BB101_25 Depth=2
	testb	$1, %bpl
	je	.LBB101_46
# BB#42:                                #   in Loop: Header=BB101_25 Depth=2
	leaq	(%rdi,%r10,4), %rdx
	jmp	.LBB101_44
	.align	16, 0x90
.LBB101_43:                             # %for.end.121
                                        #   in Loop: Header=BB101_25 Depth=2
	ucomiss	%xmm1, %xmm5
	jne	.LBB101_44
	jnp	.LBB101_46
.LBB101_44:                             # %if.then.123
                                        #   in Loop: Header=BB101_25 Depth=2
	subss	%xmm0, %xmm5
	movss	%xmm5, (%rdx)
	movss	-4(%rdx), %xmm6         # xmm6 = mem[0],zero,zero,zero
	movaps	%xmm6, %xmm7
	addss	%xmm3, %xmm7
	ucomiss	%xmm5, %xmm7
	jbe	.LBB101_46
# BB#45:                                # %if.then.130
                                        #   in Loop: Header=BB101_25 Depth=2
	addss	%xmm4, %xmm6
	movss	%xmm6, (%rdx)
.LBB101_46:                             # %if.end.134
                                        #   in Loop: Header=BB101_25 Depth=2
	addq	$5680, %rax             # imm = 0x1630
	incl	%ebx
	addq	$5680, %rdi             # imm = 0x1630
	cmpl	%ecx, %ebx
	jb	.LBB101_25
.LBB101_47:                             # %for.inc.139
                                        #   in Loop: Header=BB101_23 Depth=1
	incl	%r9d
	cmpl	%r8d, %r9d
	jb	.LBB101_23
.LBB101_48:                             # %for.end.141
	movl	16(%r12), %r8d
	xorl	%edi, %edi
	testl	%r8d, %r8d
	movl	$0, %r10d
	je	.LBB101_55
# BB#49:                                # %for.body.147.lr.ph
	movq	24(%r12), %rbp
	movl	124(%r15), %r9d
	movl	128(%r15), %r10d
	decl	%r9d
	decl	%r10d
	testb	$1, %r8b
	jne	.LBB101_51
# BB#50:
	xorl	%ecx, %ecx
	xorl	%r14d, %r14d
	jmp	.LBB101_52
.LBB101_51:                             # %for.body.147.prol
	movl	(%rbp), %ecx
	movl	4(%rbp), %ebx
	leal	(%r9,%rcx), %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%eax, %esi
	leal	(%r10,%rbx), %eax
	xorl	%edx, %edx
	divl	%ebx
	movl	%eax, %ecx
	imull	%esi, %ecx
	imull	24(%rbp), %ecx
	addq	$64, %rbp
	movl	$1, %r14d
.LBB101_52:                             # %for.body.147.lr.ph.split
	cmpl	$1, %r8d
	je	.LBB101_54
	.align	16, 0x90
.LBB101_53:                             # %for.body.147
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbp), %esi
	movl	4(%rbp), %ebx
	leal	(%r9,%rsi), %eax
	xorl	%edx, %edx
	divl	%esi
	movl	%eax, %r11d
	leal	(%r10,%rbx), %eax
	xorl	%edx, %edx
	divl	%ebx
	movl	%eax, %esi
	imull	%r11d, %esi
	imull	24(%rbp), %esi
	addl	%ecx, %esi
	movl	64(%rbp), %ecx
	leal	(%r9,%rcx), %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%eax, %r11d
	movl	68(%rbp), %ecx
	leal	(%r10,%rcx), %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%eax, %ecx
	imull	%r11d, %ecx
	imull	88(%rbp), %ecx
	addl	%esi, %ecx
	addl	$2, %r14d
	subq	$-128, %rbp
	cmpl	%r8d, %r14d
	jb	.LBB101_53
.LBB101_54:                             # %for.cond.143.for.end.161_crit_edge
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm0
	mulsd	.LCPI101_4(%rip), %xmm0
	cvttsd2si	%xmm0, %r10
.LBB101_55:                             # %for.end.161
	movq	96(%r15), %rax
	movl	16(%rax), %r13d
	movl	144(%r15), %r9d
	movl	148(%r15), %r11d
	movl	%r11d, %ecx
	imull	%r9d, %ecx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	testl	%ecx, %ecx
	je	.LBB101_64
# BB#56:                                # %for.body.lr.ph.i.i
	movq	208(%r15), %rdx
	leal	-1(%rcx), %r8d
	testb	$3, %cl
	je	.LBB101_57
# BB#58:                                # %for.body.i.i.prol.preheader
	movl	%ecx, %ebx
	andl	$3, %ebx
	xorl	%esi, %esi
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB101_59:                             # %for.body.i.i.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	5592(%rdx), %edi
	cmpl	%edi, %esi
	cmovbel	%edi, %esi
	addq	$5680, %rdx             # imm = 0x1630
	incl	%ebp
	cmpl	%ebp, %ebx
	jne	.LBB101_59
	jmp	.LBB101_60
.LBB101_57:
	xorl	%esi, %esi
	xorl	%ebp, %ebp
.LBB101_60:                             # %for.body.lr.ph.i.i.split
	cmpl	$3, %r8d
	movl	%esi, %ebx
	jb	.LBB101_63
# BB#61:                                # %for.body.lr.ph.i.i.split.split
	addq	$22632, %rdx            # imm = 0x5868
	movl	%ecx, %edi
	subl	%ebp, %edi
	.align	16, 0x90
.LBB101_62:                             # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	-17040(%rdx), %ebx
	cmpl	%ebx, %esi
	cmoval	%esi, %ebx
	movl	-11360(%rdx), %esi
	cmpl	%esi, %ebx
	cmovbel	%esi, %ebx
	movl	-5680(%rdx), %esi
	cmpl	%esi, %ebx
	cmovbel	%esi, %ebx
	movl	(%rdx), %esi
	cmpl	%esi, %ebx
	cmovbel	%esi, %ebx
	addq	$22720, %rdx            # imm = 0x58C0
	addl	$-4, %edi
	movl	%ebx, %esi
	jne	.LBB101_62
.LBB101_63:                             # %for.cond.for.end_crit_edge.i.i
	shll	$2, %ebx
	leal	(%rbx,%rbx,2), %edi
.LBB101_64:                             # %opj_j2k_get_max_toc_size.exit.i
	cmpl	$0, 216(%r15)
	jne	.LBB101_78
# BB#65:                                # %if.then.i
	movq	%r10, 8(%rsp)           # 8-byte Spill
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	xorl	%r14d, %r14d
	testl	%ecx, %ecx
	movl	%r13d, 28(%rsp)         # 4-byte Spill
	movl	$0, %r12d
	je	.LBB101_71
# BB#66:                                # %for.cond.2.preheader.lr.ph.i.i
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	movl	28(%rsp), %r13d         # 4-byte Reload
	.align	16, 0x90
.LBB101_67:                             # %for.cond.2.preheader.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB101_68 Depth 2
	testl	%r13d, %r13d
	movl	$0, %ebp
	je	.LBB101_69
	.align	16, 0x90
.LBB101_68:                             # %for.body.4.i.i
                                        #   Parent Loop BB101_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r15, %rdi
	movl	%ebx, %esi
	movl	%ebp, %edx
	callq	opj_j2k_get_SPCod_SPCoc_size
	cmpl	%eax, %r12d
	cmovbel	%eax, %r12d
	incl	%ebp
	cmpl	%ebp, %r13d
	jne	.LBB101_68
.LBB101_69:                             # %for.inc.6.i.i
                                        #   in Loop: Header=BB101_67 Depth=1
	incl	%ebx
	movq	32(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %ebx
	jne	.LBB101_67
# BB#70:                                # %opj_j2k_get_max_coc_size.exit.loopexit.i
	movl	144(%r15), %r9d
	movl	148(%r15), %r11d
	movq	96(%r15), %rdx
	movl	16(%rdx), %r13d
.LBB101_71:                             # %opj_j2k_get_max_coc_size.exit.i
	decl	28(%rsp)                # 4-byte Folded Spill
	movl	%r9d, %eax
	imull	%r11d, %eax
	movl	%eax, 32(%rsp)          # 4-byte Spill
	testl	%eax, %eax
	je	.LBB101_77
# BB#72:                                # %for.cond.2.preheader.lr.ph.i.i.i
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB101_73:                             # %for.cond.2.preheader.i.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB101_74 Depth 2
	testl	%r13d, %r13d
	movl	$0, %ebp
	je	.LBB101_75
	.align	16, 0x90
.LBB101_74:                             # %for.body.4.i.i.i
                                        #   Parent Loop BB101_73 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r15, %rdi
	movl	%ebx, %esi
	movl	%ebp, %edx
	callq	opj_j2k_get_SPCod_SPCoc_size
	cmpl	%eax, %r14d
	cmovbel	%eax, %r14d
	incl	%ebp
	cmpl	%ebp, %r13d
	jne	.LBB101_74
.LBB101_75:                             # %for.inc.6.i.i.i
                                        #   in Loop: Header=BB101_73 Depth=1
	incl	%ebx
	cmpl	32(%rsp), %ebx          # 4-byte Folded Reload
	jne	.LBB101_73
# BB#76:                                # %opj_j2k_get_max_qcc_size.exit.loopexit.i
	movl	144(%r15), %r9d
	movl	148(%r15), %r11d
.LBB101_77:                             # %opj_j2k_get_max_qcc_size.exit.i
	leal	12(%r12,%r14), %edx
	imull	28(%rsp), %edx          # 4-byte Folded Reload
	movq	16(%rsp), %rax          # 8-byte Reload
	addl	%eax, %edx
	movl	%edx, %edi
	movq	8(%rsp), %r10           # 8-byte Reload
.LBB101_78:                             # %if.end.i
	imull	%r11d, %r9d
	movl	$13, %ecx
	testl	%r9d, %r9d
	je	.LBB101_87
# BB#79:                                # %for.body.lr.ph.i.19.i
	movq	208(%r15), %rcx
	leal	-1(%r9), %esi
	testb	$3, %r9b
	je	.LBB101_80
# BB#81:                                # %for.body.i.25.i.prol.preheader
	movl	%r9d, %ebp
	andl	$3, %ebp
	xorl	%eax, %eax
	xorl	%edx, %edx
	.align	16, 0x90
.LBB101_82:                             # %for.body.i.25.i.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	420(%rcx), %ebx
	cmpl	%ebx, %edx
	cmovbel	%ebx, %edx
	addq	$5680, %rcx             # imm = 0x1630
	incl	%eax
	cmpl	%eax, %ebp
	jne	.LBB101_82
	jmp	.LBB101_83
.LBB101_80:
	xorl	%eax, %eax
	xorl	%edx, %edx
.LBB101_83:                             # %for.body.lr.ph.i.19.i.split
	cmpl	$3, %esi
	movl	%edx, %esi
	jb	.LBB101_86
# BB#84:                                # %for.body.lr.ph.i.19.i.split.split
	subl	%eax, %r9d
	addq	$17460, %rcx            # imm = 0x4434
	.align	16, 0x90
.LBB101_85:                             # %for.body.i.25.i
                                        # =>This Inner Loop Header: Depth=1
	movl	-17040(%rcx), %esi
	cmpl	%esi, %edx
	cmoval	%edx, %esi
	movl	-11360(%rcx), %edx
	cmpl	%edx, %esi
	cmovbel	%edx, %esi
	movl	-5680(%rcx), %edx
	cmpl	%edx, %esi
	cmovbel	%edx, %esi
	movl	(%rcx), %edx
	cmpl	%edx, %esi
	cmovbel	%edx, %esi
	addq	$22720, %rcx            # imm = 0x58C0
	addl	$-4, %r9d
	movl	%esi, %edx
	jne	.LBB101_85
.LBB101_86:                             # %for.cond.for.end_crit_edge.i.27.i
	leal	13(%rsi,%rsi,8), %ecx
.LBB101_87:                             # %opj_j2k_get_specific_header_sizes.exit
	addl	%r10d, %edi
	addl	%ecx, %edi
	movl	%edi, 56(%r15)
	callq	malloc
	movq	%rax, 48(%r15)
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB101_92
# BB#88:                                # %if.end.190
	cmpl	$0, 216(%r15)
	je	.LBB101_91
# BB#89:                                # %cond.false.202
	movl	40(%r15), %eax
	leal	(%rax,%rax,4), %edi
	callq	malloc
	movq	%rax, 24(%r15)
	testq	%rax, %rax
	je	.LBB101_92
# BB#90:                                # %if.end.218
	movq	%rax, 32(%r15)
.LBB101_91:                             # %cleanup
	movl	$1, %ebx
.LBB101_92:                             # %cleanup
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB101_98:                             # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$4506, %edx             # imm = 0x119A
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_update_rates, %ecx
	callq	__assert_fail
.LBB101_99:                             # %cond.false.3
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$4507, %edx             # imm = 0x119B
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_update_rates, %ecx
	callq	__assert_fail
.LBB101_100:                            # %cond.false.7
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$4508, %edx             # imm = 0x119C
	movl	$.L__PRETTY_FUNCTION__.opj_j2k_update_rates, %ecx
	callq	__assert_fail
.Lfunc_end101:
	.size	opj_j2k_update_rates, .Lfunc_end101-opj_j2k_update_rates
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_get_tp_stride,@function
opj_j2k_get_tp_stride:                  # @opj_j2k_get_tp_stride
	.cfi_startproc
# BB#0:                                 # %entry
	imull	$14, 5592(%rdi), %eax
	addl	$-14, %eax
	cvtsi2ssq	%rax, %xmm0
	retq
.Lfunc_end102:
	.size	opj_j2k_get_tp_stride, .Lfunc_end102-opj_j2k_get_tp_stride
	.cfi_endproc

	.align	16, 0x90
	.type	opj_j2k_get_default_stride,@function
opj_j2k_get_default_stride:             # @opj_j2k_get_default_stride
	.cfi_startproc
# BB#0:                                 # %entry
	xorps	%xmm0, %xmm0
	retq
.Lfunc_end103:
	.size	opj_j2k_get_default_stride, .Lfunc_end103-opj_j2k_get_default_stride
	.cfi_endproc

	.type	j2k_prog_order_list,@object # @j2k_prog_order_list
	.data
	.globl	j2k_prog_order_list
	.align	16
j2k_prog_order_list:
	.long	4                       # 0x4
	.asciz	"CPRL"
	.zero	3
	.long	0                       # 0x0
	.asciz	"LRCP"
	.zero	3
	.long	3                       # 0x3
	.asciz	"PCRL"
	.zero	3
	.long	1                       # 0x1
	.asciz	"RLCP"
	.zero	3
	.long	2                       # 0x2
	.asciz	"RPCL"
	.zero	3
	.long	4294967295              # 0xffffffff
	.zero	5
	.zero	3
	.size	j2k_prog_order_list, 72

	.type	j2k_mct_read_functions_to_float,@object # @j2k_mct_read_functions_to_float
	.section	.rodata,"a",@progbits
	.globl	j2k_mct_read_functions_to_float
	.align	16
j2k_mct_read_functions_to_float:
	.quad	opj_j2k_read_int16_to_float
	.quad	opj_j2k_read_int32_to_float
	.quad	opj_j2k_read_float32_to_float
	.quad	opj_j2k_read_float64_to_float
	.size	j2k_mct_read_functions_to_float, 32

	.type	j2k_mct_read_functions_to_int32,@object # @j2k_mct_read_functions_to_int32
	.globl	j2k_mct_read_functions_to_int32
	.align	16
j2k_mct_read_functions_to_int32:
	.quad	opj_j2k_read_int16_to_int32
	.quad	opj_j2k_read_int32_to_int32
	.quad	opj_j2k_read_float32_to_int32
	.quad	opj_j2k_read_float64_to_int32
	.size	j2k_mct_read_functions_to_int32, 32

	.type	j2k_mct_write_functions_from_float,@object # @j2k_mct_write_functions_from_float
	.globl	j2k_mct_write_functions_from_float
	.align	16
j2k_mct_write_functions_from_float:
	.quad	opj_j2k_write_float_to_int16
	.quad	opj_j2k_write_float_to_int32
	.quad	opj_j2k_write_float_to_float
	.quad	opj_j2k_write_float_to_float64
	.size	j2k_mct_write_functions_from_float, 32

	.type	j2k_memory_marker_handler_tab,@object # @j2k_memory_marker_handler_tab
	.globl	j2k_memory_marker_handler_tab
	.align	16
j2k_memory_marker_handler_tab:
	.long	65424                   # 0xff90
	.long	12                      # 0xc
	.quad	opj_j2k_read_sot
	.long	65362                   # 0xff52
	.long	20                      # 0x14
	.quad	opj_j2k_read_cod
	.long	65363                   # 0xff53
	.long	20                      # 0x14
	.quad	opj_j2k_read_coc
	.long	65374                   # 0xff5e
	.long	20                      # 0x14
	.quad	opj_j2k_read_rgn
	.long	65372                   # 0xff5c
	.long	20                      # 0x14
	.quad	opj_j2k_read_qcd
	.long	65373                   # 0xff5d
	.long	20                      # 0x14
	.quad	opj_j2k_read_qcc
	.long	65375                   # 0xff5f
	.long	20                      # 0x14
	.quad	opj_j2k_read_poc
	.long	65361                   # 0xff51
	.long	2                       # 0x2
	.quad	opj_j2k_read_siz
	.long	65365                   # 0xff55
	.long	4                       # 0x4
	.quad	opj_j2k_read_tlm
	.long	65367                   # 0xff57
	.long	4                       # 0x4
	.quad	opj_j2k_read_plm
	.long	65368                   # 0xff58
	.long	16                      # 0x10
	.quad	opj_j2k_read_plt
	.long	65376                   # 0xff60
	.long	4                       # 0x4
	.quad	j2k_read_ppm_v3
	.long	65377                   # 0xff61
	.long	16                      # 0x10
	.quad	opj_j2k_read_ppt
	.long	65425                   # 0xff91
	.long	0                       # 0x0
	.quad	0
	.long	65379                   # 0xff63
	.long	4                       # 0x4
	.quad	opj_j2k_read_crg
	.long	65380                   # 0xff64
	.long	20                      # 0x14
	.quad	opj_j2k_read_com
	.long	65396                   # 0xff74
	.long	20                      # 0x14
	.quad	opj_j2k_read_mct
	.long	65400                   # 0xff78
	.long	4                       # 0x4
	.quad	opj_j2k_read_cbd
	.long	65397                   # 0xff75
	.long	20                      # 0x14
	.quad	opj_j2k_read_mcc
	.long	65399                   # 0xff77
	.long	20                      # 0x14
	.quad	opj_j2k_read_mco
	.long	0                       # 0x0
	.long	20                      # 0x14
	.quad	0
	.size	j2k_memory_marker_handler_tab, 336

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"opj_matrix_inversion_f(lTmpBuf,(tcp->m_mct_decoding_matrix),image->numcomps)"
	.size	.L.str, 77

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"./openjpeg/libopenjpeg/j2k.c"
	.size	.L.str.1, 29

	.type	.L__PRETTY_FUNCTION__.opj_j2k_setup_encoder,@object # @__PRETTY_FUNCTION__.opj_j2k_setup_encoder
.L__PRETTY_FUNCTION__.opj_j2k_setup_encoder:
	.asciz	"void opj_j2k_setup_encoder(opj_j2k_t *, opj_cparameters_t *, opj_image_t *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_setup_encoder, 95

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"res_spec>0"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"p_j2k != 00"
	.size	.L.str.3, 12

	.type	.L__PRETTY_FUNCTION__.opj_j2k_read_header,@object # @__PRETTY_FUNCTION__.opj_j2k_read_header
.L__PRETTY_FUNCTION__.opj_j2k_read_header:
	.asciz	"OPJ_BOOL opj_j2k_read_header(opj_stream_private_t *, opj_j2k_t *, opj_image_t **, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_read_header, 101

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"p_stream != 00"
	.size	.L.str.4, 15

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"p_manager != 00"
	.size	.L.str.5, 16

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"p_tcp != 00"
	.size	.L.str.6, 12

	.type	.L__PRETTY_FUNCTION__.opj_j2k_setup_mct_encoding,@object # @__PRETTY_FUNCTION__.opj_j2k_setup_mct_encoding
.L__PRETTY_FUNCTION__.opj_j2k_setup_mct_encoding:
	.asciz	"OPJ_BOOL opj_j2k_setup_mct_encoding(opj_tcp_t *, opj_image_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_setup_mct_encoding, 64

	.type	MCT_ELEMENT_SIZE,@object # @MCT_ELEMENT_SIZE
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
MCT_ELEMENT_SIZE:
	.long	2                       # 0x2
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	8                       # 0x8
	.size	MCT_ELEMENT_SIZE, 16

	.type	.L__PRETTY_FUNCTION__.opj_j2k_read_tile_header,@object # @__PRETTY_FUNCTION__.opj_j2k_read_tile_header
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__PRETTY_FUNCTION__.opj_j2k_read_tile_header:
	.asciz	"OPJ_BOOL opj_j2k_read_tile_header(opj_j2k_t *, OPJ_UINT32 *, OPJ_UINT32 *, OPJ_INT32 *, OPJ_INT32 *, OPJ_INT32 *, OPJ_INT32 *, OPJ_UINT32 *, OPJ_BOOL *, opj_stream_private_t *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_read_tile_header, 196

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Stream too short\n"
	.size	.L.str.7, 18

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Marker is not compliant with its position\n"
	.size	.L.str.8, 43

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Not enough memory to read header\n"
	.size	.L.str.9, 34

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Not sure how that happened.\n"
	.size	.L.str.10, 29

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Fail to read the current marker segment (%#x)\n"
	.size	.L.str.11, 47

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Not enough memory to add tl marker\n"
	.size	.L.str.12, 36

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Cannot decode tile, memory error\n"
	.size	.L.str.13, 34

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Header of tile %d / %d has been read.\n"
	.size	.L.str.14, 39

	.type	.L__PRETTY_FUNCTION__.opj_j2k_decode_tile,@object # @__PRETTY_FUNCTION__.opj_j2k_decode_tile
.L__PRETTY_FUNCTION__.opj_j2k_decode_tile:
	.asciz	"OPJ_BOOL opj_j2k_decode_tile(opj_j2k_t *, OPJ_UINT32, OPJ_BYTE *, OPJ_UINT32, opj_stream_private_t *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_decode_tile, 121

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Stream too short, expected SOT\n"
	.size	.L.str.15, 32

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Need to decode the main header before begin to decode the remaining codestream"
	.size	.L.str.16, 79

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"No decoded area parameters, set the decoded area to the whole image\n"
	.size	.L.str.17, 69

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"p_start_x >= 0"
	.size	.L.str.18, 15

	.type	.L__PRETTY_FUNCTION__.opj_j2k_set_decode_area,@object # @__PRETTY_FUNCTION__.opj_j2k_set_decode_area
.L__PRETTY_FUNCTION__.opj_j2k_set_decode_area:
	.asciz	"OPJ_BOOL opj_j2k_set_decode_area(opj_j2k_t *, opj_image_t *, OPJ_INT32, OPJ_INT32, OPJ_INT32, OPJ_INT32, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_set_decode_area, 124

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"p_start_y >= 0"
	.size	.L.str.19, 15

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Left position of the decoded area (region_x0=%d) is outside the image area (Xsiz=%d).\n"
	.size	.L.str.20, 87

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Left position of the decoded area (region_x0=%d) is outside the image area (XOsiz=%d).\n"
	.size	.L.str.21, 88

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Up position of the decoded area (region_y0=%d) is outside the image area (Ysiz=%d).\n"
	.size	.L.str.22, 85

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Up position of the decoded area (region_y0=%d) is outside the image area (YOsiz=%d).\n"
	.size	.L.str.23, 86

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"(OPJ_UINT32)p_end_x > 0"
	.size	.L.str.24, 24

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"(OPJ_UINT32)p_end_y > 0"
	.size	.L.str.25, 24

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Right position of the decoded area (region_x1=%d) is outside the image area (XOsiz=%d).\n"
	.size	.L.str.26, 89

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Right position of the decoded area (region_x1=%d) is outside the image area (Xsiz=%d).\n"
	.size	.L.str.27, 88

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Bottom position of the decoded area (region_y1=%d) is outside the image area (YOsiz=%d).\n"
	.size	.L.str.28, 90

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Bottom position of the decoded area (region_y1=%d) is outside the image area (Ysiz=%d).\n"
	.size	.L.str.29, 89

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Size x of the decoded component image is incorrect (comp[%d].w=%d).\n"
	.size	.L.str.30, 69

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Size y of the decoded component image is incorrect (comp[%d].h=%d).\n"
	.size	.L.str.31, 69

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Setting decoding area to %d,%d,%d,%d\n"
	.size	.L.str.32, 38

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Wrong flag\n"
	.size	.L.str.33, 12

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"[DEV] Dump an image_header struct {\n"
	.size	.L.str.34, 37

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Image info {\n"
	.size	.L.str.35, 14

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"%s x0=%d, y0=%d\n"
	.size	.L.str.36, 17

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"%s x1=%d, y1=%d\n"
	.size	.L.str.37, 17

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"%s numcomps=%d\n"
	.size	.L.str.38, 16

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"%s\t component %d {\n"
	.size	.L.str.39, 20

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"%s}\n"
	.size	.L.str.40, 5

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"}\n"
	.size	.L.str.41, 3

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"[DEV] Dump an image_comp_header struct {\n"
	.size	.L.str.42, 42

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"%s dx=%d, dy=%d\n"
	.size	.L.str.43, 17

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"%s prec=%d\n"
	.size	.L.str.44, 12

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"%s sgnd=%d\n"
	.size	.L.str.45, 12

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"We need an image previously created.\n"
	.size	.L.str.46, 38

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Tile index provided by the user is incorrect %d (max = %d) \n"
	.size	.L.str.47, 61

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Resolution factor is greater than the maximum resolution in the component.\n"
	.size	.L.str.48, 76

	.type	.L__PRETTY_FUNCTION__.opj_j2k_encode,@object # @__PRETTY_FUNCTION__.opj_j2k_encode
.L__PRETTY_FUNCTION__.opj_j2k_encode:
	.asciz	"OPJ_BOOL opj_j2k_encode(opj_j2k_t *, opj_stream_private_t *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_encode, 80

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Not enough memory to encode all tiles\n"
	.size	.L.str.49, 39

	.type	.L__PRETTY_FUNCTION__.opj_j2k_start_compress,@object # @__PRETTY_FUNCTION__.opj_j2k_start_compress
.L__PRETTY_FUNCTION__.opj_j2k_start_compress:
	.asciz	"OPJ_BOOL opj_j2k_start_compress(opj_j2k_t *, opj_stream_private_t *, opj_image_t *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_start_compress, 103

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Error while opj_j2k_pre_write_tile with tile index = %d\n"
	.size	.L.str.50, 57

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Error while opj_j2k_post_write_tile with tile index = %d\n"
	.size	.L.str.51, 58

	.type	.L__PRETTY_FUNCTION__.opj_j2k_read_siz,@object # @__PRETTY_FUNCTION__.opj_j2k_read_siz
.L__PRETTY_FUNCTION__.opj_j2k_read_siz:
	.asciz	"OPJ_BOOL opj_j2k_read_siz(opj_j2k_t *, OPJ_BYTE *, OPJ_UINT32, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_read_siz, 82

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"p_header_data != 00"
	.size	.L.str.52, 20

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Error with SIZ marker size\n"
	.size	.L.str.53, 28

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Error with SIZ marker: number of component is illegal -> %d\n"
	.size	.L.str.54, 61

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Error with SIZ marker: number of component is not compatible with the remaining number of parameters ( %d vs %d)\n"
	.size	.L.str.55, 114

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Error with SIZ marker: negative image size (%d x %d)\n"
	.size	.L.str.56, 54

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Error with SIZ marker: invalid tile size (tdx: %d, tdy: %d)\n"
	.size	.L.str.57, 61

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Prevent buffer overflow (x1: %d, y1: %d)"
	.size	.L.str.58, 41

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Not enough memory to take in charge SIZ marker\n"
	.size	.L.str.59, 48

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Invalid values for comp = %d : dx=%u dy=%u\n (should be between 1 and 255 according the JPEG2000 norm)"
	.size	.L.str.60, 102

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Invalid number of tiles : %u x %u (maximum fixed by jpeg2000 norm is 65535 tiles)\n"
	.size	.L.str.61, 83

	.type	.L__PRETTY_FUNCTION__.opj_j2k_read_com,@object # @__PRETTY_FUNCTION__.opj_j2k_read_com
.L__PRETTY_FUNCTION__.opj_j2k_read_com:
	.asciz	"OPJ_BOOL opj_j2k_read_com(opj_j2k_t *, OPJ_BYTE *, OPJ_UINT32, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_read_com, 82

	.type	.L__PRETTY_FUNCTION__.opj_j2k_read_cod,@object # @__PRETTY_FUNCTION__.opj_j2k_read_cod
.L__PRETTY_FUNCTION__.opj_j2k_read_cod:
	.asciz	"OPJ_BOOL opj_j2k_read_cod(opj_j2k_t *, OPJ_BYTE *, OPJ_UINT32, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_read_cod, 82

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Error reading COD marker\n"
	.size	.L.str.62, 26

	.type	.L__PRETTY_FUNCTION__.opj_j2k_read_SPCod_SPCoc,@object # @__PRETTY_FUNCTION__.opj_j2k_read_SPCod_SPCoc
.L__PRETTY_FUNCTION__.opj_j2k_read_SPCod_SPCoc:
	.asciz	"OPJ_BOOL opj_j2k_read_SPCod_SPCoc(opj_j2k_t *, OPJ_UINT32, OPJ_BYTE *, OPJ_UINT32 *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_read_SPCod_SPCoc, 104

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"compno < p_j2k->m_private_image->numcomps"
	.size	.L.str.63, 42

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"Error reading SPCod SPCoc element\n"
	.size	.L.str.64, 35

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"Invalid value for numresolutions : %d, max value is set in openjpeg.h at %d\n"
	.size	.L.str.65, 77

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Error decoding component %d.\nThe number of resolutions to remove is higher than the number of resolutions of this component\nModify the cp_reduce parameter.\n\n"
	.size	.L.str.66, 158

	.type	.L__PRETTY_FUNCTION__.opj_j2k_read_coc,@object # @__PRETTY_FUNCTION__.opj_j2k_read_coc
.L__PRETTY_FUNCTION__.opj_j2k_read_coc:
	.asciz	"OPJ_BOOL opj_j2k_read_coc(opj_j2k_t *, OPJ_BYTE *, OPJ_UINT32, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_read_coc, 82

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"Error reading COC marker\n"
	.size	.L.str.67, 26

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"Error reading COC marker (bad number of components)\n"
	.size	.L.str.68, 53

	.type	.L__PRETTY_FUNCTION__.opj_j2k_read_qcd,@object # @__PRETTY_FUNCTION__.opj_j2k_read_qcd
.L__PRETTY_FUNCTION__.opj_j2k_read_qcd:
	.asciz	"OPJ_BOOL opj_j2k_read_qcd(opj_j2k_t *, OPJ_BYTE *, OPJ_UINT32, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_read_qcd, 82

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"Error reading QCD marker\n"
	.size	.L.str.69, 26

	.type	.L__PRETTY_FUNCTION__.opj_j2k_read_SQcd_SQcc,@object # @__PRETTY_FUNCTION__.opj_j2k_read_SQcd_SQcc
.L__PRETTY_FUNCTION__.opj_j2k_read_SQcd_SQcc:
	.asciz	"OPJ_BOOL opj_j2k_read_SQcd_SQcc(opj_j2k_t *, OPJ_UINT32, OPJ_BYTE *, OPJ_UINT32 *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_read_SQcd_SQcc, 102

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"p_comp_no < p_j2k->m_private_image->numcomps"
	.size	.L.str.70, 45

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"Error reading SQcd or SQcc element\n"
	.size	.L.str.71, 36

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"While reading CCP_QNTSTY element inside QCD or QCC marker segment, number of subbands (%d) is greater to OPJ_J2K_MAXBANDS (%d). So we limit the number of elements stored to OPJ_J2K_MAXBANDS (%d) and skip the rest. \n"
	.size	.L.str.72, 216

	.type	.L__PRETTY_FUNCTION__.opj_j2k_read_qcc,@object # @__PRETTY_FUNCTION__.opj_j2k_read_qcc
.L__PRETTY_FUNCTION__.opj_j2k_read_qcc:
	.asciz	"OPJ_BOOL opj_j2k_read_qcc(opj_j2k_t *, OPJ_BYTE *, OPJ_UINT32, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_read_qcc, 82

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"Error reading QCC marker\n"
	.size	.L.str.73, 26

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"Invalid component number: %d, regarding the number of components %d\n"
	.size	.L.str.74, 69

	.type	.L__PRETTY_FUNCTION__.opj_j2k_read_poc,@object # @__PRETTY_FUNCTION__.opj_j2k_read_poc
.L__PRETTY_FUNCTION__.opj_j2k_read_poc:
	.asciz	"OPJ_BOOL opj_j2k_read_poc(opj_j2k_t *, OPJ_BYTE *, OPJ_UINT32, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_read_poc, 82

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"Error reading POC marker\n"
	.size	.L.str.75, 26

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"l_current_poc_nb < 32"
	.size	.L.str.76, 22

	.type	.L__PRETTY_FUNCTION__.opj_j2k_read_crg,@object # @__PRETTY_FUNCTION__.opj_j2k_read_crg
.L__PRETTY_FUNCTION__.opj_j2k_read_crg:
	.asciz	"OPJ_BOOL opj_j2k_read_crg(opj_j2k_t *, OPJ_BYTE *, OPJ_UINT32, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_read_crg, 82

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"Error reading CRG marker\n"
	.size	.L.str.77, 26

	.type	.L__PRETTY_FUNCTION__.opj_j2k_read_tlm,@object # @__PRETTY_FUNCTION__.opj_j2k_read_tlm
.L__PRETTY_FUNCTION__.opj_j2k_read_tlm:
	.asciz	"OPJ_BOOL opj_j2k_read_tlm(opj_j2k_t *, OPJ_BYTE *, OPJ_UINT32, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_read_tlm, 82

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"Error reading TLM marker\n"
	.size	.L.str.78, 26

	.type	.L__PRETTY_FUNCTION__.opj_j2k_read_plm,@object # @__PRETTY_FUNCTION__.opj_j2k_read_plm
.L__PRETTY_FUNCTION__.opj_j2k_read_plm:
	.asciz	"OPJ_BOOL opj_j2k_read_plm(opj_j2k_t *, OPJ_BYTE *, OPJ_UINT32, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_read_plm, 82

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"Error reading PLM marker\n"
	.size	.L.str.79, 26

	.type	.L__PRETTY_FUNCTION__.opj_j2k_read_plt,@object # @__PRETTY_FUNCTION__.opj_j2k_read_plt
.L__PRETTY_FUNCTION__.opj_j2k_read_plt:
	.asciz	"OPJ_BOOL opj_j2k_read_plt(opj_j2k_t *, OPJ_BYTE *, OPJ_UINT32, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_read_plt, 82

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"Error reading PLT marker\n"
	.size	.L.str.80, 26

	.type	.L__PRETTY_FUNCTION__.j2k_read_ppm_v3,@object # @__PRETTY_FUNCTION__.j2k_read_ppm_v3
.L__PRETTY_FUNCTION__.j2k_read_ppm_v3:
	.asciz	"OPJ_BOOL j2k_read_ppm_v3(opj_j2k_t *, OPJ_BYTE *, OPJ_UINT32, struct opj_event_mgr *)"
	.size	.L__PRETTY_FUNCTION__.j2k_read_ppm_v3, 86

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"Error reading PPM marker\n"
	.size	.L.str.81, 26

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"Not enough memory to read ppm marker\n"
	.size	.L.str.82, 38

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"Empty PPM marker\n"
	.size	.L.str.83, 18

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"l_cp->ppm_data == l_cp->ppm_buffer && \"We need ppm_data and ppm_buffer to be the same when reallocating\""
	.size	.L.str.85, 105

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"Not enough memory to increase the size of ppm_data to add the new Ippm series\n"
	.size	.L.str.86, 79

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"Not enough memory to increase the size of ppm_data to add the new (complete) Ippm series\n"
	.size	.L.str.87, 90

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"Not enough memory to increase the size of ppm_data to add the new (incomplete) Ippm series\n"
	.size	.L.str.88, 92

	.type	.L__PRETTY_FUNCTION__.opj_j2k_read_ppt,@object # @__PRETTY_FUNCTION__.opj_j2k_read_ppt
.L__PRETTY_FUNCTION__.opj_j2k_read_ppt:
	.asciz	"OPJ_BOOL opj_j2k_read_ppt(opj_j2k_t *, OPJ_BYTE *, OPJ_UINT32, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_read_ppt, 82

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"Error reading PPT marker\n"
	.size	.L.str.89, 26

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"Error reading PPT marker: packet header have been previously found in the main header (PPM marker).\n"
	.size	.L.str.90, 101

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"Not enough memory to read PPT marker\n"
	.size	.L.str.91, 38

	.type	.L__PRETTY_FUNCTION__.opj_j2k_read_sot,@object # @__PRETTY_FUNCTION__.opj_j2k_read_sot
.L__PRETTY_FUNCTION__.opj_j2k_read_sot:
	.asciz	"OPJ_BOOL opj_j2k_read_sot(opj_j2k_t *, OPJ_BYTE *, OPJ_UINT32, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_read_sot, 82

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"Error reading SOT marker\n"
	.size	.L.str.92, 26

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"Invalid tile number %d\n"
	.size	.L.str.93, 24

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"Empty SOT marker detected: Psot=%d.\n"
	.size	.L.str.94, 37

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"Psot value is not correct regards to the JPEG2000 norm: %d.\n"
	.size	.L.str.95, 61

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"Psot value of the current tile-part is equal to zero, we assuming it is the last tile-part of the codestream.\n"
	.size	.L.str.96, 111

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"p_j2k->m_specific_param.m_decoder.m_tile_ind_to_dec >= 0"
	.size	.L.str.97, 57

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"p_j2k->cstr_index->tile_index != 00"
	.size	.L.str.98, 36

	.type	.L__PRETTY_FUNCTION__.opj_j2k_read_rgn,@object # @__PRETTY_FUNCTION__.opj_j2k_read_rgn
.L__PRETTY_FUNCTION__.opj_j2k_read_rgn:
	.asciz	"OPJ_BOOL opj_j2k_read_rgn(opj_j2k_t *, OPJ_BYTE *, OPJ_UINT32, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_read_rgn, 82

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"Error reading RGN marker\n"
	.size	.L.str.99, 26

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"JPWL: bad component number in RGN (%d when there are only %d)\n"
	.size	.L.str.100, 63

	.type	.L__PRETTY_FUNCTION__.opj_j2k_read_mct,@object # @__PRETTY_FUNCTION__.opj_j2k_read_mct
.L__PRETTY_FUNCTION__.opj_j2k_read_mct:
	.asciz	"OPJ_BOOL opj_j2k_read_mct(opj_j2k_t *, OPJ_BYTE *, OPJ_UINT32, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_read_mct, 82

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"Error reading MCT marker\n"
	.size	.L.str.101, 26

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"Cannot take in charge mct data within multiple MCT records\n"
	.size	.L.str.102, 60

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"Not enough memory to read MCT marker\n"
	.size	.L.str.103, 38

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"Cannot take in charge multiple MCT markers\n"
	.size	.L.str.104, 44

	.type	.L__PRETTY_FUNCTION__.opj_j2k_read_mcc,@object # @__PRETTY_FUNCTION__.opj_j2k_read_mcc
.L__PRETTY_FUNCTION__.opj_j2k_read_mcc:
	.asciz	"OPJ_BOOL opj_j2k_read_mcc(opj_j2k_t *, OPJ_BYTE *, OPJ_UINT32, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_read_mcc, 82

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"Error reading MCC marker\n"
	.size	.L.str.105, 26

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"Cannot take in charge multiple data spanning\n"
	.size	.L.str.106, 46

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"Not enough memory to read MCC marker\n"
	.size	.L.str.107, 38

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"Cannot take in charge multiple collections\n"
	.size	.L.str.108, 44

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"Cannot take in charge collections other than array decorrelation\n"
	.size	.L.str.109, 66

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"Cannot take in charge collections with indix shuffle\n"
	.size	.L.str.110, 54

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"Cannot take in charge collections without same number of indixes\n"
	.size	.L.str.111, 66

	.type	.L__PRETTY_FUNCTION__.opj_j2k_read_mco,@object # @__PRETTY_FUNCTION__.opj_j2k_read_mco
.L__PRETTY_FUNCTION__.opj_j2k_read_mco:
	.asciz	"OPJ_BOOL opj_j2k_read_mco(opj_j2k_t *, OPJ_BYTE *, OPJ_UINT32, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_read_mco, 82

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"Error reading MCO marker\n"
	.size	.L.str.112, 26

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"Cannot take in charge multiple transformation stages.\n"
	.size	.L.str.113, 55

	.type	.L__PRETTY_FUNCTION__.opj_j2k_read_cbd,@object # @__PRETTY_FUNCTION__.opj_j2k_read_cbd
.L__PRETTY_FUNCTION__.opj_j2k_read_cbd:
	.asciz	"OPJ_BOOL opj_j2k_read_cbd(opj_j2k_t *, OPJ_BYTE *, OPJ_UINT32, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_read_cbd, 82

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"Crror reading CBD marker\n"
	.size	.L.str.114, 26

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"Not enough memory for checking the poc values.\n"
	.size	.L.str.115, 48

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"Missing packets possible loss of data\n"
	.size	.L.str.116, 39

	.type	.L__PRETTY_FUNCTION__.opj_j2k_read_header_procedure,@object # @__PRETTY_FUNCTION__.opj_j2k_read_header_procedure
.L__PRETTY_FUNCTION__.opj_j2k_read_header_procedure:
	.asciz	"OPJ_BOOL opj_j2k_read_header_procedure(opj_j2k_t *, opj_stream_private_t *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_read_header_procedure, 95

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"Expected a SOC marker \n"
	.size	.L.str.117, 24

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"We expected read a marker ID (0xff--) instead of %.8x\n"
	.size	.L.str.118, 55

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"Unknow marker have been detected and generated error.\n"
	.size	.L.str.119, 55

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"Marker handler function failed to read the marker segment\n"
	.size	.L.str.120, 59

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"Not enough memory to add mh marker\n"
	.size	.L.str.121, 36

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"Main header has been correctly decoded.\n"
	.size	.L.str.122, 41

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"Start to read j2k main header (%d).\n"
	.size	.L.str.123, 37

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"Unknown marker\n"
	.size	.L.str.124, 16

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"cstr_index != 00"
	.size	.L.str.125, 17

	.type	.L__PRETTY_FUNCTION__.opj_j2k_add_mhmarker,@object # @__PRETTY_FUNCTION__.opj_j2k_add_mhmarker
.L__PRETTY_FUNCTION__.opj_j2k_add_mhmarker:
	.asciz	"OPJ_BOOL opj_j2k_add_mhmarker(opj_codestream_index_t *, OPJ_UINT32, OPJ_OFF_T, OPJ_UINT32)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_add_mhmarker, 91

	.type	.L__PRETTY_FUNCTION__.opj_j2k_copy_default_tcp_and_create_tcd,@object # @__PRETTY_FUNCTION__.opj_j2k_copy_default_tcp_and_create_tcd
.L__PRETTY_FUNCTION__.opj_j2k_copy_default_tcp_and_create_tcd:
	.asciz	"OPJ_BOOL opj_j2k_copy_default_tcp_and_create_tcd(opj_j2k_t *, opj_stream_private_t *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_copy_default_tcp_and_create_tcd, 105

	.type	.L__PRETTY_FUNCTION__.opj_j2k_decoding_validation,@object # @__PRETTY_FUNCTION__.opj_j2k_decoding_validation
.L__PRETTY_FUNCTION__.opj_j2k_decoding_validation:
	.asciz	"OPJ_BOOL opj_j2k_decoding_validation(opj_j2k_t *, opj_stream_private_t *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_decoding_validation, 93

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"p_procedure_list != 00"
	.size	.L.str.126, 23

	.type	.L__PRETTY_FUNCTION__.opj_j2k_exec,@object # @__PRETTY_FUNCTION__.opj_j2k_exec
.L__PRETTY_FUNCTION__.opj_j2k_exec:
	.asciz	"OPJ_BOOL opj_j2k_exec(opj_j2k_t *, opj_procedure_list_t *, opj_stream_private_t *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_exec, 102

	.type	.L__PRETTY_FUNCTION__.opj_j2k_add_tlmarker,@object # @__PRETTY_FUNCTION__.opj_j2k_add_tlmarker
.L__PRETTY_FUNCTION__.opj_j2k_add_tlmarker:
	.asciz	"OPJ_BOOL opj_j2k_add_tlmarker(OPJ_UINT32, opj_codestream_index_t *, OPJ_UINT32, OPJ_OFF_T, OPJ_UINT32)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_add_tlmarker, 103

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"cstr_index->tile_index != 00"
	.size	.L.str.127, 29

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"Not enough memory to decode tile\n"
	.size	.L.str.128, 34

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"Codestream index from main header: {\n"
	.size	.L.str.129, 38

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"\t Main header start position=%li\n\t Main header end position=%li\n"
	.size	.L.str.130, 65

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"\t Marker list: {\n"
	.size	.L.str.131, 18

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"\t\t type=%#x, pos=%li, len=%d\n"
	.size	.L.str.132, 30

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"\t }\n"
	.size	.L.str.133, 5

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"\t Tile index: {\n"
	.size	.L.str.134, 17

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"\t\t nb of tile-part in tile [%d]=%d\n"
	.size	.L.str.135, 36

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"\t\t\t tile-part[%d]: star_pos=%li, end_header=%li, end_pos=%li.\n"
	.size	.L.str.136, 63

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"Codestream info from main header: {\n"
	.size	.L.str.137, 37

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"\t tx0=%d, ty0=%d\n"
	.size	.L.str.138, 18

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"\t tdx=%d, tdy=%d\n"
	.size	.L.str.139, 18

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"\t tw=%d, th=%d\n"
	.size	.L.str.140, 16

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"\t default tile {\n"
	.size	.L.str.141, 18

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"\t\t csty=%#x\n"
	.size	.L.str.142, 13

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"\t\t prg=%#x\n"
	.size	.L.str.143, 12

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"\t\t numlayers=%d\n"
	.size	.L.str.144, 17

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"\t\t mct=%x\n"
	.size	.L.str.145, 11

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"\t\t comp %d {\n"
	.size	.L.str.146, 14

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"\t\t\t csty=%#x\n"
	.size	.L.str.147, 14

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"\t\t\t numresolutions=%d\n"
	.size	.L.str.148, 23

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"\t\t\t cblkw=2^%d\n"
	.size	.L.str.149, 16

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"\t\t\t cblkh=2^%d\n"
	.size	.L.str.150, 16

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"\t\t\t cblksty=%#x\n"
	.size	.L.str.151, 17

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"\t\t\t qmfbid=%d\n"
	.size	.L.str.152, 15

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"\t\t\t preccintsize (w,h)="
	.size	.L.str.153, 24

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"(%d,%d) "
	.size	.L.str.154, 9

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"\n"
	.size	.L.str.155, 2

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"\t\t\t qntsty=%d\n"
	.size	.L.str.156, 15

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"\t\t\t numgbits=%d\n"
	.size	.L.str.157, 17

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"\t\t\t stepsizes (m,e)="
	.size	.L.str.158, 21

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"\t\t\t roishift=%d\n"
	.size	.L.str.159, 17

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"\t\t }\n"
	.size	.L.str.160, 6

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"Not enough memory to decode tiles\n"
	.size	.L.str.161, 35

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"Not enough memory to decode tile %d/%d\n"
	.size	.L.str.162, 40

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"Tile %d/%d has been decoded.\n"
	.size	.L.str.163, 30

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"Image data has been updated with tile %d.\n\n"
	.size	.L.str.164, 44

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"l_res->x0 >= 0"
	.size	.L.str.165, 15

	.type	.L__PRETTY_FUNCTION__.opj_j2k_update_image_data,@object # @__PRETTY_FUNCTION__.opj_j2k_update_image_data
.L__PRETTY_FUNCTION__.opj_j2k_update_image_data:
	.asciz	"OPJ_BOOL opj_j2k_update_image_data(opj_tcd_t *, OPJ_BYTE *, opj_image_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_update_image_data, 75

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"l_res->x1 >= 0"
	.size	.L.str.166, 15

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"Not enough memory to decode one tile\n"
	.size	.L.str.167, 38

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"Problem with seek function\n"
	.size	.L.str.168, 28

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"Tile read, decode and updated is not the desired (%d vs %d).\n"
	.size	.L.str.169, 62

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"The given tile index does not match."
	.size	.L.str.170, 37

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"tile number %d / %d\n"
	.size	.L.str.171, 21

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"p_j2k->m_specific_param.m_encoder.m_encoded_tile_data"
	.size	.L.str.172, 54

	.type	.L__PRETTY_FUNCTION__.opj_j2k_post_write_tile,@object # @__PRETTY_FUNCTION__.opj_j2k_post_write_tile
.L__PRETTY_FUNCTION__.opj_j2k_post_write_tile:
	.asciz	"OPJ_BOOL opj_j2k_post_write_tile(opj_j2k_t *, OPJ_BYTE *, OPJ_UINT32, opj_stream_private_t *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_post_write_tile, 113

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"Size mismatch between tile data and sent data."
	.size	.L.str.173, 47

	.type	.L__PRETTY_FUNCTION__.opj_j2k_write_sot,@object # @__PRETTY_FUNCTION__.opj_j2k_write_sot
.L__PRETTY_FUNCTION__.opj_j2k_write_sot:
	.asciz	"OPJ_BOOL opj_j2k_write_sot(opj_j2k_t *, OPJ_BYTE *, OPJ_UINT32 *, const opj_stream_private_t *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_write_sot, 115

	.type	.L__PRETTY_FUNCTION__.opj_j2k_write_coc_in_memory,@object # @__PRETTY_FUNCTION__.opj_j2k_write_coc_in_memory
.L__PRETTY_FUNCTION__.opj_j2k_write_coc_in_memory:
	.asciz	"void opj_j2k_write_coc_in_memory(opj_j2k_t *, OPJ_UINT32, OPJ_BYTE *, OPJ_UINT32 *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_write_coc_in_memory, 103

	.type	.L__PRETTY_FUNCTION__.opj_j2k_get_SPCod_SPCoc_size,@object # @__PRETTY_FUNCTION__.opj_j2k_get_SPCod_SPCoc_size
.L__PRETTY_FUNCTION__.opj_j2k_get_SPCod_SPCoc_size:
	.asciz	"OPJ_UINT32 opj_j2k_get_SPCod_SPCoc_size(opj_j2k_t *, OPJ_UINT32, OPJ_UINT32)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_get_SPCod_SPCoc_size, 77

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"p_tile_no < (l_cp->tw * l_cp->th)"
	.size	.L.str.174, 34

	.type	.L__PRETTY_FUNCTION__.opj_j2k_write_SPCod_SPCoc,@object # @__PRETTY_FUNCTION__.opj_j2k_write_SPCod_SPCoc
.L__PRETTY_FUNCTION__.opj_j2k_write_SPCod_SPCoc:
	.asciz	"OPJ_BOOL opj_j2k_write_SPCod_SPCoc(opj_j2k_t *, OPJ_UINT32, OPJ_UINT32, OPJ_BYTE *, OPJ_UINT32 *, struct opj_event_mgr *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_write_SPCod_SPCoc, 122

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"p_header_size != 00"
	.size	.L.str.175, 20

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"p_data != 00"
	.size	.L.str.176, 13

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"p_comp_no <(p_j2k->m_private_image->numcomps)"
	.size	.L.str.177, 46

	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	"Error writing SPCod SPCoc element\n"
	.size	.L.str.178, 35

	.type	.L__PRETTY_FUNCTION__.opj_j2k_write_qcc_in_memory,@object # @__PRETTY_FUNCTION__.opj_j2k_write_qcc_in_memory
.L__PRETTY_FUNCTION__.opj_j2k_write_qcc_in_memory:
	.asciz	"void opj_j2k_write_qcc_in_memory(opj_j2k_t *, OPJ_UINT32, OPJ_BYTE *, OPJ_UINT32 *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_write_qcc_in_memory, 103

	.type	.L__PRETTY_FUNCTION__.opj_j2k_get_SQcd_SQcc_size,@object # @__PRETTY_FUNCTION__.opj_j2k_get_SQcd_SQcc_size
.L__PRETTY_FUNCTION__.opj_j2k_get_SQcd_SQcc_size:
	.asciz	"OPJ_UINT32 opj_j2k_get_SQcd_SQcc_size(opj_j2k_t *, OPJ_UINT32, OPJ_UINT32)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_get_SQcd_SQcc_size, 75

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"p_tile_no < l_cp->tw * l_cp->th"
	.size	.L.str.179, 32

	.type	.L__PRETTY_FUNCTION__.opj_j2k_write_SQcd_SQcc,@object # @__PRETTY_FUNCTION__.opj_j2k_write_SQcd_SQcc
.L__PRETTY_FUNCTION__.opj_j2k_write_SQcd_SQcc:
	.asciz	"OPJ_BOOL opj_j2k_write_SQcd_SQcc(opj_j2k_t *, OPJ_UINT32, OPJ_UINT32, OPJ_BYTE *, OPJ_UINT32 *, struct opj_event_mgr *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_write_SQcd_SQcc, 120

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	"p_comp_no <p_j2k->m_private_image->numcomps"
	.size	.L.str.180, 44

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"Error writing SQcd SQcc element\n"
	.size	.L.str.181, 33

	.type	.L__PRETTY_FUNCTION__.opj_j2k_write_poc_in_memory,@object # @__PRETTY_FUNCTION__.opj_j2k_write_poc_in_memory
.L__PRETTY_FUNCTION__.opj_j2k_write_poc_in_memory:
	.asciz	"void opj_j2k_write_poc_in_memory(opj_j2k_t *, OPJ_BYTE *, OPJ_UINT32 *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_write_poc_in_memory, 91

	.type	.L__PRETTY_FUNCTION__.opj_j2k_write_sod,@object # @__PRETTY_FUNCTION__.opj_j2k_write_sod
.L__PRETTY_FUNCTION__.opj_j2k_write_sod:
	.asciz	"OPJ_BOOL opj_j2k_write_sod(opj_j2k_t *, opj_tcd_t *, OPJ_BYTE *, OPJ_UINT32 *, OPJ_UINT32, const opj_stream_private_t *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_write_sod, 140

	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	"Cannot encode tile\n"
	.size	.L.str.182, 20

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"tileno < (cp->tw * cp->th)"
	.size	.L.str.183, 27

	.type	.L__PRETTY_FUNCTION__.opj_j2k_get_num_tp,@object # @__PRETTY_FUNCTION__.opj_j2k_get_num_tp
.L__PRETTY_FUNCTION__.opj_j2k_get_num_tp:
	.asciz	"OPJ_UINT32 opj_j2k_get_num_tp(opj_cp_t *, OPJ_UINT32, OPJ_UINT32)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_get_num_tp, 66

	.type	.L.str.184,@object      # @.str.184
.L.str.184:
	.asciz	"pino < (cp->tcps[tileno].numpocs + 1)"
	.size	.L.str.184, 38

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	"tcp != 00"
	.size	.L.str.185, 10

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"strlen(prog) > 0"
	.size	.L.str.187, 17

	.type	.L__PRETTY_FUNCTION__.opj_j2k_setup_end_compress,@object # @__PRETTY_FUNCTION__.opj_j2k_setup_end_compress
.L__PRETTY_FUNCTION__.opj_j2k_setup_end_compress:
	.asciz	"void opj_j2k_setup_end_compress(opj_j2k_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_setup_end_compress, 45

	.type	.L__PRETTY_FUNCTION__.opj_j2k_write_eoc,@object # @__PRETTY_FUNCTION__.opj_j2k_write_eoc
.L__PRETTY_FUNCTION__.opj_j2k_write_eoc:
	.asciz	"OPJ_BOOL opj_j2k_write_eoc(opj_j2k_t *, opj_stream_private_t *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_write_eoc, 83

	.type	.L__PRETTY_FUNCTION__.opj_j2k_write_updated_tlm,@object # @__PRETTY_FUNCTION__.opj_j2k_write_updated_tlm
.L__PRETTY_FUNCTION__.opj_j2k_write_updated_tlm:
	.asciz	"OPJ_BOOL opj_j2k_write_updated_tlm(opj_j2k_t *, struct opj_stream_private *, struct opj_event_mgr *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_write_updated_tlm, 101

	.type	.L__PRETTY_FUNCTION__.opj_j2k_write_epc,@object # @__PRETTY_FUNCTION__.opj_j2k_write_epc
.L__PRETTY_FUNCTION__.opj_j2k_write_epc:
	.asciz	"OPJ_BOOL opj_j2k_write_epc(opj_j2k_t *, struct opj_stream_private *, struct opj_event_mgr *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_write_epc, 93

	.type	.L__PRETTY_FUNCTION__.opj_j2k_end_encoding,@object # @__PRETTY_FUNCTION__.opj_j2k_end_encoding
.L__PRETTY_FUNCTION__.opj_j2k_end_encoding:
	.asciz	"OPJ_BOOL opj_j2k_end_encoding(opj_j2k_t *, struct opj_stream_private *, struct opj_event_mgr *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_end_encoding, 96

	.type	.L__PRETTY_FUNCTION__.opj_j2k_destroy_header_memory,@object # @__PRETTY_FUNCTION__.opj_j2k_destroy_header_memory
.L__PRETTY_FUNCTION__.opj_j2k_destroy_header_memory:
	.asciz	"OPJ_BOOL opj_j2k_destroy_header_memory(opj_j2k_t *, opj_stream_private_t *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_destroy_header_memory, 95

	.type	.L__PRETTY_FUNCTION__.opj_j2k_encoding_validation,@object # @__PRETTY_FUNCTION__.opj_j2k_encoding_validation
.L__PRETTY_FUNCTION__.opj_j2k_encoding_validation:
	.asciz	"OPJ_BOOL opj_j2k_encoding_validation(opj_j2k_t *, opj_stream_private_t *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_encoding_validation, 93

	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	"Number of resolutions is too high in comparison to the size of tiles\n"
	.size	.L.str.188, 70

	.type	.L__PRETTY_FUNCTION__.opj_j2k_mct_validation,@object # @__PRETTY_FUNCTION__.opj_j2k_mct_validation
.L__PRETTY_FUNCTION__.opj_j2k_mct_validation:
	.asciz	"OPJ_BOOL opj_j2k_mct_validation(opj_j2k_t *, opj_stream_private_t *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_mct_validation, 88

	.type	.L__PRETTY_FUNCTION__.opj_j2k_init_info,@object # @__PRETTY_FUNCTION__.opj_j2k_init_info
.L__PRETTY_FUNCTION__.opj_j2k_init_info:
	.asciz	"OPJ_BOOL opj_j2k_init_info(opj_j2k_t *, struct opj_stream_private *, struct opj_event_mgr *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_init_info, 93

	.type	.L__PRETTY_FUNCTION__.opj_j2k_calculate_tp,@object # @__PRETTY_FUNCTION__.opj_j2k_calculate_tp
.L__PRETTY_FUNCTION__.opj_j2k_calculate_tp:
	.asciz	"OPJ_BOOL opj_j2k_calculate_tp(opj_j2k_t *, opj_cp_t *, OPJ_UINT32 *, opj_image_t *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_calculate_tp, 103

	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	"image != 00"
	.size	.L.str.191, 12

	.type	.L__PRETTY_FUNCTION__.opj_j2k_write_soc,@object # @__PRETTY_FUNCTION__.opj_j2k_write_soc
.L__PRETTY_FUNCTION__.opj_j2k_write_soc:
	.asciz	"OPJ_BOOL opj_j2k_write_soc(opj_j2k_t *, opj_stream_private_t *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_write_soc, 83

	.type	.L__PRETTY_FUNCTION__.opj_j2k_write_siz,@object # @__PRETTY_FUNCTION__.opj_j2k_write_siz
.L__PRETTY_FUNCTION__.opj_j2k_write_siz:
	.asciz	"OPJ_BOOL opj_j2k_write_siz(opj_j2k_t *, opj_stream_private_t *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_write_siz, 83

	.type	.L.str.192,@object      # @.str.192
.L.str.192:
	.asciz	"Not enough memory for the SIZ marker\n"
	.size	.L.str.192, 38

	.type	.L__PRETTY_FUNCTION__.opj_j2k_write_cod,@object # @__PRETTY_FUNCTION__.opj_j2k_write_cod
.L__PRETTY_FUNCTION__.opj_j2k_write_cod:
	.asciz	"OPJ_BOOL opj_j2k_write_cod(opj_j2k_t *, opj_stream_private_t *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_write_cod, 83

	.type	.L.str.193,@object      # @.str.193
.L.str.193:
	.asciz	"Not enough memory to write COD marker\n"
	.size	.L.str.193, 39

	.type	.L.str.194,@object      # @.str.194
.L.str.194:
	.asciz	"Error writing COD marker\n"
	.size	.L.str.194, 26

	.type	.L__PRETTY_FUNCTION__.opj_j2k_write_qcd,@object # @__PRETTY_FUNCTION__.opj_j2k_write_qcd
.L__PRETTY_FUNCTION__.opj_j2k_write_qcd:
	.asciz	"OPJ_BOOL opj_j2k_write_qcd(opj_j2k_t *, opj_stream_private_t *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_write_qcd, 83

	.type	.L.str.195,@object      # @.str.195
.L.str.195:
	.asciz	"Not enough memory to write QCD marker\n"
	.size	.L.str.195, 39

	.type	.L.str.196,@object      # @.str.196
.L.str.196:
	.asciz	"Error writing QCD marker\n"
	.size	.L.str.196, 26

	.type	.L__PRETTY_FUNCTION__.opj_j2k_write_image_components,@object # @__PRETTY_FUNCTION__.opj_j2k_write_image_components
.L__PRETTY_FUNCTION__.opj_j2k_write_image_components:
	.asciz	"OPJ_BOOL opj_j2k_write_image_components(opj_j2k_t *, struct opj_stream_private *, struct opj_event_mgr *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_write_image_components, 106

	.type	.L.str.197,@object      # @.str.197
.L.str.197:
	.asciz	"Not enough memory to write COC marker\n"
	.size	.L.str.197, 39

	.type	.L.str.198,@object      # @.str.198
.L.str.198:
	.asciz	"Not enough memory to write QCC marker\n"
	.size	.L.str.198, 39

	.type	.L__PRETTY_FUNCTION__.opj_j2k_write_tlm,@object # @__PRETTY_FUNCTION__.opj_j2k_write_tlm
.L__PRETTY_FUNCTION__.opj_j2k_write_tlm:
	.asciz	"OPJ_BOOL opj_j2k_write_tlm(opj_j2k_t *, opj_stream_private_t *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_write_tlm, 83

	.type	.L.str.199,@object      # @.str.199
.L.str.199:
	.asciz	"Not enough memory to write TLM marker\n"
	.size	.L.str.199, 39

	.type	.L__PRETTY_FUNCTION__.opj_j2k_write_poc,@object # @__PRETTY_FUNCTION__.opj_j2k_write_poc
.L__PRETTY_FUNCTION__.opj_j2k_write_poc:
	.asciz	"OPJ_BOOL opj_j2k_write_poc(opj_j2k_t *, opj_stream_private_t *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_write_poc, 83

	.type	.L.str.200,@object      # @.str.200
.L.str.200:
	.asciz	"Not enough memory to write POC marker\n"
	.size	.L.str.200, 39

	.type	.L__PRETTY_FUNCTION__.opj_j2k_write_regions,@object # @__PRETTY_FUNCTION__.opj_j2k_write_regions
.L__PRETTY_FUNCTION__.opj_j2k_write_regions:
	.asciz	"OPJ_BOOL opj_j2k_write_regions(opj_j2k_t *, struct opj_stream_private *, struct opj_event_mgr *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_write_regions, 97

	.type	.L__PRETTY_FUNCTION__.opj_j2k_write_com,@object # @__PRETTY_FUNCTION__.opj_j2k_write_com
.L__PRETTY_FUNCTION__.opj_j2k_write_com:
	.asciz	"OPJ_BOOL opj_j2k_write_com(opj_j2k_t *, opj_stream_private_t *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_write_com, 83

	.type	.L.str.201,@object      # @.str.201
.L.str.201:
	.asciz	"Not enough memory to write the COM marker\n"
	.size	.L.str.201, 43

	.type	.L__PRETTY_FUNCTION__.opj_j2k_write_mct_data_group,@object # @__PRETTY_FUNCTION__.opj_j2k_write_mct_data_group
.L__PRETTY_FUNCTION__.opj_j2k_write_mct_data_group:
	.asciz	"OPJ_BOOL opj_j2k_write_mct_data_group(opj_j2k_t *, struct opj_stream_private *, struct opj_event_mgr *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_write_mct_data_group, 104

	.type	.L.str.202,@object      # @.str.202
.L.str.202:
	.asciz	"Not enough memory to write CBD marker\n"
	.size	.L.str.202, 39

	.type	.L.str.203,@object      # @.str.203
.L.str.203:
	.asciz	"Not enough memory to write MCT marker\n"
	.size	.L.str.203, 39

	.type	.L.str.204,@object      # @.str.204
.L.str.204:
	.asciz	"Not enough memory to write MCC marker\n"
	.size	.L.str.204, 39

	.type	.L.str.205,@object      # @.str.205
.L.str.205:
	.asciz	"Not enough memory to write MCO marker\n"
	.size	.L.str.205, 39

	.type	.L__PRETTY_FUNCTION__.opj_j2k_get_end_header,@object # @__PRETTY_FUNCTION__.opj_j2k_get_end_header
.L__PRETTY_FUNCTION__.opj_j2k_get_end_header:
	.asciz	"OPJ_BOOL opj_j2k_get_end_header(opj_j2k_t *, struct opj_stream_private *, struct opj_event_mgr *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_get_end_header, 98

	.type	.L__PRETTY_FUNCTION__.opj_j2k_create_tcd,@object # @__PRETTY_FUNCTION__.opj_j2k_create_tcd
.L__PRETTY_FUNCTION__.opj_j2k_create_tcd:
	.asciz	"OPJ_BOOL opj_j2k_create_tcd(opj_j2k_t *, opj_stream_private_t *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_create_tcd, 84

	.type	.L.str.206,@object      # @.str.206
.L.str.206:
	.asciz	"Not enough memory to create Tile Coder\n"
	.size	.L.str.206, 40

	.type	.L__PRETTY_FUNCTION__.opj_j2k_update_rates,@object # @__PRETTY_FUNCTION__.opj_j2k_update_rates
.L__PRETTY_FUNCTION__.opj_j2k_update_rates:
	.asciz	"OPJ_BOOL opj_j2k_update_rates(opj_j2k_t *, opj_stream_private_t *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_j2k_update_rates, 86


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
