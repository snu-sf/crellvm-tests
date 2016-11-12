	.text
	.file	"gxclread.bc"
	.globl	clist_select_render_plane
	.align	16, 0x90
	.type	clist_select_render_plane,@function
clist_select_render_plane:              # @clist_select_render_plane
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
.Ltmp3:
	.cfi_def_cfa_offset 80
.Ltmp4:
	.cfi_offset %rbx, -32
.Ltmp5:
	.cfi_offset %r14, -24
.Ltmp6:
	.cfi_offset %rbp, -16
	movl	%r8d, %ebp
	movq	%rcx, %r14
	movq	%rdi, %rbx
	testl	%ebp, %ebp
	js	.LBB0_1
# BB#2:                                 # %if.then
	leaq	16(%rsp), %rcx
	leaq	12(%rsp), %r8
	movq	%rbx, %rdi
	callq	gdev_prn_color_usage
	cmpl	$0, 24(%rsp)
	movl	$-1, %eax
	je	.LBB0_4
# BB#3:                                 # %if.then.4
	movl	%eax, 8(%r14)
	jmp	.LBB0_5
.LBB0_1:
	movl	%ebp, %eax
	movl	%eax, 8(%r14)
	jmp	.LBB0_5
.LBB0_4:                                # %if.else
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%ebp, %edx
	callq	gx_render_plane_init
.LBB0_5:                                # %if.end.7
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	clist_select_render_plane, .Lfunc_end0-clist_select_render_plane
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_0:
	.zero	16
	.text
	.globl	clist_setup_params
	.align	16, 0x90
	.type	clist_setup_params,@function
clist_setup_params:                     # @clist_setup_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp8:
	.cfi_def_cfa_offset 32
