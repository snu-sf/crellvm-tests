	.text
	.file	"nethack.bc"
	.globl	DoNLS
	.align	16, 0x90
	.type	DoNLS,@function
DoNLS:                                  # @DoNLS
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	cmpl	$0, nethackflag
	je	.LBB0_8
# BB#1:                                 # %if.then
	movabsq	$nethacktrans, %rax
	movq	%rax, -24(%rbp)
.LBB0_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_7
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_5
# BB#4:                                 # %if.then.4
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_9
.LBB0_5:                                # %if.end
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_6
.LBB0_6:                                # %for.inc
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB0_2
.LBB0_7:                                # %for.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.5
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_9:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	DoNLS, .Lfunc_end0-DoNLS
	.cfi_endproc

	.type	nethacktrans,@object    # @nethacktrans
	.data
	.align	16
nethacktrans:
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	.L.str.13
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
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	.L.str.29
	.quad	.L.str.30
	.quad	.L.str.31
	.quad	.L.str.32
	.quad	.L.str.33
	.quad	.L.str.34
	.quad	.L.str.35
	.quad	.L.str.36
	.quad	.L.str.37
	.quad	.L.str.38
	.quad	.L.str.39
	.quad	.L.str.40
	.quad	.L.str.19
	.quad	.L.str.41
	.quad	.L.str.42
	.quad	.L.str.43
	.quad	.L.str.44
	.quad	.L.str.45
	.quad	.L.str.46
	.quad	.L.str.47
	.quad	.L.str.48
	.quad	.L.str.49
	.quad	.L.str.50
	.quad	.L.str.51
	.quad	.L.str.52
	.quad	.L.str.53
	.quad	.L.str.54
	.quad	.L.str.55
	.quad	.L.str.56
	.quad	.L.str.57
	.quad	.L.str.58
	.quad	.L.str.59
	.quad	.L.str.58
	.quad	.L.str.60
	.quad	.L.str.61
	.quad	.L.str.62
	.quad	.L.str.63
	.quad	.L.str.64
	.quad	.L.str.65
	.quad	.L.str.66
	.quad	.L.str.67
	.quad	.L.str.68
	.quad	.L.str.69
	.quad	.L.str.70
	.quad	.L.str.71
	.quad	.L.str.72
	.quad	.L.str.73
	.zero	16
	.size	nethacktrans, 624

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Cannot lock terminal - fork failed"
	.size	.L.str, 35

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Cannot fork terminal - lock failed"
	.size	.L.str.1, 35

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Got only %d bytes from %s"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"You choke on your food: %d bytes from %s"
	.size	.L.str.3, 41

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Copy mode - Column %d Line %d(+%d) (%d,%d)"
	.size	.L.str.4, 43

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Welcome to hacker's treasure zoo - Column %d Line %d(+%d) (%d,%d)"
	.size	.L.str.5, 66

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"First mark set - Column %d Line %d"
	.size	.L.str.6, 35

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"You drop a magic marker - Column %d Line %d"
	.size	.L.str.7, 44

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Copy mode aborted"
	.size	.L.str.8, 18

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"You escaped the dungeon."
	.size	.L.str.9, 25

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Filter removed."
	.size	.L.str.10, 16

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"You have a sad feeling for a moment..."
	.size	.L.str.11, 39

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Window %d (%s) killed."
	.size	.L.str.12, 23

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"You destroy poor window %d (%s)."
	.size	.L.str.13, 33

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Window %d (%s) is now being monitored for all activity."
	.size	.L.str.14, 56

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"You feel like someone is watching you..."
	.size	.L.str.15, 41

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Window %d (%s) is no longer being monitored for activity."
	.size	.L.str.16, 58

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"You no longer sense the watcher's presence."
	.size	.L.str.17, 44

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"empty buffer"
	.size	.L.str.18, 13

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Nothing happens."
	.size	.L.str.19, 17

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"switched to audible bell."
	.size	.L.str.20, 26

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Suddenly you can't see your bell!"
	.size	.L.str.21, 34

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"switched to visual bell."
	.size	.L.str.22, 25

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Your bell is no longer invisible."
	.size	.L.str.23, 34

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"The window is now being monitored for %d sec. silence."
	.size	.L.str.24, 55

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"You feel like someone is waiting for %d sec. silence..."
	.size	.L.str.25, 56

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"The window is no longer being monitored for silence."
	.size	.L.str.26, 53

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"You no longer sense the watcher's silence."
	.size	.L.str.27, 43

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"No other window."
	.size	.L.str.28, 17

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"You cannot escape from window %d!"
	.size	.L.str.29, 34

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Logfile \"%s\" closed."
	.size	.L.str.30, 21

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"You put away your scroll of logging named \"%s\"."
	.size	.L.str.31, 48

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Error opening logfile \"%s\""
	.size	.L.str.32, 27

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"You don't seem to have a scroll of logging named \"%s\"."
	.size	.L.str.33, 55

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Creating logfile \"%s\"."
	.size	.L.str.34, 23

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"You start writing on your scroll of logging named \"%s\"."
	.size	.L.str.35, 56

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Appending to logfile \"%s\"."
	.size	.L.str.36, 27

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"You add to your scroll of logging named \"%s\"."
	.size	.L.str.37, 46

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Detach aborted."
	.size	.L.str.38, 16

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"The blast of disintegration whizzes by you!"
	.size	.L.str.39, 44

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Empty register."
	.size	.L.str.40, 16

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"[ Passwords don't match - checking turned off ]"
	.size	.L.str.41, 48

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"[ Passwords don't match - your armor crumbles away ]"
	.size	.L.str.42, 53

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Aborted because of window size change."
	.size	.L.str.43, 39

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"KAABLAMM!!!  You triggered a land mine!"
	.size	.L.str.44, 40

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Out of memory."
	.size	.L.str.45, 15

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Who was that Maude person anyway?"
	.size	.L.str.46, 34

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"getpwuid() can't identify your account!"
	.size	.L.str.47, 40

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"An alarm sounds through the dungeon...\nThe Keystone Kops are after you!"
	.size	.L.str.48, 72

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Must be connected to a terminal."
	.size	.L.str.49, 33

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"You must play from a terminal."
	.size	.L.str.50, 31

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"No Sockets found in %s.\n"
	.size	.L.str.51, 25

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"This room is empty (%s).\n"
	.size	.L.str.52, 26

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"New screen..."
	.size	.L.str.53, 14

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Be careful!  New screen tonight."
	.size	.L.str.54, 33

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Child has been stopped, restarting."
	.size	.L.str.55, 36

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"You regain consciousness."
	.size	.L.str.56, 26

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"There are screens on:"
	.size	.L.str.57, 22

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Your inventory:"
	.size	.L.str.58, 16

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"There is a screen on:"
	.size	.L.str.59, 22

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"There are several screens on:"
	.size	.L.str.60, 30

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Prove thyself worthy or perish:"
	.size	.L.str.61, 32

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"There is a suitable screen on:"
	.size	.L.str.62, 31

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"You see here a good looking screen:"
	.size	.L.str.63, 36

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"There are several suitable screens on:"
	.size	.L.str.64, 39

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"You may wish for a screen, what do you want?"
	.size	.L.str.65, 45

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"%d socket%s wiped out."
	.size	.L.str.66, 23

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"You hear %d distant explosion%s."
	.size	.L.str.67, 33

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"Remove dead screens with 'screen -wipe'."
	.size	.L.str.68, 41

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"The dead screen%s touch%s you. Try 'screen -wipe'."
	.size	.L.str.69, 51

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"Illegal reattach attempt from terminal %s."
	.size	.L.str.70, 43

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"'%s' tries to touch your session, but fails."
	.size	.L.str.71, 45

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"Could not write %s"
	.size	.L.str.72, 19

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"%s is too hard to dig in"
	.size	.L.str.73, 25


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
