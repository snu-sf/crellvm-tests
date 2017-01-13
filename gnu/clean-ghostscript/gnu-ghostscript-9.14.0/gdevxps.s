	.text
	.file	"gdevxps.bc"
	.align	16, 0x90
	.type	device_xps_enum_ptrs,@function
device_xps_enum_ptrs:                   # @device_xps_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$st_device_vector, %r9d
	jmpq	*st_device_vector+32(%rip) # TAILCALL
.Lfunc_end0:
	.size	device_xps_enum_ptrs, .Lfunc_end0-device_xps_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	device_xps_reloc_ptrs,@function
device_xps_reloc_ptrs:                  # @device_xps_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$st_device_vector, %edx
	jmpq	*st_device_vector+40(%rip) # TAILCALL
.Lfunc_end1:
	.size	device_xps_reloc_ptrs, .Lfunc_end1-device_xps_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	xps_open_device,@function
xps_open_device:                        # @xps_open_device
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
	movq	$xps_vector_procs, 1736(%rbx)
	callq	gdev_vector_init
	movl	$512, %esi              # imm = 0x200
	movl	$2, %edx
	movq	%rbx, %rdi
	callq	gdev_vector_open_file_options
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_1
# BB#4:                                 # %if.end
	movl	$0, 8864(%rbx)
	pcmpeqd	%xmm0, %xmm0
	movdqu	%xmm0, 8872(%rbx)
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
	movq	%rax, 8888(%rbx)
	movl	$0, 8896(%rbx)
	movl	$0, 8900(%rbx)
	movabsq	$4616189618054758400, %rax # imm = 0x4010000000000000
	movq	%rax, 8904(%rbx)
	movl	$1, 8912(%rbx)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 8848(%rbx)
	movl	$.L.str.18, %esi
	movl	$.L.str.59, %edx
	movq	%rbx, %rdi
	callq	write_str_to_zip_file
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_5
# BB#6:                                 # %if.end.8
	movl	$.L.str.19, %esi
	movl	$.L.str.60, %edx
	movq	%rbx, %rdi
	callq	write_str_to_zip_file
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_7
# BB#8:                                 # %if.end.14
	movl	$.L.str.20, %esi
	movl	$.L.str.61, %edx
	movq	%rbx, %rdi
	callq	write_str_to_zip_file
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_9
# BB#10:                                # %if.end.20
	movl	$.L.str.21, %esi
	movl	$.L.str.62, %edx
	movq	%rbx, %rdi
	callq	write_str_to_zip_file
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB2_11
# BB#12:                                # %cleanup
	movl	%ebx, %eax
	jmp	.LBB2_13
.LBB2_1:                                # %if.then
	movl	%ebp, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.xps_open_device, %edi
	movl	$.L.str.16, %esi
	movl	$654, %edx              # imm = 0x28E
	jmp	.LBB2_2
.LBB2_5:                                # %if.then.5
	movl	%ebp, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.xps_open_device, %edi
	movl	$.L.str.16, %esi
	movl	$673, %edx              # imm = 0x2A1
	jmp	.LBB2_2
.LBB2_7:                                # %if.then.11
	movl	%ebp, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.xps_open_device, %edi
	movl	$.L.str.16, %esi
	movl	$678, %edx              # imm = 0x2A6
	jmp	.LBB2_2
.LBB2_9:                                # %if.then.17
	movl	%ebp, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.xps_open_device, %edi
	movl	$.L.str.16, %esi
	movl	$684, %edx              # imm = 0x2AC
.LBB2_2:                                # %if.then
	movl	$1, %ecx
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	movl	%ebp, %r8d
	callq	gs_throw_imp
.LBB2_13:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB2_11:                               # %if.then.23
	movl	%ebx, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.xps_open_device, %edi
	movl	$.L.str.16, %esi
	movl	$690, %edx              # imm = 0x2B2
	movl	$1, %ecx
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	movl	%ebx, %r8d
	callq	gs_throw_imp
	jmp	.LBB2_13
.Lfunc_end2:
	.size	xps_open_device, .Lfunc_end2-xps_open_device
	.cfi_endproc

	.align	16, 0x90
	.type	xps_output_page,@function
xps_output_page:                        # @xps_output_page
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
	subq	$152, %rsp
.Ltmp9:
	.cfi_def_cfa_offset 192
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
	movl	8864(%rbx), %edx
	incl	%edx
	leaq	16(%rsp), %rdi
	movl	$.L.str.25, %esi
	xorl	%eax, %eax
	callq	gs_sprintf
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB3_1
# BB#2:                                 # %if.end.i
	leaq	16(%rsp), %rsi
	movl	$.L.str.63, %edx
	movq	%rbx, %rdi
	callq	write_str_to_zip_file
	jmp	.LBB3_3
.LBB3_1:                                # %if.then.i
	movl	%ebp, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.write_str_to_current_page, %edi
	movl	$.L.str.16, %esi
	movl	$705, %edx              # imm = 0x2C1
	movl	$1, %ecx
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	movl	%ebp, %r8d
	callq	gs_throw_imp
.LBB3_3:                                # %write_str_to_current_page.exit
	incl	8864(%rbx)
	movq	5840(%rbx), %rdi
	callq	ferror
	testl	%eax, %eax
	je	.LBB3_5
# BB#4:                                 # %if.then
	movl	$-12, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.xps_output_page, %edi
	movl	$.L.str.16, %esi
	movl	$725, %edx              # imm = 0x2D5
	xorl	%ecx, %ecx
	movl	$-12, %r8d
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
	movl	%eax, %ebp
	jmp	.LBB3_10
.LBB3_5:                                # %if.end
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movl	%r14d, %edx
	callq	gx_finish_output_page
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB3_10
# BB#6:                                 # %if.end.6
	leaq	1744(%rbx), %rdi
	movq	24(%rbx), %rsi
	callq	gx_outputfile_is_separate_pages
	testl	%eax, %eax
	je	.LBB3_9
# BB#7:                                 # %if.then.9
	movq	%rbx, %rdi
	callq	xps_close_device
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB3_10
# BB#8:                                 # %if.end.13
	movq	%rbx, %rdi
	callq	xps_open_device
	movl	%eax, %ebp
.LBB3_9:                                # %do.end
	movl	$0, 8816(%rbx)
.LBB3_10:                               # %cleanup
	movl	%ebp, %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	xps_output_page, .Lfunc_end3-xps_output_page
	.cfi_endproc

	.align	16, 0x90
	.type	xps_close_device,@function
xps_close_device:                       # @xps_close_device
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp15:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp16:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp17:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp18:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp20:
	.cfi_def_cfa_offset 128
.Ltmp21:
	.cfi_offset %rbx, -56
.Ltmp22:
	.cfi_offset %r12, -48
.Ltmp23:
	.cfi_offset %r13, -40
.Ltmp24:
	.cfi_offset %r14, -32
.Ltmp25:
	.cfi_offset %r15, -24
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movq	%r15, 40(%rsp)          # 8-byte Spill
	movl	$.L.str.20, %esi
	movl	$.L.str.64, %edx
	callq	write_str_to_zip_file
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB4_1
# BB#3:                                 # %if.end
	movq	5840(%r15), %rdi
	callq	ferror
	testl	%eax, %eax
	je	.LBB4_5
# BB#4:                                 # %if.then.4
	movl	$-12, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.xps_close_device, %edi
	movl	$.L.str.16, %esi
	movl	$757, %edx              # imm = 0x2F5
	xorl	%ecx, %ecx
	movl	$-12, %r8d
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
	jmp	.LBB4_165
.LBB4_1:                                # %if.then
	movl	%ebx, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.xps_close_device, %edi
	movl	$.L.str.16, %esi
	movl	$754, %edx              # imm = 0x2F2
	movl	$1, %ecx
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	movl	%ebx, %r8d
	callq	gs_throw_imp
	jmp	.LBB4_165
.LBB4_5:                                # %if.end.7
	movq	8848(%r15), %rax
	movq	5848(%r15), %rbx
	testq	%rax, %rax
	je	.LBB4_63
# BB#6:                                 # %while.body.lr.ph.i.i
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	leaq	64(%rsp), %r12
	movq	%rax, %rbx
	movq	%rax, %rbp
	movq	%rax, 16(%rsp)          # 8-byte Spill
	jmp	.LBB4_7
	.align	16, 0x90
.LBB4_62:                               # %cleanup.thread.while.body_crit_edge.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	movq	8848(%r15), %rbx
.LBB4_7:                                # %while.body.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_8 Depth 2
                                        #     Child Loop BB4_15 Depth 2
                                        #     Child Loop BB4_60 Depth 2
	movq	(%rbp), %r14
	jmp	.LBB4_8
	.align	16, 0x90
.LBB4_10:                               # %if.end.i.i.i.i
                                        #   in Loop: Header=BB4_8 Depth=2
	movq	16(%rbx), %rbx
.LBB4_8:                                # %while.body.i.i
                                        #   Parent Loop BB4_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rbx, %rbx
	movl	$0, %r13d
	je	.LBB4_12
# BB#9:                                 # %while.body.i.i.i.i
                                        #   in Loop: Header=BB4_8 Depth=2
	movq	(%rbx), %rdi
	movq	%r14, %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB4_10
# BB#11:                                # %cond.true.i.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	movq	8(%rbx), %r13
.LBB4_12:                               # %zip_look_up_file_info.exit.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	testq	%r13, %r13
	je	.LBB4_162
# BB#13:                                # %if.then.3.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	movq	%rbp, 56(%rsp)          # 8-byte Spill
	movq	16(%r13), %rbp
	movq	24(%r13), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	5848(%r15), %rbx
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	crc32
	movq	%rax, %r15
	movq	%rbp, %rdi
	callq	rewind
	jmp	.LBB4_15
	.align	16, 0x90
.LBB4_14:                               # %while.body.i.i.i
                                        #   in Loop: Header=BB4_15 Depth=2
	movl	$1, %esi
	movl	$4, %edx
	movq	%r12, %rdi
	movq	%rbp, %rcx
	callq	fread
	movq	%r15, %rdi
	movq	%r12, %rsi
	movl	%eax, %edx
	callq	crc32
	movq	%rax, %r15
.LBB4_15:                               # %while.body.i.i.i
                                        #   Parent Loop BB4_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbp, %rdi
	callq	feof
	testl	%eax, %eax
	je	.LBB4_14
# BB#16:                                # %if.end.10.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	movq	%rbx, %rdi
	callq	stell
	movq	%rax, 32(%r13)
	movq	%r15, (%r13)
	movl	$1239433296, 40(%r13)   # imm = 0x49E04050
	movl	$67324752, %esi         # imm = 0x4034B50
	movq	%rbx, %rdi
	callq	put_u32
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB4_18
# BB#17:                                # %cond.true.i.49.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$20, 1(%rax)
	jmp	.LBB4_19
	.align	16, 0x90
.LBB4_18:                               # %cond.false.i.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	movl	$20, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB4_19:                               # %cond.end.i.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB4_21
# BB#20:                                # %cond.true.18.i.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$0, 1(%rax)
	jmp	.LBB4_22
	.align	16, 0x90
.LBB4_21:                               # %cond.false.28.i.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB4_22:                               # %put_u16.exit.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB4_24
# BB#23:                                # %cond.true.i.53.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$0, 1(%rax)
	jmp	.LBB4_25
	.align	16, 0x90
.LBB4_24:                               # %cond.false.i.55.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB4_25:                               # %cond.end.i.57.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB4_27
# BB#26:                                # %cond.true.18.i.59.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$0, 1(%rax)
	jmp	.LBB4_28
	.align	16, 0x90
.LBB4_27:                               # %cond.false.28.i.61.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB4_28:                               # %put_u16.exit62.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB4_30
# BB#29:                                # %cond.true.i.65.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$0, 1(%rax)
	jmp	.LBB4_31
	.align	16, 0x90
.LBB4_30:                               # %cond.false.i.67.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB4_31:                               # %cond.end.i.69.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB4_33
# BB#32:                                # %cond.true.18.i.71.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$0, 1(%rax)
	jmp	.LBB4_34
	.align	16, 0x90
