	.text
	.file	"iapi.bc"
	.globl	gsapi_revision
	.align	16, 0x90
	.type	gsapi_revision,@function
gsapi_revision:                         # @gsapi_revision
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$32, %eax
	cmpl	$32, %esi
	jb	.LBB0_2
# BB#1:                                 # %if.end
	movq	gs_product(%rip), %rax
	movq	%rax, (%rdi)
	movq	gs_copyright(%rip), %rax
	movq	%rax, 8(%rdi)
	movq	gs_revision(%rip), %rax
	movq	%rax, 16(%rdi)
	movq	gs_revisiondate(%rip), %rax
	movq	%rax, 24(%rdi)
	xorl	%eax, %eax
.LBB0_2:                                # %return
	retq
.Lfunc_end0:
	.size	gsapi_revision, .Lfunc_end0-gsapi_revision
	.cfi_endproc

	.globl	gsapi_new_instance
	.align	16, 0x90
	.type	gsapi_new_instance,@function
gsapi_new_instance:                     # @gsapi_new_instance
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r12
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
	.cfi_offset %r12, -32
.Ltmp7:
	.cfi_offset %r14, -24
.Ltmp8:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	$-100, %r14d
	testq	%rbx, %rbx
	je	.LBB1_7
# BB#1:                                 # %if.end
	movl	gsapi_instance_counter(%rip), %eax
	testl	%eax, %eax
	jg	.LBB1_7
# BB#2:                                 # %if.end.3
	incl	%eax
	movl	%eax, gsapi_instance_counter(%rip)
	callq	gs_malloc_init
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB1_7
# BB#3:                                 # %if.end.10
	movq	%r12, %rdi
	callq	gs_main_alloc_instance
	testq	%rax, %rax
	je	.LBB1_4
