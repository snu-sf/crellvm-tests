	.text
	.file	"gsiodev.bc"
	.globl	iodev_no_init
	.align	16, 0x90
	.type	iodev_no_init,@function
iodev_no_init:                          # @iodev_no_init
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	iodev_no_init, .Lfunc_end0-iodev_no_init
	.cfi_endproc

	.globl	iodev_no_open_device
	.align	16, 0x90
	.type	iodev_no_open_device,@function
iodev_no_open_device:                   # @iodev_no_open_device
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-9, %eax
	retq
.Lfunc_end1:
	.size	iodev_no_open_device, .Lfunc_end1-iodev_no_open_device
	.cfi_endproc

	.globl	iodev_os_gp_fopen
	.align	16, 0x90
	.type	iodev_os_gp_fopen,@function
iodev_os_gp_fopen:                      # @iodev_os_gp_fopen
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
	movq	%r8, %r15
	movq	%rcx, %r14
	movq	%rdx, %rbp
	movq	%rsi, %r12
	callq	__errno_location
	movq	%rax, %rbx
	movl	$0, (%rbx)
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	gp_fopen
	movq	%rax, (%r14)
	testq	%rax, %rax
	je	.LBB2_1
# BB#9:                                 # %if.end
	xorl	%r14d, %r14d
	testq	%r15, %r15
	je	.LBB2_12
# BB#10:                                # %if.end
	cmpq	%r12, %r15
	je	.LBB2_12
# BB#11:                                # %if.then.6
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	strcpy
	jmp	.LBB2_12
.LBB2_1:                                # %if.then
	movl	(%rbx), %eax
	movl	$-22, %r14d
	cmpl	$22, %eax
	jle	.LBB2_2
# BB#5:                                 # %if.then
	cmpl	$23, %eax
	je	.LBB2_13
# BB#6:                                 # %if.then
	cmpl	$24, %eax
	jne	.LBB2_7
.LBB2_13:                               # %sw.bb.4.i
	movl	$-13, %r14d
	jmp	.LBB2_12
.LBB2_2:                                # %if.then
	cmpl	$2, %eax
	je	.LBB2_12
# BB#3:                                 # %if.then
	cmpl	$13, %eax
	jne	.LBB2_8
# BB#4:                                 # %sw.bb.2.i
	movl	$-9, %r14d
	jmp	.LBB2_12
.LBB2_7:                                # %if.then
	cmpl	$36, %eax
	je	.LBB2_12
.LBB2_8:                                # %sw.default.i
	movl	$-12, %r14d
.LBB2_12:                               # %return
	movl	%r14d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	iodev_os_gp_fopen, .Lfunc_end2-iodev_os_gp_fopen
	.cfi_endproc

	.globl	iodev_os_fclose
	.align	16, 0x90
	.type	iodev_os_fclose,@function
iodev_os_fclose:                        # @iodev_os_fclose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp10:
	.cfi_def_cfa_offset 16
	movq	%rsi, %rdi
	callq	fclose
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end3:
	.size	iodev_os_fclose, .Lfunc_end3-iodev_os_fclose
	.cfi_endproc

	.align	16, 0x90
	.type	os_delete,@function
os_delete:                              # @os_delete
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp11:
	.cfi_def_cfa_offset 16
	movq	%rsi, %rdi
	callq	unlink
	testl	%eax, %eax
	movl	$-12, %ecx
	cmovnel	%ecx, %eax
	popq	%rdx
	retq
.Lfunc_end4:
	.size	os_delete, .Lfunc_end4-os_delete
	.cfi_endproc

	.align	16, 0x90
	.type	os_rename,@function
os_rename:                              # @os_rename
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp12:
	.cfi_def_cfa_offset 16
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	rename
	testl	%eax, %eax
	movl	$-12, %ecx
	cmovnel	%ecx, %eax
	popq	%rdx
	retq
.Lfunc_end5:
	.size	os_rename, .Lfunc_end5-os_rename
	.cfi_endproc

	.align	16, 0x90
	.type	os_status,@function