.LBB4_33:                               # %cond.false.28.i.73.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB4_34:                               # %put_u16.exit74.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	movzwl	42(%r13), %edx
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB4_36
# BB#35:                                # %cond.true.i.77.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	%dl, 1(%rax)
	jmp	.LBB4_37
	.align	16, 0x90
.LBB4_36:                               # %cond.false.i.79.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	movzbl	%dl, %esi
	movq	%rbx, %rdi
	movl	%edx, 32(%rsp)          # 4-byte Spill
	callq	spputc
	movl	32(%rsp), %edx          # 4-byte Reload
.LBB4_37:                               # %cond.end.i.81.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB4_39
# BB#38:                                # %cond.true.18.i.83.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	%dh, 1(%rax)  # NOREX
	jmp	.LBB4_40
	.align	16, 0x90
.LBB4_39:                               # %cond.false.28.i.85.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	movzbl	%dh, %esi  # NOREX
	movq	%rbx, %rdi
	callq	spputc
.LBB4_40:                               # %put_u16.exit86.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	movzwl	40(%r13), %edx
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB4_42
# BB#41:                                # %cond.true.i.90.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	%dl, 1(%rax)
	jmp	.LBB4_43
	.align	16, 0x90
.LBB4_42:                               # %cond.false.i.93.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	movzbl	%dl, %esi
	movq	%rbx, %rdi
	movl	%edx, %r13d
	callq	spputc
	movl	%r13d, %edx
.LBB4_43:                               # %cond.end.i.95.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	leaq	68(%rsp), %r13
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB4_45
# BB#44:                                # %cond.true.18.i.99.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	%dh, 1(%rax)  # NOREX
	jmp	.LBB4_46
	.align	16, 0x90
.LBB4_45:                               # %cond.false.28.i.103.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	movzbl	%dh, %esi  # NOREX
	movq	%rbx, %rdi
	callq	spputc
.LBB4_46:                               # %put_u16.exit104.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	put_u32
	movq	%rbx, %rdi
	movq	48(%rsp), %r15          # 8-byte Reload
	movq	%r15, %rsi
	callq	put_u32
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	put_u32
	movq	%r14, %rdi
	callq	strlen
	movq	120(%rbx), %rdx
	cmpq	128(%rbx), %rdx
	jae	.LBB4_48
# BB#47:                                # %cond.true.i.108.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	leaq	1(%rdx), %rcx
	movq	%rcx, 120(%rbx)
	movb	%al, 1(%rdx)
	jmp	.LBB4_49
	.align	16, 0x90
.LBB4_48:                               # %cond.false.i.111.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	movzbl	%al, %esi
	movq	%rbx, %rdi
	movq	%rax, %r15
	callq	spputc
	movq	%r15, %rax
.LBB4_49:                               # %cond.end.i.113.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	movq	40(%rsp), %r15          # 8-byte Reload
	movq	120(%rbx), %rdx
	cmpq	128(%rbx), %rdx
	jae	.LBB4_51
# BB#50:                                # %cond.true.18.i.117.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	leaq	1(%rdx), %rcx
	movq	%rcx, 120(%rbx)
	movb	%ah, 1(%rdx)  # NOREX
	jmp	.LBB4_52
	.align	16, 0x90
.LBB4_51:                               # %cond.false.28.i.121.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	movzbl	%ah, %esi  # NOREX
	movq	%rbx, %rdi
	callq	spputc
.LBB4_52:                               # %put_u16.exit122.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB4_54
# BB#53:                                # %cond.true.i.125.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$0, 1(%rax)
	jmp	.LBB4_55
	.align	16, 0x90
.LBB4_54:                               # %cond.false.i.127.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB4_55:                               # %cond.end.i.129.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB4_57
# BB#56:                                # %cond.true.18.i.131.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$0, 1(%rax)
	jmp	.LBB4_58
	.align	16, 0x90
.LBB4_57:                               # %cond.false.28.i.133.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB4_58:                               # %put_u16.exit134.i.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	movq	%r14, %rdi
	callq	strlen
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%eax, %edx
	movq	%r13, %rcx
	callq	sputs
	movq	%rbp, %rdi
	callq	rewind
	jmp	.LBB4_60
	.align	16, 0x90
.LBB4_59:                               # %while.body.28.i.i.i
                                        #   in Loop: Header=BB4_60 Depth=2
	movl	$1, %esi
	movl	$4, %edx
	movq	%r12, %rdi
	movq	%rbp, %rcx
	callq	fread
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	%eax, %edx
	movq	%r13, %rcx
	callq	sputs
.LBB4_60:                               # %while.body.28.i.i.i
                                        #   Parent Loop BB4_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbp, %rdi
	callq	feof
	testl	%eax, %eax
	je	.LBB4_59
# BB#61:                                # %cleanup.thread.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	movq	%rbp, %rdi
	callq	fclose
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r13, %rcx
	callq	sputs
	movq	56(%rsp), %rbp          # 8-byte Reload
	movq	16(%rbp), %rbp
	testq	%rbp, %rbp
	jne	.LBB4_62
# BB#64:                                # %while.body.lr.ph.i
	movq	%r15, 40(%rsp)          # 8-byte Spill
	movq	24(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	callq	stell
	movq	%rax, 48(%rsp)          # 8-byte Spill
	leaq	120(%rbx), %r12
	movq	%rbx, %r14
	subq	$-128, %r14
	xorl	%eax, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	16(%rsp), %r13          # 8-byte Reload
	.align	16, 0x90
.LBB4_65:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r13), %r15
	movl	$33639248, %esi         # imm = 0x2014B50
	movq	%rbx, %rdi
	callq	put_u32
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB4_67
# BB#66:                                # %cond.true.i.i
                                        #   in Loop: Header=BB4_65 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, (%r12)
	movb	$20, 1(%rax)
	jmp	.LBB4_68
	.align	16, 0x90
.LBB4_67:                               # %cond.false.i.i
                                        #   in Loop: Header=BB4_65 Depth=1
	movl	$20, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB4_68:                               # %cond.end.i.i
                                        #   in Loop: Header=BB4_65 Depth=1
	movq	(%r12), %rax
	cmpq	(%r14), %rax
	jae	.LBB4_70
# BB#69:                                # %cond.true.18.i.i
                                        #   in Loop: Header=BB4_65 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, (%r12)
	movb	$0, 1(%rax)
	jmp	.LBB4_71
	.align	16, 0x90
.LBB4_70:                               # %cond.false.28.i.i
                                        #   in Loop: Header=BB4_65 Depth=1
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB4_71:                               # %put_u16.exit.i
                                        #   in Loop: Header=BB4_65 Depth=1
	movq	(%r12), %rax
	cmpq	(%r14), %rax
	jae	.LBB4_73
# BB#72:                                # %cond.true.i.56.i
                                        #   in Loop: Header=BB4_65 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, (%r12)
	movb	$20, 1(%rax)
	jmp	.LBB4_74
	.align	16, 0x90
.LBB4_73:                               # %cond.false.i.58.i
                                        #   in Loop: Header=BB4_65 Depth=1
	movl	$20, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB4_74:                               # %cond.end.i.60.i
                                        #   in Loop: Header=BB4_65 Depth=1
	movq	(%r12), %rax
	cmpq	(%r14), %rax
	jae	.LBB4_76
# BB#75:                                # %cond.true.18.i.62.i
                                        #   in Loop: Header=BB4_65 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, (%r12)
	movb	$0, 1(%rax)
	jmp	.LBB4_77
	.align	16, 0x90
.LBB4_76:                               # %cond.false.28.i.64.i
                                        #   in Loop: Header=BB4_65 Depth=1
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB4_77:                               # %put_u16.exit65.i
                                        #   in Loop: Header=BB4_65 Depth=1
	movq	(%r12), %rax
	cmpq	(%r14), %rax
	jae	.LBB4_79
# BB#78:                                # %cond.true.i.68.i
                                        #   in Loop: Header=BB4_65 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, (%r12)
	movb	$0, 1(%rax)
	jmp	.LBB4_80
	.align	16, 0x90
.LBB4_79:                               # %cond.false.i.70.i
                                        #   in Loop: Header=BB4_65 Depth=1
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB4_80:                               # %cond.end.i.72.i
                                        #   in Loop: Header=BB4_65 Depth=1
	movq	(%r12), %rax
	cmpq	(%r14), %rax
	jae	.LBB4_82
# BB#81:                                # %cond.true.18.i.74.i
                                        #   in Loop: Header=BB4_65 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, (%r12)
	movb	$0, 1(%rax)
	jmp	.LBB4_83
	.align	16, 0x90
.LBB4_82:                               # %cond.false.28.i.76.i
                                        #   in Loop: Header=BB4_65 Depth=1
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB4_83:                               # %put_u16.exit77.i
                                        #   in Loop: Header=BB4_65 Depth=1
	movq	(%r12), %rax
	cmpq	(%r14), %rax
	jae	.LBB4_85
# BB#84:                                # %cond.true.i.80.i
                                        #   in Loop: Header=BB4_65 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, (%r12)
	movb	$0, 1(%rax)
	jmp	.LBB4_86
	.align	16, 0x90
.LBB4_85:                               # %cond.false.i.82.i
                                        #   in Loop: Header=BB4_65 Depth=1
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB4_86:                               # %cond.end.i.84.i
                                        #   in Loop: Header=BB4_65 Depth=1
	movq	(%r12), %rax
	cmpq	(%r14), %rax
	jae	.LBB4_88
# BB#87:                                # %cond.true.18.i.86.i
                                        #   in Loop: Header=BB4_65 Depth=1
	movq	%r13, %rbp
	movq	%rbx, %r13
	leaq	1(%rax), %rcx
	movq	%rcx, (%r12)
	movb	$0, 1(%rax)
	jmp	.LBB4_89
	.align	16, 0x90
.LBB4_88:                               # %cond.false.28.i.88.i
                                        #   in Loop: Header=BB4_65 Depth=1
	movq	%r13, %rbp
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movq	%rbx, %r13
	callq	spputc
.LBB4_89:                               # %put_u16.exit89.i
                                        #   in Loop: Header=BB4_65 Depth=1
	movzwl	42(%r15), %ebx
	movq	(%r12), %rax
	cmpq	(%r14), %rax
	jae	.LBB4_91
# BB#90:                                # %cond.true.i.92.i
                                        #   in Loop: Header=BB4_65 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, (%r12)
	movb	%bl, 1(%rax)
	jmp	.LBB4_92
	.align	16, 0x90
.LBB4_91:                               # %cond.false.i.94.i
                                        #   in Loop: Header=BB4_65 Depth=1
	movzbl	%bl, %esi
	movq	%r13, %rdi
	callq	spputc
.LBB4_92:                               # %cond.end.i.96.i
                                        #   in Loop: Header=BB4_65 Depth=1
	movq	(%r12), %rax
	cmpq	(%r14), %rax
	jae	.LBB4_94
# BB#93:                                # %cond.true.18.i.98.i
                                        #   in Loop: Header=BB4_65 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, (%r12)
	movb	%bh, 1(%rax)  # NOREX
	jmp	.LBB4_95
	.align	16, 0x90
.LBB4_94:                               # %cond.false.28.i.100.i
                                        #   in Loop: Header=BB4_65 Depth=1
	movzbl	%bh, %esi  # NOREX
	movq	%r13, %rdi
	callq	spputc
.LBB4_95:                               # %put_u16.exit101.i
                                        #   in Loop: Header=BB4_65 Depth=1
	movzwl	40(%r15), %ebx
	movq	(%r12), %rax
	cmpq	(%r14), %rax
	jae	.LBB4_97
# BB#96:                                # %cond.true.i.105.i
                                        #   in Loop: Header=BB4_65 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, (%r12)
	movb	%bl, 1(%rax)
	jmp	.LBB4_98
	.align	16, 0x90
.LBB4_97:                               # %cond.false.i.108.i
                                        #   in Loop: Header=BB4_65 Depth=1
	movzbl	%bl, %esi
	movq	%r13, %rdi
	callq	spputc
.LBB4_98:                               # %cond.end.i.110.i
                                        #   in Loop: Header=BB4_65 Depth=1
	movq	(%r12), %rax
	cmpq	(%r14), %rax
	jae	.LBB4_100