# BB#5:                                 # %if.end.14
	movq	192(%r12), %rcx
	movq	%rax, 112(%rcx)
	movq	%r15, 56(%rcx)
	movq	$0, 64(%rcx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 72(%rcx)
	movq	$0, 88(%rcx)
	movq	$0, 96(%rcx)
	movq	%rcx, (%rbx)
	testq	%rcx, %rcx
	je	.LBB1_7
# BB#6:                                 # %if.end.i
	movq	(%rcx), %rdi
	callq	get_minst_from_memory
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gs_main_inst_arg_decode
	jmp	.LBB1_7
.LBB1_4:                                # %if.then.13
	movq	%r12, %rdi
	callq	gs_malloc_release
.LBB1_7:                                # %cleanup
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	gsapi_new_instance, .Lfunc_end1-gsapi_new_instance
	.cfi_endproc

	.globl	gsapi_set_arg_encoding
	.align	16, 0x90
	.type	gsapi_set_arg_encoding,@function
gsapi_set_arg_encoding:                 # @gsapi_set_arg_encoding
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbx, -16
	movl	$-100, %ebx
	testq	%rdi, %rdi
	je	.LBB2_6
# BB#1:                                 # %if.end
	cmpl	$2, %esi
	je	.LBB2_5
# BB#2:                                 # %if.end
	cmpl	$1, %esi
	je	.LBB2_4
# BB#3:                                 # %if.end
	testl	%esi, %esi
	jne	.LBB2_6
.LBB2_4:                                # %if.then.5
	movq	(%rdi), %rdi
	callq	get_minst_from_memory
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gs_main_inst_arg_decode
	jmp	.LBB2_6
.LBB2_5:                                # %if.then.10
	movq	(%rdi), %rdi
	callq	get_minst_from_memory
	movl	$utf16le_get_codepoint, %esi
	movq	%rax, %rdi
	callq	gs_main_inst_arg_decode
	xorl	%ebx, %ebx
.LBB2_6:                                # %cleanup
	movl	%ebx, %eax
	popq	%rbx
	retq
.Lfunc_end2:
	.size	gsapi_set_arg_encoding, .Lfunc_end2-gsapi_set_arg_encoding
	.cfi_endproc

	.globl	gsapi_delete_instance
	.align	16, 0x90
	.type	gsapi_delete_instance,@function
gsapi_delete_instance:                  # @gsapi_delete_instance
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	(%rbx), %rdi
	callq	get_minst_from_memory
	movq	$0, 56(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 72(%rbx)
	movq	$0, 88(%rbx)
	movq	$0, 96(%rbx)
	movq	$0, 152(%rax)
	movq	(%rax), %rdi
	callq	gs_malloc_release
	decl	gsapi_instance_counter(%rip)
.LBB3_2:                                # %if.end
	popq	%rbx
	retq
.Lfunc_end3:
	.size	gsapi_delete_instance, .Lfunc_end3-gsapi_delete_instance
	.cfi_endproc

	.globl	gsapi_set_stdio
	.align	16, 0x90
	.type	gsapi_set_stdio,@function
gsapi_set_stdio:                        # @gsapi_set_stdio
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-100, %eax
	testq	%rdi, %rdi
	je	.LBB4_2
# BB#1:                                 # %if.end
	movq	%rsi, 72(%rdi)
	movq	%rdx, 80(%rdi)
	movq	%rcx, 88(%rdi)
	xorl	%eax, %eax
.LBB4_2:                                # %cleanup
	retq
.Lfunc_end4:
	.size	gsapi_set_stdio, .Lfunc_end4-gsapi_set_stdio
	.cfi_endproc

	.globl	gsapi_set_poll
	.align	16, 0x90
	.type	gsapi_set_poll,@function
gsapi_set_poll:                         # @gsapi_set_poll
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-100, %eax
	testq	%rdi, %rdi
	je	.LBB5_2
# BB#1:                                 # %if.end
	movq	%rsi, 96(%rdi)
	xorl	%eax, %eax
.LBB5_2:                                # %cleanup
	retq
.Lfunc_end5:
	.size	gsapi_set_poll, .Lfunc_end5-gsapi_set_poll
	.cfi_endproc

	.globl	gsapi_set_display_callback
	.align	16, 0x90
	.type	gsapi_set_display_callback,@function
gsapi_set_display_callback:             # @gsapi_set_display_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movl	$-100, %eax
	testq	%rdi, %rdi
	je	.LBB6_2
# BB#1:                                 # %if.end
	movq	(%rdi), %rdi
	callq	get_minst_from_memory
	movq	%rbx, 152(%rax)
	xorl	%eax, %eax
.LBB6_2:                                # %cleanup
	popq	%rbx
	retq
.Lfunc_end6:
	.size	gsapi_set_display_callback, .Lfunc_end6-gsapi_set_display_callback
	.cfi_endproc

	.align	16, 0x90
	.type	utf16le_get_codepoint,@function
utf16le_get_codepoint:                  # @utf16le_get_codepoint
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
	pushq	%r12
.Ltmp18:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 48
.Ltmp20:
	.cfi_offset %rbx, -48
.Ltmp21:
	.cfi_offset %r12, -40
.Ltmp22:
	.cfi_offset %r14, -32
.Ltmp23:
	.cfi_offset %r15, -24
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	.align	16, 0x90
.LBB7_1:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	testq	%r15, %r15
	je	.LBB7_5
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	%r15, %rdi
	callq	fgetc
	movl	%eax, %ebx
	movl	$-1, %ebp
	cmpl	$-1, %ebx
	je	.LBB7_22
# BB#3:                                 # %if.end
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	%r15, %rdi
	callq	fgetc
	cmpl	$-1, %eax
	je	.LBB7_22
# BB#4:                                 # %if.end.5
                                        #   in Loop: Header=BB7_1 Depth=1
	shll	$8, %eax
	addl	%ebx, %eax
	jmp	.LBB7_7
	.align	16, 0x90
.LBB7_5:                                # %if.else
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	(%r14), %rcx
	movsbl	(%rcx), %edx
	movsbl	1(%rcx), %eax
	shll	$8, %eax
	orl	%edx, %eax
	movl	$-1, %ebp
	je	.LBB7_22
# BB#6:                                 # %if.then.11
                                        #   in Loop: Header=BB7_1 Depth=1
	addq	$2, %rcx
	movq	%rcx, (%r14)
.LBB7_7:                                # %if.end.14
                                        #   in Loop: Header=BB7_1 Depth=1
	cmpl	$65279, %eax            # imm = 0xFEFF
	je	.LBB7_1
# BB#8:                                 # %if.end.14
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$-1, %ebp
	cmpl	$65534, %eax            # imm = 0xFFFE
	je	.LBB7_22
# BB#9:                                 # %if.end.22
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	%eax, %ecx
	andl	$-2048, %ecx            # imm = 0xFFFFFFFFFFFFF800
	cmpl	$55296, %ecx            # imm = 0xD800
	jne	.LBB7_10
# BB#11:                                # %if.end.28
                                        #   in Loop: Header=BB7_1 Depth=1
	cmpl	$56319, %eax            # imm = 0xDBFF
	jg	.LBB7_1
.LBB7_12:                               # %lead
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r12d
	testq	%r15, %r15
	je	.LBB7_16
# BB#13:                                # %if.then.35
                                        #   in Loop: Header=BB7_12 Depth=1
	movq	%r15, %rdi
	callq	fgetc
	movl	%eax, %ebx
	cmpl	$-1, %ebx
	je	.LBB7_22
# BB#14:                                # %if.end.40
                                        #   in Loop: Header=BB7_12 Depth=1
	movq	%r15, %rdi
	callq	fgetc
	cmpl	$-1, %eax
	je	.LBB7_22
# BB#15:                                # %if.end.45
                                        #   in Loop: Header=BB7_12 Depth=1
	shll	$8, %eax
	addl	%ebx, %eax
	jmp	.LBB7_18
.LBB7_16:                               # %if.else.48
                                        #   in Loop: Header=BB7_12 Depth=1
	movq	(%r14), %rcx
	movsbl	(%rcx), %edx
	movsbl	1(%rcx), %eax
	shll	$8, %eax
	orl	%edx, %eax
	je	.LBB7_22
# BB#17:                                # %if.then.57
                                        #   in Loop: Header=BB7_12 Depth=1
	addq	$2, %rcx
	movq	%rcx, (%r14)
.LBB7_18:                               # %if.end.61
                                        #   in Loop: Header=BB7_12 Depth=1
	movl	%eax, %ecx
	andl	$-2048, %ecx            # imm = 0xFFFFFFFFFFFFF800
	cmpl	$55296, %ecx            # imm = 0xD800
	jne	.LBB7_19
# BB#20:                                # %if.end.76
                                        #   in Loop: Header=BB7_12 Depth=1
	cmpl	$56320, %eax            # imm = 0xDC00
	jl	.LBB7_12
# BB#21:                                # %do.end
	shll	$10, %r12d
	leal	-56613888(%r12,%rax), %ebp
	jmp	.LBB7_22
.LBB7_10:
	movl	%eax, %ebp
	jmp	.LBB7_22
.LBB7_19:
	movl	%eax, %ebp
.LBB7_22:                               # %cleanup
	movl	%ebp, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	utf16le_get_codepoint, .Lfunc_end7-utf16le_get_codepoint
	.cfi_endproc

	.globl	gsapi_init_with_args
	.align	16, 0x90
	.type	gsapi_init_with_args,@function
gsapi_init_with_args:                   # @gsapi_init_with_args
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp27:
	.cfi_def_cfa_offset 32
.Ltmp28:
	.cfi_offset %rbx, -24
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movl	%esi, %ebp
	testq	%rdi, %rdi
	je	.LBB8_1
# BB#2:                                 # %if.end
	movq	(%rdi), %rdi
	callq	get_minst_from_memory
	movq	%rax, %rdi
	movl	%ebp, %esi
	movq	%rbx, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	gs_main_init_with_args  # TAILCALL
.LBB8_1:                                # %cleanup
	movl	$-100, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gsapi_init_with_args, .Lfunc_end8-gsapi_init_with_args
	.cfi_endproc

	.globl	gsapi_run_string_begin
	.align	16, 0x90
	.type	gsapi_run_string_begin,@function
gsapi_run_string_begin:                 # @gsapi_run_string_begin
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
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp34:
	.cfi_def_cfa_offset 48
.Ltmp35:
	.cfi_offset %rbx, -40
.Ltmp36:
	.cfi_offset %r14, -32
.Ltmp37:
	.cfi_offset %r15, -24
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB9_1
# BB#2:                                 # %if.end
	movq	(%rbx), %rdi
	callq	get_minst_from_memory
	movq	%rax, %rbp
	movq	(%rbx), %rdi
	callq	get_minst_from_memory
	subq	$-128, %rax
	movq	%rbp, %rdi
	movl	%r15d, %esi
	movq	%r14, %rdx
	movq	%rax, %rcx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gs_main_run_string_begin # TAILCALL
.LBB9_1:                                # %cleanup
	movl	$-100, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gsapi_run_string_begin, .Lfunc_end9-gsapi_run_string_begin
	.cfi_endproc

	.globl	gsapi_run_string_continue
	.align	16, 0x90
	.type	gsapi_run_string_continue,@function
gsapi_run_string_continue:              # @gsapi_run_string_continue
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp41:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp42:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp43:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp44:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp45:
	.cfi_def_cfa_offset 64
.Ltmp46:
	.cfi_offset %rbx, -56
.Ltmp47:
	.cfi_offset %r12, -48
.Ltmp48:
	.cfi_offset %r13, -40
.Ltmp49:
	.cfi_offset %r14, -32
.Ltmp50:
	.cfi_offset %r15, -24
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movl	%ecx, %r15d
	movl	%edx, %r12d
	movq	%rsi, %r13
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB10_1
# BB#2:                                 # %if.end
	movq	(%rbx), %rdi
	callq	get_minst_from_memory
	movq	%rax, %rbp
	movq	(%rbx), %rdi
	callq	get_minst_from_memory
	subq	$-128, %rax
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movl	%r12d, %edx
	movl	%r15d, %ecx
	movq	%r14, %r8
	movq	%rax, %r9
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gs_main_run_string_continue # TAILCALL
.LBB10_1:                               # %cleanup
	movl	$-100, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gsapi_run_string_continue, .Lfunc_end10-gsapi_run_string_continue
	.cfi_endproc

	.globl	gsapi_run_string_end
	.align	16, 0x90
	.type	gsapi_run_string_end,@function
gsapi_run_string_end:                   # @gsapi_run_string_end
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp53:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp54:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp55:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp56:
	.cfi_def_cfa_offset 48
.Ltmp57:
	.cfi_offset %rbx, -40
.Ltmp58:
	.cfi_offset %r14, -32
.Ltmp59:
	.cfi_offset %r15, -24
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB11_1
# BB#2:                                 # %if.end
	movq	(%rbx), %rdi
	callq	get_minst_from_memory
	movq	%rax, %rbp
	movq	(%rbx), %rdi
	callq	get_minst_from_memory
	subq	$-128, %rax
	movq	%rbp, %rdi
	movl	%r15d, %esi
	movq	%r14, %rdx
	movq	%rax, %rcx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gs_main_run_string_end  # TAILCALL
.LBB11_1:                               # %cleanup
	movl	$-100, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gsapi_run_string_end, .Lfunc_end11-gsapi_run_string_end
	.cfi_endproc

	.globl	gsapi_run_string_with_length
	.align	16, 0x90
	.type	gsapi_run_string_with_length,@function
gsapi_run_string_with_length:           # @gsapi_run_string_with_length
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp62:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp63:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp64:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp65:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp66:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp67:
	.cfi_def_cfa_offset 64
.Ltmp68:
	.cfi_offset %rbx, -56
.Ltmp69:
	.cfi_offset %r12, -48
.Ltmp70:
	.cfi_offset %r13, -40
.Ltmp71:
	.cfi_offset %r14, -32
.Ltmp72:
	.cfi_offset %r15, -24
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movl	%ecx, %r15d
	movl	%edx, %r12d
	movq	%rsi, %r13
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB12_1
# BB#2:                                 # %if.end
	movq	(%rbx), %rdi
	callq	get_minst_from_memory
	movq	%rax, %rbp
	movq	(%rbx), %rdi
	callq	get_minst_from_memory
	subq	$-128, %rax
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movl	%r12d, %edx
	movl	%r15d, %ecx
	movq	%r14, %r8
	movq	%rax, %r9
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gs_main_run_string_with_length # TAILCALL
.LBB12_1:                               # %cleanup
	movl	$-100, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gsapi_run_string_with_length, .Lfunc_end12-gsapi_run_string_with_length
	.cfi_endproc

	.globl	gsapi_run_string
	.align	16, 0x90
	.type	gsapi_run_string,@function
gsapi_run_string:                       # @gsapi_run_string
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
	pushq	%rax
.Ltmp80:
	.cfi_def_cfa_offset 64
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
	movq	%rcx, %r14
	movl	%edx, %r15d
	movq	%rsi, %rbx
	movq	(%rdi), %rdi
	callq	get_minst_from_memory
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB13_1
# BB#2:                                 # %if.end.i
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %r12
	movq	(%rbp), %rdi
	callq	get_minst_from_memory
	movq	%rax, %r13
	movq	(%rbp), %rdi
	callq	get_minst_from_memory
	subq	$-128, %rax
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movl	%r12d, %edx
	movl	%r15d, %ecx
	movq	%r14, %r8
	movq	%rax, %r9
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gs_main_run_string_with_length # TAILCALL
.LBB13_1:                               # %gsapi_run_string_with_length.exit
	movl	$-100, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gsapi_run_string, .Lfunc_end13-gsapi_run_string
	.cfi_endproc

	.globl	gsapi_run_file
	.align	16, 0x90
	.type	gsapi_run_file,@function
gsapi_run_file:                         # @gsapi_run_file
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
	subq	$40, %rsp
.Ltmp93:
	.cfi_def_cfa_offset 96
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
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movl	%edx, 12(%rsp)          # 4-byte Spill
	movq	%rsi, %r13
	movq	%rdi, %rax
	movq	%r13, 32(%rsp)
	movl	$-100, %r15d
	testq	%rax, %rax
	je	.LBB14_9
# BB#1:                                 # %if.end
	movq	(%rax), %rdi
	movq	%rax, (%rsp)            # 8-byte Spill
	callq	get_minst_from_memory
	movq	%rax, %rbp
	xorl	%r15d, %r15d
	leaq	32(%rsp), %rsi
	xorl	%edi, %edi
	callq	*144(%rbp)
	movl	$1, %ebx
	testl	%eax, %eax
	js	.LBB14_4
# BB#2:
	leaq	26(%rsp), %r14
	leaq	32(%rsp), %r12
	.align	16, 0x90
.LBB14_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movl	%eax, %esi
	callq	codepoint_to_utf8
	addl	%eax, %ebx
	xorl	%edi, %edi
	movq	%r12, %rsi
	callq	*144(%rbp)
	testl	%eax, %eax
	jns	.LBB14_3
.LBB14_4:                               # %while.end
	movq	(%rsp), %r12            # 8-byte Reload
	movq	(%r12), %rdi
	movl	$.L.str, %edx
	movl	%ebx, %esi
	callq	*8(%rdi)
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB14_9
# BB#5:                                 # %if.end.9
	movq	%r13, 32(%rsp)
	leaq	32(%rsp), %rsi
	xorl	%edi, %edi
	callq	*144(%rbp)
	testl	%eax, %eax
	movq	%r14, %rbx
	js	.LBB14_8
# BB#6:
	leaq	32(%rsp), %r15
	movq	%r14, %rbx
	.align	16, 0x90
.LBB14_7:                               # %while.body.14
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	codepoint_to_utf8
	cltq
	addq	%rax, %rbx
	xorl	%edi, %edi
	movq	%r15, %rsi
	callq	*144(%rbp)
	testl	%eax, %eax
	jns	.LBB14_7
.LBB14_8:                               # %while.end.16
	movb	$0, (%rbx)
	movq	%rbp, %r8
	subq	$-128, %r8
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movl	12(%rsp), %edx          # 4-byte Reload
	movq	16(%rsp), %rcx          # 8-byte Reload
	callq	gs_main_run_file
	movl	%eax, %r15d
	movq	(%r12), %rdi
	movl	$.L.str, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
.LBB14_9:                               # %cleanup
	movl	%r15d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gsapi_run_file, .Lfunc_end14-gsapi_run_file
	.cfi_endproc

	.globl	gsapi_exit
	.align	16, 0x90
	.type	gsapi_exit,@function
gsapi_exit:                             # @gsapi_exit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp100:
	.cfi_def_cfa_offset 16
.Ltmp101:
	.cfi_offset %rbx, -16
	movl	$-100, %ebx
	testq	%rdi, %rdi
	je	.LBB15_2
# BB#1:                                 # %if.end
	movq	(%rdi), %rdi
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	callq	gs_to_exit
.LBB15_2:                               # %cleanup
	movl	%ebx, %eax
	popq	%rbx
	retq
.Lfunc_end15:
	.size	gsapi_exit, .Lfunc_end15-gsapi_exit
	.cfi_endproc

	.globl	gsapi_set_visual_tracer
	.align	16, 0x90
	.type	gsapi_set_visual_tracer,@function
gsapi_set_visual_tracer:                # @gsapi_set_visual_tracer
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, vd_trace0(%rip)
	retq
.Lfunc_end16:
	.size	gsapi_set_visual_tracer, .Lfunc_end16-gsapi_set_visual_tracer
	.cfi_endproc

	.type	gsapi_instance_counter,@object # @gsapi_instance_counter
	.local	gsapi_instance_counter
	.comm	gsapi_instance_counter,4,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gsapi_run_file"
	.size	.L.str, 15


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
