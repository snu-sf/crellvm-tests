	.text
	.file	"ziodev.bc"
	.globl	zfilelineedit
	.align	16, 0x90
	.type	zfilelineedit,@function
zfilelineedit:                          # @zfilelineedit
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
	subq	$1816, %rsp             # imm = 0x718
.Ltmp6:
	.cfi_def_cfa_offset 1872
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
	movq	%rdi, %r14
	movl	$0, 1812(%rsp)
	movl	$0, 1808(%rsp)
	movq	624(%r14), %rdx
	movzbl	1(%rdx), %eax
	cmpl	$18, %eax
	jne	.LBB0_1
# BB#2:                                 # %if.end
	movq	8(%rdx), %rbp
	movq	%rbp, 1792(%rsp)
	movl	4(%rdx), %r13d
	movl	%r13d, 1800(%rsp)
	movzbl	-15(%rdx), %eax
	cmpl	$11, %eax
	jne	.LBB0_3
# BB#4:                                 # %if.end.12
	movl	-8(%rdx), %eax
	movl	%eax, 1812(%rsp)
	movzbl	-31(%rdx), %eax
	cmpl	$1, %eax
	jne	.LBB0_5
# BB#6:                                 # %if.end.26
	leaq	-48(%rdx), %rdi
	movzwl	-48(%rdx), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$800, %eax              # imm = 0x320
	jne	.LBB0_7
# BB#9:                                 # %do.body.47
	movzwl	-24(%rdx), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movq	-40(%rdx), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movzwl	264(%rax), %ecx
	movl	-44(%rdx), %eax
	cmpl	%eax, %ecx
	jne	.LBB0_11
# BB#10:
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	jmp	.LBB0_15
.LBB0_1:                                # %if.then
	movq	%rdx, %rdi
	jmp	.LBB0_8
.LBB0_3:                                # %if.then.9
	addq	$-16, %rdx
	movq	%rdx, %rdi
	jmp	.LBB0_8
.LBB0_5:                                # %if.then.23
	addq	$-32, %rdx
	movq	%rdx, %rdi
	jmp	.LBB0_8
.LBB0_7:                                # %if.then.36
	movzbl	1(%rdi), %eax
	movl	$-7, %r15d
	cmpl	$3, %eax
	je	.LBB0_46
.LBB0_8:                                # %cond.true
	callq	check_type_failed
	movl	%eax, %r15d
.LBB0_46:                               # %cleanup.348
	movl	%r15d, %eax
	addq	$1816, %rsp             # imm = 0x718
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_11:                               # %if.then.56
	testw	%cx, %cx
	jne	.LBB0_14
# BB#12:                                # %land.lhs.true
	movq	24(%rsp), %rcx          # 8-byte Reload
	movzwl	266(%rcx), %ecx
	cmpl	%eax, %ecx
	jne	.LBB0_14
# BB#13:                                # %if.then.67
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	callq	file_switch_to_read
	movl	%eax, %r15d
	testl	%r15d, %r15d
	jns	.LBB0_15
	jmp	.LBB0_46
.LBB0_14:                               # %if.else
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	256(%r14), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
.LBB0_15:                               # %do.end.77
	movl	20(%rsp), %eax          # 4-byte Reload
	testw	%ax, %ax
	movl	$50, %eax
	movl	$20, %r12d
	cmovnel	%eax, %r12d
	testq	%rbp, %rbp
	je	.LBB0_18
# BB#16:                                # %do.end.77
	cmpl	%r12d, %r13d
	jb	.LBB0_18
# BB#17:                                # %do.end.77.rd.preheader_crit_edge
	leaq	32(%r14), %r15
	jmp	.LBB0_20
.LBB0_18:                               # %if.then.88
	movl	$0, 1812(%rsp)
	movq	32(%r14), %rdi
	movl	$.L.str.2, %edx
	movl	%r12d, %esi
	callq	*136(%rdi)
	movq	%rax, 1792(%rsp)
	movl	$-25, %r15d
	testq	%rax, %rax
	je	.LBB0_46
# BB#19:                                # %if.end.100
	leaq	32(%r14), %r15
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	%rax, 8(%rcx)
	movl	%r12d, 1800(%rsp)
	movl	%r12d, 4(%rcx)
