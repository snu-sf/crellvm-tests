	.text
	.file	"gsmchunk.bc"
	.globl	gs_memory_chunk_wrap
	.align	16, 0x90
	.type	gs_memory_chunk_wrap,@function
gs_memory_chunk_wrap:                   # @gs_memory_chunk_wrap
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
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	200(%rsi), %r15
	movq	$0, (%r14)
	movl	$-25, %ebp
	testq	%r15, %r15
	je	.LBB0_3
# BB#1:                                 # %if.end
	movl	$248, %esi
	movl	$.L.str, %edx
	movq	%r15, %rdi
	callq	*8(%r15)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB0_3
# BB#2:                                 # %if.end.2
	movq	%rbx, (%rbx)
	movq	%rbx, %rdi
	addq	$8, %rdi
	movl	$chunk_procs, %esi
	movl	$184, %edx
	callq	memcpy
	movq	192(%r15), %rax
	movq	%rax, 192(%rbx)
	movq	%rbx, 200(%rbx)
	movq	208(%r15), %rax
	movq	%rax, 208(%rbx)
	movq	%r15, 216(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 224(%rbx)
	movq	$0, 240(%rbx)
	movq	%rbx, (%r14)
	xorl	%ebp, %ebp
.LBB0_3:                                # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gs_memory_chunk_wrap, .Lfunc_end0-gs_memory_chunk_wrap
	.cfi_endproc

	.globl	gs_memory_chunk_release
	.align	16, 0x90
	.type	gs_memory_chunk_release,@function
gs_memory_chunk_release:                # @gs_memory_chunk_release
	.cfi_startproc
# BB#0:                                 # %entry
	movq	48(%rdi), %rax
	movl	$7, %esi
	movl	$.L.str.1, %edx
	jmpq	*%rax                   # TAILCALL
.Lfunc_end1:
	.size	gs_memory_chunk_release, .Lfunc_end1-gs_memory_chunk_release
	.cfi_endproc

	.globl	gs_memory_chunk_target
	.align	16, 0x90
	.type	gs_memory_chunk_target,@function
gs_memory_chunk_target:                 # @gs_memory_chunk_target
	.cfi_startproc
# BB#0:                                 # %entry
	movq	216(%rdi), %rax
	retq
.Lfunc_end2:
	.size	gs_memory_chunk_target, .Lfunc_end2-gs_memory_chunk_target
	.cfi_endproc

	.align	16, 0x90
	.type	chunk_alloc_bytes_immovable,@function
chunk_alloc_bytes_immovable:            # @chunk_alloc_bytes_immovable
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rax
	movl	$st_bytes, %edx
	movq	%rax, %rcx
	jmp	chunk_obj_alloc         # TAILCALL
.Lfunc_end3:
	.size	chunk_alloc_bytes_immovable, .Lfunc_end3-chunk_alloc_bytes_immovable
	.cfi_endproc

	.align	16, 0x90
	.type	chunk_resize_object,@function
chunk_resize_object:                    # @chunk_resize_object
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
	pushq	%r13
.Ltmp12:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp13:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp15:
	.cfi_def_cfa_offset 64
.Ltmp16:
	.cfi_offset %rbx, -56
.Ltmp17:
	.cfi_offset %r12, -48
.Ltmp18:
	.cfi_offset %r13, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%edx, %ebx
	movq	%rsi, %r12
	movq	%rdi, %r15
	movq	-16(%r12), %rdx
	imull	(%rdx), %ebx
	movl	-8(%r12), %r13d
	cmpl	%r13d, %ebx
	jne	.LBB4_2
# BB#1:
	movq	%r12, %rax
	jmp	.LBB4_4
.LBB4_2:                                # %if.end
	movq	%r15, %rdi
	movl	%ebx, %esi
	movq	%r14, %rcx
	callq	chunk_obj_alloc
	movq	%rax, %rbp
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.LBB4_4
# BB#3:                                 # %if.end.9
	cmpq	%rbx, %r13
	cmovaeq	%rbx, %r13
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	memcpy
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	chunk_free_object
	movq	%rbp, %rax
.LBB4_4:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	chunk_resize_object, .Lfunc_end4-chunk_resize_object
	.cfi_endproc

	.align	16, 0x90
	.type	chunk_free_object,@function
chunk_free_object:                      # @chunk_free_object
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp22:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp23:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 32
.Ltmp25:
	.cfi_offset %rbx, -32
.Ltmp26:
	.cfi_offset %r14, -24
.Ltmp27:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	testq	%r14, %r14
	je	.LBB5_31
# BB#1:                                 # %if.end
	movq	-16(%r14), %rax
	movq	48(%rax), %rcx
	movl	-8(%r14), %eax
	addl	$40, %eax
	addq	$39, %rax
	movabsq	$-3689348814741910323, %rdx # imm = 0xCCCCCCCCCCCCCCCD
	mulq	%rdx
	movq	%rdx, %r15
	testq	%rcx, %rcx
	je	.LBB5_3
# BB#2:                                 # %if.then.3
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*%rcx
.LBB5_3:                                # %if.end.4
	movq	-24(%r14), %rsi
	movl	8(%rsi), %ecx
	testl	%ecx, %ecx
	je	.LBB5_5
# BB#4:                                 # %lor.lhs.false
	movq	32(%rsi), %rax
	cmpq	$0, (%rax)
	je	.LBB5_5
# BB#12:                                # %if.end.9
	shrq	$2, %r15
	movabsq	$4611686018427387896, %rax # imm = 0x3FFFFFFFFFFFFFF8
	andq	%r15, %rax
	leaq	(%rax,%rax,4), %r8
	leaq	-40(%r14), %rax
	movq	-40(%r14), %rdx
	movq	-32(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB5_13
# BB#15:                                # %if.else
	movq	%rdx, (%rdi)
	movq	(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB5_17
# BB#16:                                # %if.then.23
	movq	%rdi, 8(%rcx)
	jmp	.LBB5_17
.LBB5_5:                                # %if.then.7
	leaq	224(%rbx), %rdx
	leaq	232(%rbx), %rax
	testl	%ecx, %ecx
	cmovneq	%rdx, %rax
	movq	(%rax), %rcx
	movq	216(%rbx), %rdi
	movl	(%rsi), %edx
	subq	%rdx, 240(%rbx)
	testq	%rcx, %rcx
	je	.LBB5_32
# BB#6:                                 # %if.end.i
	cmpq	%rsi, %rcx
	je	.LBB5_7
# BB#10:                                # %if.else.i
	movq	16(%rsi), %rcx
	movq	24(%rsi), %rax
	movq	%rcx, 16(%rax)
	movq	16(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB5_9
# BB#11:                                # %if.then.18.i
	movq	%rax, 24(%rcx)
	jmp	.LBB5_9
.LBB5_32:                               # %if.then.i
	movl	$.L.str.4, %esi
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	errprintf               # TAILCALL
.LBB5_13:                               # %if.then.11
	movq	%rdx, 32(%rsi)
	testq	%rdx, %rdx
	je	.LBB5_17
# BB#14:                                # %if.then.15
	movq	$0, 8(%rdx)
.LBB5_17:                               # %do.end
	movl	%r8d, -32(%r14)
	leaq	40(%rsi), %r9
	xorl	%edx, %edx
	movq	%r9, %rdi
	.align	16, 0x90
.LBB5_18:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rcx
	movq	(%rdi), %rdx
	testq	%rdx, %rdx
	sete	%bl
	cmpq	%rdx, %rax
	jb	.LBB5_20
# BB#19:                                # %for.cond
                                        #   in Loop: Header=BB5_18 Depth=1
	testb	%bl, %bl
	movq	%rdx, %rdi
	je	.LBB5_18
.LBB5_20:                               # %for.end
	testq	%rcx, %rcx
	je	.LBB5_21
# BB#22:                                # %if.else.39
	movq	%rdx, (%rax)
	movq	%rax, (%rcx)
	jmp	.LBB5_23
.LBB5_21:                               # %if.then.35
	movq	(%r9), %rdi
	movq	%rdi, (%rax)
	movq	%rax, (%r9)
.LBB5_23:                               # %if.end.42
	testq	%rdx, %rdx
	je	.LBB5_26
# BB#24:                                # %if.then.44
	movl	%r8d, %edi
	leaq	(%rdi,%rax), %rdi
	cmpq	%rdi, %rdx
	ja	.LBB5_26
# BB#25:                                # %if.then.48
	movq	(%rdx), %rdi
	movq	%rdi, -40(%r14)
	movq	%rdx, %rdi
	subq	%rax, %rdi
	movl	8(%rdx), %r8d
	addq	%rdi, %r8
	movl	%r8d, -32(%r14)
.LBB5_26:                               # %if.end.56
	testq	%rcx, %rcx
	je	.LBB5_29
# BB#27:                                # %if.then.59
	movl	8(%rcx), %edx
	leaq	(%rdx,%rcx), %rdx
	cmpq	%rdx, %rax
	ja	.LBB5_29
# BB#28:                                # %if.then.65
	movl	%eax, %edx
	subl	%ecx, %edx
	addl	%edx, %r8d
	movl	%r8d, 8(%rcx)
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	%rcx, %rax
.LBB5_29:                               # %if.end.77
	movl	8(%rax), %eax
	cmpl	%eax, 4(%rsi)
	jae	.LBB5_31
# BB#30:                                # %if.then.81
	movl	%eax, 4(%rsi)
.LBB5_31:                               # %cleanup.93
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB5_7:                                # %if.then.5.i
	movq	16(%rsi), %rcx
	movq	%rcx, (%rax)
	movq	16(%rsi), %rax
	testq	%rax, %rax
	je	.LBB5_9
# BB#8:                                 # %if.then.9.i
	movq	$0, 24(%rax)
.LBB5_9:                                # %if.end.11.i
	movq	24(%rdi), %rax
	movl	$.L.str.5, %edx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmpq	*%rax                   # TAILCALL
.Lfunc_end5:
	.size	chunk_free_object, .Lfunc_end5-chunk_free_object
	.cfi_endproc

	.align	16, 0x90
	.type	chunk_stable,@function
chunk_stable:                           # @chunk_stable
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	retq
.Lfunc_end6:
	.size	chunk_stable, .Lfunc_end6-chunk_stable
	.cfi_endproc

	.align	16, 0x90
	.type	chunk_status,@function
chunk_status:                           # @chunk_status
	.cfi_startproc
# BB#0:                                 # %entry
	movq	224(%rdi), %rdx
	movq	240(%rdi), %rax
	movq	%rax, (%rsi)
	xorl	%ecx, %ecx
	jmp	.LBB7_1
	.align	16, 0x90
.LBB7_5:                                # %for.inc.4
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	16(%rdx), %rdx
.LBB7_1:                                # %entry
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_4 Depth 2
	testq	%rdx, %rdx
	je	.LBB7_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	40(%rdx), %rdi
	jmp	.LBB7_4
	.align	16, 0x90
.LBB7_3:                                # %for.body.3
                                        #   in Loop: Header=BB7_4 Depth=2
	addl	8(%rdi), %ecx
	movq	(%rdi), %rdi
.LBB7_4:                                # %for.body.3
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rdi, %rdi
	jne	.LBB7_3
	jmp	.LBB7_5
.LBB7_6:                                # %for.end.6
	movslq	%ecx, %rcx
	subq	%rcx, %rax
	movq	%rax, 8(%rsi)
	movl	$0, 16(%rsi)
	retq
.Lfunc_end7:
	.size	chunk_status, .Lfunc_end7-chunk_status
	.cfi_endproc

	.align	16, 0x90
	.type	chunk_free_all,@function
chunk_free_all:                         # @chunk_free_all
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp29:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp30:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp31:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp32:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp34:
	.cfi_def_cfa_offset 64
.Ltmp35:
	.cfi_offset %rbx, -56
.Ltmp36:
	.cfi_offset %r12, -48
.Ltmp37:
	.cfi_offset %r13, -40
.Ltmp38:
	.cfi_offset %r14, -32
.Ltmp39:
	.cfi_offset %r15, -24
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%esi, %r12d
	movq	%rdi, %r13
	movq	(%r13), %rdi
	movq	216(%r13), %r15
	testq	%rdi, %rdi
	je	.LBB8_5
# BB#1:                                 # %if.then
	cmpq	%r13, %rdi
	je	.LBB8_3
# BB#2:                                 # %if.then.3
	movl	%r12d, %esi
	movq	%r14, %rdx
	callq	*48(%rdi)
.LBB8_3:                                # %if.end
	testb	$4, %r12b
	je	.LBB8_5
# BB#4:                                 # %if.then.7
	movq	$0, (%r13)
.LBB8_5:                                # %if.end.10
	testb	$1, %r12b
	je	.LBB8_11
# BB#6:                                 # %if.then.13
	movq	216(%r13), %rbp
	movq	224(%r13), %rsi
	testq	%rsi, %rsi
	je	.LBB8_8
	.align	16, 0x90
.LBB8_7:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rsi), %rbx
	movl	$.L.str.5, %edx
	movq	%rbp, %rdi
	callq	*24(%rbp)
	testq	%rbx, %rbx
	movq	%rbx, %rsi
	jne	.LBB8_7
.LBB8_8:                                # %while.end.i
	movq	$0, 224(%r13)
	movq	232(%r13), %rsi
	testq	%rsi, %rsi
	je	.LBB8_10
	.align	16, 0x90
.LBB8_9:                                # %while.body.1.i
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rsi), %rbx
	movl	$.L.str.5, %edx
	movq	%rbp, %rdi
	callq	*24(%rbp)
	testq	%rbx, %rbx
	movq	%rbx, %rsi
	jne	.LBB8_9
.LBB8_10:                               # %chunk_mem_node_free_all_remaining.exit
	xorps	%xmm0, %xmm0
	movups	%xmm0, 224(%r13)
.LBB8_11:                               # %if.end.14
	testb	$2, %r12b
	je	.LBB8_13
# BB#12:                                # %if.then.17
	movq	$0, 216(%r13)
.LBB8_13:                               # %if.end.19
	testb	$4, %r12b
	jne	.LBB8_15
# BB#14:                                # %if.end.24
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_15:                               # %if.then.22
	movq	24(%r15), %rax
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.Lfunc_end8:
	.size	chunk_free_all, .Lfunc_end8-chunk_free_all
	.cfi_endproc

	.align	16, 0x90
	.type	chunk_consolidate_free,@function
chunk_consolidate_free:                 # @chunk_consolidate_free
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end9:
	.size	chunk_consolidate_free, .Lfunc_end9-chunk_consolidate_free
	.cfi_endproc

	.align	16, 0x90
	.type	chunk_alloc_bytes,@function
chunk_alloc_bytes:                      # @chunk_alloc_bytes
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rax
	movl	$st_bytes, %edx
	movq	%rax, %rcx
	jmp	chunk_obj_alloc         # TAILCALL
.Lfunc_end10:
	.size	chunk_alloc_bytes, .Lfunc_end10-chunk_alloc_bytes
	.cfi_endproc

	.align	16, 0x90
	.type	chunk_alloc_struct,@function
chunk_alloc_struct:                     # @chunk_alloc_struct
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rax
	movq	%rsi, %rcx
	movl	(%rcx), %esi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	jmp	chunk_obj_alloc         # TAILCALL
.Lfunc_end11:
	.size	chunk_alloc_struct, .Lfunc_end11-chunk_alloc_struct
	.cfi_endproc

	.align	16, 0x90
	.type	chunk_alloc_struct_immovable,@function
chunk_alloc_struct_immovable:           # @chunk_alloc_struct_immovable
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rax
	movq	%rsi, %rcx
	movl	(%rcx), %esi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	jmp	chunk_obj_alloc         # TAILCALL
.Lfunc_end12:
	.size	chunk_alloc_struct_immovable, .Lfunc_end12-chunk_alloc_struct_immovable
	.cfi_endproc

	.align	16, 0x90
	.type	chunk_alloc_byte_array,@function
chunk_alloc_byte_array:                 # @chunk_alloc_byte_array
	.cfi_startproc
# BB#0:                                 # %entry
	imull	%edx, %esi
	movl	$st_bytes, %edx
	jmp	chunk_obj_alloc         # TAILCALL
.Lfunc_end13:
	.size	chunk_alloc_byte_array, .Lfunc_end13-chunk_alloc_byte_array
	.cfi_endproc

	.align	16, 0x90
	.type	chunk_alloc_byte_array_immovable,@function
chunk_alloc_byte_array_immovable:       # @chunk_alloc_byte_array_immovable
	.cfi_startproc
# BB#0:                                 # %entry
	imull	%edx, %esi
	movl	$st_bytes, %edx
	jmp	chunk_obj_alloc         # TAILCALL
.Lfunc_end14:
	.size	chunk_alloc_byte_array_immovable, .Lfunc_end14-chunk_alloc_byte_array_immovable
	.cfi_endproc

	.align	16, 0x90
	.type	chunk_alloc_struct_array,@function
chunk_alloc_struct_array:               # @chunk_alloc_struct_array
	.cfi_startproc
# BB#0:                                 # %entry
	imull	(%rdx), %esi
	jmp	chunk_obj_alloc         # TAILCALL
.Lfunc_end15:
	.size	chunk_alloc_struct_array, .Lfunc_end15-chunk_alloc_struct_array
	.cfi_endproc

	.align	16, 0x90
	.type	chunk_alloc_struct_array_immovable,@function
chunk_alloc_struct_array_immovable:     # @chunk_alloc_struct_array_immovable
	.cfi_startproc
# BB#0:                                 # %entry
	imull	(%rdx), %esi
	jmp	chunk_obj_alloc         # TAILCALL
.Lfunc_end16:
	.size	chunk_alloc_struct_array_immovable, .Lfunc_end16-chunk_alloc_struct_array_immovable
	.cfi_endproc

	.align	16, 0x90
	.type	chunk_object_size,@function
chunk_object_size:                      # @chunk_object_size
	.cfi_startproc
# BB#0:                                 # %entry
	movl	-8(%rsi), %eax
	retq
.Lfunc_end17:
	.size	chunk_object_size, .Lfunc_end17-chunk_object_size
	.cfi_endproc

	.align	16, 0x90
	.type	chunk_object_type,@function
chunk_object_type:                      # @chunk_object_type
	.cfi_startproc
# BB#0:                                 # %entry
	movq	-16(%rsi), %rax
	retq
.Lfunc_end18:
	.size	chunk_object_type, .Lfunc_end18-chunk_object_type
	.cfi_endproc

	.align	16, 0x90
	.type	chunk_alloc_string,@function
chunk_alloc_string:                     # @chunk_alloc_string
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rax
	movl	$st_bytes, %edx
	movq	%rax, %rcx
	jmp	chunk_obj_alloc         # TAILCALL
.Lfunc_end19:
	.size	chunk_alloc_string, .Lfunc_end19-chunk_alloc_string
	.cfi_endproc

	.align	16, 0x90
	.type	chunk_alloc_string_immovable,@function
chunk_alloc_string_immovable:           # @chunk_alloc_string_immovable
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rax
	movl	$st_bytes, %edx
	movq	%rax, %rcx
	jmp	chunk_obj_alloc         # TAILCALL
.Lfunc_end20:
	.size	chunk_alloc_string_immovable, .Lfunc_end20-chunk_alloc_string_immovable
	.cfi_endproc

	.align	16, 0x90
	.type	chunk_resize_string,@function
chunk_resize_string:                    # @chunk_resize_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp42:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp43:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp44:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp45:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp47:
	.cfi_def_cfa_offset 64
.Ltmp48:
	.cfi_offset %rbx, -56
.Ltmp49:
	.cfi_offset %r12, -48
.Ltmp50:
	.cfi_offset %r13, -40
.Ltmp51:
	.cfi_offset %r14, -32
.Ltmp52:
	.cfi_offset %r15, -24
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movl	%ecx, %ebx
	movq	%rsi, %r12
	movq	%rdi, %r15
	movq	-16(%r12), %rdx
	imull	(%rdx), %ebx
	movl	-8(%r12), %r13d
	cmpl	%r13d, %ebx
	jne	.LBB21_2
# BB#1:
	movq	%r12, %rax
	jmp	.LBB21_4
.LBB21_2:                               # %if.end.i
	movq	%r15, %rdi
	movl	%ebx, %esi
	movq	%r14, %rcx
	callq	chunk_obj_alloc
	movq	%rax, %rbp
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.LBB21_4
# BB#3:                                 # %if.end.9.i
	cmpq	%rbx, %r13
	cmovaeq	%rbx, %r13
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	memcpy
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	chunk_free_object
	movq	%rbp, %rax
.LBB21_4:                               # %chunk_resize_object.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	chunk_resize_string, .Lfunc_end21-chunk_resize_string
	.cfi_endproc

	.align	16, 0x90
	.type	chunk_free_string,@function
chunk_free_string:                      # @chunk_free_string
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rcx, %rdx
	jmp	chunk_free_object       # TAILCALL
.Lfunc_end22:
	.size	chunk_free_string, .Lfunc_end22-chunk_free_string
	.cfi_endproc

	.align	16, 0x90
	.type	chunk_register_root,@function
chunk_register_root:                    # @chunk_register_root
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end23:
	.size	chunk_register_root, .Lfunc_end23-chunk_register_root
	.cfi_endproc

	.align	16, 0x90
	.type	chunk_unregister_root,@function
chunk_unregister_root:                  # @chunk_unregister_root
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end24:
	.size	chunk_unregister_root, .Lfunc_end24-chunk_unregister_root
	.cfi_endproc

	.align	16, 0x90
	.type	chunk_enable_free,@function
chunk_enable_free:                      # @chunk_enable_free
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end25:
	.size	chunk_enable_free, .Lfunc_end25-chunk_enable_free
	.cfi_endproc

	.align	16, 0x90
	.type	chunk_obj_alloc,@function
chunk_obj_alloc:                        # @chunk_obj_alloc
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
	pushq	%rax
.Ltmp60:
	.cfi_def_cfa_offset 64
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
	movq	%rdx, (%rsp)            # 8-byte Spill
	movl	%esi, %r15d
	movq	%rdi, %r12
	leal	40(%r15), %eax
	addq	$39, %rax
	movabsq	$-3689348814741910323, %rdx # imm = 0xCCCCCCCCCCCCCCCD
	mulq	%rdx
	shrq	$2, %rdx
	movabsq	$4611686018427387896, %rax # imm = 0x3FFFFFFFFFFFFFF8
	andq	%rdx, %rax
	leaq	(%rax,%rax,4), %r13
	cmpl	$32768, %r13d           # imm = 0x8000
	ja	.LBB26_5
# BB#1:                                 # %for.cond.preheader
	movq	224(%r12), %rax
	jmp	.LBB26_2
	.align	16, 0x90
.LBB26_4:                               # %for.inc
                                        #   in Loop: Header=BB26_2 Depth=1
	movq	16(%rax), %rax
.LBB26_2:                               # %for.cond.preheader
                                        # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB26_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB26_2 Depth=1
	cmpl	%r13d, 4(%rax)
	jb	.LBB26_4
	jmp	.LBB26_13
.LBB26_5:                               # %if.then.11
	cmpl	$32769, %r13d           # imm = 0x8001
	setb	%al
	movl	$.L.str.2, %edx
	cmovbq	%rdx, %rcx
	movq	216(%r12), %rdi
	leal	48(%r13), %edx
	cmpl	$65608, %edx            # imm = 0x10048
	setb	%r14b
	andb	%al, %r14b
	movl	$65608, %ebp            # imm = 0x10048
	cmovel	%edx, %ebp
	movl	%ebp, %esi
	movq	%rcx, %rdx
	callq	*8(%rdi)
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB26_40
# BB#6:                                 # %if.end.15.i
	movzbl	%r14b, %ecx
	movl	%ecx, %edx
	movl	%ebp, %esi
	addq	%rsi, 240(%r12)
	andl	$1, %edx
	movl	%ebp, (%rax)
	addl	$-48, %ebp
	movl	%ebp, 4(%rax)
	movl	%edx, 8(%rax)
	movq	$0, 32(%rax)
	movq	%rax, %rdx
	addq	$48, %rdx
	movq	%rdx, 40(%rax)
	movq	$0, 48(%rax)
	movl	%ebp, 56(%rax)
	movq	$0, 24(%rax)
	testb	$1, %cl
	je	.LBB26_10
# BB#7:                                 # %if.then.26.i
	movq	224(%r12), %rcx
	testq	%rcx, %rcx
	je	.LBB26_8
# BB#9:                                 # %if.else.32.i
	movq	%rcx, 16(%rax)
	movq	%rax, 24(%rcx)
	movq	%rax, 224(%r12)
	jmp	.LBB26_13
.LBB26_10:                              # %if.else.39.i
	movq	232(%r12), %rcx
	testq	%rcx, %rcx
	je	.LBB26_11
# BB#12:                                # %if.else.45.i
	movq	%rcx, 16(%rax)
	movq	%rax, 24(%rcx)
	movq	%rax, 232(%r12)
	jmp	.LBB26_13
.LBB26_8:                               # %if.then.29.i
	movq	%rax, 224(%r12)
	movq	$0, 16(%rax)
	jmp	.LBB26_13
.LBB26_11:                              # %if.then.42.i
	movq	%rax, 232(%r12)
	movq	$0, 16(%rax)
.LBB26_13:                              # %if.end.18
	movq	40(%rax), %rcx
	xorl	%edx, %edx
	testq	%rcx, %rcx
	je	.LBB26_16
	.align	16, 0x90
.LBB26_14:                              # %for.body.22
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rbx
	movl	8(%rbx), %ecx
	movl	%ecx, %esi
	subl	%r13d, %esi
	jae	.LBB26_17
# BB#15:                                # %if.end.27
                                        #   in Loop: Header=BB26_14 Depth=1
	movq	(%rbx), %rcx
	testq	%rcx, %rcx
	movq	%rbx, %rdx
	jne	.LBB26_14
.LBB26_16:                              # %if.then.33
	movl	4(%rax), %edx
	xorl	%ebx, %ebx
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	%r13d, %ecx
	callq	errprintf
	jmp	.LBB26_40
.LBB26_17:                              # %if.end.36
	cmpl	$0, 8(%rax)
	je	.LBB26_18
# BB#19:                                # %land.rhs
	cmpl	4(%rax), %ecx
	sete	%cl
	jmp	.LBB26_20
.LBB26_18:
	xorl	%ecx, %ecx
.LBB26_20:                              # %land.end
	movzbl	%cl, %ecx
	movl	%r13d, %edi
	cmpl	$40, %esi
	jb	.LBB26_27
# BB#21:                                # %if.then.46
	leaq	(%rdi,%rbx), %rdi
	testq	%rdx, %rdx
	je	.LBB26_23
# BB#22:                                # %if.then.49
	movq	%rdi, (%rdx)
	jmp	.LBB26_24
.LBB26_27:                              # %if.else.64
	movq	(%rbx), %rsi
	testq	%rdx, %rdx
	je	.LBB26_29
# BB#28:                                # %if.then.67
	movq	%rsi, (%rdx)
	jmp	.LBB26_30
.LBB26_23:                              # %if.else
	movq	%rdi, 40(%rax)
.LBB26_24:                              # %if.end.52
	movq	(%rsp), %rbp            # 8-byte Reload
	movq	(%rbx), %rdx
	movq	%rdx, (%rdi)
	movl	%esi, 8(%rdi)
	testl	%ecx, %ecx
	je	.LBB26_31
# BB#25:                                # %land.lhs.true
	movq	40(%rax), %rdx
	cmpq	$0, (%rdx)
	jne	.LBB26_31
# BB#26:                                # %if.then.61
	movl	%esi, 4(%rax)
	xorl	%ecx, %ecx
	jmp	.LBB26_31
.LBB26_29:                              # %if.else.70
	movq	%rsi, 40(%rax)
.LBB26_30:                              # %if.end.74
	movq	(%rsp), %rbp            # 8-byte Reload
.LBB26_31:                              # %if.end.74
	movq	32(%rax), %rdx
	movq	%rdx, (%rbx)
	movq	%rax, 16(%rbx)
	movq	$0, 8(%rbx)
	testq	%rdx, %rdx
	je	.LBB26_33
# BB#32:                                # %if.then.78
	movq	%rbx, 8(%rdx)
.LBB26_33:                              # %if.end.81
	movq	%rbx, 32(%rax)
	movl	%r15d, 32(%rbx)
	movq	%rbp, 24(%rbx)
	testl	%ecx, %ecx
	je	.LBB26_39
# BB#34:                                # %if.then.86
	movl	$0, 4(%rax)
	movq	40(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB26_39
# BB#35:
	xorl	%edx, %edx
	.align	16, 0x90
.LBB26_36:                              # %for.body.92
                                        # =>This Inner Loop Header: Depth=1
	movl	8(%rcx), %esi
	cmpl	%edx, %esi
	jbe	.LBB26_38
# BB#37:                                # %if.then.97
                                        #   in Loop: Header=BB26_36 Depth=1
	movl	%esi, 4(%rax)
	movl	%esi, %edx
.LBB26_38:                              # %for.inc.101
                                        #   in Loop: Header=BB26_36 Depth=1
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	jne	.LBB26_36
.LBB26_39:                              # %if.end.104
	addq	$40, %rbx
.LBB26_40:                              # %cleanup
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end26:
	.size	chunk_obj_alloc, .Lfunc_end26-chunk_obj_alloc
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_malloc_wrap(chunk)"
	.size	.L.str, 22

	.type	chunk_procs,@object     # @chunk_procs
	.section	.rodata,"a",@progbits
	.align	8
chunk_procs:
	.quad	chunk_alloc_bytes_immovable
	.quad	chunk_resize_object
	.quad	chunk_free_object
	.quad	chunk_stable
	.quad	chunk_status
	.quad	chunk_free_all
	.quad	chunk_consolidate_free
	.quad	chunk_alloc_bytes
	.quad	chunk_alloc_struct
	.quad	chunk_alloc_struct_immovable
	.quad	chunk_alloc_byte_array
	.quad	chunk_alloc_byte_array_immovable
	.quad	chunk_alloc_struct_array
	.quad	chunk_alloc_struct_array_immovable
	.quad	chunk_object_size
	.quad	chunk_object_type
	.quad	chunk_alloc_string
	.quad	chunk_alloc_string_immovable
	.quad	chunk_resize_string
	.quad	chunk_free_string
	.quad	chunk_register_root
	.quad	chunk_unregister_root
	.quad	chunk_enable_free
	.size	chunk_procs, 184

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gs_memory_chunk_release"
	.size	.L.str.1, 24

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"chunk_mem_node_add"
	.size	.L.str.2, 19

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"largest_free value = %d is too large, cannot find room for size = %d\n"
	.size	.L.str.3, 70

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"FAIL - no nodes to be removed\n"
	.size	.L.str.4, 31

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"chunk_mem_node_remove"
	.size	.L.str.5, 22


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
