	.text
	.file	"gp_unifs.bc"
	.globl	gp_open_scratch_file
	.align	16, 0x90
	.type	gp_open_scratch_file,@function
gp_open_scratch_file:                   # @gp_open_scratch_file
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%r8d, %r8d
	jmp	gp_open_scratch_file_generic # TAILCALL
.Lfunc_end0:
	.size	gp_open_scratch_file, .Lfunc_end0-gp_open_scratch_file
	.cfi_endproc

	.align	16, 0x90
	.type	gp_open_scratch_file_generic,@function
gp_open_scratch_file_generic:           # @gp_open_scratch_file_generic
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
	pushq	%r13
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp4:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp6:
	.cfi_def_cfa_offset 64
.Ltmp7:
	.cfi_offset %rbx, -56
.Ltmp8:
	.cfi_offset %r12, -48
.Ltmp9:
	.cfi_offset %r13, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
.Ltmp12:
	.cfi_offset %rbp, -16
	movl	%r8d, %r12d
	movq	%rcx, %r15
	movq	%rdx, %rbx
	movq	%rsi, %r13
	movq	%rdi, %r14
	movq	%r13, %rdi
	callq	strlen
	movq	%rax, %rbp
	movl	$4088, %eax             # imm = 0xFF8
	subl	%ebp, %eax
	movl	%eax, 4(%rsp)
	movq	%r13, %rdi
	movl	%ebp, %esi
	callq	gp_file_name_is_absolute
	testl	%eax, %eax
	je	.LBB1_2
# BB#1:                                 # %if.then
	movb	$0, (%rbx)
	jmp	.LBB1_7
.LBB1_2:                                # %if.else
	leaq	4(%rsp), %rsi
	movq	%rbx, %rdi
	callq	gp_gettmpdir
	testl	%eax, %eax
	je	.LBB1_4
# BB#3:                                 # %if.then.5
	movl	$.L.str.9, %esi
	movq	%rbx, %rdi
	callq	strcpy
	jmp	.LBB1_7
.LBB1_4:                                # %if.else.7
	movq	%rbx, %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB1_7
# BB#5:                                 # %land.lhs.true
	movzbl	-1(%rax,%rbx), %eax
	cmpl	$47, %eax
	je	.LBB1_7
# BB#6:                                 # %if.then.16
	movl	$.L.str.10, %esi
	movq	%rbx, %rdi
	callq	strcat
.LBB1_7:                                # %if.end.19
	movq	%rbx, %rdi
	callq	strlen
	movslq	%ebp, %rcx
	leaq	8(%rcx,%rax), %rax
	xorl	%ebp, %ebp
	cmpq	$4095, %rax             # imm = 0xFFF
	ja	.LBB1_13
# BB#8:                                 # %if.end.26
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	strcat
	cmpb	$0, (%rbx)
	je	.LBB1_11
# BB#9:                                 # %land.lhs.true.31
	movq	%rbx, %rdi
	callq	strlen
	movzbl	-1(%rax,%rbx), %eax
	cmpl	$88, %eax
	jne	.LBB1_11
# BB#10:                                # %if.then.38
	movl	$.L.str.11, %esi
	movq	%rbx, %rdi
	callq	strcat
.LBB1_11:                               # %if.end.40
	movl	$.L.str.12, %esi
	movq	%rbx, %rdi
	callq	strcat
	movq	%rbx, %rdi
	callq	mktemp
	testl	%r12d, %r12d
	movl	$gp_fopentemp, %eax
	movl	$gp_fopentemp_64, %ecx
	cmovneq	%rax, %rcx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*%rcx
	movq	%rax, %rbp
	testq	%rbp, %rbp
	jne	.LBB1_13
# BB#12:                                # %if.then.47
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	xorl	%ebp, %ebp
	movl	$.L.str.13, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	errprintf
.LBB1_13:                               # %cleanup
	movq	%rbp, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gp_open_scratch_file_generic, .Lfunc_end1-gp_open_scratch_file_generic
	.cfi_endproc

	.globl	gp_fopen
	.align	16, 0x90
	.type	gp_fopen,@function
gp_fopen:                               # @gp_fopen
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	fopen64                 # TAILCALL
.Lfunc_end2:
	.size	gp_fopen, .Lfunc_end2-gp_fopen
	.cfi_endproc

	.globl	gp_setmode_binary
	.align	16, 0x90
	.type	gp_setmode_binary,@function
