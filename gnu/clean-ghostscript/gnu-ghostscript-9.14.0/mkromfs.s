	.text
	.file	"mkromfs.bc"
	.globl	outprintf
	.align	16, 0x90
	.type	outprintf,@function
outprintf:                              # @outprintf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
	subq	$1232, %rsp             # imm = 0x4D0
.Ltmp1:
	.cfi_def_cfa_offset 1248
.Ltmp2:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
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
	leaq	1248(%rsp), %rax
	movq	%rax, 184(%rsp)
	movl	$48, 180(%rsp)
	movl	$16, 176(%rsp)
	leaq	208(%rsp), %rdi
	leaq	176(%rsp), %rcx
	movl	$1024, %esi             # imm = 0x400
	movq	%rbx, %rdx
	callq	vsnprintf
	movl	%eax, %ebx
	cmpl	$1024, %ebx             # imm = 0x400
	jb	.LBB0_4
# BB#3:                                 # %if.then
	movq	stdout(%rip), %rcx
	leaq	208(%rsp), %rdi
	movl	$1, %esi
	movl	$1023, %edx             # imm = 0x3FF
	callq	fwrite
	movq	stdout(%rip), %rcx
	movl	$msg_truncated, %edi
	movl	$1, %esi
	movl	$39, %edx
	jmp	.LBB0_5
.LBB0_4:                                # %if.else
	movslq	%ebx, %rdx
	movq	stdout(%rip), %rcx
	leaq	208(%rsp), %rdi
	movl	$1, %esi
.LBB0_5:                                # %if.end
	callq	fwrite
	movl	%ebx, %eax
	addq	$1232, %rsp             # imm = 0x4D0
	popq	%rbx
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
.Ltmp3:
	.cfi_def_cfa_offset 16
	subq	$1232, %rsp             # imm = 0x4D0
.Ltmp4:
	.cfi_def_cfa_offset 1248
.Ltmp5:
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
	cmpl	$1024, %ebx             # imm = 0x400
	jb	.LBB1_4
# BB#3:                                 # %if.then
	movq	stderr(%rip), %rcx
	leaq	208(%rsp), %rdi
	movl	$1, %esi
	movl	$1023, %edx             # imm = 0x3FF
	callq	fwrite
	movq	stderr(%rip), %rcx
	movl	$msg_truncated, %edi
	movl	$1, %esi
	movl	$39, %edx
	jmp	.LBB1_5
.LBB1_4:                                # %if.else
	movslq	%ebx, %rdx
	movq	stderr(%rip), %rcx
	leaq	208(%rsp), %rdi
	movl	$1, %esi
.LBB1_5:                                # %if.end
	callq	fwrite
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
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 16
	subq	$1232, %rsp             # imm = 0x4D0
.Ltmp7:
	.cfi_def_cfa_offset 1248
.Ltmp8:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
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
	leaq	1248(%rsp), %rax
	movq	%rax, 184(%rsp)
	movl	$48, 180(%rsp)
	movl	$16, 176(%rsp)
	leaq	208(%rsp), %rdi
	leaq	176(%rsp), %rcx
	movl	$1024, %esi             # imm = 0x400
	movq	%rbx, %rdx
	callq	vsnprintf
	movl	%eax, %ebx
	cmpl	$1024, %ebx             # imm = 0x400
	jb	.LBB2_4
# BB#3:                                 # %if.then
	movq	stderr(%rip), %rcx
	leaq	208(%rsp), %rdi
	movl	$1, %esi
	movl	$1023, %edx             # imm = 0x3FF
	callq	fwrite
	movq	stderr(%rip), %rcx
	movl	$msg_truncated, %edi
	movl	$1, %esi
	movl	$39, %edx
	jmp	.LBB2_5
.LBB2_4:                                # %if.else
	movslq	%ebx, %rdx
	movq	stderr(%rip), %rcx
	leaq	208(%rsp), %rdi
	movl	$1, %esi
.LBB2_5:                                # %if.end
	callq	fwrite
	movl	%ebx, %eax
	addq	$1232, %rsp             # imm = 0x4D0
	popq	%rbx
	retq
.Lfunc_end2:
	.size	errprintf, .Lfunc_end2-errprintf
	.cfi_endproc

	.globl	lprintf_file_and_line
	.align	16, 0x90
	.type	lprintf_file_and_line,@function
lprintf_file_and_line:                  # @lprintf_file_and_line
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, %ecx
	movq	%rdi, %rdx
	movl	$.L.str, %edi
	xorl	%eax, %eax
	movq	%rdx, %rsi
	movl	%ecx, %edx
	jmp	errprintf_nomem         # TAILCALL
.Lfunc_end3:
	.size	lprintf_file_and_line, .Lfunc_end3-lprintf_file_and_line
	.cfi_endproc

	.globl	eprintf_program_ident
	.align	16, 0x90
	.type	eprintf_program_ident,@function
eprintf_program_ident:                  # @eprintf_program_ident
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movq	%rdi, %rcx
	testq	%rcx, %rcx
	je	.LBB4_4
# BB#1:                                 # %if.then
	movl	$.L.str.1, %eax
	movl	$.L.str.2, %edi
	testq	%rbx, %rbx
	cmovneq	%rax, %rdi
	xorl	%eax, %eax
	movq	%rcx, %rsi
	callq	errprintf_nomem
	testq	%rbx, %rbx
	je	.LBB4_3
# BB#2:                                 # %if.then.3
	movabsq	$-6640827866535438581, %rcx # imm = 0xA3D70A3D70A3D70B
	movq	%rbx, %rax
	imulq	%rcx
	addq	%rbx, %rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	shrq	$6, %rdx
	addl	%eax, %edx
	imull	$100, %edx, %eax
	subl	%eax, %ebx
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	movl	%edx, %esi
	movl	%ebx, %edx
	callq	errprintf_nomem
.LBB4_3:                                # %if.end
	movl	$.L.str.4, %edi
	xorl	%eax, %eax
	popq	%rbx
	jmp	errprintf_nomem         # TAILCALL
.LBB4_4:                                # %if.end.7
	popq	%rbx
	retq
.Lfunc_end4:
	.size	eprintf_program_ident, .Lfunc_end4-eprintf_program_ident
	.cfi_endproc

	.globl	lprintf_file_only
	.align	16, 0x90
	.type	lprintf_file_only,@function
lprintf_file_only:                      # @lprintf_file_only
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$.L.str.5, %edi
	xorl	%eax, %eax
	jmp	errprintf_nomem         # TAILCALL
.Lfunc_end5:
	.size	lprintf_file_only, .Lfunc_end5-lprintf_file_only
	.cfi_endproc

	.globl	emprintf_program_ident
	.align	16, 0x90
	.type	emprintf_program_ident,@function
emprintf_program_ident:                 # @emprintf_program_ident
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbx, -16
	movq	%rdx, %rbx
	movq	%rsi, %rcx
	testq	%rcx, %rcx
	je	.LBB6_4
# BB#1:                                 # %if.then
	movl	$.L.str.1, %eax
	movl	$.L.str.2, %esi
	testq	%rbx, %rbx
	cmovneq	%rax, %rsi
	xorl	%eax, %eax
	movq	%rcx, %rdx
	callq	errprintf
	testq	%rbx, %rbx
	je	.LBB6_3
# BB#2:                                 # %if.then.3
	movabsq	$-6640827866535438581, %rcx # imm = 0xA3D70A3D70A3D70B
	movq	%rbx, %rax
	imulq	%rcx
	addq	%rbx, %rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	shrq	$6, %rdx
	addl	%eax, %edx
	imull	$100, %edx, %eax
	subl	%eax, %ebx
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	movl	%ebx, %ecx
	callq	errprintf
.LBB6_3:                                # %if.end
	movl	$.L.str.4, %esi
	xorl	%eax, %eax
	popq	%rbx
	jmp	errprintf               # TAILCALL
.LBB6_4:                                # %if.end.7
	popq	%rbx
	retq
.Lfunc_end6:
	.size	emprintf_program_ident, .Lfunc_end6-emprintf_program_ident
	.cfi_endproc

	.globl	minimal_alloc_bytes
	.align	16, 0x90
	.type	minimal_alloc_bytes,@function
minimal_alloc_bytes:                    # @minimal_alloc_bytes
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, %edi
	jmp	malloc                  # TAILCALL
.Lfunc_end7:
	.size	minimal_alloc_bytes, .Lfunc_end7-minimal_alloc_bytes
	.cfi_endproc

	.globl	minimal_alloc_byte_array
	.align	16, 0x90
	.type	minimal_alloc_byte_array,@function
minimal_alloc_byte_array:               # @minimal_alloc_byte_array
	.cfi_startproc
# BB#0:                                 # %entry
	imull	%edx, %esi
	movq	%rsi, %rdi
	jmp	malloc                  # TAILCALL
.Lfunc_end8:
	.size	minimal_alloc_byte_array, .Lfunc_end8-minimal_alloc_byte_array
	.cfi_endproc

	.globl	minimal_alloc_struct
	.align	16, 0x90
	.type	minimal_alloc_struct,@function
minimal_alloc_struct:                   # @minimal_alloc_struct
	.cfi_startproc
# BB#0:                                 # %entry
	movl	(%rsi), %edi
	jmp	malloc                  # TAILCALL
.Lfunc_end9:
	.size	minimal_alloc_struct, .Lfunc_end9-minimal_alloc_struct
	.cfi_endproc

	.globl	minimal_free_object
	.align	16, 0x90
	.type	minimal_free_object,@function
minimal_free_object:                    # @minimal_free_object
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	jmp	free                    # TAILCALL
.Lfunc_end10:
	.size	minimal_free_object, .Lfunc_end10-minimal_free_object
	.cfi_endproc

	.globl	minimal_free_string
	.align	16, 0x90
	.type	minimal_free_string,@function
minimal_free_string:                    # @minimal_free_string
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	jmp	free                    # TAILCALL
.Lfunc_end11:
	.size	minimal_free_string, .Lfunc_end11-minimal_free_string
	.cfi_endproc

	.globl	basic_enum_ptrs
	.align	16, 0x90
	.type	basic_enum_ptrs,@function
basic_enum_ptrs:                        # @basic_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp13:
	.cfi_def_cfa_offset 16
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$1, %edi
	callq	exit
.Lfunc_end12:
	.size	basic_enum_ptrs, .Lfunc_end12-basic_enum_ptrs
	.cfi_endproc

	.globl	basic_reloc_ptrs
	.align	16, 0x90
	.type	basic_reloc_ptrs,@function
basic_reloc_ptrs:                       # @basic_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp14:
	.cfi_def_cfa_offset 16
	movl	$.L.str.7, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$1, %edi
	callq	exit
.Lfunc_end13:
	.size	basic_reloc_ptrs, .Lfunc_end13-basic_reloc_ptrs
	.cfi_endproc

	.globl	put_uint32
	.align	16, 0x90
	.type	put_uint32,@function
put_uint32:                             # @put_uint32
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbx, -16
	movl	%esi, %ebx
	movzbl	%bl, %edx
	movzbl	%bh, %ecx  # NOREX
	movl	%ebx, %eax
	shrl	$16, %eax
	movzbl	%al, %r8d
	shrl	$24, %ebx
	movl	$.L.str.8, %esi
	xorl	%eax, %eax
	movl	%ebx, %r9d
	popq	%rbx
	jmp	fprintf                 # TAILCALL
.Lfunc_end14:
	.size	put_uint32, .Lfunc_end14-put_uint32
	.cfi_endproc

	.globl	put_bytes_padded
	.align	16, 0x90
	.type	put_bytes_padded,@function
put_bytes_padded:                       # @put_bytes_padded
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
	pushq	%rax
.Ltmp23:
	.cfi_def_cfa_offset 64
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
	movl	%edx, %r13d
	movq	%rsi, %rbx
	movq	%rdi, %r14
	xorl	%edx, %edx
	movl	%r13d, %ebp
	shrl	$2, %ebp
	movl	$0, %ecx
	je	.LBB15_6
# BB#1:                                 # %for.body.lr.ph
	leal	(,%rbp,4), %eax
	movl	%eax, 4(%rsp)           # 4-byte Spill
	movl	$3, %r12d
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB15_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leal	-3(%r12), %eax
	cltq
	leal	-2(%r12), %ecx
	movslq	%ecx, %rcx
	leal	-1(%r12), %edx
	movslq	%edx, %rdx
	movslq	%r12d, %rsi
	movzbl	(%rbx,%rsi), %esi
	shll	$24, %esi
	movzbl	(%rbx,%rdx), %edi
	shll	$16, %edi
	movzbl	(%rbx,%rcx), %ecx
	shll	$8, %ecx
	movzbl	(%rbx,%rax), %edx
	orl	%ecx, %edx
	orl	%edi, %edx
	orl	%esi, %edx
	movl	$.L.str.9, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	%r15d, %eax
	andl	$7, %eax
	cmpl	$7, %eax
	jne	.LBB15_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB15_2 Depth=1
	movl	$.L.str.10, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
.LBB15_4:                               # %for.inc
                                        #   in Loop: Header=BB15_2 Depth=1
	incl	%r15d
	addl	$4, %r12d
	cmpl	%r15d, %ebp
	jne	.LBB15_2
# BB#5:
	movl	4(%rsp), %ecx           # 4-byte Reload
	xorl	%edx, %edx
.LBB15_6:                               # %for.end
	subl	%ecx, %r13d
	cmpl	$1, %r13d
	je	.LBB15_7
# BB#8:                                 # %for.end
	cmpl	$2, %r13d
	je	.LBB15_11
# BB#9:                                 # %for.end
	cmpl	$3, %r13d
	jne	.LBB15_13
# BB#10:                                # %sw.bb
	movl	%ecx, %eax
	orl	$2, %eax
	cltq
	movb	(%rbx,%rax), %dl
.LBB15_11:                              # %sw.bb.22
	movl	%ecx, %eax
	orl	$1, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	shll	$8, %eax
	jmp	.LBB15_12
.LBB15_7:
	xorl	%eax, %eax
.LBB15_12:                              # %sw.bb.28
	movslq	%ecx, %rcx
	movzbl	%dl, %esi
	shll	$16, %esi
	orl	%eax, %esi
	movzbl	(%rbx,%rcx), %edx
	orl	%esi, %edx
	movl	$.L.str.9, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
.LBB15_13:                              # %sw.epilog
	movl	$.L.str.10, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	fprintf                 # TAILCALL
.Lfunc_end15:
	.size	put_bytes_padded, .Lfunc_end15-put_bytes_padded
	.cfi_endproc

	.globl	inode_clear
	.align	16, 0x90
	.type	inode_clear,@function
inode_clear:                            # @inode_clear
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp30:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp31:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 32
.Ltmp33:
	.cfi_offset %rbx, -32
.Ltmp34:
	.cfi_offset %r14, -24
.Ltmp35:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	testq	%r14, %r14
	je	.LBB16_11
# BB#1:                                 # %if.then
	movq	32(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB16_10
# BB#2:                                 # %for.cond.preheader
	movq	(%r14), %r15
	addq	$16383, %r15            # imm = 0x3FFF
	shrq	$14, %r15
	testl	%r15d, %r15d
	jle	.LBB16_9
# BB#3:                                 # %for.body.preheader
	xorl	%ebx, %ebx
	jmp	.LBB16_4
	.align	16, 0x90
.LBB16_7:                               # %for.inc.for.body_crit_edge
                                        #   in Loop: Header=BB16_4 Depth=1
	movq	32(%r14), %rdi
.LBB16_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdi,%rbx,8), %rdi
	testq	%rdi, %rdi
	je	.LBB16_6
# BB#5:                                 # %if.then.6
                                        #   in Loop: Header=BB16_4 Depth=1
	callq	free
.LBB16_6:                               # %for.inc
                                        #   in Loop: Header=BB16_4 Depth=1
	incq	%rbx
	cmpl	%ebx, %r15d
	jne	.LBB16_7
# BB#8:                                 # %for.cond.for.end_crit_edge
	movq	32(%r14), %rdi
.LBB16_9:                               # %for.end
	callq	free
.LBB16_10:                              # %if.end.11
	movq	24(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB16_11
# BB#12:                                # %if.then.13
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	free                    # TAILCALL
.LBB16_11:                              # %if.end.16
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end16:
	.size	inode_clear, .Lfunc_end16-inode_clear
	.cfi_endproc

	.globl	inode_write
	.align	16, 0x90
	.type	inode_write,@function
inode_write:                            # @inode_write
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
	pushq	%r13
.Ltmp39:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp40:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp41:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp42:
	.cfi_def_cfa_offset 80
.Ltmp43:
	.cfi_offset %rbx, -56
.Ltmp44:
	.cfi_offset %r12, -48
.Ltmp45:
	.cfi_offset %r13, -40
.Ltmp46:
	.cfi_offset %r14, -32
.Ltmp47:
	.cfi_offset %r15, -24
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%r8, (%rsp)             # 8-byte Spill
	movl	%ecx, %ebx
	movl	%edx, 12(%rsp)          # 4-byte Spill
	movq	%rsi, %r13
	movq	%rdi, %r12
	movq	8(%r13), %r15
	movq	16(%r13), %rdi
	addq	$16383, %r15            # imm = 0x3FFF
	shrq	$14, %r15
	callq	strlen
	movq	%rax, %r14
	leal	1(%r14), %eax
	movl	%eax, 16(%rsp)          # 4-byte Spill
	xorl	%ebp, %ebp
	movl	$.L.str.11, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	fprintf
	movl	$-4, %ebx
	addl	$-2147483644, %ebx      # imm = 0xFFFFFFFF80000004
	movl	12(%rsp), %eax          # 4-byte Reload
	testl	%eax, %eax
	cmovel	%eax, %ebx
	orl	8(%r13), %ebx
	movzbl	%bl, %edx
	movzbl	%bh, %ecx  # NOREX
	movl	%ebx, %eax
	shrl	$16, %eax
	movzbl	%al, %r8d
	shrl	$24, %ebx
	movl	$.L.str.8, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	%ebx, %r9d
	callq	fprintf
	movl	$.L.str.12, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	leaq	(,%r15,8), %rax
	addl	$4, %r14d
	andl	$-4, %r14d
	leal	4(%r14,%rax), %ebx
	movq	(%rsp), %r14            # 8-byte Reload
	addl	%ebx, (%r14)
	testl	%r15d, %r15d
	jle	.LBB17_7
# BB#1:                                 # %for.body.lr.ph
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB17_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%r13), %rax
	movl	%ebx, %r10d
	movl	(%rax,%rbp,8), %ebx
	movzbl	%bl, %edx
	movzbl	%bh, %ecx  # NOREX
	movl	%ebx, %eax
	shrl	$16, %eax
	movzbl	%al, %r8d
	shrl	$24, %ebx
	movl	$.L.str.8, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	%ebx, %r9d
	movl	%r10d, %ebx
	callq	fprintf
	movzbl	%bl, %edx
	movzbl	%bh, %ecx  # NOREX
	movl	%ebx, %eax
	shrl	$16, %eax
	movzbl	%al, %r8d
	movl	%ebx, %r9d
	shrl	$24, %r9d
	movl	$.L.str.8, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movq	24(%r13), %rax
	movl	(%rax,%rbp,8), %eax
	addl	$3, %eax
	movl	$4294967292, %ecx       # imm = 0xFFFFFFFC
	andl	%eax, %ecx
	addl	%ecx, %ebx
	movl	$.L.str.13, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	incq	%rbp
	cmpl	%ebp, %r15d
	jne	.LBB17_2
# BB#3:                                 # %for.end
	movq	16(%r13), %rdx
	xorl	%ebp, %ebp
	movl	$.L.str.14, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movq	16(%r13), %rsi
	movq	%r12, %rdi
	movl	16(%rsp), %edx          # 4-byte Reload
	callq	put_bytes_padded
	testl	%r15d, %r15d
	jle	.LBB17_8
# BB#4:                                 # %for.body.29.lr.ph
	movq	24(%r13), %rax
	xorl	%ebx, %ebx
	movq	%r15, 16(%rsp)          # 8-byte Spill
	movl	$4294967292, %ecx       # imm = 0xFFFFFFFC
	leaq	3(%rcx), %r15
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB17_5:                               # %for.body.29
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%r13), %rcx
	movq	(%rcx,%rbx,8), %rsi
	movl	(%rax,%rbx,8), %edx
	movq	%r12, %rdi
	callq	put_bytes_padded
	movq	24(%r13), %rax
	movq	(%rax,%rbx,8), %rcx
	andq	%r15, %rbp
	leaq	(%rbp,%rcx), %rbp
	leal	3(%rcx), %ecx
	movl	$4294967292, %edx       # imm = 0xFFFFFFFC
	andl	%ecx, %edx
	addl	%edx, (%r14)
	incq	%rbx
	movq	16(%rsp), %rcx          # 8-byte Reload
	cmpl	%ebx, %ecx
	jne	.LBB17_5
# BB#6:                                 # %for.cond.26.for.end.52_crit_edge
	movq	16(%rsp), %r15          # 8-byte Reload
	jmp	.LBB17_8
.LBB17_7:                               # %for.end.52.critedge
	movq	16(%r13), %rdx
	movl	$.L.str.14, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movq	16(%r13), %rsi
	movq	%r12, %rdi
	movl	16(%rsp), %edx          # 4-byte Reload
	callq	put_bytes_padded
.LBB17_8:                               # %for.end.52
	movl	$.L.str.15, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movq	8(%r13), %rdx
	movq	16(%r13), %rsi
	movl	$.L.str.16, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.17, %edi
	xorl	%eax, %eax
	movl	%r15d, %esi
	callq	printf
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	je	.LBB17_10
# BB#9:                                 # %if.then
	movl	$.L.str.18, %edi
	xorl	%eax, %eax
	movl	%ebp, %esi
	callq	printf
.LBB17_10:                              # %if.end
	movl	$.L.str.19, %edi
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	printf                  # TAILCALL
.Lfunc_end17:
	.size	inode_write, .Lfunc_end17-inode_write
	.cfi_endproc

	.globl	prefix_add
	.align	16, 0x90
	.type	prefix_add,@function
prefix_add:                             # @prefix_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp49:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp50:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp51:
	.cfi_def_cfa_offset 32
.Ltmp52:
	.cfi_offset %rbx, -24
.Ltmp53:
	.cfi_offset %r14, -16
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %rax
	movb	$0, (%rbx)
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	strcat
	movq	%rbx, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	strcat                  # TAILCALL
.Lfunc_end18:
	.size	prefix_add, .Lfunc_end18-prefix_add
	.cfi_endproc

	.globl	process_path
	.align	16, 0x90
	.type	process_path,@function
process_path:                           # @process_path
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
	pushq	%r13
.Ltmp57:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp58:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp59:
	.cfi_def_cfa_offset 56
	subq	$248, %rsp
.Ltmp60:
	.cfi_def_cfa_offset 304
.Ltmp61:
	.cfi_offset %rbx, -56
.Ltmp62:
	.cfi_offset %r12, -48
.Ltmp63:
	.cfi_offset %r13, -40
.Ltmp64:
	.cfi_offset %r14, -32
.Ltmp65:
	.cfi_offset %r15, -24
