	.text
	.file	"gimpwire.bc"
	.globl	gimp_wire_register
	.align	16, 0x90
	.type	gimp_wire_register,@function
gimp_wire_register:                     # @gimp_wire_register
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
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$0, wire_ht(%rip)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	callq	gimp_wire_init
.LBB0_2:                                # %if.end
	leaq	-4(%rbp), %rax
	movq	wire_ht(%rip), %rdi
	movq	%rax, %rsi
	callq	g_hash_table_lookup@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB0_4
# BB#3:                                 # %if.then.2
	movl	$32, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0@PLT
	movq	%rax, -40(%rbp)
.LBB0_4:                                # %if.end.4
	movl	-4(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, 8(%rdx)
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, 16(%rdx)
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, 24(%rdx)
	movq	wire_ht(%rip), %rdi
	movq	-40(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, %rsi
	callq	g_hash_table_insert@PLT
	movl	%eax, -44(%rbp)         # 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_wire_register, .Lfunc_end0-gimp_wire_register
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_wire_init,@function
gimp_wire_init:                         # @gimp_wire_init
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
	cmpq	$0, wire_ht(%rip)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	leaq	gimp_wire_hash(%rip), %rax
	leaq	gimp_wire_compare(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_hash_table_new@PLT
	movq	%rax, wire_ht(%rip)
.LBB1_2:                                # %if.end
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_wire_init, .Lfunc_end1-gimp_wire_init
	.cfi_endproc

	.globl	gimp_wire_set_reader
	.align	16, 0x90
	.type	gimp_wire_set_reader,@function
gimp_wire_set_reader:                   # @gimp_wire_set_reader
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
	movq	-8(%rbp), %rdi
	movq	%rdi, wire_read_func(%rip)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_wire_set_reader, .Lfunc_end2-gimp_wire_set_reader
	.cfi_endproc

	.globl	gimp_wire_set_writer
	.align	16, 0x90
	.type	gimp_wire_set_writer,@function
gimp_wire_set_writer:                   # @gimp_wire_set_writer
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
	movq	-8(%rbp), %rdi
	movq	%rdi, wire_write_func(%rip)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_wire_set_writer, .Lfunc_end3-gimp_wire_set_writer
	.cfi_endproc

	.globl	gimp_wire_set_flusher
	.align	16, 0x90
	.type	gimp_wire_set_flusher,@function
gimp_wire_set_flusher:                  # @gimp_wire_set_flusher
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, wire_flush_func(%rip)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_wire_set_flusher, .Lfunc_end4-gimp_wire_set_flusher
	.cfi_endproc

	.globl	gimp_wire_read
	.align	16, 0x90
	.type	gimp_wire_read,@function
gimp_wire_read:                         # @gimp_wire_read
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -32(%rbp)
	jb	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_wire_read(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB5_24
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	cmpq	$0, wire_read_func(%rip)
	je	.LBB5_9
# BB#6:                                 # %if.then.1
	movq	wire_read_func(%rip), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB5_8
# BB#7:                                 # %if.then.3
	movl	$1, wire_error_val(%rip)
	movl	$0, -4(%rbp)
	jmp	.LBB5_24
.LBB5_8:                                # %if.end.4
	jmp	.LBB5_23
.LBB5_9:                                # %if.else.5
	movq	$0, -56(%rbp)
.LBB5_10:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_12 Depth 2
	cmpq	$0, -32(%rbp)
	jbe	.LBB5_22
# BB#11:                                # %while.body
                                        #   in Loop: Header=BB5_10 Depth=1
	jmp	.LBB5_12
.LBB5_12:                               # %do.body.7
                                        #   Parent Loop BB5_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	-64(%rbp), %rcx
	leaq	-56(%rbp), %r8
	movq	$0, -64(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	g_io_channel_read_chars@PLT
	movl	%eax, -44(%rbp)
# BB#13:                                # %do.cond
                                        #   in Loop: Header=BB5_12 Depth=2
	cmpl	$3, -44(%rbp)
	je	.LBB5_12
# BB#14:                                # %do.end.10
                                        #   in Loop: Header=BB5_10 Depth=1
	cmpl	$1, -44(%rbp)
	je	.LBB5_19
# BB#15:                                # %if.then.12
	cmpq	$0, -56(%rbp)
	je	.LBB5_17
# BB#16:                                # %if.then.14
	callq	g_get_prgname@PLT
	leaq	.L.str.2(%rip), %rdi
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_warning
	movq	-56(%rbp), %rdi
	callq	g_error_free@PLT
	jmp	.LBB5_18
.LBB5_17:                               # %if.else.16
	callq	g_get_prgname@PLT
	leaq	.L.str.3(%rip), %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_warning
.LBB5_18:                               # %if.end.18
	movl	$1, wire_error_val(%rip)
	movl	$0, -4(%rbp)
	jmp	.LBB5_24
.LBB5_19:                               # %if.end.19
                                        #   in Loop: Header=BB5_10 Depth=1
	cmpq	$0, -64(%rbp)
	jne	.LBB5_21
# BB#20:                                # %if.then.21
	callq	g_get_prgname@PLT
	leaq	.L.str.4(%rip), %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_warning
	movl	$1, wire_error_val(%rip)
	movl	$0, -4(%rbp)
	jmp	.LBB5_24
.LBB5_21:                               # %if.end.23
                                        #   in Loop: Header=BB5_10 Depth=1
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -32(%rbp)
	movq	-64(%rbp), %rax
	addq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB5_10
.LBB5_22:                               # %while.end
	jmp	.LBB5_23
.LBB5_23:                               # %if.end.24
	movl	$1, -4(%rbp)
.LBB5_24:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_wire_read, .Lfunc_end5-gimp_wire_read
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB6_2
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
.LBB6_2:                                # %entry
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
	leaq	.L.str(%rip), %rdi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end6:
	.size	g_warning, .Lfunc_end6-g_warning
	.cfi_endproc

	.globl	gimp_wire_write
	.align	16, 0x90
	.type	gimp_wire_write,@function
gimp_wire_write:                        # @gimp_wire_write
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -32(%rbp)
	jb	.LBB7_3
# BB#2:                                 # %if.then
	jmp	.LBB7_4
.LBB7_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_wire_write(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB7_22
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %do.end
	cmpq	$0, wire_write_func(%rip)
	je	.LBB7_9
# BB#6:                                 # %if.then.1
	movq	wire_write_func(%rip), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB7_8
# BB#7:                                 # %if.then.3
	callq	g_get_prgname@PLT
	leaq	.L.str.5(%rip), %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_warning
	movl	$1, wire_error_val(%rip)
	movl	$0, -4(%rbp)
	jmp	.LBB7_22
.LBB7_8:                                # %if.end.5
	jmp	.LBB7_21
.LBB7_9:                                # %if.else.6
	movq	$0, -56(%rbp)
.LBB7_10:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_12 Depth 2
	cmpq	$0, -32(%rbp)
	jbe	.LBB7_20
# BB#11:                                # %while.body
                                        #   in Loop: Header=BB7_10 Depth=1
	jmp	.LBB7_12
.LBB7_12:                               # %do.body.8
                                        #   Parent Loop BB7_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	-64(%rbp), %rcx
	leaq	-56(%rbp), %r8
	movq	$0, -64(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	g_io_channel_write_chars@PLT
	movl	%eax, -44(%rbp)
# BB#13:                                # %do.cond
                                        #   in Loop: Header=BB7_12 Depth=2
	cmpl	$3, -44(%rbp)
	je	.LBB7_12
# BB#14:                                # %do.end.11
                                        #   in Loop: Header=BB7_10 Depth=1
	cmpl	$1, -44(%rbp)
	je	.LBB7_19
# BB#15:                                # %if.then.13
	cmpq	$0, -56(%rbp)
	je	.LBB7_17
# BB#16:                                # %if.then.15
	callq	g_get_prgname@PLT
	leaq	.L.str.6(%rip), %rdi
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_warning
	movq	-56(%rbp), %rdi
	callq	g_error_free@PLT
	jmp	.LBB7_18
.LBB7_17:                               # %if.else.17
	callq	g_get_prgname@PLT
	leaq	.L.str.7(%rip), %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_warning
.LBB7_18:                               # %if.end.19
	movl	$1, wire_error_val(%rip)
	movl	$0, -4(%rbp)
	jmp	.LBB7_22
.LBB7_19:                               # %if.end.20
                                        #   in Loop: Header=BB7_10 Depth=1
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -32(%rbp)
	movq	-64(%rbp), %rax
	addq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB7_10
.LBB7_20:                               # %while.end
	jmp	.LBB7_21
.LBB7_21:                               # %if.end.21
	movl	$1, -4(%rbp)
.LBB7_22:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_wire_write, .Lfunc_end7-gimp_wire_write
	.cfi_endproc

	.globl	gimp_wire_flush
	.align	16, 0x90
	.type	gimp_wire_flush,@function
gimp_wire_flush:                        # @gimp_wire_flush
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, wire_flush_func(%rip)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	wire_flush_func(%rip), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movl	%eax, -4(%rbp)
	jmp	.LBB8_3
.LBB8_2:                                # %if.end
	movl	$0, -4(%rbp)
.LBB8_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_wire_flush, .Lfunc_end8-gimp_wire_flush
	.cfi_endproc

	.globl	gimp_wire_error
	.align	16, 0x90
	.type	gimp_wire_error,@function
gimp_wire_error:                        # @gimp_wire_error
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
	movl	wire_error_val(%rip), %eax
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_wire_error, .Lfunc_end9-gimp_wire_error
	.cfi_endproc

	.globl	gimp_wire_clear_error
	.align	16, 0x90
	.type	gimp_wire_clear_error,@function
gimp_wire_clear_error:                  # @gimp_wire_clear_error
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
	movl	$0, wire_error_val(%rip)
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_wire_clear_error, .Lfunc_end10-gimp_wire_clear_error
	.cfi_endproc

	.globl	gimp_wire_read_msg
	.align	16, 0x90
	.type	gimp_wire_read_msg,@function
gimp_wire_read_msg:                     # @gimp_wire_read_msg
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	cmpq	$0, wire_ht(%rip)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	leaq	.L.str.8(%rip), %rdi
	movb	$0, %al
	callq	g_error
.LBB11_2:                               # %if.end
	cmpl	$0, wire_error_val(%rip)
	je	.LBB11_4
# BB#3:                                 # %if.then.2
	cmpl	$0, wire_error_val(%rip)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB11_9
.LBB11_4:                               # %if.end.4
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rcx
	callq	_gimp_wire_read_int32
	cmpl	$0, %eax
	jne	.LBB11_6
# BB#5:                                 # %if.then.6
	movl	$0, -4(%rbp)
	jmp	.LBB11_9
.LBB11_6:                               # %if.end.7
	movq	wire_ht(%rip), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	g_hash_table_lookup@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB11_8
# BB#7:                                 # %if.then.11
	leaq	.L.str.9(%rip), %rdi
	movq	-24(%rbp), %rax
	movl	(%rax), %esi
	movb	$0, %al
	callq	g_error
.LBB11_8:                               # %if.end.13
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	*%rax
	cmpl	$0, wire_error_val(%rip)
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %r8d
	movl	%r8d, -4(%rbp)
.LBB11_9:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_wire_read_msg, .Lfunc_end11-gimp_wire_read_msg
	.cfi_endproc

	.align	16, 0x90
	.type	g_error,@function
g_error:                                # @g_error
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
	subq	$400, %rsp              # imm = 0x190
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
	je	.LBB12_3
# BB#2:                                 # %entry
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
.LBB12_3:                               # %entry
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
	leaq	.L.str(%rip), %rdi
	movl	$4, %esi
	leaq	-32(%rbp), %r9
	movq	%r8, -8(%rbp)
	movq	%r9, %r8
	leaq	-208(%rbp), %r10
	movq	%r10, 16(%r8)
	leaq	16(%rbp), %r10
	movq	%r10, 8(%r8)
	movl	$48, 4(%r8)
	movl	$8, (%r8)
	movq	-8(%rbp), %rdx
	movq	%r9, %rcx
	callq	g_logv@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB12_1
.Lfunc_end12:
	.size	g_error, .Lfunc_end12-g_error
	.cfi_endproc

	.hidden	_gimp_wire_read_int32
	.globl	_gimp_wire_read_int32
	.align	16, 0x90
	.type	_gimp_wire_read_int32,@function
_gimp_wire_read_int32:                  # @_gimp_wire_read_int32
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -28(%rbp)
	jl	.LBB13_3
# BB#2:                                 # %if.then
	jmp	.LBB13_4
.LBB13_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__._gimp_wire_read_int32(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB13_13
.LBB13_4:                               # %if.end
	jmp	.LBB13_5
.LBB13_5:                               # %do.end
	cmpl	$0, -28(%rbp)
	jle	.LBB13_12
# BB#6:                                 # %if.then.2
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %ecx
	shll	$2, %ecx
	movq	-40(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%ecx, %edx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	callq	_gimp_wire_read_int8
	cmpl	$0, %eax
	jne	.LBB13_8
# BB#7:                                 # %if.then.3
	movl	$0, -4(%rbp)
	jmp	.LBB13_13
.LBB13_8:                               # %if.end.4
	jmp	.LBB13_9
.LBB13_9:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, %eax
	je	.LBB13_11
# BB#10:                                # %while.body
                                        #   in Loop: Header=BB13_9 Depth=1
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	andl	$255, %ecx
	shll	$24, %ecx
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	andl	$65280, %edx            # imm = 0xFF00
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	andl	$16711680, %edx         # imm = 0xFF0000
	shrl	$8, %edx
	orl	%edx, %ecx
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	andl	$-16777216, %edx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %edx
	orl	%edx, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB13_9
.LBB13_11:                              # %while.end
	jmp	.LBB13_12
.LBB13_12:                              # %if.end.13
	movl	$1, -4(%rbp)
.LBB13_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	_gimp_wire_read_int32, .Lfunc_end13-_gimp_wire_read_int32
	.cfi_endproc

	.globl	gimp_wire_write_msg
	.align	16, 0x90
	.type	gimp_wire_write_msg,@function
gimp_wire_write_msg:                    # @gimp_wire_write_msg
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	cmpq	$0, wire_ht(%rip)
	jne	.LBB14_2
# BB#1:                                 # %if.then
	leaq	.L.str.10(%rip), %rdi
	movb	$0, %al
	callq	g_error
.LBB14_2:                               # %if.end
	cmpl	$0, wire_error_val(%rip)
	je	.LBB14_4
# BB#3:                                 # %if.then.2
	cmpl	$0, wire_error_val(%rip)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB14_9
.LBB14_4:                               # %if.end.4
	movq	wire_ht(%rip), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	g_hash_table_lookup@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB14_6
# BB#5:                                 # %if.then.6
	leaq	.L.str.11(%rip), %rdi
	movq	-24(%rbp), %rax
	movl	(%rax), %esi
	movb	$0, %al
	callq	g_error
.LBB14_6:                               # %if.end.8
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rcx
	callq	_gimp_wire_write_int32
	cmpl	$0, %eax
	jne	.LBB14_8
# BB#7:                                 # %if.then.12
	movl	$0, -4(%rbp)
	jmp	.LBB14_9
.LBB14_8:                               # %if.end.13
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	*%rax
	cmpl	$0, wire_error_val(%rip)
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %r8d
	movl	%r8d, -4(%rbp)
.LBB14_9:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_wire_write_msg, .Lfunc_end14-gimp_wire_write_msg
	.cfi_endproc

	.hidden	_gimp_wire_write_int32
	.globl	_gimp_wire_write_int32
	.align	16, 0x90
	.type	_gimp_wire_write_int32,@function
_gimp_wire_write_int32:                 # @_gimp_wire_write_int32
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -28(%rbp)
	jl	.LBB15_3
# BB#2:                                 # %if.then
	jmp	.LBB15_4
.LBB15_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__._gimp_wire_write_int32(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB15_14
.LBB15_4:                               # %if.end
	jmp	.LBB15_5
.LBB15_5:                               # %do.end
	cmpl	$0, -28(%rbp)
	jle	.LBB15_13
# BB#6:                                 # %if.then.2
	movl	$0, -44(%rbp)
.LBB15_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB15_12
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB15_7 Depth=1
	movl	$4, %edx
	leaq	-48(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movl	(%rsi,%rcx,4), %edi
	andl	$255, %edi
	shll	$24, %edi
	movslq	-44(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movl	(%rsi,%rcx,4), %r8d
	andl	$65280, %r8d            # imm = 0xFF00
	shll	$8, %r8d
	orl	%r8d, %edi
	movslq	-44(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movl	(%rsi,%rcx,4), %r8d
	andl	$16711680, %r8d         # imm = 0xFF0000
	shrl	$8, %r8d
	orl	%r8d, %edi
	movslq	-44(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movl	(%rsi,%rcx,4), %r8d
	andl	$-16777216, %r8d        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %r8d
	orl	%r8d, %edi
	movl	%edi, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int8
	cmpl	$0, %eax
	jne	.LBB15_10
# BB#9:                                 # %if.then.17
	movl	$0, -4(%rbp)
	jmp	.LBB15_14
.LBB15_10:                              # %if.end.18
                                        #   in Loop: Header=BB15_7 Depth=1
	jmp	.LBB15_11
.LBB15_11:                              # %for.inc
                                        #   in Loop: Header=BB15_7 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB15_7
.LBB15_12:                              # %for.end
	jmp	.LBB15_13
.LBB15_13:                              # %if.end.19
	movl	$1, -4(%rbp)
.LBB15_14:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	_gimp_wire_write_int32, .Lfunc_end15-_gimp_wire_write_int32
	.cfi_endproc

	.globl	gimp_wire_destroy
	.align	16, 0x90
	.type	gimp_wire_destroy,@function
gimp_wire_destroy:                      # @gimp_wire_destroy
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, wire_ht(%rip)
	jne	.LBB16_2
# BB#1:                                 # %if.then
	leaq	.L.str.12(%rip), %rdi
	movb	$0, %al
	callq	g_error
.LBB16_2:                               # %if.end
	movq	wire_ht(%rip), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	callq	g_hash_table_lookup@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB16_4
# BB#3:                                 # %if.then.2
	leaq	.L.str.13(%rip), %rdi
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	movb	$0, %al
	callq	g_error
.LBB16_4:                               # %if.end.4
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_wire_destroy, .Lfunc_end16-gimp_wire_destroy
	.cfi_endproc

	.hidden	_gimp_wire_read_int8
	.globl	_gimp_wire_read_int8
	.align	16, 0x90
	.type	_gimp_wire_read_int8,@function
_gimp_wire_read_int8:                   # @_gimp_wire_read_int8
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -28(%rbp)
	jl	.LBB17_3
# BB#2:                                 # %if.then
	jmp	.LBB17_4
.LBB17_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__._gimp_wire_read_int8(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB17_6
.LBB17_4:                               # %if.end
	jmp	.LBB17_5
.LBB17_5:                               # %do.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movslq	-28(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	gimp_wire_read@PLT
	movl	%eax, -4(%rbp)
.LBB17_6:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	_gimp_wire_read_int8, .Lfunc_end17-_gimp_wire_read_int8
	.cfi_endproc

	.hidden	_gimp_wire_read_int16
	.globl	_gimp_wire_read_int16
	.align	16, 0x90
	.type	_gimp_wire_read_int16,@function
_gimp_wire_read_int16:                  # @_gimp_wire_read_int16
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -28(%rbp)
	jl	.LBB18_3
# BB#2:                                 # %if.then
	jmp	.LBB18_4
.LBB18_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__._gimp_wire_read_int16(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB18_13
.LBB18_4:                               # %if.end
	jmp	.LBB18_5
.LBB18_5:                               # %do.end
	cmpl	$0, -28(%rbp)
	jle	.LBB18_12
# BB#6:                                 # %if.then.2
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %ecx
	shll	$1, %ecx
	movq	-40(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%ecx, %edx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	callq	_gimp_wire_read_int8
	cmpl	$0, %eax
	jne	.LBB18_8
# BB#7:                                 # %if.then.3
	movl	$0, -4(%rbp)
	jmp	.LBB18_13
.LBB18_8:                               # %if.end.4
	jmp	.LBB18_9
.LBB18_9:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, %eax
	je	.LBB18_11
# BB#10:                                # %while.body
                                        #   in Loop: Header=BB18_9 Depth=1
	movq	-24(%rbp), %rax
	movzwl	(%rax), %ecx
	sarl	$8, %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	movq	-24(%rbp), %rax
	movzwl	(%rax), %esi
	shll	$8, %esi
	movw	%si, %dx
	movzwl	%dx, %esi
	orl	%esi, %ecx
	movw	%cx, %dx
	movq	-24(%rbp), %rax
	movw	%dx, (%rax)
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB18_9
.LBB18_11:                              # %while.end
	jmp	.LBB18_12
.LBB18_12:                              # %if.end.12
	movl	$1, -4(%rbp)
.LBB18_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	_gimp_wire_read_int16, .Lfunc_end18-_gimp_wire_read_int16
	.cfi_endproc

	.hidden	_gimp_wire_read_double
	.globl	_gimp_wire_read_double
	.align	16, 0x90
	.type	_gimp_wire_read_double,@function
_gimp_wire_read_double:                 # @_gimp_wire_read_double
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -28(%rbp)
	jl	.LBB19_3
# BB#2:                                 # %if.then
	jmp	.LBB19_4
.LBB19_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__._gimp_wire_read_double(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB19_16
.LBB19_4:                               # %if.end
	jmp	.LBB19_5
.LBB19_5:                               # %do.end
	leaq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -60(%rbp)
.LBB19_6:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_10 Depth 2
	movl	-60(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB19_15
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB19_6 Depth=1
	movl	$8, %edx
	leaq	-56(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rcx
	callq	_gimp_wire_read_int8
	cmpl	$0, %eax
	jne	.LBB19_9
# BB#8:                                 # %if.then.5
	movl	$0, -4(%rbp)
	jmp	.LBB19_16
.LBB19_9:                               # %if.end.6
                                        #   in Loop: Header=BB19_6 Depth=1
	movl	$0, -64(%rbp)
.LBB19_10:                              # %for.cond.7
                                        #   Parent Loop BB19_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$4, -64(%rbp)
	jge	.LBB19_13
# BB#11:                                # %for.body.9
                                        #   in Loop: Header=BB19_10 Depth=2
	movl	$7, %eax
	movslq	-64(%rbp), %rcx
	movb	-56(%rbp,%rcx), %dl
	movb	%dl, -65(%rbp)
	movl	%eax, %esi
	subl	-64(%rbp), %esi
	movslq	%esi, %rcx
	movb	-56(%rbp,%rcx), %dl
	movslq	-64(%rbp), %rcx
	movb	%dl, -56(%rbp,%rcx)
	movb	-65(%rbp), %dl
	subl	-64(%rbp), %eax
	movslq	%eax, %rcx
	movb	%dl, -56(%rbp,%rcx)
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB19_10 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB19_10
.LBB19_13:                              # %for.end
                                        #   in Loop: Header=BB19_6 Depth=1
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movslq	-60(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
# BB#14:                                # %for.inc.20
                                        #   in Loop: Header=BB19_6 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB19_6
.LBB19_15:                              # %for.end.22
	movl	$1, -4(%rbp)
.LBB19_16:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	_gimp_wire_read_double, .Lfunc_end19-_gimp_wire_read_double
	.cfi_endproc

	.hidden	_gimp_wire_read_string
	.globl	_gimp_wire_read_string
	.align	16, 0x90
	.type	_gimp_wire_read_string,@function
_gimp_wire_read_string:                 # @_gimp_wire_read_string
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -28(%rbp)
	jl	.LBB20_3
# BB#2:                                 # %if.then
	jmp	.LBB20_4
.LBB20_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__._gimp_wire_read_string(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB20_19
.LBB20_4:                               # %if.end
	jmp	.LBB20_5
.LBB20_5:                               # %do.end
	movl	$0, -44(%rbp)
.LBB20_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB20_18
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB20_6 Depth=1
	leaq	-48(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rcx
	callq	_gimp_wire_read_int32
	cmpl	$0, %eax
	jne	.LBB20_9
# BB#8:                                 # %if.then.2
	movl	$0, -4(%rbp)
	jmp	.LBB20_19
.LBB20_9:                               # %if.end.3
                                        #   in Loop: Header=BB20_6 Depth=1
	cmpl	$0, -48(%rbp)
	jbe	.LBB20_15
# BB#10:                                # %if.then.5
                                        #   in Loop: Header=BB20_6 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	callq	g_try_malloc_n@PLT
	movslq	-44(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rax, (%rdi,%rsi,8)
	movslq	-44(%rbp), %rax
	movq	-24(%rbp), %rsi
	cmpq	$0, (%rsi,%rax,8)
	jne	.LBB20_12
# BB#11:                                # %if.then.10
	leaq	.L.str.14(%rip), %rdi
	leaq	.L__func__._gimp_wire_read_string(%rip), %rsi
	movl	-48(%rbp), %edx
	movb	$0, %al
	callq	g_printerr@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB20_19
.LBB20_12:                              # %if.end.11
                                        #   in Loop: Header=BB20_6 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-44(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	movl	-48(%rbp), %edx
	movq	-40(%rbp), %rcx
	callq	_gimp_wire_read_int8
	cmpl	$0, %eax
	jne	.LBB20_14
# BB#13:                                # %if.then.16
	movslq	-44(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	g_free@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB20_19
.LBB20_14:                              # %if.end.19
                                        #   in Loop: Header=BB20_6 Depth=1
	movl	-48(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movslq	-44(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movb	$0, (%rdx,%rcx)
	jmp	.LBB20_16
.LBB20_15:                              # %if.else.24
                                        #   in Loop: Header=BB20_6 Depth=1
	movslq	-44(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	$0, (%rcx,%rax,8)
.LBB20_16:                              # %if.end.27
                                        #   in Loop: Header=BB20_6 Depth=1
	jmp	.LBB20_17
.LBB20_17:                              # %for.inc
                                        #   in Loop: Header=BB20_6 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB20_6
.LBB20_18:                              # %for.end
	movl	$1, -4(%rbp)
.LBB20_19:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	_gimp_wire_read_string, .Lfunc_end20-_gimp_wire_read_string
	.cfi_endproc

	.hidden	_gimp_wire_read_color
	.globl	_gimp_wire_read_color
	.align	16, 0x90
	.type	_gimp_wire_read_color,@function
_gimp_wire_read_color:                  # @_gimp_wire_read_color
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -28(%rbp)
	jl	.LBB21_3
# BB#2:                                 # %if.then
	jmp	.LBB21_4
.LBB21_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__._gimp_wire_read_color(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB21_6
.LBB21_4:                               # %if.end
	jmp	.LBB21_5
.LBB21_5:                               # %do.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %ecx
	shll	$2, %ecx
	movq	-40(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%ecx, %edx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	callq	_gimp_wire_read_double
	movl	%eax, -4(%rbp)
.LBB21_6:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	_gimp_wire_read_color, .Lfunc_end21-_gimp_wire_read_color
	.cfi_endproc

	.hidden	_gimp_wire_write_int8
	.globl	_gimp_wire_write_int8
	.align	16, 0x90
	.type	_gimp_wire_write_int8,@function
_gimp_wire_write_int8:                  # @_gimp_wire_write_int8
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -28(%rbp)
	jl	.LBB22_3
# BB#2:                                 # %if.then
	jmp	.LBB22_4
.LBB22_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__._gimp_wire_write_int8(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB22_6
.LBB22_4:                               # %if.end
	jmp	.LBB22_5
.LBB22_5:                               # %do.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movslq	-28(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	gimp_wire_write@PLT
	movl	%eax, -4(%rbp)
.LBB22_6:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	_gimp_wire_write_int8, .Lfunc_end22-_gimp_wire_write_int8
	.cfi_endproc

	.hidden	_gimp_wire_write_int16
	.globl	_gimp_wire_write_int16
	.align	16, 0x90
	.type	_gimp_wire_write_int16,@function
_gimp_wire_write_int16:                 # @_gimp_wire_write_int16
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -28(%rbp)
	jl	.LBB23_3
# BB#2:                                 # %if.then
	jmp	.LBB23_4
.LBB23_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__._gimp_wire_write_int16(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB23_14
.LBB23_4:                               # %if.end
	jmp	.LBB23_5
.LBB23_5:                               # %do.end
	cmpl	$0, -28(%rbp)
	jle	.LBB23_13
# BB#6:                                 # %if.then.2
	movl	$0, -44(%rbp)
.LBB23_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB23_12
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB23_7 Depth=1
	movl	$2, %edx
	leaq	-46(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movzwl	(%rsi,%rcx,2), %edi
	sarl	$8, %edi
	movw	%di, %r8w
	movzwl	%r8w, %edi
	movslq	-44(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movzwl	(%rsi,%rcx,2), %r9d
	shll	$8, %r9d
	movw	%r9w, %r8w
	movzwl	%r8w, %r9d
	orl	%r9d, %edi
	movw	%di, %r8w
	movw	%r8w, -46(%rbp)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	%rax, %rsi
	callq	_gimp_wire_write_int8
	cmpl	$0, %eax
	jne	.LBB23_10
# BB#9:                                 # %if.then.12
	movl	$0, -4(%rbp)
	jmp	.LBB23_14
.LBB23_10:                              # %if.end.13
                                        #   in Loop: Header=BB23_7 Depth=1
	jmp	.LBB23_11
.LBB23_11:                              # %for.inc
                                        #   in Loop: Header=BB23_7 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB23_7
.LBB23_12:                              # %for.end
	jmp	.LBB23_13
.LBB23_13:                              # %if.end.14
	movl	$1, -4(%rbp)
.LBB23_14:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	_gimp_wire_write_int16, .Lfunc_end23-_gimp_wire_write_int16
	.cfi_endproc

	.hidden	_gimp_wire_write_double
	.globl	_gimp_wire_write_double
	.align	16, 0x90
	.type	_gimp_wire_write_double,@function
_gimp_wire_write_double:                # @_gimp_wire_write_double
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -28(%rbp)
	jl	.LBB24_3
# BB#2:                                 # %if.then
	jmp	.LBB24_4
.LBB24_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__._gimp_wire_write_double(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB24_16
.LBB24_4:                               # %if.end
	jmp	.LBB24_5
.LBB24_5:                               # %do.end
	leaq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -60(%rbp)
.LBB24_6:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_8 Depth 2
	movl	-60(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB24_15
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB24_6 Depth=1
	movslq	-60(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, (%rax)
	movl	$0, -64(%rbp)
.LBB24_8:                               # %for.cond.4
                                        #   Parent Loop BB24_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$4, -64(%rbp)
	jge	.LBB24_11
# BB#9:                                 # %for.body.6
                                        #   in Loop: Header=BB24_8 Depth=2
	movl	$7, %eax
	movslq	-64(%rbp), %rcx
	movb	-56(%rbp,%rcx), %dl
	movb	%dl, -65(%rbp)
	movl	%eax, %esi
	subl	-64(%rbp), %esi
	movslq	%esi, %rcx
	movb	-56(%rbp,%rcx), %dl
	movslq	-64(%rbp), %rcx
	movb	%dl, -56(%rbp,%rcx)
	movb	-65(%rbp), %dl
	subl	-64(%rbp), %eax
	movslq	%eax, %rcx
	movb	%dl, -56(%rbp,%rcx)
# BB#10:                                # %for.inc
                                        #   in Loop: Header=BB24_8 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB24_8
.LBB24_11:                              # %for.end
                                        #   in Loop: Header=BB24_6 Depth=1
	movl	$8, %edx
	leaq	-56(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rcx
	callq	_gimp_wire_write_int8
	cmpl	$0, %eax
	jne	.LBB24_13
# BB#12:                                # %if.then.18
	movl	$0, -4(%rbp)
	jmp	.LBB24_16
.LBB24_13:                              # %if.end.19
                                        #   in Loop: Header=BB24_6 Depth=1
	jmp	.LBB24_14
.LBB24_14:                              # %for.inc.20
                                        #   in Loop: Header=BB24_6 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB24_6
.LBB24_15:                              # %for.end.22
	movl	$1, -4(%rbp)
.LBB24_16:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	_gimp_wire_write_double, .Lfunc_end24-_gimp_wire_write_double
	.cfi_endproc

	.hidden	_gimp_wire_write_string
	.globl	_gimp_wire_write_string
	.align	16, 0x90
	.type	_gimp_wire_write_string,@function
_gimp_wire_write_string:                # @_gimp_wire_write_string
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -28(%rbp)
	jl	.LBB25_3
# BB#2:                                 # %if.then
	jmp	.LBB25_4
.LBB25_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__._gimp_wire_write_string(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB25_19
.LBB25_4:                               # %if.end
	jmp	.LBB25_5
.LBB25_5:                               # %do.end
	movl	$0, -44(%rbp)
.LBB25_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB25_18
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB25_6 Depth=1
	movslq	-44(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB25_9
# BB#8:                                 # %if.then.2
                                        #   in Loop: Header=BB25_6 Depth=1
	movslq	-44(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	strlen@PLT
	addq	$1, %rax
	movl	%eax, %edx
	movl	%edx, -48(%rbp)
	jmp	.LBB25_10
.LBB25_9:                               # %if.else.5
                                        #   in Loop: Header=BB25_6 Depth=1
	movl	$0, -48(%rbp)
.LBB25_10:                              # %if.end.6
                                        #   in Loop: Header=BB25_6 Depth=1
	leaq	-48(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rcx
	callq	_gimp_wire_write_int32
	cmpl	$0, %eax
	jne	.LBB25_12
# BB#11:                                # %if.then.9
	movl	$0, -4(%rbp)
	jmp	.LBB25_19
.LBB25_12:                              # %if.end.10
                                        #   in Loop: Header=BB25_6 Depth=1
	cmpl	$0, -48(%rbp)
	jbe	.LBB25_16
# BB#13:                                # %if.then.13
                                        #   in Loop: Header=BB25_6 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-44(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	movl	-48(%rbp), %edx
	movq	-40(%rbp), %rcx
	callq	_gimp_wire_write_int8
	cmpl	$0, %eax
	jne	.LBB25_15
# BB#14:                                # %if.then.18
	movl	$0, -4(%rbp)
	jmp	.LBB25_19
.LBB25_15:                              # %if.end.19
                                        #   in Loop: Header=BB25_6 Depth=1
	jmp	.LBB25_16
.LBB25_16:                              # %if.end.20
                                        #   in Loop: Header=BB25_6 Depth=1
	jmp	.LBB25_17
.LBB25_17:                              # %for.inc
                                        #   in Loop: Header=BB25_6 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB25_6
.LBB25_18:                              # %for.end
	movl	$1, -4(%rbp)
.LBB25_19:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	_gimp_wire_write_string, .Lfunc_end25-_gimp_wire_write_string
	.cfi_endproc

	.hidden	_gimp_wire_write_color
	.globl	_gimp_wire_write_color
	.align	16, 0x90
	.type	_gimp_wire_write_color,@function
_gimp_wire_write_color:                 # @_gimp_wire_write_color
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -28(%rbp)
	jl	.LBB26_3
# BB#2:                                 # %if.then
	jmp	.LBB26_4
.LBB26_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__._gimp_wire_write_color(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB26_6
.LBB26_4:                               # %if.end
	jmp	.LBB26_5
.LBB26_5:                               # %do.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %ecx
	shll	$2, %ecx
	movq	-40(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%ecx, %edx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	callq	_gimp_wire_write_double
	movl	%eax, -4(%rbp)
.LBB26_6:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	_gimp_wire_write_color, .Lfunc_end26-_gimp_wire_write_color
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_wire_hash,@function
gimp_wire_hash:                         # @gimp_wire_hash
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %eax
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_wire_hash, .Lfunc_end27-gimp_wire_hash
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_wire_compare,@function
gimp_wire_compare:                      # @gimp_wire_compare
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	(%rsi), %eax
	movq	-16(%rbp), %rsi
	cmpl	(%rsi), %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_wire_compare, .Lfunc_end28-gimp_wire_compare
	.cfi_endproc

	.type	wire_ht,@object         # @wire_ht
	.local	wire_ht
	.comm	wire_ht,8,8
	.type	wire_read_func,@object  # @wire_read_func
	.local	wire_read_func
	.comm	wire_read_func,8,8
	.type	wire_write_func,@object # @wire_write_func
	.local	wire_write_func
	.comm	wire_write_func,8,8
	.type	wire_flush_func,@object # @wire_flush_func
	.local	wire_flush_func
	.comm	wire_flush_func,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LibGimpBase"
	.size	.L.str, 12

	.type	.L__func__.gimp_wire_read,@object # @__func__.gimp_wire_read
.L__func__.gimp_wire_read:
	.asciz	"gimp_wire_read"
	.size	.L__func__.gimp_wire_read, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"count >= 0"
	.size	.L.str.1, 11

	.type	wire_error_val,@object  # @wire_error_val
	.local	wire_error_val
	.comm	wire_error_val,4,4
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%s: gimp_wire_read(): error: %s"
	.size	.L.str.2, 32

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%s: gimp_wire_read(): error"
	.size	.L.str.3, 28

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%s: gimp_wire_read(): unexpected EOF"
	.size	.L.str.4, 37

	.type	.L__func__.gimp_wire_write,@object # @__func__.gimp_wire_write
.L__func__.gimp_wire_write:
	.asciz	"gimp_wire_write"
	.size	.L__func__.gimp_wire_write, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%s: gimp_wire_write: error"
	.size	.L.str.5, 27

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%s: gimp_wire_write(): error: %s"
	.size	.L.str.6, 33

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%s: gimp_wire_write(): error"
	.size	.L.str.7, 29

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp_wire_read_msg: the wire protocol has not been initialized"
	.size	.L.str.8, 63

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp_wire_read_msg: could not find handler for message: %d"
	.size	.L.str.9, 59

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp_wire_write_msg: the wire protocol has not been initialized"
	.size	.L.str.10, 64

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp_wire_write_msg: could not find handler for message: %d"
	.size	.L.str.11, 60

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp_wire_destroy: the wire protocol has not been initialized"
	.size	.L.str.12, 62

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp_wire_destroy: could not find handler for message: %d\n"
	.size	.L.str.13, 59

	.type	.L__func__._gimp_wire_read_int32,@object # @__func__._gimp_wire_read_int32
.L__func__._gimp_wire_read_int32:
	.asciz	"_gimp_wire_read_int32"
	.size	.L__func__._gimp_wire_read_int32, 22

	.type	.L__func__._gimp_wire_read_int16,@object # @__func__._gimp_wire_read_int16
.L__func__._gimp_wire_read_int16:
	.asciz	"_gimp_wire_read_int16"
	.size	.L__func__._gimp_wire_read_int16, 22

	.type	.L__func__._gimp_wire_read_int8,@object # @__func__._gimp_wire_read_int8
.L__func__._gimp_wire_read_int8:
	.asciz	"_gimp_wire_read_int8"
	.size	.L__func__._gimp_wire_read_int8, 21

	.type	.L__func__._gimp_wire_read_double,@object # @__func__._gimp_wire_read_double
.L__func__._gimp_wire_read_double:
	.asciz	"_gimp_wire_read_double"
	.size	.L__func__._gimp_wire_read_double, 23

	.type	.L__func__._gimp_wire_read_string,@object # @__func__._gimp_wire_read_string
.L__func__._gimp_wire_read_string:
	.asciz	"_gimp_wire_read_string"
	.size	.L__func__._gimp_wire_read_string, 23

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%s: failed to allocate %u bytes\n"
	.size	.L.str.14, 33

	.type	.L__func__._gimp_wire_read_color,@object # @__func__._gimp_wire_read_color
.L__func__._gimp_wire_read_color:
	.asciz	"_gimp_wire_read_color"
	.size	.L__func__._gimp_wire_read_color, 22

	.type	.L__func__._gimp_wire_write_int32,@object # @__func__._gimp_wire_write_int32
.L__func__._gimp_wire_write_int32:
	.asciz	"_gimp_wire_write_int32"
	.size	.L__func__._gimp_wire_write_int32, 23

	.type	.L__func__._gimp_wire_write_int16,@object # @__func__._gimp_wire_write_int16
.L__func__._gimp_wire_write_int16:
	.asciz	"_gimp_wire_write_int16"
	.size	.L__func__._gimp_wire_write_int16, 23

	.type	.L__func__._gimp_wire_write_int8,@object # @__func__._gimp_wire_write_int8
.L__func__._gimp_wire_write_int8:
	.asciz	"_gimp_wire_write_int8"
	.size	.L__func__._gimp_wire_write_int8, 22

	.type	.L__func__._gimp_wire_write_double,@object # @__func__._gimp_wire_write_double
.L__func__._gimp_wire_write_double:
	.asciz	"_gimp_wire_write_double"
	.size	.L__func__._gimp_wire_write_double, 24

	.type	.L__func__._gimp_wire_write_string,@object # @__func__._gimp_wire_write_string
.L__func__._gimp_wire_write_string:
	.asciz	"_gimp_wire_write_string"
	.size	.L__func__._gimp_wire_write_string, 24

	.type	.L__func__._gimp_wire_write_color,@object # @__func__._gimp_wire_write_color
.L__func__._gimp_wire_write_color:
	.asciz	"_gimp_wire_write_color"
	.size	.L__func__._gimp_wire_write_color, 23


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