gp_setmode_binary:                      # @gp_setmode_binary
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end3:
	.size	gp_setmode_binary, .Lfunc_end3-gp_setmode_binary
	.cfi_endproc

	.globl	gp_enumerate_files_init
	.align	16, 0x90
	.type	gp_enumerate_files_init,@function
gp_enumerate_files_init:                # @gp_enumerate_files_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r14
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
	.cfi_offset %r14, -32
.Ltmp21:
	.cfi_offset %r15, -24
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movl	%esi, %ebp
	movq	%rdi, %r14
	xorl	%eax, %eax
	cmpl	$4096, %ebp             # imm = 0x1000
	ja	.LBB4_21
# BB#1:                                 # %for.cond.preheader
	movl	%ebp, %r15d
	testl	%ebp, %ebp
	je	.LBB4_5
# BB#2:
	leaq	(%r14,%r15), %rcx
	xorl	%eax, %eax
	movq	%r14, %rdx
	.align	16, 0x90
.LBB4_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%rdx)
	je	.LBB4_21
# BB#3:                                 # %for.cond
                                        #   in Loop: Header=BB4_4 Depth=1
	incq	%rdx
	cmpq	%rcx, %rdx
	jb	.LBB4_4
.LBB4_5:                                # %cleanup.cont
	movl	$st_file_enum, %esi
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	callq	*72(%rbx)
	movq	%rax, %r12
	xorl	%eax, %eax
	testq	%r12, %r12
	je	.LBB4_21
# BB#6:                                 # %if.end.9
	movq	%rbx, 56(%r12)
	movq	$0, 32(%r12)
	movl	$1, 48(%r12)
	movl	%ebp, 40(%r12)
	movq	$0, 16(%r12)
	incl	%ebp
	movl	$.L.str.1, %edx
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	*64(%rbx)
	movq	%rax, %rcx
	movq	%rcx, 8(%r12)
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB4_21
# BB#7:                                 # %if.end.18
	movq	%rcx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	memcpy
	movq	8(%r12), %rax
	movb	$0, (%rax,%r15)
	movl	$4097, %esi             # imm = 0x1001
	movl	$.L.str.2, %edx
	movq	%rbx, %rdi
	callq	*64(%rbx)
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB4_21
# BB#8:                                 # %if.end.29
	movq	%rbx, 16(%r12)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	memcpy
	movb	$0, (%rbx,%r15)
	movq	16(%r12), %rax
	movabsq	$-9223367638808264703, %rdx # imm = 0x8000040000000001
	jmp	.LBB4_9
	.align	16, 0x90
.LBB4_11:                               # %while.body.critedge
                                        #   in Loop: Header=BB4_9 Depth=1
	incq	%rax
.LBB4_9:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rax), %ecx
	cmpq	$63, %rcx
	ja	.LBB4_11
# BB#10:                                # %while.cond
                                        #   in Loop: Header=BB4_9 Depth=1
	btq	%rcx, %rdx
	jae	.LBB4_11
	jmp	.LBB4_12
.LBB4_14:                               # %while.body.56
                                        #   in Loop: Header=BB4_12 Depth=1
	movb	1(%rax), %cl
	incq	%rax
.LBB4_12:                               # %while.cond.46
                                        # =>This Inner Loop Header: Depth=1
	testb	%cl, %cl
	je	.LBB4_16
# BB#13:                                # %while.cond.46
                                        #   in Loop: Header=BB4_12 Depth=1
	movzbl	%cl, %ecx
	cmpl	$47, %ecx
	jne	.LBB4_14
# BB#15:                                # %if.then.62
	movb	$0, (%rax)
.LBB4_16:                               # %if.end.63
	subq	%rbx, %rax
	movl	%eax, 44(%r12)
	cltq
	leaq	(%rax,%rbx), %rax
	.align	16, 0x90
.LBB4_17:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	cmpq	%rbx, %rcx
	jbe	.LBB4_22
# BB#18:                                # %while.body.i
                                        #   in Loop: Header=BB4_17 Depth=1
	leaq	-1(%rcx), %rax
	movzbl	-1(%rcx), %edx
	cmpl	$47, %edx
	jne	.LBB4_17
