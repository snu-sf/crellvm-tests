	.text
	.file	"gdevps.bc"
	.align	16, 0x90
	.type	psw_open,@function
psw_open:                               # @psw_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
.Ltmp5:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	movq	24(%r15), %rdi
	callq	*32(%rdi)
	movq	%rax, %r14
	movq	%r14, 1728(%r15)
	movq	$psw_vector_procs, 1736(%r15)
	movq	%r15, %rdi
	callq	gdev_vector_init
	movabsq	$68719476752, %rax      # imm = 0x1000000010
	movq	%rax, 8792(%r15)
	cmpl	$0, 8880(%r15)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 8852(%r15)
	movl	$st_psdf_binary_writer, %esi
	movl	$.L.str.5, %edx
	movq	%r14, %rdi
	callq	*72(%r14)
	movq	%rax, 9392(%r15)
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movl	$32, %edx
	movq	%rax, %rdi
	callq	memset
	.align	16, 0x90
.LBB0_1:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	$0, 9400(%r15,%rbx)
	addq	$16, %rbx
	cmpq	$3152, %rbx             # imm = 0xC50
	jne	.LBB0_1
# BB#2:                                 # %if.end.i
	movl	$0, 12552(%r15)
	movq	$0, 5848(%r15)
	movl	$512, %esi              # imm = 0x200
	movl	$12, %edx
	movq	%r15, %rdi
	callq	gdev_vector_open_file_options
	testl	%eax, %eax
	js	.LBB0_4
# BB#3:                                 # %cleanup.cont.i
	movl	$1, 9384(%r15)
	xorl	%eax, %eax
.LBB0_4:                                # %psw_open_printer.exit
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	%eax, %ecx
	movl	%ecx, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	psw_open, .Lfunc_end0-psw_open
	.cfi_endproc

	.align	16, 0x90
	.type	psw_output_page,@function
psw_output_page:                        # @psw_output_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp7:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp8:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp10:
	.cfi_def_cfa_offset 48
.Ltmp11:
	.cfi_offset %rbx, -40
.Ltmp12:
	.cfi_offset %r14, -32
.Ltmp13:
	.cfi_offset %r15, -24
.Ltmp14:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movl	%esi, %r15d
	movq	%rdi, %rbx
	callq	gdev_vector_stream
	movq	%rax, %rbp
	movq	12576(%rbx), %r9
	cmpq	$-1, %r9
	je	.LBB1_5
# BB#1:                                 # %if.then.i
	movl	12560(%rbx), %esi
	movl	12568(%rbx), %ecx
	subl	%esi, %ecx
	je	.LBB1_3
# BB#2:                                 # %land.lhs.true.i
	movl	12564(%rbx), %edx
	movl	12572(%rbx), %r8d
	subl	%edx, %r8d
	jne	.LBB1_4
.LBB1_3:                                # %psw_check_erasepage.exit.thread30
	movq	$-1, 12576(%rbx)
	jmp	.LBB1_5
.LBB1_4:                                # %psw_check_erasepage.exit
	movq	%rbx, %rdi
	callq	gdev_vector_fill_rectangle
	movq	$-1, 12576(%rbx)
	testl	%eax, %eax
	js	.LBB1_15
.LBB1_5:                                # %do.end
	movq	%rbp, %rdi
	callq	*208(%rbp)
	movq	5840(%rbx), %rdi
	movl	%r15d, %esi
	movl	%r14d, %edx
	callq	psw_write_page_trailer
	testl	%eax, %eax
	js	.LBB1_15
# BB#6:                                 # %if.end.7
	movl	$0, 8816(%rbx)
	movl	$0, 9384(%rbx)
	movq	%rbx, %rdi
	callq	gdev_vector_reset
	movl	$9400, %eax             # imm = 0x24B8
	.align	16, 0x90
.LBB1_7:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	$0, (%rbx,%rax)
	addq	$16, %rax
	cmpq	$12552, %rax            # imm = 0x3108
	jne	.LBB1_7
# BB#8:                                 # %image_cache_reset.exit
	movl	$0, 12552(%rbx)
	movq	5840(%rbx), %rdi
	callq	ferror
	movl	%eax, %ecx
	movl	$-12, %eax
	testl	%ecx, %ecx
	jne	.LBB1_15
# BB#9:                                 # %if.end.11
	incq	928(%rbx)
	leaq	1744(%rbx), %rdi
	movq	24(%rbx), %rsi
	callq	gx_outputfile_is_separate_pages
	testl	%eax, %eax
	je	.LBB1_14
# BB#10:                                # %if.then.14
	movq	%rbx, %rdi
	callq	psw_close_printer
	testl	%eax, %eax
	js	.LBB1_15
# BB#11:                                # %if.end.18
	cmpq	$0, 5848(%rbx)
	jne	.LBB1_14
# BB#12:                                # %if.end.i.27
	movl	$512, %esi              # imm = 0x200
	movl	$12, %edx
	movq	%rbx, %rdi
	callq	gdev_vector_open_file_options
	testl	%eax, %eax
	js	.LBB1_15
# BB#13:                                # %cleanup.cont.i
	movl	$1, 9384(%rbx)
.LBB1_14:                               # %cleanup.24
	xorl	%eax, %eax
.LBB1_15:                               # %cleanup.24
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	psw_output_page, .Lfunc_end1-psw_output_page
	.cfi_endproc

	.align	16, 0x90
	.type	psw_close,@function
psw_close:                              # @psw_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	1728(%rbx), %rdi
	movq	9392(%rbx), %rsi
	movl	$.L.str.68, %edx
	callq	*24(%rdi)
	movq	$0, 9392(%rbx)
	cmpq	$0, 5848(%rbx)
	je	.LBB2_2
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	callq	psw_close_printer
	testl	%eax, %eax
	js	.LBB2_3
.LBB2_2:                                # %if.end.5
	xorl	%eax, %eax
.LBB2_3:                                # %cleanup.6
	popq	%rbx
	retq
.Lfunc_end2:
	.size	psw_close, .Lfunc_end2-psw_close
	.cfi_endproc

	.align	16, 0x90
	.type	psw_fill_rectangle,@function
psw_fill_rectangle:                     # @psw_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$0, 8816(%rdi)
	jne	.LBB3_4
# BB#1:                                 # %land.lhs.true
	cmpl	$0, 9384(%rdi)
	jne	.LBB3_4
# BB#2:                                 # %if.then
	cmpq	$-1, 12576(%rdi)
	je	.LBB3_3
.LBB3_4:                                # %if.end.20
	jmp	gdev_vector_fill_rectangle # TAILCALL
