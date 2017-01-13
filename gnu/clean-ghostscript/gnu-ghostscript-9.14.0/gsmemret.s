	.text
	.file	"gsmemret.bc"
	.globl	gs_memory_retrying_init
	.align	16, 0x90
	.type	gs_memory_retrying_init,@function
gs_memory_retrying_init:                # @gs_memory_retrying_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	$0, (%rbx)
	leaq	8(%rbx), %rdi
	movl	$retrying_procs, %esi
	movl	$184, %edx
	callq	memcpy
	movq	%r14, 216(%rbx)
	movq	192(%r14), %rax
	movq	%rax, 192(%rbx)
	movq	%rbx, 200(%rbx)
	movq	208(%r14), %rax
	movq	%rax, 208(%rbx)
	movq	$no_recover_proc, 224(%rbx)
	movq	$0, 232(%rbx)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	gs_memory_retrying_init, .Lfunc_end0-gs_memory_retrying_init
	.cfi_endproc

	.globl	gs_memory_retrying_set_recover
	.align	16, 0x90
	.type	gs_memory_retrying_set_recover,@function
gs_memory_retrying_set_recover:         # @gs_memory_retrying_set_recover
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, 224(%rdi)
	movq	%rdx, 232(%rdi)
	retq
.Lfunc_end1:
	.size	gs_memory_retrying_set_recover, .Lfunc_end1-gs_memory_retrying_set_recover
	.cfi_endproc

	.align	16, 0x90
	.type	no_recover_proc,@function
no_recover_proc:                        # @no_recover_proc
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	no_recover_proc, .Lfunc_end2-no_recover_proc
	.cfi_endproc

	.globl	gs_memory_retrying_release
	.align	16, 0x90
	.type	gs_memory_retrying_release,@function
gs_memory_retrying_release:             # @gs_memory_retrying_release
	.cfi_startproc
# BB#0:                                 # %entry
	movq	48(%rdi), %rax
	movl	$2, %esi
	movl	$.L.str, %edx
	jmpq	*%rax                   # TAILCALL
.Lfunc_end3:
	.size	gs_memory_retrying_release, .Lfunc_end3-gs_memory_retrying_release
	.cfi_endproc

	.globl	gs_memory_retrying_target
	.align	16, 0x90
	.type	gs_memory_retrying_target,@function
gs_memory_retrying_target:              # @gs_memory_retrying_target
	.cfi_startproc
# BB#0:                                 # %entry
	movq	216(%rdi), %rax
	retq
.Lfunc_end4:
	.size	gs_memory_retrying_target, .Lfunc_end4-gs_memory_retrying_target
	.cfi_endproc

	.align	16, 0x90
	.type	gs_retrying_alloc_bytes_immovable,@function
gs_retrying_alloc_bytes_immovable:      # @gs_retrying_alloc_bytes_immovable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp8:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 48
.Ltmp10:
	.cfi_offset %rbx, -48
.Ltmp11:
	.cfi_offset %r12, -40
.Ltmp12:
	.cfi_offset %r14, -32
.Ltmp13:
	.cfi_offset %r15, -24
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movq	216(%rbx), %r12
	movq	%r12, %rdi
	callq	*8(%r12)
	.align	16, 0x90
.LBB5_1:                                # %entry
                                        # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	jne	.LBB5_3
# BB#2:                                 # %if.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	232(%rbx), %rsi
	movq	%rbx, %rdi
	callq	*224(%rbx)
	movl	%eax, %ebp
	movq	%r12, %rdi
	movl	%r15d, %esi
	movq	%r14, %rdx
	callq	*8(%r12)
	cmpl	$1, %ebp
	je	.LBB5_1
.LBB5_3:                                # %for.end
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gs_retrying_alloc_bytes_immovable, .Lfunc_end5-gs_retrying_alloc_bytes_immovable
	.cfi_endproc

	.align	16, 0x90
	.type	gs_retrying_resize_object,@function