.LBB0_20:                               # %rd.preheader
	movq	%r15, 8(%rsp)           # 8-byte Spill
	movq	32(%r14), %rdx
	leaq	1792(%rsp), %rsi
	leaq	1812(%rsp), %rcx
	leaq	1808(%rsp), %r8
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	zreadline_from
	movl	1800(%rsp), %edx
	cmpl	$16777216, %edx         # imm = 0x1000000
	ja	.LBB0_24
# BB#21:
	leaq	624(%r14), %r12
	leaq	8(%r14), %rbp
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	leaq	1440(%rsp), %rbx
.LBB0_22:                               # %if.end.143
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_37 Depth 2
	movq	1792(%rsp), %rcx
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	%rcx, 8(%rsi)
	movl	%edx, 4(%rsi)
	addl	$4, %eax
	cmpl	$5, %eax
	ja	.LBB0_45
# BB#23:                                # %if.end.143
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	$-22, %r15d
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_30:                               # %sw.epilog
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	1812(%rsp), %eax
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	%rax, -8(%rcx)
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%rax, 80(%rsp)
	movw	$868, 72(%rsp)          # imm = 0x364
	movzwl	264(%rax), %eax
	movl	%eax, 76(%rsp)
	movl	$-4, %esi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$zfilelineedit, %r9d
	movq	%r14, %rdi
	leaq	72(%rsp), %rdx
	callq	s_handle_read_exception
	movl	%eax, %r15d
	testl	%r15d, %r15d
	jne	.LBB0_46
.LBB0_31:                               # %if.end.209
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	20(%rsp), %eax          # 4-byte Reload
	testw	%ax, %ax
	je	.LBB0_40
# BB#32:                                # %if.then.211
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	%r12, %rdi
	callq	ref_stack_count
	movl	1812(%rsp), %esi
	leal	1(%rsi), %ecx
	movl	1800(%rsp), %edx
	cmpl	%edx, %ecx
	movq	%rbx, %r13
	jbe	.LBB0_36
# BB#33:                                # %if.then.219
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	%eax, %ebx
	leal	1(%rdx), %ebp
	movl	$-13, %r15d
	cmpl	$16777216, %ebp         # imm = 0x1000000
	ja	.LBB0_46
# BB#34:                                # %if.else.227
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	(%rax), %rdi
	movq	1792(%rsp), %rsi
	movl	$.L.str.4, %r8d
	movl	%ebp, %ecx
	callq	*152(%rdi)
	movl	$-25, %r15d
	testq	%rax, %rax
	je	.LBB0_46
# BB#35:                                # %cleanup.254
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	%rax, 1792(%rsp)
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	%rax, 8(%rcx)
	movl	%ebp, 1800(%rsp)
	movl	%ebp, 4(%rcx)
	movl	1812(%rsp), %esi
	movl	%ebx, %eax
.LBB0_36:                               # %if.end.258
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	%eax, 44(%rsp)          # 4-byte Spill
	leal	1(%rsi), %ecx
	movl	%ecx, 1812(%rsp)
	movl	%esi, %edx
	movq	1792(%rsp), %rcx
	movb	$10, (%rcx,%rdx)
	xorl	%esi, %esi
	movq	%r13, %rdi
	callq	s_init
	movq	1792(%rsp), %rsi
	movl	1812(%rsp), %edx
	movq	%r13, %rdi
	callq	sread_string
	movq	%r13, %rbx
	movq	%r14, %r13
	movq	%r12, %r14
	leaq	72(%rsp), %r12
	leaq	56(%rsp), %rbp
	.align	16, 0x90
.LBB0_37:                               # %sc
                                        #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$2, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	gs_scanner_init_stream_options
	movl	$12, %esi
	movq	48(%rsp), %rdi          # 8-byte Reload
	callq	ialloc_set_space
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	%r12, %rdx
	callq	gs_scan_token
	movl	%eax, %r15d
	movq	%r14, %rdi
	callq	ref_stack_count
	subl	44(%rsp), %eax          # 4-byte Folded Reload
	movq	%r14, %rdi
	movl	%eax, %esi
	callq	ref_stack_pop
	testl	%r15d, %r15d
	movl	$2, %eax
	cmovsl	%eax, %r15d
	cmpl	$2, %r15d
	jb	.LBB0_37
# BB#38:                                # %sc
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	48(%rsp), %rbp          # 8-byte Reload
	cmpl	$3, %r15d
	jne	.LBB0_39
