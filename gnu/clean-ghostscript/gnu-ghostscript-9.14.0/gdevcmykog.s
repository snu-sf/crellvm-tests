	.text
	.file	"gdevcmykog.bc"
	.align	16, 0x90
	.type	cmykog_print_page,@function
cmykog_print_page:                      # @cmykog_print_page
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
	subq	$267368, %rsp           # imm = 0x41468
.Ltmp6:
	.cfi_def_cfa_offset 267424
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
	movq	%rsi, %r12
	movq	%rdi, %r14
	movl	100(%r14), %r13d
	leaq	4704(%rsp), %rdi
	xorl	%esi, %esi
	movl	$262664, %edx           # imm = 0x40208
	callq	memset
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	gx_device_raster_plane
	movl	%eax, 267360(%rsp)
	movl	832(%r14), %ecx
	movl	836(%r14), %r8d
	sarl	%ecx
	sarl	%r8d
	leaq	4112(%rsp), %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	psd_setup
	testl	%eax, %eax
	js	.LBB0_14
# BB#1:                                 # %if.end
	leaq	4112(%rsp), %rdi
	movq	%r14, %rsi
	callq	psd_write_header
	testl	%eax, %eax
	js	.LBB0_14
# BB#2:                                 # %if.end.6
	movq	%r12, 4704(%rsp)
	cmpl	$2, %r13d
	jl	.LBB0_15
# BB#3:                                 # %for.body.lr.ph
	movslq	%r13d, %rbx
	leaq	9312(%rsp), %rbp
	movl	$1, %r15d
	.align	16, 0x90
.LBB0_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%r14), %rdi
	movl	$gp_scratch_file_name_prefix, %esi
	movl	$.L.str.11, %ecx
	movq	%rbp, %rdx
	callq	gp_open_scratch_file
	movq	%rax, 4704(%rsp,%r15,8)
	testq	%rax, %rax
	movl	$-9, %eax
	je	.LBB0_6
# BB#4:                                 # %for.cond
                                        #   in Loop: Header=BB0_5 Depth=1
	incq	%r15
	addq	$4096, %rbp             # imm = 0x1000
	cmpq	%rbx, %r15
	jl	.LBB0_5
.LBB0_15:                               # %for.end
	movq	$cmykog_init_buffer, 4656(%rsp)
	movq	$cmykog_free_buffer, 4664(%rsp)
	movq	$cmykog_process, 4672(%rsp)
	movq	$cmykog_output, 4680(%rsp)
	leaq	4704(%rsp), %rax
	movq	%rax, 4688(%rsp)
	movl	$0, 4696(%rsp)
	leaq	4656(%rsp), %rsi
	movq	%r14, %rdi
	callq	*1720(%r14)
	movl	$1, %r15d
	cmpl	$2, %r13d
	jl	.LBB0_18
# BB#16:                                # %for.body.25.lr.ph
	movl	%eax, 12(%rsp)          # 4-byte Spill
	movl	$1, %ebx
	leaq	16(%rsp), %rbp
	.align	16, 0x90
.LBB0_17:                               # %for.body.25
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_26 Depth 2
	movq	4704(%rsp,%rbx,8), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	fseek
	jmp	.LBB0_26
	.align	16, 0x90
.LBB0_25:                               # %while.body
                                        #   in Loop: Header=BB0_26 Depth=2
	movq	4704(%rsp,%rbx,8), %rcx
	movl	$1, %esi
	movl	$4096, %edx             # imm = 0x1000
	movq	%rbp, %rdi
	callq	fread
	movslq	%eax, %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	movq	%r12, %rcx
	callq	fwrite
.LBB0_26:                               # %while.body
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	4704(%rsp,%rbx,8), %rdi
	callq	feof
	testl	%eax, %eax
	je	.LBB0_25
# BB#27:                                # %while.end
                                        #   in Loop: Header=BB0_17 Depth=1
	incq	%rbx
	cmpl	%r13d, %ebx
	jne	.LBB0_17
# BB#28:
	movl	%r13d, %r15d
	movl	12(%rsp), %eax          # 4-byte Reload
.LBB0_18:                               # %for.cond.45.preheader
	movl	96(%r14), %esi
	cmpl	%esi, %r15d
	jge	.LBB0_6
# BB#19:
	movl	%eax, 12(%rsp)          # 4-byte Spill
	movl	%r13d, 8(%rsp)          # 4-byte Spill
	movl	$64, %ebx
	.align	16, 0x90