# BB#19:                                # %if.else
	cmpq	%rbx, %rax
	movq	%rcx, %rdx
	cmovneq	%rax, %rdx
	movb	$0, (%rdx)
	cmovel	%ecx, %eax
	subl	%ebx, %eax
	movl	%eax, 24(%r12)
	jmp	.LBB4_20
.LBB4_22:                               # %if.then.70
	movb	$0, (%rbx)
	movl	$0, 24(%r12)
.LBB4_20:                               # %cleanup.83
	movq	%r12, %rax
.LBB4_21:                               # %cleanup.83
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gp_enumerate_files_init, .Lfunc_end4-gp_enumerate_files_init
	.cfi_endproc

	.globl	gp_enumerate_files_next
	.align	16, 0x90
	.type	gp_enumerate_files_next,@function
gp_enumerate_files_next:                # @gp_enumerate_files_next
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp24:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp25:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp26:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp27:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 56
	subq	$184, %rsp
.Ltmp29:
	.cfi_def_cfa_offset 240
.Ltmp30:
	.cfi_offset %rbx, -56
.Ltmp31:
	.cfi_offset %r12, -48
.Ltmp32:
	.cfi_offset %r13, -40
.Ltmp33:
	.cfi_offset %r14, -32
.Ltmp34:
	.cfi_offset %r15, -24
.Ltmp35:
	.cfi_offset %rbp, -16
	movl	%edx, 20(%rsp)          # 4-byte Spill
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	8(%r15), %rax
	movq	16(%r15), %r13
	movl	24(%r15), %r14d
	movl	44(%r15), %ebp
	cmpl	$0, 48(%r15)
	je	.LBB5_1
# BB#15:                                # %if.then
	movq	%rax, 24(%rsp)          # 8-byte Spill
	testl	%r14d, %r14d
	je	.LBB5_16
# BB#17:                                # %cond.false
	movq	%r13, %rdi
	jmp	.LBB5_18
.LBB5_1:                                # %entry.top.preheader_crit_edge
	movq	%rax, 24(%rsp)          # 8-byte Spill
	jmp	.LBB5_2
.LBB5_16:                               # %cond.true
	movl	$gp_current_directory_name, %edi
.LBB5_18:                               # %cond.end
	callq	opendir
	movq	%rax, (%r15)
	movl	$0, 48(%r15)
	testq	%rax, %rax
	je	.LBB5_19
.LBB5_2:                                # %top.preheader
	movq	%rbx, (%rsp)            # 8-byte Spill
	movq	%r15, %rbx
	leaq	1(%r13), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	jmp	.LBB5_3
	.align	16, 0x90
.LBB5_14:                               # %popdir.exit
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	8(%rsi), %rax
	movq	%rax, (%rbx)
	movq	(%rsi), %rax
	movq	%rax, 32(%rbx)
	movq	56(%rbx), %rdi
	movl	$.L.str.15, %edx
	callq	*24(%rdi)
.LBB5_3:                                # %top
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_71 Depth 2
                                        #     Child Loop BB5_5 Depth 2
                                        #     Child Loop BB5_10 Depth 2
	movq	(%rbx), %rdi
	callq	readdir64
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB5_4
# BB#28:                                # %if.end.51
                                        #   in Loop: Header=BB5_3 Depth=1
	leaq	19(%r15), %r12
	movq	%r12, %rdi
	callq	strlen
	cmpl	$2, %eax
	jg	.LBB5_50
# BB#29:                                # %land.lhs.true.56
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	$gp_current_directory_name, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB5_37
# BB#30:                                # %cond.true.60
                                        #   in Loop: Header=BB5_3 Depth=1
	movzbl	(%r12), %eax
	addl	$-46, %eax
	testq	%rcx, %rcx
	je	.LBB5_38
# BB#31:                                # %cond.true.60
                                        #   in Loop: Header=BB5_3 Depth=1
	testl	%eax, %eax
	jne	.LBB5_38
# BB#32:                                # %if.then.72
                                        #   in Loop: Header=BB5_3 Depth=1
	movb	20(%r15), %dl
	movzbl	%dl, %eax
	cmpq	$2, %rcx
	jb	.LBB5_38