# BB#47:                                # %cleanup.277
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	8(%rsp), %r15           # 8-byte Reload
	movq	%r14, %r12
	movq	%r13, %r14
	jmp	.LBB0_29
.LBB0_26:                               # %sw.bb.164
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	1800(%rsp), %edx
	movl	$-13, %r15d
	cmpl	$16777215, %edx         # imm = 0xFFFFFF
	ja	.LBB0_46
# BB#27:                                # %if.else.170
                                        #   in Loop: Header=BB0_22 Depth=1
	leal	(%rdx,%rdx), %r13d
	cmpl	$8388607, %edx          # imm = 0x7FFFFF
	movl	$16777216, %eax         # imm = 0x1000000
	cmoval	%eax, %r13d
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	(%rax), %rdi
	movq	1792(%rsp), %rsi
	movl	$.L.str.4, %r8d
	movl	%r13d, %ecx
	callq	*152(%rdi)
	movl	$-25, %r15d
	testq	%rax, %rax
	je	.LBB0_46
# BB#28:                                # %cleanup.203
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	%rax, 1792(%rsp)
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	%rax, 8(%rcx)
	movl	%r13d, 1800(%rsp)
	movl	%r13d, 4(%rcx)
	movq	8(%rsp), %r15           # 8-byte Reload
.LBB0_29:                               # %rd.backedge
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	(%r15), %rdx
	movq	24(%rsp), %rdi          # 8-byte Reload
	leaq	1792(%rsp), %rsi
	leaq	1812(%rsp), %rcx
	leaq	1808(%rsp), %r8
	callq	zreadline_from
	movl	1800(%rsp), %edx
	cmpl	$16777216, %edx         # imm = 0x1000000
	jbe	.LBB0_22
.LBB0_24:                               # %if.then.117
	movq	(%r15), %rdi
	movq	1792(%rsp), %rsi
	movl	$16777216, %ecx         # imm = 0x1000000
	movl	$.L.str.3, %r8d
	callq	*152(%rdi)
	movl	$-25, %r15d
	testq	%rax, %rax
	je	.LBB0_46
# BB#25:                                # %if.end.135
	movq	%rax, 1792(%rsp)
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	%rax, 8(%rcx)
	movl	$16777216, 1800(%rsp)   # imm = 0x1000000
	movl	$16777216, 4(%rcx)      # imm = 0x1000000
	movl	$-13, %r15d
	jmp	.LBB0_46
.LBB0_39:                               # %sc
	cmpl	$2, %r15d
	movq	%r14, %r12
	jne	.LBB0_46
.LBB0_40:                               # %if.end.285
	movq	8(%rsp), %rbp           # 8-byte Reload
	movq	(%rbp), %rdi
	movq	1792(%rsp), %rsi
	movl	1800(%rsp), %edx
	movl	1812(%rsp), %ecx
	movl	$.L.str.5, %r8d
	callq	*152(%rdi)
	movq	%rax, 1792(%rsp)
	movl	$-25, %r15d
	testq	%rax, %rax
	je	.LBB0_46
# BB#41:                                # %if.end.306
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	%rax, 8(%rcx)
	movl	1800(%rsp), %eax
	movl	%eax, 4(%rcx)
	movq	(%rbp), %rdi
	movl	$.L.str.6, %esi
	callq	file_alloc_stream
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB0_46
# BB#42:                                # %if.end.322
	movq	1792(%rsp), %rsi
	movl	1812(%rsp), %edx
	movq	%rbx, %rdi
	callq	sread_string
	movl	20(%rsp), %eax          # 4-byte Reload
	testw	%ax, %ax
	movq	216(%rbx), %rax
	movq	%rax, 296(%rbx)
	movq	$file_close_disable, 216(%rbx)
	movl	$.L.str.1, %eax
	movl	$.L.str, %ebp
	cmovneq	%rax, %rbp
	movq	%rbp, %rdi
	callq	strlen
	leal	1(%rax), %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	ssetfilename
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_43
# BB#44:                                # %if.end.340
	movq	(%r12), %rdi
	addq	$-48, %rdi
	movq	%rdi, (%r12)
	movl	$.L.str.7, %edx
	movq	%rbx, %rsi
	callq	make_stream_file
	movl	%ebp, %r15d
	jmp	.LBB0_46
