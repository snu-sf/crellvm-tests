	.text
	.file	"gsmalloc.bc"
	.globl	gs_malloc_memory_init
	.align	16, 0x90
	.type	gs_malloc_memory_init,@function
gs_malloc_memory_init:                  # @gs_malloc_memory_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movl	$256, %edi              # imm = 0x100
	callq	malloc
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB0_2
# BB#1:                                 # %if.end
	movq	$0, (%rbx)
	movq	%rbx, %rdi
	addq	$8, %rdi
	movl	$gs_malloc_memory_procs, %esi
	movl	$184, %edx
	callq	memcpy
	movq	$0, 216(%rbx)
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movd	%rax, %xmm0
	movups	%xmm0, 224(%rbx)
	movq	$0, 240(%rbx)
	movq	$0, 192(%rbx)
	movq	%rbx, 200(%rbx)
	movq	%rbx, 208(%rbx)
	movq	$0, 248(%rbx)
	movq	%rbx, %rdi
	callq	gx_monitor_alloc
	movq	%rax, 248(%rbx)
	movq	%rbx, %rax
.LBB0_2:                                # %cleanup
	popq	%rbx
	retq
.Lfunc_end0:
	.size	gs_malloc_memory_init, .Lfunc_end0-gs_malloc_memory_init
	.cfi_endproc

	.globl	gs_malloc_wrap
	.align	16, 0x90
	.type	gs_malloc_wrap,@function
gs_malloc_wrap:                         # @gs_malloc_wrap
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	gs_malloc_wrap, .Lfunc_end1-gs_malloc_wrap
	.cfi_endproc

	.globl	gs_malloc_wrapped_contents
	.align	16, 0x90
	.type	gs_malloc_wrapped_contents,@function
gs_malloc_wrapped_contents:             # @gs_malloc_wrapped_contents
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	retq
.Lfunc_end2:
	.size	gs_malloc_wrapped_contents, .Lfunc_end2-gs_malloc_wrapped_contents
	.cfi_endproc

	.globl	gs_malloc_unwrap
	.align	16, 0x90
	.type	gs_malloc_unwrap,@function
gs_malloc_unwrap:                       # @gs_malloc_unwrap
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	retq
.Lfunc_end3:
	.size	gs_malloc_unwrap, .Lfunc_end3-gs_malloc_unwrap
	.cfi_endproc

	.globl	gs_malloc_init
	.align	16, 0x90
	.type	gs_malloc_init,@function
gs_malloc_init:                         # @gs_malloc_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 16
.Ltmp3:
	.cfi_offset %rbx, -16
	movl	$256, %edi              # imm = 0x100
	callq	malloc
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB4_3
# BB#1:                                 # %gs_malloc_memory_init.exit
	movq	$0, (%rbx)
	movq	%rbx, %rdi
	addq	$8, %rdi
	movl	$gs_malloc_memory_procs, %esi
	movl	$184, %edx
	callq	memcpy
	movq	$0, 216(%rbx)
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movd	%rax, %xmm0
	movups	%xmm0, 224(%rbx)
	movq	$0, 240(%rbx)
	movq	$0, 192(%rbx)
	movq	%rbx, 200(%rbx)
	movq	%rbx, 208(%rbx)
	movq	$0, 248(%rbx)
	movq	%rbx, %rdi
	callq	gx_monitor_alloc
	movq	%rax, 248(%rbx)
	movq	%rbx, %rdi
	callq	gs_lib_ctx_init
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.LBB4_3
# BB#2:                                 # %if.end.4
	movq	%rbx, (%rbx)
	movq	%rbx, %rax
.LBB4_3:                                # %cleanup
	popq	%rbx
	retq
.Lfunc_end4:
	.size	gs_malloc_init, .Lfunc_end4-gs_malloc_init
	.cfi_endproc

	.globl	gs_malloc_release
	.align	16, 0x90
	.type	gs_malloc_release,@function
