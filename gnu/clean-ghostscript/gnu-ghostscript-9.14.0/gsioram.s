	.text
	.file	"gsioram.bc"
	.align	16, 0x90
	.type	iodev_ram_init,@function
iodev_ram_init:                         # @iodev_ram_init
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
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	$2000000, %esi          # imm = 0x1E8480
	movq	%r14, %rdi
	callq	ramfs_new
	movq	%rax, %r12
	movl	$st_ramfs_state, %esi
	movl	$.L.str.4, %edx
	movq	%r14, %rdi
	callq	*72(%r14)
	movq	%rax, %rbx
	testq	%r12, %r12
	je	.LBB0_3
# BB#1:                                 # %entry
	testq	%rbx, %rbx
	je	.LBB0_3
# BB#2:                                 # %if.then
	movq	%r12, 8(%rbx)
	movq	%r14, (%rbx)
	movq	%rbx, 120(%r15)
	xorl	%ebp, %ebp
	jmp	.LBB0_7
.LBB0_3:                                # %if.end
	testq	%r12, %r12
	je	.LBB0_5
# BB#4:                                 # %if.then.6
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	ramfs_destroy
.LBB0_5:                                # %if.end.7
	movl	$-25, %ebp
	testq	%rbx, %rbx
	je	.LBB0_7
# BB#6:                                 # %if.then.9
	movl	$.L.str.5, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*24(%r14)
.LBB0_7:                                # %cleanup
	movl	%ebp, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	iodev_ram_init, .Lfunc_end0-iodev_ram_init
	.cfi_endproc

	.align	16, 0x90
	.type	ram_open_file,@function
ram_open_file:                          # @ram_open_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp11:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp12:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp13:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp14:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp16:
	.cfi_def_cfa_offset 96
.Ltmp17:
	.cfi_offset %rbx, -56
.Ltmp18:
	.cfi_offset %r12, -48
.Ltmp19:
	.cfi_offset %r13, -40
.Ltmp20:
	.cfi_offset %r14, -32
.Ltmp21:
	.cfi_offset %r15, -24
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%r9, %rbp
	movq	%r8, %r14
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movl	%edx, %r12d
	movq	%rsi, %r15
	movq	120(%rdi), %rax
	movq	8(%rax), %rbx
	leal	1(%r12), %esi
	movl	$.L.str.2, %edx
	movq	%rbp, %rdi
	callq	*64(%rbp)
	movl	$-25, %r13d
	testq	%rax, %rax
	je	.LBB1_20
# BB#1:                                 # %if.end.6
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	movl	%r12d, %ebx
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	movq	%rax, %r13
	movq	%r13, 16(%rsp)          # 8-byte Spill
	callq	strncpy
	movb	$0, (%r13,%rbx)
	movq	%rbp, %rbx
	movq	%rbx, (%rsp)
	leaq	36(%rsp), %r9
	movl	$2048, %ecx             # imm = 0x800
	movq	%r15, %rdi
	movl	%r12d, %esi
	movq	24(%rsp), %rdx          # 8-byte Reload
	movq	%r14, %r8
	callq	file_prepare_stream
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB1_18
# BB#2:                                 # %if.end.10
	testq	%r15, %r15
	je	.LBB1_3
# BB#4:                                 # %if.end.16
	movzbl	36(%rsp), %eax
	cmpl	$114, %eax
	jne	.LBB1_6
# BB#5:                                 # %lor.lhs.false
	movl	$1, %edx
	movzbl	37(%rsp), %ecx
	cmpl	$43, %ecx
	jne	.LBB1_7
.LBB1_6:                                # %if.then.25
	movl	$5, %edx
.LBB1_7:                                # %if.end.26
	movzbl	%al, %eax
	movl	%edx, %ecx
	orl	$2, %ecx
	cmpl	$114, %eax
	cmovel	%edx, %ecx
	movq	%rbx, %rdi
	movq	8(%rsp), %rbp           # 8-byte Reload
	movq	%rbp, %rsi
	movq	16(%rsp), %rdx          # 8-byte Reload
	callq	ramfs_open
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB1_8
# BB#10:                                # %if.end.39
	movsbl	36(%rsp), %eax
	cmpl	$119, %eax
	je	.LBB1_15
# BB#11:                                # %if.end.39
	cmpl	$114, %eax
	jne	.LBB1_12