os_status:                              # @os_status
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp13:
	.cfi_def_cfa_offset 16
	movl	$1, %edi
	callq	__xstat64
	sarl	$31, %eax
	andl	$-22, %eax
	popq	%rdx
	retq
.Lfunc_end6:
	.size	os_status, .Lfunc_end6-os_status
	.cfi_endproc

	.align	16, 0x90
	.type	os_enumerate,@function
os_enumerate:                           # @os_enumerate
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	movl	%edx, %esi
	movq	%rcx, %rdx
	jmp	gp_enumerate_files_init # TAILCALL
.Lfunc_end7:
	.size	os_enumerate, .Lfunc_end7-os_enumerate
	.cfi_endproc

	.align	16, 0x90
	.type	os_get_params,@function
os_get_params:                          # @os_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 16
	subq	$48, %rsp
.Ltmp15:
	.cfi_def_cfa_offset 64
.Ltmp16:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movl	$0, 44(%rsp)
	movl	$2, 40(%rsp)
	movl	$1, 36(%rsp)
	movl	$0, 32(%rsp)
	movl	$1024, 28(%rsp)         # imm = 0x400
	movq	$1953125, 8(%rsp)       # imm = 0x1DCD65
	movq	$1464843, 16(%rsp)      # imm = 0x165A0B
	leaq	36(%rsp), %rdx
	movl	$.L.str.11, %esi
	movq	%rbx, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB8_10
# BB#1:                                 # %lor.lhs.false
	leaq	28(%rsp), %rdx
	movl	$.L.str.12, %esi
	movq	%rbx, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB8_10
# BB#2:                                 # %lor.lhs.false.6
	leaq	16(%rsp), %rdx
	movl	$.L.str.13, %esi
	movq	%rbx, %rdi
	callq	param_write_long
	testl	%eax, %eax
	js	.LBB8_10
# BB#3:                                 # %lor.lhs.false.10
	leaq	44(%rsp), %rdx
	movl	$.L.str.14, %esi
	movq	%rbx, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB8_10
# BB#4:                                 # %lor.lhs.false.14
	leaq	36(%rsp), %rdx
	movl	$.L.str.15, %esi
	movq	%rbx, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB8_10
# BB#5:                                 # %lor.lhs.false.18
	leaq	32(%rsp), %rdx
	movl	$.L.str.16, %esi
	movq	%rbx, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB8_10
# BB#6:                                 # %lor.lhs.false.22
	leaq	36(%rsp), %rdx
	movl	$.L.str.17, %esi
	movq	%rbx, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB8_10
# BB#7:                                 # %lor.lhs.false.26
	leaq	40(%rsp), %rdx
	movl	$.L.str.18, %esi
	movq	%rbx, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB8_10
# BB#8:                                 # %lor.lhs.false.30
	leaq	36(%rsp), %rdx
	movl	$.L.str.19, %esi
	movq	%rbx, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB8_10
# BB#9:                                 # %lor.lhs.false.34
	leaq	8(%rsp), %rdx
	movl	$.L.str.20, %esi
	movq	%rbx, %rdi
	callq	param_write_long
	movl	%eax, %ecx
	sarl	$31, %eax
	andl	%ecx, %eax
.LBB8_10:                               # %cleanup
	addq	$48, %rsp
	popq	%rbx
	retq
.Lfunc_end8:
	.size	os_get_params, .Lfunc_end8-os_get_params
	.cfi_endproc

	.globl	iodev_no_put_params
	.align	16, 0x90
	.type	iodev_no_put_params,@function
iodev_no_put_params:                    # @iodev_no_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rax
	movq	%rsi, %rdi
	jmpq	*64(%rax)               # TAILCALL
.Lfunc_end9:
	.size	iodev_no_put_params, .Lfunc_end9-iodev_no_put_params
	.cfi_endproc

	.globl	gs_iodev_init
	.align	16, 0x90
	.type	gs_iodev_init,@function
