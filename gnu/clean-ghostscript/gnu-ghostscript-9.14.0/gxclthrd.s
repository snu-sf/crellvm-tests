	.text
	.file	"gxclthrd.bc"
	.globl	setup_device_and_mem_for_thread
	.align	16, 0x90
	.type	setup_device_and_mem_for_thread,@function
setup_device_and_mem_for_thread:        # @setup_device_and_mem_for_thread
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
	subq	$104, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 160
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
	movq	%rcx, %r12
	movl	%edx, %r15d
	movq	%rsi, %r13
	movq	%rdi, %rax
	leaq	88(%rsp), %rdi
	movq	%rax, %rsi
	callq	gs_memory_chunk_wrap
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB0_3
# BB#1:                                 # %for.cond.preheader
	xorl	%edi, %edi
	callq	gs_getdevice
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB0_32
# BB#2:                                 # %for.body.lr.ph
	movl	$1, %ebx
	.align	16, 0x90
.LBB0_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rbp), %rdi
	movq	16(%r13), %rsi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB0_6
# BB#4:                                 # %for.cond
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	%ebx, %edi
	callq	gs_getdevice
	movq	%rax, %rbp
	incl	%ebx
	testq	%rbp, %rbp
	jne	.LBB0_5
	jmp	.LBB0_32
.LBB0_3:                                # %if.then
	movq	24(%r13), %r14
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r13), %rdi
	xorl	%ebp, %ebp
	movl	$.L.str, %esi
	xorl	%eax, %eax
	movl	%ebx, %edx
	callq	errprintf
	jmp	.LBB0_35
.LBB0_6:                                # %lor.lhs.false
	movq	88(%rsp), %rdx
	leaq	80(%rsp), %rdi
	movq	%rbp, %rsi
	callq	gs_copydevice
	testl	%eax, %eax
	js	.LBB0_32
# BB#7:                                 # %if.end.16
	movq	80(%rsp), %r14
	movq	%r14, %rdi
	callq	gx_device_fill_in_procs
	movq	88(%rsp), %rax
	movq	%rax, 1768(%r14)
	movq	%rax, 24(%r14)
	movq	%rax, 17200(%r14)
	movq	928(%r13), %rax
	movq	80(%rsp), %rcx
	movq	%rax, 928(%rcx)
	movq	17176(%r13), %rax
	movq	%rax, 17176(%r14)
	leaq	13056(%r14), %rdi
	leaq	13056(%r13), %rsi
	callq	strcpy
	movq	80(%rsp), %rbx
	leaq	96(%rbx), %rdi
	leaq	96(%r13), %rsi
	movl	$720, %edx              # imm = 0x2D0
	callq	memcpy
	movl	840(%r13), %eax
	movl	%eax, 840(%rbx)
	movl	844(%r13), %eax
	movl	%eax, 844(%rbx)
	movl	848(%r13), %eax
	movl	%eax, 848(%rbx)
	movq	24(%r13), %rsi
	leaq	24(%rsp), %rbx
	movq	%rbx, %rdi
	callq	gs_c_param_list_write
	xorl	%edx, %edx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	gs_get_device_or_hw_params
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB0_8
# BB#9:                                 # %if.end.36
	leaq	24(%rsp), %rbx
	movq	%rbx, %rdi
	callq	gs_c_param_list_read
	movq	80(%rsp), %rdi
	movq	%rbx, %rsi
	callq	gs_putdeviceparams
	testl	%eax, %eax
	js	.LBB0_26
# BB#10:                                # %if.end.40
	leaq	24(%rsp), %rdi
	callq	gs_c_param_list_release
	movq	%r13, %rdi
	callq	*1624(%r13)
	testq	%rax, %rax
	je	.LBB0_12
# BB#11:                                # %if.then.43
	movq	80(%rsp), %rsi
	movq	%r13, %rdi
	callq	devn_copy_params
	testl	%eax, %eax
	js	.LBB0_26
.LBB0_12:                               # %if.end.48
	movq	1104(%r13), %rax
	movl	168(%rax), %eax
	movq	80(%rsp), %rdi
	movq	1104(%rdi), %rcx
	movl	%eax, 168(%rcx)
	movl	1056(%r13), %eax
	movl	%eax, 1056(%r14)
	movl	848(%r13), %eax
	movl	%eax, 848(%r14)
	testl	%eax, %eax
	je	.LBB0_14
# BB#13:                                # %if.then.54
	callq	gdev_prn_set_procs_planar
	movq	80(%rsp), %rdi
.LBB0_14:                               # %if.end.56
	movl	832(%rdi), %edx
	movl	836(%rdi), %ecx
	xorl	%esi, %esi
	callq	gdev_prn_allocate_memory
	testl	%eax, %eax
	js	.LBB0_26
# BB#15:                                # %if.end.60
	leaq	1888(%r14), %rsi
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	10096(%r14), %rax
	leaq	5984(%r14), %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	5984(%r14), %rdi
	movl	$1, %edx
	callq	*8(%rax)
	movq	10088(%r14), %rdi
	movq	10096(%r14), %rax
	leaq	5992(%r14), %rsi
	movq	%rsi, (%rsp)            # 8-byte Spill
	movl	$1, %edx
	callq	*8(%rax)
	movq	$0, 10088(%r14)
	movq	$0, 5984(%r14)
	leaq	100(%rsp), %rbp
	movl	$.L.str.2, %esi
	movq	%rbp, %rdi
	callq	strcpy
	movl	$gp_fmode_binary_suffix, %esi
	movl	$1, %edx
	movq	%rbp, %rdi
	callq	strncat
	leaq	1888(%r13), %rbx
	movq	10096(%r13), %rax
	movq	88(%rsp), %rcx
	movl	$1, %r9d
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	16(%rsp), %rdx          # 8-byte Reload
	movq	%rcx, %r8
	callq	*(%rax)
	testl	%eax, %eax
	js	.LBB0_26
# BB#16:                                # %lor.lhs.false.90
	leaq	10088(%r14), %rdx
	movq	10096(%r13), %rax
	leaq	5992(%r13), %rbp
	movq	88(%rsp), %rcx
	leaq	100(%rsp), %rsi
	xorl	%r9d, %r9d
	movq	%rbp, %rdi
	movq	%rcx, %r8
	callq	*(%rax)
	testl	%eax, %eax
	js	.LBB0_26
# BB#17:                                # %if.end.103
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	%rbx, %rsi
	callq	strcpy
	movq	(%rsp), %rdi            # 8-byte Reload
	movq	%rbp, %rsi
	callq	strcpy
	movq	%r14, %rdi
	callq	clist_render_init
	movq	10120(%r13), %rax
	movq	%rax, 10120(%r14)
	testq	%r12, %r12
	je	.LBB0_21
# BB#18:                                # %if.then.123
	movq	(%r12), %rax
	testq	%rax, %rax
	jne	.LBB0_20
# BB#19:                                # %if.then.125
	movq	88(%rsp), %rax
	movq	208(%rax), %rdi
	callq	gsicc_cache_new
	movq	%rax, (%r12)
	testq	%rax, %rax
	je	.LBB0_26
.LBB0_20:                               # %do.end.143
	incq	16(%rax)
	movq	%rax, 10168(%r14)
	jmp	.LBB0_22
.LBB0_8:                                # %if.then.30
	movq	24(%r13), %r15
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r13), %rdi
	movl	$.L.str.1, %esi
	xorl	%eax, %eax
	movl	%ebx, %edx
	callq	errprintf
