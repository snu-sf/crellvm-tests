	.text
	.file	"gsmisc.bc"
	.globl	outprintf
	.align	16, 0x90
	.type	outprintf,@function
outprintf:                              # @outprintf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	subq	$1240, %rsp             # imm = 0x4D8
.Ltmp2:
	.cfi_def_cfa_offset 1264
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	testb	%al, %al
	je	.LBB0_2
# BB#1:                                 # %entry
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm5, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm7, 160(%rsp)
.LBB0_2:                                # %entry
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rdx, 16(%rsp)
	leaq	(%rsp), %rax
	movq	%rax, 192(%rsp)
	leaq	1264(%rsp), %rax
	movq	%rax, 184(%rsp)
	movl	$48, 180(%rsp)
	movl	$16, 176(%rsp)
	leaq	208(%rsp), %rdi
	leaq	176(%rsp), %rcx
	movl	$1024, %esi             # imm = 0x400
	movq	%rbp, %rdx
	callq	vsnprintf
	movl	%eax, %ebp
	leaq	208(%rsp), %rsi
	cmpl	$1024, %ebp             # imm = 0x400
	jb	.LBB0_4
# BB#3:                                 # %if.then
	movl	$1023, %edx             # imm = 0x3FF
	movq	%rbx, %rdi
	callq	outwrite
	movl	$msg_truncated, %esi
	movl	$39, %edx
	movq	%rbx, %rdi
	jmp	.LBB0_5
.LBB0_4:                                # %if.else
	movq	%rbx, %rdi
	movl	%ebp, %edx
.LBB0_5:                                # %if.end
	callq	outwrite
	movl	%ebp, %eax
	addq	$1240, %rsp             # imm = 0x4D8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	outprintf, .Lfunc_end0-outprintf
	.cfi_endproc

	.globl	errprintf_nomem
	.align	16, 0x90
	.type	errprintf_nomem,@function
errprintf_nomem:                        # @errprintf_nomem
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 16
	subq	$1232, %rsp             # imm = 0x4D0
.Ltmp6:
	.cfi_def_cfa_offset 1248
.Ltmp7:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testb	%al, %al
	je	.LBB1_2
# BB#1:                                 # %entry
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm5, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm7, 160(%rsp)
.LBB1_2:                                # %entry
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rsi, 8(%rsp)
	leaq	(%rsp), %rax
	movq	%rax, 192(%rsp)
	leaq	1248(%rsp), %rax
	movq	%rax, 184(%rsp)
	movl	$48, 180(%rsp)
	movl	$8, 176(%rsp)
	leaq	208(%rsp), %rdi
	leaq	176(%rsp), %rcx
	movl	$1024, %esi             # imm = 0x400
	movq	%rbx, %rdx
	callq	vsnprintf
	movl	%eax, %ebx
	leaq	208(%rsp), %rdi
	cmpl	$1024, %ebx             # imm = 0x400
	jb	.LBB1_4
# BB#3:                                 # %if.then
	movl	$1023, %esi             # imm = 0x3FF
	callq	errwrite_nomem
	movl	$msg_truncated, %edi
	movl	$39, %esi
	jmp	.LBB1_5
.LBB1_4:                                # %if.else
	movl	%ebx, %esi
.LBB1_5:                                # %if.end
	callq	errwrite_nomem
	movl	%ebx, %eax
	addq	$1232, %rsp             # imm = 0x4D0
	popq	%rbx
	retq
.Lfunc_end1:
	.size	errprintf_nomem, .Lfunc_end1-errprintf_nomem
	.cfi_endproc

	.globl	errprintf
	.align	16, 0x90
	.type	errprintf,@function
errprintf:                              # @errprintf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 24
	subq	$1240, %rsp             # imm = 0x4D8
.Ltmp10:
	.cfi_def_cfa_offset 1264
.Ltmp11:
	.cfi_offset %rbx, -24
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	testb	%al, %al
	je	.LBB2_2
# BB#1:                                 # %entry
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm5, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm7, 160(%rsp)
.LBB2_2:                                # %entry
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rdx, 16(%rsp)
	leaq	(%rsp), %rax
	movq	%rax, 192(%rsp)
	leaq	1264(%rsp), %rax
	movq	%rax, 184(%rsp)
	movl	$48, 180(%rsp)
	movl	$16, 176(%rsp)
	leaq	208(%rsp), %rdi
	leaq	176(%rsp), %rcx
	movl	$1024, %esi             # imm = 0x400
	movq	%rbp, %rdx
	callq	vsnprintf
	movl	%eax, %ebp
	leaq	208(%rsp), %rsi
	cmpl	$1024, %ebp             # imm = 0x400
	jb	.LBB2_4
# BB#3:                                 # %if.then
	movl	$1023, %edx             # imm = 0x3FF
	movq	%rbx, %rdi
	callq	errwrite
	movl	$msg_truncated, %esi
	movl	$39, %edx
	movq	%rbx, %rdi
	jmp	.LBB2_5
.LBB2_4:                                # %if.else
	movq	%rbx, %rdi
	movl	%ebp, %edx
.LBB2_5:                                # %if.end
	callq	errwrite
	movl	%ebp, %eax
	addq	$1240, %rsp             # imm = 0x4D8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	errprintf, .Lfunc_end2-errprintf
	.cfi_endproc

	.globl	gs_debug_c
	.align	16, 0x90
	.type	gs_debug_c,@function
gs_debug_c:                             # @gs_debug_c
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	%edi, %rcx
	movsbl	gs_debug(%rcx), %eax
	jmp	.LBB3_2
	.align	16, 0x90
.LBB3_1:                                # %do.body
                                        #   in Loop: Header=BB3_2 Depth=1
	movzbl	%cl, %ecx
	movsbl	gs_debug(%rcx), %edx
	orl	%edx, %eax
.LBB3_2:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movb	gs_debug_flag_implied_by(%rcx), %cl
	testb	%cl, %cl
	jne	.LBB3_1
# BB#3:                                 # %cleanup
	retq
.Lfunc_end3:
	.size	gs_debug_c, .Lfunc_end3-gs_debug_c
	.cfi_endproc

	.globl	dflush
	.align	16, 0x90
	.type	dflush,@function
dflush:                                 # @dflush
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	errflush_nomem          # TAILCALL
.Lfunc_end4:
	.size	dflush, .Lfunc_end4-dflush
	.cfi_endproc

	.globl	dprintf_file_and_line
	.align	16, 0x90
	.type	dprintf_file_and_line,@function
dprintf_file_and_line:                  # @dprintf_file_and_line
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 32
.Ltmp16:
	.cfi_offset %rbx, -32
.Ltmp17:
	.cfi_offset %r14, -24
.Ltmp18:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %rbp
	cmpb	$0, gs_debug+47(%rip)
	je	.LBB5_8
# BB#1:                                 # %if.then
	movq	%rbp, %rdi
	callq	strlen
	leaq	(%rbp,%rax), %rbx
	testq	%rax, %rax
	jle	.LBB5_7
# BB#2:                                 # %land.rhs.lr.ph.i
	callq	__ctype_b_loc
	movq	(%rax), %rax
	.align	16, 0x90
.LBB5_3:                                # %land.rhs.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rbx), %ecx
	testb	$8, (%rax,%rcx,2)
	jne	.LBB5_6
# BB#4:                                 # %switch.early.test.i
                                        #   in Loop: Header=BB5_3 Depth=1
	movzbl	%cl, %ecx
	cmpl	$95, %ecx
	je	.LBB5_6
# BB#5:                                 # %switch.early.test.i
                                        #   in Loop: Header=BB5_3 Depth=1
	cmpl	$46, %ecx
	jne	.LBB5_7
.LBB5_6:                                # %while.cond.backedge.i
                                        #   in Loop: Header=BB5_3 Depth=1
	decq	%rbx
	cmpq	%rbp, %rbx
	ja	.LBB5_3
.LBB5_7:                                # %dprintf_file_tail.exit
	movl	$.L.str, %edi
	xorl	%eax, %eax
	movq	%rbx, %rsi
	movl	%r14d, %edx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	errprintf_nomem         # TAILCALL
.LBB5_8:                                # %if.end
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	dprintf_file_and_line, .Lfunc_end5-dprintf_file_and_line
	.cfi_endproc

	.globl	lprintf_file_and_line
	.align	16, 0x90
	.type	lprintf_file_and_line,@function
lprintf_file_and_line:                  # @lprintf_file_and_line
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, %ecx
	movq	%rdi, %rdx
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	movq	%rdx, %rsi
	movl	%ecx, %edx
	jmp	errprintf_nomem         # TAILCALL