gs_iodev_init:                          # @gs_iodev_init
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
	pushq	%rax
.Ltmp23:
	.cfi_def_cfa_offset 64
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
	movq	%rdi, %rbx
	movl	gx_io_device_table_count(%rip), %ebp
	movl	$st_io_device_ptr_element, %edx
	movl	$.L.str.2, %ecx
	movl	%ebp, %esi
	callq	*104(%rbx)
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	gs_lib_ctx_get_interp_instance
	movq	%rax, %r12
	testq	%r14, %r14
	movl	$-25, %eax
	je	.LBB10_10
# BB#1:                                 # %entry
	testq	%r12, %r12
	je	.LBB10_10
# BB#2:                                 # %for.cond.preheader
	xorl	%r15d, %r15d
	testl	%ebp, %ebp
	je	.LBB10_12
# BB#3:                                 # %for.body.lr.ph
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB10_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$st_io_device, %esi
	movl	$.L.str.3, %edx
	movq	%rbx, %rdi
	callq	*72(%rbx)
	testq	%rax, %rax
	je	.LBB10_5
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB10_4 Depth=1
	movq	%rax, (%r14,%r15,8)
	movq	gx_io_device_table(,%r15,8), %rsi
	movl	$128, %edx
	movq	%rax, %rdi
	callq	memcpy
	incq	%r15
	cmpl	%ebp, %r15d
	jb	.LBB10_4
.LBB10_12:                              # %for.end
	movq	%r12, %rdx
	addq	$136, %rdx
	movq	%r14, 136(%r12)
	movq	%r12, (%rsp)            # 8-byte Spill
	xorl	%esi, %esi
	movl	$.L.str.4, %ecx
	movq	%rbx, %rdi
	callq	gs_register_struct_root
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB10_6
# BB#13:                                # %for.cond.19.preheader
	movl	%ebp, %r13d
	testl	%r13d, %r13d
	je	.LBB10_14
# BB#17:
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB10_18:                              # %for.body.21
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14,%rbp,8), %rdi
	movq	%rbx, %rsi
	callq	*16(%rdi)
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB10_6
# BB#15:                                # %for.cond.19
                                        #   in Loop: Header=BB10_18 Depth=1
	incq	%rbp
	cmpl	%r13d, %ebp
	jb	.LBB10_18
# BB#16:
	xorl	%eax, %eax
	jmp	.LBB10_10
.LBB10_5:                               # %for.cond.35.preheader.loopexit38
	movq	%r12, (%rsp)            # 8-byte Spill
	xorl	%r12d, %r12d
.LBB10_6:                               # %for.cond.35.preheader
	movq	24(%rbx), %rax
	testl	%r15d, %r15d
	jle	.LBB10_9
# BB#7:                                 # %for.body.37.lr.ph
	movslq	%r15d, %rbp
	incq	%rbp
	.align	16, 0x90
.LBB10_8:                               # %for.body.37
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%r14,%rbp,8), %rsi
	movl	$.L.str.3, %edx
	movq	%rbx, %rdi
	callq	*%rax
	movq	24(%rbx), %rax
	decq	%rbp
	cmpq	$1, %rbp
	jg	.LBB10_8
.LBB10_9:                               # %for.end.42
	movl	$.L.str.2, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*%rax
	movq	(%rsp), %rax            # 8-byte Reload
	movq	$0, 136(%rax)
	testl	%r12d, %r12d
	movl	$-25, %eax
	cmovsl	%r12d, %eax
	jmp	.LBB10_10
.LBB10_14:
	xorl	%eax, %eax
.LBB10_10:                              # %cleanup.47
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gs_iodev_init, .Lfunc_end10-gs_iodev_init
	.cfi_endproc

	.globl	iodev_no_open_file
	.align	16, 0x90
	.type	iodev_no_open_file,@function
iodev_no_open_file:                     # @iodev_no_open_file
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-9, %eax
	retq