.Ltmp9:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$0, 1884(%rbx)
	movl	$0, 1880(%rbx)
	movl	$-1, 10200(%rbx)
	movq	$0, 10208(%rbx)
	movl	$1, 10224(%rbx)
	movq	$0, 10232(%rbx)
	movq	$0, 10216(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 10160(%rbx)
	movq	$0, 10248(%rbx)
	leaq	1888(%rbx), %rdx
	movl	$0, 8(%rsp)
	movl	$0, (%rsp)
	movl	$2, %edi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rbx, %rsi
	callq	clist_playback_file_bands
	movl	$0, 1884(%rbx)
	movl	$0, 1880(%rbx)
	movl	$-1, 10200(%rbx)
	movq	$0, 10208(%rbx)
	movl	$1, 10224(%rbx)
	movq	$0, 10232(%rbx)
	movq	$0, 10216(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 10160(%rbx)
	movq	$0, 10248(%rbx)
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end1:
	.size	clist_setup_params, .Lfunc_end1-clist_setup_params
	.cfi_endproc

	.globl	clist_render_init
	.align	16, 0x90
	.type	clist_render_init,@function
clist_render_init:                      # @clist_render_init
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$0, 1884(%rdi)
	movl	$0, 1880(%rdi)
	movl	$-1, 10200(%rdi)
	movq	$0, 10208(%rdi)
	movl	$1, 10224(%rdi)
	movq	$0, 10232(%rdi)
	xorps	%xmm0, %xmm0
	movq	$0, 10216(%rdi)
	movups	%xmm0, 10160(%rdi)
	movq	$0, 10248(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	clist_render_init, .Lfunc_end2-clist_render_init
	.cfi_endproc

	.globl	clist_playback_file_bands
	.align	16, 0x90
	.type	clist_playback_file_bands,@function
clist_playback_file_bands:              # @clist_playback_file_bands
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp11:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp12:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp13:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp14:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 56
	subq	$12888, %rsp            # imm = 0x3258
.Ltmp16:
	.cfi_def_cfa_offset 12944
.Ltmp17:
	.cfi_offset %rbx, -56
.Ltmp18:
	.cfi_offset %r12, -48
.Ltmp19:
	.cfi_offset %r13, -40
.Ltmp20:
	.cfi_offset %r14, -32
.Ltmp21:
	.cfi_offset %r15, -24
.Ltmp22:
	.cfi_offset %rbp, -16
	movl	%r9d, %ebp
	movl	%r8d, %ebx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movq	%rdx, %r14
	movq	%rsi, %r15
	movl	%edi, 20(%rsp)          # 4-byte Spill
	movq	24(%r15), %r13
	xorl	%r12d, %r12d
	leaq	4480(%rsp), %rdi
	movl	$s_band_read_template, %esi
	xorl	%edx, %edx
	callq	s_init_state
	movl	%ebx, 12848(%rsp)
	movl	%ebp, 12852(%rsp)
	leaq	4592(%rsp), %rbx
	movl	$8256, %edx             # imm = 0x2040
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	memcpy
	movq	%r13, 12880(%rsp)
	cmpq	$0, 8688(%rsp)
	movl	$0, %ebp
	movl	$0, %r14d
	jne	.LBB3_2
# BB#1:                                 # %if.then
	leaq	8688(%rsp), %rdx
	movq	10096(%r15), %rax
	movq	1768(%r15), %rcx
	movl	$gp_fmode_rb, %esi
	movl	$1, %r9d
	movq	%rbx, %rdi
	movq	%rcx, %r8
	callq	*(%rax)
	movl	%eax, %r14d
	movl	%r14d, %ebp
	shrl	$31, %ebp
	xorl	$1, %ebp
.LBB3_2:                                # %if.end
	movq	12792(%rsp), %rdi
	testl	%r14d, %r14d
	js	.LBB3_5
# BB#3:                                 # %if.end
	testq	%rdi, %rdi
	jne	.LBB3_5
# BB#4:                                 # %if.then.16
	leaq	12792(%rsp), %rdx
	movq	10096(%r15), %rax
	leaq	8696(%rsp), %rdi
	movq	1768(%r15), %rcx
	movl	$gp_fmode_rb, %esi
	xorl	%r9d, %r9d
	movq	%rcx, %r8
	callq	*(%rax)
	movl	%eax, %r14d
	movl	%r14d, %r12d
	shrl	$31, %r12d
	xorl	$1, %r12d
	movq	12792(%rsp), %rdi
.LBB3_5:                                # %if.end.29
	cmpq	$0, 8688(%rsp)
	je	.LBB3_8
# BB#6:                                 # %if.end.29
	testq	%rdi, %rdi
	je	.LBB3_8
# BB#7:                                 # %if.then.39
	movq	12800(%rsp), %rax
	movl	$0, 12856(%rsp)
	movl	$0, 12864(%rsp)
	movl	$0, 12868(%rsp)
	movq	$0, 12872(%rsp)
	leaq	8696(%rsp), %rdx
	xorl	%esi, %esi
	callq	*64(%rax)
	movq	%rbx, %r14
	leaq	4128(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	s_init
	leaq	32(%rsp), %rsi
	movl	$4096, %edx             # imm = 0x1000
	movl	$clist_playback_file_bands.no_procs, %ecx
	movl	$1, %r8d
	movq	%rbx, %rdi
	callq	s_std_init
	movb	$1, 4282(%rsp)
	leaq	4480(%rsp), %rax
	movq	%rax, 4384(%rsp)
	movq	%r13, (%rsp)
	movl	20(%rsp), %edi          # 4-byte Reload
	movq	%r15, %rsi
	movq	%rbx, %rdx
	movq	%r14, %rbx
	movq	24(%rsp), %rcx          # 8-byte Reload
	movl	12944(%rsp), %r8d
	movl	12952(%rsp), %r9d
	callq	clist_playback_band
	movl	%eax, %r14d
.LBB3_8:                                # %if.end.52
	testl	%r12d, %r12d
	je	.LBB3_11
# BB#9:                                 # %land.lhs.true.53
	movq	12792(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB3_11
# BB#10:                                # %if.then.58
	movq	10096(%r15), %rax
	leaq	8696(%rsp), %rsi
	xorl	%edx, %edx
	callq	*8(%rax)
.LBB3_11:                               # %if.end.67
	testl	%ebp, %ebp
	je	.LBB3_14
# BB#12:                                # %land.lhs.true.69
	movq	8688(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB3_14
# BB#13:                                # %if.then.74
	movq	10096(%r15), %rax
	xorl	%edx, %edx
	movq	%rbx, %rsi
	callq	*8(%rax)
.LBB3_14:                               # %if.end.84
	movl	%r14d, %eax
	addq	$12888, %rsp            # imm = 0x3258
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	clist_playback_file_bands, .Lfunc_end3-clist_playback_file_bands
	.cfi_endproc

	.globl	clist_close_writer_and_init_reader
	.align	16, 0x90
	.type	clist_close_writer_and_init_reader,@function
clist_close_writer_and_init_reader:     # @clist_close_writer_and_init_reader
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp24:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp26:
	.cfi_def_cfa_offset 64
.Ltmp27:
	.cfi_offset %rbx, -32
.Ltmp28:
	.cfi_offset %r14, -24
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	xorl	%eax, %eax
	cmpl	$0, 1880(%rbx)
	jns	.LBB4_6
# BB#1:                                 # %if.then
	movq	24(%rbx), %rax
	movq	208(%rax), %r14
	movq	%rbx, %rdi
	callq	clist_end_page
	testl	%eax, %eax
	js	.LBB4_6
# BB#2:                                 # %if.end
	movl	$0, 1884(%rbx)
	movl	$0, 1880(%rbx)
	movl	$-1, 10200(%rbx)
	movq	$0, 10208(%rbx)
	movl	$1, 10224(%rbx)
	movq	$0, 10232(%rbx)
	xorps	%xmm0, %xmm0
	movq	$0, 10216(%rbx)
	movups	%xmm0, 10160(%rbx)
	movq	$0, 10248(%rbx)
	movq	%rbx, %rdi
	callq	clist_read_color_usage_array
	testl	%eax, %eax
	js	.LBB4_6
# BB#3:                                 # %if.end.10
	movq	%rbx, %rdi
	callq	clist_read_icctable
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB4_6
# BB#4:                                 # %if.end.14
	leaq	8(%rsp), %rsi
	movq	%r14, %rdi
	callq	*40(%r14)
	movl	$-25, %eax
	cmpl	$0, 24(%rsp)
	je	.LBB4_6
# BB#5:                                 # %if.end.17
	movq	%r14, %rdi
	callq	gsicc_cache_new
	movq	%rax, 10168(%rbx)
	testq	%rax, %rax
	movl	$-25, %eax
	cmovel	%eax, %ebp
	movl	%ebp, %eax
.LBB4_6:                                # %cleanup
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	clist_close_writer_and_init_reader, .Lfunc_end4-clist_close_writer_and_init_reader
	.cfi_endproc

	.globl	clist_read_color_usage_array
	.align	16, 0x90
	.type	clist_read_color_usage_array,@function
clist_read_color_usage_array:           # @clist_read_color_usage_array
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
	subq	$40, %rsp
.Ltmp36:
	.cfi_def_cfa_offset 96
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
	movq	%rdi, %rbx
	movl	10144(%rbx), %r14d
	shll	$5, %r14d
	movq	10216(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	24(%rbx), %rdi
	movl	$.L.str, %edx
	callq	*24(%rdi)
.LBB5_2:                                # %if.end
	movq	24(%rbx), %rdi
	movl	$.L.str, %edx
	movl	%r14d, %esi
	callq	*64(%rdi)
	movq	%rax, 10216(%rbx)
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB5_5
# BB#3:                                 # %if.end.13
	movl	10144(%rbx), %esi
	leaq	24(%rsp), %rdx
	movq	%rbx, %rdi
	callq	clist_find_pseudoband
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_5
# BB#4:                                 # %if.end.19
	movq	32(%rsp), %r15
	movq	10216(%rbx), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	leaq	1888(%rbx), %r13
	movq	5984(%rbx), %r12
	movq	10096(%rbx), %rax
	movq	%r12, %rdi
	callq	*56(%rax)
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	10096(%rbx), %rax
	xorl	%ebp, %ebp
	xorl	%edx, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r13, %rcx
	callq	*72(%rax)
	movq	10096(%rbx), %rax
	movq	8(%rsp), %rdi           # 8-byte Reload
	movl	%r14d, %esi
	movq	%r12, %rdx
	callq	*32(%rax)
	movq	10096(%rbx), %rax
	xorl	%edx, %edx
	movq	%r12, %rdi
	movq	16(%rsp), %rsi          # 8-byte Reload
	movq	%r13, %rcx
	callq	*72(%rax)
.LBB5_5:                                # %cleanup
	movl	%ebp, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	clist_read_color_usage_array, .Lfunc_end5-clist_read_color_usage_array
	.cfi_endproc

	.globl	clist_read_icctable
	.align	16, 0x90
	.type	clist_read_icctable,@function
clist_read_icctable:                    # @clist_read_icctable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp44:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp45:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp46:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp47:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp48:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp49:
	.cfi_def_cfa_offset 112
.Ltmp50:
	.cfi_offset %rbx, -56
.Ltmp51:
	.cfi_offset %r12, -48
.Ltmp52:
	.cfi_offset %r13, -40
.Ltmp53:
	.cfi_offset %r14, -32
.Ltmp54:
	.cfi_offset %r15, -24
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movl	10144(%r14), %esi
	incl	%esi
	leaq	32(%rsp), %rdx
	callq	clist_find_pseudoband
	xorl	%ebp, %ebp
	testl	%eax, %eax
	js	.LBB6_17
# BB#1:                                 # %if.end
	xorl	%ebp, %ebp
	cmpq	$0, 10160(%r14)
	jne	.LBB6_17
# BB#2:                                 # %if.end.i
	movq	5984(%r14), %rbx
	movq	24(%r14), %rax
	movq	(%rax), %r12
	leaq	1888(%r14), %rbp
	movq	10096(%r14), %rax
	movq	%rbx, %rdi
	callq	*56(%rax)
	movq	%rax, %r13
	movq	10096(%r14), %rax
	movq	40(%rsp), %rsi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rcx
	callq	*72(%rax)
	movq	10096(%r14), %rax
	leaq	52(%rsp), %rdi
	movl	$4, %esi
	movq	%rbx, %rdx
	callq	*32(%rax)
	movl	52(%rsp), %eax
	shll	$3, %eax
	leal	(%rax,%rax,2), %esi
	movl	%esi, 24(%rsp)          # 4-byte Spill
	movq	24(%r14), %rdi
	movl	$.L.str.2, %edx
	callq	*64(%rdi)
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB6_3
# BB#6:                                 # %if.end.19.i
	movq	%r13, (%rsp)            # 8-byte Spill
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	movq	%rbp, %rbx
	movq	40(%rsp), %rbp
	addq	$4, %rbp
	movq	5984(%r14), %r13
	movq	10096(%r14), %rax
	movq	%r13, %rdi
	callq	*56(%rax)
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	10096(%r14), %rax
	xorl	%edx, %edx
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	%rbx, %rcx
	callq	*72(%rax)
	movq	10096(%r14), %rax
	movq	%r15, %rdi
	movl	24(%rsp), %esi          # 4-byte Reload
	movq	%r13, %rdx
	callq	*32(%rax)
	movq	10096(%r14), %rax
	xorl	%edx, %edx
	movq	%r13, %rdi
	movq	16(%rsp), %rsi          # 8-byte Reload
	movq	%rbx, %rcx
	callq	*72(%rax)
	movl	$st_clist_icctable, %esi
	movl	$.L.str.2, %edx
	movq	%r12, %rdi
	callq	*72(%r12)
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB6_7
# BB#8:                                 # %if.end.29.i
	movq	%r15, 24(%rsp)          # 8-byte Spill
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	movq	%r12, 8(%r13)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%r13)
	movl	52(%rsp), %eax
	movl	%eax, (%r13)
	movq	%r13, 10160(%r14)
	cmpl	$0, 52(%rsp)
	jle	.LBB6_16
# BB#9:                                 # %for.body.lr.ph.i
	xorl	%ebx, %ebx
	movq	24(%rsp), %r15          # 8-byte Reload
	.align	16, 0x90
.LBB6_10:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$st_clist_icctable_entry, %esi
	movl	$.L.str.2, %edx
	movq	%r12, %rdi
	callq	*72(%r12)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB6_11
# BB#12:                                # %if.end.43.i
                                        #   in Loop: Header=BB6_10 Depth=1
	movl	$24, %edx
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	memcpy
	movq	$0, 32(%rbp)
	cmpq	$0, 16(%r13)
	je	.LBB6_13
# BB#14:                                # %if.else.i
                                        #   in Loop: Header=BB6_10 Depth=1
	movq	24(%r13), %rax
	movq	%rbp, 24(%rax)
	jmp	.LBB6_15
	.align	16, 0x90
.LBB6_13:                               # %if.then.48.i
                                        #   in Loop: Header=BB6_10 Depth=1
	movq	%rbp, 16(%r13)
.LBB6_15:                               # %if.end.53.i
                                        #   in Loop: Header=BB6_10 Depth=1
	addq	$24, %r15
	movq	%rbp, 24(%r13)
	movq	$0, 24(%rbp)
	incl	%ebx
	cmpl	52(%rsp), %ebx
	jl	.LBB6_10
.LBB6_16:                               # %for.end.i
	movq	24(%r14), %rdi
	movl	$.L.str.2, %edx
	movq	24(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	movq	10096(%r14), %rax
	xorl	%ebp, %ebp
	xorl	%edx, %edx
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	(%rsp), %rsi            # 8-byte Reload
	movq	16(%rsp), %rcx          # 8-byte Reload
	callq	*72(%rax)
	jmp	.LBB6_17
.LBB6_3:                                # %if.then.17.i
	movl	$.L__func__.clist_unserialize_icctable, %edi
	movl	$.L.str.3, %esi
	movl	$489, %edx              # imm = 0x1E9
	jmp	.LBB6_4
.LBB6_7:                                # %if.then.26.i
	movl	$.L.str.2, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	*24(%r12)
	movl	$.L__func__.clist_unserialize_icctable, %edi
	movl	$.L.str.3, %esi
	movl	$496, %edx              # imm = 0x1F0
.LBB6_4:                                # %clist_unserialize_icctable.exit
	movl	$1, %ecx
	movl	$-1, %r8d
	movl	$.L.str.4, %r9d
	jmp	.LBB6_5
.LBB6_11:                               # %if.then.39.i
	movl	$.L.str.2, %edx
	movq	%r12, %rdi
	movq	24(%rsp), %rsi          # 8-byte Reload
	callq	*24(%r12)
	movl	$.L__func__.clist_unserialize_icctable, %edi
	movl	$.L.str.3, %esi
	movl	$509, %edx              # imm = 0x1FD
	movl	$1, %ecx
	movl	$-1, %r8d
	movl	$.L.str.5, %r9d
.LBB6_5:                                # %clist_unserialize_icctable.exit
	xorl	%eax, %eax
	callq	gs_throw_imp
	movl	%eax, %ebp
.LBB6_17:                               # %cleanup
	movl	%ebp, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	clist_read_icctable, .Lfunc_end6-clist_read_icctable
	.cfi_endproc

	.globl	clist_read_chunk
	.align	16, 0x90
	.type	clist_read_chunk,@function
clist_read_chunk:                       # @clist_read_chunk
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
	pushq	%r13
.Ltmp59:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp60:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp61:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp62:
	.cfi_def_cfa_offset 64
.Ltmp63:
	.cfi_offset %rbx, -56
.Ltmp64:
	.cfi_offset %r12, -48
.Ltmp65:
	.cfi_offset %r13, -40
.Ltmp66:
	.cfi_offset %r14, -32
.Ltmp67:
	.cfi_offset %r15, -24
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rcx, (%rsp)            # 8-byte Spill
	movl	%edx, %r15d
	movq	%rsi, %r12
	movq	%rdi, %rbp
	leaq	1888(%rbp), %r13
	movq	5984(%rbp), %rbx
	movq	10096(%rbp), %rax
	movq	%rbx, %rdi
	callq	*56(%rax)
	movq	%rax, %r14
	movq	10096(%rbp), %rax
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r13, %rcx
	callq	*72(%rax)
	movq	10096(%rbp), %rax
	movq	(%rsp), %rdi            # 8-byte Reload
	movl	%r15d, %esi
	movq	%rbx, %rdx
	callq	*32(%rax)
	movq	10096(%rbp), %rax
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r13, %rcx
	callq	*72(%rax)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	clist_read_chunk, .Lfunc_end7-clist_read_chunk
	.cfi_endproc

	.align	16, 0x90
	.type	clist_find_pseudoband,@function
clist_find_pseudoband:                  # @clist_find_pseudoband
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp70:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp71:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp72:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp73:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp74:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp75:
	.cfi_def_cfa_offset 80
.Ltmp76:
	.cfi_offset %rbx, -56
.Ltmp77:
	.cfi_offset %r12, -48
.Ltmp78:
	.cfi_offset %r13, -40
.Ltmp79:
	.cfi_offset %r14, -32
.Ltmp80:
	.cfi_offset %r15, -24
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movl	%esi, %r12d
	movq	%rdi, %r13
	movq	10088(%r13), %rbp
	movq	10120(%r13), %rax
	testq	%rbp, %rbp
	je	.LBB8_2
# BB#1:                                 # %entry.if.end.21_crit_edge
	movq	%r13, %rcx
	leaq	10096(%rcx), %r13
	addq	$5992, %rcx             # imm = 0x1768
	movq	%rcx, %r15
	movq	%rax, %r14
	movq	%rax, 8(%rsp)           # 8-byte Spill
	jmp	.LBB8_5
.LBB8_2:                                # %if.then
	movq	%rax, 8(%rsp)           # 8-byte Spill
	leaq	20(%rsp), %rbp
	movl	$.L.str.1, %esi
	movq	%rbp, %rdi
	callq	strcpy
	movl	$gp_fmode_binary_suffix, %esi
	movl	$1, %edx
	movq	%rbp, %rdi
	callq	strncat
	leaq	1888(%r13), %rdi
	movq	10096(%r13), %rax
	leaq	5984(%r13), %rdx
	movq	24(%r13), %rcx
	movl	$1, %r9d
	movq	%rbp, %rsi
	movq	%rcx, %r8
	callq	*(%rax)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB8_11
# BB#3:                                 # %lor.lhs.false
	leaq	10088(%r13), %rdx
	movq	10096(%r13), %rax
	leaq	5992(%r13), %r15
	movq	24(%r13), %rcx
	leaq	20(%rsp), %rsi
	xorl	%r9d, %r9d
	movq	%r15, %rdi
	movq	%rcx, %r8
	callq	*(%rax)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB8_11
# BB#4:                                 # %cleanup
	movq	10088(%r13), %rbp
	movq	10120(%r13), %r14
	leaq	10096(%r13), %r13
.LBB8_5:                                # %if.end.21
	leaq	-16(%r14), %rsi
	movq	(%r13), %rax
	xorl	%edx, %edx
	movq	%rbp, %rdi
	movq	%r15, %rcx
	callq	*72(%rax)
	addq	$-32, %r14
	jmp	.LBB8_6
	.align	16, 0x90
.LBB8_12:                               # %if.end.46
                                        #   in Loop: Header=BB8_6 Depth=1
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movq	%r15, %rcx
	callq	*%rax
	addq	$-16, %r14
.LBB8_6:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13), %rax
	movl	$16, %esi
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	callq	*32(%rax)
	cmpl	%r12d, 4(%rbx)
	jne	.LBB8_9
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB8_6 Depth=1
	cmpl	%r12d, (%rbx)
	je	.LBB8_8
.LBB8_9:                                # %if.end.37
                                        #   in Loop: Header=BB8_6 Depth=1
	movq	(%r13), %rax
	movq	72(%rax), %rax
	xorl	%edx, %edx
	testq	%r14, %r14
	jns	.LBB8_12
# BB#10:                                # %if.then.40
	movq	%rbp, %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	movq	%r15, %rcx
	callq	*%rax
	movl	$-1, %r14d
	jmp	.LBB8_11
.LBB8_8:                                # %if.then.31
	movq	(%r13), %rax
	xorl	%r14d, %r14d
	xorl	%edx, %edx
	movq	%rbp, %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	movq	%r15, %rcx
	callq	*72(%rax)
.LBB8_11:                               # %cleanup.52
	movl	%r14d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	clist_find_pseudoband, .Lfunc_end8-clist_find_pseudoband
	.cfi_endproc

	.globl	clist_get_bits_rectangle
	.align	16, 0x90
	.type	clist_get_bits_rectangle,@function
clist_get_bits_rectangle:               # @clist_get_bits_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp83:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp84:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp85:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp86:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp87:
	.cfi_def_cfa_offset 56
	subq	$664, %rsp              # imm = 0x298
.Ltmp88:
	.cfi_def_cfa_offset 720
.Ltmp89:
	.cfi_offset %rbx, -56
.Ltmp90:
	.cfi_offset %r12, -48
.Ltmp91:
	.cfi_offset %r13, -40
.Ltmp92:
	.cfi_offset %r14, -32
.Ltmp93:
	.cfi_offset %r15, -24
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsi, %r13
	movq	(%rdx), %r12
	movl	4(%r13), %esi
	movl	12(%r13), %r8d
	movl	$1, %ebp
	testl	$65536, %r12d           # imm = 0x10000
	jne	.LBB9_5
# BB#1:                                 # %cond.false
	testl	$131072, %r12d          # imm = 0x20000
	jne	.LBB9_2
# BB#3:                                 # %cond.false.7
	xorl	%ebp, %ebp
	testl	$262144, %r12d          # imm = 0x40000
	je	.LBB9_5
# BB#4:                                 # %cond.true.10
	movzwl	108(%rdi), %ebp
	jmp	.LBB9_5
.LBB9_2:                                # %cond.true.6
	movl	100(%rdi), %ebp
.LBB9_5:                                # %cond.end.15
	movl	(%r13), %eax
	movl	$-15, %r15d
	testl	%eax, %eax
	js	.LBB9_55
# BB#6:                                 # %lor.lhs.false
	testl	%esi, %esi
	js	.LBB9_55
# BB#7:                                 # %lor.lhs.false
	movl	8(%r13), %ebx
	cmpl	832(%rdi), %ebx
	jg	.LBB9_55
# BB#8:                                 # %lor.lhs.false.26
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	cmpl	836(%rdi), %r8d
	jg	.LBB9_55
# BB#9:                                 # %if.end
	movl	%r8d, %ecx
	subl	%esi, %ecx
	movl	%ecx, 60(%rsp)          # 4-byte Spill
	xorl	%r15d, %r15d
	testl	%ecx, %ecx
	jle	.LBB9_55
# BB#10:                                # %if.end
	cmpl	%ebx, %eax
	jge	.LBB9_55
# BB#11:                                # %if.end.39
	movl	$-1, %r14d
	testl	$524288, %r12d          # imm = 0x80000
	je	.LBB9_12
# BB#13:                                # %if.end.39
	movl	%r8d, 32(%rsp)          # 4-byte Spill
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	testl	%ebp, %ebp
	jle	.LBB9_19
# BB#14:                                # %for.body.lr.ph
	movslq	%ebp, %rax
	movl	$-1, %r14d
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB9_15:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, 8(%rdx,%rcx,8)
	je	.LBB9_18
# BB#16:                                # %if.then.46
                                        #   in Loop: Header=BB9_15 Depth=1
	testl	%r14d, %r14d
	jns	.LBB9_22
# BB#17:                                # %if.then.46.for.inc_crit_edge
                                        #   in Loop: Header=BB9_15 Depth=1
	movl	%ecx, %r14d
.LBB9_18:                               # %for.inc
                                        #   in Loop: Header=BB9_15 Depth=1
	incq	%rcx
	cmpq	%rax, %rcx
	jl	.LBB9_15
	jmp	.LBB9_19
.LBB9_12:
	movl	%r8d, 32(%rsp)          # 4-byte Spill
	movq	%rsi, 48(%rsp)          # 8-byte Spill
.LBB9_19:                               # %if.end.52
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movl	%ebp, 36(%rsp)          # 4-byte Spill
	movq	%rdi, %rbx
	callq	clist_close_writer_and_init_reader
	movq	%rbx, %rdi
	movl	%eax, %r15d
	testl	%r15d, %r15d
	movq	48(%rsp), %rsi          # 8-byte Reload
	js	.LBB9_55
# BB#20:                                # %if.end.57
	testl	%r14d, %r14d
	js	.LBB9_21
# BB#24:                                # %if.then.i
	leaq	72(%rsp), %rcx
	leaq	660(%rsp), %r8
	movq	%rdi, %r15
	movq	%rsi, %rbp
	movl	60(%rsp), %edx          # 4-byte Reload
	callq	gdev_prn_color_usage
	cmpl	$0, 80(%rsp)
	movl	$-1, %eax
	je	.LBB9_26
# BB#25:                                # %if.then.4.i
	movl	%eax, 624(%rsp)
	jmp	.LBB9_27
.LBB9_22:                               # %cleanup
	movq	%r13, %rsi
	jmp	.LBB9_23
.LBB9_21:
	movq	%rdi, %r15
	movq	%rsi, %rbp
	movl	%r14d, %eax
	movl	%eax, 624(%rsp)
	jmp	.LBB9_27
.LBB9_26:                               # %if.else.i
	leaq	616(%rsp), %rdi
	movq	%r15, %rsi
	movl	%r14d, %edx
	callq	gx_render_plane_init
.LBB9_27:                               # %clist_select_render_plane.exit
	movq	1736(%r15), %rdi
	movq	1728(%r15), %rcx
	movq	24(%r15), %r9
	movl	%ebp, %eax
	cltd
	idivl	10132(%r15)
	cltq
	shlq	$5, %rax
	addq	10216(%r15), %rax
	movq	%rax, (%rsp)
	leaq	632(%rsp), %rsi
	leaq	616(%rsp), %r8
	movq	%rcx, %rdx
	movl	%ebp, %ecx
	callq	gdev_create_buf_device
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB9_55
# BB#28:                                # %if.end.64
	movq	632(%rsp), %rcx
	leaq	616(%rsp), %r8
	leaq	612(%rsp), %r9
	movl	60(%rsp), %edx          # 4-byte Reload
	movq	%rdi, %rbx
	callq	clist_rasterize_lines
	testl	%eax, %eax
	movl	%eax, %r15d
	js	.LBB9_55
# BB#29:                                # %if.end.69
	movl	60(%rsp), %r14d         # 4-byte Reload
	cmpl	%r14d, %eax
	cmovgl	%r14d, %eax
	movl	8(%r13), %ecx
	movl	%ecx, 648(%rsp)
	movq	(%r13), %rcx
	movq	%rcx, 640(%rsp)
	movl	612(%rsp), %ecx
	movl	%ecx, 644(%rsp)
	addl	%eax, %ecx
	movl	%ecx, 652(%rsp)
	movq	632(%rsp), %rdi
	leaq	640(%rsp), %rsi
	movq	40(%rsp), %rdx          # 8-byte Reload
	movq	64(%rsp), %rcx          # 8-byte Reload
	movq	%rax, %rbp
	callq	*1448(%rdi)
	movl	%eax, %r15d
	movq	632(%rsp), %rdi
	callq	*1760(%rbx)
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	cmpl	%r14d, %edx
	je	.LBB9_55
# BB#30:                                # %if.end.69
	testl	%r15d, %r15d
	movq	48(%rsp), %r14          # 8-byte Reload
	movq	%rcx, %rdi
	js	.LBB9_55
# BB#31:                                # %if.end.88
	testl	$1048576, %r12d         # imm = 0x100000
	je	.LBB9_33
# BB#32:                                # %if.end.88
	testl	%r15d, %r15d
	jg	.LBB9_33
# BB#34:                                # %if.end.96
	movq	%rdi, %rbp
	movq	%r14, %rbx
	movq	40(%rsp), %r12          # 8-byte Reload
	movq	(%r12), %rax
	testl	$1048576, %eax          # imm = 0x100000
	jne	.LBB9_36
# BB#35:                                # %if.then.100
	andq	$-3145729, %rax         # imm = 0xFFFFFFFFFFCFFFFF
	orq	$1048576, %rax          # imm = 0x100000
	movq	%rax, (%r12)
	xorl	%edx, %edx
.LBB9_36:                               # %if.end.104
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	632(%rsp), %rdi
	movl	$1, %esi
	callq	gx_device_raster
	movl	%eax, 60(%rsp)          # 4-byte Spill
	movq	%rbp, %rsi
	movq	1736(%rsi), %rdi
	movq	1728(%rsi), %rcx
	movq	24(%rsi), %r9
	movq	%rbx, %rbp
	movl	%ebp, %eax
	cltd
	idivl	10132(%rsi)
	cltq
	shlq	$5, %rax
	addq	10216(%rsi), %rax
	movq	%rsi, %r13
	movq	%rax, (%rsp)
	leaq	632(%rsp), %rsi
	leaq	616(%rsp), %r8
	movq	%rcx, %rdx
	movl	%ebp, %ecx
	movq	%rbp, %r14
	callq	gdev_create_buf_device
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB9_55
# BB#37:                                # %if.end.122
	leaq	72(%rsp), %rdi
	movl	$536, %edx              # imm = 0x218
	movq	%r12, %rsi
	callq	memcpy
	movl	36(%rsp), %edx          # 4-byte Reload
	movl	%edx, %eax
	andl	$1, %eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movq	%r14, %r12
	movl	32(%rsp), %ebx          # 4-byte Reload
	movq	%r13, %rbp
	movq	16(%rsp), %r13          # 8-byte Reload
.LBB9_38:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_45 Depth 2
	leal	(%r12,%r13), %r12d
	movl	%ebx, %r14d
	subl	%r12d, %r14d
	jle	.LBB9_54
# BB#39:                                # %for.cond.127.preheader
                                        #   in Loop: Header=BB9_38 Depth=1
	testl	%edx, %edx
	jle	.LBB9_50
# BB#40:                                # %for.body.130.lr.ph
                                        #   in Loop: Header=BB9_38 Depth=1
	imull	60(%rsp), %r13d         # 4-byte Folded Reload
	cmpl	$0, 28(%rsp)            # 4-byte Folded Reload
	movl	$0, %ecx
	je	.LBB9_43
# BB#41:                                # %for.body.130.prol
                                        #   in Loop: Header=BB9_38 Depth=1
	movq	80(%rsp), %rax
	testq	%rax, %rax
	movl	$1, %ecx
	je	.LBB9_43
# BB#42:                                # %if.then.135.prol
                                        #   in Loop: Header=BB9_38 Depth=1
	addq	%r13, %rax
	movq	%rax, 80(%rsp)
	movl	$1, %ecx
.LBB9_43:                               # %for.body.130.lr.ph.split
                                        #   in Loop: Header=BB9_38 Depth=1
	cmpl	$1, %edx
	je	.LBB9_50
# BB#44:                                # %for.body.130.lr.ph.split.split
                                        #   in Loop: Header=BB9_38 Depth=1
	movl	%edx, %eax
	subl	%ecx, %eax
	leaq	88(%rsp), %rdx
	leaq	(%rdx,%rcx,8), %rcx
.LBB9_45:                               # %for.body.130
                                        #   Parent Loop BB9_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rcx), %rdx
	testq	%rdx, %rdx
	je	.LBB9_47
# BB#46:                                # %if.then.135
                                        #   in Loop: Header=BB9_45 Depth=2
	addq	%r13, %rdx
	movq	%rdx, -8(%rcx)
.LBB9_47:                               # %for.inc.140
                                        #   in Loop: Header=BB9_45 Depth=2
	movq	(%rcx), %rdx
	testq	%rdx, %rdx
	je	.LBB9_49
# BB#48:                                # %if.then.135.1
                                        #   in Loop: Header=BB9_45 Depth=2
	addq	%r13, %rdx
	movq	%rdx, (%rcx)
.LBB9_49:                               # %for.inc.140.1
                                        #   in Loop: Header=BB9_45 Depth=2
	addq	$16, %rcx
	addl	$-2, %eax
	jne	.LBB9_45
.LBB9_50:                               # %for.end.142
                                        #   in Loop: Header=BB9_38 Depth=1
	movq	632(%rsp), %rcx
	movq	%rbp, %rdi
	movl	%r12d, %esi
	movl	%r14d, %edx
	leaq	616(%rsp), %r8
	leaq	612(%rsp), %r9
	callq	clist_rasterize_lines
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB9_51
# BB#52:                                # %if.end.148
                                        #   in Loop: Header=BB9_38 Depth=1
	cmpl	%r14d, %r13d
	movl	%r14d, %edx
	cmovlel	%r13d, %edx
	movl	612(%rsp), %ecx
	movl	%ecx, 644(%rsp)
	addl	%ecx, %edx
	movl	%edx, 652(%rsp)
	movq	632(%rsp), %rdi
	leaq	640(%rsp), %rsi
	leaq	72(%rsp), %rdx
	movq	64(%rsp), %rcx          # 8-byte Reload
	callq	*1448(%rdi)
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB9_54
# BB#53:                                # %cleanup.173
                                        #   in Loop: Header=BB9_38 Depth=1
	cmpl	%r14d, %r13d
	movq	72(%rsp), %rax
	movq	40(%rsp), %rcx          # 8-byte Reload
	movq	%rax, (%rcx)
	movl	36(%rsp), %edx          # 4-byte Reload
	jl	.LBB9_38
	jmp	.LBB9_54
.LBB9_33:                               # %if.then.94
	movq	%r13, %rsi
	movq	40(%rsp), %rdx          # 8-byte Reload
.LBB9_23:                               # %cleanup.182
	movq	64(%rsp), %rcx          # 8-byte Reload
	callq	gx_default_get_bits_rectangle
	movl	%eax, %r15d
.LBB9_55:                               # %cleanup.182
	movl	%r15d, %eax
	addq	$664, %rsp              # imm = 0x298
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_51:
	movl	%r13d, %r15d
.LBB9_54:                               # %while.end
	movq	632(%rsp), %rdi
	callq	*1760(%rbp)
	jmp	.LBB9_55
.Lfunc_end9:
	.size	clist_get_bits_rectangle, .Lfunc_end9-clist_get_bits_rectangle
	.cfi_endproc

	.globl	clist_rasterize_lines
	.align	16, 0x90
	.type	clist_rasterize_lines,@function
clist_rasterize_lines:                  # @clist_rasterize_lines
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp95:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp96:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp97:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp98:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp99:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp100:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp101:
	.cfi_def_cfa_offset 128
.Ltmp102:
	.cfi_offset %rbx, -56
.Ltmp103:
	.cfi_offset %r12, -48
.Ltmp104:
	.cfi_offset %r13, -40
.Ltmp105:
	.cfi_offset %r14, -32
.Ltmp106:
	.cfi_offset %r15, -24
.Ltmp107:
	.cfi_offset %rbp, -16
	movq	%r9, 40(%rsp)           # 8-byte Spill
	movq	%r8, %r15
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movl	%edx, %ebp
	movl	%esi, %r12d
	movq	%rdi, %rbx
	movq	1728(%rbx), %rdi
	movq	%r15, %rsi
	callq	gx_device_raster_plane
	movl	%eax, %r10d
	movl	10104(%rbx), %esi
	addq	1776(%rbx), %rsi
	movq	10112(%rbx), %rax
	leaq	(%rsi,%rax), %rcx
	testq	%rax, %rax
	cmoveq	%rax, %rcx
	movl	$-1, %eax
	testq	%r15, %r15
	je	.LBB10_2
# BB#1:                                 # %cond.true.6
	movl	8(%r15), %eax
.LBB10_2:                               # %cond.end.8
	movl	1880(%rbx), %r13d
	testl	%r13d, %r13d
	js	.LBB10_7
# BB#3:                                 # %lor.lhs.false
	cmpl	%r12d, %r13d
	jg	.LBB10_7
# BB#4:                                 # %lor.lhs.false
	cmpl	%eax, 10200(%rbx)
	jne	.LBB10_7
# BB#5:                                 # %land.lhs.true
	movl	1884(%rbx), %r14d
	cmpl	%r12d, %r14d
	jle	.LBB10_7
# BB#6:                                 # %land.lhs.true.if.end.52_crit_edge
	addq	$1752, %rbx             # imm = 0x6D8
	movl	%ebp, %edx
	jmp	.LBB10_13
.LBB10_7:                               # %if.then
	movl	10132(%rbx), %edi
	movl	%r12d, %eax
	cltd
	idivl	%edi
	movl	%r12d, %r13d
	subl	%edx, %r13d
	leal	(%rdi,%r13), %r14d
	movl	836(%rbx), %eax
	cmpl	%eax, %r14d
	cmovgl	%eax, %r14d
	movl	%r14d, %edx
	subl	%r12d, %edx
	cmpl	%ebp, %edx
	cmovlel	%edx, %ebp
	testl	%r12d, %r12d
	js	.LBB10_16
# BB#8:                                 # %if.then
	cmpl	%r12d, %eax
	jl	.LBB10_16
# BB#9:                                 # %if.end.31
	movl	%ebp, 36(%rsp)          # 4-byte Spill
	movl	%r14d, %r9d
	subl	%r13d, %r9d
	movl	%r9d, (%rsp)
	xorl	%r8d, %r8d
	movq	48(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movl	%r10d, %edx
	movl	%r10d, 32(%rsp)         # 4-byte Spill
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	callq	*1752(%rbx)
	movl	$0, 56(%rsp)
	movl	%r13d, 60(%rsp)
	movl	832(%rbx), %ecx
	movl	%ecx, 64(%rsp)
	movl	%r14d, 68(%rsp)
	testl	%eax, %eax
	js	.LBB10_11
# BB#10:                                # %if.then.39
	leaq	56(%rsp), %rsi
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	movq	%r15, %rcx
	callq	clist_render_rectangle
.LBB10_11:                              # %cleanup
	movl	%r13d, 1880(%rbx)
	movl	%r14d, 1884(%rbx)
	movq	$0, 10232(%rbx)
	testl	%eax, %eax
	movl	36(%rsp), %edx          # 4-byte Reload
	js	.LBB10_15
# BB#12:
	addq	$1752, %rbx             # imm = 0x6D8
	movl	32(%rsp), %r10d         # 4-byte Reload
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	16(%rsp), %rcx          # 8-byte Reload
.LBB10_13:                              # %if.end.52
	movl	%r14d, %ebp
	subl	%r12d, %ebp
	cmpl	%ebp, %edx
	cmovlel	%edx, %ebp
	subl	%r13d, %r12d
	subl	%r13d, %r14d
	movl	%r14d, (%rsp)
	movq	48(%rsp), %rdi          # 8-byte Reload
	movl	%r10d, %edx
	movl	%r12d, %r8d
	movl	%ebp, %r9d
	callq	*(%rbx)
	testl	%eax, %eax
	js	.LBB10_15
# BB#14:                                # %if.end.70
	movq	40(%rsp), %rax          # 8-byte Reload
	movl	$0, (%rax)
	movl	%ebp, %eax
	jmp	.LBB10_15
.LBB10_16:                              # %cleanup.thread
	movl	$-15, %eax
.LBB10_15:                              # %cleanup.71
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	clist_rasterize_lines, .Lfunc_end10-clist_rasterize_lines
	.cfi_endproc

	.globl	clist_render_rectangle
	.align	16, 0x90
	.type	clist_render_rectangle,@function
clist_render_rectangle:                 # @clist_render_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp109:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp110:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp111:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp112:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp113:
	.cfi_def_cfa_offset 56
	subq	$8344, %rsp             # imm = 0x2098
.Ltmp114:
	.cfi_def_cfa_offset 8400
.Ltmp115:
	.cfi_offset %rbx, -56
.Ltmp116:
	.cfi_offset %r12, -48
.Ltmp117:
	.cfi_offset %r13, -40
.Ltmp118:
	.cfi_offset %r14, -32
.Ltmp119:
	.cfi_offset %r15, -24
.Ltmp120:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbp
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	movq	%rdi, 72(%rsp)          # 8-byte Spill
	movslq	10224(%rdi), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movl	10132(%rdi), %ebx
	movl	%ebx, 68(%rsp)          # 4-byte Spill
	movl	4(%rsi), %eax
	movl	12(%rsi), %esi
	cltd
	idivl	%ebx
	movl	%eax, %r9d
	decl	%esi
	movl	%esi, %eax
	cltd
	idivl	%ebx
	movl	%eax, %r8d
	leaq	10192(%rdi), %rax
	testq	%rcx, %rcx
	je	.LBB11_2
# BB#1:                                 # %if.then
	movl	8(%rcx), %edx
	movl	%edx, 8(%rax)
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	jmp	.LBB11_3
.LBB11_2:                               # %if.else
	movl	$-1, 8(%rax)
.LBB11_3:                               # %do.end
	movq	%rdi, 72(%rsp)          # 8-byte Spill
	movq	10208(%rdi), %rcx
	movq	1104(%rdi), %rsi
	movl	160(%rsi), %ebx
	movl	$0, 160(%rsi)
	xorl	%eax, %eax
	movq	56(%rsp), %rdx          # 8-byte Reload
	testl	%edx, %edx
	jle	.LBB11_14
# BB#4:                                 # %for.body.lr.ph
	movl	%ebx, 20(%rsp)          # 4-byte Spill
	movq	72(%rsp), %rax          # 8-byte Reload
	leaq	1888(%rax), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	68(%rsp), %eax          # 4-byte Reload
	imull	%r9d, %eax
	movl	%eax, 68(%rsp)          # 4-byte Spill
	movslq	%r8d, %r14
	movl	%r8d, 84(%rsp)          # 4-byte Spill
	movslq	%r9d, %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movl	%r9d, 80(%rsp)          # 4-byte Spill
	leaq	-1(%rax), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	xorl	%r12d, %r12d
	leaq	88(%rsp), %r13
	.align	16, 0x90
.LBB11_5:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_10 Depth 2
	testq	%rcx, %rcx
	je	.LBB11_6
# BB#7:                                 # %if.else.12
                                        #   in Loop: Header=BB11_5 Depth=1
	movq	$0, 8288(%rsp)
	movq	$0, 4184(%rsp)
	movq	%r12, %r15
	shlq	$4, %r15
	movq	(%rcx,%r15), %rsi
	addq	$752, %rsi              # imm = 0x2F0
	movl	$4096, %edx             # imm = 0x1000
	movq	%r13, %rbx
	movq	%rbx, %rdi
	movq	%rcx, %r13
	callq	strncpy
	movq	(%r13,%r15), %rsi
	addq	$4848, %rsi             # imm = 0x12F0
	movl	$4096, %edx             # imm = 0x1000
	leaq	4192(%rsp), %rdi
	callq	strncpy
	movq	(%r13,%r15), %rax
	movq	8944(%rax), %rcx
	movq	%rcx, 8296(%rsp)
	movl	8952(%rax), %ecx
	movl	%ecx, 8304(%rsp)
	movq	8960(%rax), %rcx
	movq	%rcx, 8320(%rsp)
	movups	8968(%rax), %xmm0
	leaq	8328(%rsp), %rax
	movups	%xmm0, (%rax)
	movslq	8(%r13,%r15), %rax
	movq	%rax, 968(%rbp)
	movl	12(%r13,%r15), %esi
	movq	%r13, %r15
	addl	68(%rsp), %esi          # 4-byte Folded Reload
	movq	%rbx, %rdx
	movq	%rbx, %r13
	jmp	.LBB11_8
	.align	16, 0x90
.LBB11_6:                               # %if.then.10
                                        #   in Loop: Header=BB11_5 Depth=1
	movq	%rcx, %r15
	movq	$0, 968(%rbp)
	xorl	%eax, %eax
	movl	68(%rsp), %esi          # 4-byte Reload
	movq	24(%rsp), %rdx          # 8-byte Reload
.LBB11_8:                               # %if.end.36
                                        #   in Loop: Header=BB11_5 Depth=1
	movl	80(%rsp), %r8d          # 4-byte Reload
	movl	84(%rsp), %r9d          # 4-byte Reload
	xorl	%ecx, %ecx
	cmpl	%r9d, %r8d
	movslq	%esi, %rsi
	movq	%rsi, 976(%rbp)
	movq	%rbp, %r10
	jg	.LBB11_11
# BB#9:                                 # %for.body.40.lr.ph
                                        #   in Loop: Header=BB11_5 Depth=1
	movq	72(%rsp), %rcx          # 8-byte Reload
	movq	10216(%rcx), %rcx
	movq	40(%rsp), %rsi          # 8-byte Reload
	shlq	$5, %rsi
	leaq	24(%rcx,%rsi), %rsi
	xorl	%ecx, %ecx
	movq	32(%rsp), %rdi          # 8-byte Reload
	.align	16, 0x90
.LBB11_10:                              # %for.body.40
                                        #   Parent Loop BB11_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-8(%rsi), %ebp
	cmpl	(%rsi), %ebp
	setle	%bl
	movzbl	%bl, %ebp
	orl	%ebp, %ecx
	incq	%rdi
	addq	$32, %rsi
	cmpq	%r14, %rdi
	jl	.LBB11_10
.LBB11_11:                              # %for.end
                                        #   in Loop: Header=BB11_5 Depth=1
	testl	%ecx, %ecx
	sete	%cl
	movzbl	%cl, %edi
	movq	48(%rsp), %rsi          # 8-byte Reload
	movl	(%rsi), %ecx
	movl	4(%rsi), %esi
	subl	%eax, %ecx
	movl	%esi, 8(%rsp)
	movl	%ecx, (%rsp)
	movq	72(%rsp), %rsi          # 8-byte Reload
	movq	%r10, %rbp
	movq	%rbp, %rcx
	movl	%r8d, 80(%rsp)          # 4-byte Spill
	movl	%r9d, 84(%rsp)          # 4-byte Spill
	callq	clist_playback_file_bands
	incq	%r12
	cmpq	56(%rsp), %r12          # 8-byte Folded Reload
	movq	%r15, %rcx
	jge	.LBB11_13
# BB#12:                                # %for.end
                                        #   in Loop: Header=BB11_5 Depth=1
	testl	%eax, %eax
	jns	.LBB11_5
.LBB11_13:                              # %for.cond.for.end.66_crit_edge
	movq	72(%rsp), %rcx          # 8-byte Reload
	movq	1104(%rcx), %rsi
	movl	20(%rsp), %ebx          # 4-byte Reload
.LBB11_14:                              # %for.end.66
	movl	%ebx, 160(%rsi)
	addq	$8344, %rsp             # imm = 0x2098
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	clist_render_rectangle, .Lfunc_end11-clist_render_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	s_band_read_process,@function
s_band_read_process:                    # @s_band_read_process
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
	pushq	%r13
.Ltmp124:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp125:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp126:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp127:
	.cfi_def_cfa_offset 128
.Ltmp128:
	.cfi_offset %rbx, -56
.Ltmp129:
	.cfi_offset %r12, -48
.Ltmp130:
	.cfi_offset %r13, -40
.Ltmp131:
	.cfi_offset %r14, -32
.Ltmp132:
	.cfi_offset %r15, -24
.Ltmp133:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movq	8(%rdx), %rbx
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	8376(%r15), %r12d
	movl	%eax, %ecx
	subl	%ebx, %ecx
	movl	$1, %eax
	je	.LBB12_10
# BB#1:                                 # %while.body.lr.ph.lr.ph
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movq	4208(%r15), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	8312(%r15), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	8320(%r15), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	leaq	112(%r15), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	leaq	8384(%r15), %r14
.LBB12_2:                               # %while.body.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_7 Depth 2
	movl	%ecx, 28(%rsp)          # 4-byte Spill
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	testl	%r12d, %r12d
	jne	.LBB12_3
	.align	16, 0x90
.LBB12_7:                               # %rb
                                        #   Parent Loop BB12_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r14), %ebp
	cmpl	$-1, %ebp
	jne	.LBB12_13
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB12_7 Depth=2
	movq	56(%rsp), %rdi          # 8-byte Reload
	movq	64(%rsp), %rax          # 8-byte Reload
	callq	*56(%rax)
	cmpq	8344(%r15), %rax
	je	.LBB12_9
# BB#12:                                # %land.lhs.true.if.end.25_crit_edge
                                        #   in Loop: Header=BB12_7 Depth=2
	movl	(%r14), %ebp
.LBB12_13:                              # %if.end.25
                                        #   in Loop: Header=BB12_7 Depth=2
	movl	8388(%r15), %ebx
	movq	8392(%r15), %r13
	movl	$16, %esi
	movq	%r14, %rdi
	movq	56(%rsp), %rdx          # 8-byte Reload
	movq	64(%rsp), %rax          # 8-byte Reload
	callq	*32(%rax)
	movl	%eax, %ecx
	movl	$-2, %eax
	cmpl	$16, %ecx
	jb	.LBB12_11
# BB#14:                                # %if.end.38
                                        #   in Loop: Header=BB12_7 Depth=2
	cmpl	%ebp, 8372(%r15)
	jl	.LBB12_7
# BB#15:                                # %land.lhs.true.41
                                        #   in Loop: Header=BB12_7 Depth=2
	cmpl	%ebx, 8368(%r15)
	jg	.LBB12_7
# BB#16:                                # %cleanup
                                        #   in Loop: Header=BB12_7 Depth=2
	xorl	%edx, %edx
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	%r13, %rsi
	movq	40(%rsp), %rcx          # 8-byte Reload
	movq	64(%rsp), %rax          # 8-byte Reload
	callq	*72(%rax)
	movl	8392(%r15), %r12d
	subl	%r13d, %r12d
	je	.LBB12_7
	.align	16, 0x90
.LBB12_3:                               # %if.then
                                        #   in Loop: Header=BB12_2 Depth=1
	movl	28(%rsp), %ebp          # 4-byte Reload
	cmpl	%r12d, %ebp
	cmoval	%r12d, %ebp
	movq	32(%rsp), %rbx          # 8-byte Reload
	leaq	1(%rbx), %rdi
	movl	%ebp, %esi
	movq	48(%rsp), %r13          # 8-byte Reload
	movq	%r13, %rdx
	movq	64(%rsp), %rax          # 8-byte Reload
	callq	*32(%rax)
	movq	%r13, %rdi
	movq	64(%rsp), %rax          # 8-byte Reload
	callq	*48(%rax)
	testl	%eax, %eax
	js	.LBB12_4
# BB#5:                                 # %if.end.15
                                        #   in Loop: Header=BB12_2 Depth=1
	movl	%ebp, %eax
	addq	%rax, %rbx
	subl	%ebp, %r12d
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	%eax, %ecx
	subl	%ebx, %ecx
	jne	.LBB12_2
# BB#6:
	movq	8(%rsp), %rdx           # 8-byte Reload
	movl	$1, %eax
	jmp	.LBB12_10
.LBB12_9:
	movl	$-1, %eax
	xorl	%r12d, %r12d
	movq	8(%rsp), %rdx           # 8-byte Reload
	movq	32(%rsp), %rbx          # 8-byte Reload
	jmp	.LBB12_10
.LBB12_4:
	movl	$-2, %eax
	movq	8(%rsp), %rdx           # 8-byte Reload
.LBB12_10:                              # %while.end
	movq	%rbx, 8(%rdx)
	movl	%r12d, 8376(%r15)
.LBB12_11:                              # %cleanup.60
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	s_band_read_process, .Lfunc_end12-s_band_read_process
	.cfi_endproc

	.align	16, 0x90
	.type	s_band_read_init,@function
s_band_read_init:                       # @s_band_read_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp134:
	.cfi_def_cfa_offset 16
	movq	8320(%rdi), %rcx
	movl	$0, 8376(%rdi)
	movl	$0, 8384(%rdi)
	movl	$0, 8388(%rdi)
	movq	$0, 8392(%rdi)
	movq	8312(%rdi), %rax
	leaq	4216(%rdi), %rdx
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	*64(%rcx)
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end13:
	.size	s_band_read_init, .Lfunc_end13-s_band_read_init
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"clist reader color_usage_array"
	.size	.L.str, 31

	.type	s_band_read_template,@object # @s_band_read_template
	.section	.rodata,"a",@progbits
	.align	8
s_band_read_template:
	.quad	st_stream_state
	.quad	s_band_read_init
	.quad	s_band_read_process
	.long	1                       # 0x1
	.long	4096                    # 0x1000
	.quad	0
	.quad	0
	.quad	0
	.size	s_band_read_template, 56

	.type	clist_playback_file_bands.no_procs,@object # @clist_playback_file_bands.no_procs
	.align	8
clist_playback_file_bands.no_procs:
	.quad	s_std_noavailable
	.quad	s_std_noseek
	.quad	s_std_read_reset
	.quad	s_std_read_flush
	.quad	s_std_close
	.quad	s_band_read_process
	.quad	0
	.size	clist_playback_file_bands.no_procs, 56

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"r"
	.size	.L.str.1, 2

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"clist_read_icctable"
	.size	.L.str.2, 20

	.type	.L__func__.clist_unserialize_icctable,@object # @__func__.clist_unserialize_icctable
.L__func__.clist_unserialize_icctable:
	.asciz	"clist_unserialize_icctable"
	.size	.L__func__.clist_unserialize_icctable, 27

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"./base/gxclread.c"
	.size	.L.str.3, 18

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"insufficient memory for icc table buffer reader"
	.size	.L.str.4, 48

	.type	st_clist_icctable,@object # @st_clist_icctable
	.section	.rodata,"a",@progbits
	.align	8
st_clist_icctable:
	.long	32                      # 0x20
	.zero	4
	.quad	.L.str.6
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	clist_icctable_reloc_ptrs
	.size	st_clist_icctable, 64

	.type	st_clist_icctable_entry,@object # @st_clist_icctable_entry
	.align	8
st_clist_icctable_entry:
	.long	48                      # 0x30
	.zero	4
	.quad	.L.str.7
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	clist_icctable_entry_reloc_ptrs
	.size	st_clist_icctable_entry, 64

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"insufficient memory for icc table entry"
	.size	.L.str.5, 40

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"clist_icctable"
	.size	.L.str.6, 15

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

	.type	clist_icctable_enum_ptrs,@object # @clist_icctable_enum_ptrs
	.align	2
clist_icctable_enum_ptrs:
	.short	0                       # 0x0
	.short	16                      # 0x10
	.short	0                       # 0x0
	.short	24                      # 0x18
	.size	clist_icctable_enum_ptrs, 8

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"clist_icctable_entry"
	.size	.L.str.7, 21

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

	.type	clist_icctable_entry_enum_ptrs,@object # @clist_icctable_entry_enum_ptrs
	.align	2
clist_icctable_entry_enum_ptrs:
	.short	0                       # 0x0
	.short	24                      # 0x18
	.size	clist_icctable_entry_enum_ptrs, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
