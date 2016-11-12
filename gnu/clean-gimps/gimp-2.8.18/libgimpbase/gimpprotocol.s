	.text
	.file	"gimpprotocol.bc"
	.globl	gp_init
	.align	16, 0x90
	.type	gp_init,@function
gp_init:                                # @gp_init
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
	xorl	%edi, %edi
	leaq	_gp_quit_read(%rip), %rsi
	leaq	_gp_quit_write(%rip), %rdx
	leaq	_gp_quit_destroy(%rip), %rcx
	callq	gimp_wire_register@PLT
	movl	$1, %edi
	leaq	_gp_config_read(%rip), %rsi
	leaq	_gp_config_write(%rip), %rdx
	leaq	_gp_config_destroy(%rip), %rcx
	callq	gimp_wire_register@PLT
	movl	$2, %edi
	leaq	_gp_tile_req_read(%rip), %rsi
	leaq	_gp_tile_req_write(%rip), %rdx
	leaq	_gp_tile_req_destroy(%rip), %rcx
	callq	gimp_wire_register@PLT
	movl	$3, %edi
	leaq	_gp_tile_ack_read(%rip), %rsi
	leaq	_gp_tile_ack_write(%rip), %rdx
	leaq	_gp_tile_ack_destroy(%rip), %rcx
	callq	gimp_wire_register@PLT
	movl	$4, %edi
	leaq	_gp_tile_data_read(%rip), %rsi
	leaq	_gp_tile_data_write(%rip), %rdx
	leaq	_gp_tile_data_destroy(%rip), %rcx
	callq	gimp_wire_register@PLT
	movl	$5, %edi
	leaq	_gp_proc_run_read(%rip), %rsi
	leaq	_gp_proc_run_write(%rip), %rdx
	leaq	_gp_proc_run_destroy(%rip), %rcx
	callq	gimp_wire_register@PLT
	movl	$6, %edi
	leaq	_gp_proc_return_read(%rip), %rsi
	leaq	_gp_proc_return_write(%rip), %rdx
	leaq	_gp_proc_return_destroy(%rip), %rcx
	callq	gimp_wire_register@PLT
	movl	$7, %edi
	leaq	_gp_temp_proc_run_read(%rip), %rsi
	leaq	_gp_temp_proc_run_write(%rip), %rdx
	leaq	_gp_temp_proc_run_destroy(%rip), %rcx
	callq	gimp_wire_register@PLT
	movl	$8, %edi
	leaq	_gp_temp_proc_return_read(%rip), %rsi
	leaq	_gp_temp_proc_return_write(%rip), %rdx
	leaq	_gp_temp_proc_return_destroy(%rip), %rcx
	callq	gimp_wire_register@PLT
	movl	$9, %edi
	leaq	_gp_proc_install_read(%rip), %rsi
	leaq	_gp_proc_install_write(%rip), %rdx
	leaq	_gp_proc_install_destroy(%rip), %rcx
	callq	gimp_wire_register@PLT
	movl	$10, %edi
	leaq	_gp_proc_uninstall_read(%rip), %rsi
	leaq	_gp_proc_uninstall_write(%rip), %rdx
	leaq	_gp_proc_uninstall_destroy(%rip), %rcx
	callq	gimp_wire_register@PLT
	movl	$11, %edi
	leaq	_gp_extension_ack_read(%rip), %rsi
	leaq	_gp_extension_ack_write(%rip), %rdx
	leaq	_gp_extension_ack_destroy(%rip), %rcx
	callq	gimp_wire_register@PLT
	movl	$12, %edi
	leaq	_gp_has_init_read(%rip), %rsi
	leaq	_gp_has_init_write(%rip), %rdx
	leaq	_gp_has_init_destroy(%rip), %rcx
	callq	gimp_wire_register@PLT
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gp_init, .Lfunc_end0-gp_init
	.cfi_endproc

	.align	16, 0x90
	.type	_gp_quit_read,@function
_gp_quit_read:                          # @_gp_quit_read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_gp_quit_read, .Lfunc_end1-_gp_quit_read
	.cfi_endproc

	.align	16, 0x90
	.type	_gp_quit_write,@function
_gp_quit_write:                         # @_gp_quit_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	_gp_quit_write, .Lfunc_end2-_gp_quit_write
	.cfi_endproc

	.align	16, 0x90
	.type	_gp_quit_destroy,@function
_gp_quit_destroy:                       # @_gp_quit_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	_gp_quit_destroy, .Lfunc_end3-_gp_quit_destroy
	.cfi_endproc

	.align	16, 0x90
	.type	_gp_config_read,@function
_gp_config_read:                        # @_gp_config_read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$72, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, %rdi
	callq	g_slice_alloc0@PLT
	movl	$1, %edx
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	callq	_gimp_wire_read_int32
	cmpl	$0, %eax
	jne	.LBB4_2
# BB#1:                                 # %if.then
	jmp	.LBB4_43
.LBB4_2:                                # %if.end
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$4, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int32
	cmpl	$0, %eax
	jne	.LBB4_4
# BB#3:                                 # %if.then.4
	jmp	.LBB4_43
.LBB4_4:                                # %if.end.5
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int32
	cmpl	$0, %eax
	jne	.LBB4_6
# BB#5:                                 # %if.then.8
	jmp	.LBB4_43
.LBB4_6:                                # %if.end.9
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$12, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int32
	cmpl	$0, %eax
	jne	.LBB4_8
# BB#7:                                 # %if.then.12
	jmp	.LBB4_43
.LBB4_8:                                # %if.end.13
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$16, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int8
	cmpl	$0, %eax
	jne	.LBB4_10
# BB#9:                                 # %if.then.16
	jmp	.LBB4_43
.LBB4_10:                               # %if.end.17
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$17, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int8
	cmpl	$0, %eax
	jne	.LBB4_12
# BB#11:                                # %if.then.20
	jmp	.LBB4_43
.LBB4_12:                               # %if.end.21
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$18, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int8
	cmpl	$0, %eax
	jne	.LBB4_14
# BB#13:                                # %if.then.24
	jmp	.LBB4_43
.LBB4_14:                               # %if.end.25
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$19, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int8
	cmpl	$0, %eax
	jne	.LBB4_16
# BB#15:                                # %if.then.28
	jmp	.LBB4_43
.LBB4_16:                               # %if.end.29
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$20, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int8
	cmpl	$0, %eax
	jne	.LBB4_18
# BB#17:                                # %if.then.32
	jmp	.LBB4_43
.LBB4_18:                               # %if.end.33
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$21, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int8
	cmpl	$0, %eax
	jne	.LBB4_20
# BB#19:                                # %if.then.36
	jmp	.LBB4_43
.LBB4_20:                               # %if.end.37
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$22, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int8
	cmpl	$0, %eax
	jne	.LBB4_22
# BB#21:                                # %if.then.40
	jmp	.LBB4_43
.LBB4_22:                               # %if.end.41
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$23, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int8
	cmpl	$0, %eax
	jne	.LBB4_24
# BB#23:                                # %if.then.44
	jmp	.LBB4_43
.LBB4_24:                               # %if.end.45
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$24, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int8
	cmpl	$0, %eax
	jne	.LBB4_26
# BB#25:                                # %if.then.48
	jmp	.LBB4_43
.LBB4_26:                               # %if.end.49
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$25, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int8
	cmpl	$0, %eax
	jne	.LBB4_28
# BB#27:                                # %if.then.52
	jmp	.LBB4_43
.LBB4_28:                               # %if.end.53
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$28, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int32
	cmpl	$0, %eax
	jne	.LBB4_30
# BB#29:                                # %if.then.56
	jmp	.LBB4_43
.LBB4_30:                               # %if.end.57
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$32, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int32
	cmpl	$0, %eax
	jne	.LBB4_32
# BB#31:                                # %if.then.60
	jmp	.LBB4_43
.LBB4_32:                               # %if.end.61
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$40, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_string
	cmpl	$0, %eax
	jne	.LBB4_34
# BB#33:                                # %if.then.64
	jmp	.LBB4_43
.LBB4_34:                               # %if.end.65
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$48, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_string
	cmpl	$0, %eax
	jne	.LBB4_36
# BB#35:                                # %if.then.68
	jmp	.LBB4_43
.LBB4_36:                               # %if.end.69
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$56, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_string
	cmpl	$0, %eax
	jne	.LBB4_38
# BB#37:                                # %if.then.72
	jmp	.LBB4_43
.LBB4_38:                               # %if.end.73
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$64, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int32
	cmpl	$0, %eax
	jne	.LBB4_40
# BB#39:                                # %if.then.76
	jmp	.LBB4_43
.LBB4_40:                               # %if.end.77
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$68, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int32
	cmpl	$0, %eax
	jne	.LBB4_42
# BB#41:                                # %if.then.80
	jmp	.LBB4_43
.LBB4_42:                               # %if.end.81
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
	jmp	.LBB4_45
.LBB4_43:                               # %cleanup
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_free@PLT
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_free@PLT
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdi
	callq	g_free@PLT
# BB#44:                                # %do.body
	movl	$72, %eax
	movl	%eax, %edi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1@PLT
.LBB4_45:                               # %do.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	_gp_config_read, .Lfunc_end4-_gp_config_read
	.cfi_endproc

	.align	16, 0x90
	.type	_gp_config_write,@function
_gp_config_write:                       # @_gp_config_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movl	%eax, %edx
	callq	_gimp_wire_write_int32
	cmpl	$0, %eax
	jne	.LBB5_2
# BB#1:                                 # %if.then
	jmp	.LBB5_42
.LBB5_2:                                # %if.end
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$4, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int32
	cmpl	$0, %eax
	jne	.LBB5_4
# BB#3:                                 # %if.then.3
	jmp	.LBB5_42
.LBB5_4:                                # %if.end.4
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int32
	cmpl	$0, %eax
	jne	.LBB5_6
# BB#5:                                 # %if.then.7
	jmp	.LBB5_42
.LBB5_6:                                # %if.end.8
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$12, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int32
	cmpl	$0, %eax
	jne	.LBB5_8
# BB#7:                                 # %if.then.11
	jmp	.LBB5_42
.LBB5_8:                                # %if.end.12
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$16, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int8
	cmpl	$0, %eax
	jne	.LBB5_10
# BB#9:                                 # %if.then.15
	jmp	.LBB5_42
.LBB5_10:                               # %if.end.16
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$17, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int8
	cmpl	$0, %eax
	jne	.LBB5_12
# BB#11:                                # %if.then.19
	jmp	.LBB5_42
.LBB5_12:                               # %if.end.20
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$18, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int8
	cmpl	$0, %eax
	jne	.LBB5_14
# BB#13:                                # %if.then.23
	jmp	.LBB5_42
.LBB5_14:                               # %if.end.24
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$19, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int8
	cmpl	$0, %eax
	jne	.LBB5_16
# BB#15:                                # %if.then.27
	jmp	.LBB5_42
.LBB5_16:                               # %if.end.28
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$20, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int8
	cmpl	$0, %eax
	jne	.LBB5_18
# BB#17:                                # %if.then.31
	jmp	.LBB5_42
.LBB5_18:                               # %if.end.32
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$21, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int8
	cmpl	$0, %eax
	jne	.LBB5_20
# BB#19:                                # %if.then.35
	jmp	.LBB5_42
.LBB5_20:                               # %if.end.36
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$22, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int8
	cmpl	$0, %eax
	jne	.LBB5_22
# BB#21:                                # %if.then.39
	jmp	.LBB5_42
.LBB5_22:                               # %if.end.40
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$23, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int8
	cmpl	$0, %eax
	jne	.LBB5_24
# BB#23:                                # %if.then.43
	jmp	.LBB5_42
.LBB5_24:                               # %if.end.44
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$24, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int8
	cmpl	$0, %eax
	jne	.LBB5_26
# BB#25:                                # %if.then.47
	jmp	.LBB5_42
.LBB5_26:                               # %if.end.48
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$25, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int8
	cmpl	$0, %eax
	jne	.LBB5_28
# BB#27:                                # %if.then.51
	jmp	.LBB5_42
.LBB5_28:                               # %if.end.52
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$28, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int32
	cmpl	$0, %eax
	jne	.LBB5_30
# BB#29:                                # %if.then.55
	jmp	.LBB5_42
.LBB5_30:                               # %if.end.56
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$32, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int32
	cmpl	$0, %eax
	jne	.LBB5_32
# BB#31:                                # %if.then.59
	jmp	.LBB5_42
.LBB5_32:                               # %if.end.60
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$40, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_string
	cmpl	$0, %eax
	jne	.LBB5_34
# BB#33:                                # %if.then.63
	jmp	.LBB5_42
