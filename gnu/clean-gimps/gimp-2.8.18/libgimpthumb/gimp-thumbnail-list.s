	.text
	.file	"gimp-thumbnail-list.bc"
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
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
	subq	$80, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -64(%rbp)
	callq	g_type_init
	xorl	%edi, %edi
                                        # kill: RDI<def> EDI<kill>
	callq	g_option_context_new
	movabsq	$main_entries, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_option_context_add_main_entries
	leaq	-8(%rbp), %rsi
	leaq	-16(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movq	-24(%rbp), %rdi
	callq	g_option_context_parse
	cmpl	$0, %eax
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rdi
	movq	-64(%rbp), %rax
	movq	8(%rax), %rsi
	movb	$0, %al
	callq	g_printerr
	movl	$-1, -4(%rbp)
	jmp	.LBB0_10
.LBB0_2:                                # %if.end
	callq	g_get_home_dir
	movabsq	$.L.str.1, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	g_build_filename
	xorl	%esi, %esi
	leaq	-64(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_dir_open
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_4
# BB#3:                                 # %if.then.6
	movabsq	$.L.str.2, %rdi
	movq	-64(%rbp), %rax
	movq	8(%rax), %rsi
	movb	$0, %al
	callq	g_error
.LBB0_4:                                # %if.end.8
	jmp	.LBB0_5
.LBB0_5:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rdi
	callq	g_dir_read_name
	movq	%rax, -56(%rbp)
	cmpq	$0, %rax
	je	.LBB0_9
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB0_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movb	$0, %al
	callq	g_build_filename
	movl	$4, %esi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	g_file_test
	cmpl	$0, %eax
	je	.LBB0_8
# BB#7:                                 # %if.then.14
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	-72(%rbp), %rdi
	callq	process_folder
.LBB0_8:                                # %if.end.15
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	-72(%rbp), %rdi
	callq	g_free
	jmp	.LBB0_5
.LBB0_9:                                # %while.end
	movq	-32(%rbp), %rdi
	callq	g_dir_close
	movq	-48(%rbp), %rdi
	callq	g_free
	movl	$0, -4(%rbp)
.LBB0_10:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc

	.align	16, 0x90
	.type	g_error,@function
g_error:                                # @g_error
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
	je	.LBB1_3
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
.LBB1_3:                                # %entry
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
	movabsq	$.L.str.21, %rdi
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
	callq	g_logv
	leaq	-32(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB1_1
.Lfunc_end1:
	.size	g_error, .Lfunc_end1-g_error
	.cfi_endproc

	.align	16, 0x90
	.type	process_folder,@function
process_folder:                         # @process_folder
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
	subq	$48, %rsp
	xorl	%esi, %esi
	leaq	-32(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movq	$0, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_dir_open
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.22, %rdi
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movb	$0, %al
	callq	g_printerr
	jmp	.LBB2_9
.LBB2_2:                                # %if.end
	jmp	.LBB2_3
.LBB2_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	g_dir_read_name
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	je	.LBB2_8
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB2_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movb	$0, %al
	callq	g_build_filename
	movl	$4, %esi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_file_test
	cmpl	$0, %eax
	je	.LBB2_6
# BB#5:                                 # %if.then.6
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	-40(%rbp), %rdi
	callq	process_folder
	jmp	.LBB2_7
.LBB2_6:                                # %if.else
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	-40(%rbp), %rdi
	callq	process_thumbnail
.LBB2_7:                                # %if.end.7
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	-40(%rbp), %rdi
	callq	g_free
	jmp	.LBB2_3
.LBB2_8:                                # %while.end
	movq	-16(%rbp), %rdi
	callq	g_dir_close
.LBB2_9:                                # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	process_folder, .Lfunc_end2-process_folder
	.cfi_endproc

	.align	16, 0x90
	.type	parse_option_state,@function
parse_option_state:                     # @parse_option_state
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rdi
	movl	$.L.str.11, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movl	$0, option_state
	jmp	.LBB3_30
.LBB3_2:                                # %if.else
	movq	-24(%rbp), %rdi
	movl	$.L.str.12, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB3_4
# BB#3:                                 # %if.then.3
	movl	$1, option_state
	jmp	.LBB3_29
.LBB3_4:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movl	$.L.str.13, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB3_6
# BB#5:                                 # %if.then.7
	movl	$2, option_state
	jmp	.LBB3_28
.LBB3_6:                                # %if.else.8
	movq	-24(%rbp), %rdi
	movl	$.L.str.14, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB3_8
# BB#7:                                 # %if.then.11
	movl	$3, option_state
	jmp	.LBB3_27
.LBB3_8:                                # %if.else.12
	movq	-24(%rbp), %rdi
	movl	$.L.str.15, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB3_10
# BB#9:                                 # %if.then.15
	movl	$4, option_state
	jmp	.LBB3_26
.LBB3_10:                               # %if.else.16
	movq	-24(%rbp), %rdi
	movl	$.L.str.16, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB3_12
# BB#11:                                # %if.then.19
	movl	$5, option_state
	jmp	.LBB3_25
.LBB3_12:                               # %if.else.20
	movq	-24(%rbp), %rdi
	movl	$.L.str.17, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB3_14
# BB#13:                                # %if.then.23
	movl	$6, option_state
	jmp	.LBB3_24
.LBB3_14:                               # %if.else.24
	movq	-24(%rbp), %rdi
	movl	$.L.str.18, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB3_16
# BB#15:                                # %if.then.27
	movl	$7, option_state
	jmp	.LBB3_23
.LBB3_16:                               # %if.else.28
	movq	-24(%rbp), %rdi
	movl	$.L.str.19, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB3_18
# BB#17:                                # %if.then.31
	movl	$8, option_state
	jmp	.LBB3_22
.LBB3_18:                               # %if.else.32
	movq	-24(%rbp), %rdi
	movl	$.L.str.20, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB3_20
# BB#19:                                # %if.then.35
	movl	$-2, option_state
	jmp	.LBB3_21
.LBB3_20:                               # %if.else.36
	movl	$0, -4(%rbp)
	jmp	.LBB3_31
.LBB3_21:                               # %if.end
	jmp	.LBB3_22
.LBB3_22:                               # %if.end.37
	jmp	.LBB3_23
.LBB3_23:                               # %if.end.38
	jmp	.LBB3_24
.LBB3_24:                               # %if.end.39
	jmp	.LBB3_25
.LBB3_25:                               # %if.end.40
	jmp	.LBB3_26
.LBB3_26:                               # %if.end.41
	jmp	.LBB3_27
.LBB3_27:                               # %if.end.42
	jmp	.LBB3_28
.LBB3_28:                               # %if.end.43
	jmp	.LBB3_29
.LBB3_29:                               # %if.end.44
	jmp	.LBB3_30
.LBB3_30:                               # %if.end.45
	movl	$1, -4(%rbp)
.LBB3_31:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	parse_option_state, .Lfunc_end3-parse_option_state
	.cfi_endproc

	.align	16, 0x90
	.type	parse_option_path,@function
parse_option_path:                      # @parse_option_path
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movl	$1, %r8d
	movq	%rax, option_path
	movl	%r8d, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	parse_option_path, .Lfunc_end4-parse_option_path
	.cfi_endproc

	.align	16, 0x90
	.type	process_thumbnail,@function
process_thumbnail:                      # @process_thumbnail
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
	movq	%rdi, -8(%rbp)
	movq	$0, -24(%rbp)
	callq	gimp_thumbnail_new
	leaq	-24(%rbp), %rdx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	gimp_thumbnail_set_from_thumb
	cmpl	$0, %eax
	jne	.LBB5_7
# BB#1:                                 # %if.then
	cmpl	$-2, option_state
	jne	.LBB5_6
# BB#2:                                 # %if.then.2
	cmpl	$0, option_verbose
	je	.LBB5_4
# BB#3:                                 # %if.then.4
	movabsq	$.L.str.23, %rdi
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movb	$0, %al
	callq	g_print
	jmp	.LBB5_5
.LBB5_4:                                # %if.else
	movabsq	$.L.str, %rdi
	movq	-8(%rbp), %rsi
	movb	$0, %al
	callq	g_print
.LBB5_5:                                # %if.end
	jmp	.LBB5_6
.LBB5_6:                                # %if.end.5
	leaq	-24(%rbp), %rdi
	callq	g_clear_error
	jmp	.LBB5_16
.LBB5_7:                                # %if.else.6
	movq	-16(%rbp), %rdi
	callq	gimp_thumbnail_peek_image
	movl	%eax, -28(%rbp)
	cmpl	$-1, option_state
	je	.LBB5_9
# BB#8:                                 # %lor.lhs.false
	movl	-28(%rbp), %eax
	cmpl	option_state, %eax
	jne	.LBB5_15
.LBB5_9:                                # %land.lhs.true
	cmpq	$0, option_path
	je	.LBB5_11
# BB#10:                                # %lor.lhs.false.11
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movq	option_path, %rsi
	callq	strstr
	cmpq	$0, %rax
	je	.LBB5_15
.LBB5_11:                               # %if.then.14
	cmpl	$0, option_verbose
	je	.LBB5_13
# BB#12:                                # %if.then.16
	movabsq	$.L.str.23, %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movb	$0, %al
	callq	g_print
	jmp	.LBB5_14
.LBB5_13:                               # %if.else.18
	movabsq	$.L.str, %rdi
	movq	-8(%rbp), %rsi
	movb	$0, %al
	callq	g_print
.LBB5_14:                               # %if.end.19
	jmp	.LBB5_15
.LBB5_15:                               # %if.end.20
	jmp	.LBB5_16
.LBB5_16:                               # %if.end.21
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	process_thumbnail, .Lfunc_end5-process_thumbnail
	.cfi_endproc

	.type	main_entries,@object    # @main_entries
	.section	.rodata,"a",@progbits
	.align	16
main_entries:
	.quad	.L.str.3
	.byte	115                     # 0x73
	.zero	3
	.long	0                       # 0x0
	.long	3                       # 0x3
	.zero	4
	.quad	parse_option_state
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.byte	112                     # 0x70
	.zero	3
	.long	0                       # 0x0
	.long	3                       # 0x3
	.zero	4
	.quad	parse_option_path
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	.L.str.9
	.byte	118                     # 0x76
	.zero	3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	option_verbose
	.quad	.L.str.10
	.quad	0
	.zero	48
	.size	main_entries, 192

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s\n"
	.size	.L.str, 4

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	".thumbnails"
	.size	.L.str.1, 12

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Error opening ~/.thumbnails: %s"
	.size	.L.str.2, 32

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"state"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Filter by thumbnail state (unknown|remote|folder|special|not-found|exists|old|failed|ok|error)"
	.size	.L.str.4, 95

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"<state>"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"path"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Filter by original file's path"
	.size	.L.str.7, 31

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"<path>"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"verbose"
	.size	.L.str.9, 8

	.type	option_verbose,@object  # @option_verbose
	.local	option_verbose
	.comm	option_verbose,4,4
	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Print additional info per matched file"
	.size	.L.str.10, 39

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"unknown"
	.size	.L.str.11, 8

	.type	option_state,@object    # @option_state
	.data
	.align	4
option_state:
	.long	4294967295              # 0xffffffff
	.size	option_state, 4

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"remote"
	.size	.L.str.12, 7

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"folder"
	.size	.L.str.13, 7

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"special"
	.size	.L.str.14, 8

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"not-found"
	.size	.L.str.15, 10

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"exists"
	.size	.L.str.16, 7

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"old"
	.size	.L.str.17, 4

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"failed"
	.size	.L.str.18, 7

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"ok"
	.size	.L.str.19, 3

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"error"
	.size	.L.str.20, 6

	.type	option_path,@object     # @option_path
	.local	option_path
	.comm	option_path,8,8
	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"LibGimpThumb"
	.size	.L.str.21, 13

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Error opening '%s': %s"
	.size	.L.str.22, 23

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"%s '%s'\n"
	.size	.L.str.23, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
