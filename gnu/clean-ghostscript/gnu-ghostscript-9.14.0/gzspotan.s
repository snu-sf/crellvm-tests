	.text
	.file	"gzspotan.bc"
	.globl	san_open
	.align	16, 0x90
	.type	san_open,@function
san_open:                               # @san_open
	.cfi_startproc
# BB#0:                                 # %entry
	xorps	%xmm0, %xmm0
	movups	%xmm0, 1736(%rdi)
	movups	%xmm0, 1760(%rdi)
	movl	$0, 1784(%rdi)
	movl	$0, 1788(%rdi)
	movl	$0, 1816(%rdi)
	movl	$-1, 1820(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	san_open, .Lfunc_end0-san_open
	.cfi_endproc

	.globl	gx_san__obtain
	.align	16, 0x90
	.type	gx_san__obtain,@function
gx_san__obtain:                         # @gx_san__obtain
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
	pushq	%r12
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -48
.Ltmp6:
	.cfi_offset %r12, -40
.Ltmp7:
	.cfi_offset %r14, -32
.Ltmp8:
	.cfi_offset %r15, -24
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	(%rbx), %rax
	testq	%rax, %rax
	je	.LBB1_2
# BB#1:                                 # %if.then
	incl	1728(%rax)
	xorl	%ebp, %ebp
	jmp	.LBB1_6
.LBB1_2:                                # %if.end
	movl	$st_device_spot_analyzer, %esi
	movl	$.L.str.1, %edx
	movq	%r14, %rdi
	callq	*72(%r14)
	movq	%rax, %r15
	movl	$-25, %ebp
	testq	%r15, %r15
	je	.LBB1_6
# BB#3:                                 # %if.end.3
	xorl	%ebp, %ebp
	movl	$gx_spot_analyzer_device, %esi
	xorl	%ecx, %ecx
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	gx_device_init
	movq	%r15, %rdi
	callq	gs_opendevice
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB1_4
# BB#5:                                 # %if.end.8
	movl	$1, 1728(%r15)
	movq	%r15, (%rbx)
	jmp	.LBB1_6
.LBB1_4:                                # %if.then.6
	movl	$.L.str.1, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*24(%r14)
	movl	%r12d, %ebp
.LBB1_6:                                # %cleanup
	movl	%ebp, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gx_san__obtain, .Lfunc_end1-gx_san__obtain
	.cfi_endproc

	.globl	gx_san__release
	.align	16, 0x90
	.type	gx_san__release,@function
gx_san__release:                        # @gx_san__release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp10:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 32
.Ltmp13:
	.cfi_offset %rbx, -32
.Ltmp14:
	.cfi_offset %r14, -24
.Ltmp15:
	.cfi_offset %r15, -16
	movq	(%rdi), %rbx
	testq	%rbx, %rbx
	je	.LBB2_5
# BB#1:                                 # %if.end
	movl	1728(%rbx), %ecx
	leal	-1(%rcx), %eax
	movl	%eax, 1728(%rbx)
	testl	%ecx, %ecx
	jle	.LBB2_6
# BB#2:                                 # %if.end.9
	testl	%eax, %eax
	jne	.LBB2_4
# BB#3:                                 # %do.end
	movq	$0, (%rdi)
	decq	56(%rbx)
	je	.LBB2_7
.LBB2_4:                                # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB2_5:                                # %if.then
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	errprintf_nomem         # TAILCALL
.LBB2_6:                                # %if.then.4
	movq	24(%rbx), %r14
	callq	gs_program_name
	movq	%rax, %r15
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbx), %rdi
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	errprintf               # TAILCALL
.LBB2_7:                                # %do.end.25
	movq	64(%rbx), %rdi
	movq	72(%rbx), %rax
	movl	$.L.str.4, %edx
	movq	%rbx, %rsi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmpq	*%rax                   # TAILCALL
.Lfunc_end2:
	.size	gx_san__release, .Lfunc_end2-gx_san__release
	.cfi_endproc

	.globl	gx_san_begin
	.align	16, 0x90
	.type	gx_san_begin,@function
gx_san_begin:                           # @gx_san_begin
	.cfi_startproc
# BB#0:                                 # %entry
	xorps	%xmm0, %xmm0
	movups	%xmm0, 1792(%rdi)
	movq	$0, 1808(%rdi)
	movq	1736(%rdi), %rax
	movq	%rax, 1752(%rdi)
	movq	1760(%rdi), %rax
	movq	%rax, 1776(%rdi)
	retq
.Lfunc_end3:
	.size	gx_san_begin, .Lfunc_end3-gx_san_begin
	.cfi_endproc

	.globl	gx_san_trap_store
	.align	16, 0x90
	.type	gx_san_trap_store,@function
gx_san_trap_store:                      # @gx_san_trap_store
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp17:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp18:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp19:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp20:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp21:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp22:
	.cfi_def_cfa_offset 80
.Ltmp23:
	.cfi_offset %rbx, -56
.Ltmp24:
	.cfi_offset %r12, -48
.Ltmp25:
	.cfi_offset %r13, -40
.Ltmp26:
	.cfi_offset %r14, -32
.Ltmp27:
	.cfi_offset %r15, -24
.Ltmp28:
	.cfi_offset %rbp, -16
	movl	%r9d, 16(%rsp)          # 4-byte Spill
	movl	%r8d, 20(%rsp)          # 4-byte Spill
	movl	%edx, %r14d
	movq	%rdi, %r13
	movq	1800(%r13), %rdx
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.LBB4_4
# BB#1:                                 # %land.lhs.true
	cmpl	%r14d, 12(%rdx)
	movq	%rdx, %rax
	je	.LBB4_4
# BB#2:                                 # %if.then
	movl	%ecx, %ebx
	movl	%esi, %ebp
	movl	$2147483647, %esi       # imm = 0x7FFFFFFF
	movq	%r13, %rdi
	callq	try_unite_last_trap
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB4_44
# BB#3:                                 # %if.end
	movq	1800(%r13), %rax
	movq	%rax, 1808(%r13)
	movq	%rax, 1792(%r13)
	movq	$0, 1800(%r13)
	xorl	%eax, %eax
	movl	%ebp, %esi
	movl	%ebx, %ecx
.LBB4_4:                                # %if.end.8
	movl	%ecx, %ebx
	movq	1792(%r13), %rcx
	testq	%rcx, %rcx
	je	.LBB4_7
# BB#5:                                 # %land.lhs.true.11
	cmpl	%esi, 12(%rcx)
	jne	.LBB4_6
.LBB4_7:                                # %if.end.17
	movl	%esi, %r12d
	testq	%rax, %rax
	je	.LBB4_9
# BB#8:                                 # %if.then.20
	movq	%r13, %rdi
	movl	%ebx, %esi
	callq	try_unite_last_trap
	movl	%eax, %r15d
	testl	%r15d, %r15d
	jns	.LBB4_9
	jmp	.LBB4_44
.LBB4_6:                                # %if.end.17.thread
	movl	%esi, %r12d
	movq	$0, 1800(%r13)
.LBB4_9:                                # %if.end.25
	movq	1752(%r13), %rbp
	testq	%rbp, %rbp
	je	.LBB4_11
# BB#10:                                # %if.then.i.126
	movq	(%rbp), %rax
	movq	%rax, 1752(%r13)
	movl	20(%rsp), %r9d          # 4-byte Reload
	movl	16(%rsp), %esi          # 4-byte Reload
	movl	%ebx, %edi
.LBB4_17:                               # %if.end.39
	movl	112(%rsp), %r8d
	movl	104(%rsp), %ecx
	movq	96(%rsp), %rdx
	movq	88(%rsp), %rax
	movl	80(%rsp), %r10d
	movl	%r12d, 8(%rbp)
	movl	%r14d, 12(%rbp)
	movl	%edi, 16(%rbp)
	movl	%r9d, 20(%rbp)
	movl	%esi, 24(%rbp)
	movl	%r10d, 28(%rbp)
	movq	%rax, 40(%rbp)
	movq	%rdx, 48(%rbp)
	movl	%ecx, 56(%rbp)
	movl	%r8d, 60(%rbp)
	movq	$0, 32(%rbp)
	movl	$0, 92(%rbp)
	movl	$0, 88(%rbp)
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, 64(%rbp)
	movq	1800(%r13), %rax
	testq	%rax, %rax
	je	.LBB4_19