# BB#33:                                # %if.then.72
                                        #   in Loop: Header=BB5_3 Depth=1
	testb	%dl, %dl
	jne	.LBB5_38
# BB#34:                                # %if.then.82
                                        #   in Loop: Header=BB5_3 Depth=1
	movb	21(%r15), %dl
	movzbl	%dl, %eax
	cmpq	$3, %rcx
	jb	.LBB5_38
# BB#35:                                # %if.then.82
                                        #   in Loop: Header=BB5_3 Depth=1
	testb	%dl, %dl
	jne	.LBB5_38
# BB#36:                                # %if.then.92
                                        #   in Loop: Header=BB5_3 Depth=1
	movzbl	22(%r15), %eax
	jmp	.LBB5_38
	.align	16, 0x90
.LBB5_4:                                # %if.then.14
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	(%rbx), %rdi
	callq	closedir
	movslq	%r14d, %rax
	leaq	(%rax,%r13), %r14
	movq	24(%rsp), %rdx          # 8-byte Reload
	.align	16, 0x90
.LBB5_5:                                # %while.cond.i
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r14, %rax
	xorl	%r14d, %r14d
	cmpq	%r13, %rax
	jbe	.LBB5_8
# BB#6:                                 # %while.body.i
                                        #   in Loop: Header=BB5_5 Depth=2
	leaq	-1(%rax), %r14
	movzbl	-1(%rax), %ecx
	cmpl	$47, %ecx
	jne	.LBB5_5
# BB#7:                                 # %if.then.22
                                        #   in Loop: Header=BB5_3 Depth=1
	cmpq	%r13, %r14
	movq	%rax, %rcx
	cmovneq	%r14, %rcx
	movb	$0, (%rcx)
	cmovel	%eax, %r14d
	subl	%r13d, %r14d
.LBB5_8:                                # %if.end.26
                                        #   in Loop: Header=BB5_3 Depth=1
	cmpl	40(%rbx), %ebp
	je	.LBB5_13
# BB#9:                                 # %if.then.29
                                        #   in Loop: Header=BB5_3 Depth=1
	movslq	%ebp, %rax
	leaq	(%rax,%rdx), %rax
	.align	16, 0x90
.LBB5_10:                               # %while.cond.i.141
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%ebp, %ebp
	cmpq	%rdx, %rax
	jbe	.LBB5_13
# BB#11:                                # %while.body.i.144
                                        #   in Loop: Header=BB5_10 Depth=2
	movzbl	-1(%rax), %ecx
	decq	%rax
	cmpl	$47, %ecx
	jne	.LBB5_10
# BB#12:                                # %if.then.33
                                        #   in Loop: Header=BB5_3 Depth=1
	subl	%edx, %eax
	movl	%eax, %ebp
.LBB5_13:                               # %if.end.40
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	32(%rbx), %rsi
	testq	%rsi, %rsi
	jne	.LBB5_14
	jmp	.LBB5_27
	.align	16, 0x90
.LBB5_50:                               # %if.end.170
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leal	(%rax,%r14), %eax
	cmpl	$4095, %eax             # imm = 0xFFF
	jg	.LBB5_3
	jmp	.LBB5_51
.LBB5_37:                               # %cond.false.101
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	$gp_current_directory_name, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB5_38:                               # %cond.end.105
                                        #   in Loop: Header=BB5_3 Depth=1
	testl	%eax, %eax
	je	.LBB5_3
# BB#39:                                # %land.lhs.true.113
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	$.L.str.4, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB5_47
# BB#40:                                # %cond.true.117
                                        #   in Loop: Header=BB5_3 Depth=1
	movzbl	(%r12), %eax
	addl	$-46, %eax
	testq	%rcx, %rcx
	je	.LBB5_48
# BB#41:                                # %cond.true.117
                                        #   in Loop: Header=BB5_3 Depth=1
	testl	%eax, %eax
	jne	.LBB5_48
# BB#42:                                # %if.then.133
                                        #   in Loop: Header=BB5_3 Depth=1
	movzbl	20(%r15), %eax
	addl	$-46, %eax
	cmpq	$2, %rcx
	jb	.LBB5_48
# BB#43:                                # %if.then.133
                                        #   in Loop: Header=BB5_3 Depth=1
	testl	%eax, %eax
	jne	.LBB5_48