gs_malloc_release:                      # @gs_malloc_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp6:
	.cfi_def_cfa_offset 32
.Ltmp7:
	.cfi_offset %rbx, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB5_4
# BB#1:                                 # %if.end
	cmpb	$0, gs_debug+58(%rip)
	je	.LBB5_3
# BB#2:                                 # %if.then.1
	movb	gs_debug+97(%rip), %bpl
	movb	$1, gs_debug+97(%rip)
	movl	$8, %esi
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	callq	*8(%rbx)
	movb	%bpl, gs_debug+97(%rip)
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	*24(%rbx)
.LBB5_3:                                # %if.end.3
	movq	%rbx, %rdi
	callq	gs_lib_ctx_fin
	movq	48(%rbx), %rax
	movl	$7, %esi
	movl	$.L.str.1, %edx
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB5_4:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gs_malloc_release, .Lfunc_end5-gs_malloc_release
	.cfi_endproc

	.align	16, 0x90
	.type	gs_heap_alloc_bytes,@function
gs_heap_alloc_bytes:                    # @gs_heap_alloc_bytes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp12:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 48
.Ltmp14:
	.cfi_offset %rbx, -48
.Ltmp15:
	.cfi_offset %r12, -40
.Ltmp16:
	.cfi_offset %r14, -32
