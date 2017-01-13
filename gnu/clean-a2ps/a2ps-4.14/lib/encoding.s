	.text
	.file	"encoding.bc"
	.globl	encodings_map_new
	.align	16, 0x90
	.type	encodings_map_new,@function
encodings_map_new:                      # @encodings_map_new
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
	callq	pair_table_new
	popq	%rbp
	retq
.Lfunc_end0:
	.size	encodings_map_new, .Lfunc_end0-encodings_map_new
	.cfi_endproc

	.globl	encodings_map_free
	.align	16, 0x90
	.type	encodings_map_free,@function
encodings_map_free:                     # @encodings_map_free
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	pair_table_free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	encodings_map_free, .Lfunc_end1-encodings_map_free
	.cfi_endproc

	.globl	load_main_encodings_map
	.align	16, 0x90
	.type	load_main_encodings_map,@function
load_main_encodings_map:                # @load_main_encodings_map
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
	subq	$32, %rsp
	movabsq	$.L.str, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	xpw_find_file
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	load_encodings_map
	movl	msg_verbosity, %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	movl	%eax, -20(%rbp)         # 4-byte Spill
	je	.LBB2_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.1, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movq	-8(%rbp), %rsi
	movq	160(%rsi), %rdi
	movq	stderr, %rsi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	pair_table_list_long
.LBB2_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	free
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	load_main_encodings_map, .Lfunc_end2-load_main_encodings_map
	.cfi_endproc

	.align	16, 0x90
	.type	load_encodings_map,@function