# BB#44:                                # %if.then.143
                                        #   in Loop: Header=BB5_3 Depth=1
	movb	21(%r15), %dl
	movzbl	%dl, %eax
	cmpq	$3, %rcx
	jb	.LBB5_48
# BB#45:                                # %if.then.143
                                        #   in Loop: Header=BB5_3 Depth=1
	testb	%dl, %dl
	jne	.LBB5_48
# BB#46:                                # %if.then.153
                                        #   in Loop: Header=BB5_3 Depth=1
	movzbl	22(%r15), %eax
	jmp	.LBB5_48
.LBB5_47:                               # %cond.false.162
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	$.L.str.4, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB5_48:                               # %cond.end.166
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	32(%rsp), %rcx          # 8-byte Reload
	leal	(%rcx,%r14), %ecx
	cmpl	$4095, %ecx             # imm = 0xFFF
	jg	.LBB5_3
# BB#49:                                # %cond.end.166
                                        #   in Loop: Header=BB5_3 Depth=1
	testl	%eax, %eax
	je	.LBB5_3
.LBB5_51:                               # %if.end.175
                                        #   in Loop: Header=BB5_3 Depth=1
	cmpl	$1, %r14d
	jne	.LBB5_52
# BB#54:                                # %land.lhs.true.187
                                        #   in Loop: Header=BB5_3 Depth=1
	movzbl	(%r13), %eax
	cmpl	$47, %eax
	jne	.LBB5_57
# BB#55:                                # %if.then.192
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	32(%rsp), %r15          # 8-byte Reload
	leal	1(%r15), %r15d
	movslq	%r15d, %rdx
	movq	8(%rsp), %rdi           # 8-byte Reload
	jmp	.LBB5_56
.LBB5_52:                               # %if.end.175
                                        #   in Loop: Header=BB5_3 Depth=1
	testl	%r14d, %r14d
	jne	.LBB5_57
# BB#53:                                # %if.then.178
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	32(%rsp), %r15          # 8-byte Reload
	movq	%r15, %rdx
	shlq	$32, %rdx
	movabsq	$4294967296, %rax       # imm = 0x100000000
	addq	%rax, %rdx
	sarq	$32, %rdx
	movq	%r13, %rdi
.LBB5_56:                               # %if.end.211
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	%r12, %rsi
	callq	memcpy
	movq	%r15, %rsi
	jmp	.LBB5_58
.LBB5_57:                               # %if.else.199
                                        #   in Loop: Header=BB5_3 Depth=1
	movslq	%r14d, %rax
	movb	$47, (%r13,%rax)
	leaq	1(%r13,%rax), %rdi
	movq	32(%rsp), %r15          # 8-byte Reload
	movq	%r15, %rdx
	shlq	$32, %rdx
	movabsq	$4294967296, %rax       # imm = 0x100000000
	addq	%rax, %rdx
	sarq	$32, %rdx
	movq	%r12, %rsi
	callq	memcpy
	movq	%r15, %rsi
	leal	1(%r14,%rsi), %esi
.LBB5_58:                               # %if.end.211
                                        #   in Loop: Header=BB5_3 Depth=1
	xorl	%r8d, %r8d
	movq	%r13, %rdi
	movq	%rsi, %r12
	movq	24(%rsp), %rdx          # 8-byte Reload
	movl	%ebp, %ecx
	callq	string_match
	testl	%eax, %eax
	je	.LBB5_3
# BB#59:                                # %if.end.215
                                        #   in Loop: Header=BB5_3 Depth=1
	cmpl	20(%rsp), %ebp          # 4-byte Folded Reload
	jae	.LBB5_60
# BB#61:                                # %if.then.218
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	$1, %edi
	movq	%r13, %rsi
	leaq	40(%rsp), %rdx
	callq	__xstat64
	testl	%eax, %eax
	js	.LBB5_63
# BB#62:                                # %cond.true.223
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	64(%rsp), %eax
	movl	$61440, %ecx            # imm = 0xF000
	andl	%ecx, %eax
	cmpl	$16384, %eax            # imm = 0x4000
	jne	.LBB5_60
.LBB5_63:                               # %if.end.228
                                        #   in Loop: Header=BB5_3 Depth=1
	leal	1(%rbp), %eax
	cmpl	%eax, 40(%rbx)
	jne	.LBB5_69
