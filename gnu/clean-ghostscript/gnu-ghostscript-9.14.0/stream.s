	.text
	.file	"stream.bc"
	.align	16, 0x90
	.type	stream_enum_ptrs,@function
stream_enum_ptrs:                       # @stream_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	movl	%ecx, %edx
	cmpl	$5, %ecx
	ja	.LBB0_13
# BB#1:                                 # %entry
	jmpq	*.LJTI0_0(,%rdx,8)
.LBB0_2:                                # %sw.bb
	cmpb	$0, 154(%rsi)
	je	.LBB0_4
# BB#3:                                 # %if.then
	movq	$0, (%r8)
	movl	$ptr_struct_procs, %eax
	retq
.LBB0_8:                                # %sw.bb.10
	movq	240(%rsi), %rax
	jmp	.LBB0_7
.LBB0_9:                                # %sw.bb.12
	movq	272(%rsi), %rax
	jmp	.LBB0_7
.LBB0_10:                               # %sw.bb.14
	movq	280(%rsi), %rax
	jmp	.LBB0_7
.LBB0_11:                               # %sw.bb.16
	movq	256(%rsi), %rax
.LBB0_7:                                # %cleanup
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
	retq
.LBB0_12:                               # %sw.bb.18
	movq	312(%rsi), %rax
	movq	%rax, (%r8)
	movl	320(%rsi), %eax
	movl	%eax, 8(%r8)
	movl	$ptr_const_string_procs, %eax
.LBB0_13:                               # %cleanup
	retq
.LBB0_4:                                # %if.else
	movq	160(%rsi), %rax
	testq	%rax, %rax
	je	.LBB0_6
# BB#5:                                 # %if.then.1
	movq	%rax, (%r8)
	movl	168(%rsi), %eax
	movl	%eax, 8(%r8)
	movl	$ptr_string_procs, %eax
	retq
.LBB0_6:                                # %if.else.8
	movq	136(%rsi), %rax
	jmp	.LBB0_7
.Lfunc_end0:
	.size	stream_enum_ptrs, .Lfunc_end0-stream_enum_ptrs
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_2
	.quad	.LBB0_8
	.quad	.LBB0_9
	.quad	.LBB0_10
	.quad	.LBB0_11
	.quad	.LBB0_12

	.text
	.align	16, 0x90
	.type	stream_reloc_ptrs,@function
stream_reloc_ptrs:                      # @stream_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r12
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
	.cfi_offset %r12, -32
.Ltmp7:
	.cfi_offset %r14, -24
.Ltmp8:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	movq	136(%rbx), %r15
	testq	%r15, %r15
	je	.LBB1_6
# BB#1:                                 # %land.lhs.true
	cmpb	$0, 154(%rbx)
	jne	.LBB1_6
# BB#2:                                 # %if.then
	cmpq	$0, 160(%rbx)
	movq	(%r14), %rax
	je	.LBB1_4
# BB#3:                                 # %if.then.2
	leaq	160(%rbx), %r12
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	*8(%rax)
	movq	(%r12), %rax
	jmp	.LBB1_5
.LBB1_4:                                # %if.else
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	*(%rax)
.LBB1_5:                                # %if.end
	movq	%rax, 136(%rbx)
	subq	%r15, %rax
	addq	%rax, 112(%rbx)
	addq	%rax, 120(%rbx)
	addq	%rax, 128(%rbx)
