	.text
	.file	"jp2.bc"
	.align	16, 0x90
	.type	opj_jp2_read_jp,@function
opj_jp2_read_jp:                        # @opj_jp2_read_jp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movq	%rdi, %rbp
	testq	%rsi, %rsi
	je	.LBB0_12
# BB#1:                                 # %cond.end
	testq	%rbp, %rbp
	je	.LBB0_13
# BB#2:                                 # %cond.end.4
	testq	%rbx, %rbx
	je	.LBB0_14
# BB#3:                                 # %cond.end.8
	cmpl	$0, 116(%rbp)
	je	.LBB0_6
# BB#4:                                 # %if.then
	xorl	%ebp, %ebp
	movl	$1, %esi
	movl	$.L.str.55, %edx
	jmp	.LBB0_5
.LBB0_6:                                # %if.end
	cmpl	$4, %edx
	jne	.LBB0_7
# BB#8:                                 # %if.end.13
	leaq	4(%rsp), %rax
	movl	$4, %edx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	opj_read_bytes_LE
	cmpl	$218793738, 4(%rsp)     # imm = 0xD0A870A
	jne	.LBB0_9
# BB#10:                                # %if.end.17
	orb	$1, 116(%rbp)
	movl	$1, %ebp
	jmp	.LBB0_11
.LBB0_7:                                # %if.then.11
	xorl	%ebp, %ebp
	movl	$1, %esi
	movl	$.L.str.56, %edx
	jmp	.LBB0_5
.LBB0_9:                                # %if.then.15
	xorl	%ebp, %ebp
	movl	$1, %esi
	movl	$.L.str.57, %edx
.LBB0_5:                                # %cleanup
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	opj_event_msg
.LBB0_11:                               # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB0_12:                               # %cond.false
	movl	$.L.str.54, %edi
	movl	$.L.str.2, %esi
	movl	$1973, %edx             # imm = 0x7B5
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_read_jp, %ecx
	callq	__assert_fail
.LBB0_13:                               # %cond.false.3
	movl	$.L.str.3, %edi
	movl	$.L.str.2, %esi
	movl	$1974, %edx             # imm = 0x7B6
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_read_jp, %ecx
	callq	__assert_fail
.LBB0_14:                               # %cond.false.7
	movl	$.L.str.4, %edi
	movl	$.L.str.2, %esi
	movl	$1975, %edx             # imm = 0x7B7
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_read_jp, %ecx
	callq	__assert_fail
.Lfunc_end0:
	.size	opj_jp2_read_jp, .Lfunc_end0-opj_jp2_read_jp
	.cfi_endproc

	.align	16, 0x90
	.type	opj_jp2_read_ftyp,@function
opj_jp2_read_ftyp:                      # @opj_jp2_read_ftyp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp8:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp9:
	.cfi_def_cfa_offset 48
.Ltmp10:
	.cfi_offset %rbx, -40
.Ltmp11:
	.cfi_offset %r14, -32
.Ltmp12:
	.cfi_offset %r15, -24
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%edx, %ebp
	movq	%rsi, %rbx
	movq	%rdi, %r15
	testq	%rbx, %rbx
	je	.LBB1_17
# BB#1:                                 # %cond.end
	testq	%r15, %r15
	je	.LBB1_18
# BB#2:                                 # %cond.end.4
	testq	%r14, %r14
	je	.LBB1_19
# BB#3:                                 # %cond.end.8
	cmpl	$1, 116(%r15)
	jne	.LBB1_4
# BB#6:                                 # %if.end
	cmpl	$7, %ebp
	jbe	.LBB1_7
# BB#8:                                 # %if.end.13
	leaq	68(%r15), %rsi
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	opj_read_bytes_LE
	leaq	4(%rbx), %rdi
	leaq	72(%r15), %rsi
	movl	$4, %edx
	callq	opj_read_bytes_LE
	addl	$-8, %ebp
	testb	$3, %bpl
	je	.LBB1_9
.LBB1_7:                                # %if.then.11
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.59, %edx
	jmp	.LBB1_5
.LBB1_4:                                # %if.then
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.58, %edx
.LBB1_5:                                # %cleanup
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	opj_event_msg
.LBB1_16:                               # %cleanup
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_9:                                # %if.end.18
	shrl	$2, %ebp
	movl	%ebp, 76(%r15)
	je	.LBB1_15
# BB#10:                                # %cond.false.25
	movl	%ebp, %edi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, 80(%r15)
	testq	%rax, %rax
	je	.LBB1_11
# BB#12:                                # %for.cond.preheader
	movl	76(%r15), %edx
	shlq	$2, %rdx
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
	cmpl	$0, 76(%r15)
	je	.LBB1_15
# BB#13:                                # %for.body.lr.ph
	addq	$8, %rbx
	.align	16, 0x90
.LBB1_14:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %eax
	movq	80(%r15), %rcx
	leaq	(%rcx,%rax,4), %rsi
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	opj_read_bytes_LE
	addq	$4, %rbx
	incl	%ebp
	cmpl	76(%r15), %ebp
	jb	.LBB1_14
.LBB1_15:                               # %for.end
	orb	$2, 116(%r15)
	movl	$1, %ebx
	jmp	.LBB1_16
.LBB1_11:                               # %if.then.34
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.60, %edx
	jmp	.LBB1_5
.LBB1_17:                               # %cond.false
	movl	$.L.str.54, %edi
	movl	$.L.str.2, %esi
	movl	$2019, %edx             # imm = 0x7E3
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_read_ftyp, %ecx
	callq	__assert_fail
.LBB1_18:                               # %cond.false.3
	movl	$.L.str.3, %edi
	movl	$.L.str.2, %esi
	movl	$2020, %edx             # imm = 0x7E4
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_read_ftyp, %ecx
	callq	__assert_fail
.LBB1_19:                               # %cond.false.7
	movl	$.L.str.4, %edi
	movl	$.L.str.2, %esi
	movl	$2021, %edx             # imm = 0x7E5
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_read_ftyp, %ecx
	callq	__assert_fail
.Lfunc_end1:
	.size	opj_jp2_read_ftyp, .Lfunc_end1-opj_jp2_read_ftyp
	.cfi_endproc

	.align	16, 0x90
	.type	opj_jp2_read_jp2h,@function
opj_jp2_read_jp2h:                      # @opj_jp2_read_jp2h
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp15:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp16:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp17:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp18:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp20:
	.cfi_def_cfa_offset 96
.Ltmp21:
	.cfi_offset %rbx, -56
.Ltmp22:
	.cfi_offset %r12, -48
.Ltmp23:
	.cfi_offset %r13, -40
.Ltmp24:
	.cfi_offset %r14, -32
.Ltmp25:
	.cfi_offset %r15, -24
.Ltmp26:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %rbx
	testq	%rbx, %rbx
	je	.LBB2_34
# BB#1:                                 # %cond.end
	testq	%rdi, %rdi
	je	.LBB2_35
# BB#2:                                 # %cond.end.4
	testq	%rcx, %rcx
	je	.LBB2_36
# BB#3:                                 # %cond.end.8
	movl	116(%rdi), %eax
	testb	$2, %al
	jne	.LBB2_5
# BB#4:                                 # %if.then
	xorl	%r13d, %r13d
	movl	$1, %esi
	movl	$.L.str.61, %edx
	xorl	%eax, %eax
	movq	%rcx, %rdi
	callq	opj_event_msg
	jmp	.LBB2_33
.LBB2_5:                                # %if.end
	movl	$0, 120(%rdi)
	testl	%ebp, %ebp
	je	.LBB2_32
# BB#6:                                 # %while.body.lr.ph
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	leaq	36(%rsp), %r15
	xorl	%r13d, %r13d
	jmp	.LBB2_7
	.align	16, 0x90
.LBB2_10:                               # %if.end.i
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	$4, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	opj_read_bytes_LE
	leaq	4(%rbx), %rdi
	movl	36(%rsp), %r14d
	movl	$4, %edx
	movq	%r15, %rsi
	callq	opj_read_bytes_LE
	movl	36(%rsp), %r12d
	cmpl	$1, %r14d
	jne	.LBB2_11
# BB#14:                                # %if.then.17.i
                                        #   in Loop: Header=BB2_7 Depth=1
	cmpl	$15, %ebp
	jbe	.LBB2_15
# BB#16:                                # %if.end.21.i
                                        #   in Loop: Header=BB2_7 Depth=1
	leaq	8(%rbx), %rdi
	movl	$4, %edx
	leaq	32(%rsp), %rsi
	callq	opj_read_bytes_LE
	cmpl	$0, 32(%rsp)
	jne	.LBB2_17
# BB#18:                                # %if.end.26.i
                                        #   in Loop: Header=BB2_7 Depth=1
	leaq	12(%rbx), %rdi
	movl	$4, %edx
	movq	%r15, %rsi
	callq	opj_read_bytes_LE
	movl	36(%rsp), %r14d
	testl	%r14d, %r14d
	je	.LBB2_12
# BB#19:                                # %cleanup.i
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	$16, %eax
.LBB2_20:                               # %if.end.14
                                        #   in Loop: Header=BB2_7 Depth=1
	cmpl	%r14d, %ebp
	jb	.LBB2_21
# BB#22:                                # %if.end.18
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	%ebp, 28(%rsp)          # 4-byte Spill
	cmpl	$1768449138, %r12d      # imm = 0x69686472
	movl	$jp2_img_header, %ebp
	je	.LBB2_28
# BB#23:                                # %for.cond.i
                                        #   in Loop: Header=BB2_7 Depth=1
	cmpl	$1668246642, %r12d      # imm = 0x636F6C72
	movl	$jp2_img_header+16, %ebp
	je	.LBB2_28
# BB#24:                                # %for.cond.1.i
                                        #   in Loop: Header=BB2_7 Depth=1
	cmpl	$1651532643, %r12d      # imm = 0x62706363
	movl	$jp2_img_header+32, %ebp
	je	.LBB2_28
# BB#25:                                # %for.cond.2.i
                                        #   in Loop: Header=BB2_7 Depth=1
	cmpl	$1885564018, %r12d      # imm = 0x70636C72
	movl	$jp2_img_header+48, %ebp
	je	.LBB2_28
# BB#26:                                # %for.cond.3.i
                                        #   in Loop: Header=BB2_7 Depth=1
	cmpl	$1668112752, %r12d      # imm = 0x636D6170
	movl	$jp2_img_header+64, %ebp
	je	.LBB2_28
# BB#27:                                # %for.cond.4.i
                                        #   in Loop: Header=BB2_7 Depth=1
	cmpl	$1667523942, %r12d      # imm = 0x63646566
	movl	$jp2_img_header+80, %ebp
	jne	.LBB2_29
	.align	16, 0x90
.LBB2_28:                               # %if.then.22
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	%r14d, %r12d
	subl	%eax, %r12d
	movl	%eax, %r15d
	leaq	(%rbx,%r15), %rsi
	movq	8(%rsp), %rdi           # 8-byte Reload
	movl	%r12d, %edx
	movq	16(%rsp), %rcx          # 8-byte Reload
	callq	*8(%rbp)
	testl	%eax, %eax
	je	.LBB2_33
.LBB2_30:                               # %if.end.28
                                        #   in Loop: Header=BB2_7 Depth=1
	addq	%r15, %rbx
	movl	%r12d, %eax
	addq	%rax, %rbx
	movl	28(%rsp), %ebp          # 4-byte Reload
	subl	%r14d, %ebp
	leaq	36(%rsp), %r15
	jne	.LBB2_7
	jmp	.LBB2_31
.LBB2_11:                               # %if.end.i
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	$8, %eax
	testl	%r14d, %r14d
	jne	.LBB2_20
	jmp	.LBB2_12
.LBB2_29:                               # %if.else
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	%r14d, %r12d
	subl	%eax, %r12d
	movl	%eax, %r15d
	movq	8(%rsp), %rax           # 8-byte Reload
	orl	$2147483647, 120(%rax)  # imm = 0x7FFFFFFF
	jmp	.LBB2_30
	.align	16, 0x90
.LBB2_7:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbx, %rbx
	je	.LBB2_37
# BB#8:                                 # %cond.end.12.i
                                        #   in Loop: Header=BB2_7 Depth=1
	cmpl	$7, %ebp
	ja	.LBB2_10
# BB#9:                                 # %if.then.i
	movl	$1, %esi
	movl	$.L.str.65, %edx
	jmp	.LBB2_13
.LBB2_12:                               # %if.then.36.i
	movl	$1, %esi
	movl	$.L.str.45, %edx
	jmp	.LBB2_13
.LBB2_15:                               # %if.then.19.i
	movl	$1, %esi
	movl	$.L.str.66, %edx
	jmp	.LBB2_13
.LBB2_21:                               # %if.then.16
	xorl	%r13d, %r13d
	movl	$1, %esi
	movl	$.L.str.63, %edx
	xorl	%eax, %eax
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	opj_event_msg
	jmp	.LBB2_33
.LBB2_17:                               # %if.then.24.i
	movl	$1, %esi
	movl	$.L.str.52, %edx
.LBB2_13:                               # %if.then.12
	xorl	%eax, %eax
	movq	16(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	callq	opj_event_msg
	xorl	%r13d, %r13d
	movl	$1, %esi
	movl	$.L.str.62, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	opj_event_msg
	jmp	.LBB2_33
.LBB2_31:                               # %while.cond.while.end_crit_edge
	movq	8(%rsp), %rdi           # 8-byte Reload
	movl	116(%rdi), %eax
.LBB2_32:                               # %while.end
	orl	$4, %eax
	movl	%eax, 116(%rdi)
	movl	$1, %r13d
.LBB2_33:                               # %cleanup
	movl	%r13d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_37:                               # %cond.false.i
	movl	$.L.str.64, %edi
	movl	$.L.str.2, %esi
	movl	$2184, %edx             # imm = 0x888
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_read_boxhdr_char, %ecx
	callq	__assert_fail
.LBB2_34:                               # %cond.false
	movl	$.L.str.54, %edi
	movl	$.L.str.2, %esi
	movl	$2127, %edx             # imm = 0x84F
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_read_jp2h, %ecx
	callq	__assert_fail
.LBB2_35:                               # %cond.false.3
	movl	$.L.str.3, %edi
	movl	$.L.str.2, %esi
	movl	$2128, %edx             # imm = 0x850
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_read_jp2h, %ecx
	callq	__assert_fail
.LBB2_36:                               # %cond.false.7
	movl	$.L.str.4, %edi
	movl	$.L.str.2, %esi
	movl	$2129, %edx             # imm = 0x851
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_read_jp2h, %ecx
	callq	__assert_fail
.Lfunc_end2:
	.size	opj_jp2_read_jp2h, .Lfunc_end2-opj_jp2_read_jp2h
	.cfi_endproc

	.align	16, 0x90
	.type	opj_jp2_read_ihdr,@function
opj_jp2_read_ihdr:                      # @opj_jp2_read_ihdr
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
	pushq	%r12
.Ltmp30:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 48
.Ltmp32:
	.cfi_offset %rbx, -48
.Ltmp33:
	.cfi_offset %r12, -40
.Ltmp34:
	.cfi_offset %r14, -32
.Ltmp35:
	.cfi_offset %r15, -24
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	testq	%r15, %r15
	je	.LBB3_12
# BB#1:                                 # %cond.end
	testq	%rbx, %rbx
	je	.LBB3_13
# BB#2:                                 # %cond.end.4
	testq	%r14, %r14
	je	.LBB3_14
# BB#3:                                 # %cond.end.8
	cmpl	$14, %edx
	jne	.LBB3_4
# BB#6:                                 # %if.end
	leaq	28(%rbx), %rsi
	movl	$4, %edx
	movq	%r15, %rdi
	callq	opj_read_bytes_LE
	leaq	4(%r15), %rdi
	leaq	24(%rbx), %rsi
	movl	$4, %edx
	callq	opj_read_bytes_LE
	leaq	8(%r15), %rdi
	leaq	32(%rbx), %rsi
	movl	$2, %edx
	callq	opj_read_bytes_LE
	movl	32(%rbx), %eax
	shlq	$2, %rax
	leaq	(%rax,%rax,2), %rdi
	callq	malloc
	movq	%rax, 88(%rbx)
	testq	%rax, %rax
	je	.LBB3_7
# BB#8:                                 # %if.end.27
	leaq	10(%r15), %r12
	movl	32(%rbx), %ecx
	shlq	$2, %rcx
	leaq	(%rcx,%rcx,2), %rdx
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
	leaq	36(%rbx), %rsi
	movl	$1, %ebp
	movl	$1, %edx
	movq	%r12, %rdi
	callq	opj_read_bytes_LE
	leaq	11(%r15), %rdi
	leaq	40(%rbx), %rsi
	movl	$1, %edx
	callq	opj_read_bytes_LE
	leaq	12(%r15), %r12
	movl	40(%rbx), %ecx
	cmpl	$7, %ecx
	je	.LBB3_10
# BB#9:                                 # %if.then.37
	movl	$4, %esi
	movl	$.L.str.16, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	opj_event_msg
.LBB3_10:                               # %if.end.40
	leaq	44(%rbx), %rsi
	movl	$1, %edx
	movq	%r12, %rdi
	callq	opj_read_bytes_LE
	addq	$13, %r15
	addq	$48, %rbx
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	opj_read_bytes_LE
	jmp	.LBB3_11
.LBB3_4:                                # %if.then
	xorl	%ebp, %ebp
	movl	$1, %esi
	movl	$.L.str.14, %edx
	jmp	.LBB3_5
.LBB3_7:                                # %if.then.25
	xorl	%ebp, %ebp
	movl	$1, %esi
	movl	$.L.str.15, %edx
.LBB3_5:                                # %return
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	opj_event_msg
.LBB3_11:                               # %return
	movl	%ebp, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_12:                               # %cond.false
	movl	$.L.str.13, %edi
	movl	$.L.str.2, %esi
	movl	$515, %edx              # imm = 0x203
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_read_ihdr, %ecx
	callq	__assert_fail
.LBB3_13:                               # %cond.false.3
	movl	$.L.str.3, %edi
	movl	$.L.str.2, %esi
	movl	$516, %edx              # imm = 0x204
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_read_ihdr, %ecx
	callq	__assert_fail
.LBB3_14:                               # %cond.false.7
	movl	$.L.str.4, %edi
	movl	$.L.str.2, %esi
	movl	$517, %edx              # imm = 0x205
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_read_ihdr, %ecx
	callq	__assert_fail
.Lfunc_end3:
	.size	opj_jp2_read_ihdr, .Lfunc_end3-opj_jp2_read_ihdr
	.cfi_endproc

	.align	16, 0x90
	.type	opj_jp2_read_colr,@function
opj_jp2_read_colr:                      # @opj_jp2_read_colr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp37:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp38:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp39:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp40:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp41:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp42:
	.cfi_def_cfa_offset 64
.Ltmp43:
	.cfi_offset %rbx, -48
.Ltmp44:
	.cfi_offset %r12, -40
.Ltmp45:
	.cfi_offset %r13, -32
.Ltmp46:
	.cfi_offset %r14, -24
.Ltmp47:
	.cfi_offset %r15, -16
	movq	%rcx, %r12
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %r13
	testq	%r13, %r13
	je	.LBB4_26
# BB#1:                                 # %cond.end
	testq	%r15, %r15
	je	.LBB4_27
# BB#2:                                 # %cond.end.4
	testq	%r12, %r12
	je	.LBB4_28
# BB#3:                                 # %cond.end.8
	cmpl	$2, %r14d
	ja	.LBB4_5
# BB#4:                                 # %if.then
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.29, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	opj_event_msg
	jmp	.LBB4_25
.LBB4_5:                                # %if.end
	cmpb	$0, 160(%r13)
	je	.LBB4_7
# BB#6:                                 # %if.then.10
	movl	$4, %esi
	movl	$.L.str.30, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	opj_event_msg
	movl	$1, %ebx
	jmp	.LBB4_25
.LBB4_7:                                # %if.end.12
	leaq	52(%r13), %rsi
	movl	$1, %edx
	movq	%r15, %rdi
	callq	opj_read_bytes_LE
	leaq	1(%r15), %rdi
	leaq	64(%r13), %rsi
	movl	$1, %edx
	callq	opj_read_bytes_LE
	leaq	2(%r15), %rdi
	leaq	56(%r13), %rsi
	movl	$1, %edx
	callq	opj_read_bytes_LE
	addq	$3, %r15
	movl	52(%r13), %ecx
	cmpl	$2, %ecx
	jne	.LBB4_8
# BB#14:                                # %if.then.30
	addl	$-3, %r14d
	movl	%r14d, 136(%r13)
	cmpl	$-256, %r14d
	jb	.LBB4_16
# BB#15:                                # %cond.end.38.thread
	movq	$0, 128(%r13)
	jmp	.LBB4_17
.LBB4_8:                                # %if.end.12
	cmpl	$1, %ecx
	jne	.LBB4_22
# BB#9:                                 # %if.then.17
	cmpl	$6, %r14d
	ja	.LBB4_11
# BB#10:                                # %if.then.19
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.31, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	%r14d, %ecx
	jmp	.LBB4_24
.LBB4_16:                               # %cond.end.38
	movslq	%r14d, %r12
	movq	%r12, %rdi
	callq	malloc
	movq	%rax, 128(%r13)
	testq	%rax, %rax
	je	.LBB4_17
# BB#18:                                # %if.end.46
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%r12, %rdx
	callq	memset
	testl	%r14d, %r14d
	jle	.LBB4_21
# BB#19:                                # %for.body.preheader
	xorl	%ebx, %ebx
	leaq	12(%rsp), %r12
	.align	16, 0x90
.LBB4_20:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%r15,%rbx), %rdi
	movl	$1, %edx
	movq	%r12, %rsi
	callq	opj_read_bytes_LE
	movb	12(%rsp), %al
	movq	128(%r13), %rcx
	movb	%al, (%rcx,%rbx)
	incq	%rbx
	cmpl	%ebx, %r14d
	jne	.LBB4_20
	jmp	.LBB4_21
