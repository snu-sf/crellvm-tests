	.text
	.file	"gscscie.bc"
	.globl	gx_concrete_space_CIE
	.align	16, 0x90
	.type	gx_concrete_space_CIE,@function
gx_concrete_space_CIE:                  # @gx_concrete_space_CIE
	.cfi_startproc
# BB#0:                                 # %entry
	movq	400(%rsi), %rax
	testq	%rax, %rax
	je	.LBB0_3
# BB#1:                                 # %lor.lhs.false
	cmpq	$0, 376(%rax)
	je	.LBB0_3
# BB#2:                                 # %lor.lhs.false.2
	cmpl	$3, 372(%rax)
	jne	.LBB0_4
.LBB0_3:                                # %if.then
	addq	$1312, %rsi             # imm = 0x520
	movq	(%rsi), %rax
	retq
.LBB0_4:                                # %if.else
	addq	$1320, %rsi             # imm = 0x528
	movq	(%rsi), %rax
	retq
.Lfunc_end0:
	.size	gx_concrete_space_CIE, .Lfunc_end0-gx_concrete_space_CIE
	.cfi_endproc

	.globl	gx_install_CIE
	.align	16, 0x90
	.type	gx_install_CIE,@function
gx_install_CIE:                         # @gx_install_CIE
	.cfi_startproc
# BB#0:                                 # %entry
	movq	72(%rdi), %rax
	movq	(%rax), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end1:
	.size	gx_install_CIE, .Lfunc_end1-gx_install_CIE
	.cfi_endproc

	.align	16, 0x90
	.type	gx_final_CIEDEFG,@function