.LBB0_20:                               # %for.body.49
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_21 Depth 2
	movl	832(%r14), %ecx
	movq	%r14, %r13
	movl	836(%r13), %r14d
	sarl	%ecx
	sarl	%r14d
	imull	%ecx, %r14d
	testl	%r14d, %r14d
	jle	.LBB0_23
	.align	16, 0x90
.LBB0_21:                               # %while.body.i
                                        #   Parent Loop BB0_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$64, %r14d
	movl	%r14d, %eax
	cmovgl	%ebx, %eax
	movslq	%eax, %rbp
	movl	$empty, %edi
	movl	$1, %esi
	movq	%rbp, %rdx
	movq	%r12, %rcx
	callq	fwrite
	subl	%ebp, %r14d
	jg	.LBB0_21
# BB#22:                                # %write_empty_plane.exit.loopexit
                                        #   in Loop: Header=BB0_20 Depth=1
	movl	96(%r13), %esi
.LBB0_23:                               # %write_empty_plane.exit
                                        #   in Loop: Header=BB0_20 Depth=1
	incl	%r15d
	cmpl	%esi, %r15d
	movq	%r13, %r14
	jl	.LBB0_20
# BB#24:
	movl	8(%rsp), %r13d          # 4-byte Reload
	movl	12(%rsp), %eax          # 4-byte Reload
.LBB0_6:                                # %prn_done
	cmpl	$2, %r13d
	jl	.LBB0_14
# BB#7:                                 # %for.body.60.preheader
	movl	%eax, %r14d
	leaq	4712(%rsp), %rbp
	leaq	9312(%rsp), %rbx
	decl	%r13d
	.align	16, 0x90
.LBB0_8:                                # %for.body.60
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_10
# BB#9:                                 # %if.then.66
                                        #   in Loop: Header=BB0_8 Depth=1
	callq	fclose
.LBB0_10:                               # %if.end.71
                                        #   in Loop: Header=BB0_8 Depth=1
	cmpb	$0, (%rbx)
	je	.LBB0_12
# BB#11:                                # %if.then.77
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	%rbx, %rdi
	callq	unlink
.LBB0_12:                               # %for.inc.84
                                        #   in Loop: Header=BB0_8 Depth=1
	addq	$8, %rbp
	addq	$4096, %rbx             # imm = 0x1000
	decl	%r13d
	jne	.LBB0_8
# BB#13:
	movl	%r14d, %eax
.LBB0_14:                               # %cleanup
	addq	$267368, %rsp           # imm = 0x41468
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	cmykog_print_page, .Lfunc_end0-cmykog_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	cmykog_open,@function
cmykog_open:                            # @cmykog_open
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, 136(%rdi)
	movq	1104(%rdi), %rax
	movl	$1, 168(%rax)
	movabsq	$21474836480, %rax      # imm = 0x500000000
	movq	%rax, 840(%rdi)
	movl	$1, %esi
	jmp	gdev_prn_open_planar    # TAILCALL
.Lfunc_end1:
	.size	cmykog_open, .Lfunc_end1-cmykog_open
	.cfi_endproc

	.align	16, 0x90
	.type	cmykog_close,@function
cmykog_close:                           # @cmykog_close
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	gdev_prn_close          # TAILCALL
.Lfunc_end2:
	.size	cmykog_close, .Lfunc_end2-cmykog_close
	.cfi_endproc

	.align	16, 0x90
	.type	cmykog_put_params,@function
cmykog_put_params:                      # @cmykog_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp16:
	.cfi_def_cfa_offset 48
.Ltmp17:
	.cfi_offset %rbx, -32
.Ltmp18:
	.cfi_offset %r14, -24
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	$0, (%rsp)
	leaq	(%rsp), %rdx
	movl	$.L.str.8, %esi
	movq	%rbx, %rdi
	callq	param_read_name_array
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB3_1
# BB#3:                                 # %sw.epilog
	cmpq	$0, (%rsp)
	je	.LBB3_6
# BB#4:                                 # %if.then
	movq	(%rbx), %rax
	movl	$-21, %ebp
	movl	$.L.str.8, %esi
	movl	$-21, %edx
	movq	%rbx, %rdi
	callq	*56(%rax)
	jmp	.LBB3_7
.LBB3_1:                                # %entry
	cmpl	$1, %ebp
	jne	.LBB3_2
