	.text
	.file	"gxclist.bc"
	.align	16, 0x90
	.type	device_clist_enum_ptrs,@function
device_clist_enum_ptrs:                 # @device_clist_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp1:
	.cfi_def_cfa_offset 32
.Ltmp2:
	.cfi_offset %rbx, -16
	movq	%r8, %rbx
	testl	%ecx, %ecx
	jle	.LBB0_1
# BB#3:                                 # %if.end
	cmpl	$0, 1880(%rsi)
	js	.LBB0_4
# BB#13:                                # %if.else
	xorl	%eax, %eax
	cmpl	$3, %ecx
	je	.LBB0_18
# BB#14:                                # %if.else
	cmpl	$2, %ecx
	je	.LBB0_17
# BB#15:                                # %if.else
	cmpl	$1, %ecx
	jne	.LBB0_21
# BB#16:                                # %if.then.35
	movq	10232(%rsi), %rax
	jmp	.LBB0_19
.LBB0_1:                                # %if.then
	movq	32(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$st_device_forward, %r9d
	movq	%rbx, %r8
	callq	*st_device_forward+32(%rip)
	testq	%rax, %rax
	jne	.LBB0_21
# BB#2:                                 # %cond.false
	movq	$0, (%rbx)
	jmp	.LBB0_20
.LBB0_4:                                # %if.then.3
	leal	-1(%rcx), %eax
	cmpl	$4, %eax
	jbe	.LBB0_5
# BB#12:                                # %sw.default.30
	addq	$10336, %rsi            # imm = 0x2860
	addl	$-6, %ecx
	movl	$1616, %edx             # imm = 0x650
	movl	$st_imager_state, %r9d
	movq	%rbx, %r8
	addq	$16, %rsp
	popq	%rbx
	jmpq	*st_imager_state+32(%rip) # TAILCALL
.LBB0_18:                               # %if.then.45
	movq	10216(%rsi), %rax
	jmp	.LBB0_19
.LBB0_5:                                # %if.then.3
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_6:                                # %sw.bb
	xorl	%eax, %eax
	cmpq	$0, 12136(%rsi)
	je	.LBB0_19
# BB#7:                                 # %cond.true.5
	movq	12016(%rsi), %rax
	jmp	.LBB0_19
.LBB0_17:                               # %sw.bb.27
	movq	10160(%rsi), %rax
.LBB0_19:                               # %cleanup
	movq	%rax, (%rbx)
.LBB0_20:                               # %cleanup
	movl	$ptr_struct_procs, %eax
.LBB0_21:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.LBB0_8:                                # %sw.bb.11
	xorl	%eax, %eax
	cmpq	$0, 12136(%rsi)
	je	.LBB0_19
# BB#9:                                 # %cond.true.15
	movq	12072(%rsi), %rax
	jmp	.LBB0_19
.LBB0_10:                               # %sw.bb.21
	movq	12176(%rsi), %rax
	jmp	.LBB0_19
.LBB0_11:                               # %sw.bb.24
	movq	12208(%rsi), %rax
	jmp	.LBB0_19
.Lfunc_end0:
	.size	device_clist_enum_ptrs, .Lfunc_end0-device_clist_enum_ptrs
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_6
	.quad	.LBB0_8
	.quad	.LBB0_10
	.quad	.LBB0_11
	.quad	.LBB0_17

	.text
	.align	16, 0x90
	.type	device_clist_reloc_ptrs,@function
device_clist_reloc_ptrs:                # @device_clist_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp3:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp4:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp5:
	.cfi_def_cfa_offset 32
.Ltmp6:
	.cfi_offset %rbx, -24
.Ltmp7:
	.cfi_offset %r14, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	movl	$st_device_forward, %edx
	callq	*st_device_forward+40(%rip)
	cmpl	$0, 1880(%rbx)
	js	.LBB1_1
# BB#4:                                 # %if.end.43
	movq	(%r14), %rax
	movq	10232(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 10232(%rbx)
	movq	(%r14), %rax
	movq	10160(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 10160(%rbx)
	movq	(%r14), %rax
	movq	10216(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 10216(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB1_1:                                # %if.then
	cmpq	$0, 12136(%rbx)
	je	.LBB1_3
# BB#2:                                 # %if.then.2
	movq	(%r14), %rax
	movq	12016(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 12016(%rbx)
	movq	(%r14), %rax
	movq	12072(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 12072(%rbx)
.LBB1_3:                                # %if.end
	movq	(%r14), %rax
	movq	12176(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 12176(%rbx)
	movq	(%r14), %rax
	movq	12208(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 12208(%rbx)
	movq	(%r14), %rax
	movq	10160(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 10160(%rbx)
	addq	$10336, %rbx            # imm = 0x2860
	movl	$1616, %esi             # imm = 0x650
	movl	$st_imager_state, %edx
	movq	%rbx, %rdi
	movq	%r14, %rcx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*st_imager_state+40(%rip) # TAILCALL
.Lfunc_end1:
	.size	device_clist_reloc_ptrs, .Lfunc_end1-device_clist_reloc_ptrs
	.cfi_endproc

	.globl	clist_open
	.align	16, 0x90
	.type	clist_open,@function
clist_open:                             # @clist_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp9:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp10:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 40
	subq	$56, %rsp
.Ltmp12:
	.cfi_def_cfa_offset 96
.Ltmp13:
	.cfi_offset %rbx, -40
.Ltmp14:
	.cfi_offset %r14, -32
.Ltmp15:
	.cfi_offset %r15, -24
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	84(%rbx), %r15d
	movl	$0, 12148(%rbx)
	movl	$0, 84(%rbx)
	callq	clist_reset
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_13
# BB#1:                                 # %if.end
	movq	$0, 12136(%rbx)
	movl	$0, 12144(%rbx)
	movl	$0, 12152(%rbx)
	movl	$0, 12156(%rbx)
	movl	$0, 10176(%rbx)
	movq	$0, 10184(%rbx)
	movq	%rbx, %rdi
	callq	clist_open_output_file
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_13
# BB#2:                                 # %if.then.4
	xorl	%ebp, %ebp
	testb	$32, 12168(%rbx)
	je	.LBB2_10
# BB#3:                                 # %do.body.i.preheader
	leaq	(%rsp), %r14
	.align	16, 0x90
.LBB2_4:                                # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	12148(%rbx), %ebp
	testl	%ebp, %ebp
	jne	.LBB2_8
# BB#5:                                 # %if.end.i
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	1728(%rbx), %rbp
	movq	24(%rbx), %rsi
	movq	%r14, %rdi
	callq	gs_c_param_list_write
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	*1248(%rbp)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_7
# BB#6:                                 # %if.then.3.i
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	%r14, %rdi
	callq	gs_c_param_list_read
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	cmd_put_params
	movl	%eax, %ebp
.LBB2_7:                                # %if.end.5.i
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	%r14, %rdi
	callq	gs_c_param_list_release
.LBB2_8:                                # %clist_put_current_params.exit
                                        #   in Loop: Header=BB2_4 Depth=1
	testl	%ebp, %ebp
	jns	.LBB2_9
# BB#11:                                # %do.cond.i
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	clist_VMerror_recover
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB2_4
# BB#12:                                # %if.then.7.i
	movl	%ebp, 12148(%rbx)
	movl	$0, 12144(%rbx)
	jmp	.LBB2_13
.LBB2_9:                                # %do.end.thread15.i
	movl	$0, 12148(%rbx)
.LBB2_10:                               # %if.then.8
	movl	%r15d, 84(%rbx)
.LBB2_13:                               # %cleanup
	movl	%ebp, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	clist_open, .Lfunc_end2-clist_open
	.cfi_endproc

	.globl	clist_output_page
	.align	16, 0x90
	.type	clist_output_page,@function
clist_output_page:                      # @clist_output_page
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-100, %eax
	retq
.Lfunc_end3:
	.size	clist_output_page, .Lfunc_end3-clist_output_page
	.cfi_endproc

	.align	16, 0x90
	.type	clist_close,@function
clist_close:                            # @clist_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp17:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp19:
	.cfi_def_cfa_offset 32
.Ltmp20:
	.cfi_offset %rbx, -24
.Ltmp21:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movl	10176(%r14), %eax
	xorl	%ebx, %ebx
	testl	%eax, %eax
	jle	.LBB4_5
	.align	16, 0x90
.LBB4_1:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	10184(%r14), %rcx
	movq	(%rcx,%rbx,8), %rsi
	testq	%rsi, %rsi
	je	.LBB4_4
# BB#2:                                 # %do.end
                                        #   in Loop: Header=BB4_1 Depth=1
	decq	16(%rsi)
	jne	.LBB4_4
# BB#3:                                 # %do.end.18
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	24(%rsi), %rdi
	movl	$.L.str.17, %edx
	callq	*32(%rsi)
	movq	10184(%r14), %rax
	movq	$0, (%rax,%rbx,8)
	movl	10176(%r14), %eax
.LBB4_4:                                # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	incq	%rbx
	movslq	%eax, %rcx
	cmpq	%rcx, %rbx
	jl	.LBB4_1
.LBB4_5:                                # %for.end
	movl	$0, 10176(%r14)
	movq	24(%r14), %rax
	movq	208(%rax), %rdi
	movq	10184(%r14), %rsi
	movl	$.L.str.17, %edx
	callq	*24(%rdi)
	movq	$0, 10184(%r14)
	cmpl	$0, 1808(%r14)
	jne	.LBB4_12
# BB#6:                                 # %if.end.49
	movl	$pattern_clist_open_device, %eax
	cmpq	%rax, 1144(%r14)
	jne	.LBB4_8
# BB#7:                                 # %if.then.53
	movq	1768(%r14), %rdi
	movq	1776(%r14), %rsi
	movl	$.L.str.17, %edx
	callq	*24(%rdi)
	movq	$0, 1776(%r14)
.LBB4_8:                                # %if.end.58
	movq	5984(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB4_10
# BB#9:                                 # %if.then.i.i
	leaq	1888(%r14), %rsi
	movq	10096(%r14), %rax
	movl	$1, %edx
	callq	*8(%rax)
	movq	$0, 5984(%r14)
.LBB4_10:                               # %if.end.i.i
	movq	10088(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB4_12
# BB#11:                                # %if.then.4.i.i
	movq	10096(%r14), %rax
	leaq	5992(%r14), %rsi
	movl	$1, %edx
	callq	*8(%rax)
	movq	$0, 10088(%r14)
.LBB4_12:                               # %cleanup
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end4:
	.size	clist_close, .Lfunc_end4-clist_close
	.cfi_endproc

	.align	16, 0x90
	.type	clist_get_band,@function
clist_get_band:                         # @clist_get_band
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %r8
	movl	10132(%rdi), %r9d
	xorl	%ecx, %ecx
	testl	%esi, %esi
	js	.LBB5_2
# BB#1:                                 # %if.else
	movl	836(%rdi), %ecx
	cmpl	%esi, %ecx
	cmovgl	%esi, %ecx
.LBB5_2:                                # %if.end.4
	movl	%ecx, %eax
	cltd
	idivl	%r9d
	subl	%edx, %ecx
	movl	%ecx, (%r8)
	movl	836(%rdi), %eax
	subl	%ecx, %eax
	cmpl	%r9d, %eax
	cmovgl	%r9d, %eax
	retq
.Lfunc_end5:
	.size	clist_get_band, .Lfunc_end5-clist_get_band
	.cfi_endproc

	.globl	clist_init_io_procs
	.align	16, 0x90
	.type	clist_init_io_procs,@function
clist_init_io_procs:                    # @clist_init_io_procs
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%esi, %esi
	jne	.LBB6_2
# BB#1:                                 # %entry
	movq	clist_io_procs_file_global(%rip), %rax
	testq	%rax, %rax
	jne	.LBB6_3
.LBB6_2:                                # %if.then
	movq	clist_io_procs_memory_global(%rip), %rax
.LBB6_3:                                # %if.else
	movq	%rax, 10096(%rdi)
	retq
.Lfunc_end6:
	.size	clist_init_io_procs, .Lfunc_end6-clist_init_io_procs
	.cfi_endproc

	.globl	clist_close_page_info
	.align	16, 0x90
	.type	clist_close_page_info,@function
clist_close_page_info:                  # @clist_close_page_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	4096(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	8208(%rbx), %rax
	movl	$1, %edx
	movq	%rbx, %rsi
	callq	*8(%rax)
	movq	$0, 4096(%rbx)
.LBB7_2:                                # %if.end
	movq	8200(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB7_4
# BB#3:                                 # %if.then.4
	movq	8208(%rbx), %rax
	leaq	4104(%rbx), %rsi
	movl	$1, %edx
	callq	*8(%rax)
	movq	$0, 8200(%rbx)
.LBB7_4:                                # %if.end.11
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end7:
	.size	clist_close_page_info, .Lfunc_end7-clist_close_page_info
	.cfi_endproc

	.globl	clist_close_output_file
	.align	16, 0x90
	.type	clist_close_output_file,@function
clist_close_output_file:                # @clist_close_output_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	5984(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB8_2
# BB#1:                                 # %if.then.i
	leaq	1888(%rbx), %rsi
	movq	10096(%rbx), %rax
	movl	$1, %edx
	callq	*8(%rax)
	movq	$0, 5984(%rbx)
.LBB8_2:                                # %if.end.i
	movq	10088(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB8_4
# BB#3:                                 # %if.then.4.i
	movq	10096(%rbx), %rax
	leaq	5992(%rbx), %rsi
	movl	$1, %edx
	callq	*8(%rax)
	movq	$0, 10088(%rbx)
.LBB8_4:                                # %clist_close_page_info.exit
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end8:
	.size	clist_close_output_file, .Lfunc_end8-clist_close_output_file
	.cfi_endproc

	.align	16, 0x90
	.type	clist_open_output_file,@function
clist_open_output_file:                 # @clist_open_output_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp29:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp30:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp32:
	.cfi_def_cfa_offset 80
.Ltmp33:
	.cfi_offset %rbx, -56
.Ltmp34:
	.cfi_offset %r12, -48
.Ltmp35:
	.cfi_offset %r13, -40
.Ltmp36:
	.cfi_offset %r14, -32
.Ltmp37:
	.cfi_offset %r15, -24
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	xorl	%ebp, %ebp
	cmpl	$0, 1808(%rbx)
	jne	.LBB9_14
# BB#1:                                 # %if.end
	movq	$0, 5984(%rbx)
	movq	$0, 10088(%rbx)
	movq	%rbx, %rdi
	callq	clist_reset
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB9_14
# BB#2:                                 # %if.end.3
	leaq	1888(%rbx), %r15
	leaq	5984(%rbx), %r13
	leaq	10088(%rbx), %r14
	movq	$0, 12136(%rbx)
	movl	$0, 12144(%rbx)
	movl	$0, 12152(%rbx)
	movl	$0, 12156(%rbx)
	leaq	20(%rsp), %rbp
	movl	$.L.str.16, %esi
	movq	%rbp, %rdi
	callq	strcpy
	movl	$gp_fmode_binary_suffix, %esi
	movq	%rbp, %rdi
	callq	strcat
	movb	$0, 1888(%rbx)
	leaq	5992(%rbx), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movb	$0, 5992(%rbx)
	movq	$0, 10120(%rbx)
	movq	10096(%rbx), %rax
	movq	1768(%rbx), %rcx
	movl	$1, %r9d
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movq	%r13, %rdx
	movq	%rcx, %r8
	callq	*(%rax)
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB9_9
# BB#3:                                 # %lor.lhs.false
	movq	10096(%rbx), %rax
	movq	1768(%rbx), %rcx
	leaq	20(%rsp), %rsi
	xorl	%ebp, %ebp
	xorl	%r9d, %r9d
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	%r14, %rdx
	movq	%rcx, %r8
	callq	*(%rax)
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB9_9
# BB#4:                                 # %lor.lhs.false.33
	movl	10144(%rbx), %ecx
	movl	10224(%rbx), %eax
	addl	$2, %eax
	subl	10208(%rbx), %eax
	leal	(%rax,%rcx,2), %eax
	cmpq	$0, 12160(%rbx)
	je	.LBB9_14
# BB#5:                                 # %if.then.i.27
	movq	(%r14), %rdi
	xorl	%ebp, %ebp
	testq	%rdi, %rdi
	je	.LBB9_7
# BB#6:                                 # %if.end.i
	movl	%ecx, %esi
	shll	$4, %esi
	addl	$32, %esi
	movq	%rax, %r12
	movq	10096(%rbx), %rax
	movq	%rcx, %rbp
	callq	*40(%rax)
	movq	%rbp, %rcx
	movl	%eax, %ebp
	movq	%r12, %rax
	testl	%ebp, %ebp
	movl	%ebp, %r12d
	js	.LBB9_9
.LBB9_7:                                # %land.lhs.true.i
	movq	(%r13), %rdi
	testq	%rdi, %rdi
	je	.LBB9_14
# BB#8:                                 # %clist_reinit_output_file.exit
	leal	1(%rcx,%rax), %esi
	movq	10096(%rbx), %rax
	callq	*40(%rax)
	movl	%eax, %r12d
	testl	%r12d, %r12d
	movl	%r12d, %ebp
	jns	.LBB9_14
.LBB9_9:                                # %if.then.36
	movq	(%r13), %rdi
	testq	%rdi, %rdi
	je	.LBB9_11
# BB#10:                                # %if.then.i.i
	movq	10096(%rbx), %rax
	movl	$1, %edx
	movq	%r15, %rsi
	callq	*8(%rax)
	movq	$0, 5984(%rbx)
.LBB9_11:                               # %if.end.i.i
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB9_13
# BB#12:                                # %if.then.4.i.i
	movq	10096(%rbx), %rax
	movl	$1, %edx
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	*8(%rax)
	movq	$0, 10088(%rbx)
.LBB9_13:                               # %clist_close_output_file.exit
	movl	%r12d, 12148(%rbx)
	movl	$0, 12144(%rbx)
	movl	%r12d, %ebp
.LBB9_14:                               # %cleanup
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	clist_open_output_file, .Lfunc_end9-clist_open_output_file
	.cfi_endproc

	.globl	clist_finish_page
	.align	16, 0x90
	.type	clist_finish_page,@function
clist_finish_page:                      # @clist_finish_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp41:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp42:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp43:
	.cfi_def_cfa_offset 48
	subq	$64, %rsp
.Ltmp44:
	.cfi_def_cfa_offset 112
.Ltmp45:
	.cfi_offset %rbx, -48
.Ltmp46:
	.cfi_offset %r12, -40
.Ltmp47:
	.cfi_offset %r14, -32
.Ltmp48:
	.cfi_offset %r15, -24
.Ltmp49:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %r12
	cmpl	$0, 1880(%r12)
	js	.LBB10_10
# BB#1:                                 # %if.then
	movq	24(%r12), %rdi
	movq	10216(%r12), %rsi
	movl	$.L.str.1, %edx
	callq	*24(%rdi)
	movq	$0, 10216(%r12)
	movq	%r12, %rdi
	callq	clist_teardown_render_threads
	movq	10160(%r12), %r15
	testq	%r15, %r15
	je	.LBB10_6
# BB#2:                                 # %if.end.i
	movl	(%r15), %ebx
	testl	%ebx, %ebx
	jle	.LBB10_5
# BB#3:                                 # %for.body.lr.ph.i
	movq	16(%r15), %rsi
	.align	16, 0x90
.LBB10_4:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rsi), %rbp
	movq	8(%r15), %rdi
	movl	$.L.str.4, %edx
	callq	*24(%rdi)
	decl	%ebx
	movq	%rbp, %rsi
	jne	.LBB10_4
.LBB10_5:                               # %for.end.i
	movq	8(%r15), %rdi
	movl	$.L.str.4, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
.LBB10_6:                               # %clist_free_icc_table.exit
	movq	$0, 10160(%r12)
	movq	10168(%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB10_9
# BB#7:                                 # %do.end
	decq	16(%rsi)
	jne	.LBB10_9
# BB#8:                                 # %do.end.19
	movq	24(%rsi), %rdi
	movl	$.L.str.2, %edx
	callq	*32(%rsi)
	movq	$0, 10168(%r12)
.LBB10_9:                               # %do.end.34
	movq	$0, 10168(%r12)
.LBB10_10:                              # %if.end.36
	leaq	1888(%r12), %rax
	testl	%r14d, %r14d
	movq	5984(%r12), %rdi
	je	.LBB10_16
# BB#11:                                # %if.then.38
	testq	%rdi, %rdi
	je	.LBB10_13
# BB#12:                                # %if.then.40
	movq	10096(%r12), %rcx
	movl	$1, %esi
	movq	%rax, %rdx
	callq	*64(%rcx)
.LBB10_13:                              # %if.end.45
	movq	10088(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB10_15
# BB#14:                                # %if.then.48
	movq	10096(%r12), %rax
	leaq	5992(%r12), %rdx
	movl	$1, %esi
	callq	*64(%rax)
.LBB10_15:                              # %if.end.56
	movq	$0, 10120(%r12)
	jmp	.LBB10_20
.LBB10_16:                              # %if.else.57
	testq	%rdi, %rdi
	je	.LBB10_18
# BB#17:                                # %if.then.61
	movq	10096(%r12), %rbp
	xorl	%esi, %esi
	movl	$2, %edx
	movq	%rax, %rcx
	callq	*72(%rbp)
.LBB10_18:                              # %if.end.70
	movq	10088(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB10_20
# BB#19:                                # %if.then.74
	movq	10096(%r12), %rax
	leaq	5992(%r12), %rcx
	xorl	%esi, %esi
	movl	$2, %edx
	callq	*72(%rax)
.LBB10_20:                              # %if.end.85
	movq	%r12, %rdi
	callq	clist_reset
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB10_36
# BB#21:                                # %if.then.88
	movq	$0, 12136(%r12)
	movl	$0, 12144(%r12)
	movl	$0, 12152(%r12)
	movl	$0, 12156(%r12)
	movl	10144(%r12), %r14d
	movl	10224(%r12), %eax
	addl	$2, %eax
	subl	10208(%r12), %eax
	leal	(%rax,%r14,2), %r15d
	cmpq	$0, 12160(%r12)
	je	.LBB10_26
# BB#22:                                # %if.then.i.44
	movq	10088(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB10_24
# BB#23:                                # %if.end.i.46
	movl	%r14d, %esi
	shll	$4, %esi
	addl	$32, %esi
	movq	10096(%r12), %rax
	callq	*40(%rax)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB10_36
.LBB10_24:                              # %land.lhs.true.i
	movq	5984(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB10_26
# BB#25:                                # %if.end.90
	leal	1(%r14,%r15), %esi
	movq	10096(%r12), %rax
	callq	*40(%rax)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB10_36
.LBB10_26:                              # %if.then.92
	xorl	%ebp, %ebp
	testb	$32, 12168(%r12)
	je	.LBB10_36
# BB#27:                                # %do.body.i.preheader
	leaq	8(%rsp), %r14
	.align	16, 0x90
.LBB10_28:                              # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	12148(%r12), %ebp
	testl	%ebp, %ebp
	jne	.LBB10_32
# BB#29:                                # %if.end.i.55
                                        #   in Loop: Header=BB10_28 Depth=1
	movq	1728(%r12), %rbp
	movq	24(%r12), %rsi
	movq	%r14, %rdi
	callq	gs_c_param_list_write
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	*1248(%rbp)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB10_31
# BB#30:                                # %if.then.3.i
                                        #   in Loop: Header=BB10_28 Depth=1
	movq	%r14, %rdi
	callq	gs_c_param_list_read
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	cmd_put_params
	movl	%eax, %ebp
.LBB10_31:                              # %if.end.5.i
                                        #   in Loop: Header=BB10_28 Depth=1
	movq	%r14, %rdi
	callq	gs_c_param_list_release
.LBB10_32:                              # %clist_put_current_params.exit
                                        #   in Loop: Header=BB10_28 Depth=1
	testl	%ebp, %ebp
	jns	.LBB10_33
# BB#34:                                # %do.cond.i
                                        #   in Loop: Header=BB10_28 Depth=1
	movq	%r12, %rdi
	movl	%ebp, %esi
	callq	clist_VMerror_recover
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB10_28
# BB#35:                                # %if.then.7.i
	movl	%ebp, 12148(%r12)
	movl	$0, 12144(%r12)
	jmp	.LBB10_36
.LBB10_33:                              # %do.end.thread15.i
	movl	$0, 12148(%r12)
.LBB10_36:                              # %if.end.94
	movl	%ebp, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	clist_finish_page, .Lfunc_end10-clist_finish_page
	.cfi_endproc

	.globl	clist_free_icc_table
	.align	16, 0x90
	.type	clist_free_icc_table,@function
clist_free_icc_table:                   # @clist_free_icc_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp51:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp52:
	.cfi_def_cfa_offset 32
.Ltmp53:
	.cfi_offset %rbx, -32
.Ltmp54:
	.cfi_offset %r14, -24
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	testq	%r14, %r14
	je	.LBB11_5
# BB#1:                                 # %if.end
	movl	(%r14), %ebp
	testl	%ebp, %ebp
	jle	.LBB11_4
# BB#2:                                 # %for.body.lr.ph
	movq	16(%r14), %rsi
	.align	16, 0x90
.LBB11_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rsi), %rbx
	movq	8(%r14), %rdi
	movl	$.L.str.4, %edx
	callq	*24(%rdi)
	decl	%ebp
	movq	%rbx, %rsi
	jne	.LBB11_3
.LBB11_4:                               # %for.end
	movq	8(%r14), %rdi
	movl	$.L.str.4, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
.LBB11_5:                               # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end11:
	.size	clist_free_icc_table, .Lfunc_end11-clist_free_icc_table
	.cfi_endproc

	.globl	clist_end_page
	.align	16, 0x90
	.type	clist_end_page,@function
clist_end_page:                         # @clist_end_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp57:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp58:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp59:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp60:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp61:
	.cfi_def_cfa_offset 64
.Ltmp62:
	.cfi_offset %rbx, -48
.Ltmp63:
	.cfi_offset %r12, -40
.Ltmp64:
	.cfi_offset %r14, -32
.Ltmp65:
	.cfi_offset %r15, -24
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movl	$11, %esi
	callq	cmd_write_buffer
	movl	%eax, %r14d
	cmpq	$0, 10160(%r15)
	je	.LBB12_7
# BB#1:                                 # %if.then
	movq	%r15, %rdi
	callq	clist_icc_writetable
	movl	%eax, %r14d
	movq	10160(%r15), %r12
	testq	%r12, %r12
	je	.LBB12_6
# BB#2:                                 # %if.end.i
	movl	(%r12), %ebx
	testl	%ebx, %ebx
	jle	.LBB12_5
# BB#3:                                 # %for.body.lr.ph.i
	movq	16(%r12), %rsi
	.align	16, 0x90
.LBB12_4:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rsi), %rbp
	movq	8(%r12), %rdi
	movl	$.L.str.4, %edx
	callq	*24(%rdi)
	decl	%ebx
	movq	%rbp, %rsi
	jne	.LBB12_4
.LBB12_5:                               # %for.end.i
	movq	8(%r12), %rdi
	movl	$.L.str.4, %edx
	movq	%r12, %rsi
	callq	*24(%rdi)
.LBB12_6:                               # %clist_free_icc_table.exit
	movq	$0, 10160(%r15)
.LBB12_7:                               # %if.end
	testl	%r14d, %r14d
	js	.LBB12_13
# BB#8:                                 # %if.end.8
	movq	%r15, %rdi
	callq	clist_write_color_usage_array
	testl	%eax, %eax
	js	.LBB12_13
# BB#9:                                 # %if.then.10
	leaq	(%rsp), %rdi
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movl	$16, %edx
	callq	memset
	movq	$-1, (%rsp)
	movq	5984(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB12_11
# BB#10:                                # %cond.false
	movq	10096(%r15), %rax
	callq	*56(%rax)
	movq	%rax, %rbp
.LBB12_11:                              # %cond.end
	movq	%rbp, 8(%rsp)
	movq	10088(%r15), %rdx
	movq	10096(%r15), %rax
	leaq	(%rsp), %rdi
	movl	$16, %esi
	callq	*24(%rax)
	testl	%eax, %eax
	js	.LBB12_13
# BB#12:                                # %if.then.26
	movq	10088(%r15), %rdi
	movq	10096(%r15), %rax
	callq	*56(%rax)
	movq	%rax, 10120(%r15)
.LBB12_13:                              # %if.end.34
	movq	10088(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB12_15
# BB#14:                                # %if.then.41
	movq	10096(%r15), %rax
	xorl	%esi, %esi
	callq	*40(%rax)
.LBB12_15:                              # %if.end.47
	movq	5984(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB12_17
# BB#16:                                # %if.then.51
	movq	10096(%r15), %rax
	xorl	%esi, %esi
	callq	*40(%rax)
.LBB12_17:                              # %if.end.58
	cmpl	$0, 1056(%r15)
	je	.LBB12_23
# BB#18:                                # %if.end.58
	movb	gs_debug+58(%rip), %al
	testb	%al, %al
	je	.LBB12_23
# BB#19:                                # %for.cond.preheader
	movslq	10144(%r15), %rdx
	xorl	%esi, %esi
	cmpq	$2, %rdx
	jl	.LBB12_22
# BB#20:                                # %for.body.lr.ph
	leaq	-1(%rdx), %rax
	movl	$1800, %ecx             # imm = 0x708
	addq	10200(%r15), %rcx
	xorl	%edi, %edi
	xorl	%esi, %esi
	.align	16, 0x90
.LBB12_21:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-8(%rcx), %ebp
	cmpl	(%rcx), %ebp
	setg	%bl
	movzbl	%bl, %ebp
	addl	%ebp, %esi
	incq	%rdi
	addq	$1808, %rcx             # imm = 0x710
	cmpq	%rax, %rdi
	jl	.LBB12_21
.LBB12_22:                              # %for.end
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
.LBB12_23:                              # %if.end.76
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	clist_end_page, .Lfunc_end12-clist_end_page
	.cfi_endproc

	.globl	clist_icc_writetable
	.align	16, 0x90
	.type	clist_icc_writetable,@function
clist_icc_writetable:                   # @clist_icc_writetable
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
	subq	$296, %rsp              # imm = 0x128
.Ltmp73:
	.cfi_def_cfa_offset 352
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
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movq	10160(%rdi), %rcx
	movl	(%rcx), %eax
	movl	%eax, 36(%rsp)
	addq	$16, %rcx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	testl	%eax, %eax
	jle	.LBB13_6
# BB#1:                                 # %for.body.lr.ph
	xorl	%r14d, %r14d
	movq	8(%rsp), %r13           # 8-byte Reload
	movq	16(%rsp), %r12          # 8-byte Reload
	.align	16, 0x90
.LBB13_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13), %r13
	movq	32(%r13), %rbp
	movl	224(%rbp), %eax
	movl	%eax, 32(%rsp)          # 4-byte Spill
	movl	40(%r13), %eax
	movl	%eax, 224(%rbp)
	movq	5984(%r12), %r15
	movq	10096(%r12), %rax
	movq	%r15, %rdi
	callq	*56(%rax)
	movq	%rax, 24(%rsp)          # 8-byte Spill
	leaq	40(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	gsicc_profile_serialize
	movq	10096(%r12), %rax
	movl	$256, %esi              # imm = 0x100
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	*24(%rax)
	movl	%eax, %ebx
	movq	10096(%r12), %rax
	movq	256(%rbp), %rdi
	movl	220(%rbp), %esi
	movq	%r15, %rdx
	callq	*24(%rax)
	addl	%ebx, %eax
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 8(%r13)
	movq	32(%r13), %rsi
	movl	32(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 224(%rsi)
	movl	%eax, 16(%r13)
	testq	%rsi, %rsi
	je	.LBB13_5
# BB#3:                                 # %do.end
                                        #   in Loop: Header=BB13_2 Depth=1
	decq	288(%rsi)
	jne	.LBB13_5
# BB#4:                                 # %do.end.23
                                        #   in Loop: Header=BB13_2 Depth=1
	movq	296(%rsi), %rdi
	movl	$.L.str.5, %edx
	callq	*304(%rsi)
	movq	$0, 32(%r13)
.LBB13_5:                               # %do.end.37
                                        #   in Loop: Header=BB13_2 Depth=1
	movq	$0, 32(%r13)
	addq	$24, %r13
	incl	%r14d
	movl	36(%rsp), %eax
	cmpl	%eax, %r14d
	jl	.LBB13_2
.LBB13_6:                               # %for.end
	shll	$3, %eax
	leal	(%rax,%rax,2), %r14d
	orl	$4, %r14d
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rdi
	movl	$.L.str.5, %edx
	movl	%r14d, %esi
	callq	*64(%rdi)
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB13_7
# BB#8:                                 # %if.end.48
	leaq	36(%rsp), %rsi
	movl	$4, %edx
	movq	%r15, %rdi
	callq	memcpy
	cmpl	$0, 36(%rsp)
	movq	8(%rsp), %rbp           # 8-byte Reload
	jle	.LBB13_11
# BB#9:                                 # %for.body.54.lr.ph
	movq	%r15, %r12
	addq	$4, %r12
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB13_10:                              # %for.body.54
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbp), %rbp
	movl	$24, %edx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	memcpy
	addq	$24, %r12
	addq	$24, %rbp
	incl	%ebx
	cmpl	36(%rsp), %ebx
	jl	.LBB13_10
.LBB13_11:                              # %for.end.61
	movl	$2, %ecx
	movq	16(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	%r14d, %edx
	callq	cmd_write_pseudo_band
	movq	24(%rbx), %rdi
	movl	$.L.str.5, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
	xorl	%eax, %eax
	jmp	.LBB13_12
.LBB13_7:                               # %if.then.46
	movl	$.L.str.5, %edi
	movl	$.L.str.6, %esi
	movl	$1093, %edx             # imm = 0x445
	movl	$1, %ecx
	movl	$-1, %r8d
	movl	$.L.str.7, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
.LBB13_12:                              # %cleanup
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	clist_icc_writetable, .Lfunc_end13-clist_icc_writetable
	.cfi_endproc

	.globl	clist_write_color_usage_array
	.align	16, 0x90
	.type	clist_write_color_usage_array,@function
clist_write_color_usage_array:          # @clist_write_color_usage_array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp81:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp82:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp83:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp84:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp85:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp86:
	.cfi_def_cfa_offset 64
.Ltmp87:
	.cfi_offset %rbx, -56
.Ltmp88:
	.cfi_offset %r12, -48
.Ltmp89:
	.cfi_offset %r13, -40
.Ltmp90:
	.cfi_offset %r14, -32
.Ltmp91:
	.cfi_offset %r15, -24
.Ltmp92:
	.cfi_offset %rbp, -16
	movq	%rdi, %r12
	movl	10144(%r12), %r15d
	shll	$5, %r15d
	movq	24(%r12), %rdi
	movl	$.L.str.11, %edx
	movl	%r15d, %esi
	callq	*64(%rdi)
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB14_5
# BB#1:                                 # %for.cond.preheader
	cmpl	$0, 10144(%r12)
	jle	.LBB14_4
# BB#2:                                 # %for.body.lr.ph
	xorl	%r13d, %r13d
	movl	$1776, %ebx             # imm = 0x6F0
	movq	%r14, %rbp
	.align	16, 0x90
.LBB14_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	10200(%r12), %rsi
	addq	%rbx, %rsi
	movl	$32, %edx
	movq	%rbp, %rdi
	callq	memcpy
	incq	%r13
	movslq	10144(%r12), %rax
	addq	$32, %rbp
	addq	$1808, %rbx             # imm = 0x710
	cmpq	%rax, %r13
	jl	.LBB14_3
.LBB14_4:                               # %cleanup
	movl	$1, %ecx
	movq	%r12, %rdi
	movq	%r14, %rsi
	movl	%r15d, %edx
	callq	cmd_write_pseudo_band
	movq	24(%r12), %rdi
	movl	$.L.str.11, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB14_5:                               # %if.then
	movl	$.L.str.11, %edi
	movl	$.L.str.6, %esi
	movl	$1225, %edx             # imm = 0x4C9
	movl	$1, %ecx
	movl	$-1, %r8d
	movl	$.L.str.12, %r9d
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gs_throw_imp            # TAILCALL
.Lfunc_end14:
	.size	clist_write_color_usage_array, .Lfunc_end14-clist_write_color_usage_array
	.cfi_endproc

	.globl	gx_color_index2usage
	.align	16, 0x90
	.type	gx_color_index2usage,@function
gx_color_index2usage:                   # @gx_color_index2usage
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	100(%rdi), %r8
	xorl	%eax, %eax
	testq	%r8, %r8
	jle	.LBB15_11
# BB#1:                                 # %for.body.lr.ph
	xorl	%r9d, %r9d
	testb	$1, %r8b
	movl	$0, %eax
	je	.LBB15_4
# BB#2:                                 # %for.body.prol
	xorl	%eax, %eax
	movl	$1, %r9d
	testq	272(%rdi), %rsi
	je	.LBB15_4
# BB#3:                                 # %if.then.prol
	movl	$1, %r9d
	movl	$1, %eax
.LBB15_4:                               # %for.body.lr.ph.split
	cmpl	$1, %r8d
	je	.LBB15_11
# BB#5:                                 # %for.body.lr.ph.split.split
	leaq	280(%rdi,%r9,8), %r10
	xorl	%edx, %edx
	.align	16, 0x90
.LBB15_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	testq	-8(%r10,%rdx,8), %rsi
	je	.LBB15_8
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB15_6 Depth=1
	leal	(%r9,%rdx), %ecx
	movl	$1, %edi
	shll	%cl, %edi
	movslq	%edi, %rcx
	orq	%rcx, %rax
.LBB15_8:                               # %for.inc
                                        #   in Loop: Header=BB15_6 Depth=1
	testq	(%r10,%rdx,8), %rsi
	je	.LBB15_10
# BB#9:                                 # %if.then.1
                                        #   in Loop: Header=BB15_6 Depth=1
	leal	1(%r9,%rdx), %ecx
	movl	$1, %edi
	shll	%cl, %edi
	movslq	%edi, %rcx
	orq	%rcx, %rax
.LBB15_10:                              # %for.inc.1
                                        #   in Loop: Header=BB15_6 Depth=1
	leaq	2(%r9,%rdx), %rcx
	addq	$2, %rdx
	cmpq	%r8, %rcx
	jl	.LBB15_6
.LBB15_11:                              # %for.end
	retq
.Lfunc_end15:
	.size	gx_color_index2usage, .Lfunc_end15-gx_color_index2usage
	.cfi_endproc

	.globl	clist_VMerror_recover
	.align	16, 0x90
	.type	clist_VMerror_recover,@function
clist_VMerror_recover:                  # @clist_VMerror_recover
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp94:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp95:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp96:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp97:
	.cfi_def_cfa_offset 48
.Ltmp98:
	.cfi_offset %rbx, -40
.Ltmp99:
	.cfi_offset %r14, -32
.Ltmp100:
	.cfi_offset %r15, -24
.Ltmp101:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	12160(%rbx), %rax
	testq	%rax, %rax
	je	.LBB16_15
# BB#1:                                 # %lor.lhs.false
	cmpl	$-25, %esi
	jne	.LBB16_15
# BB#2:                                 # %lor.lhs.false
	movl	12144(%rbx), %ecx
	testl	%ecx, %ecx
	je	.LBB16_15
# BB#3:                                 # %do.body.preheader
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	*%rax
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB16_4
	.align	16, 0x90
.LBB16_5:                               # %if.end.6
                                        # =>This Inner Loop Header: Depth=1
	movl	10144(%rbx), %ebp
	movl	10224(%rbx), %eax
	addl	$2, %eax
	subl	10208(%rbx), %eax
	leal	(%rax,%rbp,2), %r15d
	cmpq	$0, 12160(%rbx)
	je	.LBB16_6
# BB#7:                                 # %if.then.i
                                        #   in Loop: Header=BB16_5 Depth=1
	movq	10088(%rbx), %rdi
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB16_9
# BB#8:                                 # %if.end.i
                                        #   in Loop: Header=BB16_5 Depth=1
	movl	%ebp, %esi
	shll	$4, %esi
	addl	$32, %esi
	movq	10096(%rbx), %rax
	callq	*40(%rax)
	testl	%eax, %eax
	js	.LBB16_13
.LBB16_9:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB16_5 Depth=1
	movq	5984(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB16_11
# BB#10:                                # %if.then.24.i
                                        #   in Loop: Header=BB16_5 Depth=1
	leal	1(%rbp,%r15), %esi
	movq	10096(%rbx), %rax
	callq	*40(%rax)
.LBB16_11:                              # %clist_reinit_output_file.exit
                                        #   in Loop: Header=BB16_5 Depth=1
	testl	%eax, %eax
	je	.LBB16_12
.LBB16_13:                              # %do.cond
                                        #   in Loop: Header=BB16_5 Depth=1
	movl	$-25, %esi
	testl	%r14d, %r14d
	je	.LBB16_15
# BB#14:                                # %do.cond.do.body_crit_edge
                                        #   in Loop: Header=BB16_5 Depth=1
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	*12160(%rbx)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	movl	%r14d, %esi
	jns	.LBB16_5
	jmp	.LBB16_15
.LBB16_4:
	movl	%r14d, %esi
	jmp	.LBB16_15
.LBB16_6:
	movl	%r14d, %esi
	jmp	.LBB16_15
.LBB16_12:
	movl	%r14d, %esi
.LBB16_15:                              # %cleanup
	movl	%esi, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	clist_VMerror_recover, .Lfunc_end16-clist_VMerror_recover
	.cfi_endproc

	.globl	clist_VMerror_recover_flush
	.align	16, 0x90
	.type	clist_VMerror_recover_flush,@function
clist_VMerror_recover_flush:            # @clist_VMerror_recover_flush
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp103:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp104:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp105:
	.cfi_def_cfa_offset 40
	subq	$56, %rsp
.Ltmp106:
	.cfi_def_cfa_offset 96
.Ltmp107:
	.cfi_offset %rbx, -40
.Ltmp108:
	.cfi_offset %r14, -32
.Ltmp109:
	.cfi_offset %r15, -24
.Ltmp110:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	cmpl	$-25, %ebp
	jne	.LBB17_12
# BB#1:                                 # %entry
	movq	12160(%rbx), %rax
	testq	%rax, %rax
	je	.LBB17_12
# BB#2:                                 # %if.end
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	*%rax
	movl	%eax, %r14d
	movq	%rbx, %rdi
	callq	clist_reset
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB17_10
# BB#3:                                 # %if.end.7
	movq	%rbx, %rdi
	callq	clist_open_output_file
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB17_10
# BB#4:                                 # %land.lhs.true
	testb	$32, 12168(%rbx)
	je	.LBB17_11
# BB#5:                                 # %if.then.9
	movl	12148(%rbx), %ebp
	testl	%ebp, %ebp
	jne	.LBB17_9
# BB#6:                                 # %if.end.i
	movq	1728(%rbx), %rbp
	movq	24(%rbx), %rsi
	leaq	(%rsp), %r15
	movq	%r15, %rdi
	callq	gs_c_param_list_write
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	*1248(%rbp)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB17_8
# BB#7:                                 # %if.then.3.i
	leaq	(%rsp), %rbp
	movq	%rbp, %rdi
	callq	gs_c_param_list_read
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	cmd_put_params
	movl	%eax, %ebp
.LBB17_8:                               # %if.end.5.i
	leaq	(%rsp), %rdi
	callq	gs_c_param_list_release
.LBB17_9:                               # %if.end.11
	testl	%ebp, %ebp
	js	.LBB17_10
.LBB17_11:                              # %cond.false
	sarl	$31, %r14d
	andl	$-25, %r14d
	movl	%r14d, %ebp
	jmp	.LBB17_12
.LBB17_10:                              # %if.then.13
	movl	%ebp, 12148(%rbx)
	movl	$0, 12144(%rbx)
.LBB17_12:                              # %cleanup
	movl	%ebp, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	clist_VMerror_recover_flush, .Lfunc_end17-clist_VMerror_recover_flush
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4563202822438905527     # double 0.0012056327160493826
	.text
	.align	16, 0x90
	.type	clist_reset,@function
clist_reset:                            # @clist_reset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp112:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp113:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp114:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp115:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp116:
	.cfi_def_cfa_offset 56
	subq	$2840, %rsp             # imm = 0xB18
.Ltmp117:
	.cfi_def_cfa_offset 2896
.Ltmp118:
	.cfi_offset %rbx, -56
.Ltmp119:
	.cfi_offset %r12, -48
.Ltmp120:
	.cfi_offset %r13, -40
.Ltmp121:
	.cfi_offset %r14, -32
.Ltmp122:
	.cfi_offset %r15, -24
.Ltmp123:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	1728(%rbx), %rbp
	movq	1776(%rbx), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	1784(%rbx), %ecx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movl	832(%rbp), %eax
	movl	1792(%rbx), %r13d
	cmpl	%r13d, %eax
	cmovgel	%eax, %r13d
	movl	%r13d, 10128(%rbx)
	movl	1796(%rbx), %r12d
	movl	1056(%rbx), %eax
	movl	%eax, 4(%rsp)           # 4-byte Spill
	movq	1800(%rbx), %rax
	testq	%rax, %rax
	movq	%rcx, %r14
	cmovneq	%rax, %r14
	movq	%r14, 10136(%rbx)
	cmovel	%ecx, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	leaq	40(%rsp), %rax
	movq	%rax, 32(%rsp)
	movw	108(%rbx), %ax
	movw	%ax, 12252(%rbx)
	movl	104(%rbx), %eax
	movl	%eax, 12248(%rbx)
	movl	100(%rbx), %eax
	movl	%eax, 12244(%rbx)
	movl	1112(%rbp), %eax
	movl	%eax, 1112(%rbx)
	leaq	32(%rsp), %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rbp, %rsi
	callq	*1736(%rbx)
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB18_45
# BB#1:                                 # %if.end.i
	movq	32(%rsp), %rax
	movl	$gx_no_copy_alpha, %ecx
	cmpq	%rcx, 1312(%rax)
	jne	.LBB18_3
# BB#2:                                 # %if.then.32.i
	orb	$64, 12168(%rbx)
.LBB18_3:                               # %if.end.33.i
	movl	$pattern_clist_open_device, %eax
	cmpq	%rax, 1144(%rbx)
	je	.LBB18_4
# BB#5:                                 # %if.else.i
	testl	%r12d, %r12d
	je	.LBB18_12
# BB#6:                                 # %if.then.41.i
	movl	$19, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movl	%r12d, %ecx
	callq	*1664(%rbx)
	testl	%eax, %eax
	cmovgl	%eax, %r12d
	leaq	40(%rsp), %rdi
	leaq	2832(%rsp), %rcx
	movl	%r13d, %esi
	movl	%r12d, %edx
	callq	gdev_mem_data_size
	testl	%eax, %eax
	js	.LBB18_8
# BB#7:                                 # %lor.lhs.false.i
	movl	%r14d, %ebp
	subq	2832(%rsp), %rbp
	jbe	.LBB18_8
# BB#11:                                # %cleanup.i
	movq	24(%rsp), %rax          # 8-byte Reload
	shrl	%eax
	cmpq	%rax, %rbp
	cmovael	%eax, %ebp
	jmp	.LBB18_22
.LBB18_4:                               # %if.then.38.i
	movq	%r12, %r14
	movq	24(%rsp), %rbp          # 8-byte Reload
	shrl	%ebp
	movq	$0, 10112(%rbx)
	jmp	.LBB18_23
.LBB18_8:                               # %if.then.54.i
	movq	32(%rsp), %rdi
	movq	48(%rdi), %rax
	testq	%rax, %rax
	je	.LBB18_10
# BB#9:                                 # %if.then.56.i
	callq	*%rax
.LBB18_10:                              # %cleanup.thread.i
	movl	$-15, %r15d
	movl	%r15d, 12148(%rbx)
	jmp	.LBB18_54
.LBB18_12:                              # %if.else.74.i
	movq	16(%rsp), %rdx          # 8-byte Reload
	movl	%edx, %ecx
	movl	$3435973837, %eax       # imm = 0xCCCCCCCD
	imulq	%rcx, %rax
	shrq	$34, %rax
	cmpl	$1, 100(%rbp)
	jg	.LBB18_14
# BB#13:                                # %lor.lhs.false.i.i
	movzbl	110(%rbp), %ecx
	cmpl	$255, %ecx
	je	.LBB18_14
# BB#15:                                # %cond.false.i.i
	addq	$112, %rbp
	jmp	.LBB18_16
.LBB18_14:                              # %cond.true.i.i
	addq	$116, %rbp
.LBB18_16:                              # %clist_tile_cache_size.exit.i
	andl	$1073741816, %eax       # imm = 0x3FFFFFF8
	xorl	%ecx, %ecx
	cmpl	$31, (%rbp)
	jb	.LBB18_18
# BB#17:                                # %select.mid
	movl	%eax, %ecx
	shrl	$2, %ecx
.LBB18_18:                              # %select.end
	subl	%ecx, %eax
	cmpl	$1024, %eax             # imm = 0x400
	movl	$1024, %ecx             # imm = 0x400
	cmovael	%eax, %ecx
	movq	24(%rsp), %rbp          # 8-byte Reload
	shrl	%ebp
	cmpl	%ebp, %ecx
	cmovbl	%ecx, %ebp
	subl	%ebp, %edx
	leaq	40(%rsp), %rdi
	movl	%r13d, %esi
	movl	4(%rsp), %ecx           # 4-byte Reload
	callq	gdev_mem_max_height
	movl	%eax, %r12d
	testl	%r12d, %r12d
	je	.LBB18_19
# BB#21:                                # %cleanup.104.i
	movl	$19, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movl	%r12d, %ecx
	callq	*1664(%rbx)
	testl	%eax, %eax
	cmovgl	%eax, %r12d
.LBB18_22:                              # %if.end.107.i
	leaq	10112(%rbx), %rcx
	leaq	40(%rsp), %rdi
	movl	%r13d, %esi
	movl	%r12d, %edx
	movq	%r12, %r14
	callq	gdev_mem_bits_size
	movl	$-25, %r15d
	testl	%eax, %eax
	js	.LBB18_45
.LBB18_23:                              # %if.end.115.i
	movq	$0, 12216(%rbx)
	movl	%ebp, %r15d
	movss	884(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	888(%rbx), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI18_0(%rip), %xmm0
	cvttsd2si	%xmm0, %rcx
	addl	$24, %ecx
	xorl	%edx, %edx
	movl	%ebp, %eax
	divl	%ecx
	leal	1(%rax), %ecx
	testl	%eax, %ecx
	je	.LBB18_24
	.align	16, 0x90
.LBB18_25:                              # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	shrl	%ecx
	orl	%eax, %ecx
	leal	1(%rcx), %eax
	testl	%ecx, %eax
	movl	%ecx, %eax
	jne	.LBB18_25
	jmp	.LBB18_26
.LBB18_24:
	movl	%eax, %ecx
.LBB18_26:                              # %while.end.i.i
	movl	$255, %eax
	cmpl	$255, %ecx
	jb	.LBB18_28
# BB#27:                                # %while.cond.12.preheader.i.i
	cmpl	$4095, %ecx             # imm = 0xFFF
	movl	$4095, %eax             # imm = 0xFFF
	cmovbel	%ecx, %eax
	cmpl	$3, %eax
	jb	.LBB18_31
	.align	16, 0x90
.LBB18_28:                              # %land.end.i.i
                                        # =>This Inner Loop Header: Depth=1
	leal	8(,%rax,8), %ecx
	movl	%ebp, %edx
	subl	%ecx, %edx
	ja	.LBB18_30
# BB#29:                                # %while.body.21.i.i
                                        #   in Loop: Header=BB18_28 Depth=1
	movl	%eax, %ecx
	shrl	%ecx
	cmpl	$5, %eax
	movl	%ecx, %eax
	ja	.LBB18_28
	jmp	.LBB18_31
.LBB18_30:                              # %while.end.23.i.i
	cmpl	$2, %eax
	ja	.LBB18_33
.LBB18_31:                              # %if.then.120.i
	movq	32(%rsp), %rdi
	movq	48(%rdi), %rax
	movl	$-15, %r15d
	testq	%rax, %rax
	je	.LBB18_45
# BB#32:                                # %if.then.123.i
	callq	*%rax
	movl	%r15d, 12148(%rbx)
	jmp	.LBB18_54
.LBB18_33:                              # %if.end.126.i
	movl	%eax, 1864(%rbx)
	movl	%eax, %esi
	shrl	$2, %esi
	subl	%esi, %eax
	movl	%eax, 10268(%rbx)
	movq	8(%rsp), %rsi           # 8-byte Reload
	movq	%rsi, 1872(%rbx)
	movl	%ecx, %eax
	leaq	(%rax,%rsi), %rsi
	leaq	1816(%rbx), %r12
	movq	%r12, %rdi
	callq	gx_bits_cache_chunk_init
	leaq	1840(%rbx), %rdi
	movq	%r12, %rsi
	callq	gx_bits_cache_init
	movl	%ebp, 10104(%rbx)
	movl	$pattern_clist_open_device, %eax
	cmpq	%rax, 1144(%rbx)
	je	.LBB18_34
# BB#35:                                # %if.end.i.100.i
	movq	%r15, %r12
	leaq	40(%rsp), %rdi
	leaq	2832(%rsp), %rcx
	movl	%r13d, %esi
	movl	%r14d, %edx
	callq	gdev_mem_data_size
	movl	$-15, %r15d
	testl	%eax, %eax
	js	.LBB18_39
# BB#36:                                # %lor.lhs.false.i.102.i
	movq	16(%rsp), %rax          # 8-byte Reload
	subl	%ebp, %eax
	movl	%eax, %eax
	cmpq	%rax, 2832(%rsp)
	ja	.LBB18_39
# BB#37:                                # %if.end.7.i.i
	movl	%r14d, 10132(%rbx)
	movq	1728(%rbx), %rax
	movl	836(%rax), %eax
	leal	-1(%r14,%rax), %eax
	cltd
	idivl	%r14d
	movl	%eax, 10144(%rbx)
	jmp	.LBB18_38
.LBB18_19:                              # %if.then.90.i
	movq	32(%rsp), %rdi
	movq	48(%rdi), %rax
	movl	$-15, %r15d
	testq	%rax, %rax
	je	.LBB18_45
# BB#20:                                # %if.then.93.i
	callq	*%rax
	movl	%r15d, 12148(%rbx)
	jmp	.LBB18_54
.LBB18_34:                              # %if.then.i.i
	movq	%r15, %r12
	movl	836(%rbx), %eax
	movl	%eax, 10132(%rbx)
	movl	$1, 10144(%rbx)
.LBB18_38:                              # %clist_init_bands.exit.i
	xorl	%r15d, %r15d
.LBB18_39:                              # %clist_init_bands.exit.i
	movq	32(%rsp), %rdi
	movq	48(%rdi), %rax
	testl	%r15d, %r15d
	js	.LBB18_40
# BB#42:                                # %if.end.138.i
	addq	%r12, 8(%rsp)           # 8-byte Folded Spill
	testq	%rax, %rax
	je	.LBB18_44
# BB#43:                                # %if.then.141.i
	callq	*%rax
.LBB18_44:                              # %if.end.143.i
	movq	24(%rsp), %rsi          # 8-byte Reload
	subl	%ebp, %esi
	movslq	10144(%rbx), %r12
	imulq	$1808, %r12, %rax       # imm = 0x710
	movq	8(%rsp), %rcx           # 8-byte Reload
	negl	%ecx
	andl	$7, %ecx
	leaq	(%rcx,%rax), %rdx
	addq	$178, %rdx
	movl	$-15, %r15d
	cmpq	%rsi, %rdx
	movq	%rsi, %rdx
	ja	.LBB18_45
# BB#46:                                # %if.end
	movq	8(%rsp), %r14           # 8-byte Reload
	leaq	(%rdx,%r14), %rdx
	movq	%rdx, 10224(%rbx)
	addq	%r14, %rcx
	movq	%rcx, 10200(%rbx)
	addq	%rax, %rcx
	movq	%rcx, 10208(%rbx)
	movl	$0, 12148(%rbx)
	movq	$-1, 1880(%rbx)
	movq	1872(%rbx), %rdi
	movl	1864(%rbx), %edx
	incl	%edx
	shlq	$3, %rdx
	xorl	%r15d, %r15d
	xorl	%esi, %esi
	callq	memset
	movq	10208(%rbx), %rax
	movq	%rax, 10216(%rbx)
	movq	$0, 10232(%rbx)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 10240(%rbx)
	movl	$0, 10256(%rbx)
	leal	-1(%r12), %eax
	movl	%eax, 10260(%rbx)
	testl	%r12d, %r12d
	jle	.LBB18_53
# BB#47:                                # %for.body.lr.ph
	movl	%eax, 24(%rsp)          # 4-byte Spill
	movq	10200(%rbx), %rbp
	xorl	%r13d, %r13d
	testb	$7, %r12b
	je	.LBB18_50
# BB#48:                                # %for.body.prol.preheader
	movl	%r12d, %r14d
	andl	$7, %r14d
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB18_49:                              # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	$clist_reset.cls_initial, %esi
	movl	$1808, %edx             # imm = 0x710
	movq	%rbp, %rdi
	callq	memcpy
	incl	%r13d
	addq	$1808, %rbp             # imm = 0x710
	cmpl	%r13d, %r14d
	jne	.LBB18_49
.LBB18_50:                              # %for.body.lr.ph.split
	cmpl	$7, 24(%rsp)            # 4-byte Folded Reload
	jb	.LBB18_53
# BB#51:                                # %for.body.lr.ph.split.split
	movl	%r12d, %r14d
	subl	%r13d, %r14d
	.align	16, 0x90
.LBB18_52:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$clist_reset.cls_initial, %esi
	movl	$1808, %edx             # imm = 0x710
	movq	%rbp, %rdi
	callq	memcpy
	leaq	1808(%rbp), %rdi
	movl	$clist_reset.cls_initial, %esi
	movl	$1808, %edx             # imm = 0x710
	callq	memcpy
	leaq	3616(%rbp), %rdi
	movl	$clist_reset.cls_initial, %esi
	movl	$1808, %edx             # imm = 0x710
	callq	memcpy
	leaq	5424(%rbp), %rdi
	movl	$clist_reset.cls_initial, %esi
	movl	$1808, %edx             # imm = 0x710
	callq	memcpy
	leaq	7232(%rbp), %rdi
	movl	$clist_reset.cls_initial, %esi
	movl	$1808, %edx             # imm = 0x710
	callq	memcpy
	leaq	9040(%rbp), %rdi
	movl	$clist_reset.cls_initial, %esi
	movl	$1808, %edx             # imm = 0x710
	callq	memcpy
	leaq	10848(%rbp), %rdi
	movl	$clist_reset.cls_initial, %esi
	movl	$1808, %edx             # imm = 0x710
	callq	memcpy
	leaq	12656(%rbp), %rdi
	movl	$clist_reset.cls_initial, %esi
	movl	$1808, %edx             # imm = 0x710
	callq	memcpy
	addq	$14464, %rbp            # imm = 0x3880
	addl	$-8, %r14d
	jne	.LBB18_52
.LBB18_53:                              # %for.end
	leal	63(%r12), %eax
	sarl	$3, %eax
	andl	$-8, %eax
	movl	%eax, 1868(%rbx)
	leaq	10272(%rbx), %rdi
	xorl	%esi, %esi
	movl	$48, %edx
	callq	memset
	movl	$0, 10320(%rbx)
	movl	%r12d, 10324(%rbx)
	movl	$-1, 10328(%rbx)
	leaq	10336(%rbx), %rdi
	movl	$clist_imager_state_initial, %esi
	movl	$1616, %edx             # imm = 0x650
	callq	memcpy
	movq	$0, 12016(%rbx)
	movq	$0, 12024(%rbx)
	movb	$0, 12032(%rbx)
	movq	$0, 12040(%rbx)
	movq	$0, 12072(%rbx)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 12080(%rbx)
	movupd	%xmm0, 12096(%rbx)
	movupd	%xmm0, 12112(%rbx)
	movq	$0, 12128(%rbx)
	movq	$0, 12136(%rbx)
	movl	$0, 12192(%rbx)
	movl	$0, 12184(%rbx)
	movl	836(%rbx), %eax
	movl	%eax, 12196(%rbx)
	movl	%eax, 12188(%rbx)
	movl	$0, 12200(%rbx)
	movq	$0, 12208(%rbx)
	movl	$0, 12204(%rbx)
	movl	$0, 12232(%rbx)
	movl	$0, 12228(%rbx)
	movl	$0, 12224(%rbx)
	movupd	%xmm0, 10160(%rbx)
	jmp	.LBB18_54
.LBB18_40:                              # %if.then.132.i
	testq	%rax, %rax
	je	.LBB18_45
# BB#41:                                # %if.then.135.i
	callq	*%rax
	movl	%r15d, 12148(%rbx)
	jmp	.LBB18_54
.LBB18_45:                              # %if.then
	movl	%r15d, 12148(%rbx)
.LBB18_54:                              # %cleanup
	movl	%r15d, %eax
	addq	$2840, %rsp             # imm = 0xB18
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	clist_reset, .Lfunc_end18-clist_reset
	.cfi_endproc

	.globl	clist_icc_searchtable
	.align	16, 0x90
	.type	clist_icc_searchtable,@function
clist_icc_searchtable:                  # @clist_icc_searchtable
	.cfi_startproc
# BB#0:                                 # %entry
	movq	10160(%rdi), %rax
	testq	%rax, %rax
	je	.LBB19_1
# BB#2:                                 # %if.end
	movq	16(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB19_3
	.align	16, 0x90
.LBB19_6:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %eax
	cmpq	%rsi, (%rcx)
	je	.LBB19_7
# BB#4:                                 # %while.cond
                                        #   in Loop: Header=BB19_6 Depth=1
	movq	24(%rcx), %rcx
	testq	%rcx, %rcx
	jne	.LBB19_6
# BB#5:
	xorl	%eax, %eax
	retq
.LBB19_1:
	xorl	%eax, %eax
	retq
.LBB19_3:
	xorl	%eax, %eax
	retq
.LBB19_7:                               # %cleanup
	retq
.Lfunc_end19:
	.size	clist_icc_searchtable, .Lfunc_end19-clist_icc_searchtable
	.cfi_endproc

	.globl	clist_icc_addprofile
	.align	16, 0x90
	.type	clist_icc_addprofile,@function
clist_icc_addprofile:                   # @clist_icc_addprofile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp124:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp125:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp126:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp127:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp128:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp129:
	.cfi_def_cfa_offset 56
	subq	$264, %rsp              # imm = 0x108
.Ltmp130:
	.cfi_def_cfa_offset 320
.Ltmp131:
	.cfi_offset %rbx, -56
.Ltmp132:
	.cfi_offset %r12, -48
.Ltmp133:
	.cfi_offset %r13, -40
.Ltmp134:
	.cfi_offset %r14, -32
.Ltmp135:
	.cfi_offset %r15, -24
.Ltmp136:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	5984(%rbx), %r12
	movq	10096(%rbx), %rax
	movq	%r12, %rdi
	callq	*56(%rax)
	movq	%rax, %r13
	leaq	8(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	gsicc_profile_serialize
	movq	10096(%rbx), %rax
	movl	$256, %esi              # imm = 0x100
	movq	%rbp, %rdi
	movq	%r12, %rdx
	callq	*24(%rax)
	movl	%eax, %ebp
	movq	10096(%rbx), %rax
	movq	256(%r15), %rdi
	movl	220(%r15), %esi
	movq	%r12, %rdx
	callq	*24(%rax)
	addl	%ebp, %eax
	movl	%eax, (%r14)
	movq	%r13, %rax
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	clist_icc_addprofile, .Lfunc_end20-clist_icc_addprofile
	.cfi_endproc

	.globl	clist_icc_addentry
	.align	16, 0x90
	.type	clist_icc_addentry,@function
clist_icc_addentry:                     # @clist_icc_addentry
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp137:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp138:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp139:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp140:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp141:
	.cfi_def_cfa_offset 48
.Ltmp142:
	.cfi_offset %rbx, -40
.Ltmp143:
	.cfi_offset %r12, -32
.Ltmp144:
	.cfi_offset %r14, -24
.Ltmp145:
	.cfi_offset %r15, -16
	movq	%rdx, %r12
	movq	%rdi, %r14
	movq	10160(%r14), %rbx
	movq	24(%r14), %rax
	movq	(%rax), %r15
	cmpl	$0, 152(%r12)
	je	.LBB21_1
# BB#2:                                 # %if.else
	movq	%rsi, (%rsp)
	jmp	.LBB21_3
.LBB21_1:                               # %if.then
	movq	256(%r12), %rdi
	movl	220(%r12), %edx
	leaq	(%rsp), %rsi
	callq	gsicc_get_icc_buff_hash
	movq	(%rsp), %rsi
	movq	%rsi, 144(%r12)
	movl	$1, 152(%r12)
.LBB21_3:                               # %if.end
	testq	%rbx, %rbx
	je	.LBB21_4
# BB#11:                                # %if.else.32
	movl	(%rbx), %ecx
	testl	%ecx, %ecx
	jle	.LBB21_15
# BB#12:                                # %for.body.lr.ph
	leaq	16(%rbx), %rdx
	xorl	%eax, %eax
	xorl	%edi, %edi
	.align	16, 0x90
.LBB21_13:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdx), %rdx
	cmpq	%rsi, (%rdx)
	je	.LBB21_21
# BB#14:                                # %if.end.40
                                        #   in Loop: Header=BB21_13 Depth=1
	addq	$24, %rdx
	incl	%edi
	cmpl	%ecx, %edi
	jl	.LBB21_13
.LBB21_15:                              # %for.end
	movq	8(%rbx), %rdi
	movl	$st_clist_icctable_entry, %esi
	movl	$.L.str.8, %edx
	callq	*72(%rdi)
	testq	%rax, %rax
	je	.LBB21_16
# BB#17:                                # %if.end.51
	movq	$0, 24(%rax)
	movq	(%rsp), %rcx
	movq	%rcx, (%rax)
	movl	$-1, 16(%rax)
	movq	$-1, 8(%rax)
	movq	%r12, 32(%rax)
	movl	224(%r12), %ecx
	movl	%ecx, 40(%rax)
	testq	%r12, %r12
	je	.LBB21_19
# BB#18:                                # %do.body.65
	incq	288(%r12)
.LBB21_19:                              # %do.end.76
	movq	24(%rbx), %rcx
	movq	%rax, 24(%rcx)
	movq	%rax, 24(%rbx)
	incl	(%rbx)
	jmp	.LBB21_20
.LBB21_4:                               # %if.then.6
	movl	$st_clist_icctable_entry, %esi
	movl	$.L.str.8, %edx
	movq	%r15, %rdi
	callq	*72(%r15)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB21_5
# BB#8:                                 # %do.end.22
	movq	$0, 24(%rbx)
	movq	(%rsp), %rax
	movq	%rax, (%rbx)
	movl	$-1, 16(%rbx)
	movq	$-1, 8(%rbx)
	movq	%r12, 32(%rbx)
	movl	224(%r12), %eax
	movl	%eax, 40(%rbx)
	incq	288(%r12)
	movl	$st_clist_icctable, %esi
	movl	$.L.str.8, %edx
	movq	%r15, %rdi
	callq	*72(%r15)
	testq	%rax, %rax
	je	.LBB21_9
# BB#10:                                # %if.end.29
	movl	$1, (%rax)
	movq	%rbx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	%r15, 8(%rax)
	movq	%rax, 10160(%r14)
.LBB21_20:                              # %cleanup
	xorl	%eax, %eax
	jmp	.LBB21_21
.LBB21_16:                              # %if.then.49
	movl	$.L.str.8, %edi
	movl	$.L.str.6, %esi
	movl	$1199, %edx             # imm = 0x4AF
	jmp	.LBB21_6
.LBB21_5:                               # %if.then.8
	movl	$.L.str.8, %edi
	movl	$.L.str.6, %esi
	movl	$1164, %edx             # imm = 0x48C
.LBB21_6:                               # %cleanup
	movl	$1, %ecx
	movl	$-1, %r8d
	movl	$.L.str.9, %r9d
	jmp	.LBB21_7
.LBB21_9:                               # %if.then.27
	movl	$.L.str.8, %edi
	movl	$.L.str.6, %esi
	movl	$1175, %edx             # imm = 0x497
	movl	$1, %ecx
	movl	$-1, %r8d
	movl	$.L.str.10, %r9d
.LBB21_7:                               # %cleanup
	xorl	%eax, %eax
	callq	gs_throw_imp
.LBB21_21:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end21:
	.size	clist_icc_addentry, .Lfunc_end21-clist_icc_addentry
	.cfi_endproc

	.globl	clist_writer_color_usage
	.align	16, 0x90
	.type	clist_writer_color_usage,@function
clist_writer_color_usage:               # @clist_writer_color_usage
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp146:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp147:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp148:
	.cfi_def_cfa_offset 32
.Ltmp149:
	.cfi_offset %rbx, -32
.Ltmp150:
	.cfi_offset %r14, -24
.Ltmp151:
	.cfi_offset %rbp, -16
	movl	%edx, %r9d
	movl	10132(%rdi), %r11d
	movl	%esi, %eax
	cltd
	idivl	%r11d
	movl	%eax, %r10d
	leal	(%r9,%rsi), %eax
	cltd
	idivl	%r11d
	xorl	%edx, %edx
	movl	%eax, %ebp
	subl	%r10d, %ebp
	movl	$0, %esi
	jle	.LBB22_7
# BB#1:                                 # %for.body.lr.ph
	movq	10200(%rdi), %r9
	movslq	%r10d, %rbx
	leal	-1(%rax), %r14d
	xorl	%edx, %edx
	testb	$1, %bpl
	jne	.LBB22_3
# BB#2:
	xorl	%esi, %esi
	jmp	.LBB22_4
.LBB22_3:                               # %for.body.prol
	imulq	$1808, %rbx, %rsi       # imm = 0x710
	movq	1776(%r9,%rsi), %rdx
	movl	1784(%r9,%rsi), %esi
	incq	%rbx
.LBB22_4:                               # %for.body.lr.ph.split
	cmpl	%r10d, %r14d
	je	.LBB22_7
# BB#5:                                 # %for.body.lr.ph.split.split
	movl	%eax, %ebp
	subl	%ebx, %ebp
	imulq	$1808, %rbx, %rbx       # imm = 0x710
	leaq	3592(%rbx,%r9), %rbx
	.align	16, 0x90
.LBB22_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	orq	-1816(%rbx), %rdx
	orl	-1808(%rbx), %esi
	orq	-8(%rbx), %rdx
	orl	(%rbx), %esi
	addq	$3616, %rbx             # imm = 0xE20
	addl	$-2, %ebp
	jne	.LBB22_6
.LBB22_7:                               # %for.end
	movq	%rdx, (%rcx)
	movl	%esi, 8(%rcx)
	imull	%r11d, %r10d
	movl	%r10d, (%r8)
	imull	%r11d, %eax
	movl	836(%rdi), %ecx
	cmpl	%ecx, %eax
	cmovgl	%ecx, %eax
	subl	%r10d, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end22:
	.size	clist_writer_color_usage, .Lfunc_end22-clist_writer_color_usage
	.cfi_endproc

	.globl	clist_writer_push_no_cropping
	.align	16, 0x90
	.type	clist_writer_push_no_cropping,@function
clist_writer_push_no_cropping:          # @clist_writer_push_no_cropping
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp152:
	.cfi_def_cfa_offset 16
.Ltmp153:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	24(%rbx), %rdi
	movl	$st_clist_writer_cropping_buffer, %esi
	movl	$.L.str.13, %edx
	callq	*72(%rdi)
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB23_2
# BB#1:                                 # %do.end
	movq	12208(%rbx), %rcx
	movq	%rcx, 16(%rax)
	movq	%rax, 12208(%rbx)
	movl	12184(%rbx), %ecx
	movl	%ecx, (%rax)
	movl	12188(%rbx), %ecx
	movl	%ecx, 4(%rax)
	movl	12228(%rbx), %ecx
	movl	%ecx, 8(%rax)
	movl	12232(%rbx), %ecx
	movl	%ecx, 12(%rax)
	incl	12204(%rbx)
	xorl	%ecx, %ecx
.LBB23_2:                               # %cleanup
	movl	%ecx, %eax
	popq	%rbx
	retq
.Lfunc_end23:
	.size	clist_writer_push_no_cropping, .Lfunc_end23-clist_writer_push_no_cropping
	.cfi_endproc

	.globl	clist_writer_push_cropping
	.align	16, 0x90
	.type	clist_writer_push_cropping,@function
clist_writer_push_cropping:             # @clist_writer_push_cropping
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp154:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp155:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp156:
	.cfi_def_cfa_offset 32
.Ltmp157:
	.cfi_offset %rbx, -32
.Ltmp158:
	.cfi_offset %r14, -24
.Ltmp159:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movq	24(%rbx), %rdi
	movl	$st_clist_writer_cropping_buffer, %esi
	movl	$.L.str.13, %edx
	callq	*72(%rdi)
	testq	%rax, %rax
	je	.LBB24_2
# BB#1:                                 # %if.end
	movq	12208(%rbx), %rcx
	movq	%rcx, 16(%rax)
	movq	%rax, 12208(%rbx)
	movl	12184(%rbx), %ecx
	movl	%ecx, (%rax)
	movl	12188(%rbx), %edx
	movl	%edx, 4(%rax)
	movl	12228(%rbx), %esi
	movl	%esi, 8(%rax)
	movl	12232(%rbx), %esi
	movl	%esi, 12(%rax)
	incl	12204(%rbx)
	cmpl	%r14d, %ecx
	cmovll	%r14d, %ecx
	movl	%ecx, 12184(%rbx)
	addl	%r14d, %ebp
	cmpl	%ebp, %edx
	cmovlel	%edx, %ebp
	movl	%ebp, 12188(%rbx)
.LBB24_2:                               # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end24:
	.size	clist_writer_push_cropping, .Lfunc_end24-clist_writer_push_cropping
	.cfi_endproc

	.globl	clist_writer_pop_cropping
	.align	16, 0x90
	.type	clist_writer_pop_cropping,@function
clist_writer_pop_cropping:              # @clist_writer_pop_cropping
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp160:
	.cfi_def_cfa_offset 16
	movq	12208(%rdi), %rsi
	movl	$-28, %eax
	testq	%rsi, %rsi
	je	.LBB25_2
# BB#1:                                 # %if.end
	movl	(%rsi), %eax
	movl	%eax, 12184(%rdi)
	movl	4(%rsi), %eax
	movl	%eax, 12188(%rdi)
	movl	8(%rsi), %eax
	movl	%eax, 12228(%rdi)
	movl	12(%rsi), %eax
	movl	%eax, 12232(%rdi)
	movq	16(%rsi), %rax
	movq	%rax, 12208(%rdi)
	decl	12204(%rdi)
	movq	24(%rdi), %rdi
	movl	$.L.str.14, %edx
	callq	*24(%rdi)
	xorl	%eax, %eax
.LBB25_2:                               # %cleanup
	popq	%rdx
	retq
.Lfunc_end25:
	.size	clist_writer_pop_cropping, .Lfunc_end25-clist_writer_pop_cropping
	.cfi_endproc

	.globl	clist_writer_check_empty_cropping_stack
	.align	16, 0x90
	.type	clist_writer_check_empty_cropping_stack,@function
clist_writer_check_empty_cropping_stack: # @clist_writer_check_empty_cropping_stack
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	cmpq	$0, 12208(%rdi)
	je	.LBB26_2
# BB#1:                                 # %select.mid
	movl	$-28, %eax
.LBB26_2:                               # %select.end
	retq
.Lfunc_end26:
	.size	clist_writer_check_empty_cropping_stack, .Lfunc_end26-clist_writer_check_empty_cropping_stack
	.cfi_endproc

	.globl	clist_data_size
	.align	16, 0x90
	.type	clist_data_size,@function
clist_data_size:                        # @clist_data_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp161:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp162:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp163:
	.cfi_def_cfa_offset 32
.Ltmp164:
	.cfi_offset %rbx, -24
.Ltmp165:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	leaq	1888(%rbx), %rax
	leaq	10088(%rbx), %rdx
	leaq	5984(%rbx), %rdi
	leaq	5992(%rbx), %rcx
	testl	%esi, %esi
	cmoveq	%rdx, %rdi
	movq	(%rdi), %r14
	cmovneq	%rax, %rcx
	movq	10096(%rbx), %rax
	xorl	%esi, %esi
	movl	$2, %edx
	movq	%r14, %rdi
	callq	*72(%rax)
	movl	%eax, %ecx
	movl	$-28, %eax
	testl	%ecx, %ecx
	js	.LBB27_2
# BB#1:                                 # %if.end
	movq	10096(%rbx), %rax
	movq	%r14, %rdi
	callq	*56(%rax)
	movq	%rax, %rcx
	testl	%ecx, %ecx
	movl	$-28, %eax
	cmovnsl	%ecx, %eax
.LBB27_2:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end27:
	.size	clist_data_size, .Lfunc_end27-clist_data_size
	.cfi_endproc

	.globl	clist_get_data
	.align	16, 0x90
	.type	clist_get_data,@function
clist_get_data:                         # @clist_get_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp166:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp167:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp168:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp169:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp170:
	.cfi_def_cfa_offset 48
.Ltmp171:
	.cfi_offset %rbx, -40
.Ltmp172:
	.cfi_offset %r14, -32
.Ltmp173:
	.cfi_offset %r15, -24
.Ltmp174:
	.cfi_offset %rbp, -16
	movl	%r8d, %r14d
	movq	%rcx, %r15
	movq	%rdx, %r8
	movq	%rdi, %rbp
	leaq	1888(%rbp), %rdx
	leaq	10088(%rbp), %rdi
	leaq	5984(%rbp), %rbx
	leaq	5992(%rbp), %rcx
	testl	%esi, %esi
	cmoveq	%rdi, %rbx
	movq	(%rbx), %rbx
	cmovneq	%rdx, %rcx
	movq	10096(%rbp), %rax
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r8, %rsi
	callq	*72(%rax)
	testl	%eax, %eax
	js	.LBB28_1
# BB#2:                                 # %if.end
	movq	10096(%rbp), %rax
	movq	32(%rax), %rax
	movq	%r15, %rdi
	movl	%r14d, %esi
	movq	%rbx, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB28_1:                               # %cleanup
	movl	$-28, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end28:
	.size	clist_get_data, .Lfunc_end28-clist_get_data
	.cfi_endproc

	.globl	clist_put_data
	.align	16, 0x90
	.type	clist_put_data,@function
clist_put_data:                         # @clist_put_data
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
	pushq	%r12
.Ltmp178:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp179:
	.cfi_def_cfa_offset 48
.Ltmp180:
	.cfi_offset %rbx, -48
.Ltmp181:
	.cfi_offset %r12, -40
.Ltmp182:
	.cfi_offset %r14, -32
.Ltmp183:
	.cfi_offset %r15, -24
.Ltmp184:
	.cfi_offset %rbp, -16
	movl	%r8d, %r14d
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rdi, %rbp
	leaq	10088(%rbp), %rax
	leaq	5984(%rbp), %rcx
	testl	%esi, %esi
	cmoveq	%rax, %rcx
	movq	(%rcx), %rbx
	movq	10096(%rbp), %rax
	movq	%rbx, %rdi
	callq	*56(%rax)
	testq	%rax, %rax
	js	.LBB29_2
# BB#1:                                 # %entry
	cmpq	%r12, %rax
	jne	.LBB29_2
# BB#3:                                 # %if.end.3
	movq	10096(%rbp), %rax
	movq	24(%rax), %rax
	movq	%r15, %rdi
	movl	%r14d, %esi
	movq	%rbx, %rdx
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB29_2:                               # %cleanup
	movl	$-28, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end29:
	.size	clist_put_data, .Lfunc_end29-clist_put_data
	.cfi_endproc

	.globl	clist_make_accum_device
	.align	16, 0x90
	.type	clist_make_accum_device,@function
clist_make_accum_device:                # @clist_make_accum_device
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp185:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp186:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp187:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp188:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp189:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp190:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp191:
	.cfi_def_cfa_offset 80
.Ltmp192:
	.cfi_offset %rbx, -56
.Ltmp193:
	.cfi_offset %r12, -48
.Ltmp194:
	.cfi_offset %r13, -40
.Ltmp195:
	.cfi_offset %r14, -32
.Ltmp196:
	.cfi_offset %r15, -24
.Ltmp197:
	.cfi_offset %rbp, -16
	movq	%r8, %r13
	movl	%ecx, %ebp
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	24(%r12), %r14
	movl	$st_device_clist, %esi
	movl	$.L.str.15, %edx
	movq	%r14, %rdi
	callq	*72(%r14)
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB30_13
# BB#1:                                 # %if.end
	movl	%ebp, 12(%rsp)          # 4-byte Spill
	movq	%r13, %rbp
	movq	96(%rsp), %r13
	xorl	%esi, %esi
	movl	$12960, %edx            # imm = 0x32A0
	movq	%rbx, %rdi
	callq	memset
	movl	$12960, (%rbx)          # imm = 0x32A0
	movq	$0, 8(%rbx)
	movq	%r15, 16(%rbx)
	movq	%r14, 24(%rbx)
	movq	$st_device_clist, 32(%rbx)
	movl	$0, 40(%rbx)
	movq	$1, 56(%rbx)
	movq	%r14, 64(%rbx)
	movq	$rc_free_struct_only, 72(%rbx)
	movq	$1, 80(%rbx)
	leaq	96(%rbx), %rdi
	leaq	96(%r12), %rsi
	movl	$720, %edx              # imm = 0x2D0
	callq	memcpy
	movq	%r13, 12176(%rbx)
	movups	816(%r12), %xmm0
	movups	%xmm0, 816(%rbx)
	testq	%r13, %r13
	je	.LBB30_3
# BB#2:                                 # %if.then.14
	movl	228(%r13), %eax
	movl	%eax, 832(%rbx)
	movl	232(%r13), %eax
	movl	%eax, 836(%rbx)
	movl	%eax, 1796(%rbx)
	jmp	.LBB30_4
.LBB30_3:                               # %if.else
	movl	832(%r12), %eax
	movl	%eax, 832(%rbx)
	movl	836(%r12), %eax
	movl	%eax, 836(%rbx)
.LBB30_4:                               # %if.end.23
	movq	%rbp, %r13
	movl	80(%rsp), %r15d
	movl	852(%r12), %eax
	movl	%eax, 852(%rbx)
	movl	848(%r12), %eax
	movl	%eax, 848(%rbx)
	movl	884(%r12), %eax
	movl	%eax, 884(%rbx)
	movl	888(%r12), %eax
	movl	%eax, 888(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 10160(%rbx)
	movl	956(%r12), %eax
	movl	%eax, 956(%rbx)
	movl	$1, 960(%rbx)
	leaq	1144(%rbx), %rdi
	movl	$gs_clist_device_procs, %esi
	movl	$584, %edx              # imm = 0x248
	callq	memcpy
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	gx_device_copy_color_params
	movq	1728(%rbx), %rsi
	cmpq	%r12, %rsi
	je	.LBB30_9
# BB#5:                                 # %do.body.51
	incq	56(%r12)
	testq	%rsi, %rsi
	je	.LBB30_8
# BB#6:                                 # %do.end.58
	decq	56(%rsi)
	jne	.LBB30_8
# BB#7:                                 # %do.end.72
	movq	64(%rsi), %rdi
	movl	$.L.str.15, %edx
	callq	*72(%rsi)
.LBB30_8:                               # %do.end.92
	movq	%r12, 1728(%rbx)
.LBB30_9:                               # %do.end.96
	movl	88(%rsp), %ebp
	testl	%r15d, %r15d
	jne	.LBB30_11
# BB#10:                                # %do.end.96
	movq	clist_io_procs_file_global(%rip), %rax
	testq	%rax, %rax
	jne	.LBB30_12
.LBB30_11:                              # %if.then.i
	movq	clist_io_procs_memory_global(%rip), %rax
.LBB30_12:                              # %if.else.i
	movq	%rax, 10096(%rbx)
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%rax, 1776(%rbx)
	movl	12(%rsp), %eax          # 4-byte Reload
	movl	%eax, 1784(%rbx)
	movq	%rbx, %rdi
	addq	$1736, %rdi             # imm = 0x6C8
	movl	$32, %edx
	movq	%r13, %rsi
	callq	memcpy
	movl	%ebp, 1056(%rbx)
	movl	832(%rbx), %eax
	movl	%eax, 1792(%rbx)
	movq	$0, 1800(%rbx)
	movl	$0, 1808(%rbx)
	movq	200(%r14), %rax
	movq	%rax, 1768(%rbx)
	movq	$gx_default_get_clipping_box, 1432(%rbx)
	movq	$gx_forward_get_profile, 1680(%rbx)
	movq	$gx_forward_set_graphics_type_tag, 1688(%rbx)
	movl	1112(%r12), %eax
	movl	%eax, 1112(%rbx)
	movq	%rbx, %rax
.LBB30_13:                              # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end30:
	.size	clist_make_accum_device, .Lfunc_end30-clist_make_accum_device
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gx_device_clist"
	.size	.L.str, 16

	.type	st_device_clist,@object # @st_device_clist
	.section	.rodata,"a",@progbits
	.globl	st_device_clist
	.align	8
st_device_clist:
	.long	12960                   # 0x32a0
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	device_clist_enum_ptrs
	.quad	device_clist_reloc_ptrs
	.quad	gx_device_finalize
	.quad	0
	.size	st_device_clist, 64

	.type	gs_clist_device_procs,@object # @gs_clist_device_procs
	.globl	gs_clist_device_procs
	.align	8
gs_clist_device_procs:
	.quad	clist_open
	.quad	gx_forward_get_initial_matrix
	.quad	gx_default_sync_output
	.quad	clist_output_page
	.quad	clist_close
	.quad	gx_forward_map_rgb_color
	.quad	gx_forward_map_color_rgb
	.quad	clist_fill_rectangle
	.quad	gx_default_tile_rectangle
	.quad	clist_copy_mono
	.quad	clist_copy_color
	.quad	gx_default_draw_line
	.quad	gx_default_get_bits
	.quad	gx_forward_get_params
	.quad	gx_forward_put_params
	.quad	gx_forward_map_cmyk_color
	.quad	gx_forward_get_xfont_procs
	.quad	gx_forward_get_xfont_device
	.quad	gx_forward_map_rgb_alpha_color
	.quad	gx_forward_get_page_device
	.quad	gx_default_get_alpha_bits
	.quad	clist_copy_alpha
	.quad	clist_get_band
	.quad	gx_default_copy_rop
	.quad	clist_fill_path
	.quad	clist_stroke_path
	.quad	clist_fill_mask
	.quad	clist_fill_trapezoid
	.quad	clist_fill_parallelogram
	.quad	clist_fill_triangle
	.quad	gx_default_draw_thin_line
	.quad	gx_default_begin_image
	.quad	gx_default_image_data
	.quad	gx_default_end_image
	.quad	clist_strip_tile_rectangle
	.quad	clist_strip_copy_rop
	.quad	gx_forward_get_clipping_box
	.quad	clist_begin_typed_image
	.quad	clist_get_bits_rectangle
	.quad	gx_forward_map_color_rgb_alpha
	.quad	clist_create_compositor
	.quad	gx_forward_get_hardware_params
	.quad	gx_default_text_begin
	.quad	gx_default_finish_copydevice
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_forward_get_color_mapping_procs
	.quad	gx_forward_get_color_comp_index
	.quad	gx_forward_encode_color
	.quad	gx_forward_decode_color
	.quad	0
	.quad	clist_fill_rectangle_hl_color
	.quad	gx_default_include_color_space
	.quad	gx_default_fill_linear_color_scanline
	.quad	clist_fill_linear_color_trapezoid
	.quad	clist_fill_linear_color_triangle
	.quad	gx_forward_update_spot_equivalent_colors
	.quad	gx_forward_ret_devn_params
	.quad	clist_fillpage
	.quad	0
	.quad	0
	.quad	0
	.quad	clist_dev_spec_op
	.quad	clist_copy_planes
	.quad	gx_default_get_profile
	.quad	gx_default_set_graphics_type_tag
	.quad	clist_strip_copy_rop2
	.quad	clist_strip_tile_rect_devn
	.quad	clist_copy_alpha_hl_color
	.quad	clist_process_page
	.size	gs_clist_device_procs, 584

	.type	clist_io_procs_file_global,@object # @clist_io_procs_file_global
	.bss
	.globl	clist_io_procs_file_global
	.align	8
clist_io_procs_file_global:
	.quad	0
	.size	clist_io_procs_file_global, 8

	.type	clist_io_procs_memory_global,@object # @clist_io_procs_memory_global
	.globl	clist_io_procs_memory_global
	.align	8
clist_io_procs_memory_global:
	.quad	0
	.size	clist_io_procs_memory_global, 8

	.type	clist_imager_state_initial,@object # @clist_imager_state_initial
	.section	.rodata,"a",@progbits
	.globl	clist_imager_state_initial
	.align	8
clist_imager_state_initial:
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	1092616192              # float 10
	.long	1045425820              # float 0.20305866
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # float 0
	.zero	4
	.long	0                       # 0x0
	.long	1082479957              # float 4.16666651
	.long	0                       # float 0
	.long	0                       # float 0
	.long	3229963605              # float -4.16666651
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	252                     # 0xfc
	.short	65535                   # 0xffff
	.zero	2
	.long	16                      # 0x10
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.zero	8
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1065353216              # float 1
	.long	128                     # 0x80
	.long	128                     # 0x80
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1065353216              # float 1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_get_cmap_procs
	.quad	0
	.zero	16
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.zero	64
	.zero	512
	.quad	0
	.quad	0
	.zero	280
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	280
	.size	clist_imager_state_initial, 1616

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"clist_color_usage_array"
	.size	.L.str.1, 24

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"clist_finish_page"
	.size	.L.str.2, 18

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%d bands skipped out of %d\n"
	.size	.L.str.3, 28

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"clist_free_icc_table"
	.size	.L.str.4, 21

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"clist_icc_writetable"
	.size	.L.str.5, 21

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"./base/gxclist.c"
	.size	.L.str.6, 17

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"insufficient memory for icc table buffer"
	.size	.L.str.7, 41

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"clist_icc_addentry"
	.size	.L.str.8, 19

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"insufficient memory to allocate entry in icc table"
	.size	.L.str.9, 51

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"insufficient memory to allocate icc table"
	.size	.L.str.10, 42

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"clist_write_color_usage_array"
	.size	.L.str.11, 30

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"insufficient memory for color_usage_array"
	.size	.L.str.12, 42

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"clist_writer_transparency_push"
	.size	.L.str.13, 31

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"clist_writer_transparency_pop"
	.size	.L.str.14, 30

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"clist_make_accum_device"
	.size	.L.str.15, 24

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"w+"
	.size	.L.str.16, 3

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"clist_close"
	.size	.L.str.17, 12

	.type	clist_reset.cls_initial,@object # @clist_reset.cls_initial
	.section	.rodata,"a",@progbits
	.align	8
clist_reset.cls_initial:
	.zero	16,255
	.quad	gx_dc_type_data_none
	.zero	328
	.zero	8
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	8
	.zero	16,255
	.zero	1312
	.zero	16
	.long	252                     # 0xfc
	.short	0                       # 0x0
	.short	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	16383                   # 0x3fff
	.zero	4
	.zero	16
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	2147483647              # 0x7fffffff
	.long	2147483647              # 0x7fffffff
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.zero	4
	.size	clist_reset.cls_initial, 1808

	.type	.L.str.18,@object       # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"clist_icctable_entry"
	.size	.L.str.18, 21

	.type	clist_icctable_entry_reloc_ptrs,@object # @clist_icctable_entry_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
clist_icctable_entry_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	clist_icctable_entry_enum_ptrs
	.size	clist_icctable_entry_reloc_ptrs, 24

	.type	st_clist_icctable_entry,@object # @st_clist_icctable_entry
	.align	8
st_clist_icctable_entry:
	.long	48                      # 0x30
	.zero	4
	.quad	.L.str.18
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	clist_icctable_entry_reloc_ptrs
	.size	st_clist_icctable_entry, 64

	.type	clist_icctable_entry_enum_ptrs,@object # @clist_icctable_entry_enum_ptrs
	.align	2
clist_icctable_entry_enum_ptrs:
	.short	0                       # 0x0
	.short	24                      # 0x18
	.size	clist_icctable_entry_enum_ptrs, 4

	.type	.L.str.19,@object       # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"clist_icctable"
	.size	.L.str.19, 15

	.type	clist_icctable_reloc_ptrs,@object # @clist_icctable_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
clist_icctable_reloc_ptrs:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	clist_icctable_enum_ptrs
	.size	clist_icctable_reloc_ptrs, 24

	.type	st_clist_icctable,@object # @st_clist_icctable
	.align	8
st_clist_icctable:
	.long	32                      # 0x20
	.zero	4
	.quad	.L.str.19
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	clist_icctable_reloc_ptrs
	.size	st_clist_icctable, 64

	.type	clist_icctable_enum_ptrs,@object # @clist_icctable_enum_ptrs
	.align	2
clist_icctable_enum_ptrs:
	.short	0                       # 0x0
	.short	16                      # 0x10
	.short	0                       # 0x0
	.short	24                      # 0x18
	.size	clist_icctable_enum_ptrs, 8

	.type	.L.str.20,@object       # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"clist_writer_transparency_buffer"
	.size	.L.str.20, 33

	.type	clist_writer_cropping_buffer_reloc_ptrs,@object # @clist_writer_cropping_buffer_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
clist_writer_cropping_buffer_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	clist_writer_cropping_buffer_enum_ptrs
	.size	clist_writer_cropping_buffer_reloc_ptrs, 24

	.type	st_clist_writer_cropping_buffer,@object # @st_clist_writer_cropping_buffer
	.align	8
st_clist_writer_cropping_buffer:
	.long	24                      # 0x18
	.zero	4
	.quad	.L.str.20
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	clist_writer_cropping_buffer_reloc_ptrs
	.size	st_clist_writer_cropping_buffer, 64

	.type	clist_writer_cropping_buffer_enum_ptrs,@object # @clist_writer_cropping_buffer_enum_ptrs
	.align	2
clist_writer_cropping_buffer_enum_ptrs:
	.short	0                       # 0x0
	.short	16                      # 0x10
	.size	clist_writer_cropping_buffer_enum_ptrs, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
