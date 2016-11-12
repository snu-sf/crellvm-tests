	.text
	.file	"gdevprn.bc"
	.align	16, 0x90
	.type	device_printer_enum_ptrs,@function
device_printer_enum_ptrs:               # @device_printer_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	cmpq	$0, 17184(%rsi)
	je	.LBB0_2
# BB#1:                                 # %if.then
	movl	$st_device_clist, %r9d
	jmpq	*st_device_clist+32(%rip) # TAILCALL
.LBB0_2:                                # %if.else
	movl	$st_device_forward, %r9d
	jmpq	*st_device_forward+32(%rip) # TAILCALL
.Lfunc_end0:
	.size	device_printer_enum_ptrs, .Lfunc_end0-device_printer_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	device_printer_reloc_ptrs,@function
device_printer_reloc_ptrs:              # @device_printer_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	cmpq	$0, 17184(%rdi)
	je	.LBB1_2
# BB#1:                                 # %if.then
	movl	$st_device_clist, %edx
	jmpq	*st_device_clist+40(%rip) # TAILCALL
.LBB1_2:                                # %if.else
	movl	$st_device_forward, %edx
	jmpq	*st_device_forward+40(%rip) # TAILCALL
.Lfunc_end1:
	.size	device_printer_reloc_ptrs, .Lfunc_end1-device_printer_reloc_ptrs
	.cfi_endproc

	.globl	gdev_prn_open
	.align	16, 0x90
	.type	gdev_prn_open,@function
gdev_prn_open:                          # @gdev_prn_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	$0, 17176(%rbx)
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	gdev_prn_allocate
	testl	%eax, %eax
	js	.LBB2_7
# BB#1:                                 # %if.end
	cmpl	$0, 17156(%rbx)
	je	.LBB2_7
# BB#2:                                 # %if.then.1
	leaq	17176(%rbx), %r8
	cmpq	$0, (%r8)
	je	.LBB2_4
# BB#3:                                 # %if.then.i.i
	movl	$0, 17172(%rbx)
	jmp	.LBB2_6
.LBB2_4:                                # %if.end.i.i
	leaq	13056(%rbx), %rsi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	gx_device_open_output_file
	testl	%eax, %eax
	js	.LBB2_7
# BB#5:                                 # %if.end.4.i.i
	movl	$1, 17172(%rbx)
.LBB2_6:                                # %cleanup
	xorl	%eax, %eax
.LBB2_7:                                # %cleanup
	popq	%rbx
	retq
.Lfunc_end2:
	.size	gdev_prn_open, .Lfunc_end2-gdev_prn_open
	.cfi_endproc

	.globl	gdev_prn_output_page
	.align	16, 0x90
	.type	gdev_prn_output_page,@function
gdev_prn_output_page:                   # @gdev_prn_output_page
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	jmp	gdev_prn_output_page_aux # TAILCALL
.Lfunc_end3:
	.size	gdev_prn_output_page, .Lfunc_end3-gdev_prn_output_page
	.cfi_endproc

	.globl	gdev_prn_close
	.align	16, 0x90
	.type	gdev_prn_close,@function
gdev_prn_close:                         # @gdev_prn_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp2:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp3:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp4:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 80
.Ltmp7:
	.cfi_offset %rbx, -40
.Ltmp8:
	.cfi_offset %r14, -32
.Ltmp9:
	.cfi_offset %r15, -24
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	cmpq	$0, 17264(%rbx)
	je	.LBB4_8
# BB#1:                                 # %if.then.i
	movq	17256(%rbx), %rdi
	addq	$8, %rdi
	callq	gp_semaphore_wait
	leaq	13056(%rbx), %r14
	movq	%r14, %rdi
	callq	strlen
	movq	24(%rbx), %r8
	leaq	8(%rsp), %rdi
	leaq	(%rsp), %rsi
	movq	%r14, %rdx
	movl	%eax, %ecx
	callq	gx_parse_output_file_name
	testl	%eax, %eax
	js	.LBB4_3
# BB#2:                                 # %if.then.i
	movq	(%rsp), %rax
	testq	%rax, %rax
	jne	.LBB4_4
.LBB4_3:                                # %lor.lhs.false.i
	cmpl	$0, 17160(%rbx)
	je	.LBB4_5
.LBB4_4:                                # %if.then.i.17
	movq	17176(%rbx), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	gx_device_close_output_file
	movq	$0, 17176(%rbx)
.LBB4_5:                                # %gdev_prn_close_printer.exit
	cmpl	$0, 17284(%rbx)
	jne	.LBB4_7
# BB#6:                                 # %if.then.5.i
	movl	$0, 17284(%rbx)
.LBB4_7:                                # %if.end.i
	movq	17264(%rbx), %rdi
	movq	17272(%rbx), %rsi
	movl	$1, %edx
	callq	teardown_device_and_mem_for_thread
	movq	$0, 17264(%rbx)