.LBB5_34:                               # %if.end.64
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$48, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_string
	cmpl	$0, %eax
	jne	.LBB5_36
# BB#35:                                # %if.then.67
	jmp	.LBB5_42
.LBB5_36:                               # %if.end.68
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$56, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_string
	cmpl	$0, %eax
	jne	.LBB5_38
# BB#37:                                # %if.then.71
	jmp	.LBB5_42
.LBB5_38:                               # %if.end.72
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$64, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int32
	cmpl	$0, %eax
	jne	.LBB5_40
# BB#39:                                # %if.then.75
	jmp	.LBB5_42
.LBB5_40:                               # %if.end.76
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$68, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int32
	cmpl	$0, %eax
	jne	.LBB5_42
# BB#41:                                # %if.then.79
	jmp	.LBB5_42
.LBB5_42:                               # %if.end.80
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	_gp_config_write, .Lfunc_end5-_gp_config_write
	.cfi_endproc

	.align	16, 0x90
	.type	_gp_config_destroy,@function
_gp_config_destroy:                     # @_gp_config_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB6_4
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	g_free@PLT
# BB#2:                                 # %do.body
	movl	$72, %eax
	movl	%eax, %edi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1@PLT
# BB#3:                                 # %do.end
	jmp	.LBB6_4
.LBB6_4:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	_gp_config_destroy, .Lfunc_end6-_gp_config_destroy
	.cfi_endproc

	.align	16, 0x90
	.type	_gp_tile_req_read,@function
_gp_tile_req_read:                      # @_gp_tile_req_read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$12, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, %rdi
	callq	g_slice_alloc0@PLT
	movl	$1, %edx
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	callq	_gimp_wire_read_int32
	cmpl	$0, %eax
	jne	.LBB7_2
# BB#1:                                 # %if.then
	jmp	.LBB7_7
.LBB7_2:                                # %if.end
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$4, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int32
	cmpl	$0, %eax
	jne	.LBB7_4
# BB#3:                                 # %if.then.4
	jmp	.LBB7_7
.LBB7_4:                                # %if.end.5
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int32
	cmpl	$0, %eax
	jne	.LBB7_6
# BB#5:                                 # %if.then.8
	jmp	.LBB7_7
.LBB7_6:                                # %if.end.9
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
	jmp	.LBB7_10
.LBB7_7:                                # %cleanup
	jmp	.LBB7_8
.LBB7_8:                                # %do.body
	movl	$12, %eax
	movl	%eax, %edi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1@PLT
# BB#9:                                 # %do.end
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
.LBB7_10:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	_gp_tile_req_read, .Lfunc_end7-_gp_tile_req_read
	.cfi_endproc

	.align	16, 0x90
	.type	_gp_tile_req_write,@function
_gp_tile_req_write:                     # @_gp_tile_req_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movl	%eax, %edx
	callq	_gimp_wire_write_int32
	cmpl	$0, %eax
	jne	.LBB8_2
# BB#1:                                 # %if.then
	jmp	.LBB8_6
.LBB8_2:                                # %if.end
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$4, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int32
	cmpl	$0, %eax
	jne	.LBB8_4
# BB#3:                                 # %if.then.3
	jmp	.LBB8_6
.LBB8_4:                                # %if.end.4
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int32
	cmpl	$0, %eax
	jne	.LBB8_6
# BB#5:                                 # %if.then.7
	jmp	.LBB8_6
.LBB8_6:                                # %if.end.8
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	_gp_tile_req_write, .Lfunc_end8-_gp_tile_req_write
	.cfi_endproc

	.align	16, 0x90
	.type	_gp_tile_req_destroy,@function
_gp_tile_req_destroy:                   # @_gp_tile_req_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB9_4
# BB#1:                                 # %if.then
	jmp	.LBB9_2
.LBB9_2:                                # %do.body
	movl	$12, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rsi
	callq	g_slice_free1@PLT
# BB#3:                                 # %do.end
	jmp	.LBB9_4
.LBB9_4:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	_gp_tile_req_destroy, .Lfunc_end9-_gp_tile_req_destroy
	.cfi_endproc

	.align	16, 0x90
	.type	_gp_tile_ack_read,@function
_gp_tile_ack_read:                      # @_gp_tile_ack_read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	popq	%rbp
	retq
.Lfunc_end10:
	.size	_gp_tile_ack_read, .Lfunc_end10-_gp_tile_ack_read
	.cfi_endproc

	.align	16, 0x90
	.type	_gp_tile_ack_write,@function
_gp_tile_ack_write:                     # @_gp_tile_ack_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	popq	%rbp
	retq
.Lfunc_end11:
	.size	_gp_tile_ack_write, .Lfunc_end11-_gp_tile_ack_write
	.cfi_endproc

	.align	16, 0x90
	.type	_gp_tile_ack_destroy,@function
_gp_tile_ack_destroy:                   # @_gp_tile_ack_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end12:
	.size	_gp_tile_ack_destroy, .Lfunc_end12-_gp_tile_ack_destroy
	.cfi_endproc

	.align	16, 0x90
	.type	_gp_tile_data_read,@function
_gp_tile_data_read:                     # @_gp_tile_data_read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$40, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, %rdi
	callq	g_slice_alloc0@PLT
	movl	$1, %edx
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	callq	_gimp_wire_read_int32
	cmpl	$0, %eax
	jne	.LBB13_2
# BB#1:                                 # %if.then
	jmp	.LBB13_19
.LBB13_2:                               # %if.end
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$4, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int32
	cmpl	$0, %eax
	jne	.LBB13_4
# BB#3:                                 # %if.then.4
	jmp	.LBB13_19
.LBB13_4:                               # %if.end.5
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int32
	cmpl	$0, %eax
	jne	.LBB13_6
# BB#5:                                 # %if.then.8
	jmp	.LBB13_19
.LBB13_6:                               # %if.end.9
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$12, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int32
	cmpl	$0, %eax
	jne	.LBB13_8
# BB#7:                                 # %if.then.12
	jmp	.LBB13_19
.LBB13_8:                               # %if.end.13
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$16, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int32
	cmpl	$0, %eax
	jne	.LBB13_10
# BB#9:                                 # %if.then.16
	jmp	.LBB13_19
.LBB13_10:                              # %if.end.17
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$20, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int32
	cmpl	$0, %eax
	jne	.LBB13_12
# BB#11:                                # %if.then.20
	jmp	.LBB13_19
.LBB13_12:                              # %if.end.21
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$24, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int32
	cmpl	$0, %eax
	jne	.LBB13_14
# BB#13:                                # %if.then.24
	jmp	.LBB13_19