.Lfunc_end11:
	.size	iodev_no_open_file, .Lfunc_end11-iodev_no_open_file
	.cfi_endproc

	.globl	iodev_no_fopen
	.align	16, 0x90
	.type	iodev_no_fopen,@function
iodev_no_fopen:                         # @iodev_no_fopen
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-9, %eax
	retq
.Lfunc_end12:
	.size	iodev_no_fopen, .Lfunc_end12-iodev_no_fopen
	.cfi_endproc

	.globl	iodev_no_fclose
	.align	16, 0x90
	.type	iodev_no_fclose,@function
iodev_no_fclose:                        # @iodev_no_fclose
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-12, %eax
	retq
.Lfunc_end13:
	.size	iodev_no_fclose, .Lfunc_end13-iodev_no_fclose
	.cfi_endproc

	.globl	iodev_no_delete_file
	.align	16, 0x90
	.type	iodev_no_delete_file,@function
iodev_no_delete_file:                   # @iodev_no_delete_file
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-9, %eax
	retq
.Lfunc_end14:
	.size	iodev_no_delete_file, .Lfunc_end14-iodev_no_delete_file
	.cfi_endproc

	.globl	iodev_no_rename_file
	.align	16, 0x90
	.type	iodev_no_rename_file,@function
iodev_no_rename_file:                   # @iodev_no_rename_file
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-9, %eax
	retq
.Lfunc_end15:
	.size	iodev_no_rename_file, .Lfunc_end15-iodev_no_rename_file
	.cfi_endproc

	.globl	iodev_no_file_status
	.align	16, 0x90
	.type	iodev_no_file_status,@function
iodev_no_file_status:                   # @iodev_no_file_status
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-22, %eax
	retq
.Lfunc_end16:
	.size	iodev_no_file_status, .Lfunc_end16-iodev_no_file_status
	.cfi_endproc

	.globl	iodev_no_enumerate_files
	.align	16, 0x90
	.type	iodev_no_enumerate_files,@function
iodev_no_enumerate_files:               # @iodev_no_enumerate_files
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end17:
	.size	iodev_no_enumerate_files, .Lfunc_end17-iodev_no_enumerate_files
	.cfi_endproc

	.globl	iodev_no_get_params
	.align	16, 0x90
	.type	iodev_no_get_params,@function
iodev_no_get_params:                    # @iodev_no_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end18:
	.size	iodev_no_get_params, .Lfunc_end18-iodev_no_get_params
	.cfi_endproc

	.globl	gs_fopen_errno_to_code
	.align	16, 0x90
	.type	gs_fopen_errno_to_code,@function
gs_fopen_errno_to_code:                 # @gs_fopen_errno_to_code
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-22, %eax
	cmpl	$22, %edi
	jle	.LBB19_1
# BB#4:                                 # %entry
	cmpl	$23, %edi
	je	.LBB19_9
# BB#5:                                 # %entry
	cmpl	$24, %edi
	jne	.LBB19_6
.LBB19_9:                               # %sw.bb.4
	movl	$-13, %eax
	retq
.LBB19_1:                               # %entry
	cmpl	$2, %edi
	je	.LBB19_8
# BB#2:                                 # %entry
	cmpl	$13, %edi
	jne	.LBB19_7
# BB#3:                                 # %sw.bb.2
	movl	$-9, %eax
	retq
.LBB19_6:                               # %entry
	cmpl	$36, %edi
	je	.LBB19_8
.LBB19_7:                               # %sw.default
	movl	$-12, %eax
.LBB19_8:                               # %return
	retq
.Lfunc_end19:
	.size	gs_fopen_errno_to_code, .Lfunc_end19-gs_fopen_errno_to_code
	.cfi_endproc

	.globl	gs_getiodevice
	.align	16, 0x90
	.type	gs_getiodevice,@function
gs_getiodevice:                         # @gs_getiodevice
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbx, -16
	movl	%esi, %ebx
	callq	gs_lib_ctx_get_interp_instance
	movq	%rax, %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB20_5
