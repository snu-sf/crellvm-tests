	.text
	.file	"gxclpage.bc"
	.globl	gdev_prn_save_page
	.align	16, 0x90
	.type	gdev_prn_save_page,@function
gdev_prn_save_page:                     # @gdev_prn_save_page
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
	subq	$64, %rsp
.Ltmp5:
	.cfi_def_cfa_offset 112
.Ltmp6:
	.cfi_offset %rbx, -48
.Ltmp7:
	.cfi_offset %r12, -40
.Ltmp8:
	.cfi_offset %r14, -32
.Ltmp9:
	.cfi_offset %r15, -24
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$-15, %ebp
	cmpq	$0, 17184(%rbx)
	je	.LBB0_11
# BB#1:                                 # %if.end
	movq	%rbx, %rdi
	callq	clist_end_page
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_11
# BB#2:                                 # %lor.lhs.false
	movq	10096(%rbx), %rax
	leaq	1888(%rbx), %r15
	movq	5984(%rbx), %rdi
	xorl	%edx, %edx
	movq	%r15, %rsi
	callq	*8(%rax)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_11
# BB#3:                                 # %lor.lhs.false.6
	movq	10088(%rbx), %rdi
	movq	10096(%rbx), %rax
	leaq	5992(%rbx), %r12
	xorl	%edx, %edx
	movq	%r12, %rsi
	callq	*8(%rax)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_11
# BB#4:                                 # %if.end.17
	movq	16(%rbx), %rsi
	movl	$32, %edx
	movq	%r14, %rdi
	callq	strncpy
	leaq	32(%r14), %rdi
	leaq	96(%rbx), %rsi
	movl	$720, %edx              # imm = 0x2D0
	callq	memcpy
	movq	10096(%rbx), %rax
	movq	%rax, 8944(%r14)
	leaq	752(%r14), %rdi
	movl	$4096, %edx             # imm = 0x1000
	movq	%r15, %rsi
	callq	strncpy
	leaq	4848(%r14), %rdi
	movl	$4096, %edx             # imm = 0x1000
	movq	%r12, %rsi
	callq	strncpy
	movq	10120(%rbx), %rax
	movq	%rax, 8960(%r14)
	movl	10104(%rbx), %eax
	movl	%eax, 8952(%r14)
	movups	10128(%rbx), %xmm0
	movups	%xmm0, 8968(%r14)
	movq	24(%rbx), %rsi
	movq	200(%rsi), %rax
	movq	%rax, 8984(%r14)
	leaq	8(%rsp), %rbp
	movq	%rbp, %rdi
	callq	gs_c_param_list_write
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	gs_get_device_or_hw_params
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_8
# BB#5:                                 # %if.end.48
	leaq	8(%rsp), %rbp
	movq	%rbp, %rdi
	callq	gs_c_param_list_read
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rbp, %rdi
	callq	gs_param_list_serialize
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_8
# BB#6:                                 # %if.end.52
	movl	%ebp, 8992(%r14)
	movq	8984(%r14), %rdi
	movl	$.L.str, %edx
	movl	%ebp, %esi
	callq	*64(%rdi)
	movq	%rax, 9000(%r14)
	testq	%rax, %rax
	je	.LBB0_7
# BB#9:                                 # %params_out
	movl	8992(%r14), %edx
	leaq	8(%rsp), %r14
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	gs_param_list_serialize
	movl	%eax, %ebp
	movq	%r14, %rdi
	callq	gs_c_param_list_release
	testl	%ebp, %ebp
	jns	.LBB0_10
	jmp	.LBB0_11
.LBB0_8:                                # %params_out.thread
	leaq	8(%rsp), %rdi
	callq	gs_c_param_list_release
	jmp	.LBB0_11
.LBB0_7:                                # %params_out.thread42
	leaq	8(%rsp), %rdi
	callq	gs_c_param_list_release
.LBB0_10:                               # %if.end.66
	movq	%rbx, %rdi
	callq	*gs_clist_device_procs(%rip)
	movl	%eax, %ebp
.LBB0_11:                               # %cleanup
	movl	%ebp, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gdev_prn_save_page, .Lfunc_end0-gdev_prn_save_page
	.cfi_endproc

	.globl	gdev_prn_render_pages
	.align	16, 0x90
	.type	gdev_prn_render_pages,@function
gdev_prn_render_pages:                  # @gdev_prn_render_pages
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp12:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp14:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp15:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp17:
	.cfi_def_cfa_offset 80
.Ltmp18:
	.cfi_offset %rbx, -56
.Ltmp19:
	.cfi_offset %r12, -48
.Ltmp20:
	.cfi_offset %r13, -40
.Ltmp21:
	.cfi_offset %r14, -32
.Ltmp22:
	.cfi_offset %r15, -24
.Ltmp23:
	.cfi_offset %rbp, -16
	movl	%edx, %r13d
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testl	%r13d, %r13d
	jle	.LBB1_10
# BB#1:                                 # %for.body.lr.ph
	leaq	96(%r14), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movslq	%r13d, %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	xorl	%r12d, %r12d
	movq	%rbx, %r15
	.align	16, 0x90
.LBB1_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rbp
	movq	16(%r14), %rsi
	movq	%rbp, %rdi
	callq	strcmp
	movl	$-15, 20(%rsp)          # 4-byte Folded Spill
	testl	%eax, %eax
	jne	.LBB1_15
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB1_2 Depth=1
	leaq	32(%rbp), %rdi
	movl	$720, %edx              # imm = 0x2D0
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB1_15
# BB#4:                                 # %if.end
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$0, 12(%r15)
	jne	.LBB1_15
# BB#5:                                 # %if.end.11
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	8976(%rbp), %rax
	cmpq	17184(%r14), %rax
	jne	.LBB1_15
# BB#6:                                 # %lor.lhs.false.13
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	8968(%rbp), %eax
	cmpl	832(%r14), %eax
	jne	.LBB1_15
# BB#7:                                 # %if.end.17
                                        #   in Loop: Header=BB1_2 Depth=1
	testq	%r12, %r12
	jle	.LBB1_9
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	8972(%rbp), %eax
	movq	(%rbx), %rcx
	cmpl	8972(%rcx), %eax
	jne	.LBB1_15
.LBB1_9:                                # %for.inc
                                        #   in Loop: Header=BB1_2 Depth=1
	incq	%r12
	addq	$16, %r15
	cmpq	(%rsp), %r12            # 8-byte Folded Reload
	jl	.LBB1_2
.LBB1_10:                               # %cleanup.cont.29
	movl	$0, 1884(%r14)
	movl	$0, 1880(%r14)
	movq	%rbx, 10208(%r14)
	movl	%r13d, 10224(%r14)
	movq	$0, 10232(%r14)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 10160(%r14)
	movq	1168(%r14), %rax
	movl	$1, %esi
	cmpl	$0, 952(%r14)
	jne	.LBB1_13
# BB#11:                                # %lor.lhs.false.31
	cmpl	$0, 948(%r14)
	jle	.LBB1_13
# BB#12:                                # %cond.false
	movl	944(%r14), %esi
.LBB1_13:                               # %cond.end
	movl	$1, %edx
	movq	%r14, %rdi
	callq	*%rax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	testl	%r13d, %r13d
	jle	.LBB1_15
	.align	16, 0x90
.LBB1_14:                               # %for.body.38
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rbp
	movq	10096(%r14), %rax
	leaq	752(%rbp), %rdi
	callq	*16(%rax)
	movq	10096(%r14), %rax
	leaq	4848(%rbp), %rdi
	callq	*16(%rax)
	movq	8984(%rbp), %rdi
	movq	9000(%rbp), %rsi
	movl	$.L.str.1, %edx
	callq	*24(%rdi)
	movq	$0, 9000(%rbp)
	addq	$16, %rbx
	decl	%r13d
	jne	.LBB1_14
.LBB1_15:                               # %cleanup.59
	movl	20(%rsp), %eax          # 4-byte Reload
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gdev_prn_render_pages, .Lfunc_end1-gdev_prn_render_pages
	.cfi_endproc

	.globl	gx_saved_pages_list_new
	.align	16, 0x90
	.type	gx_saved_pages_list_new,@function
gx_saved_pages_list_new:                # @gx_saved_pages_list_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp24:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp25:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 32
.Ltmp27:
	.cfi_offset %rbx, -32
.Ltmp28:
	.cfi_offset %r14, -24
.Ltmp29:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	24(%r14), %rax
	movq	200(%rax), %r15
	movl	$40, %esi
	movl	$.L.str.2, %edx
	movq	%r15, %rdi
	callq	*64(%r15)
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB2_2
# BB#1:                                 # %if.end
	xorl	%esi, %esi
	movl	$40, %edx
	movq	%rbx, %rdi
	callq	memset
	movq	%r15, 32(%rbx)
	movl	928(%r14), %eax
	movl	%eax, (%rbx)
	movl	$1, 8(%rbx)
	movq	%rbx, %rax
.LBB2_2:                                # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	gx_saved_pages_list_new, .Lfunc_end2-gx_saved_pages_list_new
	.cfi_endproc

	.globl	gx_saved_pages_list_add
	.align	16, 0x90
	.type	gx_saved_pages_list_add,@function