# BB#14:                                # %sw.bb.42
	movq	(%r14), %rbp
	movq	136(%rbp), %rsi
	movl	144(%rbp), %edx
	movl	$sread_ram.p, %ecx
	movl	$5, %r8d
	jmp	.LBB1_16
.LBB1_3:                                # %if.then.13
	movl	$.L.str.3, %edx
	movq	%rbx, %rdi
	movq	16(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rbx)
	xorl	%r13d, %r13d
	jmp	.LBB1_20
.LBB1_8:                                # %if.then.36
	movq	%rbp, %rdi
	callq	ramfs_error
	addl	$-2, %eax
	movl	$-12, %r13d
	cmpl	$4, %eax
	movq	16(%rsp), %rsi          # 8-byte Reload
	ja	.LBB1_19
# BB#9:                                 # %switch.lookup.i
	cltq
	movl	.Lswitch.table(,%rax,4), %r13d
	jmp	.LBB1_19
.LBB1_15:                               # %sw.bb.45
	movq	(%r14), %rbp
	movq	136(%rbp), %rsi
	movl	144(%rbp), %edx
	movl	$swrite_ram.p, %ecx
	movl	$6, %r8d
.LBB1_16:                               # %sw.epilog
	movq	%rbp, %rdi
	callq	s_std_init
	movq	%r12, 304(%rbp)
	movzbl	155(%rbp), %eax
	movl	%eax, 328(%rbp)
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movd	%rax, %xmm0
	pslldq	$8, %xmm0               # xmm0 = zero,zero,zero,zero,zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7]
	movdqu	%xmm0, 336(%rbp)
	jmp	.LBB1_17
.LBB1_12:                               # %if.end.39
	cmpl	$97, %eax
	jne	.LBB1_17
# BB#13:                                # %sw.bb
	movq	(%r14), %r15
	movq	136(%r15), %rsi
	movl	144(%r15), %edx
	movl	$swrite_ram.p, %ecx
	movl	$6, %r8d
	movq	%r15, %rdi
	callq	s_std_init
	movq	%r12, 304(%r15)
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movd	%rax, %xmm0
	pslldq	$8, %xmm0               # xmm0 = zero,zero,zero,zero,zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7]
	movdqu	%xmm0, 336(%r15)
	movb	$10, 155(%r15)
	movl	$10, 328(%r15)
	xorl	%esi, %esi
	movl	$2, %edx
	movq	%r12, %rdi
	callq	ramfile_seek
	movq	%r12, %rdi
	callq	ramfile_tell
	cltq
	movq	%rax, 176(%r15)
.LBB1_17:                               # %sw.epilog
	movq	(%r14), %rax
	movq	216(%rax), %rcx
	movq	%rcx, 296(%rax)
	movq	(%r14), %rax
	movq	$file_close_file, 216(%rax)
.LBB1_18:                               # %error
	movq	16(%rsp), %rsi          # 8-byte Reload
.LBB1_19:                               # %error
	movl	$.L.str.3, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
.LBB1_20:                               # %cleanup
	movl	%r13d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	ram_open_file, .Lfunc_end1-ram_open_file
	.cfi_endproc

	.align	16, 0x90
	.type	ram_delete,@function
ram_delete:                             # @ram_delete
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbx, -16
	movq	120(%rdi), %rax
	movq	8(%rax), %rbx
	movq	%rbx, %rdi
	callq	ramfs_unlink
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB2_3
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	callq	ramfs_error
	movl	%eax, %ecx
	addl	$-2, %ecx
	movl	$-12, %eax
	cmpl	$4, %ecx
	ja	.LBB2_3
# BB#2:                                 # %switch.lookup.i
	movslq	%ecx, %rax
	movl	.Lswitch.table(,%rax,4), %eax
.LBB2_3:                                # %cleanup
	popq	%rbx
	retq
.Lfunc_end2:
	.size	ram_delete, .Lfunc_end2-ram_delete
	.cfi_endproc

	.align	16, 0x90
	.type	ram_rename,@function
ram_rename:                             # @ram_rename
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbx, -16
	movq	120(%rdi), %rax
	movq	8(%rax), %rbx
	movq	%rbx, %rdi
	callq	ramfs_rename
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB3_3
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	callq	ramfs_error
	movl	%eax, %ecx
	addl	$-2, %ecx
	movl	$-12, %eax
	cmpl	$4, %ecx
	ja	.LBB3_3