.Lfunc_end6:
	.size	lprintf_file_and_line, .Lfunc_end6-lprintf_file_and_line
	.cfi_endproc

	.globl	eprintf_program_ident
	.align	16, 0x90
	.type	eprintf_program_ident,@function
eprintf_program_ident:                  # @eprintf_program_ident
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movq	%rdi, %rcx
	testq	%rcx, %rcx
	je	.LBB7_4
# BB#1:                                 # %if.then
	movl	$.L.str.3, %eax
	movl	$.L.str.4, %edi
	testq	%rbx, %rbx
	cmovneq	%rax, %rdi
	xorl	%eax, %eax
	movq	%rcx, %rsi
	callq	errprintf_nomem
	testq	%rbx, %rbx
	je	.LBB7_3
# BB#2:                                 # %if.then.3
	movabsq	$-6640827866535438581, %r9 # imm = 0xA3D70A3D70A3D70B
	movq	%rbx, %rax
	imulq	%r9
	movq	%rdx, %r8
	addq	%rbx, %r8
	movq	%r8, %rdi
	shrq	$63, %rdi
	sarq	$6, %r8
	leal	(%r8,%rdi), %eax
	imull	$100, %eax, %eax
	movl	%ebx, %ecx
	subl	%eax, %ecx
	movabsq	$3777893186295716171, %rdx # imm = 0x346DC5D63886594B
	movq	%rbx, %rax
	imulq	%rdx
	movq	%rdx, %rsi
	movq	%rsi, %rax
	shrq	$63, %rax
	sarq	$11, %rsi
	addq	%rax, %rsi
	movq	%rsi, %rax
	imulq	%r9
	addq	%rsi, %rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	shrq	$6, %rdx
	addl	%eax, %edx
	imull	$100, %edx, %eax
	subl	%eax, %esi
	addq	%rdi, %r8
	movq	%r8, %rax
	imulq	%r9
	addq	%r8, %rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	shrq	$6, %rdx
	addl	%eax, %edx
	imull	$100, %edx, %eax
	subl	%eax, %r8d
	movl	$.L.str.5, %edi
	xorl	%eax, %eax
	movl	%r8d, %edx
	callq	errprintf_nomem
.LBB7_3:                                # %if.end
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	popq	%rbx
	jmp	errprintf_nomem         # TAILCALL
.LBB7_4:                                # %if.end.11
	popq	%rbx
	retq
.Lfunc_end7:
	.size	eprintf_program_ident, .Lfunc_end7-eprintf_program_ident
	.cfi_endproc

	.globl	dmprintf_file_and_line
	.align	16, 0x90
	.type	dmprintf_file_and_line,@function
dmprintf_file_and_line:                 # @dmprintf_file_and_line
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp22:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp23:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp25:
	.cfi_def_cfa_offset 48
.Ltmp26:
	.cfi_offset %rbx, -40
.Ltmp27:
	.cfi_offset %r14, -32
.Ltmp28:
	.cfi_offset %r15, -24
.Ltmp29:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %r15
	cmpb	$0, gs_debug+47(%rip)
	je	.LBB8_8
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	callq	strlen
	leaq	(%rbx,%rax), %rbp
	testq	%rax, %rax
	jle	.LBB8_7
# BB#2:                                 # %land.rhs.lr.ph.i
	callq	__ctype_b_loc
	movq	(%rax), %rax
	.align	16, 0x90
.LBB8_3:                                # %land.rhs.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rbp), %ecx
	testb	$8, (%rax,%rcx,2)
	jne	.LBB8_6
# BB#4:                                 # %switch.early.test.i
                                        #   in Loop: Header=BB8_3 Depth=1
	movzbl	%cl, %ecx
	cmpl	$95, %ecx
	je	.LBB8_6
# BB#5:                                 # %switch.early.test.i
                                        #   in Loop: Header=BB8_3 Depth=1
	cmpl	$46, %ecx
	jne	.LBB8_7
.LBB8_6:                                # %while.cond.backedge.i
                                        #   in Loop: Header=BB8_3 Depth=1
	decq	%rbp
	cmpq	%rbx, %rbp
	ja	.LBB8_3
.LBB8_7:                                # %dprintf_file_tail.exit
	movl	$.L.str, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	movq	%rbp, %rdx
	movl	%r14d, %ecx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	errprintf               # TAILCALL
.LBB8_8:                                # %if.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	dmprintf_file_and_line, .Lfunc_end8-dmprintf_file_and_line
	.cfi_endproc

	.globl	printf_program_ident
	.align	16, 0x90
	.type	printf_program_ident,@function
printf_program_ident:                   # @printf_program_ident
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp30:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp32:
	.cfi_def_cfa_offset 32
.Ltmp33:
	.cfi_offset %rbx, -24
.Ltmp34:
	.cfi_offset %r14, -16
	movq	%rdx, %rbx
	movq	%rsi, %rcx
	movq	%rdi, %r14
	testq	%rcx, %rcx
	je	.LBB9_2
# BB#1:                                 # %if.then
	testq	%rbx, %rbx
	movl	$.L.str.3, %eax
	movl	$.L.str.4, %esi
	cmovneq	%rax, %rsi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rcx, %rdx
	callq	outprintf
.LBB9_2:                                # %if.end
	testq	%rbx, %rbx
	je	.LBB9_3
# BB#4:                                 # %if.then.3
	movabsq	$-6640827866535438581, %rsi # imm = 0xA3D70A3D70A3D70B
	movq	%rbx, %rax
	imulq	%rsi
	movq	%rdx, %rcx
	addq	%rbx, %rcx
	movq	%rcx, %rdi
	shrq	$63, %rdi
	sarq	$6, %rcx
	leal	(%rcx,%rdi), %eax
	imull	$100, %eax, %eax
	movl	%ebx, %r8d
	subl	%eax, %r8d
	movabsq	$3777893186295716171, %rdx # imm = 0x346DC5D63886594B
	movq	%rbx, %rax
	imulq	%rdx
	movq	%rdx, %rbx
	movq	%rbx, %rax
	shrq	$63, %rax
	sarq	$11, %rbx
	addq	%rax, %rbx
	movq	%rbx, %rax
	imulq	%rsi
	addq	%rbx, %rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	shrq	$6, %rdx
	addl	%eax, %edx
	imull	$100, %edx, %eax
	subl	%eax, %ebx
	addq	%rdi, %rcx
	movq	%rcx, %rax
	imulq	%rsi
	addq	%rcx, %rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	shrq	$6, %rdx
	addl	%eax, %edx
	imull	$100, %edx, %eax
	subl	%eax, %ecx
	movl	$.L.str.5, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%ebx, %edx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	outprintf               # TAILCALL
.LBB9_3:                                # %if.end.10
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end9:
	.size	printf_program_ident, .Lfunc_end9-printf_program_ident
	.cfi_endproc

	.globl	emprintf_program_ident
	.align	16, 0x90
	.type	emprintf_program_ident,@function
emprintf_program_ident:                 # @emprintf_program_ident
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp35:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp37:
	.cfi_def_cfa_offset 32
.Ltmp38:
	.cfi_offset %rbx, -24
.Ltmp39:
	.cfi_offset %r14, -16
	movq	%rdx, %rbx
	movq	%rsi, %rcx
	movq	%rdi, %r14
	testq	%rcx, %rcx
	je	.LBB10_4
# BB#1:                                 # %if.then
	movl	$.L.str.3, %eax
	movl	$.L.str.4, %esi
	testq	%rbx, %rbx
	cmovneq	%rax, %rsi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rcx, %rdx
	callq	errprintf
	testq	%rbx, %rbx
	je	.LBB10_3
# BB#2:                                 # %if.then.3
	movabsq	$-6640827866535438581, %rsi # imm = 0xA3D70A3D70A3D70B
	movq	%rbx, %rax
	imulq	%rsi
	movq	%rdx, %rcx
	addq	%rbx, %rcx
	movq	%rcx, %rdi
	shrq	$63, %rdi
	sarq	$6, %rcx
	leal	(%rcx,%rdi), %eax
	imull	$100, %eax, %eax
	movl	%ebx, %r8d
	subl	%eax, %r8d
	movabsq	$3777893186295716171, %rdx # imm = 0x346DC5D63886594B
	movq	%rbx, %rax
	imulq	%rdx
	movq	%rdx, %rbx
	movq	%rbx, %rax
	shrq	$63, %rax
	sarq	$11, %rbx
	addq	%rax, %rbx
	movq	%rbx, %rax
	imulq	%rsi
	addq	%rbx, %rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	shrq	$6, %rdx
	addl	%eax, %edx
	imull	$100, %edx, %eax
	subl	%eax, %ebx
	addq	%rdi, %rcx
	movq	%rcx, %rax
	imulq	%rsi
	addq	%rcx, %rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	shrq	$6, %rdx
	addl	%eax, %edx
	imull	$100, %edx, %eax
	subl	%eax, %ecx
	movl	$.L.str.5, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%ebx, %edx
	callq	errprintf
