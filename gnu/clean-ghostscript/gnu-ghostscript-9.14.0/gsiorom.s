	.text
	.file	"gsiorom.bc"
	.align	16, 0x90
	.type	romfs_init,@function
romfs_init:                             # @romfs_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rsi, %rax
	movq	%rdi, %rbx
	movl	$st_romfs_state, %esi
	movl	$.L.str.2, %edx
	movq	%rax, %rdi
	callq	*72(%rax)
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB0_2
# BB#1:                                 # %if.end
	movq	%rcx, 120(%rbx)
	xorl	%eax, %eax
.LBB0_2:                                # %cleanup
	popq	%rbx
	retq
.Lfunc_end0:
	.size	romfs_init, .Lfunc_end0-romfs_init
	.cfi_endproc

	.align	16, 0x90
	.type	romfs_open_file,@function
romfs_open_file:                        # @romfs_open_file
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
	subq	$56, %rsp
.Ltmp8:
	.cfi_def_cfa_offset 112
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
	movq	%rsi, %rbx
	movq	gs_romfs(%rip), %r15
	movl	$0, 52(%rsp)
	movq	$0, (%r8)
	movl	$-22, %ebp
	testq	%r15, %r15
	je	.LBB1_7
# BB#1:                                 # %for.body.lr.ph
	movq	%r9, 16(%rsp)           # 8-byte Spill
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	%r8, 40(%rsp)           # 8-byte Spill
	movl	%edx, %r14d
	movl	%edx, 28(%rsp)          # 4-byte Spill
	movl	$gs_romfs+8, %r12d
	.align	16, 0x90
.LBB1_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r15), %eax
	shlq	$24, %rax
	movzbl	1(%r15), %ecx
	shlq	$16, %rcx
	movzbl	2(%r15), %edx
	shlq	$8, %rdx
	andl	$2130706432, %eax       # imm = 0x7F000000
	orl	%eax, %ecx
	orl	%ecx, %edx
	movzbl	3(%r15), %eax
	orl	%edx, %eax
	addl	$16383, %eax            # imm = 0x3FFF
	shrl	$13, %eax
	andl	$524286, %eax           # imm = 0x7FFFE
	leaq	4(%r15,%rax,4), %r13
	movq	%r13, %rdi
	callq	strlen
	cmpq	%rax, %r14
	jne	.LBB1_4
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB1_5
.LBB1_4:                                # %for.inc
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	(%r12), %r15
	addq	$8, %r12
	testq	%r15, %r15
	jne	.LBB1_2
	jmp	.LBB1_7