# BB#2:                                 # %switch.lookup.i
	movslq	%ecx, %rax
	movl	.Lswitch.table(,%rax,4), %eax
.LBB3_3:                                # %cleanup
	popq	%rbx
	retq
.Lfunc_end3:
	.size	ram_rename, .Lfunc_end3-ram_rename
	.cfi_endproc

	.align	16, 0x90
	.type	ram_status,@function
ram_status:                             # @ram_status
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp29:
	.cfi_def_cfa_offset 32
.Ltmp30:
	.cfi_offset %rbx, -32
.Ltmp31:
	.cfi_offset %r14, -24
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %rax
	movq	120(%rdi), %rcx
	movq	(%rcx), %rdi
	movq	8(%rcx), %rbp
	movl	$1, %ecx
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	ramfs_open
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB4_1
# BB#3:                                 # %if.end
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movl	$144, %edx
	movq	%r14, %rdi
	callq	memset
	movq	%rbx, %rdi
	callq	ramfile_size
	cltq
	movq	%rax, 48(%r14)
	movq	%rbx, %rdi
	callq	ramfile_close
	jmp	.LBB4_4
.LBB4_1:                                # %if.then
	movq	%rbp, %rdi
	callq	ramfs_error
	addl	$-2, %eax
	movl	$-12, %ebp
	cmpl	$4, %eax
	ja	.LBB4_4
# BB#2:                                 # %switch.lookup.i
	cltq
	movl	.Lswitch.table(,%rax,4), %ebp
.LBB4_4:                                # %cleanup
	movl	%ebp, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	ram_status, .Lfunc_end4-ram_status
	.cfi_endproc

	.align	16, 0x90
	.type	ram_enumerate_init,@function
ram_enumerate_init:                     # @ram_enumerate_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp34:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp35:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp36:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp37:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp39:
	.cfi_def_cfa_offset 64
.Ltmp40:
	.cfi_offset %rbx, -56
.Ltmp41:
	.cfi_offset %r12, -48
.Ltmp42:
	.cfi_offset %r13, -40
.Ltmp43:
	.cfi_offset %r14, -32
.Ltmp44:
	.cfi_offset %r15, -24
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movl	%edx, %r13d
	movq	%rsi, (%rsp)            # 8-byte Spill
	movq	%rdi, %rbp
	movl	$st_gsram_enum, %esi
	movl	$.L.str.7, %edx
	movq	%rbx, %rdi
	callq	*72(%rbx)
	movq	%rax, %r14
	leal	1(%r13), %esi
	movl	$.L.str.8, %edx
	movq	%rbx, %rdi
	callq	*64(%rbx)
	movq	%rax, %r12
	movq	120(%rbp), %rax
	movq	8(%rax), %rdi
	callq	ramfs_enum_new
	movq	%rax, %r15
	testq	%r14, %r14
	je	.LBB5_4
# BB#1:                                 # %entry
	testq	%r12, %r12
	je	.LBB5_4
# BB#2:                                 # %entry
	testq	%r15, %r15
	je	.LBB5_4
# BB#3:                                 # %if.then
	movl	%r13d, %ebp
	movq	%r12, %rdi
	movq	(%rsp), %rsi            # 8-byte Reload
	movq	%rbp, %rdx
	callq	memcpy
	movb	$0, (%r12,%rbp)
	movq	%rbx, 16(%r14)
	movq	%r12, (%r14)
	movq	%r15, 8(%r14)
	jmp	.LBB5_10
.LBB5_4:                                # %if.end
	testq	%r14, %r14
	je	.LBB5_6
# BB#5:                                 # %if.then.11
	movl	$.L.str.9, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*24(%rbx)
.LBB5_6:                                # %if.end.13
	testq	%r12, %r12
	je	.LBB5_8
# BB#7:                                 # %if.then.15
	movl	$.L.str.10, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	*24(%rbx)
.LBB5_8:                                # %if.end.18
	xorl	%r14d, %r14d
	testq	%r15, %r15
	je	.LBB5_10
# BB#9:                                 # %if.then.20
	movq	%r15, %rdi
	callq	ramfs_enum_end
	xorl	%r14d, %r14d
.LBB5_10:                               # %cleanup
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	ram_enumerate_init, .Lfunc_end5-ram_enumerate_init
	.cfi_endproc

	.align	16, 0x90
	.type	ram_enumerate_next,@function