# BB#1:                                 # %lor.lhs.false
	xorl	%eax, %eax
	testl	%ebx, %ebx
	js	.LBB20_5
# BB#2:                                 # %lor.lhs.false
	movq	136(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB20_5
# BB#3:                                 # %lor.lhs.false
	cmpl	%ebx, gx_io_device_table_count(%rip)
	jbe	.LBB20_5
# BB#4:                                 # %if.end
	movslq	%ebx, %rax
	movq	(%rcx,%rax,8), %rax
.LBB20_5:                               # %cleanup
	popq	%rbx
	retq
.Lfunc_end20:
	.size	gs_getiodevice, .Lfunc_end20-gs_getiodevice
	.cfi_endproc

	.globl	gs_findiodevice
	.align	16, 0x90
	.type	gs_findiodevice,@function
gs_findiodevice:                        # @gs_findiodevice
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
	subq	$24, %rsp
.Ltmp38:
	.cfi_def_cfa_offset 80
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
	movl	%edx, %r15d
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	callq	gs_lib_ctx_get_interp_instance
	movq	136(%rax), %r13
	xorl	%ebx, %ebx
	testq	%r13, %r13
	je	.LBB21_11
# BB#1:                                 # %if.end
	cmpl	$2, %r15d
	jb	.LBB21_5
# BB#2:                                 # %land.lhs.true
	leal	-1(%r15), %eax
	movq	16(%rsp), %rcx          # 8-byte Reload
	movzbl	(%rcx,%rax), %ecx
	cmpl	$37, %ecx
	je	.LBB21_4
# BB#3:                                 # %select.mid
	movl	%r15d, %eax
.LBB21_4:                               # %select.end
	movl	%eax, %r15d
.LBB21_5:                               # %if.end.5
	movl	%r15d, %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	gx_io_device_table_count(%rip), %ebp
	xorl	%ebx, %ebx
	testl	%ebp, %ebp
	je	.LBB21_11
# BB#6:                                 # %for.body.lr.ph
	movq	8(%rsp), %rax           # 8-byte Reload
	leal	1(%rax), %r14d
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB21_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13,%r15,8), %rbx
	movq	(%rbx), %r12
	testq	%r12, %r12
	je	.LBB21_10
# BB#8:                                 # %land.lhs.true.12
                                        #   in Loop: Header=BB21_7 Depth=1
	movq	%r12, %rdi
	callq	strlen
	cmpq	%r14, %rax
	jne	.LBB21_10
# BB#9:                                 # %land.lhs.true.17
                                        #   in Loop: Header=BB21_7 Depth=1
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	%r12, %rsi
	movq	8(%rsp), %rdx           # 8-byte Reload
	callq	memcmp
	testl	%eax, %eax
	je	.LBB21_11
.LBB21_10:                              # %for.inc
                                        #   in Loop: Header=BB21_7 Depth=1
	incq	%r15
	cmpl	%ebp, %r15d
	movl	$0, %ebx
	jb	.LBB21_7
.LBB21_11:                              # %cleanup.24
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gs_findiodevice, .Lfunc_end21-gs_findiodevice
	.cfi_endproc

	.globl	gs_getdevparams
	.align	16, 0x90
	.type	gs_getdevparams,@function
gs_getdevparams:                        # @gs_getdevparams
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
	movq	8(%rbx), %rdi
	movq	%rdi, 8(%rsp)
	callq	strlen
	movl	%eax, 16(%rsp)
	movl	$1, 20(%rsp)
	leaq	8(%rsp), %rdx
	movl	$.L.str.5, %esi
	movq	%r14, %rdi
	callq	param_write_name
	testl	%eax, %eax
	js	.LBB22_2
# BB#1:                                 # %if.end
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*104(%rbx)
.LBB22_2:                               # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end22:
	.size	gs_getdevparams, .Lfunc_end22-gs_getdevparams
	.cfi_endproc

	.globl	gs_putdevparams
	.align	16, 0x90
	.type	gs_putdevparams,@function