.LBB0_26:                               # %out_cleanup
	movq	10088(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB0_28
# BB#27:                                # %if.then.177
	movq	10096(%r14), %rax
	leaq	5992(%r14), %rsi
	xorl	%edx, %edx
	callq	*8(%rax)
.LBB0_28:                               # %if.end.187
	movq	5984(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB0_30
# BB#29:                                # %if.then.191
	leaq	1888(%r14), %rsi
	movq	10096(%r14), %rax
	xorl	%edx, %edx
	callq	*8(%rax)
.LBB0_30:                               # %if.end.201
	movl	$1, 1808(%r14)
	movq	80(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_32
# BB#31:                                # %if.then.203
	callq	gdev_prn_free_memory
	movq	88(%rsp), %rdi
	movq	80(%rsp), %rsi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
.LBB0_32:                               # %if.end.206
	movq	88(%rsp), %rdi
	callq	gs_memory_chunk_release
	xorl	%ebp, %ebp
.LBB0_35:                               # %cleanup.207
	movq	%rbp, %rax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_21:                               # %if.else
	movq	88(%rsp), %rdi
	callq	gsicc_cache_new
	movq	%rax, 10168(%r14)
	testq	%rax, %rax
	je	.LBB0_26
.LBB0_22:                               # %if.end.149
	testl	%r15d, %r15d
	je	.LBB0_33
# BB#23:                                # %if.then.151
	movq	10160(%r13), %rdi
	testq	%rdi, %rdi
	je	.LBB0_25
# BB#24:                                # %if.then.154
	movq	24(%r13), %rsi
	callq	clist_free_icc_table
	movq	$0, 10160(%r13)
	movq	%r14, %rdi
	callq	clist_read_icctable
	testl	%eax, %eax
	js	.LBB0_26
.LBB0_25:                               # %cleanup
	movq	%r14, %rdi
	callq	clist_read_color_usage_array
	testl	%eax, %eax
	jns	.LBB0_34
	jmp	.LBB0_26
.LBB0_33:                               # %if.else.168
	movq	10160(%r13), %rax
	movq	%rax, 10160(%r14)
	movq	10216(%r13), %rax
	movq	%rax, 10216(%r14)
.LBB0_34:                               # %if.end.172
	movq	10152(%r13), %rax
	movq	%rax, 10152(%r14)
	movq	80(%rsp), %rbp
	jmp	.LBB0_35
.Lfunc_end0:
	.size	setup_device_and_mem_for_thread, .Lfunc_end0-setup_device_and_mem_for_thread
	.cfi_endproc

	.globl	teardown_device_and_mem_for_thread
	.align	16, 0x90
	.type	teardown_device_and_mem_for_thread,@function
teardown_device_and_mem_for_thread:     # @teardown_device_and_mem_for_thread
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp17:
	.cfi_def_cfa_offset 48
.Ltmp18:
	.cfi_offset %rbx, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
.Ltmp21:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rdi, %rbx
	movq	24(%rbx), %r14
	movq	%rsi, %rdi
	callq	gp_thread_finish
	testl	%r15d, %r15d
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	callq	clist_teardown_render_threads
	movq	10160(%rbx), %rdi
	movq	%r14, %rsi
	callq	clist_free_icc_table
	movq	$0, 10160(%rbx)
	jmp	.LBB1_3
.LBB1_2:                                # %if.else
	movq	$0, 10216(%rbx)
.LBB1_3:                                # %do.body
	movq	10168(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB1_6
# BB#4:                                 # %do.end
	decq	16(%rsi)
	jne	.LBB1_6
# BB#5:                                 # %do.end.17
	movq	24(%rsi), %rdi
	movl	$.L.str.4, %edx
	callq	*32(%rsi)
	movq	$0, 10168(%rbx)
.LBB1_6:                                # %do.end.34
	movq	$0, 10168(%rbx)
	cmpq	$0, 5984(%rbx)
	je	.LBB1_7
# BB#8:                                 # %if.then.36
	movq	10088(%rbx), %rdi
	movq	10096(%rbx), %rax
	leaq	10088(%rbx), %rbp
	leaq	5992(%rbx), %rsi
	movl	%r15d, %edx
	callq	*8(%rax)
	jmp	.LBB1_9
.LBB1_7:                                # %do.end.34.if.end.41_crit_edge
	leaq	10088(%rbx), %rbp
.LBB1_9:                                # %if.end.41
	cmpq	$0, (%rbp)
	je	.LBB1_11
# BB#10:                                # %if.then.45
	leaq	1888(%rbx), %rsi
	movq	10096(%rbx), %rax
	movq	5984(%rbx), %rdi
	movl	%r15d, %edx
	callq	*8(%rax)
.LBB1_11:                               # %if.end.54
	movl	$1, 1808(%rbx)
	movq	%rbx, %rdi
	callq	gdev_prn_free_memory
	movl	$.L.str.5, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*24(%r14)
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gs_memory_chunk_release # TAILCALL
.Lfunc_end1:
	.size	teardown_device_and_mem_for_thread, .Lfunc_end1-teardown_device_and_mem_for_thread
	.cfi_endproc

	.globl	clist_teardown_render_threads
	.align	16, 0x90
	.type	clist_teardown_render_threads,@function
clist_teardown_render_threads:          # @clist_teardown_render_threads
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp23:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp24:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp25:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp26:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp28:
	.cfi_def_cfa_offset 64
.Ltmp29:
	.cfi_offset %rbx, -56
.Ltmp30:
	.cfi_offset %r12, -48
.Ltmp31:
	.cfi_offset %r13, -40
.Ltmp32:
	.cfi_offset %r14, -32
.Ltmp33:
	.cfi_offset %r15, -24
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movq	10248(%r15), %r13
	testq	%r13, %r13
	je	.LBB2_17
# BB#1:                                 # %if.then
	movq	1768(%r15), %r14
	movslq	10240(%r15), %rax
	testq	%rax, %rax
	jle	.LBB2_15
# BB#2:                                 # %for.body.lr.ph
	leaq	(%rax,%rax,4), %rbx
	leaq	1(%rax), %rbp
	shlq	$4, %rbx
	addq	$-8, %rbx
	jmp	.LBB2_3
	.align	16, 0x90
.LBB2_13:                               # %if.end.26.for.body_crit_edge
                                        #   in Loop: Header=BB2_3 Depth=1
	addq	$-80, %rbx
	movq	10248(%r15), %r13
.LBB2_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%r13,%rbx), %r12
	cmpl	$2, -72(%r13,%rbx)
	jne	.LBB2_5
# BB#4:                                 # %if.then.5
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	-56(%r13,%rbx), %rdi
	addq	$8, %rdi
	callq	gp_semaphore_wait
.LBB2_5:                                # %if.end
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	-48(%r13,%rbx), %rdi
	callq	gx_semaphore_free
	movq	-56(%r13,%rbx), %rdi
	callq	gx_semaphore_free
	movq	-32(%r13,%rbx), %rdi
	callq	*1760(%r12)
	movq	-8(%r13,%rbx), %rdx
	testq	%rdx, %rdx
	je	.LBB2_10
# BB#6:                                 # %if.then.7
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	8(%rdx), %rax
	testq	%rax, %rax
	je	.LBB2_9
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	(%r13,%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB2_9
# BB#8:                                 # %if.then.11
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	32(%rdx), %rdi
	movq	-64(%r13,%rbx), %rdx
	movq	%r15, %rsi
	callq	*%rax
	movq	$0, (%r13,%rbx)
.LBB2_9:                                # %if.end.17
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	$0, -8(%r13,%rbx)
.LBB2_10:                               # %if.end.19
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	10256(%r15), %rax
	cmpq	%rax, 1776(%r12)
	jne	.LBB2_12
# BB#11:                                # %if.then.21
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	1776(%r15), %rcx
	movq	%rcx, 1776(%r12)
	movq	%rax, 1776(%r15)
.LBB2_12:                               # %if.end.26
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	-16(%r13,%rbx), %rsi
	xorl	%edx, %edx
	movq	%r12, %rdi
	callq	teardown_device_and_mem_for_thread
	decq	%rbp
	cmpq	$2, %rbp
	jge	.LBB2_13
# BB#14:                                # %for.cond.for.end_crit_edge
	movq	10248(%r15), %r13
.LBB2_15:                               # %for.end
	movl	$.L.str.5, %edx
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	*24(%r14)
	movq	$0, 10248(%r15)
	cmpq	$0, 5984(%r15)
	jne	.LBB2_17
# BB#16:                                # %if.then.31
	leaq	1888(%r15), %rbx
	leaq	5984(%r15), %r13
	leaq	4(%rsp), %r12
	movl	$.L.str.6, %esi
	movq	%r12, %rdi
	callq	strcpy
	movl	$gp_fmode_binary_suffix, %esi
	movl	$1, %edx
	movq	%r12, %rdi
	callq	strncat
	movq	10096(%r15), %rax
	movq	1768(%r15), %r8
	movl	$1, %r9d
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	movq	%r14, %rcx
	callq	*(%rax)
	movq	10096(%r15), %rax
	movq	5984(%r15), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rbx, %rcx
	callq	*72(%rax)
	movq	10096(%r15), %rax
	leaq	5992(%r15), %rbx
	leaq	10088(%r15), %rdx
	movq	1768(%r15), %r8
	xorl	%r9d, %r9d
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r14, %rcx
	callq	*(%rax)
	movq	10088(%r15), %rdi
	movq	10096(%r15), %rax
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rbx, %rcx
	callq	*72(%rax)
.LBB2_17:                               # %if.end.70
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	clist_teardown_render_threads, .Lfunc_end2-clist_teardown_render_threads
	.cfi_endproc

	.globl	clist_process_page
	.align	16, 0x90
	.type	clist_process_page,@function
clist_process_page:                     # @clist_process_page
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
	subq	$88, %rsp
.Ltmp41:
	.cfi_def_cfa_offset 144
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
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movl	10132(%rbx), %eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movq	$0, 32(%rsp)
	callq	clist_close_writer_and_init_reader
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB3_16
# BB#1:                                 # %if.end
	movq	(%rbp), %rax
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	je	.LBB3_3
# BB#2:                                 # %if.then.1
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	32(%rcx), %rdi
	movq	24(%rbx), %rdx
	movl	832(%rbx), %ecx
	leaq	32(%rsp), %r9
	movq	%rbx, %rsi
	movl	28(%rsp), %r8d          # 4-byte Reload
	callq	*%rax
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB3_16
.LBB3_3:                                # %if.end.7
	movl	$-1, 56(%rsp)
	movl	836(%rbx), %r12d
	testl	%r12d, %r12d
	movq	%rbx, %r15
	jle	.LBB3_14
# BB#4:                                 # %for.body.lr.ph
	xorl	%ebp, %ebp
	leaq	48(%rsp), %r8
                                        # implicit-def: R14D
	.align	16, 0x90
.LBB3_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	subl	%ebp, %r12d
	movl	28(%rsp), %esi          # 4-byte Reload
	cmpl	%r12d, %esi
	cmovlel	%esi, %r12d
	movq	1736(%r15), %rdi
	movq	1728(%r15), %rcx
	movq	24(%r15), %r9
	movl	%ebp, %eax
	cltd
	idivl	%esi
	cltq
	shlq	$5, %rax
	addq	10216(%r15), %rax
	movq	%rax, (%rsp)
	leaq	64(%rsp), %rsi
	movq	%rcx, %rdx
	movl	%ebp, %ecx
	movq	%r8, %rbx
	callq	gdev_create_buf_device
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB3_16
# BB#7:                                 # %if.end.19
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	64(%rsp), %rcx
	movq	%r15, %rdi
	movl	%ebp, %esi
	movl	%r12d, %edx
	movq	%rbx, %r8
	leaq	44(%rsp), %r9
	callq	clist_rasterize_lines
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB3_13
# BB#8:                                 # %if.then.22
                                        #   in Loop: Header=BB3_6 Depth=1
	cmpl	%r12d, %r13d
	cmovlel	%r13d, %r12d
	movl	$0, 72(%rsp)
	movl	%ebp, 76(%rsp)
	movl	832(%r15), %eax
	movl	%eax, 80(%rsp)
	leal	(%r12,%rbp), %eax
	movl	%eax, 84(%rsp)
	movq	16(%rsp), %rbx          # 8-byte Reload
	movq	16(%rbx), %rax
	testq	%rax, %rax
	je	.LBB3_10
# BB#9:                                 # %if.end.36
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	32(%rbx), %rdi
	movq	64(%rsp), %rdx
	movq	32(%rsp), %r8
	movq	%r15, %rsi
	leaq	72(%rsp), %rcx
	callq	*%rax
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB3_12
.LBB3_10:                               # %land.lhs.true
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	24(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB3_12
# BB#11:                                # %if.then.39
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	32(%rbx), %rdi
	movq	32(%rsp), %rdx
	movq	%r15, %rsi
	callq	*%rcx
	movl	%eax, %r13d
.LBB3_12:                               # %if.end.43
                                        #   in Loop: Header=BB3_6 Depth=1
	movl	%r12d, %r14d
.LBB3_13:                               # %if.end.43
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	64(%rsp), %rdi
	callq	*1760(%r15)
	testl	%r13d, %r13d
	js	.LBB3_14
# BB#5:                                 # %for.cond
                                        #   in Loop: Header=BB3_6 Depth=1
	leal	(%rbp,%r14), %ebp
	movl	836(%r15), %r12d
	cmpl	%ebp, %r12d
	leaq	48(%rsp), %r8
	jg	.LBB3_6
.LBB3_14:                               # %for.end
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	8(%rcx), %rax
	testq	%rax, %rax
	je	.LBB3_16
# BB#15:                                # %if.then.50
	movq	32(%rcx), %rdi
	movq	24(%r15), %rdx
	movq	32(%rsp), %rcx
	movq	%r15, %rsi
	callq	*%rax
.LBB3_16:                               # %cleanup
	movl	%r13d, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	clist_process_page, .Lfunc_end3-clist_process_page
	.cfi_endproc

	.globl	clist_enable_multi_thread_render
	.align	16, 0x90
	.type	clist_enable_multi_thread_render,@function
clist_enable_multi_thread_render:       # @clist_enable_multi_thread_render
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp48:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp49:
	.cfi_def_cfa_offset 32
.Ltmp50:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$clist_get_bits_rect_mt, %ecx
	movl	$1, %eax
	cmpq	%rcx, 1448(%rbx)
	je	.LBB4_3
# BB#1:                                 # %if.end
	leaq	8(%rsp), %rdx
	movl	$test_threads, %edi
	xorl	%esi, %esi
	callq	gp_thread_start
	testl	%eax, %eax
	js	.LBB4_3
# BB#2:                                 # %if.end.3
	movq	8(%rsp), %rdi
	callq	gp_thread_finish
	movq	$clist_get_bits_rect_mt, 1448(%rbx)
	movq	$clist_process_page_mt, 1720(%rbx)
	movl	$1, %eax
.LBB4_3:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end4:
	.size	clist_enable_multi_thread_render, .Lfunc_end4-clist_enable_multi_thread_render
	.cfi_endproc

	.align	16, 0x90
	.type	clist_get_bits_rect_mt,@function
clist_get_bits_rect_mt:                 # @clist_get_bits_rect_mt
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp52:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp53:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp54:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp55:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp56:
	.cfi_def_cfa_offset 56
	subq	$664, %rsp              # imm = 0x298
.Ltmp57:
	.cfi_def_cfa_offset 720
.Ltmp58:
	.cfi_offset %rbx, -56
.Ltmp59:
	.cfi_offset %r12, -48
.Ltmp60:
	.cfi_offset %r13, -40
.Ltmp61:
	.cfi_offset %r14, -32
.Ltmp62:
	.cfi_offset %r15, -24
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbp
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r13
	movq	1768(%r13), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movq	(%rbx), %r12
	movq	%r12, 56(%rsp)          # 8-byte Spill
	movl	4(%r15), %eax
	movl	%eax, 92(%rsp)          # 4-byte Spill
	movl	12(%r15), %r14d
	movl	10132(%r13), %ecx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	cltd
	idivl	%ecx
	movl	%eax, 80(%rsp)          # 4-byte Spill
	movl	$1, %esi
	callq	gx_device_raster
	testl	$524288, %r12d          # imm = 0x80000
	movq	%r13, %r12
	jne	.LBB5_2
# BB#1:                                 # %entry
	movl	17288(%r12), %ecx
	testl	%ecx, %ecx
	jle	.LBB5_2
# BB#4:                                 # %if.end
	movl	%r14d, 52(%rsp)         # 4-byte Spill
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movq	%r15, %rbp
	movl	(%rbp), %esi
	movl	$-15, %r14d
	testl	%esi, %esi
	js	.LBB5_40
# BB#5:                                 # %lor.lhs.false.7
	movl	92(%rsp), %r13d         # 4-byte Reload
	testl	%r13d, %r13d
	js	.LBB5_40
# BB#6:                                 # %lor.lhs.false.7
	movl	8(%rbp), %ecx
	cmpl	832(%r12), %ecx
	jg	.LBB5_40
# BB#7:                                 # %lor.lhs.false.13
	movl	52(%rsp), %edx          # 4-byte Reload
	cmpl	836(%r12), %edx
	jg	.LBB5_40
# BB#8:                                 # %if.end.16
	movl	52(%rsp), %ebx          # 4-byte Reload
	subl	%r13d, %ebx
	xorl	%r14d, %r14d
	testl	%ebx, %ebx
	jle	.LBB5_40
# BB#9:                                 # %if.end.16
	cmpl	%ecx, %esi
	jge	.LBB5_40
# BB#10:                                # %if.end.25
	movl	%eax, %r15d
	movl	1880(%r12), %eax
	testl	%eax, %eax
	jns	.LBB5_13
# BB#11:                                # %if.then.27
	movq	%r12, %rdi
	callq	clist_close_writer_and_init_reader
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB5_40
# BB#12:                                # %if.end.32thread-pre-split
	movl	1880(%r12), %eax
.LBB5_13:                               # %if.end.32
	testl	%eax, %eax
	jne	.LBB5_28
# BB#14:                                # %land.lhs.true
	cmpl	$0, 1884(%r12)
	jne	.LBB5_28
# BB#15:                                # %land.lhs.true.36
	cmpq	$0, 10248(%r12)
	je	.LBB5_16
.LBB5_28:                               # %if.else
	cmpq	$0, 10248(%r12)
	jne	.LBB5_18
	jmp	.LBB5_29
.LBB5_2:                                # %if.then
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	movq	%rbp, %rcx
.LBB5_3:                                # %cleanup.150
	callq	clist_get_bits_rectangle
	movl	%eax, %r14d
.LBB5_40:                               # %cleanup.150
	movl	%r14d, %eax
	addq	$664, %rsp              # imm = 0x298
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_16:                               # %if.then.38
	xorl	%edx, %edx
	movq	%r12, %rdi
	movl	%r13d, %esi
	callq	clist_setup_render_threads
	testl	%eax, %eax
	js	.LBB5_29
# BB#17:                                # %if.then.38.if.end.49_crit_edge
	movl	1880(%r12), %eax
.LBB5_18:                               # %if.end.49
	cmpl	%eax, %r13d
	jl	.LBB5_20
# BB#19:                                # %lor.lhs.false.52
	movl	52(%rsp), %eax          # 4-byte Reload
	cmpl	1884(%r12), %eax
	jle	.LBB5_21
.LBB5_20:                               # %if.end.57
	xorl	%edx, %edx
	movq	%r12, %rdi
	movl	80(%rsp), %esi          # 4-byte Reload
	callq	clist_get_band_from_thread
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB5_39
.LBB5_21:                               # %if.end.60
	movq	1776(%r12), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	10104(%r12), %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	1728(%r12), %rdx
	movq	1736(%r12), %rdi
	movslq	80(%rsp), %rcx          # 4-byte Folded Reload
	shlq	$5, %rcx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movq	10216(%r12), %rax
	addq	%rcx, %rax
	movq	%rax, (%rsp)
	leaq	640(%rsp), %rsi
	xorl	%r8d, %r8d
	movl	%r13d, %ecx
	movq	72(%rsp), %r9           # 8-byte Reload
	callq	gdev_create_buf_device
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB5_39
# BB#22:                                # %lor.lhs.false.64
	movq	24(%rsp), %rsi          # 8-byte Reload
	addq	16(%rsp), %rsi          # 8-byte Folded Reload
	movq	640(%rsp), %rdi
	movl	1880(%r12), %eax
	movl	1884(%r12), %ecx
	movl	%r13d, %r8d
	subl	%eax, %r8d
	subl	%eax, %ecx
	movl	%ecx, (%rsp)
	xorl	%ecx, %ecx
	movl	%r15d, %edx
	movl	%ebx, %r9d
	callq	*1752(%r12)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB5_39
# BB#23:                                # %if.end.74
	movl	%ebx, %r15d
	movq	64(%rsp), %rbx          # 8-byte Reload
	cmpl	%r15d, %ebx
	cmovgl	%r15d, %ebx
	movl	8(%rbp), %eax
	movl	%eax, 656(%rsp)
	movq	(%rbp), %rax
	movq	%rax, 648(%rsp)
	movl	$0, 652(%rsp)
	movl	%ebx, 660(%rsp)
	movq	640(%rsp), %rdi
	leaq	648(%rsp), %rsi
	movq	40(%rsp), %rdx          # 8-byte Reload
	movq	32(%rsp), %rcx          # 8-byte Reload
	callq	*1448(%rdi)
	movl	%eax, %r14d
	movq	640(%rsp), %rdi
	callq	*1760(%r12)
	testl	%r14d, %r14d
	js	.LBB5_39
# BB#24:                                # %if.end.84
	cmpl	%r15d, %ebx
	je	.LBB5_40
# BB#25:                                # %if.end.87
	movq	56(%rsp), %rax          # 8-byte Reload
	testl	$1048576, %eax          # imm = 0x100000
	je	.LBB5_27
# BB#26:                                # %if.end.87
	testl	%r14d, %r14d
	jg	.LBB5_27
# BB#30:                                # %if.end.94
	movl	%r13d, %ebp
	movq	40(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx), %rax
	testl	$1048576, %eax          # imm = 0x100000
	jne	.LBB5_32
# BB#31:                                # %if.then.98
	andq	$-3145729, %rax         # imm = 0xFFFFFFFFFFCFFFFF
	orq	$1048576, %rax          # imm = 0x100000
	movq	%rax, (%rcx)
	xorl	%ebx, %ebx
.LBB5_32:                               # %if.end.102
	movq	640(%rsp), %rdi
	movl	$1, %esi
	callq	gx_device_raster
	movl	%eax, 64(%rsp)          # 4-byte Spill
	movq	1728(%r12), %rdx
	movq	1736(%r12), %rdi
	movq	80(%rsp), %rax          # 8-byte Reload
	addq	10216(%r12), %rax
	movq	%rax, (%rsp)
	leaq	640(%rsp), %rsi
	xorl	%r8d, %r8d
	movl	%ebp, %ecx
	movq	72(%rsp), %r9           # 8-byte Reload
	callq	gdev_create_buf_device
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB5_40
# BB#33:                                # %if.end.115
	leaq	96(%rsp), %r15
	movl	$536, %edx              # imm = 0x218
	movq	%r15, %rdi
	movq	40(%rsp), %rsi          # 8-byte Reload
	callq	memcpy
.LBB5_34:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	addl	%ebx, %ebp
	movl	52(%rsp), %r13d         # 4-byte Reload
	subl	%ebp, %r13d
	jle	.LBB5_38
# BB#35:                                # %while.body
                                        #   in Loop: Header=BB5_34 Depth=1
	imull	64(%rsp), %ebx          # 4-byte Folded Reload
	addq	%rbx, 104(%rsp)
	movq	640(%rsp), %rcx
	xorl	%r8d, %r8d
	movq	%r12, %rdi
	movl	%ebp, %esi
	movl	%r13d, %edx
	leaq	636(%rsp), %r9
	callq	clist_rasterize_lines
	movl	%eax, %ebx
	testl	%ebx, %ebx
	movl	%ebx, %r14d
	js	.LBB5_38
# BB#36:                                # %if.end.125
                                        #   in Loop: Header=BB5_34 Depth=1
	cmpl	%r13d, %ebx
	cmovgl	%r13d, %ebx
	movl	636(%rsp), %eax
	movl	%eax, 652(%rsp)
	addl	%ebx, %eax
	movl	%eax, 660(%rsp)
	movq	640(%rsp), %rdi
	leaq	648(%rsp), %rsi
	movq	%r15, %rdx
	movq	32(%rsp), %rcx          # 8-byte Reload
	callq	*1448(%rdi)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB5_38
# BB#37:                                # %if.end.141
                                        #   in Loop: Header=BB5_34 Depth=1
	movq	96(%rsp), %rax
	movq	40(%rsp), %rcx          # 8-byte Reload
	movq	%rax, (%rcx)
	cmpl	%r13d, %ebx
	jne	.LBB5_34
.LBB5_38:                               # %while.end
	movq	640(%rsp), %rdi
	callq	*1760(%r12)
	jmp	.LBB5_40
.LBB5_39:                               # %free_thread_out
	movq	%r12, %rdi
	callq	clist_teardown_render_threads
	jmp	.LBB5_40
.LBB5_29:                               # %if.then.41
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movq	40(%rsp), %rdx          # 8-byte Reload
	movq	32(%rsp), %rcx          # 8-byte Reload
	jmp	.LBB5_3
.LBB5_27:                               # %if.then.92
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movq	40(%rsp), %rdx          # 8-byte Reload
	movq	32(%rsp), %rcx          # 8-byte Reload
	callq	gx_default_get_bits_rectangle
	movl	%eax, %r14d
	jmp	.LBB5_40
.Lfunc_end5:
	.size	clist_get_bits_rect_mt, .Lfunc_end5-clist_get_bits_rect_mt
	.cfi_endproc

	.align	16, 0x90
	.type	test_threads,@function
test_threads:                           # @test_threads
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end6:
	.size	test_threads, .Lfunc_end6-test_threads
	.cfi_endproc

	.align	16, 0x90
	.type	clist_process_page_mt,@function
clist_process_page_mt:                  # @clist_process_page_mt
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp65:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp66:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp67:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp68:
	.cfi_def_cfa_offset 48
.Ltmp69:
	.cfi_offset %rbx, -48
.Ltmp70:
	.cfi_offset %r12, -40
.Ltmp71:
	.cfi_offset %r14, -32
.Ltmp72:
	.cfi_offset %r15, -24
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	10132(%r15), %ecx
	movl	836(%r15), %eax
	leal	-1(%rcx,%rax), %eax
	cltd
	idivl	%ecx
	movl	%eax, %r12d
	cmpl	$0, 17288(%r15)
	jle	.LBB7_14
# BB#1:                                 # %if.end
	movl	40(%r14), %ebp
	movq	%r15, %rdi
	callq	clist_close_writer_and_init_reader
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB7_13
# BB#2:                                 # %if.end.6
	xorl	%esi, %esi
	andl	$1, %ebp
	je	.LBB7_4
# BB#3:                                 # %cond.true
	movl	836(%r15), %esi
	decl	%esi
.LBB7_4:                                # %cond.end
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	clist_setup_render_threads
	testl	%eax, %eax
	js	.LBB7_14
# BB#5:                                 # %if.end.14
	testl	%ebp, %ebp
	je	.LBB7_6
	.align	16, 0x90
.LBB7_10:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$2, %r12d
	jl	.LBB7_12
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB7_10 Depth=1
	decl	%r12d
	movq	%r15, %rdi
	movl	%r12d, %esi
	movq	%r14, %rdx
	callq	clist_get_band_from_thread
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jns	.LBB7_10
	jmp	.LBB7_12
.LBB7_14:                               # %if.then
	movq	%r15, %rdi
	movq	%r14, %rsi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	clist_process_page      # TAILCALL
.LBB7_6:                                # %for.cond.23.preheader
	testl	%r12d, %r12d
	jle	.LBB7_12
# BB#7:
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB7_8:                                # %for.body.25
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movl	%ebp, %esi
	movq	%r14, %rdx
	callq	clist_get_band_from_thread
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB7_12
# BB#9:                                 # %for.body.25
                                        #   in Loop: Header=BB7_8 Depth=1
	incl	%ebp
	cmpl	%r12d, %ebp
	jl	.LBB7_8
.LBB7_12:                               # %free_thread_out
	movq	%r15, %rdi
	callq	clist_teardown_render_threads
.LBB7_13:                               # %cleanup
	movl	%ebx, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	clist_process_page_mt, .Lfunc_end7-clist_process_page_mt
	.cfi_endproc

	.align	16, 0x90
	.type	clist_setup_render_threads,@function
clist_setup_render_threads:             # @clist_setup_render_threads
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp75:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp76:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp77:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp78:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp79:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp80:
	.cfi_def_cfa_offset 160
.Ltmp81:
	.cfi_offset %rbx, -56
.Ltmp82:
	.cfi_offset %r12, -48
.Ltmp83:
	.cfi_offset %r13, -40
.Ltmp84:
	.cfi_offset %r14, -32
.Ltmp85:
	.cfi_offset %r15, -24
.Ltmp86:
	.cfi_offset %rbp, -16
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movq	1768(%rbx), %r14
	movq	208(%r14), %r12
	movq	%r12, 40(%rsp)          # 8-byte Spill
	movl	10132(%rbx), %r13d
	movl	10144(%rbx), %eax
	movl	%eax, 64(%rsp)          # 4-byte Spill
	movl	17288(%rbx), %ebp
	movl	%ebp, 10240(%rbx)
	cmpb	$0, gs_debug+58(%rip)
	je	.LBB8_1
# BB#2:                                 # %if.then
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movl	$.L.str.7, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%ebp, %edx
	callq	errprintf
	movl	10240(%rbx), %ebp
	jmp	.LBB8_3
.LBB8_1:
	movq	%rdx, 56(%rsp)          # 8-byte Spill
.LBB8_3:                                # %if.end
	cmpl	64(%rsp), %ebp          # 4-byte Folded Reload
	jle	.LBB8_5
# BB#4:                                 # %if.then.6
	movl	64(%rsp), %eax          # 4-byte Reload
	movl	%eax, 10240(%rbx)
	movl	%eax, %ebp
.LBB8_5:                                # %if.end.8
	movl	$80, %edx
	movl	$.L.str.8, %ecx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	*88(%r14)
	movq	%rax, 10248(%rbx)
	testq	%rax, %rax
	je	.LBB8_6
# BB#7:                                 # %if.end.18
	movslq	10240(%rbx), %rcx
	shlq	$4, %rcx
	leaq	(%rcx,%rcx,4), %rdx
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
	movq	1776(%rbx), %rax
	movq	%rax, 10256(%rbx)
	movl	836(%rbx), %eax
	decl	%eax
	cmpl	%r15d, %eax
	movl	$1, %eax
	movl	$-1, %ecx
	cmovgl	%eax, %ecx
	movl	%ecx, 10268(%rbx)
	movl	%r15d, %eax
	cltd
	idivl	%r13d
	movl	%r13d, 28(%rsp)         # 4-byte Spill
	movl	%eax, %ebp
	leaq	80(%rsp), %rsi
	movq	%r12, %rdi
	callq	*40(%r12)
	movl	$-25, %r13d
	cmpl	$0, 96(%rsp)
	je	.LBB8_57
# BB#8:                                 # %if.end.29
	movl	10240(%rbx), %esi
	cmpl	10176(%rbx), %esi
	jle	.LBB8_14
# BB#9:                                 # %if.then.33
	movq	10184(%rbx), %r15
	movq	208(%r14), %rdi
	movl	$8, %edx
	movl	$.L.str.10, %ecx
	callq	*88(%rdi)
	movq	%rax, 10184(%rbx)
	testq	%rax, %rax
	je	.LBB8_10
# BB#11:                                # %if.end.46
	movslq	10176(%rbx), %rdx
	testq	%rdx, %rdx
	jle	.LBB8_13
# BB#12:                                # %if.then.50
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	memcpy
	movl	10176(%rbx), %edx
	movq	10184(%rbx), %rax
.LBB8_13:                               # %if.end.56
	movslq	%edx, %rcx
	leaq	(%rax,%rcx,8), %rdi
	movslq	10240(%rbx), %rdx
	subq	%rcx, %rdx
	shlq	$3, %rdx
	xorl	%esi, %esi
	callq	memset
	movl	10240(%rbx), %eax
	movl	%eax, 10176(%rbx)
	movl	$.L.str.10, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*24(%r14)
	movl	10240(%rbx), %esi
.LBB8_14:                               # %for.cond.preheader
	xorl	%r13d, %r13d
	cmpl	64(%rsp), %ebp          # 4-byte Folded Reload
	jge	.LBB8_48
# BB#15:                                # %for.cond.preheader
	testl	%ebp, %ebp
	js	.LBB8_48
# BB#16:                                # %for.cond.preheader
	testl	%esi, %esi
	jle	.LBB8_48
# BB#17:                                # %for.body.lr.ph
	movq	%r14, 16(%rsp)          # 8-byte Spill
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	xorl	%edx, %edx
	.align	16, 0x90
.LBB8_18:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movl	%ebp, 52(%rsp)          # 4-byte Spill
	movq	10248(%rbx), %r13
	movq	10184(%rbx), %rcx
	addq	%r15, %rcx
	xorl	%edx, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	setup_device_and_mem_for_thread
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB8_19
# BB#26:                                # %if.end.86
                                        #   in Loop: Header=BB8_18 Depth=1
	movq	56(%rsp), %rcx          # 8-byte Reload
	testq	%rcx, %rcx
	movq	%r12, 32(%r13,%r14)
	movq	24(%r12), %r9
	movq	%r9, 8(%r13,%r14)
	movl	$-1, 48(%r13,%r14)
	movq	%rcx, 64(%r13,%r14)
	movq	$0, 72(%r13,%r14)
	je	.LBB8_30
# BB#27:                                # %land.lhs.true.91
                                        #   in Loop: Header=BB8_18 Depth=1
	movq	(%rcx), %rbp
	testq	%rbp, %rbp
	je	.LBB8_30
# BB#28:                                # %if.then.93
                                        #   in Loop: Header=BB8_18 Depth=1
	leaq	72(%r13,%r14), %rax
	movq	32(%rcx), %rdi
	movl	832(%rbx), %ecx
	movq	%rbx, %rsi
	movq	%r9, %rdx
	movl	28(%rsp), %r8d          # 4-byte Reload
	movq	%rax, %r9
	callq	*%rbp
	testl	%eax, %eax
	js	.LBB8_20
# BB#29:                                # %if.then.93.if.end.102_crit_edge
                                        #   in Loop: Header=BB8_18 Depth=1
	movq	8(%r13,%r14), %r9
	movq	56(%rsp), %rcx          # 8-byte Reload
.LBB8_30:                               # %if.end.102
                                        #   in Loop: Header=BB8_18 Depth=1
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movq	1736(%rbx), %rdi
	movl	10132(%rbx), %ecx
	imull	52(%rsp), %ecx          # 4-byte Folded Reload
	movq	10216(%rbx), %rax
	leaq	40(%r13,%r14), %rsi
	movq	%rax, (%rsp)
	xorl	%r8d, %r8d
	movq	%r12, %rdx
	callq	gdev_create_buf_device
	testl	%eax, %eax
	js	.LBB8_45
# BB#31:                                # %if.end.113
                                        #   in Loop: Header=BB8_18 Depth=1
	movq	8(%r13,%r14), %rdi
	callq	gx_semaphore_alloc
	movq	%rax, 16(%r13,%r14)
	testq	%rax, %rax
	je	.LBB8_19
# BB#32:                                # %lor.lhs.false
                                        #   in Loop: Header=BB8_18 Depth=1
	movq	8(%r13,%r14), %rdi
	callq	gx_semaphore_alloc
	movq	%rax, 24(%r13,%r14)
	testq	%rax, %rax
	movl	$-25, %eax
	je	.LBB8_20
# BB#33:                                # %cleanup.129
                                        #   in Loop: Header=BB8_18 Depth=1
	movq	10248(%rbx), %rax
	movl	52(%rsp), %ebp          # 4-byte Reload
	movl	%ebp, 48(%rax,%r14)
	movl	$2, (%rax,%r14)
	leaq	56(%rax,%r14), %rdx
	leaq	(%rax,%r14), %rsi
	movl	$clist_render_thread, %edi
	callq	gp_thread_start
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB8_34
# BB#35:                                # %for.inc
                                        #   in Loop: Header=BB8_18 Depth=1
	movq	32(%rsp), %rdx          # 8-byte Reload
	incq	%rdx
	addl	10268(%rbx), %ebp
	cmpl	64(%rsp), %ebp          # 4-byte Folded Reload
	movq	40(%rsp), %r12          # 8-byte Reload
	jge	.LBB8_38
# BB#36:                                # %for.inc
                                        #   in Loop: Header=BB8_18 Depth=1
	testl	%ebp, %ebp
	js	.LBB8_38
# BB#37:                                # %for.inc
                                        #   in Loop: Header=BB8_18 Depth=1
	movslq	10240(%rbx), %rax
	addq	$8, %r15
	addq	$80, %r14
	cmpq	%rax, %rdx
	jl	.LBB8_18
.LBB8_38:                               # %for.cond.for.end_crit_edge
	movq	16(%rsp), %r14          # 8-byte Reload
	jmp	.LBB8_47
.LBB8_6:                                # %if.then.14
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movl	$.L.str.9, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	errprintf
	movl	$-25, %r13d
	jmp	.LBB8_57
.LBB8_10:                               # %if.then.44
	movq	$0, 10184(%rbx)
	jmp	.LBB8_57
.LBB8_19:
	movl	$-25, %eax
	jmp	.LBB8_20
.LBB8_45:                               # %if.end.237.loopexit
	movl	$1, %r13d
	movq	16(%rsp), %r14          # 8-byte Reload
	movq	40(%rsp), %r12          # 8-byte Reload
	movl	52(%rsp), %ebp          # 4-byte Reload
	jmp	.LBB8_46
.LBB8_34:
	movl	%r13d, %eax
.LBB8_20:                               # %if.then.136
	movl	%eax, %r13d
	movl	52(%rsp), %ebp          # 4-byte Reload
	subl	10268(%rbx), %ebp
	movq	32(%rsp), %rax          # 8-byte Reload
	movslq	%eax, %r15
	movq	10248(%rbx), %rax
	movq	%r15, %rcx
	shlq	$4, %rcx
	leaq	(%rcx,%rcx,4), %r14
	movq	24(%rax,%r14), %rdi
	callq	gx_semaphore_free
	movq	10248(%rbx), %rax
	movq	16(%rax,%r14), %rdi
	callq	gx_semaphore_free
	movq	10248(%rbx), %rax
	movq	40(%rax,%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB8_22
# BB#21:                                # %if.then.153
	callq	*1760(%rbx)
	movq	10248(%rbx), %rax
.LBB8_22:                               # %if.end.159
	leaq	(%r15,%r15,4), %r15
	shlq	$4, %r15
	movq	32(%rax,%r15), %r12
	testq	%r12, %r12
	je	.LBB8_24
# BB#23:                                # %if.then.166
	leaq	1888(%r12), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	10088(%r12), %rdi
	movq	10096(%r12), %rax
	leaq	5992(%r12), %rsi
	xorl	%edx, %edx
	callq	*8(%rax)
	movq	10096(%r12), %rax
	movq	5984(%r12), %rdi
	xorl	%edx, %edx
	movq	64(%rsp), %rsi          # 8-byte Reload
	callq	*8(%rax)
	movl	$1, 1808(%r12)
	movq	%r12, %rdi
	callq	gdev_prn_free_memory
	movq	10248(%rbx), %rax
	movq	8(%rax,%r15), %rdi
	movl	$.L.str.8, %edx
	movq	%r12, %rsi
	callq	*24(%rdi)
	movq	10248(%rbx), %rax
.LBB8_24:                               # %if.end.193
	movq	56(%rsp), %rdx          # 8-byte Reload
	testq	%rdx, %rdx
	je	.LBB8_25
# BB#39:                                # %if.end.193
	movq	72(%rax,%r15), %rcx
	testq	%rcx, %rcx
	je	.LBB8_25
# BB#40:                                # %land.lhs.true.202
	movq	8(%rdx), %r8
	testq	%r8, %r8
	movq	40(%rsp), %r12          # 8-byte Reload
	je	.LBB8_42
# BB#41:                                # %if.then.205
	movq	32(%rdx), %rdi
	movq	8(%rax,%r14), %rdx
	movq	%rbx, %rsi
	callq	*%r8
	movq	10248(%rbx), %rax
	movq	$0, 72(%rax,%r14)
.LBB8_42:                               # %if.end.220
	movq	16(%rsp), %r14          # 8-byte Reload
	jmp	.LBB8_43
.LBB8_25:
	movq	16(%rsp), %r14          # 8-byte Reload
	movq	40(%rsp), %r12          # 8-byte Reload
.LBB8_43:                               # %if.end.220
	movq	8(%rax,%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB8_46
# BB#44:                                # %if.then.227
	callq	gs_memory_chunk_release
	movq	10248(%rbx), %rax
	movq	$0, 8(%rax,%r15)
.LBB8_46:                               # %if.end.237
	movq	32(%rsp), %rdx          # 8-byte Reload
.LBB8_47:                               # %if.end.237
	testl	%edx, %edx
	je	.LBB8_48
# BB#54:                                # %if.end.312
	movl	%edx, 10240(%rbx)
	movl	$0, 10264(%rbx)
	movl	%ebp, 10272(%rbx)
	xorl	%r13d, %r13d
	cmpb	$0, gs_debug+58(%rip)
	je	.LBB8_57
# BB#55:                                # %if.then.317
	xorl	%r13d, %r13d
	movl	$.L.str.13, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	jmp	.LBB8_56
.LBB8_48:                               # %if.then.240
	movq	10248(%rbx), %rax
	movq	8(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB8_51
# BB#49:                                # %if.then.246
	callq	gs_memory_chunk_release
	cmpq	%r14, %r12
	je	.LBB8_51
# BB#50:                                # %if.then.252
	movq	%r12, %rdi
	callq	gs_memory_locked_release
	movl	$.L.str.11, %edx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	*24(%r14)
.LBB8_51:                               # %if.end.256
	movq	10248(%rbx), %rsi
	movl	$.L.str.8, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
	movq	$0, 10248(%rbx)
	cmpq	$0, 5984(%rbx)
	jne	.LBB8_53
# BB#52:                                # %if.then.265
	leaq	1888(%rbx), %r12
	movl	%r13d, %ebp
	leaq	5984(%rbx), %r13
	leaq	76(%rsp), %r15
	movl	$.L.str.6, %esi
	movq	%r15, %rdi
	callq	strcpy
	movl	$gp_fmode_binary_suffix, %esi
	movl	$1, %edx
	movq	%r15, %rdi
	callq	strncat
	movq	10096(%rbx), %rax
	movq	1768(%rbx), %r8
	movl	$1, %r9d
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	movl	%ebp, %r13d
	movq	%r14, %rcx
	callq	*(%rax)
	movq	10096(%rbx), %rax
	movq	5984(%rbx), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r12, %rcx
	callq	*72(%rax)
	movq	10096(%rbx), %rax
	leaq	5992(%rbx), %r12
	leaq	10088(%rbx), %rdx
	movq	1768(%rbx), %r8
	xorl	%r9d, %r9d
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r14, %rcx
	callq	*(%rax)
	movq	10088(%rbx), %rdi
	movq	10096(%rbx), %rax
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r12, %rcx
	callq	*72(%rax)
.LBB8_53:                               # %if.end.308
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movl	$.L.str.12, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%r13d, %edx
.LBB8_56:                               # %cleanup.320
	callq	errprintf
.LBB8_57:                               # %cleanup.320
	movl	%r13d, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	clist_setup_render_threads, .Lfunc_end8-clist_setup_render_threads
	.cfi_endproc

	.align	16, 0x90
	.type	clist_get_band_from_thread,@function
clist_get_band_from_thread:             # @clist_get_band_from_thread
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp88:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp89:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp90:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp91:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp92:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp93:
	.cfi_def_cfa_offset 80
.Ltmp94:
	.cfi_offset %rbx, -56
.Ltmp95:
	.cfi_offset %r12, -48
.Ltmp96:
	.cfi_offset %r13, -40
.Ltmp97:
	.cfi_offset %r14, -32
.Ltmp98:
	.cfi_offset %r15, -24
.Ltmp99:
	.cfi_offset %rbp, -16
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movl	%esi, %ebx
	movq	%rdi, %r15
	movslq	10264(%r15), %rsi
	movq	10248(%r15), %rcx
	leaq	(%rsi,%rsi,4), %rax
	shlq	$4, %rax
	movl	10132(%r15), %ebp
	movl	10144(%r15), %edx
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	cmpl	%ebx, 48(%rcx,%rax)
	jne	.LBB9_2
# BB#1:
	movq	%rsi, (%rsp)            # 8-byte Spill
	leaq	(%rcx,%rax), %r14
	leaq	32(%rcx,%rax), %rax
	xorl	%r12d, %r12d
	jmp	.LBB9_20
.LBB9_2:                                # %for.cond.preheader
	movl	%ebp, %r12d
	movl	10240(%r15), %eax
	xorl	%r13d, %r13d
	movl	$16, %ebp
	testl	%eax, %eax
	jle	.LBB9_8
# BB#3:
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
	jmp	.LBB9_4
	.align	16, 0x90
.LBB9_29:                               # %if.end.for.body_crit_edge
                                        #   in Loop: Header=BB9_4 Depth=1
	addq	$80, %rbp
	movq	10248(%r15), %rcx
.LBB9_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$2, -16(%rcx,%rbp)
	jne	.LBB9_6
# BB#5:                                 # %if.then.11
                                        #   in Loop: Header=BB9_4 Depth=1
	movq	(%rcx,%rbp), %rdi
	addq	$8, %rdi
	callq	gp_semaphore_wait
	movl	10240(%r15), %eax
.LBB9_6:                                # %if.end
                                        #   in Loop: Header=BB9_4 Depth=1
	incq	%rbx
	movslq	%eax, %rcx
	cmpq	%rcx, %rbx
	jl	.LBB9_29
# BB#7:
	movl	%r14d, %ebx
.LBB9_8:                                # %for.end
	movl	%r12d, %ebp
	xorl	%ecx, %ecx
	subl	10268(%r15), %ecx
	movq	16(%rsp), %rsi          # 8-byte Reload
	leal	-1(%rsi), %edx
	cmpl	%ebx, %edx
	movl	$-1, %edx
	cmovnel	%ecx, %edx
	testl	%ebx, %ebx
	movl	$1, %ecx
	cmovnel	%edx, %ecx
	movl	%ecx, 10268(%r15)
	cmpl	%ebx, %esi
	jle	.LBB9_9
# BB#10:                                # %for.end
	testl	%ebx, %ebx
	js	.LBB9_11
# BB#12:                                # %for.end
	testl	%eax, %eax
	movl	$0, %r12d
	jle	.LBB9_19
# BB#13:
	movl	%ebp, (%rsp)            # 4-byte Spill
	xorl	%ebp, %ebp
	movl	%ebx, %eax
	movl	%eax, %r14d
	.align	16, 0x90
.LBB9_14:                               # %for.body.25
                                        # =>This Inner Loop Header: Depth=1
	movq	10248(%r15), %rax
	movl	%ebx, 48(%rax,%r13)
	movl	$2, (%rax,%r13)
	leaq	56(%rax,%r13), %rdx
	leaq	(%rax,%r13), %rsi
	movl	$clist_render_thread, %edi
	callq	gp_thread_start
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB9_18
# BB#15:                                # %for.inc.34
                                        #   in Loop: Header=BB9_14 Depth=1
	incq	%rbp
	addl	10268(%r15), %ebx
	movq	16(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %ebx
	jge	.LBB9_18
# BB#16:                                # %for.inc.34
                                        #   in Loop: Header=BB9_14 Depth=1
	testl	%ebx, %ebx
	js	.LBB9_18
# BB#17:                                # %for.inc.34
                                        #   in Loop: Header=BB9_14 Depth=1
	movslq	10240(%r15), %rax
	addq	$80, %r13
	cmpq	%rax, %rbp
	jl	.LBB9_14
.LBB9_18:                               # %for.body.25.for.end.37_crit_edge
	movl	%ebp, %r13d
	movl	%r14d, %ebx
	movl	(%rsp), %ebp            # 4-byte Reload
	jmp	.LBB9_19
.LBB9_9:
	xorl	%r12d, %r12d
	jmp	.LBB9_19
.LBB9_11:
	xorl	%r12d, %r12d
.LBB9_19:                               # %for.end.37
	movl	%r13d, 10272(%r15)
	movl	$0, 10264(%r15)
	movq	10248(%r15), %r14
	xorl	%eax, %eax
	movq	%rax, (%rsp)            # 8-byte Spill
	leaq	32(%r14), %rax
.LBB9_20:                               # %if.end.42
	movq	(%rax), %r13
	movq	16(%r14), %rdi
	addq	$8, %rdi
	callq	gp_semaphore_wait
	movq	56(%r14), %rdi
	callq	gp_thread_finish
	movq	$0, 56(%r14)
	movl	$-1, %eax
	cmpl	$-1, (%r14)
	movq	8(%rsp), %rcx           # 8-byte Reload
	je	.LBB9_28
# BB#21:                                # %if.end.51
	testq	%rcx, %rcx
	je	.LBB9_24
# BB#22:                                # %land.lhs.true.52
	movq	24(%rcx), %rax
	testq	%rax, %rax
	je	.LBB9_24
# BB#23:                                # %if.then.54
	movq	32(%rcx), %rdi
	movq	72(%r14), %rdx
	movq	%r15, %rsi
	callq	*%rax
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB9_28
.LBB9_24:                               # %if.end.60
	movq	1776(%r15), %rax
	movq	1776(%r13), %rcx
	movq	%rcx, 1776(%r15)
	movq	%rax, 1776(%r13)
	movl	$0, (%r14)
	movl	$-1, 48(%r14)
	imull	%ebp, %ebx
	movl	%ebx, 1880(%r15)
	addl	%ebp, %ebx
	movl	836(%r15), %eax
	cmpl	%eax, %ebx
	cmovgl	%eax, %ebx
	movl	%ebx, 1884(%r15)
	movl	10272(%r15), %eax
	testl	%eax, %eax
	js	.LBB9_27
# BB#25:                                # %if.end.60
	movq	16(%rsp), %rcx          # 8-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB9_27
# BB#26:                                # %if.then.80
	movq	(%rsp), %rcx            # 8-byte Reload
	movslq	%ecx, %rcx
	movq	10248(%r15), %rdx
	leaq	(%rcx,%rcx,4), %rcx
	shlq	$4, %rcx
	leaq	(%rdx,%rcx), %rsi
	movl	%eax, 48(%rdx,%rcx)
	movl	$2, (%rdx,%rcx)
	leaq	56(%rdx,%rcx), %rdx
	movl	$clist_render_thread, %edi
	callq	gp_thread_start
	movl	%eax, %r12d
	movl	10268(%r15), %eax
	addl	%eax, 10272(%r15)
.LBB9_27:                               # %if.end.86
	movl	10240(%r15), %eax
	movl	10264(%r15), %ecx
	decl	%eax
	leal	1(%rcx), %edx
	xorl	%esi, %esi
	cmpl	%eax, %ecx
	cmovnel	%edx, %esi
	movl	%esi, 10264(%r15)
	movl	%r12d, %eax
.LBB9_28:                               # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	clist_get_band_from_thread, .Lfunc_end9-clist_get_band_from_thread
	.cfi_endproc

	.align	16, 0x90
	.type	clist_render_thread,@function
clist_render_thread:                    # @clist_render_thread
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp100:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp101:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp102:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp103:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp104:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp105:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp106:
	.cfi_def_cfa_offset 96
.Ltmp107:
	.cfi_offset %rbx, -56
.Ltmp108:
	.cfi_offset %r12, -48
.Ltmp109:
	.cfi_offset %r13, -40
.Ltmp110:
	.cfi_offset %r14, -32
.Ltmp111:
	.cfi_offset %r15, -24
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbp
	movq	32(%rbp), %rbx
	movq	40(%rbp), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	10104(%rbx), %r12d
	addq	1776(%rbx), %r12
	movq	10112(%rbx), %rax
	leaq	(%r12,%rax), %r13
	testq	%rax, %rax
	cmoveq	%rax, %r13
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	gx_device_raster_plane
	movl	10132(%rbx), %ecx
	movl	48(%rbp), %r14d
	imull	%ecx, %r14d
	leal	(%rcx,%r14), %r15d
	movl	836(%rbx), %ecx
	cmpl	%ecx, %r15d
	cmovgl	%ecx, %r15d
	movl	%r15d, %r9d
	subl	%r14d, %r9d
	movl	%r9d, (%rsp)
	xorl	%r8d, %r8d
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	%r12, %rsi
	movq	%rbp, %r12
	movl	%eax, %edx
	movq	%r13, %rcx
	callq	*1752(%rbx)
	movl	$0, 24(%rsp)
	movl	%r14d, 28(%rsp)
	movl	832(%rbx), %ecx
	movl	%ecx, 32(%rsp)
	movl	%r15d, 36(%rsp)
	testl	%eax, %eax
	js	.LBB10_5
# BB#1:                                 # %if.end.19
	leaq	24(%rsp), %rsi
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	%rbx, %rdi
	movq	16(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdx
	callq	clist_render_rectangle
	testl	%eax, %eax
	movq	%rbp, %rdx
	js	.LBB10_5
# BB#2:                                 # %land.lhs.true
	movq	64(%r12), %rcx
	testq	%rcx, %rcx
	je	.LBB10_5
# BB#3:                                 # %land.lhs.true.21
	movq	16(%rcx), %r9
	testq	%r9, %r9
	je	.LBB10_5
# BB#4:                                 # %if.then.24
	movq	32(%rcx), %rdi
	movq	72(%r12), %r8
	leaq	24(%rsp), %rcx
	movq	%rbx, %rsi
	callq	*%r9
.LBB10_5:                               # %if.end.29
	movl	%r14d, 1880(%rbx)
	movl	%r15d, 1884(%rbx)
	movq	$0, 10232(%rbx)
	sarl	$31, %eax
	orl	$1, %eax
	movl	%eax, (%r12)
	movq	24(%r12), %rdi
	addq	$8, %rdi
	callq	gp_semaphore_signal
	movq	16(%r12), %rdi
	addq	$8, %rdi
	callq	gp_semaphore_signal
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	clist_render_thread, .Lfunc_end10-clist_render_thread
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"chunk_wrap returned error code: %d\n"
	.size	.L.str, 36

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Error getting device params, code=%d. Rendering threads not started.\n"
	.size	.L.str.1, 70

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"r"
	.size	.L.str.2, 2

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"setup_device_and_mem_for_thread"
	.size	.L.str.3, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"teardown_render_thread"
	.size	.L.str.4, 23

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"clist_teardown_render_threads"
	.size	.L.str.5, 30

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"a+"
	.size	.L.str.6, 3

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%% %d rendering threads requested.\n"
	.size	.L.str.7, 36

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"clist_setup_render_threads"
	.size	.L.str.8, 27

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	" VMerror prevented threads from starting.\n"
	.size	.L.str.9, 43

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"clist_render_setup_threads"
	.size	.L.str.10, 27

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"clist_setup_render_threads(locked allocator)"
	.size	.L.str.11, 45

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Rendering threads not started, code=%d.\n"
	.size	.L.str.12, 41

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%% Using %d rendering threads\n"
	.size	.L.str.13, 31


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