.LBB1_5:                                # %if.end.14
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%rax, (%rsp)
	leaq	52(%rsp), %r9
	movl	$16640, %ecx            # imm = 0x4100
	movq	%rbx, %rdi
	movl	28(%rsp), %esi          # 4-byte Reload
	movq	32(%rsp), %rdx          # 8-byte Reload
	movq	40(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %r8
	callq	file_prepare_stream
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_7
# BB#6:                                 # %if.end.19
	movq	(%rbx), %rbx
	movq	136(%rbx), %rsi
	movl	148(%rbx), %edx
	movl	$sread_block.p, %ecx
	movl	$5, %r8d
	movq	%rbx, %rdi
	callq	s_std_init
	movw	$0, 152(%rbx)
	movq	%r15, 304(%rbx)
	movzbl	155(%rbx), %eax
	movl	%eax, 328(%rbx)
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movd	%rax, %xmm0
	pslldq	$8, %xmm0               # xmm0 = zero,zero,zero,zero,zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7]
	movdqu	%xmm0, 336(%rbx)
	xorl	%ebp, %ebp
.LBB1_7:                                # %cleanup
	movl	%ebp, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	romfs_open_file, .Lfunc_end1-romfs_open_file
	.cfi_endproc

	.align	16, 0x90
	.type	romfs_file_status,@function
romfs_file_status:                      # @romfs_file_status
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp16:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp17:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp18:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp19:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp21:
	.cfi_def_cfa_offset 64
.Ltmp22:
	.cfi_offset %rbx, -56
.Ltmp23:
	.cfi_offset %r12, -48
.Ltmp24:
	.cfi_offset %r13, -40
.Ltmp25:
	.cfi_offset %r14, -32
.Ltmp26:
	.cfi_offset %r15, -24
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	gs_romfs(%rip), %rbx
	movq	%r12, %rdi
	callq	strlen
	movq	%rax, %rbp
	xorl	%esi, %esi
	movl	$144, %edx
	movq	%r14, %rdi
	callq	memset
	movl	$-22, %eax
	testq	%rbx, %rbx
	je	.LBB2_7
# BB#1:                                 # %for.body.lr.ph
	movl	%ebp, %r13d
	movl	$gs_romfs+8, %ebp
	.align	16, 0x90
.LBB2_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %r15d
	movzbl	1(%rbx), %eax
	shll	$16, %eax
	movzbl	2(%rbx), %ecx
	shll	$8, %ecx
	movzbl	3(%rbx), %edx
	andl	$127, %r15d
	shll	$24, %r15d
	orl	%eax, %r15d
	orl	%ecx, %r15d
	orl	%edx, %r15d
	leal	16383(%r15), %eax
	shrl	$13, %eax
	orl	$1, %eax
	leaq	(%rbx,%rax,4), %rbx
	movq	%rbx, %rdi
	callq	strlen
	cmpq	%rax, %r13
	jne	.LBB2_4
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB2_6
.LBB2_4:                                # %for.inc
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	(%rbp), %rbx
	addq	$8, %rbp
	testq	%rbx, %rbx
	jne	.LBB2_2
# BB#5:
	movl	$-22, %eax
	jmp	.LBB2_7
.LBB2_6:                                # %if.end.18
	movl	%r15d, %eax
	movq	%rax, 48(%r14)
	movq	gs_romfs_buildtime(%rip), %rax
	movq	%rax, 88(%r14)
	movq	%rax, 104(%r14)
	xorl	%eax, %eax
.LBB2_7:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	romfs_file_status, .Lfunc_end2-romfs_file_status
	.cfi_endproc

	.align	16, 0x90
	.type	romfs_enumerate_files_init,@function
romfs_enumerate_files_init:             # @romfs_enumerate_files_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp29:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp30:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp32:
	.cfi_def_cfa_offset 48
.Ltmp33:
	.cfi_offset %rbx, -40
.Ltmp34:
	.cfi_offset %r12, -32
.Ltmp35:
	.cfi_offset %r14, -24
.Ltmp36:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movl	%edx, %r12d
	movq	%rsi, %r15
	movl	$st_romfs_file_enum, %esi
	movl	$.L.str.5, %edx
	movq	%r14, %rdi
	callq	*72(%r14)
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB3_4
# BB#1:                                 # %if.end
	xorl	%esi, %esi
	movl	$24, %edx
	movq	%rbx, %rdi
	callq	memset
	leal	1(%r12), %esi
	movl	$.L.str.6, %edx
	movq	%r14, %rdi
	callq	*64(%r14)
	movq	%rax, (%rbx)
	movl	$0, 8(%rbx)
	movq	%r14, 16(%rbx)
	testq	%rax, %rax
	je	.LBB3_2
# BB#3:                                 # %if.end.7
	movl	%r12d, %r14d
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy
	movq	(%rbx), %rax
	movb	$0, (%rax,%r14)
	movq	%rbx, %rax
	jmp	.LBB3_4
.LBB3_2:                                # %romfs_enumerate_close.exit
	movl	$.L.str.9, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*24(%r14)
	xorl	%eax, %eax
.LBB3_4:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end3:
	.size	romfs_enumerate_files_init, .Lfunc_end3-romfs_enumerate_files_init
	.cfi_endproc

	.align	16, 0x90
	.type	romfs_enumerate_next,@function
romfs_enumerate_next:                   # @romfs_enumerate_next
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp38:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp39:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp40:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp41:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp43:
	.cfi_def_cfa_offset 64
.Ltmp44:
	.cfi_offset %rbx, -56
.Ltmp45:
	.cfi_offset %r12, -48
.Ltmp46:
	.cfi_offset %r13, -40
.Ltmp47:
	.cfi_offset %r14, -32
.Ltmp48:
	.cfi_offset %r15, -24
.Ltmp49:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %r14
	movq	%rdi, %r12
	.align	16, 0x90
.LBB4_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	8(%r12), %rax
	movq	gs_romfs(,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.LBB4_6
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movzbl	(%rcx), %edx
	shlq	$24, %rdx
	movzbl	1(%rcx), %esi
	shlq	$16, %rsi
	movzbl	2(%rcx), %edi
	shlq	$8, %rdi
	andl	$2130706432, %edx       # imm = 0x7F000000
	orl	%edx, %esi
	orl	%esi, %edi
	movzbl	3(%rcx), %edx
	orl	%edi, %edx
	addl	$16383, %edx            # imm = 0x3FFF
	shrl	$13, %edx
	andl	$524286, %edx           # imm = 0x7FFFE
	leaq	4(%rcx,%rdx,4), %rbp
	incl	%eax
	movl	%eax, 8(%r12)
	movq	%rbp, %rdi
	callq	strlen
	movq	%rax, %r13
	movq	(%r12), %rbx
	movq	%rbx, %rdi
	callq	strlen
	xorl	%r8d, %r8d
	movq	%rbp, %rdi
	movl	%r13d, %esi
	movq	%rbx, %rdx
	movl	%eax, %ecx
	callq	string_match
	testl	%eax, %eax
	je	.LBB4_1
# BB#3:                                 # %if.then
	movq	%rbp, %rdi
	callq	strlen
	movl	%r15d, %ecx
	cmpq	%rcx, %rax
	jae	.LBB4_5
# BB#4:                                 # %if.then.17
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	memcpy
.LBB4_5:                                # %cleanup
	movq	%rbp, %rdi
	callq	strlen
	jmp	.LBB4_9
.LBB4_6:                                # %while.end
	movq	(%r12), %rsi
	movq	16(%r12), %rbp
	testq	%rsi, %rsi
	je	.LBB4_8
# BB#7:                                 # %if.then.i
	movl	$.L.str.8, %edx
	movq	%rbp, %rdi
	callq	*24(%rbp)
.LBB4_8:                                # %romfs_enumerate_close.exit
	movl	$.L.str.9, %edx
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*24(%rbp)
	movl	$-1, %eax
.LBB4_9:                                # %cleanup.26
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	romfs_enumerate_next, .Lfunc_end4-romfs_enumerate_next
	.cfi_endproc

	.align	16, 0x90
	.type	romfs_enumerate_close,@function
romfs_enumerate_close:                  # @romfs_enumerate_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp50:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp51:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp52:
	.cfi_def_cfa_offset 32
.Ltmp53:
	.cfi_offset %rbx, -24
.Ltmp54:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	(%r14), %rsi
	movq	16(%r14), %rbx
	testq	%rsi, %rsi
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	$.L.str.8, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
.LBB5_2:                                # %if.end
	movq	24(%rbx), %rax
	movl	$.L.str.9, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%rax                   # TAILCALL
.Lfunc_end5:
	.size	romfs_enumerate_close, .Lfunc_end5-romfs_enumerate_close
	.cfi_endproc

	.align	16, 0x90
	.type	s_block_read_available,@function
s_block_read_available:                 # @s_block_read_available
	.cfi_startproc
# BB#0:                                 # %entry
	movq	304(%rdi), %rax
	movzbl	(%rax), %ecx
	movzbl	1(%rax), %r8d
	shlq	$16, %r8
	movzbl	2(%rax), %edx
	shlq	$8, %rdx
	movzbl	3(%rax), %eax
	andq	$127, %rcx
	shlq	$24, %rcx
	orq	%r8, %rcx
	orq	%rdx, %rcx
	orq	%rax, %rcx
	subq	176(%rdi), %rcx
	movq	112(%rdi), %rax
	movq	136(%rdi), %rdx
	incq	%rax
	subq	%rax, %rdx
	addq	%rcx, %rdx
	movq	%rdx, (%rsi)
	jne	.LBB6_3
# BB#1:                                 # %land.lhs.true
	cmpl	$0, 292(%rdi)
	je	.LBB6_3
# BB#2:                                 # %if.then
	movq	$-1, (%rsi)
.LBB6_3:                                # %if.end
	xorl	%eax, %eax
	retq
.Lfunc_end6:
	.size	s_block_read_available, .Lfunc_end6-s_block_read_available
	.cfi_endproc

	.align	16, 0x90
	.type	s_block_read_seek,@function
s_block_read_seek:                      # @s_block_read_seek
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp56:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp57:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp58:
	.cfi_def_cfa_offset 64
.Ltmp59:
	.cfi_offset %rbx, -32
.Ltmp60:
	.cfi_offset %r14, -24
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	$-2, %r14d
	testq	%rsi, %rsi
	js	.LBB7_8
# BB#1:                                 # %lor.lhs.false
	movq	304(%rbx), %rax
	movzbl	1(%rax), %ecx
	shlq	$16, %rcx
	movzbl	(%rax), %edx
	movzbl	2(%rax), %edi
	shlq	$8, %rdi
	movzbl	3(%rax), %eax
	andq	$127, %rdx
	shlq	$24, %rdx
	orq	%rcx, %rdx
	orq	%rdi, %rdx
	orq	%rax, %rdx
	cmpq	%rsi, %rdx
	jl	.LBB7_8
# BB#2:                                 # %if.end
	movq	120(%rbx), %rcx
	movq	136(%rbx), %rax
	incq	%rcx
	subq	%rax, %rcx
	movq	%rsi, %rbp
	subq	176(%rbx), %rbp
	movl	%ecx, %ecx
	cmpq	%rcx, %rbp
	jbe	.LBB7_7
# BB#3:                                 # %if.then.11
	movq	336(%rbx), %rbp
	addq	%rsi, %rbp
	movq	%rbp, %rcx
	sarq	$63, %rcx
	shrq	$50, %rcx
	leaq	(%rcx,%rbp), %rcx
	andq	$-16384, %rcx           # imm = 0xFFFFFFFFFFFFC000
	subq	%rcx, %rbp
	subq	%rbp, %rsi
	movq	%rsi, 176(%rbx)
	leaq	-1(%rax), %rcx
	movq	%rcx, 16(%rsp)
	movl	148(%rbx), %edx
	leaq	-1(%rax,%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	%rcx, 120(%rbx)
	movq	%rcx, 112(%rbx)
	leaq	8(%rsp), %rdx
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	s_block_read_process
	movw	%ax, 152(%rbx)
	movzwl	%ax, %ecx
	cmpl	$65534, %ecx            # imm = 0xFFFE
	je	.LBB7_8
# BB#4:                                 # %if.then.11
	cwtl
	cmpl	$1, %eax
	jne	.LBB7_6
# BB#5:                                 # %if.then.38
	movw	$0, 152(%rbx)
.LBB7_6:                                # %if.end.40
	movq	136(%rbx), %rax
	leaq	-1(%rax), %rcx
	movq	%rcx, 112(%rbx)
	movq	16(%rsp), %rcx
	movq	%rcx, 120(%rbx)
.LBB7_7:                                # %if.end.50
	leaq	-1(%rax,%rbp), %rax
	movq	%rax, 112(%rbx)
	xorl	%r14d, %r14d
.LBB7_8:                                # %cleanup.57
	movl	%r14d, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	s_block_read_seek, .Lfunc_end7-s_block_read_seek
	.cfi_endproc

	.align	16, 0x90
	.type	s_block_read_close,@function
s_block_read_close:                     # @s_block_read_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	8(%rbx), %rdi
	movq	136(%rbx), %rsi
	movl	$.L.str.4, %edx
	callq	*24(%rdi)
	movq	$0, 304(%rbx)
	movw	266(%rbx), %ax
	orw	264(%rbx), %ax
	incl	%eax
	movw	%ax, 266(%rbx)
	movw	%ax, 264(%rbx)
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end8:
	.size	s_block_read_close, .Lfunc_end8-s_block_read_close
	.cfi_endproc

	.align	16, 0x90
	.type	s_block_read_process,@function
s_block_read_process:                   # @s_block_read_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp65:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp66:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp67:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp68:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp69:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp70:
	.cfi_def_cfa_offset 80
.Ltmp71:
	.cfi_offset %rbx, -56
.Ltmp72:
	.cfi_offset %r12, -48
.Ltmp73:
	.cfi_offset %r13, -40
.Ltmp74:
	.cfi_offset %r14, -32
.Ltmp75:
	.cfi_offset %r15, -24
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	304(%rdi), %rsi
	movzbl	(%rsi), %eax
	shll	$24, %eax
	movzbl	1(%rsi), %ecx
	shll	$16, %ecx
	orl	%eax, %ecx
	movzbl	2(%rsi), %eax
	shll	$8, %eax
	orl	%ecx, %eax
	movzbl	3(%rsi), %r11d
	orl	%eax, %r11d
	movl	%r11d, %r13d
	andl	$2147483647, %r13d      # imm = 0x7FFFFFFF
	leal	16383(%r13), %ebx
	shrl	$14, %ebx
	movq	176(%rdi), %r10
	movq	336(%rdi), %r9
	movq	120(%rdi), %r15
	movq	136(%rdi), %r8
	leaq	(%r9,%r10), %rcx
	subq	%r8, %rcx
	leaq	(%r15,%rcx), %rdx
	leaq	1(%r15,%rcx), %rcx
	sarq	$63, %rcx
	shrq	$50, %rcx
	leaq	1(%rcx,%rdx), %rdx
	sarq	$14, %rdx
	movq	%rdx, %rcx
	andq	$2147483647, %rcx       # imm = 0x7FFFFFFF
	addq	%rcx, %rcx
	movl	%edx, %ebp
	shll	$14, %ebp
	movl	%r13d, %eax
	subl	%ebp, %eax
	movzbl	8(%rsi,%rcx,4), %ebp
	decl	%ebx
	cmpl	%ebx, %edx
	movzbl	9(%rsi,%rcx,4), %edx
	movl	$16384, %r12d           # imm = 0x4000
	cmovael	%eax, %r12d
	leaq	1(%r10), %rax
	subq	%r8, %rax
	addq	%r15, %rax
	movzbl	10(%rsi,%rcx,4), %ebx
	cmpq	%r13, %rax
	movzbl	11(%rsi,%rcx,4), %r15d
	movl	$-1, %eax
	jge	.LBB9_16
# BB#1:                                 # %entry
	shlq	$24, %rbp
	shlq	$16, %rdx
	orq	%rbp, %rdx
	shlq	$8, %rbx
	orq	%rdx, %rbx
	orq	%r15, %rbx
	addq	%rsi, %rbx
	je	.LBB9_16
# BB#2:                                 # %if.end
	movq	16(%r14), %r13
	subq	8(%r14), %r13
	movzbl	4(%rsi,%rcx,4), %eax
	shll	$24, %eax
	movzbl	5(%rsi,%rcx,4), %edx
	shll	$16, %edx
	orl	%eax, %edx
	movzbl	6(%rsi,%rcx,4), %ebp
	shll	$8, %ebp
	orl	%edx, %ebp
	movzbl	7(%rsi,%rcx,4), %eax
	movq	344(%rdi), %rcx
	movabsq	$9223372036854775807, %rdx # imm = 0x7FFFFFFFFFFFFFFF
	cmpq	%rdx, %rcx
	je	.LBB9_4
# BB#3:                                 # %if.then.45
	subl	%r10d, %r9d
	addl	%r9d, %ecx
	cmpl	%ecx, %r12d
	cmovbel	%r12d, %ecx
	movl	%ecx, %r12d
.LBB9_4:                                # %if.end.56
	orl	%eax, %ebp
	testl	%r11d, %r11d
	js	.LBB9_5
# BB#14:                                # %if.else
	cmpl	%r13d, %ebp
	cmoval	%r13d, %ebp
	movq	8(%r14), %rdi
	incq	%rdi
	movslq	%ebp, %rdx
	movq	%rbx, %rsi
	callq	memcpy
	movl	%ebp, %r12d
.LBB9_15:                               # %if.end.100
	xorl	%eax, %eax
	testl	%r12d, %r12d
	cmovnsl	%r12d, %eax
	cltq
	addq	%rax, 8(%r14)
	movl	$1, %eax
	jmp	.LBB9_16
.LBB9_5:                                # %if.then.57
	movq	$16384, 16(%rsp)        # imm = 0x4000
	movq	8(%r14), %r15
	incq	%r15
	cmpq	%r8, %r15
	jae	.LBB9_6
# BB#8:                                 # %if.then.69
	xorl	%ecx, %ecx
	cmpl	%r12d, %r13d
	jae	.LBB9_10
	jmp	.LBB9_9
.LBB9_6:                                # %lor.lhs.false.63
	movl	148(%rdi), %eax
	xorl	%ecx, %ecx
	cmpl	%r12d, %r13d
	jae	.LBB9_10
# BB#7:                                 # %lor.lhs.false.63
	leaq	(%rax,%r8), %rax
	cmpq	%rax, %r15
	jb	.LBB9_10
.LBB9_9:                                # %if.then.72
	movl	$1, %ecx
	movq	%r8, %r15
.LBB9_10:                               # %if.end.75
	movl	%ecx, 12(%rsp)          # 4-byte Spill
	movl	%ebp, %ecx
	leaq	16(%rsp), %rsi
	movq	%r15, %rdi
	movq	%rbx, %rdx
	callq	uncompress
	movslq	%r12d, %rax
	cmpq	16(%rsp), %rax
	jne	.LBB9_13
# BB#11:                                # %if.end.82
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	je	.LBB9_15
# BB#12:                                # %if.then.84
	movq	8(%r14), %rdi
	incq	%rdi
	movl	$4294967294, %eax       # imm = 0xFFFFFFFE
	incq	%rax
	movq	%r13, %rdx
	andq	%rax, %rdx
	movq	%r15, %rsi
	callq	memcpy
	movl	%r13d, %r12d
	jmp	.LBB9_15
.LBB9_13:                               # %cleanup
	movl	$-2, %eax
.LBB9_16:                               # %cleanup.108
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	s_block_read_process, .Lfunc_end9-s_block_read_process
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%rom%"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"FileSystem"
	.size	.L.str.1, 11

	.type	gs_iodev_rom,@object    # @gs_iodev_rom
	.section	.rodata,"a",@progbits
	.globl	gs_iodev_rom
	.align	8
gs_iodev_rom:
	.quad	.L.str
	.quad	.L.str.1
	.quad	romfs_init
	.quad	iodev_no_open_device
	.quad	romfs_open_file
	.quad	iodev_no_fopen
	.quad	iodev_no_fclose
	.quad	iodev_no_delete_file
	.quad	iodev_no_rename_file
	.quad	romfs_file_status
	.quad	romfs_enumerate_files_init
	.quad	romfs_enumerate_next
	.quad	romfs_enumerate_close
	.quad	iodev_no_get_params
	.quad	iodev_no_put_params
	.quad	0
	.size	gs_iodev_rom, 128

	.type	st_romfs_state,@object  # @st_romfs_state
	.align	8
st_romfs_state:
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.3
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_romfs_state, 64

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"romfs_init(state)"
	.size	.L.str.2, 18

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"romfs_state"
	.size	.L.str.3, 12

	.type	sread_block.p,@object   # @sread_block.p
	.section	.rodata,"a",@progbits
	.align	8
sread_block.p:
	.quad	s_block_read_available
	.quad	s_block_read_seek
	.quad	s_std_read_reset
	.quad	s_std_read_flush
	.quad	s_block_read_close
	.quad	s_block_read_process
	.quad	0
	.size	sread_block.p, 56

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"file_close(buffer)"
	.size	.L.str.4, 19

	.type	st_romfs_file_enum,@object # @st_romfs_file_enum
	.section	.rodata,"a",@progbits
	.align	8
st_romfs_file_enum:
	.long	24                      # 0x18
	.zero	4
	.quad	.L.str.7
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	romfs_file_enum_reloc_ptrs
	.size	st_romfs_file_enum, 64

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"romfs_enumerate_files_init(file_enum)"
	.size	.L.str.5, 38

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"romfs_enumerate_file_init(pattern)"
	.size	.L.str.6, 35

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"romfs_file_enum"
	.size	.L.str.7, 16

	.type	romfs_file_enum_reloc_ptrs,@object # @romfs_file_enum_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
romfs_file_enum_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	romfs_file_enum_enum_ptrs
	.size	romfs_file_enum_reloc_ptrs, 24

	.type	romfs_file_enum_enum_ptrs,@object # @romfs_file_enum_enum_ptrs
	.align	2
romfs_file_enum_enum_ptrs:
	.zero	4
	.size	romfs_file_enum_enum_ptrs, 4

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"romfs_enum_init(pattern)"
	.size	.L.str.8, 25

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"romfs_enum_init(romfs_enum)"
	.size	.L.str.9, 28


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