.LBB4_8:                                # %prn_finish_bg_print.exit
	movq	17256(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB4_10
# BB#9:                                 # %if.then
	callq	gx_semaphore_free
	movq	$0, 17256(%rbx)
.LBB4_10:                               # %if.end
	movq	17200(%rbx), %r14
	testq	%r14, %r14
	jne	.LBB4_12
# BB#11:                                # %cond.true.i
	movq	24(%rbx), %rax
	movq	200(%rax), %r14
.LBB4_12:                               # %cond.end.i
	cmpq	$0, 17184(%rbx)
	je	.LBB4_15
# BB#13:                                # %if.then.i.i
	movq	%rbx, %rdi
	callq	*gs_clist_device_procs+32(%rip)
	movq	17192(%rbx), %r15
	movq	$0, 17192(%rbx)
	movq	$0, 17184(%rbx)
	cmpl	$0, 1880(%rbx)
	js	.LBB4_16
# BB#14:                                # %if.then.5.i.i
	movq	24(%rbx), %rdi
	movq	10216(%rbx), %rsi
	movl	$.L.str.27, %edx
	callq	*24(%rdi)
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.i.i
	movq	1744(%rbx), %r15
	movq	$0, 1744(%rbx)
.LBB4_16:                               # %if.end.8.i.i
	cmpq	$0, 17888(%rbx)
	je	.LBB4_18
# BB#17:                                # %if.then.11.i.i
	leaq	17888(%rbx), %rsi
	leaq	1144(%rbx), %rdi
	movl	$584, %edx              # imm = 0x248
	callq	memcpy
.LBB4_18:                               # %gdev_prn_free_memory.exit
	movq	$0, 17888(%rbx)
	movl	$.L.str.1, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*24(%r14)
	movq	17176(%rbx), %rdx
	xorl	%ebp, %ebp
	testq	%rdx, %rdx
	je	.LBB4_20
# BB#19:                                # %if.then.6
	leaq	13056(%rbx), %rsi
	movq	%rbx, %rdi
	callq	gx_device_close_output_file
	movl	%eax, %ebp
	movq	$0, 17176(%rbx)
.LBB4_20:                               # %if.end.10
	movq	17296(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB4_22
# BB#21:                                # %if.then.12
	callq	gx_saved_pages_list_free
	movq	$0, 17296(%rbx)
.LBB4_22:                               # %if.end.15
	movl	%ebp, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gdev_prn_close, .Lfunc_end4-gdev_prn_close
	.cfi_endproc

	.globl	gdev_prn_get_params
	.align	16, 0x90
	.type	gdev_prn_get_params,@function
gdev_prn_get_params:                    # @gdev_prn_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 24
	subq	$56, %rsp
.Ltmp13:
	.cfi_def_cfa_offset 80
.Ltmp14:
	.cfi_offset %rbx, -24
.Ltmp15:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	gx_default_get_params
	testl	%eax, %eax
	js	.LBB5_16
# BB#1:                                 # %lor.lhs.false
	movl	17168(%rbx), %eax
	testl	%eax, %eax
	js	.LBB5_6
# BB#2:                                 # %land.lhs.true
	je	.LBB5_4
# BB#3:                                 # %cond.true
	leaq	17164(%rbx), %rdx
	movl	$.L.str.2, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	jmp	.LBB5_5
.LBB5_4:                                # %cond.false
	movl	$.L.str.2, %esi
	movq	%r14, %rdi
	callq	param_write_null
.LBB5_5:                                # %cond.end
	testl	%eax, %eax
	js	.LBB5_16
.LBB5_6:                                # %lor.lhs.false.6
	leaq	17288(%rbx), %rdx
	movl	$.L.str.3, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB5_16
# BB#7:                                 # %lor.lhs.false.9
	leaq	17156(%rbx), %rdx
	movl	$.L.str.4, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB5_16
# BB#8:                                 # %lor.lhs.false.12
	leaq	17252(%rbx), %rdx
	movl	$.L.str.5, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB5_16
# BB#9:                                 # %lor.lhs.false.15
	leaq	17160(%rbx), %rdx
	movl	$.L.str.6, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB5_16
# BB#10:                                # %if.end
	cmpq	$0, clist_io_procs_file_global(%rip)
	je	.LBB5_11
# BB#12:                                # %if.end.20
	cmpl	$0, 17152(%rbx)
	movl	$.L.str.8, %ecx
	movl	$.L.str.7, %eax
	cmoveq	%rcx, %rax
	setne	%cl
	movzbl	%cl, %ecx
	leal	4(%rcx,%rcx), %ecx
	jmp	.LBB5_13
.LBB5_11:                               # %if.end.20.thread
	movl	$1, 17152(%rbx)
	movl	$.L.str.7, %eax
	movl	$6, %ecx
.LBB5_13:                               # %if.end.27
	movq	%rax, 24(%rsp)
	movl	%ecx, 32(%rsp)
	movl	$0, 36(%rsp)
	leaq	24(%rsp), %rdx
	movl	$.L.str.9, %esi
	movq	%r14, %rdi
	callq	param_write_string
	testl	%eax, %eax
	js	.LBB5_16
# BB#14:                                # %if.end.31
	addq	$13056, %rbx            # imm = 0x3300
	movq	%rbx, 40(%rsp)
	movq	%rbx, %rdi
	callq	strlen
	movl	%eax, 48(%rsp)
	movl	$0, 52(%rsp)
	leaq	40(%rsp), %rdx
	movl	$.L.str.10, %esi
	movq	%r14, %rdi
	callq	param_write_string
	testl	%eax, %eax
	js	.LBB5_16
# BB#15:                                # %if.end.42
	movq	$.L.str.11, 8(%rsp)
	movq	$0, 16(%rsp)
	leaq	8(%rsp), %rdx
	movl	$.L.str.12, %esi
	movq	%r14, %rdi
	callq	param_write_string
.LBB5_16:                               # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end5:
	.size	gdev_prn_get_params, .Lfunc_end5-gdev_prn_get_params
	.cfi_endproc

	.globl	gdev_prn_put_params
	.align	16, 0x90
	.type	gdev_prn_put_params,@function
gdev_prn_put_params:                    # @gdev_prn_put_params
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
	subq	$200, %rsp
.Ltmp22:
	.cfi_def_cfa_offset 256
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
	movq	%rsi, %rbp
	movq	%rdi, %r15
	movl	84(%r15), %eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movl	17156(%r15), %eax
	movl	%eax, 156(%rsp)
	movl	17160(%r15), %eax
	movl	%eax, 152(%rsp)
	movl	1056(%r15), %r12d
	movl	17252(%r15), %eax
	movl	%eax, 148(%rsp)
	movl	832(%r15), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movl	836(%r15), %eax
	movl	%eax, 16(%rsp)          # 4-byte Spill
	movl	17288(%r15), %eax
	movl	%eax, 140(%rsp)
	leaq	32(%rsp), %rdi
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	movl	$16, %edx
	callq	memset
	movq	1096(%r15), %rax
	movq	%rax, 128(%rsp)
	movups	1064(%r15), %xmm0
	movups	1080(%r15), %xmm1
	movaps	%xmm1, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
	leaq	156(%rsp), %rdx
	movl	$.L.str.4, %esi
	movq	%rbp, %rdi
	callq	param_read_bool
	movl	%eax, %ebx
	cmpl	$2, %ebx
	jb	.LBB6_2
# BB#1:                                 # %sw.default
	movq	(%rbp), %rax
	movl	$.L.str.4, %esi
	movq	%rbp, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %r13d
.LBB6_2:                                # %sw.epilog
	leaq	152(%rsp), %rdx
	movl	$.L.str.6, %esi
	movq	%rbp, %rdi
	callq	param_read_bool
	movl	%eax, %ebx
	cmpl	$2, %ebx
	jb	.LBB6_4
# BB#3:                                 # %sw.default.8
	movq	(%rbp), %rax
	movl	$.L.str.6, %esi
	movq	%rbp, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %r13d
.LBB6_4:                                # %sw.epilog.13
	cmpl	$0, 17168(%r15)
	js	.LBB6_5
# BB#6:                                 # %if.then
	leaq	144(%rsp), %rdx
	movl	$.L.str.2, %esi
	movq	%rbp, %rdi
	callq	param_read_bool
	cmpl	$1, %eax
	jne	.LBB6_8
# BB#7:
	movl	$-1, 24(%rsp)           # 4-byte Folded Spill
	jmp	.LBB6_12
.LBB6_5:
	movl	$-1, 24(%rsp)           # 4-byte Folded Spill
	jmp	.LBB6_12
.LBB6_8:                                # %if.then
	testl	%eax, %eax
	jne	.LBB6_10
# BB#9:                                 # %sw.bb.15
	movl	$1, 24(%rsp)            # 4-byte Folded Spill
	jmp	.LBB6_12
.LBB6_10:                               # %sw.default.16
	movl	$.L.str.2, %esi
	movq	%rbp, %rdi
	callq	param_read_null
	movl	%eax, %ebx
	movl	$0, 24(%rsp)            # 4-byte Folded Spill
	testl	%ebx, %ebx
	je	.LBB6_12
# BB#11:                                # %if.end
	movq	(%rbp), %rax
	movl	$.L.str.2, %esi
	movq	%rbp, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	$-1, 24(%rsp)           # 4-byte Folded Spill
	movl	%ebx, %r13d
.LBB6_12:                               # %if.end.25
	leaq	64(%rsp), %rdx
	movl	$.L.str.9, %esi
	movq	%rbp, %rdi
	callq	param_read_string
	movl	%eax, %r14d
	cmpl	$1, %r14d
	je	.LBB6_19
# BB#13:                                # %if.end.25
	testl	%r14d, %r14d
	jne	.LBB6_18
# BB#14:                                # %sw.bb.27
	cmpl	$2, 72(%rsp)
	jb	.LBB6_18
# BB#15:                                # %land.lhs.true
	movq	64(%rsp), %rax
	movzbl	(%rax), %eax
	cmpl	$109, %eax
	je	.LBB6_20
# BB#16:                                # %lor.lhs.false
	movzbl	%al, %eax
	cmpl	$102, %eax
	jne	.LBB6_18
# BB#17:                                # %lor.lhs.false
	movq	clist_io_procs_file_global(%rip), %rax
	testq	%rax, %rax
	jne	.LBB6_20
.LBB6_18:                               # %sw.default.41
	movq	(%rbp), %rax
	movl	$.L.str.9, %esi
	movq	%rbp, %rdi
	movl	%r14d, %edx
	callq	*56(%rax)
	movl	%r14d, %r13d
.LBB6_19:                               # %sw.bb.45
	movq	$0, 64(%rsp)
.LBB6_20:                               # %sw.epilog.47
	leaq	80(%rsp), %rdx
	movl	$.L.str.10, %esi
	movq	%rbp, %rdi
	callq	param_read_string
	movl	%eax, %ebx
	cmpl	$1, %ebx
	je	.LBB6_26
# BB#21:                                # %sw.epilog.47
	testl	%ebx, %ebx
	jne	.LBB6_25
# BB#22:                                # %sw.bb.49
	cmpl	$0, 960(%r15)
	je	.LBB6_24
# BB#23:                                # %land.lhs.true.50
	movq	80(%rsp), %rbx
	movl	88(%rsp), %r14d
	movl	%r12d, 12(%rsp)         # 4-byte Spill
	leaq	13056(%r15), %r12
	movq	%r12, %rdi
	callq	strlen
	movq	%rbx, %rdi
	movl	%r14d, %esi
	movq	%r12, %rdx
	movl	12(%rsp), %r12d         # 4-byte Reload
	movl	%eax, %ecx
	callq	bytes_compare
	movl	$-7, %ebx
	testl	%eax, %eax
	je	.LBB6_24
.LBB6_25:                               # %sw.default.66
	movq	(%rbp), %rax
	movl	$.L.str.10, %esi
	movq	%rbp, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %r13d
.LBB6_26:                               # %sw.bb.70
	movq	$0, 80(%rsp)
.LBB6_27:                               # %sw.epilog.72
	movq	(%rbp), %rax
	leaq	48(%rsp), %rdx
	movl	$.L.str.13, %esi
	movl	$1, %ecx
	movq	%rbp, %rdi
	callq	*8(%rax)
	movl	%eax, %ebx
	cmpl	$1, %ebx
	je	.LBB6_31
# BB#28:                                # %sw.epilog.72
	testl	%ebx, %ebx
	jne	.LBB6_30
# BB#29:                                # %sw.bb.75
	movq	(%rbp), %rax
	leaq	48(%rsp), %rdx
	movl	$.L.str.13, %esi
	movq	%rbp, %rdi
	callq	*16(%rax)
	jmp	.LBB6_31
.LBB6_30:                               # %sw.default.78
	movq	(%rbp), %rax
	movl	$.L.str.13, %esi
	movq	%rbp, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %r13d
.LBB6_31:                               # %sw.epilog.83
	movq	(%rbp), %rax
	leaq	48(%rsp), %rdx
	movl	$.L.str.14, %esi
	movl	$1, %ecx
	movq	%rbp, %rdi
	callq	*8(%rax)
	movl	%eax, %ebx
	cmpl	$1, %ebx
	je	.LBB6_35
# BB#32:                                # %sw.epilog.83
	testl	%ebx, %ebx
	jne	.LBB6_34
# BB#33:                                # %sw.bb.87
	movq	(%rbp), %rax
	leaq	48(%rsp), %rdx
	movl	$.L.str.14, %esi
	movq	%rbp, %rdi
	callq	*16(%rax)
	jmp	.LBB6_35
.LBB6_34:                               # %sw.default.91
	movq	(%rbp), %rax
	movl	$.L.str.14, %esi
	movq	%rbp, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %r13d
.LBB6_35:                               # %sw.epilog.96
	leaq	140(%rsp), %rdx
	movl	$.L.str.3, %esi
	movq	%rbp, %rdi
	callq	param_read_int
	movl	%eax, %ebx
	cmpl	$2, %ebx
	jb	.LBB6_37
# BB#36:                                # %sw.default.98
	movq	(%rbp), %rax
	movl	$.L.str.3, %esi
	movq	%rbp, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %r13d
.LBB6_37:                               # %sw.epilog.103
	leaq	148(%rsp), %rdx
	movl	$.L.str.5, %esi
	movq	%rbp, %rdi
	callq	param_read_bool
	movl	%eax, %ebx
	cmpl	$2, %ebx
	jb	.LBB6_39
# BB#38:                                # %sw.default.105
	movq	(%rbp), %rax
	movl	$.L.str.5, %esi
	movq	%rbp, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %r13d
.LBB6_39:                               # %sw.epilog.110
	leaq	32(%rsp), %rdx
	movl	$.L.str.12, %esi
	movq	%rbp, %rdi
	callq	param_read_string
	movl	%eax, %ebx
	cmpl	$2, %ebx
	jb	.LBB6_41
# BB#40:                                # %sw.default.112
	movq	(%rbp), %rax
	movl	$.L.str.12, %esi
	movq	%rbp, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %r13d
.LBB6_41:                               # %sw.epilog.117
	testl	%r13d, %r13d
	js	.LBB6_63
# BB#42:                                # %if.end.121
	movl	$0, 84(%r15)
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	gx_default_put_params
	movl	%eax, %r13d
	movl	28(%rsp), %eax          # 4-byte Reload
	movl	%eax, 84(%r15)
	testl	%r13d, %r13d
	js	.LBB6_63
# BB#43:                                # %if.end.128
	movl	156(%rsp), %eax
	movl	%eax, 17156(%r15)
	movl	152(%rsp), %eax
	movl	%eax, 17160(%r15)
	movl	148(%rsp), %eax
	movl	%eax, 17252(%r15)
	movl	24(%rsp), %ecx          # 4-byte Reload
	testl	%ecx, %ecx
	js	.LBB6_45
# BB#44:                                # %if.then.134
	movl	144(%rsp), %eax
	movl	%eax, 17164(%r15)
	movl	%ecx, 17168(%r15)
.LBB6_45:                               # %if.end.136
	movl	140(%rsp), %eax
	movl	%eax, 17288(%r15)
	movq	64(%rsp), %rax
	testq	%rax, %rax
	je	.LBB6_47
# BB#46:                                # %if.then.141
	movzbl	(%rax), %eax
	cmpl	$109, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 17152(%r15)
.LBB6_47:                               # %if.end.147
	leaq	96(%rsp), %rsi
	movq	%r15, %rdi
	movl	20(%rsp), %edx          # 4-byte Reload
	movl	16(%rsp), %ecx          # 4-byte Reload
	movl	%r12d, %r8d
	callq	gdev_prn_maybe_realloc_memory
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB6_63
# BB#48:                                # %if.end.152
	movq	80(%rsp), %rbx
	testq	%rbx, %rbx
	je	.LBB6_54
# BB#49:                                # %land.lhs.true.156
	movl	88(%rsp), %ebp
	leaq	13056(%r15), %r14
	movq	%r14, %rdi
	callq	strlen
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movq	%r14, %rdx
	movl	%eax, %ecx
	callq	bytes_compare
	testl	%eax, %eax
	je	.LBB6_54
# BB#50:                                # %if.then.167
	movq	17176(%r15), %rdx
	testq	%rdx, %rdx
	je	.LBB6_52
# BB#51:                                # %if.then.170
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	gx_device_close_output_file
.LBB6_52:                               # %if.end.175
	movq	$0, 17176(%r15)
	movl	88(%rsp), %edx
	cmpq	$4095, %rdx             # imm = 0xFFF
	movl	$-13, %r13d
	ja	.LBB6_63
# BB#53:                                # %if.end.182
	movq	80(%rsp), %rsi
	movq	%r14, %rdi
	callq	memcpy
	movl	88(%rsp), %eax
	movb	$0, (%r14,%rax)
.LBB6_54:                               # %if.end.192
	cmpl	$0, 84(%r15)
	je	.LBB6_60
# BB#55:                                # %if.end.192
	movl	156(%rsp), %eax
	testl	%eax, %eax
	je	.LBB6_60
# BB#56:                                # %if.then.197
	cmpq	$0, 17176(%r15)
	je	.LBB6_58
# BB#57:                                # %if.then.i.i
	movl	$0, 17172(%r15)
	jmp	.LBB6_60
.LBB6_24:                               # %if.end.61
	movq	24(%r15), %r8
	movq	80(%rsp), %rdx
	movl	88(%rsp), %ecx
	leaq	168(%rsp), %rdi
	leaq	160(%rsp), %rsi
	callq	gx_parse_output_file_name
	jmp	.LBB6_27
.LBB6_58:                               # %if.end.i.i
	leaq	17176(%r15), %r8
	leaq	13056(%r15), %rsi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	%r15, %rdi
	callq	gx_device_open_output_file
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB6_63
# BB#59:                                # %if.end.4.i.i
	movl	$1, 17172(%r15)
.LBB6_60:                               # %if.end.203
	movq	32(%rsp), %rsi
	xorl	%r13d, %r13d
	testq	%rsi, %rsi
	je	.LBB6_63
# BB#61:                                # %land.lhs.true.207
	movl	40(%rsp), %edx
	testl	%edx, %edx
	je	.LBB6_63
# BB#62:                                # %if.then.211
	movq	%r15, %rdi
	callq	gx_saved_pages_param_process
	movl	%eax, %r13d
.LBB6_63:                               # %cleanup
	movl	%r13d, %eax
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gdev_prn_put_params, .Lfunc_end6-gdev_prn_put_params
	.cfi_endproc

	.globl	gdev_prn_dev_spec_op
	.align	16, 0x90
	.type	gdev_prn_dev_spec_op,@function
gdev_prn_dev_spec_op:                   # @gdev_prn_dev_spec_op
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$16, %esi
	jne	.LBB7_2
# BB#1:                                 # %return
	movl	$1, %eax
	retq
.LBB7_2:                                # %if.end
	jmp	gx_default_dev_spec_op  # TAILCALL
.Lfunc_end7:
	.size	gdev_prn_dev_spec_op, .Lfunc_end7-gdev_prn_dev_spec_op
	.cfi_endproc

	.globl	gdev_prn_bg_output_page
	.align	16, 0x90
	.type	gdev_prn_bg_output_page,@function
gdev_prn_bg_output_page:                # @gdev_prn_bg_output_page
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%ecx, %ecx
	movl	$1, %r8d
	jmp	gdev_prn_output_page_aux # TAILCALL
.Lfunc_end8:
	.size	gdev_prn_bg_output_page, .Lfunc_end8-gdev_prn_bg_output_page
	.cfi_endproc

	.globl	gdev_prn_allocate_memory
	.align	16, 0x90
	.type	gdev_prn_allocate_memory,@function
gdev_prn_allocate_memory:               # @gdev_prn_allocate_memory
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%r8d, %r8d
	jmp	gdev_prn_allocate       # TAILCALL
.Lfunc_end9:
	.size	gdev_prn_allocate_memory, .Lfunc_end9-gdev_prn_allocate_memory
	.cfi_endproc

	.globl	gdev_prn_open_printer
	.align	16, 0x90
	.type	gdev_prn_open_printer,@function
gdev_prn_open_printer:                  # @gdev_prn_open_printer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbx, -16
	movl	%esi, %eax
	movq	%rdi, %rbx
	cmpq	$0, 17176(%rbx)
	je	.LBB10_2
# BB#1:                                 # %if.then.i
	movl	$0, 17172(%rbx)
	jmp	.LBB10_4
.LBB10_2:                               # %if.end.i
	leaq	17176(%rbx), %r8
	leaq	13056(%rbx), %rsi
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	gx_device_open_output_file
	testl	%eax, %eax
	js	.LBB10_5
# BB#3:                                 # %if.end.4.i
	movl	$1, 17172(%rbx)
.LBB10_4:                               # %gdev_prn_open_printer_seekable.exit
	xorl	%eax, %eax
.LBB10_5:                               # %gdev_prn_open_printer_seekable.exit
	popq	%rbx
	retq
.Lfunc_end10:
	.size	gdev_prn_open_printer, .Lfunc_end10-gdev_prn_open_printer
	.cfi_endproc

	.globl	gdev_prn_free_memory
	.align	16, 0x90
	.type	gdev_prn_free_memory,@function
gdev_prn_free_memory:                   # @gdev_prn_free_memory
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp33:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp34:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp35:
	.cfi_def_cfa_offset 48
.Ltmp36:
	.cfi_offset %rbx, -40
.Ltmp37:
	.cfi_offset %r12, -32
.Ltmp38:
	.cfi_offset %r14, -24
.Ltmp39:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	17200(%rbx), %r14
	testq	%r14, %r14
	jne	.LBB11_2
# BB#1:                                 # %cond.true
	movq	24(%rbx), %rax
	movq	200(%rax), %r14
.LBB11_2:                               # %cond.end
	cmpq	$0, 17184(%rbx)
	je	.LBB11_5
# BB#3:                                 # %if.then.i
	movq	%rbx, %rdi
	callq	*gs_clist_device_procs+32(%rip)
	movq	17192(%rbx), %r15
	movq	$0, 17192(%rbx)
	movq	$0, 17184(%rbx)
	cmpl	$0, 1880(%rbx)
	js	.LBB11_6
# BB#4:                                 # %if.then.5.i
	movq	24(%rbx), %rdi
	movq	10216(%rbx), %rsi
	movl	$.L.str.27, %edx
	callq	*24(%rdi)
	jmp	.LBB11_6
.LBB11_5:                               # %if.else.i
	movq	1744(%rbx), %r15
	movq	$0, 1744(%rbx)
.LBB11_6:                               # %if.end.8.i
	leaq	17888(%rbx), %r12
	cmpq	$0, 17888(%rbx)
	je	.LBB11_8
# BB#7:                                 # %if.then.11.i
	addq	$1144, %rbx             # imm = 0x478
	movl	$584, %edx              # imm = 0x248
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	memcpy
.LBB11_8:                               # %gdev_prn_tear_down.exit
	movq	$0, (%r12)
	movl	$.L.str.1, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*24(%r14)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end11:
	.size	gdev_prn_free_memory, .Lfunc_end11-gdev_prn_free_memory
	.cfi_endproc

	.globl	gdev_prn_forwarding_dev_spec_op
	.align	16, 0x90
	.type	gdev_prn_forwarding_dev_spec_op,@function
gdev_prn_forwarding_dev_spec_op:        # @gdev_prn_forwarding_dev_spec_op
	.cfi_startproc
# BB#0:                                 # %entry
	movq	18408(%rdi), %rax
	testq	%rax, %rax
	je	.LBB12_1
# BB#3:                                 # %if.then
	jmpq	*%rax                   # TAILCALL
.LBB12_1:                               # %if.end
	cmpl	$16, %esi
	jne	.LBB12_4
# BB#2:                                 # %cleanup
	movl	$1, %eax
	retq
.LBB12_4:                               # %if.end.i
	jmp	gx_default_dev_spec_op  # TAILCALL
.Lfunc_end12:
	.size	gdev_prn_forwarding_dev_spec_op, .Lfunc_end12-gdev_prn_forwarding_dev_spec_op
	.cfi_endproc

	.align	16, 0x90
	.type	gdev_prn_allocate,@function
gdev_prn_allocate:                      # @gdev_prn_allocate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp41:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp42:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp43:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp44:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp45:
	.cfi_def_cfa_offset 56
	subq	$280, %rsp              # imm = 0x118
.Ltmp46:
	.cfi_def_cfa_offset 336
.Ltmp47:
	.cfi_offset %rbx, -56
.Ltmp48:
	.cfi_offset %r12, -48
.Ltmp49:
	.cfi_offset %r13, -40
.Ltmp50:
	.cfi_offset %r14, -32
.Ltmp51:
	.cfi_offset %r15, -24
.Ltmp52:
	.cfi_offset %rbp, -16
	movl	%r8d, %r15d
	movl	%r15d, 44(%rsp)         # 4-byte Spill
	movl	%ecx, 28(%rsp)          # 4-byte Spill
	movl	%edx, 24(%rsp)          # 4-byte Spill
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rdi, %r14
	movq	1096(%r14), %rax
	movq	%rax, 272(%rsp)
	movups	1064(%r14), %xmm0
	movups	1080(%r14), %xmm1
	movaps	%xmm1, 256(%rsp)
	movaps	%xmm0, 240(%rsp)
	movq	17200(%r14), %rax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	testq	%rax, %rax
	jne	.LBB13_2
# BB#1:                                 # %cond.true
	movq	24(%r14), %rax
	movq	200(%rax), %rax
	movq	%rax, 144(%rsp)         # 8-byte Spill
.LBB13_2:                               # %cond.end
	testl	%r15d, %r15d
	je	.LBB13_3
# BB#4:                                 # %if.then
	cmpq	$0, 17184(%r14)
	je	.LBB13_7
# BB#5:                                 # %if.then.i
	movq	%r14, %rdi
	callq	*gs_clist_device_procs+32(%rip)
	movq	17192(%r14), %rax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movq	$0, 17192(%r14)
	movq	$0, 17184(%r14)
	movl	$1, %ebx
	cmpl	$0, 1880(%r14)
	js	.LBB13_8
# BB#6:                                 # %if.then.5.i
	movq	24(%r14), %rdi
	movq	10216(%r14), %rsi
	movl	$.L.str.27, %edx
	callq	*24(%rdi)
	jmp	.LBB13_8
.LBB13_3:                               # %cond.end.if.end_crit_edge
	leaq	17888(%r14), %rax
	leaq	17184(%r14), %rcx
	movq	%rcx, 112(%rsp)         # 8-byte Spill
	xorl	%ecx, %ecx
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	xorl	%ebx, %ebx
	jmp	.LBB13_11
.LBB13_7:                               # %if.else.i
	movq	1744(%r14), %rax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movq	$0, 1744(%r14)
	xorl	%ebx, %ebx
.LBB13_8:                               # %if.end.8.i
	leaq	17888(%r14), %rax
	cmpq	$0, 17888(%r14)
	je	.LBB13_10
# BB#9:                                 # %if.then.11.i
	leaq	1144(%r14), %rdi
	movl	$584, %edx              # imm = 0x248
	movq	%rax, %rsi
	movq	%rax, %rbp
	callq	memcpy
	movq	%rbp, %rax
.LBB13_10:                              # %gdev_prn_tear_down.exit
	leaq	17184(%r14), %rcx
	movq	%rcx, 112(%rsp)         # 8-byte Spill
	movq	$0, (%rax)
.LBB13_11:                              # %if.end
	movl	%ebx, 40(%rsp)          # 4-byte Spill
	movq	%rax, 8(%rsp)           # 8-byte Spill
	leaq	1064(%r14), %rcx
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	leaq	1144(%r14), %rsi
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movl	$584, %edx              # imm = 0x248
	movq	%rax, %rdi
	callq	memcpy
	cmpl	$1, %r15d
	movl	$1, %eax
	sbbl	$-1, %eax
	movl	%eax, 68(%rsp)          # 4-byte Spill
	leaq	1728(%r14), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	leaq	12984(%r14), %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	leaq	1736(%r14), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	leaq	1792(%r14), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movslq	28(%rsp), %rax          # 4-byte Folded Reload
	movq	%rax, 56(%rsp)          # 8-byte Spill
	xorl	%r12d, %r12d
	movl	$195948557, 52(%rsp)    # 4-byte Folded Spill
                                        # imm = 0xBADF00D
	movl	$195948557, 48(%rsp)    # 4-byte Folded Spill
                                        # imm = 0xBADF00D
	movl	$1, %r13d
	.align	16, 0x90
.LBB13_12:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_53 Depth 2
                                        #     Child Loop BB13_63 Depth 2
	testl	%r15d, %r15d
	je	.LBB13_13
# BB#14:                                # %if.then.8
                                        #   in Loop: Header=BB13_12 Depth=1
	cmpl	$2, %r13d
	jne	.LBB13_15
# BB#17:                                # %sw.bb.12
                                        #   in Loop: Header=BB13_12 Depth=1
	movq	%r12, 128(%rsp)         # 8-byte Spill
	movq	272(%rsp), %rax
	movq	120(%rsp), %rcx         # 8-byte Reload
	movq	%rax, 32(%rcx)
	movaps	240(%rsp), %xmm0
	movaps	256(%rsp), %xmm1
	movups	%xmm1, 16(%rcx)
	movups	%xmm0, (%rcx)
	movl	52(%rsp), %eax          # 4-byte Reload
	movl	%eax, 832(%r14)
	movl	48(%rsp), %eax          # 4-byte Reload
	jmp	.LBB13_18
	.align	16, 0x90
.LBB13_13:                              #   in Loop: Header=BB13_12 Depth=1
	movq	%r12, 128(%rsp)         # 8-byte Spill
	jmp	.LBB13_19
	.align	16, 0x90
.LBB13_15:                              # %if.then.8
                                        #   in Loop: Header=BB13_12 Depth=1
	movq	%r12, 128(%rsp)         # 8-byte Spill
	cmpl	$1, %r13d
	jne	.LBB13_19
# BB#16:                                # %sw.bb
                                        #   in Loop: Header=BB13_12 Depth=1
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	32(%rcx), %rax
	movq	120(%rsp), %rdx         # 8-byte Reload
	movq	%rax, 32(%rdx)
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	movups	%xmm1, 16(%rdx)
	movups	%xmm0, (%rdx)
	movl	832(%r14), %eax
	movl	%eax, 52(%rsp)          # 4-byte Spill
	movl	24(%rsp), %eax          # 4-byte Reload
	movl	%eax, 832(%r14)
	movl	836(%r14), %eax
	movl	%eax, 48(%rsp)          # 4-byte Spill
	movl	28(%rsp), %eax          # 4-byte Reload
.LBB13_18:                              # %if.end.16
                                        #   in Loop: Header=BB13_12 Depth=1
	movl	%eax, 836(%r14)
.LBB13_19:                              # %if.end.16
                                        #   in Loop: Header=BB13_12 Depth=1
	xorl	%esi, %esi
	movl	$11240, %edx            # imm = 0x2BE8
	movq	72(%rsp), %rdi          # 8-byte Reload
	callq	memset
	movl	836(%r14), %ecx
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	leaq	168(%rsp), %rdi
	movq	%r14, %rsi
	callq	*12992(%r14)
	movl	%eax, %ebp
	shrl	$31, %ebp
	xorl	$1, %ebp
	movq	176(%rsp), %r12
	addq	168(%rsp), %r12
	cmpl	$0, 1056(%r14)
	je	.LBB13_23
# BB#20:                                # %if.then.22
                                        #   in Loop: Header=BB13_12 Depth=1
	movl	832(%r14), %eax
	testl	%eax, %eax
	movl	$1, %ecx
	cmovlel	%ecx, %eax
	imull	$120, %eax, %eax
	sarl	$3, %eax
	movslq	%eax, %rcx
	movq	%r12, %rax
	notq	%rax
	xorl	%edx, %edx
	divq	%rcx
	cmpq	%rax, 56(%rsp)          # 8-byte Folded Reload
	jae	.LBB13_21
# BB#22:                                # %if.then.37
                                        #   in Loop: Header=BB13_12 Depth=1
	movslq	836(%r14), %rax
	imulq	%rcx, %rax
	addq	%rax, %r12
	jmp	.LBB13_23
	.align	16, 0x90
.LBB13_21:                              #   in Loop: Header=BB13_12 Depth=1
	xorl	%ebp, %ebp
.LBB13_23:                              # %if.end.43
                                        #   in Loop: Header=BB13_12 Depth=1
	movq	120(%rsp), %rcx         # 8-byte Reload
	movq	32(%rcx), %rax
	movq	%rax, 224(%rsp)
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	movaps	%xmm1, 208(%rsp)
	movaps	%xmm0, 192(%rsp)
	movq	$0, 200(%rsp)
	movq	%r14, %rdi
	leaq	192(%rsp), %rsi
	callq	*13016(%r14)
	cmpl	$0, 17232(%r14)
	je	.LBB13_26
# BB#24:                                # %land.lhs.true
                                        #   in Loop: Header=BB13_12 Depth=1
	movq	216(%rsp), %rax
	testq	%rax, %rax
	je	.LBB13_26
# BB#25:                                # %if.then.49
                                        #   in Loop: Header=BB13_12 Depth=1
	movq	%rax, 200(%rsp)
	movl	$1, 156(%rsp)           # 4-byte Folded Spill
	jmp	.LBB13_30
	.align	16, 0x90
.LBB13_26:                              # %if.else.53
                                        #   in Loop: Header=BB13_12 Depth=1
	movl	$1, 156(%rsp)           # 4-byte Folded Spill
	cmpq	$0, 200(%rsp)
	jne	.LBB13_30
# BB#27:                                # %if.then.57
                                        #   in Loop: Header=BB13_12 Depth=1
	movq	216(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB13_29
# BB#28:                                # %if.then.62
                                        #   in Loop: Header=BB13_12 Depth=1
	movq	%rax, 200(%rsp)
	jmp	.LBB13_30
.LBB13_29:                              # %if.else.66
                                        #   in Loop: Header=BB13_12 Depth=1
	movq	1072(%r14), %rax
	movq	%rax, 200(%rsp)
	movl	$0, 156(%rsp)           # 4-byte Folded Spill
	.align	16, 0x90
.LBB13_30:                              # %if.end.72
                                        #   in Loop: Header=BB13_12 Depth=1
	cmpl	$1, %r13d
	movl	%ebx, %edx
	jg	.LBB13_35
# BB#31:                                # %if.else.76
                                        #   in Loop: Header=BB13_12 Depth=1
	movb	$1, %al
	cmpl	$1, 228(%rsp)
	je	.LBB13_34
# BB#32:                                # %lor.lhs.false
                                        #   in Loop: Header=BB13_12 Depth=1
	cmpq	$0, 17296(%r14)
	jne	.LBB13_34
# BB#33:                                # %lor.lhs.false.81
                                        #   in Loop: Header=BB13_12 Depth=1
	testl	%ebp, %ebp
	sete	%cl
	cmpq	192(%rsp), %r12
	setae	%al
	orb	%cl, %al
	.align	16, 0x90
.LBB13_34:                              # %lor.end
                                        #   in Loop: Header=BB13_12 Depth=1
	movzbl	%al, %edx
.LBB13_35:                              # %if.end.85
                                        #   in Loop: Header=BB13_12 Depth=1
	testl	%edx, %edx
	jne	.LBB13_47
# BB#36:                                # %if.then.87
                                        #   in Loop: Header=BB13_12 Depth=1
	testl	%r15d, %r15d
	je	.LBB13_38
# BB#37:                                # %cond.true.89
                                        #   in Loop: Header=BB13_12 Depth=1
	movl	$.L.str.20, %ecx
	movq	144(%rsp), %rdi         # 8-byte Reload
	movq	136(%rsp), %rsi         # 8-byte Reload
	movl	%r12d, %edx
	callq	*16(%rdi)
	jmp	.LBB13_39
.LBB13_38:                              # %cond.false.93
                                        #   in Loop: Header=BB13_12 Depth=1
	movl	$.L.str.21, %edx
	movq	144(%rsp), %rdi         # 8-byte Reload
	movl	%r12d, %esi
	callq	*64(%rdi)
.LBB13_39:                              # %cond.end.97
                                        #   in Loop: Header=BB13_12 Depth=1
	movq	%rax, %r12
	movl	$1, %edx
	testq	%r12, %r12
	je	.LBB13_47
# BB#40:                                # %if.end.104
                                        #   in Loop: Header=BB13_12 Depth=1
	cmpl	$1, %r13d
	jne	.LBB13_44
# BB#41:                                # %land.lhs.true.109
                                        #   in Loop: Header=BB13_12 Depth=1
	movq	24(%r14), %rax
	movq	144(%rsp), %rcx         # 8-byte Reload
	cmpq	200(%rax), %rcx
	jne	.LBB13_44
# BB#42:                                # %if.then.114
                                        #   in Loop: Header=BB13_12 Depth=1
	movl	$500000, %esi           # imm = 0x7A120
	movl	$.L.str.22, %edx
	movq	144(%rsp), %rdi         # 8-byte Reload
	callq	*64(%rdi)
	movl	$1, %edx
	testq	%rax, %rax
	movq	%r12, %rcx
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	je	.LBB13_47
# BB#43:                                # %if.else.121
                                        #   in Loop: Header=BB13_12 Depth=1
	movl	$.L.str.22, %edx
	movq	144(%rsp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	*24(%rdi)
	.align	16, 0x90
.LBB13_44:                              # %if.else.155
                                        #   in Loop: Header=BB13_12 Depth=1
	movq	%r14, 160(%rsp)
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	$0, (%rax)
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	leaq	160(%rsp), %rdi
	movq	%r14, %rsi
	callq	*12984(%r14)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB13_92
# BB#45:                                # %lor.lhs.false.162
                                        #   in Loop: Header=BB13_12 Depth=1
	movq	160(%rsp), %rdi
	movl	$1, %esi
	callq	gx_device_retain
	movq	160(%rsp), %rdi
	movl	184(%rsp), %edx
	movq	168(%rsp), %rcx
	addq	%r12, %rcx
	movl	836(%r14), %r9d
	movl	%r9d, (%rsp)
	xorl	%r8d, %r8d
	movq	%r12, %rsi
	callq	*13000(%r14)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB13_92
# BB#46:                                # %cleanup.179.thread
                                        #   in Loop: Header=BB13_12 Depth=1
	movl	$0, 64(%rsp)            # 4-byte Folded Spill
	movq	%r12, 136(%rsp)         # 8-byte Spill
	movq	128(%rsp), %r12         # 8-byte Reload
	jmp	.LBB13_81
	.align	16, 0x90
.LBB13_47:                              # %if.then.126
                                        #   in Loop: Header=BB13_12 Depth=1
	testl	%r15d, %r15d
	je	.LBB13_49
# BB#48:                                #   in Loop: Header=BB13_12 Depth=1
	movl	%edx, 64(%rsp)          # 4-byte Spill
	jmp	.LBB13_50
	.align	16, 0x90
.LBB13_49:                              # %if.then.128
                                        #   in Loop: Header=BB13_12 Depth=1
	movl	%edx, 64(%rsp)          # 4-byte Spill
	movl	$.L.str.23, %edx
	movq	144(%rsp), %rdi         # 8-byte Reload
	movq	136(%rsp), %rsi         # 8-byte Reload
	callq	*24(%rdi)
	xorl	%eax, %eax
	movq	%rax, 136(%rsp)         # 8-byte Spill
.LBB13_50:                              # %if.end.131
                                        #   in Loop: Header=BB13_12 Depth=1
	cmpl	$2, 228(%rsp)
	jne	.LBB13_52
# BB#51:                                # %cleanup.188.thread214
                                        #   in Loop: Header=BB13_12 Depth=1
	movl	$-25, %r12d
	jmp	.LBB13_82
	.align	16, 0x90
.LBB13_52:                              # %if.end.136
                                        #   in Loop: Header=BB13_12 Depth=1
	movq	%r13, 104(%rsp)         # 8-byte Spill
	movl	200(%rsp), %ebp
	movq	144(%rsp), %rbx         # 8-byte Reload
	movq	136(%rsp), %r15         # 8-byte Reload
	.align	16, 0x90
.LBB13_53:                              # %for.cond.i
                                        #   Parent Loop BB13_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%r15, %r15
	je	.LBB13_55
# BB#54:                                # %cond.true.i
                                        #   in Loop: Header=BB13_53 Depth=2
	movl	$.L.str.24, %ecx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	%ebp, %edx
	callq	*16(%rbx)
	jmp	.LBB13_56
	.align	16, 0x90
.LBB13_55:                              # %cond.false.i
                                        #   in Loop: Header=BB13_53 Depth=2
	movl	$.L.str.24, %edx
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	*64(%rbx)
.LBB13_56:                              # %cond.end.i
                                        #   in Loop: Header=BB13_53 Depth=2
	movq	%rax, %r12
	cmpl	$0, 156(%rsp)           # 4-byte Folded Reload
	jne	.LBB13_60
# BB#57:                                # %cond.end.i
                                        #   in Loop: Header=BB13_53 Depth=2
	testq	%r12, %r12
	jne	.LBB13_60
# BB#58:                                # %lor.lhs.false.i
                                        #   in Loop: Header=BB13_53 Depth=2
	movl	%ebp, %eax
	shrl	%eax
	movl	$-25, %r13d
	cmpl	$20000, %ebp            # imm = 0x4E20
	movl	%eax, %ebp
	jae	.LBB13_53
# BB#59:                                #   in Loop: Header=BB13_12 Depth=1
	movq	%r15, %r12
	jmp	.LBB13_76
.LBB13_60:                              # %for.end.i
                                        #   in Loop: Header=BB13_12 Depth=1
	movl	$-25, %r13d
	testq	%r12, %r12
	jne	.LBB13_63
# BB#61:                                #   in Loop: Header=BB13_12 Depth=1
	movq	%r15, %r12
	jmp	.LBB13_76
	.align	16, 0x90
.LBB13_62:                              # %if.end.64.thread76.i
                                        #   in Loop: Header=BB13_63 Depth=2
	movq	%rax, 17192(%r14)
	movq	%rax, %r12
.LBB13_63:                              # %open_c.i
                                        #   Parent Loop BB13_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r15, %rbx
	movq	%r12, 17192(%r14)
	movl	%ebp, %r15d
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	%r15, (%rax)
	movl	$1, 1812(%r14)
	movl	17152(%r14), %esi
	movq	%r14, %rdi
	callq	clist_init_io_procs
	movq	%r12, 1776(%r14)
	movl	%ebp, 1784(%r14)
	movq	%r14, 1728(%r14)
	movq	96(%rsp), %rax          # 8-byte Reload
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movq	88(%rsp), %rax          # 8-byte Reload
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	leaq	208(%rsp), %rax
	movups	(%rax), %xmm0
	movq	80(%rsp), %rax          # 8-byte Reload
	movups	%xmm0, (%rax)
	movl	$0, 1808(%r14)
	movq	17208(%r14), %rax
	testq	%rax, %rax
	jne	.LBB13_65
# BB#64:                                # %cond.true.26.i
                                        #   in Loop: Header=BB13_63 Depth=2
	movq	24(%r14), %rax
	movq	200(%rax), %rax
.LBB13_65:                              # %cond.end.29.i
                                        #   in Loop: Header=BB13_63 Depth=2
	movq	%rax, 1768(%r14)
	movq	17216(%r14), %rax
	movq	%rax, 12160(%r14)
	movl	17248(%r14), %eax
	movl	%eax, 12168(%r14)
	movq	$0, 12176(%r14)
	movq	%r14, %rdi
	callq	*gs_clist_device_procs(%rip)
	movl	%eax, %r13d
	testl	%r13d, %r13d
	jns	.LBB13_66
# BB#67:                                # %if.then.41.i
                                        #   in Loop: Header=BB13_63 Depth=2
	cmpl	$-15, %r13d
	jne	.LBB13_74
# BB#68:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB13_63 Depth=2
	cmpl	$0, 156(%rsp)           # 4-byte Folded Reload
	movl	$-15, %r13d
	jne	.LBB13_74
# BB#69:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB13_63 Depth=2
	cmpq	200(%rsp), %r15
	jl	.LBB13_74
# BB#70:                                # %if.then.50.i
                                        #   in Loop: Header=BB13_63 Depth=2
	movl	%r15d, %ebp
	addl	%ebp, %ebp
	movq	%rbx, %r15
	testq	%r15, %r15
	je	.LBB13_73
# BB#71:                                # %if.then.52.i
                                        #   in Loop: Header=BB13_63 Depth=2
	movl	$.L.str.25, %ecx
	movq	144(%rsp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movl	%ebp, %edx
	callq	*16(%rdi)
	testq	%rax, %rax
	jne	.LBB13_62
	jmp	.LBB13_72
	.align	16, 0x90
.LBB13_73:                              # %if.end.64.i
                                        #   in Loop: Header=BB13_63 Depth=2
	movl	$.L.str.25, %edx
	movq	144(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	*24(%rbx)
	movl	$.L.str.25, %edx
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	*64(%rbx)
	movq	%rax, %r12
	movq	%r12, 17192(%r14)
	movl	$-15, %r13d
	testq	%r12, %r12
	movl	$0, %esi
	jne	.LBB13_63
	jmp	.LBB13_75
.LBB13_74:                              # %if.end.70.i
                                        #   in Loop: Header=BB13_12 Depth=1
	testq	%rbx, %rbx
	movq	%r12, %rsi
	jne	.LBB13_76
.LBB13_75:                              # %if.then.72.i
                                        #   in Loop: Header=BB13_12 Depth=1
	movl	$.L.str.26, %edx
	movq	144(%rsp), %rdi         # 8-byte Reload
	callq	*24(%rdi)
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	$0, (%rax)
	xorl	%r12d, %r12d
	jmp	.LBB13_76
.LBB13_66:                              # %gdev_prn_setup_as_command_list.exit.thread
                                        #   in Loop: Header=BB13_12 Depth=1
	movq	128(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	cmovel	%r13d, %eax
	movq	%rax, %rbp
	movl	44(%rsp), %r15d         # 4-byte Reload
	movl	40(%rsp), %ebx          # 4-byte Reload
	jmp	.LBB13_79
.LBB13_72:                              # %if.end.70.thread.i
                                        #   in Loop: Header=BB13_12 Depth=1
	movq	%r12, 17192(%r14)
	movl	$-15, %r13d
	.align	16, 0x90
.LBB13_76:                              # %gdev_prn_setup_as_command_list.exit
                                        #   in Loop: Header=BB13_12 Depth=1
	movq	104(%rsp), %rax         # 8-byte Reload
	cmpl	$1, %eax
	setg	%al
	movl	44(%rsp), %r15d         # 4-byte Reload
	testl	%r15d, %r15d
	setne	%cl
	movq	128(%rsp), %rdx         # 8-byte Reload
	testl	%edx, %edx
	cmovel	%r13d, %edx
	movq	%rdx, %rbp
	testb	%al, %cl
	jne	.LBB13_77
# BB#78:                                # %gdev_prn_setup_as_command_list.exit
                                        #   in Loop: Header=BB13_12 Depth=1
	testl	%r13d, %r13d
	movl	40(%rsp), %ebx          # 4-byte Reload
	js	.LBB13_80
	jmp	.LBB13_79
.LBB13_77:                              #   in Loop: Header=BB13_12 Depth=1
	movl	40(%rsp), %ebx          # 4-byte Reload
.LBB13_79:                              # %if.then.151
                                        #   in Loop: Header=BB13_12 Depth=1
	movl	$gs_clist_device_procs, %esi
	movl	$584, %edx              # imm = 0x248
	movq	32(%rsp), %rdi          # 8-byte Reload
	callq	memcpy
.LBB13_80:                              # %cleanup.thread
                                        #   in Loop: Header=BB13_12 Depth=1
	movq	%r14, %rdi
	callq	clist_enable_multi_thread_render
	movq	%r12, 136(%rsp)         # 8-byte Spill
	movq	%rbp, %r12
	movq	104(%rsp), %r13         # 8-byte Reload
.LBB13_81:                              # %cleanup.188
                                        #   in Loop: Header=BB13_12 Depth=1
	xorl	%ebp, %ebp
	testl	%r12d, %r12d
	je	.LBB13_86
.LBB13_82:                              # %for.inc
                                        #   in Loop: Header=BB13_12 Depth=1
	cmpl	68(%rsp), %r13d         # 4-byte Folded Reload
	leal	1(%r13), %eax
	movl	%eax, %r13d
	jl	.LBB13_12
# BB#83:                                # %for.end
	testl	%r15d, %r15d
	jne	.LBB13_85
# BB#84:                                # %for.end
	testl	%r12d, %r12d
	jns	.LBB13_85
# BB#90:                                # %if.else.280
	movl	$584, %edx              # imm = 0x248
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	8(%rsp), %rbx           # 8-byte Reload
	movq	%rbx, %rsi
	callq	memcpy
	movq	$0, (%rbx)
	movl	%r12d, %ebp
	jmp	.LBB13_91
.LBB13_85:
	movl	%r12d, %ebp
.LBB13_86:                              # %if.then.200
	movq	17896(%r14), %rax
	movq	%rax, 1152(%r14)
	movups	17912(%r14), %xmm0
	movups	%xmm0, 1168(%r14)
	movups	17928(%r14), %xmm0
	movups	%xmm0, 1184(%r14)
	movups	17992(%r14), %xmm0
	movups	%xmm0, 1248(%r14)
	movups	18008(%r14), %xmm0
	movups	%xmm0, 1264(%r14)
	movups	18024(%r14), %xmm0
	movups	%xmm0, 1280(%r14)
	movq	$gx_page_device_get_page_device, 1296(%r14)
	movq	18176(%r14), %rax
	movq	%rax, 1432(%r14)
	movq	18200(%r14), %rax
	movq	%rax, 1456(%r14)
	movq	18216(%r14), %rax
	movq	%rax, 1472(%r14)
	movq	18280(%r14), %rax
	movq	%rax, 1536(%r14)
	movups	18288(%r14), %xmm0
	movups	%xmm0, 1544(%r14)
	movq	18304(%r14), %rax
	movq	%rax, 1560(%r14)
	movups	18360(%r14), %xmm0
	movups	%xmm0, 1616(%r14)
	cmpq	$0, 1656(%r14)
	jne	.LBB13_88
# BB#87:                                # %if.then.267
	movq	18400(%r14), %rax
	movq	%rax, 1656(%r14)
.LBB13_88:                              # %if.end.272
	cmpl	$0, 64(%rsp)            # 4-byte Folded Reload
	jne	.LBB13_91
# BB#89:                                # %if.else.275
	movq	%r14, %rdi
	callq	*1144(%r14)
	movl	%eax, %ebp
	jmp	.LBB13_91
.LBB13_92:                              # %cleanup.188.thread
	movl	$.L.str.20, %edx
	movq	144(%rsp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	*24(%rdi)
	movl	$584, %edx              # imm = 0x248
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	8(%rsp), %rbx           # 8-byte Reload
	movq	%rbx, %rsi
	callq	memcpy
	movq	$0, (%rbx)
.LBB13_91:                              # %cleanup.286
	movl	%ebp, %eax
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gdev_prn_allocate, .Lfunc_end13-gdev_prn_allocate
	.cfi_endproc

	.globl	gdev_prn_reallocate_memory
	.align	16, 0x90
	.type	gdev_prn_reallocate_memory,@function
gdev_prn_reallocate_memory:             # @gdev_prn_reallocate_memory
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %r8d
	jmp	gdev_prn_allocate       # TAILCALL
.Lfunc_end14:
	.size	gdev_prn_reallocate_memory, .Lfunc_end14-gdev_prn_reallocate_memory
	.cfi_endproc

	.globl	gx_default_start_render_thread
	.align	16, 0x90
	.type	gx_default_start_render_thread,@function
gx_default_start_render_thread:         # @gx_default_start_render_thread
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-1, %eax
	retq
.Lfunc_end15:
	.size	gx_default_start_render_thread, .Lfunc_end15-gx_default_start_render_thread
	.cfi_endproc

	.globl	gx_default_open_render_device
	.align	16, 0x90
	.type	gx_default_open_render_device,@function
gx_default_open_render_device:          # @gx_default_open_render_device
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-1, %eax
	retq
.Lfunc_end16:
	.size	gx_default_open_render_device, .Lfunc_end16-gx_default_open_render_device
	.cfi_endproc

	.globl	gx_default_close_render_device
	.align	16, 0x90
	.type	gx_default_close_render_device,@function
gx_default_close_render_device:         # @gx_default_close_render_device
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	gdev_prn_close          # TAILCALL
.Lfunc_end17:
	.size	gx_default_close_render_device, .Lfunc_end17-gx_default_close_render_device
	.cfi_endproc

	.globl	gdev_prn_maybe_realloc_memory
	.align	16, 0x90
	.type	gdev_prn_maybe_realloc_memory,@function
gdev_prn_maybe_realloc_memory:          # @gdev_prn_maybe_realloc_memory
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$40, %rsp
.Ltmp53:
	.cfi_def_cfa_offset 48
	xorl	%eax, %eax
	cmpl	$0, 84(%rdi)
	je	.LBB18_12
# BB#1:                                 # %land.lhs.true
	movq	1064(%rdi), %r9
	cmpq	(%rsi), %r9
	jne	.LBB18_11
# BB#2:                                 # %land.lhs.true
	movq	8(%rsi), %r9
	cmpq	%r9, 1072(%rdi)
	jne	.LBB18_11
# BB#3:                                 # %if.end.5.i
	movq	16(%rsi), %r9
	movq	1080(%rdi), %r10
	cmpl	%r9d, %r10d
	jne	.LBB18_11
# BB#4:                                 # %if.end.10.i
	movq	24(%rsi), %r11
	cmpq	%r11, 1088(%rdi)
	jne	.LBB18_11
# BB#5:                                 # %if.end.10.i
	shrq	$32, %r9
	shrq	$32, %r10
	cmpl	%r9d, %r10d
	jne	.LBB18_11
# BB#6:                                 # %if.end.22.i
	movq	32(%rsi), %r9
	movq	1096(%rdi), %r10
	cmpl	%r9d, %r10d
	jne	.LBB18_11
# BB#7:                                 # %compare_gdev_prn_space_params.exit
	shrq	$32, %r9
	shrq	$32, %r10
	cmpl	%r9d, %r10d
	jne	.LBB18_11
# BB#8:                                 # %lor.lhs.false
	cmpl	%edx, 832(%rdi)
	jne	.LBB18_11
# BB#9:                                 # %lor.lhs.false.2
	cmpl	%ecx, 836(%rdi)
	jne	.LBB18_11
# BB#10:                                # %lor.lhs.false.4
	cmpl	%r8d, 1056(%rdi)
	je	.LBB18_12
.LBB18_11:                              # %if.then
	leaq	1064(%rdi), %r8
	movl	832(%rdi), %r9d
	movl	836(%rdi), %r10d
	movq	32(%r8), %rax
	movq	%rax, 32(%rsp)
	movups	(%r8), %xmm0
	movups	16(%r8), %xmm1
	movaps	%xmm1, 16(%rsp)
	movaps	%xmm0, (%rsp)
	movl	%edx, 832(%rdi)
	movl	%ecx, 836(%rdi)
	movq	32(%rsi), %rax
	movq	%rax, 32(%r8)
	movups	(%rsi), %xmm0
	movups	16(%rsi), %xmm1
	movups	%xmm1, 16(%r8)
	movups	%xmm0, (%r8)
	leaq	(%rsp), %rsi
	movl	$1, %r8d
	movl	%r9d, %edx
	movl	%r10d, %ecx
	callq	gdev_prn_allocate
.LBB18_12:                              # %if.end
	addq	$40, %rsp
	retq
.Lfunc_end18:
	.size	gdev_prn_maybe_realloc_memory, .Lfunc_end18-gdev_prn_maybe_realloc_memory
	.cfi_endproc

	.globl	gx_default_get_space_params
	.align	16, 0x90
	.type	gx_default_get_space_params,@function
gx_default_get_space_params:            # @gx_default_get_space_params
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end19:
	.size	gx_default_get_space_params, .Lfunc_end19-gx_default_get_space_params
	.cfi_endproc

	.align	16, 0x90
	.type	gdev_prn_output_page_aux,@function
gdev_prn_output_page_aux:               # @gdev_prn_output_page_aux
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
	subq	$56, %rsp
.Ltmp60:
	.cfi_def_cfa_offset 112
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
	movl	%r8d, %r12d
	movl	%ecx, %r13d
	movl	%edx, 12(%rsp)          # 4-byte Spill
	movl	%esi, %r15d
	movq	%rdi, %rbx
	cmpq	$0, 17264(%rbx)
	je	.LBB20_8
# BB#1:                                 # %if.then.i
	movq	17256(%rbx), %rdi
	addq	$8, %rdi
	callq	gp_semaphore_wait
	leaq	13056(%rbx), %rbp
	movq	%rbp, %rdi
	callq	strlen
	movq	24(%rbx), %r8
	leaq	24(%rsp), %rdi
	leaq	16(%rsp), %rsi
	movq	%rbp, %rdx
	movl	%eax, %ecx
	callq	gx_parse_output_file_name
	testl	%eax, %eax
	js	.LBB20_3
# BB#2:                                 # %if.then.i
	movq	16(%rsp), %rax
	testq	%rax, %rax
	jne	.LBB20_4
.LBB20_3:                               # %lor.lhs.false.i
	cmpl	$0, 17160(%rbx)
	je	.LBB20_5
.LBB20_4:                               # %if.then.i.95
	movq	17176(%rbx), %rdx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	gx_device_close_output_file
	movq	$0, 17176(%rbx)
.LBB20_5:                               # %gdev_prn_close_printer.exit
	cmpl	$0, 17284(%rbx)
	jne	.LBB20_7
# BB#6:                                 # %if.then.5.i
	movl	$0, 17284(%rbx)
.LBB20_7:                               # %if.end.i
	movq	17264(%rbx), %rdi
	movq	17272(%rbx), %rsi
	movl	$1, %edx
	callq	teardown_device_and_mem_for_thread
	movq	$0, 17264(%rbx)
.LBB20_8:                               # %prn_finish_bg_print.exit
	testl	%r15d, %r15d
	jle	.LBB20_16
# BB#9:                                 # %land.lhs.true
	cmpq	$0, 17296(%rbx)
	je	.LBB20_10
# BB#15:                                # %if.then
	movq	%rbx, %rdi
	callq	gx_saved_pages_list_add
	movl	%eax, %ebp
	xorl	%r14d, %r14d
	testl	%ebp, %ebp
	movl	$0, %r13d
	movl	$0, %r12d
	jns	.LBB20_46
	jmp	.LBB20_55
.LBB20_16:                              # %if.else
	xorl	%r14d, %r14d
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	jne	.LBB20_17
	jmp	.LBB20_11
.LBB20_10:                              # %if.else.thread
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	setne	%r14b
.LBB20_11:                              # %if.then.5
	movl	$1, %esi
	movq	%rbx, %rdi
	movl	%r13d, %edx
	callq	gdev_prn_open_printer_seekable
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB20_55
# BB#12:                                # %if.end.9
	testb	%r14b, %r14b
	jne	.LBB20_18
# BB#13:                                # %land.lhs.true.11
	movq	17176(%rbx), %rsi
	movq	%rbx, %rdi
	movl	%r15d, %edx
	callq	*13048(%rbx)
	testl	%eax, %eax
	js	.LBB20_18
# BB#14:
	movl	$1, %r13d
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
	movl	$1, 12(%rsp)            # 4-byte Folded Spill
	jmp	.LBB20_46
.LBB20_18:                              # %if.else.15
	xorl	%r14d, %r14d
	testl	%r15d, %r15d
	jle	.LBB20_17
# BB#19:                                # %if.then.17
	testl	%r12d, %r12d
	je	.LBB20_20
# BB#21:                                # %land.lhs.true.19
	cmpq	$0, 17184(%rbx)
	je	.LBB20_22
# BB#23:                                # %land.lhs.true.21
	cmpl	$0, 17252(%rbx)
	jne	.LBB20_26
# BB#24:                                # %lor.lhs.false.23
	cmpl	$0, 17288(%rbx)
	jle	.LBB20_25
.LBB20_26:                              # %if.then.25
	movq	%rbx, %rdi
	callq	clist_enable_multi_thread_render
	testl	%eax, %eax
	setne	%al
	jmp	.LBB20_27
.LBB20_17:
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	jmp	.LBB20_46
.LBB20_20:
	xorl	%eax, %eax
	jmp	.LBB20_27
.LBB20_22:
	xorl	%eax, %eax
	jmp	.LBB20_27
.LBB20_25:
	xorl	%eax, %eax
.LBB20_27:                              # %if.end.27
	leaq	17256(%rbx), %rbp
	movl	17284(%rbx), %r13d
	testl	%r13d, %r13d
	setns	%cl
	cmpl	$0, 17252(%rbx)
	je	.LBB20_38
# BB#28:                                # %if.end.27
	testb	%al, %al
	je	.LBB20_38
# BB#29:                                # %if.end.27
	testb	%cl, %cl
	je	.LBB20_38
# BB#30:                                # %while.body
	movq	%rbx, %rdi
	callq	clist_close_writer_and_init_reader
	testl	%eax, %eax
	js	.LBB20_38
# BB#31:                                # %if.end.39
	cmpq	$0, 17256(%rbx)
	jne	.LBB20_33
# BB#32:                                # %if.then.42
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	callq	gx_semaphore_alloc
	movq	%rax, 17256(%rbx)
	testq	%rax, %rax
	je	.LBB20_38
.LBB20_33:                              # %if.end.49
	movq	24(%rbx), %rax
	movq	208(%rax), %rdi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rsi
	callq	setup_device_and_mem_for_thread
	testq	%rax, %rax
	je	.LBB20_38
# BB#34:                                # %if.end.54
	movq	%rax, 17264(%rbx)
	movl	%r15d, 17280(%rbx)
	movl	$0, 17252(%rax)
	movl	17288(%rbx), %ecx
	movl	%ecx, 17288(%rax)
	movl	$prn_print_page_in_background, %edi
	leaq	16(%rbp), %rdx
	movq	%rbp, %rsi
	callq	gp_thread_start
	leaq	1888(%rbx), %rsi
	movq	10096(%rbx), %rax
	movq	5984(%rbx), %rdi
	xorl	%edx, %edx
	callq	*8(%rax)
	movl	$-1, %ebp
	testl	%eax, %eax
	js	.LBB20_55
# BB#35:                                # %lor.lhs.false.74
	movq	10088(%rbx), %rdi
	movq	10096(%rbx), %rax
	leaq	5992(%rbx), %rsi
	xorl	%r14d, %r14d
	xorl	%edx, %edx
	callq	*8(%rax)
	testl	%eax, %eax
	js	.LBB20_55
# BB#36:                                # %if.end.85
	movq	$0, 10088(%rbx)
	movq	$0, 5984(%rbx)
	movq	%rbx, %rdi
	callq	clist_open
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB20_55
# BB#37:
	movl	%r13d, %r12d
	sarl	$31, %r12d
	andl	%r13d, %r12d
	jmp	.LBB20_45
.LBB20_38:                              # %if.then.98
	cmpq	$0, (%rbp)
	je	.LBB20_41
# BB#39:                                # %land.lhs.true.103
	movq	8(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB20_41
# BB#40:                                # %if.then.108
	movq	16(%rbp), %rsi
	movl	$1, %edx
	callq	teardown_device_and_mem_for_thread
	movq	$0, 8(%rbp)
.LBB20_41:                              # %if.end.115
	movq	17176(%rbx), %rsi
	movq	%rbx, %rdi
	movl	%r15d, %edx
	callq	*12976(%rbx)
	movl	%eax, %r12d
	movq	17176(%rbx), %rdi
	callq	fflush
	movq	17176(%rbx), %rdi
	callq	ferror
	testl	%eax, %eax
	movl	$-12, %r14d
	cmovel	%eax, %r14d
	leaq	13056(%rbx), %rbp
	movq	%rbp, %rdi
	callq	strlen
	movq	24(%rbx), %r8
	leaq	24(%rsp), %rdi
	leaq	16(%rsp), %rsi
	movq	%rbp, %rdx
	movl	%eax, %ecx
	callq	gx_parse_output_file_name
	testl	%eax, %eax
	js	.LBB20_43
# BB#42:                                # %if.end.115
	movq	16(%rsp), %rax
	testq	%rax, %rax
	jne	.LBB20_44
.LBB20_43:                              # %lor.lhs.false.i.110
	cmpl	$0, 17160(%rbx)
	je	.LBB20_45
.LBB20_44:                              # %if.then.i.113
	movq	17176(%rbx), %rdx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	gx_device_close_output_file
	movq	$0, 17176(%rbx)
.LBB20_45:                              # %gdev_prn_close_printer.exit115
	xorl	%r13d, %r13d
.LBB20_46:                              # %if.end.135
	movq	%rbx, %rdi
	callq	*1624(%rbx)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB20_48
# BB#47:                                # %if.then.139
	movq	24(%rbx), %rdi
	movq	%rbp, %rsi
	addq	$32, %rsi
	callq	free_separation_names
	movl	$0, 1064(%rbp)
.LBB20_48:                              # %if.end.141
	xorl	%eax, %eax
	cmpq	$0, 17184(%rbx)
	je	.LBB20_51
# BB#49:                                # %land.lhs.true.145
	cmpl	$0, 1808(%rbx)
	jne	.LBB20_51
# BB#50:                                # %cond.true
	movq	%rbx, %rdi
	movl	12(%rsp), %esi          # 4-byte Reload
	callq	clist_finish_page
.LBB20_51:                              # %cond.end
	testl	%r12d, %r12d
	movl	%r12d, %ebp
	js	.LBB20_55
# BB#52:                                # %if.end.152
	testl	%r14d, %r14d
	movl	%r14d, %ebp
	js	.LBB20_55
# BB#53:                                # %if.end.160
	testl	%eax, %eax
	movl	%eax, %ebp
	js	.LBB20_55
# BB#54:                                # %if.end.164
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movl	12(%rsp), %edx          # 4-byte Reload
	callq	gx_finish_output_page
	testl	%eax, %eax
	cmovsl	%eax, %r13d
	movl	%r13d, %ebp
.LBB20_55:                              # %cleanup.174
	movl	%ebp, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gdev_prn_output_page_aux, .Lfunc_end20-gdev_prn_output_page_aux
	.cfi_endproc

	.globl	gdev_prn_output_page_seekable
	.align	16, 0x90
	.type	gdev_prn_output_page_seekable,@function
gdev_prn_output_page_seekable:          # @gdev_prn_output_page_seekable
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %ecx
	xorl	%r8d, %r8d
	jmp	gdev_prn_output_page_aux # TAILCALL
.Lfunc_end21:
	.size	gdev_prn_output_page_seekable, .Lfunc_end21-gdev_prn_output_page_seekable
	.cfi_endproc

	.globl	gdev_prn_bg_output_page_seekable
	.align	16, 0x90
	.type	gdev_prn_bg_output_page_seekable,@function
gdev_prn_bg_output_page_seekable:       # @gdev_prn_bg_output_page_seekable
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %ecx
	movl	$1, %r8d
	jmp	gdev_prn_output_page_aux # TAILCALL
.Lfunc_end22:
	.size	gdev_prn_bg_output_page_seekable, .Lfunc_end22-gdev_prn_bg_output_page_seekable
	.cfi_endproc

	.globl	gx_print_page_single_copy
	.align	16, 0x90
	.type	gx_print_page_single_copy,@function
gx_print_page_single_copy:              # @gx_print_page_single_copy
	.cfi_startproc
# BB#0:                                 # %entry
	movq	12976(%rdi), %rax
	movl	$1, %edx
	jmpq	*%rax                   # TAILCALL
.Lfunc_end23:
	.size	gx_print_page_single_copy, .Lfunc_end23-gx_print_page_single_copy
	.cfi_endproc

	.globl	gx_default_print_page_copies
	.align	16, 0x90
	.type	gx_default_print_page_copies,@function
gx_default_print_page_copies:           # @gx_default_print_page_copies
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
	movl	%edx, %r15d
	movq	%rdi, %rbx
	cmpl	$1, %r15d
	jle	.LBB24_15
# BB#1:                                 # %for.body.lr.ph
	leaq	17176(%rbx), %r14
	leaq	13056(%rbx), %rbp
	movl	$1, %r13d
	.align	16, 0x90
.LBB24_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	*12968(%rbx)
	testl	%eax, %eax
	js	.LBB24_16
# BB#3:                                 # %if.end
                                        #   in Loop: Header=BB24_2 Depth=1
	movq	17176(%rbx), %rdi
	callq	fflush
	movq	17176(%rbx), %rdi
	callq	ferror
	movl	%eax, %r12d
	movq	%rbp, %rdi
	callq	strlen
	movq	24(%rbx), %r8
	leaq	8(%rsp), %rdi
	leaq	(%rsp), %rsi
	movq	%rbp, %rdx
	movl	%eax, %ecx
	callq	gx_parse_output_file_name
	testl	%eax, %eax
	js	.LBB24_5
# BB#4:                                 # %if.end
                                        #   in Loop: Header=BB24_2 Depth=1
	movq	(%rsp), %rax
	testq	%rax, %rax
	jne	.LBB24_6
.LBB24_5:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB24_2 Depth=1
	cmpl	$0, 17160(%rbx)
	je	.LBB24_7
.LBB24_6:                               # %if.then.i
                                        #   in Loop: Header=BB24_2 Depth=1
	movq	17176(%rbx), %rdx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	gx_device_close_output_file
	movq	$0, 17176(%rbx)
.LBB24_7:                               # %gdev_prn_close_printer.exit
                                        #   in Loop: Header=BB24_2 Depth=1
	movq	928(%rbx), %rcx
	incq	%rcx
	movq	%rcx, 928(%rbx)
	movl	$-12, %eax
	testl	%r12d, %r12d
	jne	.LBB24_12
# BB#8:                                 # %cond.false.9
                                        #   in Loop: Header=BB24_2 Depth=1
	movq	(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB24_10
# BB#9:                                 # %if.then.i.i
                                        #   in Loop: Header=BB24_2 Depth=1
	movl	$0, 17172(%rbx)
	jmp	.LBB24_14
	.align	16, 0x90
.LBB24_10:                              # %if.end.i.i
                                        #   in Loop: Header=BB24_2 Depth=1
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%r14, %r8
	callq	gx_device_open_output_file
	testl	%eax, %eax
	js	.LBB24_11
# BB#13:                                # %if.end.4.i.i
                                        #   in Loop: Header=BB24_2 Depth=1
	movl	$1, 17172(%rbx)
	movq	17176(%rbx), %rsi
.LBB24_14:                              # %for.inc
                                        #   in Loop: Header=BB24_2 Depth=1
	incl	%r13d
	cmpl	%r15d, %r13d
	jl	.LBB24_2
.LBB24_15:                              # %for.end
	decl	%r15d
	movslq	%r15d, %rax
	subq	%rax, 928(%rbx)
	movq	%rbx, %rdi
	callq	*12968(%rbx)
	jmp	.LBB24_16
.LBB24_11:                              # %if.end.i.i.if.then.15_crit_edge
	movq	928(%rbx), %rcx
.LBB24_12:                              # %if.then.15
	movslq	%r13d, %rdx
	subq	%rdx, %rcx
	movq	%rcx, 928(%rbx)
.LBB24_16:                              # %cleanup.28
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gx_default_print_page_copies, .Lfunc_end24-gx_default_print_page_copies
	.cfi_endproc

	.globl	gdev_prn_close_printer
	.align	16, 0x90
	.type	gdev_prn_close_printer,@function
gdev_prn_close_printer:                 # @gdev_prn_close_printer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp80:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp81:
	.cfi_def_cfa_offset 24
	subq	$40, %rsp
.Ltmp82:
	.cfi_def_cfa_offset 64
.Ltmp83:
	.cfi_offset %rbx, -24
.Ltmp84:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	leaq	13056(%rbx), %r14
	movq	%r14, %rdi
	callq	strlen
	movq	24(%rbx), %r8
	leaq	8(%rsp), %rdi
	leaq	(%rsp), %rsi
	movq	%r14, %rdx
	movl	%eax, %ecx
	callq	gx_parse_output_file_name
	testl	%eax, %eax
	js	.LBB25_2
# BB#1:                                 # %entry
	movq	(%rsp), %rax
	testq	%rax, %rax
	jne	.LBB25_3
.LBB25_2:                               # %lor.lhs.false
	cmpl	$0, 17160(%rbx)
	je	.LBB25_4
.LBB25_3:                               # %if.then
	movq	17176(%rbx), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	gx_device_close_output_file
	movq	$0, 17176(%rbx)
.LBB25_4:                               # %if.end
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end25:
	.size	gdev_prn_close_printer, .Lfunc_end25-gdev_prn_close_printer
	.cfi_endproc

	.globl	gx_default_buffer_page
	.align	16, 0x90
	.type	gx_default_buffer_page,@function
gx_default_buffer_page:                 # @gx_default_buffer_page
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-1, %eax
	retq
.Lfunc_end26:
	.size	gx_default_buffer_page, .Lfunc_end26-gx_default_buffer_page
	.cfi_endproc

	.globl	gx_render_plane_init
	.align	16, 0x90
	.type	gx_render_plane_init,@function
gx_render_plane_init:                   # @gx_render_plane_init
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edx, %r8d
	movl	100(%rsi), %ecx
	movzwl	108(%rsi), %eax
	xorl	%edx, %edx
	idivl	%ecx
	movl	$-15, %edx
	testl	%r8d, %r8d
	js	.LBB27_3
# BB#1:                                 # %entry
	cmpl	%r8d, %ecx
	jle	.LBB27_3
# BB#2:                                 # %if.end
	movl	%r8d, 8(%rdi)
	movl	%eax, (%rdi)
	notl	%r8d
	addl	%r8d, %ecx
	imull	%eax, %ecx
	movl	%ecx, 4(%rdi)
	xorl	%edx, %edx
.LBB27_3:                               # %cleanup
	movl	%edx, %eax
	retq
.Lfunc_end27:
	.size	gx_render_plane_init, .Lfunc_end27-gx_render_plane_init
	.cfi_endproc

	.globl	gdev_prn_clear_trailing_bits
	.align	16, 0x90
	.type	gdev_prn_clear_trailing_bits,@function
gdev_prn_clear_trailing_bits:           # @gdev_prn_clear_trailing_bits
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edx, %eax
	movl	%esi, %edx
	movzwl	108(%rcx), %esi
	imull	832(%rcx), %esi
	testb	$7, %sil
	je	.LBB28_1
# BB#2:                                 # %if.then
	movl	%esi, %r8d
	negl	%r8d
	andl	$7, %r8d
	xorl	%ecx, %ecx
	movl	%eax, %r9d
	jmp	bits_fill_rectangle     # TAILCALL
.LBB28_1:                               # %if.end
	retq
.Lfunc_end28:
	.size	gdev_prn_clear_trailing_bits, .Lfunc_end28-gdev_prn_clear_trailing_bits
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI29_0:
	.long	1116733440              # float 72
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI29_1:
	.quad	4634766966517661696     # double 72
	.text
	.globl	gdev_prn_print_scan_lines
	.align	16, 0x90
	.type	gdev_prn_print_scan_lines,@function
gdev_prn_print_scan_lines:              # @gdev_prn_print_scan_lines
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp86:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp87:
	.cfi_def_cfa_offset 48
.Ltmp88:
	.cfi_offset %rbx, -24
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	836(%rbx), %ebp
	leaq	(%rsp), %rsi
	callq	*1152(%rbx)
	movss	12(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	mulss	.LCPI29_0(%rip), %xmm1
	cvtss2sd	%xmm1, %xmm0
	movss	904(%rbx), %xmm2        # xmm2 = mem[0],zero,zero,zero
	divss	896(%rbx), %xmm2
	mulss	%xmm1, %xmm2
	cvttss2si	%xmm2, %ecx
	xorps	%xmm2, %xmm2
	ucomiss	%xmm1, %xmm2
	jbe	.LBB29_2
# BB#1:                                 # %if.then
	movss	912(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	divsd	.LCPI29_1(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movl	%ebp, %eax
	subl	%ecx, %eax
	addl	%edx, %eax
	jmp	.LBB29_3
.LBB29_2:                               # %if.else
	movss	920(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	divsd	.LCPI29_1(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	addl	%ebp, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
.LBB29_3:                               # %if.end
	cmpl	%eax, %ebp
	cmovlel	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gdev_prn_print_scan_lines, .Lfunc_end29-gdev_prn_print_scan_lines
	.cfi_endproc

	.globl	gdev_prn_open_printer_seekable
	.align	16, 0x90
	.type	gdev_prn_open_printer_seekable,@function
gdev_prn_open_printer_seekable:         # @gdev_prn_open_printer_seekable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp91:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp92:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp93:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp94:
	.cfi_def_cfa_offset 48
.Ltmp95:
	.cfi_offset %rbx, -40
.Ltmp96:
	.cfi_offset %r14, -32
.Ltmp97:
	.cfi_offset %r15, -24
.Ltmp98:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movl	%esi, %eax
	movq	%rdi, %rbx
	cmpq	$0, 17176(%rbx)
	je	.LBB30_2
# BB#1:                                 # %if.then
	movl	$0, 17172(%rbx)
	jmp	.LBB30_10
.LBB30_2:                               # %if.end
	leaq	17176(%rbx), %r14
	leaq	13056(%rbx), %r15
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	%eax, %edx
	movl	%ebp, %ecx
	movq	%r14, %r8
	callq	gx_device_open_output_file
	testl	%eax, %eax
	js	.LBB30_11
# BB#3:                                 # %if.end.4
	testl	%ebp, %ebp
	je	.LBB30_9
# BB#4:                                 # %land.lhs.true
	movq	(%r14), %rdi
	callq	gp_fseekable
	testl	%eax, %eax
	je	.LBB30_5
.LBB30_9:                               # %cleanup.cont
	movl	$1, 17172(%rbx)
.LBB30_10:                              # %cleanup.32
	xorl	%eax, %eax
.LBB30_11:                              # %cleanup.32
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB30_5:                               # %if.then.8
	movq	24(%rbx), %rdi
	movl	$.L.str.15, %esi
	xorl	%eax, %eax
	movq	%r15, %rdx
	callq	errprintf
	movq	17176(%rbx), %rdx
	movq	24(%rbx), %rax
	movq	192(%rax), %rax
	cmpq	16(%rax), %rdx
	je	.LBB30_8
# BB#6:                                 # %land.lhs.true.15
	cmpq	24(%rax), %rdx
	je	.LBB30_8
# BB#7:                                 # %if.then.20
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	gx_device_close_output_file
	testl	%eax, %eax
	js	.LBB30_11
.LBB30_8:                               # %if.end.28
	movq	$0, (%r14)
	movl	$-12, %eax
	jmp	.LBB30_11
.Lfunc_end30:
	.size	gdev_prn_open_printer_seekable, .Lfunc_end30-gdev_prn_open_printer_seekable
	.cfi_endproc

	.globl	gdev_prn_file_is_new
	.align	16, 0x90
	.type	gdev_prn_file_is_new,@function
gdev_prn_file_is_new:                   # @gdev_prn_file_is_new
	.cfi_startproc
# BB#0:                                 # %entry
	movl	17172(%rdi), %eax
	retq
.Lfunc_end31:
	.size	gdev_prn_file_is_new, .Lfunc_end31-gdev_prn_file_is_new
	.cfi_endproc

	.globl	gx_page_info_color_usage
	.align	16, 0x90
	.type	gx_page_info_color_usage,@function
gx_page_info_color_usage:               # @gx_page_info_color_usage
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp100:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp101:
	.cfi_def_cfa_offset 32
.Ltmp102:
	.cfi_offset %rbx, -32
.Ltmp103:
	.cfi_offset %r14, -24
.Ltmp104:
	.cfi_offset %rbp, -16
	movl	%edx, %r10d
	movl	$-1, %eax
	movl	%ecx, %edx
	orl	%r10d, %edx
	js	.LBB32_10
# BB#1:                                 # %lor.lhs.false.2
	movl	836(%rdi), %edx
	subl	%r10d, %edx
	cmpl	%ecx, %edx
	jl	.LBB32_10
# BB#2:                                 # %if.end
	movl	8244(%rsi), %r11d
	movl	%r10d, %eax
	cltd
	idivl	%r11d
	movl	%eax, %esi
	addl	%r10d, %ecx
	leal	-1(%r11,%rcx), %eax
	cltd
	idivl	%r11d
	xorl	%ecx, %ecx
	movl	%eax, %ebp
	subl	%esi, %ebp
	movl	$0, %edx
	jle	.LBB32_9
# BB#3:                                 # %for.body.lr.ph
	movq	10216(%rdi), %r10
	movslq	%esi, %rbx
	leal	-1(%rax), %r14d
	xorl	%ecx, %ecx
	testb	$1, %bpl
	jne	.LBB32_5
# BB#4:
	xorl	%edx, %edx
	jmp	.LBB32_6
.LBB32_5:                               # %for.body.prol
	movq	%rbx, %rcx
	shlq	$5, %rcx
	movq	(%r10,%rcx), %rdx
	movl	8(%r10,%rcx), %ecx
	incq	%rbx
.LBB32_6:                               # %for.body.lr.ph.split
	cmpl	%esi, %r14d
	je	.LBB32_9
# BB#7:                                 # %for.body.lr.ph.split.split
	movl	%eax, %ebp
	subl	%ebx, %ebp
	shlq	$5, %rbx
	leaq	40(%rbx,%r10), %rbx
	.align	16, 0x90
.LBB32_8:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	orq	-40(%rbx), %rdx
	orl	-32(%rbx), %ecx
	orq	-8(%rbx), %rdx
	orl	(%rbx), %ecx
	addq	$64, %rbx
	addl	$-2, %ebp
	jne	.LBB32_8
.LBB32_9:                               # %for.end
	movq	%rdx, (%r8)
	movl	%ecx, 8(%r8)
	imull	%r11d, %esi
	movl	%esi, (%r9)
	imull	%r11d, %eax
	movl	836(%rdi), %ecx
	cmpl	%ecx, %eax
	cmovgl	%ecx, %eax
	subl	%esi, %eax
.LBB32_10:                              # %cleanup
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gx_page_info_color_usage, .Lfunc_end32-gx_page_info_color_usage
	.cfi_endproc

	.globl	gdev_prn_color_usage
	.align	16, 0x90
	.type	gdev_prn_color_usage,@function
gdev_prn_color_usage:                   # @gdev_prn_color_usage
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp106:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp107:
	.cfi_def_cfa_offset 32
.Ltmp108:
	.cfi_offset %rbx, -32
.Ltmp109:
	.cfi_offset %r14, -24
.Ltmp110:
	.cfi_offset %rbp, -16
	movq	%rcx, %r9
	movl	%edx, %ecx
	cmpq	$0, 17184(%rdi)
	je	.LBB33_1
# BB#2:                                 # %if.end
	movl	$-1, %eax
	movl	%ecx, %edx
	orl	%esi, %edx
	js	.LBB33_13
# BB#3:                                 # %lor.lhs.false.4
	movl	836(%rdi), %edx
	subl	%esi, %edx
	cmpl	%ecx, %edx
	jl	.LBB33_13
# BB#4:                                 # %if.end.9
	cmpl	$0, 1880(%rdi)
	js	.LBB33_14
# BB#5:                                 # %if.end.i
	movl	10132(%rdi), %r11d
	movl	%esi, %eax
	cltd
	idivl	%r11d
	movl	%eax, %r10d
	addl	%esi, %ecx
	leal	-1(%r11,%rcx), %eax
	cltd
	idivl	%r11d
	xorl	%ecx, %ecx
	movl	%eax, %esi
	subl	%r10d, %esi
	movl	$0, %edx
	jle	.LBB33_12
# BB#6:                                 # %for.body.lr.ph.i
	movq	10216(%rdi), %r14
	movslq	%r10d, %rbx
	leal	-1(%rax), %ebp
	xorl	%ecx, %ecx
	testb	$1, %sil
	jne	.LBB33_8
# BB#7:
	xorl	%edx, %edx
	jmp	.LBB33_9
.LBB33_1:                               # %if.then
	movl	$0, (%r8)
	movb	100(%rdi), %cl
	movl	$1, %eax
	shlq	%cl, %rax
	decq	%rax
	movq	%rax, (%r9)
	movl	836(%rdi), %eax
	jmp	.LBB33_13
.LBB33_14:                              # %if.then.11
	movl	%ecx, %edx
	movq	%r9, %rcx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	clist_writer_color_usage # TAILCALL
.LBB33_8:                               # %for.body.i.prol
	movq	%rbx, %rcx
	shlq	$5, %rcx
	movq	(%r14,%rcx), %rdx
	movl	8(%r14,%rcx), %ecx
	incq	%rbx
.LBB33_9:                               # %for.body.lr.ph.i.split
	cmpl	%r10d, %ebp
	je	.LBB33_12
# BB#10:                                # %for.body.lr.ph.i.split.split
	movl	%eax, %ebp
	subl	%ebx, %ebp
	shlq	$5, %rbx
	leaq	40(%rbx,%r14), %rsi
	.align	16, 0x90
.LBB33_11:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	orq	-40(%rsi), %rdx
	orl	-32(%rsi), %ecx
	orq	-8(%rsi), %rdx
	orl	(%rsi), %ecx
	addq	$64, %rsi
	addl	$-2, %ebp
	jne	.LBB33_11
.LBB33_12:                              # %gx_page_info_color_usage.exit
	movq	%rdx, (%r9)
	movl	%ecx, 8(%r9)
	imull	%r11d, %r10d
	movl	%r10d, (%r8)
	imull	%r11d, %eax
	movl	836(%rdi), %ecx
	cmpl	%ecx, %eax
	cmovgl	%ecx, %eax
	subl	%r10d, %eax
.LBB33_13:                              # %cleanup
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gdev_prn_color_usage, .Lfunc_end33-gdev_prn_color_usage
	.cfi_endproc

	.globl	gdev_create_buf_device
	.align	16, 0x90
	.type	gdev_create_buf_device,@function
gdev_create_buf_device:                 # @gdev_create_buf_device
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp112:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp113:
	.cfi_def_cfa_offset 32
.Ltmp114:
	.cfi_offset %rbx, -24
.Ltmp115:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %rax
	movq	32(%rsp), %rbp
	movq	%rbx, %rdi
	movq	%rdx, %rsi
	movl	%ecx, %edx
	movq	%r8, %rcx
	movq	%r9, %r8
	movq	%rbp, %r9
	callq	*%rax
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB34_2
# BB#1:                                 # %if.end
	movq	(%rbx), %rdi
	movl	$1, %esi
	callq	gx_device_retain
.LBB34_2:                               # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gdev_create_buf_device, .Lfunc_end34-gdev_create_buf_device
	.cfi_endproc

	.globl	gx_default_create_buf_device
	.align	16, 0x90
	.type	gx_default_create_buf_device,@function
gx_default_create_buf_device:           # @gx_default_create_buf_device
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp116:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp117:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp118:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp119:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp120:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp121:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp122:
	.cfi_def_cfa_offset 80
.Ltmp123:
	.cfi_offset %rbx, -56
.Ltmp124:
	.cfi_offset %r12, -48
.Ltmp125:
	.cfi_offset %r13, -40
.Ltmp126:
	.cfi_offset %r14, -32
.Ltmp127:
	.cfi_offset %r15, -24
.Ltmp128:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movq	%r8, %r12
	movq	%rcx, %r15
	movq	%rsi, %r13
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	testq	%r15, %r15
	je	.LBB35_3
# BB#1:                                 # %cond.end
	cmpl	$0, 8(%r15)
	js	.LBB35_3
# BB#2:                                 # %if.then
	movl	%edx, 12(%rsp)          # 4-byte Spill
	movl	(%r15), %edi
	movb	$1, %al
	movl	%eax, 8(%rsp)           # 4-byte Spill
	jmp	.LBB35_6
.LBB35_3:                               # %if.else
	movl	%edx, 12(%rsp)          # 4-byte Spill
	movzwl	108(%r13), %edi
	cmpl	$0, 848(%r13)
	je	.LBB35_4
# BB#5:                                 # %if.then.4
	xorl	%edx, %edx
	movl	%edi, %eax
	idivl	100(%r13)
	movl	$0, 8(%rsp)             # 4-byte Folded Spill
	movl	%eax, %edi
	jmp	.LBB35_6
.LBB35_4:
	movl	$0, 8(%rsp)             # 4-byte Folded Spill
.LBB35_6:                               # %if.end.6
	callq	gdev_mem_device_for_bits
	movq	%rax, %rbp
	movl	$-15, %eax
	testq	%rbp, %rbp
	je	.LBB35_24
# BB#7:                                 # %if.end.10
	testq	%r12, %r12
	je	.LBB35_9
# BB#8:                                 # %if.then.12
	movl	$st_device_memory, %esi
	movl	$.L.str.16, %edx
	movq	%r12, %rdi
	callq	*72(%r12)
	movq	%rax, %rbx
	movl	$-25, %eax
	testq	%rbx, %rbx
	jne	.LBB35_10
	jmp	.LBB35_24
.LBB35_9:                               # %if.else.18
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rbx
.LBB35_10:                              # %if.end.19
	cmpq	%r13, %rbx
	je	.LBB35_11
# BB#14:                                # %if.else.32
	testq	%r14, %r14
	sete	%al
	movzbl	%al, %ecx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%r12, %rdx
	movq	%r13, %r8
	callq	gs_make_mem_device
	jmp	.LBB35_15
.LBB35_11:                              # %if.then.22
	leaq	1144(%rbx), %rdi
	addq	$1144, %rbp             # imm = 0x478
	movl	$584, %edx              # imm = 0x248
	movq	%rbp, %rsi
	callq	memcpy
	movq	%r13, %rdi
	callq	check_device_separable
	cmpq	$0, 1664(%rbx)
	jne	.LBB35_13
# BB#12:                                # %if.then.28
	movq	$gdev_prn_dev_spec_op, 1664(%rbx)
.LBB35_13:                              # %if.end.31
	movq	%r13, %rdi
	callq	gx_device_fill_in_procs
.LBB35_15:                              # %if.end.36
	movl	832(%r13), %eax
	movl	%eax, 832(%rbx)
	movl	12(%rsp), %eax          # 4-byte Reload
	movl	%eax, 2788(%rbx)
	movl	844(%r13), %eax
	movl	%eax, 844(%rbx)
	movl	840(%r13), %eax
	movl	%eax, 840(%rbx)
	movl	848(%r13), %eax
	movl	%eax, 848(%rbx)
	leaq	2548(%rbx), %rsi
	movq	%r13, %rdi
	callq	gs_deviceinitialmatrix
	movl	8(%rsp), %eax           # 4-byte Reload
	testb	%al, %al
	je	.LBB35_21
# BB#16:                                # %if.then.44
	movl	$st_device_plane_extract, %esi
	movl	$.L.str.16, %edx
	movq	%r12, %rdi
	callq	*72(%r12)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB35_17
# BB#20:                                # %cleanup.thread
	movq	%r12, 24(%rbp)
	xorl	%r8d, %r8d
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movq	%r15, %rcx
	callq	plane_device_init
	movq	%rbp, %rbx
.LBB35_21:                              # %if.end.54
	cmpq	%r13, %rbx
	je	.LBB35_23
# BB#22:                                # %if.then.59
	leaq	96(%rbx), %rdi
	addq	$96, %r13
	movl	$720, %edx              # imm = 0x2D0
	movq	%r13, %rsi
	callq	memcpy
.LBB35_23:                              # %if.end.62
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%rbx, (%rax)
	xorl	%eax, %eax
	jmp	.LBB35_24
.LBB35_17:                              # %if.then.50
	movq	%rbx, %rdi
	callq	gs_device_is_memory
	testl	%eax, %eax
	jne	.LBB35_19
# BB#18:                                # %if.then.i
	movq	1736(%rbx), %rbp
	movq	24(%rbx), %rdi
	movl	$.L.str.19, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	movq	%rbp, %rbx
.LBB35_19:                              # %cleanup
	movq	%rbx, %rdi
	callq	*1176(%rbx)
	movq	24(%rbx), %rdi
	movl	$.L.str.19, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	movl	$-25, %eax
.LBB35_24:                              # %cleanup.63
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gx_default_create_buf_device, .Lfunc_end35-gx_default_create_buf_device
	.cfi_endproc

	.globl	gx_default_destroy_buf_device
	.align	16, 0x90
	.type	gx_default_destroy_buf_device,@function
gx_default_destroy_buf_device:          # @gx_default_destroy_buf_device
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp129:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp130:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp131:
	.cfi_def_cfa_offset 32
.Ltmp132:
	.cfi_offset %rbx, -24
.Ltmp133:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	callq	gs_device_is_memory
	testl	%eax, %eax
	jne	.LBB36_2
# BB#1:                                 # %if.then
	movq	1736(%rbx), %r14
	movq	24(%rbx), %rdi
	movl	$.L.str.19, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	movq	%r14, %rbx
.LBB36_2:                               # %if.end
	movq	%rbx, %rdi
	callq	*1176(%rbx)
	movq	24(%rbx), %rdi
	movq	24(%rdi), %rax
	movl	$.L.str.19, %edx
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%rax                   # TAILCALL
.Lfunc_end36:
	.size	gx_default_destroy_buf_device, .Lfunc_end36-gx_default_destroy_buf_device
	.cfi_endproc

	.globl	gx_default_size_buf_device
	.align	16, 0x90
	.type	gx_default_size_buf_device,@function
gx_default_size_buf_device:             # @gx_default_size_buf_device
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp134:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp135:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp136:
	.cfi_def_cfa_offset 32
	subq	$2800, %rsp             # imm = 0xAF0
.Ltmp137:
	.cfi_def_cfa_offset 2832
.Ltmp138:
	.cfi_offset %rbx, -32
.Ltmp139:
	.cfi_offset %r14, -24
.Ltmp140:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rbx)
	movl	$0, 16(%rbx)
	testq	%rdx, %rdx
	je	.LBB37_3
# BB#1:                                 # %land.lhs.true
	cmpl	$0, 8(%rdx)
	js	.LBB37_3
# BB#2:                                 # %cond.true
	movl	(%rdx), %eax
	jmp	.LBB37_4
.LBB37_3:                               # %cond.false
	movzwl	108(%rbp), %eax
.LBB37_4:                               # %cond.end
	movw	%ax, 116(%rsp)
	movl	832(%rbp), %esi
	movl	%esi, 840(%rsp)
	movl	848(%rbp), %eax
	movl	%eax, 856(%rsp)
	movl	840(%rbp), %eax
	movl	%eax, 848(%rsp)
	movl	844(%rbp), %eax
	movl	%eax, 852(%rsp)
	leaq	8(%rsp), %rdi
	movl	%r14d, %edx
	movq	%rbx, %rcx
	callq	gdev_mem_bits_size
	movl	%eax, %ecx
	movl	$-25, %eax
	testl	%ecx, %ecx
	js	.LBB37_6
# BB#5:                                 # %if.end
	movl	832(%rbp), %esi
	leaq	8(%rsp), %rbp
	movq	%rbp, %rdi
	movl	%r14d, %edx
	callq	gdev_mem_line_ptrs_size
	movq	%rax, 8(%rbx)
	movl	$1, %esi
	movq	%rbp, %rdi
	callq	gx_device_raster
	movl	%eax, 16(%rbx)
	xorl	%eax, %eax
.LBB37_6:                               # %cleanup
	addq	$2800, %rsp             # imm = 0xAF0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gx_default_size_buf_device, .Lfunc_end37-gx_default_size_buf_device
	.cfi_endproc

	.globl	gx_default_setup_buf_device
	.align	16, 0x90
	.type	gx_default_setup_buf_device,@function
gx_default_setup_buf_device:            # @gx_default_setup_buf_device
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp141:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp142:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp143:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp144:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp145:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp146:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp147:
	.cfi_def_cfa_offset 64
.Ltmp148:
	.cfi_offset %rbx, -56
.Ltmp149:
	.cfi_offset %r12, -48
.Ltmp150:
	.cfi_offset %r13, -40
.Ltmp151:
	.cfi_offset %r14, -32
.Ltmp152:
	.cfi_offset %r15, -24
.Ltmp153:
	.cfi_offset %rbp, -16
	movl	%r9d, %r15d
	movl	%r8d, %r13d
	movq	%rcx, %r14
	movl	%edx, 4(%rsp)           # 4-byte Spill
	movq	%rsi, %r12
	movq	%rdi, %rbx
	callq	gs_device_is_memory
	testl	%eax, %eax
	movq	%rbx, %rbp
	jne	.LBB38_2
# BB#1:                                 # %cond.false
	movq	1736(%rbx), %rbp
.LBB38_2:                               # %cond.end
	movl	64(%rsp), %eax
	testq	%r14, %r14
	jne	.LBB38_9
# BB#3:                                 # %if.then
	movq	2576(%rbp), %rsi
	testq	%rsi, %rsi
	je	.LBB38_5
# BB#4:                                 # %if.then.3
	movq	1768(%rbp), %rdi
	movl	$.L.str.17, %edx
	callq	*24(%rdi)
.LBB38_5:                               # %if.end
	movq	24(%rbp), %rdi
	movq	88(%rdi), %rax
	cmpl	$0, 848(%rbp)
	movl	%r15d, %esi
	je	.LBB38_7
# BB#6:                                 # %cond.true.9
	movl	100(%rbp), %esi
	imull	64(%rsp), %esi
.LBB38_7:                               # %cond.end.11
	movl	$8, %edx
	movl	$.L.str.18, %ecx
	callq	*%rax
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB38_10
# BB#8:                                 # %if.end.16
	movq	24(%rbp), %rax
	movq	%rax, 1768(%rbp)
	movl	$0, 1776(%rbp)
	movl	64(%rsp), %eax
.LBB38_9:                               # %if.end.19
	movl	%eax, 836(%rbp)
	movl	4(%rsp), %edx           # 4-byte Reload
	imull	%edx, %r13d
	movslq	%r13d, %rax
	addq	%rax, %r12
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movq	%r14, %rcx
	movl	%r15d, %r8d
	callq	gdev_mem_set_line_ptrs
	movl	%r15d, 836(%rbp)
	movl	%r15d, 836(%rbx)
.LBB38_11:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB38_10:                              # %cleanup
	movl	$-25, %eax
	jmp	.LBB38_11
.Lfunc_end38:
	.size	gx_default_setup_buf_device, .Lfunc_end38-gx_default_setup_buf_device
	.cfi_endproc

	.globl	gdev_prn_get_lines
	.align	16, 0x90
	.type	gdev_prn_get_lines,@function
gdev_prn_get_lines:                     # @gdev_prn_get_lines
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp154:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp155:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp156:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp157:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp158:
	.cfi_def_cfa_offset 48
	subq	$560, %rsp              # imm = 0x230
.Ltmp159:
	.cfi_def_cfa_offset 608
.Ltmp160:
	.cfi_offset %rbx, -48
.Ltmp161:
	.cfi_offset %r12, -40
.Ltmp162:
	.cfi_offset %r14, -32
.Ltmp163:
	.cfi_offset %r15, -24
.Ltmp164:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movl	%r8d, %r15d
	movq	%rcx, %rbp
	movq	%rdi, %rbx
	movl	$-15, %eax
	movl	%edx, %ecx
	orl	%esi, %ecx
	js	.LBB39_13
# BB#1:                                 # %lor.lhs.false.2
	addl	%esi, %edx
	cmpl	836(%rbx), %edx
	jg	.LBB39_13
# BB#2:                                 # %if.end
	movq	616(%rsp), %r12
	movl	$0, 544(%rsp)
	movl	%esi, 548(%rsp)
	movl	832(%rbx), %eax
	movl	%eax, 552(%rsp)
	movl	%edx, 556(%rsp)
	movq	$1096810513, 8(%rsp)    # imm = 0x41600011
	testq	%r12, %r12
	je	.LBB39_4
# BB#3:                                 # %if.then.11
	movq	$1097465873, 8(%rsp)    # imm = 0x416A0011
	leaq	16(%rsp), %rdi
	movslq	100(%rbx), %rdx
	shlq	$3, %rdx
	xorl	%esi, %esi
	callq	memset
	movslq	8(%r12), %r12
	movq	%rbp, 16(%rsp,%r12,8)
	jmp	.LBB39_5
.LBB39_4:                               # %if.else
	movq	$1096876049, 8(%rsp)    # imm = 0x41610011
	movq	%rbp, 16(%rsp)
	xorl	%r12d, %r12d
.LBB39_5:                               # %if.end.18
	movl	$0, 528(%rsp)
	movl	%r15d, 536(%rsp)
	leaq	544(%rsp), %rsi
	leaq	8(%rsp), %rdx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	*1448(%rbx)
	testq	%r14, %r14
	je	.LBB39_8
# BB#6:                                 # %if.end.18
	testl	%eax, %eax
	jns	.LBB39_8
# BB#7:                                 # %if.then.23
	movq	$-1882193921, %rax      # imm = 0xFFFFFFFF8FCFFFFF
	andq	8(%rsp), %rax
	orq	$537919488, %rax        # imm = 0x20100000
	movq	%rax, 8(%rsp)
	leaq	544(%rsp), %rsi
	leaq	8(%rsp), %rdx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	*1448(%rbx)
.LBB39_8:                               # %if.end.30
	testl	%eax, %eax
	js	.LBB39_13
# BB#9:                                 # %if.end.34
	movq	608(%rsp), %rcx
	testq	%r14, %r14
	je	.LBB39_11
# BB#10:                                # %if.then.36
	movq	16(%rsp,%r12,8), %rdx
	movq	%rdx, (%r14)
.LBB39_11:                              # %if.end.40
	testq	%rcx, %rcx
	je	.LBB39_13
# BB#12:                                # %if.then.42
	movl	536(%rsp), %edx
	movl	%edx, (%rcx)
.LBB39_13:                              # %cleanup
	addq	$560, %rsp              # imm = 0x230
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end39:
	.size	gdev_prn_get_lines, .Lfunc_end39-gdev_prn_get_lines
	.cfi_endproc

	.globl	gdev_prn_get_bits
	.align	16, 0x90
	.type	gdev_prn_get_bits,@function
gdev_prn_get_bits:                      # @gdev_prn_get_bits
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp165:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp166:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp167:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp168:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp169:
	.cfi_def_cfa_offset 48
.Ltmp170:
	.cfi_offset %rbx, -48
.Ltmp171:
	.cfi_offset %r12, -40
.Ltmp172:
	.cfi_offset %r14, -32
.Ltmp173:
	.cfi_offset %r15, -24
.Ltmp174:
	.cfi_offset %rbp, -16
	movq	%rcx, %r15
	movq	%rdx, %r14
	movq	%rdi, %rbx
	callq	*1240(%rbx)
	movl	%eax, %r12d
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	gx_device_raster
	testl	%r12d, %r12d
	js	.LBB40_6
# BB#1:                                 # %if.end
	movzwl	108(%rbx), %ecx
	subl	832(%rbx), %ebp
	imull	%ecx, %ebp
	andl	$7, %ebp
	je	.LBB40_5
# BB#2:                                 # %if.then.5
	testq	%r15, %r15
	je	.LBB40_4
# BB#3:                                 # %cond.true
	movq	(%r15), %r14
.LBB40_4:                               # %cond.end
	movl	$255, %edx
	movb	%bpl, %cl
	shll	%cl, %edx
	decl	%eax
	movzbl	(%r14,%rax), %ecx
	andl	%edx, %ecx
	movb	%cl, (%r14,%rax)
.LBB40_5:                               # %cleanup
	xorl	%r12d, %r12d
.LBB40_6:                               # %cleanup
	movl	%r12d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end40:
	.size	gdev_prn_get_bits, .Lfunc_end40-gdev_prn_get_bits
	.cfi_endproc

	.globl	gdev_prn_copy_scan_lines
	.align	16, 0x90
	.type	gdev_prn_copy_scan_lines,@function
gdev_prn_copy_scan_lines:               # @gdev_prn_copy_scan_lines
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
	movl	%ecx, %r14d
	movq	%rdx, %r12
	movl	%esi, %ebp
	movq	%rdi, %r15
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, %ecx
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	movl	%r14d, %eax
	divl	%ecx
	movl	836(%r15), %r13d
	subl	%ebp, %r13d
	movq	%rbp, %r14
	cmpl	%r13d, %eax
	cmovlel	%eax, %r13d
	testl	%r13d, %r13d
	jle	.LBB41_6
# BB#1:                                 # %for.body.lr.ph
	movl	%ecx, %eax
	movq	%rax, (%rsp)            # 8-byte Spill
	.align	16, 0x90
.LBB41_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leal	(%r14,%rbx), %esi
	xorl	%ecx, %ecx
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	*1240(%r15)
	movl	%eax, %ebp
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	gx_device_raster
	testl	%ebp, %ebp
	js	.LBB41_7
# BB#3:                                 # %if.end.i
                                        #   in Loop: Header=BB41_2 Depth=1
	movzwl	108(%r15), %edx
	xorl	%ecx, %ecx
	subl	832(%r15), %ecx
	imull	%edx, %ecx
	andl	$7, %ecx
	je	.LBB41_5
# BB#4:                                 # %if.then.5.i
                                        #   in Loop: Header=BB41_2 Depth=1
	movl	$255, %edx
	shll	%cl, %edx
	decl	%eax
	movzbl	(%r12,%rax), %ecx
	andl	%edx, %ecx
	movb	%cl, (%r12,%rax)
.LBB41_5:                               # %for.inc
                                        #   in Loop: Header=BB41_2 Depth=1
	incl	%ebx
	addq	(%rsp), %r12            # 8-byte Folded Reload
	cmpl	%r13d, %ebx
	jl	.LBB41_2
.LBB41_6:
	movl	%r13d, %ebp
.LBB41_7:                               # %cleanup.6
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end41:
	.size	gdev_prn_copy_scan_lines, .Lfunc_end41-gdev_prn_copy_scan_lines
	.cfi_endproc

	.align	16, 0x90
	.type	prn_print_page_in_background,@function
prn_print_page_in_background:           # @prn_print_page_in_background
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp188:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp189:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp190:
	.cfi_def_cfa_offset 32
.Ltmp191:
	.cfi_offset %rbx, -32
.Ltmp192:
	.cfi_offset %r14, -24
.Ltmp193:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movl	24(%r14), %edx
	movq	8(%r14), %rbx
	movq	17176(%rbx), %rsi
	movq	%rbx, %rdi
	callq	*12976(%rbx)
	movl	%eax, %ebp
	movq	17176(%rbx), %rdi
	callq	fflush
	movq	17176(%rbx), %rdi
	callq	ferror
	testl	%eax, %eax
	movl	$-12, %ecx
	cmovel	%eax, %ecx
	testl	%ebp, %ebp
	cmovsl	%ebp, %ecx
	movl	%ecx, 28(%r14)
	movq	(%r14), %rdi
	addq	$8, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	gp_semaphore_signal     # TAILCALL
.Lfunc_end42:
	.size	prn_print_page_in_background, .Lfunc_end42-prn_print_page_in_background
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gx_device_printer"
	.size	.L.str, 18

	.type	st_device_printer,@object # @st_device_printer
	.section	.rodata,"a",@progbits
	.globl	st_device_printer
	.align	8
st_device_printer:
	.long	18472                   # 0x4828
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	device_printer_enum_ptrs
	.quad	device_printer_reloc_ptrs
	.quad	gx_device_finalize
	.quad	0
	.size	st_device_printer, 64

	.type	prn_std_procs,@object   # @prn_std_procs
	.globl	prn_std_procs
	.align	8
prn_std_procs:
	.quad	gdev_prn_open
	.quad	0
	.quad	0
	.quad	gdev_prn_output_page
	.quad	gdev_prn_close
	.quad	gx_default_b_w_map_rgb_color
	.quad	gx_default_b_w_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_prn_get_params
	.quad	gdev_prn_put_params
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
	.quad	0
	.quad	0
	.quad	gx_default_b_w_map_rgb_color
	.quad	gx_default_b_w_map_color_rgb
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
	.quad	gdev_prn_dev_spec_op
	.quad	0
	.quad	gx_default_get_profile
	.quad	gx_default_set_graphics_type_tag
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	prn_std_procs, 584

	.type	prn_bg_procs,@object    # @prn_bg_procs
	.globl	prn_bg_procs
	.align	8
prn_bg_procs:
	.quad	gdev_prn_open
	.quad	0
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	gx_default_b_w_map_rgb_color
	.quad	gx_default_b_w_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_prn_get_params
	.quad	gdev_prn_put_params
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
	.quad	0
	.quad	0
	.quad	gx_default_b_w_map_rgb_color
	.quad	gx_default_b_w_map_color_rgb
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
	.quad	gdev_prn_dev_spec_op
	.quad	0
	.quad	gx_default_get_profile
	.quad	gx_default_set_graphics_type_tag
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	prn_bg_procs, 584

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gdev_prn_free_memory"
	.size	.L.str.1, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Duplex"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"NumRenderingThreads"
	.size	.L.str.3, 20

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"OpenOutputFile"
	.size	.L.str.4, 15

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"BGPrint"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"ReopenPerPage"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"memory"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"file"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"BandListStorage"
	.size	.L.str.9, 16

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"OutputFile"
	.size	.L.str.10, 11

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.zero	1
	.size	.L.str.11, 1

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"saved-pages"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"InputAttributes"
	.size	.L.str.13, 16

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"OutputAttributes"
	.size	.L.str.14, 17

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"I/O Error: Output File \"%s\" must be seekable\n"
	.size	.L.str.15, 46

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"create_buf_device"
	.size	.L.str.16, 18

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"mem_close"
	.size	.L.str.17, 10

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"setup_buf_device"
	.size	.L.str.18, 17

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"destroy_buf_device"
	.size	.L.str.19, 19

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"printer buffer"
	.size	.L.str.20, 15

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"printer_buffer"
	.size	.L.str.21, 15

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"printer mem left"
	.size	.L.str.22, 17

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"printer buffer(open)"
	.size	.L.str.23, 21

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"cmd list buffer"
	.size	.L.str.24, 16

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"cmd list buf(retry open)"
	.size	.L.str.25, 25

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"cmd list buf"
	.size	.L.str.26, 13

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"clist_color_usage_array"
	.size	.L.str.27, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