gx_saved_pages_list_add:                # @gx_saved_pages_list_add
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
	pushq	%r12
.Ltmp33:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp34:
	.cfi_def_cfa_offset 48
.Ltmp35:
	.cfi_offset %rbx, -48
.Ltmp36:
	.cfi_offset %r12, -40
.Ltmp37:
	.cfi_offset %r14, -32
.Ltmp38:
	.cfi_offset %r15, -24
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rdi, %r12
	movq	17296(%r12), %rbx
	movq	32(%rbx), %rdi
	movl	$9008, %esi             # imm = 0x2330
	movl	$.L.str.3, %edx
	callq	*64(%rdi)
	movq	%rax, %r15
	movl	$-25, %r14d
	testq	%r15, %r15
	je	.LBB3_9
# BB#1:                                 # %if.end
	movq	32(%rbx), %rdi
	movl	$32, %esi
	movl	$.L.str.3, %edx
	callq	*64(%rdi)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB3_2
# BB#3:                                 # %if.end.12
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	gdev_prn_save_page
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB3_4
# BB#5:                                 # %if.end.24
	movl	4(%rbx), %eax
	incl	%eax
	movl	%eax, 4(%rbx)
	movl	%eax, (%rbp)
	movq	%r15, 24(%rbp)
	movq	$0, 16(%rbp)
	movq	24(%rbx), %rax
	testq	%rax, %rax
	je	.LBB3_6
# BB#7:                                 # %if.else
	movq	%rax, 8(%rbp)
	movq	%rbp, 16(%rax)
	movq	%rbp, 24(%rbx)
	jmp	.LBB3_8
.LBB3_4:                                # %if.then.15
	movq	32(%rbx), %rdi
	movl	$.L.str.3, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
.LBB3_2:                                # %if.then.8
	movq	32(%rbx), %rdi
	movl	$.L.str.3, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
	jmp	.LBB3_9
.LBB3_6:                                # %if.then.26
	movq	$0, 8(%rbp)
	movq	%rbp, 24(%rbx)
	movq	%rbp, 16(%rbx)
.LBB3_8:                                # %cleanup
	xorl	%r14d, %r14d
.LBB3_9:                                # %cleanup
	movl	%r14d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gx_saved_pages_list_add, .Lfunc_end3-gx_saved_pages_list_add
	.cfi_endproc

	.globl	gx_saved_pages_list_free
	.align	16, 0x90
	.type	gx_saved_pages_list_free,@function
gx_saved_pages_list_free:               # @gx_saved_pages_list_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp40:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp41:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 32
.Ltmp43:
	.cfi_offset %rbx, -32
.Ltmp44:
	.cfi_offset %r14, -24
.Ltmp45:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	16(%r14), %r15
	testq	%r15, %r15
	je	.LBB4_2
	.align	16, 0x90
.LBB4_1:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%r15), %rbx
	movq	8944(%rbx), %rax
	leaq	752(%rbx), %rdi
	callq	*16(%rax)
	movq	8944(%rbx), %rax
	leaq	4848(%rbx), %rdi
	callq	*16(%rax)
	movq	8984(%rbx), %rdi
	movq	9000(%rbx), %rsi
	movl	$.L.str.4, %edx
	callq	*24(%rdi)
	movq	32(%r14), %rdi
	movl	$.L.str.4, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	movq	16(%r15), %rbx
	movq	32(%r14), %rdi
	movl	$.L.str.4, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
	testq	%rbx, %rbx
	movq	%rbx, %r15
	jne	.LBB4_1
.LBB4_2:                                # %while.end
	movq	32(%r14), %rdi
	movq	24(%rdi), %rax
	movl	$.L.str.4, %edx
	movq	%r14, %rsi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmpq	*%rax                   # TAILCALL
.Lfunc_end4:
	.size	gx_saved_pages_list_free, .Lfunc_end4-gx_saved_pages_list_free
	.cfi_endproc

	.globl	gx_saved_pages_list_print
	.align	16, 0x90
	.type	gx_saved_pages_list_print,@function
gx_saved_pages_list_print:              # @gx_saved_pages_list_print
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp47:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp48:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp49:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp50:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp51:
	.cfi_def_cfa_offset 56
	subq	$9112, %rsp             # imm = 0x2398
.Ltmp52:
	.cfi_def_cfa_offset 9168
.Ltmp53:
	.cfi_offset %rbx, -56
.Ltmp54:
	.cfi_offset %r12, -48
.Ltmp55:
	.cfi_offset %r13, -40
.Ltmp56:
	.cfi_offset %r14, -32