.LBB4_17:                               # %if.then.43
	movl	$0, 136(%r13)
	xorl	%ebx, %ebx
	jmp	.LBB4_25
.LBB4_22:                               # %if.else.60
	movl	$1, %ebx
	cmpl	$3, %ecx
	jb	.LBB4_25
# BB#23:                                # %if.then.64
	movl	$4, %esi
	movl	$.L.str.32, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
.LBB4_24:                               # %cleanup.70
	callq	opj_event_msg
	jmp	.LBB4_25
.LBB4_11:                               # %if.end.21
	cmpl	$8, %r14d
	jb	.LBB4_13
# BB#12:                                # %if.then.23
	movl	$2, %esi
	movl	$.L.str.31, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	%r14d, %ecx
	callq	opj_event_msg
.LBB4_13:                               # %if.end.25
	leaq	60(%r13), %rsi
	movl	$4, %edx
	movq	%r15, %rdi
	callq	opj_read_bytes_LE
.LBB4_21:                               # %for.end
	movb	$1, 160(%r13)
	movl	$1, %ebx
.LBB4_25:                               # %cleanup.70
	movl	%ebx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.LBB4_26:                               # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.2, %esi
	movl	$1177, %edx             # imm = 0x499
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_read_colr, %ecx
	callq	__assert_fail
.LBB4_27:                               # %cond.false.3
	movl	$.L.str.28, %edi
	movl	$.L.str.2, %esi
	movl	$1178, %edx             # imm = 0x49A
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_read_colr, %ecx
	callq	__assert_fail
.LBB4_28:                               # %cond.false.7
	movl	$.L.str.4, %edi
	movl	$.L.str.2, %esi
	movl	$1179, %edx             # imm = 0x49B
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_read_colr, %ecx
	callq	__assert_fail
.Lfunc_end4:
	.size	opj_jp2_read_colr, .Lfunc_end4-opj_jp2_read_colr
	.cfi_endproc

	.align	16, 0x90
	.type	opj_jp2_read_bpcc,@function
opj_jp2_read_bpcc:                      # @opj_jp2_read_bpcc
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
	pushq	%rax
.Ltmp54:
	.cfi_def_cfa_offset 64
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
	movq	%rcx, %r15
	movl	%edx, %r12d
	movq	%rsi, %r14
	movq	%rdi, %r13
	testq	%r14, %r14
	je	.LBB5_10
# BB#1:                                 # %cond.end
	testq	%r13, %r13
	je	.LBB5_11
# BB#2:                                 # %cond.end.4
	testq	%r15, %r15
	je	.LBB5_12
# BB#3:                                 # %cond.end.8
	movl	36(%r13), %ecx
	cmpl	$255, %ecx
	je	.LBB5_5
# BB#4:                                 # %if.then
	movl	$2, %esi
	movl	$.L.str.18, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	opj_event_msg
.LBB5_5:                                # %if.end
	cmpl	%r12d, 32(%r13)
	jne	.LBB5_13
# BB#6:                                 # %for.cond.preheader
	movl	$1, %ebp
	testl	%r12d, %r12d
	je	.LBB5_9
# BB#7:                                 # %for.body.lr.ph
	xorl	%ebx, %ebx
	movl	$1, %ebp
	.align	16, 0x90
.LBB5_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %eax
	movq	88(%r13), %rcx
	leaq	(%rax,%rax,2), %rax
	leaq	8(%rcx,%rax,4), %rsi
	leaq	(%r14,%rbx), %rdi
	movl	$1, %edx
	callq	opj_read_bytes_LE
	incq	%rbx
	cmpl	32(%r13), %ebx
	jb	.LBB5_8
	jmp	.LBB5_9
.LBB5_13:                               # %if.then.12
	xorl	%ebp, %ebp
	movl	$1, %esi
	movl	$.L.str.19, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	opj_event_msg
.LBB5_9:                                # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_10:                               # %cond.false
	movl	$.L.str.17, %edi
	movl	$.L.str.2, %esi
	movl	$655, %edx              # imm = 0x28F
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_read_bpcc, %ecx
	callq	__assert_fail
.LBB5_11:                               # %cond.false.3
	movl	$.L.str.3, %edi
	movl	$.L.str.2, %esi
	movl	$656, %edx              # imm = 0x290
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_read_bpcc, %ecx
	callq	__assert_fail
.LBB5_12:                               # %cond.false.7
	movl	$.L.str.4, %edi
	movl	$.L.str.2, %esi
	movl	$657, %edx              # imm = 0x291
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_read_bpcc, %ecx
	callq	__assert_fail
.Lfunc_end5:
	.size	opj_jp2_read_bpcc, .Lfunc_end5-opj_jp2_read_bpcc
	.cfi_endproc

	.align	16, 0x90
	.type	opj_jp2_read_pclr,@function
opj_jp2_read_pclr:                      # @opj_jp2_read_pclr
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
	subq	$40, %rsp
.Ltmp67:
	.cfi_def_cfa_offset 96
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
	movl	%edx, %ebx
	movq	%rsi, %r15
	movq	%rdi, %r12
	testq	%r15, %r15
	je	.LBB6_28
# BB#1:                                 # %cond.end
	testq	%r12, %r12
	je	.LBB6_29
# BB#2:                                 # %cond.end.4
	testq	%rcx, %rcx
	je	.LBB6_30
# BB#3:                                 # %cond.end.8
	xorl	%ebp, %ebp
	cmpl	$3, %ebx
	jb	.LBB6_27
# BB#4:                                 # %cond.end.8
	movq	152(%r12), %rax
	testq	%rax, %rax
	jne	.LBB6_27
# BB#5:                                 # %if.end.12
	leaq	36(%rsp), %r14
	movl	$2, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	opj_read_bytes_LE
	leaq	2(%r15), %rdi
	movl	36(%rsp), %r13d
	movl	$1, %edx
	movq	%r14, %rsi
	callq	opj_read_bytes_LE
	movl	36(%rsp), %r14d
	movl	%r14d, %eax
	andl	$65535, %eax            # imm = 0xFFFF
	movl	%r14d, %esi
	andl	$65535, %esi            # imm = 0xFFFF
	je	.LBB6_27
# BB#6:                                 # %if.end.12
	addl	$3, %eax
	cmpl	%ebx, %eax
	ja	.LBB6_27
# BB#7:                                 # %lor.lhs.false.20
	movzwl	%r13w, %ecx
	xorl	%ebp, %ebp
	movl	$-1, %eax
	xorl	%edx, %edx
	divl	%esi
	cmpl	%eax, %ecx
	jae	.LBB6_27
# BB#8:                                 # %cond.false.34
	movl	%r13d, 24(%rsp)         # 4-byte Spill
	movl	%ebx, 16(%rsp)          # 4-byte Spill
	movl	%esi, %edi
	movl	%esi, 8(%rsp)           # 4-byte Spill
	imull	%ecx, %edi
	movl	%ecx, 12(%rsp)          # 4-byte Spill
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB6_9
# BB#10:                                # %if.end.43
	movzwl	%r14w, %ebx
	movq	%rbx, %rdi
	callq	malloc
	testq	%rax, %rax
	movq	%rax, %rbp
	je	.LBB6_11
# BB#13:                                # %cond.false.60
	movq	%rbx, %rdi
	callq	malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.LBB6_14
# BB#15:                                # %if.end.67
	movl	$40, %edi
	callq	malloc
	testq	%rax, %rax
	je	.LBB6_16
# BB#22:                                # %for.body.lr.ph
	movq	%rbx, 8(%rax)
	movq	%rbp, 16(%rax)
	movq	%r13, (%rax)
	movl	24(%rsp), %ecx          # 4-byte Reload
	movw	%cx, 32(%rax)
	movb	36(%rsp), %cl
	movb	%cl, 34(%rax)
	movq	$0, 24(%rax)
	movq	%rax, 152(%r12)
	movq	%rbp, %r12
	xorl	%eax, %eax
	movl	8(%rsp), %r14d          # 4-byte Reload
	.align	16, 0x90
.LBB6_23:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbp
	leaq	3(%r15,%rbp), %rdi
	movl	$1, %edx
	leaq	36(%rsp), %rsi
	callq	opj_read_bytes_LE
	movl	36(%rsp), %eax
	movl	%eax, %ecx
	andl	$127, %ecx
	incl	%ecx
	movzwl	%bp, %edx
	movb	%cl, (%r12,%rdx)
	shrb	$7, %al
	movb	%al, (%rbx,%rdx)
	leaq	1(%rbp), %rax
	movzwl	%ax, %ecx
	cmpl	%r14d, %ecx
	jb	.LBB6_23
# BB#17:                                # %for.cond.93.preheader
	movl	12(%rsp), %eax          # 4-byte Reload
	testl	%eax, %eax
	je	.LBB6_26
# BB#18:                                # %for.cond.99.preheader.lr.ph
	movq	%r12, 24(%rsp)          # 8-byte Spill
	leaq	4(%r15,%rbp), %rbp
	movl	16(%rsp), %eax          # 4-byte Reload
	movq	%rax, 16(%rsp)          # 8-byte Spill
	xorl	%edx, %edx
.LBB6_19:                               # %for.body.104.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_20 Depth 2
	movl	%edx, 4(%rsp)           # 4-byte Spill
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB6_20:                               # %for.body.104
                                        #   Parent Loop BB6_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	%r12w, %eax
	movq	24(%rsp), %rcx          # 8-byte Reload
	movzbl	(%rcx,%rax), %eax
	addl	$7, %eax
	shrl	$3, %eax
	cmpl	$4, %eax
	movl	$4, %ecx
	cmoval	%ecx, %eax
	movq	%rbp, %rcx
	subq	%r15, %rcx
	movl	%eax, %ebx
	addq	%rbx, %rcx
	cmpq	%rcx, 16(%rsp)          # 8-byte Folded Reload
	jl	.LBB6_21
# BB#24:                                # %for.inc.123
                                        #   in Loop: Header=BB6_20 Depth=2
	movq	%rbp, %rdi
	leaq	36(%rsp), %rsi
	movl	%ebx, %edx
	callq	opj_read_bytes_LE
	addq	%rbx, %rbp
	movl	36(%rsp), %eax
	movl	%eax, (%r13)
	addq	$4, %r13
	incl	%r12d
	movzwl	%r12w, %eax
	cmpl	%r14d, %eax
	jb	.LBB6_20
# BB#25:                                # %for.inc.126
                                        #   in Loop: Header=BB6_19 Depth=1
	movl	4(%rsp), %edx           # 4-byte Reload
	incl	%edx
	movzwl	%dx, %eax
	movl	12(%rsp), %ecx          # 4-byte Reload
	cmpl	%ecx, %eax
	jb	.LBB6_19
.LBB6_26:
	movl	$1, %ebp
	jmp	.LBB6_27
.LBB6_9:
	xorl	%ebp, %ebp
	jmp	.LBB6_27
.LBB6_11:                               # %if.then.54
	movq	%r13, %rdi
	jmp	.LBB6_12
.LBB6_14:                               # %if.then.66
	movq	%r13, %rdi
	callq	free
	movq	%rbp, %rdi
	jmp	.LBB6_12
.LBB6_21:
	xorl	%ebp, %ebp
	jmp	.LBB6_27
.LBB6_16:                               # %if.then.70
	movq	%r13, %rdi
	callq	free
	movq	%rbp, %rdi
	callq	free
	movq	%rbx, %rdi
.LBB6_12:                               # %cleanup.129
	callq	free
	xorl	%ebp, %ebp
.LBB6_27:                               # %cleanup.129
	movl	%ebp, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_28:                               # %cond.false
	movl	$.L.str.20, %edi
	movl	$.L.str.2, %esi
	movl	$914, %edx              # imm = 0x392
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_read_pclr, %ecx
	callq	__assert_fail
.LBB6_29:                               # %cond.false.3
	movl	$.L.str.3, %edi
	movl	$.L.str.2, %esi
	movl	$915, %edx              # imm = 0x393
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_read_pclr, %ecx
	callq	__assert_fail
.LBB6_30:                               # %cond.false.7
	movl	$.L.str.4, %edi
	movl	$.L.str.2, %esi
	movl	$916, %edx              # imm = 0x394
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_read_pclr, %ecx
	callq	__assert_fail
.Lfunc_end6:
	.size	opj_jp2_read_pclr, .Lfunc_end6-opj_jp2_read_pclr
	.cfi_endproc

	.align	16, 0x90
	.type	opj_jp2_read_cmap,@function
opj_jp2_read_cmap:                      # @opj_jp2_read_cmap
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
	pushq	%rax
.Ltmp80:
	.cfi_def_cfa_offset 64
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
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testq	%r14, %r14
	je	.LBB7_16
# BB#1:                                 # %cond.end
	testq	%rbx, %rbx
	je	.LBB7_17
# BB#2:                                 # %cond.end.4
	testq	%rcx, %rcx
	je	.LBB7_18
# BB#3:                                 # %cond.end.8
	movq	152(%r14), %rax
	testq	%rax, %rax
	je	.LBB7_4
# BB#6:                                 # %if.end
	cmpq	$0, 24(%rax)
	je	.LBB7_8
# BB#7:                                 # %if.then.13
	xorl	%r12d, %r12d
	movl	$1, %esi
	movl	$.L.str.23, %edx
	jmp	.LBB7_5
.LBB7_4:                                # %if.then
	xorl	%r12d, %r12d
	movl	$1, %esi
	movl	$.L.str.22, %edx
	jmp	.LBB7_5
.LBB7_8:                                # %if.end.15
	movzbl	34(%rax), %r13d
	leal	(,%r13,4), %eax
	cmpl	%edx, %eax
	jbe	.LBB7_10
# BB#9:                                 # %if.then.21
	xorl	%r12d, %r12d
	movl	$1, %esi
	movl	$.L.str.24, %edx
.LBB7_5:                                # %cleanup
	xorl	%eax, %eax
	movq	%rcx, %rdi
	callq	opj_event_msg
.LBB7_15:                               # %cleanup
	movl	%r12d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_10:                               # %cond.false.29
	leaq	(,%r13,4), %rdi
	callq	malloc
	movq	%rax, %r15
	xorl	%r12d, %r12d
	testq	%r15, %r15
	je	.LBB7_15
# BB#11:                                # %for.cond.preheader
	testb	%r13b, %r13b
	je	.LBB7_14
# BB#12:                                # %for.body.preheader
	movq	%r15, %rbp
	addq	$3, %rbp
	leaq	4(%rsp), %r12
	.align	16, 0x90
.LBB7_13:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$2, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	opj_read_bytes_LE
	movw	4(%rsp), %ax
	movw	%ax, -3(%rbp)
	leaq	2(%rbx), %rdi
	movl	$1, %edx
	movq	%r12, %rsi
	callq	opj_read_bytes_LE
	movb	4(%rsp), %al
	movb	%al, -1(%rbp)
	leaq	3(%rbx), %rdi
	movl	$1, %edx
	movq	%r12, %rsi
	callq	opj_read_bytes_LE
	movb	4(%rsp), %al
	movb	%al, (%rbp)
	addq	$4, %rbp
	addq	$4, %rbx
	decb	%r13b
	jne	.LBB7_13
.LBB7_14:                               # %for.end
	movq	152(%r14), %rax
	movq	%r15, 24(%rax)
	movl	$1, %r12d
	jmp	.LBB7_15
.LBB7_16:                               # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.2, %esi
	movl	$1009, %edx             # imm = 0x3F1
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_read_cmap, %ecx
	callq	__assert_fail
.LBB7_17:                               # %cond.false.3
	movl	$.L.str.21, %edi
	movl	$.L.str.2, %esi
	movl	$1010, %edx             # imm = 0x3F2
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_read_cmap, %ecx
	callq	__assert_fail
.LBB7_18:                               # %cond.false.7
	movl	$.L.str.4, %edi
	movl	$.L.str.2, %esi
	movl	$1011, %edx             # imm = 0x3F3
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_read_cmap, %ecx
	callq	__assert_fail
.Lfunc_end7:
	.size	opj_jp2_read_cmap, .Lfunc_end7-opj_jp2_read_cmap
	.cfi_endproc

	.align	16, 0x90
	.type	opj_jp2_read_cdef,@function
opj_jp2_read_cdef:                      # @opj_jp2_read_cdef
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
	pushq	%rax
.Ltmp93:
	.cfi_def_cfa_offset 64
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
	movq	%rcx, %r15
	movl	%edx, %r12d
	movq	%rsi, %rbx
	movq	%rdi, %r13
	testq	%r13, %r13
	je	.LBB8_18
# BB#1:                                 # %cond.end
	testq	%rbx, %rbx
	je	.LBB8_19
# BB#2:                                 # %cond.end.4
	testq	%r15, %r15
	je	.LBB8_20
# BB#3:                                 # %cond.end.8
	xorl	%ebp, %ebp
	cmpq	$0, 144(%r13)
	jne	.LBB8_17
# BB#4:                                 # %if.end
	cmpl	$1, %r12d
	jbe	.LBB8_5
# BB#7:                                 # %if.end.11
	leaq	4(%rsp), %rsi
	movl	$2, %edx
	movq	%rbx, %rdi
	callq	opj_read_bytes_LE
	movl	4(%rsp), %eax
	movl	%eax, %ecx
	andl	$65535, %ecx            # imm = 0xFFFF
	je	.LBB8_8
# BB#9:                                 # %if.end.17
	leal	(%rcx,%rcx,2), %ecx
	leal	2(%rcx,%rcx), %ecx
	cmpl	%r12d, %ecx
	jbe	.LBB8_10
.LBB8_5:                                # %if.then.10
	xorl	%ebp, %ebp
	movl	$1, %esi
	movl	$.L.str.26, %edx
	jmp	.LBB8_6
.LBB8_8:                                # %if.then.15
	xorl	%ebp, %ebp
	movl	$1, %esi
	movl	$.L.str.27, %edx
.LBB8_6:                                # %cleanup
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	opj_event_msg
.LBB8_17:                               # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_10:                               # %cond.false.30
	addq	%rax, %rax
	leaq	(%rax,%rax,2), %rdi
	callq	malloc
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB8_17
# BB#11:                                # %if.end.37
	movl	$16, %edi
	callq	malloc
	movq	%rax, 144(%r13)
	testq	%rax, %rax
	je	.LBB8_12
# BB#13:                                # %if.end.45
	movq	%r15, (%rax)
	movw	4(%rsp), %cx
	movw	%cx, 8(%rax)
	movl	$1, %ebp
	testw	%cx, %cx
	je	.LBB8_17
# BB#14:                                # %for.body.preheader
	addq	$6, %rbx
	xorl	%ebp, %ebp
	leaq	4(%rsp), %r14
	.align	16, 0x90
.LBB8_15:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	-4(%rbx), %rdi
	movl	$2, %edx
	movq	%r14, %rsi
	callq	opj_read_bytes_LE
	movw	4(%rsp), %ax
	movzwl	%bp, %ecx
	leaq	(%rcx,%rcx,2), %r12
	movw	%ax, (%r15,%r12,2)
	leaq	-2(%rbx), %rdi
	movl	$2, %edx
	movq	%r14, %rsi
	callq	opj_read_bytes_LE
	movw	4(%rsp), %ax
	movw	%ax, 2(%r15,%r12,2)
	movl	$2, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	opj_read_bytes_LE
	movw	4(%rsp), %ax
	movw	%ax, 4(%r15,%r12,2)
	leal	1(%rbp), %ebp
	movq	144(%r13), %rax
	addq	$6, %rbx
	movzwl	%bp, %ecx
	movzwl	8(%rax), %eax
	cmpl	%eax, %ecx
	jb	.LBB8_15
# BB#16:
	movl	$1, %ebp
	jmp	.LBB8_17
.LBB8_12:                               # %if.then.44
	movq	%r15, %rdi
	callq	free
	jmp	.LBB8_17
.LBB8_18:                               # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.2, %esi
	movl	$1111, %edx             # imm = 0x457
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_read_cdef, %ecx
	callq	__assert_fail
.LBB8_19:                               # %cond.false.3
	movl	$.L.str.25, %edi
	movl	$.L.str.2, %esi
	movl	$1112, %edx             # imm = 0x458
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_read_cdef, %ecx
	callq	__assert_fail
.LBB8_20:                               # %cond.false.7
	movl	$.L.str.4, %edi
	movl	$.L.str.2, %esi
	movl	$1113, %edx             # imm = 0x459
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_read_cdef, %ecx
	callq	__assert_fail
.Lfunc_end8:
	.size	opj_jp2_read_cdef, .Lfunc_end8-opj_jp2_read_cdef
	.cfi_endproc

	.globl	opj_jp2_decode
	.align	16, 0x90
	.type	opj_jp2_decode,@function
opj_jp2_decode:                         # @opj_jp2_decode
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
	pushq	%r12
.Ltmp103:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp104:
	.cfi_def_cfa_offset 48
.Ltmp105:
	.cfi_offset %rbx, -48
.Ltmp106:
	.cfi_offset %r12, -40
.Ltmp107:
	.cfi_offset %r14, -32
.Ltmp108:
	.cfi_offset %r15, -24
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movq	%rdx, %r12
	movq	%rdi, %r14
	xorl	%ebp, %ebp
	testq	%r12, %r12
	je	.LBB9_23
# BB#1:                                 # %if.end
	movq	(%r14), %rdi
	movq	%r12, %rdx
	movq	%rbx, %rcx
	callq	opj_j2k_decode
	testl	%eax, %eax
	je	.LBB9_2