gx_final_CIEDEFG:                       # @gx_final_CIEDEFG
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	48(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB2_3
# BB#1:                                 # %do.end
	decq	8(%rsi)
	jne	.LBB2_3
# BB#2:                                 # %do.end.16
	movq	16(%rsi), %rdi
	movl	$.L.str.8, %edx
	callq	*24(%rsi)
	movq	$0, 48(%rbx)
.LBB2_3:                                # %if.end.31
	movq	64(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB2_6
# BB#4:                                 # %do.end.41
	decq	288(%rsi)
	jne	.LBB2_6
# BB#5:                                 # %do.end.56
	movq	296(%rsi), %rdi
	movl	$.L.str.8, %edx
	callq	*304(%rsi)
	movq	$0, 64(%rbx)
.LBB2_6:                                # %do.body.76
	movq	72(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB2_9
# BB#7:                                 # %do.end.82
	decq	6392(%rsi)
	jne	.LBB2_9
# BB#8:                                 # %do.end.99
	movq	6400(%rsi), %rdi
	movl	$.L.str.8, %edx
	callq	*6408(%rsi)
	movq	$0, 72(%rbx)
.LBB2_9:                                # %do.end.121
	popq	%rbx
	retq
.Lfunc_end2:
	.size	gx_final_CIEDEFG, .Lfunc_end2-gx_final_CIEDEFG
	.cfi_endproc

	.align	16, 0x90
	.type	gx_serialize_CIEDEFG,@function
gx_serialize_CIEDEFG:                   # @gx_serialize_CIEDEFG
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp2:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp3:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp4:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp5:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp6:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp8:
	.cfi_def_cfa_offset 80
.Ltmp9:
	.cfi_offset %rbx, -56
.Ltmp10:
	.cfi_offset %r12, -48
.Ltmp11:
	.cfi_offset %r13, -40
.Ltmp12:
	.cfi_offset %r14, -32
.Ltmp13:
	.cfi_offset %r15, -24
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	72(%rdi), %r14
	callq	gx_serialize_cie_common_elements
	testl	%eax, %eax
	js	.LBB3_11
# BB#1:                                 # %if.end
	leaq	31352(%r14), %rsi
	leaq	12(%rsp), %rcx
	movl	$32, %edx
	movq	%r15, %rdi
	callq	sputs
	testl	%eax, %eax
	js	.LBB3_11
# BB#2:                                 # %for.body.lr.ph
	leaq	31480(%r14), %rbx
	movl	$1, %ebp
	leaq	16(%rsp), %r12
	leaq	20(%rsp), %r13
	.align	16, 0x90
.LBB3_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$512, 20(%rsp)          # imm = 0x200
	movl	$4, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rcx
	callq	sputs
	xorl	%eax, %eax
	cmpl	$0, (%rbx)
	jne	.LBB3_6
# BB#4:                                 # %if.end.i
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	$4, %edx
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r12, %rcx
	callq	sputs
	testl	%eax, %eax
	js	.LBB3_6
# BB#5:                                 # %if.end.5.i
                                        #   in Loop: Header=BB3_3 Depth=1
	leaq	40(%rbx), %rsi
	movl	$2048, %edx             # imm = 0x800
	movq	%r15, %rdi
	movq	%r12, %rcx
	callq	sputs
.LBB3_6:                                # %gx_serialize_cie_cache.exit
                                        #   in Loop: Header=BB3_3 Depth=1
	cmpq	$2, %rbp
	ja	.LBB3_8
# BB#7:                                 # %gx_serialize_cie_cache.exit
                                        #   in Loop: Header=BB3_3 Depth=1
	addq	$2088, %rbx             # imm = 0x828
	incq	%rbp
	testl	%eax, %eax
	jns	.LBB3_3
.LBB3_8:                                # %for.end
	testl	%eax, %eax
	js	.LBB3_11
# BB#9:                                 # %if.end.10
	leaq	31416(%r14), %rsi
	leaq	12(%rsp), %rcx
	movl	$32, %edx
	movq	%r15, %rdi
	callq	sputs
	testl	%eax, %eax
	js	.LBB3_11
# BB#10:                                # %if.end.14
	addq	$31448, %r14            # imm = 0x7AD8
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	gx_serialize_lookup_table
.LBB3_11:                               # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gx_serialize_CIEDEFG, .Lfunc_end3-gx_serialize_CIEDEFG
	.cfi_endproc

	.align	16, 0x90
	.type	gx_final_CIEDEF,@function
gx_final_CIEDEF:                        # @gx_final_CIEDEF
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	48(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB4_3
# BB#1:                                 # %do.end
	decq	8(%rsi)
	jne	.LBB4_3
# BB#2:                                 # %do.end.16
	movq	16(%rsi), %rdi
	movl	$.L.str.9, %edx
	callq	*24(%rsi)
	movq	$0, 48(%rbx)
.LBB4_3:                                # %if.end.31
	movq	64(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB4_6
# BB#4:                                 # %do.end.41
	decq	288(%rsi)
	jne	.LBB4_6
# BB#5:                                 # %do.end.56
	movq	296(%rsi), %rdi
	movl	$.L.str.9, %edx
	callq	*304(%rsi)
	movq	$0, 64(%rbx)
.LBB4_6:                                # %do.body.76
	movq	72(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB4_9
# BB#7:                                 # %do.end.82
	decq	6392(%rsi)
	jne	.LBB4_9
# BB#8:                                 # %do.end.99
	movq	6400(%rsi), %rdi
	movl	$.L.str.9, %edx
	callq	*6408(%rsi)
	movq	$0, 72(%rbx)
.LBB4_9:                                # %do.end.121
	popq	%rbx
	retq
.Lfunc_end4:
	.size	gx_final_CIEDEF, .Lfunc_end4-gx_final_CIEDEF
	.cfi_endproc

	.align	16, 0x90
	.type	gx_serialize_CIEDEF,@function
gx_serialize_CIEDEF:                    # @gx_serialize_CIEDEF
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp18:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp19:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp20:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp21:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp23:
	.cfi_def_cfa_offset 80
.Ltmp24:
	.cfi_offset %rbx, -56
.Ltmp25:
	.cfi_offset %r12, -48
.Ltmp26:
	.cfi_offset %r13, -40
.Ltmp27:
	.cfi_offset %r14, -32
.Ltmp28:
	.cfi_offset %r15, -24
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	72(%rdi), %r14
	callq	gx_serialize_cie_common_elements
	testl	%eax, %eax
	js	.LBB5_11
# BB#1:                                 # %if.end
	leaq	31352(%r14), %rsi
	leaq	12(%rsp), %rcx
	movl	$24, %edx
	movq	%r15, %rdi
	callq	sputs
	testl	%eax, %eax
	js	.LBB5_11
# BB#2:                                 # %for.body.lr.ph
	leaq	31456(%r14), %rbx
	movl	$1, %ebp
	leaq	16(%rsp), %r12
	leaq	20(%rsp), %r13
	.align	16, 0x90
.LBB5_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$512, 20(%rsp)          # imm = 0x200
	movl	$4, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rcx
	callq	sputs
	xorl	%eax, %eax
	cmpl	$0, (%rbx)
	jne	.LBB5_6
# BB#4:                                 # %if.end.i
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	$4, %edx
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r12, %rcx
	callq	sputs
	testl	%eax, %eax
	js	.LBB5_6
# BB#5:                                 # %if.end.5.i
                                        #   in Loop: Header=BB5_3 Depth=1
	leaq	40(%rbx), %rsi
	movl	$2048, %edx             # imm = 0x800
	movq	%r15, %rdi
	movq	%r12, %rcx
	callq	sputs
.LBB5_6:                                # %gx_serialize_cie_cache.exit
                                        #   in Loop: Header=BB5_3 Depth=1
	cmpq	$2, %rbp
	ja	.LBB5_8
# BB#7:                                 # %gx_serialize_cie_cache.exit
                                        #   in Loop: Header=BB5_3 Depth=1
	addq	$2088, %rbx             # imm = 0x828
	incq	%rbp
	testl	%eax, %eax
	jns	.LBB5_3
.LBB5_8:                                # %for.end
	testl	%eax, %eax
	js	.LBB5_11
# BB#9:                                 # %if.end.10
	leaq	31400(%r14), %rsi
	leaq	12(%rsp), %rcx
	movl	$24, %edx
	movq	%r15, %rdi
	callq	sputs
	testl	%eax, %eax
	js	.LBB5_11
# BB#10:                                # %if.end.14
	addq	$31424, %r14            # imm = 0x7AC0
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	gx_serialize_lookup_table
.LBB5_11:                               # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gx_serialize_CIEDEF, .Lfunc_end5-gx_serialize_CIEDEF
	.cfi_endproc

	.align	16, 0x90
	.type	gx_final_CIEABC,@function
gx_final_CIEABC:                        # @gx_final_CIEABC
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	48(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB6_3
# BB#1:                                 # %do.end
	decq	8(%rsi)
	jne	.LBB6_3
# BB#2:                                 # %do.end.16
	movq	16(%rsi), %rdi
	movl	$.L.str.10, %edx
	callq	*24(%rsi)
	movq	$0, 48(%rbx)
.LBB6_3:                                # %if.end.31
	movq	64(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB6_6
# BB#4:                                 # %do.end.41
	decq	288(%rsi)
	jne	.LBB6_6
# BB#5:                                 # %do.end.56
	movq	296(%rsi), %rdi
	movl	$.L.str.10, %edx
	callq	*304(%rsi)
	movq	$0, 64(%rbx)
.LBB6_6:                                # %do.body.76
	movq	72(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB6_9
# BB#7:                                 # %do.end.82
	decq	6392(%rsi)
	jne	.LBB6_9
# BB#8:                                 # %do.end.99
	movq	6400(%rsi), %rdi
	movl	$.L.str.10, %edx
	callq	*6408(%rsi)
	movq	$0, 72(%rbx)
.LBB6_9:                                # %do.end.121
	popq	%rbx
	retq
.Lfunc_end6:
	.size	gx_final_CIEABC, .Lfunc_end6-gx_final_CIEABC
	.cfi_endproc

	.align	16, 0x90
	.type	gx_serialize_CIEABC,@function
gx_serialize_CIEABC:                    # @gx_serialize_CIEABC
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp33:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp34:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp35:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp36:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp37:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp38:
	.cfi_def_cfa_offset 80
.Ltmp39:
	.cfi_offset %rbx, -56
.Ltmp40:
	.cfi_offset %r12, -48
.Ltmp41:
	.cfi_offset %r13, -40
.Ltmp42:
	.cfi_offset %r14, -32
.Ltmp43:
	.cfi_offset %r15, -24
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	72(%rdi), %r14
	callq	gx_serialize_cie_common_elements
	testl	%eax, %eax
	js	.LBB7_12
# BB#1:                                 # %if.end
	leaq	6416(%r14), %rsi
	leaq	12(%rsp), %rcx
	movl	$24, %edx
	movq	%r15, %rdi
	callq	sputs
	testl	%eax, %eax
	js	.LBB7_12
# BB#2:                                 # %if.end.4
	leaq	6504(%r14), %rbx
	leaq	12(%rsp), %rcx
	movl	$4, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	sputs
	testl	%eax, %eax
	js	.LBB7_12
# BB#3:                                 # %if.end.8
	xorl	%eax, %eax
	cmpl	$0, (%rbx)
	jne	.LBB7_12
# BB#4:                                 # %for.body.lr.ph
	leaq	6512(%r14), %rbx
	movl	$1, %ebp
	leaq	16(%rsp), %r12
	leaq	20(%rsp), %r13
	.align	16, 0x90
.LBB7_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$512, 20(%rsp)          # imm = 0x200
	movl	$4, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rcx
	callq	sputs
	xorl	%eax, %eax
	cmpl	$0, (%rbx)
	jne	.LBB7_8
# BB#6:                                 # %if.end.i
                                        #   in Loop: Header=BB7_5 Depth=1
	movl	$4, %edx
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r12, %rcx
	callq	sputs
	testl	%eax, %eax
	js	.LBB7_8
# BB#7:                                 # %if.end.5.i
                                        #   in Loop: Header=BB7_5 Depth=1
	leaq	40(%rbx), %rsi
	movl	$2048, %edx             # imm = 0x800
	movq	%r15, %rdi
	movq	%r12, %rcx
	callq	sputs
.LBB7_8:                                # %gx_serialize_cie_cache.exit
                                        #   in Loop: Header=BB7_5 Depth=1
	cmpq	$2, %rbp
	ja	.LBB7_10
# BB#9:                                 # %gx_serialize_cie_cache.exit
                                        #   in Loop: Header=BB7_5 Depth=1
	addq	$8272, %rbx             # imm = 0x2050
	incq	%rbp
	testl	%eax, %eax
	jns	.LBB7_5
.LBB7_10:                               # %for.end
	testl	%eax, %eax
	js	.LBB7_12
# BB#11:                                # %if.end.20
	addq	$6464, %r14             # imm = 0x1940
	leaq	12(%rsp), %rcx
	movl	$40, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	sputs
.LBB7_12:                               # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gx_serialize_CIEABC, .Lfunc_end7-gx_serialize_CIEABC
	.cfi_endproc

	.align	16, 0x90
	.type	gx_final_CIEA,@function
gx_final_CIEA:                          # @gx_final_CIEA
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	48(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB8_3
# BB#1:                                 # %do.end
	decq	8(%rsi)
	jne	.LBB8_3
# BB#2:                                 # %do.end.16
	movq	16(%rsi), %rdi
	movl	$.L.str.11, %edx
	callq	*24(%rsi)
	movq	$0, 48(%rbx)
.LBB8_3:                                # %if.end.31
	movq	64(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB8_6
# BB#4:                                 # %do.end.41
	decq	288(%rsi)
	jne	.LBB8_6
# BB#5:                                 # %do.end.56
	movq	296(%rsi), %rdi
	movl	$.L.str.11, %edx
	callq	*304(%rsi)
	movq	$0, 64(%rbx)
.LBB8_6:                                # %do.body.76
	movq	72(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB8_9
# BB#7:                                 # %do.end.82
	decq	6392(%rsi)
	jne	.LBB8_9
# BB#8:                                 # %do.end.99
	movq	6400(%rsi), %rdi
	movl	$.L.str.12, %edx
	callq	*6408(%rsi)
	movq	$0, 72(%rbx)
.LBB8_9:                                # %do.end.121
	popq	%rbx
	retq
.Lfunc_end8:
	.size	gx_final_CIEA, .Lfunc_end8-gx_final_CIEA
	.cfi_endproc

	.align	16, 0x90
	.type	gx_serialize_CIEA,@function
gx_serialize_CIEA:                      # @gx_serialize_CIEA
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp47:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp48:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp49:
	.cfi_def_cfa_offset 48
.Ltmp50:
	.cfi_offset %rbx, -24
.Ltmp51:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	72(%rdi), %r14
	callq	gx_serialize_cie_common_elements
	testl	%eax, %eax
	js	.LBB9_6
# BB#1:                                 # %if.end
	leaq	6416(%r14), %rsi
	leaq	12(%rsp), %rcx
	movl	$8, %edx
	movq	%rbx, %rdi
	callq	sputs
	testl	%eax, %eax
	js	.LBB9_6
# BB#2:                                 # %if.end.4
	leaq	6448(%r14), %rsi
	movl	$512, 20(%rsp)          # imm = 0x200
	leaq	16(%rsp), %rcx
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	sputs
	cmpl	$0, 6448(%r14)
	jne	.LBB9_5
# BB#3:                                 # %if.end.i
	leaq	20(%rsp), %rsi
	leaq	16(%rsp), %rcx
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	sputs
	testl	%eax, %eax
	js	.LBB9_6
# BB#4:                                 # %gx_serialize_cie_cache.exit
	leaq	6488(%r14), %rsi
	leaq	16(%rsp), %rcx
	movl	$2048, %edx             # imm = 0x800
	movq	%rbx, %rdi
	callq	sputs
	testl	%eax, %eax
	js	.LBB9_6
.LBB9_5:                                # %if.end.8
	addq	$6432, %r14             # imm = 0x1920
	leaq	12(%rsp), %rcx
	movl	$12, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	sputs
.LBB9_6:                                # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end9:
	.size	gx_serialize_CIEA, .Lfunc_end9-gx_serialize_CIEA
	.cfi_endproc

	.globl	gx_set_common_cie_defaults
	.align	16, 0x90
	.type	gx_set_common_cie_defaults,@function
gx_set_common_cie_defaults:             # @gx_set_common_cie_defaults
	.cfi_startproc
# BB#0:                                 # %entry
	movq	Range3_default+16(%rip), %rax
	movq	%rax, 32(%rdi)
	movups	Range3_default(%rip), %xmm0
	movups	%xmm0, 16(%rdi)
	movq	DecodeLMN_default+16(%rip), %rax
	movq	%rax, 56(%rdi)
	movups	DecodeLMN_default(%rip), %xmm0
	movups	%xmm0, 40(%rdi)
	movq	Matrix3_default+32(%rip), %rax
	movq	%rax, 96(%rdi)
	movups	Matrix3_default+16(%rip), %xmm0
	movups	%xmm0, 80(%rdi)
	movups	Matrix3_default(%rip), %xmm0
	movups	%xmm0, 64(%rdi)
	movl	BlackPoint_default+8(%rip), %eax
	movl	%eax, 112(%rdi)
	movq	BlackPoint_default(%rip), %rcx
	movq	%rcx, 104(%rdi)
	movl	%eax, 124(%rdi)
	movq	%rcx, 116(%rdi)
	movq	%rsi, 8(%rdi)
	retq
.Lfunc_end10:
	.size	gx_set_common_cie_defaults, .Lfunc_end10-gx_set_common_cie_defaults
	.cfi_endproc

	.globl	gx_build_cie_space
	.align	16, 0x90
	.type	gx_build_cie_space,@function
gx_build_cie_space:                     # @gx_build_cie_space
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp52:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp53:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp54:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp55:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp56:
	.cfi_def_cfa_offset 48
.Ltmp57:
	.cfi_offset %rbx, -40
.Ltmp58:
	.cfi_offset %r12, -32
.Ltmp59:
	.cfi_offset %r14, -24
.Ltmp60:
	.cfi_offset %r15, -16
	movq	%rcx, %rbx
	movq	%rdx, %r12
	movq	%rdi, %r15
	movq	%rbx, %rdi
	callq	gs_cspace_alloc
	movq	%rax, %r14
	xorl	%eax, %eax
	testq	%r14, %r14
	je	.LBB11_4
# BB#1:                                 # %do.body
	movl	$.L.str.2, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	*72(%rbx)
	testq	%rax, %rax
	je	.LBB11_2
# BB#3:                                 # %do.body.5
	movq	$1, 6392(%rax)
	movq	%rbx, 6400(%rax)
	movq	$rc_free_struct_only, 6408(%rax)
	movq	%r14, (%r15)
	jmp	.LBB11_4
.LBB11_2:                               # %if.then.3
	movl	$.L.str.3, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*24(%rbx)
	xorl	%eax, %eax
.LBB11_4:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end11:
	.size	gx_build_cie_space, .Lfunc_end11-gx_build_cie_space
	.cfi_endproc

	.globl	gs_cspace_build_CIEA
	.align	16, 0x90
	.type	gs_cspace_build_CIEA,@function
gs_cspace_build_CIEA:                   # @gs_cspace_build_CIEA
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
	pushq	%r12
.Ltmp64:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp65:
	.cfi_def_cfa_offset 48
.Ltmp66:
	.cfi_offset %rbx, -48
.Ltmp67:
	.cfi_offset %r12, -40
.Ltmp68:
	.cfi_offset %r14, -32
.Ltmp69:
	.cfi_offset %r15, -24
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	$gs_color_space_type_CIEA, %esi
	movq	%rbx, %rdi
	callq	gs_cspace_alloc
	movq	%rax, %rbp
	movl	$-25, %r12d
	testq	%rbp, %rbp
	je	.LBB12_4
# BB#1:                                 # %do.body.i
	movl	$st_cie_a, %esi
	movl	$.L.str.2, %edx
	movq	%rbx, %rdi
	callq	*72(%rbx)
	testq	%rax, %rax
	je	.LBB12_2
# BB#3:                                 # %if.end
	movq	$1, 6392(%rax)
	movq	%rbx, 6400(%rax)
	movq	$rc_free_struct_only, 6408(%rax)
	movq	%rbp, (%r15)
	movq	Range3_default+16(%rip), %rcx
	movq	%rcx, 32(%rax)
	movups	Range3_default(%rip), %xmm0
	movups	%xmm0, 16(%rax)
	movq	DecodeLMN_default+16(%rip), %rcx
	movq	%rcx, 56(%rax)
	movups	DecodeLMN_default(%rip), %xmm0
	movups	%xmm0, 40(%rax)
	movq	Matrix3_default+32(%rip), %rcx
	movq	%rcx, 96(%rax)
	movups	Matrix3_default+16(%rip), %xmm0
	movups	%xmm0, 80(%rax)
	movups	Matrix3_default(%rip), %xmm0
	movups	%xmm0, 64(%rax)
	movl	BlackPoint_default+8(%rip), %ecx
	movl	%ecx, 112(%rax)
	movq	BlackPoint_default(%rip), %rdx
	movq	%rdx, 104(%rax)
	movl	%ecx, 124(%rax)
	movq	%rdx, 116(%rax)
	movq	%r14, 8(%rax)
	movq	$gx_install_CIEA, (%rax)
	movq	RangeA_default(%rip), %rcx
	movq	%rcx, 6416(%rax)
	movq	DecodeA_default(%rip), %rcx
	movq	%rcx, 6424(%rax)
	movl	MatrixA_default+8(%rip), %ecx
	movl	%ecx, 6440(%rax)
	movq	MatrixA_default(%rip), %rcx
	movq	%rcx, 6432(%rax)
	movq	(%r15), %rcx
	movq	%rax, 72(%rcx)
	xorl	%r12d, %r12d
	jmp	.LBB12_4
.LBB12_2:                               # %if.then.3.i
	movl	$.L.str.3, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	*24(%rbx)
.LBB12_4:                               # %cleanup
	movl	%r12d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gs_cspace_build_CIEA, .Lfunc_end12-gs_cspace_build_CIEA
	.cfi_endproc

	.globl	gs_cspace_build_CIEABC
	.align	16, 0x90
	.type	gs_cspace_build_CIEABC,@function
gs_cspace_build_CIEABC:                 # @gs_cspace_build_CIEABC
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp72:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp73:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp74:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp75:
	.cfi_def_cfa_offset 48
.Ltmp76:
	.cfi_offset %rbx, -48
.Ltmp77:
	.cfi_offset %r12, -40
.Ltmp78:
	.cfi_offset %r14, -32
.Ltmp79:
	.cfi_offset %r15, -24
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	$gs_color_space_type_CIEABC, %esi
	movq	%rbx, %rdi
	callq	gs_cspace_alloc
	movq	%rax, %rbp
	movl	$-25, %r12d
	testq	%rbp, %rbp
	je	.LBB13_4
# BB#1:                                 # %do.body.i
	movl	$st_cie_abc, %esi
	movl	$.L.str.2, %edx
	movq	%rbx, %rdi
	callq	*72(%rbx)
	testq	%rax, %rax
	je	.LBB13_2
# BB#3:                                 # %if.end
	movq	$1, 6392(%rax)
	movq	%rbx, 6400(%rax)
	movq	$rc_free_struct_only, 6408(%rax)
	movq	%rbp, (%r15)
	movq	Range3_default+16(%rip), %rcx
	movq	%rcx, 32(%rax)
	movups	Range3_default(%rip), %xmm0
	movups	%xmm0, 16(%rax)
	movq	DecodeLMN_default+16(%rip), %rdx
	movq	%rdx, 56(%rax)
	movups	DecodeLMN_default(%rip), %xmm1
	movups	%xmm1, 40(%rax)
	movq	Matrix3_default+32(%rip), %rdx
	movq	%rdx, 96(%rax)
	movups	Matrix3_default+16(%rip), %xmm1
	movups	%xmm1, 80(%rax)
	movups	Matrix3_default(%rip), %xmm2
	movups	%xmm2, 64(%rax)
	movl	BlackPoint_default+8(%rip), %esi
	movl	%esi, 112(%rax)
	movq	BlackPoint_default(%rip), %rdi
	movq	%rdi, 104(%rax)
	movl	%esi, 124(%rax)
	movq	%rdi, 116(%rax)
	movq	%r14, 8(%rax)
	movq	%rcx, 6432(%rax)
	movups	%xmm0, 6416(%rax)
	movq	DecodeABC_default+16(%rip), %rcx
	movq	%rcx, 6456(%rax)
	movups	DecodeABC_default(%rip), %xmm0
	movups	%xmm0, 6440(%rax)
	movq	%rdx, 6496(%rax)
	movups	%xmm1, 6480(%rax)
	movups	%xmm2, 6464(%rax)
	movq	$gx_install_CIEABC, (%rax)
	movq	(%r15), %rcx
	movq	%rax, 72(%rcx)
	xorl	%r12d, %r12d
	jmp	.LBB13_4
.LBB13_2:                               # %if.then.3.i
	movl	$.L.str.3, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	*24(%rbx)
.LBB13_4:                               # %cleanup
	movl	%r12d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gs_cspace_build_CIEABC, .Lfunc_end13-gs_cspace_build_CIEABC
	.cfi_endproc

	.globl	gs_cspace_build_CIEDEF
	.align	16, 0x90
	.type	gs_cspace_build_CIEDEF,@function
gs_cspace_build_CIEDEF:                 # @gs_cspace_build_CIEDEF
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp82:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp83:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp84:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp85:
	.cfi_def_cfa_offset 48
.Ltmp86:
	.cfi_offset %rbx, -48
.Ltmp87:
	.cfi_offset %r12, -40
.Ltmp88:
	.cfi_offset %r14, -32
.Ltmp89:
	.cfi_offset %r15, -24
.Ltmp90:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$gs_color_space_type_CIEDEF, %esi
	movq	%rbx, %rdi
	callq	gs_cspace_alloc
	movq	%rax, %rbp
	movl	$-25, %r12d
	testq	%rbp, %rbp
	je	.LBB14_4
# BB#1:                                 # %do.body.i
	movl	$st_cie_def, %esi
	movl	$.L.str.2, %edx
	movq	%rbx, %rdi
	callq	*72(%rbx)
	testq	%rax, %rax
	je	.LBB14_2
# BB#3:                                 # %if.end
	movq	$1, 6392(%rax)
	movq	%rbx, 6400(%rax)
	movq	$rc_free_struct_only, 6408(%rax)
	movq	%rbp, (%r14)
	movq	Range3_default+16(%rip), %rcx
	movq	%rcx, 32(%rax)
	movups	Range3_default(%rip), %xmm0
	movups	%xmm0, 16(%rax)
	movq	DecodeLMN_default+16(%rip), %rdx
	movq	%rdx, 56(%rax)
	movups	DecodeLMN_default(%rip), %xmm1
	movups	%xmm1, 40(%rax)
	movq	Matrix3_default+32(%rip), %rdx
	movq	%rdx, 96(%rax)
	movups	Matrix3_default+16(%rip), %xmm1
	movups	%xmm1, 80(%rax)
	movups	Matrix3_default(%rip), %xmm2
	movups	%xmm2, 64(%rax)
	movl	BlackPoint_default+8(%rip), %esi
	movl	%esi, 112(%rax)
	movq	BlackPoint_default(%rip), %rdi
	movq	%rdi, 104(%rax)
	movl	%esi, 124(%rax)
	movq	%rdi, 116(%rax)
	movq	%r15, 8(%rax)
	movq	%rcx, 6432(%rax)
	movups	%xmm0, 6416(%rax)
	movq	DecodeABC_default+16(%rip), %rsi
	movq	%rsi, 6456(%rax)
	movups	DecodeABC_default(%rip), %xmm3
	movups	%xmm3, 6440(%rax)
	movq	%rdx, 6496(%rax)
	movups	%xmm1, 6480(%rax)
	movups	%xmm2, 6464(%rax)
	movq	$gx_install_CIEDEF, (%rax)
	movq	%rcx, 31368(%rax)
	movups	%xmm0, 31352(%rax)
	movq	DecodeDEF_default+16(%rip), %rdx
	movq	%rdx, 31392(%rax)
	movups	DecodeDEF_default(%rip), %xmm1
	movups	%xmm1, 31376(%rax)
	movq	%rcx, 31416(%rax)
	movups	%xmm0, 31400(%rax)
	movl	$3, 31444(%rax)
	movl	$3, %ecx
	movd	%ecx, %xmm0
	movups	%xmm0, 31424(%rax)
	movl	$0, 31440(%rax)
	movq	$0, 31448(%rax)
	movq	(%r14), %rcx
	movq	%rax, 72(%rcx)
	xorl	%r12d, %r12d
	jmp	.LBB14_4
.LBB14_2:                               # %if.then.3.i
	movl	$.L.str.3, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	*24(%rbx)
.LBB14_4:                               # %cleanup
	movl	%r12d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gs_cspace_build_CIEDEF, .Lfunc_end14-gs_cspace_build_CIEDEF
	.cfi_endproc

	.globl	gs_cspace_build_CIEDEFG
	.align	16, 0x90
	.type	gs_cspace_build_CIEDEFG,@function
gs_cspace_build_CIEDEFG:                # @gs_cspace_build_CIEDEFG
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp91:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp92:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp93:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp94:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp95:
	.cfi_def_cfa_offset 48
.Ltmp96:
	.cfi_offset %rbx, -48
.Ltmp97:
	.cfi_offset %r12, -40
.Ltmp98:
	.cfi_offset %r14, -32
.Ltmp99:
	.cfi_offset %r15, -24
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$gs_color_space_type_CIEDEFG, %esi
	movq	%rbx, %rdi
	callq	gs_cspace_alloc
	movq	%rax, %rbp
	movl	$-25, %r12d
	testq	%rbp, %rbp
	je	.LBB15_4
# BB#1:                                 # %do.body.i
	movl	$st_cie_defg, %esi
	movl	$.L.str.2, %edx
	movq	%rbx, %rdi
	callq	*72(%rbx)
	testq	%rax, %rax
	je	.LBB15_2
# BB#3:                                 # %if.end
	movq	$1, 6392(%rax)
	movq	%rbx, 6400(%rax)
	movq	$rc_free_struct_only, 6408(%rax)
	movq	%rbp, (%r14)
	movq	Range3_default+16(%rip), %rcx
	movq	%rcx, 32(%rax)
	movups	Range3_default(%rip), %xmm0
	movups	%xmm0, 16(%rax)
	movq	DecodeLMN_default+16(%rip), %rdx
	movq	%rdx, 56(%rax)
	movups	DecodeLMN_default(%rip), %xmm1
	movups	%xmm1, 40(%rax)
	movq	Matrix3_default+32(%rip), %rdx
	movq	%rdx, 96(%rax)
	movups	Matrix3_default+16(%rip), %xmm1
	movups	%xmm1, 80(%rax)
	movups	Matrix3_default(%rip), %xmm2
	movups	%xmm2, 64(%rax)
	movl	BlackPoint_default+8(%rip), %esi
	movl	%esi, 112(%rax)
	movq	BlackPoint_default(%rip), %rdi
	movq	%rdi, 104(%rax)
	movl	%esi, 124(%rax)
	movq	%rdi, 116(%rax)
	movq	%r15, 8(%rax)
	movq	%rcx, 6432(%rax)
	movups	%xmm0, 6416(%rax)
	movq	DecodeABC_default+16(%rip), %rcx
	movq	%rcx, 6456(%rax)
	movups	DecodeABC_default(%rip), %xmm0
	movups	%xmm0, 6440(%rax)
	movq	%rdx, 6496(%rax)
	movups	%xmm1, 6480(%rax)
	movups	%xmm2, 6464(%rax)
	movq	$gx_install_CIEDEFG, (%rax)
	movups	Range4_default+16(%rip), %xmm0
	movups	%xmm0, 31368(%rax)
	movups	Range4_default(%rip), %xmm1
	movups	%xmm1, 31352(%rax)
	movups	DecodeDEFG_default+16(%rip), %xmm2
	movups	%xmm2, 31400(%rax)
	movups	DecodeDEFG_default(%rip), %xmm2
	movups	%xmm2, 31384(%rax)
	movups	%xmm0, 31432(%rax)
	movups	%xmm1, 31416(%rax)
	movl	$3, 31468(%rax)
	movl	$4, %ecx
	movd	%ecx, %xmm0
	movups	%xmm0, 31448(%rax)
	movl	$0, 31464(%rax)
	movq	$0, 31472(%rax)
	movq	(%r14), %rcx
	movq	%rax, 72(%rcx)
	xorl	%r12d, %r12d
	jmp	.LBB15_4
.LBB15_2:                               # %if.then.3.i
	movl	$.L.str.3, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	*24(%rbx)
.LBB15_4:                               # %cleanup
	movl	%r12d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gs_cspace_build_CIEDEFG, .Lfunc_end15-gs_cspace_build_CIEDEFG
	.cfi_endproc

	.globl	gs_cie_defx_set_lookup_table
	.align	16, 0x90
	.type	gs_cie_defx_set_lookup_table,@function
gs_cie_defx_set_lookup_table:           # @gs_cie_defx_set_lookup_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp101:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp102:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp103:
	.cfi_def_cfa_offset 32
.Ltmp104:
	.cfi_offset %rbx, -32
.Ltmp105:
	.cfi_offset %r14, -24
.Ltmp106:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	callq	gs_color_space_get_index
	movl	%eax, %ecx
	cmpl	$5, %ecx
	jne	.LBB16_1
# BB#3:                                 # %sw.bb.1
	movq	72(%r15), %rax
	movl	12(%rbx), %ecx
	movl	%ecx, 31464(%rax)
	addq	$31448, %rax            # imm = 0x7AD8
	jmp	.LBB16_4
.LBB16_1:                               # %entry
	movl	$-15, %eax
	cmpl	$6, %ecx
	jne	.LBB16_5
# BB#2:                                 # %sw.bb
	movl	$31424, %eax            # imm = 0x7AC0
	addq	72(%r15), %rax
.LBB16_4:                               # %sw.epilog
	movl	(%rbx), %ecx
	movl	%ecx, 4(%rax)
	movl	4(%rbx), %ecx
	movl	%ecx, 8(%rax)
	movl	8(%rbx), %ecx
	movl	%ecx, 12(%rax)
	movq	%r14, 24(%rax)
	xorl	%eax, %eax
.LBB16_5:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end16:
	.size	gs_cie_defx_set_lookup_table, .Lfunc_end16-gs_cie_defx_set_lookup_table
	.cfi_endproc

	.globl	gx_serialize_cie_common_elements
	.align	16, 0x90
	.type	gx_serialize_cie_common_elements,@function
gx_serialize_cie_common_elements:       # @gx_serialize_cie_common_elements
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp107:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp108:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp109:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp110:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp111:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp112:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp113:
	.cfi_def_cfa_offset 80
.Ltmp114:
	.cfi_offset %rbx, -56
.Ltmp115:
	.cfi_offset %r12, -48
.Ltmp116:
	.cfi_offset %r13, -40
.Ltmp117:
	.cfi_offset %r14, -32
.Ltmp118:
	.cfi_offset %r15, -24
.Ltmp119:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	72(%rdi), %r14
	callq	gx_serialize_cspace_type
	testl	%eax, %eax
	js	.LBB17_11
# BB#1:                                 # %if.end
	leaq	16(%r14), %rsi
	leaq	12(%rsp), %rcx
	movl	$24, %edx
	movq	%r15, %rdi
	callq	sputs
	testl	%eax, %eax
	js	.LBB17_11
# BB#2:                                 # %for.body.lr.ph
	movq	%r14, %rbx
	subq	$-128, %rbx
	movl	$1, %ebp
	leaq	16(%rsp), %r12
	leaq	20(%rsp), %r13
	.align	16, 0x90
.LBB17_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$512, 20(%rsp)          # imm = 0x200
	movl	$4, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rcx
	callq	sputs
	xorl	%eax, %eax
	cmpl	$0, (%rbx)
	jne	.LBB17_6
# BB#4:                                 # %if.end.i
                                        #   in Loop: Header=BB17_3 Depth=1
	movl	$4, %edx
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r12, %rcx
	callq	sputs
	testl	%eax, %eax
	js	.LBB17_6
# BB#5:                                 # %if.end.5.i
                                        #   in Loop: Header=BB17_3 Depth=1
	leaq	40(%rbx), %rsi
	movl	$2048, %edx             # imm = 0x800
	movq	%r15, %rdi
	movq	%r12, %rcx
	callq	sputs
.LBB17_6:                               # %gx_serialize_cie_cache.exit
                                        #   in Loop: Header=BB17_3 Depth=1
	cmpq	$2, %rbp
	ja	.LBB17_8
# BB#7:                                 # %gx_serialize_cie_cache.exit
                                        #   in Loop: Header=BB17_3 Depth=1
	addq	$2088, %rbx             # imm = 0x828
	incq	%rbp
	testl	%eax, %eax
	jns	.LBB17_3
.LBB17_8:                               # %for.end
	testl	%eax, %eax
	js	.LBB17_11
# BB#9:                                 # %if.end.11
	leaq	64(%r14), %rsi
	leaq	12(%rsp), %rcx
	movl	$40, %edx
	movq	%r15, %rdi
	callq	sputs
	testl	%eax, %eax
	js	.LBB17_11
# BB#10:                                # %if.end.16
	addq	$104, %r14
	leaq	12(%rsp), %rcx
	movl	$24, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	sputs
.LBB17_11:                              # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gx_serialize_cie_common_elements, .Lfunc_end17-gx_serialize_cie_common_elements
	.cfi_endproc

	.align	16, 0x90
	.type	gx_serialize_lookup_table,@function
gx_serialize_lookup_table:              # @gx_serialize_lookup_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp120:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp121:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp122:
	.cfi_def_cfa_offset 32
.Ltmp123:
	.cfi_offset %rbx, -24
.Ltmp124:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	leaq	4(%rsp), %rcx
	movl	$4, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	sputs
	testl	%eax, %eax
	js	.LBB18_5
# BB#1:                                 # %if.end
	leaq	4(%rbx), %rsi
	movl	(%rbx), %edx
	shll	$2, %edx
	leaq	4(%rsp), %rcx
	movq	%r14, %rdi
	callq	sputs
	testl	%eax, %eax
	js	.LBB18_5
# BB#2:                                 # %if.end.8
	leaq	20(%rbx), %rsi
	leaq	4(%rsp), %rcx
	movl	$4, %edx
	movq	%r14, %rdi
	callq	sputs
	testl	%eax, %eax
	js	.LBB18_5
# BB#3:                                 # %if.end.13
	movq	24(%rbx), %rsi
	addq	$8, %rsi
	leaq	4(%rsp), %rcx
	movl	$4, %edx
	movq	%r14, %rdi
	callq	sputs
	testl	%eax, %eax
	js	.LBB18_5
# BB#4:                                 # %if.end.18
	movq	24(%rbx), %rax
	movq	(%rax), %rsi
	movl	8(%rax), %edx
	leaq	4(%rsp), %rcx
	movq	%r14, %rdi
	callq	sputs
.LBB18_5:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end18:
	.size	gx_serialize_lookup_table, .Lfunc_end18-gx_serialize_lookup_table
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_cie_common"
	.size	.L.str, 14

	.type	cie_common_reloc_ptrs,@object # @cie_common_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
cie_common_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	cie_common_enum_ptrs
	.size	cie_common_reloc_ptrs, 24

	.type	st_cie_common,@object   # @st_cie_common
	.globl	st_cie_common
	.align	8
st_cie_common:
	.long	6392                    # 0x18f8
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	cie_common_reloc_ptrs
	.size	st_cie_common, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gs_cie_common_elements_t"
	.size	.L.str.1, 25

	.type	st_cie_common_elements_t,@object # @st_cie_common_elements_t
	.section	.rodata,"a",@progbits
	.globl	st_cie_common_elements_t
	.align	8
st_cie_common_elements_t:
	.long	6416                    # 0x1910
	.zero	4
	.quad	.L.str.1
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	cie_common_reloc_ptrs
	.size	st_cie_common_elements_t, 64

	.type	gs_color_space_type_CIEDEFG,@object # @gs_color_space_type_CIEDEFG
	.globl	gs_color_space_type_CIEDEFG
	.align	8
gs_color_space_type_CIEDEFG:
	.long	5                       # 0x5
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	st_color_space_CIEDEFG
	.quad	gx_num_components_4
	.quad	gx_init_CIE
	.quad	gx_restrict_CIEDEFG
	.quad	gx_concrete_space_CIE
	.quad	gx_concretize_CIEDEFG
	.quad	0
	.quad	gx_remap_CIEDEFG
	.quad	gx_install_CIE
	.quad	gx_spot_colors_set_overprint
	.quad	gx_final_CIEDEFG
	.quad	gx_no_adjust_color_count
	.quad	gx_serialize_CIEDEFG
	.quad	gx_cspace_is_linear_default
	.quad	gx_polarity_subtractive
	.size	gs_color_space_type_CIEDEFG, 136

	.type	gs_color_space_type_CIEDEF,@object # @gs_color_space_type_CIEDEF
	.globl	gs_color_space_type_CIEDEF
	.align	8
gs_color_space_type_CIEDEF:
	.long	6                       # 0x6
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	st_color_space_CIEDEF
	.quad	gx_num_components_3
	.quad	gx_init_CIE
	.quad	gx_restrict_CIEDEF
	.quad	gx_concrete_space_CIE
	.quad	gx_concretize_CIEDEF
	.quad	0
	.quad	gx_remap_CIEDEF
	.quad	gx_install_CIE
	.quad	gx_spot_colors_set_overprint
	.quad	gx_final_CIEDEF
	.quad	gx_no_adjust_color_count
	.quad	gx_serialize_CIEDEF
	.quad	gx_cspace_is_linear_default
	.quad	gx_polarity_subtractive
	.size	gs_color_space_type_CIEDEF, 136

	.type	gs_color_space_type_CIEABC,@object # @gs_color_space_type_CIEABC
	.globl	gs_color_space_type_CIEABC
	.align	8
gs_color_space_type_CIEABC:
	.long	7                       # 0x7
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	st_color_space_CIEABC
	.quad	gx_num_components_3
	.quad	gx_init_CIE
	.quad	gx_restrict_CIEABC
	.quad	gx_concrete_space_CIE
	.quad	gx_concretize_CIEABC
	.quad	0
	.quad	gx_remap_CIEABC
	.quad	gx_install_CIE
	.quad	gx_spot_colors_set_overprint
	.quad	gx_final_CIEABC
	.quad	gx_no_adjust_color_count
	.quad	gx_serialize_CIEABC
	.quad	gx_cspace_is_linear_default
	.quad	gx_polarity_additive
	.size	gs_color_space_type_CIEABC, 136

	.type	gs_color_space_type_CIEA,@object # @gs_color_space_type_CIEA
	.globl	gs_color_space_type_CIEA
	.align	8
gs_color_space_type_CIEA:
	.long	8                       # 0x8
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	st_color_space_CIEA
	.quad	gx_num_components_1
	.quad	gx_init_CIE
	.quad	gx_restrict_CIEA
	.quad	gx_concrete_space_CIE
	.quad	gx_concretize_CIEA
	.quad	0
	.quad	gx_remap_CIEA
	.quad	gx_install_CIE
	.quad	gx_spot_colors_set_overprint
	.quad	gx_final_CIEA
	.quad	gx_no_adjust_color_count
	.quad	gx_serialize_CIEA
	.quad	gx_cspace_is_linear_default
	.quad	gx_polarity_additive
	.size	gs_color_space_type_CIEA, 136

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"gx_build_cie_space(data)"
	.size	.L.str.2, 25

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gx_build_cie_space"
	.size	.L.str.3, 19

	.type	cie_common_enum_ptrs,@object # @cie_common_enum_ptrs
	.section	.rodata,"a",@progbits
	.align	2
cie_common_enum_ptrs:
	.short	0                       # 0x0
	.short	8                       # 0x8
	.size	cie_common_enum_ptrs, 4

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"gs_color_space(CIEDEFG)"
	.size	.L.str.4, 24

	.type	cs_CIEDEFG_reloc_ptrs,@object # @cs_CIEDEFG_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
cs_CIEDEFG_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	cs_CIEDEFG_enum_ptrs
	.size	cs_CIEDEFG_reloc_ptrs, 24

	.type	st_color_space_CIEDEFG,@object # @st_color_space_CIEDEFG
	.align	8
st_color_space_CIEDEFG:
	.long	120                     # 0x78
	.zero	4
	.quad	.L.str.4
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	cs_CIEDEFG_reloc_ptrs
	.size	st_color_space_CIEDEFG, 64

	.type	cs_CIEDEFG_enum_ptrs,@object # @cs_CIEDEFG_enum_ptrs
	.align	2
cs_CIEDEFG_enum_ptrs:
	.short	0                       # 0x0
	.short	72                      # 0x48
	.size	cs_CIEDEFG_enum_ptrs, 4

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"gs_color_space(CIEDEF)"
	.size	.L.str.5, 23

	.type	cs_CIEDEF_reloc_ptrs,@object # @cs_CIEDEF_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
cs_CIEDEF_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	cs_CIEDEF_enum_ptrs
	.size	cs_CIEDEF_reloc_ptrs, 24

	.type	st_color_space_CIEDEF,@object # @st_color_space_CIEDEF
	.align	8
st_color_space_CIEDEF:
	.long	120                     # 0x78
	.zero	4
	.quad	.L.str.5
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	cs_CIEDEF_reloc_ptrs
	.size	st_color_space_CIEDEF, 64

	.type	cs_CIEDEF_enum_ptrs,@object # @cs_CIEDEF_enum_ptrs
	.align	2
cs_CIEDEF_enum_ptrs:
	.short	0                       # 0x0
	.short	72                      # 0x48
	.size	cs_CIEDEF_enum_ptrs, 4

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"gs_color_space(CIEABC)"
	.size	.L.str.6, 23

	.type	cs_CIEABC_reloc_ptrs,@object # @cs_CIEABC_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
cs_CIEABC_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	cs_CIEABC_enum_ptrs
	.size	cs_CIEABC_reloc_ptrs, 24

	.type	st_color_space_CIEABC,@object # @st_color_space_CIEABC
	.align	8
st_color_space_CIEABC:
	.long	120                     # 0x78
	.zero	4
	.quad	.L.str.6
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	cs_CIEABC_reloc_ptrs
	.size	st_color_space_CIEABC, 64

	.type	cs_CIEABC_enum_ptrs,@object # @cs_CIEABC_enum_ptrs
	.align	2
cs_CIEABC_enum_ptrs:
	.short	0                       # 0x0
	.short	72                      # 0x48
	.size	cs_CIEABC_enum_ptrs, 4

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"gs_color_space(CIEA)"
	.size	.L.str.7, 21

	.type	cs_CIEA_reloc_ptrs,@object # @cs_CIEA_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
cs_CIEA_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	cs_CIEA_enum_ptrs
	.size	cs_CIEA_reloc_ptrs, 24

	.type	st_color_space_CIEA,@object # @st_color_space_CIEA
	.align	8
st_color_space_CIEA:
	.long	120                     # 0x78
	.zero	4
	.quad	.L.str.7
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	cs_CIEA_reloc_ptrs
	.size	st_color_space_CIEA, 64

	.type	cs_CIEA_enum_ptrs,@object # @cs_CIEA_enum_ptrs
	.align	2
cs_CIEA_enum_ptrs:
	.short	0                       # 0x0
	.short	72                      # 0x48
	.size	cs_CIEA_enum_ptrs, 4

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"gx_final_CIEDEFG"
	.size	.L.str.8, 17

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gx_final_CIEDEF"
	.size	.L.str.9, 16

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gx_final_CIEABC"
	.size	.L.str.10, 16

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gx_final_CIEA"
	.size	.L.str.11, 14

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gx_adjust_cspace_CIEA"
	.size	.L.str.12, 22

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gs_cie_a"
	.size	.L.str.13, 9

	.type	st_cie_a,@object        # @st_cie_a
	.section	.rodata,"a",@progbits
	.align	8
st_cie_a:
	.long	14720                   # 0x3980
	.zero	4
	.quad	.L.str.13
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	cie_common_reloc_ptrs
	.size	st_cie_a, 64

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"gs_cie_abc"
	.size	.L.str.14, 11

	.type	st_cie_abc,@object      # @st_cie_abc
	.section	.rodata,"a",@progbits
	.align	8
st_cie_abc:
	.long	31352                   # 0x7a78
	.zero	4
	.quad	.L.str.14
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	cie_common_reloc_ptrs
	.size	st_cie_abc, 64

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"gs_cie_def"
	.size	.L.str.15, 11

	.type	cie_def_reloc_ptrs,@object # @cie_def_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
cie_def_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	st_cie_abc
	.quad	cie_def_enum_ptrs
	.size	cie_def_reloc_ptrs, 24

	.type	st_cie_def,@object      # @st_cie_def
	.align	8
st_cie_def:
	.long	37720                   # 0x9358
	.zero	4
	.quad	.L.str.15
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	cie_def_reloc_ptrs
	.size	st_cie_def, 64

	.type	cie_def_enum_ptrs,@object # @cie_def_enum_ptrs
	.align	2
cie_def_enum_ptrs:
	.short	0                       # 0x0
	.short	31448                   # 0x7ad8
	.size	cie_def_enum_ptrs, 4

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"gs_cie_defg"
	.size	.L.str.16, 12

	.type	cie_defg_reloc_ptrs,@object # @cie_defg_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
cie_defg_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	st_cie_abc
	.quad	cie_defg_enum_ptrs
	.size	cie_defg_reloc_ptrs, 24

	.type	st_cie_defg,@object     # @st_cie_defg
	.align	8
st_cie_defg:
	.long	39832                   # 0x9b98
	.zero	4
	.quad	.L.str.16
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	cie_defg_reloc_ptrs
	.size	st_cie_defg, 64

	.type	cie_defg_enum_ptrs,@object # @cie_defg_enum_ptrs
	.align	2
cie_defg_enum_ptrs:
	.short	0                       # 0x0
	.short	31472                   # 0x7af0
	.size	cie_defg_enum_ptrs, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