.LBB10_3:                               # %if.end
	movl	$.L.str.6, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	errprintf               # TAILCALL
.LBB10_4:                               # %if.end.11
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end10:
	.size	emprintf_program_ident, .Lfunc_end10-emprintf_program_ident
	.cfi_endproc

	.globl	mlprintf_file_and_line
	.align	16, 0x90
	.type	mlprintf_file_and_line,@function
mlprintf_file_and_line:                 # @mlprintf_file_and_line
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	jmp	errprintf               # TAILCALL
.Lfunc_end11:
	.size	mlprintf_file_and_line, .Lfunc_end11-mlprintf_file_and_line
	.cfi_endproc

	.globl	gs_log_error
	.align	16, 0x90
	.type	gs_log_error,@function
gs_log_error:                           # @gs_log_error
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
	cmpb	$0, gs_debug+35(%rip)
	je	.LBB12_4
# BB#1:                                 # %if.then
	testq	%rsi, %rsi
	je	.LBB12_2
# BB#3:                                 # %if.else
	movl	$.L.str.8, %edi
	xorl	%eax, %eax
	movl	%ebx, %ecx
	callq	errprintf_nomem
	jmp	.LBB12_4
.LBB12_2:                               # %if.then.1
	movl	$.L.str.7, %edi
	xorl	%eax, %eax
	movl	%ebx, %esi
	callq	errprintf_nomem
.LBB12_4:                               # %if.end.3
	movl	%ebx, %eax
	popq	%rbx
	retq
.Lfunc_end12:
	.size	gs_log_error, .Lfunc_end12-gs_log_error
	.cfi_endproc

	.globl	gs_return_check_interrupt
	.align	16, 0x90
	.type	gs_return_check_interrupt,@function
gs_return_check_interrupt:              # @gs_return_check_interrupt
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, %eax
	retq
.Lfunc_end13:
	.size	gs_return_check_interrupt, .Lfunc_end13-gs_return_check_interrupt
	.cfi_endproc

	.globl	gs_throw_imp
	.align	16, 0x90
	.type	gs_throw_imp,@function
gs_throw_imp:                           # @gs_throw_imp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp43:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp44:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp45:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 48
	subq	$1232, %rsp             # imm = 0x4D0
.Ltmp47:
	.cfi_def_cfa_offset 1280
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
	movl	%ecx, %ebp
	movl	%edx, %r14d
	movl	%r8d, %ebx
	movq	%rsi, %r12
	movq	%rdi, %r15
	testb	%al, %al
	je	.LBB14_2
# BB#1:                                 # %entry
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm5, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm7, 160(%rsp)
.LBB14_2:                               # %entry
	leaq	(%rsp), %rax
	movq	%rax, 192(%rsp)
	leaq	1280(%rsp), %rax
	movq	%rax, 184(%rsp)
	movl	$48, 180(%rsp)
	movl	$48, 176(%rsp)
	leaq	208(%rsp), %rdi
	leaq	176(%rsp), %rcx
	movl	$1024, %esi             # imm = 0x400
	movq	%r9, %rdx
	callq	vsnprintf
	movb	$0, 1231(%rsp)
	movl	%ebp, %eax
	cmpl	$3, %ebp
	ja	.LBB14_9
# BB#3:                                 # %entry
	jmpq	*.LJTI14_0(,%rax,8)
.LBB14_4:                               # %if.then.7
	leaq	208(%rsp), %r8
	movl	$.L.str.10, %edi
	jmp	.LBB14_8
.LBB14_5:                               # %if.then.12
	leaq	208(%rsp), %r8
	movl	$.L.str.11, %edi
	jmp	.LBB14_8
.LBB14_6:                               # %if.then.17
	leaq	208(%rsp), %r8
	movl	$.L.str.12, %edi
	jmp	.LBB14_8
.LBB14_7:                               # %if.then.22
	leaq	208(%rsp), %r8
	movl	$.L.str.13, %edi
.LBB14_8:                               # %if.end.25
	xorl	%eax, %eax
	movq	%r12, %rsi
	movl	%r14d, %edx
	movq	%r15, %rcx
	callq	errprintf_nomem
.LBB14_9:                               # %if.end.25
	movl	%ebx, %eax
	addq	$1232, %rsp             # imm = 0x4D0
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gs_throw_imp, .Lfunc_end14-gs_throw_imp
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI14_0:
	.quad	.LBB14_4
	.quad	.LBB14_5
	.quad	.LBB14_6
	.quad	.LBB14_7

	.text
	.globl	gs_errstr
	.align	16, 0x90
	.type	gs_errstr,@function
gs_errstr:                              # @gs_errstr
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$.L.str.14, %eax
	leal	28(%rdi), %ecx
	cmpl	$22, %ecx
	jbe	.LBB15_20
# BB#1:                                 # %entry
	cmpl	$-100, %edi
	je	.LBB15_18
# BB#2:                                 # %entry
	cmpl	$-99, %edi
	je	.LBB15_3
.LBB15_19:                              # %return
	retq
.LBB15_20:                              # %entry
	jmpq	*.LJTI15_0(,%rcx,8)
.LBB15_17:                              # %sw.bb.14
	movl	$.L.str.28, %eax
	retq
.LBB15_18:                              # %sw.bb.16
	movl	$.L.str.30, %eax
	jmp	.LBB15_19
.LBB15_3:                               # %sw.bb.15
	movl	$.L.str.29, %eax
	retq
.LBB15_16:                              # %sw.bb.13
	movl	$.L.str.27, %eax
	retq
.LBB15_15:                              # %sw.bb.12
	movl	$.L.str.26, %eax
	retq
.LBB15_14:                              # %sw.bb.11
	movl	$.L.str.25, %eax
	retq
.LBB15_13:                              # %sw.bb.10
	movl	$.L.str.24, %eax
	retq
.LBB15_12:                              # %sw.bb.9
	movl	$.L.str.23, %eax
	retq
.LBB15_11:                              # %sw.bb.8
	movl	$.L.str.22, %eax
	retq
.LBB15_10:                              # %sw.bb.7
	movl	$.L.str.21, %eax
	retq
.LBB15_9:                               # %sw.bb.6
	movl	$.L.str.20, %eax
	retq
.LBB15_8:                               # %sw.bb.5
	movl	$.L.str.19, %eax
	retq
.LBB15_7:                               # %sw.bb.4
	movl	$.L.str.18, %eax
	retq
.LBB15_6:                               # %sw.bb.3
	movl	$.L.str.17, %eax
	retq
.LBB15_5:                               # %sw.bb.2
	movl	$.L.str.16, %eax
	retq
.LBB15_4:                               # %sw.bb.1
	movl	$.L.str.15, %eax
	retq
.Lfunc_end15:
	.size	gs_errstr, .Lfunc_end15-gs_errstr
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI15_0:
	.quad	.LBB15_17
	.quad	.LBB15_19
	.quad	.LBB15_19
	.quad	.LBB15_16
	.quad	.LBB15_19
	.quad	.LBB15_15
	.quad	.LBB15_14
	.quad	.LBB15_13
	.quad	.LBB15_12
	.quad	.LBB15_19
	.quad	.LBB15_19
	.quad	.LBB15_19
	.quad	.LBB15_19
	.quad	.LBB15_11
	.quad	.LBB15_10
	.quad	.LBB15_9
	.quad	.LBB15_8
	.quad	.LBB15_19
	.quad	.LBB15_7
	.quad	.LBB15_6
	.quad	.LBB15_19
	.quad	.LBB15_5
	.quad	.LBB15_4

	.text
	.globl	gs_realloc
	.align	16, 0x90
	.type	gs_realloc,@function
gs_realloc:                             # @gs_realloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp53:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp54:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp55:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp56:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp57:
	.cfi_def_cfa_offset 48
.Ltmp58:
	.cfi_offset %rbx, -40
.Ltmp59:
	.cfi_offset %r12, -32
.Ltmp60:
	.cfi_offset %r14, -24
.Ltmp61:
	.cfi_offset %r15, -16
	movq	%rdx, %rbx
	movq	%rsi, %r12
	movq	%rdi, %r14
	xorl	%r15d, %r15d
	testq	%rbx, %rbx
	je	.LBB16_2
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	callq	malloc
	movq	%rax, %r15
	xorl	%eax, %eax
	testq	%r15, %r15
	je	.LBB16_7