gs_retrying_resize_object:              # @gs_retrying_resize_object
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp16:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp17:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp18:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp19:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp21:
	.cfi_def_cfa_offset 64
.Ltmp22:
	.cfi_offset %rbx, -56
.Ltmp23:
	.cfi_offset %r12, -48
.Ltmp24:
	.cfi_offset %r13, -40
.Ltmp25:
	.cfi_offset %r14, -32
.Ltmp26:
	.cfi_offset %r15, -24
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%edx, %r15d
	movq	%rsi, %r12
	movq	%rdi, %rbp
	movq	216(%rbp), %r13
	movq	%r13, %rdi
	callq	*16(%r13)
	.align	16, 0x90
.LBB6_1:                                # %entry
                                        # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	jne	.LBB6_3
# BB#2:                                 # %if.end
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	232(%rbp), %rsi
	movq	%rbp, %rdi
	callq	*224(%rbp)
	movl	%eax, %ebx
	movq	%r13, %rdi
	movq	%r12, %rsi
	movl	%r15d, %edx
	movq	%r14, %rcx
	callq	*16(%r13)
	cmpl	$1, %ebx
	je	.LBB6_1
.LBB6_3:                                # %for.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gs_retrying_resize_object, .Lfunc_end6-gs_retrying_resize_object
	.cfi_endproc

	.align	16, 0x90
	.type	gs_forward_free_object,@function
gs_forward_free_object:                 # @gs_forward_free_object
	.cfi_startproc