ram_enumerate_next:                     # @ram_enumerate_next
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp47:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp48:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp49:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp50:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp51:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp52:
	.cfi_def_cfa_offset 64
.Ltmp53:
	.cfi_offset %rbx, -56
.Ltmp54:
	.cfi_offset %r12, -48
.Ltmp55:
	.cfi_offset %r13, -40
.Ltmp56:
	.cfi_offset %r14, -32
.Ltmp57:
	.cfi_offset %r15, -24
.Ltmp58:
	.cfi_offset %rbp, -16
	movl	%edx, %r12d
	movq	%rsi, %r14
	movq	%rdi, %r15
	.align	16, 0x90
.LBB6_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r15), %rdi
	callq	ramfs_enum_next
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB6_6
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %r13
	movq	(%r15), %rbp
	movq	%rbp, %rdi
	callq	strlen
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	movl	%r13d, %esi
	movq	%rbp, %rdx
	movl	%eax, %ecx
	callq	string_match
	testl	%eax, %eax
	je	.LBB6_1
# BB#3:                                 # %if.then
	movq	%rbx, %rdi
	callq	strlen
	movl	%r12d, %ecx
	cmpq	%rcx, %rax
	jae	.LBB6_5
# BB#4:                                 # %if.then.10
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	memcpy
.LBB6_5:                                # %if.end
	movq	%rbx, %rdi
	callq	strlen
	jmp	.LBB6_7
.LBB6_6:                                # %while.end
	movq	8(%r15), %rdi
	movq	16(%r15), %rbx
	callq	ramfs_enum_end
	movq	(%r15), %rsi
	movl	$.L.str.10, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movl	$.L.str.9, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*24(%rbx)
	movl	$-1, %eax
.LBB6_7:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	ram_enumerate_next, .Lfunc_end6-ram_enumerate_next
	.cfi_endproc

	.align	16, 0x90
	.type	ram_enumerate_close,@function
ram_enumerate_close:                    # @ram_enumerate_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp59:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp60:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp61:
	.cfi_def_cfa_offset 32
.Ltmp62:
	.cfi_offset %rbx, -24
.Ltmp63:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	8(%r14), %rdi
	movq	16(%r14), %rbx
	callq	ramfs_enum_end
	movq	(%r14), %rsi
	movl	$.L.str.10, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movq	24(%rbx), %rax
	movl	$.L.str.9, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%rax                   # TAILCALL
.Lfunc_end7:
	.size	ram_enumerate_close, .Lfunc_end7-ram_enumerate_close
	.cfi_endproc

	.align	16, 0x90
	.type	ram_get_params,@function
ram_get_params:                         # @ram_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp64:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp65:
	.cfi_def_cfa_offset 24
	subq	$40, %rsp
.Ltmp66:
	.cfi_def_cfa_offset 64
.Ltmp67:
	.cfi_offset %rbx, -24
.Ltmp68:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movl	$0, 36(%rsp)
	movl	$1, 32(%rsp)
	movl	$1, 28(%rsp)
	movl	$0, 24(%rsp)
	movq	120(%rdi), %rax
	movq	8(%rax), %rbx
	movq	%rbx, %rdi
	callq	ramfs_blocksize
	movl	%eax, 20(%rsp)
	movq	$2000000, (%rsp)        # imm = 0x1E8480
	movq	%rbx, %rdi
	callq	ramfs_blocksfree
	cltq
	movq	%rax, 8(%rsp)
	leaq	28(%rsp), %rdx
	movl	$.L.str.12, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB8_10
# BB#1:                                 # %lor.lhs.false
	leaq	20(%rsp), %rdx
	movl	$.L.str.13, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB8_10
# BB#2:                                 # %lor.lhs.false.8
	leaq	8(%rsp), %rdx
	movl	$.L.str.14, %esi
	movq	%r14, %rdi
	callq	param_write_long
	testl	%eax, %eax
	js	.LBB8_10
# BB#3:                                 # %lor.lhs.false.12
	leaq	36(%rsp), %rdx
	movl	$.L.str.15, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB8_10
# BB#4:                                 # %lor.lhs.false.16
	leaq	28(%rsp), %rdx
	movl	$.L.str.16, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB8_10
# BB#5:                                 # %lor.lhs.false.20
	leaq	24(%rsp), %rdx
	movl	$.L.str.17, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB8_10
# BB#6:                                 # %lor.lhs.false.24
	leaq	28(%rsp), %rdx
	movl	$.L.str.18, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB8_10