.LBB16_2:                               # %if.end.2
	testq	%r14, %r14
	je	.LBB16_6
# BB#3:                                 # %if.then.4
	testq	%r15, %r15
	je	.LBB16_5
# BB#4:                                 # %if.then.6
	cmpq	%rbx, %r12
	cmovbq	%r12, %rbx
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy
.LBB16_5:                               # %if.end.9
	movq	%r14, %rdi
	callq	free
.LBB16_6:                               # %cleanup
	movq	%r15, %rax
.LBB16_7:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end16:
	.size	gs_realloc, .Lfunc_end16-gs_realloc
	.cfi_endproc

	.globl	debug_print_string_hex_nomem
	.align	16, 0x90
	.type	debug_print_string_hex_nomem,@function
debug_print_string_hex_nomem:           # @debug_print_string_hex_nomem
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp63:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp64:
	.cfi_def_cfa_offset 32
.Ltmp65:
	.cfi_offset %rbx, -24
.Ltmp66:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	testl	%ebp, %ebp
	je	.LBB17_2
	.align	16, 0x90
.LBB17_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %esi
	movl	$.L.str.31, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
	incq	%rbx
	decl	%ebp
	jne	.LBB17_1
.LBB17_2:                               # %for.end
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	errflush_nomem          # TAILCALL
.Lfunc_end17:
	.size	debug_print_string_hex_nomem, .Lfunc_end17-debug_print_string_hex_nomem
	.cfi_endproc

	.globl	debug_dump_bytes
	.align	16, 0x90
	.type	debug_dump_bytes,@function
debug_dump_bytes:                       # @debug_dump_bytes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp68:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp69:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp70:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp71:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp72:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp73:
	.cfi_def_cfa_offset 64
.Ltmp74:
	.cfi_offset %rbx, -56
.Ltmp75:
	.cfi_offset %r12, -48
.Ltmp76:
	.cfi_offset %r13, -40
.Ltmp77:
	.cfi_offset %r14, -32
.Ltmp78:
	.cfi_offset %r15, -24
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	cmpq	%r14, %rbx
	jae	.LBB18_3
# BB#1:                                 # %entry
	testq	%rcx, %rcx
	je	.LBB18_3
# BB#2:                                 # %if.then
	movl	$.L.str.32, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	movq	%rcx, %rdx
	callq	errprintf
.LBB18_3:                               # %while.cond.preheader
	cmpq	%r14, %rbx
	je	.LBB18_10
# BB#4:                                 # %while.body.preheader
	movq	%r14, %r12
	notq	%r12
	.align	16, 0x90
.LBB18_5:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_7 Depth 2
	leaq	16(%rbx), %r13
	cmpq	%r14, %r13
	cmovaeq	%r14, %r13
	movl	$.L.str.33, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	movq	%rbx, %rdx
	callq	errprintf
	cmpq	%r13, %rbx
	je	.LBB18_9
# BB#6:                                 # %while.body.7.preheader
                                        #   in Loop: Header=BB18_5 Depth=1
	movq	$-17, %rbp
	subq	%rbx, %rbp
	cmpq	%rbp, %r12
	cmovaq	%r12, %rbp
	negq	%rbp
	incq	%rbx
	.align	16, 0x90
.LBB18_7:                               # %while.body.7
                                        #   Parent Loop BB18_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-1(%rbx), %edx
	movl	$.L.str.34, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	errprintf
	incq	%rbx
	cmpq	%rbx, %rbp
	jne	.LBB18_7
# BB#8:                                 #   in Loop: Header=BB18_5 Depth=1
	movq	%r13, %rbx
.LBB18_9:                               # %while.end
                                        #   in Loop: Header=BB18_5 Depth=1
	movl	$.L.str.35, %esi
	movl	$10, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	errprintf
	cmpq	%r14, %rbx
	jne	.LBB18_5
.LBB18_10:                              # %while.end.10
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	debug_dump_bytes, .Lfunc_end18-debug_dump_bytes
	.cfi_endproc

	.globl	debug_dump_bitmap
	.align	16, 0x90
	.type	debug_dump_bitmap,@function
debug_dump_bitmap:                      # @debug_dump_bitmap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp81:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp82:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp83:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp84:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp85:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp86:
	.cfi_def_cfa_offset 64
.Ltmp87:
	.cfi_offset %rbx, -56
.Ltmp88:
	.cfi_offset %r12, -48
.Ltmp89:
	.cfi_offset %r13, -40
.Ltmp90:
	.cfi_offset %r14, -32
.Ltmp91:
	.cfi_offset %r15, -24
.Ltmp92:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movl	%ecx, %r15d
	movq	%rsi, %rbx
	movq	%rdi, %r12
	testl	%r15d, %r15d
	je	.LBB19_3
# BB#1:                                 # %for.body.lr.ph
	movl	%edx, %r13d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB19_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	testl	%ebp, %ebp
	movl	$0, %ecx
	cmoveq	%r14, %rcx
	movq	%rbx, %rsi
	leaq	(%rbx,%r13), %rbx
	movq	%r12, %rdi
	movq	%rbx, %rdx
	callq	debug_dump_bytes
	incl	%ebp
	cmpl	%ebp, %r15d
	jne	.LBB19_2
.LBB19_3:                               # %for.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	debug_dump_bitmap, .Lfunc_end19-debug_dump_bitmap
	.cfi_endproc

	.globl	debug_print_string
	.align	16, 0x90
	.type	debug_print_string,@function
debug_print_string:                     # @debug_print_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp94:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp95:
	.cfi_def_cfa_offset 32
.Ltmp96:
	.cfi_offset %rbx, -32
.Ltmp97:
	.cfi_offset %r14, -24
.Ltmp98:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testl	%ebp, %ebp
	je	.LBB20_2
	.align	16, 0x90
.LBB20_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %edx
	movl	$.L.str.35, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	errprintf
	incq	%rbx
	decl	%ebp
	jne	.LBB20_1
.LBB20_2:                               # %for.end
	movq	%r14, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	errflush                # TAILCALL
.Lfunc_end20:
	.size	debug_print_string, .Lfunc_end20-debug_print_string
	.cfi_endproc

	.globl	debug_print_string_hex
	.align	16, 0x90
	.type	debug_print_string_hex,@function
debug_print_string_hex:                 # @debug_print_string_hex
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp100:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp101:
	.cfi_def_cfa_offset 32
.Ltmp102:
	.cfi_offset %rbx, -32
.Ltmp103:
	.cfi_offset %r14, -24
.Ltmp104:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testl	%ebp, %ebp
	je	.LBB21_2
	.align	16, 0x90
.LBB21_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %edx
	movl	$.L.str.31, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	errprintf
	incq	%rbx
	decl	%ebp
	jne	.LBB21_1
.LBB21_2:                               # %for.end
	movq	%r14, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	errflush                # TAILCALL
.Lfunc_end21:
	.size	debug_print_string_hex, .Lfunc_end21-debug_print_string_hex
	.cfi_endproc

	.globl	imod
	.align	16, 0x90
	.type	imod,@function
imod:                                   # @imod
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	testl	%esi, %esi
	jle	.LBB22_4
# BB#1:                                 # %if.end
	testl	%edi, %edi
	js	.LBB22_3
# BB#2:                                 # %if.then.2
	movl	%edi, %eax
	cltd
	idivl	%esi
	movl	%edx, %eax
	retq
.LBB22_3:                               # %if.end.3
	negl	%edi
	movl	%edi, %eax
	cltd
	idivl	%esi
	subl	%edx, %esi
	testl	%edx, %edx
	cmovel	%edx, %esi
	movl	%esi, %eax
.LBB22_4:                               # %return
	retq
.Lfunc_end22:
	.size	imod, .Lfunc_end22-imod
	.cfi_endproc

	.globl	igcd
	.align	16, 0x90
	.type	igcd,@function
igcd:                                   # @igcd
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edi, %r8d
	negl	%r8d
	cmovll	%edi, %r8d
	movl	%esi, %ecx
	negl	%ecx
	cmovll	%esi, %ecx
	testl	%edi, %edi
	je	.LBB23_7
# BB#1:                                 # %entry
	testl	%esi, %esi
	je	.LBB23_7
	.align	16, 0x90
.LBB23_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ecx, %r8d
	jg	.LBB23_3
# BB#5:                                 # %if.else
                                        #   in Loop: Header=BB23_2 Depth=1
	movl	%ecx, %eax
	cltd
	idivl	%r8d
	movl	%edx, %ecx
	testl	%ecx, %ecx
	jne	.LBB23_2
	jmp	.LBB23_6
