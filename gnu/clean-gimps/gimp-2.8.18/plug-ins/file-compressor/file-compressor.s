	.text
	.file	"file-compressor.bc"
	.align	16, 0x90
	.type	query,@function
query:                                  # @query
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$168, %rsp
.Ltmp3:
	.cfi_offset %rbx, -56
.Ltmp4:
	.cfi_offset %r12, -48
.Ltmp5:
	.cfi_offset %r13, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
	movl	$0, -44(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-44(%rbp), %rax
	cmpq	$2, %rax
	jae	.LBB0_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movabsq	$.L.str.12, %rcx
	movabsq	$.L.str.13, %r8
	movabsq	$.L.str.14, %r9
	xorl	%eax, %eax
	movl	%eax, %edx
	movl	$1, %eax
	movl	$3, %esi
	movabsq	$query.load_args, %rdi
	movabsq	$query.load_return_vals, %r10
	movabsq	$compressors, %r11
	movslq	-44(%rbp), %rbx
	imulq	$112, %rbx, %rbx
	addq	%rbx, %r11
	movq	%r11, -56(%rbp)
	movq	-56(%rbp), %r11
	movq	48(%r11), %r11
	movq	-56(%rbp), %rbx
	movq	56(%rbx), %rbx
	movq	-56(%rbp), %r14
	movq	64(%r14), %r14
	movq	-56(%rbp), %r15
	movq	(%r15), %r15
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%r11, %rdi
	movl	%esi, -68(%rbp)         # 4-byte Spill
	movq	%rbx, %rsi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%r14, %rdx
	movq	%r15, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%r11, 40(%rsp)
	movq	%r10, 48(%rsp)
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movq	-56(%rbp), %rcx
	movq	48(%rcx), %rdi
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rsi
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.15, %rdx
	movq	-56(%rbp), %rcx
	movq	48(%rcx), %rdi
	movq	-56(%rbp), %rcx
	movq	16(%rcx), %rsi
	movq	-56(%rbp), %rcx
	movq	24(%rcx), %rcx
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	gimp_register_magic_load_handler
	movabsq	$.L.str.12, %rcx
	movabsq	$.L.str.13, %r8
	movabsq	$.L.str.14, %r9
	movabsq	$.L.str.16, %rdx
	movl	$1, %r12d
	movl	$5, %r13d
	xorl	%esi, %esi
	movabsq	$query.save_args, %rdi
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movq	-56(%rbp), %rbx
	movq	80(%rbx), %rbx
	movq	-56(%rbp), %r14
	movq	88(%r14), %r14
	movq	-56(%rbp), %r15
	movq	96(%r15), %r15
	movq	-56(%rbp), %r10
	movq	(%r10), %r10
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	movl	%esi, -100(%rbp)        # 4-byte Spill
	movq	%r14, %rsi
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%r15, %rdx
	movq	%r10, (%rsp)
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$5, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	-96(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movq	%r11, -128(%rbp)        # 8-byte Spill
	movl	%r13d, -132(%rbp)       # 4-byte Spill
	movl	%r12d, -136(%rbp)       # 4-byte Spill
	callq	gimp_install_procedure
	movq	-56(%rbp), %rcx
	movq	80(%rcx), %rdi
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rsi
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.15, %rdx
	movq	-56(%rbp), %rcx
	movq	80(%rcx), %rdi
	movq	-56(%rbp), %rcx
	movq	16(%rcx), %rsi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	gimp_register_save_handler
	movl	%eax, -144(%rbp)        # 4-byte Spill
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_1
.LBB0_4:                                # %for.end
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	query, .Lfunc_end0-query
	.cfi_endproc

	.align	16, 0x90
	.type	run,@function
run:                                    # @run
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -44(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.44, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.44, %rdi
	movabsq	$.L.str.45, %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.44, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -96(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movl	$1, %edi
	movabsq	$run.values, %rax
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	$0, run.values+8
	callq	gimp_plugin_set_pdb_error_handler
	movl	$0, -64(%rbp)
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB1_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-64(%rbp), %rax
	cmpq	$2, %rax
	jae	.LBB1_23
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB1_3 Depth=1
	movabsq	$compressors, %rax
	movslq	-64(%rbp), %rcx
	imulq	$112, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	48(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_9
# BB#5:                                 # %if.then
	leaq	-48(%rbp), %rcx
	leaq	-56(%rbp), %r8
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	48(%rax), %rsi
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	callq	load_image
	movl	%eax, -60(%rbp)
	cmpl	$-1, -60(%rbp)
	je	.LBB1_8
# BB#6:                                 # %land.lhs.true
	cmpl	$3, -48(%rbp)
	jne	.LBB1_8
# BB#7:                                 # %if.then.18
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$13, run.values+40
	movl	-60(%rbp), %ecx
	movl	%ecx, run.values+48
.LBB1_8:                                # %if.end
	jmp	.LBB1_23
.LBB1_9:                                # %if.else
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	-8(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	80(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_20
# BB#10:                                # %if.then.21
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB1_11
	jmp	.LBB1_29
.LBB1_29:                               # %if.then.21
	movl	-104(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB1_12
	jmp	.LBB1_30
.LBB1_30:                               # %if.then.21
	movl	-104(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB1_15
	jmp	.LBB1_16
.LBB1_11:                               # %sw.bb
	jmp	.LBB1_17
.LBB1_12:                               # %sw.bb.22
	cmpl	$5, -12(%rbp)
	je	.LBB1_14
# BB#13:                                # %if.then.25
	movl	$1, -48(%rbp)
.LBB1_14:                               # %if.end.26
	jmp	.LBB1_17
.LBB1_15:                               # %sw.bb.27
	jmp	.LBB1_17
.LBB1_16:                               # %sw.default
	jmp	.LBB1_17
.LBB1_17:                               # %sw.epilog
	cmpl	$3, -48(%rbp)
	jne	.LBB1_19
# BB#18:                                # %if.then.30
	leaq	-56(%rbp), %r9
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	128(%rax), %rsi
	movq	-24(%rbp), %rax
	movl	48(%rax), %edx
	movq	-24(%rbp), %rax
	movl	88(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	8(%rax), %r8d
	callq	save_image
	movl	%eax, -48(%rbp)
.LBB1_19:                               # %if.end.44
	jmp	.LBB1_23
.LBB1_20:                               # %if.end.45
                                        #   in Loop: Header=BB1_3 Depth=1
	jmp	.LBB1_21
.LBB1_21:                               # %if.end.46
                                        #   in Loop: Header=BB1_3 Depth=1
	jmp	.LBB1_22
.LBB1_22:                               # %for.inc
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB1_3
.LBB1_23:                               # %for.end
	movslq	-64(%rbp), %rax
	cmpq	$2, %rax
	jne	.LBB1_25
# BB#24:                                # %if.then.50
	movl	$1, -48(%rbp)
.LBB1_25:                               # %if.end.51
	cmpl	$3, -48(%rbp)
	je	.LBB1_28
# BB#26:                                # %land.lhs.true.54
	cmpq	$0, -56(%rbp)
	je	.LBB1_28
# BB#27:                                # %if.then.56
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, run.values+48
.LBB1_28:                               # %if.end.57
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	run, .Lfunc_end1-run
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$PLUG_IN_INFO, %rax
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-8(%rbp), %esi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_main
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc

	.align	16, 0x90
	.type	gzip_load,@function
gzip_load:                              # @gzip_load
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	subq	$16448, %rsp            # imm = 0x4040
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	movb	$0, %al
	callq	open
	movl	%eax, -24(%rbp)
	cmpl	$-1, -24(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	jmp	.LBB3_16
.LBB3_2:                                # %if.end
	movabsq	$.L.str.41, %rsi
	movl	-24(%rbp), %edi
	callq	gzdopen
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB3_4
# BB#3:                                 # %if.then.2
	movl	-24(%rbp), %edi
	callq	close
	movl	%eax, -16440(%rbp)      # 4-byte Spill
	jmp	.LBB3_16
.LBB3_4:                                # %if.end.4
	movabsq	$.L.str.42, %rsi
	movq	-16(%rbp), %rdi
	callq	fopen
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB3_6
# BB#5:                                 # %if.then.7
	jmp	.LBB3_16
.LBB3_6:                                # %if.end.8
	jmp	.LBB3_7
.LBB3_7:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$16384, %edx            # imm = 0x4000
	leaq	-16432(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gzread
	movl	%eax, -16436(%rbp)
	cmpl	$0, -16436(%rbp)
	jge	.LBB3_9
# BB#8:                                 # %if.then.11
	jmp	.LBB3_15
.LBB3_9:                                # %if.else
                                        #   in Loop: Header=BB3_7 Depth=1
	cmpl	$0, -16436(%rbp)
	jne	.LBB3_11
# BB#10:                                # %if.then.13
	movl	$1, -20(%rbp)
	jmp	.LBB3_15
.LBB3_11:                               # %if.end.14
                                        #   in Loop: Header=BB3_7 Depth=1
	jmp	.LBB3_12
.LBB3_12:                               # %if.end.15
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	leaq	-16432(%rbp), %rdi
	movslq	-16436(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	fwrite
	movslq	-16436(%rbp), %rcx
	cmpq	%rcx, %rax
	je	.LBB3_14
# BB#13:                                # %if.then.21
	jmp	.LBB3_15
.LBB3_14:                               # %if.end.22
                                        #   in Loop: Header=BB3_7 Depth=1
	jmp	.LBB3_7
.LBB3_15:                               # %while.end
	jmp	.LBB3_16
.LBB3_16:                               # %out.23
	cmpq	$0, -32(%rbp)
	je	.LBB3_20
# BB#17:                                # %if.then.25
	movq	-32(%rbp), %rdi
	callq	gzclose
	cmpl	$0, %eax
	je	.LBB3_19
# BB#18:                                # %if.then.29
	movl	$0, -20(%rbp)
.LBB3_19:                               # %if.end.30
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.31
	cmpq	$0, -40(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.33
	movq	-40(%rbp), %rdi
	callq	fclose
	movl	%eax, -16444(%rbp)      # 4-byte Spill
.LBB3_22:                               # %if.end.35
	movl	-20(%rbp), %eax
	addq	$16448, %rsp            # imm = 0x4040
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gzip_load, .Lfunc_end3-gzip_load
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gzip_save,@function
gzip_save:                              # @gzip_save
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	subq	$16480, %rsp            # imm = 0x4060
	movabsq	$.L.str.41, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -16448(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	fopen
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	jmp	.LBB4_18
.LBB4_2:                                # %if.end
	movl	$65, %esi
	movl	$436, %edx              # imm = 0x1B4
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	open
	movl	%eax, -36(%rbp)
	cmpl	$-1, -36(%rbp)
	jne	.LBB4_4
# BB#3:                                 # %if.then.2
	jmp	.LBB4_18
.LBB4_4:                                # %if.end.3
	movabsq	$.L.str.42, %rsi
	movl	-36(%rbp), %edi
	callq	gzdopen
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB4_6
# BB#5:                                 # %if.then.6
	movl	-36(%rbp), %edi
	callq	close
	movl	%eax, -16460(%rbp)      # 4-byte Spill
	jmp	.LBB4_18
.LBB4_6:                                # %if.end.8
	movq	-8(%rbp), %rdi
	callq	get_file_info
	movq	%rax, -16456(%rbp)
.LBB4_7:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movl	$16384, %eax            # imm = 0x4000
	movl	%eax, %edx
	leaq	-16432(%rbp), %rdi
	movq	-32(%rbp), %rcx
	callq	fread
	movl	%eax, %r8d
	movl	%r8d, -16436(%rbp)
	movq	-32(%rbp), %rdi
	callq	ferror
	cmpl	$0, %eax
	je	.LBB4_9
# BB#8:                                 # %if.then.13
	jmp	.LBB4_17
.LBB4_9:                                # %if.end.14
                                        #   in Loop: Header=BB4_7 Depth=1
	cmpl	$0, -16436(%rbp)
	jge	.LBB4_11
# BB#10:                                # %if.then.17
	jmp	.LBB4_17
.LBB4_11:                               # %if.else
                                        #   in Loop: Header=BB4_7 Depth=1
	cmpl	$0, -16436(%rbp)
	jne	.LBB4_13
# BB#12:                                # %if.then.20
	movl	$1, -20(%rbp)
	jmp	.LBB4_17
.LBB4_13:                               # %if.end.21
                                        #   in Loop: Header=BB4_7 Depth=1
	jmp	.LBB4_14
.LBB4_14:                               # %if.end.22
                                        #   in Loop: Header=BB4_7 Depth=1
	leaq	-16432(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movl	-16436(%rbp), %edx
	callq	gzwrite
	cmpl	-16436(%rbp), %eax
	je	.LBB4_16
# BB#15:                                # %if.then.27
	jmp	.LBB4_17
.LBB4_16:                               # %if.end.28
                                        #   in Loop: Header=BB4_7 Depth=1
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movslq	-16436(%rbp), %rax
	addq	-16448(%rbp), %rax
	movq	%rax, -16448(%rbp)
	cvtsi2sdq	%rax, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsi2sdq	-16456(%rbp), %xmm0
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -16464(%rbp)      # 4-byte Spill
	jmp	.LBB4_7
.LBB4_17:                               # %while.end
	jmp	.LBB4_18
.LBB4_18:                               # %out.33
	cmpq	$0, -32(%rbp)
	je	.LBB4_20
# BB#19:                                # %if.then.35
	movq	-32(%rbp), %rdi
	callq	fclose
	movl	%eax, -16468(%rbp)      # 4-byte Spill
.LBB4_20:                               # %if.end.37
	cmpq	$0, -48(%rbp)
	je	.LBB4_24
# BB#21:                                # %if.then.39
	movq	-48(%rbp), %rdi
	callq	gzclose
	cmpl	$0, %eax
	je	.LBB4_23
# BB#22:                                # %if.then.43
	movl	$0, -20(%rbp)
.LBB4_23:                               # %if.end.44
	jmp	.LBB4_24
.LBB4_24:                               # %if.end.45
	movl	-20(%rbp), %eax
	addq	$16480, %rsp            # imm = 0x4060
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gzip_save, .Lfunc_end4-gzip_save
	.cfi_endproc

	.align	16, 0x90
	.type	bzip2_load,@function
bzip2_load:                             # @bzip2_load
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	subq	$16448, %rsp            # imm = 0x4040
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	movb	$0, %al
	callq	open
	movl	%eax, -24(%rbp)
	cmpl	$-1, -24(%rbp)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	jmp	.LBB5_16
.LBB5_2:                                # %if.end
	movabsq	$.L.str.41, %rsi
	movl	-24(%rbp), %edi
	callq	BZ2_bzdopen
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_4
# BB#3:                                 # %if.then.2
	movl	-24(%rbp), %edi
	callq	close
	movl	%eax, -16440(%rbp)      # 4-byte Spill
	jmp	.LBB5_16
.LBB5_4:                                # %if.end.4
	movabsq	$.L.str.42, %rsi
	movq	-16(%rbp), %rdi
	callq	fopen
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB5_6
# BB#5:                                 # %if.then.7
	jmp	.LBB5_16
.LBB5_6:                                # %if.end.8
	jmp	.LBB5_7
.LBB5_7:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$16384, %edx            # imm = 0x4000
	leaq	-16432(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	BZ2_bzread
	movl	%eax, -16436(%rbp)
	cmpl	$0, -16436(%rbp)
	jge	.LBB5_9
# BB#8:                                 # %if.then.11
	jmp	.LBB5_15
.LBB5_9:                                # %if.else
                                        #   in Loop: Header=BB5_7 Depth=1
	cmpl	$0, -16436(%rbp)
	jne	.LBB5_11
# BB#10:                                # %if.then.13
	movl	$1, -20(%rbp)
	jmp	.LBB5_15
.LBB5_11:                               # %if.end.14
                                        #   in Loop: Header=BB5_7 Depth=1
	jmp	.LBB5_12
.LBB5_12:                               # %if.end.15
                                        #   in Loop: Header=BB5_7 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	leaq	-16432(%rbp), %rdi
	movslq	-16436(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	fwrite
	movslq	-16436(%rbp), %rcx
	cmpq	%rcx, %rax
	je	.LBB5_14
# BB#13:                                # %if.then.21
	jmp	.LBB5_15
.LBB5_14:                               # %if.end.22
                                        #   in Loop: Header=BB5_7 Depth=1
	jmp	.LBB5_7
.LBB5_15:                               # %while.end
	jmp	.LBB5_16
.LBB5_16:                               # %out.23
	cmpq	$0, -32(%rbp)
	je	.LBB5_18
# BB#17:                                # %if.then.25
	movq	-32(%rbp), %rdi
	callq	BZ2_bzclose
.LBB5_18:                               # %if.end.26
	cmpq	$0, -40(%rbp)
	je	.LBB5_20
# BB#19:                                # %if.then.28
	movq	-40(%rbp), %rdi
	callq	fclose
	movl	%eax, -16444(%rbp)      # 4-byte Spill
.LBB5_20:                               # %if.end.30
	movl	-20(%rbp), %eax
	addq	$16448, %rsp            # imm = 0x4040
	popq	%rbp
	retq
.Lfunc_end5:
	.size	bzip2_load, .Lfunc_end5-bzip2_load
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	bzip2_save,@function
bzip2_save:                             # @bzip2_save
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	subq	$16480, %rsp            # imm = 0x4060
	movabsq	$.L.str.41, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -16448(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	fopen
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	jmp	.LBB6_18
.LBB6_2:                                # %if.end
	movl	$65, %esi
	movl	$436, %edx              # imm = 0x1B4
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	open
	movl	%eax, -36(%rbp)
	cmpl	$-1, -36(%rbp)
	jne	.LBB6_4
# BB#3:                                 # %if.then.2
	jmp	.LBB6_18
.LBB6_4:                                # %if.end.3
	movabsq	$.L.str.42, %rsi
	movl	-36(%rbp), %edi
	callq	BZ2_bzdopen
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB6_6
# BB#5:                                 # %if.then.6
	movl	-36(%rbp), %edi
	callq	close
	movl	%eax, -16460(%rbp)      # 4-byte Spill
	jmp	.LBB6_18
.LBB6_6:                                # %if.end.8
	movq	-8(%rbp), %rdi
	callq	get_file_info
	movq	%rax, -16456(%rbp)
.LBB6_7:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movl	$16384, %eax            # imm = 0x4000
	movl	%eax, %edx
	leaq	-16432(%rbp), %rdi
	movq	-32(%rbp), %rcx
	callq	fread
	movl	%eax, %r8d
	movl	%r8d, -16436(%rbp)
	movq	-32(%rbp), %rdi
	callq	ferror
	cmpl	$0, %eax
	je	.LBB6_9
# BB#8:                                 # %if.then.13
	jmp	.LBB6_17
.LBB6_9:                                # %if.end.14
                                        #   in Loop: Header=BB6_7 Depth=1
	cmpl	$0, -16436(%rbp)
	jge	.LBB6_11
# BB#10:                                # %if.then.17
	jmp	.LBB6_17
.LBB6_11:                               # %if.else
                                        #   in Loop: Header=BB6_7 Depth=1
	cmpl	$0, -16436(%rbp)
	jne	.LBB6_13
# BB#12:                                # %if.then.20
	movl	$1, -20(%rbp)
	jmp	.LBB6_17
.LBB6_13:                               # %if.end.21
                                        #   in Loop: Header=BB6_7 Depth=1
	jmp	.LBB6_14
.LBB6_14:                               # %if.end.22
                                        #   in Loop: Header=BB6_7 Depth=1
	leaq	-16432(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movl	-16436(%rbp), %edx
	callq	BZ2_bzwrite
	cmpl	-16436(%rbp), %eax
	je	.LBB6_16
# BB#15:                                # %if.then.27
	jmp	.LBB6_17
.LBB6_16:                               # %if.end.28
                                        #   in Loop: Header=BB6_7 Depth=1
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movslq	-16436(%rbp), %rax
	addq	-16448(%rbp), %rax
	movq	%rax, -16448(%rbp)
	cvtsi2sdq	%rax, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsi2sdq	-16456(%rbp), %xmm0
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -16464(%rbp)      # 4-byte Spill
	jmp	.LBB6_7
.LBB6_17:                               # %while.end
	jmp	.LBB6_18
.LBB6_18:                               # %out.33
	cmpq	$0, -32(%rbp)
	je	.LBB6_20
# BB#19:                                # %if.then.35
	movq	-32(%rbp), %rdi
	callq	fclose
	movl	%eax, -16468(%rbp)      # 4-byte Spill
.LBB6_20:                               # %if.end.37
	cmpq	$0, -48(%rbp)
	je	.LBB6_22
# BB#21:                                # %if.then.39
	movq	-48(%rbp), %rdi
	callq	BZ2_bzclose
.LBB6_22:                               # %if.end.40
	movl	-20(%rbp), %eax
	addq	$16480, %rsp            # imm = 0x4060
	popq	%rbp
	retq
.Lfunc_end6:
	.size	bzip2_save, .Lfunc_end6-bzip2_save
	.cfi_endproc

	.align	16, 0x90
	.type	get_file_info,@function
get_file_info:                          # @get_file_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_file_new_for_path
	movabsq	$.L.str.43, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -16(%rbp)
	movq	$1, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %r8          # 8-byte Reload
	callq	g_file_query_info
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	g_file_info_get_size
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB7_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	get_file_info, .Lfunc_end7-get_file_info
	.cfi_endproc

	.align	16, 0x90
	.type	load_image,@function
load_image:                             # @load_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	find_extension
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.46, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movabsq	$.L.str.47, %rdi
	movq	%rdi, -64(%rbp)
.LBB8_2:                                # %if.end
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	gimp_temp_name
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB8_4
# BB#3:                                 # %if.then.5
	movq	-72(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rdi
	movl	$0, (%rdi)
	movl	$-1, -4(%rbp)
	jmp	.LBB8_8
.LBB8_4:                                # %if.end.6
	movl	-28(%rbp), %edi
	movq	-72(%rbp), %rsi
	movq	-72(%rbp), %rdx
	callq	gimp_file_load
	movl	%eax, -52(%rbp)
	movq	-72(%rbp), %rdi
	callq	g_unlink
	movq	-72(%rbp), %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	g_free
	cmpl	$-1, -52(%rbp)
	je	.LBB8_6
# BB#5:                                 # %if.then.9
	movq	-40(%rbp), %rax
	movl	$3, (%rax)
	movl	-52(%rbp), %edi
	movq	-24(%rbp), %rsi
	callq	gimp_image_set_filename
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB8_7
.LBB8_6:                                # %if.else
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	movq	-48(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gimp_get_pdb_error
	movl	$24, %edx
	movabsq	$.L.str.48, %rcx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
.LBB8_7:                                # %if.end.13
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB8_8:                                # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	load_image, .Lfunc_end8-load_image
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	save_image,@function
save_image:                             # @save_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	find_extension
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.50, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movabsq	$.L.str.49, %rdi
	movq	%rdi, -56(%rbp)
.LBB9_2:                                # %if.end
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	gimp_temp_name
	movq	%rax, -64(%rbp)
	movl	-36(%rbp), %edi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	movq	-64(%rbp), %rcx
	movq	-64(%rbp), %r8
	callq	gimp_file_save
	cmpl	$0, %eax
	je	.LBB9_4
# BB#3:                                 # %land.lhs.true
	movq	-64(%rbp), %rdi
	callq	valid_file
	cmpl	$0, %eax
	jne	.LBB9_5
.LBB9_4:                                # %if.then.7
	movq	-64(%rbp), %rdi
	callq	g_unlink
	movq	-64(%rbp), %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	g_free
	movq	-48(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gimp_get_pdb_error
	movl	$24, %edx
	movabsq	$.L.str.48, %rcx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB9_10
.LBB9_5:                                # %if.end.11
	movabsq	$.L.str.51, %rdi
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_progress_init_printf
	movq	-16(%rbp), %rsi
	movq	104(%rsi), %rsi
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	*%rcx
	cmpl	$0, %eax
	jne	.LBB9_7
# BB#6:                                 # %if.then.17
	movq	-64(%rbp), %rdi
	callq	g_unlink
	movq	-64(%rbp), %rdi
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	g_free
	movl	$0, -4(%rbp)
	jmp	.LBB9_10
.LBB9_7:                                # %if.end.19
	movq	-64(%rbp), %rdi
	callq	g_unlink
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	gimp_progress_update
	movq	-64(%rbp), %rdi
	movl	%eax, -120(%rbp)        # 4-byte Spill
	callq	g_free
	movq	-56(%rbp), %rdi
	movl	$.L.str.49, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB9_9
# BB#8:                                 # %if.then.23
	movl	-28(%rbp), %edi
	movq	-24(%rbp), %rsi
	callq	gimp_file_save_thumbnail
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB9_9:                                # %if.end.25
	movl	$3, -4(%rbp)
.LBB9_10:                               # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	save_image, .Lfunc_end9-save_image
	.cfi_endproc

	.align	16, 0x90
	.type	find_extension,@function
find_extension:                         # @find_extension
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp37:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movl	$46, %esi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	strrchr
	movq	%rax, -40(%rbp)
.LBB10_1:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB10_4
# BB#2:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-40(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB10_4
# BB#3:                                 # %lor.lhs.false.3
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$47, %esi
	movq	-40(%rbp), %rdi
	callq	strchr
	cmpq	$0, %rax
	je	.LBB10_5
.LBB10_4:                               # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB10_11
.LBB10_5:                               # %if.end
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rsi
	callq	g_ascii_strcasecmp
	xorl	%ecx, %ecx
	cmpl	%eax, %ecx
	jne	.LBB10_7
# BB#6:                                 # %if.then.9
	movabsq	$.L.str.49, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB10_11
.LBB10_7:                               # %if.end.10
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rsi
	callq	g_ascii_strcasecmp
	xorl	%ecx, %ecx
	cmpl	%eax, %ecx
	je	.LBB10_9
# BB#8:                                 # %if.then.14
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB10_11
.LBB10_9:                               # %if.else
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$46, %esi
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
	movq	-32(%rbp), %rdi
	callq	strrchr
	movq	%rax, -40(%rbp)
# BB#10:                                # %if.end.16
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_1
.LBB10_11:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	find_extension, .Lfunc_end10-find_extension
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp40:
	.cfi_def_cfa_register %rbp
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB11_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB11_2:                               # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	$32, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end11:
	.size	g_message, .Lfunc_end11-g_message
	.cfi_endproc

	.align	16, 0x90
	.type	valid_file,@function
valid_file:                             # @valid_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp43:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	leaq	-152(%rbp), %rsi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	stat
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cmpl	$0, %eax
	movb	%dl, -153(%rbp)         # 1-byte Spill
	jne	.LBB12_2
# BB#1:                                 # %land.rhs
	cmpq	$0, -104(%rbp)
	setg	%al
	movb	%al, -153(%rbp)         # 1-byte Spill
.LBB12_2:                               # %land.end
	movb	-153(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	valid_file, .Lfunc_end12-valid_file
	.cfi_endproc

	.type	PLUG_IN_INFO,@object    # @PLUG_IN_INFO
	.section	.rodata,"a",@progbits
	.globl	PLUG_IN_INFO
	.align	8
PLUG_IN_INFO:
	.quad	0
	.quad	0
	.quad	query
	.quad	run
	.size	PLUG_IN_INFO, 32

	.type	query.load_args,@object # @query.load_args
	.align	16
query.load_args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.3
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.5
	.size	query.load_args, 72

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"run-mode"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }"
	.size	.L.str.1, 61

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"filename"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"The name of the file to load"
	.size	.L.str.3, 29

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"raw-filename"
	.size	.L.str.4, 13

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"The name entered"
	.size	.L.str.5, 17

	.type	query.load_return_vals,@object # @query.load_return_vals
	.section	.rodata,"a",@progbits
	.align	16
query.load_return_vals:
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.size	query.load_return_vals, 24

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"image"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Output image"
	.size	.L.str.7, 13

	.type	query.save_args,@object # @query.save_args
	.section	.rodata,"a",@progbits
	.align	16
query.save_args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.8
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.9
	.quad	.L.str.10
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.11
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.5
	.size	query.save_args, 120

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"Input image"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"drawable"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Drawable to save"
	.size	.L.str.10, 17

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"The name of the file to save the image in"
	.size	.L.str.11, 42

	.type	compressors,@object     # @compressors
	.section	.rodata,"a",@progbits
	.align	16
compressors:
	.quad	.L.str.17
	.quad	.L.str.18
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	gzip_load
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	gzip_save
	.quad	.L.str.29
	.quad	.L.str.30
	.quad	.L.str.31
	.quad	.L.str.32
	.quad	.L.str.33
	.quad	.L.str.34
	.quad	.L.str.35
	.quad	.L.str.36
	.quad	.L.str.37
	.quad	bzip2_load
	.quad	.L.str.38
	.quad	.L.str.39
	.quad	.L.str.40
	.quad	bzip2_save
	.size	compressors, 224

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"Daniel Risacher"
	.size	.L.str.12, 16

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Daniel Risacher, Spencer Kimball and Peter Mattis"
	.size	.L.str.13, 50

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"1995-1997"
	.size	.L.str.14, 10

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.zero	1
	.size	.L.str.15, 1

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"RGB*, GRAY*, INDEXED*"
	.size	.L.str.16, 22

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gzip archive"
	.size	.L.str.17, 13

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"application/x-gzip"
	.size	.L.str.18, 19

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"xcf.gz,xcfgz"
	.size	.L.str.19, 13

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"0,string,\037\213"
	.size	.L.str.20, 12

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	".xcfgz"
	.size	.L.str.21, 7

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	".gz"
	.size	.L.str.22, 4

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"file-gz-load"
	.size	.L.str.23, 13

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"loads files compressed with gzip"
	.size	.L.str.24, 33

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"This procedure loads files in the gzip compressed format."
	.size	.L.str.25, 58

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"file-gz-save"
	.size	.L.str.26, 13

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"saves files compressed with gzip"
	.size	.L.str.27, 33

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"This procedure saves files in the gzip compressed format."
	.size	.L.str.28, 58

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"bzip archive"
	.size	.L.str.29, 13

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"application/x-bzip"
	.size	.L.str.30, 19

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"xcf.bz2,xcfbz2"
	.size	.L.str.31, 15

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"0,string,BZh"
	.size	.L.str.32, 13

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	".xcfbz2"
	.size	.L.str.33, 8

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	".bz2"
	.size	.L.str.34, 5

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"file-bz2-load"
	.size	.L.str.35, 14

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"loads files compressed with bzip2"
	.size	.L.str.36, 34

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"This procedure loads files in the bzip2 compressed format."
	.size	.L.str.37, 59

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"file-bz2-save"
	.size	.L.str.38, 14

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"saves files compressed with bzip2"
	.size	.L.str.39, 34

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"This procedure saves files in the bzip2 compressed format."
	.size	.L.str.40, 59

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"rb"
	.size	.L.str.41, 3

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"wb"
	.size	.L.str.42, 3

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"standard::size"
	.size	.L.str.43, 15

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.44, 20

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"UTF-8"
	.size	.L.str.45, 6

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"No sensible file extension, attempting to load with file magic."
	.size	.L.str.46, 64

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	".foo"
	.size	.L.str.47, 5

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"%s"
	.size	.L.str.48, 3

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	".xcf"
	.size	.L.str.49, 5

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"No sensible file extension, saving as compressed XCF."
	.size	.L.str.50, 54

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Compressing '%s'"
	.size	.L.str.51, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