# BB#64:                                # %if.then.233
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	64(%rsp), %eax
	movl	$61440, %ecx            # imm = 0xF000
	andl	%ecx, %eax
	cmpl	$16384, %eax            # imm = 0x4000
	je	.LBB5_67
# BB#65:                                # %if.then.238
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	%r13, %rdi
	callq	opendir
	testq	%rax, %rax
	je	.LBB5_3
	jmp	.LBB5_66
.LBB5_69:                               # %if.end.247
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	%r13, %rdi
	callq	opendir
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB5_3
# BB#70:                                # %if.else.251
                                        #   in Loop: Header=BB5_3 Depth=1
	movslq	%ebp, %rax
	movq	24(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %rbp
.LBB5_71:                               # %for.cond
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	1(%rbp), %eax
	incq	%rbp
	cmpl	$47, %eax
	je	.LBB5_74
# BB#72:                                # %for.cond
                                        #   in Loop: Header=BB5_71 Depth=2
	testb	%al, %al
	jne	.LBB5_71
# BB#73:                                # %if.then.261
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	40(%rbx), %ebp
	jmp	.LBB5_75
.LBB5_74:                               # %if.then.267
                                        #   in Loop: Header=BB5_3 Depth=1
	subl	%ecx, %ebp
.LBB5_75:                               # %for.end
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	56(%rbx), %rdi
	movl	$st_dirstack, %esi
	movl	$.L.str.5, %edx
	callq	*72(%rdi)
	testq	%rax, %rax
	je	.LBB5_77
# BB#76:                                # %if.then.279
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	32(%rbx), %rcx
	movq	%rcx, (%rax)
	movq	(%rbx), %rcx
	movq	%rcx, 8(%rax)
	movq	%rax, 32(%rbx)
.LBB5_77:                               # %do.end.290
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	%r15, (%rbx)
	movl	%r12d, %r14d
	jmp	.LBB5_3
.LBB5_27:                               # %gp_enumerate_files_close.exit164
	movq	16(%rbx), %rsi
	movq	56(%rbx), %rbp
	movl	$.L.str.6, %edx
	movq	%rbp, %rdi
	callq	*24(%rbp)
	movq	8(%rbx), %rsi
	movl	$.L.str.7, %edx
	movq	%rbp, %rdi
	callq	*24(%rbp)
	movl	$.L.str.8, %edx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	*24(%rbp)
	jmp	.LBB5_25
.LBB5_19:                               # %if.then.9
	movq	32(%r15), %rsi
	movq	56(%r15), %rbx
	testq	%rsi, %rsi
	je	.LBB5_20
# BB#21:                                # %popdir.exit.lr.ph.i
	movq	8(%rsi), %rax
	movq	%rax, (%r15)
	movq	(%rsi), %rax
	movq	%rax, 32(%r15)
	leaq	24(%rbx), %rbp
	movl	$.L.str.15, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	jmp	.LBB5_23
	.align	16, 0x90
.LBB5_22:                               # %popdir.exit.popdir.exit_crit_edge.i
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	56(%r15), %rdi
	movq	8(%rsi), %rax
	movq	%rax, (%r15)
	movq	(%rsi), %rax
	movq	%rax, 32(%r15)
	movl	$.L.str.15, %edx
	callq	*24(%rdi)
.LBB5_23:                               # %popdir.exit.popdir.exit_crit_edge.i
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%r15), %rsi
	testq	%rsi, %rsi
	jne	.LBB5_22
	jmp	.LBB5_24
.LBB5_60:
	movq	(%rsp), %rdi            # 8-byte Reload
	movq	%r12, %r15
	jmp	.LBB5_68
.LBB5_20:                               # %if.then.9.gp_enumerate_files_close.exit_crit_edge
	leaq	24(%rbx), %rbp
.LBB5_24:                               # %gp_enumerate_files_close.exit
	movq	16(%r15), %rsi
	movl	$.L.str.6, %edx
	movq	%rbx, %rdi
	callq	*(%rbp)
	movq	8(%r15), %rsi
	movl	$.L.str.7, %edx
	movq	%rbx, %rdi
	callq	*(%rbp)
	movl	$.L.str.8, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*(%rbp)