.Ltmp57:
	.cfi_offset %r15, -24
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movl	%ecx, %ebx
	movq	%rdx, %rbp
	movq	%rsi, 80(%rsp)          # 8-byte Spill
	movq	%rdi, %r12
	leaq	96(%rsp), %rsi
	callq	gdev_prn_save_page
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB5_1
# BB#2:                                 # %if.end
	movq	%r12, %rdi
	callq	clist_close_writer_and_init_reader
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB5_3
# BB#5:                                 # %if.end.8
	movq	5984(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB5_7
# BB#6:                                 # %if.then.10
	leaq	1888(%r12), %rsi
	movq	10096(%r12), %rax
	movl	$1, %edx
	callq	*8(%rax)
.LBB5_7:                                # %if.end.16
	movl	%ebx, 28(%rsp)          # 4-byte Spill
	movq	10088(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB5_9
# BB#8:                                 # %if.then.19
	movq	10096(%r12), %rax
	leaq	5992(%r12), %rsi
	movl	$1, %edx
	callq	*8(%rax)
.LBB5_9:                                # %if.end.28
	movq	$0, 10088(%r12)
	movq	$0, 5984(%r12)
	movq	$0, 17296(%r12)
	movl	17252(%r12), %esi
	movl	%esi, 36(%rsp)          # 4-byte Spill
	movl	1808(%r12), %edi
	movl	%edi, 32(%rsp)          # 4-byte Spill
	movl	$1, 1808(%r12)
	movq	80(%rsp), %rcx          # 8-byte Reload
	movslq	(%rcx), %rax
	movq	%rax, 928(%r12)
	cmpl	$0, 8(%rcx)
	jle	.LBB5_10
# BB#13:                                # %for.body.lr.ph
	movl	%edi, 32(%rsp)          # 4-byte Spill
	movl	%esi, 36(%rsp)          # 4-byte Spill
	movq	%r14, 8(%rsp)           # 8-byte Spill
	movl	$1, %eax
	movl	$0, 44(%rsp)            # 4-byte Folded Spill
	xorl	%ebx, %ebx
.LBB5_14:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_15 Depth 2
                                        #       Child Loop BB5_17 Depth 3
                                        #       Child Loop BB5_19 Depth 3
                                        #       Child Loop BB5_25 Depth 3
                                        #       Child Loop BB5_53 Depth 3
                                        #       Child Loop BB5_55 Depth 3
                                        #       Child Loop BB5_68 Depth 3
                                        #       Child Loop BB5_87 Depth 3
                                        #       Child Loop BB5_89 Depth 3
	movq	%rax, (%rsp)            # 8-byte Spill
	movl	%ebx, 76(%rsp)          # 4-byte Spill
	xorl	%r14d, %r14d
	movl	28(%rsp), %ebx          # 4-byte Reload
	movq	%rbp, %rdi
	movq	%rbp, 56(%rsp)          # 8-byte Spill
	jmp	.LBB5_15
	.align	16, 0x90
.LBB5_108:                              # %cleanup.211.thread221
                                        #   in Loop: Header=BB5_15 Depth=2
	movl	%ebx, 76(%rsp)          # 4-byte Spill
	movslq	%edx, %rax
	subl	%r15d, %edi
	addl	40(%rsp), %edi          # 4-byte Folded Reload
	subl	%edx, %edi
	addq	%r15, %rax
	movl	%edi, %ebx
	movq	%rax, %rdi
.LBB5_15:                               # %while.cond
                                        #   Parent Loop BB5_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_17 Depth 3
                                        #       Child Loop BB5_19 Depth 3
                                        #       Child Loop BB5_25 Depth 3
                                        #       Child Loop BB5_53 Depth 3
                                        #       Child Loop BB5_55 Depth 3
                                        #       Child Loop BB5_68 Depth 3
                                        #       Child Loop BB5_87 Depth 3
                                        #       Child Loop BB5_89 Depth 3
	testl	%ebx, %ebx
	movq	%rdi, %r15
	movl	%ebx, %edx
	jle	.LBB5_33
# BB#16:                                # %while.body.lr.ph.i
                                        #   in Loop: Header=BB5_15 Depth=2
	movl	%ebx, %ebp
	movq	%rdi, %rbx
	callq	__ctype_b_loc
	movq	%rbx, %rdi
	movl	%ebp, %ebx
	movq	(%rax), %rax
	movq	%rdi, %r15
	movl	%ebx, %ecx
.LBB5_17:                               # %while.body.i
                                        #   Parent Loop BB5_14 Depth=1
                                        #     Parent Loop BB5_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r15), %edx
	testb	$8, (%rax,%rdx,2)
	jne	.LBB5_18
# BB#30:                                # %if.end.i
                                        #   in Loop: Header=BB5_17 Depth=3
	movl	$1, %ebp
	movzbl	%dl, %edx
	cmpl	$42, %edx
	je	.LBB5_37
# BB#31:                                # %if.end.i
                                        #   in Loop: Header=BB5_17 Depth=3
	cmpl	$45, %edx
	je	.LBB5_37
# BB#32:                                # %if.end.11.i
                                        #   in Loop: Header=BB5_17 Depth=3
	incq	%r15
	leal	-1(%rcx), %edx
	cmpl	$1, %ecx
	movl	%edx, %ecx
	jg	.LBB5_17
	.align	16, 0x90
.LBB5_33:                               # %while.end.i
                                        #   in Loop: Header=BB5_15 Depth=2
	movl	$1, %ebp
	testl	%edx, %edx
	je	.LBB5_34
.LBB5_37:                               # %param_parse_token.exit
                                        #   in Loop: Header=BB5_15 Depth=2
	testq	%r15, %r15
	je	.LBB5_34
.LBB5_21:                               # %while.body
                                        #   in Loop: Header=BB5_15 Depth=2
	movq	%rbp, 64(%rsp)          # 8-byte Spill
	movl	%ebx, 40(%rsp)          # 4-byte Spill
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movl	$0, 92(%rsp)
	movb	(%r15), %al
	movb	%al, %cl
	addb	$-48, %cl
	movzbl	%cl, %ecx
	cmpl	$10, %ecx
	jb	.LBB5_44
# BB#22:                                # %if.end.i.120
                                        #   in Loop: Header=BB5_15 Depth=2
	movzbl	%al, %eax
	cmpl	$42, %eax
	je	.LBB5_43
# BB#23:                                # %if.end.i.120
                                        #   in Loop: Header=BB5_15 Depth=2
	cmpl	$45, %eax
	je	.LBB5_39
# BB#24:                                # %for.cond.preheader.i
                                        #   in Loop: Header=BB5_15 Depth=2
	movq	64(%rsp), %rax          # 8-byte Reload
	movslq	%eax, %rbx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB5_25:                               # %for.cond.i
                                        #   Parent Loop BB5_14 Depth=1
                                        #     Parent Loop BB5_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$79, %ebp
	ja	.LBB5_82
# BB#26:                                # %for.body.i
                                        #   in Loop: Header=BB5_25 Depth=3
	movq	param_find_key.saved_pages_keys(,%rbp,8), %rsi
	movq	%r15, %rdi
	movq	%rbx, %rdx
	callq	strncasecmp
	incq	%rbp
	testl	%eax, %eax
	jne	.LBB5_25
# BB#27:                                # %param_find_key.exit
                                        #   in Loop: Header=BB5_15 Depth=2
	xorl	%esi, %esi
	movl	%ebp, %eax
	cmpl	$13, %ebp
	jbe	.LBB5_38
# BB#28:                                #   in Loop: Header=BB5_15 Depth=2
	movl	76(%rsp), %ebx          # 4-byte Reload
	jmp	.LBB5_29
.LBB5_18:                               # %while.cond.20.preheader.i
                                        #   in Loop: Header=BB5_15 Depth=2
	xorl	%ebp, %ebp
	testl	%ecx, %ecx
	movl	$1, %edx
	jle	.LBB5_37
	.align	16, 0x90
.LBB5_19:                               # %if.end.34.i
                                        #   Parent Loop BB5_14 Depth=1
                                        #     Parent Loop BB5_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rdx, %rbp
	cmpl	$2, %ecx
	jl	.LBB5_37
# BB#20:                                # %if.end.34.while.body.23_crit_edge.i
                                        #   in Loop: Header=BB5_19 Depth=3
	decl	%ecx
	movzbl	(%r15,%rbp), %esi
	leaq	1(%rbp), %rdx
	testb	$8, (%rax,%rsi,2)
	jne	.LBB5_19
	jmp	.LBB5_21
.LBB5_38:                               # %param_find_key.exit
                                        #   in Loop: Header=BB5_15 Depth=2
	jmpq	*.LJTI5_0(,%rax,8)
.LBB5_82:                               # %sw.bb.117
                                        #   in Loop: Header=BB5_15 Depth=2
	xorl	%edx, %edx
	xorl	%esi, %esi
	movl	76(%rsp), %ebx          # 4-byte Reload
	movl	44(%rsp), %ecx          # 4-byte Reload
	jmp	.LBB5_83
.LBB5_43:                               # %sw.bb.51
                                        #   in Loop: Header=BB5_15 Depth=2
	movq	80(%rsp), %rax          # 8-byte Reload
	movl	4(%rax), %eax
	movl	%eax, 92(%rsp)
	testl	%eax, %eax
	jne	.LBB5_46
	.align	16, 0x90
.LBB5_44:                               # %if.then.54
                                        #   in Loop: Header=BB5_15 Depth=2
	movl	$.L.str.7, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	leaq	92(%rsp), %rdx
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	jne	.LBB5_45
.LBB5_46:                               # %if.end.65
                                        #   in Loop: Header=BB5_15 Depth=2
	movl	76(%rsp), %ebx          # 4-byte Reload
	xorl	%esi, %esi
	testl	%ebx, %ebx
	je	.LBB5_47
# BB#48:                                # %if.else
                                        #   in Loop: Header=BB5_15 Depth=2
	movl	$1, %r14d
	cmpl	$0, 44(%rsp)            # 4-byte Folded Reload
	js	.LBB5_50
# BB#49:                                #   in Loop: Header=BB5_15 Depth=2
	movl	%ebx, %ecx
	movq	64(%rsp), %rdx          # 8-byte Reload
	jmp	.LBB5_83
.LBB5_47:                               # %if.then.68
                                        #   in Loop: Header=BB5_15 Depth=2
	movl	92(%rsp), %ebx
.LBB5_29:                               # %sw.epilog
                                        #   in Loop: Header=BB5_15 Depth=2
	movl	44(%rsp), %ecx          # 4-byte Reload
	movq	64(%rsp), %rdx          # 8-byte Reload
	jmp	.LBB5_83
.LBB5_50:                               # %if.then.71
                                        #   in Loop: Header=BB5_15 Depth=2
	movl	92(%rsp), %ecx
	cmpl	%ebx, %ecx
	movl	$-1, %r14d
	movl	$1, %eax
	cmovgel	%eax, %r14d
	movq	64(%rsp), %rdx          # 8-byte Reload
.LBB5_83:                               # %sw.epilog
                                        #   in Loop: Header=BB5_15 Depth=2
	testl	%ecx, %ecx
	jle	.LBB5_84
# BB#85:                                # %if.then.120
                                        #   in Loop: Header=BB5_15 Depth=2
	movq	%r15, 16(%rsp)          # 8-byte Spill
	movq	80(%rsp), %rax          # 8-byte Reload
	cmpl	4(%rax), %ebx
	movl	$0, %ebp
	jg	.LBB5_88
	jmp	.LBB5_86
	.align	16, 0x90
.LBB5_84:                               #   in Loop: Header=BB5_15 Depth=2
	movl	%ecx, 44(%rsp)          # 4-byte Spill
	jmp	.LBB5_107
.LBB5_39:                               # %sw.bb
                                        #   in Loop: Header=BB5_15 Depth=2
	movl	76(%rsp), %ebx          # 4-byte Reload
	testl	%ebx, %ebx
	je	.LBB5_41
# BB#40:                                #   in Loop: Header=BB5_15 Depth=2
	movl	$-1, 44(%rsp)           # 4-byte Folded Spill
	movq	64(%rsp), %rdx          # 8-byte Reload
	jmp	.LBB5_107
.LBB5_51:                               # %sw.bb.77
                                        #   in Loop: Header=BB5_15 Depth=2
	movq	48(%rsp), %rax          # 8-byte Reload
	addl	40(%rsp), %eax          # 4-byte Folded Reload
	subl	%ebx, %eax
	subl	%r15d, %eax
	addq	%rbx, %r15
	movl	%eax, %ebp
	testl	%ebp, %ebp
	movq	%r15, %rsi
	movl	%ebp, %edx
	jle	.LBB5_62
# BB#52:                                # %while.body.lr.ph.i.128
                                        #   in Loop: Header=BB5_15 Depth=2
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	%r15, %rsi
	movl	%ebp, %ecx
.LBB5_53:                               # %while.body.i.135
                                        #   Parent Loop BB5_14 Depth=1
                                        #     Parent Loop BB5_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movzbl	(%rsi), %edx
	testb	$8, (%rax,%rdx,2)
	jne	.LBB5_54
# BB#57:                                # %if.end.i.138
                                        #   in Loop: Header=BB5_53 Depth=3
	movl	$1, %ebx
	movzbl	%dl, %edx
	cmpl	$42, %edx
	je	.LBB5_58
# BB#59:                                # %if.end.i.138
                                        #   in Loop: Header=BB5_53 Depth=3
	cmpl	$45, %edx
	je	.LBB5_60
# BB#61:                                # %if.end.11.i.142
                                        #   in Loop: Header=BB5_53 Depth=3
	movq	16(%rsp), %rsi          # 8-byte Reload
	incq	%rsi
	leal	-1(%rcx), %edx
	cmpl	$1, %ecx
	movl	%edx, %ecx
	jg	.LBB5_53
.LBB5_62:                               # %while.end.i.146
                                        #   in Loop: Header=BB5_15 Depth=2
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movl	%ebp, 40(%rsp)          # 4-byte Spill
	movl	$1, %ebx
	testl	%edx, %edx
	jne	.LBB5_63
	jmp	.LBB5_71
.LBB5_77:                               # %sw.bb.105
                                        #   in Loop: Header=BB5_15 Depth=2
	movq	80(%rsp), %rax          # 8-byte Reload
	movl	4(%rax), %ecx
	movl	$1, %ebx
	movl	$1, %r14d
	movq	64(%rsp), %rdx          # 8-byte Reload
	jmp	.LBB5_83
.LBB5_78:                               # %if.then.120.thread
                                        #   in Loop: Header=BB5_15 Depth=2
	movq	80(%rsp), %rax          # 8-byte Reload
	movl	4(%rax), %ebx
	xorl	%esi, %esi
	movl	$-1, %r14d
	movl	$1, %ecx
	movq	%r15, 16(%rsp)          # 8-byte Spill
	movq	64(%rsp), %rdx          # 8-byte Reload
.LBB5_86:                               # %if.then.124
                                        #   in Loop: Header=BB5_15 Depth=2
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	16(%rax), %rbp
	.align	16, 0x90
.LBB5_87:                               # %for.cond.125
                                        #   Parent Loop BB5_14 Depth=1
                                        #     Parent Loop BB5_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	%ebx, (%rbp)
	je	.LBB5_88
# BB#92:                                # %for.body.128
                                        #   in Loop: Header=BB5_87 Depth=3
	movq	16(%rbp), %rbp
	testq	%rbp, %rbp
	jne	.LBB5_87
	jmp	.LBB5_93
	.align	16, 0x90
.LBB5_88:                               # %for.cond.140.preheader
                                        #   in Loop: Header=BB5_15 Depth=2
	movl	%esi, 44(%rsp)          # 4-byte Spill
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	movl	%ebx, 76(%rsp)          # 4-byte Spill
	movl	%ecx, %r15d
	.align	16, 0x90
.LBB5_89:                               # %for.cond.140
                                        #   Parent Loop BB5_14 Depth=1
                                        #     Parent Loop BB5_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testq	%rbp, %rbp
	je	.LBB5_104
# BB#90:                                # %for.body.143
                                        #   in Loop: Header=BB5_89 Depth=3
	movq	24(%rbp), %rsi
	movq	%r12, %rdi
	callq	gx_output_saved_page
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB5_91
# BB#94:                                # %if.end.149
                                        #   in Loop: Header=BB5_89 Depth=3
	leal	(%rbx,%r14), %eax
	testl	%r14d, %r14d
	js	.LBB5_98
# BB#95:                                # %if.then.153
                                        #   in Loop: Header=BB5_89 Depth=3
	cmpl	%r15d, %eax
	jg	.LBB5_104
# BB#96:                                # %if.end.157
                                        #   in Loop: Header=BB5_89 Depth=3
	movq	16(%rbp), %rbp
	cmpl	$2, %r14d
	jl	.LBB5_101
# BB#97:                                # %if.then.161
                                        #   in Loop: Header=BB5_89 Depth=3
	movq	16(%rbp), %rbp
	jmp	.LBB5_101
	.align	16, 0x90
.LBB5_98:                               # %if.else.164
                                        #   in Loop: Header=BB5_89 Depth=3
	cmpl	%r15d, %eax
	jl	.LBB5_104
# BB#99:                                # %if.end.168
                                        #   in Loop: Header=BB5_89 Depth=3
	movq	8(%rbp), %rbp
	cmpl	$-2, %r14d
	jg	.LBB5_101
# BB#100:                               # %if.then.171
                                        #   in Loop: Header=BB5_89 Depth=3
	movq	8(%rbp), %rbp
	.align	16, 0x90
.LBB5_101:                              # %if.end.174
                                        #   in Loop: Header=BB5_89 Depth=3
	addl	%r14d, %ebx
	testq	%rbp, %rbp
	jne	.LBB5_89
	jmp	.LBB5_102
.LBB5_104:                              # %for.end.184
                                        #   in Loop: Header=BB5_15 Depth=2
	cmpl	$0, 44(%rsp)            # 4-byte Folded Reload
	je	.LBB5_106
# BB#105:                               # %if.then.185
                                        #   in Loop: Header=BB5_15 Depth=2
	movq	%r12, %rdi
	leaq	96(%rsp), %rsi
	callq	gx_output_saved_page
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB5_91
.LBB5_106:                              # %cleanup
                                        #   in Loop: Header=BB5_15 Depth=2
	xorl	%eax, %eax
	cmpl	%r15d, 76(%rsp)         # 4-byte Folded Reload
	movl	92(%rsp), %ebx
	cmovnel	%eax, %ebx
	movl	$0, 44(%rsp)            # 4-byte Folded Spill
	movq	64(%rsp), %rdx          # 8-byte Reload
	movq	16(%rsp), %r15          # 8-byte Reload
.LBB5_107:                              # %if.end.196
                                        #   in Loop: Header=BB5_15 Depth=2
	testl	%edx, %edx
	movq	48(%rsp), %rdi          # 8-byte Reload
	jne	.LBB5_108
	jmp	.LBB5_35
.LBB5_79:                               # %sw.bb.109
                                        #   in Loop: Header=BB5_15 Depth=2
	movq	80(%rsp), %rax          # 8-byte Reload
	movl	4(%rax), %esi
	andl	$1, %esi
.LBB5_80:                               # %sw.bb.113
                                        #   in Loop: Header=BB5_15 Depth=2
	movq	80(%rsp), %rax          # 8-byte Reload
	movl	4(%rax), %ecx
	movl	$2, %ebx
	movl	$2, %r14d
	movq	64(%rsp), %rdx          # 8-byte Reload
	jmp	.LBB5_83
.LBB5_81:                               # %sw.bb.115
                                        #   in Loop: Header=BB5_15 Depth=2
	movq	80(%rsp), %rax          # 8-byte Reload
	movl	4(%rax), %ecx
	movl	$2, %r14d
	movl	$1, %ebx
	movq	64(%rsp), %rdx          # 8-byte Reload
	jmp	.LBB5_83
.LBB5_58:                               #   in Loop: Header=BB5_15 Depth=2
	movl	%ebp, 40(%rsp)          # 4-byte Spill
.LBB5_63:                               # %param_parse_token.exit170
                                        #   in Loop: Header=BB5_15 Depth=2
	cmpq	$0, 16(%rsp)            # 8-byte Folded Reload
	je	.LBB5_71
.LBB5_64:                               # %lor.lhs.false
                                        #   in Loop: Header=BB5_15 Depth=2
	movq	16(%rsp), %rax          # 8-byte Reload
	movb	(%rax), %al
	movb	%al, %cl
	addb	$-48, %cl
	movzbl	%cl, %ecx
	cmpl	$10, %ecx
	jb	.LBB5_74
# BB#65:                                # %if.end.i.172
                                        #   in Loop: Header=BB5_15 Depth=2
	movzbl	%al, %eax
	cmpl	$42, %eax
	je	.LBB5_71
# BB#66:                                # %if.end.i.172
                                        #   in Loop: Header=BB5_15 Depth=2
	cmpl	$45, %eax
	je	.LBB5_71
# BB#67:                                # %for.cond.preheader.i.174
                                        #   in Loop: Header=BB5_15 Depth=2
	movslq	%ebx, %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
.LBB5_68:                               # %for.cond.i.178
                                        #   Parent Loop BB5_14 Depth=1
                                        #     Parent Loop BB5_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$79, %ebp
	ja	.LBB5_71
# BB#69:                                # %for.body.i.183
                                        #   in Loop: Header=BB5_68 Depth=3
	movq	param_find_key.saved_pages_keys(,%rbp,8), %rsi
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	64(%rsp), %rdx          # 8-byte Reload
	callq	strncasecmp
	incq	%rbp
	testl	%eax, %eax
	jne	.LBB5_68
# BB#70:                                # %param_find_key.exit185
                                        #   in Loop: Header=BB5_15 Depth=2
	cmpl	$11, %ebp
	jne	.LBB5_71
.LBB5_74:                               # %if.end.93
                                        #   in Loop: Header=BB5_15 Depth=2
	movq	%rbx, %rbp
	movl	$.L.str.7, %esi
	xorl	%eax, %eax
	movq	16(%rsp), %rdi          # 8-byte Reload
	leaq	9108(%rsp), %rdx
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	jne	.LBB5_75
# BB#76:                                # %if.end.103
                                        #   in Loop: Header=BB5_15 Depth=2
	movl	9108(%rsp), %eax
	movq	80(%rsp), %rcx          # 8-byte Reload
	movl	%eax, 8(%rcx)
	movq	%r15, 48(%rsp)          # 8-byte Spill
	movl	76(%rsp), %ebx          # 4-byte Reload
	movl	44(%rsp), %ecx          # 4-byte Reload
	movq	%rbp, %rdx
	movq	16(%rsp), %r15          # 8-byte Reload
	xorl	%esi, %esi
	jmp	.LBB5_83
.LBB5_54:                               # %while.cond.20.preheader.i.137
                                        #   in Loop: Header=BB5_15 Depth=2
	movl	%ebp, 40(%rsp)          # 4-byte Spill
	xorl	%ebx, %ebx
	testl	%ecx, %ecx
	movl	$1, %edx
	movq	16(%rsp), %rdi          # 8-byte Reload
	jle	.LBB5_63
.LBB5_55:                               # %if.end.34.i.157
                                        #   Parent Loop BB5_14 Depth=1
                                        #     Parent Loop BB5_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rdx, %rbx
	cmpl	$2, %ecx
	jl	.LBB5_63
# BB#56:                                # %if.end.34.while.body.23_crit_edge.i.164
                                        #   in Loop: Header=BB5_55 Depth=3
	decl	%ecx
	movzbl	(%rdi,%rbx), %esi
	leaq	1(%rbx), %rdx
	testb	$8, (%rax,%rsi,2)
	jne	.LBB5_55
	jmp	.LBB5_64
.LBB5_60:                               #   in Loop: Header=BB5_15 Depth=2
	movl	%ebp, 40(%rsp)          # 4-byte Spill
	jmp	.LBB5_63
.LBB5_34:                               #   in Loop: Header=BB5_14 Depth=1
	movl	76(%rsp), %ebx          # 4-byte Reload
.LBB5_35:                               # %for.inc.219
                                        #   in Loop: Header=BB5_14 Depth=1
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	(%rsp), %rcx            # 8-byte Reload
	cmpl	8(%rax), %ecx
	leal	1(%rcx), %eax
	movq	56(%rsp), %rbp          # 8-byte Reload
	jl	.LBB5_14
# BB#36:
	movq	%rdi, %r15
	movq	8(%rsp), %r14           # 8-byte Reload
	movl	36(%rsp), %esi          # 4-byte Reload
	movl	32(%rsp), %edi          # 4-byte Reload
	jmp	.LBB5_11
.LBB5_1:                                # %if.then
	movq	%rbp, 56(%rsp)          # 8-byte Spill
	movq	24(%r12), %rbx
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r12), %rdi
	xorl	%r15d, %r15d
	movl	$.L.str.5, %esi
	xorl	%eax, %eax
	callq	errprintf
	jmp	.LBB5_4
.LBB5_3:
	movq	%rbp, 56(%rsp)          # 8-byte Spill
	xorl	%r15d, %r15d
.LBB5_4:                                # %out
	xorl	%esi, %esi
	xorl	%edi, %edi
	jmp	.LBB5_11
.LBB5_10:
	movq	%rbp, 56(%rsp)          # 8-byte Spill
	xorl	%r15d, %r15d
	jmp	.LBB5_11
.LBB5_93:                               # %if.then.131
	movq	24(%r12), %r15
	callq	gs_program_name
	movl	%ebx, %ebp
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r12), %rdi
	movl	$.L.str.10, %esi
	xorl	%eax, %eax
	movl	%ebp, %edx
	jmp	.LBB5_103
