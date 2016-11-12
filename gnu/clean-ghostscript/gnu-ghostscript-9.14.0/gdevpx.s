	.text
	.file	"gdevpx.bc"
	.align	16, 0x90
	.type	device_pclxl_enum_ptrs,@function
device_pclxl_enum_ptrs:                 # @device_pclxl_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$st_device_vector, %r9d
	jmpq	*st_device_vector+32(%rip) # TAILCALL
.Lfunc_end0:
	.size	device_pclxl_enum_ptrs, .Lfunc_end0-device_pclxl_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	device_pclxl_reloc_ptrs,@function
device_pclxl_reloc_ptrs:                # @device_pclxl_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$st_device_vector, %edx
	jmpq	*st_device_vector+40(%rip) # TAILCALL
.Lfunc_end1:
	.size	device_pclxl_reloc_ptrs, .Lfunc_end1-device_pclxl_reloc_ptrs
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI2_0:
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	4607182418800017408     # double 1.000000e+00
	.text
	.align	16, 0x90
	.type	pclxl_open_device,@function
pclxl_open_device:                      # @pclxl_open_device
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	24(%rbx), %rax
	movq	%rax, 1728(%rbx)
	movq	$pclxl_vector_procs, 1736(%rbx)
	movl	$512, %esi              # imm = 0x200
	movl	$2, %edx
	callq	gdev_vector_open_file_options
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_2
# BB#1:                                 # %if.end
	movq	%rbx, %rdi
	callq	gdev_vector_init
	movl	$0, 8816(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 9016(%rbx)
	movl	$0, 17760(%rbx)
	movl	$0, 17764(%rbx)
	movl	$0, 17772(%rbx)
	movaps	.LCPI2_0(%rip), %xmm0   # xmm0 = [1.000000e+00,1.000000e+00]
	movups	%xmm0, 17776(%rbx)
	movl	$0, 17792(%rbx)
	movl	$0, 17796(%rbx)
	movq	5848(%rbx), %rdi
	movq	%rbx, %rsi
	callq	px_write_file_header
	movl	$225, 8848(%rbx)
	leaq	10136(%rbx), %rdi
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movl	$7624, %edx             # imm = 0x1DC8
	callq	memset
	movl	$2, 17740(%rbx)
	movl	$2, 17736(%rbx)
	movl	$0, 8868(%rbx)
	movl	$0, 9000(%rbx)
	movl	$1, 8860(%rbx)
	movl	$1, 8864(%rbx)
	movb	$0, 8872(%rbx)
	movb	$0, 8936(%rbx)
.LBB2_2:                                # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	pclxl_open_device, .Lfunc_end2-pclxl_open_device
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI3_0:
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	4607182418800017408     # double 1.000000e+00
	.text
	.align	16, 0x90
	.type	pclxl_output_page,@function
pclxl_output_page:                      # @pclxl_output_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp8:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp9:
	.cfi_def_cfa_offset 48
.Ltmp10:
	.cfi_offset %rbx, -40
.Ltmp11:
	.cfi_offset %r14, -32
.Ltmp12:
	.cfi_offset %r15, -24
.Ltmp13:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movl	%esi, %r15d
	movq	%rdi, %rbx
	cmpl	$0, 8816(%rbx)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	callq	pclxl_beginpage
.LBB3_2:                                # %if.end
	movq	5848(%rbx), %rbp
	movl	$49, %edx
	movq	%rbp, %rdi
	movl	%r15d, %esi
	callq	px_put_usa
	movl	$68, %esi
	movq	%rbp, %rdi
	callq	spputc
	movq	%rbp, %rdi
	callq	*208(%rbp)
	movq	%rbx, %rdi
	callq	gdev_vector_init
	movl	$0, 8816(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 9016(%rbx)
	movl	$0, 17760(%rbx)
	movl	$0, 17764(%rbx)
	movl	$0, 17772(%rbx)
	movaps	.LCPI3_0(%rip), %xmm0   # xmm0 = [1.000000e+00,1.000000e+00]
	movups	%xmm0, 17776(%rbx)
	movl	$0, 17792(%rbx)
	movl	$0, 17796(%rbx)
	movq	5840(%rbx), %rdi
	callq	ferror
	movl	$-12, %ebp
	testl	%eax, %eax
	jne	.LBB3_10
# BB#3:                                 # %if.end.7
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movl	%r14d, %edx
	callq	gx_finish_output_page
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB3_10
# BB#4:                                 # %if.end.10
	leaq	1744(%rbx), %rdi
	movq	24(%rbx), %rsi
	callq	gx_outputfile_is_separate_pages
	testl	%eax, %eax
	je	.LBB3_10
# BB#5:                                 # %if.then.13
	movq	5840(%rbx), %rbp
	movq	5848(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB3_7
# BB#6:                                 # %if.then.i
	callq	*208(%rdi)
.LBB3_7:                                # %if.end.i
	cmpl	$0, 8816(%rbx)
	je	.LBB3_9
# BB#8:                                 # %if.then.4.i
	movl	$68, %edi
	movq	%rbp, %rsi
	callq	fputc
.LBB3_9:                                # %pclxl_close_device.exit
	movq	%rbp, %rdi
	callq	px_write_file_trailer
	movq	%rbx, %rdi
	callq	gdev_vector_close_file
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB3_10
# BB#11:                                # %if.end.17
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	pclxl_open_device       # TAILCALL
.LBB3_10:                               # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	pclxl_output_page, .Lfunc_end3-pclxl_output_page
	.cfi_endproc

	.align	16, 0x90
	.type	pclxl_close_device,@function
pclxl_close_device:                     # @pclxl_close_device
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp14:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp16:
	.cfi_def_cfa_offset 32
.Ltmp17:
	.cfi_offset %rbx, -24
.Ltmp18:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	5840(%rbx), %r14
	movq	5848(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB4_2
# BB#1:                                 # %if.then
	callq	*208(%rdi)
.LBB4_2:                                # %if.end
	cmpl	$0, 8816(%rbx)
	je	.LBB4_4
# BB#3:                                 # %if.then.4
	movl	$68, %edi
	movq	%r14, %rsi
	callq	fputc
.LBB4_4:                                # %if.end.6
	movq	%r14, %rdi
	callq	px_write_file_trailer
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	gdev_vector_close_file  # TAILCALL
.Lfunc_end4:
	.size	pclxl_close_device, .Lfunc_end4-pclxl_close_device
	.cfi_endproc

	.align	16, 0x90
	.type	pclxl_copy_mono,@function
pclxl_copy_mono:                        # @pclxl_copy_mono
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp20:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp21:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp22:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp23:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 56
	subq	$744, %rsp              # imm = 0x2E8
.Ltmp25:
	.cfi_def_cfa_offset 800
.Ltmp26:
	.cfi_offset %rbx, -56
.Ltmp27:
	.cfi_offset %r12, -48
.Ltmp28:
	.cfi_offset %r13, -40
.Ltmp29:
	.cfi_offset %r14, -32
.Ltmp30:
	.cfi_offset %r15, -24
.Ltmp31:
	.cfi_offset %rbp, -16
	movl	%r9d, %r15d
	movl	%ecx, %r10d
	movl	816(%rsp), %r9d
	movl	808(%rsp), %ebx
	movl	800(%rsp), %ebp
	movb	108(%rdi), %cl
	movl	$1, %eax
	shll	%cl, %eax
	movl	%ebp, %ecx
	orl	%r15d, %ecx
	jns	.LBB5_1
# BB#2:                                 # %if.then
	movl	%r15d, %ecx
	sarl	$31, %ecx
	andl	%r15d, %ecx
	leal	(%rbx,%rcx), %ebx
	xorl	%r14d, %r14d
	testl	%r15d, %r15d
	cmovsl	%r14d, %r15d
	subl	%ecx, %edx
	testl	%ebp, %ebp
	js	.LBB5_3
.LBB5_1:
	movl	%eax, 64(%rsp)          # 4-byte Spill
	movl	%edx, 68(%rsp)          # 4-byte Spill
	movl	%ebp, %r14d
.LBB5_4:                                # %if.end.13
	movl	832(%rdi), %ebp
	movl	836(%rdi), %r13d
	subl	%r15d, %ebp
	cmpl	%ebp, %ebx
	cmovlel	%ebx, %ebp
	subl	%r14d, %r13d
	cmpl	%r13d, %r9d
	cmovlel	%r9d, %r13d
	xorl	%r12d, %r12d
	testl	%ebp, %ebp
	jle	.LBB5_33
# BB#5:                                 # %if.end.13
	movq	%r8, 56(%rsp)           # 8-byte Spill
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movq	%rdi, 72(%rsp)          # 8-byte Spill
	movl	%r10d, 52(%rsp)         # 4-byte Spill
	testl	%r13d, %r13d
	jle	.LBB5_33
# BB#6:                                 # %do.end.35
	xorl	%esi, %esi
	movq	72(%rsp), %rdi          # 8-byte Reload
	callq	gdev_vector_update_clip_path
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB5_33
# BB#7:                                 # %if.end.39
	movq	832(%rsp), %rcx
	movq	824(%rsp), %rbx
	cmpl	$1, %ebp
	movl	68(%rsp), %r12d         # 4-byte Reload
	je	.LBB5_10
# BB#8:                                 # %if.end.39
	movl	%r12d, %eax
	andl	$7, %eax
	jne	.LBB5_10
# BB#9:                                 # %if.end.39
	cmpl	$1, %r13d
	je	.LBB5_10
# BB#11:                                # %if.end.50
	movq	72(%rsp), %rdi          # 8-byte Reload
	movl	%r15d, %esi
	movl	%r14d, %edx
	movq	%rbx, %r14
	movq	%rcx, %rbx
	callq	pclxl_set_cursor
	movq	%rbx, %r9
	movq	%r14, %rbx
	testl	%r12d, %r12d
	jne	.LBB5_17
# BB#12:                                # %if.end.50
	cmpq	$-1, %r9
	je	.LBB5_17
# BB#13:                                # %if.end.50
	cmpq	$-1, %rbx
	jne	.LBB5_17
# BB#14:                                # %if.end.50
	cmpq	$0, 56(%rsp)            # 8-byte Folded Reload
	je	.LBB5_17
# BB#15:                                # %if.then.62
	movq	%r9, %r15
	movl	$752, %esi              # imm = 0x2F0
	movq	72(%rsp), %r14          # 8-byte Reload
	movq	%r14, %rdi
	callq	gdev_vector_update_log_op
	testl	%eax, %eax
	js	.LBB5_32
# BB#16:                                # %if.end.67
	movq	%r15, 88(%rsp)
	movq	gx_dc_type_pure(%rip), %rax
	movq	%rax, 80(%rsp)
	movl	$0, 440(%rsp)
	leaq	80(%rsp), %rsi
	movl	$4, %edx
	movl	$99, %ecx
	movq	%r14, %rdi
	callq	pclxl_set_color
	movq	%r14, %rdi
	movq	40(%rsp), %rsi          # 8-byte Reload
	movl	52(%rsp), %edx          # 4-byte Reload
	movq	56(%rsp), %rcx          # 8-byte Reload
	movl	%ebp, %r8d
	movl	%r13d, %r9d
	callq	pclxl_copy_text_char
	movq	%r15, %r9
	xorl	%r12d, %r12d
	testl	%eax, %eax
	jns	.LBB5_33
.LBB5_17:                               # %if.end.74
	movl	64(%rsp), %eax          # 4-byte Reload
	decl	%eax
	cltq
	cmpq	$-1, %rbx
	je	.LBB5_18
# BB#21:                                # %if.else.91
	movl	$204, %esi
	cmpq	$-1, %r9
	je	.LBB5_23
# BB#22:
	movq	72(%rsp), %rdi          # 8-byte Reload
	jmp	.LBB5_25
.LBB5_10:                               # %if.then.48
	movq	%rcx, 32(%rsp)
	movq	%rbx, 24(%rsp)
	movl	%r13d, 16(%rsp)
	movl	%ebp, 8(%rsp)
	movl	%r14d, (%rsp)
	movq	72(%rsp), %rdi          # 8-byte Reload
	movq	40(%rsp), %rsi          # 8-byte Reload
	movl	%r12d, %edx
	movl	52(%rsp), %ecx          # 4-byte Reload
	movq	56(%rsp), %r8           # 8-byte Reload
	movl	%r15d, %r9d
	callq	gx_default_copy_mono
	movl	%eax, %r12d
	jmp	.LBB5_33
.LBB5_3:                                # %if.then.10
	movl	%eax, 64(%rsp)          # 4-byte Spill
	movl	%edx, 68(%rsp)          # 4-byte Spill
	addl	%ebp, %r9d
	imull	%r10d, %ebp
	movslq	%ebp, %rcx
	subq	%rcx, %rsi
	xorl	%r8d, %r8d
	jmp	.LBB5_4
.LBB5_18:                               # %if.then.77
	xorl	%r12d, %r12d
	cmpq	$-1, %r9
	je	.LBB5_33
# BB#19:                                # %if.end.81
	movl	$238, %esi
	xorl	%ebx, %ebx
	cmpq	%r9, %rax
	movq	72(%rsp), %rdi          # 8-byte Reload
	je	.LBB5_25
# BB#20:                                # %if.then.84
	testq	%r9, %r9
	movl	$136, %ecx
	movl	$460, %esi              # imm = 0x1CC
	cmovel	%ecx, %esi
	movq	%rax, %rbx
	jmp	.LBB5_25
.LBB5_32:                               # %cleanup.151.critedge
	xorl	%r12d, %r12d
	jmp	.LBB5_33
.LBB5_23:                               # %if.then.94
	movl	$238, %esi
	xorl	%r9d, %r9d
	cmpq	%rbx, %rax
	movq	72(%rsp), %rdi          # 8-byte Reload
	je	.LBB5_25
# BB#24:                                # %if.then.97
	testq	%rbx, %rbx
	movl	$136, %ecx
	movl	$460, %esi              # imm = 0x1CC
	cmovel	%ecx, %esi
	movq	%rax, %r9
.LBB5_25:                               # %if.end.107
	cmpl	$1, 100(%rdi)
	je	.LBB5_28
# BB#26:                                # %lor.lhs.false.111
	movq	%rbx, %rcx
	shrq	$8, %rcx
	movzwl	%bx, %edx
	movq	%r9, %rax
	shrq	$8, %rax
	movzwl	%r9w, %r8d
	cmpq	%rdx, %rcx
	jne	.LBB5_29
# BB#27:                                # %lor.lhs.false.111
	cmpq	%r8, %rax
	jne	.LBB5_29
.LBB5_28:                               # %if.then.120
	movb	%bl, 738(%rsp)
	movb	%r9b, 739(%rsp)
	movl	$1, %r15d
	movl	$2, %r14d
	jmp	.LBB5_30
.LBB5_29:                               # %if.else.127
	movq	%rbx, %rdx
	shrq	$16, %rdx
	movb	%dl, 738(%rsp)
	movb	%cl, 739(%rsp)
	movb	%bl, 740(%rsp)
	movq	%r9, %rcx
	shrq	$16, %rcx
	movb	%cl, 741(%rsp)
	movb	%al, 742(%rsp)
	movb	%r9b, 743(%rsp)
	movl	$2, %r15d
	movl	$6, %r14d
.LBB5_30:                               # %if.end.144
	movq	%rdi, %rbx
	callq	gdev_vector_update_log_op
	xorl	%r12d, %r12d
	testl	%eax, %eax
	js	.LBB5_33
# BB#31:                                # %if.end.149
	leaq	738(%rsp), %rdx
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movl	%r14d, %ecx
	callq	pclxl_set_color_palette
	movq	%rbx, %rdi
	callq	gdev_vector_stream
	movl	$pclxl_copy_mono.mi_, %esi
	movl	$8, %edx
	movq	%rax, %rdi
	callq	px_put_bytes
	movq	%rbx, %rdi
	callq	gdev_vector_stream
	movq	%rax, %r14
	movl	$108, %edx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	px_put_usa
	movl	$107, %edx
	movq	%r14, %rdi
	movl	%r13d, %esi
	callq	px_put_usa
	movq	%r14, %rdi
	movl	%ebp, %esi
	movl	%r13d, %edx
	callq	px_put_usp
	movl	$103, %esi
	movl	$176, %edx
	movq	%r14, %rdi
	callq	px_put_ac
	movq	%rbx, %rdi
	movq	40(%rsp), %rsi          # 8-byte Reload
	movl	68(%rsp), %edx          # 4-byte Reload
	movl	52(%rsp), %ecx          # 4-byte Reload
	movl	%ebp, %r8d
	movl	%r13d, %r9d
	callq	pclxl_write_image_data
	movq	5848(%rbx), %rdi
	movl	$178, %esi
	callq	spputc
.LBB5_33:                               # %cleanup.151
	movl	%r12d, %eax
	addq	$744, %rsp              # imm = 0x2E8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	pclxl_copy_mono, .Lfunc_end5-pclxl_copy_mono
	.cfi_endproc

	.align	16, 0x90
	.type	pclxl_copy_color,@function
pclxl_copy_color:                       # @pclxl_copy_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp33:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp34:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp35:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp36:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp37:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp38:
	.cfi_def_cfa_offset 128
.Ltmp39:
	.cfi_offset %rbx, -56
.Ltmp40:
	.cfi_offset %r12, -48
.Ltmp41:
	.cfi_offset %r13, -40
.Ltmp42:
	.cfi_offset %r14, -32
.Ltmp43:
	.cfi_offset %r15, -24
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rdi, %r12
	movl	144(%rsp), %r10d
	movl	136(%rsp), %edi
	movl	128(%rsp), %ebx
	movl	%ebx, %ebp
	orl	%r9d, %ebp
	js	.LBB6_2
# BB#1:
	movq	%r8, 64(%rsp)           # 8-byte Spill
	movl	%r9d, %r13d
	movl	%ebx, %eax
	jmp	.LBB6_5
.LBB6_2:                                # %if.then
	movl	%r9d, %ebp
	sarl	$31, %ebp
	xorl	%eax, %eax
	testl	%r9d, %r9d
	movl	%r9d, %r13d
	cmovsl	%eax, %r13d
	andl	%r9d, %ebp
	leal	(%rdi,%rbp), %edi
	subl	%ebp, %edx
	testl	%ebx, %ebx
	js	.LBB6_4
# BB#3:
	movq	%r8, 64(%rsp)           # 8-byte Spill
	movl	%ebx, %eax
	jmp	.LBB6_5
.LBB6_4:                                # %if.then.5
	addl	%ebx, %r10d
	imull	%ecx, %ebx
	movslq	%ebx, %rbp
	subq	%rbp, %rsi
	xorl	%ebp, %ebp
	movq	%rbp, 64(%rsp)          # 8-byte Spill
.LBB6_5:                                # %if.end.8
	movl	832(%r12), %ebx
	movl	836(%r12), %r15d
	subl	%r13d, %ebx
	cmpl	%ebx, %edi
	cmovlel	%edi, %ebx
	subl	%eax, %r15d
	cmpl	%r15d, %r10d
	cmovlel	%r10d, %r15d
	xorl	%r14d, %r14d
	testl	%ebx, %ebx
	jle	.LBB6_20
# BB#6:                                 # %if.end.8
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	movl	%ecx, 60(%rsp)          # 4-byte Spill
	testl	%r15d, %r15d
	jle	.LBB6_20
# BB#7:                                 # %do.end.26
	xorl	%esi, %esi
	movq	%r12, %rdi
	movl	%edx, %ebp
	callq	gdev_vector_update_clip_path
	movl	%ebp, %edx
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB6_20
# BB#8:                                 # %if.end.29
	movzwl	108(%r12), %ebp
	movl	100(%r12), %eax
	cmpl	$1, %eax
	jne	.LBB6_9
# BB#12:                                # %if.then.39
	cmpl	$1, 9024(%r12)
	je	.LBB6_14
# BB#13:                                # %if.then.i.69
	movq	%r12, %rdi
	movl	%edx, 36(%rsp)          # 4-byte Spill
	callq	gdev_vector_stream
	movq	%rax, %r14
	movl	$1, %esi
	movq	%r14, %rdi
	callq	px_put_ub
	movl	$3, %esi
	movl	$106, %edx
	movq	%r14, %rdi
	callq	px_put_ac
	movl	36(%rsp), %edx          # 4-byte Reload
	movq	$1, 9024(%r12)
	jmp	.LBB6_14
.LBB6_9:                                # %if.end.29
	cmpl	$3, %eax
	jne	.LBB6_14
# BB#10:                                # %if.then.34
	cmpl	$2, 9024(%r12)
	je	.LBB6_14
# BB#11:                                # %if.then.i
	movq	%r12, %rdi
	movl	%edx, 36(%rsp)          # 4-byte Spill
	callq	gdev_vector_stream
	movq	%rax, %r14
	movl	$2, %esi
	movq	%r14, %rdi
	callq	px_put_ub
	movl	$3, %esi
	movl	$106, %edx
	movq	%r14, %rdi
	callq	px_put_ac
	movl	36(%rsp), %edx          # 4-byte Reload
	movq	$2, 9024(%r12)
.LBB6_14:                               # %if.end.41
	cmpl	$1, %r15d
	je	.LBB6_17
# BB#15:                                # %if.end.41
	cmpl	$1, %ebx
	je	.LBB6_17
# BB#16:                                # %if.end.41
	imull	%edx, %ebp
	movl	%ebp, %eax
	andl	$7, %eax
	jne	.LBB6_17
# BB#18:                                # %if.end.52
	movl	%ebp, 64(%rsp)          # 4-byte Spill
	movl	$204, %esi
	movq	%r12, %rdi
	callq	gdev_vector_update_log_op
	xorl	%r14d, %r14d
	testl	%eax, %eax
	js	.LBB6_20
# BB#19:                                # %if.end.57
	movq	%r12, %rdi
	movl	%r13d, %esi
	movq	40(%rsp), %rdx          # 8-byte Reload
	callq	pclxl_set_cursor
	movq	%r12, %rdi
	callq	gdev_vector_stream
	movq	%rax, %rbp
	movzwl	108(%r12), %eax
	xorl	%r14d, %r14d
	xorl	%edx, %edx
	idivl	100(%r12)
	cltq
	movzbl	eBit_values(%rax), %esi
	movq	%rbp, %rdi
	callq	px_put_ub
	movl	$pclxl_copy_color.ci_, %esi
	movl	$6, %edx
	movq	%rbp, %rdi
	callq	px_put_bytes
	movq	%r12, %rdi
	callq	gdev_vector_stream
	movq	%rax, %rbp
	movl	$108, %edx
	movq	%rbp, %rdi
	movl	%ebx, %esi
	callq	px_put_usa
	movl	$107, %edx
	movq	%rbp, %rdi
	movl	%r15d, %esi
	callq	px_put_usa
	movq	%rbp, %rdi
	movl	%ebx, %esi
	movl	%r15d, %edx
	callq	px_put_usp
	movl	$103, %esi
	movl	$176, %edx
	movq	%rbp, %rdi
	callq	px_put_ac
	movzwl	108(%r12), %r8d
	imull	%ebx, %r8d
	movq	%r12, %rdi
	movq	48(%rsp), %rsi          # 8-byte Reload
	movl	64(%rsp), %edx          # 4-byte Reload
	movl	60(%rsp), %ecx          # 4-byte Reload
	movl	%r15d, %r9d
	callq	pclxl_write_image_data
	movq	5848(%r12), %rdi
	movl	$178, %esi
	callq	spputc
.LBB6_20:                               # %cleanup
	movl	%r14d, %eax
.LBB6_21:                               # %cleanup
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_17:                               # %if.then.50
	movl	%r15d, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movq	40(%rsp), %rax          # 8-byte Reload
	movl	%eax, (%rsp)
	movq	%r12, %rdi
	movq	48(%rsp), %rsi          # 8-byte Reload
	movl	60(%rsp), %ecx          # 4-byte Reload
	movq	64(%rsp), %r8           # 8-byte Reload
	movl	%r13d, %r9d
	callq	gx_default_copy_color
	jmp	.LBB6_21
.Lfunc_end6:
	.size	pclxl_copy_color, .Lfunc_end6-pclxl_copy_color
	.cfi_endproc

	.align	16, 0x90
	.type	pclxl_get_params,@function
pclxl_get_params:                       # @pclxl_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp45:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp47:
	.cfi_def_cfa_offset 48
.Ltmp48:
	.cfi_offset %rbx, -24
.Ltmp49:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	gdev_vector_get_params
	testl	%eax, %eax
	js	.LBB7_8
# BB#1:                                 # %if.end
	leaq	9008(%rbx), %rdx
	movl	$.L.str.19, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB7_8
# BB#2:                                 # %if.end.4
	cmpl	$0, 8868(%rbx)
	je	.LBB7_4
# BB#3:                                 # %if.then.5
	leaq	8864(%rbx), %rdx
	movl	$.L.str.20, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB7_8
.LBB7_4:                                # %if.end.10
	cmpl	$0, 9000(%rbx)
	je	.LBB7_6
# BB#5:                                 # %if.then.12
	leaq	8936(%rbx), %rdi
	movq	%rdi, 8(%rsp)
	callq	strlen
	movl	%eax, 16(%rsp)
	movl	$1, 20(%rsp)
	leaq	8(%rsp), %rdx
	movl	$.L.str.21, %esi
	movq	%r14, %rdi
	callq	param_write_string
	testl	%eax, %eax
	js	.LBB7_8
.LBB7_6:                                # %if.end.22
	leaq	9012(%rbx), %rdx
	movl	$.L.str.22, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB7_8
# BB#7:                                 # %if.end.27
	addq	$17768, %rbx            # imm = 0x4568
	movl	$.L.str.23, %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	param_write_int
	movl	%eax, %ecx
	sarl	$31, %eax
	andl	%ecx, %eax
.LBB7_8:                                # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end7:
	.size	pclxl_get_params, .Lfunc_end7-pclxl_get_params
	.cfi_endproc

	.align	16, 0x90
	.type	pclxl_put_params,@function
pclxl_put_params:                       # @pclxl_put_params
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
	pushq	%rbx
.Ltmp53:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp54:
	.cfi_def_cfa_offset 64
.Ltmp55:
	.cfi_offset %rbx, -40
.Ltmp56:
	.cfi_offset %r14, -32
.Ltmp57:
	.cfi_offset %r15, -24
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	16(%rsp), %rdx
	movl	$.L.str.19, %esi
	movq	%rbx, %rdi
	callq	param_read_bool
	testl	%eax, %eax
	js	.LBB8_1
# BB#6:                                 # %if.else
	jne	.LBB8_9
# BB#7:                                 # %if.then.20
	movl	16(%rsp), %eax
	movl	%eax, 9008(%r14)
	testl	%eax, %eax
	je	.LBB8_9
# BB#8:                                 # %do.end.25
	movl	9004(%r14), %eax
	incl	%eax
	andl	$-2, %eax
	movl	%eax, 9004(%r14)
	jmp	.LBB8_9
.LBB8_1:                                # %do.end
	movl	$.L.str.19, %esi
	movq	%rbx, %rdi
	callq	param_read_null
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB8_2
# BB#4:                                 # %if.end
	jne	.LBB8_9
# BB#5:                                 # %if.then.20.thread
	movl	$0, 9008(%r14)
.LBB8_9:                                # %if.end.28
	leaq	20(%rsp), %rdx
	movl	$.L.str.20, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB8_10
# BB#11:                                # %if.else.38
	jne	.LBB8_14
# BB#12:                                # %do.end.43
	movl	20(%rsp), %eax
	movl	%eax, 8864(%r14)
	movl	$1, 8868(%r14)
	cmpl	%eax, 8860(%r14)
	je	.LBB8_14
# BB#13:                                # %do.end.53
	movl	9004(%r14), %ecx
	incl	%ecx
	andl	$-2, %ecx
	movl	%ecx, 9004(%r14)
	movl	%eax, 8860(%r14)
.LBB8_14:                               # %if.end.61
	leaq	(%rsp), %rdx
	movl	$.L.str.21, %esi
	movq	%rbx, %rdi
	callq	param_read_string
	testl	%eax, %eax
	js	.LBB8_15
# BB#19:                                # %if.else.84
	jne	.LBB8_23
# BB#20:                                # %if.then.86
	leaq	8936(%r14), %r15
	movq	(%rsp), %rsi
	movl	8(%rsp), %edx
	movq	%r15, %rdi
	callq	strncpy
	movl	8(%rsp), %eax
	movb	$0, 8936(%r14,%rax)
	jmp	.LBB8_21
.LBB8_10:                               # %do.end.34
	movq	(%rbx), %rax
	movl	$.L.str.20, %esi
	jmp	.LBB8_3
.LBB8_15:                               # %do.end.67
	movl	$.L.str.21, %esi
	movq	%rbx, %rdi
	callq	param_read_null
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB8_16
# BB#17:                                # %if.end.77
	jne	.LBB8_23
# BB#18:                                # %do.end.82
	leaq	8936(%r14), %r15
	movb	$0, 8936(%r14)
.LBB8_21:                               # %if.then.99
	movl	$1, 9000(%r14)
	leaq	8872(%r14), %rbp
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB8_23
# BB#22:                                # %do.end.108
	movl	9004(%r14), %eax
	incl	%eax
	andl	$-2, %eax
	movl	%eax, 9004(%r14)
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	strcpy
.LBB8_23:                               # %if.end.119
	leaq	16(%rsp), %rdx
	movl	$.L.str.22, %esi
	movq	%rbx, %rdi
	callq	param_read_bool
	testl	%eax, %eax
	js	.LBB8_24
# BB#28:                                # %if.else.142
	jne	.LBB8_30
# BB#29:                                # %do.end.148
	movl	16(%rsp), %eax
	movl	%eax, 9012(%r14)
	jmp	.LBB8_30
.LBB8_24:                               # %do.end.126
	movl	$.L.str.22, %esi
	movq	%rbx, %rdi
	callq	param_read_null
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB8_25
# BB#26:                                # %if.end.137
	jne	.LBB8_30
# BB#27:                                # %if.then.140
	movl	$0, 9012(%r14)
.LBB8_30:                               # %if.end.151
	leaq	20(%rsp), %rdx
	movl	$.L.str.23, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB8_31
# BB#32:                                # %if.else.162
	jne	.LBB8_34
# BB#33:                                # %do.end.168
	movl	20(%rsp), %eax
	movl	%eax, 17768(%r14)
.LBB8_34:                               # %if.end.170
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gdev_vector_put_params
	movl	%eax, %ebp
	sarl	$31, %ebp
	andl	%eax, %ebp
	jmp	.LBB8_35
.LBB8_31:                               # %do.end.158
	movq	(%rbx), %rax
	movl	$.L.str.23, %esi
	jmp	.LBB8_3
.LBB8_2:                                # %do.end.6
	movq	(%rbx), %rax
	movl	$.L.str.19, %esi
	jmp	.LBB8_3
.LBB8_16:                               # %do.end.73
	movq	(%rbx), %rax
	movl	$.L.str.21, %esi
	jmp	.LBB8_3
.LBB8_25:                               # %do.end.133
	movq	(%rbx), %rax
	movl	$.L.str.22, %esi
.LBB8_3:                                # %cleanup
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
.LBB8_35:                               # %cleanup
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	pclxl_put_params, .Lfunc_end8-pclxl_put_params
	.cfi_endproc

	.align	16, 0x90
	.type	pclxl_fill_mask,@function
pclxl_fill_mask:                        # @pclxl_fill_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp60:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp61:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp62:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp63:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp64:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp65:
	.cfi_def_cfa_offset 144
.Ltmp66:
	.cfi_offset %rbx, -56
.Ltmp67:
	.cfi_offset %r12, -48
.Ltmp68:
	.cfi_offset %r13, -40
.Ltmp69:
	.cfi_offset %r14, -32
.Ltmp70:
	.cfi_offset %r15, -24
.Ltmp71:
	.cfi_offset %rbp, -16
	movl	%r9d, %r15d
	movl	%edx, %r12d
	movq	%rsi, %r9
	movq	%rdi, %r13
	movl	160(%rsp), %eax
	movl	152(%rsp), %edi
	movl	144(%rsp), %edx
	movl	%edx, %esi
	orl	%r15d, %esi
	js	.LBB9_2
# BB#1:
	movl	%edx, %r14d
	jmp	.LBB9_5
.LBB9_2:                                # %if.then
	movl	%r15d, %esi
	sarl	$31, %esi
	andl	%r15d, %esi
	leal	(%rdi,%rsi), %edi
	xorl	%r14d, %r14d
	testl	%r15d, %r15d
	cmovsl	%r14d, %r15d
	subl	%esi, %r12d
	testl	%edx, %edx
	js	.LBB9_4
# BB#3:
	movl	%edx, %r14d
	jmp	.LBB9_5
.LBB9_4:                                # %if.then.5
	addl	%edx, %eax
	imull	%ecx, %edx
	movslq	%edx, %rdx
	subq	%rdx, %r9
	xorl	%r8d, %r8d
.LBB9_5:                                # %if.end.8
	movl	832(%r13), %ebp
	movl	836(%r13), %ebx
	subl	%r15d, %ebp
	cmpl	%ebp, %edi
	cmovlel	%edi, %ebp
	subl	%r14d, %ebx
	cmpl	%ebx, %eax
	cmovlel	%eax, %ebx
	xorl	%eax, %eax
	testl	%ebp, %ebp
	jle	.LBB9_24
# BB#6:                                 # %if.end.8
	testl	%ebx, %ebx
	jle	.LBB9_24
# BB#7:                                 # %do.end.26
	movq	192(%rsp), %rsi
	movl	184(%rsp), %r10d
	movl	176(%rsp), %eax
	movq	168(%rsp), %rdi
	testb	$7, %r12b
	jne	.LBB9_12
# BB#8:                                 # %lor.lhs.false.28
	cmpl	$1, %ebx
	je	.LBB9_12
# BB#9:                                 # %lor.lhs.false.28
	cmpl	$1, %ebp
	je	.LBB9_12
# BB#10:                                # %lor.lhs.false.28
	cmpl	$1, %eax
	jg	.LBB9_12
# BB#11:                                # %lor.lhs.false.28
	movq	gx_dc_type_pure(%rip), %rdx
	cmpq	%rdx, (%rdi)
	jne	.LBB9_12
# BB#13:                                # %if.end.37
	movq	%r13, %rdi
	movl	%ecx, 76(%rsp)          # 4-byte Spill
	movq	%r9, 64(%rsp)           # 8-byte Spill
	movq	%r8, 80(%rsp)           # 8-byte Spill
	callq	gdev_vector_update_clip_path
	testl	%eax, %eax
	js	.LBB9_24
# BB#14:                                # %if.end.41
	movq	168(%rsp), %rdx
	movq	8(%rdx), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	movq	%r13, %rdi
	callq	gdev_vector_update_fill_color
	testl	%eax, %eax
	js	.LBB9_23
# BB#15:                                # %if.end.45
	movq	%r13, %rdi
	movl	%r15d, %esi
	movl	%r14d, %edx
	callq	pclxl_set_cursor
	movq	80(%rsp), %rax          # 8-byte Reload
	testq	%rax, %rax
	je	.LBB9_19
# BB#16:                                # %if.end.45
	testl	%r12d, %r12d
	jne	.LBB9_19
# BB#17:                                # %if.then.49
	movq	%rax, %r14
	movq	%r13, %rdi
	movl	184(%rsp), %esi
	callq	gdev_vector_update_log_op
	testl	%eax, %eax
	js	.LBB9_23
# BB#18:                                # %if.end.53
	movq	%r13, %rdi
	movq	64(%rsp), %rsi          # 8-byte Reload
	movl	76(%rsp), %edx          # 4-byte Reload
	movq	%r14, %rcx
	movl	%ebp, %r8d
	movl	%ebx, %r9d
	callq	pclxl_copy_text_char
	testl	%eax, %eax
	jns	.LBB9_23
.LBB9_19:                               # %if.end.58
	movb	108(%r13), %cl
	movl	$1, %eax
	shll	%cl, %eax
	decl	%eax
	cltq
	movl	$187, %esi
	movq	56(%rsp), %rcx          # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_21
# BB#20:                                # %if.else
	movl	184(%rsp), %eax
	orl	$460, %eax              # imm = 0x1CC
	testq	%rcx, %rcx
	movl	$136, %esi
	cmovnel	%eax, %esi
.LBB9_21:                               # %if.end.71
	movq	%r13, %rdi
	callq	gdev_vector_update_log_op
	testl	%eax, %eax
	js	.LBB9_23
# BB#22:                                # %if.end.76
	movl	$1, %esi
	movl	$.L.str.13, %edx
	movl	$2, %ecx
	movq	%r13, %rdi
	callq	pclxl_set_color_palette
	movq	%r13, %rdi
	callq	gdev_vector_stream
	movl	$pclxl_fill_mask.mi_, %esi
	movl	$8, %edx
	movq	%rax, %rdi
	callq	px_put_bytes
	movq	%r13, %rdi
	callq	gdev_vector_stream
	movq	%rax, %r14
	movl	$108, %edx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	px_put_usa
	movl	$107, %edx
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	px_put_usa
	movq	%r14, %rdi
	movl	%ebp, %esi
	movl	%ebx, %edx
	callq	px_put_usp
	movl	$103, %esi
	movl	$176, %edx
	movq	%r14, %rdi
	callq	px_put_ac
	movq	%r13, %rdi
	movq	64(%rsp), %rsi          # 8-byte Reload
	movl	%r12d, %edx
	movl	76(%rsp), %ecx          # 4-byte Reload
	movl	%ebp, %r8d
	movl	%ebx, %r9d
	callq	pclxl_write_image_data
	movq	5848(%r13), %rdi
	movl	$178, %esi
	callq	spputc
.LBB9_23:                               # %cleanup
	xorl	%eax, %eax
	jmp	.LBB9_24
.LBB9_12:                               # %if.then.36
	movq	%rsi, 48(%rsp)
	movl	%r10d, 40(%rsp)
	movl	%eax, 32(%rsp)
	movq	%rdi, 24(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%ebp, 8(%rsp)
	movl	%r14d, (%rsp)
	movq	%r13, %rdi
	movq	%r9, %rsi
	movl	%r12d, %edx
	movl	%r15d, %r9d
	callq	gx_default_fill_mask
.LBB9_24:                               # %cleanup
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	pclxl_fill_mask, .Lfunc_end9-pclxl_fill_mask
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI10_0:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI10_1:
	.long	0                       # float 0
	.text
	.align	16, 0x90
	.type	pclxl_begin_image,@function
pclxl_begin_image:                      # @pclxl_begin_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp73:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp74:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp75:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp76:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp77:
	.cfi_def_cfa_offset 56
	subq	$1816, %rsp             # imm = 0x718
.Ltmp78:
	.cfi_def_cfa_offset 1872
.Ltmp79:
	.cfi_offset %rbx, -56
.Ltmp80:
	.cfi_offset %r12, -48
.Ltmp81:
	.cfi_offset %r13, -40
.Ltmp82:
	.cfi_offset %r14, -32
.Ltmp83:
	.cfi_offset %r15, -24
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	%r9, 96(%rsp)           # 8-byte Spill
	movq	%r8, 80(%rsp)           # 8-byte Spill
	movl	%ecx, 88(%rsp)          # 4-byte Spill
	movq	%rdx, %r15
	movq	%rsi, %r13
	movq	%rdi, %r14
	movq	576(%r15), %rbx
	movl	$1, %eax
	cmpl	$0, 584(%r15)
	jne	.LBB10_2
# BB#1:                                 # %cond.false
	movl	40(%r15), %ebp
	movq	%rbx, %rdi
	callq	gs_color_space_num_components
	imull	%ebp, %eax
.LBB10_2:                               # %cond.end
	movl	%eax, 64(%rsp)          # 4-byte Spill
	movq	%rbx, 56(%rsp)          # 8-byte Spill
	movq	1880(%rsp), %r12
	leaq	8(%r15), %rdi
	leaq	1792(%rsp), %rbp
	movq	%rbp, %rsi
	callq	gs_matrix_invert
	leaq	132(%r13), %rsi
	movq	%r13, 72(%rsp)          # 8-byte Spill
	movq	%rbp, %rdi
	movq	%rbp, %rdx
	callq	gs_matrix_multiply
	movss	1792(%rsp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movss	1804(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm3
	mulss	%xmm0, %xmm3
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm3
	jne	.LBB10_3
	jnp	.LBB10_5
.LBB10_3:                               # %land.lhs.true
	movss	1796(%rsp), %xmm3       # xmm3 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm3
	jne	.LBB10_5
	jp	.LBB10_5
# BB#4:                                 # %land.lhs.true.5
	movss	1800(%rsp), %xmm3       # xmm3 = mem[0],zero,zero,zero
	xorps	%xmm4, %xmm4
	ucomiss	%xmm4, %xmm3
	jne	.LBB10_5
	jnp	.LBB10_8
.LBB10_5:                               # %land.lhs.true.7
	ucomiss	%xmm2, %xmm1
	jne	.LBB10_82
	jp	.LBB10_82
# BB#6:                                 # %land.lhs.true.7
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB10_82
	jp	.LBB10_82
# BB#7:                                 # %land.lhs.true.13
	movss	1796(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	mulss	1800(%rsp), %xmm0
	ucomiss	%xmm1, %xmm0
	jne	.LBB10_8
	jnp	.LBB10_82
.LBB10_8:                               # %lor.lhs.false
	cmpl	$0, 584(%r15)
	je	.LBB10_11
# BB#9:                                 # %cond.true.20
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rax
	cmpq	gx_dc_type_pure(%rip), %rax
	jne	.LBB10_82
# BB#10:                                # %lor.lhs.false.22
	movl	572(%r15), %eax
	orl	88(%rsp), %eax          # 4-byte Folded Reload
	jne	.LBB10_82
	jmp	.LBB10_19
.LBB10_11:                              # %cond.false.24
	movq	576(%r15), %rbp
	movq	%rbp, %rdi
	callq	gs_color_space_get_index
	cmpl	$12, %eax
	jne	.LBB10_12
# BB#89:                                # %if.then.5.i
	movq	64(%rbp), %rdi
	callq	gsicc_get_default_type
	cmpl	$3, %eax
	jb	.LBB10_17
	jmp	.LBB10_82
.LBB10_12:                              # %cond.false.24
	cmpl	$10, %eax
	jne	.LBB10_15
# BB#13:                                # %if.then.i
	cmpl	$0, 96(%rbp)
	jne	.LBB10_82
# BB#14:                                # %if.end.i
	movq	%rbp, %rdi
	callq	gs_cspace_base_space
	movq	%rax, %rdi
	callq	gs_color_space_get_index
.LBB10_15:                              # %pclxl_can_handle_color_space.exit
	cmpl	$12, %eax
	ja	.LBB10_17
# BB#16:                                # %pclxl_can_handle_color_space.exit
	movl	$6656, %ecx             # imm = 0x1A00
	btl	%eax, %ecx
	jb	.LBB10_82
.LBB10_17:                              # %lor.lhs.false.28
	movl	64(%rsp), %edx          # 4-byte Reload
	cmpl	$1, %edx
	setne	%al
	cmpl	$4, %edx
	setne	%sil
	cmpl	$8, %edx
	setne	%cl
	cmpl	$24, %edx
	setne	%dl
	cmpl	$0, 88(%rsp)            # 4-byte Folded Reload
	jne	.LBB10_82
# BB#18:                                # %lor.lhs.false.28
	andb	%sil, %al
	andb	%al, %cl
	andb	%cl, %dl
	jne	.LBB10_82
.LBB10_19:                              # %lor.lhs.false.38
	cmpq	$0, 80(%rsp)            # 8-byte Folded Reload
	jne	.LBB10_82
# BB#20:                                # %lor.lhs.false.38
	movl	564(%r15), %eax
	testl	%eax, %eax
	jne	.LBB10_82
# BB#21:                                # %if.end
	movl	32(%r15), %r13d
	imull	64(%rsp), %r13d         # 4-byte Folded Reload
	addl	$7, %r13d
	sarl	$3, %r13d
	movl	%r13d, 52(%rsp)         # 4-byte Spill
	movl	$500000, %eax           # imm = 0x7A120
	xorl	%edx, %edx
	divl	%r13d
	movl	36(%r15), %ecx
	cmpl	%ecx, %eax
	cmovgl	%ecx, %eax
	testl	%eax, %eax
	movl	$1, %ebx
	cmovgl	%eax, %ebx
	movl	$st_pclxl_image_enum, %esi
	movl	$.L.str.14, %edx
	movq	%r12, %rbp
	movq	%rbp, %rdi
	callq	*72(%rbp)
	movq	%rax, %r12
	movl	%ebx, %esi
	imull	%r13d, %esi
	movl	$.L.str.15, %edx
	movq	%rbp, %rdi
	callq	*64(%rbp)
	testq	%r12, %r12
	je	.LBB10_81
# BB#22:                                # %if.end
	testq	%rax, %rax
	je	.LBB10_81
# BB#23:                                # %if.end.58
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	%r12, 24(%rsp)
	movq	1880(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	1872(%rsp), %rax
	movq	%rax, (%rsp)
	movq	$pclxl_image_enum_procs, 16(%rsp)
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	movq	72(%rsp), %r13          # 8-byte Reload
	movq	%r13, %rsi
	movq	%r15, %rdx
	movl	88(%rsp), %ecx          # 4-byte Reload
	movq	96(%rsp), %r9           # 8-byte Reload
	callq	gdev_vector_begin_image
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB10_88
# BB#24:                                # %if.end.62
	movl	$0, 656(%r12)
	movss	1792(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	1804(%rsp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm1
	jbe	.LBB10_27
# BB#25:                                # %if.then.67
	ucomiss	%xmm0, %xmm2
	jbe	.LBB10_44
# BB#26:                                # %if.then.70
	movq	%r14, %rdi
	callq	gdev_vector_stream
	movq	%rax, %rbp
	movss	1792(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movaps	.LCPI10_0(%rip), %xmm1  # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm1, %xmm0
	movss	%xmm0, 1792(%rsp)
	movss	1804(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm0
	movss	%xmm0, 1804(%rsp)
	movss	1808(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm0
	movss	%xmm0, 1808(%rsp)
	movss	1812(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm0
	movss	%xmm0, 1812(%rsp)
	jmp	.LBB10_30
.LBB10_27:                              # %if.else
	ucomiss	%xmm1, %xmm2
	jbe	.LBB10_32
# BB#28:                                # %if.then.86
	movl	$1, 656(%r12)
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB10_31
# BB#29:                                # %if.then.90
	movq	%r14, %rdi
	callq	gdev_vector_stream
	movq	%rax, %rbp
	movss	1792(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movaps	.LCPI10_0(%rip), %xmm1  # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm1, %xmm0
	movss	%xmm0, 1792(%rsp)
	movss	1808(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm0
	movss	%xmm0, 1808(%rsp)
.LBB10_30:                              # %if.end.187
	movl	$180, %esi
	movq	%rbp, %rdi
	callq	px_put_ss
	movl	$2, 17764(%r14)
	jmp	.LBB10_43
.LBB10_32:                              # %if.else.108
	movss	1796(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	mulss	1800(%rsp), %xmm0
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB10_36
# BB#33:                                # %if.then.113
	movq	%r14, %rdi
	callq	gdev_vector_stream
	movq	%rax, %rbp
	movss	1796(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI10_1, %xmm0
	jbe	.LBB10_35
# BB#34:                                # %if.then.118
	movss	%xmm0, 1792(%rsp)
	movss	1800(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movaps	.LCPI10_0(%rip), %xmm1  # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm1, %xmm0
	movss	%xmm0, 1804(%rsp)
	movl	1812(%rsp), %eax
	movss	1808(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movl	%eax, 1808(%rsp)
	xorps	%xmm1, %xmm0
	movss	%xmm0, 1812(%rsp)
	jmp	.LBB10_39
.LBB10_31:                              # %if.else.100
	movss	1804(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movaps	.LCPI10_0(%rip), %xmm1  # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm1, %xmm0
	movss	%xmm0, 1804(%rsp)
	movss	1812(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm0
	movss	%xmm0, 1812(%rsp)
	jmp	.LBB10_44
.LBB10_36:                              # %if.else.145
	ucomiss	%xmm1, %xmm0
	jbe	.LBB10_44
# BB#37:                                # %if.then.150
	movq	%r14, %rdi
	callq	gdev_vector_stream
	movq	%rax, %rbp
	movl	$1, 656(%r12)
	movss	1796(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.LBB10_40
# BB#38:                                # %if.then.157
	movss	%xmm0, 1792(%rsp)
	movl	1800(%rsp), %eax
	movl	%eax, 1804(%rsp)
	movl	1808(%rsp), %eax
	movl	1812(%rsp), %ecx
	movl	%ecx, 1808(%rsp)
	movl	%eax, 1812(%rsp)
.LBB10_39:                              # %if.end.181
	movl	$-90, %esi
	movq	%rbp, %rdi
	callq	px_put_ss
	movl	$-1, %eax
	jmp	.LBB10_42
.LBB10_35:                              # %if.else.130
	movaps	.LCPI10_0(%rip), %xmm1  # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm1, %xmm0
	movss	%xmm0, 1792(%rsp)
	movl	1800(%rsp), %eax
	movl	%eax, 1804(%rsp)
	movl	1808(%rsp), %eax
	movss	1812(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm0
	movss	%xmm0, 1808(%rsp)
	movl	%eax, 1812(%rsp)
	jmp	.LBB10_41
.LBB10_40:                              # %if.else.167
	movaps	.LCPI10_0(%rip), %xmm1  # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm1, %xmm0
	movss	%xmm0, 1792(%rsp)
	movss	1800(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm0
	movss	%xmm0, 1804(%rsp)
	movss	1808(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	1812(%rsp), %xmm2       # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm2
	movss	%xmm2, 1808(%rsp)
	xorps	%xmm1, %xmm0
	movss	%xmm0, 1812(%rsp)
.LBB10_41:                              # %if.end.181
	movl	$90, %esi
	movq	%rbp, %rdi
	callq	px_put_ss
	movl	$1, %eax
.LBB10_42:                              # %if.end.181
	movl	%eax, 17764(%r14)
	movl	$0, 1800(%rsp)
	movl	$0, 1796(%rsp)
.LBB10_43:                              # %if.end.187
	movl	$41, %esi
	movl	$118, %edx
	movq	%rbp, %rdi
	callq	px_put_ac
.LBB10_44:                              # %if.end.187
	movq	1808(%rsp), %rax
	movq	%rax, 620(%r12)
	movups	1792(%rsp), %xmm0
	movups	%xmm0, 604(%r12)
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	%rax, 632(%r12)
	movl	%ebx, 640(%r12)
	movl	$0, 644(%r12)
	movl	52(%rsp), %eax          # 4-byte Reload
	movl	%eax, 648(%r12)
	movq	1888(%rsp), %rax
	movq	%r12, (%rax)
	movl	212(%r13), %ebx
	cmpl	$0, 584(%r15)
	je	.LBB10_52
# BB#45:                                # %if.then.195
	movss	44(%r15), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movl	$.L.str.13, %ebp
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB10_47
	jp	.LBB10_47
# BB#46:                                # %select.mid
	movl	$.L.str.16, %ebp
.LBB10_47:                              # %select.end
	movq	96(%rsp), %rdx          # 8-byte Reload
	movq	8(%rdx), %r13
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	gdev_vector_update_fill_color
	testl	%eax, %eax
	movq	40(%rsp), %rax          # 8-byte Reload
	js	.LBB10_81
# BB#48:                                # %if.end.201
	movq	%rbp, 64(%rsp)          # 8-byte Spill
	movq	%rax, %rbp
	movb	108(%r14), %cl
	movl	$1, %eax
	shll	%cl, %eax
	decl	%eax
	cltq
	movl	$187, %esi
	cmpq	%rax, %r13
	je	.LBB10_50
# BB#49:                                # %if.else.207
	orl	$460, %ebx              # imm = 0x1CC
	testq	%r13, %r13
	movl	$136, %esi
	cmovnel	%ebx, %esi
.LBB10_50:                              # %if.end.213
	movq	%r14, %rdi
	callq	gdev_vector_update_log_op
	testl	%eax, %eax
	movq	%rbp, %rax
	movq	64(%rsp), %rdx          # 8-byte Reload
	js	.LBB10_81
# BB#51:                                # %cleanup
	movl	$1, %esi
	movl	$2, %ecx
	movq	%r14, %rdi
.LBB10_79:                              # %cleanup.347.thread
	callq	pclxl_set_color_palette
	xorl	%ebp, %ebp
	jmp	.LBB10_88
.LBB10_52:                              # %if.else.220
	cmpl	$24, 64(%rsp)           # 4-byte Folded Reload
	jne	.LBB10_61
# BB#53:                                # %if.then.223
	cmpl	$0, 572(%r15)
	jne	.LBB10_55
# BB#54:                                # %cond.false.227
	movl	%ebx, %eax
	andl	$15, %eax
	shll	$4, %eax
	andl	$-241, %ebx
	orl	%eax, %ebx
.LBB10_55:                              # %cond.end.231
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	gdev_vector_update_log_op
	testl	%eax, %eax
	movq	40(%rsp), %rax          # 8-byte Reload
	js	.LBB10_81
# BB#56:                                # %if.end.237
	movl	9024(%r14), %eax
	cmpl	$1, 100(%r14)
	jne	.LBB10_59
# BB#57:                                # %if.then.241
	xorl	%ebp, %ebp
	cmpl	$1, %eax
	je	.LBB10_88
# BB#58:                                # %if.then.i.182
	movq	%r14, %rdi
	callq	gdev_vector_stream
	movq	%rax, %rbx
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	px_put_ub
	movl	$3, %esi
	movl	$106, %edx
	movq	%rbx, %rdi
	callq	px_put_ac
	movq	$1, 9024(%r14)
	jmp	.LBB10_88
.LBB10_61:                              # %if.else.244
	movl	%ebx, %esi
	movl	40(%r15), %ebx
	movl	44(%r12), %eax
	imull	48(%r12), %eax
	cltd
	idivl	%ebx
	movl	%eax, %r13d
	movl	$1, %ebp
	movb	%bl, %cl
	shll	%cl, %ebp
	cmpl	$0, 572(%r15)
	jne	.LBB10_63
# BB#62:                                # %cond.false.256
	movl	%esi, %eax
	andl	$15, %eax
	shll	$4, %eax
	andl	$-241, %esi
	orl	%eax, %esi
.LBB10_63:                              # %cond.end.261
	movq	%r14, %rdi
	callq	gdev_vector_update_log_op
	testl	%eax, %eax
	movl	64(%rsp), %ecx          # 4-byte Reload
	js	.LBB10_80
# BB#64:                                # %for.cond.preheader
	movl	$1, %eax
	shll	%cl, %eax
	cmpl	$31, %ecx
	jne	.LBB10_66
# BB#65:                                # %for.cond.preheader.for.end.336_crit_edge
	movl	%eax, 40(%rsp)          # 4-byte Spill
	movl	100(%r14), %eax
	jmp	.LBB10_76
.LBB10_80:                              # %cleanup.356
	movq	40(%rsp), %rax          # 8-byte Reload
.LBB10_81:                              # %fail
	movl	$.L.str.15, %edx
	movq	1880(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	*24(%rbp)
	movl	$.L.str.14, %edx
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*24(%rbp)
	movq	%rbp, %r12
.LBB10_82:                              # %use_default
	movl	9024(%r14), %eax
	cmpl	$1, 100(%r14)
	jne	.LBB10_85
# BB#83:                                # %if.then.366
	cmpl	$1, %eax
	je	.LBB10_87
# BB#84:                                # %if.then.i.195
	movq	%r14, %rdi
	callq	gdev_vector_stream
	movq	%rax, %rbp
	movl	$1, %esi
	movq	%rbp, %rdi
	callq	px_put_ub
	movl	$3, %esi
	movl	$106, %edx
	movq	%rbp, %rdi
	callq	px_put_ac
	movq	$1, 9024(%r14)
	jmp	.LBB10_87
.LBB10_85:                              # %if.else.367
	cmpl	$2, %eax
	je	.LBB10_87
# BB#86:                                # %if.then.i.202
	movq	%r14, %rdi
	callq	gdev_vector_stream
	movq	%rax, %rbp
	movl	$2, %esi
	movq	%rbp, %rdi
	callq	px_put_ub
	movl	$3, %esi
	movl	$106, %edx
	movq	%rbp, %rdi
	callq	px_put_ac
	movq	$2, 9024(%r14)
.LBB10_87:                              # %if.end.368
	movq	1888(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	%r12, 8(%rsp)
	movq	1872(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%r14, %rdi
	movq	72(%rsp), %rsi          # 8-byte Reload
	movq	%r15, %rdx
	movl	88(%rsp), %ecx          # 4-byte Reload
	movq	80(%rsp), %r8           # 8-byte Reload
	movq	96(%rsp), %r9           # 8-byte Reload
	callq	gx_default_begin_image
	movl	%eax, %ebp
.LBB10_88:                              # %cleanup.370
	movl	%ebp, %eax
	addq	$1816, %rsp             # imm = 0x718
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_59:                              # %if.else.242
	xorl	%ebp, %ebp
	cmpl	$2, %eax
	je	.LBB10_88
# BB#60:                                # %if.then.i.188
	movq	%r14, %rdi
	callq	gdev_vector_stream
	movq	%rax, %rbx
	movl	$2, %esi
	movq	%rbx, %rdi
	callq	px_put_ub
	movl	$3, %esi
	movl	$106, %edx
	movq	%rbx, %rdi
	callq	px_put_ac
	movq	$2, 9024(%r14)
	jmp	.LBB10_88
.LBB10_66:                              # %for.body.lr.ph
	decl	%ebp
	cvtsi2ssl	%ebp, %xmm3
	movss	%xmm3, 96(%rsp)         # 4-byte Spill
	movslq	%eax, %rcx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	movl	%eax, 40(%rsp)          # 4-byte Spill
	movslq	%r13d, %rax
	incq	%rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	leal	-1(%r13,%r13), %eax
	movl	%eax, 52(%rsp)          # 4-byte Spill
	xorl	%r12d, %r12d
.LBB10_67:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_69 Depth 2
	testl	%r13d, %r13d
	jle	.LBB10_70
# BB#68:                                # %for.body.275.lr.ph
                                        #   in Loop: Header=BB10_67 Depth=1
	movl	52(%rsp), %eax          # 4-byte Reload
	movq	80(%rsp), %rdx          # 8-byte Reload
	movl	%r12d, %esi
	.align	16, 0x90
.LBB10_69:                              # %for.body.275
                                        #   Parent Loop BB10_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-1(%rax), %ecx
	movslq	%ecx, %rcx
	movss	44(%r15,%rcx,4), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movl	%esi, %ecx
	andl	%ebp, %ecx
	cvtsi2ssl	%ecx, %xmm1
	cltq
	movss	44(%r15,%rax,4), %xmm2  # xmm2 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm2
	mulss	%xmm1, %xmm2
	divss	%xmm3, %xmm2
	addss	%xmm0, %xmm2
	movss	%xmm2, 760(%rsp,%rdx,4)
	movb	%bl, %cl
	sarl	%cl, %esi
	decq	%rdx
	addl	$-2, %eax
	cmpq	$1, %rdx
	jg	.LBB10_69
.LBB10_70:                              # %for.end
                                        #   in Loop: Header=BB10_67 Depth=1
	movq	56(%rsp), %rsi          # 8-byte Reload
	movq	(%rsi), %rax
	movl	$1, %r9d
	leaq	760(%rsp), %rdi
	leaq	104(%rsp), %rdx
	movq	72(%rsp), %rcx          # 8-byte Reload
	movq	%r14, %r8
	callq	*72(%rax)
	movq	gx_dc_type_pure(%rip), %rax
	cmpq	%rax, 104(%rsp)
	jne	.LBB10_71
# BB#72:                                # %if.end.304
                                        #   in Loop: Header=BB10_67 Depth=1
	movq	112(%rsp), %rcx
	movl	100(%r14), %eax
	cmpl	$1, %eax
	movss	96(%rsp), %xmm3         # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	jne	.LBB10_74
# BB#73:                                # %if.then.311
                                        #   in Loop: Header=BB10_67 Depth=1
	movb	%cl, 1024(%rsp,%r12)
	jmp	.LBB10_75
.LBB10_74:                              # %if.else.315
                                        #   in Loop: Header=BB10_67 Depth=1
	leaq	(%r12,%r12,2), %rdx
	movq	%rcx, %rsi
	shrq	$16, %rsi
	movb	%sil, 1024(%rsp,%rdx)
	movb	%ch, 1025(%rsp,%rdx)  # NOREX
	movb	%cl, 1026(%rsp,%rdx)
.LBB10_75:                              # %for.inc.335
                                        #   in Loop: Header=BB10_67 Depth=1
	incq	%r12
	cmpq	88(%rsp), %r12          # 8-byte Folded Reload
	jl	.LBB10_67
.LBB10_76:                              # %for.end.336
	cmpl	$1, %eax
	movl	64(%rsp), %ecx          # 4-byte Reload
	jne	.LBB10_78
# BB#77:                                # %if.then.341
	leaq	1024(%rsp), %rdx
	movl	$1, %esi
	movq	%r14, %rdi
	movl	40(%rsp), %ecx          # 4-byte Reload
	jmp	.LBB10_79
.LBB10_78:                              # %if.else.343
	movl	$3, %eax
	shll	%cl, %eax
	leaq	1024(%rsp), %rdx
	movl	$2, %esi
	movq	%r14, %rdi
	movl	%eax, %ecx
	jmp	.LBB10_79
.LBB10_71:                              # %cleanup.356.thread216
	movl	$-100, %ebp
	jmp	.LBB10_88
.Lfunc_end10:
	.size	pclxl_begin_image, .Lfunc_end10-pclxl_begin_image
	.cfi_endproc

	.align	16, 0x90
	.type	pclxl_strip_copy_rop,@function
pclxl_strip_copy_rop:                   # @pclxl_strip_copy_rop
	.cfi_startproc
# BB#0:                                 # %entry
	movl	72(%rsp), %r10d
	leal	(%r10,%r10), %eax
	xorl	%r10d, %eax
	testb	$-86, %al
	je	.LBB11_2
# BB#1:                                 # %return
	xorl	%eax, %eax
	retq
.LBB11_2:                               # %if.then
	jmp	gx_default_strip_copy_rop # TAILCALL
.Lfunc_end11:
	.size	pclxl_strip_copy_rop, .Lfunc_end11-pclxl_strip_copy_rop
	.cfi_endproc

	.align	16, 0x90
	.type	pclxl_beginpage,@function
pclxl_beginpage:                        # @pclxl_beginpage
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp85:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp86:
	.cfi_def_cfa_offset 24
	subq	$40, %rsp
.Ltmp87:
	.cfi_def_cfa_offset 64
.Ltmp88:
	.cfi_offset %rbx, -24
.Ltmp89:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	5848(%rbx), %r14
	movb	$1, 39(%rsp)
	incl	9004(%rbx)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	px_write_page_header
	cmpl	$0, 8856(%rbx)
	je	.LBB12_3
# BB#1:                                 # %land.lhs.true
	cmpl	$0, 8852(%rbx)
	je	.LBB12_3
# BB#2:                                 # %if.then
	movb	$2, 39(%rsp)
	jmp	.LBB12_6
.LBB12_3:                               # %if.else
	cmpl	$0, 8868(%rbx)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true.3
	movl	8864(%rbx), %eax
	testl	%eax, %eax
	js	.LBB12_6
# BB#5:                                 # %if.then.4
	movb	%al, 39(%rsp)
.LBB12_6:                               # %if.end.6
	movl	9000(%rbx), %eax
	movl	9004(%rbx), %r8d
	movl	9008(%rbx), %r9d
	movl	9012(%rbx), %ecx
	leaq	8936(%rbx), %rdx
	movq	%rdx, 16(%rsp)
	movl	%eax, 8(%rsp)
	movl	%ecx, (%rsp)
	leaq	39(%rsp), %rcx
	leaq	8848(%rbx), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	px_write_select_media
	movl	$67, %esi
	movq	%r14, %rdi
	callq	spputc
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end12:
	.size	pclxl_beginpage, .Lfunc_end12-pclxl_beginpage
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	pclxl_setlinewidth,@function
pclxl_setlinewidth:                     # @pclxl_setlinewidth
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp90:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp91:
	.cfi_def_cfa_offset 32
.Ltmp92:
	.cfi_offset %rbx, -16
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	callq	gdev_vector_stream
	movq	%rax, %rbx
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	.LCPI13_0(%rip), %xmm0
	cvttsd2si	%xmm0, %rsi
	movq	%rbx, %rdi
	callq	px_put_us
	movl	$75, %esi
	movl	$122, %edx
	movq	%rbx, %rdi
	callq	px_put_ac
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end13:
	.size	pclxl_setlinewidth, .Lfunc_end13-pclxl_setlinewidth
	.cfi_endproc

	.align	16, 0x90
	.type	pclxl_setlinecap,@function
pclxl_setlinecap:                       # @pclxl_setlinecap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp94:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp95:
	.cfi_def_cfa_offset 32
.Ltmp96:
	.cfi_offset %rbx, -24
.Ltmp97:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	callq	gdev_vector_stream
	movq	%rax, %rbx
	movzbl	%bpl, %esi
	movq	%rbx, %rdi
	callq	px_put_ub
	movl	$71, %esi
	movl	$113, %edx
	movq	%rbx, %rdi
	callq	px_put_ac
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end14:
	.size	pclxl_setlinecap, .Lfunc_end14-pclxl_setlinecap
	.cfi_endproc

	.align	16, 0x90
	.type	pclxl_setlinejoin,@function
pclxl_setlinejoin:                      # @pclxl_setlinejoin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp99:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp100:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp101:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp102:
	.cfi_def_cfa_offset 48
.Ltmp103:
	.cfi_offset %rbx, -40
.Ltmp104:
	.cfi_offset %r14, -32
.Ltmp105:
	.cfi_offset %r15, -24
.Ltmp106:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	callq	gdev_vector_stream
	movq	%rax, %r14
	cmpl	$4, %ebp
	jb	.LBB15_2
# BB#1:                                 # %if.then
	movq	24(%rbx), %r14
	callq	gs_program_name
	movq	%rax, %r15
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbx), %rdi
	movl	$.L.str.5, %esi
	xorl	%eax, %eax
	movl	%ebp, %edx
	callq	errprintf
	jmp	.LBB15_3
.LBB15_2:                               # %if.end
	movzbl	%bpl, %esi
	movq	%r14, %rdi
	callq	px_put_ub
	movl	$72, %esi
	movl	$114, %edx
	movq	%r14, %rdi
	callq	px_put_ac
.LBB15_3:                               # %cleanup
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	pclxl_setlinejoin, .Lfunc_end15-pclxl_setlinejoin
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	pclxl_setmiterlimit,@function
pclxl_setmiterlimit:                    # @pclxl_setmiterlimit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp107:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp108:
	.cfi_def_cfa_offset 32
.Ltmp109:
	.cfi_offset %rbx, -16
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	callq	gdev_vector_stream
	movq	%rax, %rbx
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	.LCPI16_0(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	testl	%eax, %eax
	movl	$1, %esi
	cmovgl	%eax, %esi
	movq	%rbx, %rdi
	callq	px_put_u
	movl	$73, %esi
	movl	$115, %edx
	movq	%rbx, %rdi
	callq	px_put_ac
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end16:
	.size	pclxl_setmiterlimit, .Lfunc_end16-pclxl_setmiterlimit
	.cfi_endproc

	.align	16, 0x90
	.type	pclxl_setdash,@function
pclxl_setdash:                          # @pclxl_setdash
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp110:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp111:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp112:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp113:
	.cfi_def_cfa_offset 48
.Ltmp114:
	.cfi_offset %rbx, -32
.Ltmp115:
	.cfi_offset %r14, -24
.Ltmp116:
	.cfi_offset %rbp, -16
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movl	%edx, %ebp
	movq	%rsi, %rbx
	callq	gdev_vector_stream
	movq	%rax, %r14
	testl	%ebp, %ebp
	je	.LBB17_1
# BB#2:                                 # %if.else
	movl	$-13, %eax
	cmpl	$255, %ebp
	ja	.LBB17_8
# BB#3:                                 # %for.body.lr.ph
	movl	$201, %esi
	movq	%r14, %rdi
	callq	spputc
	movzbl	%bpl, %esi
	movq	%r14, %rdi
	callq	px_put_ub
	.align	16, 0x90
.LBB17_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cvttss2si	(%rbx), %rsi
	movq	%r14, %rdi
	callq	px_put_s
	addq	$4, %rbx
	decl	%ebp
	jne	.LBB17_4
# BB#5:                                 # %for.end
	movl	$74, %esi
	movq	%r14, %rdi
	callq	px_put_a
	xorpd	%xmm0, %xmm0
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	jne	.LBB17_6
	jnp	.LBB17_7
.LBB17_6:                               # %if.then.10
	cvttsd2si	%xmm0, %rsi
	movl	$67, %edx
	movq	%r14, %rdi
	callq	px_put_usa
	jmp	.LBB17_7
.LBB17_1:                               # %if.then
	movl	$pclxl_setdash.nac_, %esi
	movl	$4, %edx
	movq	%r14, %rdi
	callq	px_put_bytes
.LBB17_7:                               # %if.end.13
	movl	$112, %esi
	movq	%r14, %rdi
	callq	spputc
	xorl	%eax, %eax
.LBB17_8:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end17:
	.size	pclxl_setdash, .Lfunc_end17-pclxl_setdash
	.cfi_endproc

	.align	16, 0x90
	.type	pclxl_setlogop,@function
pclxl_setlogop:                         # @pclxl_setlogop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp117:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp118:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp119:
	.cfi_def_cfa_offset 32
.Ltmp120:
	.cfi_offset %rbx, -32
.Ltmp121:
	.cfi_offset %r14, -24
.Ltmp122:
	.cfi_offset %rbp, -16
	movl	%edx, %ebx
	movl	%esi, %r14d
	callq	gdev_vector_stream
	movq	%rax, %rbp
	testb	$1, %bh
	je	.LBB18_2
# BB#1:                                 # %if.then
	movl	%r14d, %esi
	shrl	$8, %esi
	andl	$1, %esi
	movq	%rbp, %rdi
	callq	px_put_ub
	movl	$45, %esi
	movl	$124, %edx
	movq	%rbp, %rdi
	callq	px_put_ac
.LBB18_2:                               # %if.end
	testb	$2, %bh
	je	.LBB18_4
# BB#3:                                 # %if.then.5
	movl	%r14d, %esi
	shrl	$9, %esi
	andl	$1, %esi
	movq	%rbp, %rdi
	callq	px_put_ub
	movl	$45, %esi
	movl	$120, %edx
	movq	%rbp, %rdi
	callq	px_put_ac
.LBB18_4:                               # %if.end.10
	testb	%bl, %bl
	je	.LBB18_6
# BB#5:                                 # %if.then.13
	movzbl	%r14b, %esi
	movq	%rbp, %rdi
	callq	px_put_ub
	movl	$44, %esi
	movl	$123, %edx
	movq	%rbp, %rdi
	callq	px_put_ac
.LBB18_6:                               # %if.end.16
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end18:
	.size	pclxl_setlogop, .Lfunc_end18-pclxl_setlogop
	.cfi_endproc

	.align	16, 0x90
	.type	pclxl_can_handle_hl_color,@function
pclxl_can_handle_hl_color:              # @pclxl_can_handle_hl_color
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end19:
	.size	pclxl_can_handle_hl_color, .Lfunc_end19-pclxl_can_handle_hl_color
	.cfi_endproc

	.align	16, 0x90
	.type	pclxl_setfillcolor,@function
pclxl_setfillcolor:                     # @pclxl_setfillcolor
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rax
	movl	$4, %edx
	movl	$99, %ecx
	movq	%rax, %rsi
	jmp	pclxl_set_color         # TAILCALL
.Lfunc_end20:
	.size	pclxl_setfillcolor, .Lfunc_end20-pclxl_setfillcolor
	.cfi_endproc

	.align	16, 0x90
	.type	pclxl_setstrokecolor,@function
pclxl_setstrokecolor:                   # @pclxl_setstrokecolor
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rax
	movl	$5, %edx
	movl	$121, %ecx
	movq	%rax, %rsi
	jmp	pclxl_set_color         # TAILCALL
.Lfunc_end21:
	.size	pclxl_setstrokecolor, .Lfunc_end21-pclxl_setstrokecolor
	.cfi_endproc

	.align	16, 0x90
	.type	pclxl_dorect,@function
pclxl_dorect:                           # @pclxl_dorect
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp123:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp124:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp125:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp126:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp127:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp128:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp129:
	.cfi_def_cfa_offset 80
.Ltmp130:
	.cfi_offset %rbx, -56
.Ltmp131:
	.cfi_offset %r12, -48
.Ltmp132:
	.cfi_offset %r13, -40
.Ltmp133:
	.cfi_offset %r14, -32
.Ltmp134:
	.cfi_offset %r15, -24
.Ltmp135:
	.cfi_offset %rbp, -16
	movl	%r9d, 4(%rsp)           # 4-byte Spill
	movl	%r8d, %r15d
	movl	%ecx, %ebx
	movl	%ebx, 20(%rsp)          # 4-byte Spill
	movl	%edx, %ebp
	movl	%esi, %r12d
	movq	%rdi, %r13
	callq	gdev_vector_stream
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	%ebp, %eax
	orl	%r12d, %eax
	orl	%ebx, %eax
	orl	%r15d, %eax
	movl	$-15, %r14d
	cmpl	$16777215, %eax         # imm = 0xFFFFFF
	ja	.LBB22_5
# BB#1:                                 # %if.end
	movl	%r15d, (%rsp)           # 4-byte Spill
	movl	4(%rsp), %ebx           # 4-byte Reload
	testb	$3, %bl
	movl	%ebp, %r15d
	je	.LBB22_3
# BB#2:                                 # %if.then.14
	movq	%r13, %rdi
	movl	%ebx, %esi
	callq	pclxl_set_paints
	movq	8(%rsp), %rbp           # 8-byte Reload
	movq	%rbp, %rdi
	movl	%r12d, %esi
	movl	%r15d, %edx
	movl	20(%rsp), %ecx          # 4-byte Reload
	movl	(%rsp), %r8d            # 4-byte Reload
	callq	px_put_usq_fixed
	movl	$66, %esi
	movl	$160, %edx
	movq	%rbp, %rdi
	callq	px_put_ac
.LBB22_3:                               # %if.end.15
	xorl	%r14d, %r14d
	testb	$4, %bl
	je	.LBB22_5
# BB#4:                                 # %if.then.18
	movq	8(%rsp), %rbp           # 8-byte Reload
	movq	%rbp, %rdi
	movl	%r12d, %esi
	movl	%r15d, %edx
	movl	20(%rsp), %ecx          # 4-byte Reload
	movl	(%rsp), %r8d            # 4-byte Reload
	callq	px_put_usq_fixed
	movl	$pclxl_dorect.cr_, %esi
	movl	$7, %edx
	movq	%rbp, %rdi
	callq	px_put_bytes
.LBB22_5:                               # %cleanup
	movl	%r14d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	pclxl_dorect, .Lfunc_end22-pclxl_dorect
	.cfi_endproc

	.align	16, 0x90
	.type	pclxl_beginpath,@function
pclxl_beginpath:                        # @pclxl_beginpath
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp136:
	.cfi_def_cfa_offset 16
.Ltmp137:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	gdev_vector_stream
	movl	$133, %esi
	movq	%rax, %rdi
	callq	spputc
	movq	$0, 9808(%rbx)
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end23:
	.size	pclxl_beginpath, .Lfunc_end23-pclxl_beginpath
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI24_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	pclxl_moveto,@function
pclxl_moveto:                           # @pclxl_moveto
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp138:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp139:
	.cfi_def_cfa_offset 32
.Ltmp140:
	.cfi_offset %rbx, -16
	movsd	%xmm3, 8(%rsp)          # 8-byte Spill
	movsd	%xmm2, (%rsp)           # 8-byte Spill
	movq	%rdi, %rbx
	callq	pclxl_flush_points
	testl	%eax, %eax
	js	.LBB24_2
# BB#1:                                 # %if.end
	movsd	.LCPI24_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	(%rsp), %xmm1           # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %esi
	movl	%esi, 9800(%rbx)
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	movl	%edx, 9804(%rbx)
	movq	%rbx, %rdi
	callq	pclxl_set_cursor
	xorl	%eax, %eax
.LBB24_2:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end24:
	.size	pclxl_moveto, .Lfunc_end24-pclxl_moveto
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI25_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	pclxl_lineto,@function
pclxl_lineto:                           # @pclxl_lineto
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp141:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp142:
	.cfi_def_cfa_offset 48
.Ltmp143:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	9808(%rbx), %eax
	testl	%eax, %eax
	je	.LBB25_4
# BB#1:                                 # %entry
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	movsd	%xmm1, 24(%rsp)         # 8-byte Spill
	cmpl	$1, %eax
	jne	.LBB25_3
# BB#2:                                 # %lor.lhs.false
	movl	9812(%rbx), %eax
	cmpl	$40, %eax
	jl	.LBB25_5
.LBB25_3:                               # %if.then.7
	movq	%rbx, %rdi
	movsd	%xmm3, 8(%rsp)          # 8-byte Spill
	movsd	%xmm2, (%rsp)           # 8-byte Spill
	callq	pclxl_flush_points
	movsd	(%rsp), %xmm2           # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	8(%rsp), %xmm3          # 8-byte Reload
                                        # xmm3 = mem[0],zero
	testl	%eax, %eax
	movsd	24(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	js	.LBB25_6
.LBB25_4:                               # %if.end.10
	movsd	.LCPI25_0(%rip), %xmm4  # xmm4 = mem[0],zero
	addsd	%xmm4, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, 9800(%rbx)
	addsd	%xmm4, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, 9804(%rbx)
	movl	$1, 9808(%rbx)
	movl	9812(%rbx), %eax
.LBB25_5:                               # %if.end.20
	leal	1(%rax), %ecx
	movl	%ecx, 9812(%rbx)
	cltq
	movsd	.LCPI25_0(%rip), %xmm0  # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %ecx
	movl	%ecx, 9816(%rbx,%rax,8)
	addsd	%xmm0, %xmm3
	cvttsd2si	%xmm3, %ecx
	movl	%ecx, 9820(%rbx,%rax,8)
	xorl	%eax, %eax
.LBB25_6:                               # %cleanup.30
	addq	$32, %rsp
	popq	%rbx
	retq
.Lfunc_end25:
	.size	pclxl_lineto, .Lfunc_end25-pclxl_lineto
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI26_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	pclxl_curveto,@function
pclxl_curveto:                          # @pclxl_curveto
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp144:
	.cfi_def_cfa_offset 16
	subq	$64, %rsp
.Ltmp145:
	.cfi_def_cfa_offset 80
.Ltmp146:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	9808(%rbx), %eax
	testl	%eax, %eax
	je	.LBB26_4
# BB#1:                                 # %entry
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	movsd	%xmm1, 56(%rsp)         # 8-byte Spill
	cmpl	$2, %eax
	jne	.LBB26_3
# BB#2:                                 # %lor.lhs.false
	movl	9812(%rbx), %eax
	cmpl	$38, %eax
	jl	.LBB26_5
.LBB26_3:                               # %if.then.7
	movq	%rbx, %rdi
	movsd	%xmm7, 40(%rsp)         # 8-byte Spill
	movsd	%xmm6, 32(%rsp)         # 8-byte Spill
	movsd	%xmm5, 24(%rsp)         # 8-byte Spill
	movsd	%xmm4, 16(%rsp)         # 8-byte Spill
	movsd	%xmm3, 8(%rsp)          # 8-byte Spill
	movsd	%xmm2, (%rsp)           # 8-byte Spill
	callq	pclxl_flush_points
	movsd	(%rsp), %xmm2           # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	8(%rsp), %xmm3          # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	16(%rsp), %xmm4         # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	24(%rsp), %xmm5         # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	32(%rsp), %xmm6         # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movsd	40(%rsp), %xmm7         # 8-byte Reload
                                        # xmm7 = mem[0],zero
	testl	%eax, %eax
	movsd	56(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	js	.LBB26_6
.LBB26_4:                               # %if.end.10
	movsd	.LCPI26_0(%rip), %xmm8  # xmm8 = mem[0],zero
	addsd	%xmm8, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, 9800(%rbx)
	addsd	%xmm8, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, 9804(%rbx)
	movl	$2, 9808(%rbx)
	movl	9812(%rbx), %eax
.LBB26_5:                               # %if.end.18
	cltq
	movsd	.LCPI26_0(%rip), %xmm0  # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %ecx
	movl	%ecx, 9816(%rbx,%rax,8)
	addsd	%xmm0, %xmm3
	cvttsd2si	%xmm3, %ecx
	movl	%ecx, 9820(%rbx,%rax,8)
	addsd	%xmm0, %xmm4
	cvttsd2si	%xmm4, %ecx
	movl	%ecx, 9824(%rbx,%rax,8)
	addsd	%xmm0, %xmm5
	cvttsd2si	%xmm5, %ecx
	movl	%ecx, 9828(%rbx,%rax,8)
	addsd	%xmm0, %xmm6
	cvttsd2si	%xmm6, %ecx
	movl	%ecx, 9832(%rbx,%rax,8)
	addsd	%xmm0, %xmm7
	cvttsd2si	%xmm7, %ecx
	movl	%ecx, 9836(%rbx,%rax,8)
	addl	$3, 9812(%rbx)
	xorl	%eax, %eax
.LBB26_6:                               # %cleanup.44
	addq	$64, %rsp
	popq	%rbx
	retq
.Lfunc_end26:
	.size	pclxl_curveto, .Lfunc_end26-pclxl_curveto
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI27_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	pclxl_closepath,@function
pclxl_closepath:                        # @pclxl_closepath
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp147:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp148:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp149:
	.cfi_def_cfa_offset 48
.Ltmp150:
	.cfi_offset %rbx, -24
.Ltmp151:
	.cfi_offset %r14, -16
	movsd	%xmm3, 16(%rsp)         # 8-byte Spill
	movsd	%xmm2, 8(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	callq	gdev_vector_stream
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	pclxl_flush_points
	testl	%eax, %eax
	js	.LBB27_2
# BB#1:                                 # %if.end
	movl	$132, %esi
	movq	%r14, %rdi
	callq	spputc
	movsd	.LCPI27_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, 9800(%rbx)
	movsd	16(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, 9804(%rbx)
	xorl	%eax, %eax
.LBB27_2:                               # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end27:
	.size	pclxl_closepath, .Lfunc_end27-pclxl_closepath
	.cfi_endproc

	.align	16, 0x90
	.type	pclxl_endpath,@function
pclxl_endpath:                          # @pclxl_endpath
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp152:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp153:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp154:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp155:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp156:
	.cfi_def_cfa_offset 48
.Ltmp157:
	.cfi_offset %rbx, -48
.Ltmp158:
	.cfi_offset %r12, -40
.Ltmp159:
	.cfi_offset %r14, -32
.Ltmp160:
	.cfi_offset %r15, -24
.Ltmp161:
	.cfi_offset %rbp, -16
	movl	%esi, %r15d
	movq	%rdi, %rbx
	callq	gdev_vector_stream
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	pclxl_flush_points
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB28_9
# BB#1:                                 # %if.end
	movl	%r15d, %r12d
	andl	$8, %r12d
	testb	$3, %r15b
	je	.LBB28_5
# BB#2:                                 # %if.then.3
	cmpl	9016(%rbx), %r12d
	je	.LBB28_4
# BB#3:                                 # %if.then.5
	movl	%r12d, %eax
	shrl	$3, %eax
	movzbl	%al, %esi
	movq	%r14, %rdi
	callq	px_put_ub
	movl	$70, %esi
	movl	$110, %edx
	movq	%r14, %rdi
	callq	px_put_ac
	movl	%r12d, 9016(%rbx)
.LBB28_4:                               # %if.end.8
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	pclxl_set_paints
	movl	$134, %esi
	movq	%r14, %rdi
	callq	spputc
.LBB28_5:                               # %if.end.10
	xorl	%ebp, %ebp
	testb	$4, %r15b
	je	.LBB28_9
# BB#6:                                 # %if.then.13
	cmpl	9020(%rbx), %r12d
	je	.LBB28_8
# BB#7:                                 # %if.then.16
	movl	%r12d, %eax
	shrl	$3, %eax
	movzbl	%al, %esi
	movq	%r14, %rdi
	callq	px_put_ub
	movl	$84, %esi
	movl	$127, %edx
	movq	%r14, %rdi
	callq	px_put_ac
	movl	%r12d, 9020(%rbx)
.LBB28_8:                               # %if.end.22
	movl	$pclxl_endpath.scr_, %esi
	movl	$5, %edx
	movq	%r14, %rdi
	callq	px_put_bytes
.LBB28_9:                               # %cleanup
	movl	%ebp, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end28:
	.size	pclxl_endpath, .Lfunc_end28-pclxl_endpath
	.cfi_endproc

	.align	16, 0x90
	.type	pclxl_set_color,@function
pclxl_set_color:                        # @pclxl_set_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp162:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp163:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp164:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp165:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp166:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp167:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp168:
	.cfi_def_cfa_offset 64
.Ltmp169:
	.cfi_offset %rbx, -56
.Ltmp170:
	.cfi_offset %r12, -48
.Ltmp171:
	.cfi_offset %r13, -40
.Ltmp172:
	.cfi_offset %r14, -32
.Ltmp173:
	.cfi_offset %r15, -24
.Ltmp174:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movl	%edx, %r12d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	callq	gdev_vector_stream
	movq	%rax, %r15
	movq	(%rbx), %rax
	cmpq	gx_dc_type_pure(%rip), %rax
	je	.LBB29_1
# BB#13:                                # %if.else.19
	cmpq	gx_dc_type_null(%rip), %rax
	je	.LBB29_15
# BB#14:                                # %if.else.19
	movl	$-15, %ebx
	cmpq	gx_dc_type_none(%rip), %rax
	jne	.LBB29_27
.LBB29_15:                              # %if.then.27
	cmpl	$121, %r14d
	je	.LBB29_17
# BB#16:                                # %if.then.27
	cmpl	$99, %r14d
	jne	.LBB29_24
.LBB29_17:                              # %if.then.33
	movq	%rbp, %rdi
	callq	gdev_vector_stream
	movq	%rax, %r15
	cmpl	$99, %r14d
	jne	.LBB29_18
# BB#21:                                # %if.then.5.i
	xorl	%ebx, %ebx
	cmpl	$0, 17796(%rbp)
	jne	.LBB29_27
# BB#22:                                # %if.else.8.i
	movl	$1, 17796(%rbp)
	jmp	.LBB29_23
.LBB29_1:                               # %if.then
	movq	8(%rbx), %r12
	cmpl	$99, %r14d
	jne	.LBB29_2
# BB#4:                                 # %if.then.4
	movl	$0, 17796(%rbp)
	jmp	.LBB29_5
.LBB29_2:                               # %if.then
	cmpl	$121, %r14d
	jne	.LBB29_5
# BB#3:                                 # %if.then.2
	movl	$0, 17792(%rbp)
.LBB29_5:                               # %if.end.5
	cmpl	$1, 100(%rbp)
	je	.LBB29_7
# BB#6:                                 # %lor.lhs.false
	movq	%r12, %rbx
	shrq	$8, %rbx
	movzwl	%r12w, %eax
	cmpq	%rax, %rbx
	jne	.LBB29_10
.LBB29_7:                               # %if.then.8
	cmpl	$1, 9024(%rbp)
	je	.LBB29_9
# BB#8:                                 # %if.then.i
	movq	%rbp, %rdi
	callq	gdev_vector_stream
	movq	%rax, %rbx
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	px_put_ub
	movl	$3, %esi
	movl	$106, %edx
	movq	%rbx, %rdi
	callq	px_put_ac
	movq	$1, 9024(%rbp)
.LBB29_9:                               # %pclxl_set_color_space.exit
	movzbl	%r12b, %esi
	movl	$9, %edx
	movq	%r15, %rdi
	jmp	.LBB29_25
.LBB29_18:                              # %if.then.33
	cmpl	$121, %r14d
	jne	.LBB29_23
# BB#19:                                # %if.then.i.39
	xorl	%ebx, %ebx
	cmpl	$0, 17792(%rbp)
	jne	.LBB29_27
# BB#20:                                # %if.else.i
	movl	$1, 17792(%rbp)
.LBB29_23:                              # %if.end.11.i
	movzbl	%r12b, %edx
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	px_put_uba
	movzbl	%r14b, %esi
	movq	%r15, %rdi
	callq	spputc
	jmp	.LBB29_27
.LBB29_10:                              # %if.else
	cmpl	$2, 9024(%rbp)
	je	.LBB29_12
# BB#11:                                # %if.then.i.36
	movq	%rbp, %rdi
	callq	gdev_vector_stream
	movq	%rax, %r13
	movl	$2, %esi
	movq	%r13, %rdi
	callq	px_put_ub
	movl	$3, %esi
	movl	$106, %edx
	movq	%r13, %rdi
	callq	px_put_ac
	movq	$2, 9024(%rbp)
.LBB29_12:                              # %pclxl_set_color_space.exit37
	movl	$200, %esi
	movq	%r15, %rdi
	callq	spputc
	movl	$3, %esi
	movq	%r15, %rdi
	callq	px_put_ub
	movl	%r12d, %eax
	shrl	$16, %eax
	movzbl	%al, %esi
	movq	%r15, %rdi
	callq	spputc
	movzbl	%bl, %esi
	movq	%r15, %rdi
	callq	spputc
	movzbl	%r12b, %esi
	movq	%r15, %rdi
	callq	spputc
	movl	$11, %esi
	movq	%r15, %rdi
	callq	px_put_a
	jmp	.LBB29_26
.LBB29_24:                              # %if.else.35
	xorl	%esi, %esi
	movq	%r15, %rdi
	movl	%r12d, %edx
.LBB29_25:                              # %if.end.39
	callq	px_put_uba
.LBB29_26:                              # %if.end.39
	movzbl	%r14b, %esi
	movq	%r15, %rdi
	callq	spputc
	xorl	%ebx, %ebx
.LBB29_27:                              # %cleanup
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end29:
	.size	pclxl_set_color, .Lfunc_end29-pclxl_set_color
	.cfi_endproc

	.align	16, 0x90
	.type	pclxl_set_paints,@function
pclxl_set_paints:                       # @pclxl_set_paints
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp175:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp176:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp177:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp178:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp179:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp180:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp181:
	.cfi_def_cfa_offset 64
.Ltmp182:
	.cfi_offset %rbx, -56
.Ltmp183:
	.cfi_offset %r12, -48
.Ltmp184:
	.cfi_offset %r13, -40
.Ltmp185:
	.cfi_offset %r14, -32
.Ltmp186:
	.cfi_offset %r15, -24
.Ltmp187:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	callq	gdev_vector_stream
	movq	%rax, %r14
	testb	$1, %bpl
	jne	.LBB30_7
# BB#1:                                 # %land.lhs.true
	movq	7800(%rbx), %rax
	movq	gx_dc_type_null(%rip), %r13
	cmpq	gx_dc_type_none(%rip), %rax
	jne	.LBB30_3
# BB#2:                                 # %land.lhs.true
	cmpq	%r13, %rax
	je	.LBB30_7
.LBB30_3:                               # %if.then
	movl	%ebp, %r12d
	andl	$8, %r12d
	movq	%rbx, %rdi
	callq	gdev_vector_stream
	movq	%rax, %r15
	cmpl	$0, 17796(%rbx)
	jne	.LBB30_5
# BB#4:                                 # %if.else.8.i
	movl	$1, 17796(%rbx)
	xorl	%esi, %esi
	movl	$4, %edx
	movq	%r15, %rdi
	callq	px_put_uba
	movl	$99, %esi
	movq	%r15, %rdi
	callq	spputc
.LBB30_5:                               # %pclxl_set_cached_nulls.exit
	movq	%r13, 7800(%rbx)
	cmpl	9016(%rbx), %r12d
	je	.LBB30_7
# BB#6:                                 # %if.then.12
	movl	%r12d, %eax
	shrl	$3, %eax
	movzbl	%al, %esi
	movq	%r14, %rdi
	callq	px_put_ub
	movl	$70, %esi
	movl	$110, %edx
	movq	%r14, %rdi
	callq	px_put_ac
	movl	%r12d, 9016(%rbx)
.LBB30_7:                               # %if.end.15
	testb	$2, %bpl
	jne	.LBB30_13
# BB#8:                                 # %land.lhs.true.18
	movq	8432(%rbx), %rax
	movq	gx_dc_type_null(%rip), %r14
	cmpq	gx_dc_type_none(%rip), %rax
	jne	.LBB30_10
# BB#9:                                 # %land.lhs.true.18
	cmpq	%r14, %rax
	je	.LBB30_13
.LBB30_10:                              # %if.then.29
	movq	%rbx, %rdi
	callq	gdev_vector_stream
	movq	%rax, %rbp
	cmpl	$0, 17792(%rbx)
	jne	.LBB30_12
# BB#11:                                # %if.else.i
	movl	$1, 17792(%rbx)
	xorl	%esi, %esi
	movl	$5, %edx
	movq	%rbp, %rdi
	callq	px_put_uba
	movl	$121, %esi
	movq	%rbp, %rdi
	callq	spputc
.LBB30_12:                              # %pclxl_set_cached_nulls.exit21
	movq	%r14, 8432(%rbx)
.LBB30_13:                              # %if.end.34
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end30:
	.size	pclxl_set_paints, .Lfunc_end30-pclxl_set_paints
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI31_0:
	.quad	4607182418800017408     # double 1
.LCPI31_1:
	.quad	4674736138332667904     # double 32767
.LCPI31_2:
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI31_3:
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	4607182418800017408     # double 1.000000e+00
	.text
	.align	16, 0x90
	.type	pclxl_flush_points,@function
pclxl_flush_points:                     # @pclxl_flush_points
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp188:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp189:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp190:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp191:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp192:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp193:
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
.Ltmp194:
	.cfi_def_cfa_offset 224
.Ltmp195:
	.cfi_offset %rbx, -56
.Ltmp196:
	.cfi_offset %r12, -48
.Ltmp197:
	.cfi_offset %r13, -40
.Ltmp198:
	.cfi_offset %r14, -32
.Ltmp199:
	.cfi_offset %r15, -24
.Ltmp200:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movslq	9812(%rbx), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB31_59
# BB#1:                                 # %if.then
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	%rbx, %rdi
	callq	gdev_vector_stream
	movq	%rax, 32(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	cmpl	$0, 9808(%rbx)
	je	.LBB31_59
# BB#2:                                 # %for.cond.preheader
	movl	9800(%rbx), %r12d
	movl	9804(%rbx), %eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movq	40(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	movl	$0, 52(%rsp)            # 4-byte Folded Spill
	movl	$0, 60(%rsp)            # 4-byte Folded Spill
	movl	$0, 56(%rsp)            # 4-byte Folded Spill
	jle	.LBB31_11
# BB#3:                                 # %for.body.preheader
	leaq	9820(%rbx), %r14
	movl	$0, 52(%rsp)            # 4-byte Folded Spill
	movq	40(%rsp), %rax          # 8-byte Reload
	movl	%eax, %r13d
	movl	$0, 60(%rsp)            # 4-byte Folded Spill
	movl	$0, 56(%rsp)            # 4-byte Folded Spill
	.align	16, 0x90
.LBB31_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%r14), %ebp
	movl	%ebp, %edi
	callq	abs
	cmpl	$32767, %eax            # imm = 0x7FFF
	jle	.LBB31_5
# BB#60:                                # %if.end
                                        #   in Loop: Header=BB31_4 Depth=1
	movl	$1, 17772(%rbx)
	jmp	.LBB31_10
	.align	16, 0x90
.LBB31_5:                               # %lor.lhs.false
                                        #   in Loop: Header=BB31_4 Depth=1
	movl	(%r14), %edi
	callq	abs
	cmpl	$32768, %eax            # imm = 0x8000
	jl	.LBB31_7
# BB#6:                                 # %if.end.thread313
                                        #   in Loop: Header=BB31_4 Depth=1
	movl	$1, 17772(%rbx)
.LBB31_7:                               # %land.lhs.true
                                        #   in Loop: Header=BB31_4 Depth=1
	movq	%rbx, %r15
	movl	(%r14), %ebx
	movl	%ebx, %edi
	callq	abs
	cmpl	$32767, %eax            # imm = 0x7FFF
	jg	.LBB31_9
# BB#8:                                 # %if.then.36
                                        #   in Loop: Header=BB31_4 Depth=1
	movl	56(%rsp), %esi          # 4-byte Reload
	cmpl	%ebp, %esi
	sete	%al
	movl	60(%rsp), %edx          # 4-byte Reload
	cmpl	%ebx, %edx
	sete	%cl
	andb	%al, %cl
	cmovel	%ebp, %esi
	movl	%esi, 56(%rsp)          # 4-byte Spill
	cmovel	%ebx, %edx
	movl	%edx, 60(%rsp)          # 4-byte Spill
	movzbl	%cl, %eax
	xorl	$1, %eax
	addl	%eax, 52(%rsp)          # 4-byte Folded Spill
.LBB31_9:                               # %for.inc
                                        #   in Loop: Header=BB31_4 Depth=1
	movq	%r15, %rbx
.LBB31_10:                              # %for.inc
                                        #   in Loop: Header=BB31_4 Depth=1
	addq	$8, %r14
	decl	%r13d
	jne	.LBB31_4
.LBB31_11:                              # %for.end
	cmpl	$0, 17772(%rbx)
	je	.LBB31_12
# BB#13:                                # %if.then.66
	cmpl	$0, 52(%rsp)            # 4-byte Folded Reload
	movl	60(%rsp), %r13d         # 4-byte Reload
	movl	56(%rsp), %r15d         # 4-byte Reload
	je	.LBB31_15
# BB#14:                                # %if.then.68
	movq	32(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	movl	%r15d, %esi
	movl	%r13d, %edx
	callq	px_put_ssp
	movl	$42, %esi
	movl	$117, %edx
	movq	%rbp, %rdi
	callq	px_put_ac
.LBB31_15:                              # %for.cond.70.preheader
	movq	40(%rsp), %r14          # 8-byte Reload
	testl	%r14d, %r14d
	jle	.LBB31_16
# BB#19:                                # %for.body.72.preheader
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	leaq	9820(%rbx), %rbx
	movsd	.LCPI31_0(%rip), %xmm3  # xmm3 = mem[0],zero
	movl	%r14d, %ebp
	movapd	%xmm3, %xmm2
	.align	16, 0x90
.LBB31_20:                              # %for.body.72
                                        # =>This Inner Loop Header: Depth=1
	movsd	%xmm2, 72(%rsp)         # 8-byte Spill
	movsd	%xmm3, 64(%rsp)         # 8-byte Spill
	movl	-4(%rbx), %edi
	subl	%r15d, %edi
	callq	abs
	cvtsi2sdl	%eax, %xmm1
	movsd	.LCPI31_1(%rip), %xmm0  # xmm0 = mem[0],zero
	divsd	%xmm0, %xmm1
	maxsd	72(%rsp), %xmm1         # 8-byte Folded Reload
	movsd	%xmm1, 72(%rsp)         # 8-byte Spill
	movl	(%rbx), %edi
	subl	%r13d, %edi
	callq	abs
	movsd	72(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	cvtsi2sdl	%eax, %xmm3
	divsd	.LCPI31_1(%rip), %xmm3
	maxsd	64(%rsp), %xmm3         # 8-byte Folded Reload
	addq	$8, %rbx
	decl	%ebp
	jne	.LBB31_20
# BB#17:                                # %for.cond.117.preheader
	testl	%r14d, %r14d
	jle	.LBB31_18
# BB#21:                                # %for.body.120.preheader
	movq	16(%rsp), %rbx          # 8-byte Reload
	leaq	9820(%rbx), %rax
	movsd	.LCPI31_2(%rip), %xmm0  # xmm0 = mem[0],zero
	movl	%r14d, %ecx
	.align	16, 0x90
.LBB31_22:                              # %for.body.120
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rax), %edx
	subl	%r15d, %edx
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm1
	divsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	movl	%edx, -4(%rax)
	movl	(%rax), %edx
	subl	%r13d, %edx
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm1
	divsd	%xmm3, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	movl	%edx, (%rax)
	addq	$8, %rax
	decl	%ecx
	jne	.LBB31_22
	jmp	.LBB31_23
.LBB31_12:
	movl	$0, 52(%rsp)            # 4-byte Folded Spill
	movl	60(%rsp), %r13d         # 4-byte Reload
	movl	56(%rsp), %r15d         # 4-byte Reload
	movl	28(%rsp), %r14d         # 4-byte Reload
	jmp	.LBB31_25
.LBB31_16:
	movsd	.LCPI31_0(%rip), %xmm2  # xmm2 = mem[0],zero
	movapd	%xmm2, %xmm3
	jmp	.LBB31_23
.LBB31_18:
	movq	16(%rsp), %rbx          # 8-byte Reload
.LBB31_23:
	movl	28(%rsp), %eax          # 4-byte Reload
	movsd	%xmm2, 72(%rsp)         # 8-byte Spill
	movsd	%xmm3, 64(%rsp)         # 8-byte Spill
	subl	%r15d, %r12d
	cvtsi2sdl	%r12d, %xmm0
	divsd	%xmm2, %xmm0
	movsd	.LCPI31_2(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %r12d
	subl	%r13d, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	divsd	%xmm3, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %r14d
	movq	%rbx, %rdi
	callq	gdev_vector_stream
	movq	%rax, %rbp
	cmpl	$0, 17772(%rbx)
	je	.LBB31_25
# BB#24:                                # %if.then.i
	movsd	72(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 17776(%rbx)
	movsd	64(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, 17784(%rbx)
	movq	%rbp, %rdi
	callq	px_put_rp
	movl	$43, %esi
	movl	$119, %edx
	movq	%rbp, %rdi
	callq	px_put_ac
.LBB31_25:                              # %if.end.164
	movl	9808(%rbx), %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB31_59
# BB#26:                                # %if.end.164
	cmpl	$1, %ecx
	jne	.LBB31_27
# BB#30:                                # %sw.bb.167
	movq	40(%rsp), %rsi          # 8-byte Reload
	cmpl	$3, %esi
	jge	.LBB31_31
# BB#35:                                # %for.cond.171.preheader
	movq	%rbx, %r14
	testl	%esi, %esi
	movq	32(%rsp), %r12          # 8-byte Reload
	movq	%rsi, %rbp
	jle	.LBB31_38
# BB#36:                                # %for.body.174.preheader
	leaq	9820(%r14), %rbx
	.align	16, 0x90
.LBB31_37:                              # %for.body.174
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbx), %esi
	movl	(%rbx), %edx
	movq	%r12, %rdi
	callq	px_put_ssp
	movl	$69, %esi
	movq	%r12, %rdi
	callq	px_put_a
	movl	$155, %esi
	movq	%r12, %rdi
	callq	spputc
	addq	$8, %rbx
	decl	%ebp
	jne	.LBB31_37
.LBB31_38:                              # %for.end.189
	movq	%r14, %rbx
	movq	%rbx, %rdi
	callq	gdev_vector_stream
	movq	%rax, %r14
	cmpl	$0, 17772(%rbx)
	je	.LBB31_40
# BB#39:                                # %if.then.i.215
	movsd	.LCPI31_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm0
	divsd	17776(%rbx), %xmm0
	divsd	17784(%rbx), %xmm1
	movq	%r14, %rdi
	callq	px_put_rp
	movl	$43, %esi
	movl	$119, %edx
	movq	%r14, %rdi
	callq	px_put_ac
	movl	$0, 17772(%rbx)
	movapd	.LCPI31_3(%rip), %xmm0  # xmm0 = [1.000000e+00,1.000000e+00]
	movupd	%xmm0, 17776(%rbx)
.LBB31_40:                              # %pclxl_unset_page_scale.exit
	cmpl	$0, 52(%rsp)            # 4-byte Folded Reload
	je	.LBB31_49
# BB#41:                                # %if.then.191
	movl	%r15d, %esi
	negl	%esi
	negl	%r13d
	movq	%r12, %rdi
	movl	%r13d, %edx
	callq	px_put_ssp
	movl	$42, %esi
	movl	$117, %edx
	movq	%r12, %rdi
	jmp	.LBB31_48
.LBB31_27:                              # %if.end.164
	cmpl	$2, %ecx
	jne	.LBB31_58
# BB#28:                                # %for.cond.248.preheader
	xorl	%ebp, %ebp
	movq	40(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB31_29
# BB#50:                                # %for.body.251.lr.ph
	movl	%r15d, 56(%rsp)         # 4-byte Spill
	xorl	%eax, %eax
	xorl	%r10d, %r10d
	movq	40(%rsp), %r15          # 8-byte Reload
	movl	%r14d, %r9d
	.align	16, 0x90
.LBB31_51:                              # %for.body.251
                                        # =>This Inner Loop Header: Depth=1
	movl	9816(%rbx,%rax,8), %edx
	subl	%r12d, %edx
	movl	9820(%rbx,%rax,8), %r11d
	subl	%r9d, %r11d
	movl	9824(%rbx,%rax,8), %esi
	subl	%r12d, %esi
	movl	9828(%rbx,%rax,8), %edi
	subl	%r9d, %edi
	movl	9832(%rbx,%rax,8), %r8d
	movl	%r8d, %ecx
	subl	%r12d, %ecx
	movl	9836(%rbx,%rax,8), %r14d
	movq	%rbx, %r12
	movl	%r14d, %ebx
	subl	%r9d, %ebx
	movb	%dl, 80(%rsp,%rax,2)
	movb	%r11b, 81(%rsp,%rax,2)
	movb	%sil, 82(%rsp,%rax,2)
	movb	%dil, 83(%rsp,%rax,2)
	movb	%cl, 84(%rsp,%rax,2)
	movb	%bl, 85(%rsp,%rax,2)
	orl	%edx, %ebp
	orl	%r11d, %ebp
	orl	%esi, %ebp
	orl	%edi, %ebp
	orl	%ecx, %ebp
	orl	%ebx, %ebp
	subl	$-128, %edx
	subl	$-128, %r11d
	subl	$-128, %esi
	subl	$-128, %edi
	subl	$-128, %ecx
	subl	$-128, %ebx
	orl	%r10d, %edx
	orl	%r11d, %edx
	orl	%esi, %edx
	orl	%edi, %edx
	orl	%ecx, %edx
	movl	%edx, %r10d
	orl	%ebx, %r10d
	movq	%r12, %rbx
	addq	$3, %rax
	cmpq	%r15, %rax
	movl	%r8d, %r12d
	movl	%r14d, %r9d
	jl	.LBB31_51
# BB#52:                                # %for.end.340
	movq	%r15, %rax
	cmpl	$256, %ebp              # imm = 0x100
	movq	32(%rsp), %r15          # 8-byte Reload
	jb	.LBB31_53
# BB#54:                                # %if.else.344
	movl	%r13d, 60(%rsp)         # 4-byte Spill
	movq	%rbx, %r13
	movb	$1, %bpl
	movb	$-109, %r14b
	cmpl	$255, %r10d
	movq	%rax, %r12
	movb	$-107, %bl
	jbe	.LBB31_43
	jmp	.LBB31_55
.LBB31_31:                              # %for.body.199.preheader
	movl	%r15d, 56(%rsp)         # 4-byte Spill
	movl	%r13d, 60(%rsp)         # 4-byte Spill
	leaq	81(%rsp), %rcx
	leaq	9820(%rbx), %rdx
	movq	%rbx, %r13
	xorl	%eax, %eax
	movl	%esi, %edi
	movq	%rsi, %r10
	xorl	%esi, %esi
	.align	16, 0x90
.LBB31_32:                              # %for.body.199
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rdx), %r8d
	movl	(%rdx), %r9d
	movl	%r8d, %ebp
	subl	%r12d, %ebp
	movl	%r9d, %ebx
	subl	%r14d, %ebx
	movb	%bpl, -1(%rcx)
	movb	%bl, (%rcx)
	orl	%ebp, %eax
	orl	%ebx, %eax
	subl	$-128, %ebp
	subl	$-128, %ebx
	orl	%ebp, %esi
	orl	%ebx, %esi
	addq	$2, %rcx
	addq	$8, %rdx
	decl	%edi
	movl	%r8d, %r12d
	movl	%r9d, %r14d
	jne	.LBB31_32
# BB#33:                                # %for.end.229
	movb	$-99, %bl
	cmpl	$256, %eax              # imm = 0x100
	movq	32(%rsp), %r15          # 8-byte Reload
	jb	.LBB31_34
# BB#42:                                # %if.else.232
	movb	$1, %bpl
	movb	$-101, %r14b
	cmpl	$255, %esi
	movq	%r10, %r12
	jbe	.LBB31_43
.LBB31_55:                              # %sw.epilog
	movzbl	%r12b, %esi
	movl	$77, %edx
	movq	%r15, %rdi
	callq	px_put_uba
	movl	$3, %esi
	movl	$80, %edx
	movq	%r15, %rdi
	callq	px_put_uba
	movzbl	%r14b, %esi
	movq	%r15, %rdi
	callq	spputc
	leal	(,%r12,4), %esi
	movq	%r15, %rdi
	callq	px_put_data_length
	testl	%r12d, %r12d
	jle	.LBB31_44
# BB#56:                                # %for.body.357.preheader
	leaq	9820(%r13), %rbx
	.align	16, 0x90
.LBB31_57:                              # %for.body.357
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbx), %esi
	movq	%r15, %rdi
	callq	px_put_s
	movl	(%rbx), %esi
	movq	%r15, %rdi
	callq	px_put_s
	addq	$8, %rbx
	decl	%r12d
	jne	.LBB31_57
	jmp	.LBB31_44
.LBB31_58:                              # %sw.default
	movl	$-1, %eax
	jmp	.LBB31_59
.LBB31_34:
	xorl	%ebp, %ebp
	movq	%r10, %r12
	jmp	.LBB31_43
.LBB31_29:
	movl	%r15d, 56(%rsp)         # 4-byte Spill
	movl	%r13d, 60(%rsp)         # 4-byte Spill
	movq	%rbx, %r13
	movq	32(%rsp), %r15          # 8-byte Reload
	movq	40(%rsp), %r12          # 8-byte Reload
	movb	$-107, %bl
	jmp	.LBB31_43
.LBB31_53:
	movl	%r13d, 60(%rsp)         # 4-byte Spill
	movq	%rbx, %r13
	xorl	%ebp, %ebp
	movq	%rax, %r12
	movb	$-107, %bl
.LBB31_43:                              # %useb
	movzbl	%r12b, %esi
	movl	$77, %edx
	movq	%r15, %rdi
	callq	px_put_uba
	movzbl	%bpl, %esi
	movl	$80, %edx
	movq	%r15, %rdi
	callq	px_put_uba
	movzbl	%bl, %esi
	movq	%r15, %rdi
	callq	spputc
	leal	(%r12,%r12), %ebx
	movq	%r15, %rdi
	movl	%ebx, %esi
	callq	px_put_data_length
	leaq	80(%rsp), %rsi
	movq	%r15, %rdi
	movl	%ebx, %edx
	callq	px_put_bytes
.LBB31_44:                              # %useb
	movq	%r13, %rbx
	movq	%rbx, %rdi
	callq	gdev_vector_stream
	movq	%rax, %rbp
	cmpl	$0, 17772(%rbx)
	je	.LBB31_46
# BB#45:                                # %if.then.i.223
	movsd	.LCPI31_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm0
	divsd	17776(%rbx), %xmm0
	divsd	17784(%rbx), %xmm1
	movq	%rbp, %rdi
	callq	px_put_rp
	movl	$43, %esi
	movl	$119, %edx
	movq	%rbp, %rdi
	callq	px_put_ac
	movl	$0, 17772(%rbx)
	movapd	.LCPI31_3(%rip), %xmm0  # xmm0 = [1.000000e+00,1.000000e+00]
	movupd	%xmm0, 17776(%rbx)
.LBB31_46:                              # %pclxl_unset_page_scale.exit224
	cmpl	$0, 52(%rsp)            # 4-byte Folded Reload
	movl	60(%rsp), %edx          # 4-byte Reload
	je	.LBB31_49
# BB#47:                                # %if.then.243
	movl	56(%rsp), %esi          # 4-byte Reload
	negl	%esi
	negl	%edx
	movq	%r15, %rdi
	callq	px_put_ssp
	movl	$42, %esi
	movl	$117, %edx
	movq	%r15, %rdi
.LBB31_48:                              # %cleanup
	callq	px_put_ac
.LBB31_49:                              # %cleanup
	movq	$0, 9808(%rbx)
	xorl	%eax, %eax
.LBB31_59:                              # %cleanup.395
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end31:
	.size	pclxl_flush_points, .Lfunc_end31-pclxl_flush_points
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI32_0:
	.quad	4607182418800017408     # double 1
.LCPI32_1:
	.quad	4674736138332667904     # double 32767
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI32_2:
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	4607182418800017408     # double 1.000000e+00
	.text
	.align	16, 0x90
	.type	pclxl_set_cursor,@function
pclxl_set_cursor:                       # @pclxl_set_cursor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp201:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp202:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp203:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp204:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp205:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp206:
	.cfi_def_cfa_offset 64
.Ltmp207:
	.cfi_offset %rbx, -48
.Ltmp208:
	.cfi_offset %r12, -40
.Ltmp209:
	.cfi_offset %r14, -32
.Ltmp210:
	.cfi_offset %r15, -24
.Ltmp211:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movl	%esi, %r12d
	movq	%rdi, %rbx
	callq	gdev_vector_stream
	movq	%rax, %r14
	movl	%r12d, %edi
	callq	abs
	cmpl	$32768, %eax            # imm = 0x8000
	jl	.LBB32_1
# BB#2:                                 # %if.then
	cvtsi2sdl	%eax, %xmm0
	divsd	.LCPI32_1(%rip), %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	testl	%r12d, %r12d
	movl	$32767, %eax            # imm = 0x7FFF
	movl	$-32767, %r12d          # imm = 0xFFFFFFFFFFFF8001
	cmovgl	%eax, %r12d
	movl	$1, 17772(%rbx)
	jmp	.LBB32_3
.LBB32_1:
	movsd	.LCPI32_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
.LBB32_3:                               # %if.end
	movl	%r15d, %edi
	callq	abs
	cmpl	$32767, %eax            # imm = 0x7FFF
	jle	.LBB32_4
# BB#5:                                 # %if.then.8
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	divsd	.LCPI32_1(%rip), %xmm0
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	testl	%r15d, %r15d
	movl	$32767, %eax            # imm = 0x7FFF
	movl	$-32767, %r15d          # imm = 0xFFFFFFFFFFFF8001
	cmovgl	%eax, %r15d
	movl	$1, 17772(%rbx)
	jmp	.LBB32_6
.LBB32_4:                               # %if.end.if.end.16_crit_edge
	movsd	.LCPI32_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, (%rsp)           # 8-byte Spill
.LBB32_6:                               # %if.end.16
	movq	%rbx, %rdi
	callq	gdev_vector_stream
	movq	%rax, %rbp
	cmpl	$0, 17772(%rbx)
	je	.LBB32_8
# BB#7:                                 # %if.then.i
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 17776(%rbx)
	movsd	(%rsp), %xmm1           # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, 17784(%rbx)
	movq	%rbp, %rdi
	callq	px_put_rp
	movl	$43, %esi
	movl	$119, %edx
	movq	%rbp, %rdi
	callq	px_put_ac
.LBB32_8:                               # %pclxl_set_page_scale.exit
	movq	%r14, %rdi
	movl	%r12d, %esi
	movl	%r15d, %edx
	callq	px_put_ssp
	movl	$76, %esi
	movl	$107, %edx
	movq	%r14, %rdi
	callq	px_put_ac
	movq	%rbx, %rdi
	callq	gdev_vector_stream
	movq	%rax, %rbp
	cmpl	$0, 17772(%rbx)
	je	.LBB32_10
# BB#9:                                 # %if.then.i.4
	movsd	.LCPI32_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm0
	divsd	17776(%rbx), %xmm0
	divsd	17784(%rbx), %xmm1
	movq	%rbp, %rdi
	callq	px_put_rp
	movl	$43, %esi
	movl	$119, %edx
	movq	%rbp, %rdi
	callq	px_put_ac
	movl	$0, 17772(%rbx)
	movapd	.LCPI32_2(%rip), %xmm0  # xmm0 = [1.000000e+00,1.000000e+00]
	movupd	%xmm0, 17776(%rbx)
.LBB32_10:                              # %pclxl_unset_page_scale.exit
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end32:
	.size	pclxl_set_cursor, .Lfunc_end32-pclxl_set_cursor
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI33_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	pclxl_copy_text_char,@function
pclxl_copy_text_char:                   # @pclxl_copy_text_char
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp212:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp213:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp214:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp215:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp216:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp217:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp218:
	.cfi_def_cfa_offset 112
.Ltmp219:
	.cfi_offset %rbx, -56
.Ltmp220:
	.cfi_offset %r12, -48
.Ltmp221:
	.cfi_offset %r13, -40
.Ltmp222:
	.cfi_offset %r14, -32
.Ltmp223:
	.cfi_offset %r15, -24
.Ltmp224:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbp
	movl	%r9d, 48(%rsp)          # 4-byte Spill
	movl	%edx, %r15d
	movq	%r8, 40(%rsp)           # 8-byte Spill
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	leal	7(%r8), %r12d
	movl	%r12d, %r13d
	sarl	$3, %r13d
	imull	%r9d, %r13d
	callq	gdev_vector_stream
	movq	%rax, %r14
	movl	$-1, %eax
	cmpl	$5000, %r13d            # imm = 0x1388
	ja	.LBB33_51
# BB#1:                                 # %if.end
	imulq	$247, %rbp, %r10
	movabsq	$7870610804782742023, %r8 # imm = 0x6D3A06D3A06D3A07
	movq	%r10, %rax
	mulq	%r8
	shrq	$8, %rdx
	imulq	$600, %rdx, %rax        # imm = 0x258
	subq	%rax, %r10
	movl	$-1, %eax
	movl	$599, %ecx              # imm = 0x257
	movq	%r10, %rdx
	jmp	.LBB33_2
	.align	16, 0x90
.LBB33_7:                               # %for.inc.i
                                        #   in Loop: Header=BB33_2 Depth=1
	movslq	%edx, %rax
	decq	%rax
	testl	%edx, %edx
	cmoveq	%rcx, %rax
	movq	%rax, %rdx
	movl	%esi, %eax
.LBB33_2:                               # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rsi
	shlq	$32, %rsi
	sarq	$31, %rsi
	movzwl	10136(%rbx,%rsi), %esi
	cmpq	$1, %rsi
	jne	.LBB33_3
# BB#5:                                 # %if.then.7.i
                                        #   in Loop: Header=BB33_2 Depth=1
	testl	%eax, %eax
	movl	%edx, %esi
	js	.LBB33_7
# BB#6:                                 # %if.else.11.i
                                        #   in Loop: Header=BB33_2 Depth=1
	cmpl	%eax, %edx
	movl	%eax, %esi
	jne	.LBB33_7
	jmp	.LBB33_10
.LBB33_3:                               # %for.cond.i
                                        #   in Loop: Header=BB33_2 Depth=1
	testw	%si, %si
	je	.LBB33_4
# BB#8:                                 # %if.else.16.i
                                        #   in Loop: Header=BB33_2 Depth=1
	shlq	$4, %rsi
	cmpq	%rbp, 11336(%rbx,%rsi)
	movl	%eax, %esi
	jne	.LBB33_7
# BB#9:
	movl	%edx, %eax
	jmp	.LBB33_10
.LBB33_4:                               # %if.then.i
	testl	%eax, %eax
	cmovsl	%edx, %eax
.LBB33_10:                              # %pclxl_char_index.exit
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	cltq
	movzwl	10136(%rbx,%rax,2), %ebp
	cmpl	$1, %ebp
	ja	.LBB33_45
# BB#11:                                # %while.cond.preheader
	movl	%r15d, 12(%rsp)         # 4-byte Spill
	movq	%r14, 16(%rsp)          # 8-byte Spill
	movl	%r13d, %r14d
	movl	$599, %edi              # imm = 0x257
	movl	$2, %r9d
	xorl	%r11d, %r11d
	jmp	.LBB33_12
	.align	16, 0x90
.LBB33_30:                              # %pclxl_remove_char.exit
                                        #   in Loop: Header=BB33_12 Depth=1
	leal	1(%r15), %eax
	cmpl	$399, %r15d             # imm = 0x18F
	cmovel	%r9d, %eax
	movl	%eax, 17740(%rbx)
.LBB33_12:                              # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_19 Depth 2
                                        #     Child Loop BB33_29 Depth 2
	movq	17752(%rbx), %rbp
	leaq	(%rbp,%r14), %rax
	cmpq	$500000, %rax           # imm = 0x7A120
	ja	.LBB33_18
# BB#13:                                # %lor.rhs
                                        #   in Loop: Header=BB33_12 Depth=1
	cmpl	$398, 17744(%rbx)       # imm = 0x18E
	jl	.LBB33_14
.LBB33_18:                              # %while.body
                                        #   in Loop: Header=BB33_12 Depth=1
	movl	17740(%rbx), %r15d
	movq	%r15, %rax
	shlq	$4, %rax
	movq	11336(%rbx,%rax), %rcx
	imulq	$247, %rcx, %rsi
	movq	%rsi, %rax
	mulq	%r8
	shrq	$8, %rdx
	imulq	$600, %rdx, %rax        # imm = 0x258
	subq	%rax, %rsi
	movl	$-1, %eax
	jmp	.LBB33_19
	.align	16, 0x90
.LBB33_24:                              # %for.inc.i.76
                                        #   in Loop: Header=BB33_19 Depth=2
	movslq	%esi, %rax
	decq	%rax
	testl	%esi, %esi
	cmoveq	%rdi, %rax
	movq	%rax, %rsi
	movl	%edx, %eax
.LBB33_19:                              # %for.cond.i.60
                                        #   Parent Loop BB33_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rsi, %rdx
	shlq	$32, %rdx
	sarq	$31, %rdx
	movzwl	10136(%rbx,%rdx), %edx
	cmpq	$1, %rdx
	jne	.LBB33_20
# BB#22:                                # %if.then.7.i.65
                                        #   in Loop: Header=BB33_19 Depth=2
	testl	%eax, %eax
	movl	%esi, %edx
	js	.LBB33_24
# BB#23:                                # %if.else.11.i.67
                                        #   in Loop: Header=BB33_19 Depth=2
	cmpl	%eax, %esi
	movl	%eax, %edx
	jne	.LBB33_24
	jmp	.LBB33_27
.LBB33_20:                              # %for.cond.i.60
                                        #   in Loop: Header=BB33_19 Depth=2
	testw	%dx, %dx
	je	.LBB33_21
# BB#25:                                # %if.else.16.i.71
                                        #   in Loop: Header=BB33_19 Depth=2
	shlq	$4, %rdx
	cmpq	%rcx, 11336(%rbx,%rdx)
	movl	%eax, %edx
	jne	.LBB33_24
# BB#26:                                #   in Loop: Header=BB33_12 Depth=1
	movl	%esi, %eax
	jmp	.LBB33_27
.LBB33_21:                              # %if.then.i.63
                                        #   in Loop: Header=BB33_12 Depth=1
	testl	%eax, %eax
	cmovsl	%esi, %eax
	.align	16, 0x90
.LBB33_27:                              # %pclxl_char_index.exit78
                                        #   in Loop: Header=BB33_12 Depth=1
	movslq	%eax, %rdx
	movzwl	10136(%rbx,%rdx,2), %esi
	cmpq	$2, %rsi
	jb	.LBB33_30
# BB#28:                                # %if.end.i
                                        #   in Loop: Header=BB33_12 Depth=1
	leaq	10136(%rbx,%rdx,2), %rcx
	decl	17744(%rbx)
	shlq	$4, %rsi
	movl	11344(%rbx,%rsi), %esi
	subq	%rsi, %rbp
	movq	%rbp, 17752(%rbx)
	movw	$1, (%rcx)
	leal	-1(%rdx), %esi
	testl	%edx, %edx
	movslq	%esi, %rdx
	movl	$599, %esi              # imm = 0x257
	cmovneq	%rdx, %rsi
	cmpw	$0, 10136(%rbx,%rsi,2)
	jne	.LBB33_30
	.align	16, 0x90
.LBB33_29:                              # %for.body.i
                                        #   Parent Loop BB33_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movw	$0, (%rcx)
	cmpl	$599, %eax              # imm = 0x257
	leal	1(%rax), %eax
	cmovel	%r11d, %eax
	movslq	%eax, %rdx
	leaq	10136(%rbx,%rdx,2), %rcx
	movzwl	10136(%rbx,%rdx,2), %edx
	cmpl	$1, %edx
	je	.LBB33_29
	jmp	.LBB33_30
.LBB33_14:
	movl	$-1, %eax
	movl	$599, %ecx              # imm = 0x257
	movq	24(%rsp), %rsi          # 8-byte Reload
	jmp	.LBB33_15
	.align	16, 0x90
.LBB33_33:                              # %for.inc.i.109
                                        #   in Loop: Header=BB33_15 Depth=1
	movslq	%r10d, %rax
	decq	%rax
	testl	%r10d, %r10d
	cmoveq	%rcx, %rax
	movq	%rax, %r10
	movl	%edx, %eax
.LBB33_15:                              # %for.cond.i.93
                                        # =>This Inner Loop Header: Depth=1
	movq	%r10, %rdx
	shlq	$32, %rdx
	sarq	$31, %rdx
	movzwl	10136(%rbx,%rdx), %edx
	cmpq	$1, %rdx
	jne	.LBB33_16
# BB#31:                                # %if.then.7.i.98
                                        #   in Loop: Header=BB33_15 Depth=1
	testl	%eax, %eax
	movl	%r10d, %edx
	js	.LBB33_33
# BB#32:                                # %if.else.11.i.100
                                        #   in Loop: Header=BB33_15 Depth=1
	cmpl	%eax, %r10d
	movl	%eax, %edx
	jne	.LBB33_33
	jmp	.LBB33_36
.LBB33_16:                              # %for.cond.i.93
                                        #   in Loop: Header=BB33_15 Depth=1
	testw	%dx, %dx
	je	.LBB33_17
# BB#34:                                # %if.else.16.i.104
                                        #   in Loop: Header=BB33_15 Depth=1
	shlq	$4, %rdx
	cmpq	%rsi, 11336(%rbx,%rdx)
	movl	%eax, %edx
	jne	.LBB33_33
# BB#35:
	movl	%r10d, %eax
	jmp	.LBB33_36
.LBB33_17:                              # %if.then.i.96
	testl	%eax, %eax
	cmovsl	%r10d, %eax
.LBB33_36:                              # %pclxl_char_index.exit111
	movl	17736(%rbx), %r15d
	movq	%r15, %rcx
	shlq	$4, %rcx
	leal	1(%r15), %edx
	cmpq	$399, %r15              # imm = 0x18F
	movq	%rsi, 11336(%rbx,%rcx)
	movl	%r13d, 11344(%rbx,%rcx)
	cltq
	movw	%r15w, 10136(%rbx,%rax,2)
	movl	$2, %eax
	cmovnel	%edx, %eax
	movl	%eax, 17736(%rbx)
	movl	17744(%rbx), %eax
	leal	1(%rax), %ecx
	movl	%ecx, 17744(%rbx)
	testl	%eax, %eax
	jne	.LBB33_38
# BB#37:                                # %if.then.53
	movq	%rbx, %rdi
	callq	gdev_vector_stream
	movq	%rax, %rbp
	movl	$200, %esi
	movq	%rbp, %rdi
	callq	spputc
	movl	$1, %esi
	movq	%rbp, %rdi
	callq	px_put_u
	movl	$.L.str.6, %esi
	movl	$1, %edx
	movq	%rbp, %rdi
	callq	px_put_bytes
	movq	%rbx, %rdi
	callq	gdev_vector_stream
	movq	%rax, %rbp
	movl	$pclxl_define_bitmap_font.bfh_, %esi
	movl	$29, %edx
	movq	%rbp, %rdi
	callq	px_put_bytes
	movss	884(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI33_0(%rip), %xmm0
	cvttsd2si	%xmm0, %rax
	movzbl	%ah, %esi  # NOREX
	movq	%rax, %r13
	movq	%rbp, %rdi
	callq	spputc
	movzbl	%r13b, %esi
	movq	%rbp, %rdi
	callq	spputc
	movss	888(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI33_0(%rip), %xmm0
	cvttsd2si	%xmm0, %rax
	movzbl	%ah, %esi  # NOREX
	movq	%rax, %r13
	movq	%rbp, %rdi
	callq	spputc
	movzbl	%r13b, %esi
	movq	%rbp, %rdi
	callq	spputc
	movl	$pclxl_define_bitmap_font.efh_, %esi
	movl	$7, %edx
	movq	%rbp, %rdi
	callq	px_put_bytes
.LBB33_38:                              # %if.end.54
	addq	%r14, 17752(%rbx)
	movq	%rbx, %rdi
	callq	gdev_vector_stream
	movq	%rax, %rbp
	movl	$200, %esi
	movq	%rbp, %rdi
	callq	spputc
	movl	$1, %esi
	movq	%rbp, %rdi
	callq	px_put_u
	movl	$.L.str.6, %esi
	movl	$1, %edx
	movq	%rbp, %rdi
	callq	px_put_bytes
	movq	%rbx, %rdi
	callq	gdev_vector_stream
	movq	%rax, %rbp
	shrl	$3, %r12d
	movl	%r12d, %r14d
	movl	%r12d, %r13d
	movl	48(%rsp), %r12d         # 4-byte Reload
	imull	%r12d, %r14d
	addl	$10, %r14d
	movl	$168, %esi
	movl	$82, %edx
	movq	%rbp, %rdi
	callq	px_put_ac
	movq	%rbp, %rdi
	movl	%r15d, %esi
	callq	px_put_u
	movl	$162, %esi
	movq	%rbp, %rdi
	callq	px_put_a
	cmpl	$65536, %r14d           # imm = 0x10000
	jb	.LBB33_40
# BB#39:                                # %if.then.i.123
	movq	%r15, 24(%rsp)          # 8-byte Spill
	movq	32(%rsp), %r15          # 8-byte Reload
	movl	$194, %esi
	movq	%rbp, %rdi
	callq	spputc
	movl	%r14d, %esi
	movq	%rbp, %rdi
	callq	px_put_l
	jmp	.LBB33_41
.LBB33_40:                              # %if.else.i.124
	movq	%r15, 24(%rsp)          # 8-byte Spill
	movq	32(%rsp), %r15          # 8-byte Reload
	movq	%rbp, %rdi
	movl	%r14d, %esi
	callq	px_put_us
.LBB33_41:                              # %if.end.i.129
	movl	$163, %esi
	movl	$83, %edx
	movq	%rbp, %rdi
	callq	px_put_ac
	movq	%rbp, %rdi
	movl	%r14d, %esi
	callq	px_put_data_length
	movl	$.L.str.7, %esi
	movl	$6, %edx
	movq	%rbp, %rdi
	callq	px_put_bytes
	movq	40(%rsp), %rax          # 8-byte Reload
	movzbl	%ah, %esi  # NOREX
	movq	%rax, %r14
	movq	%rbp, %rdi
	callq	spputc
	movzbl	%r14b, %esi
	movq	%rbp, %rdi
	callq	spputc
	movl	%r12d, %eax
	movzbl	%ah, %esi  # NOREX
	movl	%eax, %r14d
	movq	%rbp, %rdi
	callq	spputc
	movzbl	%r14b, %esi
	movq	%rbp, %rdi
	callq	spputc
	movl	%r14d, %eax
	testl	%eax, %eax
	movl	12(%rsp), %ecx          # 4-byte Reload
	movq	%rbp, %r12
	movl	%r13d, %r14d
	je	.LBB33_44
# BB#42:
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB33_43:                              # %for.body.i.130
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, 48(%rsp)          # 4-byte Spill
	movl	%ebp, %eax
	leaq	(%rax,%r15), %rsi
	movq	%r12, %rdi
	movl	%r14d, %edx
	movl	%ecx, %r13d
	callq	px_put_bytes
	movl	%r13d, %ecx
	movl	48(%rsp), %eax          # 4-byte Reload
	addl	%ecx, %ebp
	decl	%eax
	jne	.LBB33_43
.LBB33_44:                              # %pclxl_define_bitmap_char.exit
	movl	$84, %esi
	movq	%r12, %rdi
	callq	spputc
	movq	16(%rsp), %r14          # 8-byte Reload
	movq	24(%rsp), %rbp          # 8-byte Reload
.LBB33_45:                              # %if.end.59
	cmpl	$0, 17760(%rbx)
	jne	.LBB33_47
# BB#46:                                # %if.then.61
	movq	%rbx, %rdi
	callq	gdev_vector_stream
	movq	%rax, %r15
	movl	$200, %esi
	movq	%r15, %rdi
	callq	spputc
	movl	$1, %esi
	movq	%r15, %rdi
	callq	px_put_u
	movl	$.L.str.6, %esi
	movl	$1, %edx
	movq	%r15, %rdi
	callq	px_put_bytes
	movq	%rbx, %rdi
	callq	gdev_vector_stream
	movl	$pclxl_set_font.sf_, %esi
	movl	$12, %edx
	movq	%rax, %rdi
	callq	px_put_bytes
	movl	$1, 17760(%rbx)
.LBB33_47:                              # %if.end.63
	movb	%bpl, 54(%rsp)
	shrl	$8, %ebp
	movb	%bpl, 55(%rsp)
	testb	%bpl, %bpl
	je	.LBB33_49
# BB#48:                                # %if.then.i.51
	movl	$201, %esi
	movq	%r14, %rdi
	callq	spputc
	movl	$1, %esi
	movq	%r14, %rdi
	callq	px_put_u
	leaq	54(%rsp), %rsi
	movl	$2, %edx
	jmp	.LBB33_50
.LBB33_49:                              # %if.else.i
	movl	$200, %esi
	movq	%r14, %rdi
	callq	spputc
	movl	$1, %esi
	movq	%r14, %rdi
	callq	px_put_u
	leaq	54(%rsp), %rsi
	movl	$1, %edx
.LBB33_50:                              # %px_put_string.exit
	movq	%r14, %rdi
	callq	px_put_bytes
	movl	$171, %esi
	movl	$168, %edx
	movq	%r14, %rdi
	callq	px_put_ac
	xorl	%eax, %eax
.LBB33_51:                              # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end33:
	.size	pclxl_copy_text_char, .Lfunc_end33-pclxl_copy_text_char
	.cfi_endproc

	.align	16, 0x90
	.type	pclxl_set_color_palette,@function
pclxl_set_color_palette:                # @pclxl_set_color_palette
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp225:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp226:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp227:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp228:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp229:
	.cfi_def_cfa_offset 48
.Ltmp230:
	.cfi_offset %rbx, -48
.Ltmp231:
	.cfi_offset %r12, -40
.Ltmp232:
	.cfi_offset %r14, -32
.Ltmp233:
	.cfi_offset %r15, -24
.Ltmp234:
	.cfi_offset %rbp, -16
	movl	%ecx, %r12d
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %rbx
	cmpl	%r15d, 9024(%rbx)
	jne	.LBB34_4
# BB#1:                                 # %lor.lhs.false
	cmpl	%r12d, 9028(%rbx)
	jne	.LBB34_4
# BB#2:                                 # %lor.lhs.false.4
	leaq	9032(%rbx), %rdi
	movl	%r12d, %edx
	movq	%r14, %rsi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB34_3
.LBB34_4:                               # %if.then
	movq	%rbx, %rdi
	callq	gdev_vector_stream
	movq	%rax, %rbp
	movzbl	%r15b, %esi
	movq	%rbp, %rdi
	callq	px_put_ub
	movl	$pclxl_set_color_palette.csp_, %esi
	movl	$7, %edx
	movq	%rbp, %rdi
	callq	px_put_bytes
	movq	%rbp, %rdi
	movl	%r12d, %esi
	callq	px_put_u
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movl	%r12d, %edx
	callq	px_put_bytes
	movl	$6, %esi
	movl	$106, %edx
	movq	%rbp, %rdi
	callq	px_put_ac
	movl	%r15d, 9024(%rbx)
	movl	%r12d, 9028(%rbx)
	addq	$9032, %rbx             # imm = 0x2348
	movl	%r12d, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	memcpy                  # TAILCALL
.LBB34_3:                               # %if.end
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end34:
	.size	pclxl_set_color_palette, .Lfunc_end34-pclxl_set_color_palette
	.cfi_endproc

	.align	16, 0x90
	.type	pclxl_write_image_data,@function
pclxl_write_image_data:                 # @pclxl_write_image_data
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
	subq	$56, %rsp
.Ltmp241:
	.cfi_def_cfa_offset 112
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
	movl	%r9d, %r14d
	movl	%r8d, %r15d
	movl	%edx, %r13d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	cmpl	$1, %r14d
	jle	.LBB35_1
# BB#3:                                 # %if.end
	cmpl	$3, 17768(%rbp)
	jne	.LBB35_1
# BB#4:                                 # %sw.bb
	movl	%ecx, 44(%rsp)          # 4-byte Spill
	movq	%rbp, %rdi
	callq	gdev_vector_stream
	movq	%rax, 24(%rsp)          # 8-byte Spill
	leal	7(%r15), %eax
	movl	%eax, %r12d
	shrl	$3, %r12d
	shrl	$6, %eax
	movl	%r13d, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rbx
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movq	1728(%rbp), %rdi
	leal	3(%rax,%r12), %esi
	imull	%r14d, %esi
	movl	$.L.str.11, %edx
	callq	*64(%rdi)
	movq	%rax, %rbx
	movq	1728(%rbp), %rdi
	movl	$.L.str.12, %edx
	movl	%r12d, %esi
	callq	*64(%rdi)
	movq	%rax, 48(%rsp)          # 8-byte Spill
	testq	%rbx, %rbx
	je	.LBB35_6
# BB#5:                                 # %sw.bb
	cmpq	$0, 48(%rsp)            # 8-byte Folded Reload
	je	.LBB35_6
# BB#7:                                 # %if.end.i
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movl	%r12d, %edx
	movl	%r14d, 12(%rsp)         # 4-byte Spill
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	movq	48(%rsp), %rdi          # 8-byte Reload
	callq	memset
	movl	%r14d, %r15d
	movq	%rbx, %rbp
	movq	%rbx, (%rsp)            # 8-byte Spill
	movq	%r12, %r14
	movq	32(%rsp), %r12          # 8-byte Reload
	.align	16, 0x90
.LBB35_8:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rbx
	movl	%r13d, %eax
	leaq	(%rax,%r12), %rsi
	leaq	2(%rbx), %rcx
	movl	%r14d, %edi
	movq	48(%rsp), %rdx          # 8-byte Reload
	callq	gdev_pcl_mode3compress
	movb	%al, (%rbx)
	movb	%ah, 1(%rbx)  # NOREX
	addl	$2, %eax
	movslq	%eax, %rbp
	addq	%rbx, %rbp
	addl	44(%rsp), %r13d         # 4-byte Folded Reload
	decl	%r15d
	jne	.LBB35_8
# BB#9:                                 # %for.end.i
	xorl	%esi, %esi
	movl	$109, %edx
	movq	24(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	callq	px_put_usa
	movl	$99, %edx
	movq	%rbx, %rdi
	movl	12(%rsp), %esi          # 4-byte Reload
	callq	px_put_usa
	movl	$3, %esi
	movq	%rbx, %rdi
	callq	px_put_ub
	movl	$101, %esi
	movl	$177, %edx
	movq	%rbx, %rdi
	callq	px_put_ac
	movq	(%rsp), %r14            # 8-byte Reload
	subl	%r14d, %ebp
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	px_put_data_length
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%ebp, %edx
	callq	px_put_bytes
	movq	16(%rsp), %rbx          # 8-byte Reload
	movq	1728(%rbx), %rdi
	movl	$.L.str.11, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
	movq	1728(%rbx), %rdi
	movq	24(%rdi), %rax
	movl	$.L.str.12, %edx
	movq	48(%rsp), %rsi          # 8-byte Reload
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB35_1:                               # %if.then
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%r13d, %edx
.LBB35_2:                               # %if.then
	movl	%r15d, %r8d
	movl	%r14d, %r9d
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	pclxl_write_image_data_RLE # TAILCALL
.LBB35_6:                               # %if.then.i
	movq	%rbp, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	movl	%r13d, %edx
	movl	44(%rsp), %ecx          # 4-byte Reload
	jmp	.LBB35_2
.Lfunc_end35:
	.size	pclxl_write_image_data, .Lfunc_end35-pclxl_write_image_data
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI36_0:
	.quad	4294967295              # 0xffffffff
	.quad	4294967295              # 0xffffffff
	.text
	.align	16, 0x90
	.type	pclxl_write_image_data_RLE,@function
pclxl_write_image_data_RLE:             # @pclxl_write_image_data_RLE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp248:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp249:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp250:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp251:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp252:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp253:
	.cfi_def_cfa_offset 56
	subq	$264, %rsp              # imm = 0x108
.Ltmp254:
	.cfi_def_cfa_offset 320
.Ltmp255:
	.cfi_offset %rbx, -56
.Ltmp256:
	.cfi_offset %r12, -48
.Ltmp257:
	.cfi_offset %r13, -40
.Ltmp258:
	.cfi_offset %r14, -32
.Ltmp259:
	.cfi_offset %r15, -24
.Ltmp260:
	.cfi_offset %rbp, -16
	movl	%r9d, %ebp
	movl	%r8d, %r13d
	movl	%ecx, 68(%rsp)          # 4-byte Spill
	movl	%edx, %ebx
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	movq	%rdi, %r15
	callq	gdev_vector_stream
	movq	%rax, %r14
	addl	$7, %r13d
	shrl	$3, %r13d
	leal	3(%r13), %eax
	andl	$1073741820, %eax       # imm = 0x3FFFFFFC
	imull	%ebp, %eax
	sarl	$3, %ebx
	movslq	%ebx, %r12
	movl	%eax, %ebx
	addq	56(%rsp), %r12          # 8-byte Folded Reload
	xorl	%esi, %esi
	movl	$109, %edx
	movq	%r14, %rdi
	callq	px_put_usa
	movl	$99, %edx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	px_put_usa
	cmpl	$8, %ebx
	jb	.LBB36_13
# BB#1:                                 # %if.then
	movq	1728(%r15), %rdi
	movl	$.L.str.8, %edx
	movl	%ebx, %esi
	callq	*64(%rdi)
	testq	%rax, %rax
	je	.LBB36_13
# BB#2:                                 # %if.end
	movl	$0, 236(%rsp)
	movaps	.LCPI36_0(%rip), %xmm0  # xmm0 = [4294967295,4294967295]
	movups	%xmm0, 240(%rsp)
	movl	$0, 256(%rsp)
	leaq	-1(%rax), %rcx
	movq	%rcx, 112(%rsp)
	movl	%ebx, %ecx
	leaq	-1(%rax,%rcx), %rcx
	movq	%rcx, 120(%rsp)
	testl	%ebp, %ebp
	jle	.LBB36_3
# BB#6:                                 # %for.body.lr.ph
	movq	%r12, 48(%rsp)          # 8-byte Spill
	movq	%r14, 8(%rsp)           # 8-byte Spill
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	%ebx, 4(%rsp)           # 4-byte Spill
	movq	%r15, 24(%rsp)          # 8-byte Spill
	movl	%r13d, %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	s_RLE_template+16(%rip), %r14
	movl	%r13d, %eax
	movq	%r13, 72(%rsp)          # 8-byte Spill
	negl	%eax
	andl	$3, %eax
	leaq	.L.str.9(%rax), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	xorl	%ecx, %ecx
	leaq	128(%rsp), %r13
	leaq	80(%rsp), %r12
	leaq	104(%rsp), %rbx
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB36_8:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, 56(%rsp)          # 4-byte Spill
	movl	%r15d, %eax
	movq	48(%rsp), %rdx          # 8-byte Reload
	leaq	(%rdx,%rax), %rcx
	leaq	-1(%rdx,%rax), %rax
	movq	%rax, 80(%rsp)
	movq	40(%rsp), %rax          # 8-byte Reload
	leaq	-1(%rax,%rcx), %rax
	movq	%rax, 88(%rsp)
	movl	$1, %ecx
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*%r14
	leaq	104(%rsp), %rbx
	testl	%eax, %eax
	jne	.LBB36_12
# BB#9:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB36_8 Depth=1
	movq	80(%rsp), %rax
	cmpq	88(%rsp), %rax
	jne	.LBB36_12
# BB#10:                                # %if.end.37
                                        #   in Loop: Header=BB36_8 Depth=1
	movq	$.L.str.9, 80(%rsp)
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	%rax, 88(%rsp)
	movl	$1, %ecx
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*%r14
	testl	%eax, %eax
	jne	.LBB36_12
# BB#11:                                # %lor.lhs.false.47
                                        #   in Loop: Header=BB36_8 Depth=1
	movq	88(%rsp), %rax
	cmpq	%rax, 80(%rsp)
	jne	.LBB36_12
# BB#7:                                 # %for.cond
                                        #   in Loop: Header=BB36_8 Depth=1
	addl	68(%rsp), %r15d         # 4-byte Folded Reload
	movl	56(%rsp), %ecx          # 4-byte Reload
	incl	%ecx
	cmpl	%ebp, %ecx
	jl	.LBB36_8
	jmp	.LBB36_4
.LBB36_3:                               # %if.end.for.end_crit_edge
	movq	%r12, 48(%rsp)          # 8-byte Spill
	movq	%r13, 72(%rsp)          # 8-byte Spill
	movq	%r14, 8(%rsp)           # 8-byte Spill
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	%ebx, 4(%rsp)           # 4-byte Spill
	movq	%r15, 24(%rsp)          # 8-byte Spill
	movq	s_RLE_template+16(%rip), %r14
	leaq	128(%rsp), %r13
                                        # implicit-def: RAX
.LBB36_4:                               # %for.end
	movq	%rax, 80(%rsp)
	leaq	80(%rsp), %rsi
	leaq	104(%rsp), %rdx
	movl	$1, %ecx
	movq	%r13, %rdi
	callq	*%r14
	testl	%eax, %eax
	je	.LBB36_5
.LBB36_12:                              # %ncfree
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	1728(%rax), %rdi
	movl	$.L.str.8, %edx
	movq	16(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	movl	4(%rsp), %ebx           # 4-byte Reload
	movq	8(%rsp), %r14           # 8-byte Reload
	movq	72(%rsp), %r13          # 8-byte Reload
	movq	48(%rsp), %r12          # 8-byte Reload
.LBB36_13:                              # %nc
	movq	%r13, 72(%rsp)          # 8-byte Spill
	movl	%ebx, %r15d
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	px_put_ub
	movl	$101, %esi
	movl	$177, %edx
	movq	%r14, %rdi
	callq	px_put_ac
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	px_put_data_length
	testl	%ebp, %ebp
	movq	%r12, %r13
	movl	68(%rsp), %r12d         # 4-byte Reload
	jle	.LBB36_16
# BB#14:                                # %for.body.78.lr.ph
	movq	72(%rsp), %rdx          # 8-byte Reload
	movl	%edx, %r15d
	negl	%r15d
	andl	$3, %r15d
	.align	16, 0x90
.LBB36_15:                              # %for.body.78
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %eax
	leaq	(%rax,%r13), %rsi
	movq	%r14, %rdi
	movq	72(%rsp), %rdx          # 8-byte Reload
	callq	px_put_bytes
	movl	$.L.str.10, %esi
	movq	%r14, %rdi
	movl	%r15d, %edx
	callq	px_put_bytes
	addl	%r12d, %ebx
	decl	%ebp
	jne	.LBB36_15
	jmp	.LBB36_16
.LBB36_5:                               # %cleanup
	movl	112(%rsp), %ebx
	incl	%ebx
	movq	16(%rsp), %r14          # 8-byte Reload
	subl	%r14d, %ebx
	movl	$1, %esi
	movq	8(%rsp), %rbp           # 8-byte Reload
	movq	%rbp, %rdi
	callq	px_put_ub
	movl	$101, %esi
	movl	$177, %edx
	movq	%rbp, %rdi
	callq	px_put_ac
	movq	%rbp, %rdi
	movl	%ebx, %esi
	callq	px_put_data_length
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movl	%ebx, %edx
	callq	px_put_bytes
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	1728(%rax), %rdi
	movl	$.L.str.8, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
.LBB36_16:                              # %cleanup.87
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end36:
	.size	pclxl_write_image_data_RLE, .Lfunc_end36-pclxl_write_image_data_RLE
	.cfi_endproc

	.align	16, 0x90
	.type	pclxl_image_plane_data,@function
pclxl_image_plane_data:                 # @pclxl_image_plane_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp261:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp262:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp263:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp264:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp265:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp266:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp267:
	.cfi_def_cfa_offset 64
.Ltmp268:
	.cfi_offset %rbx, -56
.Ltmp269:
	.cfi_offset %r12, -48
.Ltmp270:
	.cfi_offset %r13, -40
.Ltmp271:
	.cfi_offset %r14, -32
.Ltmp272:
	.cfi_offset %r15, -24
.Ltmp273:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	48(%rbx), %ecx
	movl	584(%rbx), %esi
	imull	%ecx, %esi
	movl	$-15, %eax
	cmpl	596(%rbx), %esi
	jne	.LBB37_11
# BB#1:                                 # %entry
	imull	8(%r15), %ecx
	movl	%ecx, %esi
	andl	$7, %esi
	jne	.LBB37_11
# BB#2:                                 # %if.end
	movl	588(%rbx), %r13d
	movl	600(%rbx), %eax
	subl	%eax, %r13d
	cmpl	%edx, %r13d
	cmovgl	%edx, %r13d
	testl	%r13d, %r13d
	jle	.LBB37_10
# BB#3:                                 # %for.body.lr.ph
	sarl	$3, %ecx
	movslq	%ecx, %r12
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB37_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	644(%rbx), %ecx
	movl	%eax, %edx
	subl	%ecx, %edx
	cmpl	640(%rbx), %edx
	jne	.LBB37_6
# BB#5:                                 # %if.then.18
                                        #   in Loop: Header=BB37_4 Depth=1
	movq	%rbx, %rdi
	callq	pclxl_image_write_rows
	movl	600(%rbx), %ecx
	movl	%ecx, 644(%rbx)
	movl	%ecx, %eax
.LBB37_6:                               # %if.end.25
                                        #   in Loop: Header=BB37_4 Depth=1
	movq	632(%rbx), %rdi
	movl	648(%rbx), %edx
	cmpl	$0, 656(%rbx)
	je	.LBB37_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB37_4 Depth=1
	movl	640(%rbx), %esi
	decl	%esi
	subl	%eax, %esi
	addl	%ecx, %esi
	jmp	.LBB37_9
	.align	16, 0x90
.LBB37_8:                               # %cond.false
                                        #   in Loop: Header=BB37_4 Depth=1
	subl	%ecx, %eax
	movl	%eax, %esi
.LBB37_9:                               # %cond.end
                                        #   in Loop: Header=BB37_4 Depth=1
	movl	%edx, %eax
	imull	%esi, %eax
	addq	%rax, %rdi
	movl	12(%r15), %esi
	imull	%ebp, %esi
	addq	(%r15), %rsi
	addq	%r12, %rsi
	callq	memcpy
	movl	600(%rbx), %eax
	incl	%eax
	movl	%eax, 600(%rbx)
	incl	%ebp
	cmpl	%r13d, %ebp
	jl	.LBB37_4
.LBB37_10:                              # %for.end
	movl	%r13d, (%r14)
	movl	600(%rbx), %eax
	cmpl	588(%rbx), %eax
	setge	%al
	movzbl	%al, %eax
.LBB37_11:                              # %cleanup.59
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end37:
	.size	pclxl_image_plane_data, .Lfunc_end37-pclxl_image_plane_data
	.cfi_endproc

	.align	16, 0x90
	.type	pclxl_image_end_image,@function
pclxl_image_end_image:                  # @pclxl_image_end_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp274:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp275:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp276:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp277:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp278:
	.cfi_def_cfa_offset 48
.Ltmp279:
	.cfi_offset %rbx, -40
.Ltmp280:
	.cfi_offset %r14, -32
.Ltmp281:
	.cfi_offset %r15, -24
.Ltmp282:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	%rbx, (%rsp)
	testl	%ebp, %ebp
	je	.LBB38_3
# BB#1:                                 # %entry
	movl	644(%rbx), %eax
	cmpl	%eax, 600(%rbx)
	jle	.LBB38_3
# BB#2:                                 # %if.then
	movq	%rbx, %rdi
	callq	pclxl_image_write_rows
.LBB38_3:                               # %if.end
	testl	%ebp, %ebp
	je	.LBB38_11
# BB#4:                                 # %if.then.2
	movq	16(%rbx), %r15
	movq	%r15, %rdi
	callq	gdev_vector_stream
	movq	%rax, %r14
	movl	17764(%r15), %eax
	cmpl	$-1, %eax
	je	.LBB38_8
# BB#5:                                 # %if.then.2
	cmpl	$2, %eax
	jne	.LBB38_6
# BB#9:                                 # %sw.bb.7
	movl	$0, 17764(%r15)
	movl	$-180, %esi
	jmp	.LBB38_10
.LBB38_8:                               # %sw.bb.5
	movl	$0, 17764(%r15)
	movl	$90, %esi
	jmp	.LBB38_10
.LBB38_6:                               # %if.then.2
	cmpl	$1, %eax
	jne	.LBB38_11
# BB#7:                                 # %sw.bb
	movl	$0, 17764(%r15)
	movl	$-90, %esi
.LBB38_10:                              # %if.end.10
	movq	%r14, %rdi
	callq	px_put_ss
	movl	$41, %esi
	movl	$118, %edx
	movq	%r14, %rdi
	callq	px_put_ac
.LBB38_11:                              # %if.end.10
	movq	24(%rbx), %rdi
	movq	632(%rbx), %rsi
	movl	$.L.str.18, %edx
	callq	*24(%rdi)
	leaq	(%rsp), %rdi
	callq	gx_image_free_enum
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end38:
	.size	pclxl_image_end_image, .Lfunc_end38-pclxl_image_end_image
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI39_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	pclxl_image_write_rows,@function
pclxl_image_write_rows:                 # @pclxl_image_write_rows
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp283:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp284:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp285:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp286:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp287:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp288:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp289:
	.cfi_def_cfa_offset 96
.Ltmp290:
	.cfi_offset %rbx, -56
.Ltmp291:
	.cfi_offset %r12, -48
.Ltmp292:
	.cfi_offset %r13, -40
.Ltmp293:
	.cfi_offset %r14, -32
.Ltmp294:
	.cfi_offset %r15, -24
.Ltmp295:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movq	16(%r15), %rdi
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	callq	gdev_vector_stream
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	644(%r15), %ecx
	movl	600(%r15), %r14d
	movss	620(%r15), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	604(%r15), %xmm4        # xmm4 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	mulss	%xmm4, %xmm1
	addss	%xmm0, %xmm1
	cvtss2sd	%xmm1, %xmm5
	movsd	.LCPI39_0(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm5
	movq	16(%r15), %rax
	movsd	8800(%rax), %xmm3       # xmm3 = mem[0],zero
	movsd	8808(%rax), %xmm2       # xmm2 = mem[0],zero
	divsd	%xmm3, %xmm5
	cvttsd2si	%xmm5, %esi
	movss	624(%r15), %xmm5        # xmm5 = mem[0],zero,zero,zero
	cvtsi2ssl	%ecx, %xmm6
	movss	616(%r15), %xmm7        # xmm7 = mem[0],zero,zero,zero
	mulss	%xmm7, %xmm6
	addss	%xmm5, %xmm6
	cvtss2sd	%xmm6, %xmm6
	addsd	%xmm1, %xmm6
	divsd	%xmm2, %xmm6
	cvttsd2si	%xmm6, %eax
	xorps	%xmm6, %xmm6
	cvtsi2ssl	584(%r15), %xmm6
	mulss	%xmm4, %xmm6
	cvtsi2ssl	%r14d, %xmm4
	subl	%ecx, %r14d
	addss	%xmm0, %xmm6
	cvtss2sd	%xmm6, %xmm0
	addsd	%xmm1, %xmm0
	divsd	%xmm3, %xmm0
	cvttsd2si	%xmm0, %ebx
	subl	%esi, %ebx
	mulss	%xmm7, %xmm4
	addss	%xmm5, %xmm4
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm4, %xmm0
	addsd	%xmm1, %xmm0
	divsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %edi
	movl	648(%r15), %r12d
	movl	%edi, %edx
	negl	%edx
	xorl	%ebp, %ebp
	cmpl	$0, 656(%r15)
	cmovel	%eax, %edx
	je	.LBB39_2
# BB#1:                                 # %if.then.13
	movl	640(%r15), %ecx
	subl	%r14d, %ecx
	imull	%r12d, %ecx
	movslq	%ecx, %rbp
.LBB39_2:                               # %if.end.18
	testl	%ebx, %ebx
	jle	.LBB39_17
# BB#3:                                 # %if.end.18
	subl	%eax, %edi
	testl	%edi, %edi
	jle	.LBB39_17
# BB#4:                                 # %if.end.21
	movl	%edi, 20(%rsp)          # 4-byte Spill
	movq	32(%rsp), %rdi          # 8-byte Reload
	callq	pclxl_set_cursor
	movslq	592(%r15), %rax
	cmpq	$24, %rax
	jne	.LBB39_15
# BB#5:                                 # %if.then.24
	movl	$2, %esi
	movq	24(%rsp), %r13          # 8-byte Reload
	movq	%r13, %rdi
	callq	px_put_ub
	movl	$pclxl_image_write_rows.ci_, %esi
	movl	$6, %edx
	movq	%r13, %rdi
	callq	px_put_bytes
	movq	32(%rsp), %rax          # 8-byte Reload
	movzwl	108(%rax), %eax
	cmpl	$8, %eax
	jne	.LBB39_6
# BB#7:                                 # %if.then.27
	movslq	%r12d, %rax
	imulq	$1431655766, %rax, %rcx # imm = 0x55555556
	movq	%rcx, %rax
	shrq	$63, %rax
	shrq	$32, %rcx
	addl	%eax, %ecx
	testl	%r14d, %r14d
	jle	.LBB39_8
# BB#9:                                 # %for.cond.35.preheader.lr.ph
	movl	%ebx, 4(%rsp)           # 4-byte Spill
	movq	632(%r15), %rbx
	addq	%rbp, %rbx
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	xorl	%r8d, %r8d
	movabsq	$2951479051793528259, %r9 # imm = 0x28F5C28F5C28F5C3
	movq	%rbx, %rsi
	.align	16, 0x90
.LBB39_10:                              # %for.cond.35.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB39_11 Depth 2
	cmpl	$3, %r12d
	movl	$0, %eax
	jl	.LBB39_13
	.align	16, 0x90
.LBB39_11:                              # %for.body.38
                                        #   Parent Loop BB39_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %rdi
	movzbl	(%rsi), %eax
	imulq	$30, %rax, %rax
	movzbl	1(%rsi), %edx
	imulq	$59, %rdx, %rdx
	movzbl	2(%rsi), %ebp
	imulq	$11, %rbp, %rbp
	addq	%rax, %rdx
	leaq	50(%rbp,%rdx), %rax
	shrq	$2, %rax
	mulq	%r9
	shrq	$2, %rdx
	movb	%dl, (%rbx,%rdi)
	addq	$3, %rsi
	leaq	1(%rdi), %rax
	cmpl	%ecx, %eax
	jl	.LBB39_11
# BB#12:                                #   in Loop: Header=BB39_10 Depth=1
	leaq	1(%rbx,%rdi), %rbx
.LBB39_13:                              # %for.inc.54
                                        #   in Loop: Header=BB39_10 Depth=1
	incl	%r8d
	cmpl	%r14d, %r8d
	jne	.LBB39_10
# BB#14:
	movl	%ecx, %ebp
	jmp	.LBB39_16
.LBB39_17:                              # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB39_15:                              # %if.else
	movl	%ebx, 4(%rsp)           # 4-byte Spill
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movq	%r12, %rbp
	movzbl	eBit_values(%rax), %esi
	movq	24(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	callq	px_put_ub
	movl	$pclxl_image_write_rows.ii_, %esi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	px_put_bytes
	jmp	.LBB39_16
.LBB39_6:
	movl	%ebx, 4(%rsp)           # 4-byte Spill
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movq	%r12, %rbp
	jmp	.LBB39_16
.LBB39_8:
	movl	%ebx, 4(%rsp)           # 4-byte Spill
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movl	%ecx, %ebp
.LBB39_16:                              # %if.end.59
	movl	584(%r15), %r12d
	movq	32(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	callq	gdev_vector_stream
	movq	%rax, %r13
	movl	$108, %edx
	movq	%r13, %rdi
	movl	%r12d, %esi
	callq	px_put_usa
	movl	$107, %edx
	movq	%r13, %rdi
	movl	%r14d, %esi
	callq	px_put_usa
	movq	%r13, %rdi
	movl	4(%rsp), %esi           # 4-byte Reload
	movl	20(%rsp), %edx          # 4-byte Reload
	callq	px_put_usp
	movl	$103, %esi
	movl	$176, %edx
	movq	%r13, %rdi
	callq	px_put_ac
	movq	8(%rsp), %rsi           # 8-byte Reload
	addq	632(%r15), %rsi
	movq	%rbp, %rcx
	leal	(,%rcx,8), %r8d
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movl	%r14d, %r9d
	callq	pclxl_write_image_data
	movq	5848(%rbx), %rdi
	movl	$178, %esi
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	spputc                  # TAILCALL
.Lfunc_end39:
	.size	pclxl_image_write_rows, .Lfunc_end39-pclxl_image_write_rows
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gx_device_pclxl"
	.size	.L.str, 16

	.type	st_device_pclxl,@object # @st_device_pclxl
	.section	.rodata,"a",@progbits
	.globl	st_device_pclxl
	.align	8
st_device_pclxl:
	.long	17800                   # 0x4588
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	device_pclxl_enum_ptrs
	.quad	device_pclxl_reloc_ptrs
	.quad	gx_device_finalize
	.quad	0
	.size	st_device_pclxl, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"pxlmono"
	.size	.L.str.1, 8

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"DeviceGray"
	.size	.L.str.2, 11

	.type	gs_pxlmono_device,@object # @gs_pxlmono_device
	.section	.rodata,"a",@progbits
	.globl	gs_pxlmono_device
	.align	8
gs_pxlmono_device:
	.long	17800                   # 0x4588
	.zero	4
	.quad	0
	.quad	.L.str.1
	.quad	0
	.quad	st_device_pclxl
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
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	0                       # 0x0
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.2
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	5100                    # 0x13ec
	.long	6600                    # 0x19c8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
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
	.quad	pclxl_open_device
	.quad	0
	.quad	0
	.quad	pclxl_output_page
	.quad	pclxl_close_device
	.quad	gx_default_gray_map_rgb_color
	.quad	gx_default_gray_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	pclxl_copy_mono
	.quad	pclxl_copy_color
	.quad	0
	.quad	0
	.quad	pclxl_get_params
	.quad	pclxl_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	pclxl_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	pclxl_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	pclxl_strip_copy_rop
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	16
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	64
	.zero	64
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	772
	.zero	336
	.zero	7624
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	gs_pxlmono_device, 17800

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"pxlcolor"
	.size	.L.str.3, 9

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"DeviceRGB"
	.size	.L.str.4, 10

	.type	gs_pxlcolor_device,@object # @gs_pxlcolor_device
	.section	.rodata,"a",@progbits
	.globl	gs_pxlcolor_device
	.align	8
gs_pxlcolor_device:
	.long	17800                   # 0x4588
	.zero	4
	.quad	0
	.quad	.L.str.3
	.quad	0
	.quad	st_device_pclxl
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
	.quad	.L.str.4
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	5100                    # 0x13ec
	.long	6600                    # 0x19c8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
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
	.quad	pclxl_open_device
	.quad	0
	.quad	0
	.quad	pclxl_output_page
	.quad	pclxl_close_device
	.quad	gx_default_rgb_map_rgb_color
	.quad	gx_default_rgb_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	pclxl_copy_mono
	.quad	pclxl_copy_color
	.quad	0
	.quad	0
	.quad	pclxl_get_params
	.quad	pclxl_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	pclxl_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	pclxl_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	pclxl_strip_copy_rop
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	16
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	64
	.zero	64
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	772
	.zero	336
	.zero	7624
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	gs_pxlcolor_device, 17800

	.type	pclxl_vector_procs,@object # @pclxl_vector_procs
	.align	8
pclxl_vector_procs:
	.quad	pclxl_beginpage
	.quad	pclxl_setlinewidth
	.quad	pclxl_setlinecap
	.quad	pclxl_setlinejoin
	.quad	pclxl_setmiterlimit
	.quad	pclxl_setdash
	.quad	gdev_vector_setflat
	.quad	pclxl_setlogop
	.quad	pclxl_can_handle_hl_color
	.quad	pclxl_setfillcolor
	.quad	pclxl_setstrokecolor
	.quad	gdev_vector_dopath
	.quad	pclxl_dorect
	.quad	pclxl_beginpath
	.quad	pclxl_moveto
	.quad	pclxl_lineto
	.quad	pclxl_curveto
	.quad	pclxl_closepath
	.quad	pclxl_endpath
	.size	pclxl_vector_procs, 152

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"Igoring invalid linejoin enumerator %d\n"
	.size	.L.str.5, 40

	.type	pclxl_setdash.nac_,@object # @pclxl_setdash.nac_
	.section	.rodata,"a",@progbits
pclxl_setdash.nac_:
	.ascii	"\300\000\370N"
	.size	pclxl_setdash.nac_, 4

	.type	pclxl_dorect.cr_,@object # @pclxl_dorect.cr_
pclxl_dorect.cr_:
	.ascii	"\370B\300\000\370Sh"
	.size	pclxl_dorect.cr_, 7

	.type	pclxl_endpath.scr_,@object # @pclxl_endpath.scr_
pclxl_endpath.scr_:
	.ascii	"\300\000\370Sb"
	.size	pclxl_endpath.scr_, 5

	.type	pclxl_copy_mono.mi_,@object # @pclxl_copy_mono.mi_
pclxl_copy_mono.mi_:
	.ascii	"\300\000\370b\300\001\370d"
	.size	pclxl_copy_mono.mi_, 8

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"@"
	.size	.L.str.6, 2

	.type	pclxl_define_bitmap_font.bfh_,@object # @pclxl_define_bitmap_font.bfh_
	.section	.rodata,"a",@progbits
	.align	16
pclxl_define_bitmap_font.bfh_:
	.ascii	"\370\250\300\000\370\251O\301\030\000\370\247P\373\030\000\000\000\000\376\000\002\000BR\000\000\000\004"
	.size	pclxl_define_bitmap_font.bfh_, 29

	.type	pclxl_define_bitmap_font.efh_,@object # @pclxl_define_bitmap_font.efh_
pclxl_define_bitmap_font.efh_:
	.ascii	"\377\377\000\000\000\000Q"
	.size	pclxl_define_bitmap_font.efh_, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.zero	7
	.size	.L.str.7, 7

	.type	pclxl_set_font.sf_,@object # @pclxl_set_font.sf_
pclxl_set_font.sf_:
	.ascii	"\370\250\300\001\370\246\301\000\000\370\252o"
	.size	pclxl_set_font.sf_, 12

	.type	pclxl_set_color_palette.csp_,@object # @pclxl_set_color_palette.csp_
pclxl_set_color_palette.csp_:
	.ascii	"\370\003\300\002\370\002\310"
	.size	pclxl_set_color_palette.csp_, 7

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"pclxl_write_image_data"
	.size	.L.str.8, 23

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata,"a",@progbits
.L.str.9:
	.zero	6
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.zero	5
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"pclxl_write_image_data_DeltaRow(buf)"
	.size	.L.str.11, 37

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"pclxl_write_image_data_DeltaRow(prow)"
	.size	.L.str.12, 38

	.type	pclxl_copy_color.ci_,@object # @pclxl_copy_color.ci_
	.section	.rodata,"a",@progbits
pclxl_copy_color.ci_:
	.ascii	"\370b\300\000\370d"
	.size	pclxl_copy_color.ci_, 6

	.type	eBit_values,@object     # @eBit_values
eBit_values:
	.ascii	"\000\000\000\000\001\000\000\000\002"
	.size	eBit_values, 9

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"\377\000"
	.size	.L.str.13, 3

	.type	pclxl_fill_mask.mi_,@object # @pclxl_fill_mask.mi_
pclxl_fill_mask.mi_:
	.ascii	"\300\000\370b\300\001\370d"
	.size	pclxl_fill_mask.mi_, 8

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"pclxl_begin_image"
	.size	.L.str.14, 18

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"pclxl_begin_image(rows)"
	.size	.L.str.15, 24

	.type	pclxl_image_enum_procs,@object # @pclxl_image_enum_procs
	.section	.rodata,"a",@progbits
	.align	8
pclxl_image_enum_procs:
	.quad	pclxl_image_plane_data
	.quad	pclxl_image_end_image
	.quad	0
	.quad	0
	.size	pclxl_image_enum_procs, 32

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"\000\377"
	.size	.L.str.16, 3

	.type	.L.str.17,@object       # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"pclxl_image_enum_t"
	.size	.L.str.17, 19

	.type	pclxl_image_enum_reloc_ptrs,@object # @pclxl_image_enum_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
pclxl_image_enum_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	st_vector_image_enum
	.quad	pclxl_image_enum_enum_ptrs
	.size	pclxl_image_enum_reloc_ptrs, 24

	.type	st_pclxl_image_enum,@object # @st_pclxl_image_enum
	.align	8
st_pclxl_image_enum:
	.long	664                     # 0x298
	.zero	4
	.quad	.L.str.17
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	pclxl_image_enum_reloc_ptrs
	.size	st_pclxl_image_enum, 64

	.type	pclxl_image_enum_enum_ptrs,@object # @pclxl_image_enum_enum_ptrs
	.align	2
pclxl_image_enum_enum_ptrs:
	.short	0                       # 0x0
	.short	632                     # 0x278
	.size	pclxl_image_enum_enum_ptrs, 4

	.type	pclxl_image_write_rows.ci_,@object # @pclxl_image_write_rows.ci_
pclxl_image_write_rows.ci_:
	.ascii	"\370b\300\000\370d"
	.size	pclxl_image_write_rows.ci_, 6

	.type	pclxl_image_write_rows.ii_,@object # @pclxl_image_write_rows.ii_
pclxl_image_write_rows.ii_:
	.ascii	"\370b\300\001\370d"
	.size	pclxl_image_write_rows.ii_, 6

	.type	.L.str.18,@object       # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"pclxl_end_image(rows)"
	.size	.L.str.18, 22

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Duplex"
	.size	.L.str.19, 7

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"MediaPosition"
	.size	.L.str.20, 14

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"MediaType"
	.size	.L.str.21, 10

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Tumble"
	.size	.L.str.22, 7

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"CompressMode"
	.size	.L.str.23, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