gs_putdevparams:                        # @gs_putdevparams
	.cfi_startproc
# BB#0:                                 # %entry
	movq	112(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end23:
	.size	gs_putdevparams, .Lfunc_end23-gs_putdevparams
	.cfi_endproc

	.globl	gs_enumerate_files_init
	.align	16, 0x90
	.type	gs_enumerate_files_init,@function
gs_enumerate_files_init:                # @gs_enumerate_files_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp50:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp51:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp52:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp53:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp54:
	.cfi_def_cfa_offset 80
.Ltmp55:
	.cfi_offset %rbx, -40
.Ltmp56:
	.cfi_offset %r12, -32
.Ltmp57:
	.cfi_offset %r14, -24
.Ltmp58:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movl	%esi, %eax
	movq	%rdi, %rcx
	leaq	8(%rsp), %rdi
	movq	%rcx, %rsi
	movl	%eax, %edx
	movq	%r14, %rcx
	callq	gs_parse_file_name
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	js	.LBB24_11
# BB#1:                                 # %if.end
	movq	16(%rsp), %r12
	testq	%r12, %r12
	jne	.LBB24_6
# BB#2:                                 # %cond.true
	movq	%r14, %rdi
	callq	gs_lib_ctx_get_interp_instance
	xorl	%r12d, %r12d
	testq	%rax, %rax
	je	.LBB24_6
# BB#3:                                 # %lor.lhs.false.i
	movq	136(%rax), %rax
	xorl	%r12d, %r12d
	testq	%rax, %rax
	je	.LBB24_6
# BB#4:                                 # %lor.lhs.false.i
	movl	gx_io_device_table_count(%rip), %ecx
	testl	%ecx, %ecx
	je	.LBB24_6
# BB#5:                                 # %if.end.i
	movq	(%rax), %r12
.LBB24_6:                               # %cond.end
	movl	32(%rsp), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB24_11
# BB#7:                                 # %lor.lhs.false
	movq	80(%r12), %rbx
	movl	$iodev_no_enumerate_files, %ecx
	xorl	%eax, %eax
	cmpq	%rcx, %rbx
	je	.LBB24_11
# BB#8:                                 # %if.end.8
	movq	24(%rsp), %rsi
	movq	%r12, %rdi
	movq	%r14, %rcx
	callq	*%rbx
	movq	%rax, %r15
	xorl	%eax, %eax
	testq	%r15, %r15
	je	.LBB24_11
# BB#9:                                 # %if.end.15
	movl	$st_gs_file_enum, %esi
	movl	$.L.str.6, %edx
	movq	%r14, %rdi
	callq	*72(%r14)
	movq	%rax, %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB24_11
# BB#10:                                # %if.end.20
	movq	%r14, (%rcx)
	movq	%r12, 8(%rcx)
	movq	%r15, 16(%rcx)
	cmpq	$0, 16(%rsp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, 24(%rcx)
	movq	%rcx, %rax
.LBB24_11:                              # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end24:
	.size	gs_enumerate_files_init, .Lfunc_end24-gs_enumerate_files_init
	.cfi_endproc

	.globl	gs_enumerate_files_next
	.align	16, 0x90
	.type	gs_enumerate_files_next,@function
gs_enumerate_files_next:                # @gs_enumerate_files_next
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp59:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp60:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp61:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp62:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp63:
	.cfi_def_cfa_offset 48
.Ltmp64:
	.cfi_offset %rbx, -48
.Ltmp65:
	.cfi_offset %r12, -40
.Ltmp66:
	.cfi_offset %r13, -32
.Ltmp67:
	.cfi_offset %r14, -24
.Ltmp68:
	.cfi_offset %r15, -16
	movl	%edx, %ebx
	movq	%rsi, %r12
	movq	%rdi, %r14
	xorl	%r15d, %r15d
	cmpl	$0, 24(%r14)
	je	.LBB25_5
# BB#1:                                 # %cond.end
	movq	8(%r14), %rax
	movq	(%rax), %r13
	movq	%r13, %rdi
	callq	strlen
	movq	%rax, %r15
	cmpl	%ebx, %r15d
	jbe	.LBB25_3
# BB#2:                                 # %if.then
	incl	%ebx
	jmp	.LBB25_8
.LBB25_3:                               # %if.end
	testl	%r15d, %r15d
	jle	.LBB25_5
# BB#4:                                 # %if.then.4
	movslq	%r15d, %rdx
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	memcpy
.LBB25_5:                               # %if.end.9
	movq	8(%r14), %rax
	movq	16(%r14), %rdi
	movslq	%r15d, %rcx
	addq	%rcx, %r12
	subl	%ecx, %ebx
	movq	%r12, %rsi
	movl	%ebx, %edx
	callq	*88(%rax)
	movl	%eax, %ebx
	cmpl	$-1, %ebx
	je	.LBB25_6
# BB#7:                                 # %if.end.16
	addl	%r15d, %ebx
	jmp	.LBB25_8
.LBB25_6:                               # %if.then.14
	movq	(%r14), %rdi
	movl	$.L.str.7, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
	movl	$-1, %ebx
.LBB25_8:                               # %cleanup
	movl	%ebx, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end25:
	.size	gs_enumerate_files_next, .Lfunc_end25-gs_enumerate_files_next
	.cfi_endproc

	.globl	gs_enumerate_files_close
	.align	16, 0x90
	.type	gs_enumerate_files_close,@function
gs_enumerate_files_close:               # @gs_enumerate_files_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp69:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp70:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp71:
	.cfi_def_cfa_offset 32
.Ltmp72:
	.cfi_offset %rbx, -24
.Ltmp73:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	(%rbx), %r14
	movq	8(%rbx), %rax
	movq	16(%rbx), %rdi
	callq	*96(%rax)
	movq	24(%r14), %rax
	movl	$.L.str.7, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%rax                   # TAILCALL
.Lfunc_end26:
	.size	gs_enumerate_files_close, .Lfunc_end26-gs_enumerate_files_close
	.cfi_endproc

	.align	16, 0x90
	.type	iodev_ptr_elt_enum_ptrs,@function
iodev_ptr_elt_enum_ptrs:                # @iodev_ptr_elt_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edx, %edi
	xorl	%eax, %eax
	shrl	$3, %edi
	je	.LBB27_3
# BB#1:                                 # %if.end
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%edi
	movl	%eax, %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	jne	.LBB27_3
# BB#2:                                 # %sw.bb.i
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%edi
	movq	(%rsi,%rdx,8), %rax
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
.LBB27_3:                               # %cleanup
	retq
.Lfunc_end27:
	.size	iodev_ptr_elt_enum_ptrs, .Lfunc_end27-iodev_ptr_elt_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	iodev_ptr_elt_reloc_ptrs,@function
iodev_ptr_elt_reloc_ptrs:               # @iodev_ptr_elt_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp75:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp76:
	.cfi_def_cfa_offset 32
.Ltmp77:
	.cfi_offset %rbx, -32
.Ltmp78:
	.cfi_offset %r14, -24
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%esi, %ebp
	movq	%rdi, %rbx
	testl	$-8, %ebp
	je	.LBB28_3
# BB#1:                                 # %for.body.lr.ph
	shrl	$3, %ebp
	negl	%ebp
	.align	16, 0x90
.LBB28_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rax
	movq	(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, (%rbx)
	addq	$8, %rbx
	incl	%ebp
	jne	.LBB28_2
.LBB28_3:                               # %for.end
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end28:
	.size	iodev_ptr_elt_reloc_ptrs, .Lfunc_end28-iodev_ptr_elt_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	gs_iodev_finalize,@function
gs_iodev_finalize:                      # @gs_iodev_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	movq	192(%rdi), %rax
	cmpq	%rsi, 136(%rax)
	jne	.LBB29_2
# BB#1:                                 # %if.then
	movq	$0, 136(%rax)
.LBB29_2:                               # %if.end
	retq
.Lfunc_end29:
	.size	gs_iodev_finalize, .Lfunc_end29-gs_iodev_finalize
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%os%"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"FileSystem"
	.size	.L.str.1, 11

	.type	gs_iodev_os,@object     # @gs_iodev_os
	.section	.rodata,"a",@progbits
	.globl	gs_iodev_os
	.align	8
gs_iodev_os:
	.quad	.L.str
	.quad	.L.str.1
	.quad	iodev_no_init
	.quad	iodev_no_open_device
	.quad	0
	.quad	iodev_os_gp_fopen
	.quad	iodev_os_fclose
	.quad	os_delete
	.quad	os_rename
	.quad	os_status
	.quad	os_enumerate
	.quad	gp_enumerate_files_next
	.quad	gp_enumerate_files_close
	.quad	os_get_params
	.quad	iodev_no_put_params
	.quad	0
	.size	gs_iodev_os, 128

	.type	st_io_device_ptr_element,@object # @st_io_device_ptr_element
	.align	8
st_io_device_ptr_element:
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.8
	.quad	0
	.quad	0
	.quad	iodev_ptr_elt_enum_ptrs
	.quad	iodev_ptr_elt_reloc_ptrs
	.quad	gs_iodev_finalize
	.quad	0
	.size	st_io_device_ptr_element, 64

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"gs_iodev_init(table)"
	.size	.L.str.2, 21

	.type	st_io_device,@object    # @st_io_device
	.section	.rodata,"a",@progbits
	.align	8
st_io_device:
	.long	128                     # 0x80
	.zero	4
	.quad	.L.str.10
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	io_device_reloc_ptrs
	.size	st_io_device, 64

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"gs_iodev_init(iodev)"
	.size	.L.str.3, 21

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"io_device_table"
	.size	.L.str.4, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Type"
	.size	.L.str.5, 5

	.type	st_gs_file_enum,@object # @st_gs_file_enum
	.section	.rodata,"a",@progbits
	.align	8
st_gs_file_enum:
	.long	32                      # 0x20
	.zero	4
	.quad	.L.str.21
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	gs_file_enum_reloc_ptrs
	.size	st_gs_file_enum, 64

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"gs_enumerate_files_init"
	.size	.L.str.6, 24

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gs_enumerate_files_close"
	.size	.L.str.7, 25

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gx_io_device *[]"
	.size	.L.str.8, 17

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gx_io_device"
	.size	.L.str.10, 13

	.type	io_device_reloc_ptrs,@object # @io_device_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
io_device_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	io_device_enum_ptrs
	.size	io_device_reloc_ptrs, 24

	.type	io_device_enum_ptrs,@object # @io_device_enum_ptrs
	.align	2
io_device_enum_ptrs:
	.short	0                       # 0x0
	.short	120                     # 0x78
	.size	io_device_enum_ptrs, 4

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"HasNames"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"BlockSize"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Free"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"InitializeAction"
	.size	.L.str.14, 17

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Mounted"
	.size	.L.str.15, 8

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Removable"
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Searchable"
	.size	.L.str.17, 11

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"SearchOrder"
	.size	.L.str.18, 12

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Writeable"
	.size	.L.str.19, 10

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"LogicalSize"
	.size	.L.str.20, 12

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gs_file_enum"
	.size	.L.str.21, 13

	.type	gs_file_enum_reloc_ptrs,@object # @gs_file_enum_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
gs_file_enum_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	gs_file_enum_enum_ptrs
	.size	gs_file_enum_reloc_ptrs, 24

	.type	gs_file_enum_enum_ptrs,@object # @gs_file_enum_enum_ptrs
	.align	2
gs_file_enum_enum_ptrs:
	.short	0                       # 0x0
	.short	16                      # 0x10
	.size	gs_file_enum_enum_ptrs, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