.Ltmp66:
	.cfi_offset %rbp, -16
	movl	%r9d, 108(%rsp)         # 4-byte Spill
	movl	%r8d, 104(%rsp)         # 4-byte Spill
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movq	%rsi, 80(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	movq	304(%rsp), %r13
	movl	(%r13), %r12d
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 208(%rsp)
	movaps	%xmm0, 192(%rsp)
	movaps	%xmm0, 176(%rsp)
	movaps	%xmm0, 160(%rsp)
	movaps	%xmm0, 144(%rsp)
	movaps	%xmm0, 128(%rsp)
	movq	$0, 224(%rsp)
	movl	$1024, %edi             # imm = 0x400
	callq	malloc
	movq	%rax, %rbp
	movl	$1024, %edi             # imm = 0x400
	callq	malloc
	movq	%rax, %r14
	movq	%r14, 56(%rsp)          # 8-byte Spill
	movl	$1024, %edi             # imm = 0x400
	callq	malloc
	movq	%rax, %r15
	movl	$16384, %edi            # imm = 0x4000
	callq	malloc
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movl	$16412, %edi            # imm = 0x401C
	callq	malloc
	testq	%r15, %r15
	je	.LBB19_5
# BB#1:                                 # %entry
	testq	%r14, %r14
	je	.LBB19_5
# BB#2:                                 # %entry
	testq	%rbp, %rbp
	je	.LBB19_5
# BB#3:                                 # %entry
	cmpq	$0, 120(%rsp)           # 8-byte Folded Reload
	je	.LBB19_5
# BB#4:                                 # %entry
	testq	%rax, %rax
	je	.LBB19_5
# BB#7:                                 # %if.end
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movl	%r12d, 28(%rsp)         # 4-byte Spill
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movb	$0, (%rbp)
	movq	%rbp, %rdi
	movq	80(%rsp), %rsi          # 8-byte Reload
	callq	strcat
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	callq	strcat
	movq	%r15, %rbx
	movq	%rbx, 64(%rsp)          # 8-byte Spill
	movb	$0, (%rbx)
	movq	%rbx, %rdi
	movq	72(%rsp), %r15          # 8-byte Reload
	movq	%r15, %rsi
	callq	strcat
	movl	$.L.str.21, %esi
	movq	%rbx, %rdi
	callq	strcat
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	strcpy
	movq	%rbp, %rdi
	callq	strlen
	movl	$minimal_memory, %edx
	movq	%rbp, %rdi
	movl	%eax, %esi
	callq	gp_enumerate_files_init
	movq	%rax, %r12
	movq	%r12, 88(%rsp)          # 8-byte Spill
	testq	%r12, %r12
	je	.LBB19_51
# BB#8:                                 # %while.cond.preheader
	movl	$1024, %edx             # imm = 0x400
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	gp_enumerate_files_next
	testl	%eax, %eax
	js	.LBB19_18
# BB#9:
	movl	$1, %ecx
	movd	%ecx, %xmm0
	movaps	%xmm0, 32(%rsp)         # 16-byte Spill
	.align	16, 0x90
.LBB19_10:                              # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_11 Depth 2
                                        #     Child Loop BB19_26 Depth 2
                                        #     Child Loop BB19_42 Depth 2
	movq	96(%rsp), %rcx          # 8-byte Reload
	testq	%rcx, %rcx
	cltq
	movb	$0, (%r14,%rax)
	movq	%rcx, %rbx
	je	.LBB19_14
	.align	16, 0x90
.LBB19_11:                              # %for.body
                                        #   Parent Loop BB19_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r14, %rdi
	callq	strlen
	movq	%rax, %rbp
	movq	8(%rbx), %r15
	movq	%r15, %rdi
	callq	strlen
	cmpq	%rax, %rbp
	jb	.LBB19_13
# BB#12:                                # %if.then.31
                                        #   in Loop: Header=BB19_11 Depth=2
	leaq	(%rbp,%r14), %rsi
	subq	%rax, %rsi
	movq	%r15, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB19_17
.LBB19_13:                              # %for.inc
                                        #   in Loop: Header=BB19_11 Depth=2
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB19_11
.LBB19_14:                              # %if.end.44.critedge
                                        #   in Loop: Header=BB19_10 Depth=1
	movl	$1, %edi
	movl	$40, %esi
	callq	calloc
	movq	%rax, %r12
	movl	$.L.str.23, %esi
	movq	%r14, %rdi
	callq	fopen64
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB19_15
# BB#21:                                # %if.end.51
                                        #   in Loop: Header=BB19_10 Depth=1
	movq	72(%rsp), %rdi          # 8-byte Reload
	callq	strlen
	movq	64(%rsp), %rbp          # 8-byte Reload
	movb	$0, (%rbp,%rax)
	movq	80(%rsp), %rdi          # 8-byte Reload
	callq	strlen
	leaq	(%rax,%r14), %rsi
	movq	%rbp, %rdi
	callq	strcat
	movq	%rbp, 16(%r12)
	xorl	%esi, %esi
	movl	$2, %edx
	movq	%rbx, %rdi
	callq	fseek
	movq	%rbx, %rdi
	callq	ftell
	movq	%rax, %rbp
	movq	%rbp, 8(%r12)
	movq	%rbp, (%r12)
	shlq	$18, %rbp
	movl	$4294705152, %eax       # imm = 0xFFFC0000
	addq	%rax, %rbp
	movabsq	$-4294967296, %rax      # imm = 0xFFFFFFFF00000000
	andq	%rax, %rbp
	movabsq	$4294967296, %rax       # imm = 0x100000000
	addq	%rax, %rbp
	sarq	$32, %rbp
	movl	$8, %esi
	movq	%rbp, %rdi
	callq	calloc
	movq	%rax, 24(%r12)
	movl	$8, %esi
	movq	%rbp, %rdi
	callq	calloc
	movq	%rax, 32(%r12)
	movq	%rbx, %rdi
	callq	fclose
	movl	$.L.str.23, %esi
	movq	%r14, %rdi
	callq	fopen64
	movq	%rax, %r14
	cmpl	$0, 108(%rsp)           # 4-byte Folded Reload
	je	.LBB19_25
# BB#22:                                # %if.then.70
                                        #   in Loop: Header=BB19_10 Depth=1
	movl	$0, 128(%rsp)
	movl	$80, %edi
	callq	malloc
	movq	%rax, 160(%rsp)
	movl	$80, %edi
	callq	malloc
	movq	%rax, 168(%rsp)
	testq	%rax, %rax
	je	.LBB19_52
# BB#23:                                # %if.then.70
                                        #   in Loop: Header=BB19_10 Depth=1
	movq	160(%rsp), %rax
	testq	%rax, %rax
	je	.LBB19_52
# BB#24:                                # %pscompact_start.exit
                                        #   in Loop: Header=BB19_10 Depth=1
	movl	$80, 136(%rsp)
	movl	$80, 148(%rsp)
	movl	$0, 132(%rsp)
	movl	$0, 156(%rsp)
	movq	$fgetc, 176(%rsp)
	movq	$ungetc, 184(%rsp)
	movq	$feof, 192(%rsp)
	movq	%r14, 200(%rsp)
	movaps	32(%rsp), %xmm0         # 16-byte Reload
	movaps	%xmm0, 208(%rsp)
	movq	$0, 224(%rsp)
.LBB19_25:                              # %while.cond.72.preheader
                                        #   in Loop: Header=BB19_10 Depth=1
	movq	%r14, %rdi
	callq	feof
	testl	%eax, %eax
	movl	$0, %r15d
	movl	$0, %r13d
	jne	.LBB19_36
	.align	16, 0x90
.LBB19_26:                              # %while.body.75
                                        #   Parent Loop BB19_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, 108(%rsp)           # 4-byte Folded Reload
	je	.LBB19_28
# BB#27:                                # %if.then.77
                                        #   in Loop: Header=BB19_26 Depth=2
	leaq	128(%rsp), %rdi
	movq	120(%rsp), %rsi         # 8-byte Reload
	callq	pscompact_getcompactedblock
	jmp	.LBB19_29
	.align	16, 0x90
.LBB19_28:                              # %if.else
                                        #   in Loop: Header=BB19_26 Depth=2
	movl	$1, %esi
	movl	$16384, %edx            # imm = 0x4000
	movq	120(%rsp), %rdi         # 8-byte Reload
	movq	%r14, %rcx
	callq	fread
.LBB19_29:                              # %if.end.80
                                        #   in Loop: Header=BB19_26 Depth=2
	movq	%rax, %rbp
	leaq	(%r13,%rbp), %r13
	testq	%rbp, %rbp
	movq	112(%rsp), %rax         # 8-byte Reload
	je	.LBB19_36
# BB#30:                                # %if.end.84
                                        #   in Loop: Header=BB19_26 Depth=2
	cmpl	$0, 104(%rsp)           # 4-byte Folded Reload
	movq	$16412, 240(%rsp)       # imm = 0x401C
	movq	%rax, %rbx
	movq	%rbx, %rdi
	je	.LBB19_34
# BB#31:                                # %if.then.86
                                        #   in Loop: Header=BB19_26 Depth=2
	leaq	240(%rsp), %rsi
	movq	120(%rsp), %rdx         # 8-byte Reload
	movq	%rbp, %rcx
	callq	compress
	testl	%eax, %eax
	jne	.LBB19_33
# BB#32:                                # %if.then.86.if.end.95_crit_edge
                                        #   in Loop: Header=BB19_26 Depth=2
	movq	240(%rsp), %rbp
	jmp	.LBB19_35
	.align	16, 0x90
.LBB19_34:                              # %if.else.93
                                        #   in Loop: Header=BB19_26 Depth=2
	movq	120(%rsp), %rsi         # 8-byte Reload
	movq	%rbp, %rdx
	callq	memcpy
	movq	%rbp, 240(%rsp)
.LBB19_35:                              # %if.end.95
                                        #   in Loop: Header=BB19_26 Depth=2
	movq	%rbx, 112(%rsp)         # 8-byte Spill
	movq	24(%r12), %rax
	movq	%rbp, (%rax,%r15)
	movq	240(%rsp), %rdi
	callq	malloc
	movq	32(%r12), %rcx
	movq	%rax, (%rcx,%r15)
	movq	32(%r12), %rax
	movq	(%rax,%r15), %rdi
	movq	240(%rsp), %rdx
	movq	%rbx, %rsi
	callq	memcpy
	movq	%r14, %rdi
	callq	feof
	addq	$8, %r15
	testl	%eax, %eax
	je	.LBB19_26
	.align	16, 0x90
.LBB19_36:                              # %while.end
                                        #   in Loop: Header=BB19_10 Depth=1
	movq	%r14, %rdi
	callq	fclose
	cmpl	$0, 108(%rsp)           # 4-byte Folded Reload
	je	.LBB19_38
# BB#37:                                # %if.end.111.thread
                                        #   in Loop: Header=BB19_10 Depth=1
	movq	160(%rsp), %rdi
	callq	free
	movq	168(%rsp), %rdi
	callq	free
	movq	%r13, 8(%r12)
	movq	304(%rsp), %r13
	movl	(%r13), %ecx
	movq	320(%rsp), %rdi
	movq	%r12, %rsi
	movl	104(%rsp), %edx         # 4-byte Reload
	movq	312(%rsp), %r8
	callq	inode_write
	movq	56(%rsp), %r14          # 8-byte Reload
	jmp	.LBB19_39
	.align	16, 0x90
.LBB19_15:                              # %if.then.49
                                        #   in Loop: Header=BB19_10 Depth=1
	movl	$.L.str.24, %edi
	xorl	%eax, %eax
	movq	%r14, %rsi
	callq	printf
	jmp	.LBB19_16
.LBB19_38:                              # %if.end.111
                                        #   in Loop: Header=BB19_10 Depth=1
	movq	304(%rsp), %r13
	movl	(%r13), %ecx
	movq	320(%rsp), %rdi
	movq	%r12, %rsi
	movl	104(%rsp), %edx         # 4-byte Reload
	movq	312(%rsp), %r8
	callq	inode_write
	testq	%r12, %r12
	movq	56(%rsp), %r14          # 8-byte Reload
	je	.LBB19_50
.LBB19_39:                              # %if.then.i.98
                                        #   in Loop: Header=BB19_10 Depth=1
	movq	32(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB19_48
# BB#40:                                # %for.cond.preheader.i
                                        #   in Loop: Header=BB19_10 Depth=1
	movq	(%r12), %rbx
	addq	$16383, %rbx            # imm = 0x3FFF
	shrq	$14, %rbx
	testl	%ebx, %ebx
	jle	.LBB19_47
# BB#41:                                # %for.body.i.preheader
                                        #   in Loop: Header=BB19_10 Depth=1
	xorl	%ebp, %ebp
	jmp	.LBB19_42
	.align	16, 0x90
.LBB19_45:                              # %for.inc.for.body_crit_edge.i
                                        #   in Loop: Header=BB19_42 Depth=2
	movq	32(%r12), %rdi
.LBB19_42:                              # %for.body.i
                                        #   Parent Loop BB19_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi,%rbp,8), %rdi
	testq	%rdi, %rdi
	je	.LBB19_44
# BB#43:                                # %if.then.6.i
                                        #   in Loop: Header=BB19_42 Depth=2
	callq	free
.LBB19_44:                              # %for.inc.i
                                        #   in Loop: Header=BB19_42 Depth=2
	incq	%rbp
	cmpl	%ebp, %ebx
	jne	.LBB19_45
# BB#46:                                # %for.cond.for.end_crit_edge.i
                                        #   in Loop: Header=BB19_10 Depth=1
	movq	32(%r12), %rdi
.LBB19_47:                              # %for.end.i
                                        #   in Loop: Header=BB19_10 Depth=1
	callq	free
.LBB19_48:                              # %if.end.11.i
                                        #   in Loop: Header=BB19_10 Depth=1
	movq	24(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB19_50
# BB#49:                                # %if.then.13.i
                                        #   in Loop: Header=BB19_10 Depth=1
	callq	free
.LBB19_50:                              # %inode_clear.exit
                                        #   in Loop: Header=BB19_10 Depth=1
	movq	%r12, %rdi
	callq	free
	incl	(%r13)
.LBB19_16:                              # %while.cond.backedge
                                        #   in Loop: Header=BB19_10 Depth=1
	movq	88(%rsp), %r12          # 8-byte Reload
.LBB19_17:                              # %while.cond.backedge
                                        #   in Loop: Header=BB19_10 Depth=1
	movl	$1024, %edx             # imm = 0x400
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	gp_enumerate_files_next
	testl	%eax, %eax
	jns	.LBB19_10
.LBB19_18:                              # %while.end.113
	movq	112(%rsp), %rdi         # 8-byte Reload
	callq	free
	movq	120(%rsp), %rdi         # 8-byte Reload
	callq	free
	movq	%r14, %rdi
	callq	free
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	free
	movl	28(%rsp), %eax          # 4-byte Reload
	cmpl	(%r13), %eax
	jne	.LBB19_20
# BB#19:                                # %if.then.116
	movl	$.L.str.26, %edi
	xorl	%eax, %eax
	movq	80(%rsp), %rsi          # 8-byte Reload
	movq	8(%rsp), %rdx           # 8-byte Reload
	callq	printf
.LBB19_20:                              # %if.end.118
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB19_33:                              # %if.then.90
	movl	$.L.str.25, %edi
.LBB19_6:                               # %if.then
	xorl	%eax, %eax
	callq	printf
	movl	$1, %edi
	callq	exit
.LBB19_52:                              # %if.then.i
	movq	stderr(%rip), %rdi
	movl	$.L.str.71, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$1, %edi
	callq	exit
.LBB19_5:                               # %if.then
	movl	$.L.str.20, %edi
	jmp	.LBB19_6
.LBB19_51:                              # %if.then.18
	movl	$.L.str.22, %edi
	jmp	.LBB19_6
.Lfunc_end19:
	.size	process_path, .Lfunc_end19-process_path
	.cfi_endproc

	.align	16, 0x90
	.type	pscompact_getcompactedblock,@function
pscompact_getcompactedblock:            # @pscompact_getcompactedblock
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
	subq	$24, %rsp
.Ltmp73:
	.cfi_def_cfa_offset 80
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
	movq	%rsi, %r14
	movq	%r14, 16(%rsp)          # 8-byte Spill
	movq	%rdi, %r13
	movq	%r14, %r12
	jmp	.LBB20_1
	.align	16, 0x90
.LBB20_319:                             # %land.rhs
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	72(%r13), %rdi
	callq	*64(%r13)
	testl	%eax, %eax
	movq	%rbp, %rax
	je	.LBB20_1
	jmp	.LBB20_320
.LBB20_101:                             # %if.else.274
                                        #   in Loop: Header=BB20_1 Depth=1
	movb	$-123, (%rcx)
	movq	40(%r13), %rcx
	movb	%al, 1(%rcx)
	movq	40(%r13), %rcx
	movb	%ah, 2(%rcx)  # NOREX
	movl	%eax, %ecx
	shrl	$16, %ecx
	movq	40(%r13), %rdx
	movb	%cl, 3(%rdx)
	shrl	$24, %eax
	movq	40(%r13), %rcx
	movb	%al, 4(%rcx)
	movl	$0, 12(%r13)
	movl	$5, 16(%r13)
	jmp	.LBB20_145
.LBB20_39:                              # %if.then.154
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	72(%r13), %rdi
	callq	*48(%r13)
	movl	%eax, %ebp
	movq	72(%r13), %rdi
	callq	*48(%r13)
	movq	40(%r13), %rcx
	movb	$-112, (%rcx)
	movq	40(%r13), %rcx
	movb	%bpl, 1(%rcx)
	movq	40(%r13), %rcx
	movb	%al, 2(%rcx)
	shll	$8, %eax
	movl	$3, 16(%r13)
	movl	$0, 12(%r13)
	addl	%ebp, %eax
	movl	%eax, 24(%r13)
.LBB20_35:                              # %do.cond
                                        #   in Loop: Header=BB20_1 Depth=1
	setne	%al
	movzbl	%al, %eax
	orl	$4, %eax
	movl	%eax, (%r13)
	jmp	.LBB20_318
.LBB20_280:                             # %sw.bb.1222
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$126, %ebp
	je	.LBB20_281
# BB#308:                               # %if.else.1261
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$33, %ebp
	jl	.LBB20_318
# BB#309:                               # %if.else.1265
                                        #   in Loop: Header=BB20_1 Depth=1
	leal	-48(%rbp), %eax
	cmpl	$10, %eax
	jb	.LBB20_311
# BB#310:                               # %if.else.1265
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	%ebp, %eax
	andl	$-33, %eax
	addl	$-65, %eax
	cmpl	$25, %eax
	ja	.LBB20_316
.LBB20_311:                             # %if.then.1283
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	4(%r13), %ecx
	cmpl	8(%r13), %ecx
	jne	.LBB20_312
# BB#313:                               # %if.then.i
                                        #   in Loop: Header=BB20_1 Depth=1
	movslq	%ecx, %rsi
	addl	%ecx, %ecx
	movl	%ecx, 8(%r13)
	movq	32(%r13), %rdi
	shlq	$2, %rsi
	callq	realloc
	movq	%rax, 32(%r13)
	testq	%rax, %rax
	je	.LBB20_260
# BB#314:                               # %if.then.if.end.10_crit_edge.i
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	4(%r13), %ecx
	jmp	.LBB20_315
.LBB20_312:                             # %entry.if.end.10_crit_edge.i
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	32(%r13), %rax
.LBB20_315:                             # %pscompact_buffer.exit
                                        #   in Loop: Header=BB20_1 Depth=1
	leal	1(%rcx), %edx
	movl	%edx, 4(%r13)
	movslq	%ecx, %rcx
	movb	%bpl, (%rax,%rcx)
	jmp	.LBB20_318
	.align	16, 0x90
.LBB20_1:                               # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_285 Depth 2
                                        #     Child Loop BB20_80 Depth 2
                                        #     Child Loop BB20_72 Depth 2
                                        #     Child Loop BB20_108 Depth 2
                                        #     Child Loop BB20_135 Depth 2
	movl	(%r13), %eax
	cmpq	$5, %rax
	ja	.LBB20_318
# BB#2:                                 # %do.body
                                        #   in Loop: Header=BB20_1 Depth=1
	jmpq	*.LJTI20_0(,%rax,8)
.LBB20_3:                               # %sw.bb
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	72(%r13), %rdi
	callq	*48(%r13)
	movl	%eax, %r15d
	cmpl	$32, %r15d
	jg	.LBB20_5
# BB#4:                                 # %if.then.3
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$0, 4(%r13)
	jne	.LBB20_57
	jmp	.LBB20_318
.LBB20_229:                             # %sw.bb.982
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	72(%r13), %rdi
	callq	*48(%r13)
	movl	%eax, %ebp
	cmpl	$13, %ebp
	je	.LBB20_231
# BB#230:                               # %sw.bb.982
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$10, %ebp
	jne	.LBB20_276
.LBB20_231:                             # %if.then.991
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	4(%r13), %ebp
	cmpl	$3, %ebp
	jl	.LBB20_317
# BB#232:                               # %land.lhs.true.995
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$.L.str.76, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	32(%r13), %r15
	cmpq	$2, %rcx
	ja	.LBB20_238
# BB#233:                               # %cond.true.1009
                                        #   in Loop: Header=BB20_1 Depth=1
	movzbl	(%r15), %eax
	addl	$-69, %eax
	testq	%rcx, %rcx
	je	.LBB20_239
# BB#234:                               # %cond.true.1009
                                        #   in Loop: Header=BB20_1 Depth=1
	testl	%eax, %eax
	jne	.LBB20_239
# BB#235:                               # %if.then.1024
                                        #   in Loop: Header=BB20_1 Depth=1
	movzbl	1(%r15), %eax
	addl	$-78, %eax
	cmpq	$2, %rcx
	jb	.LBB20_239
# BB#236:                               # %if.then.1024
                                        #   in Loop: Header=BB20_1 Depth=1
	testl	%eax, %eax
	jne	.LBB20_239
# BB#237:                               # %if.then.1034
                                        #   in Loop: Header=BB20_1 Depth=1
	movzbl	2(%r15), %eax
	addl	$-68, %eax
	jmp	.LBB20_239
.LBB20_189:                             # %sw.bb.861
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	72(%r13), %rdi
	callq	*48(%r13)
	movl	%eax, %ebp
	cmpl	$40, %ebp
	je	.LBB20_223
# BB#190:                               # %sw.bb.861
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$92, %ebp
	jne	.LBB20_191
# BB#206:                               # %if.then.897
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	72(%r13), %rdi
	callq	*48(%r13)
	movl	%eax, %r15d
	cmpl	$109, %r15d
	jg	.LBB20_211
# BB#207:                               # %if.then.897
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$10, %r15d
	je	.LBB20_318
# BB#208:                               # %if.then.897
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$8, %ebp
	cmpl	$98, %r15d
	je	.LBB20_224
# BB#209:                               # %if.then.897
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$102, %r15d
	jne	.LBB20_217
# BB#210:                               # %if.then.919
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$12, %ebp
	jmp	.LBB20_224
.LBB20_278:                             # %sw.bb.1222
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	72(%r13), %rdi
	callq	*48(%r13)
	movl	%eax, %ebp
	cmpl	$60, %ebp
	je	.LBB20_322
# BB#279:                               # %sw.bb.1222
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$62, %ebp
	jne	.LBB20_280
# BB#282:                               # %if.then.1237
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$0, 28(%r13)
	cmpl	$0, 84(%r13)
	je	.LBB20_303
# BB#283:                               # %if.then.1241
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	4(%r13), %edi
	testl	%edi, %edi
	movl	$1, %eax
	movl	$0, %esi
	jle	.LBB20_284
	.align	16, 0x90
.LBB20_285:                             # %while.body.i.313
                                        #   Parent Loop BB20_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	32(%r13), %rcx
	movsbl	-1(%rcx,%rax), %edx
	movb	%dl, %bl
	addb	$-48, %bl
	movzbl	%bl, %ebp
	cmpl	$9, %ebp
	ja	.LBB20_287
# BB#286:                               # %if.then.i.315
                                        #   in Loop: Header=BB20_285 Depth=2
	shll	$4, %edx
	addl	$-768, %edx             # imm = 0xFFFFFFFFFFFFFD00
	jmp	.LBB20_291
	.align	16, 0x90
.LBB20_287:                             # %if.else.i.316
                                        #   in Loop: Header=BB20_285 Depth=2
	movb	%dl, %bl
	addb	$-97, %bl
	movzbl	%bl, %ebp
	cmpl	$5, %ebp
	ja	.LBB20_289
# BB#288:                               # %if.then.26.i
                                        #   in Loop: Header=BB20_285 Depth=2
	shll	$4, %edx
	addl	$-1392, %edx            # imm = 0xFFFFFFFFFFFFFA90
	jmp	.LBB20_291
	.align	16, 0x90
.LBB20_289:                             # %if.else.33.i
                                        #   in Loop: Header=BB20_285 Depth=2
	movb	%dl, %bl
	addb	$-65, %bl
	movzbl	%bl, %ebp
	cmpl	$5, %ebp
	ja	.LBB20_323
# BB#290:                               # %if.then.47.i
                                        #   in Loop: Header=BB20_285 Depth=2
	shll	$4, %edx
	addl	$-880, %edx             # imm = 0xFFFFFFFFFFFFFC90
.LBB20_291:                             # %if.end.57.i
                                        #   in Loop: Header=BB20_285 Depth=2
	cmpl	%edi, %eax
	je	.LBB20_298
# BB#292:                               # %if.else.62.i
                                        #   in Loop: Header=BB20_285 Depth=2
	movsbl	(%rcx,%rax), %edi
	movb	%dil, %bl
	addb	$-48, %bl
	movzbl	%bl, %ebp
	cmpl	$9, %ebp
	ja	.LBB20_294
# BB#293:                               # %if.then.76.i
                                        #   in Loop: Header=BB20_285 Depth=2
	leal	-48(%rdx,%rdi), %edx
	jmp	.LBB20_298
	.align	16, 0x90
.LBB20_294:                             # %if.else.83.i
                                        #   in Loop: Header=BB20_285 Depth=2
	movb	%dil, %bl
	addb	$-97, %bl
	movzbl	%bl, %ebp
	cmpl	$5, %ebp
	ja	.LBB20_296
# BB#295:                               # %if.then.97.i
                                        #   in Loop: Header=BB20_285 Depth=2
	leal	-87(%rdx,%rdi), %edx
	jmp	.LBB20_298
.LBB20_296:                             # %if.else.105.i
                                        #   in Loop: Header=BB20_285 Depth=2
	movb	%dil, %bl
	addb	$-65, %bl
	movzbl	%bl, %ebp
	cmpl	$5, %ebp
	ja	.LBB20_323
# BB#297:                               # %if.then.119.i
                                        #   in Loop: Header=BB20_285 Depth=2
	leal	-55(%rdx,%rdi), %edx
	.align	16, 0x90
.LBB20_298:                             # %if.end.132.i
                                        #   in Loop: Header=BB20_285 Depth=2
	movb	%dl, (%rcx,%rsi)
	incq	%rsi
	movslq	4(%r13), %rdi
	leaq	2(%rax), %rcx
	incq	%rax
	cmpq	%rdi, %rax
	movq	%rcx, %rax
	jl	.LBB20_285
# BB#299:                               # %pscompact_hex2ascii.exit
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	%esi, 4(%r13)
	cmpl	$255, %esi
	jle	.LBB20_195
# BB#300:                               # %if.else.1247
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$65535, %esi            # imm = 0xFFFF
	jg	.LBB20_302
# BB#301:                               # %if.then.1251
                                        #   in Loop: Header=BB20_1 Depth=1
	sarl	$8, %esi
.LBB20_199:                             # %do.cond
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	%r13, %rdi
	callq	pscompact_bufferatstart
	movzbl	4(%r13), %esi
	movq	%r13, %rdi
	callq	pscompact_bufferatstart
	movl	$144, %esi
	jmp	.LBB20_196
.LBB20_149:                             # %sw.bb.618
                                        #   in Loop: Header=BB20_1 Depth=1
	movslq	12(%r13), %rcx
	leal	1(%rcx), %edx
	movl	%edx, 12(%r13)
	movq	40(%r13), %rax
	movb	(%rax,%rcx), %bl
	cmpl	$0, 88(%r13)
	jne	.LBB20_183
# BB#150:                               # %if.else.628
                                        #   in Loop: Header=BB20_1 Depth=1
	movsbl	%bl, %esi
	cmpl	$39, %esi
	jg	.LBB20_153
# BB#151:                               # %if.else.628
                                        #   in Loop: Header=BB20_1 Depth=1
	movb	%bl, %al
	addb	$-8, %al
	movzbl	%al, %esi
	cmpl	$5, %esi
	ja	.LBB20_176
# BB#152:                               # %if.else.628
                                        #   in Loop: Header=BB20_1 Depth=1
	jmpq	*.LJTI20_1(,%rsi,8)
.LBB20_164:                             # %if.then.663
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$0, 92(%r13)
	je	.LBB20_160
# BB#165:                               # %if.else.670
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$0, 92(%r13)
	movb	$98, %bl
	jmp	.LBB20_183
.LBB20_185:                             # %sw.bb.834
                                        #   in Loop: Header=BB20_1 Depth=1
	movslq	12(%r13), %rax
	cmpl	16(%r13), %eax
	jge	.LBB20_187
# BB#186:                               # %if.then.839
                                        #   in Loop: Header=BB20_1 Depth=1
	leal	1(%rax), %ecx
	movl	%ecx, 12(%r13)
	movq	40(%r13), %rcx
	movb	(%rcx,%rax), %al
	movb	%al, (%r12)
	incq	%r12
	jmp	.LBB20_318
.LBB20_5:                               # %if.else
                                        #   in Loop: Header=BB20_1 Depth=1
	leal	-62(%r15), %eax
	cmpl	$63, %eax
	ja	.LBB20_6
# BB#9:                                 # %if.else
                                        #   in Loop: Header=BB20_1 Depth=1
	movabsq	$-6917529024956727296, %rcx # imm = 0xA0000000A0000000
	btq	%rax, %rcx
	jae	.LBB20_10
# BB#13:                                # %if.then.33
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$0, 4(%r13)
	jne	.LBB20_56
# BB#14:                                # %if.then.37
                                        #   in Loop: Header=BB20_1 Depth=1
	movb	%r15b, (%r12)
	incq	%r12
	movl	$0, 28(%r13)
	jmp	.LBB20_318
.LBB20_187:                             # %if.end.846
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	72(%r13), %rdi
	callq	*48(%r13)
	movb	%al, (%r12)
	incq	%r12
	decl	24(%r13)
	jne	.LBB20_318
# BB#188:                               # %if.then.856
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$0, 12(%r13)
	movl	$0, 16(%r13)
	movl	$0, (%r13)
	jmp	.LBB20_318
.LBB20_322:                             # %if.then.1228
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	40(%r13), %rax
	movb	$60, (%rax)
	movq	40(%r13), %rax
	movb	$60, 1(%rax)
	movl	$2, 16(%r13)
	movl	$0, 12(%r13)
	movl	$0, 24(%r13)
	movl	$4, (%r13)
	jmp	.LBB20_318
.LBB20_223:                             # %if.then.976
                                        #   in Loop: Header=BB20_1 Depth=1
	incl	96(%r13)
	movl	$40, %ebp
	jmp	.LBB20_224
.LBB20_191:                             # %sw.bb.861
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$41, %ebp
	jne	.LBB20_224
# BB#192:                               # %land.lhs.true.867
                                        #   in Loop: Header=BB20_1 Depth=1
	decl	96(%r13)
	movl	$41, %ebp
	jne	.LBB20_224
# BB#193:                               # %if.then.872
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$0, 28(%r13)
	cmpl	$0, 84(%r13)
	je	.LBB20_200
# BB#194:                               # %if.then.876
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	4(%r13), %esi
	cmpl	$255, %esi
	jle	.LBB20_195
# BB#197:                               # %if.else.882
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$65535, %esi            # imm = 0xFFFF
	jg	.LBB20_200
# BB#198:                               # %if.then.886
                                        #   in Loop: Header=BB20_1 Depth=1
	sarl	$8, %esi
	jmp	.LBB20_199
.LBB20_276:                             # %if.end.1221
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	4(%r13), %ecx
	cmpl	8(%r13), %ecx
	je	.LBB20_226
# BB#277:                               # %entry.if.end.10_crit_edge.i.282
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	32(%r13), %rax
	jmp	.LBB20_228
.LBB20_238:                             # %cond.false.1058
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$.L.str.76, %esi
	movl	$3, %edx
	movq	%r15, %rdi
	callq	strncmp
.LBB20_239:                             # %cond.end.1061
                                        #   in Loop: Header=BB20_1 Depth=1
	testl	%eax, %eax
	je	.LBB20_240
# BB#245:                               # %if.end.1066
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$7, %ebp
	jl	.LBB20_317
# BB#246:                               # %land.lhs.true.1070
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$.L.str.77, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$6, %rcx
	ja	.LBB20_256
# BB#247:                               # %land.lhs.true.1080
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpq	$3, %rcx
	ja	.LBB20_255
# BB#248:                               # %cond.true.1084
                                        #   in Loop: Header=BB20_1 Depth=1
	movzbl	(%r15), %eax
	addl	$-78, %eax
	testq	%rcx, %rcx
	je	.LBB20_257
# BB#249:                               # %cond.true.1084
                                        #   in Loop: Header=BB20_1 Depth=1
	testl	%eax, %eax
	jne	.LBB20_257
# BB#250:                               # %if.then.1099
                                        #   in Loop: Header=BB20_1 Depth=1
	movzbl	1(%r15), %eax
	addl	$-65, %eax
	cmpq	$2, %rcx
	jb	.LBB20_257
# BB#251:                               # %if.then.1099
                                        #   in Loop: Header=BB20_1 Depth=1
	testl	%eax, %eax
	jne	.LBB20_257
# BB#252:                               # %if.then.1109
                                        #   in Loop: Header=BB20_1 Depth=1
	movzbl	2(%r15), %eax
	addl	$-77, %eax
	cmpq	$3, %rcx
	jb	.LBB20_257
# BB#253:                               # %if.then.1109
                                        #   in Loop: Header=BB20_1 Depth=1
	testl	%eax, %eax
	jne	.LBB20_257
# BB#254:                               # %if.then.1119
                                        #   in Loop: Header=BB20_1 Depth=1
	movzbl	3(%r15), %eax
	addl	$-69, %eax
	jmp	.LBB20_257
.LBB20_303:                             # %if.end.1260
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$60, %esi
	movq	%r13, %rdi
	callq	pscompact_bufferatstart
	movl	4(%r13), %ecx
	cmpl	8(%r13), %ecx
	jne	.LBB20_304
# BB#305:                               # %if.then.i.76
                                        #   in Loop: Header=BB20_1 Depth=1
	movslq	%ecx, %rsi
	addl	%ecx, %ecx
	movl	%ecx, 8(%r13)
	movq	32(%r13), %rdi
	shlq	$2, %rsi
	callq	realloc
	movq	%rax, 32(%r13)
	testq	%rax, %rax
	je	.LBB20_260
# BB#306:                               # %if.then.if.end.10_crit_edge.i.78
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	4(%r13), %ecx
	jmp	.LBB20_307
.LBB20_211:                             # %if.then.897
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$110, %r15d
	je	.LBB20_215
# BB#212:                               # %if.then.897
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$114, %r15d
	jne	.LBB20_213
# BB#216:                               # %if.then.923
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$13, %ebp
	jmp	.LBB20_224
.LBB20_153:                             # %if.else.628
                                        #   in Loop: Header=BB20_1 Depth=1
	movzbl	%bl, %esi
	cmpl	$40, %esi
	je	.LBB20_173
# BB#154:                               # %if.else.628
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$41, %esi
	jne	.LBB20_155
# BB#170:                               # %land.lhs.true.719
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	16(%r13), %edx
	jge	.LBB20_176
# BB#171:                               # %if.then.724
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$0, 92(%r13)
	je	.LBB20_160
# BB#172:                               # %if.else.731
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$0, 92(%r13)
	movb	$41, %bl
	jmp	.LBB20_183
.LBB20_240:                             # %if.then.1065
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$37, %esi
	movq	%r13, %rdi
	callq	pscompact_bufferatstart
	movl	4(%r13), %ecx
	cmpl	8(%r13), %ecx
	je	.LBB20_242
# BB#241:                               # %entry.if.end.10_crit_edge.i.216
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	32(%r13), %rax
	jmp	.LBB20_244
.LBB20_284:                             # %pscompact_hex2ascii.exit.thread
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$0, 4(%r13)
	xorl	%esi, %esi
.LBB20_195:                             # %if.then.880
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	%r13, %rdi
	callq	pscompact_bufferatstart
	movl	$142, %esi
.LBB20_196:                             # %do.cond
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	%r13, %rdi
	callq	pscompact_bufferatstart
	movq	%r13, %rdi
	callq	pscompact_copyinout
	movl	$1, 88(%r13)
	jmp	.LBB20_318
.LBB20_304:                             # %entry.if.end.10_crit_edge.i.69
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	32(%r13), %rax
.LBB20_307:                             # %pscompact_buffer.exit84
                                        #   in Loop: Header=BB20_1 Depth=1
	leal	1(%rcx), %edx
	movl	%edx, 4(%r13)
	movslq	%ecx, %rcx
	movb	$62, (%rax,%rcx)
	jmp	.LBB20_205
.LBB20_256:                             # %cond.false.1133
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$.L.str.77, %esi
	movl	$7, %edx
	movq	%r15, %rdi
	callq	strncmp
	jmp	.LBB20_257
.LBB20_215:                             # %if.then.915
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$10, %ebp
	jmp	.LBB20_224
.LBB20_213:                             # %if.then.897
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$116, %r15d
	jne	.LBB20_217
# BB#214:                               # %if.then.911
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$9, %ebp
	jmp	.LBB20_224
.LBB20_217:                             # %if.else.924
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	%r15d, %eax
	andl	$-8, %eax
	cmpl	$48, %eax
	movl	%r15d, %ebp
	jne	.LBB20_224
# BB#218:                               # %if.then.930
                                        #   in Loop: Header=BB20_1 Depth=1
	addl	$-48, %r15d
	movq	72(%r13), %rdi
	callq	*48(%r13)
	movl	%eax, %ecx
	andl	$-8, %ecx
	cmpl	$48, %ecx
	jne	.LBB20_221
# BB#219:                               # %if.then.941
                                        #   in Loop: Header=BB20_1 Depth=1
	leal	-48(%rax,%r15,8), %r15d
	movq	72(%r13), %rdi
	callq	*48(%r13)
	movl	%eax, %ecx
	andl	$-8, %ecx
	cmpl	$48, %ecx
	jne	.LBB20_221
# BB#220:                               # %if.then.953
                                        #   in Loop: Header=BB20_1 Depth=1
	leal	-48(%rax,%r15,8), %r15d
	movzbl	%r15b, %ebp
	jmp	.LBB20_224
.LBB20_10:                              # %if.else
                                        #   in Loop: Header=BB20_1 Depth=1
	testq	%rax, %rax
	jne	.LBB20_6
# BB#11:                                # %if.then.16
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$0, 4(%r13)
	jne	.LBB20_56
# BB#12:                                # %if.then.19
                                        #   in Loop: Header=BB20_1 Depth=1
	movb	$62, (%r12)
	incq	%r12
	jmp	.LBB20_318
.LBB20_6:                               # %if.else
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$40, %r15d
	je	.LBB20_7
# BB#15:                                # %if.else.41
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	%r15d, %eax
	andl	$-4, %eax
	cmpl	$128, %eax
	je	.LBB20_16
# BB#18:                                # %if.else.48
                                        #   in Loop: Header=BB20_1 Depth=1
	leal	-132(%r15), %eax
	cmpl	$8, %eax
	ja	.LBB20_23
# BB#19:                                # %if.else.48
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$451, %ecx              # imm = 0x1C3
	btl	%eax, %ecx
	jae	.LBB20_23
# BB#20:                                # %if.then.63
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$0, 4(%r13)
	jne	.LBB20_56
# BB#21:                                # %if.then.67
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	40(%r13), %rax
	movb	%r15b, (%rax)
	movl	$1, 16(%r13)
	movl	$0, 12(%r13)
.LBB20_22:                              # %if.else.117
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$4, 24(%r13)
	movl	$5, (%r13)
	jmp	.LBB20_318
.LBB20_23:                              # %if.else.69
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	%r15d, %eax
	andl	$-2, %eax
	cmpl	$134, %eax
	jne	.LBB20_26
# BB#24:                                # %if.then.75
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$0, 4(%r13)
	jne	.LBB20_56
# BB#25:                                # %if.then.79
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	40(%r13), %rax
	movb	%r15b, (%rax)
	movl	$1, 16(%r13)
	movl	$0, 12(%r13)
.LBB20_32:                              # %if.then.116
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$2, 24(%r13)
	movl	$5, (%r13)
	jmp	.LBB20_318
.LBB20_26:                              # %if.else.81
                                        #   in Loop: Header=BB20_1 Depth=1
	leal	-136(%r15), %eax
	cmpl	$12, %eax
	ja	.LBB20_40
# BB#27:                                # %if.else.81
                                        #   in Loop: Header=BB20_1 Depth=1
	jmpq	*.LJTI20_3(,%rax,8)
.LBB20_28:                              # %if.then.99
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$0, 4(%r13)
	jne	.LBB20_56
# BB#29:                                # %if.then.103
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	40(%r13), %rax
	movb	%r15b, (%rax)
	movl	$1, 16(%r13)
	movl	$0, 12(%r13)
	movl	$1, 24(%r13)
	movl	$5, (%r13)
	jmp	.LBB20_318
.LBB20_173:                             # %land.lhs.true.738
                                        #   in Loop: Header=BB20_1 Depth=1
	testl	%ecx, %ecx
	jle	.LBB20_176
# BB#174:                               # %if.then.742
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$0, 92(%r13)
	je	.LBB20_160
# BB#175:                               # %if.else.749
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$0, 92(%r13)
	movb	$40, %bl
	jmp	.LBB20_183
.LBB20_155:                             # %if.else.628
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$92, %esi
	jne	.LBB20_176
# BB#156:                               # %if.then.705
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$0, 92(%r13)
	je	.LBB20_160
# BB#157:                               # %if.else.712
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$0, 92(%r13)
	movb	$92, %bl
	jmp	.LBB20_183
.LBB20_7:                               # %if.then.8
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$0, 4(%r13)
	jne	.LBB20_56
# BB#8:                                 # %if.then.11
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$2, (%r13)
	movl	$1, 96(%r13)
	jmp	.LBB20_318
.LBB20_40:                              # %if.else.166
                                        #   in Loop: Header=BB20_1 Depth=1
	leal	-149(%r15), %eax
	cmpl	$10, %eax
	jbe	.LBB20_321
# BB#41:                                # %if.else.174
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$37, %r15d
	je	.LBB20_45
# BB#42:                                # %if.else.174
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$47, %r15d
	jne	.LBB20_43
# BB#49:                                # %land.lhs.true.197
                                        #   in Loop: Header=BB20_1 Depth=1
	movslq	4(%r13), %rcx
	testq	%rcx, %rcx
	jle	.LBB20_51
# BB#50:                                # %land.lhs.true.201
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	32(%r13), %rax
	movzbl	-1(%rcx,%rax), %eax
	cmpl	$47, %eax
	jne	.LBB20_56
	jmp	.LBB20_51
.LBB20_200:                             # %if.end.893
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$40, %esi
	movq	%r13, %rdi
	callq	pscompact_bufferatstart
	movl	4(%r13), %ecx
	cmpl	8(%r13), %ecx
	jne	.LBB20_201
# BB#202:                               # %if.then.i.178
                                        #   in Loop: Header=BB20_1 Depth=1
	movslq	%ecx, %rsi
	addl	%ecx, %ecx
	movl	%ecx, 8(%r13)
	movq	32(%r13), %rdi
	shlq	$2, %rsi
	callq	realloc
	movq	%rax, 32(%r13)
	testq	%rax, %rax
	je	.LBB20_260
# BB#203:                               # %if.then.if.end.10_crit_edge.i.180
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	4(%r13), %ecx
	jmp	.LBB20_204
.LBB20_255:                             # %cond.false.1128
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$.L.str.77, %esi
	movq	%r15, %rdi
	callq	strcmp
.LBB20_257:                             # %cond.end.1136
                                        #   in Loop: Header=BB20_1 Depth=1
	testl	%eax, %eax
	je	.LBB20_258
# BB#261:                               # %if.end.1142
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$8, 4(%r13)
	jl	.LBB20_317
# BB#262:                               # %land.lhs.true.1146
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$.L.str.78, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$7, %rcx
	ja	.LBB20_272
# BB#263:                               # %land.lhs.true.1156
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	32(%r13), %rdi
	cmpq	$3, %rcx
	ja	.LBB20_271
# BB#264:                               # %cond.true.1160
                                        #   in Loop: Header=BB20_1 Depth=1
	movzbl	(%rdi), %eax
	addl	$-66, %eax
	testq	%rcx, %rcx
	je	.LBB20_273
# BB#265:                               # %cond.true.1160
                                        #   in Loop: Header=BB20_1 Depth=1
	testl	%eax, %eax
	jne	.LBB20_273
# BB#266:                               # %if.then.1175
                                        #   in Loop: Header=BB20_1 Depth=1
	movzbl	1(%rdi), %eax
	addl	$-73, %eax
	cmpq	$2, %rcx
	jb	.LBB20_273
# BB#267:                               # %if.then.1175
                                        #   in Loop: Header=BB20_1 Depth=1
	testl	%eax, %eax
	jne	.LBB20_273
# BB#268:                               # %if.then.1185
                                        #   in Loop: Header=BB20_1 Depth=1
	movzbl	2(%rdi), %eax
	addl	$-78, %eax
	cmpq	$3, %rcx
	jb	.LBB20_273
# BB#269:                               # %if.then.1185
                                        #   in Loop: Header=BB20_1 Depth=1
	testl	%eax, %eax
	jne	.LBB20_273
# BB#270:                               # %if.then.1195
                                        #   in Loop: Header=BB20_1 Depth=1
	movzbl	3(%rdi), %eax
	addl	$-65, %eax
	jmp	.LBB20_273
.LBB20_258:                             # %if.then.1140
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$1, 80(%r13)
	movl	$37, %esi
	movq	%r13, %rdi
	callq	pscompact_bufferatstart
	movl	4(%r13), %ecx
	cmpl	8(%r13), %ecx
	je	.LBB20_242
# BB#259:                               # %entry.if.end.10_crit_edge.i.238
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	32(%r13), %rax
	jmp	.LBB20_244
.LBB20_221:                             # %if.else.961
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	72(%r13), %rsi
	movl	%eax, %edi
	callq	*56(%r13)
	movzbl	%r15b, %ebp
.LBB20_224:                             # %if.end.981
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	4(%r13), %ecx
	cmpl	8(%r13), %ecx
	jne	.LBB20_225
.LBB20_226:                             # %if.then.i.200
                                        #   in Loop: Header=BB20_1 Depth=1
	movslq	%ecx, %rsi
	addl	%ecx, %ecx
	movl	%ecx, 8(%r13)
	movq	32(%r13), %rdi
	shlq	$2, %rsi
	callq	realloc
	movq	%rax, 32(%r13)
	testq	%rax, %rax
	je	.LBB20_260
# BB#227:                               # %if.then.if.end.10_crit_edge.i.202
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	4(%r13), %ecx
	jmp	.LBB20_228
.LBB20_225:                             # %entry.if.end.10_crit_edge.i.193
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	32(%r13), %rax
.LBB20_228:                             # %pscompact_buffer.exit210
                                        #   in Loop: Header=BB20_1 Depth=1
	leal	1(%rcx), %edx
	movl	%edx, 4(%r13)
	movslq	%ecx, %rcx
	movb	%bpl, (%rax,%rcx)
	jmp	.LBB20_318
.LBB20_162:                             # %if.then.649
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$0, 92(%r13)
	je	.LBB20_160
# BB#163:                               # %if.else.656
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$0, 92(%r13)
	movb	$116, %bl
	jmp	.LBB20_183
.LBB20_158:                             # %land.lhs.true.632
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	16(%r13), %edx
	jge	.LBB20_176
# BB#159:                               # %if.then.637
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$0, 92(%r13)
	je	.LBB20_160
# BB#161:                               # %if.else.642
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$0, 92(%r13)
	movb	$110, %bl
	jmp	.LBB20_183
.LBB20_176:                             # %if.else.752
                                        #   in Loop: Header=BB20_1 Depth=1
	movzbl	%bl, %eax
	cmpl	$32, %eax
	sbbb	%dl, %dl
	cmpl	$10, %eax
	setne	%sil
	testb	%bl, %bl
	js	.LBB20_178
# BB#177:                               # %if.else.752
                                        #   in Loop: Header=BB20_1 Depth=1
	andb	%sil, %dl
	je	.LBB20_183
.LBB20_178:                             # %if.then.764
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	92(%r13), %edx
	cmpq	$3, %rdx
	ja	.LBB20_183
# BB#179:                               # %if.then.764
                                        #   in Loop: Header=BB20_1 Depth=1
	jmpq	*.LJTI20_2(,%rdx,8)
.LBB20_180:                             # %if.then.776
                                        #   in Loop: Header=BB20_1 Depth=1
	shrb	$6, %bl
	orb	$48, %bl
	movl	%ecx, 12(%r13)
	movl	$2, 92(%r13)
	jmp	.LBB20_183
.LBB20_166:                             # %if.then.677
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$0, 92(%r13)
	je	.LBB20_160
# BB#167:                               # %if.else.684
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$0, 92(%r13)
	movb	$102, %bl
	jmp	.LBB20_183
.LBB20_168:                             # %if.then.691
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$0, 92(%r13)
	je	.LBB20_160
# BB#169:                               # %if.else.698
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$0, 92(%r13)
	movb	$114, %bl
	jmp	.LBB20_183
.LBB20_160:                             # %if.then.639
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	%ecx, 12(%r13)
	movl	$1, 92(%r13)
	movb	$92, %bl
.LBB20_183:                             # %if.end.821
                                        #   in Loop: Header=BB20_1 Depth=1
	movb	%bl, (%r12)
	incq	%r12
	movl	12(%r13), %eax
	cmpl	16(%r13), %eax
	jne	.LBB20_318
# BB#184:                               # %if.then.827
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$0, 12(%r13)
	movl	$0, 16(%r13)
	movl	$0, 88(%r13)
	movl	$0, (%r13)
	jmp	.LBB20_318
.LBB20_272:                             # %cond.false.1209
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	32(%r13), %rdi
	movl	$.L.str.78, %esi
	movl	$8, %edx
	callq	strncmp
	jmp	.LBB20_273
.LBB20_201:                             # %entry.if.end.10_crit_edge.i.171
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	32(%r13), %rax
.LBB20_204:                             # %pscompact_buffer.exit187
                                        #   in Loop: Header=BB20_1 Depth=1
	leal	1(%rcx), %edx
	movl	%edx, 4(%r13)
	movslq	%ecx, %rcx
	movb	$41, (%rax,%rcx)
	jmp	.LBB20_205
.LBB20_181:                             # %if.then.789
                                        #   in Loop: Header=BB20_1 Depth=1
	shrb	$3, %bl
	andb	$7, %bl
	orb	$48, %bl
	movl	%ecx, 12(%r13)
	movl	$3, 92(%r13)
	jmp	.LBB20_183
.LBB20_182:                             # %if.then.802
                                        #   in Loop: Header=BB20_1 Depth=1
	andb	$7, %bl
	orb	$48, %bl
	movl	$0, 92(%r13)
	jmp	.LBB20_183
.LBB20_45:                              # %if.then.177
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$0, 4(%r13)
	jne	.LBB20_56
# BB#46:                                # %if.then.181
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$1, (%r13)
	jmp	.LBB20_318
.LBB20_43:                              # %if.else.174
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$60, %r15d
	jne	.LBB20_44
# BB#47:                                # %if.then.187
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$0, 4(%r13)
	jne	.LBB20_56
# BB#48:                                # %if.then.191
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$3, (%r13)
	jmp	.LBB20_318
.LBB20_271:                             # %cond.false.1204
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$.L.str.78, %esi
	callq	strcmp
.LBB20_273:                             # %cond.end.1212
                                        #   in Loop: Header=BB20_1 Depth=1
	testl	%eax, %eax
	je	.LBB20_274
.LBB20_317:                             # %if.end.1218
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	$0, (%r13)
	jmp	.LBB20_318
.LBB20_274:                             # %if.then.1216
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$1, 84(%r13)
	movl	$37, %esi
	movq	%r13, %rdi
	callq	pscompact_bufferatstart
	movl	4(%r13), %ecx
	cmpl	8(%r13), %ecx
	jne	.LBB20_275
.LBB20_242:                             # %if.then.i.223
                                        #   in Loop: Header=BB20_1 Depth=1
	movslq	%ecx, %rsi
	addl	%ecx, %ecx
	movl	%ecx, 8(%r13)
	movq	32(%r13), %rdi
	shlq	$2, %rsi
	callq	realloc
	movq	%rax, 32(%r13)
	testq	%rax, %rax
	je	.LBB20_260
# BB#243:                               # %if.then.if.end.10_crit_edge.i.225
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	4(%r13), %ecx
.LBB20_244:                             # %pscompact_buffer.exit232
                                        #   in Loop: Header=BB20_1 Depth=1
	leal	1(%rcx), %edx
	movl	%edx, 4(%r13)
	movslq	%ecx, %rcx
	movb	$10, (%rax,%rcx)
.LBB20_205:                             # %do.cond
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	%r13, %rdi
	callq	pscompact_copyinout
	jmp	.LBB20_318
.LBB20_275:                             # %entry.if.end.10_crit_edge.i.260
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	32(%r13), %rax
	jmp	.LBB20_244
.LBB20_44:                              # %if.else.174.if.else.207_crit_edge
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	4(%r13), %ecx
.LBB20_51:                              # %if.else.207
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	8(%r13), %ecx
	jne	.LBB20_52
# BB#53:                                # %if.then.i.119
                                        #   in Loop: Header=BB20_1 Depth=1
	leal	(%rcx,%rcx), %eax
	movl	%eax, 8(%r13)
	movq	32(%r13), %rdi
	shll	$2, %ecx
	movslq	%ecx, %rsi
	callq	realloc
	movq	%rax, 32(%r13)
	testq	%rax, %rax
	je	.LBB20_260
# BB#54:                                # %if.then.if.end.10_crit_edge.i.121
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	4(%r13), %ecx
	jmp	.LBB20_55
.LBB20_52:                              # %entry.if.end.10_crit_edge.i.112
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	32(%r13), %rax
.LBB20_55:                              # %pscompact_buffer.exit128
                                        #   in Loop: Header=BB20_1 Depth=1
	leal	1(%rcx), %edx
	movl	%edx, 4(%r13)
	movslq	%ecx, %rcx
	movb	%r15b, (%rax,%rcx)
	jmp	.LBB20_318
.LBB20_30:                              # %if.then.108
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$0, 4(%r13)
	jne	.LBB20_56
# BB#31:                                # %if.then.112
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	72(%r13), %rdi
	callq	*48(%r13)
	testb	$32, %al
	movq	40(%r13), %rcx
	movb	$-119, (%rcx)
	movq	40(%r13), %rcx
	movb	%al, 1(%rcx)
	movabsq	$8589934592, %rax       # imm = 0x200000000
	movq	%rax, 12(%r13)
	je	.LBB20_22
	jmp	.LBB20_32
.LBB20_33:                              # %if.then.123
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$0, 4(%r13)
	jne	.LBB20_56
# BB#34:                                # %if.then.127
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	72(%r13), %rdi
	callq	*48(%r13)
	movq	40(%r13), %rcx
	movb	$-114, (%rcx)
	movq	40(%r13), %rcx
	movb	%al, 1(%rcx)
	movl	$2, 16(%r13)
	movl	$0, 12(%r13)
	movl	%eax, 24(%r13)
	testl	%eax, %eax
	jmp	.LBB20_35
.LBB20_36:                              # %if.then.135
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$0, 4(%r13)
	jne	.LBB20_56
# BB#37:                                # %if.then.139
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	72(%r13), %rdi
	callq	*48(%r13)
	movl	%eax, %ebp
	movq	72(%r13), %rdi
	callq	*48(%r13)
	movl	%ebp, %ecx
	shll	$8, %ecx
	movq	40(%r13), %rdx
	movb	$-113, (%rdx)
	movq	40(%r13), %rdx
	movb	%bpl, 1(%rdx)
	movq	40(%r13), %rdx
	movb	%al, 2(%rdx)
	movl	$3, 16(%r13)
	movl	$0, 12(%r13)
	addl	%eax, %ecx
	movl	%ecx, 24(%r13)
	jmp	.LBB20_35
.LBB20_38:                              # %if.then.150
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$0, 4(%r13)
	je	.LBB20_39
.LBB20_56:                              # %if.then.226
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	72(%r13), %rsi
	movl	%r15d, %edi
	callq	*56(%r13)
.LBB20_57:                              # %if.end.228
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	%r12, 8(%rsp)           # 8-byte Spill
	cmpl	$0, 84(%r13)
	je	.LBB20_137
# BB#58:                                # %if.then.230
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	32(%r13), %r15
	movzbl	(%r15), %edi
	cmpl	$45, %edi
	je	.LBB20_60
# BB#59:                                # %if.then.230
                                        #   in Loop: Header=BB20_1 Depth=1
	xorl	%r14d, %r14d
	movzbl	%dil, %eax
	cmpl	$43, %eax
	jne	.LBB20_61
.LBB20_60:                              # %if.then.i.130
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$1, %r14d
.LBB20_61:                              # %if.end.i
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	4(%r13), %ebp
	movslq	%ebp, %r12
	cmpl	%r12d, %r14d
	jge	.LBB20_102
# BB#62:                                # %if.end.10.i
                                        #   in Loop: Header=BB20_1 Depth=1
	leal	3(%r14), %eax
	cmpl	%eax, %ebp
	jle	.LBB20_80
# BB#63:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	%eax, 4(%rsp)           # 4-byte Spill
	movl	%edi, %ebx
	movl	$.L.str.83, %edi
	callq	strlen
	movq	%rax, %rcx
	leaq	(%r15,%r14), %rdi
	cmpq	$2, %rcx
	ja	.LBB20_69
# BB#64:                                # %cond.true.20.i
                                        #   in Loop: Header=BB20_1 Depth=1
	movzbl	(%rdi), %eax
	addl	$-49, %eax
	testq	%rcx, %rcx
	je	.LBB20_70
# BB#65:                                # %cond.true.20.i
                                        #   in Loop: Header=BB20_1 Depth=1
	testl	%eax, %eax
	jne	.LBB20_70
# BB#66:                                # %if.then.33.i
                                        #   in Loop: Header=BB20_1 Depth=1
	movzbl	1(%rdi), %eax
	addl	$-54, %eax
	cmpq	$2, %rcx
	jb	.LBB20_70
# BB#67:                                # %if.then.33.i
                                        #   in Loop: Header=BB20_1 Depth=1
	testl	%eax, %eax
	jne	.LBB20_70
# BB#68:                                # %if.then.43.i
                                        #   in Loop: Header=BB20_1 Depth=1
	movzbl	2(%rdi), %eax
	addl	$-35, %eax
	jmp	.LBB20_70
.LBB20_69:                              # %cond.false.66.i
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$.L.str.83, %esi
	movl	$3, %edx
	callq	strncmp
.LBB20_70:                              # %cond.end.71.i
                                        #   in Loop: Header=BB20_1 Depth=1
	testl	%eax, %eax
	movl	%ebx, %edi
	je	.LBB20_71
	.align	16, 0x90
.LBB20_80:                              # %do.body.i
                                        #   Parent Loop BB20_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%r15,%r14), %al
	addb	$-48, %al
	movzbl	%al, %eax
	cmpl	$9, %eax
	ja	.LBB20_102
# BB#81:                                # %if.end.173.i
                                        #   in Loop: Header=BB20_80 Depth=2
	incq	%r14
	cmpq	%r12, %r14
	jl	.LBB20_80
# BB#82:                                # %do.end.i
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	8(%r13), %ebp
	jne	.LBB20_84
# BB#83:                                # %if.then.181.i
                                        #   in Loop: Header=BB20_1 Depth=1
	addq	%r12, %r12
	movl	%r12d, 8(%r13)
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	realloc
	movq	%rax, %r15
	movq	%r15, 32(%r13)
	movl	4(%r13), %ebp
.LBB20_84:                              # %if.end.189.i
                                        #   in Loop: Header=BB20_1 Depth=1
	movslq	%ebp, %rax
	movb	$0, (%r15,%rax)
	movq	32(%r13), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol
	jmp	.LBB20_85
.LBB20_71:                              # %while.body.lr.ph.i
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	4(%rsp), %eax           # 4-byte Reload
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB20_72:                              # %while.body.i
                                        #   Parent Loop BB20_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	(%r15,%rax), %edx
	movb	%dl, %bl
	addb	$-48, %bl
	movzbl	%bl, %esi
	cmpl	$9, %esi
	ja	.LBB20_74
# BB#73:                                # %if.then.94.i
                                        #   in Loop: Header=BB20_72 Depth=2
	shll	$4, %ecx
	addl	$-48, %ecx
	jmp	.LBB20_78
	.align	16, 0x90
.LBB20_74:                              # %if.else.i
                                        #   in Loop: Header=BB20_72 Depth=2
	movb	%dl, %bl
	addb	$-97, %bl
	movzbl	%bl, %esi
	cmpl	$5, %esi
	ja	.LBB20_76
# BB#75:                                # %if.then.114.i
                                        #   in Loop: Header=BB20_72 Depth=2
	shll	$4, %ecx
	addl	$-87, %ecx
	jmp	.LBB20_78
	.align	16, 0x90
.LBB20_76:                              # %if.else.123.i
                                        #   in Loop: Header=BB20_72 Depth=2
	movb	%dl, %bl
	addb	$-65, %bl
	movzbl	%bl, %esi
	cmpl	$5, %esi
	ja	.LBB20_102
# BB#77:                                # %if.then.137.i
                                        #   in Loop: Header=BB20_72 Depth=2
	shll	$4, %ecx
	addl	$-55, %ecx
.LBB20_78:                              # %if.end.149.i
                                        #   in Loop: Header=BB20_72 Depth=2
	addl	%edx, %ecx
	incq	%rax
	cmpl	%ebp, %eax
	jl	.LBB20_72
# BB#79:                                # %while.end.i
                                        #   in Loop: Header=BB20_1 Depth=1
	movzbl	%dil, %edx
	movl	%ecx, %eax
	negl	%eax
	cmpl	$45, %edx
	cmovnel	%ecx, %eax
.LBB20_85:                              # %if.then.233
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	16(%rsp), %r14          # 8-byte Reload
	movq	8(%rsp), %r12           # 8-byte Reload
	cmpl	$0, 100(%r13)
	je	.LBB20_97
# BB#86:                                # %if.then.235
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$0, 100(%r13)
	movl	4(%r13), %ebp
	jmp	.LBB20_87
.LBB20_102:                             # %if.else.303
                                        #   in Loop: Header=BB20_1 Depth=1
	movzbl	%dil, %ecx
	cmpl	$45, %ecx
	je	.LBB20_104
# BB#103:                               # %if.else.303
                                        #   in Loop: Header=BB20_1 Depth=1
	xorl	%eax, %eax
	cmpl	$43, %ecx
	jne	.LBB20_105
.LBB20_104:                             # %if.then.i.138
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$1, %eax
.LBB20_105:                             # %if.end.i.142
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	%ebp, %eax
	jge	.LBB20_106
# BB#107:                               # %do.body.preheader.i.143
                                        #   in Loop: Header=BB20_1 Depth=1
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB20_108:                             # %do.body.i.146
                                        #   Parent Loop BB20_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%r15,%rax), %bl
	movb	%bl, %dl
	addb	$-48, %dl
	movzbl	%dl, %edx
	cmpl	$10, %edx
	jb	.LBB20_111
# BB#109:                               # %if.else.i.148
                                        #   in Loop: Header=BB20_108 Depth=2
	testl	%ecx, %ecx
	jne	.LBB20_106
# BB#110:                               # %if.else.i.148
                                        #   in Loop: Header=BB20_108 Depth=2
	movl	$1, %ecx
	movzbl	%bl, %edx
	cmpl	$46, %edx
	jne	.LBB20_106
.LBB20_111:                             # %if.end.35.i
                                        #   in Loop: Header=BB20_108 Depth=2
	incq	%rax
	cmpq	%r12, %rax
	jl	.LBB20_108
# BB#112:                               # %do.end.i.151
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	8(%r13), %ebp
	jne	.LBB20_114
# BB#113:                               # %if.then.42.i
                                        #   in Loop: Header=BB20_1 Depth=1
	addq	%r12, %r12
	movl	%r12d, 8(%r13)
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	realloc
	movq	%rax, %r15
	movq	%r15, 32(%r13)
	movl	4(%r13), %ebp
.LBB20_114:                             # %if.then.331
                                        #   in Loop: Header=BB20_1 Depth=1
	movslq	%ebp, %rax
	movb	$0, (%r15,%rax)
	movq	32(%r13), %rdi
	xorl	%esi, %esi
	callq	strtod
	cvtsd2ss	%xmm0, %xmm0
	movd	%xmm0, %eax
	movq	40(%r13), %rcx
	movb	$-117, (%rcx)
	movq	40(%r13), %rcx
	movb	%al, 1(%rcx)
	movq	40(%r13), %rcx
	movb	%ah, 2(%rcx)  # NOREX
	movl	%eax, %ecx
	shrl	$16, %ecx
	movq	40(%r13), %rdx
	movb	%cl, 3(%rdx)
	shrl	$24, %eax
	movq	40(%r13), %rcx
	movb	%al, 4(%rcx)
	movl	$0, 12(%r13)
	movl	$5, 16(%r13)
	movl	$0, 28(%r13)
	movl	$1, 88(%r13)
	movq	$4, (%r13)
	movq	16(%rsp), %r14          # 8-byte Reload
	movq	8(%rsp), %r12           # 8-byte Reload
	jmp	.LBB20_318
.LBB20_106:                             #   in Loop: Header=BB20_1 Depth=1
	movq	16(%rsp), %r14          # 8-byte Reload
	movq	8(%rsp), %r12           # 8-byte Reload
.LBB20_87:                              # %if.end.410
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$5, %ebp
	je	.LBB20_119
# BB#88:                                # %if.end.410
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$4, %ebp
	jne	.LBB20_132
# BB#89:                                # %land.lhs.true.414
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$.L.str.74, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	32(%r13), %rdi
	cmpq	$3, %rcx
	ja	.LBB20_115
# BB#90:                                # %cond.true.422
                                        #   in Loop: Header=BB20_1 Depth=1
	movzbl	(%rdi), %eax
	addl	$-116, %eax
	testq	%rcx, %rcx
	je	.LBB20_116
# BB#91:                                # %cond.true.422
                                        #   in Loop: Header=BB20_1 Depth=1
	testl	%eax, %eax
	jne	.LBB20_116
# BB#92:                                # %if.then.435
                                        #   in Loop: Header=BB20_1 Depth=1
	movzbl	1(%rdi), %eax
	addl	$-114, %eax
	cmpq	$2, %rcx
	jb	.LBB20_116
# BB#93:                                # %if.then.435
                                        #   in Loop: Header=BB20_1 Depth=1
	testl	%eax, %eax
	jne	.LBB20_116
# BB#94:                                # %if.then.445
                                        #   in Loop: Header=BB20_1 Depth=1
	movzbl	2(%rdi), %eax
	addl	$-117, %eax
	cmpq	$3, %rcx
	jb	.LBB20_116
# BB#95:                                # %if.then.445
                                        #   in Loop: Header=BB20_1 Depth=1
	testl	%eax, %eax
	jne	.LBB20_116
# BB#96:                                # %if.then.455
                                        #   in Loop: Header=BB20_1 Depth=1
	movzbl	3(%rdi), %eax
	addl	$-101, %eax
	jmp	.LBB20_116
.LBB20_97:                              # %if.else.237
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	%eax, %ecx
	subl	$-128, %ecx
	cmpl	$255, %ecx
	ja	.LBB20_99
# BB#98:                                # %if.then.243
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	40(%r13), %rcx
	movb	$-120, (%rcx)
	movq	40(%r13), %rcx
	movb	%al, 1(%rcx)
	jmp	.LBB20_144
.LBB20_115:                             # %cond.false.466
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$.L.str.74, %esi
	movl	$4, %edx
	callq	strncmp
.LBB20_116:                             # %cond.end.469
                                        #   in Loop: Header=BB20_1 Depth=1
	testl	%eax, %eax
	je	.LBB20_117
# BB#118:                               # %if.end.484
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$5, %ebp
	jne	.LBB20_132
.LBB20_119:                             # %land.lhs.true.488
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$.L.str.75, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$4, %rcx
	ja	.LBB20_129
# BB#120:                               # %land.lhs.true.498
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	32(%r13), %rdi
	cmpq	$3, %rcx
	ja	.LBB20_128
# BB#121:                               # %cond.true.502
                                        #   in Loop: Header=BB20_1 Depth=1
	movzbl	(%rdi), %eax
	addl	$-102, %eax
	testq	%rcx, %rcx
	je	.LBB20_130
# BB#122:                               # %cond.true.502
                                        #   in Loop: Header=BB20_1 Depth=1
	testl	%eax, %eax
	jne	.LBB20_130
# BB#123:                               # %if.then.517
                                        #   in Loop: Header=BB20_1 Depth=1
	movzbl	1(%rdi), %eax
	addl	$-97, %eax
	cmpq	$2, %rcx
	jb	.LBB20_130
# BB#124:                               # %if.then.517
                                        #   in Loop: Header=BB20_1 Depth=1
	testl	%eax, %eax
	jne	.LBB20_130
# BB#125:                               # %if.then.527
                                        #   in Loop: Header=BB20_1 Depth=1
	movzbl	2(%rdi), %eax
	addl	$-108, %eax
	cmpq	$3, %rcx
	jb	.LBB20_130
# BB#126:                               # %if.then.527
                                        #   in Loop: Header=BB20_1 Depth=1
	testl	%eax, %eax
	jne	.LBB20_130
# BB#127:                               # %if.then.537
                                        #   in Loop: Header=BB20_1 Depth=1
	movzbl	3(%rdi), %eax
	addl	$-115, %eax
	jmp	.LBB20_130
.LBB20_129:                             # %cond.false.551
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	32(%r13), %rdi
	movl	$.L.str.75, %esi
	movl	$5, %edx
	callq	strncmp
	jmp	.LBB20_130
.LBB20_128:                             # %cond.false.546
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$.L.str.75, %esi
	callq	strcmp
.LBB20_130:                             # %cond.end.554
                                        #   in Loop: Header=BB20_1 Depth=1
	testl	%eax, %eax
	je	.LBB20_131
.LBB20_132:                             # %if.end.569
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	%r12, 8(%rsp)           # 8-byte Spill
	movq	%r14, 16(%rsp)          # 8-byte Spill
	cmpl	$0, 84(%r13)
	je	.LBB20_137
# BB#133:                               # %land.lhs.true.572
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$0, 80(%r13)
	je	.LBB20_137
# BB#134:                               # %land.lhs.true.574
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	32(%r13), %r15
	movzbl	(%r15), %r14d
	cmpl	$47, %r14d
	sete	%al
	movzbl	%al, %eax
	addq	%rax, %r15
	movslq	4(%r13), %r12
	subq	%rax, %r12
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB20_135:                             # %for.body.i
                                        #   Parent Loop BB20_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	pscompact_names(,%rbp,8), %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB20_139
# BB#136:                               # %for.inc.i
                                        #   in Loop: Header=BB20_135 Depth=2
	incq	%rbp
	cmpl	$226, %ebp
	jb	.LBB20_135
.LBB20_137:                             # %if.end.605
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$0, 28(%r13)
	je	.LBB20_138
# BB#146:                               # %land.lhs.true.608
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	32(%r13), %rax
	movzbl	(%rax), %eax
	cmpl	$47, %eax
	movq	16(%rsp), %r14          # 8-byte Reload
	movq	8(%rsp), %r12           # 8-byte Reload
	je	.LBB20_148
# BB#147:                               # %if.then.614
                                        #   in Loop: Header=BB20_1 Depth=1
	movb	$32, (%r12)
	incq	%r12
	jmp	.LBB20_148
.LBB20_138:                             #   in Loop: Header=BB20_1 Depth=1
	movq	16(%rsp), %r14          # 8-byte Reload
	movq	8(%rsp), %r12           # 8-byte Reload
.LBB20_148:                             # %if.end.616
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	%r13, %rdi
	callq	pscompact_copyinout
	movl	$1, 28(%r13)
	jmp	.LBB20_318
.LBB20_131:                             # %if.then.558
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	40(%r13), %rax
	movb	$-115, (%rax)
	movq	40(%r13), %rax
	movb	$0, 1(%rax)
	jmp	.LBB20_143
.LBB20_139:                             # %if.then.577
                                        #   in Loop: Header=BB20_1 Depth=1
	movzbl	%r14b, %eax
	cmpl	$47, %eax
	movl	$0, %eax
	movl	$-1, %ecx
	cmovel	%ecx, %eax
	xorl	%ebp, %eax
	movq	40(%r13), %rcx
	js	.LBB20_141
# BB#140:                               # %if.then.580
                                        #   in Loop: Header=BB20_1 Depth=1
	movb	$-110, (%rcx)
	movq	40(%r13), %rcx
	movb	%al, 1(%rcx)
	jmp	.LBB20_142
.LBB20_117:                             # %if.then.473
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	40(%r13), %rax
	movb	$-115, (%rax)
	movq	40(%r13), %rax
	movb	$1, 1(%rax)
	jmp	.LBB20_143
.LBB20_99:                              # %if.else.252
                                        #   in Loop: Header=BB20_1 Depth=1
	leal	32768(%rax), %edx
	movq	40(%r13), %rcx
	cmpl	$65535, %edx            # imm = 0xFFFF
	ja	.LBB20_101
# BB#100:                               # %if.then.258
                                        #   in Loop: Header=BB20_1 Depth=1
	movb	$-121, (%rcx)
	movq	40(%r13), %rcx
	movb	%al, 1(%rcx)
	movq	40(%r13), %rcx
	movb	%ah, 2(%rcx)  # NOREX
	movl	$0, 12(%r13)
	movl	$3, 16(%r13)
	jmp	.LBB20_145
.LBB20_141:                             # %if.else.586
                                        #   in Loop: Header=BB20_1 Depth=1
	movb	$-111, (%rcx)
	movl	$1, %ecx
	subl	%eax, %ecx
	movq	40(%r13), %rax
	movb	%cl, 1(%rax)
.LBB20_142:                             # %if.end.593
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	16(%rsp), %r14          # 8-byte Reload
	movq	8(%rsp), %r12           # 8-byte Reload
.LBB20_143:                             # %if.end.593
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$0, 12(%r13)
.LBB20_144:                             # %do.cond
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$2, 16(%r13)
.LBB20_145:                             # %do.cond
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$0, 28(%r13)
	movl	$1, 88(%r13)
	movq	$4, (%r13)
	.align	16, 0x90
.LBB20_318:                             # %do.cond
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	%r12, %rbp
	subq	%r14, %rbp
	cmpq	$16384, %rbp            # imm = 0x4000
	movl	$16384, %eax            # imm = 0x4000
	jne	.LBB20_319
.LBB20_320:                             # %cleanup.1299
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB20_323:                             # %if.else.55.i
	movq	stderr(%rip), %rdi
	movl	$.L.str.310, %esi
	jmp	.LBB20_17
.LBB20_260:                             # %if.then.8.i.123
	movq	stderr(%rip), %rdi
	movl	$.L.str.82, %esi
	jmp	.LBB20_17
.LBB20_16:                              # %if.then.46
	movq	stderr(%rip), %rdi
	movl	$.L.str.72, %esi
	jmp	.LBB20_17
.LBB20_302:                             # %if.else.1256
	movq	stderr(%rip), %rdi
	movl	$.L.str.80, %esi
.LBB20_17:                              # %if.then.46
	xorl	%eax, %eax
	callq	fprintf
	movl	$1, %edi
	callq	exit
.LBB20_321:                             # %if.then.172
	movq	stderr(%rip), %rdi
	movl	$.L.str.73, %esi
	xorl	%eax, %eax
	movl	%r15d, %edx
	callq	fprintf
	movl	$1, %edi
	callq	exit
.LBB20_281:                             # %if.then.1232
	movq	stderr(%rip), %rdi
	movl	$.L.str.79, %esi
	jmp	.LBB20_17
.LBB20_316:                             # %if.else.1284
	movq	stderr(%rip), %rdi
	movl	$.L.str.81, %esi
	jmp	.LBB20_17
.Lfunc_end20:
	.size	pscompact_getcompactedblock, .Lfunc_end20-pscompact_getcompactedblock
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI20_0:
	.quad	.LBB20_3
	.quad	.LBB20_229
	.quad	.LBB20_189
	.quad	.LBB20_278
	.quad	.LBB20_149
	.quad	.LBB20_185
.LJTI20_1:
	.quad	.LBB20_164
	.quad	.LBB20_162
	.quad	.LBB20_158
	.quad	.LBB20_176
	.quad	.LBB20_166
	.quad	.LBB20_168
.LJTI20_2:
	.quad	.LBB20_160
	.quad	.LBB20_180
	.quad	.LBB20_181
	.quad	.LBB20_182
.LJTI20_3:
	.quad	.LBB20_28
	.quad	.LBB20_30
	.quad	.LBB20_40
	.quad	.LBB20_40
	.quad	.LBB20_40
	.quad	.LBB20_28
	.quad	.LBB20_33
	.quad	.LBB20_36
	.quad	.LBB20_38
	.quad	.LBB20_28
	.quad	.LBB20_28
	.quad	.LBB20_28
	.quad	.LBB20_28

	.text
	.globl	process_initfile
	.align	16, 0x90
	.type	process_initfile,@function
process_initfile:                       # @process_initfile
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
	subq	$200, %rsp
.Ltmp86:
	.cfi_def_cfa_offset 256
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
	movq	%r9, 40(%rsp)           # 8-byte Spill
	movl	%r8d, 60(%rsp)          # 4-byte Spill
	movq	%rcx, %r13
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	%rsi, %r12
	movq	%rdi, %r15
	movl	$16384, %edi            # imm = 0x4000
	callq	malloc
	movq	%rax, %r14
	movl	$16412, %edi            # imm = 0x401C
	callq	malloc
	movq	%rax, %rbx
	movl	$1024, %edi             # imm = 0x400
	callq	malloc
	movq	%rax, %rbp
	movl	$1024, %edi             # imm = 0x400
	callq	malloc
	testq	%r14, %r14
	je	.LBB21_4
# BB#1:                                 # %entry
	testq	%rbx, %rbx
	je	.LBB21_4
# BB#2:                                 # %entry
	testq	%rbp, %rbp
	je	.LBB21_4
# BB#3:                                 # %entry
	testq	%rax, %rax
	je	.LBB21_4
# BB#5:                                 # %if.end
	movq	%r12, 24(%rsp)          # 8-byte Spill
	movq	%rbx, 64(%rsp)          # 8-byte Spill
	movb	$0, (%rbp)
	movq	%rax, %r12
	movq	%r12, 32(%rsp)          # 8-byte Spill
	movq	%rbp, %rdi
	movq	48(%rsp), %rsi          # 8-byte Reload
	callq	strcat
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	strcat
	movb	$0, (%r12)
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	strcat
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	strcat
	movl	$.L.str.28, %esi
	movq	%rbp, %rdi
	callq	fopen64
	movq	%rbp, %rsi
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB21_6
# BB#7:                                 # %if.end.14
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%r14, 16(%rsp)          # 8-byte Spill
	movl	$.L.str.28, %esi
	movq	24(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	callq	fopen64
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB21_8
# BB#9:                                 # %if.end.20
	movl	$linebuf, %edi
	xorl	%esi, %esi
	movl	$2048, %edx             # imm = 0x800
	callq	memset
	movl	$1, %edi
	movl	$40, %esi
	callq	calloc
	movq	%rax, %r14
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	%rax, 16(%r14)
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	%r15, %rsi
	movq	%rbp, %rdx
	movq	%r12, %rcx
	callq	merge_to_ps
	movq	%rbp, %rdi
	callq	fclose
	movq	%r12, %rdi
	callq	fclose
	movq	in_block_head(%rip), %rax
	movq	%rax, 72(%rsp)
	movq	$0, 80(%rsp)
	movl	$16392, %edi            # imm = 0x4008
	callq	malloc
	movq	%rax, %r15
	movl	$0, 88(%rsp)
	movl	$80, %edi
	callq	malloc
	movq	%rax, %rbx
	movq	%rbx, 120(%rsp)
	movl	$80, %edi
	callq	malloc
	movq	%rax, 128(%rsp)
	testq	%rax, %rax
	je	.LBB21_44
# BB#10:                                # %if.end.20
	testq	%rbx, %rbx
	je	.LBB21_44
# BB#11:                                # %pscompact_start.exit
	movl	$80, 96(%rsp)
	movl	$80, 108(%rsp)
	movl	$0, 92(%rsp)
	movl	$0, 116(%rsp)
	movq	$ib_getc, 136(%rsp)
	movq	$ib_ungetc, 144(%rsp)
	movq	$ib_feof, 152(%rsp)
	leaq	72(%rsp), %rax
	movq	%rax, 160(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 168(%rsp)
	movabsq	$4294967296, %rax       # imm = 0x100000000
	movq	%rax, 184(%rsp)
	leaq	8(%r15), %rsi
	leaq	88(%rsp), %rdi
	callq	pscompact_getcompactedblock
	movq	%rax, %rbx
	movq	$0, (%r15)
	cmpl	$16384, %ebx            # imm = 0x4000
	movq	%r15, %r12
	jne	.LBB21_14
# BB#12:
	leaq	88(%rsp), %r13
	movq	%r15, %rbp
	.align	16, 0x90
.LBB21_13:                              # %do.cond.thread
                                        # =>This Inner Loop Header: Depth=1
	movl	$16392, %edi            # imm = 0x4008
	callq	malloc
	movq	%rax, %r12
	movq	%r12, (%rbp)
	leaq	8(%r12), %rsi
	movq	%r13, %rdi
	callq	pscompact_getcompactedblock
	movq	%rax, %rbx
	movq	$0, (%r12)
	cmpl	$16384, %ebx            # imm = 0x4000
	movq	%r12, %rbp
	je	.LBB21_13
.LBB21_14:                              # %do.end
	movq	120(%rsp), %rdi
	callq	free
	movq	128(%rsp), %rdi
	callq	free
	movq	in_block_head(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB21_16
	.align	16, 0x90
.LBB21_15:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdi), %rbp
	callq	free
	movq	%rbp, in_block_head(%rip)
	testq	%rbp, %rbp
	movq	%rbp, %rdi
	jne	.LBB21_15
.LBB21_16:                              # %while.end
	movq	%r15, in_block_head(%rip)
	movq	%r12, in_block_tail(%rip)
	movslq	%ebx, %rax
	leaq	8(%r12,%rax), %rax
	movq	%rax, curr_block_p(%rip)
	movq	$0, 8(%r14)
	xorl	%ebx, %ebx
	testq	%r15, %r15
	je	.LBB21_19
# BB#17:                                # %while.body.47.lr.ph
	xorl	%ebx, %ebx
	movl	$16384, %ecx            # imm = 0x4000
	.align	16, 0x90
.LBB21_18:                              # %while.body.47
                                        # =>This Inner Loop Header: Depth=1
	leaq	8(%r15), %rdx
	movq	%rax, %rsi
	subq	%rdx, %rsi
	cmpq	%r12, %r15
	cmovneq	%rcx, %rsi
	addq	%rsi, %rbx
	movq	%rbx, 8(%r14)
	movq	(%r15), %r15
	testq	%r15, %r15
	jne	.LBB21_18
.LBB21_19:                              # %while.end.54
	movq	%rbx, (%r14)
	movq	%rbx, %rax
	shlq	$18, %rax
	movl	$4294705152, %ecx       # imm = 0xFFFC0000
	addq	%rax, %rcx
	movabsq	$-4294967296, %rbp      # imm = 0xFFFFFFFF00000000
	andq	%rcx, %rbp
	movabsq	$4294967296, %rax       # imm = 0x100000000
	addq	%rax, %rbp
	sarq	$32, %rbp
	movl	$8, %esi
	movq	%rbp, %rdi
	callq	calloc
	movq	%rax, 24(%r14)
	movl	$8, %esi
	movq	%rbp, %rdi
	callq	calloc
	movq	%rax, %r15
	movq	%r15, 32(%r14)
	movq	in_block_head(%rip), %rbp
	testq	%rbp, %rbp
	movq	40(%rsp), %r12          # 8-byte Reload
	je	.LBB21_31
# BB#20:                                # %while.body.68.lr.ph
	xorl	%ebx, %ebx
	leaq	192(%rsp), %r15
	.align	16, 0x90
.LBB21_21:                              # %while.body.68
                                        # =>This Inner Loop Header: Depth=1
	movl	curr_block_p(%rip), %eax
	leaq	8(%rbp), %rdx
	cmpq	in_block_tail(%rip), %rbp
	movq	$16412, 192(%rsp)       # imm = 0x401C
	je	.LBB21_22
# BB#23:                                # %select.mid
                                        #   in Loop: Header=BB21_21 Depth=1
	movl	$16384, %r13d           # imm = 0x4000
	jmp	.LBB21_24
	.align	16, 0x90
.LBB21_22:                              #   in Loop: Header=BB21_21 Depth=1
	subl	%edx, %eax
	movslq	%eax, %r13
.LBB21_24:                              # %select.end
                                        #   in Loop: Header=BB21_21 Depth=1
	cmpl	$0, 60(%rsp)            # 4-byte Folded Reload
	je	.LBB21_28
# BB#25:                                # %if.then.82
                                        #   in Loop: Header=BB21_21 Depth=1
	movq	64(%rsp), %rdi          # 8-byte Reload
	movq	%r15, %rsi
	movq	%r13, %rcx
	callq	compress
	testl	%eax, %eax
	jne	.LBB21_27
# BB#26:                                # %if.then.82.if.end.97_crit_edge
                                        #   in Loop: Header=BB21_21 Depth=1
	movq	192(%rsp), %r13
	movq	64(%rsp), %r12          # 8-byte Reload
	jmp	.LBB21_29
	.align	16, 0x90
.LBB21_28:                              # %if.else
                                        #   in Loop: Header=BB21_21 Depth=1
	movq	64(%rsp), %r12          # 8-byte Reload
	movq	%r12, %rdi
	movq	%rdx, %rsi
	movq	%r13, %rdx
	callq	memcpy
	movq	%r13, 192(%rsp)
.LBB21_29:                              # %if.end.97
                                        #   in Loop: Header=BB21_21 Depth=1
	movq	%r12, 64(%rsp)          # 8-byte Spill
	movq	24(%r14), %rax
	movq	%r13, (%rax,%rbx)
	movq	192(%rsp), %rdi
	callq	malloc
	movq	32(%r14), %rcx
	movq	%rax, (%rcx,%rbx)
	movq	32(%r14), %rax
	movq	(%rax,%rbx), %rdi
	movq	192(%rsp), %rdx
	movq	%r12, %rsi
	callq	memcpy
	movq	(%rbp), %rbp
	addq	$8, %rbx
	testq	%rbp, %rbp
	jne	.LBB21_21
# BB#30:                                # %while.cond.65.if.then.i.83_crit_edge
	movq	(%r14), %rbx
	movq	32(%r14), %r15
	movq	40(%rsp), %r12          # 8-byte Reload
.LBB21_31:                              # %if.then.i.83
	movq	264(%rsp), %rdi
	movq	256(%rsp), %r8
	movl	(%r12), %ecx
	movq	%r14, %rsi
	movl	60(%rsp), %edx          # 4-byte Reload
	callq	inode_write
	testq	%r15, %r15
	movq	8(%rsp), %rbp           # 8-byte Reload
	je	.LBB21_40
# BB#32:                                # %for.cond.preheader.i
	addq	$16383, %rbx            # imm = 0x3FFF
	shrq	$14, %rbx
	testl	%ebx, %ebx
	jle	.LBB21_39
# BB#33:                                # %for.body.i.preheader
	movq	%rbp, %r13
	xorl	%ebp, %ebp
	jmp	.LBB21_34
	.align	16, 0x90
.LBB21_37:                              # %for.inc.for.body_crit_edge.i
                                        #   in Loop: Header=BB21_34 Depth=1
	movq	32(%r14), %r15
.LBB21_34:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15,%rbp,8), %rdi
	testq	%rdi, %rdi
	je	.LBB21_36
# BB#35:                                # %if.then.6.i
                                        #   in Loop: Header=BB21_34 Depth=1
	callq	free
.LBB21_36:                              # %for.inc.i
                                        #   in Loop: Header=BB21_34 Depth=1
	incq	%rbp
	cmpl	%ebp, %ebx
	jne	.LBB21_37
# BB#38:                                # %for.cond.for.end_crit_edge.i
	movq	32(%r14), %r15
	movq	%r13, %rbp
.LBB21_39:                              # %for.end.i
	movq	%r15, %rdi
	callq	free
.LBB21_40:                              # %if.end.11.i
	movq	24(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB21_42
# BB#41:                                # %if.then.13.i
	callq	free
.LBB21_42:                              # %inode_clear.exit
	movq	%r14, %rdi
	callq	free
	incl	(%r12)
	movq	64(%rsp), %rdi          # 8-byte Reload
	callq	free
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	free
	movq	%rbp, %rdi
	callq	free
	movq	32(%rsp), %rdi          # 8-byte Reload
	callq	free
	xorl	%eax, %eax
	jmp	.LBB21_43
.LBB21_4:                               # %if.then
	movl	$.L.str.27, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$-1, %eax
	jmp	.LBB21_43
.LBB21_6:                               # %if.then.12
	movl	$.L.str.29, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$-1, %eax
	jmp	.LBB21_43
.LBB21_8:                               # %if.then.17
	movl	$.L.str.30, %edi
	xorl	%eax, %eax
	movq	%rbx, %rsi
	callq	printf
	movq	%rbp, %rdi
	callq	fclose
	movl	$-1, %eax
.LBB21_43:                              # %cleanup
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB21_27:                              # %if.then.89
	movl	$.L.str.25, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$1, %edi
	callq	exit
.LBB21_44:                              # %if.then.i
	movq	stderr(%rip), %rdi
	movl	$.L.str.71, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$1, %edi
	callq	exit
.Lfunc_end21:
	.size	process_initfile, .Lfunc_end21-process_initfile
	.cfi_endproc

	.globl	merge_to_ps
	.align	16, 0x90
	.type	merge_to_ps,@function
merge_to_ps:                            # @merge_to_ps
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp93:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp94:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp95:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp96:
	.cfi_def_cfa_offset 40
	subq	$1032, %rsp             # imm = 0x408
.Ltmp97:
	.cfi_def_cfa_offset 1072
.Ltmp98:
	.cfi_offset %rbx, -40
.Ltmp99:
	.cfi_offset %r12, -32
.Ltmp100:
	.cfi_offset %r14, -24
.Ltmp101:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdx, %r12
	movq	%rdi, %r15
	leaq	(%rsp), %rsi
	movl	$1024, %edx             # imm = 0x400
	movq	%r12, %rdi
	callq	rl
	cmpb	$0, (%rsp)
	je	.LBB22_3
# BB#1:
	leaq	(%rsp), %rbx
	.align	16, 0x90
.LBB22_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$linebuf, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdx
	callq	sprintf
	movl	$linebuf, %edi
	callq	wl
	movl	$1024, %edx             # imm = 0x400
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	rl
	cmpb	$0, (%rsp)
	jne	.LBB22_2
.LBB22_3:                               # %while.end
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	movq	%r12, %rdx
	movq	%r14, %rcx
	callq	mergefile
	addq	$1032, %rsp             # imm = 0x408
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end22:
	.size	merge_to_ps, .Lfunc_end22-merge_to_ps
	.cfi_endproc

	.align	16, 0x90
	.type	ib_getc,@function
ib_getc:                                # @ib_getc
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	movl	8(%rdi), %ecx
	cmpq	in_block_tail(%rip), %rax
	jne	.LBB23_3
# BB#1:                                 # %land.lhs.true
	movslq	%ecx, %r8
	movq	curr_block_p(%rip), %rsi
	leaq	8(%rax), %rdx
	subq	%rdx, %rsi
	cmpq	%rsi, %r8
	jne	.LBB23_3
# BB#2:                                 # %if.then
	movl	$1, 12(%rdi)
	movl	$-1, %eax
	retq
.LBB23_3:                               # %if.end
	cmpl	$16384, %ecx            # imm = 0x4000
	jne	.LBB23_5
# BB#4:                                 # %if.then.6
	movq	(%rax), %rax
	movq	%rax, (%rdi)
	movl	$0, 8(%rdi)
	xorl	%ecx, %ecx
.LBB23_5:                               # %if.end.10
	leal	1(%rcx), %edx
	movl	%edx, 8(%rdi)
	movslq	%ecx, %rcx
	movzbl	8(%rax,%rcx), %eax
	retq
.Lfunc_end23:
	.size	ib_getc, .Lfunc_end23-ib_getc
	.cfi_endproc

	.align	16, 0x90
	.type	ib_ungetc,@function
ib_ungetc:                              # @ib_ungetc
	.cfi_startproc
# BB#0:                                 # %entry
	decl	8(%rsi)
	retq
.Lfunc_end24:
	.size	ib_ungetc, .Lfunc_end24-ib_ungetc
	.cfi_endproc

	.align	16, 0x90
	.type	ib_feof,@function
ib_feof:                                # @ib_feof
	.cfi_startproc
# BB#0:                                 # %entry
	movl	12(%rdi), %eax
	retq
.Lfunc_end25:
	.size	ib_feof, .Lfunc_end25-ib_feof
	.cfi_endproc

	.globl	flush_line_buf
	.align	16, 0x90
	.type	flush_line_buf,@function
flush_line_buf:                         # @flush_line_buf
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
	pushq	%rbx
.Ltmp105:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp106:
	.cfi_def_cfa_offset 48
.Ltmp107:
	.cfi_offset %rbx, -40
.Ltmp108:
	.cfi_offset %r14, -32
.Ltmp109:
	.cfi_offset %r15, -24
.Ltmp110:
	.cfi_offset %rbp, -16
	movl	%edi, %ebp
	cmpl	$1025, %ebp             # imm = 0x401
	jl	.LBB26_1
# BB#8:                                 # %if.then
	movl	$.L.str.31, %edi
	movl	$1024, %edx             # imm = 0x400
	xorl	%eax, %eax
	movl	%ebp, %esi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	printf                  # TAILCALL
.LBB26_1:                               # %if.end
	cmpq	$0, in_block_tail(%rip)
	je	.LBB26_3
# BB#2:                                 # %if.end.do.body.preheader_crit_edge
	movq	curr_block_end(%rip), %r14
	xorl	%r15d, %r15d
	movq	curr_block_p(%rip), %rdi
	jmp	.LBB26_4
.LBB26_3:                               # %if.then.2
	movl	$1, %edi
	movl	$16392, %esi            # imm = 0x4008
	callq	calloc
	movq	%rax, %r14
	movq	%r14, in_block_tail(%rip)
	movq	%r14, in_block_head(%rip)
	movq	$0, (%r14)
	leaq	8(%r14), %rdi
	movq	%rdi, curr_block_p(%rip)
	addq	$16392, %r14            # imm = 0x4008
	movq	%r14, curr_block_end(%rip)
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB26_4:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	%ebp, %rax
	subq	%rdi, %r14
	cmpq	%r14, %rax
	cmovgq	%r14, %rax
	cmovll	%ebp, %r14d
	movslq	%r15d, %rcx
	leaq	linebuf(%rcx), %rsi
	movslq	%eax, %rbx
	movq	%rbx, %rdx
	callq	memcpy
	addq	curr_block_p(%rip), %rbx
	movq	%rbx, curr_block_p(%rip)
	movq	curr_block_end(%rip), %rax
	cmpq	%rax, %rbx
	jne	.LBB26_6
# BB#5:                                 # %if.then.19
                                        #   in Loop: Header=BB26_4 Depth=1
	movl	$1, %edi
	movl	$16392, %esi            # imm = 0x4008
	callq	calloc
	movq	in_block_tail(%rip), %rcx
	movq	%rax, (%rcx)
	movq	in_block_tail(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, in_block_tail(%rip)
	movq	$0, (%rax)
	movq	in_block_tail(%rip), %rax
	leaq	8(%rax), %rbx
	movq	%rbx, curr_block_p(%rip)
	addq	$16392, %rax            # imm = 0x4008
	movq	%rax, curr_block_end(%rip)
.LBB26_6:                               # %if.end.27
                                        #   in Loop: Header=BB26_4 Depth=1
	leal	(%r15,%r14), %r15d
	xorl	%ecx, %ecx
	subl	%r14d, %ebp
	cmovsl	%ecx, %ebp
	testl	%ebp, %ebp
	movq	%rbx, %rdi
	movq	%rax, %r14
	jg	.LBB26_4
# BB#7:                                 # %do.end
	movl	$linebuf, %edi
	xorl	%esi, %esi
	movl	$2048, %edx             # imm = 0x800
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	memset                  # TAILCALL
.Lfunc_end26:
	.size	flush_line_buf, .Lfunc_end26-flush_line_buf
	.cfi_endproc

	.globl	rl
	.align	16, 0x90
	.type	rl,@function
rl:                                     # @rl
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp112:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp113:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp114:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp115:
	.cfi_def_cfa_offset 48
.Ltmp116:
	.cfi_offset %rbx, -48
.Ltmp117:
	.cfi_offset %r12, -40
.Ltmp118:
	.cfi_offset %r14, -32
.Ltmp119:
	.cfi_offset %r15, -24
.Ltmp120:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %r14
	movq	%rdi, %r12
	callq	_IO_getc
	xorl	%ecx, %ecx
	testl	%eax, %eax
	js	.LBB27_11
# BB#1:                                 # %while.cond.preheader
	xorl	%ebp, %ebp
	cmpl	$2, %r15d
	jl	.LBB27_10
# BB#2:                                 # %while.body.lr.ph
	decl	%r15d
	movslq	%r15d, %rbx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB27_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	testl	%eax, %eax
	js	.LBB27_10
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB27_3 Depth=1
	cmpl	$10, %eax
	je	.LBB27_10
# BB#5:                                 # %if.end.5
                                        #   in Loop: Header=BB27_3 Depth=1
	cmpl	$13, %eax
	je	.LBB27_6
# BB#9:                                 # %if.end.14
                                        #   in Loop: Header=BB27_3 Depth=1
	movb	%al, (%r14,%rbp)
	incq	%rbp
	movq	%r12, %rdi
	callq	_IO_getc
	cmpq	%rbx, %rbp
	jl	.LBB27_3
	jmp	.LBB27_10
.LBB27_6:                               # %if.then.7
	movq	%r12, %rdi
	callq	_IO_getc
	cmpl	$10, %eax
	je	.LBB27_10
# BB#7:                                 # %if.then.7
	testl	%eax, %eax
	js	.LBB27_10
# BB#8:                                 # %if.then.11
	movl	%eax, %edi
	movq	%r12, %rsi
	callq	ungetc
.LBB27_10:                              # %while.end
	movslq	%ebp, %rax
	movb	$0, (%r14,%rax)
	movl	$1, %ecx
.LBB27_11:                              # %cleanup
	movl	%ecx, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end27:
	.size	rl, .Lfunc_end27-rl
	.cfi_endproc

	.globl	wsc
	.align	16, 0x90
	.type	wsc,@function
wsc:                                    # @wsc
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
	pushq	%rbx
.Ltmp124:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp125:
	.cfi_def_cfa_offset 48
.Ltmp126:
	.cfi_offset %rbx, -40
.Ltmp127:
	.cfi_offset %r14, -32
.Ltmp128:
	.cfi_offset %r15, -24
.Ltmp129:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	cmpl	$1023, %ebp             # imm = 0x3FF
	jg	.LBB28_10
# BB#1:                                 # %for.cond.preheader
	testl	%ebp, %ebp
	jle	.LBB28_9
# BB#2:
	xorl	%r14d, %r14d
	movl	$.L.str.33, %r15d
	.align	16, 0x90
.LBB28_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %edx
	movb	%dl, %al
	addb	$-32, %al
	movzbl	%al, %eax
	cmpl	$94, %eax
	movl	$.L.str.32, %esi
	ja	.LBB28_5
# BB#4:                                 # %cond.false
                                        #   in Loop: Header=BB28_3 Depth=1
	cmpl	$92, %edx
	movl	$.L.str.34, %esi
	cmoveq	%r15, %rsi
	cmpl	$39, %edx
	cmoveq	%r15, %rsi
.LBB28_5:                               # %cond.end
                                        #   in Loop: Header=BB28_3 Depth=1
	movl	$linebuf, %edi
	xorl	%eax, %eax
	callq	sprintf
	movl	$linebuf, %edi
	callq	strlen
	movl	%eax, %edi
	callq	flush_line_buf
	incl	%r14d
	cmpl	$15, %r14d
	jne	.LBB28_7
# BB#6:                                 # %if.then.15
                                        #   in Loop: Header=BB28_3 Depth=1
	movb	$10, linebuf(%rip)
	movl	$1, %edi
	callq	flush_line_buf
	xorl	%r14d, %r14d
.LBB28_7:                               # %if.end.16
                                        #   in Loop: Header=BB28_3 Depth=1
	incq	%rbx
	decl	%ebp
	jne	.LBB28_3
# BB#8:                                 # %for.end
	testl	%r14d, %r14d
	je	.LBB28_9
# BB#11:                                # %if.then.20
	movl	$linebuf, %edi
	callq	strlen
	movl	%eax, %edi
	callq	flush_line_buf
	movb	$10, linebuf(%rip)
	movl	$1, %edi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	flush_line_buf          # TAILCALL
.LBB28_9:                               # %if.end.23
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB28_10:                              # %if.then
	movl	$1, %edi
	callq	exit
.Lfunc_end28:
	.size	wsc, .Lfunc_end28-wsc
	.cfi_endproc

	.globl	ws
	.align	16, 0x90
	.type	ws,@function
ws:                                     # @ws
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp130:
	.cfi_def_cfa_offset 16
.Ltmp131:
	.cfi_offset %rbx, -16
	movl	%esi, %ebx
	movq	%rdi, %rax
	cmpl	$1024, %ebx             # imm = 0x400
	jge	.LBB29_1
# BB#2:                                 # %if.end
	movslq	%ebx, %rdx
	movl	$linebuf, %edi
	movq	%rax, %rsi
	callq	memcpy
	movl	%ebx, %edi
	popq	%rbx
	jmp	flush_line_buf          # TAILCALL
.LBB29_1:                               # %if.then
	movl	$1, %edi
	callq	exit
.Lfunc_end29:
	.size	ws, .Lfunc_end29-ws
	.cfi_endproc

	.globl	wl
	.align	16, 0x90
	.type	wl,@function
wl:                                     # @wl
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp132:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp133:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp134:
	.cfi_def_cfa_offset 32
.Ltmp135:
	.cfi_offset %rbx, -24
.Ltmp136:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	callq	strlen
	movq	%rax, %rbx
	cmpl	$1024, %ebx             # imm = 0x400
	jge	.LBB30_1
# BB#2:                                 # %ws.exit
	movslq	%ebx, %rdx
	movl	$linebuf, %edi
	movq	%r14, %rsi
	callq	memcpy
	movl	%ebx, %edi
	callq	flush_line_buf
	movl	$linebuf, %edi
	movl	$.L.str.19, %esi
	movl	$1, %edx
	callq	memcpy
	movl	$1, %edi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	flush_line_buf          # TAILCALL
.LBB30_1:                               # %if.then.i
	movl	$1, %edi
	callq	exit
.Lfunc_end30:
	.size	wl, .Lfunc_end30-wl
	.cfi_endproc

	.globl	doit
	.align	16, 0x90
	.type	doit,@function
doit:                                   # @doit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp137:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp138:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp139:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp140:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp141:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp142:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp143:
	.cfi_def_cfa_offset 64
.Ltmp144:
	.cfi_offset %rbx, -56
.Ltmp145:
	.cfi_offset %r12, -48
.Ltmp146:
	.cfi_offset %r13, -40
.Ltmp147:
	.cfi_offset %r14, -32
.Ltmp148:
	.cfi_offset %r15, -24
.Ltmp149:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	testl	%esi, %esi
	jne	.LBB31_44
# BB#1:
	xorl	%r14d, %r14d
	jmp	.LBB31_2
	.align	16, 0x90
.LBB31_49:                              # %while.body
                                        #   in Loop: Header=BB31_2 Depth=1
	incq	%rbx
.LBB31_2:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %r13d
	cmpl	$9, %r13d
	je	.LBB31_49
# BB#3:                                 # %while.cond
                                        #   in Loop: Header=BB31_2 Depth=1
	movzbl	%r13b, %ebp
	cmpl	$32, %ebp
	je	.LBB31_49
# BB#4:                                 # %while.cond
	testb	%r13b, %r13b
	je	.LBB31_45
# BB#5:                                 # %if.end.9
	movl	$.L.str.35, %edi
	callq	strlen
	cmpq	$3, %rax
	ja	.LBB31_14
# BB#6:                                 # %cond.true.15
	movl	%r13d, %ecx
	addl	$-37, %ecx
	jne	.LBB31_13
# BB#7:                                 # %cond.true.15
	testq	%rax, %rax
	je	.LBB31_13
# BB#8:                                 # %if.then.25
	movzbl	1(%rbx), %ecx
	addl	$-69, %ecx
	cmpq	$2, %rax
	jb	.LBB31_13
# BB#9:                                 # %if.then.25
	testl	%ecx, %ecx
	jne	.LBB31_13
# BB#10:                                # %if.then.35
	movzbl	2(%rbx), %ecx
	addl	$-78, %ecx
	cmpq	$3, %rax
	jb	.LBB31_13
# BB#11:                                # %if.then.35
	testl	%ecx, %ecx
	jne	.LBB31_13
# BB#12:                                # %if.then.45
	movzbl	3(%rbx), %ecx
	addl	$-68, %ecx
.LBB31_13:                              # %cond.end
	testl	%ecx, %ecx
	jne	.LBB31_15
	jmp	.LBB31_44
.LBB31_14:                              # %cond.false.56
	movl	$.L.str.35, %esi
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	strncmp
	testl	%eax, %eax
	je	.LBB31_44
.LBB31_15:                              # %if.end.60
	xorl	%r14d, %r14d
	testb	%r13b, %r13b
	movq	%rbx, %r15
	je	.LBB31_43
# BB#16:                                # %if.end.60
	cmpl	$37, %ebp
	je	.LBB31_45
# BB#17:
	movabsq	$87960930230273, %r12   # imm = 0x500000002001
	movq	%rbx, %rbp
	movq	%rbx, %r15
	jmp	.LBB31_18
	.align	16, 0x90
.LBB31_48:                              # %for.inc.for.body_crit_edge
                                        #   in Loop: Header=BB31_18 Depth=1
	incq	%rbp
	movb	(%rbp), %r13b
.LBB31_18:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movsbl	%r13b, %eax
	cmpl	$46, %eax
	jle	.LBB31_19
# BB#25:                                # %for.body
                                        #   in Loop: Header=BB31_18 Depth=1
	leal	-47(%rax), %ecx
	cmpl	$46, %ecx
	ja	.LBB31_26
# BB#33:                                # %for.body
                                        #   in Loop: Header=BB31_18 Depth=1
	btq	%rcx, %r12
	jae	.LBB31_34
.LBB31_28:                              # %sw.bb.99
                                        #   in Loop: Header=BB31_18 Depth=1
	testl	%r14d, %r14d
	jne	.LBB31_32
# BB#29:                                # %sw.bb.99
                                        #   in Loop: Header=BB31_18 Depth=1
	cmpq	%rbx, %r15
	jbe	.LBB31_32
# BB#30:                                # %cond.false.116
                                        #   in Loop: Header=BB31_18 Depth=1
	movsbl	-1(%r15), %esi
	movl	$.L.str.37, %edi
	callq	strchr
	testq	%rax, %rax
	je	.LBB31_32
# BB#31:                                # %if.then.121
                                        #   in Loop: Header=BB31_18 Depth=1
	decq	%r15
	movb	(%rbp), %al
	movb	%al, (%r15)
.LBB31_32:                              # %if.end.123
                                        #   in Loop: Header=BB31_18 Depth=1
	movzbl	(%rbp), %eax
	cmpl	$40, %eax
	sete	%al
	movzbl	%al, %eax
	addl	%eax, %r14d
	jmp	.LBB31_47
	.align	16, 0x90
.LBB31_19:                              # %for.body
                                        #   in Loop: Header=BB31_18 Depth=1
	leal	-32(%rax), %ecx
	cmpl	$9, %ecx
	jbe	.LBB31_24
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB31_18 Depth=1
	cmpl	$9, %eax
	jne	.LBB31_47
	jmp	.LBB31_21
.LBB31_24:                              # %for.body
                                        #   in Loop: Header=BB31_18 Depth=1
	jmpq	*.LJTI31_0(,%rcx,8)
.LBB31_21:                              # %sw.bb.74
                                        #   in Loop: Header=BB31_18 Depth=1
	testl	%r14d, %r14d
	jne	.LBB31_47
# BB#22:                                # %sw.bb.74
                                        #   in Loop: Header=BB31_18 Depth=1
	cmpq	%rbx, %r15
	jbe	.LBB31_47
# BB#23:                                # %cond.false.91
                                        #   in Loop: Header=BB31_18 Depth=1
	leaq	-1(%r15), %r14
	movsbl	-1(%r15), %esi
	movl	$.L.str.36, %edi
	callq	strchr
	testq	%rax, %rax
	cmovneq	%r14, %r15
	xorl	%r14d, %r14d
	jmp	.LBB31_47
.LBB31_34:                              # %for.body
                                        #   in Loop: Header=BB31_18 Depth=1
	cmpq	$45, %rcx
	jne	.LBB31_26
# BB#35:                                # %sw.bb.130
                                        #   in Loop: Header=BB31_18 Depth=1
	movb	1(%rbp), %al
	movb	%al, %cl
	addb	$-40, %cl
	movzbl	%cl, %ecx
	cmpl	$52, %ecx
	ja	.LBB31_47
# BB#36:                                # %sw.bb.130
                                        #   in Loop: Header=BB31_18 Depth=1
	movabsq	$4503599627370499, %rdx # imm = 0x10000000000003
	btq	%rcx, %rdx
	jae	.LBB31_47
# BB#37:                                # %if.then.144
                                        #   in Loop: Header=BB31_18 Depth=1
	incq	%rbp
	movb	%al, 1(%r15)
	incq	%r15
	jmp	.LBB31_47
	.align	16, 0x90
.LBB31_26:                              # %for.body
                                        #   in Loop: Header=BB31_18 Depth=1
	cmpl	$123, %eax
	je	.LBB31_28
# BB#27:                                # %for.body
                                        #   in Loop: Header=BB31_18 Depth=1
	cmpl	$125, %eax
	je	.LBB31_28
.LBB31_47:                              # %for.inc
                                        #   in Loop: Header=BB31_18 Depth=1
	movb	1(%rbp), %al
	movb	%al, 1(%r15)
	incq	%r15
	testb	%al, %al
	jne	.LBB31_48
	jmp	.LBB31_39
.LBB31_38:                              # %sw.bb
                                        #   in Loop: Header=BB31_18 Depth=1
	testl	%r14d, %r14d
	jne	.LBB31_47
	jmp	.LBB31_39
.LBB31_46:                              # %sw.bb.129
                                        #   in Loop: Header=BB31_18 Depth=1
	decl	%r14d
	jmp	.LBB31_47
	.align	16, 0x90
.LBB31_42:                              # %while.cond.150.backedge
                                        #   in Loop: Header=BB31_39 Depth=1
	decq	%r15
.LBB31_39:                              # %while.cond.150.preheader
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rbx, %r15
	jbe	.LBB31_43
# BB#40:                                # %land.rhs
                                        #   in Loop: Header=BB31_39 Depth=1
	movzbl	-1(%r15), %eax
	cmpl	$32, %eax
	je	.LBB31_42
# BB#41:                                # %land.rhs
                                        #   in Loop: Header=BB31_39 Depth=1
	movzbl	%al, %eax
	cmpl	$9, %eax
	je	.LBB31_42
.LBB31_43:                              # %while.end.165
	movb	$0, (%r15)
.LBB31_44:                              # %cleanup
	movq	%rbx, %r14
.LBB31_45:                              # %cleanup
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end31:
	.size	doit, .Lfunc_end31-doit
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI31_0:
	.quad	.LBB31_21
	.quad	.LBB31_47
	.quad	.LBB31_47
	.quad	.LBB31_47
	.quad	.LBB31_47
	.quad	.LBB31_38
	.quad	.LBB31_47
	.quad	.LBB31_47
	.quad	.LBB31_28
	.quad	.LBB31_46

	.text
	.globl	hex_string_to_binary
	.align	16, 0x90
	.type	hex_string_to_binary,@function
hex_string_to_binary:                   # @hex_string_to_binary
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp150:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp151:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp152:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp153:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp154:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp155:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp156:
	.cfi_def_cfa_offset 80
.Ltmp157:
	.cfi_offset %rbx, -56
.Ltmp158:
	.cfi_offset %r12, -48
.Ltmp159:
	.cfi_offset %r13, -40
.Ltmp160:
	.cfi_offset %r14, -32
.Ltmp161:
	.cfi_offset %r15, -24
.Ltmp162:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movl	$65535, %edi            # imm = 0xFFFF
	callq	malloc
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB32_3
# BB#1:                                 # %while.cond.preheader
	movq	%r15, %rdi
	callq	_IO_getc
	movl	%eax, %ebp
	testl	%ebp, %ebp
	movq	%r12, %rbx
	js	.LBB32_17
# BB#2:                                 # %while.body.lr.ph.lr.ph.lr.ph
	callq	__ctype_b_loc
	movq	%rax, %r14
	leaq	65535(%r12), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	movq	%r12, %rbx
	xorl	%r13d, %r13d
.LBB32_11:                              # %while.body.lr.ph.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_5 Depth 2
	movq	%r12, 8(%rsp)           # 8-byte Spill
	movl	%r13d, %r12d
	.align	16, 0x90
.LBB32_5:                               # %while.body
                                        #   Parent Loop BB32_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%ebp, %rax
	movq	(%r14), %rcx
	movzwl	(%rcx,%rax,2), %eax
	testb	$16, %ah
	jne	.LBB32_6
# BB#12:                                # %if.else.31
                                        #   in Loop: Header=BB32_5 Depth=2
	testb	$32, %ah
	jne	.LBB32_15
# BB#13:                                # %if.else.39
                                        #   in Loop: Header=BB32_5 Depth=2
	cmpl	$62, %ebp
	je	.LBB32_16
# BB#14:                                # %if.else.43
                                        #   in Loop: Header=BB32_5 Depth=2
	movl	$.L.str.40, %edi
	xorl	%eax, %eax
	movl	%ebp, %esi
	callq	printf
.LBB32_15:                              # %while.cond.backedge
                                        #   in Loop: Header=BB32_5 Depth=2
	movq	%r15, %rdi
	callq	_IO_getc
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB32_5
	jmp	.LBB32_16
.LBB32_6:                               # %if.then.5
                                        #   in Loop: Header=BB32_5 Depth=2
	movl	$48, %ecx
	testb	$8, %ah
	jne	.LBB32_8
# BB#7:                                 # %cond.false
                                        #   in Loop: Header=BB32_5 Depth=2
	shrl	$4, %eax
	andl	$32, %eax
	orl	$65, %eax
	movl	%eax, %ecx
.LBB32_8:                               # %cond.end
                                        #   in Loop: Header=BB32_5 Depth=2
	subl	%ecx, %ebp
	movl	%r12d, %r13d
	xorl	$1, %r13d
	testl	%r12d, %r12d
	je	.LBB32_9
# BB#4:                                 # %if.else
                                        #   in Loop: Header=BB32_5 Depth=2
	movzbl	-1(%rbx), %eax
	addl	%ebp, %eax
	movb	%al, -1(%rbx)
	movq	%r15, %rdi
	callq	_IO_getc
	movl	%eax, %ebp
	testl	%ebp, %ebp
	movl	%r13d, %r12d
	jns	.LBB32_5
	jmp	.LBB32_16
.LBB32_9:                               # %if.then.20
                                        #   in Loop: Header=BB32_11 Depth=1
	cmpq	(%rsp), %rbx            # 8-byte Folded Reload
	je	.LBB32_21
# BB#10:                                # %if.end.25
                                        #   in Loop: Header=BB32_11 Depth=1
	shll	$4, %ebp
	movb	%bpl, (%rbx)
	incq	%rbx
	movq	%r15, %rdi
	callq	_IO_getc
	movl	%eax, %ebp
	testl	%ebp, %ebp
	movq	8(%rsp), %r12           # 8-byte Reload
	jns	.LBB32_11
	jmp	.LBB32_17
.LBB32_16:
	movq	8(%rsp), %r12           # 8-byte Reload
.LBB32_17:                              # %while.end
	subq	%r12, %rbx
	cmpl	$255, %ebx
	jg	.LBB32_19
# BB#18:                                # %if.end.62.thread
	movb	$-114, 21(%rsp)
	movb	%bl, 22(%rsp)
	leaq	21(%rsp), %rsi
	movl	$linebuf, %edi
	movl	$2, %edx
	callq	memcpy
	movl	$2, %edi
	callq	flush_line_buf
	jmp	.LBB32_20
.LBB32_19:                              # %if.end.62
	movb	$-113, 21(%rsp)
	movb	%bh, 22(%rsp)  # NOREX
	movb	%bl, 23(%rsp)
	leaq	21(%rsp), %rsi
	movl	$linebuf, %edi
	movl	$3, %edx
	callq	memcpy
	movl	$3, %edi
	callq	flush_line_buf
	cmpl	$1024, %ebx             # imm = 0x400
	jge	.LBB32_22
.LBB32_20:                              # %ws.exit
	movslq	%ebx, %rdx
	movl	$linebuf, %edi
	movq	%r12, %rsi
	callq	memcpy
	movl	%ebx, %edi
	callq	flush_line_buf
	movq	%r12, %rdi
	callq	free
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB32_3:                               # %if.then
	movl	$.L.str.38, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$1, %edi
	callq	exit
.LBB32_21:                              # %if.then.23
	movl	$.L.str.39, %edi
	movl	$65535, %esi            # imm = 0xFFFF
	xorl	%eax, %eax
	callq	printf
.LBB32_22:                              # %if.then.i
	movl	$1, %edi
	callq	exit
.Lfunc_end32:
	.size	hex_string_to_binary, .Lfunc_end32-hex_string_to_binary
	.cfi_endproc

	.globl	flush_buf
	.align	16, 0x90
	.type	flush_buf,@function
flush_buf:                              # @flush_buf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp163:
	.cfi_def_cfa_offset 16
.Ltmp164:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cmpb	$0, (%rbx)
	je	.LBB33_2
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	callq	wl
	movb	$0, (%rbx)
.LBB33_2:                               # %if.end
	popq	%rbx
	retq
.Lfunc_end33:
	.size	flush_buf, .Lfunc_end33-flush_buf
	.cfi_endproc

	.globl	prefix_open
	.align	16, 0x90
	.type	prefix_open,@function
prefix_open:                            # @prefix_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp165:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp166:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp167:
	.cfi_def_cfa_offset 32
.Ltmp168:
	.cfi_offset %rbx, -32
.Ltmp169:
	.cfi_offset %r14, -24
.Ltmp170:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	$1024, %edi             # imm = 0x400
	callq	malloc
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB34_2
# BB#1:                                 # %if.end
	movb	$0, (%rbx)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	strcat
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	strcat
	movl	$.L.str.42, %edi
	xorl	%eax, %eax
	movq	%rbx, %rsi
	callq	printf
	movl	$.L.str.23, %esi
	movq	%rbx, %rdi
	callq	fopen64
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	free
	movq	%r14, %rax
	jmp	.LBB34_3
.LBB34_2:                               # %cleanup
	movl	$.L.str.41, %edi
	xorl	%eax, %eax
	callq	printf
	xorl	%eax, %eax
.LBB34_3:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end34:
	.size	prefix_open, .Lfunc_end34-prefix_open
	.cfi_endproc

	.globl	mergefile
	.align	16, 0x90
	.type	mergefile,@function
mergefile:                              # @mergefile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp171:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp172:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp173:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp174:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp175:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp176:
	.cfi_def_cfa_offset 56
	subq	$3176, %rsp             # imm = 0xC68
.Ltmp177:
	.cfi_def_cfa_offset 3232
.Ltmp178:
	.cfi_offset %rbx, -56
.Ltmp179:
	.cfi_offset %r12, -48
.Ltmp180:
	.cfi_offset %r13, -40
.Ltmp181:
	.cfi_offset %r14, -32
.Ltmp182:
	.cfi_offset %r15, -24
.Ltmp183:
	.cfi_offset %rbp, -16
	movl	%r8d, 56(%rsp)          # 4-byte Spill
	movq	%rcx, %r15
	movq	%r15, 40(%rsp)          # 8-byte Spill
	movq	%rdx, %r12
	movq	%rdi, %r14
	movq	%r14, 32(%rsp)          # 8-byte Spill
	movb	$0, 1104(%rsp)
	leaq	2144(%rsp), %rsi
	movl	$1024, %edx             # imm = 0x400
	movq	%r12, %rdi
	callq	rl
	movl	$1, 48(%rsp)            # 4-byte Folded Spill
	testl	%eax, %eax
	je	.LBB35_80
# BB#1:                                 # %while.body.lr.ph
	movl	$1, 48(%rsp)            # 4-byte Folded Spill
	leaq	2144(%rsp), %rbx
	leaq	64(%rsp), %r13
	movl	$1, 52(%rsp)            # 4-byte Folded Spill
	.align	16, 0x90
.LBB35_2:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB35_23 Depth 2
                                        #     Child Loop BB35_36 Depth 2
	movl	$.L.str.43, %edi
	callq	strlen
	cmpq	$9, %rax
	ja	.LBB35_17
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB35_2 Depth=1
	cmpq	$3, %rax
	ja	.LBB35_9
# BB#4:                                 # %cond.true.4
                                        #   in Loop: Header=BB35_2 Depth=1
	movl	2144(%rsp), %edx
	movzbl	%dl, %ecx
	addl	$-37, %ecx
	testq	%rax, %rax
	je	.LBB35_10
# BB#5:                                 # %cond.true.4
                                        #   in Loop: Header=BB35_2 Depth=1
	testl	%ecx, %ecx
	jne	.LBB35_10
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB35_2 Depth=1
	movzbl	%dh, %ecx  # NOREX
	addl	$-37, %ecx
	cmpq	$2, %rax
	jb	.LBB35_10
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB35_2 Depth=1
	testl	%ecx, %ecx
	jne	.LBB35_10
# BB#8:                                 # %if.then.24
                                        #   in Loop: Header=BB35_2 Depth=1
	movl	%edx, %ecx
	shrl	$16, %ecx
	shrl	$24, %edx
	movzbl	%cl, %ecx
	addl	$-32, %ecx
	addl	$-82, %edx
	testl	%ecx, %ecx
	cmovnel	%ecx, %edx
	cmpq	$2, %rax
	cmovbel	%ecx, %edx
	movl	%edx, %ecx
	jmp	.LBB35_10
	.align	16, 0x90
.LBB35_17:                              # %cond.false.45
                                        #   in Loop: Header=BB35_2 Depth=1
	movl	$.L.str.43, %esi
	movl	$10, %edx
	movq	%rbx, %rdi
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB35_11
	jmp	.LBB35_18
	.align	16, 0x90
.LBB35_9:                               # %cond.false
                                        #   in Loop: Header=BB35_2 Depth=1
	movl	$.L.str.43, %esi
	movq	%rbx, %rdi
	callq	strcmp
	movl	%eax, %ecx
.LBB35_10:                              # %cond.end
                                        #   in Loop: Header=BB35_2 Depth=1
	testl	%ecx, %ecx
	jne	.LBB35_11
.LBB35_18:                              # %land.lhs.true.49
                                        #   in Loop: Header=BB35_2 Depth=1
	movl	$.L.str.44, %esi
	xorl	%eax, %eax
	leaq	2155(%rsp), %rdi
	leaq	60(%rsp), %rdx
	movq	%r13, %rcx
	callq	__isoc99_sscanf
	cmpl	$2, %eax
	jne	.LBB35_11
# BB#19:                                # %if.then.55
                                        #   in Loop: Header=BB35_2 Depth=1
	movb	2154(%rsp), %r14b
	cmpb	$0, 1104(%rsp)
	je	.LBB35_21
# BB#20:                                # %if.then.i
                                        #   in Loop: Header=BB35_2 Depth=1
	leaq	1104(%rsp), %rdi
	callq	wl
	movb	$0, 1104(%rsp)
.LBB35_21:                              # %while.cond.62.preheader
                                        #   in Loop: Header=BB35_2 Depth=1
	movq	%r13, %rbp
	jmp	.LBB35_23
	.align	16, 0x90
.LBB35_22:                              # %while.body.65
                                        #   in Loop: Header=BB35_23 Depth=2
	movl	$1024, %edx             # imm = 0x400
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	rl
.LBB35_23:                              # %while.body.65
                                        #   Parent Loop BB35_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	60(%rsp), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 60(%rsp)
	testl	%eax, %eax
	jg	.LBB35_22
# BB#24:                                # %while.end
                                        #   in Loop: Header=BB35_2 Depth=1
	movl	64(%rsp), %ebx
	movzbl	%bl, %eax
	cmpl	$40, %eax
	jne	.LBB35_27
# BB#25:                                # %if.then.72
                                        #   in Loop: Header=BB35_2 Depth=1
	movb	%r14b, %r13b
	movq	%rbp, %rdi
	callq	strlen
	movb	$0, -1(%rax,%rbp)
	movq	32(%rsp), %r14          # 8-byte Reload
	movq	%r14, %rdi
	leaq	65(%rsp), %rsi
	callq	prefix_open
	testq	%rax, %rax
	leaq	2144(%rsp), %rbx
	je	.LBB35_85
# BB#26:                                # %if.end.87
                                        #   in Loop: Header=BB35_2 Depth=1
	movzbl	%r13b, %ecx
	cmpl	$37, %ecx
	sete	%cl
	cmpl	$0, 56(%rsp)            # 4-byte Folded Reload
	setne	%dl
	orb	%cl, %dl
	movzbl	%dl, %r8d
	movq	%r14, %rdi
	movq	%rax, %rdx
	movq	%r15, %rcx
	callq	mergefile
	movq	%rbp, %r13
	jmp	.LBB35_79
	.align	16, 0x90
.LBB35_11:                              # %land.lhs.true.253
                                        #   in Loop: Header=BB35_2 Depth=1
	movl	$.L.str.49, %edi
	callq	strlen
	cmpq	$3, %rax
	ja	.LBB35_50
# BB#12:                                # %cond.true.257
                                        #   in Loop: Header=BB35_2 Depth=1
	movl	2144(%rsp), %edx
	movzbl	%dl, %ecx
	addl	$-99, %ecx
	testq	%rax, %rax
	je	.LBB35_51
# BB#13:                                # %cond.true.257
                                        #   in Loop: Header=BB35_2 Depth=1
	testl	%ecx, %ecx
	jne	.LBB35_51
# BB#14:                                # %if.then.272
                                        #   in Loop: Header=BB35_2 Depth=1
	movzbl	%dh, %ecx  # NOREX
	addl	$-117, %ecx
	cmpq	$2, %rax
	jb	.LBB35_51
# BB#15:                                # %if.then.272
                                        #   in Loop: Header=BB35_2 Depth=1
	testl	%ecx, %ecx
	jne	.LBB35_51
# BB#16:                                # %if.then.282
                                        #   in Loop: Header=BB35_2 Depth=1
	movl	%edx, %ecx
	shrl	$16, %ecx
	shrl	$24, %edx
	movzbl	%cl, %ecx
	addl	$-114, %ecx
	addl	$-114, %edx
	testl	%ecx, %ecx
	cmovnel	%ecx, %edx
	cmpq	$2, %rax
	cmovbel	%ecx, %edx
	movl	%edx, %ecx
	jmp	.LBB35_51
	.align	16, 0x90
.LBB35_50:                              # %cond.false.301
                                        #   in Loop: Header=BB35_2 Depth=1
	movl	$.L.str.49, %esi
	movq	%rbx, %rdi
	callq	strcmp
	movl	%eax, %ecx
.LBB35_51:                              # %cond.end.304
                                        #   in Loop: Header=BB35_2 Depth=1
	movq	%r14, %rbp
	testl	%ecx, %ecx
	je	.LBB35_80
# BB#52:                                # %if.else.308
                                        #   in Loop: Header=BB35_2 Depth=1
	movq	%rbx, %rdi
	movl	56(%rsp), %esi          # 4-byte Reload
	callq	doit
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB35_53
# BB#54:                                # %if.end.315
                                        #   in Loop: Header=BB35_2 Depth=1
	movq	%r14, %rdi
	callq	strlen
	movq	%rax, %r15
	cmpl	$0, 52(%rsp)            # 4-byte Folded Reload
	je	.LBB35_60
# BB#55:                                # %if.end.315
                                        #   in Loop: Header=BB35_2 Depth=1
	cmpl	$2, %r15d
	jl	.LBB35_60
# BB#56:                                # %land.lhs.true.322
                                        #   in Loop: Header=BB35_2 Depth=1
	movq	%r15, %rax
	shlq	$32, %rax
	movabsq	$-8589934592, %rcx      # imm = 0xFFFFFFFE00000000
	leaq	(%rax,%rcx), %rcx
	sarq	$32, %rcx
	movzbl	(%r14,%rcx), %ecx
	cmpl	$60, %ecx
	jne	.LBB35_60
# BB#57:                                # %land.lhs.true.328
                                        #   in Loop: Header=BB35_2 Depth=1
	movabsq	$-4294967296, %rcx      # imm = 0xFFFFFFFF00000000
	addq	%rcx, %rax
	sarq	$32, %rax
	movzbl	(%r14,%rax), %eax
	cmpl	$126, %eax
	je	.LBB35_59
# BB#58:                                # %land.lhs.true.328
                                        #   in Loop: Header=BB35_2 Depth=1
	movzbl	%al, %eax
	cmpl	$60, %eax
	jne	.LBB35_60
.LBB35_59:                              # %if.then.341
                                        #   in Loop: Header=BB35_2 Depth=1
	movl	$.L.str.50, %edi
	callq	wl
	movl	$2, 48(%rsp)            # 4-byte Folded Spill
	.align	16, 0x90
.LBB35_60:                              # %if.end.342
                                        #   in Loop: Header=BB35_2 Depth=1
	movq	%rbx, %r13
	testl	%r15d, %r15d
	jle	.LBB35_68
# BB#61:                                # %if.end.342
                                        #   in Loop: Header=BB35_2 Depth=1
	cmpl	$2, 48(%rsp)            # 4-byte Folded Reload
	jl	.LBB35_68
# BB#62:                                # %land.lhs.true.348
                                        #   in Loop: Header=BB35_2 Depth=1
	movq	%r15, %rax
	shlq	$32, %rax
	movabsq	$-4294967296, %rcx      # imm = 0xFFFFFFFF00000000
	leaq	(%rax,%rcx), %rbx
	sarq	$32, %rbx
	movzbl	(%r14,%rbx), %ecx
	cmpl	$60, %ecx
	jne	.LBB35_68
# BB#63:                                # %land.lhs.true.355
                                        #   in Loop: Header=BB35_2 Depth=1
	cmpl	$2, %r15d
	jl	.LBB35_65
# BB#64:                                # %lor.lhs.false.358
                                        #   in Loop: Header=BB35_2 Depth=1
	movabsq	$-8589934592, %rcx      # imm = 0xFFFFFFFE00000000
	addq	%rcx, %rax
	sarq	$32, %rax
	movzbl	(%r14,%rax), %eax
	cmpl	$60, %eax
	jne	.LBB35_65
	.align	16, 0x90
.LBB35_68:                              # %if.end.370
                                        #   in Loop: Header=BB35_2 Depth=1
	movzbl	1104(%rsp), %ebx
	cmpl	$37, %ebx
	je	.LBB35_75
# BB#69:                                # %land.lhs.true.375
                                        #   in Loop: Header=BB35_2 Depth=1
	leaq	1104(%rsp), %rdi
	callq	strlen
	movslq	%r15d, %rcx
	addq	%rax, %rcx
	cmpq	$1023, %rcx             # imm = 0x3FF
	ja	.LBB35_74
# BB#70:                                # %cond.false.393
                                        #   in Loop: Header=BB35_2 Depth=1
	movsbl	(%r14), %esi
	movl	$.L.str.51, %edi
	callq	strchr
	testq	%rax, %rax
	movq	%r13, %rbx
	jne	.LBB35_87
# BB#71:                                # %lor.lhs.false.398
                                        #   in Loop: Header=BB35_2 Depth=1
	movq	%rbx, %r13
	cmpb	$0, 1104(%rsp)
	je	.LBB35_76
# BB#72:                                # %cond.false.421
                                        #   in Loop: Header=BB35_2 Depth=1
	leaq	1104(%rsp), %rbx
	movq	%rbx, %rdi
	callq	strlen
	movsbl	-1(%rax,%rbx), %esi
	movl	$.L.str.52, %edi
	callq	strchr
	testq	%rax, %rax
	movq	%r13, %rbx
	je	.LBB35_73
.LBB35_87:                              # %if.then.429
                                        #   in Loop: Header=BB35_2 Depth=1
	leaq	1104(%rsp), %rdi
	movq	%r14, %rsi
	callq	strcat
	movl	$0, 52(%rsp)            # 4-byte Folded Spill
	movq	%rbp, %r14
	movq	40(%rsp), %r15          # 8-byte Reload
	jmp	.LBB35_78
	.align	16, 0x90
.LBB35_53:                              #   in Loop: Header=BB35_2 Depth=1
	movq	%rbp, %r14
	jmp	.LBB35_79
.LBB35_27:                              # %land.lhs.true.97
                                        #   in Loop: Header=BB35_2 Depth=1
	movl	$.L.str.46, %edi
	callq	strlen
	cmpq	$3, %rax
	ja	.LBB35_33
# BB#28:                                # %cond.true.101
                                        #   in Loop: Header=BB35_2 Depth=1
	movzbl	%bl, %ecx
	addl	$-73, %ecx
	jne	.LBB35_34
# BB#29:                                # %cond.true.101
                                        #   in Loop: Header=BB35_2 Depth=1
	testq	%rax, %rax
	je	.LBB35_34
# BB#30:                                # %if.then.116
                                        #   in Loop: Header=BB35_2 Depth=1
	movzbl	%bh, %ecx  # NOREX
	addl	$-78, %ecx
	cmpq	$2, %rax
	jb	.LBB35_34
# BB#31:                                # %if.then.116
                                        #   in Loop: Header=BB35_2 Depth=1
	testl	%ecx, %ecx
	jne	.LBB35_34
# BB#32:                                # %if.then.126
                                        #   in Loop: Header=BB35_2 Depth=1
	movl	%ebx, %ecx
	shrl	$16, %ecx
	shrl	$24, %ebx
	movzbl	%cl, %ecx
	addl	$-73, %ecx
	addl	$-84, %ebx
	testl	%ecx, %ecx
	cmovnel	%ecx, %ebx
	cmpq	$2, %rax
	cmovbel	%ecx, %ebx
	movl	%ebx, %ecx
	jmp	.LBB35_34
.LBB35_65:                              # %if.then.365
                                        #   in Loop: Header=BB35_2 Depth=1
	cmpb	$0, 1104(%rsp)
	je	.LBB35_67
# BB#66:                                # %if.then.i.116
                                        #   in Loop: Header=BB35_2 Depth=1
	leaq	1104(%rsp), %rdi
	callq	wl
	movb	$0, 1104(%rsp)
.LBB35_67:                              # %flush_buf.exit117
                                        #   in Loop: Header=BB35_2 Depth=1
	movb	$0, (%r14,%rbx)
	movq	%r14, %rdi
	callq	wl
	movq	%r12, %rdi
	callq	hex_string_to_binary
	jmp	.LBB35_77
.LBB35_33:                              # %cond.false.145
                                        #   in Loop: Header=BB35_2 Depth=1
	movl	$.L.str.46, %esi
	movq	%rbp, %rdi
	callq	strcmp
	movl	%eax, %ecx
.LBB35_34:                              # %cond.end.148
                                        #   in Loop: Header=BB35_2 Depth=1
	testl	%ecx, %ecx
	jne	.LBB35_49
# BB#35:                                # %if.then.151
                                        #   in Loop: Header=BB35_2 Depth=1
	movq	%r15, %rdi
	callq	rewind
	movl	$1024, %edx             # imm = 0x400
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	rl
	testl	%eax, %eax
	movq	32(%rsp), %r14          # 8-byte Reload
	leaq	2144(%rsp), %rbx
	movq	%rbp, %r13
	je	.LBB35_79
	.align	16, 0x90
.LBB35_36:                              # %while.body.156
                                        #   Parent Loop BB35_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$.L.str.47, %edi
	callq	strlen
	cmpq	$8, %rax
	ja	.LBB35_45
# BB#37:                                # %land.lhs.true.166
                                        #   in Loop: Header=BB35_36 Depth=2
	cmpq	$3, %rax
	ja	.LBB35_43
# BB#38:                                # %cond.true.170
                                        #   in Loop: Header=BB35_36 Depth=2
	movl	64(%rsp), %edx
	movzbl	%dl, %ecx
	addl	$-112, %ecx
	testq	%rax, %rax
	je	.LBB35_44
# BB#39:                                # %cond.true.170
                                        #   in Loop: Header=BB35_36 Depth=2
	testl	%ecx, %ecx
	jne	.LBB35_44
# BB#40:                                # %if.then.185
                                        #   in Loop: Header=BB35_36 Depth=2
	movzbl	%dh, %ecx  # NOREX
	addl	$-115, %ecx
	cmpq	$2, %rax
	jb	.LBB35_44
# BB#41:                                # %if.then.185
                                        #   in Loop: Header=BB35_36 Depth=2
	testl	%ecx, %ecx
	jne	.LBB35_44
# BB#42:                                # %if.then.195
                                        #   in Loop: Header=BB35_36 Depth=2
	movl	%edx, %ecx
	shrl	$16, %ecx
	shrl	$24, %edx
	movzbl	%cl, %ecx
	addl	$-102, %ecx
	addl	$-105, %edx
	testl	%ecx, %ecx
	cmovnel	%ecx, %edx
	cmpq	$2, %rax
	cmovbel	%ecx, %edx
	movl	%edx, %ecx
	jmp	.LBB35_44
	.align	16, 0x90
.LBB35_45:                              # %cond.false.220
                                        #   in Loop: Header=BB35_36 Depth=2
	movl	$.L.str.47, %esi
	movl	$9, %edx
	movq	%r13, %rdi
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB35_48
	jmp	.LBB35_46
	.align	16, 0x90
.LBB35_43:                              # %cond.false.214
                                        #   in Loop: Header=BB35_36 Depth=2
	movl	$.L.str.47, %esi
	movq	%r13, %rdi
	callq	strcmp
	movl	%eax, %ecx
.LBB35_44:                              # %cond.end.217
                                        #   in Loop: Header=BB35_36 Depth=2
	testl	%ecx, %ecx
	jne	.LBB35_48
.LBB35_46:                              # %if.then.224
                                        #   in Loop: Header=BB35_36 Depth=2
	movq	%rbx, %rbp
	movl	$34, %esi
	leaq	73(%rsp), %rbx
	movq	%rbx, %rdi
	callq	strchr
	movb	$0, (%rax)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	prefix_open
	testq	%rax, %rax
	je	.LBB35_86
# BB#47:                                # %if.end.237
                                        #   in Loop: Header=BB35_36 Depth=2
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	movq	%rax, %rdx
	movq	%r15, %rcx
	callq	mergefile
	movq	%rbp, %rbx
.LBB35_48:                              # %while.cond.152.backedge
                                        #   in Loop: Header=BB35_36 Depth=2
	movl	$1024, %edx             # imm = 0x400
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	rl
	testl	%eax, %eax
	jne	.LBB35_36
	jmp	.LBB35_79
.LBB35_73:                              # %cond.false.421.if.else.432_crit_edge
                                        #   in Loop: Header=BB35_2 Depth=1
	movq	%rbx, %r13
	movb	1104(%rsp), %bl
.LBB35_74:                              # %if.else.432
                                        #   in Loop: Header=BB35_2 Depth=1
	testb	%bl, %bl
	je	.LBB35_76
.LBB35_75:                              # %if.then.i.119
                                        #   in Loop: Header=BB35_2 Depth=1
	leaq	1104(%rsp), %rdi
	callq	wl
	movb	$0, 1104(%rsp)
.LBB35_76:                              # %flush_buf.exit120
                                        #   in Loop: Header=BB35_2 Depth=1
	leaq	1104(%rsp), %rdi
	movq	%r14, %rsi
	callq	strcpy
	movl	$0, 52(%rsp)            # 4-byte Folded Spill
.LBB35_77:                              # %cleanup.439.thread
                                        #   in Loop: Header=BB35_2 Depth=1
	movq	%rbp, %r14
	movq	40(%rsp), %r15          # 8-byte Reload
	movq	%r13, %rbx
.LBB35_78:                              # %cleanup.439.thread
                                        #   in Loop: Header=BB35_2 Depth=1
	leaq	64(%rsp), %r13
.LBB35_79:                              # %cleanup.439.thread
                                        #   in Loop: Header=BB35_2 Depth=1
	movl	$1024, %edx             # imm = 0x400
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	rl
	testl	%eax, %eax
	jne	.LBB35_2
.LBB35_80:                              # %while.end.443
	cmpb	$0, 1104(%rsp)
	je	.LBB35_82
# BB#81:                                # %if.then.i.113
	leaq	1104(%rsp), %rdi
	callq	wl
	movb	$0, 1104(%rsp)
.LBB35_82:                              # %flush_buf.exit114
	cmpl	$2, 48(%rsp)            # 4-byte Folded Reload
	jl	.LBB35_84
# BB#83:                                # %if.then.447
	movl	$.L.str.53, %edi
	callq	wl
.LBB35_84:                              # %if.end.448
	addq	$3176, %rsp             # imm = 0xC68
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB35_85:                              # %if.then.83
	movq	stderr(%rip), %rdi
	movl	$.L.str.45, %esi
	xorl	%eax, %eax
	leaq	65(%rsp), %rdx
	callq	fprintf
.LBB35_86:                              # %if.then.236
	movl	$1, %edi
	callq	exit
.LBB35_49:                              # %if.else.242
	movl	60(%rsp), %esi
	leaq	64(%rsp), %rdx
	movl	$.L.str.48, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$1, %edi
	callq	exit
.Lfunc_end35:
	.size	mergefile, .Lfunc_end35-mergefile
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp184:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp185:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp186:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp187:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp188:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp189:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp190:
	.cfi_def_cfa_offset 128
.Ltmp191:
	.cfi_offset %rbx, -56
.Ltmp192:
	.cfi_offset %r12, -48
.Ltmp193:
	.cfi_offset %r13, -40
.Ltmp194:
	.cfi_offset %r14, -32
.Ltmp195:
	.cfi_offset %r15, -24
.Ltmp196:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movl	%edi, %r12d
	movl	$0, 68(%rsp)
	movl	$0, 64(%rsp)
	cmpl	$1, %r12d
	jle	.LBB36_38
# BB#1:                                 # %if.end
	movl	$.L.str.56, %edi
	movl	$16384, %esi            # imm = 0x4000
	movl	$16412, %edx            # imm = 0x401C
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.54, %ebx
	movl	$1, %ebp
	cmpl	$4, %r12d
	movl	$1, %r13d
	jl	.LBB36_5
# BB#2:                                 # %land.lhs.true
	movq	8(%r14), %rax
	movl	$.L.str.54, %ebx
	movzbl	(%rax), %ecx
	cmpl	$45, %ecx
	movl	$1, %r13d
	jne	.LBB36_5
# BB#3:                                 # %land.lhs.true.6
	movl	$.L.str.54, %ebx
	movzbl	1(%rax), %eax
	cmpl	$111, %eax
	movl	$1, %r13d
	jne	.LBB36_5
# BB#4:                                 # %if.then.12
	movq	16(%r14), %rbx
	movl	$3, %r13d
.LBB36_5:                               # %if.end.14
	movl	$.L.str.57, %edi
	xorl	%eax, %eax
	movq	%rbx, %rsi
	callq	printf
	movl	$.L.str.58, %esi
	movq	%rbx, %rdi
	callq	fopen64
	movq	%rax, %r15
	movl	$.L.str.59, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	fprintf
	movl	$.L.str.60, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	fprintf
	movl	$.L.str.61, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	fprintf
	movl	$.L.str.62, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	fprintf
	xorl	%edi, %edi
	callq	time
	movq	%rax, %rcx
	movl	$.L.str.63, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	movq	%rcx, %rdx
	callq	fprintf
	movl	$.L.str.21, %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	cmpl	%r12d, %r13d
	jge	.LBB36_39
# BB#6:
	movl	$0, 60(%rsp)            # 4-byte Folded Spill
	movl	$.L.str.21, %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	xorl	%ebx, %ebx
	jmp	.LBB36_7
.LBB36_39:                              # %for.end.thread
	movl	$.L.str.67, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	fprintf
	jmp	.LBB36_37
.LBB36_23:                              # %sw.bb.38
                                        #   in Loop: Header=BB36_7 Depth=1
	incl	%r13d
	cmpl	%r12d, %r13d
	je	.LBB36_24
# BB#26:                                # %if.end.45
                                        #   in Loop: Header=BB36_7 Depth=1
	movslq	%r13d, %rax
	movq	(%r14,%rax,8), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	jmp	.LBB36_33
.LBB36_27:                              # %sw.bb.48
                                        #   in Loop: Header=BB36_7 Depth=1
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	leal	2(%r13), %ebx
	cmpl	%r12d, %ebx
	je	.LBB36_28
# BB#29:                                # %if.end.58
                                        #   in Loop: Header=BB36_7 Depth=1
	incl	%r13d
	movslq	%r13d, %rax
	movq	(%r14,%rax,8), %rdi
	movslq	%ebx, %rax
	movq	(%r14,%rax,8), %rsi
	movq	%r15, 8(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, (%rsp)
	movq	48(%rsp), %rdx          # 8-byte Reload
	movq	40(%rsp), %rcx          # 8-byte Reload
	movl	%ebp, %r8d
	leaq	68(%rsp), %r9
	callq	process_initfile
	movl	%ebx, %r13d
	movl	%ebp, %edx
	movq	32(%rsp), %rbx          # 8-byte Reload
	jmp	.LBB36_34
	.align	16, 0x90
.LBB36_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	%r13d, %rax
	movq	(%r14,%rax,8), %rcx
	movzbl	(%rcx), %eax
	cmpl	$45, %eax
	jne	.LBB36_32
# BB#8:                                 # %if.then.30
                                        #   in Loop: Header=BB36_7 Depth=1
	movsbl	1(%rcx), %eax
	cmpl	$87, %eax
	jg	.LBB36_14
# BB#9:                                 # %if.then.30
                                        #   in Loop: Header=BB36_7 Depth=1
	cmpl	$66, %eax
	je	.LBB36_21
# BB#10:                                # %if.then.30
                                        #   in Loop: Header=BB36_7 Depth=1
	cmpl	$67, %eax
	jne	.LBB36_11
# BB#22:                                # %sw.bb.37
                                        #   in Loop: Header=BB36_7 Depth=1
	movl	$1, 60(%rsp)            # 4-byte Folded Spill
	jmp	.LBB36_33
	.align	16, 0x90
.LBB36_32:                              # %if.end.97
                                        #   in Loop: Header=BB36_7 Depth=1
	movq	%r15, 16(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 8(%rsp)
	leaq	68(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%rcx, %rdi
	movq	48(%rsp), %rsi          # 8-byte Reload
	movq	40(%rsp), %rdx          # 8-byte Reload
	movq	%rbx, %rcx
	movl	%ebp, %r8d
	movl	60(%rsp), %r9d          # 4-byte Reload
	callq	process_path
	jmp	.LBB36_33
	.align	16, 0x90
.LBB36_14:                              # %if.then.30
                                        #   in Loop: Header=BB36_7 Depth=1
	leal	-98(%rax), %esi
	cmpl	$5, %esi
	jbe	.LBB36_19
# BB#15:                                # %if.then.30
                                        #   in Loop: Header=BB36_7 Depth=1
	cmpl	$88, %eax
	jne	.LBB36_31
# BB#16:                                # %sw.bb.77
                                        #   in Loop: Header=BB36_7 Depth=1
	incl	%r13d
	cmpl	%r12d, %r13d
	je	.LBB36_24
# BB#17:                                # %if.end.86
                                        #   in Loop: Header=BB36_7 Depth=1
	movl	$16, %edi
	callq	malloc
	testq	%rax, %rax
	je	.LBB36_18
# BB#30:                                # %if.end.91
                                        #   in Loop: Header=BB36_7 Depth=1
	movq	%rbx, (%rax)
	movslq	%r13d, %rcx
	movq	(%r14,%rcx,8), %rcx
	movq	%rcx, 8(%rax)
	movl	%ebp, %edx
	movq	%rax, %rbx
	jmp	.LBB36_34
.LBB36_19:                              # %if.then.30
                                        #   in Loop: Header=BB36_7 Depth=1
	xorl	%edx, %edx
	jmpq	*.LJTI36_0(,%rsi,8)
.LBB36_20:                              # %sw.bb.35
                                        #   in Loop: Header=BB36_7 Depth=1
	movl	$1, %edx
	jmp	.LBB36_34
.LBB36_21:                              # %sw.bb.36
                                        #   in Loop: Header=BB36_7 Depth=1
	movl	$0, 60(%rsp)            # 4-byte Folded Spill
	jmp	.LBB36_33
.LBB36_11:                              # %if.then.30
                                        #   in Loop: Header=BB36_7 Depth=1
	cmpl	$80, %eax
	jne	.LBB36_31
# BB#12:                                # %sw.bb.65
                                        #   in Loop: Header=BB36_7 Depth=1
	incl	%r13d
	cmpl	%r12d, %r13d
	je	.LBB36_24
# BB#13:                                # %if.end.74
                                        #   in Loop: Header=BB36_7 Depth=1
	movslq	%r13d, %rax
	movq	(%r14,%rax,8), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	jmp	.LBB36_33
.LBB36_31:                              # %sw.default
                                        #   in Loop: Header=BB36_7 Depth=1
	movl	$.L.str.66, %edi
	xorl	%eax, %eax
	movq	%rcx, %rsi
	callq	printf
	.align	16, 0x90
.LBB36_33:                              # %for.inc
                                        #   in Loop: Header=BB36_7 Depth=1
	movl	%ebp, %edx
.LBB36_34:                              # %for.inc
                                        #   in Loop: Header=BB36_7 Depth=1
	incl	%r13d
	cmpl	%r12d, %r13d
	movl	%edx, %ebp
	jl	.LBB36_7
# BB#35:                                # %for.end
	movl	68(%rsp), %ebx
	xorl	%ebp, %ebp
	movl	$.L.str.67, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	fprintf
	testl	%ebx, %ebx
	jle	.LBB36_37
	.align	16, 0x90
.LBB36_36:                              # %for.body.105
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.68, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	movl	%ebp, %edx
	callq	fprintf
	incl	%ebp
	cmpl	%ebx, %ebp
	jl	.LBB36_36
.LBB36_37:                              # %for.end.109
	movl	$.L.str.69, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	fprintf
	movq	%r15, %rdi
	callq	fclose
	movl	64(%rsp), %esi
	movl	$.L.str.70, %edi
	xorl	%eax, %eax
	callq	printf
	xorl	%eax, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB36_24:                              # %if.then.41
	movl	$.L.str.64, %edi
	jmp	.LBB36_25
.LBB36_38:                              # %if.then
	movl	$.L.str.55, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$1, %edi
	callq	exit
.LBB36_28:                              # %if.then.53
	movl	$.L.str.65, %edi
.LBB36_25:                              # %if.then.41
	xorl	%eax, %eax
	movq	%rcx, %rsi
	callq	printf
	movl	$1, %edi
	callq	exit
.LBB36_18:                              # %if.then.90
	movl	$1, %edi
	callq	exit
.Lfunc_end36:
	.size	main, .Lfunc_end36-main
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI36_0:
	.quad	.LBB36_34
	.quad	.LBB36_20
	.quad	.LBB36_23
	.quad	.LBB36_31
	.quad	.LBB36_31
	.quad	.LBB36_27

	.text
	.align	16, 0x90
	.type	pscompact_copyinout,@function
pscompact_copyinout:                    # @pscompact_copyinout
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp197:
	.cfi_def_cfa_offset 16
.Ltmp198:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	4(%rbx), %eax
	cmpl	%eax, 20(%rbx)
	jge	.LBB37_1
# BB#2:                                 # %if.then
	movslq	8(%rbx), %rsi
	movl	%esi, 20(%rbx)
	movq	40(%rbx), %rdi
	callq	realloc
	movq	%rax, %rdi
	movq	%rdi, 40(%rbx)
	testq	%rdi, %rdi
	je	.LBB37_5
# BB#3:                                 # %if.then.if.end.9_crit_edge
	movl	4(%rbx), %eax
	jmp	.LBB37_4
.LBB37_1:                               # %entry.if.end.9_crit_edge
	movq	40(%rbx), %rdi
.LBB37_4:                               # %if.end.9
	movq	32(%rbx), %rsi
	movslq	%eax, %rdx
	callq	memcpy
	movl	$0, 12(%rbx)
	movl	4(%rbx), %eax
	movl	%eax, 16(%rbx)
	movl	$4, (%rbx)
	movl	$0, 4(%rbx)
	popq	%rbx
	retq
.LBB37_5:                               # %if.then.7
	movq	stderr(%rip), %rdi
	movl	$.L.str.82, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$1, %edi
	callq	exit
.Lfunc_end37:
	.size	pscompact_copyinout, .Lfunc_end37-pscompact_copyinout
	.cfi_endproc

	.align	16, 0x90
	.type	pscompact_bufferatstart,@function
pscompact_bufferatstart:                # @pscompact_bufferatstart
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp199:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp200:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp201:
	.cfi_def_cfa_offset 32
.Ltmp202:
	.cfi_offset %rbx, -24
.Ltmp203:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	4(%rbx), %eax
	cmpl	8(%rbx), %eax
	jne	.LBB38_1
# BB#2:                                 # %if.then
	movslq	%eax, %rsi
	addl	%eax, %eax
	movl	%eax, 8(%rbx)
	movq	32(%rbx), %rdi
	shlq	$2, %rsi
	callq	realloc
	movq	%rax, %rsi
	movq	%rsi, 32(%rbx)
	testq	%rsi, %rsi
	je	.LBB38_5
# BB#3:                                 # %if.then.if.end.10_crit_edge
	movl	4(%rbx), %eax
	jmp	.LBB38_4
.LBB38_1:                               # %entry.if.end.10_crit_edge
	movq	32(%rbx), %rsi
.LBB38_4:                               # %if.end.10
	leaq	1(%rsi), %rdi
	movslq	%eax, %rdx
	callq	memmove
	incl	4(%rbx)
	movq	32(%rbx), %rax
	movb	%bpl, (%rax)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB38_5:                               # %if.then.8
	movq	stderr(%rip), %rdi
	movl	$.L.str.82, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$1, %edi
	callq	exit
.Lfunc_end38:
	.size	pscompact_bufferatstart, .Lfunc_end38-pscompact_bufferatstart
	.cfi_endproc

	.type	msg_truncated,@object   # @msg_truncated
	.section	.rodata,"a",@progbits
	.align	16
msg_truncated:
	.asciz	"\n*** Previous line has been truncated.\n"
	.size	msg_truncated, 40

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s(%d): "
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%s "
	.size	.L.str.1, 4

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%s"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%d.%02d"
	.size	.L.str.3, 8

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	": "
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%s(?): "
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"basic_enum_ptrs is only called by a GC. Abort.\n"
	.size	.L.str.6, 48

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"basic_reloc_ptrs is only called by a GC. Abort.\n"
	.size	.L.str.7, 49

	.type	minimal_memory,@object  # @minimal_memory
	.section	.rodata,"a",@progbits
	.globl	minimal_memory
	.align	8
minimal_memory:
	.quad	minimal_memory
	.quad	minimal_alloc_bytes
	.quad	0
	.quad	minimal_free_object
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	minimal_alloc_bytes
	.quad	minimal_alloc_struct
	.quad	minimal_alloc_struct
	.quad	minimal_alloc_byte_array
	.quad	minimal_alloc_byte_array
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	minimal_alloc_bytes
	.quad	minimal_alloc_bytes
	.quad	0
	.quad	minimal_free_string
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0
	.size	minimal_memory, 256

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"0x%02x%02x%02x%02x,"
	.size	.L.str.8, 20

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"0x%08x,"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"\n\t"
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"    static uint32_t node_%d[] = {\n\t"
	.size	.L.str.11, 36

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"\t/* compression_flag_bit + file length */\n\t"
	.size	.L.str.12, 44

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"\t/* data_block_length, offset to data_block */\n\t"
	.size	.L.str.13, 49

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"\t/* file name '%s' */\n\t"
	.size	.L.str.14, 24

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"\t0 };\t/* end-of-node */\n"
	.size	.L.str.15, 25

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"node '%s' len=%ld"
	.size	.L.str.16, 18

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	" %ld blocks"
	.size	.L.str.17, 12

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	", compressed size=%ld"
	.size	.L.str.18, 22

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"\n"
	.size	.L.str.19, 2

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"malloc fail in process_path\n"
	.size	.L.str.20, 29

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.zero	1
	.size	.L.str.21, 1

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gp_enumerate_files_init failed.\n"
	.size	.L.str.22, 33

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"rb"
	.size	.L.str.23, 3

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"unable to open file for processing: %s\n"
	.size	.L.str.24, 40

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"error compressing data block!\n"
	.size	.L.str.25, 31

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"warning: no files found from path '%s%s'\n"
	.size	.L.str.26, 42

	.type	in_block_head,@object   # @in_block_head
	.bss
	.globl	in_block_head
	.align	8
in_block_head:
	.quad	0
	.size	in_block_head, 8

	.type	in_block_tail,@object   # @in_block_tail
	.globl	in_block_tail
	.align	8
in_block_tail:
	.quad	0
	.size	in_block_tail, 8

	.type	.L.str.27,@object       # @.str.27
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.27:
	.asciz	"malloc fail in process_initfile\n"
	.size	.L.str.27, 33

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"r"
	.size	.L.str.28, 2

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"cannot open initfile at: %s\n"
	.size	.L.str.29, 29

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Cannot open gconfig file %s\n"
	.size	.L.str.30, 29

	.type	linebuf,@object         # @linebuf
	.bss
	.globl	linebuf
	.align	16
linebuf:
	.zero	2048
	.size	linebuf, 2048

	.type	curr_block_p,@object    # @curr_block_p
	.globl	curr_block_p
	.align	8
curr_block_p:
	.quad	0
	.size	curr_block_p, 8

	.type	.L.str.31,@object       # @.str.31
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.31:
	.asciz	"*** warning, flush_line called with len (%d) > LINE_SIZE (%d)\n"
	.size	.L.str.31, 63

	.type	curr_block_end,@object  # @curr_block_end
	.bss
	.globl	curr_block_end
	.align	8
curr_block_end:
	.quad	0
	.size	curr_block_end, 8

	.type	.L.str.32,@object       # @.str.32
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.32:
	.asciz	"%d,"
	.size	.L.str.32, 4

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"'\\%c',"
	.size	.L.str.33, 7

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"'%c',"
	.size	.L.str.34, 6

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"%END"
	.size	.L.str.35, 5

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	" \t>[]{})"
	.size	.L.str.36, 9

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	" \t"
	.size	.L.str.37, 3

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Unable to allocate string token buffer.\n"
	.size	.L.str.38, 41

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Can't handle string token > %d bytes.\n"
	.size	.L.str.39, 39

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Unknown character in ASCIIHex string: %c\n"
	.size	.L.str.40, 42

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"malloc problem in prefix_open\n"
	.size	.L.str.41, 31

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"including: '%s'\n"
	.size	.L.str.42, 17

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"%% Replace"
	.size	.L.str.43, 11

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"%d %s"
	.size	.L.str.44, 6

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Failed to open '%s' - aborting\n"
	.size	.L.str.45, 32

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"INITFILES"
	.size	.L.str.46, 10

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"psfile_(\""
	.size	.L.str.47, 10

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Unknown %%%% Replace %d %s\n"
	.size	.L.str.48, 28

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"currentfile closefile"
	.size	.L.str.49, 22

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"currentobjectformat 1 setobjectformat\n"
	.size	.L.str.50, 39

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"(/[]{}"
	.size	.L.str.51, 7

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	")[]{}"
	.size	.L.str.52, 6

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"setobjectformat"
	.size	.L.str.53, 16

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"obj/gsromfs.c"
	.size	.L.str.54, 14

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"\n       Usage: mkromfs [-o outputfile] [options ...] paths\n           options and paths can be interspersed and are processed in order\n           options:\n               -o outputfile   default: obj/gsromfs.c if this option present, must be first.\n               -P prefix       use prefix to find path. prefix not included in %%rom%%\n               -X path         exclude the path from further processing.\n                         Note: The tail of any path encountered will be tested so .svn on the -X\n                               list will exclude that path in all subsequent paths enumerated.\n\n               -d romprefix    directory in %%rom file system (just a prefix string on filename)\n               -c              compression on\n               -b              compression off (binary).\n               -C              postscript 'compaction' on\n               -B              postscript 'compaction' off\n               -g initfile gconfig_h \n                       special handling to read the 'gs_init.ps' file (from\n                       the current -P prefix path), and read the gconfig.h for\n                       psfile_ entries and combines them into a whitespace\n                       optimized and no comments form and writes this 'gs_init.ps'\n                       to the current -d destination path. This is a space and\n                       startup performance improvement, so also this should be\n                       BEFORE other stuff in the %%rom%% list of files (currently\n                       we do a sequential search in the %%rom%% directory).\n\n                       For performance reasons, it is best to turn off compression\n                       for the init file. Less frequently accessed files, if they\n                       are large should still be compressed.\n\n"
	.size	.L.str.55, 1814

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"compression will use %d byte blocksize (zlib output buffer %d bytes)\n"
	.size	.L.str.56, 70

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"   writing romfs data to '%s'\n"
	.size	.L.str.57, 31

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"w"
	.size	.L.str.58, 2

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"\t/* Generated data for %%rom%% device, see mkromfs.c */\n"
	.size	.L.str.59, 57

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"\t/* this code assumes a little endian target platform */\n"
	.size	.L.str.60, 58

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"\n#include \"stdint_.h\"\n"
	.size	.L.str.61, 23

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"\n#include \"time_.h\"\n\n"
	.size	.L.str.62, 22

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"    time_t gs_romfs_buildtime = %ld;\n\n"
	.size	.L.str.63, 39

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"   option %s missing required argument\n"
	.size	.L.str.64, 40

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"   option %s missing required arguments\n"
	.size	.L.str.65, 41

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"  unknown option: %s \n"
	.size	.L.str.66, 23

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"    uint32_t *gs_romfs[] = {\n"
	.size	.L.str.67, 30

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"\tnode_%d,\n"
	.size	.L.str.68, 11

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"\t0 };\n"
	.size	.L.str.69, 7

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"Total %%rom%% structure size is %d bytes.\n"
	.size	.L.str.70, 43

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"Malloc failed in ps compaction\n"
	.size	.L.str.71, 32

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"Can't compact files with binary object sequences in!"
	.size	.L.str.72, 53

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"Can't compact files with binary postscript byte %d in!"
	.size	.L.str.73, 55

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"true"
	.size	.L.str.74, 5

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"false"
	.size	.L.str.75, 6

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"END"
	.size	.L.str.76, 4

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"NAMESOK"
	.size	.L.str.77, 8

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"BINARYOK"
	.size	.L.str.78, 9

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"ASCII85 encoded strings unsupported in pscompaction\n"
	.size	.L.str.79, 53

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"HexString more than 64K in pscompaction\n"
	.size	.L.str.80, 41

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"Unexpected char when parsing hexstring in pscompaction\n"
	.size	.L.str.81, 56

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"Realloc failed in pscompaction\n"
	.size	.L.str.82, 32

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"16#"
	.size	.L.str.83, 4

	.type	pscompact_names,@object # @pscompact_names
	.section	.rodata,"a",@progbits
	.align	16
pscompact_names:
	.quad	.L.str.84
	.quad	.L.str.85
	.quad	.L.str.86
	.quad	.L.str.87
	.quad	.L.str.88
	.quad	.L.str.89
	.quad	.L.str.90
	.quad	.L.str.91
	.quad	.L.str.92
	.quad	.L.str.93
	.quad	.L.str.94
	.quad	.L.str.95
	.quad	.L.str.96
	.quad	.L.str.97
	.quad	.L.str.98
	.quad	.L.str.99
	.quad	.L.str.100
	.quad	.L.str.101
	.quad	.L.str.102
	.quad	.L.str.103
	.quad	.L.str.104
	.quad	.L.str.105
	.quad	.L.str.106
	.quad	.L.str.107
	.quad	.L.str.108
	.quad	.L.str.109
	.quad	.L.str.110
	.quad	.L.str.111
	.quad	.L.str.112
	.quad	.L.str.113
	.quad	.L.str.114
	.quad	.L.str.115
	.quad	.L.str.116
	.quad	.L.str.117
	.quad	.L.str.118
	.quad	.L.str.119
	.quad	.L.str.120
	.quad	.L.str.121
	.quad	.L.str.122
	.quad	.L.str.123
	.quad	.L.str.124
	.quad	.L.str.125
	.quad	.L.str.126
	.quad	.L.str.127
	.quad	.L.str.128
	.quad	.L.str.129
	.quad	.L.str.130
	.quad	.L.str.131
	.quad	.L.str.132
	.quad	.L.str.133
	.quad	.L.str.134
	.quad	.L.str.135
	.quad	.L.str.136
	.quad	.L.str.137
	.quad	.L.str.138
	.quad	.L.str.139
	.quad	.L.str.140
	.quad	.L.str.141
	.quad	.L.str.142
	.quad	.L.str.143
	.quad	.L.str.144
	.quad	.L.str.145
	.quad	.L.str.146
	.quad	.L.str.147
	.quad	.L.str.148
	.quad	.L.str.149
	.quad	.L.str.150
	.quad	.L.str.151
	.quad	.L.str.152
	.quad	.L.str.153
	.quad	.L.str.154
	.quad	.L.str.155
	.quad	.L.str.156
	.quad	.L.str.157
	.quad	.L.str.158
	.quad	.L.str.159
	.quad	.L.str.160
	.quad	.L.str.161
	.quad	.L.str.162
	.quad	.L.str.163
	.quad	.L.str.164
	.quad	.L.str.165
	.quad	.L.str.166
	.quad	.L.str.167
	.quad	.L.str.168
	.quad	.L.str.169
	.quad	.L.str.170
	.quad	.L.str.171
	.quad	.L.str.172
	.quad	.L.str.173
	.quad	.L.str.174
	.quad	.L.str.175
	.quad	.L.str.176
	.quad	.L.str.177
	.quad	.L.str.178
	.quad	.L.str.179
	.quad	.L.str.180
	.quad	.L.str.181
	.quad	.L.str.182
	.quad	.L.str.183
	.quad	.L.str.184
	.quad	.L.str.185
	.quad	.L.str.186
	.quad	.L.str.187
	.quad	.L.str.188
	.quad	.L.str.189
	.quad	.L.str.190
	.quad	.L.str.191
	.quad	.L.str.192
	.quad	.L.str.193
	.quad	.L.str.194
	.quad	.L.str.195
	.quad	.L.str.196
	.quad	.L.str.197
	.quad	.L.str.198
	.quad	.L.str.199
	.quad	.L.str.200
	.quad	.L.str.201
	.quad	.L.str.202
	.quad	.L.str.203
	.quad	.L.str.204
	.quad	.L.str.205
	.quad	.L.str.206
	.quad	.L.str.207
	.quad	.L.str.208
	.quad	.L.str.209
	.quad	.L.str.210
	.quad	.L.str.211
	.quad	.L.str.212
	.quad	.L.str.213
	.quad	.L.str.214
	.quad	.L.str.215
	.quad	.L.str.216
	.quad	.L.str.217
	.quad	.L.str.218
	.quad	.L.str.219
	.quad	.L.str.220
	.quad	.L.str.221
	.quad	.L.str.222
	.quad	.L.str.223
	.quad	.L.str.224
	.quad	.L.str.225
	.quad	.L.str.226
	.quad	.L.str.227
	.quad	.L.str.228
	.quad	.L.str.229
	.quad	.L.str.230
	.quad	.L.str.231
	.quad	.L.str.232
	.quad	.L.str.233
	.quad	.L.str.234
	.quad	.L.str.235
	.quad	.L.str.236
	.quad	.L.str.237
	.quad	.L.str.238
	.quad	.L.str.239
	.quad	.L.str.240
	.quad	.L.str.241
	.quad	.L.str.242
	.quad	.L.str.243
	.quad	.L.str.244
	.quad	.L.str.245
	.quad	.L.str.246
	.quad	.L.str.247
	.quad	.L.str.248
	.quad	.L.str.249
	.quad	.L.str.250
	.quad	.L.str.251
	.quad	.L.str.252
	.quad	.L.str.253
	.quad	.L.str.254
	.quad	.L.str.255
	.quad	.L.str.256
	.quad	.L.str.257
	.quad	.L.str.258
	.quad	.L.str.259
	.quad	.L.str.260
	.quad	.L.str.261
	.quad	.L.str.262
	.quad	.L.str.263
	.quad	.L.str.264
	.quad	.L.str.265
	.quad	.L.str.266
	.quad	.L.str.267
	.quad	.L.str.268
	.quad	.L.str.269
	.quad	.L.str.270
	.quad	.L.str.271
	.quad	.L.str.272
	.quad	.L.str.273
	.quad	.L.str.274
	.quad	.L.str.275
	.quad	.L.str.276
	.quad	.L.str.277
	.quad	.L.str.278
	.quad	.L.str.279
	.quad	.L.str.280
	.quad	.L.str.281
	.quad	.L.str.282
	.quad	.L.str.283
	.quad	.L.str.284
	.quad	.L.str.285
	.quad	.L.str.286
	.quad	.L.str.287
	.quad	.L.str.288
	.quad	.L.str.289
	.quad	.L.str.290
	.quad	.L.str.291
	.quad	.L.str.292
	.quad	.L.str.293
	.quad	.L.str.294
	.quad	.L.str.295
	.quad	.L.str.296
	.quad	.L.str.297
	.quad	.L.str.298
	.quad	.L.str.299
	.quad	.L.str.300
	.quad	.L.str.301
	.quad	.L.str.302
	.quad	.L.str.303
	.quad	.L.str.304
	.quad	.L.str.305
	.quad	.L.str.306
	.quad	.L.str.307
	.quad	.L.str.308
	.quad	.L.str.309
	.size	pscompact_names, 1808

	.type	.L.str.84,@object       # @.str.84
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.84:
	.asciz	"abs"
	.size	.L.str.84, 4

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"add"
	.size	.L.str.85, 4

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"aload"
	.size	.L.str.86, 6

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"anchorsearch"
	.size	.L.str.87, 13

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"and"
	.size	.L.str.88, 4

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"arc"
	.size	.L.str.89, 4

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"arcn"
	.size	.L.str.90, 5

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"arct"
	.size	.L.str.91, 5

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"arcto"
	.size	.L.str.92, 6

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"array"
	.size	.L.str.93, 6

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"ashow"
	.size	.L.str.94, 6

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"astore"
	.size	.L.str.95, 7

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"awidthshow"
	.size	.L.str.96, 11

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"begin"
	.size	.L.str.97, 6

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"bind"
	.size	.L.str.98, 5

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"bitshift"
	.size	.L.str.99, 9

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"ceiling"
	.size	.L.str.100, 8

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"charpath"
	.size	.L.str.101, 9

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"clear"
	.size	.L.str.102, 6

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"cleartomark"
	.size	.L.str.103, 12

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"clip"
	.size	.L.str.104, 5

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"clippath"
	.size	.L.str.105, 9

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"closepath"
	.size	.L.str.106, 10

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"concat"
	.size	.L.str.107, 7

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"concatmatrix"
	.size	.L.str.108, 13

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"copy"
	.size	.L.str.109, 5

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"count"
	.size	.L.str.110, 6

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"counttomark"
	.size	.L.str.111, 12

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"currentcmykcolor"
	.size	.L.str.112, 17

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"currentdash"
	.size	.L.str.113, 12

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"currentdict"
	.size	.L.str.114, 12

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"currentfile"
	.size	.L.str.115, 12

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"currentfont"
	.size	.L.str.116, 12

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"currentgray"
	.size	.L.str.117, 12

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"currentgstate"
	.size	.L.str.118, 14

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"currenthsbcolor"
	.size	.L.str.119, 16

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"currentlinecap"
	.size	.L.str.120, 15

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"currentlinejoin"
	.size	.L.str.121, 16

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"currentlinewidth"
	.size	.L.str.122, 17

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"currentmatrix"
	.size	.L.str.123, 14

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"currentpoint"
	.size	.L.str.124, 13

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"currentrgbcolor"
	.size	.L.str.125, 16

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"currentshared"
	.size	.L.str.126, 14

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"curveto"
	.size	.L.str.127, 8

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"cvi"
	.size	.L.str.128, 4

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"cvlit"
	.size	.L.str.129, 6

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"cvn"
	.size	.L.str.130, 4

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"cvr"
	.size	.L.str.131, 4

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"cvrs"
	.size	.L.str.132, 5

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"cvs"
	.size	.L.str.133, 4

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"cvx"
	.size	.L.str.134, 4

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"def"
	.size	.L.str.135, 4

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"defineusername"
	.size	.L.str.136, 15

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"dict"
	.size	.L.str.137, 5

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"div"
	.size	.L.str.138, 4

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"dtransform"
	.size	.L.str.139, 11

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"dup"
	.size	.L.str.140, 4

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"end"
	.size	.L.str.141, 4

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"eoclip"
	.size	.L.str.142, 7

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"eofill"
	.size	.L.str.143, 7

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"eoviewclip"
	.size	.L.str.144, 11

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"eq"
	.size	.L.str.145, 3

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"exch"
	.size	.L.str.146, 5

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"exec"
	.size	.L.str.147, 5

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"exit"
	.size	.L.str.148, 5

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"file"
	.size	.L.str.149, 5

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"fill"
	.size	.L.str.150, 5

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"findfont"
	.size	.L.str.151, 9

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"flattenpath"
	.size	.L.str.152, 12

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"floor"
	.size	.L.str.153, 6

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"flush"
	.size	.L.str.154, 6

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"flushfile"
	.size	.L.str.155, 10

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"for"
	.size	.L.str.156, 4

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"forall"
	.size	.L.str.157, 7

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"ge"
	.size	.L.str.158, 3

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"get"
	.size	.L.str.159, 4

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"getinterval"
	.size	.L.str.160, 12

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"grestore"
	.size	.L.str.161, 9

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"gsave"
	.size	.L.str.162, 6

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"gstate"
	.size	.L.str.163, 7

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"gt"
	.size	.L.str.164, 3

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"identmatrix"
	.size	.L.str.165, 12

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"idiv"
	.size	.L.str.166, 5

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"idtransform"
	.size	.L.str.167, 12

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"if"
	.size	.L.str.168, 3

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"ifelse"
	.size	.L.str.169, 7

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"image"
	.size	.L.str.170, 6

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"imagemask"
	.size	.L.str.171, 10

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"index"
	.size	.L.str.172, 6

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"ineofill"
	.size	.L.str.173, 9

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"infill"
	.size	.L.str.174, 7

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"initviewclip"
	.size	.L.str.175, 13

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"inueofill"
	.size	.L.str.176, 10

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"inufill"
	.size	.L.str.177, 8

	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	"invertmatrix"
	.size	.L.str.178, 13

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"itransform"
	.size	.L.str.179, 11

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	"known"
	.size	.L.str.180, 6

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"le"
	.size	.L.str.181, 3

	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	"length"
	.size	.L.str.182, 7

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"lineto"
	.size	.L.str.183, 7

	.type	.L.str.184,@object      # @.str.184
.L.str.184:
	.asciz	"load"
	.size	.L.str.184, 5

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	"loop"
	.size	.L.str.185, 5

	.type	.L.str.186,@object      # @.str.186
.L.str.186:
	.asciz	"lt"
	.size	.L.str.186, 3

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"makefont"
	.size	.L.str.187, 9

	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	"matrix"
	.size	.L.str.188, 7

	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	"maxlength"
	.size	.L.str.189, 10

	.type	.L.str.190,@object      # @.str.190
.L.str.190:
	.asciz	"mod"
	.size	.L.str.190, 4

	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	"moveto"
	.size	.L.str.191, 7

	.type	.L.str.192,@object      # @.str.192
.L.str.192:
	.asciz	"mul"
	.size	.L.str.192, 4

	.type	.L.str.193,@object      # @.str.193
.L.str.193:
	.asciz	"ne"
	.size	.L.str.193, 3

	.type	.L.str.194,@object      # @.str.194
.L.str.194:
	.asciz	"neg"
	.size	.L.str.194, 4

	.type	.L.str.195,@object      # @.str.195
.L.str.195:
	.asciz	"newpath"
	.size	.L.str.195, 8

	.type	.L.str.196,@object      # @.str.196
.L.str.196:
	.asciz	"not"
	.size	.L.str.196, 4

	.type	.L.str.197,@object      # @.str.197
.L.str.197:
	.asciz	"null"
	.size	.L.str.197, 5

	.type	.L.str.198,@object      # @.str.198
.L.str.198:
	.asciz	"or"
	.size	.L.str.198, 3

	.type	.L.str.199,@object      # @.str.199
.L.str.199:
	.asciz	"pathbbox"
	.size	.L.str.199, 9

	.type	.L.str.200,@object      # @.str.200
.L.str.200:
	.asciz	"pathforall"
	.size	.L.str.200, 11

	.type	.L.str.201,@object      # @.str.201
.L.str.201:
	.asciz	"pop"
	.size	.L.str.201, 4

	.type	.L.str.202,@object      # @.str.202
.L.str.202:
	.asciz	"print"
	.size	.L.str.202, 6

	.type	.L.str.203,@object      # @.str.203
.L.str.203:
	.asciz	"printobject"
	.size	.L.str.203, 12

	.type	.L.str.204,@object      # @.str.204
.L.str.204:
	.asciz	"put"
	.size	.L.str.204, 4

	.type	.L.str.205,@object      # @.str.205
.L.str.205:
	.asciz	"putinterval"
	.size	.L.str.205, 12

	.type	.L.str.206,@object      # @.str.206
.L.str.206:
	.asciz	"rcurveto"
	.size	.L.str.206, 9

	.type	.L.str.207,@object      # @.str.207
.L.str.207:
	.asciz	"read"
	.size	.L.str.207, 5

	.type	.L.str.208,@object      # @.str.208
.L.str.208:
	.asciz	"readhexstring"
	.size	.L.str.208, 14

	.type	.L.str.209,@object      # @.str.209
.L.str.209:
	.asciz	"readline"
	.size	.L.str.209, 9

	.type	.L.str.210,@object      # @.str.210
.L.str.210:
	.asciz	"readstring"
	.size	.L.str.210, 11

	.type	.L.str.211,@object      # @.str.211
.L.str.211:
	.asciz	"rectclip"
	.size	.L.str.211, 9

	.type	.L.str.212,@object      # @.str.212
.L.str.212:
	.asciz	"rectfill"
	.size	.L.str.212, 9

	.type	.L.str.213,@object      # @.str.213
.L.str.213:
	.asciz	"rectstroke"
	.size	.L.str.213, 11

	.type	.L.str.214,@object      # @.str.214
.L.str.214:
	.asciz	"rectviewclip"
	.size	.L.str.214, 13

	.type	.L.str.215,@object      # @.str.215
.L.str.215:
	.asciz	"repeat"
	.size	.L.str.215, 7

	.type	.L.str.216,@object      # @.str.216
.L.str.216:
	.asciz	"restore"
	.size	.L.str.216, 8

	.type	.L.str.217,@object      # @.str.217
.L.str.217:
	.asciz	"rlineto"
	.size	.L.str.217, 8

	.type	.L.str.218,@object      # @.str.218
.L.str.218:
	.asciz	"rmoveto"
	.size	.L.str.218, 8

	.type	.L.str.219,@object      # @.str.219
.L.str.219:
	.asciz	"roll"
	.size	.L.str.219, 5

	.type	.L.str.220,@object      # @.str.220
.L.str.220:
	.asciz	"rotate"
	.size	.L.str.220, 7

	.type	.L.str.221,@object      # @.str.221
.L.str.221:
	.asciz	"round"
	.size	.L.str.221, 6

	.type	.L.str.222,@object      # @.str.222
.L.str.222:
	.asciz	"save"
	.size	.L.str.222, 5

	.type	.L.str.223,@object      # @.str.223
.L.str.223:
	.asciz	"scale"
	.size	.L.str.223, 6

	.type	.L.str.224,@object      # @.str.224
.L.str.224:
	.asciz	"scalefont"
	.size	.L.str.224, 10

	.type	.L.str.225,@object      # @.str.225
.L.str.225:
	.asciz	"search"
	.size	.L.str.225, 7

	.type	.L.str.226,@object      # @.str.226
.L.str.226:
	.asciz	"selectfont"
	.size	.L.str.226, 11

	.type	.L.str.227,@object      # @.str.227
.L.str.227:
	.asciz	"setbbox"
	.size	.L.str.227, 8

	.type	.L.str.228,@object      # @.str.228
.L.str.228:
	.asciz	"setcachedevice"
	.size	.L.str.228, 15

	.type	.L.str.229,@object      # @.str.229
.L.str.229:
	.asciz	"setcachedevice2"
	.size	.L.str.229, 16

	.type	.L.str.230,@object      # @.str.230
.L.str.230:
	.asciz	"setcharwidth"
	.size	.L.str.230, 13

	.type	.L.str.231,@object      # @.str.231
.L.str.231:
	.asciz	"setcmykcolor"
	.size	.L.str.231, 13

	.type	.L.str.232,@object      # @.str.232
.L.str.232:
	.asciz	"setdash"
	.size	.L.str.232, 8

	.type	.L.str.233,@object      # @.str.233
.L.str.233:
	.asciz	"setfont"
	.size	.L.str.233, 8

	.type	.L.str.234,@object      # @.str.234
.L.str.234:
	.asciz	"setgray"
	.size	.L.str.234, 8

	.type	.L.str.235,@object      # @.str.235
.L.str.235:
	.asciz	"setgstate"
	.size	.L.str.235, 10

	.type	.L.str.236,@object      # @.str.236
.L.str.236:
	.asciz	"sethsbcolor"
	.size	.L.str.236, 12

	.type	.L.str.237,@object      # @.str.237
.L.str.237:
	.asciz	"setlinecap"
	.size	.L.str.237, 11

	.type	.L.str.238,@object      # @.str.238
.L.str.238:
	.asciz	"setlinejoin"
	.size	.L.str.238, 12

	.type	.L.str.239,@object      # @.str.239
.L.str.239:
	.asciz	"setlinewidth"
	.size	.L.str.239, 13

	.type	.L.str.240,@object      # @.str.240
.L.str.240:
	.asciz	"setmatrix"
	.size	.L.str.240, 10

	.type	.L.str.241,@object      # @.str.241
.L.str.241:
	.asciz	"setrgbcolor"
	.size	.L.str.241, 12

	.type	.L.str.242,@object      # @.str.242
.L.str.242:
	.asciz	"setshared"
	.size	.L.str.242, 10

	.type	.L.str.243,@object      # @.str.243
.L.str.243:
	.asciz	"shareddict"
	.size	.L.str.243, 11

	.type	.L.str.244,@object      # @.str.244
.L.str.244:
	.asciz	"show"
	.size	.L.str.244, 5

	.type	.L.str.245,@object      # @.str.245
.L.str.245:
	.asciz	"showpage"
	.size	.L.str.245, 9

	.type	.L.str.246,@object      # @.str.246
.L.str.246:
	.asciz	"stop"
	.size	.L.str.246, 5

	.type	.L.str.247,@object      # @.str.247
.L.str.247:
	.asciz	"stopped"
	.size	.L.str.247, 8

	.type	.L.str.248,@object      # @.str.248
.L.str.248:
	.asciz	"store"
	.size	.L.str.248, 6

	.type	.L.str.249,@object      # @.str.249
.L.str.249:
	.asciz	"string"
	.size	.L.str.249, 7

	.type	.L.str.250,@object      # @.str.250
.L.str.250:
	.asciz	"stringwidth"
	.size	.L.str.250, 12

	.type	.L.str.251,@object      # @.str.251
.L.str.251:
	.asciz	"stroke"
	.size	.L.str.251, 7

	.type	.L.str.252,@object      # @.str.252
.L.str.252:
	.asciz	"strokepath"
	.size	.L.str.252, 11

	.type	.L.str.253,@object      # @.str.253
.L.str.253:
	.asciz	"sub"
	.size	.L.str.253, 4

	.type	.L.str.254,@object      # @.str.254
.L.str.254:
	.asciz	"systemdict"
	.size	.L.str.254, 11

	.type	.L.str.255,@object      # @.str.255
.L.str.255:
	.asciz	"token"
	.size	.L.str.255, 6

	.type	.L.str.256,@object      # @.str.256
.L.str.256:
	.asciz	"transform"
	.size	.L.str.256, 10

	.type	.L.str.257,@object      # @.str.257
.L.str.257:
	.asciz	"translate"
	.size	.L.str.257, 10

	.type	.L.str.258,@object      # @.str.258
.L.str.258:
	.asciz	"truncate"
	.size	.L.str.258, 9

	.type	.L.str.259,@object      # @.str.259
.L.str.259:
	.asciz	"type"
	.size	.L.str.259, 5

	.type	.L.str.260,@object      # @.str.260
.L.str.260:
	.asciz	"uappend"
	.size	.L.str.260, 8

	.type	.L.str.261,@object      # @.str.261
.L.str.261:
	.asciz	"ucache"
	.size	.L.str.261, 7

	.type	.L.str.262,@object      # @.str.262
.L.str.262:
	.asciz	"ueofill"
	.size	.L.str.262, 8

	.type	.L.str.263,@object      # @.str.263
.L.str.263:
	.asciz	"ufill"
	.size	.L.str.263, 6

	.type	.L.str.264,@object      # @.str.264
.L.str.264:
	.asciz	"undef"
	.size	.L.str.264, 6

	.type	.L.str.265,@object      # @.str.265
.L.str.265:
	.asciz	"upath"
	.size	.L.str.265, 6

	.type	.L.str.266,@object      # @.str.266
.L.str.266:
	.asciz	"userdict"
	.size	.L.str.266, 9

	.type	.L.str.267,@object      # @.str.267
.L.str.267:
	.asciz	"ustroke"
	.size	.L.str.267, 8

	.type	.L.str.268,@object      # @.str.268
.L.str.268:
	.asciz	"viewclip"
	.size	.L.str.268, 9

	.type	.L.str.269,@object      # @.str.269
.L.str.269:
	.asciz	"viewclippath"
	.size	.L.str.269, 13

	.type	.L.str.270,@object      # @.str.270
.L.str.270:
	.asciz	"where"
	.size	.L.str.270, 6

	.type	.L.str.271,@object      # @.str.271
.L.str.271:
	.asciz	"widthshow"
	.size	.L.str.271, 10

	.type	.L.str.272,@object      # @.str.272
.L.str.272:
	.asciz	"write"
	.size	.L.str.272, 6

	.type	.L.str.273,@object      # @.str.273
.L.str.273:
	.asciz	"writehexstring"
	.size	.L.str.273, 15

	.type	.L.str.274,@object      # @.str.274
.L.str.274:
	.asciz	"writeobject"
	.size	.L.str.274, 12

	.type	.L.str.275,@object      # @.str.275
.L.str.275:
	.asciz	"writestring"
	.size	.L.str.275, 12

	.type	.L.str.276,@object      # @.str.276
.L.str.276:
	.asciz	"wtranslation"
	.size	.L.str.276, 13

	.type	.L.str.277,@object      # @.str.277
.L.str.277:
	.asciz	"xor"
	.size	.L.str.277, 4

	.type	.L.str.278,@object      # @.str.278
.L.str.278:
	.asciz	"xshow"
	.size	.L.str.278, 6

	.type	.L.str.279,@object      # @.str.279
.L.str.279:
	.asciz	"xyshow"
	.size	.L.str.279, 7

	.type	.L.str.280,@object      # @.str.280
.L.str.280:
	.asciz	"yshow"
	.size	.L.str.280, 6

	.type	.L.str.281,@object      # @.str.281
.L.str.281:
	.asciz	"FontDirectory"
	.size	.L.str.281, 14

	.type	.L.str.282,@object      # @.str.282
.L.str.282:
	.asciz	"SharedFontDirectory"
	.size	.L.str.282, 20

	.type	.L.str.283,@object      # @.str.283
.L.str.283:
	.asciz	"Courier%"
	.size	.L.str.283, 9

	.type	.L.str.284,@object      # @.str.284
.L.str.284:
	.asciz	"Courier-Bold"
	.size	.L.str.284, 13

	.type	.L.str.285,@object      # @.str.285
.L.str.285:
	.asciz	"Courier-BoldOblique"
	.size	.L.str.285, 20

	.type	.L.str.286,@object      # @.str.286
.L.str.286:
	.asciz	"Courier-Oblique"
	.size	.L.str.286, 16

	.type	.L.str.287,@object      # @.str.287
.L.str.287:
	.asciz	"Helvetica"
	.size	.L.str.287, 10

	.type	.L.str.288,@object      # @.str.288
.L.str.288:
	.asciz	"Helvetica-Bold"
	.size	.L.str.288, 15

	.type	.L.str.289,@object      # @.str.289
.L.str.289:
	.asciz	"Helvetica-BoldOblique"
	.size	.L.str.289, 22

	.type	.L.str.290,@object      # @.str.290
.L.str.290:
	.asciz	"Helvetica-Oblique"
	.size	.L.str.290, 18

	.type	.L.str.291,@object      # @.str.291
.L.str.291:
	.asciz	"Symbol"
	.size	.L.str.291, 7

	.type	.L.str.292,@object      # @.str.292
.L.str.292:
	.asciz	"Times-Bold"
	.size	.L.str.292, 11

	.type	.L.str.293,@object      # @.str.293
.L.str.293:
	.asciz	"Times-BoldItalic"
	.size	.L.str.293, 17

	.type	.L.str.294,@object      # @.str.294
.L.str.294:
	.asciz	"Times-Italic"
	.size	.L.str.294, 13

	.type	.L.str.295,@object      # @.str.295
.L.str.295:
	.asciz	"Times-Roman"
	.size	.L.str.295, 12

	.type	.L.str.296,@object      # @.str.296
.L.str.296:
	.asciz	"execuserobject"
	.size	.L.str.296, 15

	.type	.L.str.297,@object      # @.str.297
.L.str.297:
	.asciz	"currentcolor"
	.size	.L.str.297, 13

	.type	.L.str.298,@object      # @.str.298
.L.str.298:
	.asciz	"currentcolorspace"
	.size	.L.str.298, 18

	.type	.L.str.299,@object      # @.str.299
.L.str.299:
	.asciz	"currentglobal"
	.size	.L.str.299, 14

	.type	.L.str.300,@object      # @.str.300
.L.str.300:
	.asciz	"execform"
	.size	.L.str.300, 9

	.type	.L.str.301,@object      # @.str.301
.L.str.301:
	.asciz	"filter"
	.size	.L.str.301, 7

	.type	.L.str.302,@object      # @.str.302
.L.str.302:
	.asciz	"findresource"
	.size	.L.str.302, 13

	.type	.L.str.303,@object      # @.str.303
.L.str.303:
	.asciz	"globaldict"
	.size	.L.str.303, 11

	.type	.L.str.304,@object      # @.str.304
.L.str.304:
	.asciz	"makepattern"
	.size	.L.str.304, 12

	.type	.L.str.305,@object      # @.str.305
.L.str.305:
	.asciz	"setcolor"
	.size	.L.str.305, 9

	.type	.L.str.306,@object      # @.str.306
.L.str.306:
	.asciz	"setcolorspace"
	.size	.L.str.306, 14

	.type	.L.str.307,@object      # @.str.307
.L.str.307:
	.asciz	"setglobal"
	.size	.L.str.307, 10

	.type	.L.str.308,@object      # @.str.308
.L.str.308:
	.asciz	"setpagedevice"
	.size	.L.str.308, 14

	.type	.L.str.309,@object      # @.str.309
.L.str.309:
	.asciz	"setpattern"
	.size	.L.str.309, 11

	.type	.L.str.310,@object      # @.str.310
.L.str.310:
	.asciz	"Malformed hexstring in pscompaction!\n"
	.size	.L.str.310, 38


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