# BB#18:                                # %if.end.56
	movl	$0, 68(%rax)
	movl	$0, 64(%rbp)
	movq	1800(%r13), %rax
	testq	%rax, %rax
	je	.LBB4_19
# BB#20:                                # %if.else.i.123
	movq	80(%rax), %rcx
	movq	%rax, 72(%rbp)
	movq	%rcx, 80(%rbp)
	movq	%rbp, 80(%rax)
	movq	%rbp, 72(%rcx)
	jmp	.LBB4_21
.LBB4_19:                               # %if.then.i.118
	movq	%rbp, 80(%rbp)
	movq	%rbp, 72(%rbp)
	movq	%rbp, 1800(%r13)
.LBB4_21:                               # %while.cond.preheader
	movq	1808(%r13), %rbx
	testq	%rbx, %rbx
	je	.LBB4_40
# BB#22:                                # %land.rhs.preheader
	movq	1792(%r13), %rax
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB4_23:                               # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%edi, 28(%rbx)
	jge	.LBB4_25
# BB#24:                                # %while.body
                                        #   in Loop: Header=BB4_23 Depth=1
	movq	72(%rbx), %rbx
	cmpq	%rax, %rbx
	cmoveq	%rcx, %rbx
	movq	%rbx, 1808(%r13)
	testq	%rbx, %rbx
	jne	.LBB4_23
	jmp	.LBB4_40
.LBB4_11:                               # %if.else.i.128
	movl	$-25, %r15d
	cmpl	$10000, 1784(%r13)      # imm = 0x2710
	jg	.LBB4_44
# BB#12:                                # %if.end.i.133
	movq	24(%r13), %rdi
	movl	$st_san_trap, %esi
	movl	$.L.str.9, %edx
	callq	*72(%rdi)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB4_44
# BB#13:                                # %if.end.7.i.136
	movq	$0, (%rbp)
	movq	1744(%r13), %rax
	testq	%rax, %rax
	je	.LBB4_14
# BB#15:                                # %if.else.11.i.138
	movq	%rbp, (%rax)
	jmp	.LBB4_16
.LBB4_25:                               # %if.then.75
	cmpl	%r9d, 24(%rbx)
	jg	.LBB4_40
# BB#26:                                # %while.body.82.lr.ph
	movq	80(%rax), %r14
	movl	$-25, %r15d
	.align	16, 0x90
.LBB4_27:                               # %while.body.82
                                        # =>This Inner Loop Header: Depth=1
	movq	1776(%r13), %rax
	testq	%rax, %rax
	je	.LBB4_29
# BB#28:                                # %if.then.i.110
                                        #   in Loop: Header=BB4_27 Depth=1
	movq	(%rax), %rcx
	movq	%rcx, 1776(%r13)
	jmp	.LBB4_35
	.align	16, 0x90
.LBB4_29:                               # %if.else.i.111
                                        #   in Loop: Header=BB4_27 Depth=1
	cmpl	$10000, 1788(%r13)      # imm = 0x2710
	jg	.LBB4_44
# BB#30:                                # %if.end.i
                                        #   in Loop: Header=BB4_27 Depth=1
	movl	%edi, 12(%rsp)          # 4-byte Spill
	movl	%r10d, %r12d
	movl	%r9d, 20(%rsp)          # 4-byte Spill
	movq	24(%r13), %rdi
	movl	$st_san_trap_contact, %esi
	movl	$.L.str.11, %edx
	callq	*72(%rdi)
	testq	%rax, %rax
	je	.LBB4_44
# BB#31:                                # %if.end.7.i
                                        #   in Loop: Header=BB4_27 Depth=1
	movq	$0, (%rax)
	movq	1768(%r13), %rcx
	testq	%rcx, %rcx
	movl	%r12d, %r10d
	je	.LBB4_32
# BB#33:                                # %if.else.11.i
                                        #   in Loop: Header=BB4_27 Depth=1
	movq	%rax, (%rcx)
	jmp	.LBB4_34
.LBB4_32:                               # %if.then.10.i
                                        #   in Loop: Header=BB4_27 Depth=1
	movq	%rax, 1760(%r13)
.LBB4_34:                               # %if.end.14.i
                                        #   in Loop: Header=BB4_27 Depth=1
	movl	12(%rsp), %edi          # 4-byte Reload
	movq	%rax, 1768(%r13)
	incl	1788(%r13)
	movl	20(%rsp), %r9d          # 4-byte Reload
	movl	16(%rsp), %esi          # 4-byte Reload
