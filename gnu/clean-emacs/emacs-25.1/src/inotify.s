	.text
	.file	"inotify.bc"
	.globl	Finotify_add_watch
	.align	16, 0x90
	.type	Finotify_add_watch,@function
Finotify_add_watch:                     # @Finotify_add_watch
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$-1, -60(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	cmpl	$0, inotifyfd
	jge	.LBB0_4
# BB#1:                                 # %if.then
	movl	$526336, %edi           # imm = 0x80800
	callq	inotify_init1
	movl	%eax, inotifyfd
	cmpl	$0, inotifyfd
	jge	.LBB0_3
# BB#2:                                 # %if.then.2
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$.L.str, %rdi
	movq	%rax, %rsi
	callq	report_file_notify_error
.LBB0_3:                                # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$inotify_callback, %rsi
	xorl	%edi, %edi
	movl	%edi, %edx
	movq	%rax, watch_list
	movl	inotifyfd, %edi
	callq	add_read_fd
.LBB0_4:                                # %if.end.5
	movq	-16(%rbp), %rdi
	callq	aspect_to_inotifymask
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -48(%rbp)
	movl	inotifyfd, %edi
	movq	-48(%rbp), %rax
	movl	%edi, -64(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	callq	SSDATA
	movl	-28(%rbp), %edx
	movl	-64(%rbp), %edi         # 4-byte Reload
	movq	%rax, %rsi
	callq	inotify_add_watch
	movl	%eax, -60(%rbp)
	cmpl	$-1, -60(%rbp)
	jne	.LBB0_6
# BB#5:                                 # %if.then.11
	movabsq	$.L.str.1, %rdi
	movq	-8(%rbp), %rsi
	callq	report_file_notify_error
.LBB0_6:                                # %if.end.12
	movl	-60(%rbp), %edi
	callq	make_watch_descriptor
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	watch_list, %rsi
	callq	Fassoc
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB0_8
# BB#7:                                 # %if.then.17
	movq	-40(%rbp), %rdi
	movq	watch_list, %rsi
	callq	Fdelete
	movq	%rax, watch_list
.LBB0_8:                                # %if.end.19
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	list3
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	watch_list, %rsi
	callq	Fcons
	movq	%rax, watch_list
	movq	-56(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	Finotify_add_watch, .Lfunc_end0-Finotify_add_watch
	.cfi_endproc

	.align	16, 0x90
	.type	inotify_callback,@function
inotify_callback:                       # @inotify_callback
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
	subq	$144, %rsp
	movl	$21531, %eax            # imm = 0x541B
	movl	%eax, %ecx
	leaq	-84(%rbp), %rdx
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -84(%rbp)
	movl	-4(%rbp), %edi
	movq	%rcx, %rsi
	movb	$0, %al
	callq	ioctl
	cmpl	$-1, %eax
	jne	.LBB1_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$.L.str.4, %rdi
	movq	%rax, %rsi
	callq	report_file_notify_error
.LBB1_2:                                # %if.end
	movslq	-84(%rbp), %rdi
	callq	xmalloc
	movq	%rax, -96(%rbp)
	movl	-4(%rbp), %edi
	movq	-96(%rbp), %rsi
	movslq	-84(%rbp), %rdx
	callq	read
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jge	.LBB1_4
# BB#3:                                 # %if.then.7
	movq	-96(%rbp), %rdi
	callq	xfree
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$.L.str.5, %rdi
	movq	%rax, %rsi
	callq	report_file_notify_error
.LBB1_4:                                # %if.end.9
	xorl	%esi, %esi
	movl	$56, %eax
	movl	%eax, %edx
	leaq	-72(%rbp), %rcx
	movq	%rcx, %rdi
	callq	memset
	movl	-72(%rbp), %eax
	andl	$-65536, %eax           # imm = 0xFFFFFFFFFFFF0000
	orl	$27, %eax
	movl	%eax, -72(%rbp)
	movq	$0, -112(%rbp)
.LBB1_5:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-112(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jae	.LBB1_13
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-112(%rbp), %rax
	addq	-96(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movl	(%rax), %edi
	callq	make_watch_descriptor
	movq	watch_list, %rsi
	movq	%rax, %rdi
	callq	Fassoc
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB1_12
# BB#7:                                 # %if.then.17
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-80(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	inotifyevent_to_event
	movq	%rax, -24(%rbp)
	movq	-120(%rbp), %rax
	movl	4(%rax), %ecx
	andl	$32768, %ecx            # imm = 0x8000
	cmpl	$0, %ecx
	je	.LBB1_9
# BB#8:                                 # %if.then.19
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-80(%rbp), %rdi
	movq	watch_list, %rsi
	callq	Fdelete
	movq	%rax, watch_list
.LBB1_9:                                # %if.end.21
                                        #   in Loop: Header=BB1_5 Depth=1
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB1_11
# BB#10:                                # %if.then.26
                                        #   in Loop: Header=BB1_5 Depth=1
	leaq	-72(%rbp), %rdi
	callq	kbd_buffer_store_event
.LBB1_11:                               # %if.end.27
                                        #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_12
.LBB1_12:                               # %if.end.28
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-120(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, %eax
	addq	$16, %rax
	addq	-112(%rbp), %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB1_5
.LBB1_13:                               # %while.end
	movq	-96(%rbp), %rdi
	callq	xfree
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	inotify_callback, .Lfunc_end1-inotify_callback
	.cfi_endproc

	.align	16, 0x90
	.type	aspect_to_inotifymask,@function
aspect_to_inotifymask:                  # @aspect_to_inotifymask
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$3, %eax
	jne	.LBB2_5
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB2_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB2_4
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	symbol_to_inotifymask
	orl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rdi
	subq	$3, %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	jmp	.LBB2_2
.LBB2_4:                                # %while.end
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB2_6
.LBB2_5:                                # %if.else
	movq	-16(%rbp), %rdi
	callq	symbol_to_inotifymask
	movl	%eax, -4(%rbp)
.LBB2_6:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	aspect_to_inotifymask, .Lfunc_end2-aspect_to_inotifymask
	.cfi_endproc

	.align	16, 0x90
	.type	make_watch_descriptor,@function
make_watch_descriptor:                  # @make_watch_descriptor
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
	movl	%edi, -4(%rbp)
	movslq	-4(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	make_watch_descriptor, .Lfunc_end3-make_watch_descriptor
	.cfi_endproc

	.globl	Finotify_rm_watch
	.align	16, 0x90
	.type	Finotify_rm_watch,@function
Finotify_rm_watch:                      # @Finotify_rm_watch
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	sarq	$2, %rdi
	movl	%edi, %eax
	movl	%eax, -20(%rbp)
	movl	inotifyfd, %edi
	movl	-20(%rbp), %esi
	callq	inotify_rm_watch
	cmpl	$-1, %eax
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.2, %rdi
	movq	-8(%rbp), %rsi
	callq	report_file_notify_error
.LBB4_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movq	watch_list, %rsi
	callq	Fassoc
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB4_4
# BB#3:                                 # %if.then.6
	movq	-16(%rbp), %rdi
	movq	watch_list, %rsi
	callq	Fdelete
	movq	%rax, watch_list
.LBB4_4:                                # %if.end.8
	xorl	%edi, %edi
	movq	watch_list, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_6
# BB#5:                                 # %if.then.12
	movl	inotifyfd, %edi
	callq	emacs_close
	movl	inotifyfd, %edi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	delete_read_fd
	movl	$-1, inotifyfd
.LBB4_6:                                # %if.end.14
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	Finotify_rm_watch, .Lfunc_end4-Finotify_rm_watch
	.cfi_endproc

	.globl	Finotify_valid_p
	.align	16, 0x90
	.type	Finotify_valid_p,@function
Finotify_valid_p:                       # @Finotify_valid_p
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
	movq	-8(%rbp), %rdi
	movq	watch_list, %rsi
	callq	Fassoc
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB5_2
# BB#1:                                 # %cond.true
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB5_3
.LBB5_2:                                # %cond.false
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB5_3:                                # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	Finotify_valid_p, .Lfunc_end5-Finotify_valid_p
	.cfi_endproc

	.globl	syms_of_inotify
	.align	16, 0x90
	.type	syms_of_inotify,@function
syms_of_inotify:                        # @syms_of_inotify
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
	subq	$16, %rsp
	movabsq	$Sinotify_add_watch, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sinotify_rm_watch, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sinotify_valid_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$watch_list, %rdi
	callq	staticpro
	movabsq	$.L.str.3, %rdi
	callq	intern_c_string
	xorl	%edi, %edi
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	Fprovide
	movq	%rax, -16(%rbp)         # 8-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	syms_of_inotify, .Lfunc_end6-syms_of_inotify
	.cfi_endproc

	.align	16, 0x90
	.type	inotifyevent_to_event,@function
inotifyevent_to_event:                  # @inotifyevent_to_event
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 12(%rax)
	jbe	.LBB7_5
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	callq	strlen
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movl	12(%rcx), %edx
	movl	%edx, %ecx
	cmpq	%rcx, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jae	.LBB7_3
# BB#2:                                 # %cond.true
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB7_4
.LBB7_3:                                # %cond.false
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB7_4:                                # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	make_unibyte_string
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	decode_file_name
	movq	%rax, -24(%rbp)
	jmp	.LBB7_6
.LBB7_5:                                # %if.else
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB7_6:                                # %if.end
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	make_watch_descriptor
	movq	-16(%rbp), %rcx
	movl	4(%rcx), %edi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	mask_to_aspects
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %edi
	movl	%edi, %ecx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	list4
	movl	$10, %r8d
	movl	%r8d, %edi
	movq	-8(%rbp), %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	Fnth
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	inotifyevent_to_event, .Lfunc_end7-inotifyevent_to_event
	.cfi_endproc

	.align	16, 0x90
	.type	mask_to_aspects,@function
mask_to_aspects:                        # @mask_to_aspects
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
	subq	$16, %rsp
	xorl	%eax, %eax
	movl	%edi, -4(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %edi
	andl	$1, %edi
	cmpl	$0, %edi
	je	.LBB8_2
# BB#1:                                 # %if.then
	movl	$157, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -16(%rbp)
.LBB8_2:                                # %if.end
	movl	-4(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB8_4
# BB#3:                                 # %if.then.5
	movl	$184, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -16(%rbp)
.LBB8_4:                                # %if.end.8
	movl	-4(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB8_6
# BB#5:                                 # %if.then.11
	movl	$269, %edi              # imm = 0x10D
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -16(%rbp)
.LBB8_6:                                # %if.end.14
	movl	-4(%rbp), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB8_8
# BB#7:                                 # %if.then.17
	movl	$268, %edi              # imm = 0x10C
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -16(%rbp)
.LBB8_8:                                # %if.end.20
	movl	-4(%rbp), %eax
	andl	$256, %eax              # imm = 0x100
	cmpl	$0, %eax
	je	.LBB8_10
# BB#9:                                 # %if.then.23
	movl	$301, %edi              # imm = 0x12D
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -16(%rbp)
.LBB8_10:                               # %if.end.26
	movl	-4(%rbp), %eax
	andl	$512, %eax              # imm = 0x200
	cmpl	$0, %eax
	je	.LBB8_12
# BB#11:                                # %if.then.29
	movl	$330, %edi              # imm = 0x14A
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -16(%rbp)
.LBB8_12:                               # %if.end.32
	movl	-4(%rbp), %eax
	andl	$1024, %eax             # imm = 0x400
	cmpl	$0, %eax
	je	.LBB8_14
# BB#13:                                # %if.then.35
	movl	$336, %edi              # imm = 0x150
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -16(%rbp)
.LBB8_14:                               # %if.end.38
	movl	-4(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB8_16
# BB#15:                                # %if.then.41
	movl	$679, %edi              # imm = 0x2A7
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -16(%rbp)
.LBB8_16:                               # %if.end.44
	movl	-4(%rbp), %eax
	andl	$2048, %eax             # imm = 0x800
	cmpl	$0, %eax
	je	.LBB8_18
# BB#17:                                # %if.then.47
	movl	$693, %edi              # imm = 0x2B5
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -16(%rbp)
.LBB8_18:                               # %if.end.50
	movl	-4(%rbp), %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB8_20
# BB#19:                                # %if.then.53
	movl	$694, %edi              # imm = 0x2B6
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -16(%rbp)
.LBB8_20:                               # %if.end.56
	movl	-4(%rbp), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	.LBB8_22
# BB#21:                                # %if.then.59
	movl	$695, %edi              # imm = 0x2B7
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -16(%rbp)
.LBB8_22:                               # %if.end.62
	movl	-4(%rbp), %eax
	andl	$32, %eax
	cmpl	$0, %eax
	je	.LBB8_24
# BB#23:                                # %if.then.65
	movl	$719, %edi              # imm = 0x2CF
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -16(%rbp)
.LBB8_24:                               # %if.end.68
	movl	-4(%rbp), %eax
	andl	$32768, %eax            # imm = 0x8000
	cmpl	$0, %eax
	je	.LBB8_26
# BB#25:                                # %if.then.71
	movl	$536, %edi              # imm = 0x218
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -16(%rbp)
.LBB8_26:                               # %if.end.74
	movl	-4(%rbp), %eax
	andl	$1073741824, %eax       # imm = 0x40000000
	cmpl	$0, %eax
	je	.LBB8_28
# BB#27:                                # %if.then.77
	movl	$577, %edi              # imm = 0x241
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -16(%rbp)
.LBB8_28:                               # %if.end.80
	movl	-4(%rbp), %eax
	andl	$16384, %eax            # imm = 0x4000
	cmpl	$0, %eax
	je	.LBB8_30
# BB#29:                                # %if.then.83
	movl	$781, %edi              # imm = 0x30D
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -16(%rbp)
.LBB8_30:                               # %if.end.86
	movl	-4(%rbp), %eax
	andl	$8192, %eax             # imm = 0x2000
	cmpl	$0, %eax
	je	.LBB8_32
# BB#31:                                # %if.then.89
	movl	$974, %edi              # imm = 0x3CE
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -16(%rbp)
.LBB8_32:                               # %if.end.92
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	mask_to_aspects, .Lfunc_end8-mask_to_aspects
	.cfi_endproc

	.align	16, 0x90
	.type	symbol_to_inotifymask,@function
symbol_to_inotifymask:                  # @symbol_to_inotifymask
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
	subq	$192, %rsp
	movl	$157, %eax
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB9_42
.LBB9_2:                                # %if.else
	movl	$184, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_4
# BB#3:                                 # %if.then.3
	movl	$4, -4(%rbp)
	jmp	.LBB9_42
.LBB9_4:                                # %if.else.4
	movl	$269, %edi              # imm = 0x10D
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_6
# BB#5:                                 # %if.then.7
	movl	$8, -4(%rbp)
	jmp	.LBB9_42
.LBB9_6:                                # %if.else.8
	movl	$268, %edi              # imm = 0x10C
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_8
# BB#7:                                 # %if.then.11
	movl	$16, -4(%rbp)
	jmp	.LBB9_42
.LBB9_8:                                # %if.else.12
	movl	$301, %edi              # imm = 0x12D
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_10
# BB#9:                                 # %if.then.15
	movl	$256, -4(%rbp)          # imm = 0x100
	jmp	.LBB9_42
.LBB9_10:                               # %if.else.16
	movl	$330, %edi              # imm = 0x14A
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_12
# BB#11:                                # %if.then.19
	movl	$512, -4(%rbp)          # imm = 0x200
	jmp	.LBB9_42
.LBB9_12:                               # %if.else.20
	movl	$336, %edi              # imm = 0x150
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_14
# BB#13:                                # %if.then.23
	movl	$1024, -4(%rbp)         # imm = 0x400
	jmp	.LBB9_42
.LBB9_14:                               # %if.else.24
	movl	$679, %edi              # imm = 0x2A7
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_16
# BB#15:                                # %if.then.27
	movl	$2, -4(%rbp)
	jmp	.LBB9_42
.LBB9_16:                               # %if.else.28
	movl	$693, %edi              # imm = 0x2B5
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_18
# BB#17:                                # %if.then.31
	movl	$2048, -4(%rbp)         # imm = 0x800
	jmp	.LBB9_42
.LBB9_18:                               # %if.else.32
	movl	$694, %edi              # imm = 0x2B6
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_20
# BB#19:                                # %if.then.35
	movl	$64, -4(%rbp)
	jmp	.LBB9_42
.LBB9_20:                               # %if.else.36
	movl	$695, %edi              # imm = 0x2B7
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_22
# BB#21:                                # %if.then.39
	movl	$128, -4(%rbp)
	jmp	.LBB9_42
.LBB9_22:                               # %if.else.40
	movl	$719, %edi              # imm = 0x2CF
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_24
# BB#23:                                # %if.then.43
	movl	$32, -4(%rbp)
	jmp	.LBB9_42
.LBB9_24:                               # %if.else.44
	movl	$691, %edi              # imm = 0x2B3
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_26
# BB#25:                                # %if.then.47
	movl	$192, -4(%rbp)
	jmp	.LBB9_42
.LBB9_26:                               # %if.else.48
	movl	$267, %edi              # imm = 0x10B
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_28
# BB#27:                                # %if.then.51
	movl	$24, -4(%rbp)
	jmp	.LBB9_42
.LBB9_28:                               # %if.else.52
	movl	$350, %edi              # imm = 0x15E
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_30
# BB#29:                                # %if.then.55
	movl	$33554432, -4(%rbp)     # imm = 0x2000000
	jmp	.LBB9_42
.LBB9_30:                               # %if.else.56
	movl	$386, %edi              # imm = 0x182
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_32
# BB#31:                                # %if.then.59
	movl	$67108864, -4(%rbp)     # imm = 0x4000000
	jmp	.LBB9_42
.LBB9_32:                               # %if.else.60
	movl	$647, %edi              # imm = 0x287
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_34
# BB#33:                                # %if.then.63
	movl	$536870912, -4(%rbp)    # imm = 0x20000000
	jmp	.LBB9_42
.LBB9_34:                               # %if.else.64
	movl	$716, %edi              # imm = 0x2CC
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_36
# BB#35:                                # %if.then.67
	movl	$-2147483648, -4(%rbp)  # imm = 0xFFFFFFFF80000000
	jmp	.LBB9_42
.LBB9_36:                               # %if.else.68
	movl	$718, %edi              # imm = 0x2CE
	movq	-16(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_38
# BB#37:                                # %if.then.71
	movl	$16777216, -4(%rbp)     # imm = 0x1000000
	jmp	.LBB9_42
.LBB9_38:                               # %if.else.72
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_40
# BB#39:                                # %lor.lhs.false
	movl	$169, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_41
.LBB9_40:                               # %if.then.77
	movl	$4095, -4(%rbp)         # imm = 0xFFF
	jmp	.LBB9_42
.LBB9_41:                               # %if.else.78
	callq	__errno_location
	movabsq	$.L.str.6, %rdi
	movl	$22, (%rax)
	movq	-16(%rbp), %rsi
	callq	report_file_notify_error
.LBB9_42:                               # %return
	movl	-4(%rbp), %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	symbol_to_inotifymask, .Lfunc_end9-symbol_to_inotifymask
	.cfi_endproc

	.type	inotifyfd,@object       # @inotifyfd
	.data
	.align	4
inotifyfd:
	.long	4294967295              # 0xffffffff
	.size	inotifyfd, 4

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"File watching is not available"
	.size	.L.str, 31

	.type	watch_list,@object      # @watch_list
	.local	watch_list
	.comm	watch_list,8,8
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Could not add watch for file"
	.size	.L.str.1, 29

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Could not rm watch"
	.size	.L.str.2, 19

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"inotify"
	.size	.L.str.3, 8

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Error while retrieving file system events"
	.size	.L.str.4, 42

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Error while reading file system events"
	.size	.L.str.5, 39

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Unknown aspect"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"inotify-add-watch"
	.size	.L.str.7, 18

	.type	Sinotify_add_watch,@object # @Sinotify_add_watch
	.data
	.align	8
Sinotify_add_watch:
	.quad	167772160               # 0xa000000
	.quad	Finotify_add_watch
	.short	3                       # 0x3
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.7
	.quad	0
	.quad	0
	.size	Sinotify_add_watch, 48

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"inotify-rm-watch"
	.size	.L.str.8, 17

	.type	Sinotify_rm_watch,@object # @Sinotify_rm_watch
	.data
	.align	8
Sinotify_rm_watch:
	.quad	167772160               # 0xa000000
	.quad	Finotify_rm_watch
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.8
	.quad	0
	.quad	0
	.size	Sinotify_rm_watch, 48

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"inotify-valid-p"
	.size	.L.str.9, 16

	.type	Sinotify_valid_p,@object # @Sinotify_valid_p
	.data
	.align	8
Sinotify_valid_p:
	.quad	167772160               # 0xa000000
	.quad	Finotify_valid_p
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.9
	.quad	0
	.quad	0
	.size	Sinotify_valid_p, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