.LBB5_25:                               # %cleanup.307
	movl	$-1, %eax
	jmp	.LBB5_26
.LBB5_66:                               # %if.end.242
	movq	%rax, %rdi
	callq	closedir
.LBB5_67:                               # %if.end.244
	movq	%r12, %r15
	movslq	%r15d, %rax
	incl	%r15d
	movb	$47, (%r13,%rax)
	movq	(%rsp), %rdi            # 8-byte Reload
.LBB5_68:                               # %winner
	movl	%r14d, 24(%rbx)
	movl	%ebp, 44(%rbx)
	movl	20(%rsp), %eax          # 4-byte Reload
	cmpl	%eax, %r15d
	cmovbel	%r15d, %eax
	movl	%eax, %edx
	movq	%r13, %rsi
	callq	memcpy
	movq	%r15, %rax
.LBB5_26:                               # %cleanup.307
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gp_enumerate_files_next, .Lfunc_end5-gp_enumerate_files_next
	.cfi_endproc

	.globl	gp_enumerate_files_close
	.align	16, 0x90
	.type	gp_enumerate_files_close,@function
gp_enumerate_files_close:               # @gp_enumerate_files_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp36:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp37:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp38:
	.cfi_def_cfa_offset 32
.Ltmp39:
	.cfi_offset %rbx, -24
.Ltmp40:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	32(%rbx), %rsi
	movq	56(%rbx), %r14
	testq	%rsi, %rsi
	je	.LBB6_4
# BB#1:                                 # %popdir.exit.lr.ph
	movq	8(%rsi), %rax
	movq	%rax, (%rbx)
	movq	(%rsi), %rax
	movq	%rax, 32(%rbx)
	movl	$.L.str.15, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
	jmp	.LBB6_3
	.align	16, 0x90
.LBB6_2:                                # %popdir.exit.popdir.exit_crit_edge
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	56(%rbx), %rdi
	movq	8(%rsi), %rax
	movq	%rax, (%rbx)
	movq	(%rsi), %rax
	movq	%rax, 32(%rbx)
	movl	$.L.str.15, %edx
	callq	*24(%rdi)
.LBB6_3:                                # %popdir.exit.popdir.exit_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%rbx), %rsi
	testq	%rsi, %rsi
	jne	.LBB6_2
.LBB6_4:                                # %while.end
	movq	16(%rbx), %rsi
	movl	$.L.str.6, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
	movq	8(%rbx), %rsi
	movl	$.L.str.7, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
	movq	24(%r14), %rax
	movl	$.L.str.8, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%rax                   # TAILCALL
.Lfunc_end6:
	.size	gp_enumerate_files_close, .Lfunc_end6-gp_enumerate_files_close
	.cfi_endproc

	.globl	gp_fopen_64
	.align	16, 0x90
	.type	gp_fopen_64,@function
gp_fopen_64:                            # @gp_fopen_64
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	fopen64                 # TAILCALL
.Lfunc_end7:
	.size	gp_fopen_64, .Lfunc_end7-gp_fopen_64
	.cfi_endproc

	.globl	gp_open_scratch_file_64
	.align	16, 0x90
	.type	gp_open_scratch_file_64,@function
gp_open_scratch_file_64:                # @gp_open_scratch_file_64
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %r8d
	jmp	gp_open_scratch_file_generic # TAILCALL
.Lfunc_end8:
	.size	gp_open_scratch_file_64, .Lfunc_end8-gp_open_scratch_file_64
	.cfi_endproc

	.globl	gp_ftell_64
	.align	16, 0x90
	.type	gp_ftell_64,@function
gp_ftell_64:                            # @gp_ftell_64
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	ftell                   # TAILCALL
.Lfunc_end9:
	.size	gp_ftell_64, .Lfunc_end9-gp_ftell_64
	.cfi_endproc

	.globl	gp_fseek_64
	.align	16, 0x90
	.type	gp_fseek_64,@function
gp_fseek_64:                            # @gp_fseek_64
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	fseek                   # TAILCALL
.Lfunc_end10:
	.size	gp_fseek_64, .Lfunc_end10-gp_fseek_64
	.cfi_endproc

	.globl	gp_fseekable
	.align	16, 0x90
	.type	gp_fseekable,@function