.LBB4_35:                               # %if.end.86
                                        #   in Loop: Header=BB4_27 Depth=1
	movq	%rbx, 32(%rax)
	movq	%rbp, 24(%rax)
	movq	32(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB4_36
# BB#37:                                # %if.else.i
                                        #   in Loop: Header=BB4_27 Depth=1
	movq	16(%rcx), %rdx
	movq	%rcx, 8(%rax)
	movq	%rdx, 16(%rax)
	movq	%rax, 16(%rcx)
	movq	%rax, 8(%rdx)
	jmp	.LBB4_38
	.align	16, 0x90
.LBB4_36:                               # %if.then.i
                                        #   in Loop: Header=BB4_27 Depth=1
	movq	%rax, 16(%rax)
	movq	%rax, 8(%rax)
	movq	%rax, 32(%rbx)
.LBB4_38:                               # %cont_list_insert_last.exit
                                        #   in Loop: Header=BB4_27 Depth=1
	incl	92(%rbp)
	cmpq	%r14, %rbx
	je	.LBB4_40
# BB#39:                                # %cleanup.thread157
                                        #   in Loop: Header=BB4_27 Depth=1
	movq	72(%rbx), %rbx
	cmpl	%r9d, 24(%rbx)
	jle	.LBB4_27
.LBB4_40:                               # %if.end.102
	movl	1816(%r13), %ecx
	movl	1820(%r13), %eax
	cmpl	%esi, %edi
	cmovlel	%edi, %esi
	cmpl	%eax, %ecx
	jle	.LBB4_42
# BB#41:                                # %if.then.104
	movl	%esi, 1816(%r13)
	cmpl	%r10d, %r9d
	cmovgel	%r9d, %r10d
	jmp	.LBB4_43
.LBB4_42:                               # %if.else
	cmpl	%esi, %ecx
	cmovlel	%ecx, %esi
	movl	%esi, 1816(%r13)
	cmpl	%r10d, %r9d
	cmovgel	%r9d, %r10d
	cmpl	%r10d, %eax
	cmovgel	%eax, %r10d
.LBB4_43:                               # %if.end.153
	movl	%r10d, 1820(%r13)
	xorl	%r15d, %r15d
.LBB4_44:                               # %cleanup.154
	movl	%r15d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_14:                               # %if.then.10.i.137
	movq	%rbp, 1736(%r13)
.LBB4_16:                               # %if.end.14.i.140
	movl	20(%rsp), %r9d          # 4-byte Reload
	movl	16(%rsp), %esi          # 4-byte Reload
	movl	%ebx, %edi
	movq	%rbp, 1744(%r13)
	incl	1784(%r13)
	jmp	.LBB4_17
.Lfunc_end4:
	.size	gx_san_trap_store, .Lfunc_end4-gx_san_trap_store
	.cfi_endproc

	.align	16, 0x90
	.type	try_unite_last_trap,@function
try_unite_last_trap:                    # @try_unite_last_trap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbx, -16
	movq	1792(%rdi), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB5_31
# BB#1:                                 # %land.lhs.true
	movq	1800(%rdi), %rdx
	testq	%rdx, %rdx
	je	.LBB5_31
# BB#2:                                 # %if.then
	movq	1808(%rdi), %r9
	testq	%r9, %r9
	je	.LBB5_31
# BB#3:                                 # %land.lhs.true.4
	movq	32(%r9), %r10
	testq	%r10, %r10
	je	.LBB5_31
# BB#4:                                 # %land.lhs.true.6
	movq	80(%rdx), %r8
	cmpl	%esi, 20(%r8)
	jge	.LBB5_31
# BB#5:                                 # %land.lhs.true.8
	movq	80(%r8), %r11
	cmpq	%r8, %r11
	je	.LBB5_7
# BB#6:                                 # %lor.lhs.false
	movl	20(%r11), %esi
	cmpl	16(%r8), %esi
	jge	.LBB5_31
.LBB5_7:                                # %if.then.14
	movq	72(%r9), %rsi
	testq	%rsi, %rsi
	je	.LBB5_9
# BB#8:                                 # %lor.lhs.false.16
	movl	28(%r9), %ebx
	cmpl	24(%rsi), %ebx
	jge	.LBB5_31
.LBB5_9:                                # %land.lhs.true.19
	cmpq	%r10, 8(%r10)
	jne	.LBB5_31
# BB#10:                                # %land.lhs.true.24
	movq	40(%r9), %rbx
	cmpq	40(%r8), %rbx
	jne	.LBB5_31
# BB#11:                                # %land.lhs.true.27
	movq	48(%r9), %rbx
	cmpq	48(%r8), %rbx
	jne	.LBB5_31
# BB#12:                                # %if.then.33
	xorl	%eax, %eax
	cmpq	80(%rcx), %r9
	je	.LBB5_14
# BB#13:                                # %select.mid
	movq	%rsi, %rax
.LBB5_14:                               # %select.end
	movq	%rax, 1808(%rdi)
	movl	$-28, %eax
	cmpq	%r8, 24(%r10)
	jne	.LBB5_31
# BB#15:                                # %if.end.43
	movq	72(%r8), %rcx
	cmpq	%r8, %rcx
	je	.LBB5_16
# BB#17:                                # %if.else.i.73
	cmpq	%r8, %rdx
	jne	.LBB5_19
# BB#18:                                # %if.then.2.i.75
	movq	%rcx, 1800(%rdi)
	movq	72(%r8), %rcx
	movq	80(%r8), %r11
.LBB5_19:                               # %if.end.i.80
	movq	%r11, 80(%rcx)
	movq	80(%r8), %rdx
	movq	%rcx, 72(%rdx)
	jmp	.LBB5_20
.LBB5_16:                               # %if.then.i.71
	movq	$0, 1800(%rdi)
.LBB5_20:                               # %band_list_remove.exit82
	xorps	%xmm0, %xmm0
	movups	%xmm0, 72(%r8)
	movq	72(%r9), %rcx
	cmpq	%r9, %rcx
	je	.LBB5_21
# BB#22:                                # %if.else.i.65
	cmpq	%r9, 1792(%rdi)
	jne	.LBB5_24
# BB#23:                                # %if.then.2.i
	movq	%rcx, 1792(%rdi)
	movq	72(%r9), %rcx
.LBB5_24:                               # %if.end.i.67
	movq	80(%r9), %rdx
	movq	%rdx, 80(%rcx)
	movq	80(%r9), %rdx
	movq	%rcx, 72(%rdx)
	jmp	.LBB5_25
.LBB5_21:                               # %if.then.i.64
	movq	$0, 1792(%rdi)
.LBB5_25:                               # %band_list_remove.exit
	xorps	%xmm0, %xmm0
	movups	%xmm0, 72(%r9)
	movq	1800(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB5_26
# BB#27:                                # %if.else.i
	movq	80(%rcx), %rdx
	movq	%rcx, 72(%r9)
	movq	%rdx, 80(%r9)
	movq	%r9, 80(%rcx)
	movq	%r9, 72(%rdx)
	jmp	.LBB5_28
.LBB5_26:                               # %if.then.i
	movq	%r9, 80(%r9)
	movq	%r9, 72(%r9)
	movq	%r9, 1800(%rdi)
.LBB5_28:                               # %band_list_insert_last.exit
	movl	12(%r8), %ecx
	movl	%ecx, 12(%r9)
	movl	24(%r8), %ecx
	movl	%ecx, 24(%r9)
	movl	28(%r8), %ecx
	movl	%ecx, 28(%r9)
	movl	68(%r8), %ecx
	andl	%ecx, 68(%r9)
	movl	64(%r8), %ecx
	andl	%ecx, 64(%r9)
	movq	(%r8), %rcx
	cmpq	1752(%rdi), %rcx
	jne	.LBB5_31
# BB#29:                                # %if.end.58
	movq	%r8, 1752(%rdi)
	movq	32(%r9), %rcx
	movq	(%rcx), %rdx
	cmpq	1776(%rdi), %rdx
	jne	.LBB5_31
# BB#30:                                # %cleanup
	movq	%rcx, 1776(%rdi)
	movq	$0, 32(%r9)
	xorl	%eax, %eax
.LBB5_31:                               # %return
	popq	%rbx
	retq
.Lfunc_end5:
	.size	try_unite_last_trap, .Lfunc_end5-try_unite_last_trap
	.cfi_endproc

	.globl	gx_san_end
	.align	16, 0x90
	.type	gx_san_end,@function
gx_san_end:                             # @gx_san_end
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end6:
	.size	gx_san_end, .Lfunc_end6-gx_san_end
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI7_0:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_1:
	.quad	4606281698874543309     # double 0.90000000000000002
.LCPI7_2:
	.quad	4602678819172646912     # double 0.5
.LCPI7_3:
	.quad	0                       # double 0
	.text
	.globl	gx_san_generate_stems
	.align	16, 0x90
	.type	gx_san_generate_stems,@function
gx_san_generate_stems:                  # @gx_san_generate_stems
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp33:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp34:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp35:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp37:
	.cfi_def_cfa_offset 112
.Ltmp38:
	.cfi_offset %rbx, -56
.Ltmp39:
	.cfi_offset %r12, -48
.Ltmp40:
	.cfi_offset %r13, -40
.Ltmp41:
	.cfi_offset %r14, -32
.Ltmp42:
	.cfi_offset %r15, -24
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movq	%rdx, (%rsp)            # 8-byte Spill
	movq	%rdi, %r12
	testl	%esi, %esi
	movq	1736(%r12), %r13
	movq	1752(%r12), %rax
	je	.LBB7_1
# BB#19:
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB7_20:                               # %for.cond.1.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_22 Depth 2
                                        #       Child Loop BB7_37 Depth 3
                                        #         Child Loop BB7_39 Depth 4
                                        #     Child Loop BB7_59 Depth 2
	cmpq	%rax, %r13
	movq	%rax, %rbp
	je	.LBB7_61
# BB#21:                                # %for.body.3.lr.ph.i
                                        #   in Loop: Header=BB7_20 Depth=1
	movl	$1, %eax
	movb	%bl, %cl
	shll	%cl, %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	leal	-1(%rbx,%rbx), %r15d
	.align	16, 0x90
.LBB7_22:                               # %for.body.3.i
                                        #   Parent Loop BB7_20 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_37 Depth 3
                                        #         Child Loop BB7_39 Depth 4
	cmpl	$0, 88(%r13)
	jne	.LBB7_58
# BB#23:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB7_22 Depth=2
	testl	%ebx, %ebx
	je	.LBB7_24
# BB#27:                                # %cond.false.i
                                        #   in Loop: Header=BB7_22 Depth=2
	cmpl	$0, 68(%r13)
	jne	.LBB7_28
	jmp	.LBB7_58
.LBB7_24:                               # %cond.true.i
                                        #   in Loop: Header=BB7_22 Depth=2
	cmpl	$0, 64(%r13)
	je	.LBB7_58
.LBB7_28:                               # %if.then.i
                                        #   in Loop: Header=BB7_22 Depth=2
	movl	12(%r13), %eax
	subl	8(%r13), %eax
	cvtsi2sdl	%eax, %xmm0
	testl	%ebx, %ebx
	jne	.LBB7_32
# BB#29:                                # %if.then.i.i
                                        #   in Loop: Header=BB7_22 Depth=2
	movl	24(%r13), %eax
	subl	16(%r13), %eax
	cvtsi2sdl	%eax, %xmm1
	movapd	%xmm1, 32(%rsp)         # 16-byte Spill
	mulsd	%xmm1, %xmm1
	movapd	%xmm0, %xmm2
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	mulsd	%xmm2, %xmm2
	addsd	%xmm1, %xmm2
	movsd	%xmm2, 24(%rsp)         # 8-byte Spill
	movapd	%xmm2, %xmm0
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB7_31
# BB#30:                                # %call.sqrt
                                        #   in Loop: Header=BB7_22 Depth=2
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB7_31:                               # %if.then.i.i.split
                                        #   in Loop: Header=BB7_22 Depth=2
	movapd	32(%rsp), %xmm3         # 16-byte Reload
	divsd	%xmm0, %xmm3
	movapd	%xmm3, %xmm0
	xorpd	.LCPI7_0(%rip), %xmm0
	movapd	%xmm3, %xmm1
	cmpltsd	.LCPI7_3, %xmm1
	movapd	%xmm1, %xmm2
	andnpd	%xmm3, %xmm2
	andpd	%xmm0, %xmm1
	orpd	%xmm2, %xmm1
	ucomisd	.LCPI7_1(%rip), %xmm1
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ja	.LBB7_58
.LBB7_32:                               # %if.end.9.i.i
                                        #   in Loop: Header=BB7_22 Depth=2
	cmpl	$1, %ebx
	jne	.LBB7_36
# BB#33:                                # %if.then.12.i.i
                                        #   in Loop: Header=BB7_22 Depth=2
	movl	28(%r13), %eax
	subl	20(%r13), %eax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	movapd	%xmm1, 32(%rsp)         # 16-byte Spill
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB7_35
# BB#34:                                # %call.sqrt50
                                        #   in Loop: Header=BB7_22 Depth=2
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB7_35:                               # %if.then.12.i.i.split
                                        #   in Loop: Header=BB7_22 Depth=2
	movapd	32(%rsp), %xmm3         # 16-byte Reload
	divsd	%xmm0, %xmm3
	movapd	%xmm3, %xmm0
	xorpd	.LCPI7_0(%rip), %xmm0
	movapd	%xmm3, %xmm1
	cmpltsd	.LCPI7_3, %xmm1
	movapd	%xmm1, %xmm2
	andnpd	%xmm3, %xmm2
	andpd	%xmm0, %xmm1
	orpd	%xmm2, %xmm1
	ucomisd	.LCPI7_1(%rip), %xmm1
	ja	.LBB7_58
.LBB7_36:                               # %while.cond.preheader.i
                                        #   in Loop: Header=BB7_22 Depth=2
	movq	32(%r13), %rax
	testq	%rax, %rax
	movq	%r13, %r14
	movq	%r13, %rbp
	je	.LBB7_54
	.align	16, 0x90
.LBB7_37:                               # %while.body.i
                                        #   Parent Loop BB7_20 Depth=1
                                        #     Parent Loop BB7_22 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_39 Depth 4
	movq	8(%rax), %rcx
	movq	24(%rax), %rbp
	cmpq	%rax, %rcx
	je	.LBB7_41
# BB#38:                                # %for.body.lr.ph.i.i
                                        #   in Loop: Header=BB7_37 Depth=3
	leaq	20(%rbp), %rdx
	addq	$16, %rbp
	testl	%ebx, %ebx
	cmovneq	%rdx, %rbp
	movl	(%rbp), %edx
	movq	%rax, %rsi
	.align	16, 0x90
.LBB7_39:                               # %for.body.i.i
                                        #   Parent Loop BB7_20 Depth=1
                                        #     Parent Loop BB7_22 Depth=2
                                        #       Parent Loop BB7_37 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	24(%rcx), %rdi
	leaq	16(%rdi), %rbp
	addq	$20, %rdi
	testl	%ebx, %ebx
	cmoveq	%rbp, %rdi
	movl	(%rdi), %ebp
	movl	%ebp, %edi
	subl	%edx, %edi
	imull	%r15d, %edi
	testl	%edi, %edi
	cmovgq	%rcx, %rsi
	movq	8(%rcx), %rcx
	cmovgl	%ebp, %edx
	cmpq	%rax, %rcx
	jne	.LBB7_39
# BB#40:                                # %for.cond.for.end_crit_edge.i.i
                                        #   in Loop: Header=BB7_37 Depth=3
	movq	24(%rsi), %rbp
.LBB7_41:                               # %upper_neighbour.exit.i
                                        #   in Loop: Header=BB7_37 Depth=3
	testl	%ebx, %ebx
	je	.LBB7_42
# BB#43:                                # %cond.false.16.i
                                        #   in Loop: Header=BB7_37 Depth=3
	cmpl	$0, 68(%rbp)
	jne	.LBB7_44
	jmp	.LBB7_58
	.align	16, 0x90
.LBB7_42:                               # %cond.true.13.i
                                        #   in Loop: Header=BB7_37 Depth=3
	cmpl	$0, 64(%rbp)
	je	.LBB7_58
.LBB7_44:                               # %if.end.i
                                        #   in Loop: Header=BB7_37 Depth=3
	movl	12(%rbp), %eax
	subl	8(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	testl	%ebx, %ebx
	jne	.LBB7_48
# BB#45:                                # %if.then.i.116.i
                                        #   in Loop: Header=BB7_37 Depth=3
	movl	24(%rbp), %eax
	subl	16(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	movapd	%xmm1, 32(%rsp)         # 16-byte Spill
	mulsd	%xmm1, %xmm1
	movapd	%xmm0, %xmm2
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	mulsd	%xmm2, %xmm2
	addsd	%xmm1, %xmm2
	movsd	%xmm2, 24(%rsp)         # 8-byte Spill
	movapd	%xmm2, %xmm0
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB7_47
# BB#46:                                # %call.sqrt51
                                        #   in Loop: Header=BB7_37 Depth=3
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB7_47:                               # %if.then.i.116.i.split
                                        #   in Loop: Header=BB7_37 Depth=3
	movapd	32(%rsp), %xmm3         # 16-byte Reload
	divsd	%xmm0, %xmm3
	movapd	%xmm3, %xmm0
	xorpd	.LCPI7_0(%rip), %xmm0
	movapd	%xmm3, %xmm1
	cmpltsd	.LCPI7_3, %xmm1
	movapd	%xmm1, %xmm2
	andnpd	%xmm3, %xmm2
	andpd	%xmm0, %xmm1
	orpd	%xmm2, %xmm1
	ucomisd	.LCPI7_1(%rip), %xmm1
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ja	.LBB7_78
.LBB7_48:                               # %if.end.9.i.119.i
                                        #   in Loop: Header=BB7_37 Depth=3
	cmpl	$1, %ebx
	jne	.LBB7_52
# BB#49:                                # %if.then.12.i.133.i
                                        #   in Loop: Header=BB7_37 Depth=3
	movl	28(%rbp), %eax
	subl	20(%rbp), %eax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	movapd	%xmm1, 32(%rsp)         # 16-byte Spill
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB7_51
# BB#50:                                # %call.sqrt52
                                        #   in Loop: Header=BB7_37 Depth=3
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB7_51:                               # %if.then.12.i.133.i.split
                                        #   in Loop: Header=BB7_37 Depth=3
	movapd	32(%rsp), %xmm3         # 16-byte Reload
	divsd	%xmm0, %xmm3
	movapd	%xmm3, %xmm0
	xorpd	.LCPI7_0(%rip), %xmm0
	movapd	%xmm3, %xmm1
	cmpltsd	.LCPI7_3, %xmm1
	movapd	%xmm1, %xmm2
	andnpd	%xmm3, %xmm2
	andpd	%xmm0, %xmm1
	orpd	%xmm2, %xmm1
	ucomisd	.LCPI7_1(%rip), %xmm1
	ja	.LBB7_78
.LBB7_52:                               #   in Loop: Header=BB7_37 Depth=3
	leaq	20(%rbp), %rax
	leaq	24(%r14), %rcx
	addq	$28, %r14
	leaq	16(%rbp), %rdx
	testl	%ebx, %ebx
	cmoveq	%rcx, %r14
	movl	(%r14), %ecx
	cmovneq	%rax, %rdx
	cmpl	(%rdx), %ecx
	jne	.LBB7_54
# BB#53:                                # %if.end.36.i
                                        #   in Loop: Header=BB7_37 Depth=3
	movl	$1, 88(%rbp)
	movq	32(%rbp), %rax
	testq	%rax, %rax
	movq	%rbp, %r14
	jne	.LBB7_37
	jmp	.LBB7_54
.LBB7_78:                               # %if.then.23.i
                                        #   in Loop: Header=BB7_22 Depth=2
	movl	$1, 88(%rbp)
.LBB7_54:                               # %while.end.i
                                        #   in Loop: Header=BB7_22 Depth=2
	testl	%ebx, %ebx
	je	.LBB7_55
# BB#56:                                # %cond.false.42.i
                                        #   in Loop: Header=BB7_22 Depth=2
	cmpl	$0, 68(%rbp)
	jne	.LBB7_57
	jmp	.LBB7_58
.LBB7_55:                               # %cond.true.39.i
                                        #   in Loop: Header=BB7_22 Depth=2
	cmpl	$0, 64(%rbp)
	je	.LBB7_58
.LBB7_57:                               # %cleanup.i
                                        #   in Loop: Header=BB7_22 Depth=2
	movq	%r12, %rdi
	movl	20(%rsp), %esi          # 4-byte Reload
	movq	(%rsp), %rdx            # 8-byte Reload
	movq	%r13, %rcx
	movq	%rbp, %r8
	movq	8(%rsp), %r9            # 8-byte Reload
	callq	hint_by_tangent
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB7_77
	.align	16, 0x90
.LBB7_58:                               # %for.inc.i
                                        #   in Loop: Header=BB7_22 Depth=2
	movq	(%r13), %r13
	cmpq	1752(%r12), %r13
	jne	.LBB7_22
# BB#25:                                # %for.cond.58.preheader.i
                                        #   in Loop: Header=BB7_20 Depth=1
	movq	1736(%r12), %rbp
	cmpq	%r13, %rbp
	movq	%rbp, %rax
	je	.LBB7_26
	.align	16, 0x90
.LBB7_59:                               # %for.body.61.i
                                        #   Parent Loop BB7_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$0, 88(%rax)
	movq	(%rax), %rax
	cmpq	%r13, %rax
	jne	.LBB7_59
	jmp	.LBB7_60
	.align	16, 0x90
.LBB7_26:                               #   in Loop: Header=BB7_20 Depth=1
	movq	%r13, %rbp
.LBB7_60:                               #   in Loop: Header=BB7_20 Depth=1
	movq	%r13, %rax
.LBB7_61:                               # %for.inc.66.i
                                        #   in Loop: Header=BB7_20 Depth=1
	incl	%ebx
	cmpl	$2, %ebx
	movq	%rbp, %r13
	jl	.LBB7_20
	jmp	.LBB7_2
.LBB7_1:
	movq	%r13, %rbp
.LBB7_2:                                # %for.cond.69.preheader.i
	cmpq	%rax, %rbp
	je	.LBB7_76
	.align	16, 0x90
.LBB7_3:                                # %for.body.72.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_11 Depth 2
                                        #     Child Loop BB7_69 Depth 2
	cmpl	$0, 88(%rbp)
	jne	.LBB7_75
# BB#4:                                 # %if.then.75.i
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	12(%rbp), %eax
	movl	24(%rbp), %ecx
	subl	8(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	subl	16(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movapd	%xmm1, 32(%rsp)         # 16-byte Spill
	movapd	%xmm1, %xmm0
	mulsd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm2
	movsd	%xmm2, 48(%rsp)         # 8-byte Spill
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB7_6
# BB#5:                                 # %call.sqrt53
                                        #   in Loop: Header=BB7_3 Depth=1
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB7_6:                                # %if.then.75.i.split
                                        #   in Loop: Header=BB7_3 Depth=1
	movapd	32(%rsp), %xmm3         # 16-byte Reload
	divsd	%xmm0, %xmm3
	movapd	%xmm3, %xmm0
	xorpd	.LCPI7_0(%rip), %xmm0
	movapd	%xmm3, %xmm1
	cmpltsd	.LCPI7_3, %xmm1
	movapd	%xmm1, %xmm2
	andnpd	%xmm3, %xmm2
	andpd	%xmm0, %xmm1
	orpd	%xmm2, %xmm1
	ucomisd	.LCPI7_1(%rip), %xmm1
	ja	.LBB7_75
# BB#7:                                 # %if.end.9.i.155.i
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	28(%rbp), %eax
	subl	20(%rbp), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movapd	%xmm0, 32(%rsp)         # 16-byte Spill
	movapd	%xmm0, %xmm1
	mulsd	%xmm1, %xmm1
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB7_9
# BB#8:                                 # %call.sqrt54
                                        #   in Loop: Header=BB7_3 Depth=1
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB7_9:                                # %if.end.9.i.155.i.split
                                        #   in Loop: Header=BB7_3 Depth=1
	movapd	32(%rsp), %xmm3         # 16-byte Reload
	divsd	%xmm0, %xmm3
	movapd	%xmm3, %xmm0
	xorpd	.LCPI7_0(%rip), %xmm0
	movapd	%xmm3, %xmm1
	cmpltsd	.LCPI7_3, %xmm1
	movapd	%xmm1, %xmm2
	andnpd	%xmm3, %xmm2
	andpd	%xmm0, %xmm1
	orpd	%xmm2, %xmm1
	ucomisd	.LCPI7_1(%rip), %xmm1
	ja	.LBB7_75
# BB#10:                                # %if.then.78.i
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	32(%rbp), %rax
	testq	%rax, %rax
	movq	%rbp, %r15
	movsd	.LCPI7_2(%rip), %xmm2   # xmm2 = mem[0],zero
	je	.LBB7_68
	.align	16, 0x90
.LBB7_11:                               # %land.rhs.84.i
                                        #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%rax, 8(%rax)
	jne	.LBB7_68
# BB#12:                                # %while.body.87.i
                                        #   in Loop: Header=BB7_11 Depth=2
	movq	24(%rax), %rbx
	movl	12(%rbx), %eax
	movl	24(%rbx), %ecx
	subl	8(%rbx), %eax
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%eax, %xmm2
	subl	16(%rbx), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movapd	%xmm1, 32(%rsp)         # 16-byte Spill
	movapd	%xmm1, %xmm0
	mulsd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm2
	movsd	%xmm2, 48(%rsp)         # 8-byte Spill
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB7_14
# BB#13:                                # %call.sqrt55
                                        #   in Loop: Header=BB7_11 Depth=2
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB7_14:                               # %while.body.87.i.split
                                        #   in Loop: Header=BB7_11 Depth=2
	movapd	32(%rsp), %xmm3         # 16-byte Reload
	divsd	%xmm0, %xmm3
	movapd	%xmm3, %xmm0
	xorpd	.LCPI7_0(%rip), %xmm0
	movapd	%xmm3, %xmm1
	cmpltsd	.LCPI7_3, %xmm1
	movapd	%xmm1, %xmm2
	andnpd	%xmm3, %xmm2
	andpd	%xmm0, %xmm1
	orpd	%xmm2, %xmm1
	ucomisd	.LCPI7_1(%rip), %xmm1
	ja	.LBB7_18
# BB#15:                                # %if.end.9.i.191.i
                                        #   in Loop: Header=BB7_11 Depth=2
	movl	28(%rbx), %eax
	subl	20(%rbx), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movapd	%xmm0, 32(%rsp)         # 16-byte Spill
	movapd	%xmm0, %xmm1
	mulsd	%xmm1, %xmm1
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB7_17
# BB#16:                                # %call.sqrt56
                                        #   in Loop: Header=BB7_11 Depth=2
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB7_17:                               # %if.end.9.i.191.i.split
                                        #   in Loop: Header=BB7_11 Depth=2
	movapd	32(%rsp), %xmm3         # 16-byte Reload
	divsd	%xmm0, %xmm3
	movapd	%xmm3, %xmm0
	xorpd	.LCPI7_0(%rip), %xmm0
	movapd	%xmm3, %xmm1
	cmpltsd	.LCPI7_3, %xmm1
	movapd	%xmm1, %xmm2
	andnpd	%xmm3, %xmm2
	andpd	%xmm0, %xmm1
	orpd	%xmm2, %xmm1
	ucomisd	.LCPI7_1(%rip), %xmm1
	ja	.LBB7_18
# BB#62:                                # %if.end.94.i
                                        #   in Loop: Header=BB7_11 Depth=2
	cmpl	$1, 92(%rbx)
	jg	.LBB7_63
# BB#64:                                # %if.end.97.i
                                        #   in Loop: Header=BB7_11 Depth=2
	movl	24(%r15), %eax
	cmpl	16(%rbx), %eax
	jne	.LBB7_65
# BB#66:                                # %lor.lhs.false.i
                                        #   in Loop: Header=BB7_11 Depth=2
	movl	28(%r15), %eax
	cmpl	20(%rbx), %eax
	movsd	.LCPI7_2(%rip), %xmm2   # xmm2 = mem[0],zero
	jne	.LBB7_68
# BB#67:                                # %cleanup.108.i
                                        #   in Loop: Header=BB7_11 Depth=2
	movq	32(%rbx), %rax
	movl	$1, 88(%rbx)
	testq	%rax, %rax
	movq	%rbx, %r15
	jne	.LBB7_11
	jmp	.LBB7_68
.LBB7_18:                               # %if.then.92.i
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	$1, 88(%rbx)
	movsd	.LCPI7_2(%rip), %xmm2   # xmm2 = mem[0],zero
	jmp	.LBB7_68
.LBB7_63:                               #   in Loop: Header=BB7_3 Depth=1
	movsd	.LCPI7_2(%rip), %xmm2   # xmm2 = mem[0],zero
	jmp	.LBB7_68
.LBB7_65:                               #   in Loop: Header=BB7_3 Depth=1
	movsd	.LCPI7_2(%rip), %xmm2   # xmm2 = mem[0],zero
.LBB7_68:                               # %do.end.i
                                        #   in Loop: Header=BB7_3 Depth=1
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	movq	%rbp, %rbx
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	jmp	.LBB7_69
	.align	16, 0x90
.LBB7_72:                               # %for.inc.119.i
                                        #   in Loop: Header=BB7_69 Depth=2
	movsd	%xmm3, 32(%rsp)         # 8-byte Spill
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	movq	32(%rbx), %rax
	movq	24(%rax), %rbx
.LBB7_69:                               # %for.cond.112.i
                                        #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	20(%rbx), %eax
	movl	28(%rbx), %ecx
	addl	16(%rbx), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm2, %xmm0
	addl	24(%rbx), %ecx
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm2, %xmm1
	subsd	%xmm0, %xmm1
	mulsd	%xmm1, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	12(%rbx), %xmm0
	cvtsi2sdl	8(%rbx), %xmm2
	subsd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB7_71
# BB#70:                                # %call.sqrt57
                                        #   in Loop: Header=BB7_69 Depth=2
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB7_71:                               # %for.cond.112.i.split
                                        #   in Loop: Header=BB7_69 Depth=2
	movsd	32(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	addsd	%xmm0, %xmm3
	movl	12(%rbx), %eax
	movl	20(%rbx), %ecx
	subl	16(%rbx), %ecx
	addl	28(%rbx), %ecx
	subl	24(%rbx), %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	subl	8(%rbx), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	.LCPI7_2(%rip), %xmm0   # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm1
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	cmpq	%r15, %rbx
	jne	.LBB7_72
# BB#73:                                # %for.end.122.i
                                        #   in Loop: Header=BB7_3 Depth=1
	divsd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm3
	jbe	.LBB7_75
# BB#74:                                # %if.then.125.i
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	$3, %esi
	movq	%r12, %rdi
	movq	(%rsp), %rdx            # 8-byte Reload
	movq	%rbp, %rcx
	movq	%r15, %r8
	movq	8(%rsp), %r9            # 8-byte Reload
	callq	hint_by_tangent
	testl	%eax, %eax
	cmovsl	%eax, %r14d
	js	.LBB7_77
	.align	16, 0x90
.LBB7_75:                               # %if.end.144.i
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	$1, 88(%rbp)
	movq	(%rbp), %rbp
	cmpq	1752(%r12), %rbp
	jne	.LBB7_3
.LBB7_76:
	xorl	%r14d, %r14d
.LBB7_77:                               # %gx_san_generate_stems_aux.exit
	movl	%r14d, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gx_san_generate_stems, .Lfunc_end7-gx_san_generate_stems
	.cfi_endproc

	.align	16, 0x90
	.type	san_close,@function
san_close:                              # @san_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp44:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp45:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 32
.Ltmp47:
	.cfi_offset %rbx, -32
.Ltmp48:
	.cfi_offset %r14, -24
.Ltmp49:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	24(%r14), %r15
	movq	1736(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB8_3
	.align	16, 0x90
.LBB8_1:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rsi), %rbx
	movl	$.L.str.7, %edx
	movq	%r15, %rdi
	callq	*24(%r15)
	testq	%rbx, %rbx
	movq	%rbx, %rsi
	jne	.LBB8_1
# BB#2:                                 # %free_trap_list.exit.loopexit
	movq	24(%r14), %r15
.LBB8_3:                                # %free_trap_list.exit
	movq	$0, 1736(%r14)
	movq	1760(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB8_5
	.align	16, 0x90
.LBB8_4:                                # %for.body.i.18
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rsi), %rbx
	movl	$.L.str.8, %edx
	movq	%r15, %rdi
	callq	*24(%r15)
	testq	%rbx, %rbx
	movq	%rbx, %rsi
	jne	.LBB8_4
.LBB8_5:                                # %free_cont_list.exit
	xorps	%xmm0, %xmm0
	movups	%xmm0, 1760(%r14)
	movups	%xmm0, 1744(%r14)
	movq	$0, 1776(%r14)
	movups	%xmm0, 1792(%r14)
	movq	$0, 1808(%r14)
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end8:
	.size	san_close, .Lfunc_end8-san_close
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI9_0:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483647              # 0x7fffffff
	.long	2147483647              # 0x7fffffff
	.text
	.align	16, 0x90
	.type	san_get_clipping_box,@function
san_get_clipping_box:                   # @san_get_clipping_box
	.cfi_startproc
# BB#0:                                 # %entry
	movaps	.LCPI9_0(%rip), %xmm0   # xmm0 = [2147483648,2147483648,2147483647,2147483647]
	movups	%xmm0, (%rsi)
	retq
.Lfunc_end9:
	.size	san_get_clipping_box, .Lfunc_end9-san_get_clipping_box
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4596373779694328218     # double 0.20000000000000001
	.text
	.align	16, 0x90
	.type	hint_by_tangent,@function
hint_by_tangent:                        # @hint_by_tangent
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp51:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp52:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp53:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp54:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp55:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp56:
	.cfi_def_cfa_offset 160
.Ltmp57:
	.cfi_offset %rbx, -56
.Ltmp58:
	.cfi_offset %r12, -48
.Ltmp59:
	.cfi_offset %r13, -40
.Ltmp60:
	.cfi_offset %r14, -32
.Ltmp61:
	.cfi_offset %r15, -24
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%r9, 16(%rsp)           # 8-byte Spill
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movl	%esi, %r12d
	andl	$1, %r12d
	xorps	%xmm0, %xmm0
	movups	%xmm0, 80(%rsp)
	movl	24(%rcx), %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movl	%eax, 64(%rsp)
	movl	28(%rcx), %eax
	movl	%eax, 36(%rsp)          # 4-byte Spill
	movl	%eax, 72(%rsp)
	movl	12(%rcx), %edx
	movl	%edx, 76(%rsp)
	movl	%edx, 68(%rsp)
	movl	%esi, 96(%rsp)
	andl	$2, %esi
	leal	(%r12,%r12), %r9d
	xorl	$2, %r9d
	decl	%r9d
	xorpd	%xmm1, %xmm1
	movabsq	$4596373779694328218, %r14 # imm = 0x3FC999999999999A
	movsd	.LCPI10_0(%rip), %xmm0  # xmm0 = mem[0],zero
	xorl	%eax, %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	xorpd	%xmm2, %xmm2
	jmp	.LBB10_1
	.align	16, 0x90
.LBB10_55:                              # %for.cond.for.end_crit_edge.i
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	24(%rdx), %rcx
.LBB10_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_54 Depth 2
	testl	%r12d, %r12d
	je	.LBB10_26
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	40(%rcx), %r13
	cmpl	$0, 56(%rcx)
	jns	.LBB10_6
# BB#3:                                 # %if.then.5
                                        #   in Loop: Header=BB10_1 Depth=1
	movzwl	16(%r13), %edx
	cmpl	$2, %edx
	jne	.LBB10_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	32(%r13), %r13
.LBB10_5:                               # %cond.false
                                        #   in Loop: Header=BB10_1 Depth=1
	addq	$8, %r13
	movq	(%r13), %r13
.LBB10_6:                               # %if.end
                                        #   in Loop: Header=BB10_1 Depth=1
	movw	16(%r13), %di
	testw	%di, %di
	movq	%r13, %rdx
	jne	.LBB10_8
# BB#7:                                 # %cond.true.14
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	32(%r13), %rdx
.LBB10_8:                               # %cond.end.17
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	(%rdx), %rdx
	movzwl	%di, %edi
	cmpl	$3, %edi
	jne	.LBB10_20
# BB#9:                                 # %if.then.i
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	8(%rcx), %ebp
	movl	12(%rcx), %r15d
	movl	24(%rdx), %edi
	cmpl	%ebp, %edi
	jl	.LBB10_16
# BB#10:                                # %if.then.i
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpl	%r15d, %edi
	jg	.LBB10_16
# BB#11:                                # %if.then.8.i
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	%edi, %ebx
	subl	32(%r13), %ebx
	je	.LBB10_16
# BB#12:                                # %if.then.i.39
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	20(%rdx), %r11d
	movl	%r11d, %r10d
	subl	28(%r13), %r10d
	movl	%r10d, %edx
	negl	%edx
	cmovll	%r10d, %edx
	cvtsi2sdl	%edx, %xmm3
	movl	%ebx, %edx
	negl	%edx
	cmovll	%ebx, %edx
	cvtsi2sdl	%edx, %xmm4
	divsd	%xmm4, %xmm3
	ucomisd	%xmm3, %xmm0
	ja	.LBB10_15
# BB#13:                                # %lor.lhs.false.i.41
                                        #   in Loop: Header=BB10_1 Depth=1
	ucomisd	%xmm1, %xmm4
	jbe	.LBB10_16
# BB#14:                                # %lor.lhs.false.i.41
                                        #   in Loop: Header=BB10_1 Depth=1
	ucomisd	%xmm3, %xmm0
	jne	.LBB10_16
	jp	.LBB10_16
.LBB10_15:                              # %if.then.33.i.44
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	%r13, 80(%rsp)
	movl	%r11d, 64(%rsp)
	movl	%edi, 68(%rsp)
	movl	%r11d, %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	%r13, %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movapd	%xmm3, %xmm0
	movapd	%xmm4, %xmm1
	.align	16, 0x90
.LBB10_16:                              # %if.end.i
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	24(%r13), %ebx
	cmpl	%ebp, %ebx
	jl	.LBB10_26
# BB#17:                                # %if.end.i
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpl	%r15d, %ebx
	jg	.LBB10_26
# BB#18:                                # %if.then.24.i
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	%ebx, %edi
	subl	40(%r13), %edi
	je	.LBB10_26
# BB#19:                                # %if.then.i.19
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	20(%r13), %r10d
	movl	%r10d, %ebp
	subl	36(%r13), %ebp
	movl	%ebp, %edx
	negl	%edx
	cmovll	%ebp, %edx
	cvtsi2sdl	%edx, %xmm3
	movl	%edi, %edx
	negl	%edx
	cmovll	%edi, %edx
	jmp	.LBB10_22
	.align	16, 0x90
.LBB10_20:                              # %do.end.35.i
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	24(%rdx), %ebx
	movl	%ebx, %ebp
	subl	24(%r13), %ebp
	je	.LBB10_26
# BB#21:                                # %if.then.i.5
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	20(%rdx), %r10d
	movl	%r10d, %edx
	subl	20(%r13), %edx
	movl	%edx, %edi
	negl	%edi
	cmovll	%edx, %edi
	cvtsi2sdl	%edi, %xmm3
	movl	%ebp, %edx
	negl	%edx
	cmovll	%ebp, %edx
.LBB10_22:                              # %if.then.i.5
                                        #   in Loop: Header=BB10_1 Depth=1
	cvtsi2sdl	%edx, %xmm4
	divsd	%xmm4, %xmm3
	ucomisd	%xmm3, %xmm0
	ja	.LBB10_25
# BB#23:                                # %lor.lhs.false.i
                                        #   in Loop: Header=BB10_1 Depth=1
	ucomisd	%xmm1, %xmm4
	jbe	.LBB10_26
# BB#24:                                # %lor.lhs.false.i
                                        #   in Loop: Header=BB10_1 Depth=1
	ucomisd	%xmm3, %xmm0
	jne	.LBB10_26
	jp	.LBB10_26
.LBB10_25:                              # %if.then.33.i
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	%r13, 80(%rsp)
	movl	%r10d, 64(%rsp)
	movl	%ebx, 68(%rsp)
	movl	%r10d, %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	%r13, 56(%rsp)          # 8-byte Spill
	movapd	%xmm3, %xmm0
	movapd	%xmm4, %xmm1
	.align	16, 0x90
.LBB10_26:                              # %if.end.23
                                        #   in Loop: Header=BB10_1 Depth=1
	testl	%esi, %esi
	je	.LBB10_51
# BB#27:                                # %if.then.26
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	48(%rcx), %r13
	cmpl	$0, 60(%rcx)
	jns	.LBB10_31
# BB#28:                                # %if.then.30
                                        #   in Loop: Header=BB10_1 Depth=1
	movzwl	16(%r13), %edx
	cmpl	$2, %edx
	jne	.LBB10_30
# BB#29:                                # %cond.true.35
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	32(%r13), %r13
.LBB10_30:                              # %cond.false.38
                                        #   in Loop: Header=BB10_1 Depth=1
	addq	$8, %r13
	movq	(%r13), %r13
.LBB10_31:                              # %if.end.42
                                        #   in Loop: Header=BB10_1 Depth=1
	movw	16(%r13), %di
	testw	%di, %di
	movq	%r13, %rdx
	jne	.LBB10_33
# BB#32:                                # %cond.true.47
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	32(%r13), %rdx
.LBB10_33:                              # %cond.end.52
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	(%rdx), %rdx
	movzwl	%di, %edi
	cmpl	$3, %edi
	jne	.LBB10_45
# BB#34:                                # %if.then.i.52
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	8(%rcx), %r15d
	movl	12(%rcx), %r11d
	movl	24(%rdx), %ebx
	cmpl	%r15d, %ebx
	jl	.LBB10_41
# BB#35:                                # %if.then.i.52
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpl	%r11d, %ebx
	jg	.LBB10_41
# BB#36:                                # %if.then.8.i.56
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	%ebx, %edi
	subl	32(%r13), %edi
	je	.LBB10_41
# BB#37:                                # %if.then.i.125
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	20(%rdx), %r10d
	movl	%r10d, %ebp
	subl	28(%r13), %ebp
	movl	%ebp, %edx
	negl	%edx
	cmovll	%ebp, %edx
	cvtsi2sdl	%edx, %xmm4
	movl	%edi, %edx
	negl	%edx
	cmovll	%edi, %edx
	cvtsi2sdl	%edx, %xmm3
	divsd	%xmm3, %xmm4
	movd	%r14, %xmm5
	ucomisd	%xmm4, %xmm5
	ja	.LBB10_40
# BB#38:                                # %lor.lhs.false.i.127
                                        #   in Loop: Header=BB10_1 Depth=1
	ucomisd	%xmm2, %xmm3
	jbe	.LBB10_41
# BB#39:                                # %lor.lhs.false.i.127
                                        #   in Loop: Header=BB10_1 Depth=1
	ucomisd	%xmm4, %xmm5
	jne	.LBB10_41
	jp	.LBB10_41
.LBB10_40:                              # %if.then.33.i.130
                                        #   in Loop: Header=BB10_1 Depth=1
	movd	%xmm4, %r14
	movq	%r13, 88(%rsp)
	movl	%r10d, 72(%rsp)
	movl	%ebx, 76(%rsp)
	movl	%r10d, 36(%rsp)         # 4-byte Spill
	movq	%r13, %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movapd	%xmm3, %xmm2
	.align	16, 0x90
.LBB10_41:                              # %if.end.i.61
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	24(%r13), %ebx
	cmpl	%r15d, %ebx
	jl	.LBB10_51
# BB#42:                                # %if.end.i.61
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpl	%r11d, %ebx
	jg	.LBB10_51
# BB#43:                                # %if.then.24.i.65
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	%ebx, %edi
	subl	40(%r13), %edi
	je	.LBB10_51
# BB#44:                                # %if.then.i.105
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	20(%r13), %r10d
	movl	%r10d, %ebp
	subl	36(%r13), %ebp
	jmp	.LBB10_47
	.align	16, 0x90
.LBB10_45:                              # %do.end.35.i.70
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	24(%rdx), %ebx
	movl	%ebx, %edi
	subl	24(%r13), %edi
	je	.LBB10_51
# BB#46:                                # %if.then.i.85
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	20(%rdx), %r10d
	movl	%r10d, %ebp
	subl	20(%r13), %ebp
.LBB10_47:                              # %if.then.i.85
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	%ebp, %edx
	negl	%edx
	cmovll	%ebp, %edx
	cvtsi2sdl	%edx, %xmm4
	movl	%edi, %edx
	negl	%edx
	cmovll	%edi, %edx
	cvtsi2sdl	%edx, %xmm3
	divsd	%xmm3, %xmm4
	movd	%r14, %xmm5
	ucomisd	%xmm4, %xmm5
	ja	.LBB10_50
# BB#48:                                # %lor.lhs.false.i.87
                                        #   in Loop: Header=BB10_1 Depth=1
	ucomisd	%xmm2, %xmm3
	jbe	.LBB10_51
# BB#49:                                # %lor.lhs.false.i.87
                                        #   in Loop: Header=BB10_1 Depth=1
	ucomisd	%xmm4, %xmm5
	jne	.LBB10_51
	jp	.LBB10_51
.LBB10_50:                              # %if.then.33.i.90
                                        #   in Loop: Header=BB10_1 Depth=1
	movd	%xmm4, %r14
	movq	%r13, 88(%rsp)
	movl	%r10d, 72(%rsp)
	movl	%ebx, 76(%rsp)
	movl	%r10d, 36(%rsp)         # 4-byte Spill
	movq	%r13, 48(%rsp)          # 8-byte Spill
	movapd	%xmm3, %xmm2
	.align	16, 0x90
.LBB10_51:                              # %if.end.59
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpq	%r8, %rcx
	je	.LBB10_56
# BB#52:                                # %for.inc
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	32(%rcx), %rbp
	movq	8(%rbp), %rbx
	movq	24(%rbp), %rcx
	cmpq	%rbp, %rbx
	je	.LBB10_1
# BB#53:                                # %for.body.lr.ph.i
                                        #   in Loop: Header=BB10_1 Depth=1
	leaq	20(%rcx), %rdx
	addq	$16, %rcx
	testl	%r12d, %r12d
	cmoveq	%rdx, %rcx
	movl	(%rcx), %ecx
	movq	%rbp, %rdx
	.align	16, 0x90
.LBB10_54:                              # %for.body.i
                                        #   Parent Loop BB10_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	24(%rbx), %rdi
	leaq	16(%rdi), %rax
	addq	$20, %rdi
	testl	%r12d, %r12d
	cmovneq	%rax, %rdi
	movl	(%rdi), %eax
	movl	%eax, %edi
	subl	%ecx, %edi
	imull	%r9d, %edi
	testl	%edi, %edi
	cmovgq	%rbx, %rdx
	movq	8(%rbx), %rbx
	cmovgl	%eax, %ecx
	cmpq	%rbp, %rbx
	jne	.LBB10_54
	jmp	.LBB10_55
.LBB10_56:                              # %for.end
	testl	%r12d, %r12d
	sete	%cl
	cmpq	$0, 56(%rsp)            # 8-byte Folded Reload
	jne	.LBB10_58
# BB#57:                                # %for.end
	testb	%cl, %cl
	je	.LBB10_67
.LBB10_58:                              # %land.lhs.true
	testl	%esi, %esi
	sete	%cl
	cmpq	$0, 48(%rsp)            # 8-byte Folded Reload
	jne	.LBB10_60
# BB#59:                                # %land.lhs.true
	testb	%cl, %cl
	je	.LBB10_67
.LBB10_60:                              # %if.then.75
	testl	%r12d, %r12d
	jne	.LBB10_63
# BB#61:                                # %if.then.78
	movq	24(%rsp), %rcx          # 8-byte Reload
	movl	1816(%rcx), %edx
	leal	(%rdx,%rdx,2), %eax
	addl	1820(%rcx), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$30, %ecx
	addl	%eax, %ecx
	sarl	$2, %ecx
	xorl	%eax, %eax
	cmpl	%ecx, 36(%rsp)          # 4-byte Folded Reload
	jl	.LBB10_68
# BB#62:                                # %if.end.83
	addl	$-1000, %edx            # imm = 0xFFFFFFFFFFFFFC18
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movl	%edx, 64(%rsp)
.LBB10_63:                              # %if.end.87
	testl	%esi, %esi
	jne	.LBB10_66
# BB#64:                                # %if.then.90
	movq	24(%rsp), %rdx          # 8-byte Reload
	movl	1820(%rdx), %ecx
	leal	(%rcx,%rcx,2), %eax
	addl	1816(%rdx), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	shrl	$30, %edx
	addl	%eax, %edx
	sarl	$2, %edx
	xorl	%eax, %eax
	movq	40(%rsp), %rsi          # 8-byte Reload
	cmpl	%edx, %esi
	jg	.LBB10_68
# BB#65:                                # %if.end.100
	addl	$1000, %ecx             # imm = 0x3E8
	movl	%ecx, 72(%rsp)
.LBB10_66:                              # %cleanup
	leaq	64(%rsp), %rsi
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	*16(%rsp)               # 8-byte Folded Reload
	testl	%eax, %eax
	js	.LBB10_68
.LBB10_67:                              # %if.end.110
	xorl	%eax, %eax
.LBB10_68:                              # %cleanup.111
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	hint_by_tangent, .Lfunc_end10-hint_by_tangent
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gx_device_spot_analyzer"
	.size	.L.str, 24

	.type	device_spot_analyzer_reloc_ptrs,@object # @device_spot_analyzer_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
device_spot_analyzer_reloc_ptrs:
	.short	4                       # 0x4
	.short	0                       # 0x0
	.zero	4
	.quad	st_device
	.quad	device_spot_analyzer_enum_ptrs
	.size	device_spot_analyzer_reloc_ptrs, 24

	.type	st_device_spot_analyzer,@object # @st_device_spot_analyzer
	.globl	st_device_spot_analyzer
	.align	8
st_device_spot_analyzer:
	.long	1824                    # 0x720
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	gx_device_finalize
	.quad	device_spot_analyzer_reloc_ptrs
	.size	st_device_spot_analyzer, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gx_san__obtain"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Extra call to gx_san__release."
	.size	.L.str.2, 31

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Wrong lock to gx_san__release."
	.size	.L.str.3, 31

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gx_san__release"
	.size	.L.str.4, 16

	.type	device_spot_analyzer_enum_ptrs,@object # @device_spot_analyzer_enum_ptrs
	.section	.rodata,"a",@progbits
	.align	16
device_spot_analyzer_enum_ptrs:
	.short	0                       # 0x0
	.short	1736                    # 0x6c8
	.short	0                       # 0x0
	.short	1744                    # 0x6d0
	.short	0                       # 0x0
	.short	1760                    # 0x6e0
	.short	0                       # 0x0
	.short	1768                    # 0x6e8
	.size	device_spot_analyzer_enum_ptrs, 16

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"spot analyzer"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"DeviceGray"
	.size	.L.str.6, 11

	.type	gx_spot_analyzer_device,@object # @gx_spot_analyzer_device
	.section	.rodata,"a",@progbits
	.align	8
gx_spot_analyzer_device:
	.long	1824                    # 0x720
	.zero	4
	.quad	0
	.quad	.L.str.5
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.6
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	8
	.zero	16
	.long	0                       # 0x0
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	san_open
	.quad	0
	.quad	0
	.quad	0
	.quad	san_close
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_fill_path
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	san_get_clipping_box
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_finish_copydevice
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	gx_spot_analyzer_device, 1824

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"free_trap_list"
	.size	.L.str.7, 15

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"free_cont_list"
	.size	.L.str.8, 15

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"trap_reserve"
	.size	.L.str.9, 13

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gx_san_trap"
	.size	.L.str.10, 12

	.type	san_trap_reloc_ptrs,@object # @san_trap_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
san_trap_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	san_trap_enum_ptrs
	.size	san_trap_reloc_ptrs, 24

	.type	st_san_trap,@object     # @st_san_trap
	.align	8
st_san_trap:
	.long	96                      # 0x60
	.zero	4
	.quad	.L.str.10
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	san_trap_reloc_ptrs
	.size	st_san_trap, 64

	.type	san_trap_enum_ptrs,@object # @san_trap_enum_ptrs
	.align	2
san_trap_enum_ptrs:
	.zero	4
	.size	san_trap_enum_ptrs, 4

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"cont_reserve"
	.size	.L.str.11, 13

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gx_san_trap_contact"
	.size	.L.str.12, 20

	.type	san_trap_contact_reloc_ptrs,@object # @san_trap_contact_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
san_trap_contact_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	san_trap_contact_enum_ptrs
	.size	san_trap_contact_reloc_ptrs, 24

	.type	st_san_trap_contact,@object # @st_san_trap_contact
	.align	8
st_san_trap_contact:
	.long	40                      # 0x28
	.zero	4
	.quad	.L.str.12
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	san_trap_contact_reloc_ptrs
	.size	st_san_trap_contact, 64

	.type	san_trap_contact_enum_ptrs,@object # @san_trap_contact_enum_ptrs
	.align	2
san_trap_contact_enum_ptrs:
	.zero	4
	.size	san_trap_contact_enum_ptrs, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