# BB#3:                                 # %if.end.4
	cmpl	$0, 168(%r14)
	jne	.LBB9_22
# BB#4:                                 # %if.then.6
	movq	%r14, %r15
	subq	$-128, %r15
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	opj_jp2_check_color
	testl	%eax, %eax
	je	.LBB9_23
# BB#5:                                 # %if.end.10
	movl	60(%r14), %eax
	cmpl	$18, %eax
	je	.LBB9_10
# BB#6:                                 # %if.end.10
	cmpl	$17, %eax
	jne	.LBB9_7
# BB#9:                                 # %if.then.14
	movl	$2, 20(%r12)
	jmp	.LBB9_14
.LBB9_2:                                # %if.then.2
	xorl	%ebp, %ebp
	movl	$1, %esi
	movl	$.L.str, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	opj_event_msg
	jmp	.LBB9_23
.LBB9_10:                               # %if.then.19
	movl	$3, 20(%r12)
	jmp	.LBB9_14
.LBB9_7:                                # %if.end.10
	cmpl	$16, %eax
	jne	.LBB9_11
# BB#8:                                 # %if.then.11
	movl	$1, 20(%r12)
	jmp	.LBB9_14
.LBB9_11:                               # %if.else.21
	cmpl	$24, %eax
	jne	.LBB9_13
# BB#12:                                # %if.then.24
	movl	$4, 20(%r12)
	jmp	.LBB9_14
.LBB9_13:                               # %if.else.26
	movl	$-1, 20(%r12)
.LBB9_14:                               # %if.end.31
	cmpq	$0, 144(%r14)
	je	.LBB9_16
# BB#15:                                # %if.then.34
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	opj_jp2_apply_cdef
.LBB9_16:                               # %if.end.36
	movq	152(%r14), %rax
	testq	%rax, %rax
	je	.LBB9_20
# BB#17:                                # %if.then.39
	cmpq	$0, 24(%rax)
	je	.LBB9_18
# BB#19:                                # %if.else.45
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	opj_jp2_apply_pclr
	jmp	.LBB9_20
.LBB9_18:                               # %if.then.43
	movq	%r15, %rdi
	callq	opj_jp2_free_pclr
.LBB9_20:                               # %if.end.48
	movq	(%r15), %rax
	testq	%rax, %rax
	je	.LBB9_22
# BB#21:                                # %if.then.51
	movq	%rax, 32(%r12)
	movl	136(%r14), %eax
	movl	%eax, 40(%r12)
	movq	$0, 128(%r14)
.LBB9_22:                               # %return
	movl	$1, %ebp
.LBB9_23:                               # %return
	movl	%ebp, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	opj_jp2_decode, .Lfunc_end9-opj_jp2_decode
	.cfi_endproc

	.align	16, 0x90
	.type	opj_jp2_check_color,@function
opj_jp2_check_color:                    # @opj_jp2_check_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp110:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp111:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp112:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp113:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp114:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp115:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp116:
	.cfi_def_cfa_offset 64
.Ltmp117:
	.cfi_offset %rbx, -56
.Ltmp118:
	.cfi_offset %r12, -48
.Ltmp119:
	.cfi_offset %r13, -40
.Ltmp120:
	.cfi_offset %r14, -32
.Ltmp121:
	.cfi_offset %r15, -24
.Ltmp122:
	.cfi_offset %rbp, -16
	movq	%rdx, %r13
	movq	%rdi, %r15
	movq	16(%rsi), %rax
	testq	%rax, %rax
	je	.LBB10_9
# BB#1:                                 # %if.then
	movw	8(%rax), %cx
	testw	%cx, %cx
	je	.LBB10_9
# BB#2:                                 # %for.body.lr.ph
	movq	(%rax), %rax
	movl	16(%r15), %r8d
	addq	$4, %rax
	xorl	%edx, %edx
	movzwl	%cx, %edi
	.align	16, 0x90
.LBB10_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	-4(%rax), %ecx
	cmpl	%r8d, %ecx
	jae	.LBB10_4
# BB#6:                                 # %if.end
                                        #   in Loop: Header=BB10_3 Depth=1
	movzwl	(%rax), %ecx
	testl	%ecx, %ecx
	je	.LBB10_8
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB10_3 Depth=1
	decl	%ecx
	cmpl	%r8d, %ecx
	jae	.LBB10_4
.LBB10_8:                               # %for.inc
                                        #   in Loop: Header=BB10_3 Depth=1
	incl	%edx
	addq	$6, %rax
	movzwl	%dx, %ecx
	cmpl	%edi, %ecx
	jb	.LBB10_3
.LBB10_9:                               # %if.end.38
	movq	24(%rsi), %rax
	testq	%rax, %rax
	je	.LBB10_29
# BB#10:                                # %land.lhs.true.40
	movq	24(%rax), %r14
	testq	%r14, %r14
	je	.LBB10_29
# BB#11:                                # %if.then.43
	movzbl	34(%rax), %ebx
	testl	%ebx, %ebx
	movl	$1, %r12d
	je	.LBB10_16
# BB#12:                                # %for.body.55.lr.ph
	movl	$1, %r12d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB10_13:                              # %for.body.55
                                        # =>This Inner Loop Header: Depth=1
	movzwl	%bp, %eax
	movzwl	(%r14,%rax,4), %ecx
	movl	16(%r15), %r8d
	cmpl	%r8d, %ecx
	jb	.LBB10_15
# BB#14:                                # %if.then.63
                                        #   in Loop: Header=BB10_13 Depth=1
	xorl	%r12d, %r12d
	movl	$1, %esi
	movl	$.L.str.33, %edx
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	opj_event_msg
.LBB10_15:                              # %for.inc.71
                                        #   in Loop: Header=BB10_13 Depth=1
	incl	%ebp
	movzwl	%bp, %eax
	cmpl	%ebx, %eax
	jb	.LBB10_13
.LBB10_16:                              # %for.end.73
	movq	%r13, (%rsp)            # 8-byte Spill
	movl	$4, %esi
	movq	%rbx, %rdi
	callq	calloc
	movq	%rax, %r13
	xorl	%r15d, %r15d
	testq	%r13, %r13
	je	.LBB10_22
# BB#17:                                # %for.cond.87.preheader
	testb	%bl, %bl
	je	.LBB10_28
# BB#18:
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB10_19:                              # %for.body.92
                                        # =>This Inner Loop Header: Depth=1
	movzwl	%r15w, %eax
	movzbl	3(%r14,%rax,4), %ecx
	cmpl	%ebx, %ecx
	jae	.LBB10_20
# BB#30:                                # %if.else
                                        #   in Loop: Header=BB10_19 Depth=1
	cmpl	$0, (%r13,%rcx,4)
	je	.LBB10_32
# BB#31:                                # %if.then.107
                                        #   in Loop: Header=BB10_19 Depth=1
	xorl	%r12d, %r12d
	movl	$1, %esi
	movl	$.L.str.36, %edx
	jmp	.LBB10_21
	.align	16, 0x90
.LBB10_20:                              # %if.then.101
                                        #   in Loop: Header=BB10_19 Depth=1
	xorl	%r12d, %r12d
	movl	$1, %esi
	movl	$.L.str.35, %edx
.LBB10_21:                              # %if.end.114
                                        #   in Loop: Header=BB10_19 Depth=1
	xorl	%eax, %eax
	movq	(%rsp), %rdi            # 8-byte Reload
	callq	opj_event_msg
	jmp	.LBB10_33
.LBB10_32:                              # %if.else.110
                                        #   in Loop: Header=BB10_19 Depth=1
	movl	$1, (%r13,%rcx,4)
	.align	16, 0x90
.LBB10_33:                              # %if.end.114
                                        #   in Loop: Header=BB10_19 Depth=1
	incl	%r15d
	movzwl	%r15w, %eax
	cmpl	%ebx, %eax
	jb	.LBB10_19
# BB#23:                                # %for.cond.118.preheader
	testb	%bl, %bl
	movl	$0, %r15d
	je	.LBB10_28
# BB#24:
	xorl	%ecx, %ecx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB10_25:                              # %for.body.123
                                        # =>This Inner Loop Header: Depth=1
	movzwl	%bp, %eax
	cmpl	$0, (%r13,%rax,4)
	jne	.LBB10_27
# BB#26:                                # %if.then.127
                                        #   in Loop: Header=BB10_25 Depth=1
	xorl	%r12d, %r12d
	movl	$1, %esi
	movl	$.L.str.37, %edx
	xorl	%eax, %eax
	movq	(%rsp), %rdi            # 8-byte Reload
	callq	opj_event_msg
.LBB10_27:                              # %for.inc.131
                                        #   in Loop: Header=BB10_25 Depth=1
	incl	%ebp
	movzwl	%bp, %ecx
	cmpl	%ebx, %ecx
	jb	.LBB10_25
.LBB10_28:                              # %for.end.133
	movq	%r13, %rdi
	callq	free
	testl	%r12d, %r12d
	je	.LBB10_5
.LBB10_29:                              # %if.end.143
	movl	$1, %r15d
	jmp	.LBB10_5
.LBB10_4:                               # %if.then.10
	xorl	%r15d, %r15d
	movl	$1, %esi
	movl	$.L.str.33, %edx
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	opj_event_msg
	jmp	.LBB10_5
.LBB10_22:                              # %if.then.84
	movl	$1, %esi
	movl	$.L.str.34, %edx
	xorl	%eax, %eax
	movq	(%rsp), %rdi            # 8-byte Reload
	callq	opj_event_msg
.LBB10_5:                               # %cleanup.144
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	opj_jp2_check_color, .Lfunc_end10-opj_jp2_check_color
	.cfi_endproc

	.align	16, 0x90
	.type	opj_jp2_apply_cdef,@function
opj_jp2_apply_cdef:                     # @opj_jp2_apply_cdef
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp123:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp124:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp125:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp126:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp127:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp128:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp129:
	.cfi_def_cfa_offset 160
.Ltmp130:
	.cfi_offset %rbx, -56
.Ltmp131:
	.cfi_offset %r12, -48
.Ltmp132:
	.cfi_offset %r13, -40
.Ltmp133:
	.cfi_offset %r14, -32
.Ltmp134:
	.cfi_offset %r15, -24
.Ltmp135:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %rdx
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	16(%rbx), %rdi
	movq	(%rdi), %rax
	movzwl	8(%rdi), %ecx
	movl	%ecx, 36(%rsp)          # 4-byte Spill
	testl	%ecx, %ecx
	je	.LBB11_10
# BB#1:                                 # %for.body.lr.ph
	movq	%rbx, (%rsp)            # 8-byte Spill
	movq	%rax, 8(%rsp)           # 8-byte Spill
	leaq	4(%rax), %r14
	xorl	%r12d, %r12d
	movl	$56, %r15d
	leaq	40(%rsp), %rbx
	.align	16, 0x90
.LBB11_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	(%r14), %ax
	testw	%ax, %ax
	je	.LBB11_3
# BB#5:                                 # %if.end.18
                                        #   in Loop: Header=BB11_2 Depth=1
	movzwl	-4(%r14), %ebp
	decl	%eax
	movzwl	%ax, %eax
	cmpl	%eax, %ebp
	je	.LBB11_7
# BB#6:                                 # %if.then.28
                                        #   in Loop: Header=BB11_2 Depth=1
	movq	%rbp, %r13
	shlq	$6, %r13
	movq	24(%rdx), %rsi
	addq	%r13, %rsi
	movl	$64, %edx
	movq	%rbx, %rdi
	movq	%rax, 16(%rsp)          # 8-byte Spill
	callq	memcpy
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rsi
	movq	16(%rsp), %rbx          # 8-byte Reload
	shlq	$6, %rbx
	leaq	(%r13,%rsi), %rdi
	addq	%rbx, %rsi
	movl	$64, %edx
	callq	memcpy
	movq	24(%rsp), %rax          # 8-byte Reload
	addq	24(%rax), %rbx
	movl	$64, %edx
	movq	%rbx, %rdi
	leaq	40(%rsp), %rsi
	movq	%rsi, %rbx
	callq	memcpy
	leal	1(%rbp), %eax
	movw	%ax, (%r14)
	movq	16(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rax,2), %rax
	movq	8(%rsp), %rdx           # 8-byte Reload
	movw	(%rdx,%rax,2), %cx
	incw	%cx
	movw	%cx, 4(%rdx,%rax,2)
	movq	24(%rsp), %rdx          # 8-byte Reload
.LBB11_7:                               # %if.end.57
                                        #   in Loop: Header=BB11_2 Depth=1
	movw	-2(%r14), %ax
	movq	24(%rdx), %rcx
	shlq	$6, %rbp
	movw	%ax, 56(%rcx,%rbp)
	jmp	.LBB11_8
	.align	16, 0x90
.LBB11_3:                               # %if.then
                                        #   in Loop: Header=BB11_2 Depth=1
	cmpl	16(%rdx), %r12d
	jae	.LBB11_8
# BB#4:                                 # %if.then.13
                                        #   in Loop: Header=BB11_2 Depth=1
	movw	-2(%r14), %ax
	movq	24(%rdx), %rcx
	movw	%ax, (%rcx,%r15)
	.align	16, 0x90
.LBB11_8:                               # %for.inc
                                        #   in Loop: Header=BB11_2 Depth=1
	addq	$6, %r14
	addq	$64, %r15
	incl	%r12d
	movzwl	%r12w, %eax
	cmpl	%eax, 36(%rsp)          # 4-byte Folded Reload
	jne	.LBB11_2
# BB#9:                                 # %for.cond.for.end_crit_edge
	movq	(%rsp), %rbx            # 8-byte Reload
	movq	16(%rbx), %rdi
	movq	(%rdi), %rax
.LBB11_10:                              # %for.end
	testq	%rax, %rax
	je	.LBB11_12
# BB#11:                                # %if.then.67
	movq	%rax, %rdi
	callq	free
	movq	16(%rbx), %rdi
.LBB11_12:                              # %if.end.70
	callq	free
	movq	$0, 16(%rbx)
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	opj_jp2_apply_cdef, .Lfunc_end11-opj_jp2_apply_cdef
	.cfi_endproc

	.align	16, 0x90
	.type	opj_jp2_free_pclr,@function
opj_jp2_free_pclr:                      # @opj_jp2_free_pclr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp136:
	.cfi_def_cfa_offset 16
.Ltmp137:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	24(%rbx), %rax
	movq	8(%rax), %rdi
	callq	free
	movq	24(%rbx), %rax
	movq	16(%rax), %rdi
	callq	free
	movq	24(%rbx), %rax
	movq	(%rax), %rdi
	callq	free
	movq	24(%rbx), %rdi
	movq	24(%rdi), %rax
	testq	%rax, %rax
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	%rax, %rdi
	callq	free
	movq	24(%rbx), %rdi
.LBB12_2:                               # %if.end
	callq	free
	movq	$0, 24(%rbx)
	popq	%rbx
	retq
.Lfunc_end12:
	.size	opj_jp2_free_pclr, .Lfunc_end12-opj_jp2_free_pclr
	.cfi_endproc

	.align	16, 0x90
	.type	opj_jp2_apply_pclr,@function
opj_jp2_apply_pclr:                     # @opj_jp2_apply_pclr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp138:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp139:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp140:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp141:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp142:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp143:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp144:
	.cfi_def_cfa_offset 112
.Ltmp145:
	.cfi_offset %rbx, -56
.Ltmp146:
	.cfi_offset %r12, -48
.Ltmp147:
	.cfi_offset %r13, -40
.Ltmp148:
	.cfi_offset %r14, -32
.Ltmp149:
	.cfi_offset %r15, -24
.Ltmp150:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movq	24(%r15), %rax
	movq	16(%rax), %rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	(%rax), %rbp
	movq	8(%rax), %rcx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	24(%rax), %r12
	movq	24(%rdi), %rcx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movzbl	34(%rax), %r13d
	movq	%r13, %rdi
	shlq	$6, %rdi
	callq	malloc
	movq	%rax, %r10
	testl	%r13d, %r13d
	je	.LBB13_13
# BB#1:
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movq	%r15, 16(%rsp)          # 8-byte Spill
	xorl	%r15d, %r15d
	movq	48(%rsp), %rbp          # 8-byte Reload
	.align	16, 0x90
.LBB13_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	%r15w, %r15d
	movzbl	3(%r12,%r15,4), %r14d
	shlq	$6, %r14
	movzwl	(%r12,%r15,4), %eax
	shlq	$6, %rax
	movups	(%rbp,%rax), %xmm0
	movups	16(%rbp,%rax), %xmm1
	movups	32(%rbp,%rax), %xmm2
	movups	48(%rbp,%rax), %xmm3
	movups	%xmm3, 48(%r10,%r14)
	movups	%xmm2, 32(%r10,%r14)
	movups	%xmm1, 16(%r10,%r14)
	movups	%xmm0, (%r10,%r14)
	cmpb	$0, 2(%r12,%r15,4)
	je	.LBB13_3
# BB#4:                                 # %cond.false.45
                                        #   in Loop: Header=BB13_2 Depth=1
	movl	12(%rbp,%rax), %edi
	imull	8(%rbp,%rax), %edi
	shlq	$2, %rdi
	movq	%r10, %rbx
	callq	malloc
	movq	%rbx, %r10
	movq	%rax, 48(%r10,%r14)
	movq	40(%rsp), %rax          # 8-byte Reload
	movzbl	(%rax,%r15), %eax
	movl	%eax, 24(%r10,%r14)
	movq	32(%rsp), %rax          # 8-byte Reload
	movzbl	(%rax,%r15), %eax
	movl	%eax, 32(%r10,%r14)
	jmp	.LBB13_5
	.align	16, 0x90
.LBB13_3:                               # %if.then
                                        #   in Loop: Header=BB13_2 Depth=1
	movq	$0, 48(%rbp,%rax)
.LBB13_5:                               # %for.inc
                                        #   in Loop: Header=BB13_2 Depth=1
	incl	%r15d
	movzwl	%r15w, %eax
	cmpl	%r13d, %eax
	jb	.LBB13_2
# BB#6:                                 # %for.end
	testb	%r13b, %r13b
	movq	16(%rsp), %r15          # 8-byte Reload
	movq	8(%rsp), %r14           # 8-byte Reload
	je	.LBB13_13
# BB#7:
	movq	24(%r15), %rax
	movzwl	32(%rax), %eax
	decl	%eax
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	.align	16, 0x90
.LBB13_8:                               # %for.body.78
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_11 Depth 2
	movzwl	%r9w, %r9d
	cmpb	$0, 2(%r12,%r9,4)
	je	.LBB13_12
# BB#9:                                 # %if.end.86
                                        #   in Loop: Header=BB13_8 Depth=1
	movzbl	3(%r12,%r9,4), %esi
	movzwl	(%r12,%r9,4), %ecx
	movq	%rsi, %rbp
	shlq	$6, %rbp
	movl	8(%r10,%rbp), %edi
	imull	12(%r10,%rbp), %edi
	testl	%edi, %edi
	je	.LBB13_12
# BB#10:                                # %for.body.110.lr.ph
                                        #   in Loop: Header=BB13_8 Depth=1
	shlq	$6, %rcx
	movq	48(%rsp), %rdx          # 8-byte Reload
	movq	48(%rdx,%rcx), %rcx
	movq	48(%r10,%rbp), %rbp
	.align	16, 0x90
.LBB13_11:                              # %for.body.110
                                        #   Parent Loop BB13_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %edx
	cmpl	%eax, %edx
	movl	%edx, %ebx
	cmovgl	%eax, %ebx
	testl	%edx, %edx
	cmovsl	%r8d, %ebx
	imull	%r13d, %ebx
	movslq	%ebx, %rdx
	addq	%rsi, %rdx
	movl	(%r14,%rdx,4), %edx
	movl	%edx, (%rbp)
	addq	$4, %rcx
	addq	$4, %rbp
	decl	%edi
	jne	.LBB13_11
.LBB13_12:                              # %for.inc.131
                                        #   in Loop: Header=BB13_8 Depth=1
	incl	%r9d
	movzwl	%r9w, %ecx
	cmpl	%r13d, %ecx
	jb	.LBB13_8
.LBB13_13:                              # %for.end.133
	movq	%r10, %r12
	movq	24(%rsp), %rbx          # 8-byte Reload
	movl	16(%rbx), %r14d
	testl	%r14d, %r14d
	je	.LBB13_18