.LBB5_91:
	movq	48(%rsp), %r15          # 8-byte Reload
	jmp	.LBB5_73
.LBB5_102:                              # %if.then.177
	movq	24(%r12), %r15
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r12), %rdi
	movl	$.L.str.10, %esi
	xorl	%eax, %eax
	movl	%ebx, %edx
.LBB5_103:                              # %cleanup.214
	callq	errprintf
	movl	$-15, %r13d
	movq	48(%rsp), %r15          # 8-byte Reload
.LBB5_73:                               # %cleanup.214
	movl	36(%rsp), %esi          # 4-byte Reload
	movl	32(%rsp), %edi          # 4-byte Reload
	movq	8(%rsp), %r14           # 8-byte Reload
.LBB5_11:                               # %out
	movl	928(%r12), %eax
	movl	%eax, %ecx
	movq	80(%rsp), %rdx          # 8-byte Reload
	subl	(%rdx), %ecx
	movl	%ecx, (%r14)
	movl	%eax, (%rdx)
	movq	%rdx, 17296(%r12)
	movl	%esi, 17252(%r12)
	movl	%edi, 1808(%r12)
	leaq	96(%rsp), %rsi
	movq	%r12, %rdi
	callq	gx_saved_page_load
	movl	$1, %esi
	movq	%r12, %rdi
	callq	clist_finish_page
	testl	%r13d, %r13d
	js	.LBB5_12