# BB#7:                                 # %lor.lhs.false.28
	leaq	32(%rsp), %rdx
	movl	$.L.str.19, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB8_10
# BB#8:                                 # %lor.lhs.false.32
	leaq	28(%rsp), %rdx
	movl	$.L.str.20, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB8_10
# BB#9:                                 # %lor.lhs.false.36
	leaq	(%rsp), %rdx
	movl	$.L.str.21, %esi
	movq	%r14, %rdi
	callq	param_write_long
	movl	%eax, %ecx
	sarl	$31, %eax
	andl	%ecx, %eax
.LBB8_10:                               # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end8:
	.size	ram_get_params, .Lfunc_end8-ram_get_params
	.cfi_endproc

	.align	16, 0x90
	.type	s_ram_available,@function
s_ram_available:                        # @s_ram_available
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp69:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp70:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp71:
	.cfi_def_cfa_offset 32
.Ltmp72:
	.cfi_offset %rbx, -32
.Ltmp73:
	.cfi_offset %r14, -24
.Ltmp74:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	344(%r15), %rbx
	callq	stell
	subq	%rax, %rbx
	movq	120(%r15), %rax
	subq	112(%r15), %rax
	cmpq	%rax, %rbx
	cmovleq	%rbx, %rax
	movq	%rax, (%r14)
	testq	%rax, %rax
	jne	.LBB9_3
# BB#1:                                 # %land.lhs.true
	movq	304(%r15), %rdi
	callq	ramfile_eof
	testl	%eax, %eax
	je	.LBB9_3
# BB#2:                                 # %if.then
	movq	$-1, (%r14)
.LBB9_3:                                # %if.end
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end9:
	.size	s_ram_available, .Lfunc_end9-s_ram_available
	.cfi_endproc

	.align	16, 0x90
	.type	s_ram_read_seek,@function
s_ram_read_seek:                        # @s_ram_read_seek
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp76:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp77:
	.cfi_def_cfa_offset 32
.Ltmp78:
	.cfi_offset %rbx, -32
.Ltmp79:
	.cfi_offset %r14, -24
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	%r14, %rax
	subq	176(%rbx), %rax
	js	.LBB10_3
# BB#1:                                 # %land.lhs.true
	movq	136(%rbx), %rcx
	movl	$1, %edx
	subl	%ecx, %edx
	addl	120(%rbx), %edx
	cmpq	%rdx, %rax
	jle	.LBB10_2
.LBB10_3:                               # %if.end
	movl	$-2, %ebp
	testq	%r14, %r14
	js	.LBB10_8
# BB#4:                                 # %lor.lhs.false
	cmpq	%r14, 344(%rbx)
	jl	.LBB10_8
# BB#5:                                 # %lor.lhs.false.13
	movq	304(%rbx), %rdi
	movl	336(%rbx), %esi
	addl	%r14d, %esi
	xorl	%edx, %edx
	callq	ramfile_seek
	testl	%eax, %eax
	jne	.LBB10_8
# BB#6:                                 # %if.end.19
	movq	136(%rbx), %rax
	decq	%rax
	movq	%rax, 120(%rbx)
	movq	%rax, 112(%rbx)
	movw	$0, 152(%rbx)
	movq	%r14, 176(%rbx)
	jmp	.LBB10_7
.LBB10_2:                               # %if.then
	leaq	-1(%rcx,%rax), %rax
	movq	%rax, 112(%rbx)
.LBB10_7:                               # %cleanup
	xorl	%ebp, %ebp
.LBB10_8:                               # %cleanup
	movl	%ebp, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end10:
	.size	s_ram_read_seek, .Lfunc_end10-s_ram_read_seek
	.cfi_endproc

	.align	16, 0x90
	.type	s_ram_read_close,@function
