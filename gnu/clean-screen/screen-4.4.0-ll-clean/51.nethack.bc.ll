; ModuleID = './nethack.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlstrans = type { i8*, i8* }

@nethackflag = external global i32, align 4
@nethacktrans = internal global [39 x %struct.nlstrans] [%struct.nlstrans { i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0) }, %struct.nlstrans { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0) }, %struct.nlstrans { i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i32 0, i32 0) }, %struct.nlstrans { i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i32 0, i32 0) }, %struct.nlstrans { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0) }, %struct.nlstrans { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i32 0, i32 0) }, %struct.nlstrans { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i32 0, i32 0) }, %struct.nlstrans { i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i32 0, i32 0) }, %struct.nlstrans { i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i32 0, i32 0) }, %struct.nlstrans { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0) }, %struct.nlstrans { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i32 0, i32 0) }, %struct.nlstrans { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i32 0, i32 0) }, %struct.nlstrans { i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.25, i32 0, i32 0) }, %struct.nlstrans { i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.27, i32 0, i32 0) }, %struct.nlstrans { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0) }, %struct.nlstrans { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.31, i32 0, i32 0) }, %struct.nlstrans { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.33, i32 0, i32 0) }, %struct.nlstrans { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.35, i32 0, i32 0) }, %struct.nlstrans { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.37, i32 0, i32 0) }, %struct.nlstrans { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.39, i32 0, i32 0) }, %struct.nlstrans { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0) }, %struct.nlstrans { i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.42, i32 0, i32 0) }, %struct.nlstrans { i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.44, i32 0, i32 0) }, %struct.nlstrans { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.46, i32 0, i32 0) }, %struct.nlstrans { i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.48, i32 0, i32 0) }, %struct.nlstrans { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.50, i32 0, i32 0) }, %struct.nlstrans { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.52, i32 0, i32 0) }, %struct.nlstrans { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.54, i32 0, i32 0) }, %struct.nlstrans { i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.56, i32 0, i32 0) }, %struct.nlstrans { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.58, i32 0, i32 0) }, %struct.nlstrans { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.58, i32 0, i32 0) }, %struct.nlstrans { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.61, i32 0, i32 0) }, %struct.nlstrans { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.63, i32 0, i32 0) }, %struct.nlstrans { i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.65, i32 0, i32 0) }, %struct.nlstrans { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.67, i32 0, i32 0) }, %struct.nlstrans { i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.69, i32 0, i32 0) }, %struct.nlstrans { i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.71, i32 0, i32 0) }, %struct.nlstrans { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.73, i32 0, i32 0) }, %struct.nlstrans zeroinitializer], align 16
@.str = private unnamed_addr constant [35 x i8] c"Cannot lock terminal - fork failed\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Cannot fork terminal - lock failed\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Got only %d bytes from %s\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"You choke on your food: %d bytes from %s\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Copy mode - Column %d Line %d(+%d) (%d,%d)\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"Welcome to hacker's treasure zoo - Column %d Line %d(+%d) (%d,%d)\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"First mark set - Column %d Line %d\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"You drop a magic marker - Column %d Line %d\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Copy mode aborted\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"You escaped the dungeon.\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Filter removed.\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"You have a sad feeling for a moment...\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Window %d (%s) killed.\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"You destroy poor window %d (%s).\00", align 1
@.str.14 = private unnamed_addr constant [56 x i8] c"Window %d (%s) is now being monitored for all activity.\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"You feel like someone is watching you...\00", align 1
@.str.16 = private unnamed_addr constant [58 x i8] c"Window %d (%s) is no longer being monitored for activity.\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"You no longer sense the watcher's presence.\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"empty buffer\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"Nothing happens.\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"switched to audible bell.\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"Suddenly you can't see your bell!\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"switched to visual bell.\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"Your bell is no longer invisible.\00", align 1
@.str.24 = private unnamed_addr constant [55 x i8] c"The window is now being monitored for %d sec. silence.\00", align 1
@.str.25 = private unnamed_addr constant [56 x i8] c"You feel like someone is waiting for %d sec. silence...\00", align 1
@.str.26 = private unnamed_addr constant [53 x i8] c"The window is no longer being monitored for silence.\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"You no longer sense the watcher's silence.\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"No other window.\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"You cannot escape from window %d!\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"Logfile \22%s\22 closed.\00", align 1
@.str.31 = private unnamed_addr constant [48 x i8] c"You put away your scroll of logging named \22%s\22.\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"Error opening logfile \22%s\22\00", align 1
@.str.33 = private unnamed_addr constant [55 x i8] c"You don't seem to have a scroll of logging named \22%s\22.\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"Creating logfile \22%s\22.\00", align 1
@.str.35 = private unnamed_addr constant [56 x i8] c"You start writing on your scroll of logging named \22%s\22.\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"Appending to logfile \22%s\22.\00", align 1
@.str.37 = private unnamed_addr constant [46 x i8] c"You add to your scroll of logging named \22%s\22.\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"Detach aborted.\00", align 1
@.str.39 = private unnamed_addr constant [44 x i8] c"The blast of disintegration whizzes by you!\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"Empty register.\00", align 1
@.str.41 = private unnamed_addr constant [48 x i8] c"[ Passwords don't match - checking turned off ]\00", align 1
@.str.42 = private unnamed_addr constant [53 x i8] c"[ Passwords don't match - your armor crumbles away ]\00", align 1
@.str.43 = private unnamed_addr constant [39 x i8] c"Aborted because of window size change.\00", align 1
@.str.44 = private unnamed_addr constant [40 x i8] c"KAABLAMM!!!  You triggered a land mine!\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"Out of memory.\00", align 1
@.str.46 = private unnamed_addr constant [34 x i8] c"Who was that Maude person anyway?\00", align 1
@.str.47 = private unnamed_addr constant [40 x i8] c"getpwuid() can't identify your account!\00", align 1
@.str.48 = private unnamed_addr constant [72 x i8] c"An alarm sounds through the dungeon...\0AThe Keystone Kops are after you!\00", align 1
@.str.49 = private unnamed_addr constant [33 x i8] c"Must be connected to a terminal.\00", align 1
@.str.50 = private unnamed_addr constant [31 x i8] c"You must play from a terminal.\00", align 1
@.str.51 = private unnamed_addr constant [25 x i8] c"No Sockets found in %s.\0A\00", align 1
@.str.52 = private unnamed_addr constant [26 x i8] c"This room is empty (%s).\0A\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"New screen...\00", align 1
@.str.54 = private unnamed_addr constant [33 x i8] c"Be careful!  New screen tonight.\00", align 1
@.str.55 = private unnamed_addr constant [36 x i8] c"Child has been stopped, restarting.\00", align 1
@.str.56 = private unnamed_addr constant [26 x i8] c"You regain consciousness.\00", align 1
@.str.57 = private unnamed_addr constant [22 x i8] c"There are screens on:\00", align 1
@.str.58 = private unnamed_addr constant [16 x i8] c"Your inventory:\00", align 1
@.str.59 = private unnamed_addr constant [22 x i8] c"There is a screen on:\00", align 1
@.str.60 = private unnamed_addr constant [30 x i8] c"There are several screens on:\00", align 1
@.str.61 = private unnamed_addr constant [32 x i8] c"Prove thyself worthy or perish:\00", align 1
@.str.62 = private unnamed_addr constant [31 x i8] c"There is a suitable screen on:\00", align 1
@.str.63 = private unnamed_addr constant [36 x i8] c"You see here a good looking screen:\00", align 1
@.str.64 = private unnamed_addr constant [39 x i8] c"There are several suitable screens on:\00", align 1
@.str.65 = private unnamed_addr constant [45 x i8] c"You may wish for a screen, what do you want?\00", align 1
@.str.66 = private unnamed_addr constant [23 x i8] c"%d socket%s wiped out.\00", align 1
@.str.67 = private unnamed_addr constant [33 x i8] c"You hear %d distant explosion%s.\00", align 1
@.str.68 = private unnamed_addr constant [41 x i8] c"Remove dead screens with 'screen -wipe'.\00", align 1
@.str.69 = private unnamed_addr constant [51 x i8] c"The dead screen%s touch%s you. Try 'screen -wipe'.\00", align 1
@.str.70 = private unnamed_addr constant [43 x i8] c"Illegal reattach attempt from terminal %s.\00", align 1
@.str.71 = private unnamed_addr constant [45 x i8] c"'%s' tries to touch your session, but fails.\00", align 1
@.str.72 = private unnamed_addr constant [19 x i8] c"Could not write %s\00", align 1
@.str.73 = private unnamed_addr constant [25 x i8] c"%s is too hard to dig in\00", align 1