# BB#109:                               # %cond.false.238
	testl	%eax, %eax
	js	.LBB5_110
# BB#111:                               # %cond.false.243
	subq	56(%rsp), %r15          # 8-byte Folded Reload
	jmp	.LBB5_112
.LBB5_12:                               # %cond.true.236
	movslq	%r13d, %r15
	jmp	.LBB5_112
.LBB5_110:                              # %cond.true.241
	movslq	%eax, %r15
.LBB5_112:                              # %cleanup.252
	movl	%r15d, %eax
	addq	$9112, %rsp             # imm = 0x2398
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_45:                               # %if.then.58
	movq	24(%r12), %rbx
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r12), %rdi
	movl	$.L.str.8, %esi
	xorl	%eax, %eax
	movq	%r15, %rdx
	callq	errprintf
	movl	$-20, %r13d
	movq	48(%rsp), %r15          # 8-byte Reload
	jmp	.LBB5_73
.LBB5_41:                               # %if.then.43
	movq	24(%r12), %rbx
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r12), %rdi
	movl	$.L.str.6, %esi
	xorl	%eax, %eax
	callq	errprintf
	movl	$-20, %r13d
	movq	48(%rsp), %r15          # 8-byte Reload
	jmp	.LBB5_73
.LBB5_71:                               # %if.then.87
	movq	24(%r12), %rbx
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r12), %rdi
	movl	$.L.str.9, %esi
	xorl	%eax, %eax
	callq	errprintf
.LBB5_72:                               # %cleanup.214
	movl	$-20, %r13d
	jmp	.LBB5_73
.LBB5_75:                               # %if.then.97
	movq	24(%r12), %rbx
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r12), %rdi
	movl	$.L.str.8, %esi
	xorl	%eax, %eax
	movq	16(%rsp), %rdx          # 8-byte Reload
	callq	errprintf
	jmp	.LBB5_72
.Lfunc_end5:
	.size	gx_saved_pages_list_print, .Lfunc_end5-gx_saved_pages_list_print
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_82
	.quad	.LBB5_82
	.quad	.LBB5_82
	.quad	.LBB5_82
	.quad	.LBB5_82
	.quad	.LBB5_51
	.quad	.LBB5_77
	.quad	.LBB5_78
	.quad	.LBB5_79
	.quad	.LBB5_80
	.quad	.LBB5_81
	.quad	.LBB5_44
	.quad	.LBB5_39
	.quad	.LBB5_43

	.text
	.align	16, 0x90
	.type	gx_output_saved_page,@function
gx_output_saved_page:                   # @gx_output_saved_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp60:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp61:
	.cfi_def_cfa_offset 32
.Ltmp62:
	.cfi_offset %rbx, -32
.Ltmp63:
	.cfi_offset %r14, -24
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	1100(%rbx), %r14d
	movl	$1, 1100(%rbx)
	callq	gx_saved_page_load
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB6_13
# BB#1:                                 # %if.end
	movl	$1, 1808(%rbx)
	movq	%rbx, %rdi
	callq	clist_read_color_usage_array
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB6_13
# BB#2:                                 # %if.end.6
	movq	%rbx, %rdi
	callq	clist_read_icctable
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB6_13
# BB#3:                                 # %if.end.10
	movq	24(%rbx), %rdi
	callq	gsicc_cache_new
	movq	%rax, 10168(%rbx)
	testq	%rax, %rax
	movl	$-25, %eax
	cmovel	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB6_13
# BB#4:                                 # %if.end.15
	movl	$0, 17252(%rbx)
	movq	1168(%rbx), %rax
	movl	$1, %esi
	cmpl	$0, 952(%rbx)
	jne	.LBB6_7
# BB#5:                                 # %lor.lhs.false
	cmpl	$0, 948(%rbx)
	jle	.LBB6_7
# BB#6:                                 # %cond.false.18
	movl	944(%rbx), %esi