# BB#14:
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB13_15:                              # %for.body.138
                                        # =>This Inner Loop Header: Depth=1
	movzwl	%bp, %eax
	shlq	$6, %rax
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	48(%rcx,%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB13_17
# BB#16:                                # %if.then.142
                                        #   in Loop: Header=BB13_15 Depth=1
	callq	free
.LBB13_17:                              # %for.inc.147
                                        #   in Loop: Header=BB13_15 Depth=1
	incl	%ebp
	movzwl	%bp, %eax
	cmpl	%r14d, %eax
	jb	.LBB13_15
.LBB13_18:                              # %for.end.149
	movq	48(%rsp), %rdi          # 8-byte Reload
	callq	free
	movq	%r12, 24(%rbx)
	movl	%r13d, 16(%rbx)
	movq	%r15, %rdi
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	opj_jp2_free_pclr       # TAILCALL
.Lfunc_end13:
	.size	opj_jp2_apply_pclr, .Lfunc_end13-opj_jp2_apply_pclr
	.cfi_endproc

	.globl	opj_jp2_write_jp2h
	.align	16, 0x90
	.type	opj_jp2_write_jp2h,@function
opj_jp2_write_jp2h:                     # @opj_jp2_write_jp2h
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp151:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp152:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp153:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp154:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp155:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp156:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp157:
	.cfi_def_cfa_offset 160
.Ltmp158:
	.cfi_offset %rbx, -56
.Ltmp159:
	.cfi_offset %r12, -48
.Ltmp160:
	.cfi_offset %r13, -40
.Ltmp161:
	.cfi_offset %r14, -32
.Ltmp162:
	.cfi_offset %r15, -24
.Ltmp163:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rdi, %r12
	testq	%rsi, %rsi
	je	.LBB14_23
# BB#1:                                 # %cond.end
	testq	%r12, %r12
	je	.LBB14_24
# BB#2:                                 # %cond.end.4
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	testq	%rbx, %rbx
	je	.LBB14_25
# BB#3:                                 # %cond.end.8
	leaq	32(%rsp), %r13
	xorl	%esi, %esi
	movl	$72, %edx
	movq	%r13, %rdi
	callq	memset
	movl	36(%r12), %eax
	movq	$opj_jp2_write_ihdr, 32(%rsp)
	cmpl	$255, %eax
	jne	.LBB14_5
# BB#4:                                 # %if.then
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	movq	$opj_jp2_write_bpcc, 56(%rsp)
	movq	$opj_jp2_write_colr, 80(%rsp)
	movl	$3, %r14d
	jmp	.LBB14_6
.LBB14_5:                               # %if.else
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	movq	$opj_jp2_write_colr, 56(%rsp)
	movl	$2, %r14d
.LBB14_6:                               # %if.end
	leaq	28(%rsp), %rdi
	movl	$1785737832, %esi       # imm = 0x6A703268
	movl	$4, %edx
	callq	opj_write_bytes_LE
	xorl	%r15d, %r15d
	movl	$8, %ebp
	.align	16, 0x90
.LBB14_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	16(%r13), %rbx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	*(%r13)
	movq	%rax, 8(%r13)
	testq	%rax, %rax
	je	.LBB14_8
# BB#12:                                # %if.end.27
                                        #   in Loop: Header=BB14_7 Depth=1
	addl	(%rbx), %ebp
	incl	%r15d
	addq	$8, %rbx
	cmpl	%r14d, %r15d
	movq	%rbx, %r13
	jl	.LBB14_7
# BB#13:                                # %if.end.43
	leaq	24(%rsp), %r15
	movl	$4, %edx
	movq	%r15, %rdi
	movl	%ebp, %esi
	callq	opj_write_bytes_LE
	movl	$8, %edx
	movq	8(%rsp), %rbx           # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	16(%rsp), %r13          # 8-byte Reload
	movq	%r13, %rcx
	callq	opj_stream_write_data
	cmpq	$8, %rax
	jne	.LBB14_16
# BB#14:                                # %for.body.56.preheader
	leaq	48(%rsp), %rbp
	xorl	%r12d, %r12d
	movl	$1, %r15d
	.align	16, 0x90
.LBB14_15:                              # %for.body.56
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rsi
	movl	(%rbp), %edx
	movq	%rbx, %rdi
	movq	%r13, %rcx
	callq	opj_stream_write_data
	movl	(%rbp), %ecx
	cmpq	%rcx, %rax
	jne	.LBB14_16
# BB#17:                                # %if.end.66
                                        #   in Loop: Header=BB14_15 Depth=1
	incl	%r12d
	addq	$24, %rbp
	cmpl	%r14d, %r12d
	jl	.LBB14_15
	jmp	.LBB14_18
.LBB14_8:                               # %for.end.thread
	xorl	%ebp, %ebp
	movl	$1, %esi
	movl	$.L.str.5, %edx
	xorl	%eax, %eax
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	opj_event_msg
	leaq	40(%rsp), %rbx
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB14_9:                               # %for.body.33
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB14_11
# BB#10:                                # %if.then.36
                                        #   in Loop: Header=BB14_9 Depth=1
	callq	free
.LBB14_11:                              # %if.end.38
                                        #   in Loop: Header=BB14_9 Depth=1
	incl	%ebp
	addq	$24, %rbx
	cmpl	%r14d, %ebp
	jl	.LBB14_9
	jmp	.LBB14_22
.LBB14_16:                              # %if.end.50.thread
	xorl	%r15d, %r15d
	movl	$1, %esi
	movl	$.L.str.6, %edx
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	opj_event_msg
.LBB14_18:                              # %if.end.71
	leaq	40(%rsp), %rbx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB14_19:                              # %for.body.76
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB14_21
# BB#20:                                # %if.then.80
                                        #   in Loop: Header=BB14_19 Depth=1
	callq	free
.LBB14_21:                              # %if.end.82
                                        #   in Loop: Header=BB14_19 Depth=1
	incl	%ebp
	addq	$24, %rbx
	cmpl	%r14d, %ebp
	jl	.LBB14_19
.LBB14_22:                              # %cleanup
	movl	%r15d, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB14_23:                              # %cond.false
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	movl	$1322, %edx             # imm = 0x52A
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_write_jp2h, %ecx
	callq	__assert_fail
.LBB14_24:                              # %cond.false.3
	movl	$.L.str.3, %edi
	movl	$.L.str.2, %esi
	movl	$1323, %edx             # imm = 0x52B
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_write_jp2h, %ecx
	callq	__assert_fail
.LBB14_25:                              # %cond.false.7
	movl	$.L.str.4, %edi
	movl	$.L.str.2, %esi
	movl	$1324, %edx             # imm = 0x52C
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_write_jp2h, %ecx
	callq	__assert_fail
.Lfunc_end14:
	.size	opj_jp2_write_jp2h, .Lfunc_end14-opj_jp2_write_jp2h
	.cfi_endproc

	.align	16, 0x90
	.type	opj_jp2_write_ihdr,@function
opj_jp2_write_ihdr:                     # @opj_jp2_write_ihdr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp164:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp165:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp166:
	.cfi_def_cfa_offset 32
.Ltmp167:
	.cfi_offset %rbx, -32
.Ltmp168:
	.cfi_offset %r14, -24
.Ltmp169:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	testq	%r15, %r15
	je	.LBB15_5
# BB#1:                                 # %cond.end
	testq	%r14, %r14
	je	.LBB15_6
# BB#2:                                 # %cond.end.4
	movl	$22, %edi
	callq	malloc
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB15_4
# BB#3:                                 # %if.end
	xorl	%esi, %esi
	movl	$22, %edx
	movq	%rbx, %rdi
	callq	memset
	movl	$22, %esi
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	opj_write_bytes_LE
	leaq	4(%rbx), %rdi
	movl	$1768449138, %esi       # imm = 0x69686472
	movl	$4, %edx
	callq	opj_write_bytes_LE
	leaq	8(%rbx), %rdi
	movl	28(%r15), %esi
	movl	$4, %edx
	callq	opj_write_bytes_LE
	leaq	12(%rbx), %rdi
	movl	24(%r15), %esi
	movl	$4, %edx
	callq	opj_write_bytes_LE
	leaq	16(%rbx), %rdi
	movl	32(%r15), %esi
	movl	$2, %edx
	callq	opj_write_bytes_LE
	leaq	18(%rbx), %rdi
	movl	36(%r15), %esi
	movl	$1, %edx
	callq	opj_write_bytes_LE
	leaq	19(%rbx), %rdi
	movl	40(%r15), %esi
	movl	$1, %edx
	callq	opj_write_bytes_LE
	leaq	20(%rbx), %rdi
	movl	44(%r15), %esi
	movl	$1, %edx
	callq	opj_write_bytes_LE
	movq	%rbx, %rdi
	addq	$21, %rdi
	movl	48(%r15), %esi
	movl	$1, %edx
	callq	opj_write_bytes_LE
	movl	$22, (%r14)
	movq	%rbx, %rax
.LBB15_4:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB15_5:                               # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.2, %esi
	movl	$565, %edx              # imm = 0x235
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_write_ihdr, %ecx
	callq	__assert_fail
.LBB15_6:                               # %cond.false.3
	movl	$.L.str.38, %edi
	movl	$.L.str.2, %esi
	movl	$566, %edx              # imm = 0x236
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_write_ihdr, %ecx
	callq	__assert_fail
.Lfunc_end15:
	.size	opj_jp2_write_ihdr, .Lfunc_end15-opj_jp2_write_ihdr
	.cfi_endproc

	.align	16, 0x90
	.type	opj_jp2_write_bpcc,@function
opj_jp2_write_bpcc:                     # @opj_jp2_write_bpcc
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
	pushq	%rax
.Ltmp176:
	.cfi_def_cfa_offset 64
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
	movq	%rsi, %r14
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB16_9
# BB#1:                                 # %cond.end
	testq	%r14, %r14
	je	.LBB16_10
# BB#2:                                 # %cond.end.4
	movl	32(%rbx), %r13d
	addl	$8, %r13d
	xorl	%eax, %eax
	cmpl	$-257, %r13d            # imm = 0xFFFFFFFFFFFFFEFF
	ja	.LBB16_8
# BB#3:                                 # %cond.end.10
	movslq	%r13d, %r12
	movq	%r12, %rdi
	callq	malloc
	movq	%rax, %r15
	xorl	%eax, %eax
	testq	%r15, %r15
	je	.LBB16_8
# BB#4:                                 # %if.end
	xorl	%esi, %esi
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	memset
	movl	$4, %edx
	movq	%r15, %rdi
	movl	%r13d, %esi
	callq	opj_write_bytes_LE
	leaq	4(%r15), %rdi
	movl	$1651532643, %esi       # imm = 0x62706363
	movl	$4, %edx
	callq	opj_write_bytes_LE
	cmpl	$0, 32(%rbx)
	je	.LBB16_7
# BB#5:                                 # %for.body.lr.ph
	movq	%r15, %r12
	addq	$8, %r12
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB16_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %eax
	movq	88(%rbx), %rcx
	leaq	(%rax,%rax,2), %rax
	movl	8(%rcx,%rax,4), %esi
	leaq	(%r12,%rbp), %rdi
	movl	$1, %edx
	callq	opj_write_bytes_LE
	incq	%rbp
	cmpl	32(%rbx), %ebp
	jb	.LBB16_6
.LBB16_7:                               # %for.end
	movl	%r13d, (%r14)
	movq	%r15, %rax
.LBB16_8:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB16_9:                               # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.2, %esi
	movl	$619, %edx              # imm = 0x26B
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_write_bpcc, %ecx
	callq	__assert_fail
.LBB16_10:                              # %cond.false.3
	movl	$.L.str.38, %edi
	movl	$.L.str.2, %esi
	movl	$620, %edx              # imm = 0x26C
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_write_bpcc, %ecx
	callq	__assert_fail
.Lfunc_end16:
	.size	opj_jp2_write_bpcc, .Lfunc_end16-opj_jp2_write_bpcc
	.cfi_endproc

	.align	16, 0x90
	.type	opj_jp2_write_colr,@function
opj_jp2_write_colr:                     # @opj_jp2_write_colr
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
	pushq	%rax
.Ltmp189:
	.cfi_def_cfa_offset 64
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
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB17_15
# BB#1:                                 # %cond.end
	testq	%rbp, %rbp
	je	.LBB17_16
# BB#2:                                 # %cond.end.4
	movl	52(%rbx), %eax
	leal	-1(%rax), %ecx
	cmpl	$2, %ecx
	jae	.LBB17_17
# BB#3:                                 # %cond.end.10
	movl	$15, %r15d
	xorl	%r12d, %r12d
	cmpl	$1, %eax
	je	.LBB17_7
# BB#4:                                 # %cond.end.10
	cmpl	$2, %eax
	jne	.LBB17_14
# BB#5:                                 # %sw.bb.12
	movl	136(%rbx), %r15d
	testl	%r15d, %r15d
	je	.LBB17_18
# BB#6:                                 # %cond.end.15
	addl	$11, %r15d
.LBB17_7:                               # %sw.epilog
	movl	%r15d, %r13d
	movq	%r13, %rdi
	callq	malloc
	movq	%rax, %r14
	xorl	%r12d, %r12d
	testq	%r14, %r14
	je	.LBB17_14
# BB#8:                                 # %if.end
	movq	%rbp, (%rsp)            # 8-byte Spill
	movq	%r14, %r12
	xorl	%esi, %esi
	movq	%r12, %rdi
	movq	%r13, %rdx
	callq	memset
	movl	$4, %edx
	movq	%r12, %rdi
	movl	%r15d, %esi
	callq	opj_write_bytes_LE
	leaq	4(%r14), %rdi
	movl	$1668246642, %esi       # imm = 0x636F6C72
	movl	$4, %edx
	callq	opj_write_bytes_LE
	leaq	8(%r14), %rdi
	movl	52(%rbx), %esi
	movl	$1, %edx
	callq	opj_write_bytes_LE
	leaq	9(%r14), %rdi
	movl	64(%rbx), %esi
	movl	$1, %edx
	callq	opj_write_bytes_LE
	leaq	10(%r14), %rdi
	movl	56(%rbx), %esi
	movl	$1, %edx
	callq	opj_write_bytes_LE
	addq	$11, %r14
	movl	52(%rbx), %eax
	cmpl	$1, %eax
	jne	.LBB17_9
# BB#19:                                # %if.then.36
	movl	60(%rbx), %esi
	movl	$4, %edx
	movq	%r14, %rdi
	callq	opj_write_bytes_LE
	jmp	.LBB17_13
.LBB17_9:                               # %if.end
	cmpl	$2, %eax
	jne	.LBB17_13
# BB#10:                                # %for.cond.preheader
	cmpl	$0, 136(%rbx)
	je	.LBB17_13
# BB#11:                                # %for.body.lr.ph
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB17_12:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %eax
	movq	128(%rbx), %rcx
	movzbl	(%rcx,%rax), %esi
	leaq	(%r14,%rbp), %rdi
	movl	$1, %edx
	callq	opj_write_bytes_LE
	incq	%rbp
	cmpl	136(%rbx), %ebp
	jb	.LBB17_12
.LBB17_13:                              # %if.end.49
	movq	(%rsp), %rax            # 8-byte Reload
	movl	%r15d, (%rax)
.LBB17_14:                              # %cleanup
	movq	%r12, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB17_15:                              # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.2, %esi
	movl	$688, %edx              # imm = 0x2B0
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_write_colr, %ecx
	callq	__assert_fail
.LBB17_16:                              # %cond.false.3
	movl	$.L.str.38, %edi
	movl	$.L.str.2, %esi
	movl	$689, %edx              # imm = 0x2B1
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_write_colr, %ecx
	callq	__assert_fail
.LBB17_17:                              # %cond.false.9
	movl	$.L.str.39, %edi
	movl	$.L.str.2, %esi
	movl	$690, %edx              # imm = 0x2B2
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_write_colr, %ecx
	callq	__assert_fail
.LBB17_18:                              # %cond.false.14
	movl	$.L.str.40, %edi
	movl	$.L.str.2, %esi
	movl	$697, %edx              # imm = 0x2B9
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_write_colr, %ecx
	callq	__assert_fail
.Lfunc_end17:
	.size	opj_jp2_write_colr, .Lfunc_end17-opj_jp2_write_colr
	.cfi_endproc

	.globl	opj_jp2_setup_decoder
	.align	16, 0x90
	.type	opj_jp2_setup_decoder,@function
opj_jp2_setup_decoder:                  # @opj_jp2_setup_decoder
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp196:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp197:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp198:
	.cfi_def_cfa_offset 32
.Ltmp199:
	.cfi_offset %rbx, -24
.Ltmp200:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	(%rbx), %rdi
	callq	opj_j2k_setup_decoder
	movb	$0, 160(%rbx)
	movl	8248(%r14), %eax
	andl	$1, %eax
	movl	%eax, 168(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end18:
	.size	opj_jp2_setup_decoder, .Lfunc_end18-opj_jp2_setup_decoder
	.cfi_endproc

	.globl	opj_jp2_setup_encoder
	.align	16, 0x90
	.type	opj_jp2_setup_encoder,@function
opj_jp2_setup_encoder:                  # @opj_jp2_setup_encoder
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp201:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp202:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp203:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp204:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp205:
	.cfi_def_cfa_offset 48
.Ltmp206:
	.cfi_offset %rbx, -40
.Ltmp207:
	.cfi_offset %r12, -32
.Ltmp208:
	.cfi_offset %r14, -24
.Ltmp209:
	.cfi_offset %r15, -16
	movq	%rcx, %r12
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB19_38
# BB#1:                                 # %entry
	testq	%r14, %r14
	je	.LBB19_38
# BB#2:                                 # %entry
	testq	%r15, %r15
	je	.LBB19_38
# BB#3:                                 # %if.end
	movl	16(%r15), %eax
	decl	%eax
	cmpl	$16384, %eax            # imm = 0x4000
	jb	.LBB19_6
# BB#4:                                 # %if.then.7
	movl	$1, %esi
	movl	$.L.str.7, %edx
	jmp	.LBB19_5
.LBB19_6:                               # %if.end.8
	movq	(%rbx), %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	movq	%r12, %rcx
	callq	opj_j2k_setup_encoder
	movq	$1785737760, 68(%rbx)   # imm = 0x6A703220
	movl	$1, 76(%rbx)
	movl	$4, %edi
	callq	malloc
	movq	%rax, 80(%rbx)
	testq	%rax, %rax
	je	.LBB19_7
# BB#9:                                 # %if.end.21
	movl	$1785737760, (%rax)     # imm = 0x6A703220
	movl	16(%r15), %eax
	movl	%eax, 32(%rbx)
	shlq	$2, %rax
	leaq	(%rax,%rax,2), %rdi
	callq	malloc
	movq	%rax, 88(%rbx)
	testq	%rax, %rax
	je	.LBB19_10
# BB#11:                                # %if.end.43
	movl	12(%r15), %ecx
	subl	4(%r15), %ecx
	movl	%ecx, 28(%rbx)
	movl	8(%r15), %ecx
	subl	(%r15), %ecx
	movl	%ecx, 24(%rbx)
	movq	24(%r15), %r8
	movl	24(%r8), %esi
	movl	32(%r8), %r9d
	shll	$7, %r9d
	leal	-1(%rsi,%r9), %ecx
	movl	%ecx, 36(%rbx)
	movl	16(%r15), %r10d
	cmpq	$2, %r10
	jb	.LBB19_22
# BB#12:                                # %for.body.lr.ph
	movl	$1, %edx
	testb	$1, %r10b
	jne	.LBB19_15
# BB#13:                                # %for.body.prol
	movl	$2, %edx
	cmpl	88(%r8), %esi
	je	.LBB19_15
# BB#14:                                # %if.then.63.prol
	movl	$255, 36(%rbx)
	movl	$2, %edx
.LBB19_15:                              # %for.body.lr.ph.split
	cmpl	$2, %r10d
	je	.LBB19_22
# BB#16:                                # %for.body.lr.ph.split.split
	movq	%rdx, %rdi
	shlq	$6, %rdi
	leaq	88(%rdi,%r8), %rdi
	.align	16, 0x90
.LBB19_17:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	-64(%rdi), %esi
	je	.LBB19_19
# BB#18:                                # %if.then.63
                                        #   in Loop: Header=BB19_17 Depth=1
	movl	$255, 36(%rbx)
.LBB19_19:                              # %if.end.65
                                        #   in Loop: Header=BB19_17 Depth=1
	cmpl	(%rdi), %esi
	je	.LBB19_21
# BB#20:                                # %if.then.63.1
                                        #   in Loop: Header=BB19_17 Depth=1
	movl	$255, 36(%rbx)
.LBB19_21:                              # %if.end.65.1
                                        #   in Loop: Header=BB19_17 Depth=1
	addq	$2, %rdx
	subq	$-128, %rdi
	cmpq	%r10, %rdx
	jb	.LBB19_17
.LBB19_22:                              # %for.end
	movq	$7, 40(%rbx)
	movl	$0, 48(%rbx)
	testl	%r10d, %r10d
	je	.LBB19_29
# BB#23:                                # %for.body.70.lr.ph
	leal	-1(%rsi,%r9), %edx
	movl	%edx, 8(%rax)
	cmpl	$2, %r10d
	jb	.LBB19_29
# BB#24:                                # %for.body.70.for.body.70_crit_edge.preheader
	movl	$1, %esi
	testb	$1, %r10b
	jne	.LBB19_26
# BB#25:                                # %for.body.70.for.body.70_crit_edge.prol
	movl	88(%r8), %edx
	movl	96(%r8), %esi
	shll	$7, %esi
	leal	-1(%rdx,%rsi), %edx
	movl	%edx, 20(%rax)
	movl	$2, %esi
.LBB19_26:                              # %for.body.70.for.body.70_crit_edge.preheader.split
	cmpl	$2, %r10d
	je	.LBB19_29
# BB#27:                                # %for.body.70.for.body.70_crit_edge.preheader.split.split
	leaq	(%rsi,%rsi,2), %rdx
	leaq	20(%rax,%rdx,4), %rax
	movq	%rsi, %rdx
	shlq	$6, %rdx
	leaq	96(%rdx,%r8), %rdx
	.align	16, 0x90
.LBB19_28:                              # %for.body.70.for.body.70_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	movl	-72(%rdx), %edi
	movl	-64(%rdx), %ecx
	shll	$7, %ecx
	leal	-1(%rdi,%rcx), %ecx
	movl	%ecx, -12(%rax)
	movl	-8(%rdx), %ecx
	movl	(%rdx), %edi
	shll	$7, %edi
	leal	-1(%rcx,%rdi), %ecx
	movl	%ecx, (%rax)
	addq	$2, %rsi
	addq	$24, %rax
	subq	$-128, %rdx
	cmpq	%r10, %rsi
	jb	.LBB19_28
.LBB19_29:                              # %for.end.87
	cmpl	$0, 40(%r15)
	je	.LBB19_31
# BB#30:                                # %if.then.89
	movl	$2, 52(%rbx)
	movl	$0, 60(%rbx)
	jmp	.LBB19_37
.LBB19_7:                               # %if.then.18
	movq	$0, 80(%rbx)
	jmp	.LBB19_8
.LBB19_10:                              # %if.then.40
	movq	$0, 88(%rbx)
.LBB19_8:                               # %if.then.18
	movl	$1, %esi
	movl	$.L.str.8, %edx
.LBB19_5:                               # %if.then.7
	xorl	%eax, %eax
	movq	%r12, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmp	opj_event_msg           # TAILCALL
.LBB19_31:                              # %if.else
	movl	$1, 52(%rbx)
	movl	20(%r15), %eax
	cmpl	$3, %eax
	je	.LBB19_36
# BB#32:                                # %if.else
	cmpl	$2, %eax
	jne	.LBB19_33
# BB#35:                                # %if.then.99
	movl	$17, 60(%rbx)
	jmp	.LBB19_37
.LBB19_36:                              # %if.then.105
	movl	$18, 60(%rbx)
	jmp	.LBB19_37
.LBB19_33:                              # %if.else
	cmpl	$1, %eax
	jne	.LBB19_37
# BB#34:                                # %if.then.93
	movl	$16, 60(%rbx)
.LBB19_37:                              # %if.end.110
	movl	$0, 64(%rbx)
	movl	$0, 56(%rbx)
	movl	18700(%r14), %eax
	movl	%eax, 112(%rbx)
.LBB19_38:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end19:
	.size	opj_jp2_setup_encoder, .Lfunc_end19-opj_jp2_setup_encoder
	.cfi_endproc

	.globl	opj_jp2_encode
	.align	16, 0x90
	.type	opj_jp2_encode,@function
opj_jp2_encode:                         # @opj_jp2_encode
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	opj_j2k_encode          # TAILCALL
.Lfunc_end20:
	.size	opj_jp2_encode, .Lfunc_end20-opj_jp2_encode
	.cfi_endproc

	.globl	opj_jp2_end_decompress
	.align	16, 0x90
	.type	opj_jp2_end_decompress,@function
opj_jp2_end_decompress:                 # @opj_jp2_end_decompress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp210:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp211:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp212:
	.cfi_def_cfa_offset 32
.Ltmp213:
	.cfi_offset %rbx, -32
.Ltmp214:
	.cfi_offset %r14, -24
.Ltmp215:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB21_5
# BB#1:                                 # %cond.end
	testq	%r15, %r15
	je	.LBB21_6
# BB#2:                                 # %cond.end.4
	testq	%r14, %r14
	je	.LBB21_7
# BB#3:                                 # %opj_jp2_setup_end_header_reading.exit
	movq	16(%rbx), %rdi
	movl	$opj_jp2_read_header_procedure, %esi
	callq	opj_procedure_list_add_procedure
	movq	16(%rbx), %rsi
	movq	%rbx, %rdi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	opj_jp2_exec
	testl	%eax, %eax
	je	.LBB21_4
# BB#8:                                 # %if.end
	movq	(%rbx), %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	opj_j2k_end_decompress  # TAILCALL
.LBB21_4:                               # %return
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB21_5:                               # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.2, %esi
	movl	$1640, %edx             # imm = 0x668
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_end_decompress, %ecx
	callq	__assert_fail
.LBB21_6:                               # %cond.false.3
	movl	$.L.str.9, %edi
	movl	$.L.str.2, %esi
	movl	$1641, %edx             # imm = 0x669
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_end_decompress, %ecx
	callq	__assert_fail
.LBB21_7:                               # %cond.false.7
	movl	$.L.str.4, %edi
	movl	$.L.str.2, %esi
	movl	$1642, %edx             # imm = 0x66A
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_end_decompress, %ecx
	callq	__assert_fail
.Lfunc_end21:
	.size	opj_jp2_end_decompress, .Lfunc_end21-opj_jp2_end_decompress
	.cfi_endproc

	.align	16, 0x90
	.type	opj_jp2_exec,@function
opj_jp2_exec:                           # @opj_jp2_exec
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp216:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp217:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp218:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp219:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp220:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp221:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp222:
	.cfi_def_cfa_offset 64
.Ltmp223:
	.cfi_offset %rbx, -56
.Ltmp224:
	.cfi_offset %r12, -48
.Ltmp225:
	.cfi_offset %r13, -40
.Ltmp226:
	.cfi_offset %r14, -32
.Ltmp227:
	.cfi_offset %r15, -24
.Ltmp228:
	.cfi_offset %rbp, -16
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %rbx
	movq	%rdi, %r13
	testq	%rbx, %rbx
	je	.LBB22_11
# BB#1:                                 # %cond.end
	testq	%r13, %r13
	je	.LBB22_12
# BB#2:                                 # %cond.end.4
	testq	%r12, %r12
	je	.LBB22_13
# BB#3:                                 # %cond.end.8
	testq	%r15, %r15
	je	.LBB22_14
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
	je	.LBB22_10
# BB#5:                                 # %for.body.lr.ph
	movl	$1, %r14d
	.align	16, 0x90
.LBB22_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	testl	%r14d, %r14d
	je	.LBB22_7
# BB#8:                                 # %land.rhs
                                        #   in Loop: Header=BB22_6 Depth=1
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	*(%rbx)
	testl	%eax, %eax
	setne	%al
	jmp	.LBB22_9
	.align	16, 0x90
.LBB22_7:                               #   in Loop: Header=BB22_6 Depth=1
	xorl	%eax, %eax
.LBB22_9:                               # %land.end
                                        #   in Loop: Header=BB22_6 Depth=1
	movzbl	%al, %r14d
	addq	$8, %rbx
	decl	%ebp
	jne	.LBB22_6
.LBB22_10:                              # %for.end
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
.LBB22_11:                              # %cond.false
	movl	$.L.str.53, %edi
	movl	$.L.str.2, %esi
	movl	$1873, %edx             # imm = 0x751
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_exec, %ecx
	callq	__assert_fail
.LBB22_12:                              # %cond.false.3
	movl	$.L.str.3, %edi
	movl	$.L.str.2, %esi
	movl	$1874, %edx             # imm = 0x752
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_exec, %ecx
	callq	__assert_fail
.LBB22_13:                              # %cond.false.7
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	movl	$1875, %edx             # imm = 0x753
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_exec, %ecx
	callq	__assert_fail
.LBB22_14:                              # %cond.false.11
	movl	$.L.str.4, %edi
	movl	$.L.str.2, %esi
	movl	$1876, %edx             # imm = 0x754
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_exec, %ecx
	callq	__assert_fail
.Lfunc_end22:
	.size	opj_jp2_exec, .Lfunc_end22-opj_jp2_exec
	.cfi_endproc

	.globl	opj_jp2_end_compress
	.align	16, 0x90
	.type	opj_jp2_end_compress,@function
opj_jp2_end_compress:                   # @opj_jp2_end_compress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp229:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp230:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp231:
	.cfi_def_cfa_offset 32
.Ltmp232:
	.cfi_offset %rbx, -32
.Ltmp233:
	.cfi_offset %r14, -24
.Ltmp234:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB23_9
# BB#1:                                 # %cond.end
	testq	%r15, %r15
	je	.LBB23_10
# BB#2:                                 # %cond.end.4
	testq	%r14, %r14
	je	.LBB23_11
# BB#3:                                 # %cond.end.i
	cmpl	$0, 112(%rbx)
	je	.LBB23_5
# BB#4:                                 # %if.then.i
	movq	16(%rbx), %rdi
	movl	$opj_jpip_write_iptr, %esi
	callq	opj_procedure_list_add_procedure
.LBB23_5:                               # %if.end.i
	movq	16(%rbx), %rdi
	movl	$opj_jp2_write_jp2c, %esi
	callq	opj_procedure_list_add_procedure
	cmpl	$0, 112(%rbx)
	je	.LBB23_7
# BB#6:                                 # %if.then.5.i
	movq	16(%rbx), %rdi
	movl	$opj_jpip_write_cidx, %esi
	callq	opj_procedure_list_add_procedure
	movq	16(%rbx), %rdi
	movl	$opj_jpip_write_fidx, %esi
	callq	opj_procedure_list_add_procedure
.LBB23_7:                               # %opj_jp2_setup_end_header_writing.exit
	movq	(%rbx), %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	opj_j2k_end_compress
	testl	%eax, %eax
	je	.LBB23_8
# BB#12:                                # %if.end
	movq	16(%rbx), %rsi
	movq	%rbx, %rdi
	movq	%r15, %rdx
	movq	%r14, %rcx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	opj_jp2_exec            # TAILCALL
.LBB23_8:                               # %return
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB23_9:                               # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.2, %esi
	movl	$1661, %edx             # imm = 0x67D
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_end_compress, %ecx
	callq	__assert_fail
.LBB23_10:                              # %cond.false.3
	movl	$.L.str.9, %edi
	movl	$.L.str.2, %esi
	movl	$1662, %edx             # imm = 0x67E
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_end_compress, %ecx
	callq	__assert_fail
.LBB23_11:                              # %cond.false.7
	movl	$.L.str.4, %edi
	movl	$.L.str.2, %esi
	movl	$1663, %edx             # imm = 0x67F
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_end_compress, %ecx
	callq	__assert_fail
.Lfunc_end23:
	.size	opj_jp2_end_compress, .Lfunc_end23-opj_jp2_end_compress
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI24_0:
	.quad	2                       # 0x2
	.quad	3                       # 0x3
.LCPI24_1:
	.quad	6                       # 0x6
	.quad	7                       # 0x7
.LCPI24_2:
	.quad	4                       # 0x4
	.quad	5                       # 0x5
.LCPI24_3:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.text
	.globl	opj_jp2_default_validation
	.align	16, 0x90
	.type	opj_jp2_default_validation,@function
opj_jp2_default_validation:             # @opj_jp2_default_validation
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp235:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp236:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp237:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp238:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp239:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp240:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp241:
	.cfi_def_cfa_offset 64
.Ltmp242:
	.cfi_offset %rbx, -56
.Ltmp243:
	.cfi_offset %r12, -48
.Ltmp244:
	.cfi_offset %r13, -40
.Ltmp245:
	.cfi_offset %r14, -32
.Ltmp246:
	.cfi_offset %r15, -24
.Ltmp247:
	.cfi_offset %rbp, -16
	testq	%rdi, %rdi
	je	.LBB24_11
# BB#1:                                 # %cond.end
	testq	%rsi, %rsi
	je	.LBB24_12
# BB#2:                                 # %cond.end.4
	testq	%rdx, %rdx
	je	.LBB24_13
# BB#3:                                 # %cond.end.8
	movl	32(%rdi), %r8d
	movl	120(%rdi), %eax
	orl	116(%rdi), %eax
	sete	%al
	cmpq	$0, (%rdi)
	setne	%cl
	andb	%al, %cl
	cmpq	$0, 16(%rdi)
	setne	%al
	andb	%cl, %al
	cmpq	$0, 8(%rdi)
	setne	%cl
	andb	%al, %cl
	cmpl	$0, 76(%rdi)
	setne	%al
	andb	%cl, %al
	cmpl	$0, 28(%rdi)
	setne	%cl
	andb	%al, %cl
	cmpl	$0, 24(%rdi)
	setne	%al
	andb	%cl, %al
	movzbl	%al, %ebx
	testq	%r8, %r8
	je	.LBB24_10
# BB#4:                                 # %for.body.lr.ph
	movq	88(%rdi), %r11
	movl	%r8d, %eax
	andl	$7, %eax
	xorl	%r10d, %r10d
	cmpl	%eax, %r8d
	movl	$-1, %ecx
	movd	%ecx, %xmm1
	movd	%ebx, %xmm0
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	pshufd	$80, %xmm1, %xmm1       # xmm1 = xmm1[0,0,1,1]
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	pcmpeqd	%xmm1, %xmm1
	je	.LBB24_7
# BB#5:                                 # %vector.body.preheader
	movq	%r8, %r10
	subq	%rax, %r10
	leaq	8(%r11), %rax
	movl	%r8d, %ecx
	andl	$7, %ecx
	movq	%r8, %r9
	subq	%rcx, %r9
	pcmpeqd	%xmm1, %xmm1
	xorl	%ecx, %ecx
	movl	$1, %ebx
	movd	%rbx, %xmm2
	pslldq	$8, %xmm2               # xmm2 = zero,zero,zero,zero,zero,zero,zero,zero,xmm2[0,1,2,3,4,5,6,7]
	movdqa	.LCPI24_0(%rip), %xmm8  # xmm8 = [2,3]
	movdqa	.LCPI24_1(%rip), %xmm9  # xmm9 = [6,7]
	movdqa	.LCPI24_2(%rip), %xmm10 # xmm10 = [4,5]
	pxor	%xmm11, %xmm11
	movdqa	.LCPI24_3(%rip), %xmm7  # xmm7 = [1,1,1,1]
	.align	16, 0x90
.LBB24_6:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movd	%rcx, %xmm3
	pshufd	$68, %xmm3, %xmm3       # xmm3 = xmm3[0,1,0,1]
	movdqa	%xmm3, %xmm4
	paddq	%xmm2, %xmm4
	movdqa	%xmm3, %xmm5
	paddq	%xmm8, %xmm5
	movdqa	%xmm3, %xmm6
	paddq	%xmm9, %xmm6
	paddq	%xmm10, %xmm3
	pshufd	$78, %xmm4, %xmm4       # xmm4 = xmm4[2,3,0,1]
	movd	%xmm4, %rbx
	leaq	(%rbx,%rbx,2), %r15
	movd	%xmm5, %rdx
	leaq	(%rdx,%rdx,2), %r14
	pshufd	$78, %xmm5, %xmm4       # xmm4 = xmm5[2,3,0,1]
	movd	%xmm4, %rdx
	leaq	(%rdx,%rdx,2), %rdx
	movd	%xmm3, %rbx
	leaq	(%rbx,%rbx,2), %r12
	pshufd	$78, %xmm3, %xmm3       # xmm3 = xmm3[2,3,0,1]
	movd	%xmm3, %rbx
	leaq	(%rbx,%rbx,2), %r13
	movd	%xmm6, %rbx
	leaq	(%rbx,%rbx,2), %rbx
	pshufd	$78, %xmm6, %xmm3       # xmm3 = xmm6[2,3,0,1]
	movd	%xmm3, %rbp
	leaq	(%rbp,%rbp,2), %rbp
	movd	8(%r11,%rdx,4), %xmm3   # xmm3 = mem[0],zero,zero,zero
	movd	8(%r11,%r15,4), %xmm4   # xmm4 = mem[0],zero,zero,zero
	punpckldq	%xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1]
	movd	8(%r11,%r14,4), %xmm3   # xmm3 = mem[0],zero,zero,zero
	movd	(%rax), %xmm5           # xmm5 = mem[0],zero,zero,zero
	punpckldq	%xmm3, %xmm5    # xmm5 = xmm5[0],xmm3[0],xmm5[1],xmm3[1]
	punpckldq	%xmm4, %xmm5    # xmm5 = xmm5[0],xmm4[0],xmm5[1],xmm4[1]
	movd	8(%r11,%rbx,4), %xmm3   # xmm3 = mem[0],zero,zero,zero
	movd	8(%r11,%r12,4), %xmm4   # xmm4 = mem[0],zero,zero,zero
	punpckldq	%xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1]
	movd	8(%r11,%rbp,4), %xmm3   # xmm3 = mem[0],zero,zero,zero
	movd	8(%r11,%r13,4), %xmm6   # xmm6 = mem[0],zero,zero,zero
	punpckldq	%xmm3, %xmm6    # xmm6 = xmm6[0],xmm3[0],xmm6[1],xmm3[1]
	punpckldq	%xmm6, %xmm4    # xmm4 = xmm4[0],xmm6[0],xmm4[1],xmm6[1]
	pcmpeqd	%xmm11, %xmm5
	pandn	%xmm0, %xmm5
	pcmpeqd	%xmm11, %xmm4
	pandn	%xmm1, %xmm4
	movdqa	%xmm5, %xmm0
	pand	%xmm7, %xmm0
	movdqa	%xmm4, %xmm1
	pand	%xmm7, %xmm1
	addq	$8, %rcx
	addq	$96, %rax
	cmpq	%rcx, %r9
	jne	.LBB24_6