# BB#5:                                 # %sw.epilog.thread
	movq	$0, (%rsp)
.LBB3_6:                                # %if.end
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gx_devn_prn_put_params
	movl	%eax, %ebp
	jmp	.LBB3_7
.LBB3_2:                                # %sw.default
	movq	(%rbx), %rax
	movl	$.L.str.8, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
.LBB3_7:                                # %cleanup
	movl	%ebp, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	cmykog_put_params, .Lfunc_end3-cmykog_put_params
	.cfi_endproc

	.align	16, 0x90
	.type	cmykog_get_color_comp_index,@function
cmykog_get_color_comp_index:            # @cmykog_get_color_comp_index
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp21:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp22:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp24:
	.cfi_def_cfa_offset 48
.Ltmp25:
	.cfi_offset %rbx, -40
.Ltmp26:
	.cfi_offset %r14, -32
.Ltmp27:
	.cfi_offset %r15, -24
.Ltmp28:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movl	%edx, %r15d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	movslq	%r15d, %rdx
	movl	$.L.str.9, %esi
	movq	%rbx, %rdi
	callq	strncmp
	testl	%eax, %eax
	je	.LBB4_2
# BB#1:                                 # %if.end
	movl	$0, (%rsp)
	leaq	18472(%rbp), %rsi
	leaq	20872(%rbp), %rdx
	movq	%rbp, %rdi
	movq	%rbx, %rcx
	movl	%r15d, %r8d
	movl	%r14d, %r9d
	callq	devn_get_color_comp_index
	jmp	.LBB4_3
.LBB4_2:                                # %cleanup
	movl	$-1, %eax
.LBB4_3:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	cmykog_get_color_comp_index, .Lfunc_end4-cmykog_get_color_comp_index
	.cfi_endproc

	.align	16, 0x90
	.type	cmykog_dev_spec_op,@function
cmykog_dev_spec_op:                     # @cmykog_dev_spec_op
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$19, %esi
	jne	.LBB5_2
# BB#1:                                 # %return
	andl	$-2, %ecx
	movl	%ecx, %eax
	retq
.LBB5_2:                                # %if.end
	jmp	gx_default_dev_spec_op  # TAILCALL
.Lfunc_end5:
	.size	cmykog_dev_spec_op, .Lfunc_end5-cmykog_dev_spec_op
	.cfi_endproc

	.align	16, 0x90
	.type	cmykog_device_enum_ptrs,@function
cmykog_device_enum_ptrs:                # @cmykog_device_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$st_gx_devn_prn_device, %r9d
	jmpq	*st_gx_devn_prn_device+32(%rip) # TAILCALL
.Lfunc_end6:
	.size	cmykog_device_enum_ptrs, .Lfunc_end6-cmykog_device_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	cmykog_device_reloc_ptrs,@function
cmykog_device_reloc_ptrs:               # @cmykog_device_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$st_gx_devn_prn_device, %edx
	jmpq	*st_gx_devn_prn_device+40(%rip) # TAILCALL
.Lfunc_end7:
	.size	cmykog_device_reloc_ptrs, .Lfunc_end7-cmykog_device_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	cmykog_device_finalize,@function
cmykog_device_finalize:                 # @cmykog_device_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	gx_devn_prn_device_finalize # TAILCALL
.Lfunc_end8:
	.size	cmykog_device_finalize, .Lfunc_end8-cmykog_device_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	cmykog_init_buffer,@function
cmykog_init_buffer:                     # @cmykog_init_buffer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp30:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 32
.Ltmp32:
	.cfi_offset %rbx, -32
.Ltmp33:
	.cfi_offset %r14, -24
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movq	%rdx, %rax
	movq	$0, (%r14)
	movl	$576, %esi              # imm = 0x240
	movl	$.L.str.12, %edx
	movq	%rax, %rdi
	callq	*64(%rax)
	movq	%rax, %rbx
	movl	$-25, %ebp
	testq	%rbx, %rbx
	je	.LBB9_2
# BB#1:                                 # %if.end
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movl	$576, %edx              # imm = 0x240
	movq	%rbx, %rdi
	callq	memset
	movq	%rbx, (%r14)
.LBB9_2:                                # %cleanup
	movl	%ebp, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end9:
	.size	cmykog_init_buffer, .Lfunc_end9-cmykog_init_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	cmykog_free_buffer,@function