.LBB6_7:                                # %cond.end.19
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	*%rax
	movq	10160(%rbx), %rdi
	movq	24(%rbx), %rsi
	callq	clist_free_icc_table
	movq	$0, 10160(%rbx)
	movq	10168(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB6_10
# BB#8:                                 # %do.end
	decq	16(%rsi)
	jne	.LBB6_10
# BB#9:                                 # %do.end.41
	movq	24(%rsi), %rdi
	movl	$.L.str.24, %edx
	callq	*32(%rsi)
	movq	$0, 10168(%rbx)
.LBB6_10:                               # %do.end.57
	movq	$0, 10168(%rbx)
	leaq	1888(%rbx), %rsi
	movq	10096(%rbx), %rax
	movq	5984(%rbx), %rdi
	xorl	%edx, %edx
	callq	*8(%rax)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB6_13
# BB#11:                                # %if.end.73
	movq	$0, 5984(%rbx)
	movq	10088(%rbx), %rdi
	movq	10096(%rbx), %rax
	leaq	5992(%rbx), %rsi
	xorl	%edx, %edx
	callq	*8(%rax)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB6_13
# BB#12:                                # %if.end.76
	movq	$0, 10088(%rbx)
.LBB6_13:                               # %out
	movl	%r14d, 1100(%rbx)
	movl	%ebp, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gx_output_saved_page, .Lfunc_end6-gx_output_saved_page
	.cfi_endproc

	.align	16, 0x90
	.type	gx_saved_page_load,@function
gx_saved_page_load:                     # @gx_saved_page_load
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp66:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp67:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp68:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp69:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp70:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp71:
	.cfi_def_cfa_offset 112
.Ltmp72:
	.cfi_offset %rbx, -56
.Ltmp73:
	.cfi_offset %r12, -48
.Ltmp74:
	.cfi_offset %r13, -40
.Ltmp75:
	.cfi_offset %r14, -32
.Ltmp76:
	.cfi_offset %r15, -24
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	24(%rbx), %rsi
	leaq	(%rsp), %rbp
	movq	%rbp, %rdi
	callq	gs_c_param_list_write
	movq	9000(%r14), %rsi
	movq	%rbp, %rdi
	callq	gs_param_list_unserialize
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB7_13
# BB#1:                                 # %if.end
	leaq	(%rsp), %r15
	movq	%r15, %rdi
	callq	gs_c_param_list_read
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	gs_putdeviceparams
	movl	%eax, %ebp
	movq	%r15, %rdi
	callq	gs_c_param_list_release
	testl	%ebp, %ebp
	js	.LBB7_13
# BB#2:                                 # %if.end.5
	jle	.LBB7_4
# BB#3:                                 # %if.then.7
	movq	%rbx, %rdi
	callq	gs_opendevice
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB7_13
.LBB7_4:                                # %if.end.12
	cmpl	$0, 1880(%rbx)
	js	.LBB7_6
# BB#5:                                 # %if.end.12.if.end.40_crit_edge
	leaq	5984(%rbx), %r15
	jmp	.LBB7_11
.LBB7_6:                                # %if.then.14
	movq	%rbx, %rdi
	callq	clist_close_writer_and_init_reader
	movq	5984(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB7_8
# BB#7:                                 # %if.then.17
	leaq	1888(%rbx), %rsi
	movq	10096(%rbx), %rax
	movl	$1, %edx
	callq	*8(%rax)
.LBB7_8:                                # %if.end.23
	leaq	5984(%rbx), %r15
	movq	10088(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB7_10
# BB#9:                                 # %if.then.26
	movq	10096(%rbx), %rax
	leaq	5992(%rbx), %rsi
	movl	$1, %edx
	callq	*8(%rax)
.LBB7_10:                               # %if.end.35
	movq	$0, 10088(%rbx)
	movq	$0, 5984(%rbx)
.LBB7_11:                               # %if.end.40
	movq	8944(%r14), %rax
	leaq	1888(%rbx), %r12
	movq	%rax, 10096(%rbx)
	movl	8952(%r14), %eax
	movl	%eax, 10104(%rbx)
	movq	8960(%r14), %rax
	movq	%rax, 10120(%rbx)
	movups	8968(%r14), %xmm0
	movups	%xmm0, 10128(%rbx)
	movl	$-1, 10200(%rbx)
	movq	$0, 10208(%rbx)
	movl	$1, 10224(%rbx)
	movq	$0, 10232(%rbx)
	movq	$0, 10248(%rbx)
	movl	$0, 1884(%rbx)
	movl	$0, 1880(%rbx)
	leaq	752(%r14), %rsi
	movl	$4096, %edx             # imm = 0x1000
	movq	%r12, %rdi
	callq	strncpy
	leaq	5992(%rbx), %r13
	addq	$4848, %r14             # imm = 0x12F0
	movl	$4096, %edx             # imm = 0x1000
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	strncpy
	movq	10096(%rbx), %rax
	movq	1768(%rbx), %rcx
	movl	$gp_fmode_rb, %esi
	movl	$1, %r9d
	movq	%r12, %rdi
	movq	%r15, %rdx
	movq	%rcx, %r8
	callq	*(%rax)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB7_13
# BB#12:                                # %if.then.73
	movq	10096(%rbx), %rax
	movq	1768(%rbx), %rcx
	addq	$10088, %rbx            # imm = 0x2768
	movl	$gp_fmode_rb, %esi
	xorl	%r9d, %r9d
	movq	%r13, %rdi
	movq	%rbx, %rdx
	movq	%rcx, %r8
	callq	*(%rax)
	movl	%eax, %ebp
.LBB7_13:                               # %out
	movl	%ebp, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gx_saved_page_load, .Lfunc_end7-gx_saved_page_load
	.cfi_endproc

	.globl	gx_saved_pages_param_process
	.align	16, 0x90
	.type	gx_saved_pages_param_process,@function
gx_saved_pages_param_process:           # @gx_saved_pages_param_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp79:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp80:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp81:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp82:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp83:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp84:
	.cfi_def_cfa_offset 128
.Ltmp85:
	.cfi_offset %rbx, -56
.Ltmp86:
	.cfi_offset %r12, -48
.Ltmp87:
	.cfi_offset %r13, -40
.Ltmp88:
	.cfi_offset %r14, -32
.Ltmp89:
	.cfi_offset %r15, -24
.Ltmp90:
	.cfi_offset %rbp, -16
	movl	%edx, %r12d
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movq	%rdi, %r13
	leal	1(%r12), %eax
	movl	%eax, 52(%rsp)          # 4-byte Spill
	movslq	%r12d, %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	leaq	1064(%r13), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	movl	$1, 8(%rsp)             # 4-byte Folded Spill
	movl	$0, 12(%rsp)            # 4-byte Folded Spill
	movq	%rsi, %rbx
	jmp	.LBB8_1
	.align	16, 0x90
.LBB8_77:                               # %sw.epilog
                                        #   in Loop: Header=BB8_1 Depth=1
	movslq	%r14d, %rax
	subl	%eax, %r12d
	subl	%ebp, %r12d
	addl	%r12d, %r15d
	addq	%rax, %rbp
	movl	%r15d, %r12d
	movq	%rbp, %rbx
.LBB8_1:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_3 Depth 2
                                        #     Child Loop BB8_5 Depth 2
                                        #     Child Loop BB8_11 Depth 2
                                        #     Child Loop BB8_40 Depth 2
                                        #     Child Loop BB8_50 Depth 2
                                        #     Child Loop BB8_57 Depth 2
                                        #     Child Loop BB8_33 Depth 2
                                        #     Child Loop BB8_29 Depth 2
	testl	%r12d, %r12d
	movq	%rbx, %rbp
	movl	%r12d, %edx
	jle	.LBB8_18
# BB#2:                                 # %while.body.lr.ph.i
                                        #   in Loop: Header=BB8_1 Depth=1
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	%rbx, %rbp
	movl	%r12d, %ecx
.LBB8_3:                                # %while.body.i
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rbp), %edx
	testb	$8, (%rax,%rdx,2)
	jne	.LBB8_4
# BB#15:                                # %if.end.i
                                        #   in Loop: Header=BB8_3 Depth=2
	movl	$1, %r14d
	movzbl	%dl, %edx
	cmpl	$42, %edx
	je	.LBB8_20
# BB#16:                                # %if.end.i
                                        #   in Loop: Header=BB8_3 Depth=2
	cmpl	$45, %edx
	je	.LBB8_20
# BB#17:                                # %if.end.11.i
                                        #   in Loop: Header=BB8_3 Depth=2
	incq	%rbp
	leal	-1(%rcx), %edx
	cmpl	$1, %ecx
	movl	%edx, %ecx
	jg	.LBB8_3
	.align	16, 0x90
.LBB8_18:                               # %while.end.i
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$1, %r14d
	testl	%edx, %edx
	je	.LBB8_19
.LBB8_20:                               # %param_parse_token.exit
                                        #   in Loop: Header=BB8_1 Depth=1
	testq	%rbp, %rbp
	je	.LBB8_21
.LBB8_7:                                # %while.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	%rbx, 56(%rsp)          # 8-byte Spill
	movb	(%rbp), %al
	movb	%al, %cl
	addb	$-48, %cl
	movzbl	%cl, %ecx
	cmpl	$10, %ecx
	jb	.LBB8_71
# BB#8:                                 # %if.end.i.97
                                        #   in Loop: Header=BB8_1 Depth=1
	movzbl	%al, %eax
	cmpl	$42, %eax
	je	.LBB8_71
# BB#9:                                 # %if.end.i.97
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$45, %eax
	je	.LBB8_71
# BB#10:                                # %for.cond.preheader.i
                                        #   in Loop: Header=BB8_1 Depth=1
	movslq	%r14d, %r15
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB8_11:                               # %for.cond.i
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$79, %ebx
	ja	.LBB8_71
# BB#12:                                # %for.body.i
                                        #   in Loop: Header=BB8_11 Depth=2
	movq	param_find_key.saved_pages_keys(,%rbx,8), %rsi
	movq	%rbp, %rdi
	movq	%r15, %rdx
	callq	strncasecmp
	incq	%rbx
	testl	%eax, %eax
	jne	.LBB8_11
# BB#13:                                # %param_find_key.exit
                                        #   in Loop: Header=BB8_1 Depth=1
	decl	%ebx
	cmpl	$4, %ebx
	jbe	.LBB8_14
	.align	16, 0x90
.LBB8_71:                               # %sw.default
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	%rbp, %rbx
	movq	24(%r13), %rdi
	leal	1(%r14), %esi
	movl	%esi, 48(%rsp)          # 4-byte Spill
	movl	$.L.str.12, %edx
	callq	*136(%rdi)
	movq	%rax, %rbp
	movq	24(%r13), %rdi
	movl	$.L.str.12, %edx
	movl	52(%rsp), %esi          # 4-byte Reload
	callq	*136(%rdi)
	movq	%rax, %r15
	testq	%rbp, %rbp
	je	.LBB8_72
# BB#73:                                # %sw.default
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	%r12, 40(%rsp)          # 8-byte Spill
	testq	%r15, %r15
	je	.LBB8_74
# BB#75:                                # %if.then.119
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	%r14, %r12
	movslq	%r12d, %r14
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movq	%r14, %rdx
	callq	memcpy
	movb	$0, (%rbp,%r14)
	movq	%r15, %rdi
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	16(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, (%r15,%rbx)
	movq	%r12, %rbx
	movq	24(%r13), %r14
	callq	gs_program_name
	movq	%r13, %r12
	movq	%rax, %r13
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rbx, %r14
	movq	%r13, %rsi
	movq	%r12, %r13
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r13), %rdi
	movl	$.L.str.13, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdx
	movq	%r15, %rcx
	callq	errprintf
	movq	24(%r13), %rdi
	movl	$.L.str.12, %ecx
	movq	%rbp, %rsi
	movq	32(%rsp), %rbp          # 8-byte Reload
	movl	48(%rsp), %edx          # 4-byte Reload
	callq	*160(%rdi)
	movq	24(%r13), %rdi
	movl	$.L.str.12, %ecx
	movq	%r15, %rsi
	movl	52(%rsp), %edx          # 4-byte Reload
	callq	*160(%rdi)
	movq	40(%rsp), %r12          # 8-byte Reload
	jmp	.LBB8_76
	.align	16, 0x90
.LBB8_72:                               #   in Loop: Header=BB8_1 Depth=1
	movq	%rbx, %rbp
	jmp	.LBB8_76
	.align	16, 0x90
.LBB8_74:                               #   in Loop: Header=BB8_1 Depth=1
	movq	40(%rsp), %r12          # 8-byte Reload
	movq	%rbx, %rbp
.LBB8_76:                               # %sw.epilog
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	56(%rsp), %r15          # 8-byte Reload
	jmp	.LBB8_77
.LBB8_4:                                # %while.cond.20.preheader.i
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%r14d, %r14d
	testl	%ecx, %ecx
	movl	$1, %edx
	jle	.LBB8_20
	.align	16, 0x90
.LBB8_5:                                # %if.end.34.i
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdx, %r14
	cmpl	$2, %ecx
	jl	.LBB8_20
# BB#6:                                 # %if.end.34.while.body.23_crit_edge.i
                                        #   in Loop: Header=BB8_5 Depth=2
	decl	%ecx
	movzbl	(%rbp,%r14), %esi
	leaq	1(%r14), %rdx
	testb	$8, (%rax,%rsi,2)
	jne	.LBB8_5
	jmp	.LBB8_7
.LBB8_14:                               # %param_find_key.exit
                                        #   in Loop: Header=BB8_1 Depth=1
	jmpq	*.LJTI8_0(,%rbx,8)
.LBB8_22:                               # %sw.bb
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, 17296(%r13)
	jne	.LBB8_76
# BB#23:                                # %if.then
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	%rbp, %r15
	movq	24(%r13), %rax
	movq	200(%rax), %rbx
	movl	$40, %esi
	movl	$.L.str.2, %edx
	movq	%rbx, %rdi
	callq	*64(%rbx)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB8_24
# BB#25:                                # %gx_saved_pages_list_new.exit
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%esi, %esi
	movl	$40, %edx
	movq	%rbp, %rdi
	callq	memset
	movq	%rbx, 32(%rbp)
	movl	928(%r13), %eax
	movl	%eax, (%rbp)
	movl	$1, 8(%rbp)
	movq	%rbp, 17296(%r13)
	movl	1100(%r13), %eax
	movl	%eax, 12(%rbp)
	movl	$1, 1100(%r13)
	movl	832(%r13), %edx
	movl	836(%r13), %ecx
	movq	%r13, %rdi
	movq	(%rsp), %rsi            # 8-byte Reload
	callq	gdev_prn_reallocate_memory
	testl	%eax, %eax
	movq	%r15, %rbp
	jns	.LBB8_26
	jmp	.LBB8_64
.LBB8_27:                               # %sw.bb.16
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	17296(%r13), %r15
	testq	%r15, %r15
	je	.LBB8_76
# BB#28:                                # %if.then.19
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movl	12(%r15), %eax
	movl	%eax, 1100(%r13)
	movq	16(%r15), %rbp
	testq	%rbp, %rbp
	je	.LBB8_30
	.align	16, 0x90
.LBB8_29:                               # %while.body.i.111
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	24(%rbp), %rbx
	movq	8944(%rbx), %rax
	leaq	752(%rbx), %rdi
	callq	*16(%rax)
	movq	8944(%rbx), %rax
	leaq	4848(%rbx), %rdi
	callq	*16(%rax)
	movq	8984(%rbx), %rdi
	movq	9000(%rbx), %rsi
	movl	$.L.str.4, %edx
	callq	*24(%rdi)
	movq	32(%r15), %rdi
	movl	$.L.str.4, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	movq	16(%rbp), %rbx
	movq	32(%r15), %rdi
	movl	$.L.str.4, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
	testq	%rbx, %rbx
	movq	%rbx, %rbp
	jne	.LBB8_29
.LBB8_30:                               # %gx_saved_pages_list_free.exit
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	32(%r15), %rdi
	movl	$.L.str.4, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
	movq	$0, 17296(%r13)
	movl	832(%r13), %edx
	movl	836(%r13), %ecx
	movq	%r13, %rdi
	movq	(%rsp), %rsi            # 8-byte Reload
	callq	gdev_prn_reallocate_memory
	testl	%eax, %eax
	movq	32(%rsp), %rbp          # 8-byte Reload
	js	.LBB8_64
.LBB8_26:                               # %if.end.14
                                        #   in Loop: Header=BB8_1 Depth=1
	orl	$1, 12(%rsp)            # 4-byte Folded Spill
	jmp	.LBB8_76
.LBB8_31:                               # %sw.bb.35
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movq	17296(%r13), %r15
	testq	%r15, %r15
	je	.LBB8_35
# BB#32:                                # %if.then.38
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	8(%r15), %eax
	movl	%eax, 8(%rsp)           # 4-byte Spill
	movq	16(%r15), %rbp
	testq	%rbp, %rbp
	je	.LBB8_34
	.align	16, 0x90
.LBB8_33:                               # %while.body.i.132
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	24(%rbp), %rbx
	movq	8944(%rbx), %rax
	leaq	752(%rbx), %rdi
	callq	*16(%rax)
	movq	8944(%rbx), %rax
	leaq	4848(%rbx), %rdi
	callq	*16(%rax)
	movq	8984(%rbx), %rdi
	movq	9000(%rbx), %rsi
	movl	$.L.str.4, %edx
	callq	*24(%rdi)
	movq	32(%r15), %rdi
	movl	$.L.str.4, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	movq	16(%rbp), %rbx
	movq	32(%r15), %rdi
	movl	$.L.str.4, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
	testq	%rbx, %rbx
	movq	%rbx, %rbp
	jne	.LBB8_33
.LBB8_34:                               # %gx_saved_pages_list_free.exit135
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	32(%r15), %rdi
	movl	$.L.str.4, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
.LBB8_35:                               # %if.end.42
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	24(%r13), %rax
	movq	200(%rax), %rbx
	movl	$40, %esi
	movl	$.L.str.2, %edx
	movq	%rbx, %rdi
	callq	*64(%rbx)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB8_24
# BB#36:                                # %gx_saved_pages_list_new.exit149
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%esi, %esi
	movl	$40, %edx
	movq	%rbp, %rdi
	callq	memset
	movq	%rbx, 32(%rbp)
	movl	928(%r13), %eax
	movl	%eax, (%rbp)
	movq	%rbp, 17296(%r13)
	movl	8(%rsp), %eax           # 4-byte Reload
	movl	%eax, 8(%rbp)
	movq	32(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB8_76
.LBB8_66:                               # %sw.bb.81
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	addl	%r12d, %eax
	subl	%r14d, %eax
	movl	%eax, %r12d
	subl	%ebp, %r12d
	leaq	(%r15,%rbp), %r15
	movq	17296(%r13), %rsi
	testq	%rsi, %rsi
	je	.LBB8_67
# BB#68:                                # %if.then.95
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	%r13, %rdi
	movq	%r15, %rdx
	movl	%r12d, %ecx
	leaq	68(%rsp), %r8
	callq	gx_saved_pages_list_print
	testl	%eax, %eax
	js	.LBB8_64
# BB#69:                                # %if.end.101
                                        #   in Loop: Header=BB8_1 Depth=1
	orl	$1, 12(%rsp)            # 4-byte Folded Spill
	jmp	.LBB8_70
.LBB8_37:                               # %sw.bb.50
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$-15, %eax
	cmpq	$0, 17296(%r13)
	je	.LBB8_64
# BB#38:                                # %if.end.54
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	addl	%r12d, %eax
	subl	%r14d, %eax
	movl	%eax, %r12d
	subl	%ebp, %r12d
	addq	%rbp, %r15
	testl	%r12d, %r12d
	movq	%r15, %rdi
	movl	%r12d, %edx
	jle	.LBB8_49
# BB#39:                                # %while.body.lr.ph.i.152
                                        #   in Loop: Header=BB8_1 Depth=1
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	%r15, %rdi
	movl	%r12d, %ecx
.LBB8_40:                               # %while.body.i.159
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdi), %edx
	testb	$8, (%rax,%rdx,2)
	jne	.LBB8_41
# BB#45:                                # %if.end.i.162
                                        #   in Loop: Header=BB8_40 Depth=2
	movzbl	%dl, %edx
	cmpl	$42, %edx
	je	.LBB8_46
# BB#47:                                # %if.end.i.162
                                        #   in Loop: Header=BB8_40 Depth=2
	cmpl	$45, %edx
	je	.LBB8_46
# BB#48:                                # %if.end.11.i.166
                                        #   in Loop: Header=BB8_40 Depth=2
	incq	%rdi
	leal	-1(%rcx), %edx
	cmpl	$1, %ecx
	movl	%edx, %ecx
	jg	.LBB8_40
.LBB8_49:                               # %while.end.i.170
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	movl	$1, %r14d
	testl	%edx, %edx
	jne	.LBB8_44
	jmp	.LBB8_60
.LBB8_46:                               #   in Loop: Header=BB8_1 Depth=1
	movl	$1, %r14d
.LBB8_43:                               # %while.cond.20.while.end.36_crit_edge.i.190
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	%rdi, 32(%rsp)          # 8-byte Spill
.LBB8_44:                               # %param_parse_token.exit194
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, 32(%rsp)            # 8-byte Folded Reload
	je	.LBB8_60
.LBB8_53:                               # %lor.lhs.false
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	movb	(%rax), %al
	movb	%al, %cl
	addb	$-48, %cl
	movzbl	%cl, %ecx
	cmpl	$10, %ecx
	jb	.LBB8_61
# BB#54:                                # %if.end.i.196
                                        #   in Loop: Header=BB8_1 Depth=1
	movzbl	%al, %eax
	cmpl	$42, %eax
	je	.LBB8_60
# BB#55:                                # %if.end.i.196
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$45, %eax
	je	.LBB8_60
# BB#56:                                # %for.cond.preheader.i.198
                                        #   in Loop: Header=BB8_1 Depth=1
	movslq	%r14d, %rbx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB8_57:                               # %for.cond.i.202
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$79, %ebp
	ja	.LBB8_60
# BB#58:                                # %for.body.i.207
                                        #   in Loop: Header=BB8_57 Depth=2
	movq	param_find_key.saved_pages_keys(,%rbp,8), %rsi
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rdx
	callq	strncasecmp
	incq	%rbp
	testl	%eax, %eax
	jne	.LBB8_57
# BB#59:                                # %param_find_key.exit209
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$11, %ebp
	jne	.LBB8_60
.LBB8_61:                               # %if.end.68
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$.L.str.7, %esi
	xorl	%eax, %eax
	movq	32(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	leaq	64(%rsp), %rdx
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	jne	.LBB8_62
# BB#65:                                # %if.end.78
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	64(%rsp), %eax
	movq	17296(%r13), %rcx
	movl	%eax, 8(%rcx)
	jmp	.LBB8_77
.LBB8_67:                               #   in Loop: Header=BB8_1 Depth=1
	movl	%r12d, %eax
.LBB8_70:                               # %if.end.103
                                        #   in Loop: Header=BB8_1 Depth=1
	addl	%r14d, %eax
	movl	%eax, %r14d
	jmp	.LBB8_77
.LBB8_41:                               # %while.cond.20.preheader.i.161
                                        #   in Loop: Header=BB8_1 Depth=1
	testl	%ecx, %ecx
	movl	$1, %ebp
	jle	.LBB8_42
.LBB8_50:                               # %if.end.34.i.181
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbp, %r14
	cmpl	$2, %ecx
	jl	.LBB8_43
# BB#51:                                # %if.end.34.while.body.23_crit_edge.i.188
                                        #   in Loop: Header=BB8_50 Depth=2
	decl	%ecx
	movzbl	(%rdi,%r14), %esi
	leaq	1(%r14), %rbp
	testb	$8, (%rax,%rsi,2)
	jne	.LBB8_50
# BB#52:                                # %param_parse_token.exit194.thread
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	jmp	.LBB8_53
.LBB8_42:                               #   in Loop: Header=BB8_1 Depth=1
	xorl	%r14d, %r14d
	jmp	.LBB8_43
.LBB8_21:
	movl	12(%rsp), %eax          # 4-byte Reload
	jmp	.LBB8_64
.LBB8_19:
	movl	12(%rsp), %eax          # 4-byte Reload
.LBB8_64:                               # %cleanup
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_60:                               # %if.then.63
	movq	24(%r13), %rbx
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r13), %rdi
	movl	$.L.str.11, %esi
	xorl	%eax, %eax
	callq	errprintf
.LBB8_63:                               # %cleanup
	movl	$-20, %eax
	jmp	.LBB8_64
.LBB8_24:                               # %gx_saved_pages_list_new.exit.thread
	movq	$0, 17296(%r13)
	movl	$-25, %eax
	jmp	.LBB8_64
.LBB8_62:                               # %if.then.72
	movq	24(%r13), %rbx
	callq	gs_program_name
	movq	%rbp, %r14
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r13), %rdi
	movl	$.L.str.8, %esi
	xorl	%eax, %eax
	movq	%r14, %rdx
	callq	errprintf
	jmp	.LBB8_63
.Lfunc_end8:
	.size	gx_saved_pages_param_process, .Lfunc_end8-gx_saved_pages_param_process
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI8_0:
	.quad	.LBB8_22
	.quad	.LBB8_27
	.quad	.LBB8_31
	.quad	.LBB8_66
	.quad	.LBB8_37

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"saved_page paramlist"
	.size	.L.str, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gdev_prn_render_pages"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gx_saved_pages_list_new"
	.size	.L.str.2, 24

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gx_saved_pages_list_add"
	.size	.L.str.3, 24

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gx_saved_pages_list_free"
	.size	.L.str.4, 25

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gx_saved_pages_list_print: Error getting device params\n"
	.size	.L.str.5, 56

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gx_saved_pages_list_print: '-' unexpected\n"
	.size	.L.str.6, 43

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%d"
	.size	.L.str.7, 3

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gx_saved_pages_list_print: Number format error '%s'\n"
	.size	.L.str.8, 53

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gx_saved_pages_list_print: copies not followed by number.\n"
	.size	.L.str.9, 59

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gx_saved_pages_list_print: page %d not found.\n"
	.size	.L.str.10, 47

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gx_saved_pages_param_process: copies not followed by number.\n"
	.size	.L.str.11, 62

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"saved_pages_param_process"
	.size	.L.str.12, 26

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"*** Invalid saved-pages token '%s'\n *** in param string '%s'\n"
	.size	.L.str.13, 62

	.type	param_find_key.saved_pages_keys,@object # @param_find_key.saved_pages_keys
	.section	.rodata,"a",@progbits
	.align	16
param_find_key.saved_pages_keys:
	.quad	.L.str.14
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	.L.str.18
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.22
	.quad	.L.str.23
	.size	param_find_key.saved_pages_keys, 80

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"begin"
	.size	.L.str.14, 6

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"end"
	.size	.L.str.15, 4

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"flush"
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"print"
	.size	.L.str.17, 6

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"copies"
	.size	.L.str.18, 7

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"normal"
	.size	.L.str.19, 7

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"reverse"
	.size	.L.str.20, 8

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"even"
	.size	.L.str.21, 5

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"even0pad"
	.size	.L.str.22, 9

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"odd"
	.size	.L.str.23, 4

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"clist_finish_page"
	.size	.L.str.24, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