; Function Attrs: nounwind uwtable
define i8* @DoNLS(i8* %from) #0 {
entry:
  %retval = alloca i8*, align 8
  %from.addr = alloca i8*, align 8
  %t = alloca %struct.nlstrans*, align 8
  store i8* %from, i8** %from.addr, align 8
  %0 = load i32, i32* @nethackflag, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  store %struct.nlstrans* getelementptr inbounds ([39 x %struct.nlstrans], [39 x %struct.nlstrans]* @nethacktrans, i32 0, i32 0), %struct.nlstrans** %t, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load %struct.nlstrans*, %struct.nlstrans** %t, align 8
  %from1 = getelementptr inbounds %struct.nlstrans, %struct.nlstrans* %1, i32 0, i32 0
  %2 = load i8*, i8** %from1, align 8
  %tobool2 = icmp ne i8* %2, null
  br i1 %tobool2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %from.addr, align 8
  %4 = load %struct.nlstrans*, %struct.nlstrans** %t, align 8
  %from3 = getelementptr inbounds %struct.nlstrans, %struct.nlstrans* %4, i32 0, i32 0
  %5 = load i8*, i8** %from3, align 8
  %call = call i32 @strcmp(i8* %3, i8* %5) #2
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %for.body
  %6 = load %struct.nlstrans*, %struct.nlstrans** %t, align 8
  %to = getelementptr inbounds %struct.nlstrans, %struct.nlstrans* %6, i32 0, i32 1
  %7 = load i8*, i8** %to, align 8
  store i8* %7, i8** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load %struct.nlstrans*, %struct.nlstrans** %t, align 8
  %incdec.ptr = getelementptr inbounds %struct.nlstrans, %struct.nlstrans* %8, i32 1
  store %struct.nlstrans* %incdec.ptr, %struct.nlstrans** %t, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.5

if.end.5:                                         ; preds = %for.end, %entry
  %9 = load i8*, i8** %from.addr, align 8
  store i8* %9, i8** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4
  %10 = load i8*, i8** %retval
  ret i8* %10
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