.LBB13_14:                              # %if.end.25
	movq	-32(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB13_18
# BB#15:                                # %if.then.28
	movl	$1, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movl	16(%rcx), %eax
	movq	-32(%rbp), %rcx
	imull	20(%rcx), %eax
	movq	-32(%rbp), %rcx
	imull	12(%rcx), %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	callq	g_malloc_n@PLT
	movq	-32(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	32(%rax), %rsi
	movl	-36(%rbp), %edx
	movq	-24(%rbp), %rcx
	callq	_gimp_wire_read_int8
	cmpl	$0, %eax
	jne	.LBB13_17
# BB#16:                                # %if.then.37
	jmp	.LBB13_19
.LBB13_17:                              # %if.end.38
	jmp	.LBB13_18
.LBB13_18:                              # %if.end.39
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
	jmp	.LBB13_22
.LBB13_19:                              # %cleanup
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_free@PLT
# BB#20:                                # %do.body
	movl	$40, %eax
	movl	%eax, %edi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1@PLT
# BB#21:                                # %do.end
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
.LBB13_22:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	_gp_tile_data_read, .Lfunc_end13-_gp_tile_data_read
	.cfi_endproc

	.align	16, 0x90
	.type	_gp_tile_data_write,@function
_gp_tile_data_write:                    # @_gp_tile_data_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movl	%eax, %edx
	callq	_gimp_wire_write_int32
	cmpl	$0, %eax
	jne	.LBB14_2
# BB#1:                                 # %if.then
	jmp	.LBB14_18
.LBB14_2:                               # %if.end
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$4, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int32
	cmpl	$0, %eax
	jne	.LBB14_4
# BB#3:                                 # %if.then.3
	jmp	.LBB14_18
.LBB14_4:                               # %if.end.4
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int32
	cmpl	$0, %eax
	jne	.LBB14_6
# BB#5:                                 # %if.then.7
	jmp	.LBB14_18
.LBB14_6:                               # %if.end.8
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$12, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int32
	cmpl	$0, %eax
	jne	.LBB14_8
# BB#7:                                 # %if.then.11
	jmp	.LBB14_18
.LBB14_8:                               # %if.end.12
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$16, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int32
	cmpl	$0, %eax
	jne	.LBB14_10
# BB#9:                                 # %if.then.15
	jmp	.LBB14_18
.LBB14_10:                              # %if.end.16
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$20, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int32
	cmpl	$0, %eax
	jne	.LBB14_12
# BB#11:                                # %if.then.19
	jmp	.LBB14_18
.LBB14_12:                              # %if.end.20
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$24, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int32
	cmpl	$0, %eax
	jne	.LBB14_14
# BB#13:                                # %if.then.23
	jmp	.LBB14_18
.LBB14_14:                              # %if.end.24
	movq	-32(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB14_18
# BB#15:                                # %if.then.27
	movq	-32(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-32(%rbp), %rax
	imull	20(%rax), %ecx
	movq	-32(%rbp), %rax
	imull	12(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	32(%rax), %rsi
	movl	-36(%rbp), %edx
	movq	-24(%rbp), %rcx
	callq	_gimp_wire_write_int8
	cmpl	$0, %eax
	jne	.LBB14_17
# BB#16:                                # %if.then.35
	jmp	.LBB14_18
.LBB14_17:                              # %if.end.36
	jmp	.LBB14_18
.LBB14_18:                              # %if.end.37
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	_gp_tile_data_write, .Lfunc_end14-_gp_tile_data_write
	.cfi_endproc

	.align	16, 0x90
	.type	_gp_tile_data_destroy,@function
_gp_tile_data_destroy:                  # @_gp_tile_data_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB15_6
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB15_3
# BB#2:                                 # %if.then.3
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
.LBB15_3:                               # %if.end
	jmp	.LBB15_4
.LBB15_4:                               # %do.body
	movl	$40, %eax
	movl	%eax, %edi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1@PLT
# BB#5:                                 # %do.end
	jmp	.LBB15_6
.LBB15_6:                               # %if.end.6
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	_gp_tile_data_destroy, .Lfunc_end15-_gp_tile_data_destroy
	.cfi_endproc

	.align	16, 0x90
	.type	_gp_proc_run_read,@function
_gp_proc_run_read:                      # @_gp_proc_run_read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$24, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, %rdi
	callq	g_slice_alloc0@PLT
	movl	$1, %edx
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	callq	_gimp_wire_read_string
	cmpl	$0, %eax
	jne	.LBB16_2
# BB#1:                                 # %if.then
	jmp	.LBB16_3
.LBB16_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$16, %rax
	movq	-32(%rbp), %rcx
	addq	$8, %rcx
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	callq	_gp_params_read
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
	jmp	.LBB16_6
.LBB16_3:                               # %cleanup
	jmp	.LBB16_4
.LBB16_4:                               # %do.body
	movl	$24, %eax
	movl	%eax, %edi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1@PLT
# BB#5:                                 # %do.end
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
.LBB16_6:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	_gp_proc_run_read, .Lfunc_end16-_gp_proc_run_read
	.cfi_endproc

	.align	16, 0x90
	.type	_gp_proc_run_write,@function
_gp_proc_run_write:                     # @_gp_proc_run_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movl	%eax, %edx
	callq	_gimp_wire_write_string
	cmpl	$0, %eax
	jne	.LBB17_2
# BB#1:                                 # %if.then
	jmp	.LBB17_3
.LBB17_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-32(%rbp), %rax
	movl	8(%rax), %edx
	movq	-24(%rbp), %rcx
	callq	_gp_params_write
.LBB17_3:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	_gp_proc_run_write, .Lfunc_end17-_gp_proc_run_write
	.cfi_endproc

	.align	16, 0x90
	.type	_gp_proc_run_destroy,@function
_gp_proc_run_destroy:                   # @_gp_proc_run_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB18_4
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	8(%rax), %esi
	callq	gp_params_destroy@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free@PLT
# BB#2:                                 # %do.body
	movl	$24, %eax
	movl	%eax, %edi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1@PLT
# BB#3:                                 # %do.end
	jmp	.LBB18_4
.LBB18_4:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	_gp_proc_run_destroy, .Lfunc_end18-_gp_proc_run_destroy
	.cfi_endproc

	.align	16, 0x90
	.type	_gp_proc_return_read,@function
_gp_proc_return_read:                   # @_gp_proc_return_read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$24, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, %rdi
	callq	g_slice_alloc0@PLT
	movl	$1, %edx
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	callq	_gimp_wire_read_string
	cmpl	$0, %eax
	jne	.LBB19_2
# BB#1:                                 # %if.then
	jmp	.LBB19_3
.LBB19_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$16, %rax
	movq	-32(%rbp), %rcx
	addq	$8, %rcx
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	callq	_gp_params_read
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
	jmp	.LBB19_6
.LBB19_3:                               # %cleanup
	jmp	.LBB19_4
.LBB19_4:                               # %do.body
	movl	$24, %eax
	movl	%eax, %edi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1@PLT
# BB#5:                                 # %do.end
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
.LBB19_6:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	_gp_proc_return_read, .Lfunc_end19-_gp_proc_return_read
	.cfi_endproc

	.align	16, 0x90
	.type	_gp_proc_return_write,@function
_gp_proc_return_write:                  # @_gp_proc_return_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movl	%eax, %edx
	callq	_gimp_wire_write_string
	cmpl	$0, %eax
	jne	.LBB20_2
# BB#1:                                 # %if.then
	jmp	.LBB20_3
.LBB20_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-32(%rbp), %rax
	movl	8(%rax), %edx
	movq	-24(%rbp), %rcx
	callq	_gp_params_write
.LBB20_3:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	_gp_proc_return_write, .Lfunc_end20-_gp_proc_return_write
	.cfi_endproc

	.align	16, 0x90
	.type	_gp_proc_return_destroy,@function
_gp_proc_return_destroy:                # @_gp_proc_return_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB21_4
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	8(%rax), %esi
	callq	gp_params_destroy@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free@PLT
# BB#2:                                 # %do.body
	movl	$24, %eax
	movl	%eax, %edi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1@PLT
# BB#3:                                 # %do.end
	jmp	.LBB21_4
.LBB21_4:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	_gp_proc_return_destroy, .Lfunc_end21-_gp_proc_return_destroy
	.cfi_endproc

	.align	16, 0x90
	.type	_gp_temp_proc_run_read,@function
_gp_temp_proc_run_read:                 # @_gp_temp_proc_run_read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_gp_proc_run_read
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	_gp_temp_proc_run_read, .Lfunc_end22-_gp_temp_proc_run_read
	.cfi_endproc

	.align	16, 0x90
	.type	_gp_temp_proc_run_write,@function
_gp_temp_proc_run_write:                # @_gp_temp_proc_run_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_gp_proc_run_write
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	_gp_temp_proc_run_write, .Lfunc_end23-_gp_temp_proc_run_write
	.cfi_endproc

	.align	16, 0x90
	.type	_gp_temp_proc_run_destroy,@function
_gp_temp_proc_run_destroy:              # @_gp_temp_proc_run_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_gp_proc_run_destroy
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	_gp_temp_proc_run_destroy, .Lfunc_end24-_gp_temp_proc_run_destroy
	.cfi_endproc

	.align	16, 0x90
	.type	_gp_temp_proc_return_read,@function
_gp_temp_proc_return_read:              # @_gp_temp_proc_return_read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_gp_proc_return_read
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	_gp_temp_proc_return_read, .Lfunc_end25-_gp_temp_proc_return_read
	.cfi_endproc

	.align	16, 0x90
	.type	_gp_temp_proc_return_write,@function
_gp_temp_proc_return_write:             # @_gp_temp_proc_return_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_gp_proc_return_write
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	_gp_temp_proc_return_write, .Lfunc_end26-_gp_temp_proc_return_write
	.cfi_endproc

	.align	16, 0x90
	.type	_gp_temp_proc_return_destroy,@function
_gp_temp_proc_return_destroy:           # @_gp_temp_proc_return_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_gp_proc_return_destroy
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	_gp_temp_proc_return_destroy, .Lfunc_end27-_gp_temp_proc_return_destroy
	.cfi_endproc

	.align	16, 0x90
	.type	_gp_proc_install_read,@function
_gp_proc_install_read:                  # @_gp_proc_install_read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$96, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, %rdi
	callq	g_slice_alloc0@PLT
	movl	$1, %edx
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	callq	_gimp_wire_read_string
	cmpl	$0, %eax
	jne	.LBB28_2
# BB#1:                                 # %if.then
	jmp	.LBB28_43
.LBB28_2:                               # %if.end
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_string
	cmpl	$0, %eax
	jne	.LBB28_4
# BB#3:                                 # %if.then.4
	jmp	.LBB28_43
.LBB28_4:                               # %if.end.5
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$16, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_string
	cmpl	$0, %eax
	jne	.LBB28_6
# BB#5:                                 # %if.then.8
	jmp	.LBB28_43
.LBB28_6:                               # %if.end.9
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$24, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_string
	cmpl	$0, %eax
	jne	.LBB28_8
# BB#7:                                 # %if.then.12
	jmp	.LBB28_43
.LBB28_8:                               # %if.end.13
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$32, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_string
	cmpl	$0, %eax
	jne	.LBB28_10
# BB#9:                                 # %if.then.16
	jmp	.LBB28_43
.LBB28_10:                              # %if.end.17
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$40, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_string
	cmpl	$0, %eax
	jne	.LBB28_12
# BB#11:                                # %if.then.20
	jmp	.LBB28_43
.LBB28_12:                              # %if.end.21
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$48, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_string
	cmpl	$0, %eax
	jne	.LBB28_14
# BB#13:                                # %if.then.24
	jmp	.LBB28_43
.LBB28_14:                              # %if.end.25
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$56, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_string
	cmpl	$0, %eax
	jne	.LBB28_16
# BB#15:                                # %if.then.28
	jmp	.LBB28_43
.LBB28_16:                              # %if.end.29
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$64, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int32
	cmpl	$0, %eax
	jne	.LBB28_18
# BB#17:                                # %if.then.32
	jmp	.LBB28_43
.LBB28_18:                              # %if.end.33
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$68, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int32
	cmpl	$0, %eax
	jne	.LBB28_20
# BB#19:                                # %if.then.36
	jmp	.LBB28_43
.LBB28_20:                              # %if.end.37
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$72, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int32
	cmpl	$0, %eax
	jne	.LBB28_22
# BB#21:                                # %if.then.40
	jmp	.LBB28_43
.LBB28_22:                              # %if.end.41
	movl	$24, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movl	68(%rcx), %eax
	movl	%eax, %edi
	callq	g_malloc0_n@PLT
	movq	-32(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movl	$0, -36(%rbp)
.LBB28_23:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	68(%rcx), %eax
	jae	.LBB28_32
# BB#24:                                # %for.body
                                        #   in Loop: Header=BB28_23 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	80(%rcx), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int32
	cmpl	$0, %eax
	jne	.LBB28_26
# BB#25:                                # %if.then.50
	jmp	.LBB28_43
.LBB28_26:                              # %if.end.51
                                        #   in Loop: Header=BB28_23 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	80(%rcx), %rax
	addq	$8, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_string
	cmpl	$0, %eax
	jne	.LBB28_28
# BB#27:                                # %if.then.58
	jmp	.LBB28_43
.LBB28_28:                              # %if.end.59
                                        #   in Loop: Header=BB28_23 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	80(%rcx), %rax
	addq	$16, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_string
	cmpl	$0, %eax
	jne	.LBB28_30
# BB#29:                                # %if.then.65
	jmp	.LBB28_43
.LBB28_30:                              # %if.end.66
                                        #   in Loop: Header=BB28_23 Depth=1
	jmp	.LBB28_31
.LBB28_31:                              # %for.inc
                                        #   in Loop: Header=BB28_23 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB28_23
.LBB28_32:                              # %for.end
	movl	$24, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movl	72(%rcx), %eax
	movl	%eax, %edi
	callq	g_malloc0_n@PLT
	movq	-32(%rbp), %rcx
	movq	%rax, 88(%rcx)
	movl	$0, -36(%rbp)
.LBB28_33:                              # %for.cond.70
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	72(%rcx), %eax
	jae	.LBB28_42
# BB#34:                                # %for.body.74
                                        #   in Loop: Header=BB28_33 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	88(%rcx), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int32
	cmpl	$0, %eax
	jne	.LBB28_36
# BB#35:                                # %if.then.81
	jmp	.LBB28_43
.LBB28_36:                              # %if.end.82
                                        #   in Loop: Header=BB28_33 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	88(%rcx), %rax
	addq	$8, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_string
	cmpl	$0, %eax
	jne	.LBB28_38
# BB#37:                                # %if.then.89
	jmp	.LBB28_43
.LBB28_38:                              # %if.end.90
                                        #   in Loop: Header=BB28_33 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	88(%rcx), %rax
	addq	$16, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_string
	cmpl	$0, %eax
	jne	.LBB28_40
# BB#39:                                # %if.then.97
	jmp	.LBB28_43
.LBB28_40:                              # %if.end.98
                                        #   in Loop: Header=BB28_33 Depth=1
	jmp	.LBB28_41
.LBB28_41:                              # %for.inc.99
                                        #   in Loop: Header=BB28_33 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB28_33
.LBB28_42:                              # %for.end.101
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
	jmp	.LBB28_62
.LBB28_43:                              # %cleanup
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free@PLT
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_free@PLT
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_free@PLT
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_free@PLT
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_free@PLT
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_free@PLT
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_free@PLT
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdi
	callq	g_free@PLT
	movq	-32(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB28_51
# BB#44:                                # %if.then.112
	movl	$0, -36(%rbp)
.LBB28_45:                              # %for.cond.113
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	68(%rcx), %eax
	jae	.LBB28_50
# BB#46:                                # %for.body.117
                                        #   in Loop: Header=BB28_45 Depth=1
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	80(%rcx), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB28_48
# BB#47:                                # %if.then.123
	jmp	.LBB28_50
.LBB28_48:                              # %if.end.124
                                        #   in Loop: Header=BB28_45 Depth=1
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	80(%rcx), %rax
	movq	8(%rax), %rdi
	callq	g_free@PLT
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	80(%rcx), %rax
	movq	16(%rax), %rdi
	callq	g_free@PLT
# BB#49:                                # %for.inc.133
                                        #   in Loop: Header=BB28_45 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB28_45
.LBB28_50:                              # %for.end.135
	movq	-32(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
.LBB28_51:                              # %if.end.137
	movq	-32(%rbp), %rax
	cmpq	$0, 88(%rax)
	je	.LBB28_59
# BB#52:                                # %if.then.140
	movl	$0, -36(%rbp)
.LBB28_53:                              # %for.cond.141
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	72(%rcx), %eax
	jae	.LBB28_58
# BB#54:                                # %for.body.145
                                        #   in Loop: Header=BB28_53 Depth=1
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	88(%rcx), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB28_56
# BB#55:                                # %if.then.151
	jmp	.LBB28_58
.LBB28_56:                              # %if.end.152
                                        #   in Loop: Header=BB28_53 Depth=1
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	88(%rcx), %rax
	movq	8(%rax), %rdi
	callq	g_free@PLT
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	88(%rcx), %rax
	movq	16(%rax), %rdi
	callq	g_free@PLT
# BB#57:                                # %for.inc.161
                                        #   in Loop: Header=BB28_53 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB28_53
.LBB28_58:                              # %for.end.163
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
.LBB28_59:                              # %if.end.165
	jmp	.LBB28_60
.LBB28_60:                              # %do.body
	movl	$96, %eax
	movl	%eax, %edi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1@PLT
# BB#61:                                # %do.end
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
.LBB28_62:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	_gp_proc_install_read, .Lfunc_end28-_gp_proc_install_read
	.cfi_endproc

	.align	16, 0x90
	.type	_gp_proc_install_write,@function
_gp_proc_install_write:                 # @_gp_proc_install_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movl	%eax, %edx
	callq	_gimp_wire_write_string
	cmpl	$0, %eax
	jne	.LBB29_2
# BB#1:                                 # %if.then
	jmp	.LBB29_42
.LBB29_2:                               # %if.end
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_string
	cmpl	$0, %eax
	jne	.LBB29_4
# BB#3:                                 # %if.then.3
	jmp	.LBB29_42
.LBB29_4:                               # %if.end.4
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$16, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_string
	cmpl	$0, %eax
	jne	.LBB29_6
# BB#5:                                 # %if.then.7
	jmp	.LBB29_42
.LBB29_6:                               # %if.end.8
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$24, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_string
	cmpl	$0, %eax
	jne	.LBB29_8
# BB#7:                                 # %if.then.11
	jmp	.LBB29_42
.LBB29_8:                               # %if.end.12
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$32, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_string
	cmpl	$0, %eax
	jne	.LBB29_10
# BB#9:                                 # %if.then.15
	jmp	.LBB29_42
.LBB29_10:                              # %if.end.16
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$40, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_string
	cmpl	$0, %eax
	jne	.LBB29_12
# BB#11:                                # %if.then.19
	jmp	.LBB29_42
.LBB29_12:                              # %if.end.20
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$48, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_string
	cmpl	$0, %eax
	jne	.LBB29_14
# BB#13:                                # %if.then.23
	jmp	.LBB29_42
.LBB29_14:                              # %if.end.24
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$56, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_string
	cmpl	$0, %eax
	jne	.LBB29_16
# BB#15:                                # %if.then.27
	jmp	.LBB29_42
.LBB29_16:                              # %if.end.28
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$64, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int32
	cmpl	$0, %eax
	jne	.LBB29_18
# BB#17:                                # %if.then.31
	jmp	.LBB29_42
.LBB29_18:                              # %if.end.32
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$68, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int32
	cmpl	$0, %eax
	jne	.LBB29_20
# BB#19:                                # %if.then.35
	jmp	.LBB29_42
.LBB29_20:                              # %if.end.36
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$72, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int32
	cmpl	$0, %eax
	jne	.LBB29_22
# BB#21:                                # %if.then.39
	jmp	.LBB29_42
.LBB29_22:                              # %if.end.40
	movl	$0, -36(%rbp)
.LBB29_23:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	68(%rcx), %eax
	jae	.LBB29_32
# BB#24:                                # %for.body
                                        #   in Loop: Header=BB29_23 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	80(%rcx), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int32
	cmpl	$0, %eax
	jne	.LBB29_26
# BB#25:                                # %if.then.45
	jmp	.LBB29_42
.LBB29_26:                              # %if.end.46
                                        #   in Loop: Header=BB29_23 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	80(%rcx), %rax
	addq	$8, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_string
	cmpl	$0, %eax
	jne	.LBB29_28
# BB#27:                                # %if.then.53
	jmp	.LBB29_42
.LBB29_28:                              # %if.end.54
                                        #   in Loop: Header=BB29_23 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	80(%rcx), %rax
	addq	$16, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_string
	cmpl	$0, %eax
	jne	.LBB29_30
# BB#29:                                # %if.then.60
	jmp	.LBB29_42
.LBB29_30:                              # %if.end.61
                                        #   in Loop: Header=BB29_23 Depth=1
	jmp	.LBB29_31
.LBB29_31:                              # %for.inc
                                        #   in Loop: Header=BB29_23 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB29_23
.LBB29_32:                              # %for.end
	movl	$0, -36(%rbp)
.LBB29_33:                              # %for.cond.62
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	72(%rcx), %eax
	jae	.LBB29_42
# BB#34:                                # %for.body.65
                                        #   in Loop: Header=BB29_33 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	88(%rcx), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int32
	cmpl	$0, %eax
	jne	.LBB29_36
# BB#35:                                # %if.then.71
	jmp	.LBB29_42
.LBB29_36:                              # %if.end.72
                                        #   in Loop: Header=BB29_33 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	88(%rcx), %rax
	addq	$8, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_string
	cmpl	$0, %eax
	jne	.LBB29_38
# BB#37:                                # %if.then.79
	jmp	.LBB29_42
.LBB29_38:                              # %if.end.80
                                        #   in Loop: Header=BB29_33 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	88(%rcx), %rax
	addq	$16, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_string
	cmpl	$0, %eax
	jne	.LBB29_40
# BB#39:                                # %if.then.87
	jmp	.LBB29_42
.LBB29_40:                              # %if.end.88
                                        #   in Loop: Header=BB29_33 Depth=1
	jmp	.LBB29_41
.LBB29_41:                              # %for.inc.89
                                        #   in Loop: Header=BB29_33 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB29_33
.LBB29_42:                              # %for.end.91
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	_gp_proc_install_write, .Lfunc_end29-_gp_proc_install_write
	.cfi_endproc

	.align	16, 0x90
	.type	_gp_proc_install_destroy,@function
_gp_proc_install_destroy:               # @_gp_proc_install_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB30_12
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	g_free@PLT
	movl	$0, -20(%rbp)
.LBB30_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	68(%rcx), %eax
	jae	.LBB30_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB30_2 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	80(%rcx), %rax
	movq	8(%rax), %rdi
	callq	g_free@PLT
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	80(%rcx), %rax
	movq	16(%rax), %rdi
	callq	g_free@PLT
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB30_2 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB30_2
.LBB30_5:                               # %for.end
	movl	$0, -20(%rbp)
.LBB30_6:                               # %for.cond.5
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	72(%rcx), %eax
	jae	.LBB30_9
# BB#7:                                 # %for.body.7
                                        #   in Loop: Header=BB30_6 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	88(%rcx), %rax
	movq	8(%rax), %rdi
	callq	g_free@PLT
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	88(%rcx), %rax
	movq	16(%rax), %rdi
	callq	g_free@PLT
# BB#8:                                 # %for.inc.15
                                        #   in Loop: Header=BB30_6 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB30_6
.LBB30_9:                               # %for.end.17
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
# BB#10:                                # %do.body
	movl	$96, %eax
	movl	%eax, %edi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1@PLT
# BB#11:                                # %do.end
	jmp	.LBB30_12
.LBB30_12:                              # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	_gp_proc_install_destroy, .Lfunc_end30-_gp_proc_install_destroy
	.cfi_endproc

	.align	16, 0x90
	.type	_gp_proc_uninstall_read,@function
_gp_proc_uninstall_read:                # @_gp_proc_uninstall_read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp95:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$8, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, %rdi
	callq	g_slice_alloc0@PLT
	movl	$1, %edx
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	callq	_gimp_wire_read_string
	cmpl	$0, %eax
	jne	.LBB31_2
# BB#1:                                 # %if.then
	jmp	.LBB31_3
.LBB31_2:                               # %if.end
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
	jmp	.LBB31_5
.LBB31_3:                               # %cleanup
	jmp	.LBB31_4
.LBB31_4:                               # %do.body
	movl	$8, %eax
	movl	%eax, %edi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1@PLT
.LBB31_5:                               # %do.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	_gp_proc_uninstall_read, .Lfunc_end31-_gp_proc_uninstall_read
	.cfi_endproc

	.align	16, 0x90
	.type	_gp_proc_uninstall_write,@function
_gp_proc_uninstall_write:               # @_gp_proc_uninstall_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movl	%eax, %edx
	callq	_gimp_wire_write_string
	cmpl	$0, %eax
	jne	.LBB32_2
# BB#1:                                 # %if.then
	jmp	.LBB32_2
.LBB32_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	_gp_proc_uninstall_write, .Lfunc_end32-_gp_proc_uninstall_write
	.cfi_endproc

	.align	16, 0x90
	.type	_gp_proc_uninstall_destroy,@function
_gp_proc_uninstall_destroy:             # @_gp_proc_uninstall_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp101:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB33_4
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free@PLT
# BB#2:                                 # %do.body
	movl	$8, %eax
	movl	%eax, %edi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1@PLT
# BB#3:                                 # %do.end
	jmp	.LBB33_4
.LBB33_4:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	_gp_proc_uninstall_destroy, .Lfunc_end33-_gp_proc_uninstall_destroy
	.cfi_endproc

	.align	16, 0x90
	.type	_gp_extension_ack_read,@function
_gp_extension_ack_read:                 # @_gp_extension_ack_read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp104:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	popq	%rbp
	retq
.Lfunc_end34:
	.size	_gp_extension_ack_read, .Lfunc_end34-_gp_extension_ack_read
	.cfi_endproc

	.align	16, 0x90
	.type	_gp_extension_ack_write,@function
_gp_extension_ack_write:                # @_gp_extension_ack_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp107:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	popq	%rbp
	retq
.Lfunc_end35:
	.size	_gp_extension_ack_write, .Lfunc_end35-_gp_extension_ack_write
	.cfi_endproc

	.align	16, 0x90
	.type	_gp_extension_ack_destroy,@function
_gp_extension_ack_destroy:              # @_gp_extension_ack_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp110:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end36:
	.size	_gp_extension_ack_destroy, .Lfunc_end36-_gp_extension_ack_destroy
	.cfi_endproc

	.align	16, 0x90
	.type	_gp_has_init_read,@function
_gp_has_init_read:                      # @_gp_has_init_read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp113:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	popq	%rbp
	retq
.Lfunc_end37:
	.size	_gp_has_init_read, .Lfunc_end37-_gp_has_init_read
	.cfi_endproc

	.align	16, 0x90
	.type	_gp_has_init_write,@function
_gp_has_init_write:                     # @_gp_has_init_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp114:
	.cfi_def_cfa_offset 16
.Ltmp115:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp116:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	popq	%rbp
	retq
.Lfunc_end38:
	.size	_gp_has_init_write, .Lfunc_end38-_gp_has_init_write
	.cfi_endproc

	.align	16, 0x90
	.type	_gp_has_init_destroy,@function
_gp_has_init_destroy:                   # @_gp_has_init_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp117:
	.cfi_def_cfa_offset 16
.Ltmp118:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp119:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end39:
	.size	_gp_has_init_destroy, .Lfunc_end39-_gp_has_init_destroy
	.cfi_endproc

	.globl	gp_quit_write
	.align	16, 0x90
	.type	gp_quit_write,@function
gp_quit_write:                          # @gp_quit_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp120:
	.cfi_def_cfa_offset 16
.Ltmp121:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp122:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-40(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	callq	gimp_wire_write_msg@PLT
	cmpl	$0, %eax
	jne	.LBB40_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB40_5
.LBB40_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_wire_flush@PLT
	cmpl	$0, %eax
	jne	.LBB40_4
# BB#3:                                 # %if.then.3
	movl	$0, -4(%rbp)
	jmp	.LBB40_5
.LBB40_4:                               # %if.end.4
	movl	$1, -4(%rbp)
.LBB40_5:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	gp_quit_write, .Lfunc_end40-gp_quit_write
	.cfi_endproc

	.globl	gp_config_write
	.align	16, 0x90
	.type	gp_config_write,@function
gp_config_write:                        # @gp_config_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp123:
	.cfi_def_cfa_offset 16
.Ltmp124:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp125:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-48(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$1, -48(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	callq	gimp_wire_write_msg@PLT
	cmpl	$0, %eax
	jne	.LBB41_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB41_5
.LBB41_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_wire_flush@PLT
	cmpl	$0, %eax
	jne	.LBB41_4
# BB#3:                                 # %if.then.3
	movl	$0, -4(%rbp)
	jmp	.LBB41_5
.LBB41_4:                               # %if.end.4
	movl	$1, -4(%rbp)
.LBB41_5:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	gp_config_write, .Lfunc_end41-gp_config_write
	.cfi_endproc

	.globl	gp_tile_req_write
	.align	16, 0x90
	.type	gp_tile_req_write,@function
gp_tile_req_write:                      # @gp_tile_req_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
.Ltmp127:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp128:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-48(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$2, -48(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	callq	gimp_wire_write_msg@PLT
	cmpl	$0, %eax
	jne	.LBB42_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB42_5
.LBB42_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_wire_flush@PLT
	cmpl	$0, %eax
	jne	.LBB42_4
# BB#3:                                 # %if.then.3
	movl	$0, -4(%rbp)
	jmp	.LBB42_5
.LBB42_4:                               # %if.end.4
	movl	$1, -4(%rbp)
.LBB42_5:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	gp_tile_req_write, .Lfunc_end42-gp_tile_req_write
	.cfi_endproc

	.globl	gp_tile_ack_write
	.align	16, 0x90
	.type	gp_tile_ack_write,@function
gp_tile_ack_write:                      # @gp_tile_ack_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp129:
	.cfi_def_cfa_offset 16
.Ltmp130:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp131:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-40(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$3, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	callq	gimp_wire_write_msg@PLT
	cmpl	$0, %eax
	jne	.LBB43_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB43_5
.LBB43_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_wire_flush@PLT
	cmpl	$0, %eax
	jne	.LBB43_4
# BB#3:                                 # %if.then.3
	movl	$0, -4(%rbp)
	jmp	.LBB43_5
.LBB43_4:                               # %if.end.4
	movl	$1, -4(%rbp)
.LBB43_5:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	gp_tile_ack_write, .Lfunc_end43-gp_tile_ack_write
	.cfi_endproc

	.globl	gp_tile_data_write
	.align	16, 0x90
	.type	gp_tile_data_write,@function
gp_tile_data_write:                     # @gp_tile_data_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp132:
	.cfi_def_cfa_offset 16
.Ltmp133:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp134:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-48(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$4, -48(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	callq	gimp_wire_write_msg@PLT
	cmpl	$0, %eax
	jne	.LBB44_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB44_5
.LBB44_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_wire_flush@PLT
	cmpl	$0, %eax
	jne	.LBB44_4
# BB#3:                                 # %if.then.3
	movl	$0, -4(%rbp)
	jmp	.LBB44_5
.LBB44_4:                               # %if.end.4
	movl	$1, -4(%rbp)
.LBB44_5:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	gp_tile_data_write, .Lfunc_end44-gp_tile_data_write
	.cfi_endproc

	.globl	gp_proc_run_write
	.align	16, 0x90
	.type	gp_proc_run_write,@function
gp_proc_run_write:                      # @gp_proc_run_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp135:
	.cfi_def_cfa_offset 16
.Ltmp136:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp137:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-48(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$5, -48(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	callq	gimp_wire_write_msg@PLT
	cmpl	$0, %eax
	jne	.LBB45_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB45_5
.LBB45_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_wire_flush@PLT
	cmpl	$0, %eax
	jne	.LBB45_4
# BB#3:                                 # %if.then.3
	movl	$0, -4(%rbp)
	jmp	.LBB45_5
.LBB45_4:                               # %if.end.4
	movl	$1, -4(%rbp)
.LBB45_5:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	gp_proc_run_write, .Lfunc_end45-gp_proc_run_write
	.cfi_endproc

	.globl	gp_proc_return_write
	.align	16, 0x90
	.type	gp_proc_return_write,@function
gp_proc_return_write:                   # @gp_proc_return_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp138:
	.cfi_def_cfa_offset 16
.Ltmp139:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp140:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-48(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$6, -48(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	callq	gimp_wire_write_msg@PLT
	cmpl	$0, %eax
	jne	.LBB46_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB46_5
.LBB46_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_wire_flush@PLT
	cmpl	$0, %eax
	jne	.LBB46_4
# BB#3:                                 # %if.then.3
	movl	$0, -4(%rbp)
	jmp	.LBB46_5
.LBB46_4:                               # %if.end.4
	movl	$1, -4(%rbp)
.LBB46_5:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	gp_proc_return_write, .Lfunc_end46-gp_proc_return_write
	.cfi_endproc

	.globl	gp_temp_proc_run_write
	.align	16, 0x90
	.type	gp_temp_proc_run_write,@function
gp_temp_proc_run_write:                 # @gp_temp_proc_run_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp141:
	.cfi_def_cfa_offset 16
.Ltmp142:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp143:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-48(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$7, -48(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	callq	gimp_wire_write_msg@PLT
	cmpl	$0, %eax
	jne	.LBB47_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB47_5
.LBB47_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_wire_flush@PLT
	cmpl	$0, %eax
	jne	.LBB47_4
# BB#3:                                 # %if.then.3
	movl	$0, -4(%rbp)
	jmp	.LBB47_5
.LBB47_4:                               # %if.end.4
	movl	$1, -4(%rbp)
.LBB47_5:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	gp_temp_proc_run_write, .Lfunc_end47-gp_temp_proc_run_write
	.cfi_endproc

	.globl	gp_temp_proc_return_write
	.align	16, 0x90
	.type	gp_temp_proc_return_write,@function
gp_temp_proc_return_write:              # @gp_temp_proc_return_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp144:
	.cfi_def_cfa_offset 16
.Ltmp145:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp146:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-48(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$8, -48(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	callq	gimp_wire_write_msg@PLT
	cmpl	$0, %eax
	jne	.LBB48_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB48_5
.LBB48_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_wire_flush@PLT
	cmpl	$0, %eax
	jne	.LBB48_4
# BB#3:                                 # %if.then.3
	movl	$0, -4(%rbp)
	jmp	.LBB48_5
.LBB48_4:                               # %if.end.4
	movl	$1, -4(%rbp)
.LBB48_5:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	gp_temp_proc_return_write, .Lfunc_end48-gp_temp_proc_return_write
	.cfi_endproc

	.globl	gp_proc_install_write
	.align	16, 0x90
	.type	gp_proc_install_write,@function
gp_proc_install_write:                  # @gp_proc_install_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp147:
	.cfi_def_cfa_offset 16
.Ltmp148:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp149:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-48(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$9, -48(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	callq	gimp_wire_write_msg@PLT
	cmpl	$0, %eax
	jne	.LBB49_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB49_5
.LBB49_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_wire_flush@PLT
	cmpl	$0, %eax
	jne	.LBB49_4
# BB#3:                                 # %if.then.3
	movl	$0, -4(%rbp)
	jmp	.LBB49_5
.LBB49_4:                               # %if.end.4
	movl	$1, -4(%rbp)
.LBB49_5:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	gp_proc_install_write, .Lfunc_end49-gp_proc_install_write
	.cfi_endproc

	.globl	gp_proc_uninstall_write
	.align	16, 0x90
	.type	gp_proc_uninstall_write,@function
gp_proc_uninstall_write:                # @gp_proc_uninstall_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp150:
	.cfi_def_cfa_offset 16
.Ltmp151:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp152:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-48(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$10, -48(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	callq	gimp_wire_write_msg@PLT
	cmpl	$0, %eax
	jne	.LBB50_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB50_5
.LBB50_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_wire_flush@PLT
	cmpl	$0, %eax
	jne	.LBB50_4
# BB#3:                                 # %if.then.3
	movl	$0, -4(%rbp)
	jmp	.LBB50_5
.LBB50_4:                               # %if.end.4
	movl	$1, -4(%rbp)
.LBB50_5:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	gp_proc_uninstall_write, .Lfunc_end50-gp_proc_uninstall_write
	.cfi_endproc

	.globl	gp_extension_ack_write
	.align	16, 0x90
	.type	gp_extension_ack_write,@function
gp_extension_ack_write:                 # @gp_extension_ack_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp153:
	.cfi_def_cfa_offset 16
.Ltmp154:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp155:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-40(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$11, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	callq	gimp_wire_write_msg@PLT
	cmpl	$0, %eax
	jne	.LBB51_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB51_5
.LBB51_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_wire_flush@PLT
	cmpl	$0, %eax
	jne	.LBB51_4
# BB#3:                                 # %if.then.3
	movl	$0, -4(%rbp)
	jmp	.LBB51_5
.LBB51_4:                               # %if.end.4
	movl	$1, -4(%rbp)
.LBB51_5:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	gp_extension_ack_write, .Lfunc_end51-gp_extension_ack_write
	.cfi_endproc

	.globl	gp_has_init_write
	.align	16, 0x90
	.type	gp_has_init_write,@function
gp_has_init_write:                      # @gp_has_init_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp156:
	.cfi_def_cfa_offset 16
.Ltmp157:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp158:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-40(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$12, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	callq	gimp_wire_write_msg@PLT
	cmpl	$0, %eax
	jne	.LBB52_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB52_5
.LBB52_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_wire_flush@PLT
	cmpl	$0, %eax
	jne	.LBB52_4
# BB#3:                                 # %if.then.3
	movl	$0, -4(%rbp)
	jmp	.LBB52_5
.LBB52_4:                               # %if.end.4
	movl	$1, -4(%rbp)
.LBB52_5:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	gp_has_init_write, .Lfunc_end52-gp_has_init_write
	.cfi_endproc

	.globl	gp_params_destroy
	.align	16, 0x90
	.type	gp_params_destroy,@function
gp_params_destroy:                      # @gp_params_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp159:
	.cfi_def_cfa_offset 16
.Ltmp160:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp161:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -16(%rbp)
.LBB53_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB53_12 Depth 2
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB53_26
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB53_1 Depth=1
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	leaq	(%rax,%rax,4), %rax
	movl	(%rcx,%rax,8), %edx
	movl	%edx, %eax
	movq	%rax, %rcx
	subq	$22, %rcx
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	ja	.LBB53_24
# BB#27:                                # %for.body
                                        #   in Loop: Header=BB53_1 Depth=1
	leaq	.LJTI53_0(%rip), %rax
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB53_3:                               # %sw.bb
                                        #   in Loop: Header=BB53_1 Depth=1
	jmp	.LBB53_24
.LBB53_4:                               # %sw.bb.1
                                        #   in Loop: Header=BB53_1 Depth=1
	movslq	-16(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_free@PLT
	jmp	.LBB53_24
.LBB53_5:                               # %sw.bb.4
                                        #   in Loop: Header=BB53_1 Depth=1
	movslq	-16(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	jmp	.LBB53_24
.LBB53_6:                               # %sw.bb.8
                                        #   in Loop: Header=BB53_1 Depth=1
	movslq	-16(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	jmp	.LBB53_24
.LBB53_7:                               # %sw.bb.12
                                        #   in Loop: Header=BB53_1 Depth=1
	movslq	-16(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_free@PLT
	jmp	.LBB53_24
.LBB53_8:                               # %sw.bb.16
                                        #   in Loop: Header=BB53_1 Depth=1
	movslq	-16(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	jmp	.LBB53_24
.LBB53_9:                               # %sw.bb.20
                                        #   in Loop: Header=BB53_1 Depth=1
	cmpl	$0, -16(%rbp)
	jle	.LBB53_16
# BB#10:                                # %land.lhs.true
                                        #   in Loop: Header=BB53_1 Depth=1
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	imulq	$40, %rcx, %rcx
	addq	-8(%rbp), %rcx
	cmpl	$0, (%rcx)
	jne	.LBB53_16
# BB#11:                                # %if.then
                                        #   in Loop: Header=BB53_1 Depth=1
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	imulq	$40, %rcx, %rcx
	addq	-8(%rbp), %rcx
	movl	8(%rcx), %eax
	movl	%eax, -20(%rbp)
	movl	$0, -24(%rbp)
.LBB53_12:                              # %for.cond.30
                                        #   Parent Loop BB53_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB53_15
# BB#13:                                # %for.body.32
                                        #   in Loop: Header=BB53_12 Depth=2
	movslq	-24(%rbp), %rax
	movslq	-16(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	g_free@PLT
# BB#14:                                # %for.inc
                                        #   in Loop: Header=BB53_12 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB53_12
.LBB53_15:                              # %for.end
                                        #   in Loop: Header=BB53_1 Depth=1
	movslq	-16(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
.LBB53_16:                              # %if.end
                                        #   in Loop: Header=BB53_1 Depth=1
	jmp	.LBB53_24
.LBB53_17:                              # %sw.bb.42
                                        #   in Loop: Header=BB53_1 Depth=1
	movslq	-16(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	jmp	.LBB53_24
.LBB53_18:                              # %sw.bb.46
                                        #   in Loop: Header=BB53_1 Depth=1
	movslq	-16(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB53_20
# BB#19:                                # %if.then.50
                                        #   in Loop: Header=BB53_1 Depth=1
	movslq	-16(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_free@PLT
.LBB53_20:                              # %if.end.56
                                        #   in Loop: Header=BB53_1 Depth=1
	movslq	-16(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB53_22
# BB#21:                                # %if.then.63
                                        #   in Loop: Header=BB53_1 Depth=1
	movslq	-16(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_free@PLT
.LBB53_22:                              # %if.end.69
                                        #   in Loop: Header=BB53_1 Depth=1
	jmp	.LBB53_24
.LBB53_23:                              # %sw.bb.70
                                        #   in Loop: Header=BB53_1 Depth=1
	jmp	.LBB53_24
.LBB53_24:                              # %sw.epilog
                                        #   in Loop: Header=BB53_1 Depth=1
	jmp	.LBB53_25
.LBB53_25:                              # %for.inc.71
                                        #   in Loop: Header=BB53_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB53_1
.LBB53_26:                              # %for.end.73
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	gp_params_destroy, .Lfunc_end53-gp_params_destroy
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI53_0:
	.long	.LBB53_3-.LJTI53_0
	.long	.LBB53_3-.LJTI53_0
	.long	.LBB53_3-.LJTI53_0
	.long	.LBB53_3-.LJTI53_0
	.long	.LBB53_4-.LJTI53_0
	.long	.LBB53_5-.LJTI53_0
	.long	.LBB53_6-.LJTI53_0
	.long	.LBB53_7-.LJTI53_0
	.long	.LBB53_8-.LJTI53_0
	.long	.LBB53_9-.LJTI53_0
	.long	.LBB53_3-.LJTI53_0
	.long	.LBB53_3-.LJTI53_0
	.long	.LBB53_3-.LJTI53_0
	.long	.LBB53_3-.LJTI53_0
	.long	.LBB53_3-.LJTI53_0
	.long	.LBB53_3-.LJTI53_0
	.long	.LBB53_3-.LJTI53_0
	.long	.LBB53_3-.LJTI53_0
	.long	.LBB53_17-.LJTI53_0
	.long	.LBB53_3-.LJTI53_0
	.long	.LBB53_18-.LJTI53_0
	.long	.LBB53_3-.LJTI53_0
	.long	.LBB53_23-.LJTI53_0

	.text
	.align	16, 0x90
	.type	_gp_params_read,@function
_gp_params_read:                        # @_gp_params_read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp162:
	.cfi_def_cfa_offset 16
.Ltmp163:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp164:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movl	%eax, %edx
	callq	_gimp_wire_read_int32
	cmpl	$0, %eax
	jne	.LBB54_2
# BB#1:                                 # %if.then
	jmp	.LBB54_110
.LBB54_2:                               # %if.end
	movq	-24(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB54_4
# BB#3:                                 # %if.then.1
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	jmp	.LBB54_110
.LBB54_4:                               # %if.end.2
	movl	$40, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movl	(%rcx), %eax
	movl	%eax, %edi
	callq	g_malloc0_n@PLT
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$0, -36(%rbp)
.LBB54_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	(%rcx), %eax
	jae	.LBB54_108
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$40, %rax, %rax
	addq	(%rcx), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int32
	cmpl	$0, %eax
	jne	.LBB54_8
# BB#7:                                 # %if.then.8
	jmp	.LBB54_109
.LBB54_8:                               # %if.end.9
                                        #   in Loop: Header=BB54_5 Depth=1
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	leaq	(%rax,%rax,4), %rax
	movl	(%rcx,%rax,8), %edx
	movl	%edx, %eax
	movq	%rax, %rcx
	subq	$22, %rcx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	ja	.LBB54_106
# BB#111:                               # %if.end.9
                                        #   in Loop: Header=BB54_5 Depth=1
	leaq	.LJTI54_0(%rip), %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB54_9:                               # %sw.bb
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$40, %rax, %rax
	addq	(%rcx), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int32
	cmpl	$0, %eax
	jne	.LBB54_11
# BB#10:                                # %if.then.17
	jmp	.LBB54_109
.LBB54_11:                              # %if.end.18
                                        #   in Loop: Header=BB54_5 Depth=1
	jmp	.LBB54_106
.LBB54_12:                              # %sw.bb.19
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$40, %rax, %rax
	addq	(%rcx), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int16
	cmpl	$0, %eax
	jne	.LBB54_14
# BB#13:                                # %if.then.25
	jmp	.LBB54_109
.LBB54_14:                              # %if.end.26
                                        #   in Loop: Header=BB54_5 Depth=1
	jmp	.LBB54_106
.LBB54_15:                              # %sw.bb.27
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$40, %rax, %rax
	addq	(%rcx), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int8
	cmpl	$0, %eax
	jne	.LBB54_17
# BB#16:                                # %if.then.33
	jmp	.LBB54_109
.LBB54_17:                              # %if.end.34
                                        #   in Loop: Header=BB54_5 Depth=1
	jmp	.LBB54_106
.LBB54_18:                              # %sw.bb.35
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$40, %rax, %rax
	addq	(%rcx), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_double
	cmpl	$0, %eax
	jne	.LBB54_20
# BB#19:                                # %if.then.41
	jmp	.LBB54_109
.LBB54_20:                              # %if.end.42
                                        #   in Loop: Header=BB54_5 Depth=1
	jmp	.LBB54_106
.LBB54_21:                              # %sw.bb.43
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$40, %rax, %rax
	addq	(%rcx), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_string
	cmpl	$0, %eax
	jne	.LBB54_23
# BB#22:                                # %if.then.49
	jmp	.LBB54_109
.LBB54_23:                              # %if.end.50
                                        #   in Loop: Header=BB54_5 Depth=1
	jmp	.LBB54_106
.LBB54_24:                              # %sw.bb.51
                                        #   in Loop: Header=BB54_5 Depth=1
	xorl	%eax, %eax
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-16(%rbp), %rsi
	imulq	$40, %rdx, %rdx
	addq	(%rsi), %rdx
	cmpl	8(%rdx), %eax
	jle	.LBB54_26
# BB#25:                                # %cond.true
                                        #   in Loop: Header=BB54_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB54_27
.LBB54_26:                              # %cond.false
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	imulq	$40, %rcx, %rcx
	addq	(%rdx), %rcx
	movl	8(%rcx), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB54_27:                              # %cond.end
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	$4, %ecx
	movl	%ecx, %esi
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-16(%rbp), %rdi
	imulq	$40, %rdx, %rdx
	addq	(%rdi), %rdx
	movl	%eax, 8(%rdx)
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rdi
	imulq	$40, %rdx, %rdx
	addq	(%rdi), %rdx
	movslq	8(%rdx), %rdi
	callq	g_malloc_n@PLT
	movslq	-36(%rbp), %rdx
	movq	-16(%rbp), %rsi
	imulq	$40, %rdx, %rdx
	addq	(%rsi), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rdx
	imulq	$40, %rax, %rax
	addq	(%rdx), %rax
	movq	8(%rax), %rsi
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-16(%rbp), %rdx
	imulq	$40, %rax, %rax
	addq	(%rdx), %rax
	movl	8(%rax), %edx
	movq	-32(%rbp), %rcx
	callq	_gimp_wire_read_int32
	cmpl	$0, %eax
	jne	.LBB54_29
# BB#28:                                # %if.then.89
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$40, %rax, %rax
	addq	(%rcx), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	jmp	.LBB54_109
.LBB54_29:                              # %if.end.94
                                        #   in Loop: Header=BB54_5 Depth=1
	jmp	.LBB54_106
.LBB54_30:                              # %sw.bb.95
                                        #   in Loop: Header=BB54_5 Depth=1
	xorl	%eax, %eax
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-16(%rbp), %rsi
	imulq	$40, %rdx, %rdx
	addq	(%rsi), %rdx
	cmpl	8(%rdx), %eax
	jle	.LBB54_32
# BB#31:                                # %cond.true.103
                                        #   in Loop: Header=BB54_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB54_33
.LBB54_32:                              # %cond.false.104
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	imulq	$40, %rcx, %rcx
	addq	(%rdx), %rcx
	movl	8(%rcx), %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB54_33:                              # %cond.end.110
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	$2, %ecx
	movl	%ecx, %esi
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-16(%rbp), %rdi
	imulq	$40, %rdx, %rdx
	addq	(%rdi), %rdx
	movl	%eax, 8(%rdx)
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rdi
	imulq	$40, %rdx, %rdx
	addq	(%rdi), %rdx
	movslq	8(%rdx), %rdi
	callq	g_malloc_n@PLT
	movslq	-36(%rbp), %rdx
	movq	-16(%rbp), %rsi
	imulq	$40, %rdx, %rdx
	addq	(%rsi), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rdx
	imulq	$40, %rax, %rax
	addq	(%rdx), %rax
	movq	8(%rax), %rsi
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-16(%rbp), %rdx
	imulq	$40, %rax, %rax
	addq	(%rdx), %rax
	movl	8(%rax), %edx
	movq	-32(%rbp), %rcx
	callq	_gimp_wire_read_int16
	cmpl	$0, %eax
	jne	.LBB54_35
# BB#34:                                # %if.then.138
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$40, %rax, %rax
	addq	(%rcx), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	jmp	.LBB54_109
.LBB54_35:                              # %if.end.143
                                        #   in Loop: Header=BB54_5 Depth=1
	jmp	.LBB54_106
.LBB54_36:                              # %sw.bb.144
                                        #   in Loop: Header=BB54_5 Depth=1
	xorl	%eax, %eax
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-16(%rbp), %rsi
	imulq	$40, %rdx, %rdx
	addq	(%rsi), %rdx
	cmpl	8(%rdx), %eax
	jle	.LBB54_38
# BB#37:                                # %cond.true.152
                                        #   in Loop: Header=BB54_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB54_39
.LBB54_38:                              # %cond.false.153
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	imulq	$40, %rcx, %rcx
	addq	(%rdx), %rcx
	movl	8(%rcx), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB54_39:                              # %cond.end.159
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-16(%rbp), %rdi
	imulq	$40, %rdx, %rdx
	addq	(%rdi), %rdx
	movl	%eax, 8(%rdx)
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rdi
	imulq	$40, %rdx, %rdx
	addq	(%rdi), %rdx
	movslq	8(%rdx), %rdi
	callq	g_malloc_n@PLT
	movslq	-36(%rbp), %rdx
	movq	-16(%rbp), %rsi
	imulq	$40, %rdx, %rdx
	addq	(%rsi), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rdx
	imulq	$40, %rax, %rax
	addq	(%rdx), %rax
	movq	8(%rax), %rsi
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-16(%rbp), %rdx
	imulq	$40, %rax, %rax
	addq	(%rdx), %rax
	movl	8(%rax), %edx
	movq	-32(%rbp), %rcx
	callq	_gimp_wire_read_int8
	cmpl	$0, %eax
	jne	.LBB54_41
# BB#40:                                # %if.then.187
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$40, %rax, %rax
	addq	(%rcx), %rax
	movq	8(%rax), %rdi
	callq	g_free@PLT
	jmp	.LBB54_109
.LBB54_41:                              # %if.end.192
                                        #   in Loop: Header=BB54_5 Depth=1
	jmp	.LBB54_106
.LBB54_42:                              # %sw.bb.193
                                        #   in Loop: Header=BB54_5 Depth=1
	xorl	%eax, %eax
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-16(%rbp), %rsi
	imulq	$40, %rdx, %rdx
	addq	(%rsi), %rdx
	cmpl	8(%rdx), %eax
	jle	.LBB54_44
# BB#43:                                # %cond.true.201
                                        #   in Loop: Header=BB54_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB54_45
.LBB54_44:                              # %cond.false.202
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	imulq	$40, %rcx, %rcx
	addq	(%rdx), %rcx
	movl	8(%rcx), %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB54_45:                              # %cond.end.208
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	$8, %ecx
	movl	%ecx, %esi
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-16(%rbp), %rdi
	imulq	$40, %rdx, %rdx
	addq	(%rdi), %rdx
	movl	%eax, 8(%rdx)
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rdi
	imulq	$40, %rdx, %rdx
	addq	(%rdi), %rdx
	movslq	8(%rdx), %rdi
	callq	g_malloc_n@PLT
	movslq	-36(%rbp), %rdx
	movq	-16(%rbp), %rsi
	imulq	$40, %rdx, %rdx
	addq	(%rsi), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rdx
	imulq	$40, %rax, %rax
	addq	(%rdx), %rax
	movq	8(%rax), %rsi
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-16(%rbp), %rdx
	imulq	$40, %rax, %rax
	addq	(%rdx), %rax
	movl	8(%rax), %edx
	movq	-32(%rbp), %rcx
	callq	_gimp_wire_read_double
	cmpl	$0, %eax
	jne	.LBB54_47
# BB#46:                                # %if.then.236
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$40, %rax, %rax
	addq	(%rcx), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	jmp	.LBB54_109
.LBB54_47:                              # %if.end.241
                                        #   in Loop: Header=BB54_5 Depth=1
	jmp	.LBB54_106
.LBB54_48:                              # %sw.bb.242
                                        #   in Loop: Header=BB54_5 Depth=1
	xorl	%eax, %eax
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-16(%rbp), %rsi
	imulq	$40, %rdx, %rdx
	addq	(%rsi), %rdx
	cmpl	8(%rdx), %eax
	jle	.LBB54_50
# BB#49:                                # %cond.true.250
                                        #   in Loop: Header=BB54_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB54_51
.LBB54_50:                              # %cond.false.251
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	imulq	$40, %rcx, %rcx
	addq	(%rdx), %rcx
	movl	8(%rcx), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB54_51:                              # %cond.end.257
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	$8, %ecx
	movl	%ecx, %esi
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-16(%rbp), %rdi
	imulq	$40, %rdx, %rdx
	addq	(%rdi), %rdx
	movl	%eax, 8(%rdx)
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rdi
	imulq	$40, %rdx, %rdx
	addq	(%rdi), %rdx
	movslq	8(%rdx), %rdi
	callq	g_malloc0_n@PLT
	movslq	-36(%rbp), %rdx
	movq	-16(%rbp), %rsi
	imulq	$40, %rdx, %rdx
	addq	(%rsi), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rdx
	imulq	$40, %rax, %rax
	addq	(%rdx), %rax
	movq	8(%rax), %rsi
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-16(%rbp), %rdx
	imulq	$40, %rax, %rax
	addq	(%rdx), %rax
	movl	8(%rax), %edx
	movq	-32(%rbp), %rcx
	callq	_gimp_wire_read_string
	cmpl	$0, %eax
	jne	.LBB54_57
# BB#52:                                # %if.then.285
	movl	$0, -40(%rbp)
.LBB54_53:                              # %for.cond.286
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-16(%rbp), %rsi
	imulq	$40, %rdx, %rdx
	addq	(%rsi), %rdx
	cmpl	8(%rdx), %eax
	jge	.LBB54_56
# BB#54:                                # %for.body.294
                                        #   in Loop: Header=BB54_53 Depth=1
	movslq	-40(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	-16(%rbp), %rdx
	imulq	$40, %rcx, %rcx
	addq	(%rdx), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	g_free@PLT
# BB#55:                                # %for.inc
                                        #   in Loop: Header=BB54_53 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB54_53
.LBB54_56:                              # %for.end
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$40, %rax, %rax
	addq	(%rcx), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	jmp	.LBB54_109
.LBB54_57:                              # %if.end.305
                                        #   in Loop: Header=BB54_5 Depth=1
	jmp	.LBB54_106
.LBB54_58:                              # %sw.bb.306
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$40, %rax, %rax
	addq	(%rcx), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_color
	cmpl	$0, %eax
	jne	.LBB54_60
# BB#59:                                # %if.then.312
	jmp	.LBB54_109
.LBB54_60:                              # %if.end.313
                                        #   in Loop: Header=BB54_5 Depth=1
	jmp	.LBB54_106
.LBB54_61:                              # %sw.bb.314
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$40, %rax, %rax
	addq	(%rcx), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int32
	cmpl	$0, %eax
	jne	.LBB54_63
# BB#62:                                # %if.then.320
	jmp	.LBB54_109
.LBB54_63:                              # %if.end.321
                                        #   in Loop: Header=BB54_5 Depth=1
	jmp	.LBB54_106
.LBB54_64:                              # %sw.bb.322
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$40, %rax, %rax
	addq	(%rcx), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int32
	cmpl	$0, %eax
	jne	.LBB54_66
# BB#65:                                # %if.then.328
	jmp	.LBB54_109
.LBB54_66:                              # %if.end.329
                                        #   in Loop: Header=BB54_5 Depth=1
	jmp	.LBB54_106
.LBB54_67:                              # %sw.bb.330
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$40, %rax, %rax
	addq	(%rcx), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int32
	cmpl	$0, %eax
	jne	.LBB54_69
# BB#68:                                # %if.then.336
	jmp	.LBB54_109
.LBB54_69:                              # %if.end.337
                                        #   in Loop: Header=BB54_5 Depth=1
	jmp	.LBB54_106
.LBB54_70:                              # %sw.bb.338
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$40, %rax, %rax
	addq	(%rcx), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int32
	cmpl	$0, %eax
	jne	.LBB54_72
# BB#71:                                # %if.then.344
	jmp	.LBB54_109
.LBB54_72:                              # %if.end.345
                                        #   in Loop: Header=BB54_5 Depth=1
	jmp	.LBB54_106
.LBB54_73:                              # %sw.bb.346
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$40, %rax, %rax
	addq	(%rcx), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int32
	cmpl	$0, %eax
	jne	.LBB54_75
# BB#74:                                # %if.then.352
	jmp	.LBB54_109
.LBB54_75:                              # %if.end.353
                                        #   in Loop: Header=BB54_5 Depth=1
	jmp	.LBB54_106
.LBB54_76:                              # %sw.bb.354
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$40, %rax, %rax
	addq	(%rcx), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int32
	cmpl	$0, %eax
	jne	.LBB54_78
# BB#77:                                # %if.then.360
	jmp	.LBB54_109
.LBB54_78:                              # %if.end.361
                                        #   in Loop: Header=BB54_5 Depth=1
	jmp	.LBB54_106
.LBB54_79:                              # %sw.bb.362
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$40, %rax, %rax
	addq	(%rcx), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int32
	cmpl	$0, %eax
	jne	.LBB54_81
# BB#80:                                # %if.then.368
	jmp	.LBB54_109
.LBB54_81:                              # %if.end.369
                                        #   in Loop: Header=BB54_5 Depth=1
	jmp	.LBB54_106
.LBB54_82:                              # %sw.bb.370
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	$32, %eax
	movl	%eax, %esi
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	imulq	$40, %rcx, %rcx
	addq	(%rdx), %rcx
	movslq	8(%rcx), %rdi
	callq	g_malloc_n@PLT
	movslq	-36(%rbp), %rcx
	movq	-16(%rbp), %rdx
	imulq	$40, %rcx, %rcx
	addq	(%rdx), %rcx
	movq	%rax, 8(%rcx)
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$40, %rax, %rax
	addq	(%rcx), %rax
	movq	8(%rax), %rsi
	movl	-36(%rbp), %r8d
	subl	$1, %r8d
	movslq	%r8d, %rax
	movq	-16(%rbp), %rcx
	imulq	$40, %rax, %rax
	addq	(%rcx), %rax
	movl	8(%rax), %edx
	movq	-32(%rbp), %rcx
	callq	_gimp_wire_read_color
	cmpl	$0, %eax
	jne	.LBB54_84
# BB#83:                                # %if.then.392
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$40, %rax, %rax
	addq	(%rcx), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	jmp	.LBB54_109
.LBB54_84:                              # %if.end.397
                                        #   in Loop: Header=BB54_5 Depth=1
	jmp	.LBB54_106
.LBB54_85:                              # %sw.bb.398
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$40, %rax, %rax
	addq	(%rcx), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int32
	cmpl	$0, %eax
	jne	.LBB54_87
# BB#86:                                # %if.then.404
	jmp	.LBB54_109
.LBB54_87:                              # %if.end.405
                                        #   in Loop: Header=BB54_5 Depth=1
	jmp	.LBB54_106
.LBB54_88:                              # %sw.bb.406
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$40, %rax, %rax
	addq	(%rcx), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_string
	cmpl	$0, %eax
	jne	.LBB54_90
# BB#89:                                # %if.then.412
	jmp	.LBB54_109
.LBB54_90:                              # %if.end.413
                                        #   in Loop: Header=BB54_5 Depth=1
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$40, %rax, %rax
	addq	(%rcx), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB54_92
# BB#91:                                # %if.then.421
                                        #   in Loop: Header=BB54_5 Depth=1
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$40, %rax, %rax
	addq	(%rcx), %rax
	movq	$0, 24(%rax)
	jmp	.LBB54_106
.LBB54_92:                              # %if.end.427
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$40, %rax, %rax
	addq	(%rcx), %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int32
	cmpl	$0, %eax
	jne	.LBB54_94
# BB#93:                                # %if.then.434
	jmp	.LBB54_109
.LBB54_94:                              # %if.end.435
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$40, %rax, %rax
	addq	(%rcx), %rax
	addq	$8, %rax
	addq	$12, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int32
	cmpl	$0, %eax
	jne	.LBB54_96
# BB#95:                                # %if.then.442
	jmp	.LBB54_109
.LBB54_96:                              # %if.end.443
                                        #   in Loop: Header=BB54_5 Depth=1
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$40, %rax, %rax
	addq	(%rcx), %rax
	cmpl	$0, 20(%rax)
	jbe	.LBB54_100
# BB#97:                                # %if.then.451
                                        #   in Loop: Header=BB54_5 Depth=1
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$40, %rax, %rax
	addq	(%rcx), %rax
	movl	20(%rax), %edx
	movl	%edx, %edi
	callq	g_malloc@PLT
	movslq	-36(%rbp), %rcx
	movq	-16(%rbp), %rdi
	imulq	$40, %rcx, %rcx
	addq	(%rdi), %rcx
	movq	%rax, 24(%rcx)
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$40, %rax, %rax
	addq	(%rcx), %rax
	movq	24(%rax), %rsi
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$40, %rax, %rax
	addq	(%rcx), %rax
	movl	20(%rax), %edx
	movq	-32(%rbp), %rcx
	callq	_gimp_wire_read_int8
	cmpl	$0, %eax
	jne	.LBB54_99
# BB#98:                                # %if.then.476
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$40, %rax, %rax
	addq	(%rcx), %rax
	movq	24(%rax), %rdi
	callq	g_free@PLT
	jmp	.LBB54_109
.LBB54_99:                              # %if.end.482
                                        #   in Loop: Header=BB54_5 Depth=1
	jmp	.LBB54_101
.LBB54_100:                             # %if.else
                                        #   in Loop: Header=BB54_5 Depth=1
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$40, %rax, %rax
	addq	(%rcx), %rax
	movq	$0, 24(%rax)
.LBB54_101:                             # %if.end.488
                                        #   in Loop: Header=BB54_5 Depth=1
	jmp	.LBB54_106
.LBB54_102:                             # %sw.bb.489
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$40, %rax, %rax
	addq	(%rcx), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_read_int32
	cmpl	$0, %eax
	jne	.LBB54_104
# BB#103:                               # %if.then.495
	jmp	.LBB54_109
.LBB54_104:                             # %if.end.496
                                        #   in Loop: Header=BB54_5 Depth=1
	jmp	.LBB54_106
.LBB54_105:                             # %sw.bb.497
                                        #   in Loop: Header=BB54_5 Depth=1
	jmp	.LBB54_106
.LBB54_106:                             # %sw.epilog
                                        #   in Loop: Header=BB54_5 Depth=1
	jmp	.LBB54_107
.LBB54_107:                             # %for.inc.498
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB54_5
.LBB54_108:                             # %for.end.500
	jmp	.LBB54_110
.LBB54_109:                             # %cleanup
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
.LBB54_110:                             # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	_gp_params_read, .Lfunc_end54-_gp_params_read
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI54_0:
	.long	.LBB54_9-.LJTI54_0
	.long	.LBB54_12-.LJTI54_0
	.long	.LBB54_15-.LJTI54_0
	.long	.LBB54_18-.LJTI54_0
	.long	.LBB54_21-.LJTI54_0
	.long	.LBB54_24-.LJTI54_0
	.long	.LBB54_30-.LJTI54_0
	.long	.LBB54_36-.LJTI54_0
	.long	.LBB54_42-.LJTI54_0
	.long	.LBB54_48-.LJTI54_0
	.long	.LBB54_58-.LJTI54_0
	.long	.LBB54_61-.LJTI54_0
	.long	.LBB54_64-.LJTI54_0
	.long	.LBB54_67-.LJTI54_0
	.long	.LBB54_70-.LJTI54_0
	.long	.LBB54_73-.LJTI54_0
	.long	.LBB54_76-.LJTI54_0
	.long	.LBB54_79-.LJTI54_0
	.long	.LBB54_82-.LJTI54_0
	.long	.LBB54_85-.LJTI54_0
	.long	.LBB54_88-.LJTI54_0
	.long	.LBB54_102-.LJTI54_0
	.long	.LBB54_105-.LJTI54_0

	.text
	.align	16, 0x90
	.type	_gp_params_write,@function
_gp_params_write:                       # @_gp_params_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp165:
	.cfi_def_cfa_offset 16
.Ltmp166:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp167:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	leaq	-20(%rbp), %rax
	movl	$1, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	movl	%r8d, %edx
	callq	_gimp_wire_write_int32
	cmpl	$0, %eax
	jne	.LBB55_2
# BB#1:                                 # %if.then
	jmp	.LBB55_86
.LBB55_2:                               # %if.end
	movl	$0, -36(%rbp)
.LBB55_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB55_86
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB55_3 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int32
	cmpl	$0, %eax
	jne	.LBB55_6
# BB#5:                                 # %if.then.3
	jmp	.LBB55_86
.LBB55_6:                               # %if.end.4
                                        #   in Loop: Header=BB55_3 Depth=1
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	leaq	(%rax,%rax,4), %rax
	movl	(%rcx,%rax,8), %edx
	movl	%edx, %eax
	movq	%rax, %rcx
	subq	$22, %rcx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	ja	.LBB55_84
# BB#87:                                # %if.end.4
                                        #   in Loop: Header=BB55_3 Depth=1
	leaq	.LJTI55_0(%rip), %rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB55_7:                               # %sw.bb
                                        #   in Loop: Header=BB55_3 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-16(%rbp), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int32
	cmpl	$0, %eax
	jne	.LBB55_9
# BB#8:                                 # %if.then.12
	jmp	.LBB55_86
.LBB55_9:                               # %if.end.13
                                        #   in Loop: Header=BB55_3 Depth=1
	jmp	.LBB55_84
.LBB55_10:                              # %sw.bb.14
                                        #   in Loop: Header=BB55_3 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-16(%rbp), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int16
	cmpl	$0, %eax
	jne	.LBB55_12
# BB#11:                                # %if.then.20
	jmp	.LBB55_86
.LBB55_12:                              # %if.end.21
                                        #   in Loop: Header=BB55_3 Depth=1
	jmp	.LBB55_84
.LBB55_13:                              # %sw.bb.22
                                        #   in Loop: Header=BB55_3 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-16(%rbp), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int8
	cmpl	$0, %eax
	jne	.LBB55_15
# BB#14:                                # %if.then.28
	jmp	.LBB55_86
.LBB55_15:                              # %if.end.29
                                        #   in Loop: Header=BB55_3 Depth=1
	jmp	.LBB55_84
.LBB55_16:                              # %sw.bb.30
                                        #   in Loop: Header=BB55_3 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-16(%rbp), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_double
	cmpl	$0, %eax
	jne	.LBB55_18
# BB#17:                                # %if.then.36
	jmp	.LBB55_86
.LBB55_18:                              # %if.end.37
                                        #   in Loop: Header=BB55_3 Depth=1
	jmp	.LBB55_84
.LBB55_19:                              # %sw.bb.38
                                        #   in Loop: Header=BB55_3 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-16(%rbp), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_string
	cmpl	$0, %eax
	jne	.LBB55_21
# BB#20:                                # %if.then.44
	jmp	.LBB55_86
.LBB55_21:                              # %if.end.45
                                        #   in Loop: Header=BB55_3 Depth=1
	jmp	.LBB55_84
.LBB55_22:                              # %sw.bb.46
                                        #   in Loop: Header=BB55_3 Depth=1
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	imulq	$40, %rax, %rax
	addq	-16(%rbp), %rax
	movl	8(%rax), %edx
	movq	-32(%rbp), %rcx
	callq	_gimp_wire_write_int32
	cmpl	$0, %eax
	jne	.LBB55_24
# BB#23:                                # %if.then.56
	jmp	.LBB55_86
.LBB55_24:                              # %if.end.57
                                        #   in Loop: Header=BB55_3 Depth=1
	jmp	.LBB55_84
.LBB55_25:                              # %sw.bb.58
                                        #   in Loop: Header=BB55_3 Depth=1
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	imulq	$40, %rax, %rax
	addq	-16(%rbp), %rax
	movl	8(%rax), %edx
	movq	-32(%rbp), %rcx
	callq	_gimp_wire_write_int16
	cmpl	$0, %eax
	jne	.LBB55_27
# BB#26:                                # %if.then.69
	jmp	.LBB55_86
.LBB55_27:                              # %if.end.70
                                        #   in Loop: Header=BB55_3 Depth=1
	jmp	.LBB55_84
.LBB55_28:                              # %sw.bb.71
                                        #   in Loop: Header=BB55_3 Depth=1
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	imulq	$40, %rax, %rax
	addq	-16(%rbp), %rax
	movl	8(%rax), %edx
	movq	-32(%rbp), %rcx
	callq	_gimp_wire_write_int8
	cmpl	$0, %eax
	jne	.LBB55_30
# BB#29:                                # %if.then.82
	jmp	.LBB55_86
.LBB55_30:                              # %if.end.83
                                        #   in Loop: Header=BB55_3 Depth=1
	jmp	.LBB55_84
.LBB55_31:                              # %sw.bb.84
                                        #   in Loop: Header=BB55_3 Depth=1
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	imulq	$40, %rax, %rax
	addq	-16(%rbp), %rax
	movl	8(%rax), %edx
	movq	-32(%rbp), %rcx
	callq	_gimp_wire_write_double
	cmpl	$0, %eax
	jne	.LBB55_33
# BB#32:                                # %if.then.95
	jmp	.LBB55_86
.LBB55_33:                              # %if.end.96
                                        #   in Loop: Header=BB55_3 Depth=1
	jmp	.LBB55_84
.LBB55_34:                              # %sw.bb.97
                                        #   in Loop: Header=BB55_3 Depth=1
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	imulq	$40, %rax, %rax
	addq	-16(%rbp), %rax
	movl	8(%rax), %edx
	movq	-32(%rbp), %rcx
	callq	_gimp_wire_write_string
	cmpl	$0, %eax
	jne	.LBB55_36
# BB#35:                                # %if.then.108
	jmp	.LBB55_86
.LBB55_36:                              # %if.end.109
                                        #   in Loop: Header=BB55_3 Depth=1
	jmp	.LBB55_84
.LBB55_37:                              # %sw.bb.110
                                        #   in Loop: Header=BB55_3 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-16(%rbp), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_color
	cmpl	$0, %eax
	jne	.LBB55_39
# BB#38:                                # %if.then.116
	jmp	.LBB55_86
.LBB55_39:                              # %if.end.117
                                        #   in Loop: Header=BB55_3 Depth=1
	jmp	.LBB55_84
.LBB55_40:                              # %sw.bb.118
                                        #   in Loop: Header=BB55_3 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-16(%rbp), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int32
	cmpl	$0, %eax
	jne	.LBB55_42
# BB#41:                                # %if.then.124
	jmp	.LBB55_86
.LBB55_42:                              # %if.end.125
                                        #   in Loop: Header=BB55_3 Depth=1
	jmp	.LBB55_84
.LBB55_43:                              # %sw.bb.126
                                        #   in Loop: Header=BB55_3 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-16(%rbp), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int32
	cmpl	$0, %eax
	jne	.LBB55_45
# BB#44:                                # %if.then.132
	jmp	.LBB55_86
.LBB55_45:                              # %if.end.133
                                        #   in Loop: Header=BB55_3 Depth=1
	jmp	.LBB55_84
.LBB55_46:                              # %sw.bb.134
                                        #   in Loop: Header=BB55_3 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-16(%rbp), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int32
	cmpl	$0, %eax
	jne	.LBB55_48
# BB#47:                                # %if.then.140
	jmp	.LBB55_86
.LBB55_48:                              # %if.end.141
                                        #   in Loop: Header=BB55_3 Depth=1
	jmp	.LBB55_84
.LBB55_49:                              # %sw.bb.142
                                        #   in Loop: Header=BB55_3 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-16(%rbp), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int32
	cmpl	$0, %eax
	jne	.LBB55_51
# BB#50:                                # %if.then.148
	jmp	.LBB55_86
.LBB55_51:                              # %if.end.149
                                        #   in Loop: Header=BB55_3 Depth=1
	jmp	.LBB55_84
.LBB55_52:                              # %sw.bb.150
                                        #   in Loop: Header=BB55_3 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-16(%rbp), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int32
	cmpl	$0, %eax
	jne	.LBB55_54
# BB#53:                                # %if.then.156
	jmp	.LBB55_86
.LBB55_54:                              # %if.end.157
                                        #   in Loop: Header=BB55_3 Depth=1
	jmp	.LBB55_84
.LBB55_55:                              # %sw.bb.158
                                        #   in Loop: Header=BB55_3 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-16(%rbp), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int32
	cmpl	$0, %eax
	jne	.LBB55_57
# BB#56:                                # %if.then.164
	jmp	.LBB55_86
.LBB55_57:                              # %if.end.165
                                        #   in Loop: Header=BB55_3 Depth=1
	jmp	.LBB55_84
.LBB55_58:                              # %sw.bb.166
                                        #   in Loop: Header=BB55_3 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-16(%rbp), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int32
	cmpl	$0, %eax
	jne	.LBB55_60
# BB#59:                                # %if.then.172
	jmp	.LBB55_86
.LBB55_60:                              # %if.end.173
                                        #   in Loop: Header=BB55_3 Depth=1
	jmp	.LBB55_84
.LBB55_61:                              # %sw.bb.174
                                        #   in Loop: Header=BB55_3 Depth=1
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	imulq	$40, %rax, %rax
	addq	-16(%rbp), %rax
	movl	8(%rax), %edx
	movq	-32(%rbp), %rcx
	callq	_gimp_wire_write_color
	cmpl	$0, %eax
	jne	.LBB55_63
# BB#62:                                # %if.then.185
	jmp	.LBB55_86
.LBB55_63:                              # %if.end.186
                                        #   in Loop: Header=BB55_3 Depth=1
	jmp	.LBB55_84
.LBB55_64:                              # %sw.bb.187
                                        #   in Loop: Header=BB55_3 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-16(%rbp), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int32
	cmpl	$0, %eax
	jne	.LBB55_66
# BB#65:                                # %if.then.193
	jmp	.LBB55_86
.LBB55_66:                              # %if.end.194
                                        #   in Loop: Header=BB55_3 Depth=1
	jmp	.LBB55_84
.LBB55_67:                              # %sw.bb.195
                                        #   in Loop: Header=BB55_3 Depth=1
	movslq	-36(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB55_69
# BB#68:                                # %if.then.200
                                        #   in Loop: Header=BB55_3 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rcx
	callq	_gimp_wire_write_string
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB55_84
.LBB55_69:                              # %if.end.203
                                        #   in Loop: Header=BB55_3 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rcx
	callq	_gimp_wire_write_string
	cmpl	$0, %eax
	jne	.LBB55_71
# BB#70:                                # %if.then.207
	jmp	.LBB55_86
.LBB55_71:                              # %if.end.208
                                        #   in Loop: Header=BB55_3 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int32
	cmpl	$0, %eax
	jne	.LBB55_73
# BB#72:                                # %if.then.211
	jmp	.LBB55_86
.LBB55_73:                              # %if.end.212
                                        #   in Loop: Header=BB55_3 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rax
	addq	$12, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int32
	cmpl	$0, %eax
	jne	.LBB55_75
# BB#74:                                # %if.then.215
	jmp	.LBB55_86
.LBB55_75:                              # %if.end.216
                                        #   in Loop: Header=BB55_3 Depth=1
	movq	-48(%rbp), %rax
	cmpl	$0, 12(%rax)
	jbe	.LBB55_79
# BB#76:                                # %if.then.219
                                        #   in Loop: Header=BB55_3 Depth=1
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-48(%rbp), %rax
	movl	12(%rax), %edx
	movq	-32(%rbp), %rcx
	callq	_gimp_wire_write_int8
	cmpl	$0, %eax
	jne	.LBB55_78
# BB#77:                                # %if.then.224
	jmp	.LBB55_86
.LBB55_78:                              # %if.end.225
                                        #   in Loop: Header=BB55_3 Depth=1
	jmp	.LBB55_79
.LBB55_79:                              # %if.end.226
                                        #   in Loop: Header=BB55_3 Depth=1
	jmp	.LBB55_84
.LBB55_80:                              # %sw.bb.227
                                        #   in Loop: Header=BB55_3 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-16(%rbp), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int32
	cmpl	$0, %eax
	jne	.LBB55_82
# BB#81:                                # %if.then.233
	jmp	.LBB55_86
.LBB55_82:                              # %if.end.234
                                        #   in Loop: Header=BB55_3 Depth=1
	jmp	.LBB55_84
.LBB55_83:                              # %sw.bb.235
                                        #   in Loop: Header=BB55_3 Depth=1
	jmp	.LBB55_84
.LBB55_84:                              # %sw.epilog
                                        #   in Loop: Header=BB55_3 Depth=1
	jmp	.LBB55_85
.LBB55_85:                              # %for.inc
                                        #   in Loop: Header=BB55_3 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB55_3
.LBB55_86:                              # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	_gp_params_write, .Lfunc_end55-_gp_params_write
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI55_0:
	.long	.LBB55_7-.LJTI55_0
	.long	.LBB55_10-.LJTI55_0
	.long	.LBB55_13-.LJTI55_0
	.long	.LBB55_16-.LJTI55_0
	.long	.LBB55_19-.LJTI55_0
	.long	.LBB55_22-.LJTI55_0
	.long	.LBB55_25-.LJTI55_0
	.long	.LBB55_28-.LJTI55_0
	.long	.LBB55_31-.LJTI55_0
	.long	.LBB55_34-.LJTI55_0
	.long	.LBB55_37-.LJTI55_0
	.long	.LBB55_40-.LJTI55_0
	.long	.LBB55_43-.LJTI55_0
	.long	.LBB55_46-.LJTI55_0
	.long	.LBB55_49-.LJTI55_0
	.long	.LBB55_52-.LJTI55_0
	.long	.LBB55_55-.LJTI55_0
	.long	.LBB55_58-.LJTI55_0
	.long	.LBB55_61-.LJTI55_0
	.long	.LBB55_64-.LJTI55_0
	.long	.LBB55_67-.LJTI55_0
	.long	.LBB55_80-.LJTI55_0
	.long	.LBB55_83-.LJTI55_0

	.hidden	_gimp_wire_read_int32
	.hidden	_gimp_wire_read_int8
	.hidden	_gimp_wire_read_string
	.hidden	_gimp_wire_write_int32
	.hidden	_gimp_wire_write_int8
	.hidden	_gimp_wire_write_string
	.hidden	_gimp_wire_read_int16
	.hidden	_gimp_wire_read_double
	.hidden	_gimp_wire_read_color
	.hidden	_gimp_wire_write_int16
	.hidden	_gimp_wire_write_double
	.hidden	_gimp_wire_write_color

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