load_encodings_map:                     # @load_encodings_map
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	160(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	pair_table_load
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	load_encodings_map, .Lfunc_end3-load_encodings_map
	.cfi_endproc

	.globl	encoding_resolve_font_substitute
	.align	16, 0x90
	.type	encoding_resolve_font_substitute,@function
encoding_resolve_font_substitute:       # @encoding_resolve_font_substitute
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	%rax, %rdi
	callq	strlen
	addq	$16, %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	strcpy
	movq	%rax, -64(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movabsq	$.L.str.2, %rsi
	movq	-40(%rbp), %rdi
	callq	strtok
	movq	%rax, -48(%rbp)
.LBB4_3:                                # %do.body.3
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	pair_get
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB4_7
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	font_exists
	cmpl	$0, %eax
	je	.LBB4_6
# BB#5:                                 # %if.then.7
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rdi
	callq	xstrdup
	movq	%rax, -32(%rbp)
.LBB4_6:                                # %if.end
                                        #   in Loop: Header=BB4_3 Depth=1
	jmp	.LBB4_7
.LBB4_7:                                # %if.end.9
                                        #   in Loop: Header=BB4_3 Depth=1
	jmp	.LBB4_8
.LBB4_8:                                # %do.cond
                                        #   in Loop: Header=BB4_3 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -32(%rbp)
	movb	%cl, -65(%rbp)          # 1-byte Spill
	jne	.LBB4_10
# BB#9:                                 # %land.rhs
                                        #   in Loop: Header=BB4_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.2, %rsi
	callq	strtok
	movq	%rax, -48(%rbp)
	cmpq	$0, %rax
	setne	%cl
	movb	%cl, -65(%rbp)          # 1-byte Spill
.LBB4_10:                               # %land.end
                                        #   in Loop: Header=BB4_3 Depth=1
	movb	-65(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB4_3
# BB#11:                                # %do.end.13
	cmpq	$0, -32(%rbp)
	jne	.LBB4_16
# BB#12:                                # %if.then.15
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB4_14
# BB#13:                                # %if.then.17
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB4_15
.LBB4_14:                               # %if.else
	movl	$1, %edi
	xorl	%esi, %esi
	movabsq	$.L.str.3, %rdx
	movq	-48(%rbp), %rcx
	movb	$0, %al
	callq	error
.LBB4_15:                               # %if.end.19
	jmp	.LBB4_16
.LBB4_16:                               # %if.end.20
	jmp	.LBB4_17
.LBB4_17:                               # %do.body.21
	movl	msg_verbosity, %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB4_19
# BB#18:                                # %if.then.23
	movabsq	$.L.str.4, %rsi
	movq	stderr, %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %r8
	movb	$0, %al
	callq	fprintf
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB4_19:                               # %if.end.25
	jmp	.LBB4_20
.LBB4_20:                               # %do.end.27
	movq	-32(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	encoding_resolve_font_substitute, .Lfunc_end4-encoding_resolve_font_substitute
	.cfi_endproc

	.globl	encoding_self_print
	.align	16, 0x90
	.type	encoding_self_print,@function
encoding_self_print:                    # @encoding_self_print
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	encoding_print_signature
	movq	-8(%rbp), %rsi
	cmpq	$0, 24(%rsi)
	je	.LBB5_3
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB5_3
# BB#2:                                 # %if.then
	movabsq	$.L.str.5, %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -32(%rbp)         # 4-byte Spill
.LBB5_3:                                # %if.end
	movabsq	$.L.str.6, %rsi
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	pair_table_list_long
	movabsq	$.L.str.7, %rsi
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movq	-8(%rbp), %rsi
	movq	2088(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, -40(%rbp)         # 4-byte Spill
	callq	da_self_print
	movabsq	$.L.str.8, %rsi
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	$0, -20(%rbp)
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB5_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -20(%rbp)         # imm = 0x100
	jge	.LBB5_9
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB5_4 Depth=1
	movl	$8, %eax
	movl	-20(%rbp), %ecx
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-48(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB5_7
# BB#6:                                 # %if.then.10
                                        #   in Loop: Header=BB5_4 Depth=1
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB5_7:                                # %if.end.12
                                        #   in Loop: Header=BB5_4 Depth=1
	movabsq	$.L.str.9, %rsi
	movq	-16(%rbp), %rdi
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	40(%rcx,%rax,8), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -56(%rbp)         # 4-byte Spill
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB5_4 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB5_4
.LBB5_9:                                # %for.end
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	movabsq	$.L.str.10, %rsi
	movq	-16(%rbp), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movq	-8(%rbp), %rsi
	movq	2096(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	font_table_self_print
	movl	msg_verbosity, %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB5_15
# BB#10:                                # %if.then.17
	movabsq	$.L.str.11, %rsi
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	$0, -28(%rbp)
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB5_11:                               # %for.cond.19
                                        # =>This Inner Loop Header: Depth=1
	movslq	-28(%rbp), %rax
	cmpl	$-1, base_faces(,%rax,4)
	je	.LBB5_14
# BB#12:                                # %for.body.24
                                        #   in Loop: Header=BB5_11 Depth=1
	movslq	-28(%rbp), %rax
	movl	base_faces(,%rax,4), %ecx
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	-24(%rbp), %ecx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%ecx, %edi
	callq	face_to_string
	movabsq	$.L.str.12, %rsi
	movl	-24(%rbp), %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movslq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	2104(%rsi,%rdx,8), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	wx_self_print
# BB#13:                                # %for.inc.31
                                        #   in Loop: Header=BB5_11 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB5_11
.LBB5_14:                               # %for.end.33
	jmp	.LBB5_15
.LBB5_15:                               # %if.end.34
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	encoding_self_print, .Lfunc_end5-encoding_self_print
	.cfi_endproc

	.align	16, 0x90
	.type	encoding_print_signature,@function
encoding_print_signature:               # @encoding_print_signature
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
	subq	$64, %rsp
	movabsq	$.L.str.18, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	strlen
	addq	$3, %rax
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-40(%rbp), %rsi         # 8-byte Reload
	addq	%rax, %rsi
	movl	%esi, %ecx
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movb	$0, %al
	callq	fprintf
	movl	$0, -20(%rbp)
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB6_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$45, %edi
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	movl	%eax, -48(%rbp)         # 4-byte Spill
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB6_1
.LBB6_4:                                # %for.end
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	movabsq	$.L.str.19, %rsi
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rdi
	movq	-16(%rbp), %rdx
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	documentation_print_plain
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	encoding_print_signature, .Lfunc_end6-encoding_print_signature
	.cfi_endproc

	.align	16, 0x90
	.type	font_table_self_print,@function
font_table_self_print:                  # @font_table_self_print
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
	subq	$48, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$font_entry_hash_qcmp, %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rcx, %rsi
	callq	hash_dump
	movq	%rax, -32(%rbp)
	movl	$0, -20(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-20(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB7_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movslq	-20(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	-16(%rbp), %rsi
	callq	font_entry_self_print
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB7_1
.LBB7_4:                                # %for.end
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	movq	-32(%rbp), %rsi
	movq	%rsi, %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	font_table_self_print, .Lfunc_end7-font_table_self_print
	.cfi_endproc

	.align	16, 0x90
	.type	wx_self_print,@function
wx_self_print:                          # @wx_self_print
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$80, %rsp
.Ltmp27:
	.cfi_offset %rbx, -48
.Ltmp28:
	.cfi_offset %r12, -40
.Ltmp29:
	.cfi_offset %r14, -32
.Ltmp30:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB8_6
# BB#1:                                 # %if.then
	movl	$0, -52(%rbp)
.LBB8_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -52(%rbp)         # imm = 0x100
	jge	.LBB8_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB8_2 Depth=1
	movabsq	$.L.str.25, %rsi
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %edx
	movl	-52(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %r8
	movl	(%r8,%rcx,4), %ecx
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %r8
	movq	-40(%rbp), %r9
	movl	(%r9,%r8,4), %r8d
	movl	-52(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %r9
	movq	-40(%rbp), %r10
	movl	(%r10,%r9,4), %r9d
	movl	-52(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %r10
	movq	-40(%rbp), %r11
	movl	(%r11,%r10,4), %eax
	movl	-52(%rbp), %ebx
	addl	$4, %ebx
	movslq	%ebx, %r10
	movq	-40(%rbp), %r11
	movl	(%r11,%r10,4), %ebx
	movl	-52(%rbp), %r14d
	addl	$5, %r14d
	movslq	%r14d, %r10
	movq	-40(%rbp), %r11
	movl	(%r11,%r10,4), %r14d
	movl	-52(%rbp), %r15d
	addl	$6, %r15d
	movslq	%r15d, %r10
	movq	-40(%rbp), %r11
	movl	(%r11,%r10,4), %r15d
	movl	-52(%rbp), %r12d
	addl	$7, %r12d
	movslq	%r12d, %r10
	movq	-40(%rbp), %r11
	movl	(%r11,%r10,4), %r12d
	movl	%eax, (%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r14d, 16(%rsp)
	movl	%r15d, 24(%rsp)
	movl	%r12d, 32(%rsp)
	movb	$0, %al
	callq	fprintf
	movl	%eax, -56(%rbp)         # 4-byte Spill
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	-52(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB8_2
.LBB8_5:                                # %for.end
	jmp	.LBB8_7
.LBB8_6:                                # %if.else
	movabsq	$.L.str.26, %rdi
	movq	-48(%rbp), %rsi
	callq	fputs
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB8_7:                                # %if.end
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	wx_self_print, .Lfunc_end8-wx_self_print
	.cfi_endproc

	.globl	encoding_get_name
	.align	16, 0x90
	.type	encoding_get_name,@function
encoding_get_name:                      # @encoding_get_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end9:
	.size	encoding_get_name, .Lfunc_end9-encoding_get_name
	.cfi_endproc

	.globl	encoding_get_key
	.align	16, 0x90
	.type	encoding_get_key,@function
encoding_get_key:                       # @encoding_get_key
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end10:
	.size	encoding_get_key, .Lfunc_end10-encoding_get_key
	.cfi_endproc

	.globl	encoding_char_exists
	.align	16, 0x90
	.type	encoding_char_exists,@function
encoding_char_exists:                   # @encoding_char_exists
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movb	%al, -13(%rbp)
	movzbl	-13(%rbp), %edx
	movl	%edx, %edi
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %r8
	movq	2104(%r8,%rcx,8), %rcx
	movl	(%rcx,%rdi,4), %eax
	popq	%rbp
	retq
.Lfunc_end11:
	.size	encoding_char_exists, .Lfunc_end11-encoding_char_exists
	.cfi_endproc

	.globl	encodings_table_new
	.align	16, 0x90
	.type	encodings_table_new,@function
encodings_table_new:                    # @encodings_table_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$80, %eax
	movl	%eax, %edi
	callq	xmalloc
	movl	$32, %ecx
	movl	%ecx, %esi
	movabsq	$encoding_hash_1, %rdi
	movabsq	$encoding_hash_2, %rdx
	movabsq	$encoding_hash_cmp, %r8
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-24(%rbp), %rcx         # 8-byte Reload
	callq	hash_init
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	encodings_table_new, .Lfunc_end12-encodings_table_new
	.cfi_endproc

	.align	16, 0x90
	.type	encoding_hash_1,@function
encoding_hash_1:                        # @encoding_hash_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	$0, -16(%rbp)
# BB#2:                                 # %do.body.2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
.LBB13_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	cmpb	$0, 1(%rax)
	je	.LBB13_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB13_3 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$15, %edx
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-28(%rbp), %edx         # 4-byte Reload
	shll	%cl, %edx
	movslq	%edx, %rax
	addq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB13_3
.LBB13_5:                               # %while.end
	jmp	.LBB13_6
.LBB13_6:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
# BB#7:                                 # %do.end.5
	movq	-40(%rbp), %rax         # 8-byte Reload
	popq	%rbp
	retq
.Lfunc_end13:
	.size	encoding_hash_1, .Lfunc_end13-encoding_hash_1
	.cfi_endproc

	.align	16, 0x90
	.type	encoding_hash_2,@function
encoding_hash_2:                        # @encoding_hash_2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	$0, -16(%rbp)
# BB#2:                                 # %do.body.2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
.LBB14_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	cmpb	$0, 1(%rax)
	je	.LBB14_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB14_3 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$7, %edx
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-28(%rbp), %edx         # 4-byte Reload
	shll	%cl, %edx
	movslq	%edx, %rax
	addq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB14_3
.LBB14_5:                               # %while.end
	jmp	.LBB14_6
.LBB14_6:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
# BB#7:                                 # %do.end.5
	movq	-40(%rbp), %rax         # 8-byte Reload
	popq	%rbp
	retq
.Lfunc_end14:
	.size	encoding_hash_2, .Lfunc_end14-encoding_hash_2
	.cfi_endproc

	.align	16, 0x90
	.type	encoding_hash_cmp,@function
encoding_hash_cmp:                      # @encoding_hash_cmp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB15_2
.LBB15_2:                               # %do.body.1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
.LBB15_3:                               # %do.body.4
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movzbl	1(%rax), %edx
	cmpl	$0, %edx
	jne	.LBB15_5
# BB#4:                                 # %if.then
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB15_7
.LBB15_5:                               # %if.end
                                        #   in Loop: Header=BB15_3 Depth=1
	jmp	.LBB15_6
.LBB15_6:                               # %do.cond
                                        #   in Loop: Header=BB15_3 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -40(%rbp)
	movzbl	1(%rax), %esi
	cmpl	%esi, %ecx
	je	.LBB15_3
.LBB15_7:                               # %do.end
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-40(%rbp), %rax
	movzbl	(%rax), %edx
	subl	%edx, %ecx
	movl	%ecx, -20(%rbp)
# BB#8:                                 # %do.end.15
	movl	-20(%rbp), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
# BB#9:                                 # %do.end.17
	movl	-44(%rbp), %eax         # 4-byte Reload
	popq	%rbp
	retq
.Lfunc_end15:
	.size	encoding_hash_cmp, .Lfunc_end15-encoding_hash_cmp
	.cfi_endproc

	.globl	encodings_table_free
	.align	16, 0x90
	.type	encodings_table_free,@function
encodings_table_free:                   # @encodings_table_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$encoding_free, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	hash_free
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	encodings_table_free, .Lfunc_end16-encodings_table_free
	.cfi_endproc

	.align	16, 0x90
	.type	encoding_free,@function
encoding_free:                          # @encoding_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	free
.LBB17_3:                               # %if.end
	jmp	.LBB17_4
.LBB17_4:                               # %do.end
	jmp	.LBB17_5
.LBB17_5:                               # %do.body.2
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB17_7
# BB#6:                                 # %if.then.4
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	free
.LBB17_7:                               # %if.end.6
	jmp	.LBB17_8
.LBB17_8:                               # %do.end.7
	jmp	.LBB17_9
.LBB17_9:                               # %do.body.8
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB17_11
# BB#10:                                # %if.then.10
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	free
.LBB17_11:                              # %if.end.12
	jmp	.LBB17_12
.LBB17_12:                              # %do.end.13
	jmp	.LBB17_13
.LBB17_13:                              # %do.body.14
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB17_15
# BB#14:                                # %if.then.16
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	free
.LBB17_15:                              # %if.end.18
	jmp	.LBB17_16
.LBB17_16:                              # %do.end.19
	movl	$0, -12(%rbp)
.LBB17_17:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -12(%rbp)         # imm = 0x100
	jge	.LBB17_20
# BB#18:                                # %for.body
                                        #   in Loop: Header=BB17_17 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	40(%rcx,%rax,8), %rdi
	callq	free
# BB#19:                                # %for.inc
                                        #   in Loop: Header=BB17_17 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB17_17
.LBB17_20:                              # %for.end
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	pair_table_free
	movabsq	$free, %rsi
	movq	-8(%rbp), %rax
	movq	2088(%rax), %rdi
	callq	da_free
	movq	-8(%rbp), %rax
	movq	2096(%rax), %rdi
	callq	font_table_free
	movl	$0, -12(%rbp)
.LBB17_21:                              # %for.cond.20
                                        # =>This Inner Loop Header: Depth=1
	movslq	-12(%rbp), %rax
	cmpl	$-1, base_faces(,%rax,4)
	je	.LBB17_24
# BB#22:                                # %for.body.24
                                        #   in Loop: Header=BB17_21 Depth=1
	movslq	-12(%rbp), %rax
	movslq	base_faces(,%rax,4), %rax
	movq	-8(%rbp), %rcx
	movq	2104(%rcx,%rax,8), %rax
	movq	%rax, %rdi
	callq	free
# BB#23:                                # %for.inc.29
                                        #   in Loop: Header=BB17_21 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB17_21
.LBB17_24:                              # %for.end.31
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	encoding_free, .Lfunc_end17-encoding_free
	.cfi_endproc

	.globl	encoding_add_font_name_used
	.align	16, 0x90
	.type	encoding_add_font_name_used,@function
encoding_add_font_name_used:            # @encoding_add_font_name_used
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp60:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	2088(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	callq	xstrdup
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	da_append
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	encoding_add_font_name_used, .Lfunc_end18-encoding_add_font_name_used
	.cfi_endproc

	.globl	encoding_build_faces_wx
	.align	16, 0x90
	.type	encoding_build_faces_wx,@function
encoding_build_faces_wx:                # @encoding_build_faces_wx
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp63:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB19_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-20(%rbp), %rax
	cmpl	$-1, base_faces(,%rax,4)
	je	.LBB19_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB19_1 Depth=1
	movslq	-20(%rbp), %rax
	movl	base_faces(,%rax,4), %ecx
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movslq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	184(%rdx,%rax,8), %rsi
	callq	encoding_add_font_name_used
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movslq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	184(%rdx,%rax,8), %rdx
	callq	encoding_resolve_font_substitute
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	addq	$40, %rax
	movslq	-24(%rbp), %rdx
	movq	-16(%rbp), %r8
	movq	2104(%r8,%rdx,8), %rcx
	movq	%rax, %rdx
	callq	font_info_get_wx_for_vector
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB19_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB19_1
.LBB19_4:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	encoding_build_faces_wx, .Lfunc_end19-encoding_build_faces_wx
	.cfi_endproc

	.globl	get_encoding_by_alias
	.align	16, 0x90
	.type	get_encoding_by_alias,@function
get_encoding_by_alias:                  # @get_encoding_by_alias
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp66:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	160(%rsi), %rdi
	movq	-24(%rbp), %rsi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	callq	strlower
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	encodings_map_resolve_alias
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB20_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	encoding_get
	movq	%rax, -8(%rbp)
	jmp	.LBB20_3
.LBB20_2:                               # %if.else
	movq	$0, -8(%rbp)
.LBB20_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	get_encoding_by_alias, .Lfunc_end20-get_encoding_by_alias
	.cfi_endproc

	.align	16, 0x90
	.type	encodings_map_resolve_alias,@function
encodings_map_resolve_alias:            # @encodings_map_resolve_alias
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp69:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	pair_get
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	encodings_map_resolve_alias, .Lfunc_end21-encodings_map_resolve_alias
	.cfi_endproc

	.align	16, 0x90
	.type	encoding_get,@function
encoding_get:                           # @encoding_get
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp72:
	.cfi_def_cfa_register %rbp
	subq	$2208, %rsp             # imm = 0x8A0
	leaq	-2200(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -2200(%rbp)
	movq	-8(%rbp), %rsi
	movq	400(%rsi), %rdi
	movq	%rax, %rsi
	callq	hash_find_item
	movq	%rax, -2208(%rbp)
	cmpq	$0, -2208(%rbp)
	jne	.LBB22_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	encoding_add
	leaq	-2200(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	400(%rdi), %rdi
	callq	hash_find_item
	movq	%rax, -2208(%rbp)
.LBB22_2:                               # %if.end
	movq	-2208(%rbp), %rax
	addq	$2208, %rsp             # imm = 0x8A0
	popq	%rbp
	retq
.Lfunc_end22:
	.size	encoding_get, .Lfunc_end22-encoding_get
	.cfi_endproc

	.globl	dump_encodings_setup
	.align	16, 0x90
	.type	dump_encodings_setup,@function
dump_encodings_setup:                   # @dump_encodings_setup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp75:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$encoding_hash_qcmp, %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	400(%rsi), %rdi
	movq	%rcx, %rsi
	callq	hash_dump
	movq	%rax, -32(%rbp)
	movl	$0, -20(%rbp)
.LBB23_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-20(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB23_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movslq	-20(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdx
	callq	dump_encoding_setup
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB23_1
.LBB23_4:                               # %for.end
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	dump_encodings_setup, .Lfunc_end23-dump_encodings_setup
	.cfi_endproc

	.align	16, 0x90
	.type	encoding_hash_qcmp,@function
encoding_hash_qcmp:                     # @encoding_hash_qcmp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp78:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB24_2
.LBB24_2:                               # %do.body.1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
.LBB24_3:                               # %do.body.4
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movzbl	1(%rax), %edx
	cmpl	$0, %edx
	jne	.LBB24_5
# BB#4:                                 # %if.then
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB24_7
.LBB24_5:                               # %if.end
                                        #   in Loop: Header=BB24_3 Depth=1
	jmp	.LBB24_6
.LBB24_6:                               # %do.cond
                                        #   in Loop: Header=BB24_3 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -40(%rbp)
	movzbl	1(%rax), %esi
	cmpl	%esi, %ecx
	je	.LBB24_3
.LBB24_7:                               # %do.end
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-40(%rbp), %rax
	movzbl	(%rax), %edx
	subl	%edx, %ecx
	movl	%ecx, -20(%rbp)
# BB#8:                                 # %do.end.15
	movl	-20(%rbp), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
# BB#9:                                 # %do.end.17
	movl	-44(%rbp), %eax         # 4-byte Reload
	popq	%rbp
	retq
.Lfunc_end24:
	.size	encoding_hash_qcmp, .Lfunc_end24-encoding_hash_qcmp
	.cfi_endproc

	.align	16, 0x90
	.type	dump_encoding_setup,@function
dump_encoding_setup:                    # @dump_encoding_setup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp81:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	2088(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	%rdx, -56(%rbp)
	movq	-24(%rbp), %rdx
	movq	2088(%rdx), %rdi
	callq	da_qsort
	movabsq	$free, %rsi
	movq	-24(%rbp), %rdx
	movq	2088(%rdx), %rdi
	callq	da_unique
	movq	$0, -32(%rbp)
.LBB25_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	2088(%rcx), %rcx
	cmpq	40(%rcx), %rax
	jae	.LBB25_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdx
	callq	encoding_resolve_font_substitute
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	font_is_to_reencode
	cmpl	$0, %eax
	jne	.LBB25_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB25_1 Depth=1
	movabsq	$free, %rdx
	movq	-24(%rbp), %rax
	movq	2088(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	da_remove_at
.LBB25_4:                               # %if.end
                                        #   in Loop: Header=BB25_1 Depth=1
	jmp	.LBB25_5
.LBB25_5:                               # %for.inc
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB25_1
.LBB25_6:                               # %for.end
	movabsq	$.L.str.47, %rsi
	movq	-24(%rbp), %rax
	movq	2088(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.48, %rsi
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-40(%rbp), %rcx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movq	$0, -32(%rbp)
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB25_7:                               # %for.cond.10
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jae	.LBB25_10
# BB#8:                                 # %for.body.12
                                        #   in Loop: Header=BB25_7 Depth=1
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %r8
	movq	-56(%rbp), %r9
	movq	(%r9,%r8,8), %r8
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%r8, %rdx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	encoding_resolve_font_substitute
	movabsq	$.L.str.49, %rsi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	fprintf
	movl	%eax, -92(%rbp)         # 4-byte Spill
# BB#9:                                 # %for.inc.18
                                        #   in Loop: Header=BB25_7 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB25_7
.LBB25_10:                              # %for.end.20
	movabsq	$.L.str.50, %rdi
	movq	-8(%rbp), %rsi
	callq	fputs
	movl	%eax, -96(%rbp)         # 4-byte Spill
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	dump_encoding_setup, .Lfunc_end25-dump_encoding_setup
	.cfi_endproc

	.globl	char_WX
	.align	16, 0x90
	.type	char_WX,@function
char_WX:                                # @char_WX
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp84:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movb	%sil, %al
	movq	%rdi, -16(%rbp)
	movb	%al, -17(%rbp)
	movzbl	-17(%rbp), %esi
	movslq	%esi, %rdi
	movq	-16(%rbp), %rcx
	movq	1528(%rcx), %rcx
	movslq	136(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movq	368(%rdx), %rdx
	movq	2104(%rdx,%rcx,8), %rcx
	movl	(%rcx,%rdi,4), %esi
	movl	%esi, -24(%rbp)
	cmpl	$0, -24(%rbp)
	je	.LBB26_2
# BB#1:                                 # %if.then
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB26_26
.LBB26_2:                               # %if.end
	movq	-16(%rbp), %rax
	movl	304(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$5, %rdx
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	ja	.LBB26_25
# BB#27:                                # %if.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	.LJTI26_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB26_3:                               # %sw.bb
	movabsq	$.L.str.13, %rsi
	leaq	-27(%rbp), %rdi
	movzbl	-17(%rbp), %edx
	movb	$0, %al
	callq	sprintf
	movq	-16(%rbp), %rsi
	movq	1528(%rsi), %rsi
	movslq	136(%rsi), %rsi
	movq	-16(%rbp), %rdi
	movq	368(%rdi), %rdi
	movq	2104(%rdi,%rsi,8), %rsi
	movl	368(%rsi), %edx
	movq	-16(%rbp), %rsi
	movq	1528(%rsi), %rsi
	movslq	136(%rsi), %rsi
	movq	-16(%rbp), %rdi
	movq	368(%rdi), %rdi
	movq	2104(%rdi,%rsi,8), %rsi
	addl	480(%rsi), %edx
	movsbl	-27(%rbp), %ecx
	movslq	%ecx, %rsi
	movq	-16(%rbp), %rdi
	movq	1528(%rdi), %rdi
	movslq	136(%rdi), %rdi
	movq	-16(%rbp), %r8
	movq	368(%r8), %r8
	movq	2104(%r8,%rdi,8), %rdi
	addl	(%rdi,%rsi,4), %edx
	movsbl	-26(%rbp), %ecx
	movslq	%ecx, %rsi
	movq	-16(%rbp), %rdi
	movq	1528(%rdi), %rdi
	movslq	136(%rdi), %rdi
	movq	-16(%rbp), %r8
	movq	368(%r8), %r8
	movq	2104(%r8,%rdi,8), %rdi
	addl	(%rdi,%rsi,4), %edx
	movl	%edx, -4(%rbp)
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB26_26
.LBB26_4:                               # %sw.bb.40
	movabsq	$.L.str.14, %rsi
	leaq	-31(%rbp), %rdi
	movzbl	-17(%rbp), %edx
	movb	$0, %al
	callq	sprintf
	movq	-16(%rbp), %rsi
	movq	1528(%rsi), %rsi
	movslq	136(%rsi), %rsi
	movq	-16(%rbp), %rdi
	movq	368(%rdi), %rdi
	movq	2104(%rdi,%rsi,8), %rsi
	movl	368(%rsi), %edx
	movsbl	-31(%rbp), %ecx
	movslq	%ecx, %rsi
	movq	-16(%rbp), %rdi
	movq	1528(%rdi), %rdi
	movslq	136(%rdi), %rdi
	movq	-16(%rbp), %r8
	movq	368(%r8), %r8
	movq	2104(%r8,%rdi,8), %rdi
	addl	(%rdi,%rsi,4), %edx
	movsbl	-30(%rbp), %ecx
	movslq	%ecx, %rsi
	movq	-16(%rbp), %rdi
	movq	1528(%rdi), %rdi
	movslq	136(%rdi), %rdi
	movq	-16(%rbp), %r8
	movq	368(%r8), %r8
	movq	2104(%r8,%rdi,8), %rdi
	addl	(%rdi,%rsi,4), %edx
	movsbl	-29(%rbp), %ecx
	movslq	%ecx, %rsi
	movq	-16(%rbp), %rdi
	movq	1528(%rdi), %rdi
	movslq	136(%rdi), %rdi
	movq	-16(%rbp), %r8
	movq	368(%r8), %r8
	movq	2104(%r8,%rdi,8), %rdi
	addl	(%rdi,%rsi,4), %edx
	movl	%edx, -4(%rbp)
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB26_26
.LBB26_5:                               # %sw.bb.85
	movq	-16(%rbp), %rax
	movq	1528(%rax), %rax
	movslq	136(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	368(%rcx), %rcx
	movq	2104(%rcx,%rax,8), %rax
	movl	128(%rax), %edx
	movl	%edx, -4(%rbp)
	jmp	.LBB26_26
.LBB26_6:                               # %sw.bb.93
	movq	-16(%rbp), %rax
	movq	1528(%rax), %rax
	movslq	136(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	368(%rcx), %rcx
	movq	2104(%rcx,%rax,8), %rax
	movl	252(%rax), %edx
	movl	%edx, -4(%rbp)
	jmp	.LBB26_26
.LBB26_7:                               # %sw.bb.101
	movl	$127, %eax
	movzbl	-17(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB26_9
# BB#8:                                 # %if.then.104
	movq	-16(%rbp), %rax
	movq	1528(%rax), %rax
	movslq	136(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	368(%rcx), %rcx
	movq	2104(%rcx,%rax,8), %rax
	movl	308(%rax), %edx
	movq	-16(%rbp), %rax
	movq	1528(%rax), %rax
	movslq	136(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	368(%rcx), %rcx
	movq	2104(%rcx,%rax,8), %rax
	addl	180(%rax), %edx
	addl	-24(%rbp), %edx
	movl	%edx, -24(%rbp)
	movzbl	-17(%rbp), %edx
	andl	$127, %edx
	movb	%dl, %sil
	movb	%sil, -17(%rbp)
.LBB26_9:                               # %if.end.123
	movzbl	-17(%rbp), %eax
	cmpl	$127, %eax
	jne	.LBB26_11
# BB#10:                                # %if.then.127
	movq	-16(%rbp), %rax
	movq	1528(%rax), %rax
	movslq	136(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	368(%rcx), %rcx
	movq	2104(%rcx,%rax,8), %rax
	movl	376(%rax), %edx
	movq	-16(%rbp), %rax
	movq	1528(%rax), %rax
	movslq	136(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	368(%rcx), %rcx
	movq	2104(%rcx,%rax,8), %rax
	addl	252(%rax), %edx
	addl	-24(%rbp), %edx
	movl	%edx, -24(%rbp)
	jmp	.LBB26_15
.LBB26_11:                              # %if.else
	movzbl	-17(%rbp), %eax
	cmpl	$32, %eax
	jge	.LBB26_13
# BB#12:                                # %if.then.147
	movq	-16(%rbp), %rax
	movq	1528(%rax), %rax
	movslq	136(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	368(%rcx), %rcx
	movq	2104(%rcx,%rax,8), %rax
	movl	376(%rax), %edx
	movzbl	-17(%rbp), %esi
	addl	$64, %esi
	movslq	%esi, %rax
	movq	-16(%rbp), %rcx
	movq	1528(%rcx), %rcx
	movslq	136(%rcx), %rcx
	movq	-16(%rbp), %rdi
	movq	368(%rdi), %rdi
	movq	2104(%rdi,%rcx,8), %rcx
	addl	(%rcx,%rax,4), %edx
	addl	-24(%rbp), %edx
	movl	%edx, -24(%rbp)
	jmp	.LBB26_14
.LBB26_13:                              # %if.else.167
	movzbl	-17(%rbp), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	1528(%rdx), %rdx
	movslq	136(%rdx), %rdx
	movq	-16(%rbp), %rsi
	movq	368(%rsi), %rsi
	movq	2104(%rsi,%rdx,8), %rdx
	movl	(%rdx,%rcx,4), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB26_14:                              # %if.end.178
	jmp	.LBB26_15
.LBB26_15:                              # %if.end.179
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB26_26
.LBB26_16:                              # %sw.bb.180
	movl	$127, %eax
	movzbl	-17(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB26_18
# BB#17:                                # %if.then.184
	movq	-16(%rbp), %rax
	movq	1528(%rax), %rax
	movslq	136(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	368(%rcx), %rcx
	movq	2104(%rcx,%rax,8), %rax
	movl	308(%rax), %edx
	movq	-16(%rbp), %rax
	movq	1528(%rax), %rax
	movslq	136(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	368(%rcx), %rcx
	movq	2104(%rcx,%rax,8), %rax
	addl	180(%rax), %edx
	addl	-24(%rbp), %edx
	movl	%edx, -24(%rbp)
	movzbl	-17(%rbp), %edx
	andl	$127, %edx
	movb	%dl, %sil
	movb	%sil, -17(%rbp)
.LBB26_18:                              # %if.end.204
	movzbl	-17(%rbp), %eax
	cmpl	$127, %eax
	jne	.LBB26_20
# BB#19:                                # %if.then.208
	movq	-16(%rbp), %rax
	movq	1528(%rax), %rax
	movslq	136(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	368(%rcx), %rcx
	movq	2104(%rcx,%rax,8), %rax
	movl	268(%rax), %edx
	movq	-16(%rbp), %rax
	movq	1528(%rax), %rax
	movslq	136(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	368(%rcx), %rcx
	movq	2104(%rcx,%rax,8), %rax
	addl	180(%rax), %edx
	movq	-16(%rbp), %rax
	movq	1528(%rax), %rax
	movslq	136(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	368(%rcx), %rcx
	movq	2104(%rcx,%rax,8), %rax
	addl	252(%rax), %edx
	addl	-24(%rbp), %edx
	movl	%edx, -24(%rbp)
	jmp	.LBB26_24
.LBB26_20:                              # %if.else.233
	movzbl	-17(%rbp), %eax
	cmpl	$32, %eax
	jge	.LBB26_22
# BB#21:                                # %if.then.237
	movq	-16(%rbp), %rax
	movq	1528(%rax), %rax
	movslq	136(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	368(%rcx), %rcx
	movq	2104(%rcx,%rax,8), %rax
	movl	268(%rax), %edx
	movq	-16(%rbp), %rax
	movq	1528(%rax), %rax
	movslq	136(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	368(%rcx), %rcx
	movq	2104(%rcx,%rax,8), %rax
	addl	180(%rax), %edx
	movzbl	-17(%rbp), %esi
	addl	$64, %esi
	movslq	%esi, %rax
	movq	-16(%rbp), %rcx
	movq	1528(%rcx), %rcx
	movslq	136(%rcx), %rcx
	movq	-16(%rbp), %rdi
	movq	368(%rdi), %rdi
	movq	2104(%rdi,%rcx,8), %rcx
	addl	(%rcx,%rax,4), %edx
	addl	-24(%rbp), %edx
	movl	%edx, -24(%rbp)
	jmp	.LBB26_23
.LBB26_22:                              # %if.else.265
	movzbl	-17(%rbp), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	1528(%rdx), %rdx
	movslq	136(%rdx), %rdx
	movq	-16(%rbp), %rsi
	movq	368(%rsi), %rsi
	movq	2104(%rsi,%rdx,8), %rdx
	movl	(%rdx,%rcx,4), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB26_23:                              # %if.end.276
	jmp	.LBB26_24
.LBB26_24:                              # %if.end.277
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB26_26
.LBB26_25:                              # %sw.default
	callq	abort
.LBB26_26:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	char_WX, .Lfunc_end26-char_WX
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI26_0:
	.quad	.LBB26_7
	.quad	.LBB26_5
	.quad	.LBB26_6
	.quad	.LBB26_4
	.quad	.LBB26_3
	.quad	.LBB26_16

	.text
	.globl	string_WX
	.align	16, 0x90
	.type	string_WX,@function
string_WX:                              # @string_WX
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp87:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB27_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB27_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB27_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movzbl	(%rax), %esi
	callq	char_WX
	addl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB27_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB27_1
.LBB27_4:                               # %for.end
	movl	-20(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	string_WX, .Lfunc_end27-string_WX
	.cfi_endproc

	.globl	set_encoding
	.align	16, 0x90
	.type	set_encoding,@function
set_encoding:                           # @set_encoding
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp88:
	.cfi_def_cfa_offset 16
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp90:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 368(%rdi)
	popq	%rbp
	retq
.Lfunc_end28:
	.size	set_encoding, .Lfunc_end28-set_encoding
	.cfi_endproc

	.globl	list_encodings_short
	.align	16, 0x90
	.type	list_encodings_short,@function
list_encodings_short:                   # @list_encodings_short
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp91:
	.cfi_def_cfa_offset 16
.Ltmp92:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp93:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$.L.str.15, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movabsq	$.L.str.16, %rdx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	16(%rsi), %rsi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	pw_lister_on_suffix
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	list_encodings_short, .Lfunc_end29-list_encodings_short
	.cfi_endproc

	.globl	list_encodings_long
	.align	16, 0x90
	.type	list_encodings_long,@function
list_encodings_long:                    # @list_encodings_long
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp94:
	.cfi_def_cfa_offset 16
.Ltmp95:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp96:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movabsq	$.L.str.16, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	16(%rsi), %rdi
	movq	%rax, %rsi
	callq	pw_glob_on_suffix
	movabsq	$da_encoding_name_cmp, %rsi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	callq	da_qsort_with_arg
	movabsq	$.L.str.15, %rdi
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movq	$0, -40(%rbp)
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB30_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	40(%rcx), %rax
	jae	.LBB30_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	encoding_get
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	encoding_print_signature
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	movl	%eax, -52(%rbp)         # 4-byte Spill
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB30_1
.LBB30_4:                               # %for.end
	movabsq	$free, %rsi
	movq	-24(%rbp), %rdi
	callq	da_free
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	list_encodings_long, .Lfunc_end30-list_encodings_long
	.cfi_endproc

	.align	16, 0x90
	.type	da_encoding_name_cmp,@function
da_encoding_name_cmp:                   # @da_encoding_name_cmp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
.Ltmp98:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp99:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	encoding_get
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	encoding_get
	movq	8(%rax), %rsi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	callq	strverscmp
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	da_encoding_name_cmp, .Lfunc_end31-da_encoding_name_cmp
	.cfi_endproc

	.globl	list_texinfo_encodings_long
	.align	16, 0x90
	.type	list_texinfo_encodings_long,@function
list_texinfo_encodings_long:            # @list_texinfo_encodings_long
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp100:
	.cfi_def_cfa_offset 16
.Ltmp101:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp102:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movabsq	$.L.str.16, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	16(%rsi), %rdi
	movq	%rax, %rsi
	callq	pw_glob_on_suffix
	movabsq	$da_encoding_name_cmp, %rsi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	callq	da_qsort_with_arg
	movabsq	$.L.str.17, %rdi
	movq	-16(%rbp), %rsi
	callq	fputs
	movl	$0, -36(%rbp)
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB32_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	cmpq	40(%rdx), %rcx
	jae	.LBB32_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB32_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rsi
	callq	encoding_get
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	encoding_texinfo_print_signature
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB32_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB32_1
.LBB32_4:                               # %for.end
	movabsq	$free, %rsi
	movq	-24(%rbp), %rdi
	callq	da_free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	list_texinfo_encodings_long, .Lfunc_end32-list_texinfo_encodings_long
	.cfi_endproc

	.align	16, 0x90
	.type	encoding_texinfo_print_signature,@function
encoding_texinfo_print_signature:       # @encoding_texinfo_print_signature
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp103:
	.cfi_def_cfa_offset 16
.Ltmp104:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp105:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$.L.str.51, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rdx
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rcx
	movq	%rax, %rsi
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.19, %rsi
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rdi
	movq	-16(%rbp), %rdx
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	documentation_print_texinfo
	movabsq	$.L.str.52, %rdi
	movq	-16(%rbp), %rsi
	callq	fputs
	movl	%eax, -24(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	encoding_texinfo_print_signature, .Lfunc_end33-encoding_texinfo_print_signature
	.cfi_endproc

	.align	16, 0x90
	.type	font_entry_hash_qcmp,@function
font_entry_hash_qcmp:                   # @font_entry_hash_qcmp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp106:
	.cfi_def_cfa_offset 16
.Ltmp107:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp108:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB34_2
.LBB34_2:                               # %do.body.1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
.LBB34_3:                               # %do.body.4
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movzbl	1(%rax), %edx
	cmpl	$0, %edx
	jne	.LBB34_5
# BB#4:                                 # %if.then
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB34_7
.LBB34_5:                               # %if.end
                                        #   in Loop: Header=BB34_3 Depth=1
	jmp	.LBB34_6
.LBB34_6:                               # %do.cond
                                        #   in Loop: Header=BB34_3 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -40(%rbp)
	movzbl	1(%rax), %esi
	cmpl	%esi, %ecx
	je	.LBB34_3
.LBB34_7:                               # %do.end
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-40(%rbp), %rax
	movzbl	(%rax), %edx
	subl	%edx, %ecx
	movl	%ecx, -20(%rbp)
# BB#8:                                 # %do.end.15
	movl	-20(%rbp), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
# BB#9:                                 # %do.end.17
	movl	-44(%rbp), %eax         # 4-byte Reload
	popq	%rbp
	retq
.Lfunc_end34:
	.size	font_entry_hash_qcmp, .Lfunc_end34-font_entry_hash_qcmp
	.cfi_endproc

	.align	16, 0x90
	.type	font_entry_self_print,@function
font_entry_self_print:                  # @font_entry_self_print
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp109:
	.cfi_def_cfa_offset 16
.Ltmp110:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp111:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movabsq	$.L.str.20, %rax
	movabsq	$.L.str.24, %rcx
	movabsq	$.L.str.23, %rdx
	movabsq	$.L.str.22, %r8
	movabsq	$.L.str.21, %r9
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	-8(%rbp), %r10
	cmpl	$0, 8(%r10)
	cmovneq	%r9, %r8
	movq	-8(%rbp), %r9
	cmpl	$0, 12(%r9)
	cmovneq	%rdx, %rcx
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	movq	%r8, %rcx
	movq	-32(%rbp), %r8          # 8-byte Reload
	movb	$0, %al
	callq	fprintf
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	wx_self_print
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	font_entry_self_print, .Lfunc_end35-font_entry_self_print
	.cfi_endproc

	.align	16, 0x90
	.type	font_table_free,@function
font_table_free:                        # @font_table_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp112:
	.cfi_def_cfa_offset 16
.Ltmp113:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp114:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$font_entry_free, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	hash_free
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	font_table_free, .Lfunc_end36-font_table_free
	.cfi_endproc

	.align	16, 0x90
	.type	font_entry_free,@function
font_entry_free:                        # @font_entry_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp115:
	.cfi_def_cfa_offset 16
.Ltmp116:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp117:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	free
	movq	-8(%rbp), %rdi
	callq	free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	font_entry_free, .Lfunc_end37-font_entry_free
	.cfi_endproc

	.align	16, 0x90
	.type	encoding_add,@function
encoding_add:                           # @encoding_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp118:
	.cfi_def_cfa_offset 16
.Ltmp119:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp120:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	encoding_new
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	encoding_setup
	movq	-8(%rbp), %rdi
	callq	face_eo_font_is_set
	cmpl	$0, %eax
	je	.LBB38_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	encoding_build_faces_wx
.LBB38_2:                               # %if.end
	movl	msg_verbosity, %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB38_4
# BB#3:                                 # %if.then.3
	movq	-24(%rbp), %rdi
	movq	stderr, %rsi
	callq	encoding_self_print
.LBB38_4:                               # %if.end.4
	movq	-8(%rbp), %rax
	movq	400(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	hash_insert
	movq	%rax, -32(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	encoding_add, .Lfunc_end38-encoding_add
	.cfi_endproc

	.align	16, 0x90
	.type	encoding_new,@function
encoding_new:                           # @encoding_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp121:
	.cfi_def_cfa_offset 16
.Ltmp122:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp123:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$2184, %eax             # imm = 0x888
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	xmalloc
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	xstrdup
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 16(%rax)
	callq	pair_table_new
	movabsq	$.L.str.27, %rdi
	movl	$10, %edx
	movl	%edx, %ecx
	movl	$1, %edx
	movabsq	$da_str_print, %r8
	movabsq	$da_str_cmp, %r9
	movq	-24(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movq	%rcx, %rsi
	callq	da_new
	movq	-24(%rbp), %rcx
	movq	%rax, 2088(%rcx)
	callq	font_table_new
	movq	-24(%rbp), %rcx
	movq	%rax, 2096(%rcx)
	movl	$0, -12(%rbp)
.LBB39_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$10, -12(%rbp)
	jge	.LBB39_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB39_1 Depth=1
	movslq	-12(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	$0, 2104(%rcx,%rax,8)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB39_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB39_1
.LBB39_4:                               # %for.end
	movl	$0, -12(%rbp)
.LBB39_5:                               # %for.cond.6
                                        # =>This Inner Loop Header: Depth=1
	movslq	-12(%rbp), %rax
	cmpl	$-1, base_faces(,%rax,4)
	je	.LBB39_8
# BB#6:                                 # %for.body.10
                                        #   in Loop: Header=BB39_5 Depth=1
	callq	wx_new
	movslq	-12(%rbp), %rcx
	movslq	base_faces(,%rcx,4), %rcx
	movq	-24(%rbp), %rdx
	movq	%rax, 2104(%rdx,%rcx,8)
# BB#7:                                 # %for.inc.17
                                        #   in Loop: Header=BB39_5 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB39_5
.LBB39_8:                               # %for.end.19
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	encoding_new, .Lfunc_end39-encoding_new
	.cfi_endproc

	.align	16, 0x90
	.type	encoding_setup,@function
encoding_setup:                         # @encoding_setup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp124:
	.cfi_def_cfa_offset 16
.Ltmp125:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp126:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	load_encoding_description_file
	movq	-8(%rbp), %rsi
	movl	280(%rsi), %eax
	subl	$1, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	ja	.LBB40_2
	jmp	.LBB40_1
.LBB40_1:                               # %sw.bb
	movabsq	$.L.str.28, %rsi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	strlen
	addq	$24, %rax
	andq	$-16, %rax
	movq	%rsp, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rsp
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movb	$0, %al
	callq	sprintf
	movabsq	$.L.str.29, %rsi
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	add_supplied_resource
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	encoding_output_ps_vector
.LBB40_2:                               # %sw.epilog
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	encoding_setup, .Lfunc_end40-encoding_setup
	.cfi_endproc

	.align	16, 0x90
	.type	font_table_new,@function
font_table_new:                         # @font_table_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp127:
	.cfi_def_cfa_offset 16
.Ltmp128:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp129:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$80, %eax
	movl	%eax, %edi
	callq	xmalloc
	movl	$32, %ecx
	movl	%ecx, %esi
	movabsq	$font_entry_hash_1, %rdi
	movabsq	$font_entry_hash_2, %rdx
	movabsq	$font_entry_hash_cmp, %r8
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-24(%rbp), %rcx         # 8-byte Reload
	callq	hash_init
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	font_table_new, .Lfunc_end41-font_table_new
	.cfi_endproc

	.align	16, 0x90
	.type	wx_new,@function
wx_new:                                 # @wx_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp130:
	.cfi_def_cfa_offset 16
.Ltmp131:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp132:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %edi
	callq	xmalloc
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
.LBB42_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -4(%rbp)          # imm = 0x100
	jge	.LBB42_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB42_1 Depth=1
	movslq	-4(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	$0, (%rcx,%rax,4)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB42_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB42_1
.LBB42_4:                               # %for.end
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	wx_new, .Lfunc_end42-wx_new
	.cfi_endproc

	.align	16, 0x90
	.type	font_entry_hash_1,@function
font_entry_hash_1:                      # @font_entry_hash_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp133:
	.cfi_def_cfa_offset 16
.Ltmp134:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp135:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	$0, -16(%rbp)
# BB#2:                                 # %do.body.2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
.LBB43_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	cmpb	$0, 1(%rax)
	je	.LBB43_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB43_3 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$15, %edx
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-28(%rbp), %edx         # 4-byte Reload
	shll	%cl, %edx
	movslq	%edx, %rax
	addq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB43_3
.LBB43_5:                               # %while.end
	jmp	.LBB43_6
.LBB43_6:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
# BB#7:                                 # %do.end.5
	movq	-40(%rbp), %rax         # 8-byte Reload
	popq	%rbp
	retq
.Lfunc_end43:
	.size	font_entry_hash_1, .Lfunc_end43-font_entry_hash_1
	.cfi_endproc

	.align	16, 0x90
	.type	font_entry_hash_2,@function
font_entry_hash_2:                      # @font_entry_hash_2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp136:
	.cfi_def_cfa_offset 16
.Ltmp137:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp138:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	$0, -16(%rbp)
# BB#2:                                 # %do.body.2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
.LBB44_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	cmpb	$0, 1(%rax)
	je	.LBB44_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB44_3 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$7, %edx
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-28(%rbp), %edx         # 4-byte Reload
	shll	%cl, %edx
	movslq	%edx, %rax
	addq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB44_3
.LBB44_5:                               # %while.end
	jmp	.LBB44_6
.LBB44_6:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
# BB#7:                                 # %do.end.5
	movq	-40(%rbp), %rax         # 8-byte Reload
	popq	%rbp
	retq
.Lfunc_end44:
	.size	font_entry_hash_2, .Lfunc_end44-font_entry_hash_2
	.cfi_endproc

	.align	16, 0x90
	.type	font_entry_hash_cmp,@function
font_entry_hash_cmp:                    # @font_entry_hash_cmp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp139:
	.cfi_def_cfa_offset 16
.Ltmp140:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp141:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB45_2
.LBB45_2:                               # %do.body.1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
.LBB45_3:                               # %do.body.4
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movzbl	1(%rax), %edx
	cmpl	$0, %edx
	jne	.LBB45_5
# BB#4:                                 # %if.then
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB45_7
.LBB45_5:                               # %if.end
                                        #   in Loop: Header=BB45_3 Depth=1
	jmp	.LBB45_6
.LBB45_6:                               # %do.cond
                                        #   in Loop: Header=BB45_3 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -40(%rbp)
	movzbl	1(%rax), %esi
	cmpl	%esi, %ecx
	je	.LBB45_3
.LBB45_7:                               # %do.end
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-40(%rbp), %rax
	movzbl	(%rax), %edx
	subl	%edx, %ecx
	movl	%ecx, -20(%rbp)
# BB#8:                                 # %do.end.15
	movl	-20(%rbp), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
# BB#9:                                 # %do.end.17
	movl	-44(%rbp), %eax         # 4-byte Reload
	popq	%rbp
	retq
.Lfunc_end45:
	.size	font_entry_hash_cmp, .Lfunc_end45-font_entry_hash_cmp
	.cfi_endproc

	.align	16, 0x90
	.type	load_encoding_description_file,@function
load_encoding_description_file:         # @load_encoding_description_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp142:
	.cfi_def_cfa_offset 16
.Ltmp143:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp144:
	.cfi_def_cfa_register %rbp
	subq	$8800, %rsp             # imm = 0x2260
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -72(%rbp)
	cmpl	$0, load_encoding_description_file.first_time
	je	.LBB46_2
# BB#1:                                 # %if.then
	movabsq	$load_encoding_description_file.documentation_stack, %rdi
	xorl	%eax, %eax
	movabsq	$xmalloc, %rcx
	movabsq	$free, %r8
	movl	$0, load_encoding_description_file.first_time
	movl	%eax, %esi
	movl	%eax, %edx
	callq	_obstack_begin
	movl	%eax, -8636(%rbp)       # 4-byte Spill
.LBB46_2:                               # %if.end
	jmp	.LBB46_3
.LBB46_3:                               # %do.body
	movl	msg_verbosity, %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB46_5
# BB#4:                                 # %if.then.2
	movabsq	$.L.str.30, %rsi
	movq	stderr, %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -8640(%rbp)       # 4-byte Spill
.LBB46_5:                               # %if.end.4
	jmp	.LBB46_6
.LBB46_6:                               # %do.end
	movabsq	$.L.str.16, %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	callq	xpw_find_file
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	xrfopen
	movq	%rax, -24(%rbp)
.LBB46_7:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB46_12 Depth 2
                                        #       Child Loop BB46_16 Depth 3
                                        #     Child Loop BB46_30 Depth 2
	leaq	-68(%rbp), %rdi
	leaq	-72(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	movq	-24(%rbp), %r8
	callq	getshline_numbered
	cmpl	$-1, %eax
	je	.LBB46_63
# BB#8:                                 # %while.body
                                        #   in Loop: Header=BB46_7 Depth=1
	movabsq	$.L.str.31, %rsi
	movq	-32(%rbp), %rdi
	callq	strtok
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB46_10
# BB#9:                                 # %if.then.11
                                        #   in Loop: Header=BB46_7 Depth=1
	jmp	.LBB46_7
.LBB46_10:                              # %if.end.12
                                        #   in Loop: Header=BB46_7 Depth=1
	movq	-56(%rbp), %rdi
	movl	$.L.str.32, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB46_20
# BB#11:                                # %if.then.15
                                        #   in Loop: Header=BB46_7 Depth=1
	movl	$0, -76(%rbp)
.LBB46_12:                              # %while.cond.16
                                        #   Parent Loop BB46_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB46_16 Depth 3
	cmpl	$256, -76(%rbp)         # imm = 0x100
	jge	.LBB46_19
# BB#13:                                # %while.body.18
                                        #   in Loop: Header=BB46_12 Depth=2
	movl	$256, %esi              # imm = 0x100
	leaq	-336(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	jne	.LBB46_15
# BB#14:                                # %if.then.21
                                        #   in Loop: Header=BB46_12 Depth=2
	movabsq	$.L.str.33, %rdi
	movq	-40(%rbp), %rdx
	movl	-68(%rbp), %ecx
	movl	%ecx, -8644(%rbp)       # 4-byte Spill
	movq	%rdx, -8656(%rbp)       # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movabsq	$.L.str.34, %r9
	movq	-8656(%rbp), %rdx       # 8-byte Reload
	movl	-8644(%rbp), %ecx       # 4-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	error_at_line
.LBB46_15:                              # %if.end.23
                                        #   in Loop: Header=BB46_12 Depth=2
	movabsq	$.L.str.31, %rsi
	leaq	-336(%rbp), %rdi
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	callq	strtok
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	xstrdup
	movl	-76(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -76(%rbp)
	movslq	%ecx, %rsi
	movq	-16(%rbp), %rdi
	movq	%rax, 40(%rdi,%rsi,8)
.LBB46_16:                              # %while.cond.28
                                        #   Parent Loop BB46_7 Depth=1
                                        #     Parent Loop BB46_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.31, %rsi
	callq	strtok
	movq	%rax, -64(%rbp)
	cmpq	$0, %rax
	je	.LBB46_18
# BB#17:                                # %while.body.31
                                        #   in Loop: Header=BB46_16 Depth=3
	movq	-64(%rbp), %rdi
	callq	xstrdup
	movl	-76(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -76(%rbp)
	movslq	%ecx, %rdi
	movq	-16(%rbp), %rsi
	movq	%rax, 40(%rsi,%rdi,8)
	jmp	.LBB46_16
.LBB46_18:                              # %while.end
                                        #   in Loop: Header=BB46_12 Depth=2
	jmp	.LBB46_12
.LBB46_19:                              # %while.end.37
                                        #   in Loop: Header=BB46_7 Depth=1
	jmp	.LBB46_62
.LBB46_20:                              # %if.else
                                        #   in Loop: Header=BB46_7 Depth=1
	movq	-56(%rbp), %rdi
	movl	$.L.str.35, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB46_24
# BB#21:                                # %if.then.40
                                        #   in Loop: Header=BB46_7 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.31, %rsi
	callq	strtok
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB46_23
# BB#22:                                # %if.then.43
                                        #   in Loop: Header=BB46_7 Depth=1
	movabsq	$.L.str.33, %rdi
	movq	-40(%rbp), %rdx
	movl	-68(%rbp), %ecx
	movl	%ecx, -8660(%rbp)       # 4-byte Spill
	movq	%rdx, -8672(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-56(%rbp), %rdi
	movq	%rax, -8680(%rbp)       # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	xorl	%esi, %esi
	movq	-8672(%rbp), %rdx       # 8-byte Reload
	movl	-8660(%rbp), %ecx       # 4-byte Reload
	movq	-8680(%rbp), %r8        # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	error_at_line
.LBB46_23:                              # %if.end.46
                                        #   in Loop: Header=BB46_7 Depth=1
	movq	-64(%rbp), %rdi
	callq	xstrdup
	movq	-16(%rbp), %rdi
	movq	%rax, 8(%rdi)
	jmp	.LBB46_61
.LBB46_24:                              # %if.else.48
                                        #   in Loop: Header=BB46_7 Depth=1
	movq	-56(%rbp), %rdi
	movl	$.L.str.36, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB46_28
# BB#25:                                # %if.then.51
                                        #   in Loop: Header=BB46_7 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.31, %rsi
	callq	strtok
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB46_27
# BB#26:                                # %if.then.54
                                        #   in Loop: Header=BB46_7 Depth=1
	movabsq	$.L.str.33, %rdi
	movq	-40(%rbp), %rdx
	movl	-68(%rbp), %ecx
	movl	%ecx, -8684(%rbp)       # 4-byte Spill
	movq	%rdx, -8696(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-56(%rbp), %rdi
	movq	%rax, -8704(%rbp)       # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	xorl	%esi, %esi
	movq	-8696(%rbp), %rdx       # 8-byte Reload
	movl	-8684(%rbp), %ecx       # 4-byte Reload
	movq	-8704(%rbp), %r8        # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	error_at_line
.LBB46_27:                              # %if.end.57
                                        #   in Loop: Header=BB46_7 Depth=1
	movq	-64(%rbp), %rdi
	callq	xstrdup
	movq	-16(%rbp), %rdi
	movq	%rax, 24(%rdi)
	jmp	.LBB46_60
.LBB46_28:                              # %if.else.59
                                        #   in Loop: Header=BB46_7 Depth=1
	movq	-56(%rbp), %rdi
	movl	$.L.str.37, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB46_51
# BB#29:                                # %if.then.62
                                        #   in Loop: Header=BB46_7 Depth=1
	jmp	.LBB46_30
.LBB46_30:                              # %while.cond.64
                                        #   Parent Loop BB46_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$8192, %esi             # imm = 0x2000
	leaq	-8544(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	fgets
	xorl	%esi, %esi
	movb	%sil, %cl
	cmpq	$0, %rax
	movb	%cl, -8705(%rbp)        # 1-byte Spill
	je	.LBB46_32
# BB#31:                                # %land.rhs
                                        #   in Loop: Header=BB46_30 Depth=2
	movabsq	$.L.str.38, %rdi
	movl	$16, %eax
	movl	%eax, %edx
	leaq	-8544(%rbp), %rsi
	callq	strncmp
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	xorb	$-1, %cl
	movb	%cl, -8705(%rbp)        # 1-byte Spill
.LBB46_32:                              # %land.end
                                        #   in Loop: Header=BB46_30 Depth=2
	movb	-8705(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB46_33
	jmp	.LBB46_38
.LBB46_33:                              # %while.body.72
                                        #   in Loop: Header=BB46_30 Depth=2
	leaq	-8544(%rbp), %rdi
	callq	strlen
	movq	%rax, -8552(%rbp)
	cmpq	$8192, -8552(%rbp)      # imm = 0x2000
	jae	.LBB46_35
# BB#34:                                # %if.then.76
                                        #   in Loop: Header=BB46_30 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
.LBB46_35:                              # %if.end.78
                                        #   in Loop: Header=BB46_30 Depth=2
	movabsq	$load_encoding_description_file.documentation_stack, %rax
	movq	%rax, -8560(%rbp)
	movq	-8552(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -8564(%rbp)
	movq	-8560(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-8564(%rbp), %rdx
	addq	%rdx, %rax
	movq	-8560(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB46_37
# BB#36:                                # %if.then.81
                                        #   in Loop: Header=BB46_30 Depth=2
	movq	-8560(%rbp), %rdi
	movl	-8564(%rbp), %esi
	callq	_obstack_newchunk
.LBB46_37:                              # %if.end.82
                                        #   in Loop: Header=BB46_30 Depth=2
	leaq	-8544(%rbp), %rsi
	movq	-8560(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-8564(%rbp), %rdx
	callq	memcpy
	movl	-8564(%rbp), %ecx
	movq	-8560(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	jmp	.LBB46_30
.LBB46_38:                              # %while.end.89
                                        #   in Loop: Header=BB46_7 Depth=1
	movabsq	$.L.str.38, %rdi
	movl	$16, %eax
	movl	%eax, %edx
	leaq	-8544(%rbp), %rsi
	callq	strncmp
	cmpl	$0, %eax
	je	.LBB46_40
# BB#39:                                # %if.then.93
                                        #   in Loop: Header=BB46_7 Depth=1
	movabsq	$.L.str.33, %rdi
	movq	-40(%rbp), %rdx
	movl	-68(%rbp), %ecx
	movl	%ecx, -8712(%rbp)       # 4-byte Spill
	movq	%rdx, -8720(%rbp)       # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movabsq	$.L.str.39, %r9
	movq	-8720(%rbp), %rdx       # 8-byte Reload
	movl	-8712(%rbp), %ecx       # 4-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	error
.LBB46_40:                              # %if.end.95
                                        #   in Loop: Header=BB46_7 Depth=1
	movabsq	$load_encoding_description_file.documentation_stack, %rax
	movq	%rax, -8576(%rbp)
	movq	-8576(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-8576(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB46_42
# BB#41:                                # %if.then.102
                                        #   in Loop: Header=BB46_7 Depth=1
	movl	$1, %esi
	movq	-8576(%rbp), %rdi
	callq	_obstack_newchunk
.LBB46_42:                              # %if.end.103
                                        #   in Loop: Header=BB46_7 Depth=1
	movabsq	$load_encoding_description_file.documentation_stack, %rax
	movq	-8576(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	$0, (%rdx)
	movq	%rax, -8584(%rbp)
	movq	-8584(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8592(%rbp)
	movq	-8584(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	-8592(%rbp), %rax
	jne	.LBB46_44
# BB#43:                                # %if.then.108
                                        #   in Loop: Header=BB46_7 Depth=1
	movq	-8584(%rbp), %rax
	movb	80(%rax), %cl
	andb	$-3, %cl
	orb	$2, %cl
	movb	%cl, 80(%rax)
.LBB46_44:                              # %if.end.109
                                        #   in Loop: Header=BB46_7 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8584(%rbp), %rdx
	movq	24(%rdx), %rdx
	subq	$0, %rdx
	movq	-8584(%rbp), %rsi
	movslq	48(%rsi), %rsi
	addq	%rsi, %rdx
	movq	-8584(%rbp), %rsi
	movl	48(%rsi), %eax
	xorl	$-1, %eax
	movslq	%eax, %rsi
	andq	%rsi, %rdx
	addq	%rdx, %rcx
	movq	-8584(%rbp), %rdx
	movq	%rcx, 24(%rdx)
	movq	-8584(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	-8584(%rbp), %rdx
	movq	8(%rdx), %rdx
	subq	%rdx, %rcx
	movq	-8584(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	-8584(%rbp), %rsi
	movq	8(%rsi), %rsi
	subq	%rsi, %rdx
	cmpq	%rdx, %rcx
	jle	.LBB46_46
# BB#45:                                # %if.then.127
                                        #   in Loop: Header=BB46_7 Depth=1
	movq	-8584(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8584(%rbp), %rcx
	movq	%rax, 24(%rcx)
.LBB46_46:                              # %if.end.130
                                        #   in Loop: Header=BB46_7 Depth=1
	movabsq	$load_encoding_description_file.documentation_stack, %rax
	movq	-8584(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	-8584(%rbp), %rdx
	movq	%rcx, 16(%rdx)
	movq	-8592(%rbp), %rcx
	movq	%rcx, -8600(%rbp)
	movq	-8600(%rbp), %rcx
	movq	%rcx, -344(%rbp)
	movq	%rax, -8608(%rbp)
	movq	-344(%rbp), %rax
	movq	%rax, -8616(%rbp)
	movq	-8616(%rbp), %rax
	movq	-8608(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpq	%rcx, %rax
	jbe	.LBB46_49
# BB#47:                                # %land.lhs.true
                                        #   in Loop: Header=BB46_7 Depth=1
	movq	-8616(%rbp), %rax
	movq	-8608(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jae	.LBB46_49
# BB#48:                                # %if.then.142
                                        #   in Loop: Header=BB46_7 Depth=1
	movq	-8616(%rbp), %rax
	movq	-8608(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-8608(%rbp), %rcx
	movq	%rax, 24(%rcx)
	jmp	.LBB46_50
.LBB46_49:                              # %if.else.145
                                        #   in Loop: Header=BB46_7 Depth=1
	movq	-8608(%rbp), %rdi
	movq	-8616(%rbp), %rsi
	callq	obstack_free
.LBB46_50:                              # %if.end.146
                                        #   in Loop: Header=BB46_7 Depth=1
	movq	-344(%rbp), %rdi
	callq	xstrdup
	movq	-16(%rbp), %rdi
	movq	%rax, 16(%rdi)
	jmp	.LBB46_59
.LBB46_51:                              # %if.else.149
                                        #   in Loop: Header=BB46_7 Depth=1
	movq	-56(%rbp), %rdi
	movl	$.L.str.40, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB46_57
# BB#52:                                # %if.then.153
                                        #   in Loop: Header=BB46_7 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.31, %rsi
	callq	strtok
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB46_54
# BB#53:                                # %if.then.159
                                        #   in Loop: Header=BB46_7 Depth=1
	movabsq	$.L.str.33, %rdi
	movq	-40(%rbp), %rdx
	movl	-68(%rbp), %ecx
	movl	%ecx, -8724(%rbp)       # 4-byte Spill
	movq	%rdx, -8736(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-56(%rbp), %rdi
	movq	%rax, -8744(%rbp)       # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	xorl	%esi, %esi
	movq	-8736(%rbp), %rdx       # 8-byte Reload
	movl	-8724(%rbp), %ecx       # 4-byte Reload
	movq	-8744(%rbp), %r8        # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	error_at_line
.LBB46_54:                              # %if.end.162
                                        #   in Loop: Header=BB46_7 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.31, %rsi
	movq	-64(%rbp), %rcx
	movq	%rcx, -8624(%rbp)
	callq	strtok
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB46_56
# BB#55:                                # %if.then.166
                                        #   in Loop: Header=BB46_7 Depth=1
	movabsq	$.L.str.33, %rdi
	movq	-40(%rbp), %rdx
	movl	-68(%rbp), %ecx
	movl	%ecx, -8748(%rbp)       # 4-byte Spill
	movq	%rdx, -8760(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-56(%rbp), %rdi
	movq	%rax, -8768(%rbp)       # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	xorl	%esi, %esi
	movq	-8760(%rbp), %rdx       # 8-byte Reload
	movl	-8748(%rbp), %ecx       # 4-byte Reload
	movq	-8768(%rbp), %r8        # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	error_at_line
.LBB46_56:                              # %if.end.169
                                        #   in Loop: Header=BB46_7 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -8632(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8624(%rbp), %rsi
	movq	-8632(%rbp), %rdx
	callq	encoding_add_font_substitute
	jmp	.LBB46_58
.LBB46_57:                              # %if.else.170
                                        #   in Loop: Header=BB46_7 Depth=1
	movabsq	$.L.str.41, %rdi
	movq	-40(%rbp), %rdx
	movl	-68(%rbp), %ecx
	movl	%ecx, -8772(%rbp)       # 4-byte Spill
	movq	%rdx, -8784(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-56(%rbp), %rdi
	movq	%rax, -8792(%rbp)       # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	xorl	%esi, %esi
	movq	-8784(%rbp), %rdx       # 8-byte Reload
	movl	-8772(%rbp), %ecx       # 4-byte Reload
	movq	-8792(%rbp), %r8        # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	error_at_line
.LBB46_58:                              # %if.end.173
                                        #   in Loop: Header=BB46_7 Depth=1
	jmp	.LBB46_59
.LBB46_59:                              # %if.end.174
                                        #   in Loop: Header=BB46_7 Depth=1
	jmp	.LBB46_60
.LBB46_60:                              # %if.end.175
                                        #   in Loop: Header=BB46_7 Depth=1
	jmp	.LBB46_61
.LBB46_61:                              # %if.end.176
                                        #   in Loop: Header=BB46_7 Depth=1
	jmp	.LBB46_62
.LBB46_62:                              # %if.end.177
                                        #   in Loop: Header=BB46_7 Depth=1
	jmp	.LBB46_7
.LBB46_63:                              # %while.end.178
	movq	-24(%rbp), %rdi
	callq	fclose
	movq	-32(%rbp), %rdi
	movl	%eax, -8796(%rbp)       # 4-byte Spill
	callq	free
	movq	-40(%rbp), %rdi
	callq	free
	addq	$8800, %rsp             # imm = 0x2260
	popq	%rbp
	retq
.Lfunc_end46:
	.size	load_encoding_description_file, .Lfunc_end46-load_encoding_description_file
	.cfi_endproc

	.align	16, 0x90
	.type	encoding_output_ps_vector,@function
encoding_output_ps_vector:              # @encoding_output_ps_vector
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp145:
	.cfi_def_cfa_offset 16
.Ltmp146:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp147:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$.L.str.42, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	168(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rdx
	movq	%rax, %rsi
	movb	$0, %al
	callq	output
	movabsq	$.L.str.43, %rsi
	movq	-8(%rbp), %rdx
	movq	168(%rdx), %rdi
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movb	$0, %al
	callq	output
	movl	$0, -20(%rbp)
.LBB47_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -20(%rbp)         # imm = 0x100
	jge	.LBB47_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB47_1 Depth=1
	movl	$8, %eax
	movl	-20(%rbp), %ecx
	movl	%eax, -24(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-24(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB47_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB47_1 Depth=1
	movl	$10, %esi
	movq	-8(%rbp), %rax
	movq	168(%rax), %rdi
	callq	output_char
.LBB47_4:                               # %if.end
                                        #   in Loop: Header=BB47_1 Depth=1
	movabsq	$.L.str.44, %rsi
	movq	-8(%rbp), %rax
	movq	168(%rax), %rdi
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	40(%rcx,%rax,8), %rdx
	movb	$0, %al
	callq	output
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB47_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB47_1
.LBB47_6:                               # %for.end
	movabsq	$.L.str.45, %rsi
	movq	-8(%rbp), %rax
	movq	168(%rax), %rdi
	movb	$0, %al
	callq	output
	movabsq	$.L.str.46, %rsi
	movq	-8(%rbp), %rdi
	movq	168(%rdi), %rdi
	movb	$0, %al
	callq	output
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	encoding_output_ps_vector, .Lfunc_end47-encoding_output_ps_vector
	.cfi_endproc

	.align	16, 0x90
	.type	encoding_add_font_substitute,@function
encoding_add_font_substitute:           # @encoding_add_font_substitute
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp148:
	.cfi_def_cfa_offset 16
.Ltmp149:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp150:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	pair_add
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	encoding_add_font_substitute, .Lfunc_end48-encoding_add_font_substitute
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"encoding.map"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Read encoding.map:\n"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	",<>;"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Cannot find font %s, nor any substitute"
	.size	.L.str.3, 40

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"In encoding %s, font %s is resolved as %s\n"
	.size	.L.str.4, 43

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Default font is `%s'\n"
	.size	.L.str.5, 22

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Substitution of fonts:\n"
	.size	.L.str.6, 24

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Name of fonts used (before substitution):\n"
	.size	.L.str.7, 43

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Encoding array:"
	.size	.L.str.8, 16

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%-10s "
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Fonts:\n"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Faces:\n"
	.size	.L.str.11, 8

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Face %s (%d)\n"
	.size	.L.str.12, 14

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%02x"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%03o"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Known Encodings"
	.size	.L.str.15, 16

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	".edf"
	.size	.L.str.16, 5

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"The known encodings are:\n"
	.size	.L.str.17, 26

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%s (%s)\n"
	.size	.L.str.18, 9

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"%s"
	.size	.L.str.19, 3

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"***** %s ***** (%s, %s) "
	.size	.L.str.20, 25

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"used"
	.size	.L.str.21, 5

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"not used"
	.size	.L.str.22, 9

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"to share between encodings"
	.size	.L.str.23, 27

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"reencode"
	.size	.L.str.24, 9

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"%3d: %04u %04u %04u %04u %04u %04u %04u %04u\n"
	.size	.L.str.25, 46

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"<No WX defined>\n"
	.size	.L.str.26, 17

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"List of font names"
	.size	.L.str.27, 19

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"%sEncoding"
	.size	.L.str.28, 11

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"encoding"
	.size	.L.str.29, 9

	.type	load_encoding_description_file.first_time,@object # @load_encoding_description_file.first_time
	.data
	.align	4
load_encoding_description_file.first_time:
	.long	1                       # 0x1
	.size	load_encoding_description_file.first_time, 4

	.type	load_encoding_description_file.documentation_stack,@object # @load_encoding_description_file.documentation_stack
	.local	load_encoding_description_file.documentation_stack
	.comm	load_encoding_description_file.documentation_stack,88,8
	.type	.L.str.30,@object       # @.str.30
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.30:
	.asciz	"Loading encoding file `%s.edf'\n"
	.size	.L.str.30, 32

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	" \t\n"
	.size	.L.str.31, 4

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Vector:"
	.size	.L.str.32, 8

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"missing argument for `%s'"
	.size	.L.str.33, 26

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"`Vector:'"
	.size	.L.str.34, 10

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Name:"
	.size	.L.str.35, 6

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Default:"
	.size	.L.str.36, 9

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Documentation"
	.size	.L.str.37, 14

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"EndDocumentation"
	.size	.L.str.38, 17

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"`Documentation'"
	.size	.L.str.39, 16

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Substitute:"
	.size	.L.str.40, 12

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"invalid option `%s'"
	.size	.L.str.41, 20

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"%%%%BeginResource: encoding %sEncoding\n"
	.size	.L.str.42, 40

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"/%sEncoding ["
	.size	.L.str.43, 14

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"/%s "
	.size	.L.str.44, 5

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"\n] def\n"
	.size	.L.str.45, 8

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"%%%%EndResource\n"
	.size	.L.str.46, 17

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"%% Dictionary for %s support\n"
	.size	.L.str.47, 30

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"/%sdict %d dict begin\n"
	.size	.L.str.48, 23

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"  /f%s %sEncoding /%s reencode_font\n"
	.size	.L.str.49, 37

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"currentdict end def\n"
	.size	.L.str.50, 21

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"@deftp {Encoding} {%s} (@file{%s.edf})\n"
	.size	.L.str.51, 40

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"@end deftp\n\n"
	.size	.L.str.52, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