# BB#0:                                 # %entry
	movq	216(%rdi), %rdi
	movq	24(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end7:
	.size	gs_forward_free_object, .Lfunc_end7-gs_forward_free_object
	.cfi_endproc

	.align	16, 0x90
	.type	gs_retrying_stable,@function
gs_retrying_stable:                     # @gs_retrying_stable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp29:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 32
.Ltmp31:
	.cfi_offset %rbx, -32
.Ltmp32:
	.cfi_offset %r14, -24
.Ltmp33:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	(%r14), %rbx
	testq	%rbx, %rbx
	jne	.LBB8_6
# BB#1:                                 # %if.then
	movq	216(%r14), %rdi
	callq	*32(%rdi)
	movq	%rax, %r15
	cmpq	216(%r14), %r15
	je	.LBB8_2
# BB#3:                                 # %if.else
	movl	$240, %esi
	movl	$.L.str.1, %edx
	movq	%r15, %rdi
	callq	*64(%r15)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB8_4
# BB#5:                                 # %if.then.9
	movq	$0, (%rbx)
	movq	%rbx, %rdi
	addq	$8, %rdi
	movl	$retrying_procs, %esi
	movl	$184, %edx
	callq	memcpy
	movq	%r15, 216(%rbx)
	movq	192(%r15), %rax
	movq	%rax, 192(%rbx)
	movq	%rbx, 200(%rbx)
	movq	208(%r15), %rax
	movq	%rax, 208(%rbx)
	movq	$no_recover_proc, 224(%rbx)
	movq	$0, 232(%rbx)
	movq	%rbx, (%r14)
	jmp	.LBB8_6
.LBB8_2:                                # %if.then.4
	movq	%r14, (%r14)
	movq	%r14, %rbx
	jmp	.LBB8_6
.LBB8_4:                                # %if.else.if.end.18_crit_edge
	movq	(%r14), %rbx
.LBB8_6:                                # %if.end.18
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end8:
	.size	gs_retrying_stable, .Lfunc_end8-gs_retrying_stable
	.cfi_endproc

	.align	16, 0x90
	.type	gs_forward_status,@function
gs_forward_status:                      # @gs_forward_status
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movq	216(%rdi), %rdi
	callq	*40(%rdi)
	movl	$0, 16(%rbx)
	popq	%rbx
	retq
.Lfunc_end9:
	.size	gs_forward_status, .Lfunc_end9-gs_forward_status
	.cfi_endproc

	.align	16, 0x90
	.type	gs_forward_free_all,@function
gs_forward_free_all:                    # @gs_forward_free_all
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movq	216(%rax), %rdi
	movq	$0, 216(%rax)
	testb	$4, %sil
	jne	.LBB10_2
# BB#1:                                 # %if.end
	retq
.LBB10_2:                               # %if.then
	movq	24(%rdi), %rcx
	movq	%rax, %rsi
	jmpq	*%rcx                   # TAILCALL
.Lfunc_end10:
	.size	gs_forward_free_all, .Lfunc_end10-gs_forward_free_all
	.cfi_endproc

	.align	16, 0x90
	.type	gs_forward_consolidate_free,@function
gs_forward_consolidate_free:            # @gs_forward_consolidate_free
	.cfi_startproc
# BB#0:                                 # %entry
	movq	216(%rdi), %rdi
	jmpq	*56(%rdi)               # TAILCALL
.Lfunc_end11:
	.size	gs_forward_consolidate_free, .Lfunc_end11-gs_forward_consolidate_free
	.cfi_endproc

	.align	16, 0x90
	.type	gs_retrying_alloc_bytes,@function
gs_retrying_alloc_bytes:                # @gs_retrying_alloc_bytes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp37:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp38:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp39:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp40:
	.cfi_def_cfa_offset 48
.Ltmp41:
	.cfi_offset %rbx, -48
.Ltmp42:
	.cfi_offset %r12, -40
.Ltmp43:
	.cfi_offset %r14, -32
.Ltmp44:
	.cfi_offset %r15, -24
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movq	216(%rbx), %r12
	movq	%r12, %rdi
	callq	*64(%r12)
	.align	16, 0x90
.LBB12_1:                               # %entry
                                        # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	jne	.LBB12_3
# BB#2:                                 # %if.end
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	232(%rbx), %rsi
	movq	%rbx, %rdi
	callq	*224(%rbx)
	movl	%eax, %ebp
	movq	%r12, %rdi
	movl	%r15d, %esi
	movq	%r14, %rdx
	callq	*64(%r12)
	cmpl	$1, %ebp
	je	.LBB12_1
.LBB12_3:                               # %for.end
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gs_retrying_alloc_bytes, .Lfunc_end12-gs_retrying_alloc_bytes
	.cfi_endproc

	.align	16, 0x90
	.type	gs_retrying_alloc_struct,@function
gs_retrying_alloc_struct:               # @gs_retrying_alloc_struct
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
	pushq	%r12
.Ltmp49:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp50:
	.cfi_def_cfa_offset 48
.Ltmp51:
	.cfi_offset %rbx, -48
.Ltmp52:
	.cfi_offset %r12, -40
.Ltmp53:
	.cfi_offset %r14, -32
.Ltmp54:
	.cfi_offset %r15, -24
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	216(%rbx), %r12
	movq	%r12, %rdi
	callq	*72(%r12)
	.align	16, 0x90
.LBB13_1:                               # %entry
                                        # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	jne	.LBB13_3
# BB#2:                                 # %if.end
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	232(%rbx), %rsi
	movq	%rbx, %rdi
	callq	*224(%rbx)
	movl	%eax, %ebp
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	*72(%r12)
	cmpl	$1, %ebp
	je	.LBB13_1
.LBB13_3:                               # %for.end
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gs_retrying_alloc_struct, .Lfunc_end13-gs_retrying_alloc_struct
	.cfi_endproc

	.align	16, 0x90
	.type	gs_retrying_alloc_struct_immovable,@function
gs_retrying_alloc_struct_immovable:     # @gs_retrying_alloc_struct_immovable
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
.Ltmp61:
	.cfi_offset %rbx, -48
.Ltmp62:
	.cfi_offset %r12, -40
.Ltmp63:
	.cfi_offset %r14, -32
.Ltmp64:
	.cfi_offset %r15, -24
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	216(%rbx), %r12
	movq	%r12, %rdi
	callq	*80(%r12)
	.align	16, 0x90
.LBB14_1:                               # %entry
                                        # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	jne	.LBB14_3
# BB#2:                                 # %if.end
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	232(%rbx), %rsi
	movq	%rbx, %rdi
	callq	*224(%rbx)
	movl	%eax, %ebp
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	*80(%r12)
	cmpl	$1, %ebp
	je	.LBB14_1
.LBB14_3:                               # %for.end
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gs_retrying_alloc_struct_immovable, .Lfunc_end14-gs_retrying_alloc_struct_immovable
	.cfi_endproc

	.align	16, 0x90
	.type	gs_retrying_alloc_byte_array,@function
gs_retrying_alloc_byte_array:           # @gs_retrying_alloc_byte_array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp67:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp68:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp69:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp70:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp71:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp72:
	.cfi_def_cfa_offset 64
.Ltmp73:
	.cfi_offset %rbx, -56
.Ltmp74:
	.cfi_offset %r12, -48
.Ltmp75:
	.cfi_offset %r13, -40
.Ltmp76:
	.cfi_offset %r14, -32
.Ltmp77:
	.cfi_offset %r15, -24
.Ltmp78:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%edx, %r15d
	movl	%esi, %r12d
	movq	%rdi, %rbp
	movq	216(%rbp), %r13
	movq	%r13, %rdi
	callq	*88(%r13)
	.align	16, 0x90
.LBB15_1:                               # %entry
                                        # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	jne	.LBB15_3
# BB#2:                                 # %if.end
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	232(%rbp), %rsi
	movq	%rbp, %rdi
	callq	*224(%rbp)
	movl	%eax, %ebx
	movq	%r13, %rdi
	movl	%r12d, %esi
	movl	%r15d, %edx
	movq	%r14, %rcx
	callq	*88(%r13)
	cmpl	$1, %ebx
	je	.LBB15_1
.LBB15_3:                               # %for.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gs_retrying_alloc_byte_array, .Lfunc_end15-gs_retrying_alloc_byte_array
	.cfi_endproc

	.align	16, 0x90
	.type	gs_retrying_alloc_byte_array_immovable,@function
gs_retrying_alloc_byte_array_immovable: # @gs_retrying_alloc_byte_array_immovable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp80:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp81:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp82:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp83:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp84:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp85:
	.cfi_def_cfa_offset 64
.Ltmp86:
	.cfi_offset %rbx, -56
.Ltmp87:
	.cfi_offset %r12, -48
.Ltmp88:
	.cfi_offset %r13, -40
.Ltmp89:
	.cfi_offset %r14, -32
.Ltmp90:
	.cfi_offset %r15, -24
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%edx, %r15d
	movl	%esi, %r12d
	movq	%rdi, %rbp
	movq	216(%rbp), %r13
	movq	%r13, %rdi
	callq	*96(%r13)
	.align	16, 0x90
.LBB16_1:                               # %entry
                                        # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	jne	.LBB16_3
# BB#2:                                 # %if.end
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	232(%rbp), %rsi
	movq	%rbp, %rdi
	callq	*224(%rbp)
	movl	%eax, %ebx
	movq	%r13, %rdi
	movl	%r12d, %esi
	movl	%r15d, %edx
	movq	%r14, %rcx
	callq	*96(%r13)
	cmpl	$1, %ebx
	je	.LBB16_1
.LBB16_3:                               # %for.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gs_retrying_alloc_byte_array_immovable, .Lfunc_end16-gs_retrying_alloc_byte_array_immovable
	.cfi_endproc

	.align	16, 0x90
	.type	gs_retrying_alloc_struct_array,@function
gs_retrying_alloc_struct_array:         # @gs_retrying_alloc_struct_array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp92:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp93:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp94:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp95:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp96:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp97:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp98:
	.cfi_def_cfa_offset 64
.Ltmp99:
	.cfi_offset %rbx, -56
.Ltmp100:
	.cfi_offset %r12, -48
.Ltmp101:
	.cfi_offset %r13, -40
.Ltmp102:
	.cfi_offset %r14, -32
.Ltmp103:
	.cfi_offset %r15, -24
.Ltmp104:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdx, %r15
	movl	%esi, %r12d
	movq	%rdi, %rbx
	movq	216(%rbx), %r13
	movq	%r13, %rdi
	callq	*104(%r13)
	.align	16, 0x90
.LBB17_1:                               # %entry
                                        # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	jne	.LBB17_3
# BB#2:                                 # %if.end
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	232(%rbx), %rsi
	movq	%rbx, %rdi
	callq	*224(%rbx)
	movl	%eax, %ebp
	movq	%r13, %rdi
	movl	%r12d, %esi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	*104(%r13)
	cmpl	$1, %ebp
	je	.LBB17_1
.LBB17_3:                               # %for.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gs_retrying_alloc_struct_array, .Lfunc_end17-gs_retrying_alloc_struct_array
	.cfi_endproc

	.align	16, 0x90
	.type	gs_retrying_alloc_struct_array_immovable,@function
gs_retrying_alloc_struct_array_immovable: # @gs_retrying_alloc_struct_array_immovable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp106:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp107:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp108:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp109:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp110:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp111:
	.cfi_def_cfa_offset 64
.Ltmp112:
	.cfi_offset %rbx, -56
.Ltmp113:
	.cfi_offset %r12, -48
.Ltmp114:
	.cfi_offset %r13, -40
.Ltmp115:
	.cfi_offset %r14, -32
.Ltmp116:
	.cfi_offset %r15, -24
.Ltmp117:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdx, %r15
	movl	%esi, %r12d
	movq	%rdi, %rbx
	movq	216(%rbx), %r13
	movq	%r13, %rdi
	callq	*112(%r13)
	.align	16, 0x90
.LBB18_1:                               # %entry
                                        # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	jne	.LBB18_3
# BB#2:                                 # %if.end
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	232(%rbx), %rsi
	movq	%rbx, %rdi
	callq	*224(%rbx)
	movl	%eax, %ebp
	movq	%r13, %rdi
	movl	%r12d, %esi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	*112(%r13)
	cmpl	$1, %ebp
	je	.LBB18_1
.LBB18_3:                               # %for.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gs_retrying_alloc_struct_array_immovable, .Lfunc_end18-gs_retrying_alloc_struct_array_immovable
	.cfi_endproc

	.align	16, 0x90
	.type	gs_forward_object_size,@function
gs_forward_object_size:                 # @gs_forward_object_size
	.cfi_startproc
# BB#0:                                 # %entry
	movq	216(%rdi), %rdi
	movq	120(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end19:
	.size	gs_forward_object_size, .Lfunc_end19-gs_forward_object_size
	.cfi_endproc

	.align	16, 0x90
	.type	gs_forward_object_type,@function
gs_forward_object_type:                 # @gs_forward_object_type
	.cfi_startproc
# BB#0:                                 # %entry
	movq	216(%rdi), %rdi
	movq	128(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end20:
	.size	gs_forward_object_type, .Lfunc_end20-gs_forward_object_type
	.cfi_endproc

	.align	16, 0x90
	.type	gs_retrying_alloc_string,@function
gs_retrying_alloc_string:               # @gs_retrying_alloc_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp118:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp119:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp120:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp121:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp122:
	.cfi_def_cfa_offset 48
.Ltmp123:
	.cfi_offset %rbx, -48
.Ltmp124:
	.cfi_offset %r12, -40
.Ltmp125:
	.cfi_offset %r14, -32
.Ltmp126:
	.cfi_offset %r15, -24
.Ltmp127:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movq	216(%rbx), %r12
	movq	%r12, %rdi
	callq	*136(%r12)
	.align	16, 0x90
.LBB21_1:                               # %entry
                                        # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	jne	.LBB21_3
# BB#2:                                 # %if.end
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	232(%rbx), %rsi
	movq	%rbx, %rdi
	callq	*224(%rbx)
	movl	%eax, %ebp
	movq	%r12, %rdi
	movl	%r15d, %esi
	movq	%r14, %rdx
	callq	*136(%r12)
	cmpl	$1, %ebp
	je	.LBB21_1
.LBB21_3:                               # %for.end
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gs_retrying_alloc_string, .Lfunc_end21-gs_retrying_alloc_string
	.cfi_endproc

	.align	16, 0x90
	.type	gs_retrying_alloc_string_immovable,@function
gs_retrying_alloc_string_immovable:     # @gs_retrying_alloc_string_immovable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp128:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp129:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp130:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp131:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp132:
	.cfi_def_cfa_offset 48
.Ltmp133:
	.cfi_offset %rbx, -48
.Ltmp134:
	.cfi_offset %r12, -40
.Ltmp135:
	.cfi_offset %r14, -32
.Ltmp136:
	.cfi_offset %r15, -24
.Ltmp137:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movq	216(%rbx), %r12
	movq	%r12, %rdi
	callq	*144(%r12)
	.align	16, 0x90
.LBB22_1:                               # %entry
                                        # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	jne	.LBB22_3
# BB#2:                                 # %if.end
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	232(%rbx), %rsi
	movq	%rbx, %rdi
	callq	*224(%rbx)
	movl	%eax, %ebp
	movq	%r12, %rdi
	movl	%r15d, %esi
	movq	%r14, %rdx
	callq	*144(%r12)
	cmpl	$1, %ebp
	je	.LBB22_1
.LBB22_3:                               # %for.end
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gs_retrying_alloc_string_immovable, .Lfunc_end22-gs_retrying_alloc_string_immovable
	.cfi_endproc

	.align	16, 0x90
	.type	gs_retrying_resize_string,@function
gs_retrying_resize_string:              # @gs_retrying_resize_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp138:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp139:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp140:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp141:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp142:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp143:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp144:
	.cfi_def_cfa_offset 64
.Ltmp145:
	.cfi_offset %rbx, -56
.Ltmp146:
	.cfi_offset %r12, -48
.Ltmp147:
	.cfi_offset %r13, -40
.Ltmp148:
	.cfi_offset %r14, -32
.Ltmp149:
	.cfi_offset %r15, -24
.Ltmp150:
	.cfi_offset %rbp, -16
	movq	%rsi, (%rsp)            # 8-byte Spill
	movq	%rdi, %rbx
	movq	216(%rbx), %rbp
	movq	%rbp, %rdi
	movl	%edx, %r13d
	movl	%ecx, %r12d
	movq	%r8, %r15
	callq	*152(%rbp)
	.align	16, 0x90
.LBB23_1:                               # %entry
                                        # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	jne	.LBB23_3
# BB#2:                                 # %if.end
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	232(%rbx), %rsi
	movq	%rbx, %rdi
	callq	*224(%rbx)
	movl	%eax, %r14d
	movq	%rbp, %rdi
	movq	(%rsp), %rsi            # 8-byte Reload
	movl	%r13d, %edx
	movl	%r12d, %ecx
	movq	%r15, %r8
	callq	*152(%rbp)
	cmpl	$1, %r14d
	je	.LBB23_1
.LBB23_3:                               # %for.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gs_retrying_resize_string, .Lfunc_end23-gs_retrying_resize_string
	.cfi_endproc

	.align	16, 0x90
	.type	gs_forward_free_string,@function
gs_forward_free_string:                 # @gs_forward_free_string
	.cfi_startproc
# BB#0:                                 # %entry
	movq	216(%rdi), %rdi
	movq	160(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end24:
	.size	gs_forward_free_string, .Lfunc_end24-gs_forward_free_string
	.cfi_endproc

	.align	16, 0x90
	.type	gs_retrying_register_root,@function
gs_retrying_register_root:              # @gs_retrying_register_root
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp151:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp152:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp153:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp154:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp155:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp156:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp157:
	.cfi_def_cfa_offset 64
.Ltmp158:
	.cfi_offset %rbx, -56
.Ltmp159:
	.cfi_offset %r12, -48
.Ltmp160:
	.cfi_offset %r13, -40
.Ltmp161:
	.cfi_offset %r14, -32
.Ltmp162:
	.cfi_offset %r15, -24
.Ltmp163:
	.cfi_offset %rbp, -16
	movq	%rsi, (%rsp)            # 8-byte Spill
	movq	%rdi, %rbx
	movq	216(%rbx), %rbp
	movq	%rbp, %rdi
	movq	%rdx, %r13
	movq	%rcx, %r12
	movq	%r8, %r15
	callq	*168(%rbp)
	.align	16, 0x90
.LBB25_1:                               # %entry
                                        # =>This Inner Loop Header: Depth=1
	testl	%eax, %eax
	jne	.LBB25_3
# BB#2:                                 # %if.end
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	232(%rbx), %rsi
	movq	%rbx, %rdi
	callq	*224(%rbx)
	movl	%eax, %r14d
	movq	%rbp, %rdi
	movq	(%rsp), %rsi            # 8-byte Reload
	movq	%r13, %rdx
	movq	%r12, %rcx
	movq	%r15, %r8
	callq	*168(%rbp)
	cmpl	$1, %r14d
	je	.LBB25_1
.LBB25_3:                               # %for.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gs_retrying_register_root, .Lfunc_end25-gs_retrying_register_root
	.cfi_endproc

	.align	16, 0x90
	.type	gs_forward_unregister_root,@function
gs_forward_unregister_root:             # @gs_forward_unregister_root
	.cfi_startproc
# BB#0:                                 # %entry
	movq	216(%rdi), %rdi
	movq	176(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end26:
	.size	gs_forward_unregister_root, .Lfunc_end26-gs_forward_unregister_root
	.cfi_endproc

	.align	16, 0x90
	.type	gs_forward_enable_free,@function
gs_forward_enable_free:                 # @gs_forward_enable_free
	.cfi_startproc
# BB#0:                                 # %entry
	movq	216(%rdi), %rdi
	movq	184(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end27:
	.size	gs_forward_enable_free, .Lfunc_end27-gs_forward_enable_free
	.cfi_endproc

	.type	retrying_procs,@object  # @retrying_procs
	.section	.rodata,"a",@progbits
	.align	8
retrying_procs:
	.quad	gs_retrying_alloc_bytes_immovable
	.quad	gs_retrying_resize_object
	.quad	gs_forward_free_object
	.quad	gs_retrying_stable
	.quad	gs_forward_status
	.quad	gs_forward_free_all
	.quad	gs_forward_consolidate_free
	.quad	gs_retrying_alloc_bytes
	.quad	gs_retrying_alloc_struct
	.quad	gs_retrying_alloc_struct_immovable
	.quad	gs_retrying_alloc_byte_array
	.quad	gs_retrying_alloc_byte_array_immovable
	.quad	gs_retrying_alloc_struct_array
	.quad	gs_retrying_alloc_struct_array_immovable
	.quad	gs_forward_object_size
	.quad	gs_forward_object_type
	.quad	gs_retrying_alloc_string
	.quad	gs_retrying_alloc_string_immovable
	.quad	gs_retrying_resize_string
	.quad	gs_forward_free_string
	.quad	gs_retrying_register_root
	.quad	gs_forward_unregister_root
	.quad	gs_forward_enable_free
	.size	retrying_procs, 184

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_memory_retrying_release"
	.size	.L.str, 27

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gs_retrying_stable"
	.size	.L.str.1, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