.Ltmp17:
	.cfi_offset %r15, -24
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movq	248(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB6_2
# BB#1:                                 # %if.then
	addq	$8, %rdi
	callq	gp_monitor_enter
.LBB6_2:                                # %if.end
	movl	%r15d, %ebp
	movq	224(%rbx), %rax
	leaq	-48(%rax), %rcx
	xorl	%r12d, %r12d
	cmpq	%rcx, %rbp
	ja	.LBB6_10
# BB#3:                                 # %if.else
	addq	$48, %rbp
	movl	%ebp, %edi
	subq	%rdi, %rax
	xorl	%r12d, %r12d
	cmpq	232(%rbx), %rax
	jl	.LBB6_10
# BB#4:                                 # %if.else.15
	callq	malloc
	xorl	%r12d, %r12d
	testq	%rax, %rax
	je	.LBB6_10
# BB#5:                                 # %if.else.24
	movq	216(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB6_7
# BB#6:                                 # %if.then.29
	movq	%rax, 8(%rcx)
.LBB6_7:                                # %if.end.31
	movq	%rcx, (%rax)
	movq	$0, 8(%rax)
	movl	%r15d, 16(%rax)
	movq	$st_bytes, 24(%rax)
	movq	%r14, 32(%rax)
	movq	%rax, 216(%rbx)
	addq	$48, %rax
	addq	232(%rbx), %rbp
	movq	%rbp, 232(%rbx)
	cmpq	240(%rbx), %rbp
	jle	.LBB6_9
# BB#8:                                 # %if.then.44
	movq	%rbp, 240(%rbx)
.LBB6_9:                                # %if.end.50
	movq	%rax, %r12
.LBB6_10:                               # %if.end.50
	movq	248(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB6_12
# BB#11:                                # %if.then.53
	addq	$8, %rdi
	callq	gp_monitor_leave
.LBB6_12:                               # %if.end.57
	movq	%r12, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gs_heap_alloc_bytes, .Lfunc_end6-gs_heap_alloc_bytes
	.cfi_endproc

	.align	16, 0x90
	.type	gs_heap_resize_object,@function
gs_heap_resize_object:                  # @gs_heap_resize_object
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp20:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp21:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp22:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp23:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp25:
	.cfi_def_cfa_offset 64
.Ltmp26:
	.cfi_offset %rbx, -56
.Ltmp27:
	.cfi_offset %r12, -48
.Ltmp28:
	.cfi_offset %r13, -40
.Ltmp29:
	.cfi_offset %r14, -32
.Ltmp30:
	.cfi_offset %r15, -24
.Ltmp31:
	.cfi_offset %rbp, -16
	movl	%edx, %r12d
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	-24(%rbx), %r15
	callq	*120(%r14)
	movl	%eax, %ebp
	movq	%r15, %rdi
	callq	gs_struct_type_size
	movl	%eax, %r15d
	imull	%r12d, %r15d
	cmpl	%ebp, %r15d
	je	.LBB7_12
# BB#1:                                 # %if.end
	addq	$-48, %rbx
	addl	$48, %ebp
	leal	48(%r15), %r12d
	movq	248(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB7_3
# BB#2:                                 # %if.then.7
	addq	$8, %rdi
	callq	gp_monitor_enter
.LBB7_3:                                # %if.end.10
	movl	%ebp, %r13d
	movl	%r12d, %ebp
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	callq	gs_realloc
	movq	%rax, %r12
	xorl	%ebx, %ebx
	testq	%r12, %r12
	je	.LBB7_12
# BB#4:                                 # %if.end.17
	movq	8(%r12), %rax
	testq	%rax, %rax
	je	.LBB7_6
# BB#5:                                 # %if.then.19
	movq	%r12, (%rax)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else
	movq	%r12, 216(%r14)
.LBB7_7:                                # %if.end.21
	movq	(%r12), %rax
	testq	%rax, %rax
	je	.LBB7_9
# BB#8:                                 # %if.then.24
	movq	%r12, 8(%rax)
.LBB7_9:                                # %if.end.27
	movl	%r15d, 16(%r12)
	subq	%r13, %rbp
	addq	%rbp, 232(%r14)
	movq	248(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB7_11
# BB#10:                                # %if.then.37
	addq	$8, %rdi
	callq	gp_monitor_leave
.LBB7_11:                               # %if.end.41
	addq	$48, %r12
	movq	%r12, %rbx
.LBB7_12:                               # %cleanup
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gs_heap_resize_object, .Lfunc_end7-gs_heap_resize_object
	.cfi_endproc

	.align	16, 0x90
	.type	gs_heap_free_object,@function
gs_heap_free_object:                    # @gs_heap_free_object
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp32:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp33:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp34:
	.cfi_def_cfa_offset 32
.Ltmp35:
	.cfi_offset %rbx, -32
.Ltmp36:
	.cfi_offset %r14, -24
.Ltmp37:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testq	%rbx, %rbx
	je	.LBB8_14
# BB#1:                                 # %if.end
	movq	-24(%rbx), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.LBB8_3
# BB#2:                                 # %do.end.6
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*%rax
.LBB8_3:                                # %if.end.7
	movq	248(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB8_5
# BB#4:                                 # %if.then.8
	addq	$8, %rdi
	callq	gp_monitor_enter
.LBB8_5:                                # %if.end.10
	leaq	-48(%rbx), %r15
	movq	-40(%rbx), %rax
	testq	%rax, %rax
	je	.LBB8_7
# BB#6:                                 # %if.then.13
	movq	(%r15), %rcx
	movq	%rcx, (%rax)
.LBB8_7:                                # %if.end.16
	movq	(%r15), %rcx
	testq	%rcx, %rcx
	je	.LBB8_9
# BB#8:                                 # %if.then.19
	movq	%rax, 8(%rcx)
.LBB8_9:                                # %if.end.23
	cmpq	216(%r14), %r15
	jne	.LBB8_11
# BB#10:                                # %if.then.25
	movq	%rcx, 216(%r14)
	movq	$0, 8(%rcx)
.LBB8_11:                               # %if.end.30
	movl	-32(%rbx), %eax
	movq	$-48, %rcx
	subq	%rax, %rcx
	addq	%rcx, 232(%r14)
	movq	248(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB8_13
# BB#12:                                # %if.then.33
	addq	$8, %rdi
	callq	gp_monitor_leave
.LBB8_13:                               # %do.end.43
	movq	%r15, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	free                    # TAILCALL
.LBB8_14:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end8:
	.size	gs_heap_free_object, .Lfunc_end8-gs_heap_free_object
	.cfi_endproc

	.align	16, 0x90
	.type	gs_heap_stable,@function
gs_heap_stable:                         # @gs_heap_stable
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	retq
.Lfunc_end9:
	.size	gs_heap_stable, .Lfunc_end9-gs_heap_stable
	.cfi_endproc

	.align	16, 0x90
	.type	gs_heap_status,@function
gs_heap_status:                         # @gs_heap_status
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp39:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp40:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp41:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp42:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp43:
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
.Ltmp44:
	.cfi_def_cfa_offset 224
.Ltmp45:
	.cfi_offset %rbx, -56
.Ltmp46:
	.cfi_offset %r12, -48
.Ltmp47:
	.cfi_offset %r13, -40
.Ltmp48:
	.cfi_offset %r14, -32
.Ltmp49:
	.cfi_offset %r15, -24
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsi, %r12
	movq	%rdi, %r14
	movq	232(%r14), %r15
	xorl	%ebx, %ebx
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB10_1:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$64000, %edi            # imm = 0xFA00
	callq	malloc
	movq	%rax, (%rsp,%rbx,8)
	testq	%rax, %rax
	je	.LBB10_2
# BB#6:                                 # %do.end.i
                                        #   in Loop: Header=BB10_1 Depth=1
	addq	$64000, %r13            # imm = 0xFA00
	incq	%rbx
	cmpq	$20, %rbx
	jb	.LBB10_1
.LBB10_2:                               # %while.cond.preheader.i
	testl	%ebx, %ebx
	je	.LBB10_5
# BB#3:                                 # %while.body.lr.ph.i
	leal	-1(%rbx), %eax
	leaq	(%rsp,%rax,8), %rbp
	.align	16, 0x90
.LBB10_4:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbp), %rdi
	callq	free
	addq	$-8, %rbp
	decl	%ebx
	jne	.LBB10_4
.LBB10_5:                               # %heap_available.exit
	addq	%r15, %r13
	movq	%r13, (%r12)
	movq	232(%r14), %rax
	movq	%rax, 8(%r12)
	movl	$1, 16(%r12)
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gs_heap_status, .Lfunc_end10-gs_heap_status
	.cfi_endproc

	.align	16, 0x90
	.type	gs_heap_free_all,@function
gs_heap_free_all:                       # @gs_heap_free_all
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp52:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp53:
	.cfi_def_cfa_offset 32
.Ltmp54:
	.cfi_offset %rbx, -32
.Ltmp55:
	.cfi_offset %r14, -24
.Ltmp56:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movq	248(%rbx), %rdi
	movq	$0, 248(%rbx)
	callq	gx_monitor_free
	testb	$1, %r14b
	je	.LBB11_3
# BB#1:                                 # %if.then
	movq	216(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB11_3
	.align	16, 0x90
.LBB11_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdi), %rbp
	callq	free
	testq	%rbp, %rbp
	movq	%rbp, %rdi
	jne	.LBB11_2
.LBB11_3:                               # %if.end
	testb	$4, %r14b
	jne	.LBB11_5
# BB#4:                                 # %if.end.11
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB11_5:                               # %if.then.10
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	free                    # TAILCALL
.Lfunc_end11:
	.size	gs_heap_free_all, .Lfunc_end11-gs_heap_free_all
	.cfi_endproc

	.align	16, 0x90
	.type	gs_heap_alloc_struct,@function
gs_heap_alloc_struct:                   # @gs_heap_alloc_struct
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp57:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp58:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp59:
	.cfi_def_cfa_offset 32
.Ltmp60:
	.cfi_offset %rbx, -32
.Ltmp61:
	.cfi_offset %r14, -24
.Ltmp62:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	%r15, %rdi
	callq	gs_struct_type_size
	movq	%rbx, %rdi
	movl	%eax, %esi
	movq	%r14, %rdx
	callq	gs_heap_alloc_bytes
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB12_2
# BB#1:                                 # %if.end
	movq	%r15, -24(%rax)
	movq	%rax, %rcx
.LBB12_2:                               # %cleanup
	movq	%rcx, %rax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end12:
	.size	gs_heap_alloc_struct, .Lfunc_end12-gs_heap_alloc_struct
	.cfi_endproc

	.align	16, 0x90
	.type	gs_heap_alloc_byte_array,@function
gs_heap_alloc_byte_array:               # @gs_heap_alloc_byte_array
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, %eax
	mull	%edx
	jno	.LBB13_2
# BB#1:                                 # %cleanup
	xorl	%eax, %eax
	retq
.LBB13_2:                               # %if.end
	movl	%eax, %esi
	movq	%rcx, %rdx
	jmp	gs_heap_alloc_bytes     # TAILCALL
.Lfunc_end13:
	.size	gs_heap_alloc_byte_array, .Lfunc_end13-gs_heap_alloc_byte_array
	.cfi_endproc

	.align	16, 0x90
	.type	gs_heap_alloc_struct_array,@function
gs_heap_alloc_struct_array:             # @gs_heap_alloc_struct_array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp64:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp65:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp66:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp67:
	.cfi_def_cfa_offset 48
.Ltmp68:
	.cfi_offset %rbx, -40
.Ltmp69:
	.cfi_offset %r14, -32
.Ltmp70:
	.cfi_offset %r15, -24
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movl	%esi, %ebp
	movq	%rdi, %r15
	movq	%rbx, %rdi
	callq	gs_struct_type_size
	movl	%eax, %edx
	xorl	%ecx, %ecx
	movl	%ebp, %eax
	mull	%edx
	jo	.LBB14_3
# BB#1:                                 # %gs_heap_alloc_byte_array.exit
	movq	%r15, %rdi
	movl	%eax, %esi
	movq	%r14, %rdx
	callq	gs_heap_alloc_bytes
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB14_3
# BB#2:                                 # %if.end
	movq	%rbx, -24(%rax)
	movq	%rax, %rcx
.LBB14_3:                               # %cleanup
	movq	%rcx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gs_heap_alloc_struct_array, .Lfunc_end14-gs_heap_alloc_struct_array
	.cfi_endproc

	.align	16, 0x90
	.type	gs_heap_object_size,@function
gs_heap_object_size:                    # @gs_heap_object_size
	.cfi_startproc
# BB#0:                                 # %entry
	movl	-32(%rsi), %eax
	retq
.Lfunc_end15:
	.size	gs_heap_object_size, .Lfunc_end15-gs_heap_object_size
	.cfi_endproc

	.align	16, 0x90
	.type	gs_heap_object_type,@function
gs_heap_object_type:                    # @gs_heap_object_type
	.cfi_startproc
# BB#0:                                 # %entry
	movq	-24(%rsi), %rax
	retq
.Lfunc_end16:
	.size	gs_heap_object_type, .Lfunc_end16-gs_heap_object_type
	.cfi_endproc

	.align	16, 0x90
	.type	gs_heap_alloc_string,@function
gs_heap_alloc_string:                   # @gs_heap_alloc_string
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	gs_heap_alloc_bytes     # TAILCALL
.Lfunc_end17:
	.size	gs_heap_alloc_string, .Lfunc_end17-gs_heap_alloc_string
	.cfi_endproc

	.align	16, 0x90
	.type	gs_heap_resize_string,@function
gs_heap_resize_string:                  # @gs_heap_resize_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp73:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp74:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp75:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp76:
	.cfi_def_cfa_offset 48
.Ltmp77:
	.cfi_offset %rbx, -48
.Ltmp78:
	.cfi_offset %r12, -40
.Ltmp79:
	.cfi_offset %r14, -32
.Ltmp80:
	.cfi_offset %r15, -24
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%r8, %r12
	movl	%ecx, %r14d
	movq	%rsi, %rbp
	movq	%rdi, %r15
	movl	$st_bytes, %eax
	cmpq	%rax, -24(%rbp)
	je	.LBB18_2
# BB#1:                                 # %if.then
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.2, %edi
	movl	$405, %esi              # imm = 0x195
	callq	lprintf_file_and_line
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	errprintf_nomem
.LBB18_2:                               # %if.end
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movl	%r14d, %edx
	movq	%r12, %rcx
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gs_heap_resize_object   # TAILCALL
.Lfunc_end18:
	.size	gs_heap_resize_string, .Lfunc_end18-gs_heap_resize_string
	.cfi_endproc

	.align	16, 0x90
	.type	gs_heap_free_string,@function
gs_heap_free_string:                    # @gs_heap_free_string
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rcx, %rdx
	jmp	gs_heap_free_object     # TAILCALL
.Lfunc_end19:
	.size	gs_heap_free_string, .Lfunc_end19-gs_heap_free_string
	.cfi_endproc

	.align	16, 0x90
	.type	gs_heap_register_root,@function
gs_heap_register_root:                  # @gs_heap_register_root
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end20:
	.size	gs_heap_register_root, .Lfunc_end20-gs_heap_register_root
	.cfi_endproc

	.align	16, 0x90
	.type	gs_heap_unregister_root,@function
gs_heap_unregister_root:                # @gs_heap_unregister_root
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end21:
	.size	gs_heap_unregister_root, .Lfunc_end21-gs_heap_unregister_root
	.cfi_endproc

	.align	16, 0x90
	.type	gs_heap_enable_free,@function
gs_heap_enable_free:                    # @gs_heap_enable_free
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%esi, %esi
	movl	$gs_ignore_free_object, %eax
	movl	$gs_heap_free_object, %ecx
	cmoveq	%rax, %rcx
	movl	$gs_ignore_free_string, %eax
	movl	$gs_heap_free_string, %edx
	cmoveq	%rax, %rdx
	movq	%rcx, 24(%rdi)
	movq	%rdx, 160(%rdi)
	retq
.Lfunc_end22:
	.size	gs_heap_enable_free, .Lfunc_end22-gs_heap_enable_free
	.cfi_endproc

	.type	gs_malloc_memory_procs,@object # @gs_malloc_memory_procs
	.section	.rodata,"a",@progbits
	.align	8
gs_malloc_memory_procs:
	.quad	gs_heap_alloc_bytes
	.quad	gs_heap_resize_object
	.quad	gs_heap_free_object
	.quad	gs_heap_stable
	.quad	gs_heap_status
	.quad	gs_heap_free_all
	.quad	gs_ignore_consolidate_free
	.quad	gs_heap_alloc_bytes
	.quad	gs_heap_alloc_struct
	.quad	gs_heap_alloc_struct
	.quad	gs_heap_alloc_byte_array
	.quad	gs_heap_alloc_byte_array
	.quad	gs_heap_alloc_struct_array
	.quad	gs_heap_alloc_struct_array
	.quad	gs_heap_object_size
	.quad	gs_heap_object_type
	.quad	gs_heap_alloc_string
	.quad	gs_heap_alloc_string
	.quad	gs_heap_resize_string
	.quad	gs_heap_free_string
	.quad	gs_heap_register_root
	.quad	gs_heap_unregister_root
	.quad	gs_heap_enable_free
	.size	gs_malloc_memory_procs, 184

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_malloc_release"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gs_malloc_memory_release"
	.size	.L.str.1, 25

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"./base/gsmalloc.c"
	.size	.L.str.2, 18

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%s: resizing non-string 0x%lx!\n"
	.size	.L.str.3, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