.LBB24_7:                               # %middle.block
	pand	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	pand	%xmm0, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	pand	%xmm1, %xmm0
	movd	%xmm0, %ebx
	cmpq	%r10, %r8
	je	.LBB24_10
# BB#8:                                 # %for.body.preheader
	leaq	(%r10,%r10,2), %rax
	leaq	8(%r11,%rax,4), %rax
	.align	16, 0x90
.LBB24_9:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%rax)
	setne	%cl
	movzbl	%cl, %ecx
	andl	%ecx, %ebx
	incq	%r10
	addq	$12, %rax
	cmpq	%r8, %r10
	jb	.LBB24_9
.LBB24_10:                              # %for.end
	movl	52(%rdi), %eax
	decl	%eax
	cmpl	$2, %eax
	sbbl	%ebp, %ebp
	movq	%rsi, %rdi
	callq	opj_stream_has_seek
	andl	%ebx, %eax
	andl	%ebp, %eax
	andl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB24_11:                              # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.2, %esi
	movl	$1713, %edx             # imm = 0x6B1
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_default_validation, %ecx
	callq	__assert_fail
.LBB24_12:                              # %cond.false.3
	movl	$.L.str.9, %edi
	movl	$.L.str.2, %esi
	movl	$1714, %edx             # imm = 0x6B2
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_default_validation, %ecx
	callq	__assert_fail
.LBB24_13:                              # %cond.false.7
	movl	$.L.str.4, %edi
	movl	$.L.str.2, %esi
	movl	$1715, %edx             # imm = 0x6B3
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_default_validation, %ecx
	callq	__assert_fail
.Lfunc_end24:
	.size	opj_jp2_default_validation, .Lfunc_end24-opj_jp2_default_validation
	.cfi_endproc

	.globl	opj_jp2_start_compress
	.align	16, 0x90
	.type	opj_jp2_start_compress,@function
opj_jp2_start_compress:                 # @opj_jp2_start_compress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp248:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp249:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp250:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp251:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp252:
	.cfi_def_cfa_offset 48
.Ltmp253:
	.cfi_offset %rbx, -40
.Ltmp254:
	.cfi_offset %r12, -32
.Ltmp255:
	.cfi_offset %r14, -24
.Ltmp256:
	.cfi_offset %r15, -16
	movq	%rcx, %r15
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB25_8
# BB#1:                                 # %cond.end
	testq	%r12, %r12
	je	.LBB25_9
# BB#2:                                 # %cond.end.4
	testq	%r15, %r15
	je	.LBB25_10
# BB#3:                                 # %opj_jp2_setup_encoding_validation.exit
	movq	8(%rbx), %rdi
	movl	$opj_jp2_default_validation, %esi
	callq	opj_procedure_list_add_procedure
	movq	8(%rbx), %rsi
	movq	%rbx, %rdi
	movq	%r12, %rdx
	movq	%r15, %rcx
	callq	opj_jp2_exec
	testl	%eax, %eax
	je	.LBB25_7
# BB#4:                                 # %cond.end.i
	movq	16(%rbx), %rdi
	movl	$opj_jp2_write_jp, %esi
	callq	opj_procedure_list_add_procedure
	movq	16(%rbx), %rdi
	movl	$opj_jp2_write_ftyp, %esi
	callq	opj_procedure_list_add_procedure
	movq	16(%rbx), %rdi
	movl	$opj_jp2_write_jp2h, %esi
	callq	opj_procedure_list_add_procedure
	cmpl	$0, 112(%rbx)
	je	.LBB25_6
# BB#5:                                 # %if.then.i
	movq	16(%rbx), %rdi
	movl	$opj_jpip_skip_iptr, %esi
	callq	opj_procedure_list_add_procedure
.LBB25_6:                               # %opj_jp2_setup_header_writing.exit
	movq	16(%rbx), %rdi
	movl	$opj_jp2_skip_jp2c, %esi
	callq	opj_procedure_list_add_procedure
	movq	16(%rbx), %rsi
	movq	%rbx, %rdi
	movq	%r12, %rdx
	movq	%r15, %rcx
	callq	opj_jp2_exec
	testl	%eax, %eax
	je	.LBB25_7
# BB#11:                                # %if.end.12
	movq	(%rbx), %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	movq	%r15, %rcx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmp	opj_j2k_start_compress  # TAILCALL
.LBB25_7:                               # %return
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB25_8:                               # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.2, %esi
	movl	$1898, %edx             # imm = 0x76A
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_start_compress, %ecx
	callq	__assert_fail
.LBB25_9:                               # %cond.false.3
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	movl	$1899, %edx             # imm = 0x76B
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_start_compress, %ecx
	callq	__assert_fail
.LBB25_10:                              # %cond.false.7
	movl	$.L.str.4, %edi
	movl	$.L.str.2, %esi
	movl	$1900, %edx             # imm = 0x76C
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_start_compress, %ecx
	callq	__assert_fail
.Lfunc_end25:
	.size	opj_jp2_start_compress, .Lfunc_end25-opj_jp2_start_compress
	.cfi_endproc

	.globl	opj_jp2_skip_jp2c
	.align	16, 0x90
	.type	opj_jp2_skip_jp2c,@function
opj_jp2_skip_jp2c:                      # @opj_jp2_skip_jp2c
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp257:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp258:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp259:
	.cfi_def_cfa_offset 32
.Ltmp260:
	.cfi_offset %rbx, -32
.Ltmp261:
	.cfi_offset %r14, -24
.Ltmp262:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	testq	%r15, %r15
	je	.LBB26_4
# BB#1:                                 # %cond.end
	testq	%rbx, %rbx
	je	.LBB26_5