.LBB3_3:                                # %cleanup
	movl	%esi, 12560(%rdi)
	movl	%edx, 12564(%rdi)
	addl	%esi, %ecx
	movl	%ecx, 12568(%rdi)
	addl	%edx, %r8d
	movl	%r8d, 12572(%rdi)
	movq	%r9, 12576(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end3:
	.size	psw_fill_rectangle, .Lfunc_end3-psw_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	psw_copy_mono,@function
psw_copy_mono:                          # @psw_copy_mono
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
	subq	$728, %rsp              # imm = 0x2D8
.Ltmp23:
	.cfi_def_cfa_offset 784
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
	movl	%r9d, %ebx
	movq	%r8, 64(%rsp)           # 8-byte Spill
	movl	%ecx, 60(%rsp)          # 4-byte Spill
	movl	%edx, 56(%rsp)          # 4-byte Spill
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	movq	%rdi, %rbp
	movq	12576(%rbp), %r9
	cmpq	$-1, %r9
	je	.LBB4_5
# BB#1:                                 # %if.then.i
	movl	12560(%rbp), %esi
	movl	12568(%rbp), %ecx
	subl	%esi, %ecx
	je	.LBB4_3
# BB#2:                                 # %land.lhs.true.i
	movl	12564(%rbp), %edx
	movl	12572(%rbp), %r8d
	subl	%edx, %r8d
	jne	.LBB4_4
.LBB4_3:                                # %psw_check_erasepage.exit.thread43
	movq	$-1, 12576(%rbp)
	jmp	.LBB4_5
.LBB4_4:                                # %psw_check_erasepage.exit
	movq	%rbp, %rdi
	callq	gdev_vector_fill_rectangle
	movq	$-1, 12576(%rbp)
	testl	%eax, %eax
	js	.LBB4_17
.LBB4_5:                                # %do.end
	movl	792(%rsp), %r14d
	xorl	%eax, %eax
	testl	%r14d, %r14d
	jle	.LBB4_17
# BB#6:                                 # %do.end
	movl	800(%rsp), %ecx
	testl	%ecx, %ecx
	jle	.LBB4_17
# BB#7:                                 # %if.end.4
	movq	816(%rsp), %r13
	movq	808(%rsp), %r12
	movl	784(%rsp), %eax
	movq	8824(%rbp), %rdi
	movq	%r13, 32(%rsp)
	movq	%r12, 24(%rsp)
	movl	%ecx, 16(%rsp)
	movl	%r14d, 8(%rsp)
	movl	%eax, (%rsp)
	movq	48(%rsp), %rsi          # 8-byte Reload
	movl	56(%rsp), %edx          # 4-byte Reload
	movl	60(%rsp), %ecx          # 4-byte Reload
	movq	64(%rsp), %r8           # 8-byte Reload
	movl	%ebx, %r9d
	callq	*1216(%rdi)
	cmpq	$-1, %r13
	je	.LBB4_8
# BB#9:                                 # %if.else
	cmpq	%r12, 8832(%rbp)
	jne	.LBB4_11
# BB#10:                                # %land.lhs.true
	movl	$.L.str.71, %r15d
	cmpq	%r13, 8840(%rbp)
	je	.LBB4_15
.LBB4_11:                               # %if.else.13
	cmpq	$-1, %r12
	je	.LBB4_13
# BB#12:                                # %if.then.15
	movq	%rbp, %rdi
	movl	%ebx, %esi
	movl	784(%rsp), %edx
	movl	%r14d, %ecx
	movl	800(%rsp), %r8d
	movq	%r12, %r9
	callq	*1200(%rbp)
	testl	%eax, %eax
	js	.LBB4_17
.LBB4_13:                               # %if.end.21
	movq	%r13, 80(%rsp)
	movq	$gx_dc_type_data_pure, 72(%rsp)
	movl	$0, 432(%rsp)
	leaq	72(%rsp), %rdx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	gdev_vector_update_fill_color
	movl	$.L.str.72, %r15d
	jmp	.LBB4_14
.LBB4_8:                                # %if.then.8
	movq	%r12, 80(%rsp)
	movq	$gx_dc_type_data_pure, 72(%rsp)
	movl	$0, 432(%rsp)
	leaq	72(%rsp), %rdx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	gdev_vector_update_fill_color
	movl	$.L.str.70, %r15d
.LBB4_14:                               # %if.end.28
	testl	%eax, %eax
	movl	$0, %eax
	js	.LBB4_17
.LBB4_15:                               # %if.end.31
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	gdev_vector_update_clip_path
	testl	%eax, %eax
	js	.LBB4_17
# BB#16:                                # %if.end.35
	movl	800(%rsp), %eax
	movl	%eax, 24(%rsp)
	movl	%r14d, 16(%rsp)
	movl	784(%rsp), %eax
	movl	%eax, 8(%rsp)
	movl	%ebx, (%rsp)
	movl	$1, 32(%rsp)
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movq	48(%rsp), %rdx          # 8-byte Reload
	movl	56(%rsp), %ecx          # 4-byte Reload
	movl	60(%rsp), %r8d          # 4-byte Reload
	movq	64(%rsp), %r9           # 8-byte Reload
	callq	psw_image_write
.LBB4_17:                               # %cleanup.37
	addq	$728, %rsp              # imm = 0x2D8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	psw_copy_mono, .Lfunc_end4-psw_copy_mono
	.cfi_endproc

	.align	16, 0x90
	.type	psw_copy_color,@function
psw_copy_color:                         # @psw_copy_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp31:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp32:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp33:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp34:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp35:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp36:
	.cfi_def_cfa_offset 128
.Ltmp37:
	.cfi_offset %rbx, -56
.Ltmp38:
	.cfi_offset %r12, -48
.Ltmp39:
	.cfi_offset %r13, -40
.Ltmp40:
	.cfi_offset %r14, -32
.Ltmp41:
	.cfi_offset %r15, -24
.Ltmp42:
	.cfi_offset %rbp, -16
	movl	%r9d, %r15d
	movq	%r8, %rbp
	movl	%ecx, 60(%rsp)          # 4-byte Spill
	movl	%edx, %r13d
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movzwl	108(%rbx), %eax
	movl	%eax, 56(%rsp)          # 4-byte Spill
	movq	12576(%rbx), %r9
	cmpq	$-1, %r9
	je	.LBB5_5
# BB#1:                                 # %if.then.i
	movl	12560(%rbx), %esi
	movl	12568(%rbx), %ecx
	subl	%esi, %ecx
	je	.LBB5_3
# BB#2:                                 # %land.lhs.true.i
	movl	12564(%rbx), %edx
	movl	12572(%rbx), %r8d
	subl	%edx, %r8d
	jne	.LBB5_4
.LBB5_3:                                # %psw_check_erasepage.exit.thread43
	movq	$-1, 12576(%rbx)
	jmp	.LBB5_5
.LBB5_4:                                # %psw_check_erasepage.exit
	movq	%rbx, %rdi
	callq	gdev_vector_fill_rectangle
	movq	$-1, 12576(%rbx)
	testl	%eax, %eax
	js	.LBB5_12
.LBB5_5:                                # %do.end
	movl	136(%rsp), %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jle	.LBB5_12
# BB#6:                                 # %do.end
	movl	144(%rsp), %r12d
	testl	%r12d, %r12d
	jle	.LBB5_12
# BB#7:                                 # %if.end.8
	movl	128(%rsp), %eax
	movq	8824(%rbx), %rdi
	movl	%r12d, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	movq	%r14, %rsi
	movl	%r13d, %edx
	movl	60(%rsp), %ecx          # 4-byte Reload
	movq	%rbp, %r8
	movl	%r15d, %r9d
	movl	%r15d, 52(%rsp)         # 4-byte Spill
	callq	*1224(%rdi)
	cmpl	$1, %r12d
	jne	.LBB5_10
# BB#8:                                 # %land.lhs.true
	leal	(%r13,%r13,2), %eax
	cltq
	leaq	(%rax,%r14), %r15
	leaq	3(%r15), %rsi
	movl	136(%rsp), %eax
	leal	-3(%rax,%rax,2), %eax
	movslq	%eax, %rdx
	movq	%r15, %rdi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB5_9
.LBB5_10:                               # %if.end.28
	imull	$43691, 56(%rsp), %edx  # 4-byte Folded Reload
                                        # imm = 0xAAAB
	shrl	$17, %edx
	leaq	66(%rsp), %rdi
	movl	$.L.str.93, %esi
	xorl	%eax, %eax
	callq	gs_sprintf
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	gdev_vector_update_clip_path
	testl	%eax, %eax
	movl	52(%rsp), %ecx          # 4-byte Reload
	movq	%rbp, %r9
	movl	136(%rsp), %edx
	js	.LBB5_12
# BB#11:                                # %if.end.34
	movl	56(%rsp), %eax          # 4-byte Reload
	movl	%eax, 32(%rsp)
	movl	%r12d, 24(%rsp)
	movl	%edx, 16(%rsp)
	movl	128(%rsp), %eax
	movl	%eax, 8(%rsp)
	movl	%ecx, (%rsp)
	leaq	66(%rsp), %rsi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	movl	%r13d, %ecx
	movl	60(%rsp), %r8d          # 4-byte Reload
	callq	psw_image_write
	jmp	.LBB5_12
.LBB5_9:                                # %if.then.17
	movzbl	(%r15), %eax
	shlq	$16, %rax
	movzbl	1(%r15), %ecx
	shlq	$8, %rcx
	orq	%rax, %rcx
	movzbl	2(%r15), %r9d
	orq	%rcx, %r9
	movl	$1, %r8d
	movq	%rbx, %rdi
	movl	52(%rsp), %esi          # 4-byte Reload
	movl	128(%rsp), %edx
	movl	136(%rsp), %ecx
	callq	*1200(%rbx)
.LBB5_12:                               # %cleanup.37
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	psw_copy_color, .Lfunc_end5-psw_copy_color
	.cfi_endproc

	.align	16, 0x90
	.type	psw_get_params,@function
psw_get_params:                         # @psw_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp44:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp45:
	.cfi_def_cfa_offset 32
.Ltmp46:
	.cfi_offset %rbx, -32
.Ltmp47:
	.cfi_offset %r14, -24
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	gdev_psdf_get_params
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB6_2
# BB#1:                                 # %if.end
	addq	$9360, %rbx             # imm = 0x2490
	movl	$.L.str.69, %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	param_write_float
	testl	%eax, %eax
	cmovsl	%eax, %ebp
.LBB6_2:                                # %cleanup
	movl	%ebp, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	psw_get_params, .Lfunc_end6-psw_get_params
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI7_0:
	.long	1077936128              # float 3
.LCPI7_1:
	.long	1073741824              # float 2
.LCPI7_2:
	.long	1065353216              # float 1
.LCPI7_3:
	.long	1069547520              # float 1.5
	.text
	.align	16, 0x90
	.type	psw_put_params,@function
psw_put_params:                         # @psw_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp50:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp51:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp52:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp53:
	.cfi_def_cfa_offset 48
.Ltmp54:
	.cfi_offset %rbx, -40
.Ltmp55:
	.cfi_offset %r14, -32
.Ltmp56:
	.cfi_offset %r15, -24
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	9360(%rbx), %eax
	movl	%eax, 4(%rsp)
	movl	8848(%rbx), %r15d
	leaq	4(%rsp), %rdx
	movl	$.L.str.69, %esi
	movq	%r14, %rdi
	callq	param_read_float
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB7_7
# BB#1:                                 # %entry
	testl	%ebp, %ebp
	jne	.LBB7_6
# BB#2:                                 # %sw.bb
	movss	4(%rsp), %xmm0          # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI7_0(%rip), %xmm0
	jne	.LBB7_3
	jnp	.LBB7_7
.LBB7_3:                                # %sw.bb
	ucomiss	.LCPI7_1(%rip), %xmm0
	jne	.LBB7_4
	jnp	.LBB7_7
.LBB7_4:                                # %sw.bb
	ucomiss	.LCPI7_2(%rip), %xmm0
	jne	.LBB7_5
	jnp	.LBB7_7
.LBB7_5:                                # %sw.bb
	movl	$-15, %ebp
	ucomiss	.LCPI7_3(%rip), %xmm0
	jne	.LBB7_6
	jnp	.LBB7_7
.LBB7_6:                                # %sw.epilog
	movq	(%r14), %rax
	movl	$.L.str.69, %esi
	movq	%r14, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	testl	%ebp, %ebp
	js	.LBB7_10
.LBB7_7:                                # %if.end.18
	movss	4(%rsp), %xmm0          # xmm0 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm0
	cvttss2si	%xmm0, %eax
	addl	$-2, %eax
	cltq
	movl	psw_put_params.vv(,%rax,4), %eax
	movl	%eax, 8848(%rbx)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	gdev_psdf_put_params
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB7_8
# BB#9:                                 # %if.end.26
	movl	4(%rsp), %eax
	movl	%eax, 9360(%rbx)
	jmp	.LBB7_10
.LBB7_8:                                # %if.then.24
	movl	%r15d, 8848(%rbx)
.LBB7_10:                               # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	psw_put_params, .Lfunc_end7-psw_put_params
	.cfi_endproc

	.align	16, 0x90
	.type	psw_fill_path,@function
psw_fill_path:                          # @psw_fill_path
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp59:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp60:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp61:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp62:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp63:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp64:
	.cfi_def_cfa_offset 64
.Ltmp65:
	.cfi_offset %rbx, -56
.Ltmp66:
	.cfi_offset %r12, -48
.Ltmp67:
	.cfi_offset %r13, -40
.Ltmp68:
	.cfi_offset %r14, -32
.Ltmp69:
	.cfi_offset %r15, -24
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%r9, %r12
	movq	%r8, %r14
	movq	%rcx, %r15
	movq	%rdx, %rbx
	movq	%rsi, %r13
	movq	%rdi, %rbp
	movq	12576(%rbp), %r9
	cmpq	$-1, %r9
	je	.LBB8_5
# BB#1:                                 # %if.then.i
	movl	12560(%rbp), %esi
	movl	12568(%rbp), %ecx
	subl	%esi, %ecx
	je	.LBB8_3
# BB#2:                                 # %land.lhs.true.i
	movl	12564(%rbp), %edx
	movl	12572(%rbp), %r8d
	subl	%edx, %r8d
	jne	.LBB8_4
.LBB8_3:                                # %psw_check_erasepage.exit.thread9
	movq	$-1, 12576(%rbp)
	jmp	.LBB8_5
.LBB8_4:                                # %psw_check_erasepage.exit
	movq	%rbp, %rdi
	callq	gdev_vector_fill_rectangle
	movq	$-1, 12576(%rbp)
	testl	%eax, %eax
	js	.LBB8_6
.LBB8_5:                                # %do.end
	movq	%rbx, %rdi
	callq	gx_path_is_void
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB8_7
.LBB8_6:                                # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_7:                                # %if.end.3
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	gdev_vector_update_clip_path
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movq	%r15, %rcx
	movq	%r14, %r8
	movq	%r12, %r9
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gdev_vector_fill_path   # TAILCALL
.Lfunc_end8:
	.size	psw_fill_path, .Lfunc_end8-psw_fill_path
	.cfi_endproc

	.align	16, 0x90
	.type	psw_stroke_path,@function
psw_stroke_path:                        # @psw_stroke_path
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp72:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp73:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp74:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp75:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp76:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp77:
	.cfi_def_cfa_offset 128
.Ltmp78:
	.cfi_offset %rbx, -56
.Ltmp79:
	.cfi_offset %r12, -48
.Ltmp80:
	.cfi_offset %r13, -40
.Ltmp81:
	.cfi_offset %r14, -32
.Ltmp82:
	.cfi_offset %r15, -24
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%r9, %rbx
	movq	%r8, %r12
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	%rdx, %r13
	movq	%rsi, %r14
	movq	%rdi, %rbp
	movq	12576(%rbp), %r9
	cmpq	$-1, %r9
	je	.LBB9_5
# BB#1:                                 # %if.then.i
	movl	12560(%rbp), %esi
	movl	12568(%rbp), %ecx
	subl	%esi, %ecx
	je	.LBB9_3
# BB#2:                                 # %land.lhs.true.i
	movl	12564(%rbp), %edx
	movl	12572(%rbp), %r8d
	subl	%edx, %r8d
	jne	.LBB9_4
.LBB9_3:                                # %psw_check_erasepage.exit.thread51
	movq	$-1, 12576(%rbp)
	jmp	.LBB9_5
.LBB9_4:                                # %psw_check_erasepage.exit
	movq	%rbp, %rdi
	callq	gdev_vector_fill_rectangle
	movl	%eax, %r15d
	movq	$-1, 12576(%rbp)
	testl	%r15d, %r15d
	js	.LBB9_26
.LBB9_5:                                # %do.end
	movq	%r13, %rdi
	callq	gx_path_is_void
	testl	%eax, %eax
	je	.LBB9_8
# BB#6:                                 # %land.lhs.true
	movq	%r13, %rdi
	callq	gx_path_is_null
	xorl	%r15d, %r15d
	testl	%eax, %eax
	jne	.LBB9_26
# BB#7:                                 # %lor.lhs.false
	movq	%r14, %rdi
	callq	gs_currentlinecap
	cmpl	$1, %eax
	jne	.LBB9_26
.LBB9_8:                                # %if.end.7
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	gdev_vector_update_clip_path
	movl	$gx_dc_type_data_pure, %eax
	cmpq	%rax, (%r12)
	je	.LBB9_10
# BB#9:                                 # %if.then.10
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	%r12, %r8
	movq	%rbx, %r9
	callq	gx_default_stroke_path
.LBB9_25:                               # %cleanup.75
	movl	%eax, %r15d
	jmp	.LBB9_26
.LBB9_10:                               # %if.end.12
	leaq	64(%rsp), %rdx
	leaq	40(%rsp), %rcx
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	gdev_vector_stroke_scaling
	movl	%eax, %r15d
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	callq	gdev_vector_update_clip_path
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movq	%r14, 16(%rsp)          # 8-byte Spill
	movq	32(%rsp), %rdx          # 8-byte Reload
	movq	%r12, %rcx
	callq	gdev_vector_prepare_stroke
	movl	%r15d, %edx
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB9_26
# BB#11:                                # %if.end.18
	movq	5848(%rbp), %r14
	testl	%edx, %edx
	je	.LBB9_19
# BB#12:                                # %if.then.20
	movl	%edx, 12(%rsp)          # 4-byte Spill
	movl	$.L.str.94, %esi
	movq	%r14, %rdi
	callq	stream_puts
	movss	44(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	48(%rsp), %xmm2         # xmm2 = mem[0],zero,zero,zero
	xorpd	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB9_17
	jp	.LBB9_17
# BB#13:                                # %if.then.20
	ucomiss	%xmm0, %xmm2
	jne	.LBB9_17
	jp	.LBB9_17
# BB#14:                                # %land.lhs.true.28
	movss	56(%rsp), %xmm3         # xmm3 = mem[0],zero,zero,zero
	xorpd	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm3
	jne	.LBB9_17
	jp	.LBB9_17
# BB#15:                                # %land.lhs.true.32
	movss	60(%rsp), %xmm3         # xmm3 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm3
	jne	.LBB9_17
	jp	.LBB9_17
# BB#16:                                # %if.then.36
	movss	40(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	52(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	movl	$.L.str.95, %esi
	movq	%r14, %rdi
	callq	pprintg2
	jmp	.LBB9_18
.LBB9_17:                               # %if.else
	movss	40(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	52(%rsp), %xmm3         # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	cvtss2sd	%xmm2, %xmm2
	cvtss2sd	%xmm3, %xmm3
	movss	56(%rsp), %xmm4         # xmm4 = mem[0],zero,zero,zero
	cvtss2sd	%xmm4, %xmm4
	movss	60(%rsp), %xmm5         # xmm5 = mem[0],zero,zero,zero
	cvtss2sd	%xmm5, %xmm5
	movl	$.L.str.98, %esi
	movq	%r14, %rdi
	callq	pprintg6
	movl	$.L.str.96, %esi
	movq	%r14, %rdi
	callq	stream_puts
.LBB9_18:                               # %if.end.41
	movzwl	152(%r14), %eax
	movl	$-12, %r15d
	cmpl	$65534, %eax            # imm = 0xFFFE
	movl	12(%rsp), %edx          # 4-byte Reload
	je	.LBB9_26
.LBB9_19:                               # %if.end.47
	movq	%r14, (%rsp)            # 8-byte Spill
	xorl	%ecx, %ecx
	testl	%edx, %edx
	leaq	40(%rsp), %rax
	cmovneq	%rax, %rcx
	sete	%bl
	movl	$2, %edx
	movq	%rbp, %rdi
	movq	%r13, %rsi
	callq	gdev_vector_dopath
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB9_22
# BB#20:                                # %if.end.47
	testb	%bl, %bl
	jne	.LBB9_22
# BB#21:                                # %cleanup.58.thread54
	movl	$.L.str.97, %esi
	movq	(%rsp), %rdi            # 8-byte Reload
	callq	stream_puts
	movq	24(%rsp), %r9           # 8-byte Reload
	movq	16(%rsp), %rsi          # 8-byte Reload
	jmp	.LBB9_23
.LBB9_22:                               # %cleanup.58
	testl	%r15d, %r15d
	movq	24(%rsp), %r9           # 8-byte Reload
	movq	16(%rsp), %rsi          # 8-byte Reload
	js	.LBB9_26
.LBB9_23:                               # %cleanup.cont.65
	movq	8824(%rbp), %rdi
	xorl	%r15d, %r15d
	testq	%rdi, %rdi
	je	.LBB9_26
# BB#24:                                # %cond.false.69
	movq	%r13, %rdx
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	%r12, %r8
	callq	*1344(%rdi)
	jmp	.LBB9_25
.LBB9_26:                               # %cleanup.75
	movl	%r15d, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	psw_stroke_path, .Lfunc_end9-psw_stroke_path
	.cfi_endproc

	.align	16, 0x90
	.type	psw_fill_mask,@function
psw_fill_mask:                          # @psw_fill_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp85:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp86:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp87:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp88:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp89:
	.cfi_def_cfa_offset 56
	subq	$120, %rsp
.Ltmp90:
	.cfi_def_cfa_offset 176
.Ltmp91:
	.cfi_offset %rbx, -56
.Ltmp92:
	.cfi_offset %r12, -48
.Ltmp93:
	.cfi_offset %r13, -40
.Ltmp94:
	.cfi_offset %r14, -32
.Ltmp95:
	.cfi_offset %r15, -24
.Ltmp96:
	.cfi_offset %rbp, -16
	movl	%r9d, 100(%rsp)         # 4-byte Spill
	movq	%r8, 104(%rsp)          # 8-byte Spill
	movl	%ecx, 116(%rsp)         # 4-byte Spill
	movl	%edx, %ebx
	movq	%rsi, %r15
	movq	%rdi, %rbp
	movq	224(%rsp), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movl	216(%rsp), %eax
	movl	%eax, 76(%rsp)          # 4-byte Spill
	movl	208(%rsp), %r14d
	movq	200(%rsp), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movl	192(%rsp), %r13d
	movl	184(%rsp), %r12d
	movl	176(%rsp), %eax
	movl	%eax, 72(%rsp)          # 4-byte Spill
	movq	12576(%rbp), %r9
	cmpq	$-1, %r9
	je	.LBB10_5
# BB#1:                                 # %if.then.i
	movl	12560(%rbp), %esi
	movl	12568(%rbp), %ecx
	subl	%esi, %ecx
	je	.LBB10_3
# BB#2:                                 # %land.lhs.true.i
	movl	12564(%rbp), %edx
	movl	12572(%rbp), %r8d
	subl	%edx, %r8d
	jne	.LBB10_4
.LBB10_3:                               # %psw_check_erasepage.exit.thread42
	movq	$-1, 12576(%rbp)
	jmp	.LBB10_5
.LBB10_4:                               # %psw_check_erasepage.exit
	movq	%rbp, %rdi
	callq	gdev_vector_fill_rectangle
	movq	$-1, 12576(%rbp)
	testl	%eax, %eax
	js	.LBB10_12
.LBB10_5:                               # %do.end
	xorl	%eax, %eax
	testl	%r12d, %r12d
	jle	.LBB10_12
# BB#6:                                 # %do.end
	testl	%r13d, %r13d
	jle	.LBB10_12
# BB#7:                                 # %if.end.4
	cmpl	$1, %r14d
	jg	.LBB10_13
# BB#8:                                 # %lor.lhs.false.6
	movq	%rbp, %rdi
	movq	88(%rsp), %rsi          # 8-byte Reload
	callq	gdev_vector_update_clip_path
	testl	%eax, %eax
	js	.LBB10_13
# BB#9:                                 # %lor.lhs.false.9
	xorl	%esi, %esi
	movq	%rbp, %rdi
	movq	80(%rsp), %rdx          # 8-byte Reload
	callq	gdev_vector_update_fill_color
	testl	%eax, %eax
	js	.LBB10_13
# BB#10:                                # %lor.lhs.false.12
	movq	%rbp, %rdi
	movl	76(%rsp), %esi          # 4-byte Reload
	callq	gdev_vector_update_log_op
	testl	%eax, %eax
	js	.LBB10_13
# BB#11:                                # %if.end.17
	movq	8824(%rbp), %rdi
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	%rax, 48(%rsp)
	movl	76(%rsp), %eax          # 4-byte Reload
	movl	%eax, 40(%rsp)
	movl	%r14d, 32(%rsp)
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	%rax, 24(%rsp)
	movl	%r13d, 16(%rsp)
	movl	%r12d, 8(%rsp)
	movl	72(%rsp), %r14d         # 4-byte Reload
	movl	%r14d, (%rsp)
	movq	%r15, 56(%rsp)          # 8-byte Spill
	movq	%r15, %rsi
	movl	%ebx, 68(%rsp)          # 4-byte Spill
	movl	%ebx, %edx
	movl	116(%rsp), %ecx         # 4-byte Reload
	movq	104(%rsp), %r15         # 8-byte Reload
	movq	%r15, %r8
	movl	100(%rsp), %ebx         # 4-byte Reload
	movl	%ebx, %r9d
	callq	*1352(%rdi)
	movq	%rbp, %rdi
	movq	88(%rsp), %rsi          # 8-byte Reload
	callq	gdev_vector_update_clip_path
	movl	%r13d, 24(%rsp)
	movl	%r12d, 16(%rsp)
	movl	%r14d, 8(%rsp)
	movl	%ebx, (%rsp)
	movl	$1, 32(%rsp)
	movl	$.L.str.72, %esi
	movq	%rbp, %rdi
	movq	56(%rsp), %rdx          # 8-byte Reload
	movl	68(%rsp), %ecx          # 4-byte Reload
	movl	116(%rsp), %r8d         # 4-byte Reload
	movq	%r15, %r9
	callq	psw_image_write
.LBB10_12:                              # %cleanup.22
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_13:                              # %if.then.15
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movl	%ebx, %edx
	movl	116(%rsp), %ecx         # 4-byte Reload
	movq	104(%rsp), %r8          # 8-byte Reload
	movl	100(%rsp), %r9d         # 4-byte Reload
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gx_default_fill_mask    # TAILCALL
.Lfunc_end10:
	.size	psw_fill_mask, .Lfunc_end10-psw_fill_mask
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI11_0:
	.long	1073741824              # float 2
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_1:
	.quad	4634766966517661696     # double 72
	.text
	.align	16, 0x90
	.type	psw_begin_image,@function
psw_begin_image:                        # @psw_begin_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp98:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp99:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp100:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp101:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp102:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp103:
	.cfi_def_cfa_offset 208
.Ltmp104:
	.cfi_offset %rbx, -56
.Ltmp105:
	.cfi_offset %r12, -48
.Ltmp106:
	.cfi_offset %r13, -40
.Ltmp107:
	.cfi_offset %r14, -32
.Ltmp108:
	.cfi_offset %r15, -24
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%r9, 104(%rsp)          # 8-byte Spill
	movq	%r8, %r12
	movl	%ecx, 116(%rsp)         # 4-byte Spill
	movq	%rdx, %r15
	movq	%rsi, 120(%rsp)         # 8-byte Spill
	movq	%rdi, %r13
	movq	224(%rsp), %rbp
	movq	216(%rsp), %rbx
	movq	208(%rsp), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movq	576(%r15), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movl	8852(%r13), %r14d
	movq	12576(%r13), %r9
	cmpq	$-1, %r9
	je	.LBB11_5
# BB#1:                                 # %if.then.i
	movl	12560(%r13), %esi
	movl	12568(%r13), %ecx
	subl	%esi, %ecx
	je	.LBB11_3
# BB#2:                                 # %land.lhs.true.i
	movl	12564(%r13), %edx
	movl	12572(%r13), %r8d
	subl	%edx, %r8d
	jne	.LBB11_4
.LBB11_3:                               # %psw_check_erasepage.exit.thread198
	movq	$-1, 12576(%r13)
	jmp	.LBB11_5
.LBB11_4:                               # %psw_check_erasepage.exit
	movq	%r13, %rdi
	callq	gdev_vector_fill_rectangle
	movq	$-1, 12576(%r13)
	testl	%eax, %eax
	js	.LBB11_64
.LBB11_5:                               # %do.end
	movl	$st_vector_image_enum, %esi
	movl	$.L.str.99, %edx
	movq	%rbx, %rdi
	callq	*72(%rbx)
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB11_64
# BB#6:                                 # %if.end.4
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	movq	%rbp, 72(%rsp)          # 8-byte Spill
	testq	%r12, %r12
	je	.LBB11_11
# BB#7:                                 # %land.lhs.true
	xorl	%ebp, %ebp
	cmpl	$0, (%r12)
	movl	$0, %esi
	jne	.LBB11_62
# BB#8:                                 # %land.lhs.true.6
	xorl	%ebp, %ebp
	cmpl	$0, 4(%r12)
	movl	$0, %esi
	jne	.LBB11_62
# BB#9:                                 # %land.lhs.true.9
	movl	8(%r12), %eax
	xorl	%ebp, %ebp
	cmpl	32(%r15), %eax
	movl	$0, %esi
	jne	.LBB11_62
# BB#10:                                # %land.lhs.true.12
	movl	12(%r12), %eax
	xorl	%ebp, %ebp
	cmpl	36(%r15), %eax
	movl	$0, %esi
	jne	.LBB11_62
.LBB11_11:                              # %if.end.17
	xorl	%ebp, %ebp
	cmpl	$1, 568(%r15)
	movl	$0, %esi
	ja	.LBB11_62
# BB#12:                                # %sw.epilog
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	%rbx, 24(%rax)
	movq	$0, 568(%rax)
	cmpl	$0, 584(%r15)
	je	.LBB11_14
# BB#13:
	xorl	%eax, %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movl	$-1, 68(%rsp)           # 4-byte Folded Spill
	movl	$1, 64(%rsp)            # 4-byte Folded Spill
.LBB11_27:                              # %if.end.58
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	%rax, 48(%rsp)          # 8-byte Spill
.LBB11_33:                              # %if.end.58
	movss	.LCPI11_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	ucomiss	9360(%r13), %xmm0
	jbe	.LBB11_38
# BB#34:                                # %land.lhs.true.63
	cmpl	$0, 584(%r15)
	jne	.LBB11_38
# BB#35:                                # %if.then.66
	xorl	%ebp, %ebp
	movq	48(%rsp), %rax          # 8-byte Reload
	cmpq	88(%rsp), %rax          # 8-byte Folded Reload
	jne	.LBB11_36
# BB#37:                                # %if.then.66
	cmpl	$8, 40(%r15)
	movl	$0, %esi
	jg	.LBB11_62
.LBB11_38:                              # %if.end.75
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	%rax, 24(%rsp)
	movq	%rbx, 8(%rsp)
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$psw_image_enum_procs, 16(%rsp)
	movq	%r13, %rdi
	movq	120(%rsp), %rsi         # 8-byte Reload
	movq	%r15, %rdx
	movl	116(%rsp), %ecx         # 4-byte Reload
	movq	%r12, %r8
	movq	104(%rsp), %r9          # 8-byte Reload
	callq	gdev_vector_begin_image
	xorl	%ebp, %ebp
	testl	%eax, %eax
	movl	$0, %esi
	js	.LBB11_62
# BB#39:                                # %if.end.80
	testl	%r14d, %r14d
	je	.LBB11_43
# BB#40:                                # %if.then.82
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	596(%rax), %r14d
	addl	$7, %r14d
	shrl	$3, %r14d
	imull	588(%rax), %r14d
	addl	$10, %r14d
	movl	$.L.str.102, %edx
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	*64(%rbx)
	movq	%rax, %rbp
	movq	%rbp, 56(%rsp)          # 8-byte Spill
	movl	$.L.str.103, %esi
	movq	%rbx, %rdi
	callq	s_alloc
	testq	%rbp, %rbp
	je	.LBB11_42
# BB#41:                                # %if.then.82
	testq	%rax, %rax
	je	.LBB11_42
# BB#61:                                # %if.then.99
	movq	%rax, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rsi
	callq	s_init
	movq	%rbp, %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	movl	%r14d, %edx
	callq	swrite_string
	movq	5848(%r13), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	%rbp, 5848(%r13)
	movl	8852(%r13), %r14d
	movl	$1, 8852(%r13)
	movq	9392(%r13), %rsi
	movq	%r13, %rdi
	callq	psdf_begin_binary
	movq	%rbp, %rsi
	movq	56(%rsp), %rbp          # 8-byte Reload
	movl	%r14d, 8852(%r13)
	testl	%eax, %eax
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	%rax, 5848(%r13)
	movl	$.L.str.77, %ecx
	jns	.LBB11_45
	jmp	.LBB11_62
.LBB11_14:                              # %if.else
	movq	88(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	callq	gs_color_space_get_index
	movl	%eax, 68(%rsp)          # 4-byte Spill
	movq	%rbp, %rdi
	callq	gs_color_space_num_components
	movl	%eax, 64(%rsp)          # 4-byte Spill
	xorl	%ebp, %ebp
	cmpl	$0, 572(%r15)
	movl	$0, %esi
	jne	.LBB11_62
# BB#15:                                # %if.end.25
	xorl	%esi, %esi
	cmpl	$3, 68(%rsp)            # 4-byte Folded Reload
	jae	.LBB11_16
# BB#25:                                # %for.cond.preheader
	movl	64(%rsp), %eax          # 4-byte Reload
	testl	%eax, %eax
	jle	.LBB11_26
# BB#29:                                # %for.body.lr.ph
	addl	%eax, %eax
	cltq
	xorl	%ebp, %ebp
	xorl	%ecx, %ecx
.LBB11_30:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	44(%r15,%rcx,4), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movl	%ecx, %edx
	andl	$1, %edx
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%edx, %xmm1
	ucomiss	%xmm1, %xmm0
	movl	$0, %esi
	jne	.LBB11_62
	jnp	.LBB11_28
	jmp	.LBB11_62
.LBB11_28:                              # %for.cond
                                        #   in Loop: Header=BB11_30 Depth=1
	incq	%rcx
	cmpq	%rax, %rcx
	jl	.LBB11_30
.LBB11_26:
	xorl	%eax, %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	jmp	.LBB11_27
.LBB11_42:                              # %if.else.92
	movl	$.L.str.103, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	*24(%rbx)
	movl	$.L.str.102, %edx
	movq	%rbx, %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rbx)
.LBB11_43:                              # %if.end.105
	xorl	%esi, %esi
	movq	%r13, %rdi
	callq	psw_image_stream_setup
	xorl	%ebp, %ebp
	testl	%eax, %eax
	movl	$0, %esi
	js	.LBB11_62
# BB#44:                                # %if.end.105.if.end.109_crit_edge
	movl	$.L.str.78, %eax
	movl	$.L.str.77, %ecx
	cmovneq	%rax, %rcx
	xorl	%ebp, %ebp
	xorl	%esi, %esi
.LBB11_45:                              # %if.end.109
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	%rsi, 104(%rsp)         # 8-byte Spill
	movq	%rbp, 56(%rsp)          # 8-byte Spill
	movq	%r13, %rdi
	movq	80(%rsp), %rsi          # 8-byte Reload
	callq	gdev_vector_update_clip_path
	movq	%r13, %rdi
	callq	gdev_vector_stream
	movq	%rax, %r12
	movl	$.L.str.94, %esi
	movq	%r12, %rdi
	callq	stream_puts
	leaq	128(%rsp), %r14
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	*1152(%r13)
	movss	884(%r13), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	888(%r13), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm3
	movsd	.LCPI11_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm0
	divsd	%xmm3, %xmm0
	cvtss2sd	%xmm2, %xmm2
	divsd	%xmm2, %xmm1
	movq	%r14, %rdi
	movq	%r14, %rsi
	callq	gs_matrix_scale
	movq	%r14, %rdi
	movq	%r14, %rsi
	callq	gs_matrix_invert
	movq	120(%rsp), %rdi         # 8-byte Reload
	addq	$132, %rdi
	movq	%r14, %rsi
	movq	%r14, %rdx
	callq	gs_matrix_multiply
	movss	128(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	132(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	movss	136(%rsp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	movss	140(%rsp), %xmm3        # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	movss	144(%rsp), %xmm4        # xmm4 = mem[0],zero,zero,zero
	cvtss2sd	%xmm4, %xmm4
	movss	148(%rsp), %xmm5        # xmm5 = mem[0],zero,zero,zero
	cvtss2sd	%xmm5, %xmm5
	movl	$.L.str.98, %esi
	movq	%r12, %rdi
	callq	pprintg6
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	584(%rax), %edx
	movl	588(%rax), %ecx
	movq	%rax, %r13
	movl	$.L.str.104, %esi
	movq	%r12, %rdi
	callq	pprintd2
	cmpl	$0, 584(%r15)
	je	.LBB11_49
# BB#46:                                # %if.then.128
	movss	44(%r15), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movl	$.L.str.105, %esi
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB11_47
	jnp	.LBB11_48
.LBB11_47:                              # %select.mid
	movl	$.L.str.106, %esi
.LBB11_48:                              # %select.end
	movq	%r12, %rdi
	callq	stream_puts
	movss	8(%r15), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	12(%r15), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	movss	16(%r15), %xmm2         # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	movss	20(%r15), %xmm3         # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	movss	24(%r15), %xmm4         # xmm4 = mem[0],zero,zero,zero
	cvtss2sd	%xmm4, %xmm4
	movss	28(%r15), %xmm5         # xmm5 = mem[0],zero,zero,zero
	cvtss2sd	%xmm5, %xmm5
	movl	$.L.str.98, %esi
	movq	%r12, %rdi
	callq	pprintg6
	movq	%r12, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	callq	stream_puts
	movl	$.L.str.107, %r14d
	jmp	.LBB11_59
.LBB11_49:                              # %if.else.136
	movl	40(%r15), %edx
	movl	$.L.str.108, %esi
	movq	%r12, %rdi
	callq	pprintd1
	movss	8(%r15), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	12(%r15), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	movss	16(%r15), %xmm2         # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	movss	20(%r15), %xmm3         # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	movss	24(%r15), %xmm4         # xmm4 = mem[0],zero,zero,zero
	cvtss2sd	%xmm4, %xmm4
	movss	28(%r15), %xmm5         # xmm5 = mem[0],zero,zero,zero
	cvtss2sd	%xmm5, %xmm5
	movl	$.L.str.98, %esi
	movq	%r12, %rdi
	callq	pprintg6
	movq	88(%rsp), %r14          # 8-byte Reload
	cmpq	%r14, 48(%rsp)          # 8-byte Folded Reload
	je	.LBB11_53
# BB#50:                                # %if.then.142
	movl	$.L.str.109, %esi
	movq	%r12, %rdi
	movq	40(%rsp), %rdx          # 8-byte Reload
	callq	pprints1
	movl	72(%r14), %edx
	movl	$.L.str.110, %esi
	movq	%r12, %rdi
	callq	pprintd1
	movq	80(%r14), %rsi
	movl	88(%r14), %edx
	movl	$2, %ecx
	movq	%r12, %rdi
	callq	s_write_ps_string
	cvttss2si	48(%r15), %edx
	movl	$.L.str.111, %esi
	movq	%r12, %rdi
	callq	pprintd1
	movl	$.L.str.106, %edx
	cmpl	$0, 564(%r15)
	jne	.LBB11_52
# BB#51:                                # %select.mid242
	movl	$.L.str.105, %edx
.LBB11_52:                              # %select.end241
	movl	$.L.str.112, %esi
	movq	%r12, %rdi
	movq	32(%rsp), %rcx          # 8-byte Reload
	callq	pprints2
	movl	$.L.str.113, %r14d
	jmp	.LBB11_59
.LBB11_16:                              # %if.end.25
	cmpl	$10, 68(%rsp)           # 4-byte Folded Reload
	movl	$0, %ebp
	jne	.LBB11_62
# BB#17:                                # %sw.bb.26
	xorl	%ebp, %ebp
	movss	.LCPI11_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	ucomiss	9360(%r13), %xmm0
	movl	$0, %esi
	ja	.LBB11_62
# BB#18:                                # %lor.lhs.false
	xorl	%ebp, %ebp
	movq	88(%rsp), %rax          # 8-byte Reload
	cmpl	$0, 96(%rax)
	movl	$0, %esi
	jne	.LBB11_62
# BB#19:                                # %lor.lhs.false.29
	movss	44(%r15), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorl	%ebp, %ebp
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	movl	$0, %esi
	jne	.LBB11_62
	jp	.LBB11_62
# BB#20:                                # %lor.lhs.false.31
	movss	48(%r15), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movb	40(%r15), %cl
	movl	$1, %eax
	shll	%cl, %eax
	decl	%eax
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	xorl	%ebp, %ebp
	ucomiss	%xmm1, %xmm0
	movl	$0, %esi
	jne	.LBB11_62
	jp	.LBB11_62
# BB#21:                                # %if.end.37
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	40(%rax), %rdi
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movl	$.L.str.100, %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	callq	gs_color_space_get_index
	movl	$10, 68(%rsp)           # 4-byte Folded Spill
	testl	%eax, %eax
	je	.LBB11_33
# BB#22:                                # %if.end.37
	cmpl	$2, %eax
	jne	.LBB11_23
# BB#31:                                # %sw.bb.41
	movl	$.L.str.101, %eax
	jmp	.LBB11_32
.LBB11_53:                              # %if.else.160
	cmpl	$0, 68(%rsp)            # 4-byte Folded Reload
	je	.LBB11_54
# BB#55:                                # %if.else.165
	cmpl	$0, 116(%rsp)           # 4-byte Folded Reload
	je	.LBB11_56
# BB#57:                                # %if.else.170
	movq	%r12, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	callq	stream_puts
	movl	40(%r15), %edx
	imull	32(%r15), %edx
	addl	$7, %edx
	sarl	$3, %edx
	movl	$.L.str.116, %esi
	movq	%r12, %rdi
	movl	64(%rsp), %ebp          # 4-byte Reload
	movl	%ebp, %ecx
	callq	pprintd2
	jmp	.LBB11_58
.LBB11_36:
	xorl	%esi, %esi
.LBB11_62:                              # %fail
	movl	$.L.str.103, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movl	$.L.str.102, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	*24(%rbx)
	movl	$.L.str.99, %edx
	movq	%rbx, %rdi
	movq	96(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rbx)
	movq	%r13, %rdi
	movq	120(%rsp), %rsi         # 8-byte Reload
	movq	%r15, %rdx
	movl	116(%rsp), %ecx         # 4-byte Reload
	movq	%r12, %r8
	movq	104(%rsp), %r9          # 8-byte Reload
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gx_default_begin_image  # TAILCALL
.LBB11_54:                              # %if.then.163
	movq	%r12, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	callq	stream_puts
	movl	$.L.str.114, %r14d
	jmp	.LBB11_59
.LBB11_56:                              # %if.then.168
	movl	$.L.str.115, %esi
	movq	%r12, %rdi
	movq	32(%rsp), %rdx          # 8-byte Reload
	callq	pprints1
	movl	64(%rsp), %ebp          # 4-byte Reload
.LBB11_58:                              # %if.end.178
	movl	$.L.str.117, %esi
	movq	%r12, %rdi
	movl	%ebp, %edx
	callq	pprintd1
	movl	$.L.str.118, %r14d
.LBB11_59:                              # %if.end.182
	movl	$10, %esi
	movq	%r12, %rdi
	callq	spputc
	movq	104(%rsp), %rbp         # 8-byte Reload
	testq	%rbp, %rbp
	movq	%r12, %rdi
	cmovneq	%rbp, %rdi
	movl	$.L.str.92, %esi
	movq	%r14, %rdx
	callq	pprints1
	movzwl	152(%r12), %eax
	cmpl	$65534, %eax            # imm = 0xFFFE
	jne	.LBB11_63
# BB#60:                                # %cleanup.198
	movl	$.L.str.103, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	*24(%rbx)
	movl	$.L.str.102, %edx
	movq	%rbx, %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rbx)
	movl	$.L.str.99, %edx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	*24(%rbx)
	movl	$-12, %eax
	jmp	.LBB11_64
.LBB11_63:                              # %cleanup.cont.203
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	%r13, (%rax)
	xorl	%eax, %eax
.LBB11_64:                              # %cleanup.211
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_23:                              # %if.end.37
	cmpl	$1, %eax
	movl	$0, %ebp
	movl	$0, %esi
	jne	.LBB11_62
# BB#24:                                # %sw.bb.40
	movl	$.L.str.1, %eax
.LBB11_32:                              # %if.end.58
	movq	%rax, 40(%rsp)          # 8-byte Spill
	jmp	.LBB11_33
.Lfunc_end11:
	.size	psw_begin_image, .Lfunc_end11-psw_begin_image
	.cfi_endproc

	.align	16, 0x90
	.type	psw_beginpage,@function
psw_beginpage:                          # @psw_beginpage
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp110:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp111:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp112:
	.cfi_def_cfa_offset 32
.Ltmp113:
	.cfi_offset %rbx, -32
.Ltmp114:
	.cfi_offset %r14, -24
.Ltmp115:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	5848(%rbx), %r14
	testq	%r14, %r14
	je	.LBB12_1
# BB#3:                                 # %if.end
	cmpl	$0, 9384(%rbx)
	jne	.LBB12_4
	jmp	.LBB12_5
.LBB12_1:                               # %if.end.i
	movl	$512, %esi              # imm = 0x200
	movl	$12, %edx
	movq	%rbx, %rdi
	callq	gdev_vector_open_file_options
	testl	%eax, %eax
	js	.LBB12_9
# BB#2:                                 # %if.end.thread
	movl	$1, 9384(%rbx)
	movq	5848(%rbx), %r14
.LBB12_4:                               # %if.then.1
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	psw_begin_file
	testl	%eax, %eax
	js	.LBB12_9
.LBB12_5:                               # %if.end.6
	leaq	9360(%rbx), %r15
	leaq	1744(%rbx), %rdi
	movq	24(%rbx), %rsi
	callq	gx_outputfile_is_separate_pages
	movl	$1, %r8d
	testl	%eax, %eax
	jne	.LBB12_7
# BB#6:                                 # %cond.false
	movq	928(%rbx), %r8
	incq	%r8
.LBB12_7:                               # %cond.end
	movl	$1, %ecx
	movl	$197, %r9d
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	psw_write_page_header
	testl	%eax, %eax
	js	.LBB12_9
# BB#8:                                 # %if.end.12
	movq	$-1, 12576(%rbx)
	xorl	%eax, %eax
.LBB12_9:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end12:
	.size	psw_beginpage, .Lfunc_end12-psw_beginpage
	.cfi_endproc

	.align	16, 0x90
	.type	psw_can_handle_hl_color,@function
psw_can_handle_hl_color:                # @psw_can_handle_hl_color
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end13:
	.size	psw_can_handle_hl_color, .Lfunc_end13-psw_can_handle_hl_color
	.cfi_endproc

	.align	16, 0x90
	.type	psw_setcolors,@function
psw_setcolors:                          # @psw_setcolors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp116:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp117:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp118:
	.cfi_def_cfa_offset 32
.Ltmp119:
	.cfi_offset %rbx, -24
.Ltmp120:
	.cfi_offset %r14, -16
	movq	%rdx, %rbx
	movq	%rdi, %r14
	movl	$gx_dc_type_data_pure, %eax
	cmpq	%rax, (%rbx)
	je	.LBB14_1
# BB#17:                                # %cleanup.48
	movl	$-15, %eax
	jmp	.LBB14_16
.LBB14_1:                               # %if.end
	leaq	7512(%r14), %rdx
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	gx_hld_save_color
	leaq	8144(%r14), %rdx
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	gx_hld_save_color
	movq	%r14, %rdi
	callq	gdev_vector_stream
	movq	%rax, %r14
	movq	8(%rbx), %rax
	movzbl	%ah, %ecx  # NOREX
	movzbl	%al, %ebx
	shrq	$16, %rax
	cmpl	%ecx, %eax
	jne	.LBB14_6
# BB#2:                                 # %if.end
	cmpl	%ebx, %ecx
	jne	.LBB14_6
# BB#3:                                 # %if.then.11
	testl	%eax, %eax
	je	.LBB14_4
# BB#5:                                 # %if.else
	movl	$.L.str.42, %esi
	movq	%r14, %rdi
	movl	%eax, %edx
	callq	pprintd1
	jmp	.LBB14_14
.LBB14_6:                               # %if.else.18
	cmpl	%ecx, %eax
	jne	.LBB14_9
# BB#7:                                 # %if.then.21
	movl	$.L.str.43, %esi
	movq	%r14, %rdi
	movl	%ebx, %edx
	jmp	.LBB14_8
.LBB14_9:                               # %if.else.23
	cmpl	%ebx, %ecx
	jne	.LBB14_11
# BB#10:                                # %if.then.26
	movl	$.L.str.44, %esi
	movq	%r14, %rdi
	movl	%eax, %edx
	callq	pprintd2
	jmp	.LBB14_14
.LBB14_4:                               # %if.then.14
	movl	$.L.str.41, %esi
	movq	%r14, %rdi
	callq	stream_puts
	jmp	.LBB14_14
.LBB14_11:                              # %if.else.28
	cmpl	%ebx, %eax
	jne	.LBB14_13
# BB#12:                                # %if.then.31
	movl	$.L.str.45, %esi
	movq	%r14, %rdi
	movl	%ecx, %edx
.LBB14_8:                               # %if.end.38
	movl	%eax, %ecx
	callq	pprintd2
	jmp	.LBB14_14
.LBB14_13:                              # %if.else.33
	movl	$.L.str.46, %esi
	movq	%r14, %rdi
	movl	%eax, %edx
	movl	%ebx, %r8d
	callq	pprintd3
.LBB14_14:                              # %if.end.38
	movzwl	152(%r14), %ecx
	xorl	%eax, %eax
	cmpl	$65534, %ecx            # imm = 0xFFFE
	jne	.LBB14_16
# BB#15:                                # %select.mid
	movl	$-12, %eax
.LBB14_16:                              # %select.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end14:
	.size	psw_setcolors, .Lfunc_end14-psw_setcolors
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4571153621781053440     # double 0.00390625
	.text
	.align	16, 0x90
	.type	psw_dorect,@function
psw_dorect:                             # @psw_dorect
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
	pushq	%r12
.Ltmp124:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp125:
	.cfi_def_cfa_offset 48
.Ltmp126:
	.cfi_offset %rbx, -48
.Ltmp127:
	.cfi_offset %r12, -40
.Ltmp128:
	.cfi_offset %r14, -32
.Ltmp129:
	.cfi_offset %r15, -24
.Ltmp130:
	.cfi_offset %rbp, -16
	movl	%r8d, %r12d
	movl	%ecx, %ebx
	movl	%edx, %r15d
	movl	%esi, %ebp
	movq	%rdi, %r14
	movl	%r9d, %eax
	andl	$-9, %eax
	cmpl	$1, %eax
	jne	.LBB15_4
# BB#1:                                 # %if.end
	movq	%r14, %rdi
	callq	gdev_vector_stream
	cvtsi2sdl	%ebp, %xmm0
	movsd	.LCPI15_0(%rip), %xmm4  # xmm4 = mem[0],zero
	mulsd	%xmm4, %xmm0
	cvtsi2sdl	%r15d, %xmm1
	mulsd	%xmm4, %xmm1
	subl	%ebp, %ebx
	cvtsi2sdl	%ebx, %xmm2
	mulsd	%xmm4, %xmm2
	subl	%r15d, %r12d
	cvtsi2sdl	%r12d, %xmm3
	mulsd	%xmm4, %xmm3
	movl	$.L.str.47, %esi
	movq	%rax, %rdi
	callq	pprintg4
	movq	%r14, %rdi
	callq	gdev_vector_stream
	movzwl	152(%rax), %ecx
	movl	$-12, %eax
	cmpl	$65534, %ecx            # imm = 0xFFFE
	je	.LBB15_3
# BB#2:                                 # %select.mid
	xorl	%eax, %eax
.LBB15_3:                               # %return
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB15_4:                               # %if.then
	movq	%r14, %rdi
	movl	%ebp, %esi
	movl	%r15d, %edx
	movl	%ebx, %ecx
	movl	%r12d, %r8d
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	psdf_dorect             # TAILCALL
.Lfunc_end15:
	.size	psw_dorect, .Lfunc_end15-psw_dorect
	.cfi_endproc

	.align	16, 0x90
	.type	psw_beginpath,@function
psw_beginpath:                          # @psw_beginpath
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp131:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp132:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp133:
	.cfi_def_cfa_offset 32
.Ltmp134:
	.cfi_offset %rbx, -24
.Ltmp135:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	testb	$3, %bpl
	je	.LBB16_6
# BB#1:                                 # %do.body
	movq	12576(%rbx), %r9
	cmpq	$-1, %r9
	je	.LBB16_6
# BB#2:                                 # %if.then.i
	movl	12560(%rbx), %esi
	movl	12568(%rbx), %ecx
	subl	%esi, %ecx
	je	.LBB16_4
# BB#3:                                 # %land.lhs.true.i
	movl	12564(%rbx), %edx
	movl	12572(%rbx), %r8d
	subl	%edx, %r8d
	jne	.LBB16_5
.LBB16_4:                               # %psw_check_erasepage.exit.thread16
	movq	$-1, 12576(%rbx)
	jmp	.LBB16_6
.LBB16_5:                               # %psw_check_erasepage.exit
	movq	%rbx, %rdi
	callq	gdev_vector_fill_rectangle
	movq	$-1, 12576(%rbx)
	testl	%eax, %eax
	js	.LBB16_9
.LBB16_6:                               # %if.end.2
	movq	$0, 12584(%rbx)
	testb	$4, %bpl
	je	.LBB16_8
# BB#7:                                 # %if.then.6
	movq	%rbx, %rdi
	callq	gdev_vector_stream
	movq	%rax, %rbp
	movl	$.L.str.48, %esi
	movq	%rbp, %rdi
	callq	stream_puts
	movq	%rbx, %rdi
	callq	gdev_vector_reset
	movzwl	152(%rbp), %ecx
	movl	$-12, %eax
	cmpl	$65534, %ecx            # imm = 0xFFFE
	je	.LBB16_9
.LBB16_8:                               # %if.end.16
	xorl	%eax, %eax
.LBB16_9:                               # %cleanup.17
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end16:
	.size	psw_beginpath, .Lfunc_end16-psw_beginpath
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4636737291354636288     # double 100
.LCPI17_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	psw_moveto,@function
psw_moveto:                             # @psw_moveto
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp136:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp137:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp138:
	.cfi_def_cfa_offset 48
.Ltmp139:
	.cfi_offset %rbx, -24
.Ltmp140:
	.cfi_offset %r14, -16
	movsd	%xmm3, 16(%rsp)         # 8-byte Spill
	movsd	%xmm2, 8(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	callq	gdev_vector_stream
	movq	%rax, %r14
	movl	12588(%rbx), %eax
	cmpl	%eax, 12584(%rbx)
	jle	.LBB17_2
# BB#1:                                 # %if.then
	testl	%eax, %eax
	movl	$.L.str.49, %eax
	movl	$.L.str.50, %esi
	cmovneq	%rax, %rsi
	jmp	.LBB17_4
.LBB17_2:                               # %if.else
	testl	%eax, %eax
	je	.LBB17_5
# BB#3:                                 # %if.then.8
	movl	$.L.str.51, %esi
.LBB17_4:                               # %if.end.10
	movq	%r14, %rdi
	callq	stream_puts
.LBB17_5:                               # %if.end.10
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	.LCPI17_0(%rip), %xmm0
	addsd	.LCPI17_1(%rip), %xmm0
	callq	floor
	movsd	.LCPI17_0(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	addsd	.LCPI17_1(%rip), %xmm0
	callq	floor
	movapd	%xmm0, %xmm1
	divsd	.LCPI17_0(%rip), %xmm1
	movl	$.L.str.52, %esi
	movq	%r14, %rdi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	pprintg2
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, 12584(%rbx)
	movzwl	152(%r14), %ecx
	movl	$-12, %eax
	cmpl	$65534, %ecx            # imm = 0xFFFE
	je	.LBB17_7
# BB#6:                                 # %select.mid
	xorl	%eax, %eax
.LBB17_7:                               # %select.end
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end17:
	.size	psw_moveto, .Lfunc_end17-psw_moveto
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI18_0:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_1:
	.quad	4636737291354636288     # double 100
.LCPI18_2:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	psw_lineto,@function
psw_lineto:                             # @psw_lineto
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp141:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp142:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp143:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp144:
	.cfi_def_cfa_offset 64
.Ltmp145:
	.cfi_offset %rbx, -32
.Ltmp146:
	.cfi_offset %r14, -24
.Ltmp147:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	subsd	%xmm0, %xmm2
	subsd	%xmm1, %xmm3
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm3
	jne	.LBB18_3
	jp	.LBB18_3
# BB#1:                                 # %entry
	ucomisd	%xmm0, %xmm2
	jne	.LBB18_3
	jp	.LBB18_3
# BB#2:                                 # %entry
	andl	$2, %esi
	je	.LBB18_16
.LBB18_3:                               # %if.then
	movsd	%xmm2, 16(%rsp)         # 8-byte Spill
	movsd	%xmm3, 24(%rsp)         # 8-byte Spill
	movq	%rbx, %rdi
	callq	gdev_vector_stream
	movq	%rax, %r14
	movl	12584(%rbx), %eax
	cmpl	$241, %eax
	jl	.LBB18_7
# BB#4:                                 # %if.then.5
	movl	$.L.str.49, %esi
	cmpl	$0, 12588(%rbx)
	jne	.LBB18_6
# BB#5:                                 # %select.mid
	movl	$.L.str.50, %esi
.LBB18_6:                               # %select.end
	movq	%r14, %rdi
	callq	stream_puts
	movq	$0, 12584(%rbx)
	xorl	%eax, %eax
	jmp	.LBB18_10
.LBB18_7:                               # %if.else
	testl	%eax, %eax
	jle	.LBB18_10
# BB#8:                                 # %if.else
	movl	%eax, %ecx
	andl	$7, %ecx
	jne	.LBB18_10
# BB#9:                                 # %if.then.20
	movl	$10, %esi
	movq	%r14, %rdi
	callq	spputc
	movl	12584(%rbx), %eax
.LBB18_10:                              # %if.end.22
	subl	12588(%rbx), %eax
	leaq	12608(%rbx), %r15
	cmpl	$2, %eax
	movsd	16(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	jl	.LBB18_14
# BB#11:                                # %land.lhs.true.29
	movsd	(%r15), %xmm0           # xmm0 = mem[0],zero
	xorpd	.LCPI18_0(%rip), %xmm0
	ucomisd	%xmm0, %xmm2
	jne	.LBB18_14
	jp	.LBB18_14
# BB#12:                                # %land.lhs.true.34
	movsd	12616(%rbx), %xmm0      # xmm0 = mem[0],zero
	xorpd	.LCPI18_0(%rip), %xmm0
	movsd	24(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB18_14
	jp	.LBB18_14
# BB#13:                                # %if.then.41
	movl	$.L.str.53, %esi
	movq	%r14, %rdi
	callq	stream_puts
	jmp	.LBB18_15
.LBB18_14:                              # %if.else.43
	movapd	%xmm2, %xmm0
	mulsd	.LCPI18_1(%rip), %xmm0
	addsd	.LCPI18_2(%rip), %xmm0
	callq	floor
	movsd	.LCPI18_1(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	addsd	.LCPI18_2(%rip), %xmm0
	callq	floor
	movapd	%xmm0, %xmm1
	divsd	.LCPI18_1(%rip), %xmm1
	movl	$.L.str.52, %esi
	movq	%r14, %rdi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	pprintg2
.LBB18_15:                              # %if.end.44
	movsd	16(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	24(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	incl	12584(%rbx)
	movupd	12592(%rbx), %xmm0
	movupd	%xmm0, (%r15)
	movsd	%xmm2, 12592(%rbx)
	movsd	%xmm1, 12600(%rbx)
	movzwl	152(%r14), %ecx
	movl	$-12, %eax
	cmpl	$65534, %ecx            # imm = 0xFFFE
	je	.LBB18_17
.LBB18_16:                              # %if.end.66
	xorl	%eax, %eax
.LBB18_17:                              # %cleanup.67
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end18:
	.size	psw_lineto, .Lfunc_end18-psw_lineto
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_0:
	.quad	4636737291354636288     # double 100
.LCPI19_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	psw_curveto,@function
psw_curveto:                            # @psw_curveto
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp148:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp149:
	.cfi_def_cfa_offset 24
	subq	$88, %rsp
.Ltmp150:
	.cfi_def_cfa_offset 112
.Ltmp151:
	.cfi_offset %rbx, -24
.Ltmp152:
	.cfi_offset %r14, -16
	movsd	%xmm7, 40(%rsp)         # 8-byte Spill
	movsd	%xmm6, 56(%rsp)         # 8-byte Spill
	movsd	%xmm5, 32(%rsp)         # 8-byte Spill
	movsd	%xmm4, 48(%rsp)         # 8-byte Spill
	movsd	%xmm3, 72(%rsp)         # 8-byte Spill
	movsd	%xmm2, 80(%rsp)         # 8-byte Spill
	movsd	%xmm1, 24(%rsp)         # 8-byte Spill
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	movq	%rdi, %r14
	callq	gdev_vector_stream
	movsd	80(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	%rax, %rbx
	subsd	64(%rsp), %xmm0         # 8-byte Folded Reload
	movl	12584(%r14), %eax
	testl	%eax, %eax
	jle	.LBB19_4
# BB#1:                                 # %if.then
	movsd	%xmm0, 80(%rsp)         # 8-byte Spill
	cmpl	$1, %eax
	movl	$.L.str.54, %ecx
	movl	$.L.str.49, %eax
	cmoveq	%rcx, %rax
	cmpl	$0, 12588(%r14)
	movl	$.L.str.50, %esi
	je	.LBB19_3
# BB#2:                                 # %select.mid
	movq	%rax, %rsi
.LBB19_3:                               # %select.end
	movq	%rbx, %rdi
	callq	stream_puts
	movsd	80(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB19_4:                               # %if.end
	movsd	72(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	24(%rsp), %xmm4         # 8-byte Reload
                                        # xmm4 = mem[0],zero
	subsd	%xmm4, %xmm1
	movsd	48(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	64(%rsp), %xmm5         # 8-byte Reload
                                        # xmm5 = mem[0],zero
	subsd	%xmm5, %xmm3
	movsd	32(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	subsd	%xmm4, %xmm2
	movsd	%xmm2, 80(%rsp)         # 8-byte Spill
	movsd	56(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	subsd	%xmm5, %xmm2
	movsd	%xmm2, 16(%rsp)         # 8-byte Spill
	movsd	40(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	subsd	%xmm4, %xmm2
	movsd	%xmm2, 64(%rsp)         # 8-byte Spill
	xorpd	%xmm2, %xmm2
	ucomisd	%xmm2, %xmm0
	jne	.LBB19_7
	jp	.LBB19_7
# BB#5:                                 # %if.end
	ucomisd	%xmm2, %xmm1
	jne	.LBB19_7
	jp	.LBB19_7
# BB#6:                                 # %if.then.14
	mulsd	.LCPI19_0(%rip), %xmm3
	addsd	.LCPI19_1(%rip), %xmm3
	movapd	%xmm3, %xmm0
	callq	floor
	movsd	.LCPI19_0(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 72(%rsp)         # 8-byte Spill
	movsd	80(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	addsd	.LCPI19_1(%rip), %xmm0
	callq	floor
	movapd	%xmm0, %xmm1
	divsd	.LCPI19_0(%rip), %xmm1
	movl	$.L.str.52, %esi
	movq	%rbx, %rdi
	movsd	72(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	pprintg2
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	.LCPI19_0(%rip), %xmm0
	addsd	.LCPI19_1(%rip), %xmm0
	callq	floor
	movsd	.LCPI19_0(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 80(%rsp)         # 8-byte Spill
	movsd	64(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	addsd	.LCPI19_1(%rip), %xmm0
	callq	floor
	movapd	%xmm0, %xmm1
	divsd	.LCPI19_0(%rip), %xmm1
	movl	$.L.str.52, %esi
	movq	%rbx, %rdi
	movsd	80(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	pprintg2
	movl	$.L.str.55, %esi
	jmp	.LBB19_11
.LBB19_7:                               # %if.else
	mulsd	.LCPI19_0(%rip), %xmm0
	addsd	.LCPI19_1(%rip), %xmm0
	movsd	%xmm1, 72(%rsp)         # 8-byte Spill
	movsd	%xmm3, 24(%rsp)         # 8-byte Spill
	callq	floor
	movsd	.LCPI19_0(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movsd	72(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	addsd	.LCPI19_1(%rip), %xmm0
	callq	floor
	movapd	%xmm0, %xmm1
	divsd	.LCPI19_0(%rip), %xmm1
	movl	$.L.str.52, %esi
	movq	%rbx, %rdi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	pprintg2
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	.LCPI19_0(%rip), %xmm0
	addsd	.LCPI19_1(%rip), %xmm0
	callq	floor
	movsd	.LCPI19_0(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 72(%rsp)         # 8-byte Spill
	movsd	80(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	addsd	.LCPI19_1(%rip), %xmm0
	callq	floor
	movapd	%xmm0, %xmm1
	divsd	.LCPI19_0(%rip), %xmm1
	movl	$.L.str.52, %esi
	movq	%rbx, %rdi
	movsd	72(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	pprintg2
	movsd	56(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	48(%rsp), %xmm0         # 8-byte Folded Reload
	jne	.LBB19_10
	jp	.LBB19_10
# BB#8:                                 # %if.else
	movsd	40(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	32(%rsp), %xmm0         # 8-byte Folded Reload
	jne	.LBB19_10
	jp	.LBB19_10
# BB#9:                                 # %if.then.18
	movl	$.L.str.56, %esi
	jmp	.LBB19_11
.LBB19_10:                              # %if.else.19
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI19_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	.LCPI19_1(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	callq	floor
	movsd	.LCPI19_0(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 80(%rsp)         # 8-byte Spill
	movsd	64(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	addsd	.LCPI19_1(%rip), %xmm0
	callq	floor
	movapd	%xmm0, %xmm1
	divsd	.LCPI19_0(%rip), %xmm1
	movl	$.L.str.52, %esi
	movq	%rbx, %rdi
	movsd	80(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	pprintg2
	movl	$.L.str.57, %esi
.LBB19_11:                              # %if.end.21
	movq	%rbx, %rdi
	callq	stream_puts
	movq	$0, 12584(%r14)
	movzwl	152(%rbx), %ecx
	movl	$-12, %eax
	cmpl	$65534, %ecx            # imm = 0xFFFE
	je	.LBB19_13
# BB#12:                                # %select.mid91
	xorl	%eax, %eax
.LBB19_13:                              # %select.end90
	addq	$88, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end19:
	.size	psw_curveto, .Lfunc_end19-psw_curveto
	.cfi_endproc

	.align	16, 0x90
	.type	psw_closepath,@function
psw_closepath:                          # @psw_closepath
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp153:
	.cfi_def_cfa_offset 16
.Ltmp154:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	gdev_vector_stream
	movl	$.L.str.59, %esi
	cmpl	$0, 12584(%rbx)
	jle	.LBB20_3
# BB#1:                                 # %land.rhs
	movl	$.L.str.58, %esi
	cmpl	$0, 12588(%rbx)
	jne	.LBB20_3
# BB#2:                                 # %select.mid
	movl	$.L.str.59, %esi
.LBB20_3:                               # %land.end
	movq	%rax, %rdi
	callq	stream_puts
	movq	$0, 12584(%rbx)
	movq	%rbx, %rdi
	callq	gdev_vector_stream
	movzwl	152(%rax), %ecx
	movl	$-12, %eax
	cmpl	$65534, %ecx            # imm = 0xFFFE
	je	.LBB20_5
# BB#4:                                 # %select.mid17
	xorl	%eax, %eax
.LBB20_5:                               # %select.end16
	popq	%rbx
	retq
.Lfunc_end20:
	.size	psw_closepath, .Lfunc_end20-psw_closepath
	.cfi_endproc

	.align	16, 0x90
	.type	psw_endpath,@function
psw_endpath:                            # @psw_endpath
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp155:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp156:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp157:
	.cfi_def_cfa_offset 32
.Ltmp158:
	.cfi_offset %rbx, -32
.Ltmp159:
	.cfi_offset %r14, -24
.Ltmp160:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	5848(%rdi), %r14
	movl	$.L.str.60, %eax
	movl	$.L.str.61, %ebx
	testb	$8, %bpl
	cmovneq	%rax, %rbx
	cmpl	$0, 12584(%rdi)
	jle	.LBB21_3
# BB#1:                                 # %land.lhs.true
	cmpl	$0, 12588(%rdi)
	jne	.LBB21_3
# BB#2:                                 # %if.then
	movl	$.L.str.62, %esi
	movq	%r14, %rdi
	callq	stream_puts
.LBB21_3:                               # %if.end
	testb	$1, %bpl
	je	.LBB21_8
# BB#4:                                 # %if.then.5
	testb	$6, %bpl
	je	.LBB21_6
# BB#5:                                 # %if.then.8
	movl	$.L.str.63, %esi
	jmp	.LBB21_7
.LBB21_6:                               # %if.else
	movl	$.L.str.64, %esi
.LBB21_7:                               # %if.end.12
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	pprints1
.LBB21_8:                               # %if.end.12
	movb	%bpl, %al
	andl	$4, %ebp
	testb	$2, %al
	jne	.LBB21_9
# BB#12:                                # %if.end.23
	testl	%ebp, %ebp
	je	.LBB21_14
	jmp	.LBB21_13
.LBB21_9:                               # %if.then.15
	testl	%ebp, %ebp
	jne	.LBB21_10
# BB#11:                                # %if.end.23.thread
	movl	$.L.str.66, %esi
	movq	%r14, %rdi
	callq	stream_puts
	jmp	.LBB21_14
.LBB21_10:                              # %if.end.23.thread17
	movl	$.L.str.65, %esi
	movq	%r14, %rdi
	callq	stream_puts
.LBB21_13:                              # %if.then.26
	movl	$.L.str.67, %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	pprints1
.LBB21_14:                              # %if.end.28
	movzwl	152(%r14), %ecx
	movl	$-12, %eax
	cmpl	$65534, %ecx            # imm = 0xFFFE
	je	.LBB21_16
# BB#15:                                # %select.mid
	xorl	%eax, %eax
.LBB21_16:                              # %select.end
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end21:
	.size	psw_endpath, .Lfunc_end21-psw_endpath
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI22_0:
	.long	1069547520              # float 1.5
	.text
	.align	16, 0x90
	.type	psw_begin_file,@function
psw_begin_file:                         # @psw_begin_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp161:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp162:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp163:
	.cfi_def_cfa_offset 32
.Ltmp164:
	.cfi_offset %rbx, -32
.Ltmp165:
	.cfi_offset %r14, -24
.Ltmp166:
	.cfi_offset %r15, -16
	movq	%rsi, %rax
	movq	%rdi, %rdx
	movq	5840(%rdx), %r14
	leaq	9360(%rdx), %rcx
	movss	9360(%rdx), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movl	$psw_1_procset, %r15d
	movl	$psw_1_x_procset, %ebx
	movss	.LCPI22_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB22_2
# BB#1:                                 # %if.else
	ucomiss	.LCPI22_0(%rip), %xmm0
	movl	$psw_1_5_procset, %esi
	movl	$psw_1_x_procset, %ebx
	cmovaq	%rsi, %rbx
	movl	$psw_2_procset, %r15d
	cmovbeq	%rsi, %r15
.LBB22_2:                               # %if.end.9
	movl	8880(%rdx), %r8d
	movq	%r14, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	psw_begin_file_header
	testl	%eax, %eax
	js	.LBB22_8
# BB#3:                                 # %lor.lhs.false
	movl	$psw_procset, %esi
	movq	%r14, %rdi
	callq	psw_print_lines
	testl	%eax, %eax
	js	.LBB22_8
# BB#4:                                 # %lor.lhs.false.16
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	psw_print_lines
	testl	%eax, %eax
	js	.LBB22_8
# BB#5:                                 # %lor.lhs.false.20
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	psw_print_lines
	testl	%eax, %eax
	js	.LBB22_8
# BB#6:                                 # %lor.lhs.false.24
	movq	%r14, %rdi
	callq	psw_end_file_header
	testl	%eax, %eax
	js	.LBB22_8
# BB#7:                                 # %if.end.29
	movq	%r14, %rdi
	callq	fflush
	xorl	%ecx, %ecx
	cmpl	$-1, %eax
	movl	$-12, %eax
	cmovnel	%ecx, %eax
.LBB22_8:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end22:
	.size	psw_begin_file, .Lfunc_end22-psw_begin_file
	.cfi_endproc

	.align	16, 0x90
	.type	psw_close_printer,@function
psw_close_printer:                      # @psw_close_printer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp167:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp168:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp169:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp170:
	.cfi_def_cfa_offset 64
.Ltmp171:
	.cfi_offset %rbx, -32
.Ltmp172:
	.cfi_offset %r14, -24
.Ltmp173:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	5840(%rbx), %r14
	movq	8824(%rbx), %rdi
	leaq	(%rsp), %rsi
	callq	gx_device_bbox_bbox
	cmpl	$0, 9384(%rbx)
	movl	8816(%rbx), %eax
	je	.LBB23_3
# BB#1:                                 # %land.lhs.true
	testl	%eax, %eax
	jne	.LBB23_4
# BB#2:                                 # %if.then
	leaq	(%rsp), %rsi
	movq	%rbx, %rdi
	callq	psw_begin_file
	testl	%eax, %eax
	jns	.LBB23_6
	jmp	.LBB23_10
.LBB23_3:                               # %if.else
	testl	%eax, %eax
	je	.LBB23_6
.LBB23_4:                               # %if.then.5
	movq	5848(%rbx), %rdi
	callq	*208(%rdi)
	movq	5840(%rbx), %rdi
	movl	$1, %esi
	movl	$1, %edx
	callq	psw_write_page_trailer
	testl	%eax, %eax
	js	.LBB23_10
# BB#5:                                 # %if.end.11
	incq	928(%rbx)
.LBB23_6:                               # %if.end.13
	leaq	9360(%rbx), %r15
	leaq	1744(%rbx), %rdi
	movq	24(%rbx), %rsi
	callq	gx_outputfile_is_separate_pages
	movl	$1, %r8d
	testl	%eax, %eax
	jne	.LBB23_8
# BB#7:                                 # %cond.false
	movl	928(%rbx), %r8d
.LBB23_8:                               # %cond.end
	leaq	(%rsp), %rcx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	psw_end_file
	testl	%eax, %eax
	js	.LBB23_10
# BB#9:                                 # %if.end.21
	movq	%rbx, %rdi
	callq	gdev_vector_close_file
.LBB23_10:                              # %cleanup.23
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end23:
	.size	psw_close_printer, .Lfunc_end23-psw_close_printer
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI24_0:
	.long	1073741824              # float 2
	.text
	.align	16, 0x90
	.type	psw_image_write,@function
psw_image_write:                        # @psw_image_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp174:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp175:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp176:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp177:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp178:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp179:
	.cfi_def_cfa_offset 56
	subq	$504, %rsp              # imm = 0x1F8
.Ltmp180:
	.cfi_def_cfa_offset 560
.Ltmp181:
	.cfi_offset %rbx, -56
.Ltmp182:
	.cfi_offset %r12, -48
.Ltmp183:
	.cfi_offset %r13, -40
.Ltmp184:
	.cfi_offset %r14, -32
.Ltmp185:
	.cfi_offset %r15, -24
.Ltmp186:
	.cfi_offset %rbp, -16
	movq	%r9, %r15
	movl	%r8d, 52(%rsp)          # 4-byte Spill
	movl	%ecx, %r14d
	movq	%rdx, %rbp
	movq	%rsi, 64(%rsp)          # 8-byte Spill
	movq	%rdi, %r13
	movl	592(%rsp), %ebx
	movl	576(%rsp), %r12d
	callq	gdev_vector_stream
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movl	%ebx, %esi
	imull	%r12d, %esi
	movl	$-1, %eax
	testq	%r15, %r15
	je	.LBB24_1
# BB#2:                                 # %if.end.i
	movabsq	$1498212716646461045, %rcx # imm = 0x14CAB88725AF6E75
	movq	%r15, %rax
	mulq	%rcx
	shrq	$4, %rdx
	imulq	$197, %rdx, %rcx
	movq	%r15, %rax
	subq	%rcx, %rax
	movq	%rax, %rcx
	shlq	$4, %rcx
	cmpq	%r15, 9400(%r13,%rcx)
	jne	.LBB24_5
# BB#3:                                 # %land.lhs.true.i
	movzwl	9408(%r13,%rcx), %edx
	cmpl	%esi, %edx
	jne	.LBB24_5
# BB#4:                                 # %land.lhs.true.8.i
	movzwl	9410(%r13,%rcx), %ecx
	cmpl	584(%rsp), %ecx
	jne	.LBB24_5
.LBB24_1:
	movl	%r12d, %r8d
	movq	%rbp, 56(%rsp)          # 8-byte Spill
	movl	%r14d, 48(%rsp)         # 4-byte Spill
	jmp	.LBB24_9
.LBB24_5:                               # %if.end.14.i
	movl	%r12d, %r8d
	movq	%rbp, 56(%rsp)          # 8-byte Spill
	movl	%r14d, 48(%rsp)         # 4-byte Spill
	leal	121(%rax), %eax
	imulq	$1286310003, %rax, %rcx # imm = 0x4CAB8873
	shrq	$32, %rcx
	movl	%eax, %edx
	subl	%ecx, %edx
	shrl	%edx
	addl	%ecx, %edx
	shrl	$7, %edx
	imull	$197, %edx, %ecx
	subl	%ecx, %eax
	movq	%rax, %rcx
	shlq	$4, %rcx
	cmpq	%r15, 9400(%r13,%rcx)
	jne	.LBB24_8
# BB#6:                                 # %land.lhs.true.22.i
	movzwl	9408(%r13,%rcx), %edx
	cmpl	%esi, %edx
	jne	.LBB24_8
# BB#7:                                 # %land.lhs.true.27.i
	movzwl	9410(%r13,%rcx), %ecx
	cmpl	584(%rsp), %ecx
	je	.LBB24_9
.LBB24_8:                               # %if.end.33.i
	movl	$-1, %eax
.LBB24_9:                               # %image_cache_lookup.exit
	movl	568(%rsp), %r14d
	movl	560(%rsp), %r12d
	testl	%eax, %eax
	js	.LBB24_11
# BB#10:                                # %if.then
	movslq	%eax, %rcx
	imulq	$1321528399, %rcx, %rdx # imm = 0x4EC4EC4F
	movq	%rdx, %rcx
	shrq	$63, %rcx
	sarq	$35, %rdx
	addl	%ecx, %edx
	imull	$26, %edx, %ecx
	negl	%ecx
	leal	65(%rax,%rcx), %ecx
	leaq	464(%rsp), %rbp
	movl	$.L.str.73, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	gs_sprintf
	movl	$.L.str.74, %esi
	movq	72(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movl	%r12d, %edx
	movl	%r14d, %ecx
	callq	pprintd2
	movl	$.L.str.75, %esi
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	movq	64(%rsp), %rcx          # 8-byte Reload
	callq	pprints2
	movzwl	152(%rbx), %ecx
.LBB24_40:                              # %if.end.83
	movl	$-12, %eax
	cmpl	$65534, %ecx            # imm = 0xFFFE
	je	.LBB24_42
# BB#41:                                # %select.mid117
	xorl	%eax, %eax
	jmp	.LBB24_42
.LBB24_11:                              # %if.end.9
	movq	%rsi, %rbp
	movl	$.L.str.76, %esi
	movl	%r14d, %ecx
	movq	72(%rsp), %r14          # 8-byte Reload
	movq	%r14, %rdi
	movl	%r12d, %edx
	movl	%r8d, %ebx
	movl	584(%rsp), %r9d
	callq	pprintd4
	movl	8852(%r13), %eax
	testl	%eax, %eax
	sete	%cl
	movzbl	%cl, %r12d
	cmpl	$17, %ebx
	jl	.LBB24_12
# BB#13:                                # %if.end.9
	cmpl	$1, 592(%rsp)
	movq	%rbp, %rbx
	jne	.LBB24_14
# BB#15:                                # %land.lhs.true.15
	movss	9360(%r13), %xmm0       # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI24_0(%rip), %xmm0
	movl	584(%rsp), %edi
	jb	.LBB24_17
# BB#16:                                # %if.then.18
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %r12d
	orl	$2, %r12d
	jmp	.LBB24_17
.LBB24_12:
	movl	584(%rsp), %edi
	movq	%rbp, %rbx
	jmp	.LBB24_17
.LBB24_14:
	movl	584(%rsp), %edi
.LBB24_17:                              # %if.end.20
	testq	%r15, %r15
	je	.LBB24_19
# BB#18:                                # %lor.lhs.false
	movl	%ebx, %eax
	movslq	%edi, %rsi
	imulq	%rsi, %rax
	cmpq	$8001, %rax             # imm = 0x1F41
	jb	.LBB24_20
.LBB24_19:                              # %if.then.28
	movl	%r12d, %eax
	movq	psw_image_write.uncached(,%rax,8), %rsi
	movq	%r14, %rdi
	callq	stream_puts
	leaq	432(%rsp), %rdi
	movl	$.L.str.81, %esi
	callq	strcpy
	movq	64(%rsp), %rbx          # 8-byte Reload
	jmp	.LBB24_33
.LBB24_20:                              # %if.end.i.88
	movabsq	$1498212716646461045, %rcx # imm = 0x14CAB88725AF6E75
	movq	%r15, %rax
	mulq	%rcx
	shrq	$4, %rdx
	imulq	$197, %rdx, %rcx
	movq	%r15, %rax
	subq	%rcx, %rax
	movq	%rax, %rcx
	shlq	$4, %rcx
	cmpq	%r15, 9400(%r13,%rcx)
	jne	.LBB24_24
# BB#21:                                # %land.lhs.true.i.92
	movzwl	9408(%r13,%rcx), %edx
	cmpl	%ebx, %edx
	jne	.LBB24_24
# BB#22:                                # %land.lhs.true.8.i.96
	movzwl	9410(%r13,%rcx), %ecx
	cmpl	%edi, %ecx
	jne	.LBB24_24
# BB#23:
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movq	%rbx, %rbp
	jmp	.LBB24_30
.LBB24_24:                              # %if.end.14.i.102
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	leal	121(%rax), %ecx
	imulq	$1286310003, %rcx, %rdx # imm = 0x4CAB8873
	shrq	$32, %rdx
	movl	%ecx, %esi
	subl	%edx, %esi
	shrl	%esi
	addl	%edx, %esi
	shrl	$7, %esi
	imull	$197, %esi, %edx
	subl	%edx, %ecx
	movq	%rcx, %rdx
	shlq	$4, %rdx
	cmpq	%r15, 9400(%r13,%rdx)
	jne	.LBB24_28
# BB#25:                                # %land.lhs.true.22.i.106
	movzwl	9408(%r13,%rdx), %esi
	cmpl	%ebx, %esi
	jne	.LBB24_28
# BB#26:                                # %land.lhs.true.27.i.110
	movzwl	9410(%r13,%rdx), %edx
	cmpl	%edi, %edx
	jne	.LBB24_28
# BB#27:
	movq	%rbx, %rbp
	jmp	.LBB24_29
.LBB24_28:                              # %if.end.33.i.111
	cmpl	$0, 12552(%r13)
	sete	%dl
	movzbl	%dl, %edx
	movl	%edx, 12552(%r13)
	cmovnel	%eax, %ecx
	movl	%ecx, %eax
	shlq	$4, %rax
	movq	%r15, 9400(%r13,%rax)
	movw	%bx, 9408(%r13,%rax)
	movq	%rbx, %rbp
	movw	%di, 9410(%r13,%rax)
.LBB24_29:                              # %image_cache_lookup.exit113
	movl	%ecx, %eax
.LBB24_30:                              # %image_cache_lookup.exit113
	movq	64(%rsp), %r15          # 8-byte Reload
	movslq	%eax, %rcx
	imulq	$1321528399, %rcx, %rdx # imm = 0x4EC4EC4F
	movq	%rdx, %rcx
	shrq	$63, %rcx
	sarq	$35, %rdx
	addl	%ecx, %edx
	imull	$26, %edx, %ecx
	negl	%ecx
	leal	65(%rax,%rcx), %ecx
	leaq	464(%rsp), %rbx
	movl	$.L.str.86, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	gs_sprintf
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	stream_puts
	cmpl	$1, 592(%rsp)
	je	.LBB24_32
# BB#31:                                # %if.then.42
	movq	%rbp, %rdx
	addl	$7, %edx
	shrl	$3, %edx
	imulq	40(%rsp), %rdx          # 8-byte Folded Reload
	movl	$.L.str.87, %esi
	movq	%r14, %rdi
	callq	pprintld1
.LBB24_32:                              # %if.end.48
	movl	%r12d, %eax
	movq	psw_image_write.cached(,%rax,8), %rbx
	leaq	432(%rsp), %rdi
	movl	$.L.str.88, %esi
	xorl	%eax, %eax
	movq	%r15, %rdx
	callq	gs_sprintf
.LBB24_33:                              # %if.end.53
	movzwl	152(%r14), %ecx
	movl	$-12, %eax
	cmpl	$65534, %ecx            # imm = 0xFFFE
	je	.LBB24_42
# BB#34:                                # %if.end.59
	testb	$1, %r12b
	jne	.LBB24_35
# BB#36:                                # %if.else.68
	movq	24(%r13), %rsi
	movq	%r14, %rdi
	callq	s_init
	leaq	80(%rsp), %r15
	movq	%r15, %rdi
	callq	swrite_position_only
	movq	%r15, 5848(%r13)
	movl	592(%rsp), %eax
	movl	%eax, 16(%rsp)
	movl	584(%rsp), %eax
	movl	%eax, 8(%rsp)
	movl	576(%rsp), %eax
	movl	%eax, (%rsp)
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movl	%r12d, %edx
	movq	56(%rsp), %rcx          # 8-byte Reload
	movl	48(%rsp), %ebp          # 4-byte Reload
	movl	%ebp, %r8d
	movl	52(%rsp), %r15d         # 4-byte Reload
	movl	%r15d, %r9d
	callq	psw_put_image
	movq	%r14, 5848(%r13)
	testl	%eax, %eax
	js	.LBB24_42
# BB#37:                                # %if.end.74
	leaq	80(%rsp), %rdi
	callq	stell
	movl	$.L.str.89, %esi
	movq	72(%rsp), %rdi          # 8-byte Reload
	movq	%rax, %rdx
	callq	pprintld1
	movl	592(%rsp), %eax
	movl	%eax, 16(%rsp)
	movl	584(%rsp), %eax
	movl	%eax, 8(%rsp)
	movl	576(%rsp), %eax
	movl	%eax, (%rsp)
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movl	%r12d, %edx
	movq	56(%rsp), %rcx          # 8-byte Reload
	movl	%ebp, %r8d
	movl	%r15d, %r9d
	callq	psw_put_image
	testl	%eax, %eax
	js	.LBB24_42
# BB#38:                                # %cleanup
	movl	$.L.str.90, %esi
	movq	72(%rsp), %r14          # 8-byte Reload
	movq	%r14, %rdi
	callq	stream_puts
	jmp	.LBB24_39
.LBB24_35:                              # %if.then.61
	movl	$10, %esi
	movq	%r14, %rdi
	callq	spputc
	movl	592(%rsp), %eax
	movl	%eax, 16(%rsp)
	movl	584(%rsp), %eax
	movl	%eax, 8(%rsp)
	movl	576(%rsp), %eax
	movl	%eax, (%rsp)
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movl	%r12d, %edx
	movq	56(%rsp), %rcx          # 8-byte Reload
	movl	48(%rsp), %r8d          # 4-byte Reload
	movl	52(%rsp), %r9d          # 4-byte Reload
	callq	psw_put_image
	testl	%eax, %eax
	js	.LBB24_42
.LBB24_39:                              # %if.end.83
	leaq	432(%rsp), %rsi
	movq	%r14, %rdi
	callq	stream_puts
	movzwl	152(%r14), %ecx
	jmp	.LBB24_40
.LBB24_42:                              # %cleanup.92
	addq	$504, %rsp              # imm = 0x1F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	psw_image_write, .Lfunc_end24-psw_image_write
	.cfi_endproc

	.align	16, 0x90
	.type	psw_put_image,@function
psw_put_image:                          # @psw_put_image
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
	pushq	%r13
.Ltmp190:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp191:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp192:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp193:
	.cfi_def_cfa_offset 80
.Ltmp194:
	.cfi_offset %rbx, -56
.Ltmp195:
	.cfi_offset %r12, -48
.Ltmp196:
	.cfi_offset %r13, -40
.Ltmp197:
	.cfi_offset %r14, -32
.Ltmp198:
	.cfi_offset %r15, -24
.Ltmp199:
	.cfi_offset %rbp, -16
	movl	%r9d, 20(%rsp)          # 4-byte Spill
	movl	%r8d, %ebp
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movl	%edx, %r15d
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movl	%r15d, %esi
	notl	%esi
	andl	$1, %esi
	callq	psw_image_stream_setup
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB25_6
# BB#1:                                 # %if.end
	movl	88(%rsp), %eax
	movl	80(%rsp), %r13d
	testb	$2, %r15b
	movl	%eax, %r15d
	je	.LBB25_3
# BB#2:                                 # %if.then.3
	movq	9392(%rbx), %rdi
	xorl	%ecx, %ecx
	movl	%r13d, %esi
	movl	%r15d, %edx
	callq	psdf_CFE_binary
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB25_6
.LBB25_3:                               # %if.end.8
	movl	96(%rsp), %r14d
	movq	5848(%rbx), %rdi
	movl	$.L.str.92, %esi
	movq	%r12, %rdx
	callq	pprints1
	movq	9392(%rbx), %rax
	movq	16(%rax), %rdi
	imull	%r14d, %ebp
	imull	%r14d, %r13d
	movq	8(%rsp), %rsi           # 8-byte Reload
	movl	%ebp, %edx
	movl	20(%rsp), %ecx          # 4-byte Reload
	movl	%r13d, %r8d
	movl	%r15d, %r9d
	callq	psw_put_bits
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB25_6
# BB#4:                                 # %if.end.i
	movq	9392(%rbx), %rdi
	xorl	%r14d, %r14d
	cmpq	$0, 16(%rdi)
	je	.LBB25_6
# BB#5:                                 # %if.then.i.i
	callq	psdf_end_binary
	movq	9392(%rbx), %rdi
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	movl	$32, %edx
	callq	memset
.LBB25_6:                               # %cleanup
	movl	%r14d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end25:
	.size	psw_put_image, .Lfunc_end25-psw_put_image
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI26_0:
	.long	1073741824              # float 2
	.text
	.align	16, 0x90
	.type	psw_image_stream_setup,@function
psw_image_stream_setup:                 # @psw_image_stream_setup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp200:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp201:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp202:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp203:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp204:
	.cfi_def_cfa_offset 48
.Ltmp205:
	.cfi_offset %rbx, -40
.Ltmp206:
	.cfi_offset %r14, -32
.Ltmp207:
	.cfi_offset %r15, -24
.Ltmp208:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	8852(%rbx), %r15d
	testl	%ebp, %ebp
	jne	.LBB26_2
# BB#1:                                 # %entry
	movss	9360(%rbx), %xmm0       # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI26_0(%rip), %xmm0
	jae	.LBB26_2
# BB#3:                                 # %if.else
	movl	$1, 8852(%rbx)
	movq	9392(%rbx), %rsi
	movq	%rbx, %rdi
	callq	psdf_begin_binary
	testl	%eax, %eax
	js	.LBB26_7
# BB#4:                                 # %if.then.7
	movq	1728(%rbx), %rdi
	movq	s_AXE_template(%rip), %rsi
	movl	$.L.str.91, %edx
	callq	s_alloc_state
	movq	%rax, %r14
	movl	$-25, %eax
	testq	%r14, %r14
	je	.LBB26_7
# BB#5:                                 # %if.else.11
	movq	9392(%rbx), %rdi
	movl	$s_AXE_template, %esi
	movq	%r14, %rdx
	callq	psdf_encode_binary
	testl	%eax, %eax
	js	.LBB26_7
# BB#6:                                 # %if.then.15
	movl	$0, 108(%r14)
	jmp	.LBB26_7
.LBB26_2:                               # %if.then
	movl	%ebp, 8852(%rbx)
	movq	9392(%rbx), %rsi
	movq	%rbx, %rdi
	callq	psdf_begin_binary
.LBB26_7:                               # %if.end.18
	movl	%r15d, 8852(%rbx)
	testl	%ebp, %ebp
	sete	%cl
	testl	%eax, %eax
	movzbl	%cl, %ecx
	cmovsl	%eax, %ecx
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end26:
	.size	psw_image_stream_setup, .Lfunc_end26-psw_image_stream_setup
	.cfi_endproc

	.align	16, 0x90
	.type	psw_put_bits,@function
psw_put_bits:                           # @psw_put_bits
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp209:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp210:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp211:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp212:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp213:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp214:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp215:
	.cfi_def_cfa_offset 112
.Ltmp216:
	.cfi_offset %rbx, -56
.Ltmp217:
	.cfi_offset %r12, -48
.Ltmp218:
	.cfi_offset %r13, -40
.Ltmp219:
	.cfi_offset %r14, -32
.Ltmp220:
	.cfi_offset %r15, -24
.Ltmp221:
	.cfi_offset %rbp, -16
	movl	%r9d, 32(%rsp)          # 4-byte Spill
	movq	%rdi, %r14
	xorl	%eax, %eax
	testl	%r9d, %r9d
	jle	.LBB27_11
# BB#1:                                 # %for.body.lr.ph
	movl	%edx, %r13d
	andl	$7, %r13d
	sarl	$3, %edx
	movslq	%edx, %rax
	leaq	(%rsi,%rax), %r9
	movq	%r8, 16(%rsp)           # 8-byte Spill
	leal	7(%r8), %edx
	shrl	$3, %edx
	movl	%edx, 8(%rsp)           # 4-byte Spill
	movl	%ecx, %ecx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movl	$8, %r12d
	subl	%r13d, %r12d
	leal	(%r13,%r8), %ecx
	movl	%ecx, 12(%rsp)          # 4-byte Spill
	leal	-9(%r13,%r8), %ecx
	shrl	$3, %ecx
	leal	(,%rcx,8), %edx
	negl	%edx
	leal	-8(%r8,%rdx), %edx
	movl	%edx, 4(%rsp)           # 4-byte Spill
	leaq	(%rcx,%rax), %rcx
	leaq	1(%rsi,%rcx), %rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	leaq	1(%rsi,%rax), %rbp
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB27_2:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_5 Depth 2
	testl	%r13d, %r13d
	je	.LBB27_3
# BB#4:                                 # %if.else
                                        #   in Loop: Header=BB27_2 Depth=1
	movl	%ebx, 36(%rsp)          # 4-byte Spill
	movl	12(%rsp), %eax          # 4-byte Reload
	cmpl	$9, %eax
	movq	%r14, %rbx
	movq	%rbp, %r14
	movl	%eax, %r15d
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%r9, %rcx
	movq	%r9, 48(%rsp)           # 8-byte Spill
	jl	.LBB27_7
	.align	16, 0x90
.LBB27_5:                               # %for.body.6
                                        #   Parent Loop BB27_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-1(%r14), %eax
	movb	%r13b, %cl
	shll	%cl, %eax
	movzbl	(%r14), %edx
	movb	%r12b, %cl
	shrl	%cl, %edx
	addl	%eax, %edx
	movzbl	%dl, %esi
	movq	%rbx, %rdi
	callq	spputc
	addl	$-8, %r15d
	incq	%r14
	cmpl	$8, %r15d
	jg	.LBB27_5
# BB#6:                                 #   in Loop: Header=BB27_2 Depth=1
	movl	4(%rsp), %eax           # 4-byte Reload
	movq	40(%rsp), %rcx          # 8-byte Reload
.LBB27_7:                               # %for.end
                                        #   in Loop: Header=BB27_2 Depth=1
	testl	%eax, %eax
	movq	%rbx, %r14
	movl	36(%rsp), %ebx          # 4-byte Reload
	jle	.LBB27_9
# BB#8:                                 # %if.then.15
                                        #   in Loop: Header=BB27_2 Depth=1
	movzbl	(%rcx), %edx
	movb	%r13b, %cl
	shll	%cl, %edx
	movl	$65280, %esi            # imm = 0xFF00
	movb	%al, %cl
	shrl	%cl, %esi
	andl	%edx, %esi
	movzbl	%sil, %esi
	movq	%r14, %rdi
	callq	spputc
	jmp	.LBB27_9
	.align	16, 0x90
.LBB27_3:                               # %if.then
                                        #   in Loop: Header=BB27_2 Depth=1
	movq	%r14, %rdi
	movq	%r9, %rsi
	movq	%r9, 48(%rsp)           # 8-byte Spill
	movl	8(%rsp), %edx           # 4-byte Reload
	callq	stream_write
.LBB27_9:                               # %if.end.24
                                        #   in Loop: Header=BB27_2 Depth=1
	movzwl	152(%r14), %ecx
	movl	$-12, %eax
	cmpl	$65534, %ecx            # imm = 0xFFFE
	movq	48(%rsp), %r9           # 8-byte Reload
	je	.LBB27_11
# BB#10:                                # %for.inc.30
                                        #   in Loop: Header=BB27_2 Depth=1
	incl	%ebx
	movq	24(%rsp), %rax          # 8-byte Reload
	addq	%rax, %r9
	addq	%rax, 40(%rsp)          # 8-byte Folded Spill
	addq	%rax, %rbp
	xorl	%eax, %eax
	cmpl	32(%rsp), %ebx          # 4-byte Folded Reload
	jl	.LBB27_2
.LBB27_11:                              # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end27:
	.size	psw_put_bits, .Lfunc_end27-psw_put_bits
	.cfi_endproc

	.align	16, 0x90
	.type	psw_image_plane_data,@function
psw_image_plane_data:                   # @psw_image_plane_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp222:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp223:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp224:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp225:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp226:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp227:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp228:
	.cfi_def_cfa_offset 96
.Ltmp229:
	.cfi_offset %rbx, -56
.Ltmp230:
	.cfi_offset %r12, -48
.Ltmp231:
	.cfi_offset %r13, -40
.Ltmp232:
	.cfi_offset %r14, -32
.Ltmp233:
	.cfi_offset %r15, -24
.Ltmp234:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbp
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	16(%rbx), %r13
	movq	576(%rbx), %rdi
	callq	gx_image_plane_data_rows
	movl	%eax, 36(%rsp)          # 4-byte Spill
	movl	(%rbp), %edx
	testl	%edx, %edx
	jle	.LBB28_9
# BB#1:                                 # %for.cond.2.preheader.lr.ph
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movl	44(%rbx), %ecx
	addq	$12, %r15
	movq	%r15, 8(%rsp)           # 8-byte Spill
	xorl	%esi, %esi
.LBB28_2:                               # %for.cond.2.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_5 Depth 2
	testl	%ecx, %ecx
	jle	.LBB28_8
# BB#3:                                 # %for.body.4.lr.ph
                                        #   in Loop: Header=BB28_2 Depth=1
	leal	(,%rsi,8), %r12d
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB28_5:                               # %for.body.4
                                        #   Parent Loop BB28_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	596(%rbx), %r8d
	movl	48(%rbx,%r14,4), %ebp
	movl	584(%rbx), %ecx
	imull	%ebp, %ecx
	movl	$-15, %eax
	cmpl	%ecx, %r8d
	jne	.LBB28_10
# BB#6:                                 # %if.end
                                        #   in Loop: Header=BB28_5 Depth=2
	movq	9392(%r13), %rax
	movq	16(%rax), %rdi
	movq	-12(%r15), %rsi
	imull	-4(%r15), %ebp
	movl	(%r15), %ecx
	movl	%r12d, %edx
	imull	%ecx, %edx
	addl	%ebp, %edx
	movl	$1, %r9d
	callq	psw_put_bits
	movq	9392(%r13), %rax
	movq	16(%rax), %rax
	movzwl	152(%rax), %eax
	cmpl	$65534, %eax            # imm = 0xFFFE
	movl	$-12, %eax
	je	.LBB28_10
# BB#4:                                 # %for.cond.2
                                        #   in Loop: Header=BB28_5 Depth=2
	incq	%r14
	movslq	44(%rbx), %rcx
	addq	$16, %r15
	cmpq	%rcx, %r14
	jl	.LBB28_5
# BB#7:                                 # %for.cond.2.for.inc.29_crit_edge
                                        #   in Loop: Header=BB28_2 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %edx
	movq	8(%rsp), %r15           # 8-byte Reload
	movl	36(%rsp), %eax          # 4-byte Reload
	movq	24(%rsp), %rsi          # 8-byte Reload
.LBB28_8:                               # %for.inc.29
                                        #   in Loop: Header=BB28_2 Depth=1
	incl	%esi
	cmpl	%edx, %esi
	jl	.LBB28_2
.LBB28_9:                               # %for.end.31
	addl	%edx, 600(%rbx)
.LBB28_10:                              # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end28:
	.size	psw_image_plane_data, .Lfunc_end28-psw_image_plane_data
	.cfi_endproc

	.align	16, 0x90
	.type	psw_image_end_image,@function
psw_image_end_image:                    # @psw_image_end_image
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
	movl	%esi, %eax
	movq	%rdi, %rdx
	movq	16(%rdx), %r15
	movq	8840(%r15), %rcx
	movq	%r15, %rdi
	movq	%rdx, %rsi
	movl	%eax, %edx
	callq	gdev_vector_end_image
	movl	%eax, %r14d
	testl	%r14d, %r14d
	jle	.LBB29_10
# BB#1:                                 # %if.then
	movq	5848(%r15), %rbx
	movq	9392(%r15), %rdi
	movq	16(%rdi), %rax
	movq	%rax, %rcx
	.align	16, 0x90
.LBB29_2:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rbp
	cmpq	%rbx, %rbp
	je	.LBB29_7
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB29_2 Depth=1
	movq	240(%rbp), %rcx
	testq	%rcx, %rcx
	jne	.LBB29_2
# BB#4:                                 # %while.end
	testq	%rax, %rax
	je	.LBB29_6
# BB#5:                                 # %if.then.i
	callq	psdf_end_binary
	movq	9392(%r15), %rdi
	xorl	%esi, %esi
	movl	$32, %edx
	callq	memset
.LBB29_6:                               # %if.then.9
	movq	8(%rbp), %r15
	movq	136(%rbp), %r12
	movq	%rbp, %rdi
	callq	stell
	movq	%rax, %r13
	movl	$.L.str.119, %esi
	movq	%rbx, %rdi
	movq	%r13, %rdx
	callq	pprintld1
	leaq	4(%rsp), %rcx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	%r13d, %edx
	callq	sputs
	movl	$.L.str.90, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$.L.str.120, %edx
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	*24(%r15)
	movl	$.L.str.121, %edx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	*24(%r15)
	jmp	.LBB29_9
.LBB29_7:                               # %if.end.critedge
	testq	%rax, %rax
	je	.LBB29_9
# BB#8:                                 # %if.then.i.40
	callq	psdf_end_binary
	movq	9392(%r15), %rdi
	xorl	%esi, %esi
	movl	$32, %edx
	callq	memset
.LBB29_9:                               # %if.end
	movl	$.L.str.122, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movzwl	152(%rbx), %ecx
	movl	$-12, %eax
	cmpl	$65534, %ecx            # imm = 0xFFFE
	je	.LBB29_11
.LBB29_10:                              # %if.end.23
	movl	%r14d, %eax
.LBB29_11:                              # %cleanup.24
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end29:
	.size	psw_image_end_image, .Lfunc_end29-psw_image_end_image
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"epswrite"
	.size	.L.str, 9

	.type	st_device_pswrite,@object # @st_device_pswrite
	.section	.rodata,"a",@progbits
	.align	8
st_device_pswrite:
	.long	12624                   # 0x3150
	.zero	4
	.quad	.L.str.4
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	gx_device_finalize
	.quad	device_pswrite_reloc_ptrs
	.size	st_device_pswrite, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"DeviceRGB"
	.size	.L.str.1, 10

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"JPEG2000"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"CCITTFaxEncode"
	.size	.L.str.3, 15

	.type	gs_epswrite_device,@object # @gs_epswrite_device
	.section	.rodata,"a",@progbits
	.globl	gs_epswrite_device
	.align	8
gs_epswrite_device:
	.long	12624                   # 0x3150
	.zero	4
	.quad	0
	.quad	.L.str
	.quad	0
	.quad	st_device_pswrite
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	24                      # 0x18
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	6120                    # 0x17e8
	.long	7920                    # 0x1ef0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1144258560              # float 7.200000e+02
	.long	1144258560              # float 7.200000e+02
	.long	1144258560              # float 7.200000e+02
	.long	1144258560              # float 7.200000e+02
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
	.quad	psw_open
	.quad	gx_upright_get_initial_matrix
	.quad	0
	.quad	psw_output_page
	.quad	psw_close
	.quad	gx_default_rgb_map_rgb_color
	.quad	gx_default_rgb_map_color_rgb
	.quad	psw_fill_rectangle
	.quad	0
	.quad	psw_copy_mono
	.quad	psw_copy_color
	.quad	0
	.quad	psdf_get_bits
	.quad	psw_get_params
	.quad	psw_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	psw_fill_path
	.quad	psw_stroke_path
	.quad	psw_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	psw_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	psdf_get_bits_rectangle
	.quad	0
	.quad	psdf_create_compositor
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
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4621819117588971520     # double 10
	.quad	4621819117588971520     # double 10
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	2000                    # 0x7d0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.zero	4
	.quad	4608533498688228557     # double 1.3
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.zero	4
	.quad	500000                  # 0x7a120
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	1069547520              # float 1.5
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	0
	.long	150                     # 0x96
	.zero	4
	.quad	.L.str.2
	.quad	s_zlibE_template
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	1069547520              # float 1.5
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	0
	.long	150                     # 0x96
	.zero	4
	.quad	.L.str.2
	.quad	s_zlibE_template
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	1073741824              # float 2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	.L.str.3
	.long	300                     # 0x12c
	.zero	4
	.quad	.L.str.2
	.quad	s_CFE_template
	.zero	16
	.zero	16
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	100                     # 0x64
	.long	1                       # 0x1
	.zero	16
	.zero	16
	.long	1073741824              # float 2
	.long	1                       # 0x1
	.long	1001                    # 0x3e9
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	3152
	.long	0                       # 0x0
	.zero	4
	.zero	24
	.zero	40
	.size	gs_epswrite_device, 12624

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"gx_device_pswrite"
	.size	.L.str.4, 18

	.type	device_pswrite_reloc_ptrs,@object # @device_pswrite_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
device_pswrite_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	st_device_psdf
	.quad	device_pswrite_enum_ptrs
	.size	device_pswrite_reloc_ptrs, 24

	.type	device_pswrite_enum_ptrs,@object # @device_pswrite_enum_ptrs
	.align	2
device_pswrite_enum_ptrs:
	.short	0                       # 0x0
	.short	9392                    # 0x24b0
	.size	device_pswrite_enum_ptrs, 4

	.type	psw_vector_procs,@object # @psw_vector_procs
	.align	8
psw_vector_procs:
	.quad	psw_beginpage
	.quad	psdf_setlinewidth
	.quad	psdf_setlinecap
	.quad	psdf_setlinejoin
	.quad	psdf_setmiterlimit
	.quad	psdf_setdash
	.quad	psdf_setflat
	.quad	psdf_setlogop
	.quad	psw_can_handle_hl_color
	.quad	psw_setcolors
	.quad	psw_setcolors
	.quad	gdev_vector_dopath
	.quad	psw_dorect
	.quad	psw_beginpath
	.quad	psw_moveto
	.quad	psw_lineto
	.quad	psw_curveto
	.quad	psw_closepath
	.quad	psw_endpath
	.size	psw_vector_procs, 152

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"psw_open(image_writer)"
	.size	.L.str.5, 23

	.type	psw_1_x_procset,@object # @psw_1_x_procset
	.section	.rodata,"a",@progbits
	.align	16
psw_1_x_procset:
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	0
	.size	psw_1_x_procset, 24

	.type	psw_1_procset,@object   # @psw_1_procset
	.align	8
psw_1_procset:
	.zero	8
	.size	psw_1_procset, 8

	.type	psw_1_5_procset,@object # @psw_1_5_procset
	.align	16
psw_1_5_procset:
	.quad	.L.str.8
	.quad	0
	.size	psw_1_5_procset, 16

	.type	psw_2_procset,@object   # @psw_2_procset
	.align	16
psw_2_procset:
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	.L.str.13
	.quad	.L.str.14
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	0
	.size	psw_2_procset, 80

	.type	psw_procset,@object     # @psw_procset
	.align	16
psw_procset:
	.quad	.L.str.18
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	.L.str.29
	.quad	.L.str.30
	.quad	.L.str.31
	.quad	.L.str.32
	.quad	.L.str.33
	.quad	.L.str.34
	.quad	.L.str.35
	.quad	.L.str.36
	.quad	.L.str.37
	.quad	.L.str.38
	.quad	.L.str.39
	.quad	.L.str.40
	.quad	0
	.size	psw_procset, 192

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"/|X{exch string readhexstring |=}!/$X{+ @ |X}!"
	.size	.L.str.6, 47

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"/@X{{currentfile ( ) readhexstring pop}}!"
	.size	.L.str.7, 42

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"/Ic{exch Ix false 3 colorimage}!"
	.size	.L.str.8, 33

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"/F{/Columns counttomark 3 add -2 roll/Rows exch/K -1/BlackIs1 true>>"
	.size	.L.str.9, 69

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"/CCITTFaxDecode filter}!/FX{<</EndOfBlock false F}!"
	.size	.L.str.10, 52

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"/X{/ASCII85Decode filter}!/@X{@ X}!/&2{2 index 2 index}!"
	.size	.L.str.11, 57

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"/@F{@ &2<<F}!/@C{@X &2 FX}!"
	.size	.L.str.12, 28

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"/$X{+ @X |}!/&4{4 index 4 index}!/$F{+ @ &4<<F |}!/$C{+ @X &4 FX |}!"
	.size	.L.str.13, 69

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"/IC{3 1 roll 10 dict begin 1{/ImageType/Interpolate/Decode/DataSource"
	.size	.L.str.14, 70

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"/ImageMatrix/BitsPerComponent/Height/Width}{exch def}forall"
	.size	.L.str.15, 60

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"currentdict end image}!"
	.size	.L.str.16, 24

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"/~{@ read {pop} if}!"
	.size	.L.str.17, 21

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"/!{bind def}bind def/#{load def}!/N/counttomark #"
	.size	.L.str.18, 50

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"/rG{3{3 -1 roll 255 div}repeat setrgbcolor}!/G{255 div setgray}!/K{0 G}!"
	.size	.L.str.19, 73

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"/r6{dup 3 -1 roll rG}!/r5{dup 3 1 roll rG}!/r3{dup rG}!"
	.size	.L.str.20, 56

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"/w/setlinewidth #/J/setlinecap #"
	.size	.L.str.21, 33

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"/j/setlinejoin #/M/setmiterlimit #/d/setdash #/i/setflat #"
	.size	.L.str.22, 59

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"/m/moveto #/l/lineto #/c/rcurveto #"
	.size	.L.str.23, 36

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"/p{N 2 idiv{N -2 roll rlineto}repeat}!"
	.size	.L.str.24, 39

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"/P{N 0 gt{N -2 roll moveto p}if}!"
	.size	.L.str.25, 34

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"/h{p closepath}!/H{P closepath}!"
	.size	.L.str.26, 33

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"/lx{0 rlineto}!/ly{0 exch rlineto}!/v{0 0 6 2 roll c}!/y{2 copy c}!"
	.size	.L.str.27, 68

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"/re{4 -2 roll m exch dup lx exch ly neg lx h}!"
	.size	.L.str.28, 47

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"/^{3 index neg 3 index neg}!"
	.size	.L.str.29, 29

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"/f{P fill}!/f*{P eofill}!/s{H stroke}!/S{P stroke}!"
	.size	.L.str.30, 52

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"/q/gsave #/Q/grestore #/rf{re fill}!"
	.size	.L.str.31, 37

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"/Y{P clip newpath}!/Y*{P eoclip newpath}!/rY{re Y}!"
	.size	.L.str.32, 52

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"/|={pop exch 4 1 roll 1 array astore cvx 3 array astore cvx exch 1 index def exec}!"
	.size	.L.str.33, 84

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"/|{exch string readstring |=}!"
	.size	.L.str.34, 31

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"/+{dup type/nametype eq{2 index 7 add -3 bitshift 2 index mul}if}!"
	.size	.L.str.35, 67

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"/@/currentfile #/${+ @ |}!"
	.size	.L.str.36, 27

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"/B{{2 copy string{readstring pop}aload pop 4 array astore cvx"
	.size	.L.str.37, 62

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"3 1 roll}repeat pop pop true}!"
	.size	.L.str.38, 31

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"/Ix{[1 0 0 1 11 -2 roll exch neg exch neg]exch}!"
	.size	.L.str.39, 49

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"/,{true exch Ix imagemask}!/If{false exch Ix imagemask}!/I{exch Ix image}!"
	.size	.L.str.40, 75

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"K\n"
	.size	.L.str.41, 3

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"%d G\n"
	.size	.L.str.42, 6

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"%d %d r6\n"
	.size	.L.str.43, 10

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"%d %d r3\n"
	.size	.L.str.44, 10

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"%d %d r5\n"
	.size	.L.str.45, 10

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"%d %d %d rG\n"
	.size	.L.str.46, 13

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"%g %g %g %g rf\n"
	.size	.L.str.47, 16

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Q q\n"
	.size	.L.str.48, 5

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"P\n"
	.size	.L.str.49, 3

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"p\n"
	.size	.L.str.50, 3

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"pop pop\n"
	.size	.L.str.51, 9

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"%g %g "
	.size	.L.str.52, 7

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"^ "
	.size	.L.str.53, 3

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"m\n"
	.size	.L.str.54, 3

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"v\n"
	.size	.L.str.55, 3

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"y\n"
	.size	.L.str.56, 3

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"c\n"
	.size	.L.str.57, 3

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"H\n"
	.size	.L.str.58, 3

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"h\n"
	.size	.L.str.59, 3

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"*"
	.size	.L.str.60, 2

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.zero	1
	.size	.L.str.61, 1

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"p "
	.size	.L.str.62, 3

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"q f%s Q "
	.size	.L.str.63, 9

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"f%s\n"
	.size	.L.str.64, 5

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"q S Q "
	.size	.L.str.65, 7

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"S\n"
	.size	.L.str.66, 3

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"Y%s\n"
	.size	.L.str.67, 5

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"psw_close(image_writer)"
	.size	.L.str.68, 24

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"LanguageLevel"
	.size	.L.str.69, 14

	.type	psw_put_params.vv,@object # @psw_put_params.vv
	.section	.rodata,"a",@progbits
	.align	4
psw_put_params.vv:
	.long	1000                    # 0x3e8
	.long	1100                    # 0x44c
	.long	2000                    # 0x7d0
	.size	psw_put_params.vv, 12

	.type	.L.str.70,@object       # @.str.70
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.70:
	.asciz	"If"
	.size	.L.str.70, 3

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"1 I"
	.size	.L.str.71, 4

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	","
	.size	.L.str.72, 2

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"%d%c"
	.size	.L.str.73, 5

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"%d %d "
	.size	.L.str.74, 7

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"%s %s\n"
	.size	.L.str.75, 7

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"%d %d %d %d "
	.size	.L.str.76, 13

	.type	psw_image_write.uncached,@object # @psw_image_write.uncached
	.section	.rodata,"a",@progbits
	.align	16
psw_image_write.uncached:
	.quad	.L.str.77
	.quad	.L.str.78
	.quad	.L.str.79
	.quad	.L.str.80
	.size	psw_image_write.uncached, 32

	.type	.L.str.77,@object       # @.str.77
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.77:
	.asciz	"@"
	.size	.L.str.77, 2

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"@X"
	.size	.L.str.78, 3

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"@F"
	.size	.L.str.79, 3

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"@C"
	.size	.L.str.80, 3

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"\n"
	.size	.L.str.81, 2

	.type	psw_image_write.cached,@object # @psw_image_write.cached
	.section	.rodata,"a",@progbits
	.align	16
psw_image_write.cached:
	.quad	.L.str.82
	.quad	.L.str.83
	.quad	.L.str.84
	.quad	.L.str.85
	.size	psw_image_write.cached, 32

	.type	.L.str.82,@object       # @.str.82
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.82:
	.asciz	"$"
	.size	.L.str.82, 2

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"$X"
	.size	.L.str.83, 3

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"$F"
	.size	.L.str.84, 3

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"$C"
	.size	.L.str.85, 3

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"/%d%c"
	.size	.L.str.86, 6

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	" %ld"
	.size	.L.str.87, 5

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"\n%s\n"
	.size	.L.str.88, 5

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"\n%%%%BeginData: %ld\n"
	.size	.L.str.89, 21

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"\n%%EndData"
	.size	.L.str.90, 11

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"psw_image_stream_setup"
	.size	.L.str.91, 23

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"%s\n"
	.size	.L.str.92, 4

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"%d Ic"
	.size	.L.str.93, 6

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"q"
	.size	.L.str.94, 2

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	" %g %g scale\n"
	.size	.L.str.95, 14

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"concat\n"
	.size	.L.str.96, 8

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"Q\n"
	.size	.L.str.97, 3

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"[%g %g %g %g %g %g]"
	.size	.L.str.98, 20

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"psw_begin_image"
	.size	.L.str.99, 16

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"DeviceGray"
	.size	.L.str.100, 11

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"DeviceCMYK"
	.size	.L.str.101, 11

	.type	psw_image_enum_procs,@object # @psw_image_enum_procs
	.section	.rodata,"a",@progbits
	.align	8
psw_image_enum_procs:
	.quad	psw_image_plane_data
	.quad	psw_image_end_image
	.quad	0
	.quad	0
	.size	psw_image_enum_procs, 32

	.type	.L.str.102,@object      # @.str.102
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.102:
	.asciz	"psw_begin_image(buffer)"
	.size	.L.str.102, 24

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"psw_begin_image(buffer stream)"
	.size	.L.str.103, 31

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"concat\n%d %d "
	.size	.L.str.104, 14

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"false"
	.size	.L.str.105, 6

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"true"
	.size	.L.str.106, 5

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"imagemask"
	.size	.L.str.107, 10

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"%d"
	.size	.L.str.108, 3

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"[/Indexed /%s "
	.size	.L.str.109, 15

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"%d\n"
	.size	.L.str.110, 4

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"\n]setcolorspace[0 %d]"
	.size	.L.str.111, 22

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"%s %s"
	.size	.L.str.112, 6

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"IC"
	.size	.L.str.113, 3

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"image"
	.size	.L.str.114, 6

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"%s false"
	.size	.L.str.115, 9

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	" %d %d B"
	.size	.L.str.116, 9

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	" %d"
	.size	.L.str.117, 4

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"colorimage"
	.size	.L.str.118, 11

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"%%%%BeginData: %ld\n"
	.size	.L.str.119, 20

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"psw_image_end_image(buffer stream)"
	.size	.L.str.120, 35

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"psw_image_end_image(buffer)"
	.size	.L.str.121, 28

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"\nQ\n"
	.size	.L.str.122, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