cmykog_free_buffer:                     # @cmykog_free_buffer
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rax
	testq	%rcx, %rcx
	je	.LBB10_1
# BB#2:                                 # %if.then
	movq	24(%rax), %r8
	movl	$.L.str.12, %edx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	jmpq	*%r8                    # TAILCALL
.LBB10_1:                               # %if.end
	retq
.Lfunc_end10:
	.size	cmykog_free_buffer, .Lfunc_end10-cmykog_free_buffer
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI11_0:
	.quad	71777214294589695       # 0xff00ff00ff00ff
	.quad	71777214294589695       # 0xff00ff00ff00ff
.LCPI11_1:
	.quad	-71777214294589696      # 0xff00ff00ff00ff00
	.quad	-71777214294589696      # 0xff00ff00ff00ff00
	.text
	.align	16, 0x90
	.type	cmykog_process,@function
cmykog_process:                         # @cmykog_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp36:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp37:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp38:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp39:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp40:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp41:
	.cfi_def_cfa_offset 112
.Ltmp42:
	.cfi_offset %rbx, -56
.Ltmp43:
	.cfi_offset %r12, -48
.Ltmp44:
	.cfi_offset %r13, -40
.Ltmp45:
	.cfi_offset %r14, -32
.Ltmp46:
	.cfi_offset %r15, -24
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%r8, %r15
	movq	%rcx, %rbp
	movq	%rdx, %rax
	movq	%rsi, %r13
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movl	8(%rbp), %ecx
	movl	12(%rbp), %ebx
	subl	(%rbp), %ecx
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	subl	4(%rbp), %ebx
	leaq	8(%r15), %rdx
	movq	$1101135889, 8(%r15)    # imm = 0x41A20011
	movl	$0, 32(%rsp)
	movl	$0, 36(%rsp)
	movl	%ecx, 40(%rsp)
	movl	%ebx, 44(%rsp)
	leaq	32(%rsp), %rsi
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	callq	*1448(%rax)
	testl	%eax, %eax
	js	.LBB11_13
# BB#1:                                 # %if.end
	movl	%eax, 12(%rsp)          # 4-byte Spill
	movl	4(%rbp), %esi
	movl	%ebx, %edx
	movl	%edx, 16(%rsp)          # 4-byte Spill
	leaq	544(%r15), %r12
	leaq	52(%rsp), %r8
	movq	%r13, %rdi
	movq	%r12, %rcx
	callq	gdev_prn_color_usage
	movl	100(%r13), %ecx
	testl	%ecx, %ecx
	jle	.LBB11_12
# BB#2:                                 # %for.body.lr.ph
	movl	20(%rsp), %eax          # 4-byte Reload
	andl	$-2, %eax
	movl	16(%rsp), %r8d          # 4-byte Reload
	andl	$-2, %r8d
	movslq	%r8d, %r11
	xorl	%r9d, %r9d
	movdqa	.LCPI11_0(%rip), %xmm0  # xmm0 = [71777214294589695,71777214294589695]
	movdqa	.LCPI11_1(%rip), %xmm1  # xmm1 = [18374966859414961920,18374966859414961920]
	pcmpeqd	%xmm8, %xmm8
	.align	16, 0x90
.LBB11_3:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_6 Depth 2
                                        #       Child Loop BB11_8 Depth 3
	movq	(%r12), %rdx
	btq	%r9, %rdx
	jae	.LBB11_11
# BB#4:                                 # %if.then.22
                                        #   in Loop: Header=BB11_3 Depth=1
	testl	%r8d, %r8d
	jle	.LBB11_11
# BB#5:                                 # %for.body.lr.ph.i
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	16(%r15,%r9,8), %r10
	movq	24(%rsp), %rcx          # 8-byte Reload
	movslq	262656(%rcx), %rbx
	leaq	16(%r10), %r14
	leaq	(%rbx,%rbx), %rbp
	xorl	%esi, %esi
	.align	16, 0x90
.LBB11_6:                               # %for.body.i
                                        #   Parent Loop BB11_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_8 Depth 3
	testl	%eax, %eax
	jle	.LBB11_9
# BB#7:                                 # %for.body.7.lr.ph.i
                                        #   in Loop: Header=BB11_6 Depth=2
	movl	%esi, %ecx
	sarl	%ecx
	imull	%ebx, %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%r10), %rdi
	xorl	%edx, %edx
	movq	%r14, %rcx
	.align	16, 0x90