.LBB1_6:                                # %if.end.18
	movq	(%r14), %rax
	movq	240(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 240(%rbx)
	movq	(%r14), %rax
	movq	272(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 272(%rbx)
	movq	(%r14), %rax
	movq	280(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 280(%rbx)
	movq	(%r14), %rax
	movq	256(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 256(%rbx)
	movq	(%r14), %rax
	movq	16(%rax), %rax
	addq	$312, %rbx              # imm = 0x138
	movq	%rbx, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmpq	*%rax                   # TAILCALL
.Lfunc_end1:
	.size	stream_reloc_ptrs, .Lfunc_end1-stream_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	stream_finalize,@function
stream_finalize:                        # @stream_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	cmpb	$0, 155(%rsi)
	je	.LBB2_3
# BB#1:                                 # %land.lhs.true
	cmpl	$0, 248(%rsi)
	jne	.LBB2_3
# BB#2:                                 # %land.lhs.true.2
	cmpq	$0, 304(%rsi)
	je	.LBB2_3
# BB#4:                                 # %if.then
	movq	$0, 136(%rsi)
	movq	$0, 160(%rsi)
	movq	%rsi, %rdi
	jmp	sclose                  # TAILCALL
.LBB2_3:                                # %if.end
	retq
.Lfunc_end2:
	.size	stream_finalize, .Lfunc_end2-stream_finalize
	.cfi_endproc

	.globl	s_init
	.align	16, 0x90
	.type	s_init,@function
s_init:                                 # @s_init
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, 8(%rdi)
	movq	$s_no_report_error, 16(%rdi)
	movl	$0, 24(%rdi)
	movb	$0, 28(%rdi)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 272(%rdi)
	movq	$0, 312(%rdi)
	movl	$0, 320(%rdi)
	movabsq	$4294967296, %rax       # imm = 0x100000000
	movq	%rax, 288(%rdi)
	retq
.Lfunc_end3:
	.size	s_init, .Lfunc_end3-s_init
	.cfi_endproc

	.globl	s_no_report_error
	.align	16, 0x90
	.type	s_no_report_error,@function
s_no_report_error:                      # @s_no_report_error
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end4:
	.size	s_no_report_error, .Lfunc_end4-s_no_report_error
	.cfi_endproc

	.globl	s_alloc
	.align	16, 0x90
	.type	s_alloc,@function
s_alloc:                                # @s_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbx, -16
	movq	%rsi, %rax
	movq	%rdi, %rbx
	movl	$st_stream, %esi
	movq	%rax, %rdx
	callq	*72(%rbx)
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB5_2
# BB#1:                                 # %if.end
	movq	%rbx, 8(%rax)
	movq	$s_no_report_error, 16(%rax)
	movl	$0, 24(%rax)
	movb	$0, 28(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 272(%rax)
	movq	$0, 312(%rax)
	movl	$0, 320(%rax)
	movabsq	$4294967296, %rcx       # imm = 0x100000000
	movq	%rcx, 288(%rax)
	movq	%rax, %rcx
.LBB5_2:                                # %cleanup
	movq	%rcx, %rax
	popq	%rbx
	retq
.Lfunc_end5:
	.size	s_alloc, .Lfunc_end5-s_alloc
	.cfi_endproc

	.globl	s_init_state
	.align	16, 0x90
	.type	s_init_state,@function
s_init_state:                           # @s_init_state
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	movq	$s_no_report_error, 16(%rdi)
	movl	$0, 24(%rdi)
	movb	$0, 28(%rdi)
	retq
.Lfunc_end6:
	.size	s_init_state, .Lfunc_end6-s_init_state
	.cfi_endproc

	.globl	s_alloc_state
	.align	16, 0x90
	.type	s_alloc_state,@function
s_alloc_state:                          # @s_alloc_state
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	*72(%rbx)
	testq	%rax, %rax
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	$0, (%rax)
	movq	%rbx, 8(%rax)
	movq	$s_no_report_error, 16(%rax)
	movl	$0, 24(%rax)
	movb	$0, 28(%rax)
.LBB7_2:                                # %if.end
	popq	%rbx
	retq
.Lfunc_end7:
	.size	s_alloc_state, .Lfunc_end7-s_alloc_state
	.cfi_endproc

	.globl	s_std_init
	.align	16, 0x90
	.type	s_std_init,@function
s_std_init:                             # @s_std_init
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$s_no_template, (%rdi)
	movq	%rsi, 136(%rdi)
	leaq	-1(%rsi), %rax
	movq	%rax, 120(%rdi)
	movq	%rax, 112(%rdi)
	movl	%edx, %eax
	leaq	-1(%rsi,%rax), %rax
	movq	%rax, 128(%rdi)
	movw	$0, 152(%rdi)
	movb	$0, 154(%rdi)
	movb	%r8b, 155(%rdi)
	movq	$0, 160(%rdi)
	movq	$0, 176(%rdi)
	movl	%edx, 148(%rdi)
	movl	%edx, 144(%rdi)
	movq	$0, 240(%rdi)
	movl	$0, 248(%rdi)
	movq	48(%rcx), %rax
	movq	%rax, 232(%rdi)
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	movups	32(%rcx), %xmm2
	movups	%xmm2, 216(%rdi)
	movups	%xmm1, 200(%rdi)
	movups	%xmm0, 184(%rdi)
	movq	%rdi, 256(%rdi)
	movq	$0, 304(%rdi)
	movq	$0, 312(%rdi)
	movl	$0, 320(%rdi)
	retq
.Lfunc_end8:
	.size	s_std_init, .Lfunc_end8-s_std_init
	.cfi_endproc

	.globl	ssetfilename
	.align	16, 0x90
	.type	ssetfilename,@function
ssetfilename:                           # @ssetfilename
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 48
.Ltmp18:
	.cfi_offset %rbx, -48
.Ltmp19:
	.cfi_offset %r12, -40
.Ltmp20:
	.cfi_offset %r13, -32
.Ltmp21:
	.cfi_offset %r14, -24
.Ltmp22:
	.cfi_offset %r15, -16
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	8(%r12), %rdi
	movq	312(%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB9_1
# BB#2:                                 # %cond.false
	movl	320(%r12), %edx
	leal	1(%r14), %ecx
	movl	$.L.str.2, %r8d
	callq	*152(%rdi)
	jmp	.LBB9_3
.LBB9_1:                                # %cond.true
	leal	1(%r14), %esi
	movl	$.L.str.2, %edx
	callq	*136(%rdi)
.LBB9_3:                                # %cond.end
	movq	%rax, %rbx
	movl	$-1, %eax
	testq	%rbx, %rbx
	je	.LBB9_5
# BB#4:                                 # %if.end
	movl	%r14d, %r13d
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	callq	memcpy
	movb	$0, (%rbx,%r13)
	movq	%rbx, 312(%r12)
	incl	%r14d
	movl	%r14d, 320(%r12)
	xorl	%eax, %eax
.LBB9_5:                                # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end9:
	.size	ssetfilename, .Lfunc_end9-ssetfilename
	.cfi_endproc

	.globl	sfilename
	.align	16, 0x90
	.type	sfilename,@function
sfilename:                              # @sfilename
	.cfi_startproc
# BB#0:                                 # %entry
	movq	312(%rdi), %rax
	movq	%rax, (%rsi)
	testq	%rax, %rax
	je	.LBB10_1
# BB#2:                                 # %if.end
	movl	320(%rdi), %ecx
	decl	%ecx
	xorl	%eax, %eax
	movl	%ecx, 8(%rsi)
	retq
.LBB10_1:
	movl	$-1, %eax
	xorl	%ecx, %ecx
	movl	%ecx, 8(%rsi)
	retq
.Lfunc_end10:
	.size	sfilename, .Lfunc_end10-sfilename
	.cfi_endproc

	.globl	s_std_null
	.align	16, 0x90
	.type	s_std_null,@function
s_std_null:                             # @s_std_null
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end11:
	.size	s_std_null, .Lfunc_end11-s_std_null
	.cfi_endproc

	.globl	s_std_read_reset
	.align	16, 0x90
	.type	s_std_read_reset,@function
s_std_read_reset:                       # @s_std_read_reset
	.cfi_startproc
# BB#0:                                 # %entry
	movq	136(%rdi), %rax
	decq	%rax
	movq	%rax, 120(%rdi)
	movq	%rax, 112(%rdi)
	retq
.Lfunc_end12:
	.size	s_std_read_reset, .Lfunc_end12-s_std_read_reset
	.cfi_endproc

	.globl	s_std_write_reset
	.align	16, 0x90
	.type	s_std_write_reset,@function
s_std_write_reset:                      # @s_std_write_reset
	.cfi_startproc
# BB#0:                                 # %entry
	movq	136(%rdi), %rax
	decq	%rax
	movq	%rax, 120(%rdi)
	retq
.Lfunc_end13:
	.size	s_std_write_reset, .Lfunc_end13-s_std_write_reset
	.cfi_endproc

	.globl	s_std_read_flush
	.align	16, 0x90
	.type	s_std_read_flush,@function
s_std_read_flush:                       # @s_std_read_flush
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp24:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 32
.Ltmp26:
	.cfi_offset %rbx, -32
.Ltmp27:
	.cfi_offset %r14, -24
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	leaq	112(%rbx), %rbp
	movzwl	152(%rbx), %ecx
	xorl	%r14d, %r14d
	jmp	.LBB14_1
	.align	16, 0x90
.LBB14_5:                               # %s_process_read_buf.exit
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	sreadbuf
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	%eax, %ecx
	movw	%cx, 152(%rbx)
.LBB14_1:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	136(%rbx), %rax
	decq	%rax
	movq	%rax, 120(%rbx)
	movq	%rax, 112(%rbx)
	testw	%cx, %cx
	je	.LBB14_5
# BB#2:                                 # %while.body
	movzwl	%cx, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	je	.LBB14_4
# BB#3:                                 # %cond.false
	movswl	%cx, %r14d
.LBB14_4:                               # %cond.end
	movl	%r14d, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end14:
	.size	s_std_read_flush, .Lfunc_end14-s_std_read_flush
	.cfi_endproc

	.globl	s_process_read_buf
	.align	16, 0x90
	.type	s_process_read_buf,@function
s_process_read_buf:                     # @s_process_read_buf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp29:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp31:
	.cfi_def_cfa_offset 32
.Ltmp32:
	.cfi_offset %rbx, -24
.Ltmp33:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	112(%rbx), %rax
	movq	136(%rbx), %rdi
	cmpq	%rdi, %rax
	jb	.LBB15_3
# BB#1:                                 # %land.lhs.true.i
	cmpw	$0, 152(%rbx)
	js	.LBB15_3
# BB#2:                                 # %if.then.i
	leaq	1(%rax), %rsi
	movl	%esi, %r14d
	subl	%edi, %r14d
	movl	120(%rbx), %edx
	subl	%eax, %edx
	callq	memmove
	movq	136(%rbx), %rax
	decq	%rax
	movq	%rax, 112(%rbx)
	subq	%r14, 120(%rbx)
	addq	%r14, 176(%rbx)
.LBB15_3:                               # %stream_compact.exit
	leaq	112(%rbx), %rsi
	movq	%rbx, %rdi
	callq	sreadbuf
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	%eax, %ecx
	movw	%cx, 152(%rbx)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end15:
	.size	s_process_read_buf, .Lfunc_end15-s_process_read_buf
	.cfi_endproc

	.globl	s_std_write_flush
	.align	16, 0x90
	.type	s_std_write_flush,@function
s_std_write_flush:                      # @s_std_write_flush
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%esi, %esi
	jmp	s_process_write_buf     # TAILCALL
.Lfunc_end16:
	.size	s_std_write_flush, .Lfunc_end16-s_std_write_flush
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI17_0:
	.zero	16
	.text
	.globl	s_process_write_buf
	.align	16, 0x90
	.type	s_process_write_buf,@function
s_process_write_buf:                    # @s_process_write_buf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp35:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp36:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp37:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp38:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp39:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp40:
	.cfi_def_cfa_offset 112
.Ltmp41:
	.cfi_offset %rbx, -56
.Ltmp42:
	.cfi_offset %r12, -48
.Ltmp43:
	.cfi_offset %r13, -40
.Ltmp44:
	.cfi_offset %r14, -32
.Ltmp45:
	.cfi_offset %r15, -24
.Ltmp46:
	.cfi_offset %rbp, -16
	movl	%esi, 20(%rsp)          # 4-byte Spill
	movq	%rdi, (%rsp)            # 8-byte Spill
	leaq	112(%rdi), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	xorl	%esi, %esi
	movq	%rdi, %rbp
	xorl	%r14d, %r14d
	jmp	.LBB17_1
	.align	16, 0x90
.LBB17_36:                              # %do.body.115.i
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	240(%r14), %rax
	movq	%rbp, 240(%r14)
	cmpl	$1, 248(%r14)
	sbbl	%ecx, %ecx
	addl	%ecx, %esi
	movq	%r14, %rbp
	movq	%rax, %r14
.LBB17_1:                               # %for.cond.1.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, 20(%rsp)            # 4-byte Folded Reload
	movq	240(%rbp), %r12
	je	.LBB17_2
# BB#3:                                 # %land.rhs.i
                                        #   in Loop: Header=BB17_1 Depth=1
	movb	$1, %r15b
	testq	%r14, %r14
	je	.LBB17_7
# BB#4:                                 # %lor.rhs.i
                                        #   in Loop: Header=BB17_1 Depth=1
	cmpl	$1, %esi
	jg	.LBB17_5
# BB#6:                                 # %land.rhs.4.i
                                        #   in Loop: Header=BB17_1 Depth=1
	movzwl	152(%r14), %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	sete	%r15b
	jmp	.LBB17_7
	.align	16, 0x90
.LBB17_2:                               #   in Loop: Header=BB17_1 Depth=1
	xorl	%r15d, %r15d
	jmp	.LBB17_7
.LBB17_5:                               #   in Loop: Header=BB17_1 Depth=1
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB17_7:                               # %land.end.7.i
                                        #   in Loop: Header=BB17_1 Depth=1
	testq	%r12, %r12
	je	.LBB17_8
# BB#9:                                 # %if.else.i
                                        #   in Loop: Header=BB17_1 Depth=1
	leaq	112(%r12), %rdx
	jmp	.LBB17_10
	.align	16, 0x90
.LBB17_8:                               # %if.then.i
                                        #   in Loop: Header=BB17_1 Depth=1
	xorps	%xmm0, %xmm0
	movups	%xmm0, 40(%rsp)
	leaq	32(%rsp), %rdx
.LBB17_10:                              # %if.end.i
                                        #   in Loop: Header=BB17_1 Depth=1
	movzbl	%r15b, %ebx
	movswl	152(%rbp), %r13d
	testl	%r13d, %r13d
	js	.LBB17_14
# BB#11:                                # %if.then.20.i
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	leaq	112(%rbp), %rsi
	testq	%r14, %r14
	cmoveq	8(%rsp), %rsi           # 8-byte Folded Reload
	movq	256(%rbp), %rdi
	movl	%ebx, %ecx
	callq	*224(%rbp)
	cmpl	$1, %eax
	sbbl	%r13d, %r13d
	orl	%eax, %r13d
	testl	%ebx, %ebx
	cmovel	%eax, %r13d
	cmpl	$-2, %r13d
	jb	.LBB17_13
# BB#12:                                # %if.then.33.i
                                        #   in Loop: Header=BB17_1 Depth=1
	movw	%r13w, 152(%rbp)
.LBB17_13:                              # %if.end.37.i
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	24(%rsp), %rsi          # 8-byte Reload
.LBB17_14:                              # %if.end.37.i
                                        #   in Loop: Header=BB17_1 Depth=1
	testq	%r12, %r12
	je	.LBB17_25
# BB#15:                                # %if.end.37.i
                                        #   in Loop: Header=BB17_1 Depth=1
	cmpl	$-1, %r13d
	jl	.LBB17_25
# BB#16:                                # %if.end.47.i
                                        #   in Loop: Header=BB17_1 Depth=1
	cmpl	$1, %r13d
	je	.LBB17_19
# BB#17:                                # %if.then.50.i
                                        #   in Loop: Header=BB17_1 Depth=1
	testl	%ebx, %ebx
	je	.LBB17_25
# BB#18:                                # %lor.lhs.false.52.i
                                        #   in Loop: Header=BB17_1 Depth=1
	cmpl	$0, 248(%r12)
	je	.LBB17_25
.LBB17_19:                              # %if.end.56.i
                                        #   in Loop: Header=BB17_1 Depth=1
	movswl	152(%r12), %r13d
	cmpl	$-1, %r13d
	sete	%al
	testl	%r13d, %r13d
	jns	.LBB17_21
# BB#20:                                # %if.end.56.i
                                        #   in Loop: Header=BB17_1 Depth=1
	andb	%al, %r15b
	jne	.LBB17_21
	.align	16, 0x90
.LBB17_25:                              # %for.end.i
                                        #   in Loop: Header=BB17_1 Depth=1
	testl	%r13d, %r13d
	movl	$0, %eax
	cmovsw	%r13w, %ax
	movw	%ax, 152(%rbp)
	testq	%r14, %r14
	je	.LBB17_27
# BB#26:                                # %for.end.i
                                        #   in Loop: Header=BB17_1 Depth=1
	testl	%r13d, %r13d
	jns	.LBB17_36
	jmp	.LBB17_27
.LBB17_21:                              # %if.end.67.i
                                        #   in Loop: Header=BB17_1 Depth=1
	cmpl	$0, 248(%rbp)
	sete	%al
	movzbl	%al, %r15d
	movq	240(%rbp), %rbx
	movq	%r14, 240(%rbp)
	movq	112(%rbx), %rax
	movq	136(%rbx), %rdi
	cmpq	%rdi, %rax
	jb	.LBB17_24
# BB#22:                                # %land.lhs.true.i.i
                                        #   in Loop: Header=BB17_1 Depth=1
	cmpw	$0, 152(%rbx)
	js	.LBB17_24
# BB#23:                                # %if.then.i.i
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	%rsi, %r13
	leaq	1(%rax), %rsi
	movl	%esi, %r14d
	subl	%edi, %r14d
	movl	120(%rbx), %edx
	subl	%eax, %edx
	movl	$4294967295, %r12d      # imm = 0xFFFFFFFF
	andq	%r12, %rdx
	callq	memmove
	movq	%r13, %rsi
	movq	136(%rbx), %rax
	decq	%rax
	movq	%rax, 112(%rbx)
	andq	%r12, %r14
	subq	%r14, 120(%rbx)
	addq	%r14, 176(%rbx)
.LBB17_24:                              # %cleanup.i
                                        #   in Loop: Header=BB17_1 Depth=1
	addl	%r15d, %esi
	movq	%rbp, %r14
	movq	%rbx, %rbp
	jmp	.LBB17_1
	.align	16, 0x90
.LBB17_29:                              # %if.then.105.i
                                        #   in Loop: Header=BB17_27 Depth=1
	movw	$0, 152(%rbp)
.LBB17_27:                              # %while.cond.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%r14, %r14
	je	.LBB17_32
# BB#28:                                # %do.body.98.i
                                        #   in Loop: Header=BB17_27 Depth=1
	movq	%rbp, %rax
	movq	%r14, %rbp
	movq	240(%rbp), %r14
	movq	%rax, 240(%rbp)
	testl	%r13d, %r13d
	jns	.LBB17_29
# BB#30:                                # %if.else.107.i
                                        #   in Loop: Header=BB17_27 Depth=1
	cmpl	$-2, %r13d
	jne	.LBB17_27
# BB#31:                                # %if.then.110.i
                                        #   in Loop: Header=BB17_27 Depth=1
	movw	$-2, 152(%rbp)
	jmp	.LBB17_27
.LBB17_32:                              # %swritebuf.exit
	movq	(%rsp), %rbp            # 8-byte Reload
	movq	112(%rbp), %rax
	movq	136(%rbp), %rdi
	cmpq	%rdi, %rax
	jb	.LBB17_35
# BB#33:                                # %land.lhs.true.i
	cmpw	$0, 152(%rbp)
	js	.LBB17_35
# BB#34:                                # %if.then.i.10
	leaq	1(%rax), %rsi
	movl	%esi, %ebx
	subl	%edi, %ebx
	movl	120(%rbp), %edx
	subl	%eax, %edx
	movl	$4294967295, %r14d      # imm = 0xFFFFFFFF
	andq	%r14, %rdx
	callq	memmove
	movq	136(%rbp), %rax
	decq	%rax
	movq	%rax, 112(%rbp)
	andq	%r14, %rbx
	subq	%rbx, 120(%rbp)
	addq	%rbx, 176(%rbp)
.LBB17_35:                              # %stream_compact.exit
	movl	%r13d, %eax
	sarl	$31, %eax
	andl	%r13d, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	s_process_write_buf, .Lfunc_end17-s_process_write_buf
	.cfi_endproc

	.globl	s_std_noavailable
	.align	16, 0x90
	.type	s_std_noavailable,@function
s_std_noavailable:                      # @s_std_noavailable
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$-1, (%rsi)
	xorl	%eax, %eax
	retq
.Lfunc_end18:
	.size	s_std_noavailable, .Lfunc_end18-s_std_noavailable
	.cfi_endproc

	.globl	s_std_noseek
	.align	16, 0x90
	.type	s_std_noseek,@function
s_std_noseek:                           # @s_std_noseek
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-2, %eax
	retq
.Lfunc_end19:
	.size	s_std_noseek, .Lfunc_end19-s_std_noseek
	.cfi_endproc

	.globl	s_std_close
	.align	16, 0x90
	.type	s_std_close,@function
s_std_close:                            # @s_std_close
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end20:
	.size	s_std_close, .Lfunc_end20-s_std_close
	.cfi_endproc

	.globl	s_std_switch_mode
	.align	16, 0x90
	.type	s_std_switch_mode,@function
s_std_switch_mode:                      # @s_std_switch_mode
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-2, %eax
	retq
.Lfunc_end21:
	.size	s_std_switch_mode, .Lfunc_end21-s_std_switch_mode
	.cfi_endproc

	.globl	s_disable
	.align	16, 0x90
	.type	s_disable,@function
s_disable:                              # @s_disable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$0, 144(%rbx)
	movw	$-1, 152(%rbx)
	movb	$0, 155(%rbx)
	movq	$0, 160(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 112(%rbx)
	movups	%xmm0, 128(%rbx)
	movq	$s_std_null, 216(%rbx)
	movq	$0, 240(%rbx)
	movq	%rbx, 256(%rbx)
	movq	$s_no_template, (%rbx)
	movq	312(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB22_4
# BB#1:                                 # %if.then
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB22_3
# BB#2:                                 # %if.then.7
	movl	320(%rbx), %edx
	movl	$.L.str.3, %ecx
	callq	gs_free_const_string
.LBB22_3:                               # %if.end
	movq	$0, 312(%rbx)
	movl	$0, 320(%rbx)
.LBB22_4:                               # %if.end.16
	popq	%rbx
	retq
.Lfunc_end22:
	.size	s_disable, .Lfunc_end22-s_disable
	.cfi_endproc

	.globl	s_filter_write_flush
	.align	16, 0x90
	.type	s_filter_write_flush,@function
s_filter_write_flush:                   # @s_filter_write_flush
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	xorl	%esi, %esi
	callq	s_process_write_buf
	testl	%eax, %eax
	je	.LBB23_2
# BB#1:                                 # %cleanup
	popq	%rbx
	retq
.LBB23_2:                               # %if.end
	movq	240(%rbx), %rdi
	popq	%rbx
	jmpq	*208(%rdi)              # TAILCALL
.Lfunc_end23:
	.size	s_filter_write_flush, .Lfunc_end23-s_filter_write_flush
	.cfi_endproc

	.globl	s_filter_close
	.align	16, 0x90
	.type	s_filter_close,@function
s_filter_close:                         # @s_filter_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp52:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp53:
	.cfi_def_cfa_offset 32
.Ltmp54:
	.cfi_offset %rbx, -24
.Ltmp55:
	.cfi_offset %rbp, -16
	movl	288(%rdi), %ebp
	movq	240(%rdi), %rbx
	testb	$2, 155(%rdi)
	je	.LBB24_3
# BB#1:                                 # %if.then
	movl	$1, %esi
	callq	s_process_write_buf
	movl	%eax, %ecx
	incl	%ecx
	cmpl	$1, %ecx
	ja	.LBB24_5
# BB#2:                                 # %cleanup
	movq	%rbx, %rdi
	callq	*208(%rbx)
	movl	%eax, %ecx
	incl	%ecx
	cmpl	$1, %ecx
	ja	.LBB24_5
.LBB24_3:                               # %if.end.16
	xorl	%eax, %eax
	testl	%ebp, %ebp
	je	.LBB24_5
# BB#4:                                 # %if.end.16
	testq	%rbx, %rbx
	je	.LBB24_5
# BB#6:                                 # %if.then.28
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	sclose                  # TAILCALL
.LBB24_5:                               # %cleanup.31
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end24:
	.size	s_filter_close, .Lfunc_end24-s_filter_close
	.cfi_endproc

	.globl	sclose
	.align	16, 0x90
	.type	sclose,@function
sclose:                                 # @sclose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp57:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp58:
	.cfi_def_cfa_offset 32
.Ltmp59:
	.cfi_offset %rbx, -32
.Ltmp60:
	.cfi_offset %r14, -24
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	callq	*216(%rbx)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB25_12
# BB#1:                                 # %if.end
	movq	256(%rbx), %rbp
	testq	%rbp, %rbp
	je	.LBB25_8
# BB#2:                                 # %if.then.2
	movq	(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.LBB25_4
# BB#3:                                 # %if.then.5
	movq	%rbp, %rdi
	callq	*%rax
.LBB25_4:                               # %if.end.6
	cmpq	%rbx, %rbp
	je	.LBB25_7
# BB#5:                                 # %land.lhs.true
	movq	8(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB25_7
# BB#6:                                 # %if.then.9
	movl	$.L.str.4, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
.LBB25_7:                               # %if.end.13
	movq	%rbx, 256(%rbx)
.LBB25_8:                               # %if.end.15
	movl	$0, 144(%rbx)
	movw	$-1, 152(%rbx)
	movb	$0, 155(%rbx)
	movq	$0, 160(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 112(%rbx)
	movups	%xmm0, 128(%rbx)
	movq	$s_std_null, 216(%rbx)
	movq	$0, 240(%rbx)
	movq	%rbx, 256(%rbx)
	movq	$s_no_template, (%rbx)
	movq	312(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB25_12
# BB#9:                                 # %if.then.i
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB25_11
# BB#10:                                # %if.then.7.i
	movl	320(%rbx), %edx
	movl	$.L.str.3, %ecx
	callq	gs_free_const_string
.LBB25_11:                              # %if.end.i
	movq	$0, 312(%rbx)
	movl	$0, 320(%rbx)
.LBB25_12:                              # %cleanup
	movl	%r14d, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end25:
	.size	sclose, .Lfunc_end25-sclose
	.cfi_endproc

	.globl	savailable
	.align	16, 0x90
	.type	savailable,@function
savailable:                             # @savailable
	.cfi_startproc
# BB#0:                                 # %entry
	movq	184(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end26:
	.size	savailable, .Lfunc_end26-savailable
	.cfi_endproc

	.globl	stell
	.align	16, 0x90
	.type	stell,@function
stell:                                  # @stell
	.cfi_startproc
# BB#0:                                 # %entry
	leaq	120(%rdi), %rax
	leaq	112(%rdi), %rcx
	testb	$2, 155(%rdi)
	cmoveq	%rcx, %rax
	movq	(%rax), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB27_2
# BB#1:                                 # %cond.false.8
	incq	%rcx
	subq	136(%rdi), %rcx
	movq	%rcx, %rax
.LBB27_2:                               # %cond.end.9
	addq	176(%rdi), %rax
	retq
.Lfunc_end27:
	.size	stell, .Lfunc_end27-stell
	.cfi_endproc

	.globl	spseek
	.align	16, 0x90
	.type	spseek,@function
spseek:                                 # @spseek
	.cfi_startproc
# BB#0:                                 # %entry
	movq	192(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end28:
	.size	spseek, .Lfunc_end28-spseek
	.cfi_endproc

	.globl	sswitch
	.align	16, 0x90
	.type	sswitch,@function
sswitch:                                # @sswitch
	.cfi_startproc
# BB#0:                                 # %entry
	movq	232(%rdi), %rax
	testq	%rax, %rax
	je	.LBB29_1
# BB#2:                                 # %if.end
	jmpq	*%rax                   # TAILCALL
.LBB29_1:                               # %return
	movl	$-2, %eax
	retq
.Lfunc_end29:
	.size	sswitch, .Lfunc_end29-sswitch
	.cfi_endproc

	.globl	spgetcc
	.align	16, 0x90
	.type	spgetcc,@function
spgetcc:                                # @spgetcc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp63:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp64:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp65:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp66:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp67:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp68:
	.cfi_def_cfa_offset 64
.Ltmp69:
	.cfi_offset %rbx, -56
.Ltmp70:
	.cfi_offset %r12, -48
.Ltmp71:
	.cfi_offset %r13, -40
.Ltmp72:
	.cfi_offset %r14, -32
.Ltmp73:
	.cfi_offset %r15, -24
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movzwl	152(%r14), %ebp
	xorl	%r13d, %r13d
	cmpl	$65533, %ebp            # imm = 0xFFFD
	movl	$4294967295, %r15d      # imm = 0xFFFFFFFF
	ja	.LBB30_2
# BB#1:                                 # %cond.false
	movq	256(%r14), %rax
	movl	24(%rax), %r13d
.LBB30_2:                               # %cond.end
	movq	112(%r14), %rax
	movq	120(%r14), %rdx
	movl	%edx, %ecx
	subl	%eax, %ecx
	cmpl	%r13d, %ecx
	setle	%bl
	testw	%bp, %bp
	js	.LBB30_3
# BB#4:                                 # %cond.end
	cmpl	%r13d, %ecx
	jg	.LBB30_5
# BB#6:                                 # %while.body.lr.ph
	movl	%esi, 4(%rsp)           # 4-byte Spill
	leaq	112(%r14), %r12
	.align	16, 0x90
.LBB30_7:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	136(%r14), %rdi
	cmpq	%rdi, %rax
	jb	.LBB30_9
# BB#8:                                 # %if.then.i.i
                                        #   in Loop: Header=BB30_7 Depth=1
	leaq	1(%rax), %rsi
	movl	%esi, %ebx
	subl	%edi, %ebx
	subl	%eax, %edx
	andq	%r15, %rdx
	callq	memmove
	movq	136(%r14), %rax
	decq	%rax
	movq	%rax, 112(%r14)
	andq	%r15, %rbx
	subq	%rbx, 120(%r14)
	addq	%rbx, 176(%r14)
.LBB30_9:                               # %s_process_read_buf.exit
                                        #   in Loop: Header=BB30_7 Depth=1
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	sreadbuf
	movl	%eax, %ebp
	sarl	$31, %ebp
	andl	%eax, %ebp
	movw	%bp, 152(%r14)
	movq	112(%r14), %rax
	movq	120(%r14), %rdx
	movl	%edx, %ecx
	subl	%eax, %ecx
	cmpl	%r13d, %ecx
	setle	%bl
	testw	%bp, %bp
	js	.LBB30_11
# BB#10:                                # %s_process_read_buf.exit
                                        #   in Loop: Header=BB30_7 Depth=1
	cmpl	%r13d, %ecx
	jle	.LBB30_7
	jmp	.LBB30_11
.LBB30_3:
	movl	%esi, 4(%rsp)           # 4-byte Spill
	jmp	.LBB30_11
.LBB30_5:
	movl	%esi, 4(%rsp)           # 4-byte Spill
.LBB30_11:                              # %while.end
	testb	%bl, %bl
	je	.LBB30_20
# BB#12:                                # %land.lhs.true
	movzwl	%bp, %esi
	cmpl	$65534, %esi            # imm = 0xFFFE
	jb	.LBB30_14
# BB#13:                                # %land.lhs.true
	testl	%ecx, %ecx
	je	.LBB30_14
.LBB30_20:                              # %if.end.40
	leaq	1(%rax), %rcx
	movq	%rcx, 112(%r14)
	movzbl	1(%rax), %eax
.LBB30_21:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB30_14:                              # %if.then
	movq	136(%r14), %rdi
	cmpq	%rdi, %rax
	jb	.LBB30_16
# BB#15:                                # %land.lhs.true.i
	leaq	1(%rax), %rsi
	movl	%esi, %ebx
	subl	%edi, %ebx
	subl	%eax, %edx
	andq	%r15, %rdx
	callq	memmove
	movq	136(%r14), %rax
	decq	%rax
	movq	%rax, 112(%r14)
	andq	%r15, %rbx
	subq	%rbx, 120(%r14)
	addq	%rbx, 176(%r14)
.LBB30_16:                              # %stream_compact.exit
	movswl	%bp, %eax
	cmpl	$0, 4(%rsp)             # 4-byte Folded Reload
	je	.LBB30_21
# BB#17:                                # %stream_compact.exit
	movzwl	%bp, %ecx
	cmpl	$65535, %ecx            # imm = 0xFFFF
	jne	.LBB30_21
# BB#18:                                # %land.lhs.true.29
	cmpl	$0, 292(%r14)
	je	.LBB30_21
# BB#19:                                # %if.then.32
	movq	%r14, %rdi
	callq	sclose
	movl	%eax, %ecx
	cmpl	$1, %ecx
	sbbl	%eax, %eax
	cmpl	$1, %ecx
	sbbl	%edx, %edx
	orl	%ecx, %eax
	orl	%ecx, %edx
	movw	%dx, 152(%r14)
	jmp	.LBB30_21
.Lfunc_end30:
	.size	spgetcc, .Lfunc_end30-spgetcc
	.cfi_endproc

	.globl	spputc
	.align	16, 0x90
	.type	spputc,@function
spputc:                                 # @spputc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp76:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp77:
	.cfi_def_cfa_offset 32
.Ltmp78:
	.cfi_offset %rbx, -24
.Ltmp79:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	jmp	.LBB31_1
	.align	16, 0x90
.LBB31_3:                               # %if.end.10
                                        #   in Loop: Header=BB31_1 Depth=1
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	s_process_write_buf
.LBB31_1:                               # %entry
                                        # =>This Inner Loop Header: Depth=1
	movw	152(%rbx), %ax
	testw	%ax, %ax
	jne	.LBB31_2
# BB#4:                                 # %if.end
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB31_3
# BB#5:                                 # %if.then.5
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	%bpl, 1(%rax)
	movzbl	%bpl, %eax
	jmp	.LBB31_6
.LBB31_2:                               # %if.then
	cwtl
.LBB31_6:                               # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end31:
	.size	spputc, .Lfunc_end31-spputc
	.cfi_endproc

	.globl	sungetc
	.align	16, 0x90
	.type	sungetc,@function
sungetc:                                # @sungetc
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-2, %eax
	testb	$1, 155(%rdi)
	je	.LBB32_4
# BB#1:                                 # %lor.lhs.false
	movq	112(%rdi), %rcx
	cmpq	136(%rdi), %rcx
	jb	.LBB32_4
# BB#2:                                 # %lor.lhs.false.4
	movzbl	%sil, %edx
	movzbl	(%rcx), %esi
	cmpl	%edx, %esi
	jne	.LBB32_4
# BB#3:                                 # %if.end
	decq	%rcx
	movq	%rcx, 112(%rdi)
	xorl	%eax, %eax
.LBB32_4:                               # %return
	retq
.Lfunc_end32:
	.size	sungetc, .Lfunc_end32-sungetc
	.cfi_endproc

	.globl	sgets
	.align	16, 0x90
	.type	sgets,@function
sgets:                                  # @sgets
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
	subq	$56, %rsp
.Ltmp86:
	.cfi_def_cfa_offset 112
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
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	movzwl	152(%rbx), %eax
	cmpl	$65533, %eax            # imm = 0xFFFD
	movl	$0, %r14d
	ja	.LBB33_2
# BB#1:                                 # %cond.false
	movq	256(%rbx), %rax
	movslq	24(%rax), %r14
.LBB33_2:                               # %cond.end
	leaq	-1(%rsi), %rbp
	movq	%rbp, 40(%rsp)
	movl	%edx, %eax
	leaq	-1(%rsi,%rax), %r13
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%r13, 48(%rsp)
	testl	%edx, %edx
	je	.LBB33_3
# BB#4:                                 # %while.body.lr.ph.lr.ph
	movq	%r14, %r15
	negq	%r15
	xorl	%eax, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	$4294967295, %r12d      # imm = 0xFFFFFFFF
.LBB33_5:                               # %while.body.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_6 Depth 2
	movq	112(%rbx), %rsi
	movq	120(%rbx), %rax
	.align	16, 0x90
.LBB33_6:                               # %while.body
                                        #   Parent Loop BB33_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %rcx
	subq	%rsi, %rcx
	movslq	%ecx, %rdx
	cmpq	%r14, %rdx
	jle	.LBB33_9
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB33_6 Depth=2
	addq	%r15, %rax
	movq	%rax, 120(%rbx)
	subq	%rsi, %rax
	subq	%rbp, %r13
	cmpl	%r13d, %eax
	cmovbeq	%rax, %r13
	incq	%rbp
	incq	%rsi
	andq	%r12, %r13
	movq	%rbp, %rdi
	movq	%r13, %rdx
	callq	memmove
	movq	112(%rbx), %rsi
	addq	%r13, %rsi
	movq	%rsi, 112(%rbx)
	movq	%r13, %rbp
	addq	40(%rsp), %rbp
	movq	%rbp, 40(%rsp)
	movq	120(%rbx), %rax
	addq	%r14, %rax
	movq	%rax, 120(%rbx)
	movq	48(%rsp), %r13
	cmpq	%r13, %rbp
	jb	.LBB33_6
	jmp	.LBB33_8
	.align	16, 0x90
.LBB33_9:                               # %if.else
                                        #   in Loop: Header=BB33_5 Depth=1
	movl	%r13d, %eax
	subl	%ebp, %eax
	movl	144(%rbx), %edx
	shrl	$2, %edx
	cmpl	%edx, %eax
	jb	.LBB33_19
# BB#10:                                # %land.lhs.true
                                        #   in Loop: Header=BB33_5 Depth=1
	movq	256(%rbx), %rdx
	testq	%rdx, %rdx
	je	.LBB33_19
# BB#11:                                # %land.lhs.true.43
                                        #   in Loop: Header=BB33_5 Depth=1
	movq	(%rdx), %rdx
	cmpl	28(%rdx), %eax
	jb	.LBB33_19
# BB#12:                                # %land.lhs.true.46
                                        #   in Loop: Header=BB33_5 Depth=1
	testl	%ecx, %ecx
	jne	.LBB33_19
# BB#13:                                # %land.lhs.true.46
                                        #   in Loop: Header=BB33_5 Depth=1
	movzwl	152(%rbx), %eax
	testw	%ax, %ax
	jne	.LBB33_19
# BB#14:                                # %if.then.54
                                        #   in Loop: Header=BB33_5 Depth=1
	addq	%r15, %r13
	movq	%r13, 48(%rsp)
	movq	%rbx, %rdi
	leaq	32(%rsp), %rsi
	callq	sreadbuf
	addq	%r14, 48(%rsp)
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	112(%rbx), %rax
	movq	136(%rbx), %rdi
	cmpq	%rdi, %rax
	jae	.LBB33_16
# BB#15:                                # %if.then.54.stream_compact.exit_crit_edge
                                        #   in Loop: Header=BB33_5 Depth=1
	movq	176(%rbx), %r13
	jmp	.LBB33_17
.LBB33_16:                              # %land.lhs.true.i
                                        #   in Loop: Header=BB33_5 Depth=1
	leaq	1(%rax), %rsi
	movl	%esi, %r13d
	subl	%edi, %r13d
	movl	120(%rbx), %edx
	subl	%eax, %edx
	andq	%r12, %rdx
	callq	memmove
	movq	136(%rbx), %rdi
	leaq	-1(%rdi), %rax
	movq	%rax, 112(%rbx)
	andq	%r12, %r13
	subq	%r13, 120(%rbx)
	addq	176(%rbx), %r13
	movq	%r13, 176(%rbx)
.LBB33_17:                              # %stream_compact.exit
                                        #   in Loop: Header=BB33_5 Depth=1
	decq	%rdi
	movq	%rdi, 120(%rbx)
	movq	%rdi, 112(%rbx)
	movq	40(%rsp), %rcx
	movq	%rcx, %rax
	subq	%rbp, %rax
	addq	%r13, %rax
	movq	%rax, 176(%rbx)
	movq	24(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB33_22
# BB#18:                                # %stream_compact.exit
                                        #   in Loop: Header=BB33_5 Depth=1
	cmpq	48(%rsp), %rcx
	je	.LBB33_22
	.align	16, 0x90
.LBB33_19:                              # %if.end.81
                                        #   in Loop: Header=BB33_5 Depth=1
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	spgetcc
	testl	%eax, %eax
	js	.LBB33_20
# BB#21:                                # %cleanup.89
                                        #   in Loop: Header=BB33_5 Depth=1
	movq	40(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 40(%rsp)
	movb	%al, 1(%rcx)
	movq	40(%rsp), %rbp
	movq	48(%rsp), %r13
	cmpq	%r13, %rbp
	movq	%rbp, %rcx
	jb	.LBB33_5
	jmp	.LBB33_22
.LBB33_8:
	movq	%rbp, %rcx
	jmp	.LBB33_22
.LBB33_3:
	xorl	%eax, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	%rbp, %rcx
.LBB33_22:                              # %while.end
	incl	%ecx
	movq	8(%rsp), %rax           # 8-byte Reload
	subl	%eax, %ecx
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	%ecx, (%rax)
	movq	24(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, %eax
	sarl	$31, %eax
	andl	%ecx, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB33_20:                              # %if.end.81.while.end.loopexit50_crit_edge
	movq	40(%rsp), %rcx
	movq	%rax, 24(%rsp)          # 8-byte Spill
	jmp	.LBB33_22
.Lfunc_end33:
	.size	sgets, .Lfunc_end33-sgets
	.cfi_endproc

	.globl	stream_move
	.align	16, 0x90
	.type	stream_move,@function
stream_move:                            # @stream_move
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp94:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp95:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp96:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp97:
	.cfi_def_cfa_offset 48
.Ltmp98:
	.cfi_offset %rbx, -40
.Ltmp99:
	.cfi_offset %r14, -32
.Ltmp100:
	.cfi_offset %r15, -24
.Ltmp101:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	(%rbx), %rsi
	movq	8(%rbx), %rax
	subq	%rsi, %rax
	movq	8(%r14), %rdi
	movq	16(%r14), %rcx
	subq	%rdi, %rcx
	cmpl	%ecx, %eax
	seta	%dl
	cmovbeq	%rax, %rcx
	movzbl	%dl, %r15d
	incq	%rdi
	incq	%rsi
	movl	%ecx, %ebp
	movq	%rbp, %rdx
	callq	memmove
	addq	%rbp, (%rbx)
	addq	%rbp, 8(%r14)
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end34:
	.size	stream_move, .Lfunc_end34-stream_move
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI35_0:
	.zero	16
	.text
	.align	16, 0x90
	.type	sreadbuf,@function
sreadbuf:                               # @sreadbuf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp103:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp104:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp105:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp106:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp107:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp108:
	.cfi_def_cfa_offset 112
.Ltmp109:
	.cfi_offset %rbx, -56
.Ltmp110:
	.cfi_offset %r12, -48
.Ltmp111:
	.cfi_offset %r13, -40
.Ltmp112:
	.cfi_offset %r14, -32
.Ltmp113:
	.cfi_offset %r15, -24
.Ltmp114:
	.cfi_offset %rbp, -16
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %rbp
	xorl	%esi, %esi
	jmp	.LBB35_1
	.align	16, 0x90
.LBB35_29:                              # %cleanup.121.thread
                                        #   in Loop: Header=BB35_1 Depth=1
	movq	240(%rcx), %rax
	movq	%r15, 240(%rcx)
	movq	%rcx, %rbp
	movq	%rax, %rsi
.LBB35_1:                               # %for.cond.1
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %r15
	movq	240(%r15), %r14
	testq	%r14, %r14
	je	.LBB35_2
# BB#3:                                 # %if.else
                                        #   in Loop: Header=BB35_1 Depth=1
	movzwl	152(%r14), %eax
	xorl	%ecx, %ecx
	cmpl	$65533, %eax            # imm = 0xFFFD
	ja	.LBB35_5
# BB#4:                                 # %cond.false
                                        #   in Loop: Header=BB35_1 Depth=1
	movq	256(%r14), %rcx
	movl	24(%rcx), %ecx
.LBB35_5:                               # %cond.end
                                        #   in Loop: Header=BB35_1 Depth=1
	leaq	112(%r14), %rbx
	movslq	%ecx, %rcx
	movq	120(%r14), %rdx
	movq	%rdx, %r13
	subq	112(%r14), %r13
	cmpq	%r13, %rcx
	cmovleq	%rcx, %r13
	movslq	%r13d, %rcx
	subq	%rcx, %rdx
	movq	%rdx, 120(%r14)
	movzwl	%ax, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	sete	%al
	movzbl	%al, %ecx
	jmp	.LBB35_6
	.align	16, 0x90
.LBB35_2:                               # %if.then
                                        #   in Loop: Header=BB35_1 Depth=1
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 32(%rsp)
	xorl	%r13d, %r13d
	leaq	32(%rsp), %rbx
	xorl	%ecx, %ecx
.LBB35_6:                               # %if.end
                                        #   in Loop: Header=BB35_1 Depth=1
	leaq	112(%r15), %rbp
	testq	%rsi, %rsi
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	cmoveq	8(%rsp), %rbp           # 8-byte Folded Reload
	movq	8(%rbp), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	256(%r15), %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	callq	*224(%r15)
	movl	%eax, %r12d
	movslq	%r13d, %rax
	addq	%rax, 8(%rbx)
	testq	%r14, %r14
	je	.LBB35_12
# BB#7:                                 # %if.end
                                        #   in Loop: Header=BB35_1 Depth=1
	testl	%r12d, %r12d
	jne	.LBB35_12
# BB#8:                                 # %if.end.51
                                        #   in Loop: Header=BB35_1 Depth=1
	movswl	152(%r14), %eax
	testl	%eax, %eax
	js	.LBB35_9
# BB#15:                                # %do.body.70
                                        #   in Loop: Header=BB35_1 Depth=1
	movq	240(%r15), %rbp
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%rax, 240(%r15)
	movq	112(%rbp), %rax
	movq	136(%rbp), %rdi
	cmpq	%rdi, %rax
	jb	.LBB35_18
# BB#16:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB35_1 Depth=1
	cmpw	$0, 152(%rbp)
	js	.LBB35_18
# BB#17:                                # %if.then.i
                                        #   in Loop: Header=BB35_1 Depth=1
	leaq	1(%rax), %rsi
	movl	%esi, %ebx
	subl	%edi, %ebx
	movl	120(%rbp), %edx
	subl	%eax, %edx
	callq	memmove
	movq	136(%rbp), %rax
	decq	%rax
	movq	%rax, 112(%rbp)
	subq	%rbx, 120(%rbp)
	addq	%rbx, 176(%rbp)
.LBB35_18:                              # %cleanup.thread
                                        #   in Loop: Header=BB35_1 Depth=1
	movq	%r15, %rsi
	jmp	.LBB35_1
.LBB35_9:                               # %if.then.56
                                        #   in Loop: Header=BB35_1 Depth=1
	movzwl	%ax, %ecx
	cmpl	$65535, %ecx            # imm = 0xFFFF
	jne	.LBB35_11
# BB#10:                                # %lor.lhs.false.61
                                        #   in Loop: Header=BB35_1 Depth=1
	xorl	%r12d, %r12d
	movq	16(%rsp), %rcx          # 8-byte Reload
	cmpq	%rcx, 8(%rbp)
	jne	.LBB35_12
.LBB35_11:                              # %if.then.65
                                        #   in Loop: Header=BB35_1 Depth=1
	movl	%eax, %r12d
.LBB35_12:                              # %for.end
                                        #   in Loop: Header=BB35_1 Depth=1
	testq	%r14, %r14
	je	.LBB35_13
# BB#21:                                # %land.lhs.true
                                        #   in Loop: Header=BB35_1 Depth=1
	cmpl	$-1, %r12d
	je	.LBB35_23
# BB#22:                                #   in Loop: Header=BB35_1 Depth=1
	movq	24(%rsp), %rcx          # 8-byte Reload
	jmp	.LBB35_28
	.align	16, 0x90
.LBB35_13:                              # %lor.lhs.false.80
                                        #   in Loop: Header=BB35_1 Depth=1
	cmpl	$-1, %r12d
	jne	.LBB35_14
# BB#19:                                # %lor.lhs.false.80
                                        #   in Loop: Header=BB35_1 Depth=1
	movq	304(%r15), %rax
	testq	%rax, %rax
	je	.LBB35_20
.LBB35_23:                              # %land.lhs.true.83
                                        #   in Loop: Header=BB35_1 Depth=1
	movq	112(%r15), %rax
	cmpq	120(%r15), %rax
	jae	.LBB35_25
# BB#24:                                #   in Loop: Header=BB35_1 Depth=1
	movq	24(%rsp), %rcx          # 8-byte Reload
	jmp	.LBB35_28
.LBB35_25:                              # %land.lhs.true.92
                                        #   in Loop: Header=BB35_1 Depth=1
	movq	24(%rsp), %rcx          # 8-byte Reload
	testq	%rcx, %rcx
	jne	.LBB35_28
# BB#26:                                # %land.lhs.true.92
                                        #   in Loop: Header=BB35_1 Depth=1
	movl	292(%r15), %eax
	testl	%eax, %eax
	je	.LBB35_28
# BB#27:                                # %if.then.97
                                        #   in Loop: Header=BB35_1 Depth=1
	movq	%r15, %rdi
	movq	%rcx, %rbx
	callq	sclose
	movq	%rbx, %rcx
	testl	%eax, %eax
	cmovnel	%eax, %r12d
	jmp	.LBB35_28
.LBB35_14:                              #   in Loop: Header=BB35_1 Depth=1
	movq	24(%rsp), %rcx          # 8-byte Reload
	jmp	.LBB35_28
.LBB35_20:                              #   in Loop: Header=BB35_1 Depth=1
	movq	24(%rsp), %rcx          # 8-byte Reload
	.align	16, 0x90
.LBB35_28:                              # %if.end.103
                                        #   in Loop: Header=BB35_1 Depth=1
	movl	%r12d, %eax
	sarl	$31, %eax
	andl	%r12d, %eax
	testq	%rcx, %rcx
	movw	%ax, 152(%r15)
	jne	.LBB35_29
# BB#30:                                # %cleanup.126
	movl	%r12d, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end35:
	.size	sreadbuf, .Lfunc_end35-sreadbuf
	.cfi_endproc

	.globl	sputs
	.align	16, 0x90
	.type	sputs,@function
sputs:                                  # @sputs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp115:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp116:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp117:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp118:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp119:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp120:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp121:
	.cfi_def_cfa_offset 80
.Ltmp122:
	.cfi_offset %rbx, -56
.Ltmp123:
	.cfi_offset %r12, -48
.Ltmp124:
	.cfi_offset %r13, -40
.Ltmp125:
	.cfi_offset %r14, -32
.Ltmp126:
	.cfi_offset %r15, -24
.Ltmp127:
	.cfi_offset %rbp, -16
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	%rsi, %r12
	movq	%rdi, %rbp
	movw	152(%rbp), %ax
	movswl	%ax, %r14d
	testl	%edx, %edx
	je	.LBB36_1
# BB#2:                                 # %entry
	testw	%ax, %ax
	js	.LBB36_1
# BB#3:                                 # %while.body.preheader
	movl	%edx, %r13d
	movl	%edx, 12(%rsp)          # 4-byte Spill
	.align	16, 0x90
.LBB36_4:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB36_11 Depth 2
	movq	120(%rbp), %rdi
	movq	128(%rbp), %rax
	movl	%eax, %r15d
	subl	%edi, %r15d
	je	.LBB36_6
# BB#5:                                 # %if.then.9
                                        #   in Loop: Header=BB36_4 Depth=1
	cmpl	%r13d, %r15d
	cmoval	%r13d, %r15d
	incq	%rdi
	movl	%r15d, %ebx
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	addq	%rbx, 120(%rbp)
	addq	%rbx, %r12
	subl	%r15d, %r13d
	jmp	.LBB36_14
	.align	16, 0x90
.LBB36_6:                               # %if.else
                                        #   in Loop: Header=BB36_4 Depth=1
	movb	(%r12), %bl
	incq	%r12
	cmpq	%rax, %rdi
	jae	.LBB36_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB36_4 Depth=1
	leaq	1(%rdi), %rax
	movq	%rax, 120(%rbp)
	movb	%bl, 1(%rdi)
	xorl	%r14d, %r14d
	decl	%r13d
	jmp	.LBB36_14
.LBB36_8:                               # %cond.false
                                        #   in Loop: Header=BB36_4 Depth=1
	movw	152(%rbp), %cx
	testw	%cx, %cx
	jne	.LBB36_13
# BB#9:                                 # %if.end.i.preheader
                                        #   in Loop: Header=BB36_4 Depth=1
	cmpq	%rax, %rdi
	jb	.LBB36_10
	.align	16, 0x90
.LBB36_11:                              # %if.end.10.i
                                        #   Parent Loop BB36_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	s_process_write_buf
	movw	152(%rbp), %cx
	testw	%cx, %cx
	jne	.LBB36_13
# BB#12:                                # %if.end.10.i.if.end.i_crit_edge
                                        #   in Loop: Header=BB36_11 Depth=2
	movq	120(%rbp), %rdi
	cmpq	128(%rbp), %rdi
	jae	.LBB36_11
.LBB36_10:                              # %if.then.5.i
                                        #   in Loop: Header=BB36_4 Depth=1
	movzbl	%bl, %r14d
	leaq	1(%rdi), %rax
	movq	%rax, 120(%rbp)
	movb	%r14b, 1(%rdi)
	decl	%r13d
	jmp	.LBB36_14
.LBB36_13:                              # %cond.end
                                        #   in Loop: Header=BB36_4 Depth=1
	testw	%cx, %cx
	setns	%al
	movzbl	%al, %eax
	subl	%eax, %r13d
	testw	%cx, %cx
	movswl	%cx, %r14d
	movl	%r13d, %eax
	js	.LBB36_15
	.align	16, 0x90
.LBB36_14:                              # %cleanup.44
                                        #   in Loop: Header=BB36_4 Depth=1
	xorl	%eax, %eax
	testl	%r13d, %r13d
	jne	.LBB36_4
	jmp	.LBB36_15
.LBB36_1:
	movl	%edx, %eax
	movl	%edx, 12(%rsp)          # 4-byte Spill
.LBB36_15:                              # %if.end.47
	movl	12(%rsp), %ecx          # 4-byte Reload
	subl	%eax, %ecx
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	%ecx, (%rax)
	movl	%r14d, %eax
	sarl	$31, %eax
	andl	%r14d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end36:
	.size	sputs, .Lfunc_end36-sputs
	.cfi_endproc

	.globl	spskip
	.align	16, 0x90
	.type	spskip,@function
spskip:                                 # @spskip
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp128:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp129:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp130:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp131:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp132:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp133:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp134:
	.cfi_def_cfa_offset 64
.Ltmp135:
	.cfi_offset %rbx, -56
.Ltmp136:
	.cfi_offset %r12, -48
.Ltmp137:
	.cfi_offset %r13, -40
.Ltmp138:
	.cfi_offset %r14, -32
.Ltmp139:
	.cfi_offset %r15, -24
.Ltmp140:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r12
	testq	%r15, %r15
	js	.LBB37_2
# BB#1:                                 # %lor.lhs.false
	movzbl	155(%r12), %eax
	testb	$1, %al
	jne	.LBB37_3
.LBB37_2:                               # %if.then
	movq	$0, (%r14)
	movl	$-2, %eax
	jmp	.LBB37_19
.LBB37_3:                               # %if.end
	testb	$4, %al
	jne	.LBB37_4
# BB#9:                                 # %if.end.11
	movzwl	152(%r12), %eax
	xorl	%r13d, %r13d
	cmpl	$65533, %eax            # imm = 0xFFFD
	ja	.LBB37_11
# BB#10:                                # %cond.false
	movq	256(%r12), %rcx
	movslq	24(%rcx), %r13
.LBB37_11:                              # %cond.end
	movq	112(%r12), %rcx
	movq	120(%r12), %rdx
	movq	%rdx, %rsi
	subq	%rcx, %rsi
	leaq	(%r13,%r15), %rdi
	cmpq	%rdi, %rsi
	movq	%r15, %rbx
	jge	.LBB37_18
# BB#12:                                # %while.body.preheader
	movq	%r15, %rbx
	jmp	.LBB37_13
	.align	16, 0x90
.LBB37_17:                              # %cleanup.while.body_crit_edge
                                        #   in Loop: Header=BB37_13 Depth=1
	movw	152(%r12), %ax
.LBB37_13:                              # %while.body.preheader
                                        # =>This Inner Loop Header: Depth=1
	subq	%rsi, %rbx
	movq	%rdx, 112(%r12)
	testw	%ax, %ax
	jne	.LBB37_14
# BB#15:                                # %cond.end.71
                                        #   in Loop: Header=BB37_13 Depth=1
	movl	$1, %esi
	movq	%r12, %rdi
	callq	spgetcc
	testl	%eax, %eax
	js	.LBB37_20
# BB#16:                                # %cond.end.71.cleanup_crit_edge
                                        #   in Loop: Header=BB37_13 Depth=1
	movq	112(%r12), %rcx
	movq	120(%r12), %rdx
	movq	%rdx, %rsi
	subq	%rcx, %rsi
	leaq	-1(%rbx,%r13), %rax
	decq	%rbx
	cmpq	%rax, %rsi
	jl	.LBB37_17
.LBB37_18:                              # %while.end
	addq	%rbx, %rcx
	movq	%rcx, 112(%r12)
	movq	%r15, (%r14)
	xorl	%eax, %eax
	jmp	.LBB37_19
.LBB37_4:                               # %if.then.8
	leaq	120(%r12), %r13
	leaq	112(%r12), %rbp
	testb	$2, %al
	movq	%r13, %rax
	cmoveq	%rbp, %rax
	movq	(%rax), %rax
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB37_6
# BB#5:                                 # %cond.false.8.i
	incq	%rax
	subq	136(%r12), %rax
	movq	%rax, %rbx
.LBB37_6:                               # %stell.exit
	addq	176(%r12), %rbx
	leaq	(%r15,%rbx), %rsi
	movq	%r12, %rdi
	callq	*192(%r12)
	testb	$2, 155(%r12)
	cmoveq	%rbp, %r13
	movq	(%r13), %rdx
	xorl	%ecx, %ecx
	testq	%rdx, %rdx
	je	.LBB37_8
# BB#7:                                 # %cond.false.8.i.54
	incq	%rdx
	subq	136(%r12), %rdx
	movq	%rdx, %rcx
.LBB37_8:                               # %stell.exit58
	subq	%rbx, %rcx
	addq	176(%r12), %rcx
	movq	%rcx, (%r14)
	jmp	.LBB37_19
.LBB37_14:                              # %if.then.45
	subq	%rbx, %r15
	movq	%r15, (%r14)
	cwtl
.LBB37_19:                              # %cleanup.81
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB37_20:                              # %if.then.75
	subq	%rbx, %r15
	movq	%r15, (%r14)
	jmp	.LBB37_19
.Lfunc_end37:
	.size	spskip, .Lfunc_end37-spskip
	.cfi_endproc

	.globl	sreadline
	.align	16, 0x90
	.type	sreadline,@function
sreadline:                              # @sreadline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp141:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp142:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp143:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp144:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp145:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp146:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp147:
	.cfi_def_cfa_offset 80
.Ltmp148:
	.cfi_offset %rbx, -56
.Ltmp149:
	.cfi_offset %r12, -48
.Ltmp150:
	.cfi_offset %r13, -40
.Ltmp151:
	.cfi_offset %r14, -32
.Ltmp152:
	.cfi_offset %r15, -24
.Ltmp153:
	.cfi_offset %rbp, -16
	movq	%r9, 8(%rsp)            # 8-byte Spill
	movq	%r8, %r15
	movq	%rdi, %r12
	movq	80(%rsp), %rax
	movl	(%rax), %r14d
	testq	%rcx, %rcx
	je	.LBB38_4
# BB#1:                                 # %entry
	testq	%rsi, %rsi
	je	.LBB38_4
# BB#2:                                 # %entry
	testl	%r14d, %r14d
	jne	.LBB38_4
# BB#3:                                 # %if.then
	movq	(%rcx), %rax
	movl	8(%rcx), %edx
	leaq	20(%rsp), %rcx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	sputs
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB38_18
.LBB38_4:                               # %topthread-pre-split
	movq	88(%rsp), %rbp
	cmpl	$0, (%rbp)
	jne	.LBB38_5
	jmp	.LBB38_11
	.align	16, 0x90
.LBB38_25:                              # %cleanup.76.thread57
                                        #   in Loop: Header=BB38_11 Depth=1
	movl	%r14d, %ecx
	incl	%r14d
	movb	%r13b, (%rax,%rcx)
.LBB38_11:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$20, %r14d
	movl	$20, %ebp
	cmoval	%r14d, %ebp
	movq	112(%r12), %rax
	movq	120(%r12), %rcx
	subq	%rax, %rcx
	cmpq	$2, %rcx
	jl	.LBB38_16
# BB#12:                                # %cond.end.thread
                                        #   in Loop: Header=BB38_11 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 112(%r12)
	movzbl	1(%rax), %r13d
	jmp	.LBB38_13
	.align	16, 0x90
.LBB38_16:                              # %cond.end
                                        #   in Loop: Header=BB38_11 Depth=1
	movl	$1, %esi
	movq	%r12, %rdi
	callq	spgetcc
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB38_17
.LBB38_13:                              # %if.end.41
                                        #   in Loop: Header=BB38_11 Depth=1
	cmpl	$13, %r13d
	je	.LBB38_26
# BB#14:                                # %if.end.41
                                        #   in Loop: Header=BB38_11 Depth=1
	cmpl	$10, %r13d
	je	.LBB38_15
# BB#19:                                # %sw.epilog
                                        #   in Loop: Header=BB38_11 Depth=1
	movl	8(%r15), %edx
	cmpl	%edx, %r14d
	jae	.LBB38_21
# BB#20:                                # %sw.epilog.cleanup.76.thread57_crit_edge
                                        #   in Loop: Header=BB38_11 Depth=1
	movq	(%r15), %rax
	jmp	.LBB38_25
.LBB38_21:                              # %if.then.46
                                        #   in Loop: Header=BB38_11 Depth=1
	movq	8(%rsp), %rdi           # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB38_22
# BB#23:                                # %if.end.53
                                        #   in Loop: Header=BB38_11 Depth=1
	addl	%r14d, %ebp
	movq	(%r15), %rsi
	movl	$.L.str.5, %r8d
	movl	%ebp, %ecx
	movq	%rdi, %rax
	callq	*152(%rax)
	movl	$-2, %ebx
	testq	%rax, %rax
	je	.LBB38_18
# BB#24:                                # %cleanup.69.thread
                                        #   in Loop: Header=BB38_11 Depth=1
	movq	%rax, (%r15)
	movl	%ebp, 8(%r15)
	jmp	.LBB38_25
.LBB38_26:                              # %cleanup.76
	movq	80(%rsp), %rax
	movl	%r14d, (%rax)
	movq	88(%rsp), %rbp
	movl	$1, (%rbp)
.LBB38_5:                               # %if.then.8
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	spgetcc
	cmpl	$-1, %eax
	je	.LBB38_6
# BB#7:                                 # %if.else
	testl	%eax, %eax
	movl	%eax, %ebx
	js	.LBB38_18
# BB#8:                                 # %if.else.15
	cmpl	$10, %eax
	je	.LBB38_10
# BB#9:                                 # %if.then.17
	decq	112(%r12)
.LBB38_10:                              # %if.end.20
	movl	$0, (%rbp)
	xorl	%ebx, %ebx
	jmp	.LBB38_18
.LBB38_6:                               # %if.then.12
	movl	$0, (%rbp)
.LBB38_18:                              # %cleanup.79
	movl	%ebx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB38_17:                              # %if.then.40
	movq	80(%rsp), %rax
	movl	%r14d, (%rax)
	movl	%r13d, %ebx
	jmp	.LBB38_18
.LBB38_15:                              # %sw.bb.42
	movq	80(%rsp), %rax
	movl	%r14d, (%rax)
	xorl	%ebx, %ebx
	jmp	.LBB38_18
.LBB38_22:                              # %if.then.48
	decq	112(%r12)
	movq	80(%rsp), %rax
	movl	%r14d, (%rax)
	movl	$1, %ebx
	jmp	.LBB38_18
.Lfunc_end38:
	.size	sreadline, .Lfunc_end38-sreadline
	.cfi_endproc

	.globl	sread_string
	.align	16, 0x90
	.type	sread_string,@function
sread_string:                           # @sread_string
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$s_no_template, (%rdi)
	movq	%rsi, 136(%rdi)
	leaq	-1(%rsi), %rax
	movq	%rax, 120(%rdi)
	movq	%rax, 112(%rdi)
	movl	%edx, %eax
	leaq	-1(%rsi,%rax), %rax
	movq	%rax, 128(%rdi)
	movw	$0, 152(%rdi)
	movb	$0, 154(%rdi)
	movb	$5, 155(%rdi)
	movq	$0, 160(%rdi)
	movq	$0, 176(%rdi)
	movl	%edx, 148(%rdi)
	movl	%edx, 144(%rdi)
	movq	$0, 240(%rdi)
	movl	$0, 248(%rdi)
	movq	sread_string.p+48(%rip), %rcx
	movq	%rcx, 232(%rdi)
	movups	sread_string.p+32(%rip), %xmm0
	movups	%xmm0, 216(%rdi)
	movups	sread_string.p+16(%rip), %xmm0
	movups	%xmm0, 200(%rdi)
	movups	sread_string.p(%rip), %xmm0
	movups	%xmm0, 184(%rdi)
	movq	%rdi, 256(%rdi)
	movq	$0, 304(%rdi)
	movq	$0, 312(%rdi)
	movl	$0, 320(%rdi)
	movq	%rsi, 160(%rdi)
	movl	%edx, 168(%rdi)
	movw	$-1, 152(%rdi)
	movq	%rax, 120(%rdi)
	retq
.Lfunc_end39:
	.size	sread_string, .Lfunc_end39-sread_string
	.cfi_endproc

	.align	16, 0x90
	.type	s_string_available,@function
s_string_available:                     # @s_string_available
	.cfi_startproc
# BB#0:                                 # %entry
	movq	120(%rdi), %rax
	subq	112(%rdi), %rax
	movq	%rax, (%rsi)
	jne	.LBB40_3
# BB#1:                                 # %land.lhs.true
	cmpl	$0, 292(%rdi)
	je	.LBB40_3
# BB#2:                                 # %if.then
	movq	$-1, (%rsi)
.LBB40_3:                               # %if.end
	xorl	%eax, %eax
	retq
.Lfunc_end40:
	.size	s_string_available, .Lfunc_end40-s_string_available
	.cfi_endproc

	.align	16, 0x90
	.type	s_string_read_seek,@function
s_string_read_seek:                     # @s_string_read_seek
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-2, %eax
	testq	%rsi, %rsi
	js	.LBB41_3
# BB#1:                                 # %lor.lhs.false
	movl	144(%rdi), %ecx
	cmpq	%rsi, %rcx
	jl	.LBB41_3
# BB#2:                                 # %if.end
	movq	136(%rdi), %rax
	leaq	-1(%rax,%rsi), %rdx
	movq	%rdx, 112(%rdi)
	leaq	-1(%rax,%rcx), %rax
	movq	%rax, 120(%rdi)
	movq	$0, 176(%rdi)
	xorl	%eax, %eax
.LBB41_3:                               # %return
	retq
.Lfunc_end41:
	.size	s_string_read_seek, .Lfunc_end41-s_string_read_seek
	.cfi_endproc

	.align	16, 0x90
	.type	s_string_read_process,@function
s_string_read_process:                  # @s_string_read_process
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-1, %eax
	retq
.Lfunc_end42:
	.size	s_string_read_process, .Lfunc_end42-s_string_read_process
	.cfi_endproc

	.globl	sread_string_reusable
	.align	16, 0x90
	.type	sread_string_reusable,@function
sread_string_reusable:                  # @sread_string_reusable
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$s_no_template, (%rdi)
	movq	%rsi, 136(%rdi)
	leaq	-1(%rsi), %rax
	movq	%rax, 120(%rdi)
	movq	%rax, 112(%rdi)
	movl	%edx, %eax
	leaq	-1(%rsi,%rax), %rax
	movq	%rax, 128(%rdi)
	movw	$0, 152(%rdi)
	movb	$0, 154(%rdi)
	movb	$5, 155(%rdi)
	movq	$0, 160(%rdi)
	movq	$0, 176(%rdi)
	movl	%edx, 148(%rdi)
	movl	%edx, 144(%rdi)
	movq	$0, 240(%rdi)
	movl	$0, 248(%rdi)
	movq	sread_string.p+48(%rip), %rcx
	movq	%rcx, 232(%rdi)
	movups	sread_string.p+32(%rip), %xmm0
	movups	%xmm0, 216(%rdi)
	movups	sread_string.p+16(%rip), %xmm0
	movups	%xmm0, 200(%rdi)
	movups	sread_string.p(%rip), %xmm0
	movups	%xmm0, 184(%rdi)
	movq	%rdi, 256(%rdi)
	movq	$0, 304(%rdi)
	movq	$0, 312(%rdi)
	movl	$0, 320(%rdi)
	movq	%rsi, 160(%rdi)
	movl	%edx, 168(%rdi)
	movw	$-1, 152(%rdi)
	movq	%rax, 120(%rdi)
	movq	sread_string_reusable.p+48(%rip), %rax
	movq	%rax, 232(%rdi)
	movups	sread_string_reusable.p+32(%rip), %xmm0
	movups	%xmm0, 216(%rdi)
	movups	sread_string_reusable.p+16(%rip), %xmm0
	movups	%xmm0, 200(%rdi)
	movups	sread_string_reusable.p(%rip), %xmm0
	movups	%xmm0, 184(%rdi)
	movl	$0, 292(%rdi)
	retq
.Lfunc_end43:
	.size	sread_string_reusable, .Lfunc_end43-sread_string_reusable
	.cfi_endproc

	.align	16, 0x90
	.type	s_string_reusable_reset,@function
s_string_reusable_reset:                # @s_string_reusable_reset
	.cfi_startproc
# BB#0:                                 # %entry
	movq	136(%rdi), %rax
	leaq	-1(%rax), %rcx
	movq	%rcx, 112(%rdi)
	movl	144(%rdi), %ecx
	leaq	-1(%rax,%rcx), %rax
	movq	%rax, 120(%rdi)
	retq
.Lfunc_end44:
	.size	s_string_reusable_reset, .Lfunc_end44-s_string_reusable_reset
	.cfi_endproc

	.align	16, 0x90
	.type	s_string_reusable_flush,@function
s_string_reusable_flush:                # @s_string_reusable_flush
	.cfi_startproc
# BB#0:                                 # %entry
	movq	136(%rdi), %rax
	movl	144(%rdi), %ecx
	leaq	-1(%rax,%rcx), %rax
	movq	%rax, 120(%rdi)
	movq	%rax, 112(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end45:
	.size	s_string_reusable_flush, .Lfunc_end45-s_string_reusable_flush
	.cfi_endproc

	.globl	s_close_disable
	.align	16, 0x90
	.type	s_close_disable,@function
s_close_disable:                        # @s_close_disable
	.cfi_startproc
# BB#0:                                 # %entry
	movw	266(%rdi), %ax
	orw	264(%rdi), %ax
	incl	%eax
	movw	%ax, 266(%rdi)
	movw	%ax, 264(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end46:
	.size	s_close_disable, .Lfunc_end46-s_close_disable
	.cfi_endproc

	.globl	swrite_string
	.align	16, 0x90
	.type	swrite_string,@function
swrite_string:                          # @swrite_string
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$s_no_template, (%rdi)
	movq	%rsi, 136(%rdi)
	leaq	-1(%rsi), %rax
	movq	%rax, 120(%rdi)
	movq	%rax, 112(%rdi)
	movl	%edx, %eax
	leaq	-1(%rsi,%rax), %rax
	movq	%rax, 128(%rdi)
	movw	$0, 152(%rdi)
	movb	$0, 154(%rdi)
	movb	$6, 155(%rdi)
	movq	$0, 160(%rdi)
	movq	$0, 176(%rdi)
	movl	%edx, 148(%rdi)
	movl	%edx, 144(%rdi)
	movq	$0, 240(%rdi)
	movl	$0, 248(%rdi)
	movq	swrite_string.p+48(%rip), %rax
	movq	%rax, 232(%rdi)
	movups	swrite_string.p+32(%rip), %xmm0
	movups	%xmm0, 216(%rdi)
	movups	swrite_string.p+16(%rip), %xmm0
	movups	%xmm0, 200(%rdi)
	movups	swrite_string.p(%rip), %xmm0
	movups	%xmm0, 184(%rdi)
	movq	%rdi, 256(%rdi)
	movq	$0, 304(%rdi)
	movq	$0, 312(%rdi)
	movl	$0, 320(%rdi)
	movq	%rsi, 160(%rdi)
	movl	%edx, 168(%rdi)
	retq
.Lfunc_end47:
	.size	swrite_string, .Lfunc_end47-swrite_string
	.cfi_endproc

	.align	16, 0x90
	.type	s_string_write_seek,@function
s_string_write_seek:                    # @s_string_write_seek
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-2, %eax
	testq	%rsi, %rsi
	js	.LBB48_3
# BB#1:                                 # %lor.lhs.false
	movl	144(%rdi), %ecx
	cmpq	%rsi, %rcx
	jl	.LBB48_3
# BB#2:                                 # %if.end
	movq	136(%rdi), %rax
	leaq	-1(%rax,%rsi), %rax
	movq	%rax, 120(%rdi)
	xorl	%eax, %eax
.LBB48_3:                               # %return
	retq
.Lfunc_end48:
	.size	s_string_write_seek, .Lfunc_end48-s_string_write_seek
	.cfi_endproc

	.align	16, 0x90
	.type	s_string_write_process,@function
s_string_write_process:                 # @s_string_write_process
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%ecx, %ecx
	setne	%al
	movzbl	%al, %eax
	orl	$-2, %eax
	retq
.Lfunc_end49:
	.size	s_string_write_process, .Lfunc_end49-s_string_write_process
	.cfi_endproc

	.globl	swrite_position_only
	.align	16, 0x90
	.type	swrite_position_only,@function
swrite_position_only:                   # @swrite_position_only
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$s_no_template, (%rdi)
	movl	$swrite_position_only.discard_buf-1, %eax
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, 112(%rdi)
	movl	$swrite_position_only.discard_buf, %eax
	movd	%rax, %xmm0
	movl	$swrite_position_only.discard_buf+49, %eax
	movd	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, 128(%rdi)
	movw	$0, 152(%rdi)
	movb	$0, 154(%rdi)
	movb	$6, 155(%rdi)
	movq	$0, 160(%rdi)
	movq	$0, 176(%rdi)
	movl	$50, 148(%rdi)
	movl	$50, 144(%rdi)
	movq	$0, 240(%rdi)
	movl	$0, 248(%rdi)
	movq	swrite_string.p+48(%rip), %rax
	movq	%rax, 232(%rdi)
	movups	swrite_string.p+32(%rip), %xmm0
	movups	%xmm0, 216(%rdi)
	movups	swrite_string.p+16(%rip), %xmm0
	movups	%xmm0, 200(%rdi)
	movups	swrite_string.p(%rip), %xmm0
	movups	%xmm0, 184(%rdi)
	movq	%rdi, 256(%rdi)
	movq	$0, 304(%rdi)
	movq	$0, 312(%rdi)
	movl	$0, 320(%rdi)
	movq	$swrite_position_only.discard_buf, 160(%rdi)
	movl	$50, 168(%rdi)
	movq	$s_write_position_process, 224(%rdi)
	retq
.Lfunc_end50:
	.size	swrite_position_only, .Lfunc_end50-swrite_position_only
	.cfi_endproc

	.align	16, 0x90
	.type	s_write_position_process,@function
s_write_position_process:               # @s_write_position_process
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rsi), %rax
	movq	%rax, (%rsi)
	xorl	%eax, %eax
	retq
.Lfunc_end51:
	.size	s_write_position_process, .Lfunc_end51-s_write_position_process
	.cfi_endproc

	.globl	s_init_filter
	.align	16, 0x90
	.type	s_init_filter,@function
s_init_filter:                          # @s_init_filter
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp154:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp155:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp156:
	.cfi_def_cfa_offset 32
.Ltmp157:
	.cfi_offset %rbx, -24
.Ltmp158:
	.cfi_offset %r14, -16
	movq	%r8, %r14
	movq	%rdi, %rbx
	movq	(%rsi), %rdi
	movl	$-2, %eax
	cmpl	%ecx, 24(%rdi)
	ja	.LBB52_5
# BB#1:                                 # %if.end
	movq	$s_no_template, (%rbx)
	movq	%rdx, 136(%rbx)
	leaq	-1(%rdx), %rax
	movq	%rax, 120(%rbx)
	movq	%rax, 112(%rbx)
	movl	%ecx, %eax
	leaq	-1(%rdx,%rax), %rax
	movq	%rax, 128(%rbx)
	movw	$0, 152(%rbx)
	movb	$0, 154(%rbx)
	movb	$2, 155(%rbx)
	movq	$0, 160(%rbx)
	movq	$0, 176(%rbx)
	movl	%ecx, 148(%rbx)
	movl	%ecx, 144(%rbx)
	movq	$0, 240(%rbx)
	movl	$0, 248(%rbx)
	movq	s_filter_write_procs+48(%rip), %rax
	movq	%rax, 232(%rbx)
	movups	s_filter_write_procs+32(%rip), %xmm0
	movups	%xmm0, 216(%rbx)
	movups	s_filter_write_procs+16(%rip), %xmm0
	movups	%xmm0, 200(%rbx)
	movups	s_filter_write_procs(%rip), %xmm0
	movups	%xmm0, 184(%rbx)
	movq	$0, 304(%rbx)
	movq	$0, 312(%rbx)
	movl	$0, 320(%rbx)
	movq	16(%rdi), %rax
	movq	%rax, 224(%rbx)
	movq	%rsi, 256(%rbx)
	movq	8(%rdi), %rax
	testq	%rax, %rax
	je	.LBB52_4
# BB#2:                                 # %if.then.3
	movq	%rsi, %rdi
	callq	*%rax
	movw	%ax, 152(%rbx)
	shll	$16, %eax
	js	.LBB52_3
.LBB52_4:                               # %if.end.13
	movq	%r14, 240(%rbx)
	xorl	%eax, %eax
	jmp	.LBB52_5
.LBB52_3:                               # %if.then.9
	sarl	$16, %eax
.LBB52_5:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end52:
	.size	s_init_filter, .Lfunc_end52-s_init_filter
	.cfi_endproc

	.globl	s_add_filter
	.align	16, 0x90
	.type	s_add_filter,@function
s_add_filter:                           # @s_add_filter
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp159:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp160:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp161:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp162:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp163:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp164:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp165:
	.cfi_def_cfa_offset 128
.Ltmp166:
	.cfi_offset %rbx, -56
.Ltmp167:
	.cfi_offset %r12, -48
.Ltmp168:
	.cfi_offset %r13, -40
.Ltmp169:
	.cfi_offset %r14, -32
.Ltmp170:
	.cfi_offset %r15, -24
.Ltmp171:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movl	24(%r12), %eax
	cmpl	$256, %eax              # imm = 0x100
	movl	$256, %r13d             # imm = 0x100
	cmoval	%eax, %r13d
	movq	(%rdi), %rax
	cmpl	144(%rax), %r13d
	jbe	.LBB53_3
# BB#1:                                 # %land.lhs.true
	movl	$s_Null_process, %eax
	cmpq	%rax, 16(%r12)
	je	.LBB53_3
# BB#2:                                 # %if.then
	movq	s_NullE_template+48(%rip), %rax
	movq	%rax, 64(%rsp)
	movups	s_NullE_template+32(%rip), %xmm0
	movaps	%xmm0, 48(%rsp)
	movups	s_NullE_template+16(%rip), %xmm0
	movaps	%xmm0, 32(%rsp)
	movups	s_NullE_template(%rip), %xmm0
	movaps	%xmm0, 16(%rsp)
	movl	%r13d, 40(%rsp)
	xorl	%r14d, %r14d
	leaq	16(%rsp), %rsi
	xorl	%edx, %edx
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	%rbx, %rcx
	callq	s_add_filter
	testq	%rax, %rax
	je	.LBB53_12
.LBB53_3:                               # %if.end.8
	movl	$st_stream, %esi
	movl	$.L.str.6, %edx
	movq	%rbx, %rdi
	callq	*72(%rbx)
	xorl	%ebp, %ebp
	testq	%rax, %rax
	je	.LBB53_5
# BB#4:                                 # %if.end.i.40
	movq	%rbx, 8(%rax)
	movq	$s_no_report_error, 16(%rax)
	movl	$0, 24(%rax)
	movb	$0, 28(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 272(%rax)
	movq	$0, 312(%rax)
	movl	$0, 320(%rax)
	movabsq	$4294967296, %rcx       # imm = 0x100000000
	movq	%rcx, 288(%rax)
	movq	%rax, %rbp
.LBB53_5:                               # %s_alloc.exit
	movl	$.L.str.7, %edx
	movq	%rbx, %rdi
	movl	%r13d, %esi
	callq	*64(%rbx)
	testq	%rbp, %rbp
	je	.LBB53_7
# BB#6:                                 # %s_alloc.exit
	testq	%rax, %rax
	je	.LBB53_7
# BB#8:                                 # %if.end.17
	testq	%r15, %r15
	cmoveq	%rbp, %r15
	movq	%r12, (%r15)
	movq	%rbx, 8(%r15)
	movq	%rbx, 8(%rbp)
	xorl	%r14d, %r14d
	cmpl	%r13d, 24(%r12)
	ja	.LBB53_12
# BB#9:                                 # %if.end.i
	movq	8(%rsp), %rcx           # 8-byte Reload
	movq	(%rcx), %rbx
	movq	$s_no_template, (%rbp)
	movq	%rax, 136(%rbp)
	leaq	-1(%rax), %rcx
	movq	%rcx, 120(%rbp)
	movq	%rcx, 112(%rbp)
	movl	%r13d, %ecx
	leaq	-1(%rax,%rcx), %rax
	movq	%rax, 128(%rbp)
	movw	$0, 152(%rbp)
	movb	$0, 154(%rbp)
	movb	$2, 155(%rbp)
	movq	$0, 160(%rbp)
	movq	$0, 176(%rbp)
	movl	%r13d, 148(%rbp)
	movl	%r13d, 144(%rbp)
	movq	$0, 240(%rbp)
	movl	$0, 248(%rbp)
	movq	s_filter_write_procs+48(%rip), %rax
	movq	%rax, 232(%rbp)
	movups	s_filter_write_procs+32(%rip), %xmm0
	movups	%xmm0, 216(%rbp)
	movups	s_filter_write_procs+16(%rip), %xmm0
	movups	%xmm0, 200(%rbp)
	movups	s_filter_write_procs(%rip), %xmm0
	movups	%xmm0, 184(%rbp)
	movq	$0, 304(%rbp)
	movq	$0, 312(%rbp)
	movl	$0, 320(%rbp)
	movq	16(%r12), %rax
	movq	%rax, 224(%rbp)
	movq	%r15, 256(%rbp)
	movq	8(%r12), %rax
	testq	%rax, %rax
	je	.LBB53_11
# BB#10:                                # %if.then.3.i
	movq	%r15, %rdi
	callq	*%rax
	movw	%ax, 152(%rbp)
	xorl	%r14d, %r14d
	testb	$-128, %ah
	jne	.LBB53_12
.LBB53_11:                              # %if.end.28
	movq	%rbx, 240(%rbp)
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%rbp, (%rax)
	movq	%rbp, %r14
	jmp	.LBB53_12
.LBB53_7:                               # %if.then.13
	movl	$.L.str.7, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	*24(%rbx)
	movl	$.L.str.6, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	*24(%rbx)
	xorl	%r14d, %r14d
.LBB53_12:                              # %cleanup.29
	movq	%r14, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end53:
	.size	s_add_filter, .Lfunc_end53-s_add_filter
	.cfi_endproc

	.globl	s_close_filters
	.align	16, 0x90
	.type	s_close_filters,@function
s_close_filters:                        # @s_close_filters
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp172:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp173:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp174:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp175:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp176:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp177:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp178:
	.cfi_def_cfa_offset 64
.Ltmp179:
	.cfi_offset %rbx, -56
.Ltmp180:
	.cfi_offset %r12, -48
.Ltmp181:
	.cfi_offset %r13, -40
.Ltmp182:
	.cfi_offset %r14, -32
.Ltmp183:
	.cfi_offset %r15, -24
.Ltmp184:
	.cfi_offset %rbp, -16
	movq	%rsi, (%rsp)            # 8-byte Spill
	movq	%rdi, %r15
	movq	(%r15), %rbx
	cmpq	%rsi, %rbx
	je	.LBB54_6
	.align	16, 0x90
.LBB54_1:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	256(%rbx), %rax
	movq	8(%rax), %r12
	movq	136(%rbx), %r13
	movq	240(%rbx), %r14
	movq	%rbx, %rdi
	callq	sclose
	testl	%eax, %eax
	js	.LBB54_7
# BB#2:                                 # %if.end
                                        #   in Loop: Header=BB54_1 Depth=1
	testq	%r12, %r12
	je	.LBB54_5
# BB#3:                                 # %if.then.3
                                        #   in Loop: Header=BB54_1 Depth=1
	movq	256(%rbx), %rbp
	movl	$.L.str.8, %edx
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	*24(%r12)
	movl	$.L.str.9, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	*24(%r12)
	cmpq	%rbx, %rbp
	je	.LBB54_5
# BB#4:                                 # %if.then.7
                                        #   in Loop: Header=BB54_1 Depth=1
	movl	$.L.str.10, %edx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	*24(%r12)
.LBB54_5:                               # %cleanup.thread
                                        #   in Loop: Header=BB54_1 Depth=1
	movq	%r14, (%r15)
	cmpq	(%rsp), %r14            # 8-byte Folded Reload
	movq	%r14, %rbx
	jne	.LBB54_1
.LBB54_6:
	xorl	%eax, %eax
.LBB54_7:                               # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end54:
	.size	s_close_filters, .Lfunc_end54-s_close_filters
	.cfi_endproc

	.globl	file_close_finish
	.align	16, 0x90
	.type	file_close_finish,@function
file_close_finish:                      # @file_close_finish
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end55:
	.size	file_close_finish, .Lfunc_end55-file_close_finish
	.cfi_endproc

	.globl	file_close_disable
	.align	16, 0x90
	.type	file_close_disable,@function
file_close_disable:                     # @file_close_disable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp185:
	.cfi_def_cfa_offset 16
.Ltmp186:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	296(%rbx), %rax
	testq	%rax, %rax
	je	.LBB56_2
# BB#1:                                 # %land.lhs.true
	movq	%rbx, %rdi
	callq	*%rax
	testl	%eax, %eax
	jne	.LBB56_3
.LBB56_2:                               # %if.end
	movw	266(%rbx), %ax
	orw	264(%rbx), %ax
	incl	%eax
	movw	%ax, 266(%rbx)
	movw	%ax, 264(%rbx)
	xorl	%eax, %eax
.LBB56_3:                               # %cleanup
	popq	%rbx
	retq
.Lfunc_end56:
	.size	file_close_disable, .Lfunc_end56-file_close_disable
	.cfi_endproc

	.align	16, 0x90
	.type	s_Null_process,@function
s_Null_process:                         # @s_Null_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp187:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp188:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp189:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp190:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp191:
	.cfi_def_cfa_offset 48
.Ltmp192:
	.cfi_offset %rbx, -40
.Ltmp193:
	.cfi_offset %r14, -32
.Ltmp194:
	.cfi_offset %r15, -24
.Ltmp195:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	(%rbx), %rsi
	movq	8(%rbx), %rax
	subq	%rsi, %rax
	movq	8(%r14), %rdi
	movq	16(%r14), %rcx
	subq	%rdi, %rcx
	cmpl	%ecx, %eax
	seta	%dl
	cmovbeq	%rax, %rcx
	movzbl	%dl, %r15d
	incq	%rdi
	incq	%rsi
	movl	%ecx, %ebp
	movq	%rbp, %rdx
	callq	memmove
	addq	%rbp, (%rbx)
	addq	%rbp, 8(%r14)
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end57:
	.size	s_Null_process, .Lfunc_end57-s_Null_process
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"stream"
	.size	.L.str, 7

	.type	st_stream,@object       # @st_stream
	.section	.rodata,"a",@progbits
	.globl	st_stream
	.align	8
st_stream:
	.long	352                     # 0x160
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	stream_enum_ptrs
	.quad	stream_reloc_ptrs
	.quad	stream_finalize
	.quad	0
	.size	st_stream, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"stream_state"
	.size	.L.str.1, 13

	.type	st_stream_state,@object # @st_stream_state
	.section	.rodata,"a",@progbits
	.globl	st_stream_state
	.align	8
st_stream_state:
	.long	112                     # 0x70
	.zero	4
	.quad	.L.str.1
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_stream_state, 64

	.type	s_no_template,@object   # @s_no_template
	.align	8
s_no_template:
	.quad	st_stream_state
	.quad	0
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	0
	.quad	0
	.quad	0
	.size	s_no_template, 56

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"ssetfilename"
	.size	.L.str.2, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"s_disable(file_name)"
	.size	.L.str.3, 21

	.type	s_filter_read_procs,@object # @s_filter_read_procs
	.section	.rodata,"a",@progbits
	.globl	s_filter_read_procs
	.align	8
s_filter_read_procs:
	.quad	s_std_noavailable
	.quad	s_std_noseek
	.quad	s_std_read_reset
	.quad	s_std_read_flush
	.quad	s_filter_close
	.quad	0
	.quad	0
	.size	s_filter_read_procs, 56

	.type	s_filter_write_procs,@object # @s_filter_write_procs
	.globl	s_filter_write_procs
	.align	8
s_filter_write_procs:
	.quad	s_std_noavailable
	.quad	s_std_noseek
	.quad	s_std_write_reset
	.quad	s_filter_write_flush
	.quad	s_filter_close
	.quad	0
	.quad	0
	.size	s_filter_write_procs, 56

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"s_std_close"
	.size	.L.str.4, 12

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"sreadline(buffer)"
	.size	.L.str.5, 18

	.type	sread_string.p,@object  # @sread_string.p
	.section	.rodata,"a",@progbits
	.align	8
sread_string.p:
	.quad	s_string_available
	.quad	s_string_read_seek
	.quad	s_std_read_reset
	.quad	s_std_read_flush
	.quad	s_std_null
	.quad	s_string_read_process
	.quad	0
	.size	sread_string.p, 56

	.type	sread_string_reusable.p,@object # @sread_string_reusable.p
	.align	8
sread_string_reusable.p:
	.quad	s_string_available
	.quad	s_string_read_seek
	.quad	s_string_reusable_reset
	.quad	s_string_reusable_flush
	.quad	s_close_disable
	.quad	s_string_read_process
	.quad	0
	.size	sread_string_reusable.p, 56

	.type	swrite_string.p,@object # @swrite_string.p
	.align	8
swrite_string.p:
	.quad	s_std_noavailable
	.quad	s_string_write_seek
	.quad	s_std_write_reset
	.quad	s_std_null
	.quad	s_std_null
	.quad	s_string_write_process
	.quad	0
	.size	swrite_string.p, 56

	.type	swrite_position_only.discard_buf,@object # @swrite_position_only.discard_buf
	.local	swrite_position_only.discard_buf
	.comm	swrite_position_only.discard_buf,50,16
	.type	s_NullE_template,@object # @s_NullE_template
	.globl	s_NullE_template
	.align	8
s_NullE_template:
	.quad	st_stream_state
	.quad	0
	.quad	s_Null_process
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	0
	.quad	0
	.quad	0
	.size	s_NullE_template, 56

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"s_add_filter(stream)"
	.size	.L.str.6, 21

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"s_add_filter(buf)"
	.size	.L.str.7, 18

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"s_close_filters(buf)"
	.size	.L.str.8, 21

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"s_close_filters(stream)"
	.size	.L.str.9, 24

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"s_close_filters(state)"
	.size	.L.str.10, 23

	.type	s_NullD_template,@object # @s_NullD_template
	.section	.rodata,"a",@progbits
	.globl	s_NullD_template
	.align	8
s_NullD_template:
	.quad	st_stream_state
	.quad	0
	.quad	s_Null_process
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	0
	.quad	0
	.quad	0
	.size	s_NullD_template, 56


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