.LBB0_45:                               # %cleanup.348.loopexit188
	movl	$-12, %r15d
	jmp	.LBB0_46
.LBB0_43:                               # %if.then.338
	movq	%rbx, %rdi
	callq	sclose
	jmp	.LBB0_46
.Lfunc_end0:
	.size	zfilelineedit, .Lfunc_end0-zfilelineedit
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_30
	.quad	.LBB0_45
	.quad	.LBB0_45
	.quad	.LBB0_46
	.quad	.LBB0_31
	.quad	.LBB0_26

	.text
	.align	16, 0x90
	.type	zgetiodevice,@function
zgetiodevice:                           # @zgetiodevice
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB1_7
# BB#1:                                 # %if.end
	movq	8(%rdi), %rdi
	movl	8(%rbx), %esi
	callq	gs_getiodevice
	movq	%rax, %rcx
	movl	$-15, %eax
	testq	%rcx, %rcx
	je	.LBB1_6
# BB#2:                                 # %if.end.7
	movq	(%rcx), %rdi
	testq	%rdi, %rdi
	je	.LBB1_3
# BB#4:                                 # %if.else
	movq	%rdi, 8(%rbx)
	movw	$4704, (%rbx)           # imm = 0x1260
	callq	strlen
	movl	%eax, 4(%rbx)
	jmp	.LBB1_5
.LBB1_7:                                # %if.then
	movq	%rbx, %rdi
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.LBB1_3:                                # %if.then.11
	movw	$3584, (%rbx)           # imm = 0xE00
.LBB1_5:                                # %cleanup
	xorl	%eax, %eax
.LBB1_6:                                # %cleanup
	popq	%rbx
	retq
.Lfunc_end1:
	.size	zgetiodevice, .Lfunc_end1-zgetiodevice
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%lineedit%"
	.size	.L.str, 11

	.type	gs_iodev_lineedit,@object # @gs_iodev_lineedit
	.section	.rodata,"a",@progbits
	.globl	gs_iodev_lineedit
	.align	8
gs_iodev_lineedit:
	.quad	.L.str
	.quad	iodev_dtype_stdio
	.quad	iodev_no_init
	.quad	iodev_no_open_device
	.quad	iodev_no_open_file
	.quad	iodev_no_fopen
	.quad	iodev_no_fclose
	.quad	iodev_no_delete_file
	.quad	iodev_no_rename_file
	.quad	iodev_no_file_status
	.quad	iodev_no_enumerate_files
	.quad	0
	.quad	0
	.quad	iodev_no_get_params
	.quad	iodev_no_put_params
	.quad	0
	.size	gs_iodev_lineedit, 128

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"%statementedit%"
	.size	.L.str.1, 16

	.type	gs_iodev_statementedit,@object # @gs_iodev_statementedit
	.section	.rodata,"a",@progbits
	.globl	gs_iodev_statementedit
	.align	8
gs_iodev_statementedit:
	.quad	.L.str.1
	.quad	iodev_dtype_stdio
	.quad	iodev_no_init
	.quad	iodev_no_open_device
	.quad	iodev_no_open_file
	.quad	iodev_no_fopen
	.quad	iodev_no_fclose
	.quad	iodev_no_delete_file
	.quad	iodev_no_rename_file
	.quad	iodev_no_file_status
	.quad	iodev_no_enumerate_files
	.quad	0
	.quad	0
	.quad	iodev_no_get_params
	.quad	iodev_no_put_params
	.quad	0
	.size	gs_iodev_statementedit, 128

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"zfilelineedit(buffer)"
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"zfilelineedit(shrink buffer)"
	.size	.L.str.3, 29

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"zfilelineedit(grow buffer)"
	.size	.L.str.4, 27

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"zfilelineedit(resize buffer)"
	.size	.L.str.5, 29

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"zfilelineedit(stream)"
	.size	.L.str.6, 22

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"r"
	.size	.L.str.7, 2

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"1.getiodevice"
	.size	.L.str.8, 14

	.type	ziodev_op_defs,@object  # @ziodev_op_defs
	.section	.rodata,"a",@progbits
	.globl	ziodev_op_defs
	.align	16
ziodev_op_defs:
	.quad	.L.str.8
	.quad	zgetiodevice
	.zero	16
	.size	ziodev_op_defs, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