.LBB11_8:                               # %for.body.7.i
                                        #   Parent Loop BB11_3 Depth=1
                                        #     Parent Loop BB11_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movdqa	-16(%rcx), %xmm3
	movdqa	(%rcx), %xmm4
	movdqa	%xmm3, %xmm5
	pand	%xmm0, %xmm5
	pand	%xmm1, %xmm3
	psrlw	$8, %xmm3
	movdqa	-16(%rbx,%rcx), %xmm6
	movdqa	(%rbx,%rcx), %xmm7
	movdqa	%xmm6, %xmm2
	pand	%xmm0, %xmm2
	pand	%xmm1, %xmm6
	psrlw	$8, %xmm6
	paddw	%xmm5, %xmm3
	paddw	%xmm2, %xmm3
	paddw	%xmm6, %xmm3
	movdqa	%xmm4, %xmm2
	pand	%xmm0, %xmm2
	pand	%xmm1, %xmm4
	psrlw	$8, %xmm4
	movdqa	%xmm7, %xmm5
	pand	%xmm0, %xmm5
	pand	%xmm1, %xmm7
	psrlw	$8, %xmm7
	paddw	%xmm2, %xmm4
	paddw	%xmm5, %xmm4
	paddw	%xmm7, %xmm4
	psrlw	$2, %xmm3
	psrlw	$2, %xmm4
	packuswb	%xmm4, %xmm3
	pxor	%xmm8, %xmm3
	movdqa	%xmm3, (%rdi)
	addq	$16, %rdi
	addl	$32, %edx
	addq	$32, %rcx
	cmpl	%eax, %edx
	jl	.LBB11_8
.LBB11_9:                               # %for.end.i
                                        #   in Loop: Header=BB11_6 Depth=2
	addq	$2, %rsi
	addq	%rbp, %r14
	cmpq	%r11, %rsi
	jl	.LBB11_6
# BB#10:                                # %for.inc.loopexit
                                        #   in Loop: Header=BB11_3 Depth=1
	movl	100(%r13), %ecx
.LBB11_11:                              # %for.inc
                                        #   in Loop: Header=BB11_3 Depth=1
	incq	%r9
	movslq	%ecx, %rdx
	cmpq	%rdx, %r9
	jl	.LBB11_3
.LBB11_12:                              # %for.end
	movl	20(%rsp), %eax          # 4-byte Reload
	sarl	%eax
	movl	%eax, (%r15)
	movl	16(%rsp), %eax          # 4-byte Reload
	sarl	%eax
	movl	%eax, 4(%r15)
	movl	12(%rsp), %eax          # 4-byte Reload
.LBB11_13:                              # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	cmykog_process, .Lfunc_end11-cmykog_process
	.cfi_endproc

	.align	16, 0x90
	.type	cmykog_output,@function
cmykog_output:                          # @cmykog_output
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp49:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp50:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp51:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp52:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp53:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp54:
	.cfi_def_cfa_offset 112
.Ltmp55:
	.cfi_offset %rbx, -56
.Ltmp56:
	.cfi_offset %r12, -48
.Ltmp57:
	.cfi_offset %r13, -40
.Ltmp58:
	.cfi_offset %r14, -32
.Ltmp59:
	.cfi_offset %r15, -24
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	cmpl	$0, 100(%rsi)
	jle	.LBB12_9