s_ram_read_close:                       # @s_ram_read_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp81:
	.cfi_def_cfa_offset 16
	movq	%rdi, %rax
	movq	304(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	$0, 304(%rax)
	callq	ramfile_close
.LBB11_2:                               # %if.end
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end11:
	.size	s_ram_read_close, .Lfunc_end11-s_ram_read_close
	.cfi_endproc

	.align	16, 0x90
	.type	s_ram_read_process,@function
s_ram_read_process:                     # @s_ram_read_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp83:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp84:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp85:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp86:
	.cfi_def_cfa_offset 48
.Ltmp87:
	.cfi_offset %rbx, -48
.Ltmp88:
	.cfi_offset %r12, -40
.Ltmp89:
	.cfi_offset %r14, -32
.Ltmp90:
	.cfi_offset %r15, -24
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	304(%rdi), %r14
	movq	344(%rdi), %rbx
	movq	8(%r15), %rsi
	movq	16(%r15), %rbp
	subq	%rsi, %rbp
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	cmpq	%rax, %rbx
	movl	$1, %r12d
	je	.LBB12_2
# BB#1:                                 # %if.then
	addq	336(%rdi), %rbx
	movq	%r14, %rdi
	callq	ramfile_tell
	cltq
	subq	%rax, %rbx
	movl	%ebp, %eax
	cmpq	%rbx, %rax
	movl	$-1, %eax
	movl	$1, %r12d
	cmovgl	%eax, %r12d
	cmovlel	%ebp, %ebx
	movq	8(%r15), %rsi
	movl	%ebx, %ebp
.LBB12_2:                               # %if.end.10
	incq	%rsi
	movq	%r14, %rdi
	movl	%ebp, %edx
	callq	ramfile_read
	movl	%eax, %ecx
	movl	$-2, %eax
	testl	%ecx, %ecx
	js	.LBB12_4
# BB#3:                                 # %if.end.16
	movslq	%ecx, %rax
	addq	%rax, 8(%r15)
	movq	%r14, %rdi
	callq	ramfile_eof
	cmpl	$1, %eax
	sbbl	%eax, %eax
	notl	%eax
	orl	%r12d, %eax
.LBB12_4:                               # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	s_ram_read_process, .Lfunc_end12-s_ram_read_process
	.cfi_endproc

	.align	16, 0x90
	.type	s_ram_switch,@function
s_ram_switch:                           # @s_ram_switch
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp92:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp93:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp94:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp95:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp96:
	.cfi_def_cfa_offset 48
.Ltmp97:
	.cfi_offset %rbx, -48
.Ltmp98:
	.cfi_offset %r12, -40
.Ltmp99:
	.cfi_offset %r14, -32
.Ltmp100:
	.cfi_offset %r15, -24
.Ltmp101:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	328(%rbx), %r12d
	movq	304(%rbx), %r14
	movl	$-2, %ebp
	testl	%esi, %esi
	je	.LBB13_6
# BB#1:                                 # %if.then
	testb	$2, %r12b
	je	.LBB13_10
# BB#2:                                 # %if.end
	movq	%rbx, %rdi
	callq	stell
	movq	%rax, %r15
	xorl	%edx, %edx
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	ramfile_seek
	movq	136(%rbx), %rsi
	movl	148(%rbx), %edx
	movl	$swrite_ram.p, %ecx
	movl	$6, %r8d
	movq	%rbx, %rdi
	callq	s_std_init
	testb	$8, %r12b
	movq	%r14, 304(%rbx)
	jne	.LBB13_3
# BB#4:                                 # %if.else
	movzbl	155(%rbx), %eax
	movl	%eax, 328(%rbx)
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movd	%rax, %xmm0
	pslldq	$8, %xmm0               # xmm0 = zero,zero,zero,zero,zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7]
	movdqu	%xmm0, 336(%rbx)
	jmp	.LBB13_5
.LBB13_6:                               # %if.else.14
	testb	$1, %r12b
	je	.LBB13_10
# BB#7:                                 # %if.end.19
	movq	%rbx, %rdi
	callq	stell
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	*208(%rbx)
	testl	%eax, %eax
	js	.LBB13_10
# BB#8:                                 # %if.end.24
	movq	136(%rbx), %rsi
	movl	148(%rbx), %edx
	movl	$sread_ram.p, %ecx
	movl	$5, %r8d
	movq	%rbx, %rdi
	callq	s_std_init
	movq	%r14, 304(%rbx)
	movzbl	155(%rbx), %eax
	movl	%eax, 328(%rbx)
	movabsq	$9223372036854775807, %rcx # imm = 0x7FFFFFFFFFFFFFFF
	movd	%rcx, %xmm0
	pslldq	$8, %xmm0               # xmm0 = zero,zero,zero,zero,zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7]
	movdqu	%xmm0, 336(%rbx)
	movl	%r12d, %ecx
	andl	$8, %ecx
	orl	%eax, %ecx
	movb	%cl, 155(%rbx)
	movq	%r15, 176(%rbx)
	jmp	.LBB13_9
.LBB13_3:                               # %if.then.8
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movd	%rax, %xmm0
	pslldq	$8, %xmm0               # xmm0 = zero,zero,zero,zero,zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7]
	movdqu	%xmm0, 336(%rbx)
	movb	$10, 155(%rbx)
	movl	$10, 328(%rbx)
	xorl	%esi, %esi
	movl	$2, %edx
	movq	%r14, %rdi
	callq	ramfile_seek
	movq	%r14, %rdi
	callq	ramfile_tell
	movslq	%eax, %r15
.LBB13_5:                               # %if.end.11
	movq	%r15, 176(%rbx)
	movb	%r12b, 155(%rbx)
.LBB13_9:                               # %if.end.32
	movl	%r12d, 328(%rbx)
	xorl	%ebp, %ebp
.LBB13_10:                              # %cleanup
	movl	%ebp, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	s_ram_switch, .Lfunc_end13-s_ram_switch
	.cfi_endproc

	.align	16, 0x90
	.type	s_ram_write_seek,@function
s_ram_write_seek:                       # @s_ram_write_seek
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp102:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp103:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp104:
	.cfi_def_cfa_offset 32
.Ltmp105:
	.cfi_offset %rbx, -24
.Ltmp106:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	*208(%rbx)
	testl	%eax, %eax
	js	.LBB14_3
# BB#1:                                 # %if.end
	movq	304(%rbx), %rdi
	xorl	%edx, %edx
	movl	%r14d, %esi
	callq	ramfile_seek
	movl	%eax, %ecx
	movl	$-2, %eax
	testl	%ecx, %ecx
	jne	.LBB14_3
# BB#2:                                 # %if.end.5
	movq	%r14, 176(%rbx)
	xorl	%eax, %eax
.LBB14_3:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end14:
	.size	s_ram_write_seek, .Lfunc_end14-s_ram_write_seek
	.cfi_endproc

	.align	16, 0x90
	.type	s_ram_write_flush,@function
s_ram_write_flush:                      # @s_ram_write_flush
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%esi, %esi
	jmp	s_process_write_buf     # TAILCALL
.Lfunc_end15:
	.size	s_ram_write_flush, .Lfunc_end15-s_ram_write_flush
	.cfi_endproc

	.align	16, 0x90
	.type	s_ram_write_close,@function
s_ram_write_close:                      # @s_ram_write_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp107:
	.cfi_def_cfa_offset 16
.Ltmp108:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	s_process_write_buf
	movq	304(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB16_2
# BB#1:                                 # %if.then.i
	movq	$0, 304(%rbx)
	callq	ramfile_close
.LBB16_2:                               # %s_ram_read_close.exit
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end16:
	.size	s_ram_write_close, .Lfunc_end16-s_ram_write_close
	.cfi_endproc

	.align	16, 0x90
	.type	s_ram_write_process,@function
s_ram_write_process:                    # @s_ram_write_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp109:
	.cfi_def_cfa_offset 16
.Ltmp110:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movl	8(%rbx), %edx
	movq	(%rbx), %rsi
	subl	%esi, %edx
	movq	304(%rdi), %rdi
	incq	%rsi
	callq	ramfile_write
	movl	%eax, %ecx
	movl	$-2, %eax
	testl	%ecx, %ecx
	js	.LBB17_2
# BB#1:                                 # %if.end
	movslq	%ecx, %rax
	addq	%rax, (%rbx)
	xorl	%eax, %eax
.LBB17_2:                               # %cleanup
	popq	%rbx
	retq
.Lfunc_end17:
	.size	s_ram_write_process, .Lfunc_end17-s_ram_write_process
	.cfi_endproc

	.align	16, 0x90
	.type	ram_finalize,@function
ram_finalize:                           # @ram_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rsi), %rsi
	jmp	ramfs_destroy           # TAILCALL
.Lfunc_end18:
	.size	ram_finalize, .Lfunc_end18-ram_finalize
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%ram%"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"FileSystem"
	.size	.L.str.1, 11

	.type	gs_iodev_ram,@object    # @gs_iodev_ram
	.section	.rodata,"a",@progbits
	.globl	gs_iodev_ram
	.align	8
gs_iodev_ram:
	.quad	.L.str
	.quad	.L.str.1
	.quad	iodev_ram_init
	.quad	iodev_no_open_device
	.quad	ram_open_file
	.quad	iodev_no_fopen
	.quad	iodev_no_fclose
	.quad	ram_delete
	.quad	ram_rename
	.quad	ram_status
	.quad	ram_enumerate_init
	.quad	ram_enumerate_next
	.quad	ram_enumerate_close
	.quad	ram_get_params
	.quad	iodev_no_put_params
	.quad	0
	.size	gs_iodev_ram, 128

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"temporary filename string"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"free temporary filename string"
	.size	.L.str.3, 31

	.type	sread_ram.p,@object     # @sread_ram.p
	.section	.rodata,"a",@progbits
	.align	8
sread_ram.p:
	.quad	s_ram_available
	.quad	s_ram_read_seek
	.quad	s_std_read_reset
	.quad	s_std_read_flush
	.quad	s_ram_read_close
	.quad	s_ram_read_process
	.quad	s_ram_switch
	.size	sread_ram.p, 56

	.type	swrite_ram.p,@object    # @swrite_ram.p
	.align	8
swrite_ram.p:
	.quad	s_std_noavailable
	.quad	s_ram_write_seek
	.quad	s_std_write_reset
	.quad	s_ram_write_flush
	.quad	s_ram_write_close
	.quad	s_ram_write_process
	.quad	s_ram_switch
	.size	swrite_ram.p, 56

	.type	st_ramfs_state,@object  # @st_ramfs_state
	.align	8
st_ramfs_state:
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.6
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	ram_finalize
	.quad	ramfs_state_reloc_ptrs
	.size	st_ramfs_state, 64

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"ramfs_init(state)"
	.size	.L.str.4, 18

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"iodev_ram_init(state)"
	.size	.L.str.5, 22

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"ramfs_state"
	.size	.L.str.6, 12

	.type	ramfs_state_reloc_ptrs,@object # @ramfs_state_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
ramfs_state_reloc_ptrs:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	ramfs_state_enum_ptrs
	.size	ramfs_state_reloc_ptrs, 24

	.type	ramfs_state_enum_ptrs,@object # @ramfs_state_enum_ptrs
	.align	2
ramfs_state_enum_ptrs:
	.zero	4
	.short	0                       # 0x0
	.short	8                       # 0x8
	.size	ramfs_state_enum_ptrs, 8

	.type	st_gsram_enum,@object   # @st_gsram_enum
	.align	8
st_gsram_enum:
	.long	24                      # 0x18
	.zero	4
	.quad	.L.str.11
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	gsram_enum_reloc_ptrs
	.size	st_gsram_enum, 64

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"ram_enumerate_files_init(file_enum)"
	.size	.L.str.7, 36

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"ram_enumerate_file_init(pattern)"
	.size	.L.str.8, 33

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"ramfs_enum_init(ramfs_enum)"
	.size	.L.str.9, 28

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"ramfs_enum_init(pattern)"
	.size	.L.str.10, 25

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gsram_enum"
	.size	.L.str.11, 11

	.type	gsram_enum_reloc_ptrs,@object # @gsram_enum_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
gsram_enum_reloc_ptrs:
	.short	3                       # 0x3
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	gsram_enum_enum_ptrs
	.size	gsram_enum_reloc_ptrs, 24

	.type	gsram_enum_enum_ptrs,@object # @gsram_enum_enum_ptrs
	.align	2
gsram_enum_enum_ptrs:
	.zero	4
	.short	0                       # 0x0
	.short	8                       # 0x8
	.short	0                       # 0x0
	.short	16                      # 0x10
	.size	gsram_enum_enum_ptrs, 12

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"HasNames"
	.size	.L.str.12, 9

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"BlockSize"
	.size	.L.str.13, 10

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Free"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"InitializeAction"
	.size	.L.str.15, 17

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Mounted"
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Removable"
	.size	.L.str.17, 10

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Searchable"
	.size	.L.str.18, 11

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"SearchOrder"
	.size	.L.str.19, 12

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Writeable"
	.size	.L.str.20, 10

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"LogicalSize"
	.size	.L.str.21, 12

	.type	.Lswitch.table,@object  # @switch.table
	.section	.rodata,"a",@progbits
	.align	16
.Lswitch.table:
	.long	4294967274              # 0xffffffea
	.long	4294967284              # 0xfffffff4
	.long	4294967284              # 0xfffffff4
	.long	4294967287              # 0xfffffff7
	.long	4294967271              # 0xffffffe7
	.size	.Lswitch.table, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