.LBB23_3:                               # %if.then.8
                                        #   in Loop: Header=BB23_2 Depth=1
	movl	%r8d, %eax
	cltd
	idivl	%ecx
	movl	%edx, %r8d
	testl	%r8d, %r8d
	je	.LBB23_7
# BB#4:                                 # %if.then.8
                                        #   in Loop: Header=BB23_2 Depth=1
	testl	%ecx, %ecx
	jne	.LBB23_2
	jmp	.LBB23_7
.LBB23_6:
	xorl	%ecx, %ecx
.LBB23_7:                               # %while.end
	addl	%ecx, %r8d
	movl	%r8d, %eax
	retq
.Lfunc_end23:
	.size	igcd, .Lfunc_end23-igcd
	.cfi_endproc

	.globl	idivmod
	.align	16, 0x90
	.type	idivmod,@function
idivmod:                                # @idivmod
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp105:
	.cfi_def_cfa_offset 16
.Ltmp106:
	.cfi_offset %rbx, -16
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	testl	%edi, %edi
	je	.LBB24_1
# BB#2:
	movl	$1, %edx
	movl	%r8d, %r11d
	movl	%edi, %ecx
	.align	16, 0x90
.LBB24_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, %r10d
	movl	%r11d, %eax
	cltd
	idivl	%ecx
	movl	%eax, %ebx
	imull	%r10d, %ebx
	movl	%r9d, %edx
	subl	%ebx, %edx
	imull	%ecx, %eax
	movl	%r11d, %ebx
	subl	%eax, %ebx
	movl	%r10d, %r9d
	movl	%ecx, %r11d
	movl	%ebx, %ecx
	jne	.LBB24_3
	jmp	.LBB24_4
.LBB24_1:
	xorl	%r10d, %r10d
.LBB24_4:                               # %while.end
	imull	%esi, %r10d
	movl	%edi, %r9d
	negl	%r9d
	cmovll	%edi, %r9d
	movl	%r8d, %ecx
	negl	%ecx
	cmovll	%r8d, %ecx
	testl	%edi, %edi
	je	.LBB24_11
# BB#5:                                 # %while.end
	testl	%r8d, %r8d
	je	.LBB24_11
	.align	16, 0x90
.LBB24_6:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ecx, %r9d
	jg	.LBB24_7
# BB#9:                                 # %if.else.i
                                        #   in Loop: Header=BB24_6 Depth=1
	movl	%ecx, %eax
	cltd
	idivl	%r9d
	movl	%edx, %ecx
	testl	%ecx, %ecx
	jne	.LBB24_6
	jmp	.LBB24_10
.LBB24_7:                               # %if.then.8.i
                                        #   in Loop: Header=BB24_6 Depth=1
	movl	%r9d, %eax
	cltd
	idivl	%ecx
	testl	%ecx, %ecx
	movl	%edx, %r9d
	je	.LBB24_11
# BB#8:                                 # %if.then.8.i
                                        #   in Loop: Header=BB24_6 Depth=1
	testl	%r9d, %r9d
	jne	.LBB24_6
	jmp	.LBB24_11
.LBB24_10:
	xorl	%ecx, %ecx
.LBB24_11:                              # %igcd.exit
	addl	%ecx, %r9d
	movl	%r10d, %eax
	cltd
	idivl	%r9d
	xorl	%ecx, %ecx
	testl	%r8d, %r8d
	jle	.LBB24_15
# BB#12:                                # %if.end.i
	testl	%eax, %eax
	js	.LBB24_14
# BB#13:                                # %if.then.2.i
	cltd
	idivl	%r8d
	movl	%edx, %ecx
	jmp	.LBB24_15
.LBB24_14:                              # %if.end.3.i
	negl	%eax
	cltd
	idivl	%r8d
	subl	%edx, %r8d
	testl	%edx, %edx
	cmovel	%edx, %r8d
	movl	%r8d, %ecx
.LBB24_15:                              # %imod.exit
	movl	%ecx, %eax
	popq	%rbx
	retq
.Lfunc_end24:
	.size	idivmod, .Lfunc_end24-idivmod
	.cfi_endproc

	.globl	ilog2
	.align	16, 0x90
	.type	ilog2,@function
ilog2:                                  # @ilog2
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	cmpl	$16, %edi
	jl	.LBB25_2
	.align	16, 0x90
.LBB25_1:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	sarl	$4, %edi
	addl	$4, %eax
	cmpl	$15, %edi
	jg	.LBB25_1
.LBB25_2:                               # %while.end
	cmpl	$2, %edi
	jl	.LBB25_4
# BB#3:                                 # %cond.false
	movslq	%edi, %rcx
	movsbl	.L.str.36(%rcx), %ecx
	addl	%ecx, %eax
.LBB25_4:                               # %cond.end
	retq
.Lfunc_end25:
	.size	ilog2, .Lfunc_end25-ilog2
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI26_0:
	.quad	4656722014701092864     # double 2048
	.text
	.globl	fixed_mult_quo
	.align	16, 0x90
	.type	fixed_mult_quo,@function
fixed_mult_quo:                         # @fixed_mult_quo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp107:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp108:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp109:
	.cfi_def_cfa_offset 32
.Ltmp110:
	.cfi_offset %rbx, -32
.Ltmp111:
	.cfi_offset %r14, -24
.Ltmp112:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movl	%esi, %ebp
	movl	%edi, %ebx
	cmpl	$2097152, %ebp          # imm = 0x200000
	jl	.LBB26_2
# BB#1:                                 # %lor.lhs.false
	movl	%ebx, %eax
	negl	%eax
	cmovll	%ebx, %eax
	cmpl	$2097151, %eax          # imm = 0x1FFFFF
	jg	.LBB26_3
.LBB26_2:                               # %if.then
	cvtsi2sdl	%ebx, %xmm1
	cvtsi2sdl	%ebp, %xmm0
	mulsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%r14d, %xmm1
	divsd	%xmm1, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	jmp	.LBB26_4
.LBB26_3:                               # %if.else
	cvtsi2sdl	%ebx, %xmm1
	cvtsi2sdl	%ebp, %xmm0
	mulsd	%xmm1, %xmm0
	addsd	.LCPI26_0(%rip), %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%r14d, %xmm1
	divsd	%xmm1, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	imull	%ebx, %ebp
	imull	%eax, %r14d
	cmpl	%r14d, %ebp
	setl	%cl
	movzbl	%cl, %ecx
	subl	%ecx, %eax
.LBB26_4:                               # %return
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end26:
	.size	fixed_mult_quo, .Lfunc_end26-fixed_mult_quo
	.cfi_endproc

	.globl	gs_sqrt
	.align	16, 0x90
	.type	gs_sqrt,@function
gs_sqrt:                                # @gs_sqrt
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp113:
	.cfi_def_cfa_offset 16
	movl	%esi, %ecx
	movq	%rdi, %rdx
	cmpb	$0, gs_debug+126(%rip)
	je	.LBB27_2
# BB#1:                                 # %if.then
	movl	$.L.str.37, %edi
	movb	$1, %al
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	%rdx, %rsi
	movl	%ecx, %edx
	callq	errprintf_nomem
	callq	errflush_nomem
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB27_2:                               # %if.end
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jp	.LBB27_4
# BB#3:                                 # %if.end.split
	popq	%rax
	retq
.LBB27_4:                               # %call.sqrt
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	popq	%rax
	jmp	sqrt                    # TAILCALL
.Lfunc_end27:
	.size	gs_sqrt, .Lfunc_end27-gs_sqrt
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI28_0:
	.quad	4580687790476533049     # double 0.017453292519943295
.LCPI28_1:
	.quad	4616189618054758400     # double 4
	.text
	.globl	gs_sin_degrees
	.align	16, 0x90
	.type	gs_sin_degrees,@function