gp_fseekable:                           # @gp_fseekable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp41:
	.cfi_def_cfa_offset 16
	subq	$144, %rsp
.Ltmp42:
	.cfi_def_cfa_offset 160
.Ltmp43:
	.cfi_offset %rbx, -16
	callq	fileno
	xorl	%ebx, %ebx
	testl	%eax, %eax
	js	.LBB11_3
# BB#1:                                 # %if.end
	leaq	(%rsp), %rdx
	movl	$1, %edi
	movl	%eax, %esi
	callq	__fxstat64
	testl	%eax, %eax
	js	.LBB11_3
# BB#2:                                 # %if.end.4
	movl	$61440, %eax            # imm = 0xF000
	andl	24(%rsp), %eax
	cmpl	$32768, %eax            # imm = 0x8000
	sete	%al
	movzbl	%al, %ebx
.LBB11_3:                               # %cleanup
	movl	%ebx, %eax
	addq	$144, %rsp
	popq	%rbx
	retq
.Lfunc_end11:
	.size	gp_fseekable, .Lfunc_end11-gp_fseekable
	.cfi_endproc

	.type	gp_scratch_file_name_prefix,@object # @gp_scratch_file_name_prefix
	.section	.rodata,"a",@progbits
	.globl	gp_scratch_file_name_prefix
gp_scratch_file_name_prefix:
	.asciz	"gs_"
	.size	gp_scratch_file_name_prefix, 4

	.type	gp_null_file_name,@object # @gp_null_file_name
	.globl	gp_null_file_name
gp_null_file_name:
	.asciz	"/dev/null"
	.size	gp_null_file_name, 10

	.type	gp_current_directory_name,@object # @gp_current_directory_name
	.globl	gp_current_directory_name
gp_current_directory_name:
	.asciz	"."
	.size	gp_current_directory_name, 2

	.type	st_file_enum,@object    # @st_file_enum
	.align	8
st_file_enum:
	.long	64                      # 0x40
	.zero	4
	.quad	.L.str.14
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	file_enum_reloc_ptrs
	.size	st_file_enum, 64

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gp_enumerate_files"
	.size	.L.str, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gp_enumerate_files(pattern)"
	.size	.L.str.1, 28

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gp_enumerate_files(work)"
	.size	.L.str.2, 25

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	".."
	.size	.L.str.4, 3

	.type	st_dirstack,@object     # @st_dirstack
	.section	.rodata,"a",@progbits
	.align	8
st_dirstack:
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.16
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	dirstack_reloc_ptrs
	.size	st_dirstack, 64

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"gp_enumerate_files(pushdir)"
	.size	.L.str.5, 28

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gp_enumerate_close(work)"
	.size	.L.str.6, 25

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gp_enumerate_files_close(pattern)"
	.size	.L.str.7, 34

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gp_enumerate_files_close"
	.size	.L.str.8, 25

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"/tmp/"
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"/"
	.size	.L.str.10, 2

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"-"
	.size	.L.str.11, 2

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"XXXXXX"
	.size	.L.str.12, 7

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"**** Could not open temporary file %s\n"
	.size	.L.str.13, 39

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"file_enum"
	.size	.L.str.14, 10

	.type	file_enum_reloc_ptrs,@object # @file_enum_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
file_enum_reloc_ptrs:
	.short	3                       # 0x3
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	file_enum_enum_ptrs
	.size	file_enum_reloc_ptrs, 24

	.type	file_enum_enum_ptrs,@object # @file_enum_enum_ptrs
	.align	2
file_enum_enum_ptrs:
	.short	0                       # 0x0
	.short	8                       # 0x8
	.short	0                       # 0x0
	.short	16                      # 0x10
	.short	0                       # 0x0
	.short	32                      # 0x20
	.size	file_enum_enum_ptrs, 12

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"gp_enumerate_files(popdir)"
	.size	.L.str.15, 27

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"dirstack"
	.size	.L.str.16, 9

	.type	dirstack_reloc_ptrs,@object # @dirstack_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
dirstack_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	dirstack_enum_ptrs
	.size	dirstack_reloc_ptrs, 24

	.type	dirstack_enum_ptrs,@object # @dirstack_enum_ptrs
	.align	2
dirstack_enum_ptrs:
	.zero	4
	.size	dirstack_enum_ptrs, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