# BB#99:                                # %cond.true.18.i.114.i
                                        #   in Loop: Header=BB4_65 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, (%r12)
	movb	%bh, 1(%rax)  # NOREX
	movq	%r13, %rbx
	jmp	.LBB4_101
	.align	16, 0x90
.LBB4_100:                              # %cond.false.28.i.118.i
                                        #   in Loop: Header=BB4_65 Depth=1
	movzbl	%bh, %esi  # NOREX
	movq	%r13, %rbx
	movq	%rbx, %rdi
	callq	spputc
.LBB4_101:                              # %put_u16.exit119.i
                                        #   in Loop: Header=BB4_65 Depth=1
	movq	%rbp, %r13
	movq	(%r15), %rsi
	movq	%rbx, %rdi
	callq	put_u32
	movq	24(%r15), %rsi
	movq	%rbx, %rdi
	callq	put_u32
	movq	24(%r15), %rsi
	movq	%rbx, %rdi
	callq	put_u32
	movq	(%r13), %rdi
	callq	strlen
	movq	%rbx, %rdi
	movq	%rax, %rbx
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB4_103
# BB#102:                               # %cond.true.i.123.i
                                        #   in Loop: Header=BB4_65 Depth=1
	movq	%rdi, %rbp
	leaq	1(%rax), %rcx
	movq	%rcx, (%r12)
	movb	%bl, 1(%rax)
	jmp	.LBB4_104
	.align	16, 0x90
.LBB4_103:                              # %cond.false.i.126.i
                                        #   in Loop: Header=BB4_65 Depth=1
	movzbl	%bl, %esi
	movq	%rdi, %rbp
	callq	spputc
.LBB4_104:                              # %cond.end.i.128.i
                                        #   in Loop: Header=BB4_65 Depth=1
	movq	(%r12), %rax
	cmpq	(%r14), %rax
	jae	.LBB4_106
# BB#105:                               # %cond.true.18.i.132.i
                                        #   in Loop: Header=BB4_65 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, (%r12)
	movb	%bh, 1(%rax)  # NOREX
	movq	%rbp, %rbx
	jmp	.LBB4_107
	.align	16, 0x90
.LBB4_106:                              # %cond.false.28.i.136.i
                                        #   in Loop: Header=BB4_65 Depth=1
	movzbl	%bh, %esi  # NOREX
	movq	%rbp, %rbx
	movq	%rbx, %rdi
	callq	spputc
.LBB4_107:                              # %put_u16.exit137.i
                                        #   in Loop: Header=BB4_65 Depth=1
	movq	(%r12), %rax
	cmpq	(%r14), %rax
	jae	.LBB4_109
# BB#108:                               # %cond.true.i.140.i
                                        #   in Loop: Header=BB4_65 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, (%r12)
	movb	$0, 1(%rax)
	jmp	.LBB4_110
	.align	16, 0x90
.LBB4_109:                              # %cond.false.i.142.i
                                        #   in Loop: Header=BB4_65 Depth=1
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB4_110:                              # %cond.end.i.144.i
                                        #   in Loop: Header=BB4_65 Depth=1
	movq	(%r12), %rax
	cmpq	(%r14), %rax
	jae	.LBB4_112
# BB#111:                               # %cond.true.18.i.146.i
                                        #   in Loop: Header=BB4_65 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, (%r12)
	movb	$0, 1(%rax)
	jmp	.LBB4_113
	.align	16, 0x90
.LBB4_112:                              # %cond.false.28.i.148.i
                                        #   in Loop: Header=BB4_65 Depth=1
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB4_113:                              # %put_u16.exit149.i
                                        #   in Loop: Header=BB4_65 Depth=1
	movq	(%r12), %rax
	cmpq	(%r14), %rax
	jae	.LBB4_115
# BB#114:                               # %cond.true.i.152.i
                                        #   in Loop: Header=BB4_65 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, (%r12)
	movb	$0, 1(%rax)
	jmp	.LBB4_116
	.align	16, 0x90
.LBB4_115:                              # %cond.false.i.154.i
                                        #   in Loop: Header=BB4_65 Depth=1
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB4_116:                              # %cond.end.i.156.i
                                        #   in Loop: Header=BB4_65 Depth=1
	movq	(%r12), %rax
	cmpq	(%r14), %rax
	jae	.LBB4_118
# BB#117:                               # %cond.true.18.i.158.i
                                        #   in Loop: Header=BB4_65 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, (%r12)
	movb	$0, 1(%rax)
	jmp	.LBB4_119
	.align	16, 0x90
.LBB4_118:                              # %cond.false.28.i.160.i
                                        #   in Loop: Header=BB4_65 Depth=1
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB4_119:                              # %put_u16.exit161.i
                                        #   in Loop: Header=BB4_65 Depth=1
	movq	(%r12), %rax
	cmpq	(%r14), %rax
	jae	.LBB4_121
# BB#120:                               # %cond.true.i.164.i
                                        #   in Loop: Header=BB4_65 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, (%r12)
	movb	$0, 1(%rax)
	jmp	.LBB4_122
	.align	16, 0x90
.LBB4_121:                              # %cond.false.i.166.i
                                        #   in Loop: Header=BB4_65 Depth=1
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB4_122:                              # %cond.end.i.168.i
                                        #   in Loop: Header=BB4_65 Depth=1
	movq	(%r12), %rax
	cmpq	(%r14), %rax
	jae	.LBB4_124
# BB#123:                               # %cond.true.18.i.170.i
                                        #   in Loop: Header=BB4_65 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, (%r12)
	movb	$0, 1(%rax)
	jmp	.LBB4_125
	.align	16, 0x90
.LBB4_124:                              # %cond.false.28.i.172.i
                                        #   in Loop: Header=BB4_65 Depth=1
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB4_125:                              # %put_u16.exit173.i
                                        #   in Loop: Header=BB4_65 Depth=1
	movq	(%r12), %rax
	cmpq	(%r14), %rax
	jae	.LBB4_127
# BB#126:                               # %cond.true.i.176.i
                                        #   in Loop: Header=BB4_65 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, (%r12)
	movb	$0, 1(%rax)
	jmp	.LBB4_128
	.align	16, 0x90
.LBB4_127:                              # %cond.false.i.178.i
                                        #   in Loop: Header=BB4_65 Depth=1
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB4_128:                              # %cond.end.i.180.i
                                        #   in Loop: Header=BB4_65 Depth=1
	movq	(%r12), %rax
	cmpq	(%r14), %rax
	jae	.LBB4_130
# BB#129:                               # %cond.true.18.i.182.i
                                        #   in Loop: Header=BB4_65 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, (%r12)
	movb	$0, 1(%rax)
	jmp	.LBB4_131
	.align	16, 0x90
.LBB4_130:                              # %cond.false.28.i.184.i
                                        #   in Loop: Header=BB4_65 Depth=1
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB4_131:                              # %put_u16.exit185.i
                                        #   in Loop: Header=BB4_65 Depth=1
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	put_u32
	movq	32(%r15), %rsi
	movq	%rbx, %rdi
	callq	put_u32
	movq	%rbx, %rbp
	movq	(%r13), %rbx
	movq	%rbx, %rdi
	callq	strlen
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rbx
	movl	%eax, %edx
	leaq	68(%rsp), %rbp
	movq	%rbp, %rcx
	callq	sputs
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rcx
	callq	sputs
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rcx
	callq	sputs
	movq	56(%rsp), %rax          # 8-byte Reload
	incl	%eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	16(%r13), %r13
	testq	%r13, %r13
	jne	.LBB4_65