# BB#2:                                 # %cond.end.4
	testq	%r14, %r14
	je	.LBB26_6
# BB#3:                                 # %cond.end.8
	movq	%rbx, %rdi
	callq	opj_stream_tell
	movq	%rax, 96(%r15)
	movl	$8, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	opj_stream_skip
	cmpq	$8, %rax
	sete	%al
	movzbl	%al, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB26_4:                               # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.2, %esi
	movl	$2075, %edx             # imm = 0x81B
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_skip_jp2c, %ecx
	callq	__assert_fail
.LBB26_5:                               # %cond.false.3
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	movl	$2076, %edx             # imm = 0x81C
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_skip_jp2c, %ecx
	callq	__assert_fail
.LBB26_6:                               # %cond.false.7
	movl	$.L.str.4, %edi
	movl	$.L.str.2, %esi
	movl	$2077, %edx             # imm = 0x81D
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_skip_jp2c, %ecx
	callq	__assert_fail
.Lfunc_end26:
	.size	opj_jp2_skip_jp2c, .Lfunc_end26-opj_jp2_skip_jp2c
	.cfi_endproc

	.globl	opj_jp2_read_header
	.align	16, 0x90
	.type	opj_jp2_read_header,@function
opj_jp2_read_header:                    # @opj_jp2_read_header
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp263:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp264:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp265:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp266:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp267:
	.cfi_def_cfa_offset 48
.Ltmp268:
	.cfi_offset %rbx, -40
.Ltmp269:
	.cfi_offset %r12, -32
.Ltmp270:
	.cfi_offset %r14, -24
.Ltmp271:
	.cfi_offset %r15, -16
	movq	%rcx, %r15
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r12
	testq	%rbx, %rbx
	je	.LBB27_6
# BB#1:                                 # %cond.end
	testq	%r12, %r12
	je	.LBB27_7
# BB#2:                                 # %cond.end.4
	testq	%r15, %r15
	je	.LBB27_8
# BB#3:                                 # %opj_jp2_setup_header_reading.exit
	movq	16(%rbx), %rdi
	movl	$opj_jp2_read_header_procedure, %esi
	callq	opj_procedure_list_add_procedure
	movq	8(%rbx), %rsi
	movq	%rbx, %rdi
	movq	%r12, %rdx
	movq	%r15, %rcx
	callq	opj_jp2_exec
	testl	%eax, %eax
	je	.LBB27_5
# BB#4:                                 # %if.end
	movq	16(%rbx), %rsi
	movq	%rbx, %rdi
	movq	%r12, %rdx
	movq	%r15, %rcx
	callq	opj_jp2_exec
	testl	%eax, %eax
	je	.LBB27_5
# BB#9:                                 # %if.end.12
	movq	(%rbx), %rsi
	movq	%r12, %rdi
	movq	%r14, %rdx
	movq	%r15, %rcx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmp	opj_j2k_read_header     # TAILCALL
.LBB27_5:                               # %return
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB27_6:                               # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.2, %esi
	movl	$2248, %edx             # imm = 0x8C8
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_read_header, %ecx
	callq	__assert_fail
.LBB27_7:                               # %cond.false.3
	movl	$.L.str.10, %edi
	movl	$.L.str.2, %esi
	movl	$2249, %edx             # imm = 0x8C9
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_read_header, %ecx
	callq	__assert_fail
.LBB27_8:                               # %cond.false.7
	movl	$.L.str.4, %edi
	movl	$.L.str.2, %esi
	movl	$2250, %edx             # imm = 0x8CA
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_read_header, %ecx
	callq	__assert_fail
.Lfunc_end27:
	.size	opj_jp2_read_header, .Lfunc_end27-opj_jp2_read_header
	.cfi_endproc

	.globl	opj_jp2_read_tile_header
	.align	16, 0x90
	.type	opj_jp2_read_tile_header,@function
opj_jp2_read_tile_header:               # @opj_jp2_read_tile_header
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	opj_j2k_read_tile_header # TAILCALL
.Lfunc_end28:
	.size	opj_jp2_read_tile_header, .Lfunc_end28-opj_jp2_read_tile_header
	.cfi_endproc

	.globl	opj_jp2_write_tile
	.align	16, 0x90
	.type	opj_jp2_write_tile,@function
opj_jp2_write_tile:                     # @opj_jp2_write_tile
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	opj_j2k_write_tile      # TAILCALL
.Lfunc_end29:
	.size	opj_jp2_write_tile, .Lfunc_end29-opj_jp2_write_tile
	.cfi_endproc

	.globl	opj_jp2_decode_tile
	.align	16, 0x90
	.type	opj_jp2_decode_tile,@function
opj_jp2_decode_tile:                    # @opj_jp2_decode_tile
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	opj_j2k_decode_tile     # TAILCALL
.Lfunc_end30:
	.size	opj_jp2_decode_tile, .Lfunc_end30-opj_jp2_decode_tile
	.cfi_endproc

	.globl	opj_jp2_destroy
	.align	16, 0x90
	.type	opj_jp2_destroy,@function
opj_jp2_destroy:                        # @opj_jp2_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp272:
	.cfi_def_cfa_offset 16