gs_sin_degrees:                         # @gs_sin_degrees
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp114:
	.cfi_def_cfa_offset 32
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	divsd	const_90_degrees(%rip), %xmm0
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	callq	floor
	movsd	16(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movapd	%xmm1, %xmm0
	jne	.LBB28_1
	jnp	.LBB28_2
.LBB28_1:                               # %if.end
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	.LCPI28_0(%rip), %xmm0
	addq	$24, %rsp
	jmp	sin                     # TAILCALL
.LBB28_2:                               # %cleanup
	movsd	.LCPI28_1(%rip), %xmm1  # xmm1 = mem[0],zero
	callq	fmod
	cvttsd2si	%xmm0, %eax
	andl	$3, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	isincos(,%rax,4), %xmm0
	addq	$24, %rsp
	retq
.Lfunc_end28:
	.size	gs_sin_degrees, .Lfunc_end28-gs_sin_degrees
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI29_0:
	.quad	4580687790476533049     # double 0.017453292519943295
.LCPI29_1:
	.quad	4616189618054758400     # double 4
	.text
	.globl	gs_cos_degrees
	.align	16, 0x90
	.type	gs_cos_degrees,@function
gs_cos_degrees:                         # @gs_cos_degrees
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp115:
	.cfi_def_cfa_offset 32
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	divsd	const_90_degrees(%rip), %xmm0
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	callq	floor
	movsd	16(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movapd	%xmm1, %xmm0
	jne	.LBB29_1
	jnp	.LBB29_2
.LBB29_1:                               # %if.end
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	.LCPI29_0(%rip), %xmm0
	addq	$24, %rsp
	jmp	cos                     # TAILCALL
.LBB29_2:                               # %cleanup
	movsd	.LCPI29_1(%rip), %xmm1  # xmm1 = mem[0],zero
	callq	fmod
	cvttsd2si	%xmm0, %eax
	andl	$3, %eax
	incl	%eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	isincos(,%rax,4), %xmm0
	addq	$24, %rsp
	retq
.Lfunc_end29:
	.size	gs_cos_degrees, .Lfunc_end29-gs_cos_degrees
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI30_0:
	.quad	4580687790476533049     # double 0.017453292519943295
.LCPI30_1:
	.quad	4616189618054758400     # double 4
	.text
	.globl	gs_sincos_degrees
	.align	16, 0x90
	.type	gs_sincos_degrees,@function
gs_sincos_degrees:                      # @gs_sincos_degrees
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp116:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp117:
	.cfi_def_cfa_offset 32
.Ltmp118:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	divsd	const_90_degrees(%rip), %xmm0
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	callq	floor
	movsd	(%rsp), %xmm1           # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movapd	%xmm1, %xmm0
	jne	.LBB30_2
	jp	.LBB30_2
# BB#1:                                 # %if.then
	movsd	.LCPI30_1(%rip), %xmm1  # xmm1 = mem[0],zero
	callq	fmod
	cvttsd2si	%xmm0, %eax
	andl	$3, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	isincos(,%rax,4), %xmm0
	movsd	%xmm0, (%rbx)
	incl	%eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	isincos(,%rax,4), %xmm0
	movl	$1, %eax
	jmp	.LBB30_3
.LBB30_2:                               # %if.else
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	.LCPI30_0(%rip), %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	callq	sin
	movsd	%xmm0, (%rbx)
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cos
	xorl	%eax, %eax
.LBB30_3:                               # %if.end
	movsd	%xmm0, 8(%rbx)
	movl	%eax, 16(%rbx)
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end30:
	.size	gs_sincos_degrees, .Lfunc_end30-gs_sincos_degrees
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI31_0:
	.quad	4633260481411531256     # double 57.295779513082323
.LCPI31_1:
	.quad	4645040803167600640     # double 360
.LCPI31_2:
	.quad	4640537203540230144     # double 180
.LCPI31_3:
	.quad	0                       # double 0
	.text
	.globl	gs_atan2_degrees
	.align	16, 0x90
	.type	gs_atan2_degrees,@function
gs_atan2_degrees:                       # @gs_atan2_degrees
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp119:
	.cfi_def_cfa_offset 16
.Ltmp120:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	xorpd	%xmm2, %xmm2
	ucomisd	%xmm2, %xmm0
	jne	.LBB31_5
	jp	.LBB31_5
# BB#1:                                 # %if.then
	ucomisd	%xmm2, %xmm1
	jne	.LBB31_4
	jp	.LBB31_4
# BB#2:                                 # %if.then.2
	movl	$-23, %ebx
	cmpb	$0, gs_debug+35(%rip)
	je	.LBB31_7
# BB#3:                                 # %if.then.i
	movl	$-23, %ebx
	movl	$.L.str.8, %edi
	movl	$.L.str.9, %esi
	movl	$1002, %edx             # imm = 0x3EA
	movl	$-23, %ecx
	xorl	%eax, %eax
	callq	errprintf_nomem
	jmp	.LBB31_7
.LBB31_5:                               # %if.else
	callq	atan2
	mulsd	.LCPI31_0(%rip), %xmm0
	movsd	.LCPI31_1(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movapd	%xmm0, %xmm2
	cmpltsd	.LCPI31_3, %xmm2
	andpd	%xmm2, %xmm1
	andnpd	%xmm0, %xmm2
	orpd	%xmm1, %xmm2
	jmp	.LBB31_6
.LBB31_4:                               # %if.end
	xorpd	%xmm0, %xmm0
	cmpltsd	%xmm0, %xmm1
	movsd	.LCPI31_2(%rip), %xmm2  # xmm2 = mem[0],zero
	andpd	%xmm1, %xmm2
.LBB31_6:                               # %if.end.9
	movsd	%xmm2, (%rbx)
	xorl	%ebx, %ebx
.LBB31_7:                               # %return
	movl	%ebx, %eax
	popq	%rbx
	retq
.Lfunc_end31:
	.size	gs_atan2_degrees, .Lfunc_end31-gs_atan2_degrees
	.cfi_endproc

	.globl	gx_intersect_small_bars
	.align	16, 0x90
	.type	gx_intersect_small_bars,@function
gx_intersect_small_bars:                # @gx_intersect_small_bars
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp121:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp122:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp123:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp124:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp125:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp126:
	.cfi_def_cfa_offset 56
.Ltmp127:
	.cfi_offset %rbx, -56
.Ltmp128:
	.cfi_offset %r12, -48
.Ltmp129:
	.cfi_offset %r13, -40
.Ltmp130:
	.cfi_offset %r14, -32
.Ltmp131:
	.cfi_offset %r15, -24
.Ltmp132:
	.cfi_offset %rbp, -16
	xorl	%r10d, %r10d
	subl	%edi, %edx
	jne	.LBB32_2
# BB#1:                                 # %entry
	cmpl	%esi, %ecx
	je	.LBB32_40
.LBB32_2:                               # %if.end
	cmpl	%edi, %r8d
	jne	.LBB32_4
# BB#3:                                 # %if.end
	cmpl	%esi, %r9d
	je	.LBB32_40
.LBB32_4:                               # %if.end.11
	movl	64(%rsp), %eax
	movl	56(%rsp), %ebp
	cmpl	%edi, %ebp
	jne	.LBB32_6
# BB#5:                                 # %if.end.11
	cmpl	%esi, %eax
	je	.LBB32_40
.LBB32_6:                               # %if.end.16
	subl	%esi, %ecx
	subl	%edi, %r8d
	movl	%r9d, %r11d
	subl	%esi, %r11d
	cmpl	%edx, %r8d
	jne	.LBB32_8
# BB#7:                                 # %if.end.16
	cmpl	%ecx, %r11d
	je	.LBB32_40
.LBB32_8:                               # %if.end.21
	subl	%edi, %ebp
	movl	%eax, %r12d
	subl	%esi, %r12d
	cmpl	%edx, %ebp
	jne	.LBB32_10
# BB#9:                                 # %if.end.21
	cmpl	%ecx, %r12d
	je	.LBB32_40
.LBB32_10:                              # %if.end.26
	movl	%ebp, %edi
	subl	%r8d, %edi
	jne	.LBB32_12
# BB#11:                                # %if.end.26
	cmpl	%r11d, %r12d
	je	.LBB32_40
.LBB32_12:                              # %if.end.31
	movl	%edi, -12(%rsp)         # 4-byte Spill
	movslq	%edx, %rbx
	movq	%rbx, -8(%rsp)          # 8-byte Spill
	movslq	%r11d, %rdi
	movq	%rdi, -32(%rsp)         # 8-byte Spill
	imulq	%rbx, %rdi
	movslq	%ecx, %r15
	movslq	%r8d, %rbx
	movq	%rbx, -24(%rsp)         # 8-byte Spill
	imulq	%r15, %rbx
	xorl	%r10d, %r10d
	cmpq	%rbx, %rdi
	movl	$-1, %r14d
	movl	$0, %r13d
	cmovll	%r14d, %r13d
	movl	$1, %edi
	cmovgl	%edi, %r13d
	movslq	%r12d, %rbx
	imulq	-8(%rsp), %rbx          # 8-byte Folded Reload
	movslq	%ebp, %rdi
	imulq	%r15, %rdi
	cmpq	%rdi, %rbx
	movq	80(%rsp), %rbx
	cmovgel	%r10d, %r14d
	movl	$1, %edi
	cmovgl	%edi, %r14d
	movq	72(%rsp), %rdi
	testl	%r13d, %r13d
	je	.LBB32_13
# BB#20:                                # %if.else.81
	testl	%r14d, %r14d
	je	.LBB32_21
# BB#26:                                # %if.else.98
	imull	%r13d, %r14d
	xorl	%r10d, %r10d
	testl	%r14d, %r14d
	movl	-12(%rsp), %edx         # 4-byte Reload
	jns	.LBB32_40
# BB#27:                                # %if.then.102
	movq	%rbx, %r14
	movq	%rdi, %r9
	movl	%r12d, %eax
	subl	%r11d, %eax
	cltq
	movq	-8(%rsp), %rdi          # 8-byte Reload
	imulq	%rax, %rdi
	movslq	%edx, %rdx
	movq	-32(%rsp), %rbx         # 8-byte Reload
	imulq	%rdx, %rbx
	imulq	%r15, %rdx
	movq	-24(%rsp), %rbp         # 8-byte Reload
	imulq	%rax, %rbp
	subq	%rbx, %rbp
	imulq	%r15, %rbp
	movq	%rbp, %r8
	negq	%r8
	subq	%rdx, %rdi
	cmovnsq	%rbp, %r8
	movq	%rdi, %rbp
	negq	%rbp
	cmovlq	%rdi, %rbp
	movl	$1, %eax
	subq	%rbp, %rax
	xorl	%r10d, %r10d
	testq	%r8, %r8
	movl	$0, %edx
	cmovsq	%rax, %rdx
	leaq	(%rdx,%r8), %rax
	cqto
	idivq	%rbp
	movslq	%eax, %rdx
	cmpq	%rax, %rdx
	jne	.LBB32_40
# BB#28:                                # %if.end.137
	testl	%ecx, %ecx
	jle	.LBB32_31
# BB#29:                                # %if.then.140
	testl	%eax, %eax
	js	.LBB32_40
# BB#30:                                # %if.then.140
	cmpl	%ecx, %eax
	jl	.LBB32_33
	jmp	.LBB32_40
.LBB32_13:                              # %if.then.63
	testl	%r14d, %r14d
	setne	%al
	testl	%r8d, %r8d
	js	.LBB32_40
# BB#14:                                # %if.then.63
	testb	%al, %al
	je	.LBB32_40
# BB#15:                                # %land.lhs.true.70
	cmpl	%ecx, %r11d
	jg	.LBB32_40
# BB#16:                                # %land.lhs.true.70
	cmpl	%edx, %r8d
	jg	.LBB32_40
# BB#17:                                # %land.lhs.true.70
	testl	%r11d, %r11d
	js	.LBB32_40
# BB#18:                                # %if.then.79
	movl	%r9d, (%rdi)
	movl	$0, (%rbx)
	jmp	.LBB32_39
.LBB32_21:                              # %if.then.84
	xorl	%r10d, %r10d
	testl	%ebp, %ebp
	js	.LBB32_40
# BB#22:                                # %land.lhs.true.87
	cmpl	%ecx, %r12d
	jg	.LBB32_40
# BB#23:                                # %land.lhs.true.87
	cmpl	%edx, %ebp
	jg	.LBB32_40
# BB#24:                                # %land.lhs.true.87
	testl	%r12d, %r12d
	js	.LBB32_40
# BB#25:                                # %if.then.96
	movl	%eax, (%rdi)
	movl	$0, (%rbx)
	jmp	.LBB32_39
.LBB32_31:                              # %if.else.147
	testl	%eax, %eax
	jg	.LBB32_40
# BB#32:                                # %if.else.147
	cmpl	%ecx, %eax
	jle	.LBB32_40
.LBB32_33:                              # %if.end.155
	cmpl	%r11d, %r12d
	jle	.LBB32_36
# BB#34:                                # %if.then.158
	cmpl	%r11d, %eax
	jle	.LBB32_40
# BB#35:                                # %if.then.158
	cmpl	%r12d, %eax
	jl	.LBB32_38
	jmp	.LBB32_40
.LBB32_36:                              # %if.else.166
	cmpl	%r11d, %eax
	jge	.LBB32_40
# BB#37:                                # %if.else.166
	cmpl	%r12d, %eax
	jle	.LBB32_40
.LBB32_38:                              # %if.end.174
	leal	(%rsi,%rax), %ecx
	imulq	%rbp, %rax
	cmpq	%r8, %rax
	setl	%al
	movzbl	%al, %eax
	movl	%ecx, (%r9)
	movl	%eax, (%r14)
.LBB32_39:                              # %cleanup.192
	movl	$1, %r10d
.LBB32_40:                              # %cleanup.192
	movl	%r10d, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gx_intersect_small_bars, .Lfunc_end32-gx_intersect_small_bars
	.cfi_endproc

	.globl	gs_debug_flags_parse
	.align	16, 0x90
	.type	gs_debug_flags_parse,@function
gs_debug_flags_parse:                   # @gs_debug_flags_parse
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp133:
	.cfi_def_cfa_offset 16
	movl	$.L.str.38, %esi
	xorl	%eax, %eax
	callq	outprintf
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end33:
	.size	gs_debug_flags_parse, .Lfunc_end33-gs_debug_flags_parse
	.cfi_endproc

	.globl	gs_debug_flags_list
	.align	16, 0x90
	.type	gs_debug_flags_list,@function
gs_debug_flags_list:                    # @gs_debug_flags_list
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$.L.str.39, %esi
	xorl	%eax, %eax
	jmp	outprintf               # TAILCALL
.Lfunc_end34:
	.size	gs_debug_flags_list, .Lfunc_end34-gs_debug_flags_list
	.cfi_endproc

	.type	msg_truncated,@object   # @msg_truncated
	.section	.rodata,"a",@progbits
	.align	16
msg_truncated:
	.asciz	"\n*** Previous line has been truncated.\n"
	.size	msg_truncated, 40

	.type	gs_debug,@object        # @gs_debug
	.bss
	.globl	gs_debug
	.align	16
gs_debug:
	.zero	128
	.size	gs_debug, 128

	.type	gs_debug_flag_implied_by,@object # @gs_debug_flag_implied_by
	.section	.rodata,"a",@progbits
	.globl	gs_debug_flag_implied_by
	.align	16
gs_debug_flag_implied_by:
	.asciz	"\000c\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000ABCD\000F\000HI\000KL\000\000OP\000\000S\000UV\000\000Y\000\000\000\000"
	.size	gs_debug_flag_implied_by, 127

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%10s(%4d): "
	.size	.L.str, 12

	.type	dprintf_file_and_line_format,@object # @dprintf_file_and_line_format
	.section	.rodata,"a",@progbits
	.globl	dprintf_file_and_line_format
	.align	8
dprintf_file_and_line_format:
	.quad	.L.str
	.size	dprintf_file_and_line_format, 8

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"%10s(unkn): "
	.size	.L.str.1, 13

	.type	dprintf_file_only_format,@object # @dprintf_file_only_format
	.section	.rodata,"a",@progbits
	.globl	dprintf_file_only_format
	.align	8
dprintf_file_only_format:
	.quad	.L.str.1
	.size	dprintf_file_only_format, 8

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"%s(%d): "
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%s "
	.size	.L.str.3, 4

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%s"
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%d.%02d.%d"
	.size	.L.str.5, 11

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	": "
	.size	.L.str.6, 3

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Returning error %d.\n"
	.size	.L.str.7, 21

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%s(%d): Returning error %d.\n"
	.size	.L.str.8, 29

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"./base/gsmisc.c"
	.size	.L.str.9, 16

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"+ %s:%d: %s(): %s\n"
	.size	.L.str.10, 19

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"| %s:%d: %s(): %s\n"
	.size	.L.str.11, 19

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"- %s:%d: %s(): %s\n"
	.size	.L.str.12, 19

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"  %s:%d: %s(): %s\n"
	.size	.L.str.13, 19

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"unknownerror"
	.size	.L.str.14, 13

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"interrupt"
	.size	.L.str.15, 10

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"invalidaccess"
	.size	.L.str.16, 14

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"invalidfileaccess"
	.size	.L.str.17, 18

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"invalidfont"
	.size	.L.str.18, 12

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"ioerror"
	.size	.L.str.19, 8

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"limitcheck"
	.size	.L.str.20, 11

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"nocurrentpoint"
	.size	.L.str.21, 15

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"rangecheck"
	.size	.L.str.22, 11

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"typecheck"
	.size	.L.str.23, 10

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"undefined"
	.size	.L.str.24, 10

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"undefinedfilename"
	.size	.L.str.25, 18

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"undefinedresult"
	.size	.L.str.26, 16

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"vmerror"
	.size	.L.str.27, 8

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"unregistered"
	.size	.L.str.28, 13

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"hit_detected"
	.size	.L.str.29, 13

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Fatal"
	.size	.L.str.30, 6

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"%02x"
	.size	.L.str.31, 5

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"%s:\n"
	.size	.L.str.32, 5

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"0x%lx:"
	.size	.L.str.33, 7

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	" %02x"
	.size	.L.str.34, 6

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"%c"
	.size	.L.str.35, 3

	.type	.L.str.36,@object       # @.str.36
	.section	.rodata,"a",@progbits
.L.str.36:
	.asciz	"\000\000\001\001\002\002\002\002\003\003\003\003\003\003\003\003"
	.size	.L.str.36, 17

	.type	.L.str.37,@object       # @.str.37
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.37:
	.asciz	"[~]sqrt(%g) at %s:%d\n"
	.size	.L.str.37, 22

	.type	const_90_degrees,@object # @const_90_degrees
	.data
	.globl	const_90_degrees
	.align	8
const_90_degrees:
	.quad	4636033603912859648     # double 90
	.size	const_90_degrees, 8

	.type	isincos,@object         # @isincos
	.section	.rodata,"a",@progbits
	.align	16
isincos:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.size	isincos, 20

	.type	gs_debug_flags,@object  # @gs_debug_flags
	.globl	gs_debug_flags
	.align	16
gs_debug_flags:
	.zero	104
	.long	1                       # 0x1
	.asciz	"icc\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"ICC profile\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"validate_chunks\000\000\000\000"
	.asciz	"Validate chunks during interpretation\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"gc_disable\000\000\000\000\000\000\000\000\000"
	.asciz	"Disable Garbage Collection (completely)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.zero	104
	.zero	104
	.zero	104
	.zero	104
	.zero	104
	.zero	104
	.zero	104
	.zero	104
	.zero	104
	.zero	104
	.zero	104
	.zero	104
	.zero	104
	.zero	104
	.zero	104
	.zero	104
	.zero	104
	.zero	104
	.zero	104
	.zero	104
	.zero	104
	.zero	104
	.zero	104
	.zero	104
	.zero	104
	.zero	104
	.zero	104
	.zero	104
	.zero	104
	.long	1                       # 0x1
	.asciz	"ps_op_names\000\000\000\000\000\000\000\000"
	.asciz	"Postscript operator names\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"contexts_detail\000\000\000\000"
	.asciz	"Contexts (detail)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"trace_errors\000\000\000\000\000\000\000"
	.asciz	"Turn on tracing of error returns from operators\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"memfill_obj\000\000\000\000\000\000\000\000"
	.asciz	"Fill unused parts of object with identifiable garbage values\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"ext_commands\000\000\000\000\000\000\000"
	.asciz	"Externally processed commands\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.zero	104
	.long	1                       # 0x1
	.asciz	"contexts\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Contexts (create/destroy)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.zero	104
	.zero	104
	.long	1                       # 0x1
	.asciz	"image\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Image and rasterop parameters\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"min_stack\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Use minimum_size stack blocks\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"no_path_banding\000\000\000\000"
	.asciz	"Don't use path-based banding\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.zero	104
	.long	1                       # 0x1
	.asciz	"small_mem_tables\000\000\000"
	.asciz	"Use small-memory table sizes even on large-memory machines\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"file_line\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Include file/line info on all trace output\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"gc\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Garbage collection, minimal detail\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"type1\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Type 1 and type 43 font interpreter\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"curve\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Curve subdivider/rasterizer\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"curve_detail\000\000\000\000\000\000\000"
	.asciz	"Curve subdivider/rasterizer (detail)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"gc_strings\000\000\000\000\000\000\000\000\000"
	.asciz	"Garbage collector (strings)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"gc_strings_detail\000\000"
	.asciz	"Garbage collector (strings, detail)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"gc_chunks\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Garbage collector (chunks, roots)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"gc_objects\000\000\000\000\000\000\000\000\000"
	.asciz	"Garbage collector (objects)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"gc_refs\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Garbage collector (refs)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"gc_pointers\000\000\000\000\000\000\000\000"
	.asciz	"Garbage collector (pointers)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"time\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Command list and allocator time summary\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.zero	104
	.zero	104
	.zero	104
	.zero	104
	.long	1                       # 0x1
	.asciz	"validate_pointers\000\000"
	.asciz	"Validate pointers before/during/after garbage collection/save and restore\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"memfill_empty\000\000\000\000\000\000"
	.asciz	"Fill empty storage with a distinctive bit pattern for debugging\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"alloc_detail\000\000\000\000\000\000\000"
	.asciz	"Allocator (all calls)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"bitmap_detail\000\000\000\000\000\000"
	.asciz	"Bitmap images (detail)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"color_detail\000\000\000\000\000\000\000"
	.asciz	"Color mapping (detail)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"dict_detail\000\000\000\000\000\000\000\000"
	.asciz	"Dictionary (every lookup)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.zero	104
	.long	1                       # 0x1
	.asciz	"fill_detail\000\000\000\000\000\000\000\000"
	.asciz	"Fill algorithm (detail)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.zero	104
	.long	1                       # 0x1
	.asciz	"halftones_detail\000\000\000"
	.asciz	"Halftones (detail)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"interp_detail\000\000\000\000\000\000"
	.asciz	"Interpreter (detail)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.zero	104
	.long	1                       # 0x1
	.asciz	"char_cache_detail\000\000"
	.asciz	"Character cache (detail)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"clist_detail\000\000\000\000\000\000\000"
	.asciz	"Command list (detail)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.zero	104
	.zero	104
	.long	1                       # 0x1
	.asciz	"stroke_detail\000\000\000\000\000\000"
	.asciz	"Stroke (detail)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"paths_detail\000\000\000\000\000\000\000"
	.asciz	"Paths (detail)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.zero	104
	.zero	104
	.long	1                       # 0x1
	.asciz	"scanner\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Scanner\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.zero	104
	.long	1                       # 0x1
	.asciz	"undo_detail\000\000\000\000\000\000\000\000"
	.asciz	"Undo saver (for save/restore) (detail)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"compositors_detail\000"
	.asciz	"Compositors (alpha/transparency/overprint/rop) (detail)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.zero	104
	.zero	104
	.long	1                       # 0x1
	.asciz	"type1_hints_detail\000"
	.asciz	"Type 1 hints (detail)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.zero	104
	.zero	104
	.zero	104
	.zero	104
	.long	1                       # 0x1
	.asciz	"ref_counts\000\000\000\000\000\000\000\000\000"
	.asciz	"Reference counting\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"high_level\000\000\000\000\000\000\000\000\000"
	.asciz	"High level output\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"no_hl_img_banding\000\000"
	.asciz	"Don't use high_level banded images\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"alloc\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Allocator (large blocks)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"bitmap\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Bitmap images\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"color_halftones\000\000\000\000"
	.asciz	"Color mapping\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"dict\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Dictionary (put/undef)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"external_calls\000\000\000\000\000"
	.asciz	"External (OS related) calls\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"fill\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Fill algorithm\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"gsave\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"gsave/grestore\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"halftones\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Halftones\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"interp\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Interpreter (names only)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"comp_fonts\000\000\000\000\000\000\000\000\000"
	.asciz	"Composite fonts\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"char_cache\000\000\000\000\000\000\000\000\000"
	.asciz	"Character cache\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"clist\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Command list (bands)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"makefont\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"makefont and font cache\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"names\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Name lookup (new names only)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"stroke\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Stroke\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"paths\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Paths (band list)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"clipping\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Clipping\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"arcs\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Arcs\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"streams\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Streams\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"tiling\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Tiling algorithm\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"undo\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Undo saver (for save/restore)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"compositors\000\000\000\000\000\000\000\000"
	.asciz	"Compositors (alpha/transparency/overprint/rop)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"compress\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Compression encoder/decoder\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"transforms\000\000\000\000\000\000\000\000\000"
	.asciz	"Transformations\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"type1_hints\000\000\000\000\000\000\000\000"
	.asciz	"Type 1 hints\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.asciz	"trapezoid_fill\000\000\000\000\000"
	.asciz	"Trapezoid fill\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.zero	104
	.zero	104
	.zero	104
	.long	1                       # 0x1
	.asciz	"math\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Math functions and Functions\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	gs_debug_flags, 13208

	.type	.L.str.38,@object       # @.str.38
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.38:
	.asciz	"Warning: debug flags ignored in release builds\n"
	.size	.L.str.38, 48

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"No debug flags supported in release builds\n"
	.size	.L.str.39, 44


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