# BB#132:
	movq	40(%rsp), %r15          # 8-byte Reload
	movq	48(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB4_133
.LBB4_63:                               # %zip_close_all_archive_files.exit.thread.while.end_crit_edge.i
	movq	%rbx, %rdi
	callq	stell
	movq	%rax, %rbp
	leaq	120(%rbx), %r12
	movq	%rbx, %r14
	subq	$-128, %r14
	xorl	%eax, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
.LBB4_133:                              # %while.end.i
	movq	%rbx, %rdi
	callq	stell
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movl	$101010256, %esi        # imm = 0x6054B50
	movq	%rbx, %rdi
	callq	put_u32
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB4_135
# BB#134:                               # %cond.true.i.193.i
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	leaq	1(%rax), %rcx
	movq	%rcx, (%r12)
	movb	$0, 1(%rax)
	jmp	.LBB4_136
.LBB4_162:                              # %if.then.10
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	stell
	movl	$-1, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.xps_close_device, %edi
	movl	$.L.str.16, %esi
	movl	$761, %edx              # imm = 0x2F9
	movl	$1, %ecx
	movl	$-1, %r8d
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
	jmp	.LBB4_165
.LBB4_135:                              # %cond.false.i.195.i
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	callq	spputc
.LBB4_136:                              # %cond.end.i.197.i
	movq	(%r12), %rax
	cmpq	(%r14), %rax
	jae	.LBB4_138
# BB#137:                               # %cond.true.18.i.199.i
	leaq	1(%rax), %rcx
	movq	%rcx, (%r12)
	movb	$0, 1(%rax)
	jmp	.LBB4_139
.LBB4_138:                              # %cond.false.28.i.201.i
	xorl	%esi, %esi
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	spputc
.LBB4_139:                              # %put_u16.exit202.i
	movq	(%r12), %rax
	cmpq	(%r14), %rax
	jae	.LBB4_141
# BB#140:                               # %cond.true.i.205.i
	leaq	1(%rax), %rcx
	movq	%rcx, (%r12)
	movb	$0, 1(%rax)
	jmp	.LBB4_142
.LBB4_141:                              # %cond.false.i.207.i
	xorl	%esi, %esi
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	spputc
.LBB4_142:                              # %cond.end.i.209.i
	movq	(%r12), %rax
	cmpq	(%r14), %rax
	jae	.LBB4_144
# BB#143:                               # %cond.true.18.i.211.i
	leaq	1(%rax), %rcx
	movq	%rcx, (%r12)
	movb	$0, 1(%rax)
	jmp	.LBB4_145
.LBB4_144:                              # %cond.false.28.i.213.i
	xorl	%esi, %esi
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	spputc
.LBB4_145:                              # %put_u16.exit214.i
	movq	(%r12), %rax
	cmpq	(%r14), %rax
	jae	.LBB4_147
# BB#146:                               # %cond.true.i.218.i
	movq	%rbp, %rbx
	leaq	1(%rax), %rcx
	movq	%rcx, (%r12)
	movq	56(%rsp), %r13          # 8-byte Reload
	movb	%r13b, 1(%rax)
	jmp	.LBB4_148
.LBB4_147:                              # %cond.false.i.221.i
	movq	%rbp, %rbx
	movq	56(%rsp), %r13          # 8-byte Reload
	movzbl	%r13b, %esi
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	spputc
.LBB4_148:                              # %cond.end.i.223.i
	movq	(%r12), %rax
	cmpq	(%r14), %rax
	jae	.LBB4_150
# BB#149:                               # %cond.true.18.i.227.i
	leaq	1(%rax), %rcx
	movq	%rcx, (%r12)
	movq	%r13, %rcx
	movb	%ch, 1(%rax)  # NOREX
	movq	%rcx, %rbp
	jmp	.LBB4_151
.LBB4_150:                              # %cond.false.28.i.231.i
	movq	%r13, %rax
	movzbl	%ah, %esi  # NOREX
	movq	%rax, %rbp
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	spputc
.LBB4_151:                              # %put_u16.exit232.i
	movq	%rbx, %r13
	movq	(%r12), %rax
	cmpq	(%r14), %rax
	jae	.LBB4_153
# BB#152:                               # %cond.true.i.236.i
	leaq	1(%rax), %rcx
	movq	%rcx, (%r12)
	movb	%bpl, 1(%rax)
	jmp	.LBB4_154
.LBB4_153:                              # %cond.false.i.239.i
	movzbl	%bpl, %esi
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	spputc
.LBB4_154:                              # %cond.end.i.241.i
	movq	(%r12), %rax
	cmpq	(%r14), %rax
	jae	.LBB4_156
# BB#155:                               # %cond.true.18.i.245.i
	leaq	1(%rax), %rcx
	movq	%rcx, (%r12)
	movq	%rbp, %rcx
	movb	%ch, 1(%rax)  # NOREX
	movq	24(%rsp), %rbx          # 8-byte Reload
	jmp	.LBB4_157
.LBB4_156:                              # %cond.false.28.i.249.i
	movq	%rbp, %rax
	movzbl	%ah, %esi  # NOREX
	movq	24(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	callq	spputc
.LBB4_157:                              # %put_u16.exit250.i
	movq	48(%rsp), %rsi          # 8-byte Reload
	subq	%r13, %rsi
	movq	%rbx, %rdi
	callq	put_u32
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	put_u32
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB4_159
# BB#158:                               # %cond.true.i.253.i
	leaq	1(%rax), %rcx
	movq	%rcx, (%r12)
	movb	$0, 1(%rax)
	jmp	.LBB4_160
.LBB4_159:                              # %cond.false.i.255.i
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB4_160:                              # %cond.end.i.257.i
	movq	(%r12), %rax
	cmpq	(%r14), %rax
	jae	.LBB4_163
# BB#161:                               # %cond.true.18.i.259.i
	leaq	1(%rax), %rcx
	movq	%rcx, (%r12)
	movb	$0, 1(%rax)
	jmp	.LBB4_164
.LBB4_163:                              # %cond.false.28.i.261.i
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB4_164:                              # %if.end.13
	leaq	68(%rsp), %rcx
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	sputs
	movq	%r15, %rdi
	callq	gdev_vector_close_file
.LBB4_165:                              # %cleanup
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	xps_close_device, .Lfunc_end4-xps_close_device
	.cfi_endproc

	.align	16, 0x90
	.type	xps_get_params,@function
xps_get_params:                         # @xps_get_params
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
	subq	$32, %rsp
.Ltmp30:
	.cfi_def_cfa_offset 64
.Ltmp31:
	.cfi_offset %rbx, -32
.Ltmp32:
	.cfi_offset %r14, -24
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	gdev_vector_get_params
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_1
# BB#2:                                 # %if.end
	leaq	8916(%rbx), %rax
	movq	%rax, 16(%rsp)
	addq	$1744, %rbx             # imm = 0x6D0
	movq	%rbx, %rdi
	callq	strlen
	movl	%eax, 24(%rsp)
	movl	$0, 28(%rsp)
	leaq	16(%rsp), %rdx
	movl	$.L.str.65, %esi
	movq	%r14, %rdi
	callq	param_write_string
	jmp	.LBB5_3
.LBB5_1:                                # %if.then
	movl	%ebp, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.xps_get_params, %edi
	movl	$.L.str.16, %esi
	movl	$841, %edx              # imm = 0x349
	movl	$1, %ecx
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	movl	%ebp, %r8d
	callq	gs_throw_imp
.LBB5_3:                                # %cleanup
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	xps_get_params, .Lfunc_end5-xps_get_params
	.cfi_endproc

	.align	16, 0x90
	.type	xps_put_params,@function
xps_put_params:                         # @xps_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp34:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp35:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp37:
	.cfi_def_cfa_offset 64
.Ltmp38:
	.cfi_offset %rbx, -32
.Ltmp39:
	.cfi_offset %r14, -24
.Ltmp40:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	16(%rsp), %rdx
	movl	$.L.str.65, %esi
	movq	%rbx, %rdi
	callq	param_read_string
	cmpl	$1, %eax
	je	.LBB6_6
# BB#1:                                 # %entry
	testl	%eax, %eax
	jne	.LBB6_5
# BB#2:                                 # %sw.bb
	movl	24(%rsp), %edx
	cmpq	$65, %rdx
	jb	.LBB6_4
# BB#3:                                 # %if.then
	callq	gs_program_name
	movq	%rax, %r15
	callq	gs_revision_number
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.66, %edi
	movl	$64, %esi
	xorl	%eax, %eax
	callq	errprintf_nomem
	jmp	.LBB6_6
.LBB6_5:                                # %sw.default
	movq	(%rbx), %rcx
	movl	$.L.str.65, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	*56(%rcx)
	jmp	.LBB6_6
.LBB6_4:                                # %if.else
	leaq	8916(%r14), %rdi
	movq	16(%rsp), %rsi
	callq	memcpy
	movl	24(%rsp), %eax
	movb	$0, 8916(%r14,%rax)
.LBB6_6:                                # %sw.epilog
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gdev_vector_put_params
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jns	.LBB6_8
# BB#7:                                 # %if.then.12
	movl	%ebx, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.xps_put_params, %edi
	movl	$.L.str.16, %esi
	movl	$884, %edx              # imm = 0x374
	movl	$1, %ecx
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	movl	%ebx, %r8d
	callq	gs_throw_imp
	movl	%eax, %ebx
.LBB6_8:                                # %cleanup
	movl	%ebx, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end6:
	.size	xps_put_params, .Lfunc_end6-xps_put_params
	.cfi_endproc

	.align	16, 0x90
	.type	gdev_xps_fill_path,@function
gdev_xps_fill_path:                     # @gdev_xps_fill_path
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp42:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp43:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp44:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp45:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp47:
	.cfi_def_cfa_offset 64
.Ltmp48:
	.cfi_offset %rbx, -56
.Ltmp49:
	.cfi_offset %r12, -48
.Ltmp50:
	.cfi_offset %r13, -40
.Ltmp51:
	.cfi_offset %r14, -32
.Ltmp52:
	.cfi_offset %r15, -24
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movq	%r8, %r15
	movq	%rcx, %r12
	movq	%rdx, %rbx
	movq	%rsi, %r13
	movq	%rdi, %rbp
	movq	%rbx, %rdi
	callq	gx_path_is_void
	testl	%eax, %eax
	je	.LBB7_2
# BB#1:                                 # %return
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_2:                                # %if.end
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	movq	%r15, %r8
	movq	%r14, %r9
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gdev_vector_fill_path   # TAILCALL
.Lfunc_end7:
	.size	gdev_xps_fill_path, .Lfunc_end7-gdev_xps_fill_path
	.cfi_endproc

	.align	16, 0x90
	.type	gdev_xps_stroke_path,@function
gdev_xps_stroke_path:                   # @gdev_xps_stroke_path
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
	pushq	%rax
.Ltmp60:
	.cfi_def_cfa_offset 64
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
	movq	%r9, %r14
	movq	%r8, %r15
	movq	%rcx, %r12
	movq	%rdx, %rbx
	movq	%rsi, %r13
	movq	%rdi, %rbp
	movq	%rbx, %rdi
	callq	gx_path_is_void
	testl	%eax, %eax
	je	.LBB8_2
# BB#1:                                 # %return
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_2:                                # %if.end
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	movq	%r15, %r8
	movq	%r14, %r9
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gdev_vector_stroke_path # TAILCALL
.Lfunc_end8:
	.size	gdev_xps_stroke_path, .Lfunc_end8-gdev_xps_stroke_path
	.cfi_endproc

	.align	16, 0x90
	.type	write_str_to_zip_file,@function
write_str_to_zip_file:                  # @write_str_to_zip_file
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
	subq	$40, %rsp
.Ltmp73:
	.cfi_def_cfa_offset 96
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
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	%rsi, %rbx
	movq	%rdi, %r13
	movq	%rdx, %rdi
	callq	strlen
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	24(%r13), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	8848(%r13), %rbp
	jmp	.LBB9_1
	.align	16, 0x90
.LBB9_3:                                # %if.end.i.i
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	16(%rbp), %rbp
.LBB9_1:                                # %entry
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbp, %rbp
	je	.LBB9_5
# BB#2:                                 # %while.body.i.i
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	(%rbp), %rdi
	movq	%rbx, %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB9_3
# BB#4:                                 # %zip_look_up_file_info.exit.i
	movq	8(%rbp), %rbp
	testq	%rbp, %rbp
	jne	.LBB9_23
.LBB9_5:                                # %if.then.i
	leaq	8848(%r13), %r15
	movq	24(%r13), %r12
	movq	200(%r12), %rdi
	movl	$48, %esi
	movl	$.L.str.53, %edx
	callq	*64(%rdi)
	movq	%rax, %rbp
	movq	200(%r12), %rdi
	movl	$24, %esi
	movl	$.L.str.54, %edx
	callq	*64(%rdi)
	movq	%rax, %r14
	testq	%rbp, %rbp
	je	.LBB9_17
# BB#6:                                 # %if.then.i
	testq	%r14, %r14
	je	.LBB9_17
# BB#7:                                 # %if.end.i.i.i
	movq	%rbp, 8(%r14)
	movq	$0, 16(%r14)
	cmpq	$0, (%r15)
	je	.LBB9_8
# BB#9:                                 # %if.else.i.i.i
	movq	8856(%r13), %rax
	movq	%r14, 16(%rax)
	jmp	.LBB9_10
.LBB9_17:                               # %zip_new_info_node.exit.i.i
	movl	$-100, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.zip_new_info_node, %edi
	movl	$.L.str.16, %esi
	movl	$312, %edx              # imm = 0x138
	xorl	%ecx, %ecx
	movl	$-100, %r8d
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
	testl	%eax, %eax
	jns	.LBB9_13
# BB#18:                                # %zip_add_file.exit.i
	movl	$-100, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.zip_add_file, %edi
	movl	$.L.str.16, %esi
	movl	$353, %edx              # imm = 0x161
	xorl	%ecx, %ecx
	movl	$-100, %r8d
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB9_13
# BB#19:                                # %if.then.3.i
	movl	%ebp, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.write_to_zip_file, %edi
	movl	$.L.str.16, %esi
	movl	$434, %edx              # imm = 0x1B2
	movl	$1, %ecx
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	movl	%ebp, %r8d
	callq	gs_throw_imp
	jmp	.LBB9_38
.LBB9_8:                                # %if.then.13.i.i.i
	movq	%r14, 8848(%r13)
.LBB9_10:                               # %if.end.18.i.i.i
	movq	%r14, 8856(%r13)
	movq	%rbx, %rdi
	callq	strlen
	movq	200(%r12), %rdi
	leal	1(%rax), %esi
	movl	$.L.str.55, %edx
	callq	*64(%rdi)
	movq	%rax, (%r14)
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	strcpy
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rbp)
	movl	$95, %edi
	callq	gs_debug_c
	testl	%eax, %eax
	je	.LBB9_13
# BB#11:
	movq	%r15, %rax
	.align	16, 0x90
.LBB9_12:                               # %while.cond.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	testq	%rax, %rax
	leaq	16(%rax), %rax
	jne	.LBB9_12
.LBB9_13:                               # %if.end.i
	movq	(%r15), %rbp
	jmp	.LBB9_14
	.align	16, 0x90
.LBB9_16:                               # %if.end.i.28.i
                                        #   in Loop: Header=BB9_14 Depth=1
	movq	16(%rbp), %rbp
.LBB9_14:                               # %if.end.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbp, %rbp
	je	.LBB9_22
# BB#15:                                # %while.body.i.24.i
                                        #   in Loop: Header=BB9_14 Depth=1
	movq	(%rbp), %rdi
	movq	%rbx, %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB9_16
# BB#21:                                # %if.end.7.i
	movq	8(%rbp), %rbp
	testq	%rbp, %rbp
	je	.LBB9_22
.LBB9_23:                               # %if.end.12.i
	leaq	16(%rbp), %r15
	cmpq	$0, 24(%rbp)
	je	.LBB9_24
# BB#28:                                # %if.end.19.i.i
	movq	(%r15), %r12
	testq	%r12, %r12
	jne	.LBB9_33
# BB#29:                                # %if.then.23.i.i
	movl	$-100, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.zip_append_data, %edi
	movl	$.L.str.16, %esi
	movl	$402, %edx              # imm = 0x192
	jmp	.LBB9_30
.LBB9_22:                               # %if.then.9.i
	movl	$-100, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.write_to_zip_file, %edi
	movl	$.L.str.16, %esi
	movl	$439, %edx              # imm = 0x1B7
	xorl	%ecx, %ecx
	movl	$-100, %r8d
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
	jmp	.LBB9_38
.LBB9_24:                               # %if.then.i.36.i
	movl	$4096, %esi             # imm = 0x1000
	movl	$.L.str.56, %edx
	movq	16(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	callq	*64(%rbx)
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB9_25
# BB#26:                                # %if.end.i.37.i
	movl	$.L.str.57, %esi
	movl	$.L.str.58, %ecx
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	gp_open_scratch_file
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB9_27
# BB#32:                                # %if.end.19.thread.i.i
	movq	%r14, %rdi
	callq	unlink
	movl	$.L.str.56, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*24(%rbx)
	movq	%r12, (%r15)
.LBB9_33:                               # %if.end.26.i.i
	movq	24(%rsp), %rbx          # 8-byte Reload
	movl	%ebx, %r14d
	movl	$1, %esi
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	%r14, %rdx
	movq	%r12, %rcx
	callq	fwrite
	cmpl	%ebx, %eax
	movq	(%r15), %rdi
	jne	.LBB9_34
# BB#36:                                # %zip_append_data.exit.thread46.i
	callq	fflush
	addq	%r14, 24(%rbp)
	xorl	%ebx, %ebx
	jmp	.LBB9_37
.LBB9_34:                               # %zip_append_data.exit.thread.i
	callq	fclose
	movl	$-1, %ebx
	jmp	.LBB9_35
.LBB9_25:                               # %if.then.3.i.i
	movl	$-25, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.zip_append_data, %edi
	movl	$.L.str.16, %esi
	movl	$384, %edx              # imm = 0x180
	xorl	%ecx, %ecx
	movl	$-25, %r8d
	jmp	.LBB9_31
.LBB9_27:                               # %if.then.8.i.i
	movl	$.L.str.56, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*24(%rbx)
	movl	$-100, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.zip_append_data, %edi
	movl	$.L.str.16, %esi
	movl	$392, %edx              # imm = 0x188
.LBB9_30:                               # %zip_append_data.exit.i
	xorl	%ecx, %ecx
	movl	$-100, %r8d
.LBB9_31:                               # %zip_append_data.exit.i
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB9_35
.LBB9_37:                               # %write_to_zip_file.exit
	movl	%ebx, %eax
	jmp	.LBB9_38
.LBB9_35:                               # %if.then.15.i
	movl	%ebx, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.write_to_zip_file, %edi
	movl	$.L.str.16, %esi
	movl	$443, %edx              # imm = 0x1BB
	movl	$1, %ecx
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	movl	%ebx, %r8d
	callq	gs_throw_imp
.LBB9_38:                               # %write_to_zip_file.exit
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	write_str_to_zip_file, .Lfunc_end9-write_str_to_zip_file
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4616189618054758400     # double 4
.LCPI10_1:
	.quad	4613937818241073152     # double 3
.LCPI10_2:
	.quad	4636455816377925632     # double 96
	.text
	.align	16, 0x90
	.type	xps_beginpage,@function
xps_beginpage:                          # @xps_beginpage
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp81:
	.cfi_def_cfa_offset 24
	subq	$280, %rsp              # imm = 0x118
.Ltmp82:
	.cfi_def_cfa_offset 304
.Ltmp83:
	.cfi_offset %rbx, -24
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	8864(%rbx), %edx
	incl	%edx
	leaq	16(%rsp), %rdi
	movl	$.L.str.22, %esi
	xorl	%eax, %eax
	callq	gs_sprintf
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB10_1
# BB#3:                                 # %if.end
	leaq	16(%rsp), %rdx
	movl	$.L.str.20, %esi
	movq	%rbx, %rdi
	callq	write_str_to_zip_file
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB10_4
# BB#5:                                 # %cleanup.cont
	movss	856(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	860(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI10_0(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	movsd	.LCPI10_1(%rip), %xmm3  # xmm3 = mem[0],zero
	divsd	%xmm3, %xmm0
	cvttsd2si	%xmm0, %edx
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm0
	divsd	%xmm3, %xmm0
	cvttsd2si	%xmm0, %ecx
	leaq	16(%rsp), %rdi
	movl	$.L.str.23, %esi
	xorl	%eax, %eax
	callq	gs_sprintf
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB10_6
# BB#7:                                 # %if.end.24
	movl	8864(%rbx), %edx
	incl	%edx
	leaq	144(%rsp), %rdi
	movl	$.L.str.25, %esi
	xorl	%eax, %eax
	callq	gs_sprintf
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB10_8
# BB#9:                                 # %if.end.i
	leaq	144(%rsp), %rsi
	leaq	16(%rsp), %rdx
	movq	%rbx, %rdi
	callq	write_str_to_zip_file
	jmp	.LBB10_10
.LBB10_1:                               # %if.then
	movl	%ebp, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.xps_beginpage, %edi
	movl	$.L.str.16, %esi
	movl	$942, %edx              # imm = 0x3AE
	jmp	.LBB10_2
.LBB10_4:                               # %if.then.6
	movl	%ebp, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.xps_beginpage, %edi
	movl	$.L.str.16, %esi
	movl	$947, %edx              # imm = 0x3B3
	jmp	.LBB10_2
.LBB10_6:                               # %if.then.21
	movl	%ebp, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.xps_beginpage, %edi
	movl	$.L.str.16, %esi
	movl	$958, %edx              # imm = 0x3BE
	jmp	.LBB10_2
.LBB10_8:                               # %if.then.i
	movl	%ebp, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.write_str_to_current_page, %edi
	movl	$.L.str.16, %esi
	movl	$705, %edx              # imm = 0x2C1
	movl	$1, %ecx
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	movl	%ebp, %r8d
	callq	gs_throw_imp
.LBB10_10:                              # %write_str_to_current_page.exit
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB10_11
# BB#12:                                # %cleanup.cont.35
	movss	884(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	888(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm2
	movsd	.LCPI10_2(%rip), %xmm3  # xmm3 = mem[0],zero
	movapd	%xmm3, %xmm0
	divsd	%xmm2, %xmm0
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm3
	leaq	16(%rsp), %rdi
	movl	$.L.str.24, %esi
	xorpd	%xmm1, %xmm1
	xorpd	%xmm2, %xmm2
	xorps	%xmm4, %xmm4
	xorps	%xmm5, %xmm5
	movb	$6, %al
	callq	gs_sprintf
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB10_13
# BB#14:                                # %if.end.50
	movl	8864(%rbx), %edx
	incl	%edx
	leaq	144(%rsp), %rdi
	movl	$.L.str.25, %esi
	xorl	%eax, %eax
	callq	gs_sprintf
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB10_15
# BB#16:                                # %if.end.i.44
	leaq	144(%rsp), %rsi
	leaq	16(%rsp), %rdx
	movq	%rbx, %rdi
	callq	write_str_to_zip_file
	jmp	.LBB10_17
.LBB10_11:                              # %if.then.29
	movl	%ebp, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.xps_beginpage, %edi
	movl	$.L.str.16, %esi
	movl	$961, %edx              # imm = 0x3C1
	jmp	.LBB10_2
.LBB10_13:                              # %if.then.47
	movl	%ebp, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.xps_beginpage, %edi
	movl	$.L.str.16, %esi
	movl	$969, %edx              # imm = 0x3C9
.LBB10_2:                               # %cleanup.65
	movl	$1, %ecx
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	movl	%ebp, %r8d
.LBB10_19:                              # %cleanup.65
	callq	gs_throw_imp
	movl	%eax, %ebx
.LBB10_20:                              # %cleanup.65
	movl	%ebx, %eax
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%rbp
	retq
.LBB10_15:                              # %if.then.i.42
	movl	%ebp, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.write_str_to_current_page, %edi
	movl	$.L.str.16, %esi
	movl	$705, %edx              # imm = 0x2C1
	movl	$1, %ecx
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	movl	%ebp, %r8d
	callq	gs_throw_imp
.LBB10_17:                              # %write_str_to_current_page.exit46
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jns	.LBB10_20
# BB#18:                                # %if.then.55
	movl	%ebx, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.xps_beginpage, %edi
	movl	$.L.str.16, %esi
	movl	$973, %edx              # imm = 0x3CD
	movl	$1, %ecx
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	movl	%ebx, %r8d
	jmp	.LBB10_19
.Lfunc_end10:
	.size	xps_beginpage, .Lfunc_end10-xps_beginpage
	.cfi_endproc

	.align	16, 0x90
	.type	xps_setlinewidth,@function
xps_setlinewidth:                       # @xps_setlinewidth
	.cfi_startproc
# BB#0:                                 # %entry
	movsd	%xmm0, 8888(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end11:
	.size	xps_setlinewidth, .Lfunc_end11-xps_setlinewidth
	.cfi_endproc

	.align	16, 0x90
	.type	xps_setlinecap,@function
xps_setlinecap:                         # @xps_setlinecap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp85:
	.cfi_def_cfa_offset 16
	cmpl	$5, %esi
	jb	.LBB12_2
# BB#1:                                 # %if.then
	movl	$-15, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.xps_setlinecap, %edi
	movl	$.L.str.16, %esi
	movl	$1003, %edx             # imm = 0x3EB
	xorl	%ecx, %ecx
	movl	$-15, %r8d
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
	popq	%rdx
	retq
.LBB12_2:                               # %cleanup
	movl	%esi, 8896(%rdi)
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end12:
	.size	xps_setlinecap, .Lfunc_end12-xps_setlinecap
	.cfi_endproc

	.align	16, 0x90
	.type	xps_setlinejoin,@function
xps_setlinejoin:                        # @xps_setlinejoin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp86:
	.cfi_def_cfa_offset 16
	cmpl	$6, %esi
	jb	.LBB13_2
# BB#1:                                 # %if.then
	movl	$-15, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.xps_setlinejoin, %edi
	movl	$.L.str.16, %esi
	movl	$1018, %edx             # imm = 0x3FA
	xorl	%ecx, %ecx
	movl	$-15, %r8d
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
	popq	%rdx
	retq
.LBB13_2:                               # %cleanup
	movl	%esi, 8900(%rdi)
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end13:
	.size	xps_setlinejoin, .Lfunc_end13-xps_setlinejoin
	.cfi_endproc

	.align	16, 0x90
	.type	xps_setmiterlimit,@function
xps_setmiterlimit:                      # @xps_setmiterlimit
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end14:
	.size	xps_setmiterlimit, .Lfunc_end14-xps_setmiterlimit
	.cfi_endproc

	.align	16, 0x90
	.type	xps_setdash,@function
xps_setdash:                            # @xps_setdash
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%edx, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 8912(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end15:
	.size	xps_setdash, .Lfunc_end15-xps_setdash
	.cfi_endproc

	.align	16, 0x90
	.type	xps_setlogop,@function
xps_setlogop:                           # @xps_setlogop
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end16:
	.size	xps_setlogop, .Lfunc_end16-xps_setlogop
	.cfi_endproc

	.align	16, 0x90
	.type	xps_can_handle_hl_color,@function
xps_can_handle_hl_color:                # @xps_can_handle_hl_color
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end17:
	.size	xps_can_handle_hl_color, .Lfunc_end17-xps_can_handle_hl_color
	.cfi_endproc

	.align	16, 0x90
	.type	xps_setfillcolor,@function
xps_setfillcolor:                       # @xps_setfillcolor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp87:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp88:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp89:
	.cfi_def_cfa_offset 32
.Ltmp90:
	.cfi_offset %rbx, -24
.Ltmp91:
	.cfi_offset %r14, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	callq	gdev_vector_stream
	movq	(%r14), %rcx
	movl	$-15, %eax
	cmpq	gx_dc_type_pure(%rip), %rcx
	jne	.LBB18_2
# BB#1:                                 # %if.end.i
	movq	8(%r14), %rax
	movq	%rax, 8880(%rbx)
	xorl	%eax, %eax
.LBB18_2:                               # %set_state_color.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end18:
	.size	xps_setfillcolor, .Lfunc_end18-xps_setfillcolor
	.cfi_endproc

	.align	16, 0x90
	.type	xps_setstrokecolor,@function
xps_setstrokecolor:                     # @xps_setstrokecolor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp92:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp93:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp94:
	.cfi_def_cfa_offset 32
.Ltmp95:
	.cfi_offset %rbx, -24
.Ltmp96:
	.cfi_offset %r14, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	callq	gdev_vector_stream
	movq	(%r14), %rcx
	movl	$-15, %eax
	cmpq	gx_dc_type_pure(%rip), %rcx
	jne	.LBB19_2
# BB#1:                                 # %if.end.i
	movq	8(%r14), %rax
	movq	%rax, 8872(%rbx)
	xorl	%eax, %eax
.LBB19_2:                               # %set_state_color.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end19:
	.size	xps_setstrokecolor, .Lfunc_end19-xps_setstrokecolor
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_0:
	.quad	4571153621781053440     # double 0.00390625
	.text
	.align	16, 0x90
	.type	xps_dorect,@function
xps_dorect:                             # @xps_dorect
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
	subq	$472, %rsp              # imm = 0x1D8
.Ltmp103:
	.cfi_def_cfa_offset 528
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
	movl	%r9d, %r12d
	movl	%r8d, %r14d
	movl	%ecx, %r13d
	movl	%edx, %ebx
	movl	%esi, %ebp
	movq	%rdi, %r15
	callq	gdev_vector_stream
	testb	$3, %r12b
	je	.LBB20_1
# BB#2:                                 # %if.end
	movl	%ebx, 28(%rsp)          # 4-byte Spill
	movl	%r14d, 24(%rsp)         # 4-byte Spill
	movl	%r12d, %eax
	andl	$2, %eax
	je	.LBB20_4
# BB#3:                                 # %land.lhs.true
	movl	$-15, %r14d
	cmpl	$0, 8912(%r15)
	je	.LBB20_21
.LBB20_4:                               # %if.end.6
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movl	8864(%r15), %edx
	incl	%edx
	leaq	336(%rsp), %rdi
	movl	$.L.str.25, %esi
	xorl	%eax, %eax
	callq	gs_sprintf
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB20_5
# BB#6:                                 # %if.end.i.39
	leaq	336(%rsp), %rsi
	movl	$.L.str.35, %edx
	movq	%r15, %rdi
	callq	write_str_to_zip_file
	jmp	.LBB20_7
.LBB20_1:                               # %if.then
	movl	%r12d, (%rsp)
	xorl	%r14d, %r14d
	movl	$.L__func__.xps_dorect, %edi
	movl	$.L.str.16, %esi
	movl	$1088, %edx             # imm = 0x440
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movl	$.L.str.34, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
	jmp	.LBB20_21
.LBB20_5:                               # %if.then.i.37
	movl	%ebx, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.write_str_to_current_page, %edi
	movl	$.L.str.16, %esi
	movl	$705, %edx              # imm = 0x2C1
	movl	$1, %ecx
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	movl	%ebx, %r8d
	callq	gs_throw_imp
.LBB20_7:                               # %write_str_to_current_page.exit41
	testb	$1, %r12b
	jne	.LBB20_8
# BB#9:                                 # %if.else
	movq	8872(%r15), %rdx
	andl	$16777215, %edx         # imm = 0xFFFFFF
	cvtsi2sdl	%ebp, %xmm0
	movsd	.LCPI20_0(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	movl	28(%rsp), %eax          # 4-byte Reload
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm2, %xmm1
	movl	24(%rsp), %eax          # 4-byte Reload
	cvtsi2sdl	%eax, %xmm3
	mulsd	%xmm2, %xmm3
	cvtsi2sdl	%r13d, %xmm4
	mulsd	%xmm2, %xmm4
	leaq	32(%rsp), %rdi
	movl	$.L.str.37, %esi
	jmp	.LBB20_10
.LBB20_8:                               # %if.then.10
	movq	8880(%r15), %rdx
	andl	$16777215, %edx         # imm = 0xFFFFFF
	cvtsi2sdl	%ebp, %xmm0
	movsd	.LCPI20_0(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	movl	28(%rsp), %eax          # 4-byte Reload
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm2, %xmm1
	movl	24(%rsp), %eax          # 4-byte Reload
	cvtsi2sdl	%eax, %xmm3
	mulsd	%xmm2, %xmm3
	cvtsi2sdl	%r13d, %xmm4
	mulsd	%xmm2, %xmm4
	leaq	32(%rsp), %rdi
	movl	$.L.str.36, %esi
.LBB20_10:                              # %if.end.46
	movb	$8, %al
	movapd	%xmm0, %xmm2
	movapd	%xmm3, %xmm5
	movapd	%xmm4, %xmm6
	movapd	%xmm1, %xmm7
	callq	gs_sprintf
	movl	8864(%r15), %edx
	incl	%edx
	leaq	336(%rsp), %rdi
	movl	$.L.str.25, %esi
	xorl	%eax, %eax
	callq	gs_sprintf
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB20_11
# BB#12:                                # %if.end.i.51
	leaq	336(%rsp), %rsi
	leaq	32(%rsp), %rdx
	movq	%r15, %rdi
	callq	write_str_to_zip_file
	jmp	.LBB20_13
.LBB20_11:                              # %if.then.i.49
	movl	%ebx, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.write_str_to_current_page, %edi
	movl	$.L.str.16, %esi
	movl	$705, %edx              # imm = 0x2C1
	movl	$1, %ecx
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	movl	%ebx, %r8d
	callq	gs_throw_imp
.LBB20_13:                              # %write_str_to_current_page.exit53
	movl	20(%rsp), %r14d         # 4-byte Reload
	testl	%r14d, %r14d
	je	.LBB20_17
# BB#14:                                # %if.then.51
	movsd	8888(%r15), %xmm0       # xmm0 = mem[0],zero
	leaq	32(%rsp), %rdi
	movl	$.L.str.38, %esi
	movb	$1, %al
	callq	gs_sprintf
	movl	8864(%r15), %edx
	incl	%edx
	leaq	336(%rsp), %rdi
	movl	$.L.str.25, %esi
	xorl	%eax, %eax
	callq	gs_sprintf
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB20_15
# BB#16:                                # %if.end.i.63
	leaq	336(%rsp), %rsi
	leaq	32(%rsp), %rdx
	movq	%r15, %rdi
	callq	write_str_to_zip_file
	jmp	.LBB20_17
.LBB20_15:                              # %if.then.i.61
	movl	%ebx, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.write_str_to_current_page, %edi
	movl	$.L.str.16, %esi
	movl	$705, %edx              # imm = 0x2C1
	movl	$1, %ecx
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	movl	%ebx, %r8d
	callq	gs_throw_imp
.LBB20_17:                              # %if.end.56
	movl	8864(%r15), %edx
	incl	%edx
	leaq	336(%rsp), %rdi
	movl	$.L.str.25, %esi
	xorl	%eax, %eax
	callq	gs_sprintf
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB20_18
# BB#19:                                # %if.end.i
	leaq	336(%rsp), %rsi
	movl	$.L.str.39, %edx
	movq	%r15, %rdi
	callq	write_str_to_zip_file
	jmp	.LBB20_20
.LBB20_18:                              # %if.then.i
	movl	%ebx, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.write_str_to_current_page, %edi
	movl	$.L.str.16, %esi
	movl	$705, %edx              # imm = 0x2C1
	movl	$1, %ecx
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	movl	%ebx, %r8d
	callq	gs_throw_imp
.LBB20_20:                              # %write_str_to_current_page.exit
	movl	%eax, %r14d
.LBB20_21:                              # %cleanup
	movl	%r14d, %eax
	addq	$472, %rsp              # imm = 0x1D8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	xps_dorect, .Lfunc_end20-xps_dorect
	.cfi_endproc

	.align	16, 0x90
	.type	xps_beginpath,@function
xps_beginpath:                          # @xps_beginpath
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp110:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp111:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp112:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp113:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp114:
	.cfi_def_cfa_offset 48
	subq	$448, %rsp              # imm = 0x1C0
.Ltmp115:
	.cfi_def_cfa_offset 496
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
	movl	%esi, %r12d
	movq	%rdi, %rbx
	callq	gdev_vector_stream
	testb	$3, %r12b
	je	.LBB21_1
# BB#2:                                 # %if.end
	movl	$-15, %ebp
	cmpl	$0, 8912(%rbx)
	je	.LBB21_10
# BB#3:                                 # %if.end.5
	leaq	8880(%rbx), %rax
	leaq	8872(%rbx), %rcx
	andl	$1, %r12d
	cmovneq	%rax, %rcx
	movq	(%rcx), %r14
	andl	$16777215, %r14d        # imm = 0xFFFFFF
	movl	8864(%rbx), %edx
	incl	%edx
	leaq	320(%rsp), %rdi
	movl	$.L.str.25, %esi
	xorl	%eax, %eax
	callq	gs_sprintf
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB21_4
# BB#5:                                 # %if.end.i.21
	leaq	320(%rsp), %rsi
	movl	$.L.str.35, %edx
	movq	%rbx, %rdi
	callq	write_str_to_zip_file
	jmp	.LBB21_6
.LBB21_1:                               # %if.then
	movl	%r12d, (%rsp)
	xorl	%ebp, %ebp
	movl	$.L__func__.xps_beginpath, %edi
	movl	$.L.str.16, %esi
	movl	$1163, %edx             # imm = 0x48B
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movl	$.L.str.40, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
	jmp	.LBB21_10
.LBB21_4:                               # %if.then.i.19
	movl	%r15d, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.write_str_to_current_page, %edi
	movl	$.L.str.16, %esi
	movl	$705, %edx              # imm = 0x2C1
	movl	$1, %ecx
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	movl	%r15d, %r8d
	callq	gs_throw_imp
.LBB21_6:                               # %write_str_to_current_page.exit23
	testl	%r12d, %r12d
	movl	$.L.str.41, %eax
	movl	$.L.str.42, %esi
	cmovneq	%rax, %rsi
	leaq	16(%rsp), %rdi
	xorl	%eax, %eax
	movq	%r14, %rdx
	callq	gs_sprintf
	movl	8864(%rbx), %edx
	incl	%edx
	leaq	320(%rsp), %rdi
	movl	$.L.str.25, %esi
	xorl	%eax, %eax
	callq	gs_sprintf
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB21_7
# BB#8:                                 # %if.end.i
	leaq	320(%rsp), %rsi
	leaq	16(%rsp), %rdx
	movq	%rbx, %rdi
	callq	write_str_to_zip_file
	jmp	.LBB21_9
.LBB21_7:                               # %if.then.i
	movl	%ebp, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.write_str_to_current_page, %edi
	movl	$.L.str.16, %esi
	movl	$705, %edx              # imm = 0x2C1
	movl	$1, %ecx
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	movl	%ebp, %r8d
	callq	gs_throw_imp
.LBB21_9:                               # %write_str_to_current_page.exit
	xorl	%ebp, %ebp
.LBB21_10:                              # %cleanup
	movl	%ebp, %eax
	addq	$448, %rsp              # imm = 0x1C0
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	xps_beginpath, .Lfunc_end21-xps_beginpath
	.cfi_endproc

	.align	16, 0x90
	.type	xps_moveto,@function
xps_moveto:                             # @xps_moveto
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp121:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp122:
	.cfi_def_cfa_offset 24
	subq	$456, %rsp              # imm = 0x1C8
.Ltmp123:
	.cfi_def_cfa_offset 480
.Ltmp124:
	.cfi_offset %rbx, -24
.Ltmp125:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	testb	$3, %sil
	je	.LBB22_1
# BB#2:                                 # %if.end
	leaq	16(%rsp), %rdi
	movl	$.L.str.44, %esi
	movb	$2, %al
	movaps	%xmm2, %xmm0
	movaps	%xmm3, %xmm1
	callq	gs_sprintf
	movl	8864(%rbx), %edx
	incl	%edx
	leaq	320(%rsp), %rdi
	movl	$.L.str.25, %esi
	xorl	%eax, %eax
	callq	gs_sprintf
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB22_3
# BB#4:                                 # %if.end.i
	leaq	320(%rsp), %rsi
	leaq	16(%rsp), %rdx
	movq	%rbx, %rdi
	callq	write_str_to_zip_file
	jmp	.LBB22_5
.LBB22_1:                               # %if.then
	movl	%esi, (%rsp)
	movl	$.L__func__.xps_moveto, %edi
	movl	$.L.str.16, %esi
	movl	$1201, %edx             # imm = 0x4B1
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movl	$.L.str.43, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
	jmp	.LBB22_5
.LBB22_3:                               # %if.then.i
	movl	%ebp, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.write_str_to_current_page, %edi
	movl	$.L.str.16, %esi
	movl	$705, %edx              # imm = 0x2C1
	movl	$1, %ecx
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	movl	%ebp, %r8d
	callq	gs_throw_imp
.LBB22_5:                               # %cleanup
	xorl	%eax, %eax
	addq	$456, %rsp              # imm = 0x1C8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end22:
	.size	xps_moveto, .Lfunc_end22-xps_moveto
	.cfi_endproc

	.align	16, 0x90
	.type	xps_lineto,@function
xps_lineto:                             # @xps_lineto
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp127:
	.cfi_def_cfa_offset 24
	subq	$360, %rsp              # imm = 0x168
.Ltmp128:
	.cfi_def_cfa_offset 384
.Ltmp129:
	.cfi_offset %rbx, -24
.Ltmp130:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	testb	$3, %sil
	je	.LBB23_1
# BB#2:                                 # %if.end
	leaq	16(%rsp), %rdi
	movl	$.L.str.46, %esi
	movb	$2, %al
	movaps	%xmm2, %xmm0
	movaps	%xmm3, %xmm1
	callq	gs_sprintf
	movl	8864(%rbx), %edx
	incl	%edx
	leaq	224(%rsp), %rdi
	movl	$.L.str.25, %esi
	xorl	%eax, %eax
	callq	gs_sprintf
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB23_3
# BB#4:                                 # %if.end.i
	leaq	224(%rsp), %rsi
	leaq	16(%rsp), %rdx
	movq	%rbx, %rdi
	callq	write_str_to_zip_file
	jmp	.LBB23_5
.LBB23_1:                               # %if.then
	movl	%esi, (%rsp)
	movl	$.L__func__.xps_lineto, %edi
	movl	$.L.str.16, %esi
	movl	$1222, %edx             # imm = 0x4C6
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movl	$.L.str.45, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
	jmp	.LBB23_5
.LBB23_3:                               # %if.then.i
	movl	%ebp, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.write_str_to_current_page, %edi
	movl	$.L.str.16, %esi
	movl	$705, %edx              # imm = 0x2C1
	movl	$1, %ecx
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	movl	%ebp, %r8d
	callq	gs_throw_imp
.LBB23_5:                               # %cleanup
	xorl	%eax, %eax
	addq	$360, %rsp              # imm = 0x168
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end23:
	.size	xps_lineto, .Lfunc_end23-xps_lineto
	.cfi_endproc

	.align	16, 0x90
	.type	xps_curveto,@function
xps_curveto:                            # @xps_curveto
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp131:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp132:
	.cfi_def_cfa_offset 24
	subq	$360, %rsp              # imm = 0x168
.Ltmp133:
	.cfi_def_cfa_offset 384
.Ltmp134:
	.cfi_offset %rbx, -24
.Ltmp135:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	testb	$3, %sil
	je	.LBB24_1
# BB#2:                                 # %if.end
	leaq	16(%rsp), %rdi
	movl	$.L.str.48, %esi
	movb	$6, %al
	movaps	%xmm2, %xmm0
	movaps	%xmm3, %xmm1
	movaps	%xmm4, %xmm2
	movaps	%xmm5, %xmm3
	movaps	%xmm6, %xmm4
	movaps	%xmm7, %xmm5
	callq	gs_sprintf
	movl	8864(%rbx), %edx
	incl	%edx
	leaq	224(%rsp), %rdi
	movl	$.L.str.25, %esi
	xorl	%eax, %eax
	callq	gs_sprintf
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB24_3
# BB#4:                                 # %if.end.i
	leaq	224(%rsp), %rsi
	leaq	16(%rsp), %rdx
	movq	%rbx, %rdi
	callq	write_str_to_zip_file
	jmp	.LBB24_5
.LBB24_1:                               # %if.then
	movl	%esi, (%rsp)
	movl	$.L__func__.xps_curveto, %edi
	movl	$.L.str.16, %esi
	movl	$1241, %edx             # imm = 0x4D9
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movl	$.L.str.47, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
	jmp	.LBB24_5
.LBB24_3:                               # %if.then.i
	movl	%ebp, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.write_str_to_current_page, %edi
	movl	$.L.str.16, %esi
	movl	$705, %edx              # imm = 0x2C1
	movl	$1, %ecx
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	movl	%ebp, %r8d
	callq	gs_throw_imp
.LBB24_5:                               # %cleanup
	xorl	%eax, %eax
	addq	$360, %rsp              # imm = 0x168
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end24:
	.size	xps_curveto, .Lfunc_end24-xps_curveto
	.cfi_endproc

	.align	16, 0x90
	.type	xps_closepath,@function
xps_closepath:                          # @xps_closepath
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp136:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp137:
	.cfi_def_cfa_offset 24
	subq	$152, %rsp
.Ltmp138:
	.cfi_def_cfa_offset 176
.Ltmp139:
	.cfi_offset %rbx, -24
.Ltmp140:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	testb	$3, %sil
	je	.LBB25_1
# BB#2:                                 # %if.end
	movl	8864(%rbx), %edx
	incl	%edx
	leaq	16(%rsp), %rdi
	movl	$.L.str.25, %esi
	xorl	%eax, %eax
	callq	gs_sprintf
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB25_3
# BB#4:                                 # %if.end.i
	leaq	16(%rsp), %rsi
	movl	$.L.str.50, %edx
	movq	%rbx, %rdi
	callq	write_str_to_zip_file
	jmp	.LBB25_5
.LBB25_1:                               # %if.then
	movl	%esi, (%rsp)
	movl	$.L__func__.xps_closepath, %edi
	movl	$.L.str.16, %esi
	movl	$1261, %edx             # imm = 0x4ED
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movl	$.L.str.49, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
	jmp	.LBB25_5
.LBB25_3:                               # %if.then.i
	movl	%ebp, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.write_str_to_current_page, %edi
	movl	$.L.str.16, %esi
	movl	$705, %edx              # imm = 0x2C1
	movl	$1, %ecx
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	movl	%ebp, %r8d
	callq	gs_throw_imp
.LBB25_5:                               # %cleanup
	xorl	%eax, %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end25:
	.size	xps_closepath, .Lfunc_end25-xps_closepath
	.cfi_endproc

	.align	16, 0x90
	.type	xps_endpath,@function
xps_endpath:                            # @xps_endpath
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp141:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp142:
	.cfi_def_cfa_offset 24
	subq	$360, %rsp              # imm = 0x168
.Ltmp143:
	.cfi_def_cfa_offset 384
.Ltmp144:
	.cfi_offset %rbx, -24
.Ltmp145:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	testb	$3, %sil
	je	.LBB26_1
# BB#2:                                 # %if.end
	testb	$2, %sil
	jne	.LBB26_3
# BB#6:                                 # %if.else
	movl	8864(%rbx), %edx
	incl	%edx
	leaq	224(%rsp), %rdi
	movl	$.L.str.25, %esi
	xorl	%eax, %eax
	callq	gs_sprintf
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB26_4
# BB#7:                                 # %if.end.i
	leaq	224(%rsp), %rsi
	movl	$.L.str.52, %edx
	jmp	.LBB26_8
.LBB26_1:                               # %if.then
	movl	%esi, (%rsp)
	movl	$.L__func__.xps_endpath, %edi
	movl	$.L.str.16, %esi
	movl	$1280, %edx             # imm = 0x500
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movl	$.L.str.47, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
	jmp	.LBB26_9
.LBB26_3:                               # %if.then.3
	movsd	8888(%rbx), %xmm0       # xmm0 = mem[0],zero
	leaq	16(%rsp), %rdi
	movl	$.L.str.51, %esi
	movb	$1, %al
	callq	gs_sprintf
	movl	8864(%rbx), %edx
	incl	%edx
	leaq	224(%rsp), %rdi
	movl	$.L.str.25, %esi
	xorl	%eax, %eax
	callq	gs_sprintf
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB26_4
# BB#5:                                 # %if.end.i.15
	leaq	224(%rsp), %rsi
	leaq	16(%rsp), %rdx
.LBB26_8:                               # %cleanup
	movq	%rbx, %rdi
	callq	write_str_to_zip_file
	jmp	.LBB26_9
.LBB26_4:                               # %if.then.i.13
	movl	%ebp, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.write_str_to_current_page, %edi
	movl	$.L.str.16, %esi
	movl	$705, %edx              # imm = 0x2C1
	movl	$1, %ecx
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	movl	%ebp, %r8d
	callq	gs_throw_imp
.LBB26_9:                               # %cleanup
	xorl	%eax, %eax
	addq	$360, %rsp              # imm = 0x168
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end26:
	.size	xps_endpath, .Lfunc_end26-xps_endpath
	.cfi_endproc

	.align	16, 0x90
	.type	put_u32,@function
put_u32:                                # @put_u32
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp146:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp147:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp148:
	.cfi_def_cfa_offset 32
.Ltmp149:
	.cfi_offset %rbx, -24
.Ltmp150:
	.cfi_offset %r14, -16
	movq	%rsi, %rdx
	movq	%rdi, %rbx
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB27_2
# BB#1:                                 # %cond.true
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	%dl, 1(%rax)
	jmp	.LBB27_3
.LBB27_2:                               # %cond.false
	movzbl	%dl, %esi
	movq	%rbx, %rdi
	movq	%rdx, %r14
	callq	spputc
	movq	%r14, %rdx
.LBB27_3:                               # %cond.end
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB27_5
# BB#4:                                 # %cond.true.18
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	%dh, 1(%rax)  # NOREX
	jmp	.LBB27_6
.LBB27_5:                               # %cond.false.27
	movzbl	%dh, %esi  # NOREX
	movq	%rbx, %rdi
	movq	%rdx, %r14
	callq	spputc
	movq	%r14, %rdx
.LBB27_6:                               # %cond.end.31
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB27_8
# BB#7:                                 # %cond.true.41
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movq	%rdx, %rcx
	shrq	$16, %rcx
	movb	%cl, 1(%rax)
	jmp	.LBB27_9
.LBB27_8:                               # %cond.false.51
	movl	%edx, %eax
	shrl	$16, %eax
	movzbl	%al, %esi
	movq	%rbx, %rdi
	movq	%rdx, %r14
	callq	spputc
	movq	%r14, %rdx
.LBB27_9:                               # %cond.end.55
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB27_11
# BB#10:                                # %cond.end.79
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	shrq	$24, %rdx
	movb	%dl, 1(%rax)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB27_11:                              # %cond.false.75
	shrl	$24, %edx
	movq	%rbx, %rdi
	movl	%edx, %esi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	spputc                  # TAILCALL
.Lfunc_end27:
	.size	put_u32, .Lfunc_end27-put_u32
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"StrokeLineJoin=\"%s\""
	.size	.L.str, 20

	.type	join_str,@object        # @join_str
	.data
	.align	16
join_str:
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	.L.str.12
	.size	join_str, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"StrokeStartLineCap=\"%s\""
	.size	.L.str.1, 24

	.type	cap_str,@object         # @cap_str
	.data
	.align	16
cap_str:
	.quad	.L.str.13
	.quad	.L.str.12
	.quad	.L.str.14
	.quad	.L.str.15
	.size	cap_str, 32

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"StrokeEndLineCap=\"%s\""
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"StrokeThickness=\"%f\""
	.size	.L.str.3, 21

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"StrokeMiterLimit=\"%f\""
	.size	.L.str.4, 22

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Stroke=\"%X\""
	.size	.L.str.5, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Fill=\"%X\""
	.size	.L.str.6, 10

	.type	xps_fixed_state,@object # @xps_fixed_state
	.data
	.globl	xps_fixed_state
	.align	16
xps_fixed_state:
	.zero	16
	.zero	16
	.quad	.L.str
	.quad	join_str
	.zero	16
	.zero	16
	.quad	.L.str.1
	.quad	cap_str
	.zero	16
	.zero	16
	.quad	.L.str.2
	.quad	cap_str
	.zero	16
	.quad	4607182418800017408     # double 1
	.quad	0                       # 0x0
	.quad	.L.str.3
	.quad	0
	.zero	16
	.quad	4621819117588971520     # double 10
	.quad	0                       # 0x0
	.quad	.L.str.4
	.quad	0
	.zero	16
	.zero	16
	.quad	.L.str.5
	.quad	0
	.zero	16
	.zero	16
	.quad	.L.str.6
	.quad	0
	.size	xps_fixed_state, 336

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"gx_device_xps"
	.size	.L.str.7, 14

	.type	st_device_xps,@object   # @st_device_xps
	.section	.rodata,"a",@progbits
	.globl	st_device_xps
	.align	8
st_device_xps:
	.long	8984                    # 0x2318
	.zero	4
	.quad	.L.str.7
	.quad	0
	.quad	0
	.quad	device_xps_enum_ptrs
	.quad	device_xps_reloc_ptrs
	.quad	gx_device_finalize
	.quad	0
	.size	st_device_xps, 64

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"xpswrite"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"DeviceRGB"
	.size	.L.str.9, 10

	.type	gs_xpswrite_device,@object # @gs_xpswrite_device
	.section	.rodata,"a",@progbits
	.globl	gs_xpswrite_device
	.align	8
gs_xpswrite_device:
	.long	8984                    # 0x2318
	.zero	4
	.quad	0
	.quad	.L.str.8
	.quad	0
	.quad	st_device_xps
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
	.quad	.L.str.9
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	816                     # 0x330
	.long	1056                    # 0x420
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1119879168              # float 9.600000e+01
	.long	1119879168              # float 9.600000e+01
	.long	1119879168              # float 9.600000e+01
	.long	1119879168              # float 9.600000e+01
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
	.quad	xps_open_device
	.quad	0
	.quad	0
	.quad	xps_output_page
	.quad	xps_close_device
	.quad	gx_default_rgb_map_rgb_color
	.quad	gx_default_rgb_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	xps_get_params
	.quad	xps_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_xps_fill_path
	.quad	gdev_xps_stroke_path
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
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # double 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0                       # double 0
	.long	0                       # 0x0
	.zero	64
	.zero	4
	.size	gs_xpswrite_device, 8984

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"Miter"
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Bevel"
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Round"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Flat"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Square"
	.size	.L.str.14, 7

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Triangle"
	.size	.L.str.15, 9

	.type	xps_vector_procs,@object # @xps_vector_procs
	.section	.rodata,"a",@progbits
	.align	8
xps_vector_procs:
	.quad	xps_beginpage
	.quad	xps_setlinewidth
	.quad	xps_setlinecap
	.quad	xps_setlinejoin
	.quad	xps_setmiterlimit
	.quad	xps_setdash
	.quad	gdev_vector_setflat
	.quad	xps_setlogop
	.quad	xps_can_handle_hl_color
	.quad	xps_setfillcolor
	.quad	xps_setstrokecolor
	.quad	gdev_vector_dopath
	.quad	xps_dorect
	.quad	xps_beginpath
	.quad	xps_moveto
	.quad	xps_lineto
	.quad	xps_curveto
	.quad	xps_closepath
	.quad	xps_endpath
	.size	xps_vector_procs, 152

	.type	.L__func__.xps_open_device,@object # @__func__.xps_open_device
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.xps_open_device:
	.asciz	"xps_open_device"
	.size	.L__func__.xps_open_device, 16

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"./devices/vector/gdevxps.c"
	.size	.L.str.16, 27

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%s"
	.size	.L.str.17, 3

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"FixedDocumentSequence.fdseq"
	.size	.L.str.18, 28

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"[Content_Types].xml"
	.size	.L.str.19, 20

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Documents/1/FixedDocument.fdoc"
	.size	.L.str.20, 31

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"_rels/.rels"
	.size	.L.str.21, 12

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"<PageContent Source=\"Pages/%d.fpage\" />"
	.size	.L.str.22, 40

	.type	.L__func__.xps_beginpage,@object # @__func__.xps_beginpage
.L__func__.xps_beginpage:
	.asciz	"xps_beginpage"
	.size	.L__func__.xps_beginpage, 14

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"<FixedPage Width=\"%d\" Height=\"%d\" xmlns=\"http://schemas.microsoft.com/xps/2005/06\" xml:lang=\"en-US\">\n"
	.size	.L.str.23, 102

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"<Canvas RenderTransform=\"%g,%g,%g,%g,%g,%g\">\n"
	.size	.L.str.24, 46

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Documents/1/Pages/%d.fpage"
	.size	.L.str.25, 27

	.type	.L__func__.write_str_to_current_page,@object # @__func__.write_str_to_current_page
.L__func__.write_str_to_current_page:
	.asciz	"write_str_to_current_page"
	.size	.L__func__.write_str_to_current_page, 26

	.type	.L__func__.xps_setlinecap,@object # @__func__.xps_setlinecap
.L__func__.xps_setlinecap:
	.asciz	"xps_setlinecap"
	.size	.L__func__.xps_setlinecap, 15

	.type	.L__func__.xps_setlinejoin,@object # @__func__.xps_setlinejoin
.L__func__.xps_setlinejoin:
	.asciz	"xps_setlinejoin"
	.size	.L__func__.xps_setlinejoin, 16

	.type	.L__func__.xps_dorect,@object # @__func__.xps_dorect
.L__func__.xps_dorect:
	.asciz	"xps_dorect"
	.size	.L__func__.xps_dorect, 11

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"xps_rect: type not supported %x"
	.size	.L.str.34, 32

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"<Path "
	.size	.L.str.35, 7

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Fill=\"#%06X\" Data=\"M %g, %g L %g, %g %g, %g %g, %g Z\" "
	.size	.L.str.36, 55

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Stroke=\"#%06X\" Data=\"M %g, %g L %g, %g %g, %g %g, %g Z\" "
	.size	.L.str.37, 57

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"StrokeThickness=\"%g\" "
	.size	.L.str.38, 22

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"/>\n"
	.size	.L.str.39, 4

	.type	.L__func__.xps_beginpath,@object # @__func__.xps_beginpath
.L__func__.xps_beginpath:
	.asciz	"xps_beginpath"
	.size	.L__func__.xps_beginpath, 14

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"type not supported %x"
	.size	.L.str.40, 22

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Fill=\"#%06X\" Data=\""
	.size	.L.str.41, 20

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Stroke=\"#%06X\" Data=\""
	.size	.L.str.42, 22

	.type	.L__func__.xps_moveto,@object # @__func__.xps_moveto
.L__func__.xps_moveto:
	.asciz	"xps_moveto"
	.size	.L__func__.xps_moveto, 11

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"xps_moveto: type not supported %x\n"
	.size	.L.str.43, 35

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	" M %g,%g"
	.size	.L.str.44, 9

	.type	.L__func__.xps_lineto,@object # @__func__.xps_lineto
.L__func__.xps_lineto:
	.asciz	"xps_lineto"
	.size	.L__func__.xps_lineto, 11

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"xps_lineto: type not supported %x\n"
	.size	.L.str.45, 35

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	" L %g,%g"
	.size	.L.str.46, 9

	.type	.L__func__.xps_curveto,@object # @__func__.xps_curveto
.L__func__.xps_curveto:
	.asciz	"xps_curveto"
	.size	.L__func__.xps_curveto, 12

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"xps_lineto: type not supported %x"
	.size	.L.str.47, 34

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	" C %g,%g %g,%g %g,%g"
	.size	.L.str.48, 21

	.type	.L__func__.xps_closepath,@object # @__func__.xps_closepath
.L__func__.xps_closepath:
	.asciz	"xps_closepath"
	.size	.L__func__.xps_closepath, 14

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"xps_closepath: type not supported %x"
	.size	.L.str.49, 37

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	" Z"
	.size	.L.str.50, 3

	.type	.L__func__.xps_endpath,@object # @__func__.xps_endpath
.L__func__.xps_endpath:
	.asciz	"xps_endpath"
	.size	.L__func__.xps_endpath, 12

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"\" StrokeThickness=\"%g\" />\n"
	.size	.L.str.51, 27

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"\" />\n"
	.size	.L.str.52, 6

	.type	.L__func__.write_to_zip_file,@object # @__func__.write_to_zip_file
.L__func__.write_to_zip_file:
	.asciz	"write_to_zip_file"
	.size	.L__func__.write_to_zip_file, 18

	.type	.L__func__.zip_add_file,@object # @__func__.zip_add_file
.L__func__.zip_add_file:
	.asciz	"zip_add_file"
	.size	.L__func__.zip_add_file, 13

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"zinfo"
	.size	.L.str.53, 6

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"zinfo node"
	.size	.L.str.54, 11

	.type	.L__func__.zip_new_info_node,@object # @__func__.zip_new_info_node
.L__func__.zip_new_info_node:
	.asciz	"zip_new_info_node"
	.size	.L__func__.zip_new_info_node, 18

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"zinfo_filename"
	.size	.L.str.55, 15

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"zip_append_data(filename)"
	.size	.L.str.56, 26

	.type	.L__func__.zip_append_data,@object # @__func__.zip_append_data
.L__func__.zip_append_data:
	.asciz	"zip_append_data"
	.size	.L__func__.zip_append_data, 16

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"xpsdata-"
	.size	.L.str.57, 9

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"wb+"
	.size	.L.str.58, 4

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"<?xml version=\"1.0\" encoding=\"utf-8\"?><FixedDocumentSequence xmlns=\"http://schemas.microsoft.com/xps/2005/06\"><DocumentReference Source=\"Documents/1/FixedDocument.fdoc\" /></FixedDocumentSequence>"
	.size	.L.str.59, 196

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"<?xml version=\"1.0\" encoding=\"utf-8\"?><Types xmlns=\"http://schemas.openxmlformats.org/package/2006/content-types\"><Default Extension=\"fdseq\" ContentType=\"application/vnd.ms-package.xps-fixeddocumentsequence+xml\" /><Default Extension=\"rels\" ContentType=\"application/vnd.openxmlformats-package.relationships+xml\" /><Default Extension=\"fdoc\" ContentType=\"application/vnd.ms-package.xps-fixeddocument+xml\" /><Default Extension=\"fpage\" ContentType=\"application/vnd.ms-package.xps-fixedpage+xml\" /><Default Extension=\"ttf\" ContentType=\"application/vnd.ms-opentype\" /><Default Extension=\"tif\" ContentType=\"image/tiff\" /><Default Extension=\"png\" ContentType=\"image/png\" /></Types>"
	.size	.L.str.60, 673

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"<?xml version=\"1.0\" encoding=\"utf-8\"?><FixedDocument xmlns=\"http://schemas.microsoft.com/xps/2005/06\">"
	.size	.L.str.61, 103

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"<?xml version=\"1.0\" encoding=\"utf-8\"?><Relationships xmlns=\"http://schemas.openxmlformats.org/package/2006/relationships\"><Relationship Type=\"http://schemas.microsoft.com/xps/2005/06/fixedrepresentation\" Target=\"/FixedDocumentSequence.fdseq\" Id=\"Rdd12fb46c1de43ab\" /></Relationships>"
	.size	.L.str.62, 284

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"</Canvas></FixedPage>"
	.size	.L.str.63, 22

	.type	.L__func__.xps_output_page,@object # @__func__.xps_output_page
.L__func__.xps_output_page:
	.asciz	"xps_output_page"
	.size	.L__func__.xps_output_page, 16

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"</FixedDocument>"
	.size	.L.str.64, 17

	.type	.L__func__.xps_close_device,@object # @__func__.xps_close_device
.L__func__.xps_close_device:
	.asciz	"xps_close_device"
	.size	.L__func__.xps_close_device, 17

	.type	.L__func__.xps_get_params,@object # @__func__.xps_get_params
.L__func__.xps_get_params:
	.asciz	"xps_get_params"
	.size	.L__func__.xps_get_params, 15

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"PrinterName"
	.size	.L.str.65, 12

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"\nERROR: PrinterName too long (max %d)\n"
	.size	.L.str.66, 39

	.type	.L__func__.xps_put_params,@object # @__func__.xps_put_params
.L__func__.xps_put_params:
	.asciz	"xps_put_params"
	.size	.L__func__.xps_put_params, 15


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