.Ltmp273:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB31_26
# BB#1:                                 # %if.then
	movq	(%rbx), %rdi
	callq	opj_j2k_destroy
	movq	$0, (%rbx)
	movq	88(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB31_3
# BB#2:                                 # %if.then.3
	callq	free
	movq	$0, 88(%rbx)
.LBB31_3:                               # %if.end
	movq	80(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB31_5
# BB#4:                                 # %if.then.7
	callq	free
	movq	$0, 80(%rbx)
.LBB31_5:                               # %if.end.10
	movq	128(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB31_7
# BB#6:                                 # %if.then.12
	callq	free
	movq	$0, 128(%rbx)
.LBB31_7:                               # %if.end.17
	movq	144(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB31_11
# BB#8:                                 # %if.then.20
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	.LBB31_10
# BB#9:                                 # %if.then.24
	movq	%rax, %rdi
	callq	free
	movq	144(%rbx), %rdi
	movq	$0, (%rdi)
.LBB31_10:                              # %if.end.31
	callq	free
	movq	$0, 144(%rbx)
.LBB31_11:                              # %if.end.36
	movq	152(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB31_21
# BB#12:                                # %if.then.39
	movq	24(%rdi), %rax
	testq	%rax, %rax
	je	.LBB31_14
# BB#13:                                # %if.then.43
	movq	%rax, %rdi
	callq	free
	movq	152(%rbx), %rdi
	movq	$0, 24(%rdi)
.LBB31_14:                              # %if.end.50
	movq	8(%rdi), %rax
	testq	%rax, %rax
	je	.LBB31_16
# BB#15:                                # %if.then.54
	movq	%rax, %rdi
	callq	free
	movq	152(%rbx), %rdi
	movq	$0, 8(%rdi)
.LBB31_16:                              # %if.end.61
	movq	16(%rdi), %rax
	testq	%rax, %rax
	je	.LBB31_18
# BB#17:                                # %if.then.65
	movq	%rax, %rdi
	callq	free
	movq	152(%rbx), %rdi
	movq	$0, 16(%rdi)
.LBB31_18:                              # %if.end.72
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	.LBB31_20
# BB#19:                                # %if.then.76
	movq	%rax, %rdi
	callq	free
	movq	152(%rbx), %rdi
	movq	$0, (%rdi)
.LBB31_20:                              # %if.end.83
	callq	free
	movq	$0, 152(%rbx)
.LBB31_21:                              # %if.end.88
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB31_23
# BB#22:                                # %if.then.90
	callq	opj_procedure_list_destroy
	movq	$0, 8(%rbx)
.LBB31_23:                              # %if.end.93
	movq	16(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB31_25
# BB#24:                                # %if.then.95
	callq	opj_procedure_list_destroy
	movq	$0, 16(%rbx)
.LBB31_25:                              # %if.end.98
	movq	%rbx, %rdi
	popq	%rbx
	jmp	free                    # TAILCALL
.LBB31_26:                              # %if.end.99
	popq	%rbx
	retq
.Lfunc_end31:
	.size	opj_jp2_destroy, .Lfunc_end31-opj_jp2_destroy
	.cfi_endproc

	.globl	opj_jp2_set_decode_area
	.align	16, 0x90
	.type	opj_jp2_set_decode_area,@function
opj_jp2_set_decode_area:                # @opj_jp2_set_decode_area
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	opj_j2k_set_decode_area # TAILCALL
.Lfunc_end32:
	.size	opj_jp2_set_decode_area, .Lfunc_end32-opj_jp2_set_decode_area
	.cfi_endproc

	.globl	opj_jp2_get_tile
	.align	16, 0x90
	.type	opj_jp2_get_tile,@function
opj_jp2_get_tile:                       # @opj_jp2_get_tile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp274:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp275:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp276:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp277:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp278:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp279:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp280:
	.cfi_def_cfa_offset 64
.Ltmp281:
	.cfi_offset %rbx, -56
.Ltmp282:
	.cfi_offset %r12, -48
.Ltmp283:
	.cfi_offset %r13, -40
.Ltmp284:
	.cfi_offset %r14, -32
.Ltmp285:
	.cfi_offset %r15, -24
.Ltmp286:
	.cfi_offset %rbp, -16
	movl	%r8d, %r15d
	movq	%rcx, %rbx
	movq	%rdx, %r12
	movq	%rsi, %r13
	movq	%rdi, %r14
	xorl	%ebp, %ebp
	testq	%r12, %r12
	je	.LBB33_19
# BB#1:                                 # %if.end
	xorl	%ebp, %ebp
	movl	$2, %esi
	movl	$.L.str.11, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	opj_event_msg
	movq	(%r14), %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	movq	%rbx, %rcx
	movl	%r15d, %r8d
	callq	opj_j2k_get_tile
	testl	%eax, %eax
	je	.LBB33_2
# BB#3:                                 # %if.end.5
	movq	%r14, %r15
	subq	$-128, %r15
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	opj_jp2_check_color
	testl	%eax, %eax
	je	.LBB33_19
# BB#4:                                 # %if.end.9
	movl	60(%r14), %eax
	cmpl	$17, %eax
	jne	.LBB33_5
# BB#7:                                 # %if.then.13
	movl	$2, 20(%r12)
	jmp	.LBB33_11
.LBB33_2:                               # %if.then.3
	xorl	%ebp, %ebp
	movl	$1, %esi
	movl	$.L.str, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	opj_event_msg
	jmp	.LBB33_19
.LBB33_5:                               # %if.end.9
	cmpl	$16, %eax
	jne	.LBB33_8
# BB#6:                                 # %if.then.10
	movl	$1, 20(%r12)
	jmp	.LBB33_11
.LBB33_8:                               # %if.else.15
	cmpl	$18, %eax
	jne	.LBB33_10
# BB#9:                                 # %if.then.18
	movl	$3, 20(%r12)
	jmp	.LBB33_11
.LBB33_10:                              # %if.else.20
	movl	$-1, 20(%r12)
.LBB33_11:                              # %if.end.24
	cmpq	$0, 144(%r14)
	je	.LBB33_13
# BB#12:                                # %if.then.27
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	opj_jp2_apply_cdef
.LBB33_13:                              # %if.end.29
	movq	152(%r14), %rax
	testq	%rax, %rax
	je	.LBB33_17
# BB#14:                                # %if.then.32
	cmpq	$0, 24(%rax)
	je	.LBB33_15
# BB#16:                                # %if.else.38
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	opj_jp2_apply_pclr
	jmp	.LBB33_17
.LBB33_15:                              # %if.then.36
	movq	%r15, %rdi
	callq	opj_jp2_free_pclr
.LBB33_17:                              # %if.end.41
	movq	(%r15), %rax
	movl	$1, %ebp
	testq	%rax, %rax
	je	.LBB33_19
# BB#18:                                # %if.then.44
	movq	%rax, 32(%r12)
	movl	136(%r14), %eax
	movl	%eax, 40(%r12)
	movq	$0, 128(%r14)
.LBB33_19:                              # %return
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end33:
	.size	opj_jp2_get_tile, .Lfunc_end33-opj_jp2_get_tile
	.cfi_endproc

	.globl	opj_jp2_create
	.align	16, 0x90
	.type	opj_jp2_create,@function
opj_jp2_create:                         # @opj_jp2_create
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp287:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp288:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp289:
	.cfi_def_cfa_offset 32
.Ltmp290:
	.cfi_offset %rbx, -24
.Ltmp291:
	.cfi_offset %rbp, -16
	movl	%edi, %ebp
	movl	$176, %edi
	callq	malloc
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB34_8
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movl	$176, %edx
	movq	%rbx, %rdi
	callq	memset
	testl	%ebp, %ebp
	je	.LBB34_2
# BB#3:                                 # %if.else
	callq	opj_j2k_create_decompress
	jmp	.LBB34_4
.LBB34_2:                               # %if.then.3
	callq	opj_j2k_create_compress
.LBB34_4:                               # %if.end
	movq	%rax, (%rbx)
	testq	%rax, %rax
	je	.LBB34_7
# BB#5:                                 # %if.end.9
	movq	$0, 128(%rbx)
	movl	$0, 136(%rbx)
	movq	$0, 144(%rbx)
	movq	$0, 152(%rbx)
	movb	$0, 160(%rbx)
	callq	opj_procedure_list_create
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.LBB34_7
# BB#6:                                 # %if.end.18
	callq	opj_procedure_list_create
	movq	%rax, 16(%rbx)
	testq	%rax, %rax
	jne	.LBB34_8
.LBB34_7:                               # %if.then.22
	movq	%rbx, %rdi
	callq	opj_jp2_destroy
	xorl	%ebx, %ebx
.LBB34_8:                               # %cleanup
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end34:
	.size	opj_jp2_create, .Lfunc_end34-opj_jp2_create
	.cfi_endproc

	.globl	jp2_dump
	.align	16, 0x90
	.type	jp2_dump,@function
jp2_dump:                               # @jp2_dump
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp292:
	.cfi_def_cfa_offset 16
	testq	%rdi, %rdi
	je	.LBB35_1
# BB#2:                                 # %cond.end
	movq	(%rdi), %rdi
	popq	%rax
	jmp	j2k_dump                # TAILCALL
.LBB35_1:                               # %cond.false
	movl	$.L.str.12, %edi
	movl	$.L.str.2, %esi
	movl	$2544, %edx             # imm = 0x9F0
	movl	$.L__PRETTY_FUNCTION__.jp2_dump, %ecx
	callq	__assert_fail
.Lfunc_end35:
	.size	jp2_dump, .Lfunc_end35-jp2_dump
	.cfi_endproc

	.globl	jp2_get_cstr_index
	.align	16, 0x90
	.type	jp2_get_cstr_index,@function
jp2_get_cstr_index:                     # @jp2_get_cstr_index
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	j2k_get_cstr_index      # TAILCALL
.Lfunc_end36:
	.size	jp2_get_cstr_index, .Lfunc_end36-jp2_get_cstr_index
	.cfi_endproc

	.globl	jp2_get_cstr_info
	.align	16, 0x90
	.type	jp2_get_cstr_info,@function
jp2_get_cstr_info:                      # @jp2_get_cstr_info
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	j2k_get_cstr_info       # TAILCALL
.Lfunc_end37:
	.size	jp2_get_cstr_info, .Lfunc_end37-jp2_get_cstr_info
	.cfi_endproc

	.globl	opj_jp2_set_decoded_resolution_factor
	.align	16, 0x90
	.type	opj_jp2_set_decoded_resolution_factor,@function
opj_jp2_set_decoded_resolution_factor:  # @opj_jp2_set_decoded_resolution_factor
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	opj_j2k_set_decoded_resolution_factor # TAILCALL
.Lfunc_end38:
	.size	opj_jp2_set_decoded_resolution_factor, .Lfunc_end38-opj_jp2_set_decoded_resolution_factor
	.cfi_endproc

	.align	16, 0x90
	.type	opj_jpip_write_iptr,@function
opj_jpip_write_iptr:                    # @opj_jpip_write_iptr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp293:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp294:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp295:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp296:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp297:
	.cfi_def_cfa_offset 64
.Ltmp298:
	.cfi_offset %rbx, -40
.Ltmp299:
	.cfi_offset %r12, -32
.Ltmp300:
	.cfi_offset %r14, -24
.Ltmp301:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r12
	testq	%r12, %r12
	je	.LBB39_9
# BB#1:                                 # %cond.end
	testq	%rbx, %rbx
	je	.LBB39_10
# BB#2:                                 # %cond.end.4
	testq	%r14, %r14
	je	.LBB39_11
# BB#3:                                 # %cond.end.8
	movq	%rbx, %rdi
	callq	opj_stream_has_seek
	testl	%eax, %eax
	je	.LBB39_12
# BB#4:                                 # %cond.end.11
	movq	%rbx, %rdi
	callq	opj_stream_tell
	movq	%rax, %r15
	leaq	(%rsp), %rdi
	movl	$24, %esi
	movl	$4, %edx
	callq	opj_write_bytes_LE
	leaq	4(%rsp), %rdi
	movl	$1768977522, %esi       # imm = 0x69707472
	movl	$4, %edx
	callq	opj_write_bytes_LE
	leaq	8(%rsp), %rdi
	xorps	%xmm0, %xmm0
	callq	opj_write_double_LE
	leaq	16(%rsp), %rdi
	xorps	%xmm0, %xmm0
	callq	opj_write_double_LE
	movq	104(%r12), %rsi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	opj_stream_seek
	testl	%eax, %eax
	je	.LBB39_7
# BB#5:                                 # %if.end
	leaq	(%rsp), %rsi
	movl	$24, %edx
	movq	%rbx, %rdi
	movq	%r14, %rcx
	callq	opj_stream_write_data
	cmpq	$24, %rax
	jne	.LBB39_7
# BB#6:                                 # %if.end.28
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	opj_stream_seek
	movl	$1, %ebx
	testl	%eax, %eax
	jne	.LBB39_8
.LBB39_7:                               # %if.then.31
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.42, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	opj_event_msg
.LBB39_8:                               # %cleanup
	movl	%ebx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB39_9:                               # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.2, %esi
	movl	$2579, %edx             # imm = 0xA13
	movl	$.L__PRETTY_FUNCTION__.opj_jpip_write_iptr, %ecx
	callq	__assert_fail
.LBB39_10:                              # %cond.false.3
	movl	$.L.str.9, %edi
	movl	$.L.str.2, %esi
	movl	$2580, %edx             # imm = 0xA14
	movl	$.L__PRETTY_FUNCTION__.opj_jpip_write_iptr, %ecx
	callq	__assert_fail
.LBB39_11:                              # %cond.false.7
	movl	$.L.str.4, %edi
	movl	$.L.str.2, %esi
	movl	$2581, %edx             # imm = 0xA15
	movl	$.L__PRETTY_FUNCTION__.opj_jpip_write_iptr, %ecx
	callq	__assert_fail
.LBB39_12:                              # %cond.false.10
	movl	$.L.str.41, %edi
	movl	$.L.str.2, %esi
	movl	$2582, %edx             # imm = 0xA16
	movl	$.L__PRETTY_FUNCTION__.opj_jpip_write_iptr, %ecx
	callq	__assert_fail
.Lfunc_end39:
	.size	opj_jpip_write_iptr, .Lfunc_end39-opj_jpip_write_iptr
	.cfi_endproc

	.align	16, 0x90
	.type	opj_jp2_write_jp2c,@function
opj_jp2_write_jp2c:                     # @opj_jp2_write_jp2c
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp302:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp303:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp304:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp305:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp306:
	.cfi_def_cfa_offset 48
.Ltmp307:
	.cfi_offset %rbx, -40
.Ltmp308:
	.cfi_offset %r12, -32
.Ltmp309:
	.cfi_offset %r14, -24
.Ltmp310:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r12
	testq	%r12, %r12
	je	.LBB40_9
# BB#1:                                 # %cond.end
	testq	%rbx, %rbx
	je	.LBB40_10
# BB#2:                                 # %cond.end.4
	testq	%r14, %r14
	je	.LBB40_11
# BB#3:                                 # %cond.end.8
	movq	%rbx, %rdi
	callq	opj_stream_has_seek
	testl	%eax, %eax
	je	.LBB40_12
# BB#4:                                 # %cond.end.11
	movq	%rbx, %rdi
	callq	opj_stream_tell
	movq	%rax, %r15
	movl	96(%r12), %eax
	movl	%r15d, %esi
	subl	%eax, %esi
	leaq	(%rsp), %rdi
	movl	$4, %edx
	callq	opj_write_bytes_LE
	leaq	4(%rsp), %rdi
	movl	$1785737827, %esi       # imm = 0x6A703263
	movl	$4, %edx
	callq	opj_write_bytes_LE
	movq	96(%r12), %rsi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	opj_stream_seek
	testl	%eax, %eax
	je	.LBB40_7
# BB#5:                                 # %if.end
	leaq	(%rsp), %rsi
	movl	$8, %edx
	movq	%rbx, %rdi
	movq	%r14, %rcx
	callq	opj_stream_write_data
	cmpq	$8, %rax
	jne	.LBB40_7
# BB#6:                                 # %if.end.24
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	opj_stream_seek
	movl	$1, %ebx
	testl	%eax, %eax
	jne	.LBB40_8
.LBB40_7:                               # %if.then.27
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.42, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	opj_event_msg
.LBB40_8:                               # %cleanup
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB40_9:                               # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.2, %esi
	movl	$1463, %edx             # imm = 0x5B7
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_write_jp2c, %ecx
	callq	__assert_fail
.LBB40_10:                              # %cond.false.3
	movl	$.L.str.9, %edi
	movl	$.L.str.2, %esi
	movl	$1464, %edx             # imm = 0x5B8
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_write_jp2c, %ecx
	callq	__assert_fail
.LBB40_11:                              # %cond.false.7
	movl	$.L.str.4, %edi
	movl	$.L.str.2, %esi
	movl	$1465, %edx             # imm = 0x5B9
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_write_jp2c, %ecx
	callq	__assert_fail
.LBB40_12:                              # %cond.false.10
	movl	$.L.str.41, %edi
	movl	$.L.str.2, %esi
	movl	$1466, %edx             # imm = 0x5BA
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_write_jp2c, %ecx
	callq	__assert_fail
.Lfunc_end40:
	.size	opj_jp2_write_jp2c, .Lfunc_end40-opj_jp2_write_jp2c
	.cfi_endproc

	.align	16, 0x90
	.type	opj_jpip_write_cidx,@function
opj_jpip_write_cidx:                    # @opj_jpip_write_cidx
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp311:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp312:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp313:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp314:
	.cfi_def_cfa_offset 64
.Ltmp315:
	.cfi_offset %rbx, -32
.Ltmp316:
	.cfi_offset %r14, -24
.Ltmp317:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	testq	%rdi, %rdi
	je	.LBB41_9
# BB#1:                                 # %cond.end
	testq	%rbx, %rbx
	je	.LBB41_10
# BB#2:                                 # %cond.end.4
	testq	%r14, %r14
	je	.LBB41_11
# BB#3:                                 # %cond.end.8
	movq	%rbx, %rdi
	callq	opj_stream_has_seek
	testl	%eax, %eax
	je	.LBB41_12
# BB#4:                                 # %cond.end.11
	movq	%rbx, %rdi
	callq	opj_stream_tell
	movq	%rax, %r15
	leaq	(%rsp), %rdi
	movl	$24, %esi
	movl	$4, %edx
	callq	opj_write_bytes_LE
	leaq	4(%rsp), %rdi
	movl	$1667851384, %esi       # imm = 0x63696478
	movl	$4, %edx
	callq	opj_write_bytes_LE
	leaq	8(%rsp), %rdi
	xorps	%xmm0, %xmm0
	callq	opj_write_double_LE
	leaq	16(%rsp), %rdi
	xorps	%xmm0, %xmm0
	callq	opj_write_double_LE
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	opj_stream_seek
	testl	%eax, %eax
	je	.LBB41_7
# BB#5:                                 # %if.end
	leaq	(%rsp), %rsi
	movl	$24, %edx
	movq	%rbx, %rdi
	movq	%r14, %rcx
	callq	opj_stream_write_data
	cmpq	$24, %rax
	jne	.LBB41_7
# BB#6:                                 # %if.end.28
	movq	%rbx, %rdi
	callq	opj_stream_tell
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%r14, %rdx
	callq	opj_stream_seek
	movl	$1, %ebx
	testl	%eax, %eax
	jne	.LBB41_8
.LBB41_7:                               # %if.then.32
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.42, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	opj_event_msg
.LBB41_8:                               # %cleanup
	movl	%ebx, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB41_9:                               # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.2, %esi
	movl	$2653, %edx             # imm = 0xA5D
	movl	$.L__PRETTY_FUNCTION__.opj_jpip_write_cidx, %ecx
	callq	__assert_fail
.LBB41_10:                              # %cond.false.3
	movl	$.L.str.9, %edi
	movl	$.L.str.2, %esi
	movl	$2654, %edx             # imm = 0xA5E
	movl	$.L__PRETTY_FUNCTION__.opj_jpip_write_cidx, %ecx
	callq	__assert_fail
.LBB41_11:                              # %cond.false.7
	movl	$.L.str.4, %edi
	movl	$.L.str.2, %esi
	movl	$2655, %edx             # imm = 0xA5F
	movl	$.L__PRETTY_FUNCTION__.opj_jpip_write_cidx, %ecx
	callq	__assert_fail
.LBB41_12:                              # %cond.false.10
	movl	$.L.str.41, %edi
	movl	$.L.str.2, %esi
	movl	$2656, %edx             # imm = 0xA60
	movl	$.L__PRETTY_FUNCTION__.opj_jpip_write_cidx, %ecx
	callq	__assert_fail
.Lfunc_end41:
	.size	opj_jpip_write_cidx, .Lfunc_end41-opj_jpip_write_cidx
	.cfi_endproc

	.align	16, 0x90
	.type	opj_jpip_write_fidx,@function
opj_jpip_write_fidx:                    # @opj_jpip_write_fidx
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp318:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp319:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp320:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp321:
	.cfi_def_cfa_offset 64
.Ltmp322:
	.cfi_offset %rbx, -32
.Ltmp323:
	.cfi_offset %r14, -24
.Ltmp324:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	testq	%rdi, %rdi
	je	.LBB42_8
# BB#1:                                 # %cond.end
	testq	%rbx, %rbx
	je	.LBB42_9
# BB#2:                                 # %cond.end.4
	testq	%r14, %r14
	je	.LBB42_10
# BB#3:                                 # %cond.end.8
	movq	%rbx, %rdi
	callq	opj_stream_has_seek
	testl	%eax, %eax
	je	.LBB42_11
# BB#4:                                 # %cond.end.11
	leaq	(%rsp), %r15
	movl	$24, %esi
	movl	$4, %edx
	movq	%r15, %rdi
	callq	opj_write_bytes_LE
	leaq	4(%rsp), %rdi
	movl	$1718183032, %esi       # imm = 0x66696478
	movl	$4, %edx
	callq	opj_write_bytes_LE
	leaq	8(%rsp), %rdi
	xorps	%xmm0, %xmm0
	callq	opj_write_double_LE
	leaq	16(%rsp), %rdi
	xorps	%xmm0, %xmm0
	callq	opj_write_double_LE
	movl	$24, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rcx
	callq	opj_stream_write_data
	cmpq	$24, %rax
	jne	.LBB42_6
# BB#5:                                 # %if.end
	movq	%rbx, %rdi
	callq	opj_stream_tell
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%r14, %rdx
	callq	opj_stream_seek
	movl	$1, %ebx
	testl	%eax, %eax
	jne	.LBB42_7
.LBB42_6:                               # %if.then.26
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.42, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	opj_event_msg
.LBB42_7:                               # %cleanup
	movl	%ebx, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB42_8:                               # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.2, %esi
	movl	$2621, %edx             # imm = 0xA3D
	movl	$.L__PRETTY_FUNCTION__.opj_jpip_write_fidx, %ecx
	callq	__assert_fail
.LBB42_9:                               # %cond.false.3
	movl	$.L.str.9, %edi
	movl	$.L.str.2, %esi
	movl	$2622, %edx             # imm = 0xA3E
	movl	$.L__PRETTY_FUNCTION__.opj_jpip_write_fidx, %ecx
	callq	__assert_fail
.LBB42_10:                              # %cond.false.7
	movl	$.L.str.4, %edi
	movl	$.L.str.2, %esi
	movl	$2623, %edx             # imm = 0xA3F
	movl	$.L__PRETTY_FUNCTION__.opj_jpip_write_fidx, %ecx
	callq	__assert_fail
.LBB42_11:                              # %cond.false.10
	movl	$.L.str.41, %edi
	movl	$.L.str.2, %esi
	movl	$2624, %edx             # imm = 0xA40
	movl	$.L__PRETTY_FUNCTION__.opj_jpip_write_fidx, %ecx
	callq	__assert_fail
.Lfunc_end42:
	.size	opj_jpip_write_fidx, .Lfunc_end42-opj_jpip_write_fidx
	.cfi_endproc

	.align	16, 0x90
	.type	opj_jp2_read_header_procedure,@function
opj_jp2_read_header_procedure:          # @opj_jp2_read_header_procedure
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp325:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp326:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp327:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp328:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp329:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp330:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp331:
	.cfi_def_cfa_offset 112
.Ltmp332:
	.cfi_offset %rbx, -56
.Ltmp333:
	.cfi_offset %r12, -48
.Ltmp334:
	.cfi_offset %r13, -40
.Ltmp335:
	.cfi_offset %r14, -32
.Ltmp336:
	.cfi_offset %r15, -24
.Ltmp337:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbp
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	movq	%rsi, %r12
	movq	%rdi, %r15
	testq	%r12, %r12
	je	.LBB43_40
# BB#1:                                 # %cond.end
	testq	%r15, %r15
	je	.LBB43_41
# BB#2:                                 # %cond.end.4
	testq	%rbp, %rbp
	je	.LBB43_42
# BB#3:                                 # %cond.false.12
	movl	$1024, %edi             # imm = 0x400
	callq	malloc
	testq	%rax, %rax
	je	.LBB43_4
# BB#5:                                 # %if.end
	xorl	%esi, %esi
	movl	$1024, %edx             # imm = 0x400
	movq	%rax, %rdi
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	callq	memset
	movl	$1024, 12(%rsp)         # 4-byte Folded Spill
                                        # imm = 0x400
	leaq	48(%rsp), %rbx
	.align	16, 0x90
.LBB43_6:                               # %cond.end.12.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$8, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rcx
	callq	opj_stream_read_data
	cmpl	$8, %eax
	jne	.LBB43_13
# BB#7:                                 # %if.end.i
                                        #   in Loop: Header=BB43_6 Depth=1
	movl	$4, %edx
	movq	%rbx, %rdi
	leaq	32(%rsp), %rsi
	callq	opj_read_bytes_LE
	movl	$4, %edx
	leaq	52(%rsp), %rdi
	leaq	36(%rsp), %rsi
	callq	opj_read_bytes_LE
	movl	32(%rsp), %eax
	cmpl	$1, %eax
	jne	.LBB43_8
# BB#10:                                # %if.then.28.i
                                        #   in Loop: Header=BB43_6 Depth=1
	movl	$8, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rcx
	callq	opj_stream_read_data
	cmpl	$8, %eax
	jne	.LBB43_13
# BB#11:                                # %if.end.39.i
                                        #   in Loop: Header=BB43_6 Depth=1
	movl	$4, %edx
	movq	%rbx, %rdi
	leaq	44(%rsp), %rsi
	callq	opj_read_bytes_LE
	cmpl	$0, 44(%rsp)
	jne	.LBB43_12
# BB#15:                                # %if.end.45.i
                                        #   in Loop: Header=BB43_6 Depth=1
	movl	$4, %edx
	leaq	52(%rsp), %rdi
	leaq	32(%rsp), %rsi
	callq	opj_read_bytes_LE
	movl	$16, %ebp
	jmp	.LBB43_16
	.align	16, 0x90
.LBB43_8:                               # %if.end.i
                                        #   in Loop: Header=BB43_6 Depth=1
	movl	$8, %ebp
	testl	%eax, %eax
	jne	.LBB43_16
# BB#9:                                 # %if.then.20.i
                                        #   in Loop: Header=BB43_6 Depth=1
	movq	%r12, %rdi
	callq	opj_stream_get_number_byte_left
	movl	%eax, 32(%rsp)
.LBB43_16:                              # %while.body
                                        #   in Loop: Header=BB43_6 Depth=1
	movl	36(%rsp), %r8d
	cmpl	$1785737827, %r8d       # imm = 0x6A703263
	je	.LBB43_17
# BB#23:                                # %if.else.28
                                        #   in Loop: Header=BB43_6 Depth=1
	movl	32(%rsp), %ecx
	testl	%ecx, %ecx
	je	.LBB43_24
# BB#25:                                # %if.else.33
                                        #   in Loop: Header=BB43_6 Depth=1
	movl	%ecx, %r13d
	subl	%ebp, %r13d
	jb	.LBB43_26
# BB#27:                                # %if.end.43
                                        #   in Loop: Header=BB43_6 Depth=1
	cmpl	$1783636000, %r8d       # imm = 0x6A502020
	movl	$jp2_header, %r14d
	je	.LBB43_30
# BB#28:                                # %for.cond.i
                                        #   in Loop: Header=BB43_6 Depth=1
	cmpl	$1718909296, %r8d       # imm = 0x66747970
	movl	$jp2_header+16, %r14d
	je	.LBB43_30
# BB#29:                                # %for.cond.1.i
                                        #   in Loop: Header=BB43_6 Depth=1
	cmpl	$1785737832, %r8d       # imm = 0x6A703268
	movl	$jp2_header+32, %r14d
	je	.LBB43_30
# BB#38:                                # %if.else.79
                                        #   in Loop: Header=BB43_6 Depth=1
	orl	$2147483647, 116(%r15)  # imm = 0x7FFFFFFF
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	24(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdx
	callq	opj_stream_skip
	cmpq	%r13, %rax
	je	.LBB43_6
	jmp	.LBB43_39
.LBB43_30:                              # %if.then.49
                                        #   in Loop: Header=BB43_6 Depth=1
	cmpl	12(%rsp), %r13d         # 4-byte Folded Reload
	jbe	.LBB43_31
# BB#34:                                # %cond.false.57
                                        #   in Loop: Header=BB43_6 Depth=1
	movq	16(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	movq	%r13, %rsi
	callq	realloc
	movq	%rax, (%rsp)            # 8-byte Spill
	testq	%rax, %rax
	movl	%r13d, %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	jne	.LBB43_32
	jmp	.LBB43_35
.LBB43_31:                              #   in Loop: Header=BB43_6 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%rax, (%rsp)            # 8-byte Spill
.LBB43_32:                              # %if.end.66
                                        #   in Loop: Header=BB43_6 Depth=1
	movq	%r12, %rdi
	movq	(%rsp), %rsi            # 8-byte Reload
	movq	%r13, %rdx
	movq	24(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rcx
	callq	opj_stream_read_data
	cmpl	%r13d, %eax
	jne	.LBB43_33
# BB#36:                                # %if.end.74
                                        #   in Loop: Header=BB43_6 Depth=1
	movq	%r15, %rdi
	movq	%rbp, %rcx
	movq	(%rsp), %rbp            # 8-byte Reload
	movq	%rbp, %rsi
	movl	%r13d, %edx
	movq	%rcx, %r13
	callq	*8(%r14)
	testl	%eax, %eax
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movq	%rbp, %rdi
	movq	%r13, %rbp
	jne	.LBB43_6
# BB#37:                                # %if.then.77
	callq	free
	xorl	%ebx, %ebx
	jmp	.LBB43_14
.LBB43_4:                               # %if.then
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.43, %edx
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	opj_event_msg
	jmp	.LBB43_14
.LBB43_17:                              # %if.then.23
	movl	116(%r15), %eax
	testb	$4, %al
	jne	.LBB43_18
# BB#19:                                # %if.else
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.44, %edx
	jmp	.LBB43_20
.LBB43_24:                              # %if.then.31
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.45, %edx
.LBB43_20:                              # %cleanup.91
	xorl	%eax, %eax
	movq	24(%rsp), %rdi          # 8-byte Reload
	jmp	.LBB43_21
.LBB43_26:                              # %if.then.37
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.46, %edx
	xorl	%eax, %eax
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	opj_event_msg
	jmp	.LBB43_22
.LBB43_39:                              # %if.then.87
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.49, %edx
	xorl	%eax, %eax
	movq	%rbp, %rdi
.LBB43_21:                              # %cleanup.91
	callq	opj_event_msg
.LBB43_22:                              # %cleanup.91
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	free
	jmp	.LBB43_14
.LBB43_18:                              # %if.then.25
	orl	$8, %eax
	movl	%eax, 116(%r15)
	jmp	.LBB43_13
.LBB43_12:                              # %if.then.43.i
	movl	$1, %esi
	movl	$.L.str.52, %edx
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	opj_event_msg
.LBB43_13:                              # %while.end
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	free
	movl	$1, %ebx
.LBB43_14:                              # %cleanup.91
	movl	%ebx, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB43_33:                              # %if.then.72
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.48, %edx
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	opj_event_msg
	movq	(%rsp), %rdi            # 8-byte Reload
	callq	free
	jmp	.LBB43_14
.LBB43_35:                              # %cleanup
	movq	%rbp, %rdi
	callq	free
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.47, %edx
	xorl	%eax, %eax
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	opj_event_msg
	jmp	.LBB43_14
.LBB43_40:                              # %cond.false
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	movl	$1771, %edx             # imm = 0x6EB
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_read_header_procedure, %ecx
	callq	__assert_fail
.LBB43_41:                              # %cond.false.3
	movl	$.L.str.3, %edi
	movl	$.L.str.2, %esi
	movl	$1772, %edx             # imm = 0x6EC
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_read_header_procedure, %ecx
	callq	__assert_fail
.LBB43_42:                              # %cond.false.7
	movl	$.L.str.4, %edi
	movl	$.L.str.2, %esi
	movl	$1773, %edx             # imm = 0x6ED
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_read_header_procedure, %ecx
	callq	__assert_fail
.Lfunc_end43:
	.size	opj_jp2_read_header_procedure, .Lfunc_end43-opj_jp2_read_header_procedure
	.cfi_endproc

	.align	16, 0x90
	.type	opj_jp2_write_jp,@function
opj_jp2_write_jp:                       # @opj_jp2_write_jp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp338:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp339:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp340:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp341:
	.cfi_def_cfa_offset 48
.Ltmp342:
	.cfi_offset %rbx, -32
.Ltmp343:
	.cfi_offset %r14, -24
.Ltmp344:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	testq	%rbx, %rbx
	je	.LBB44_4
# BB#1:                                 # %cond.end
	testq	%rdi, %rdi
	je	.LBB44_5
# BB#2:                                 # %cond.end.4
	testq	%r14, %r14
	je	.LBB44_6
# BB#3:                                 # %cond.end.8
	leaq	4(%rsp), %r15
	movl	$12, %esi
	movl	$4, %edx
	movq	%r15, %rdi
	callq	opj_write_bytes_LE
	leaq	8(%rsp), %rdi
	movl	$1783636000, %esi       # imm = 0x6A502020
	movl	$4, %edx
	callq	opj_write_bytes_LE
	leaq	12(%rsp), %rdi
	movl	$218793738, %esi        # imm = 0xD0A870A
	movl	$4, %edx
	callq	opj_write_bytes_LE
	movl	$12, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rcx
	callq	opj_stream_write_data
	cmpq	$12, %rax
	sete	%al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB44_4:                               # %cond.false
	movl	$.L.str.9, %edi
	movl	$.L.str.2, %esi
	movl	$1500, %edx             # imm = 0x5DC
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_write_jp, %ecx
	callq	__assert_fail
.LBB44_5:                               # %cond.false.3
	movl	$.L.str.3, %edi
	movl	$.L.str.2, %esi
	movl	$1501, %edx             # imm = 0x5DD
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_write_jp, %ecx
	callq	__assert_fail
.LBB44_6:                               # %cond.false.7
	movl	$.L.str.4, %edi
	movl	$.L.str.2, %esi
	movl	$1502, %edx             # imm = 0x5DE
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_write_jp, %ecx
	callq	__assert_fail
.Lfunc_end44:
	.size	opj_jp2_write_jp, .Lfunc_end44-opj_jp2_write_jp
	.cfi_endproc

	.align	16, 0x90
	.type	opj_jp2_write_ftyp,@function
opj_jp2_write_ftyp:                     # @opj_jp2_write_ftyp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp345:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp346:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp347:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp348:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp349:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp350:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp351:
	.cfi_def_cfa_offset 64
.Ltmp352:
	.cfi_offset %rbx, -56
.Ltmp353:
	.cfi_offset %r12, -48
.Ltmp354:
	.cfi_offset %r13, -40
.Ltmp355:
	.cfi_offset %r14, -32
.Ltmp356:
	.cfi_offset %r15, -24
.Ltmp357:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	76(%rbx), %eax
	testq	%r15, %r15
	je	.LBB45_11
# BB#1:                                 # %cond.end.4
	testq	%r14, %r14
	je	.LBB45_12
# BB#2:                                 # %cond.end.8
	leal	16(,%rax,4), %ebp
	movl	%ebp, %r13d
	movq	%r13, %rdi
	callq	malloc
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB45_3
# BB#4:                                 # %if.end
	movq	%r14, (%rsp)            # 8-byte Spill
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	movq	%r12, %rdi
	movq	%r13, %rdx
	callq	memset
	movl	$4, %edx
	movq	%r12, %rdi
	movl	%ebp, %esi
	callq	opj_write_bytes_LE
	leaq	4(%r12), %rdi
	movl	$1718909296, %esi       # imm = 0x66747970
	movl	$4, %edx
	callq	opj_write_bytes_LE
	leaq	8(%r12), %rdi
	movl	68(%rbx), %esi
	movl	$4, %edx
	callq	opj_write_bytes_LE
	leaq	12(%r12), %rdi
	movl	72(%rbx), %esi
	movl	$4, %edx
	callq	opj_write_bytes_LE
	cmpl	$0, 76(%rbx)
	je	.LBB45_7
# BB#5:                                 # %for.body.lr.ph
	movq	%r12, %rbp
	addq	$16, %rbp
	.align	16, 0x90
.LBB45_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%r14d, %eax
	movq	80(%rbx), %rcx
	movl	(%rcx,%rax,4), %esi
	movl	$4, %edx
	movq	%rbp, %rdi
	callq	opj_write_bytes_LE
	incl	%r14d
	cmpl	76(%rbx), %r14d
	jb	.LBB45_6
.LBB45_7:                               # %for.end
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	movq	(%rsp), %rbp            # 8-byte Reload
	movq	%rbp, %rcx
	callq	opj_stream_write_data
	cmpq	%r13, %rax
	sete	%bl
	je	.LBB45_9
# BB#8:                                 # %if.then.31
	movl	$1, %esi
	movl	$.L.str.68, %edx
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	opj_event_msg
.LBB45_9:                               # %if.end.33
	movzbl	%bl, %ebx
	movq	%r12, %rdi
	callq	free
	jmp	.LBB45_10
.LBB45_3:                               # %if.then
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.67, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	opj_event_msg
.LBB45_10:                              # %cleanup
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB45_11:                              # %cond.false
	movl	$.L.str.9, %edi
	movl	$.L.str.2, %esi
	movl	$1413, %edx             # imm = 0x585
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_write_ftyp, %ecx
	callq	__assert_fail
.LBB45_12:                              # %cond.false.7
	movl	$.L.str.4, %edi
	movl	$.L.str.2, %esi
	movl	$1415, %edx             # imm = 0x587
	movl	$.L__PRETTY_FUNCTION__.opj_jp2_write_ftyp, %ecx
	callq	__assert_fail
.Lfunc_end45:
	.size	opj_jp2_write_ftyp, .Lfunc_end45-opj_jp2_write_ftyp
	.cfi_endproc

	.align	16, 0x90
	.type	opj_jpip_skip_iptr,@function
opj_jpip_skip_iptr:                     # @opj_jpip_skip_iptr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp358:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp359:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp360:
	.cfi_def_cfa_offset 32
.Ltmp361:
	.cfi_offset %rbx, -32
.Ltmp362:
	.cfi_offset %r14, -24
.Ltmp363:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	testq	%r15, %r15
	je	.LBB46_4
# BB#1:                                 # %cond.end
	testq	%rbx, %rbx
	je	.LBB46_5
# BB#2:                                 # %cond.end.4
	testq	%r14, %r14
	je	.LBB46_6
# BB#3:                                 # %cond.end.8
	movq	%rbx, %rdi
	callq	opj_stream_tell
	movq	%rax, 104(%r15)
	movl	$24, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	opj_stream_skip
	cmpq	$24, %rax
	sete	%al
	movzbl	%al, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB46_4:                               # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.2, %esi
	movl	$2093, %edx             # imm = 0x82D
	movl	$.L__PRETTY_FUNCTION__.opj_jpip_skip_iptr, %ecx
	callq	__assert_fail
.LBB46_5:                               # %cond.false.3
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	movl	$2094, %edx             # imm = 0x82E
	movl	$.L__PRETTY_FUNCTION__.opj_jpip_skip_iptr, %ecx
	callq	__assert_fail
.LBB46_6:                               # %cond.false.7
	movl	$.L.str.4, %edi
	movl	$.L.str.2, %esi
	movl	$2095, %edx             # imm = 0x82F
	movl	$.L__PRETTY_FUNCTION__.opj_jpip_skip_iptr, %ecx
	callq	__assert_fail
.Lfunc_end46:
	.size	opj_jpip_skip_iptr, .Lfunc_end46-opj_jpip_skip_iptr
	.cfi_endproc

	.type	jp2_header,@object      # @jp2_header
	.section	.rodata,"a",@progbits
	.globl	jp2_header
	.align	16
jp2_header:
	.long	1783636000              # 0x6a502020
	.zero	4
	.quad	opj_jp2_read_jp
	.long	1718909296              # 0x66747970
	.zero	4
	.quad	opj_jp2_read_ftyp
	.long	1785737832              # 0x6a703268
	.zero	4
	.quad	opj_jp2_read_jp2h
	.size	jp2_header, 48

	.type	jp2_img_header,@object  # @jp2_img_header
	.globl	jp2_img_header
	.align	16
jp2_img_header:
	.long	1768449138              # 0x69686472
	.zero	4
	.quad	opj_jp2_read_ihdr
	.long	1668246642              # 0x636f6c72
	.zero	4
	.quad	opj_jp2_read_colr
	.long	1651532643              # 0x62706363
	.zero	4
	.quad	opj_jp2_read_bpcc
	.long	1885564018              # 0x70636c72
	.zero	4
	.quad	opj_jp2_read_pclr
	.long	1668112752              # 0x636d6170
	.zero	4
	.quad	opj_jp2_read_cmap
	.long	1667523942              # 0x63646566
	.zero	4
	.quad	opj_jp2_read_cdef
	.size	jp2_img_header, 96

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Failed to decode the codestream in the JP2 file\n"
	.size	.L.str, 49

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"stream != 00"
	.size	.L.str.1, 13

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"./openjpeg/libopenjpeg/jp2.c"
	.size	.L.str.2, 29

	.type	.L__PRETTY_FUNCTION__.opj_jp2_write_jp2h,@object # @__PRETTY_FUNCTION__.opj_jp2_write_jp2h
.L__PRETTY_FUNCTION__.opj_jp2_write_jp2h:
	.asciz	"OPJ_BOOL opj_jp2_write_jp2h(opj_jp2_t *, opj_stream_private_t *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_jp2_write_jp2h, 84

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"jp2 != 00"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"p_manager != 00"
	.size	.L.str.4, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Not enough memory to hold JP2 Header data\n"
	.size	.L.str.5, 43

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Stream error while writing JP2 Header box\n"
	.size	.L.str.6, 43

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Invalid number of components specified while setting up JP2 encoder\n"
	.size	.L.str.7, 69

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Not enough memory when setup the JP2 encoder\n"
	.size	.L.str.8, 46

	.type	.L__PRETTY_FUNCTION__.opj_jp2_end_decompress,@object # @__PRETTY_FUNCTION__.opj_jp2_end_decompress
.L__PRETTY_FUNCTION__.opj_jp2_end_decompress:
	.asciz	"OPJ_BOOL opj_jp2_end_decompress(opj_jp2_t *, opj_stream_private_t *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_jp2_end_decompress, 88

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"cio != 00"
	.size	.L.str.9, 10

	.type	.L__PRETTY_FUNCTION__.opj_jp2_end_compress,@object # @__PRETTY_FUNCTION__.opj_jp2_end_compress
.L__PRETTY_FUNCTION__.opj_jp2_end_compress:
	.asciz	"OPJ_BOOL opj_jp2_end_compress(opj_jp2_t *, opj_stream_private_t *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_jp2_end_compress, 86

	.type	.L__PRETTY_FUNCTION__.opj_jp2_default_validation,@object # @__PRETTY_FUNCTION__.opj_jp2_default_validation
.L__PRETTY_FUNCTION__.opj_jp2_default_validation:
	.asciz	"OPJ_BOOL opj_jp2_default_validation(opj_jp2_t *, opj_stream_private_t *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_jp2_default_validation, 92

	.type	.L__PRETTY_FUNCTION__.opj_jp2_start_compress,@object # @__PRETTY_FUNCTION__.opj_jp2_start_compress
.L__PRETTY_FUNCTION__.opj_jp2_start_compress:
	.asciz	"OPJ_BOOL opj_jp2_start_compress(opj_jp2_t *, opj_stream_private_t *, opj_image_t *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_jp2_start_compress, 103

	.type	.L__PRETTY_FUNCTION__.opj_jp2_skip_jp2c,@object # @__PRETTY_FUNCTION__.opj_jp2_skip_jp2c
.L__PRETTY_FUNCTION__.opj_jp2_skip_jp2c:
	.asciz	"OPJ_BOOL opj_jp2_skip_jp2c(opj_jp2_t *, opj_stream_private_t *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_jp2_skip_jp2c, 83

	.type	.L__PRETTY_FUNCTION__.opj_jp2_read_header,@object # @__PRETTY_FUNCTION__.opj_jp2_read_header
.L__PRETTY_FUNCTION__.opj_jp2_read_header:
	.asciz	"OPJ_BOOL opj_jp2_read_header(opj_stream_private_t *, opj_jp2_t *, opj_image_t **, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_jp2_read_header, 101

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"p_stream != 00"
	.size	.L.str.10, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"JP2 box which are after the codestream will not be read by this function.\n"
	.size	.L.str.11, 75

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"p_jp2 != 00"
	.size	.L.str.12, 12

	.type	.L__PRETTY_FUNCTION__.jp2_dump,@object # @__PRETTY_FUNCTION__.jp2_dump
.L__PRETTY_FUNCTION__.jp2_dump:
	.asciz	"void jp2_dump(opj_jp2_t *, OPJ_INT32, FILE *)"
	.size	.L__PRETTY_FUNCTION__.jp2_dump, 46

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"p_image_header_data != 00"
	.size	.L.str.13, 26

	.type	.L__PRETTY_FUNCTION__.opj_jp2_read_ihdr,@object # @__PRETTY_FUNCTION__.opj_jp2_read_ihdr
.L__PRETTY_FUNCTION__.opj_jp2_read_ihdr:
	.asciz	"OPJ_BOOL opj_jp2_read_ihdr(opj_jp2_t *, OPJ_BYTE *, OPJ_UINT32, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_jp2_read_ihdr, 83

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Bad image header box (bad size)\n"
	.size	.L.str.14, 33

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Not enough memory to handle image header (ihdr)\n"
	.size	.L.str.15, 49

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"JP2 IHDR box: compression type indicate that the file is not a conforming JP2 file (%d) \n"
	.size	.L.str.16, 90

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"p_bpc_header_data != 00"
	.size	.L.str.17, 24

	.type	.L__PRETTY_FUNCTION__.opj_jp2_read_bpcc,@object # @__PRETTY_FUNCTION__.opj_jp2_read_bpcc
.L__PRETTY_FUNCTION__.opj_jp2_read_bpcc:
	.asciz	"OPJ_BOOL opj_jp2_read_bpcc(opj_jp2_t *, OPJ_BYTE *, OPJ_UINT32, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_jp2_read_bpcc, 83

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"A BPCC header box is available although BPC given by the IHDR box (%d) indicate components bit depth is constant\n"
	.size	.L.str.18, 114

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Bad BPCC header box (bad size)\n"
	.size	.L.str.19, 32

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"p_pclr_header_data != 00"
	.size	.L.str.20, 25

	.type	.L__PRETTY_FUNCTION__.opj_jp2_read_pclr,@object # @__PRETTY_FUNCTION__.opj_jp2_read_pclr
.L__PRETTY_FUNCTION__.opj_jp2_read_pclr:
	.asciz	"OPJ_BOOL opj_jp2_read_pclr(opj_jp2_t *, OPJ_BYTE *, OPJ_UINT32, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_jp2_read_pclr, 83

	.type	.L__PRETTY_FUNCTION__.opj_jp2_read_cmap,@object # @__PRETTY_FUNCTION__.opj_jp2_read_cmap
.L__PRETTY_FUNCTION__.opj_jp2_read_cmap:
	.asciz	"OPJ_BOOL opj_jp2_read_cmap(opj_jp2_t *, OPJ_BYTE *, OPJ_UINT32, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_jp2_read_cmap, 83

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"p_cmap_header_data != 00"
	.size	.L.str.21, 25

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Need to read a PCLR box before the CMAP box.\n"
	.size	.L.str.22, 46

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Only one CMAP box is allowed.\n"
	.size	.L.str.23, 31

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Insufficient data for CMAP box.\n"
	.size	.L.str.24, 33

	.type	.L__PRETTY_FUNCTION__.opj_jp2_read_cdef,@object # @__PRETTY_FUNCTION__.opj_jp2_read_cdef
.L__PRETTY_FUNCTION__.opj_jp2_read_cdef:
	.asciz	"OPJ_BOOL opj_jp2_read_cdef(opj_jp2_t *, OPJ_BYTE *, OPJ_UINT32, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_jp2_read_cdef, 83

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"p_cdef_header_data != 00"
	.size	.L.str.25, 25

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Insufficient data for CDEF box.\n"
	.size	.L.str.26, 33

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Number of channel description is equal to zero in CDEF box.\n"
	.size	.L.str.27, 61

	.type	.L__PRETTY_FUNCTION__.opj_jp2_read_colr,@object # @__PRETTY_FUNCTION__.opj_jp2_read_colr
.L__PRETTY_FUNCTION__.opj_jp2_read_colr:
	.asciz	"OPJ_BOOL opj_jp2_read_colr(opj_jp2_t *, OPJ_BYTE *, OPJ_UINT32, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_jp2_read_colr, 83

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"p_colr_header_data != 00"
	.size	.L.str.28, 25

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Bad COLR header box (bad size)\n"
	.size	.L.str.29, 32

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"A conforming JP2 reader shall ignore all Colour Specification boxes after the first, so we ignore this one.\n"
	.size	.L.str.30, 109

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Bad COLR header box (bad size: %d)\n"
	.size	.L.str.31, 36

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"COLR BOX meth value is not a regular value (%d), so we will ignore the entire Colour Specification box. \n"
	.size	.L.str.32, 106

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Invalid component index %d (>= %d).\n"
	.size	.L.str.33, 37

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Unexpected OOM.\n"
	.size	.L.str.34, 17

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Invalid component/palette index for direct mapping %d.\n"
	.size	.L.str.35, 56

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Component %d is mapped twice.\n"
	.size	.L.str.36, 31

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Component %d doesn't have a mapping.\n"
	.size	.L.str.37, 38

	.type	.L__PRETTY_FUNCTION__.opj_jp2_write_ihdr,@object # @__PRETTY_FUNCTION__.opj_jp2_write_ihdr
.L__PRETTY_FUNCTION__.opj_jp2_write_ihdr:
	.asciz	"OPJ_BYTE *opj_jp2_write_ihdr(opj_jp2_t *, OPJ_UINT32 *)"
	.size	.L__PRETTY_FUNCTION__.opj_jp2_write_ihdr, 56

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"p_nb_bytes_written != 00"
	.size	.L.str.38, 25

	.type	.L__PRETTY_FUNCTION__.opj_jp2_write_bpcc,@object # @__PRETTY_FUNCTION__.opj_jp2_write_bpcc
.L__PRETTY_FUNCTION__.opj_jp2_write_bpcc:
	.asciz	"OPJ_BYTE *opj_jp2_write_bpcc(opj_jp2_t *, OPJ_UINT32 *)"
	.size	.L__PRETTY_FUNCTION__.opj_jp2_write_bpcc, 56

	.type	.L__PRETTY_FUNCTION__.opj_jp2_write_colr,@object # @__PRETTY_FUNCTION__.opj_jp2_write_colr
.L__PRETTY_FUNCTION__.opj_jp2_write_colr:
	.asciz	"OPJ_BYTE *opj_jp2_write_colr(opj_jp2_t *, OPJ_UINT32 *)"
	.size	.L__PRETTY_FUNCTION__.opj_jp2_write_colr, 56

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"jp2->meth == 1 || jp2->meth == 2"
	.size	.L.str.39, 33

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"jp2->color.icc_profile_len"
	.size	.L.str.40, 27

	.type	.L__PRETTY_FUNCTION__.opj_jpip_write_iptr,@object # @__PRETTY_FUNCTION__.opj_jpip_write_iptr
.L__PRETTY_FUNCTION__.opj_jpip_write_iptr:
	.asciz	"OPJ_BOOL opj_jpip_write_iptr(opj_jp2_t *, opj_stream_private_t *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_jpip_write_iptr, 85

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"opj_stream_has_seek(cio)"
	.size	.L.str.41, 25

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Failed to seek in the stream.\n"
	.size	.L.str.42, 31

	.type	.L__PRETTY_FUNCTION__.opj_jp2_write_jp2c,@object # @__PRETTY_FUNCTION__.opj_jp2_write_jp2c
.L__PRETTY_FUNCTION__.opj_jp2_write_jp2c:
	.asciz	"OPJ_BOOL opj_jp2_write_jp2c(opj_jp2_t *, opj_stream_private_t *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_jp2_write_jp2c, 84

	.type	.L__PRETTY_FUNCTION__.opj_jpip_write_cidx,@object # @__PRETTY_FUNCTION__.opj_jpip_write_cidx
.L__PRETTY_FUNCTION__.opj_jpip_write_cidx:
	.asciz	"OPJ_BOOL opj_jpip_write_cidx(opj_jp2_t *, opj_stream_private_t *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_jpip_write_cidx, 85

	.type	.L__PRETTY_FUNCTION__.opj_jpip_write_fidx,@object # @__PRETTY_FUNCTION__.opj_jpip_write_fidx
.L__PRETTY_FUNCTION__.opj_jpip_write_fidx:
	.asciz	"OPJ_BOOL opj_jpip_write_fidx(opj_jp2_t *, opj_stream_private_t *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_jpip_write_fidx, 85

	.type	.L__PRETTY_FUNCTION__.opj_jp2_read_header_procedure,@object # @__PRETTY_FUNCTION__.opj_jp2_read_header_procedure
.L__PRETTY_FUNCTION__.opj_jp2_read_header_procedure:
	.asciz	"OPJ_BOOL opj_jp2_read_header_procedure(opj_jp2_t *, opj_stream_private_t *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_jp2_read_header_procedure, 95

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Not enough memory to handle jpeg2000 file header\n"
	.size	.L.str.43, 50

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"bad placed jpeg codestream\n"
	.size	.L.str.44, 28

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Cannot handle box of undefined sizes\n"
	.size	.L.str.45, 38

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"invalid box size %d (%x)\n"
	.size	.L.str.46, 26

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Not enough memory to handle jpeg2000 box\n"
	.size	.L.str.47, 42

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Problem with reading JPEG2000 box, stream error\n"
	.size	.L.str.48, 49

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Problem with skipping JPEG2000 box, stream error\n"
	.size	.L.str.49, 50

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Cannot handle box sizes higher than 2^32\n"
	.size	.L.str.52, 42

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"p_procedure_list != 00"
	.size	.L.str.53, 23

	.type	.L__PRETTY_FUNCTION__.opj_jp2_exec,@object # @__PRETTY_FUNCTION__.opj_jp2_exec
.L__PRETTY_FUNCTION__.opj_jp2_exec:
	.asciz	"OPJ_BOOL opj_jp2_exec(opj_jp2_t *, opj_procedure_list_t *, opj_stream_private_t *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_jp2_exec, 102

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"p_header_data != 00"
	.size	.L.str.54, 20

	.type	.L__PRETTY_FUNCTION__.opj_jp2_read_jp,@object # @__PRETTY_FUNCTION__.opj_jp2_read_jp
.L__PRETTY_FUNCTION__.opj_jp2_read_jp:
	.asciz	"OPJ_BOOL opj_jp2_read_jp(opj_jp2_t *, OPJ_BYTE *, OPJ_UINT32, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_jp2_read_jp, 81

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"The signature box must be the first box in the file.\n"
	.size	.L.str.55, 54

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Error with JP signature Box size\n"
	.size	.L.str.56, 34

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Error with JP Signature : bad magic number\n"
	.size	.L.str.57, 44

	.type	.L__PRETTY_FUNCTION__.opj_jp2_read_ftyp,@object # @__PRETTY_FUNCTION__.opj_jp2_read_ftyp
.L__PRETTY_FUNCTION__.opj_jp2_read_ftyp:
	.asciz	"OPJ_BOOL opj_jp2_read_ftyp(opj_jp2_t *, OPJ_BYTE *, OPJ_UINT32, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_jp2_read_ftyp, 83

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"The ftyp box must be the second box in the file.\n"
	.size	.L.str.58, 50

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Error with FTYP signature Box size\n"
	.size	.L.str.59, 36

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Not enough memory with FTYP Box\n"
	.size	.L.str.60, 33

	.type	.L__PRETTY_FUNCTION__.opj_jp2_read_jp2h,@object # @__PRETTY_FUNCTION__.opj_jp2_read_jp2h
.L__PRETTY_FUNCTION__.opj_jp2_read_jp2h:
	.asciz	"OPJ_BOOL opj_jp2_read_jp2h(opj_jp2_t *, OPJ_BYTE *, OPJ_UINT32, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_jp2_read_jp2h, 83

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"The  box must be the first box in the file.\n"
	.size	.L.str.61, 45

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Stream error while reading JP2 Header box\n"
	.size	.L.str.62, 43

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Stream error while reading JP2 Header box: box length is inconsistent.\n"
	.size	.L.str.63, 72

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"p_data != 00"
	.size	.L.str.64, 13

	.type	.L__PRETTY_FUNCTION__.opj_jp2_read_boxhdr_char,@object # @__PRETTY_FUNCTION__.opj_jp2_read_boxhdr_char
.L__PRETTY_FUNCTION__.opj_jp2_read_boxhdr_char:
	.asciz	"OPJ_BOOL opj_jp2_read_boxhdr_char(opj_jp2_box_t *, OPJ_BYTE *, OPJ_UINT32 *, OPJ_UINT32, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_jp2_read_boxhdr_char, 108

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"Cannot handle box of less than 8 bytes\n"
	.size	.L.str.65, 40

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Cannot handle XL box of less than 16 bytes\n"
	.size	.L.str.66, 44

	.type	.L__PRETTY_FUNCTION__.opj_jp2_write_jp,@object # @__PRETTY_FUNCTION__.opj_jp2_write_jp
.L__PRETTY_FUNCTION__.opj_jp2_write_jp:
	.asciz	"OPJ_BOOL opj_jp2_write_jp(opj_jp2_t *, opj_stream_private_t *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_jp2_write_jp, 82

	.type	.L__PRETTY_FUNCTION__.opj_jp2_write_ftyp,@object # @__PRETTY_FUNCTION__.opj_jp2_write_ftyp
.L__PRETTY_FUNCTION__.opj_jp2_write_ftyp:
	.asciz	"OPJ_BOOL opj_jp2_write_ftyp(opj_jp2_t *, opj_stream_private_t *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_jp2_write_ftyp, 84

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"Not enough memory to handle ftyp data\n"
	.size	.L.str.67, 39

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"Error while writing ftyp data to stream\n"
	.size	.L.str.68, 41

	.type	.L__PRETTY_FUNCTION__.opj_jpip_skip_iptr,@object # @__PRETTY_FUNCTION__.opj_jpip_skip_iptr
.L__PRETTY_FUNCTION__.opj_jpip_skip_iptr:
	.asciz	"OPJ_BOOL opj_jpip_skip_iptr(opj_jp2_t *, opj_stream_private_t *, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_jpip_skip_iptr, 84


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