# BB#1:                                 # %for.body.lr.ph
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movslq	(%rdx), %r13
	movl	4(%rdx), %ecx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movl	%r13d, %eax
	imull	%ecx, %eax
	movl	%eax, 8(%rsp)           # 4-byte Spill
	movq	32(%rsp), %rax          # 8-byte Reload
	movslq	262656(%rax), %r15
	leal	1(%rcx), %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB12_2:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_5 Depth 2
                                        #     Child Loop BB12_7 Depth 2
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	544(%rax), %rax
	btq	%rcx, %rax
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	(%rax,%rcx,8), %r14
	jae	.LBB12_6
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB12_2 Depth=1
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	16(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB12_8
# BB#4:                                 # %for.body.lr.ph.i
                                        #   in Loop: Header=BB12_2 Depth=1
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	16(%rax,%rcx,8), %rbp
	movl	12(%rsp), %r12d         # 4-byte Reload
	.align	16, 0x90
.LBB12_5:                               # %for.body.i
                                        #   Parent Loop BB12_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1, %esi
	movq	%rbp, %rdi
	movq	%r13, %rdx
	movq	%r14, %rcx
	callq	fwrite
	addq	%r15, %rbp
	decl	%r12d
	cmpl	$1, %r12d
	jg	.LBB12_5
	jmp	.LBB12_8
	.align	16, 0x90
.LBB12_6:                               # %if.else
                                        #   in Loop: Header=BB12_2 Depth=1
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movl	8(%rsp), %eax           # 4-byte Reload
	testl	%eax, %eax
	movl	%eax, %ebx
	jle	.LBB12_8
	.align	16, 0x90
.LBB12_7:                               # %while.body.i
                                        #   Parent Loop BB12_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$64, %ebx
	movl	%ebx, %eax
	movl	$64, %ecx
	cmovgl	%ecx, %eax
	movslq	%eax, %rbp
	movl	$empty, %edi
	movl	$1, %esi
	movq	%rbp, %rdx
	movq	%r14, %rcx
	callq	fwrite
	subl	%ebp, %ebx
	jg	.LBB12_7
.LBB12_8:                               # %for.inc
                                        #   in Loop: Header=BB12_2 Depth=1
	movq	48(%rsp), %rcx          # 8-byte Reload
	incq	%rcx
	movq	24(%rsp), %rax          # 8-byte Reload
	movslq	100(%rax), %rax
	cmpq	%rax, %rcx
	jl	.LBB12_2
.LBB12_9:                               # %for.end
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	cmykog_output, .Lfunc_end12-cmykog_output
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Cyan"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Magenta"
	.size	.L.str.1, 8

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Yellow"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Black"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Artifex Orange"
	.size	.L.str.4, 15

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Artifex Green"
	.size	.L.str.5, 14

	.type	DevCMYKOGComponents,@object # @DevCMYKOGComponents
	.data
	.globl	DevCMYKOGComponents
	.align	16
DevCMYKOGComponents:
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	0
	.size	DevCMYKOGComponents, 56

	.type	cmykog_procs,@object    # @cmykog_procs
	.section	.rodata,"a",@progbits
	.align	8
cmykog_procs:
	.quad	cmykog_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	cmykog_close
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_devn_prn_get_params
	.quad	cmykog_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
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
	.quad	gx_devn_prn_get_color_mapping_procs
	.quad	cmykog_get_color_comp_index
	.quad	gx_devn_prn_encode_color
	.quad	gx_devn_prn_decode_color
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_devn_prn_ret_devn_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	cmykog_dev_spec_op
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	cmykog_procs, 584

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"psdcmykog"
	.size	.L.str.6, 10

	.type	st_cmykog_device,@object # @st_cmykog_device
	.section	.rodata,"a",@progbits
	.align	8
st_cmykog_device:
	.long	21648                   # 0x5490
	.zero	4
	.quad	.L.str.10
	.quad	0
	.quad	0
	.quad	cmykog_device_enum_ptrs
	.quad	cmykog_device_reloc_ptrs
	.quad	cmykog_device_finalize
	.quad	0
	.size	st_cmykog_device, 64

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"DeviceCMYK"
	.size	.L.str.7, 11

	.type	gs_psdcmykog_device,@object # @gs_psdcmykog_device
	.section	.rodata,"a",@progbits
	.globl	gs_psdcmykog_device
	.align	8
gs_psdcmykog_device:
	.long	21648                   # 0x5490
	.zero	4
	.quad	cmykog_procs
	.quad	.L.str.6
	.quad	0
	.quad	st_cmykog_device
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	0                       # 0x0
	.short	48                      # 0x30
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.7
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
	.zero	584
	.zero	11240
	.quad	cmykog_print_page
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.long	8                       # 0x8
	.zero	4
	.quad	DevCMYKOGComponents
	.long	4                       # 0x4
	.long	6                       # 0x6
	.long	4294967295              # 0xffffffff
	.zero	4
	.zero	1032
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	6                       # 0x6
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.zero	1032
	.zero	772
	.zero	4
	.size	gs_psdcmykog_device, 21648

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"SeparationOrder"
	.size	.L.str.8, 16

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"None"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gx_device_cmykog"
	.size	.L.str.10, 17

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"w+b"
	.size	.L.str.11, 4

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"cmykog_init_buffer"
	.size	.L.str.12, 19

	.type	empty,@object           # @empty
	.section	.rodata,"a",@progbits
	.align	16
empty:
	.zero	64,255
	.size	empty, 64


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
