; ModuleID = './_heapqmodule.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }
%struct._object = type { i64, %struct._typeobject* }
%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.PyNumberMethods = type { %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)* }
%struct.PySequenceMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)*, i8*, i32 (%struct._object*, i64, %struct._object*)*, i8*, i32 (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)* }
%struct.PyMappingMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)* }
%struct.PyBufferProcs = type { i32 (%struct._object*, %struct.bufferinfo*, i32)*, void (%struct._object*, %struct.bufferinfo*)* }
%struct.bufferinfo = type { i8*, %struct._object*, i64, i64, i32, i32, i8*, i64*, i64*, i64*, i8* }
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct.PyListObject = type { %struct.PyVarObject, %struct._object**, i64 }

@_heapqmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1264 x i8], [1264 x i8]* @module_doc, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([8 x %struct.PyMethodDef], [8 x %struct.PyMethodDef]* @heapq_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@__about__ = internal global [4721 x i8] c"Heap queues\0A\0A[explanation by Fran\C3\A7ois Pinard]\0A\0AHeaps are arrays for which a[k] <= a[2*k+1] and a[k] <= a[2*k+2] for\0Aall k, counting elements from 0.  For the sake of comparison,\0Anon-existing elements are considered to be infinite.  The interesting\0Aproperty of a heap is that a[0] is always its smallest element.\0A\0AThe strange invariant above is meant to be an efficient memory\0Arepresentation for a tournament.  The numbers below are `k', not a[k]:\0A\0A                                   0\0A\0A                  1                                 2\0A\0A          3               4                5               6\0A\0A      7       8       9       10      11      12      13      14\0A\0A    15 16   17 18   19 20   21 22   23 24   25 26   27 28   29 30\0A\0A\0AIn the tree above, each cell `k' is topping `2*k+1' and `2*k+2'.  In\0Aan usual binary tournament we see in sports, each cell is the winner\0Aover the two cells it tops, and we can trace the winner down the tree\0Ato see all opponents s/he had.  However, in many computer applications\0Aof such tournaments, we do not need to trace the history of a winner.\0ATo be more memory efficient, when a winner is promoted, we try to\0Areplace it by something else at a lower level, and the rule becomes\0Athat a cell and the two cells it tops contain three different items,\0Abut the top cell \22wins\22 over the two topped cells.\0A\0AIf this heap invariant is protected at all time, index 0 is clearly\0Athe overall winner.  The simplest algorithmic way to remove it and\0Afind the \22next\22 winner is to move some loser (let's say cell 30 in the\0Adiagram above) into the 0 position, and then percolate this new 0 down\0Athe tree, exchanging values, until the invariant is re-established.\0AThis is clearly logarithmic on the total number of items in the tree.\0ABy iterating over all items, you get an O(n ln n) sort.\0A\0AA nice feature of this sort is that you can efficiently insert new\0Aitems while the sort is going on, provided that the inserted items are\0Anot \22better\22 than the last 0'th element you extracted.  This is\0Aespecially useful in simulation contexts, where the tree holds all\0Aincoming events, and the \22win\22 condition means the smallest scheduled\0Atime.  When an event schedule other events for execution, they are\0Ascheduled into the future, so they can easily go into the heap.  So, a\0Aheap is a good structure for implementing schedulers (this is what I\0Aused for my MIDI sequencer :-).\0A\0AVarious structures for implementing schedulers have been extensively\0Astudied, and heaps are good for this, as they are reasonably speedy,\0Athe speed is almost constant, and the worst case is not much different\0Athan the average case.  However, there are other representations which\0Aare more efficient overall, yet the worst cases might be terrible.\0A\0AHeaps are also very useful in big disk sorts.  You most probably all\0Aknow that a big sort implies producing \22runs\22 (which are pre-sorted\0Asequences, which size is usually related to the amount of CPU memory),\0Afollowed by a merging passes for these runs, which merging is often\0Avery cleverly organised[1].  It is very important that the initial\0Asort produces the longest runs possible.  Tournaments are a good way\0Ato that.  If, using all the memory available to hold a tournament, you\0Areplace and percolate items that happen to fit the current run, you'll\0Aproduce runs which are twice the size of the memory for random input,\0Aand much better for input fuzzily ordered.\0A\0AMoreover, if you output the 0'th item on disk and get an input which\0Amay not fit in the current tournament (because the value \22wins\22 over\0Athe last output value), it cannot fit in the heap, so the size of the\0Aheap decreases.  The freed memory could be cleverly reused immediately\0Afor progressively building a second heap, which grows at exactly the\0Asame rate the first heap is melting.  When the first heap completely\0Avanishes, you switch heaps and start a new run.  Clever and quite\0Aeffective!\0A\0AIn a word, heaps are useful memory structures to know.  I use them in\0Aa few applications, and I think it is good to keep a `heap' module\0Aaround. :-)\0A\0A--------------------\0A[1] The disk balancing algorithms which are current, nowadays, are\0Amore annoying than clever, and this is a consequence of the seeking\0Acapabilities of the disks.  On devices which cannot seek, like big\0Atape drives, the story was quite different, and one had to be very\0Aclever to ensure (far in advance) that each tape movement will be the\0Amost effective possible (that is, will best participate at\0A\22progressing\22 the merge).  Some tapes were even able to read\0Abackwards, and this was also used to avoid the rewinding time.\0ABelieve me, real good tape sorts were quite spectacular to watch!\0AFrom all times, sorting has always been a Great Art! :-)\0A\00", align 16
@.str = private unnamed_addr constant [10 x i8] c"__about__\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"_heapq\00", align 1
@module_doc = internal global [1264 x i8] c"Heap queue algorithm (a.k.a. priority queue).\0A\0AHeaps are arrays for which a[k] <= a[2*k+1] and a[k] <= a[2*k+2] for\0Aall k, counting elements from 0.  For the sake of comparison,\0Anon-existing elements are considered to be infinite.  The interesting\0Aproperty of a heap is that a[0] is always its smallest element.\0A\0AUsage:\0A\0Aheap = []            # creates an empty heap\0Aheappush(heap, item) # pushes a new item on the heap\0Aitem = heappop(heap) # pops the smallest item from the heap\0Aitem = heap[0]       # smallest item on the heap without popping it\0Aheapify(x)           # transforms list into a heap, in-place, in linear time\0Aitem = heapreplace(heap, item) # pops and returns smallest item, and adds\0A                               # new item; the heap size is unchanged\0A\0AOur API differs from textbook heap algorithms as follows:\0A\0A- We use 0-based indexing.  This makes the relationship between the\0A  index for a node and the indexes for its children slightly less\0A  obvious, but is more suitable since Python uses 0-based indexing.\0A\0A- Our heappop() method returns the smallest item, not the largest.\0A\0AThese two make it possible to view the heap as a regular Python list\0Awithout surprises: heap[0] is the smallest item, and heap.sort()\0Amaintains the heap invariant!\0A\00", align 16
@heapq_methods = internal global [8 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @heappush, i32 1, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @heappush_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @heappushpop, i32 1, i8* getelementptr inbounds ([210 x i8], [210 x i8]* @heappushpop_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @heappop, i32 8, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @heappop_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @heapreplace, i32 1, i8* getelementptr inbounds ([441 x i8], [441 x i8]* @heapreplace_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @heapify, i32 8, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @heapify_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @nlargest, i32 1, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @nlargest_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @nsmallest, i32 1, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @nsmallest_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"heappush\00", align 1
@heappush_doc = internal global [83 x i8] c"heappush(heap, item) -> None. Push item onto heap, maintaining the heap invariant.\00", align 16
@.str.3 = private unnamed_addr constant [12 x i8] c"heappushpop\00", align 1
@heappushpop_doc = internal global [210 x i8] c"heappushpop(heap, item) -> value. Push item on the heap, then pop and return the smallest item\0Afrom the heap. The combined action runs more efficiently than\0Aheappush() followed by a separate call to heappop().\00", align 16
@.str.4 = private unnamed_addr constant [8 x i8] c"heappop\00", align 1
@heappop_doc = internal global [68 x i8] c"Pop the smallest item off the heap, maintaining the heap invariant.\00", align 16
@.str.5 = private unnamed_addr constant [12 x i8] c"heapreplace\00", align 1
@heapreplace_doc = internal global [441 x i8] c"heapreplace(heap, item) -> value. Pop and return the current smallest value, and add the new item.\0A\0AThis is more efficient than heappop() followed by heappush(), and can be\0Amore appropriate when using a fixed-size heap.  Note that the value\0Areturned may be larger than item!  That constrains reasonable uses of\0Athis routine unless written as part of a conditional replacement:\0A\0A    if item > heap[0]:\0A        item = heapreplace(heap, item)\0A\00", align 16
@.str.6 = private unnamed_addr constant [8 x i8] c"heapify\00", align 1
@heapify_doc = internal global [60 x i8] c"Transform list into a heap, in-place, in O(len(heap)) time.\00", align 16
@.str.7 = private unnamed_addr constant [9 x i8] c"nlargest\00", align 1
@nlargest_doc = internal global [95 x i8] c"Find the n largest elements in a dataset.\0A\0AEquivalent to:  sorted(iterable, reverse=True)[:n]\0A\00", align 16
@.str.8 = private unnamed_addr constant [10 x i8] c"nsmallest\00", align 1
@nsmallest_doc = internal global [82 x i8] c"Find the n smallest elements in a dataset.\0A\0AEquivalent to:  sorted(iterable)[:n]\0A\00", align 16
@PyExc_TypeError = external global %struct._object*, align 8
@.str.9 = private unnamed_addr constant [29 x i8] c"heap argument must be a list\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@PyExc_IndexError = external global %struct._object*, align 8
@.str.10 = private unnamed_addr constant [19 x i8] c"index out of range\00", align 1
@PyExc_RuntimeError = external global %struct._object*, align 8
@.str.11 = private unnamed_addr constant [35 x i8] c"list changed size during iteration\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"nO:nlargest\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"nO:nsmallest\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__heapq() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %about = alloca %struct._object*, align 8
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @_heapqmodule, i32 1013)
  store %struct._object* %call, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i64 @strlen(i8* getelementptr inbounds ([4721 x i8], [4721 x i8]* @__about__, i32 0, i32 0)) #3
  %call2 = call %struct._object* @PyUnicode_DecodeUTF8(i8* getelementptr inbounds ([4721 x i8], [4721 x i8]* @__about__, i32 0, i32 0), i64 %call1, i8* null)
  store %struct._object* %call2, %struct._object** %about, align 8
  %1 = load %struct._object*, %struct._object** %m, align 8
  %2 = load %struct._object*, %struct._object** %about, align 8
  %call3 = call i32 @PyModule_AddObject(%struct._object* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), %struct._object* %2)
  %3 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare %struct._object* @PyUnicode_DecodeUTF8(i8*, i64, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @heappush(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %heap = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i64 2, i64 2, %struct._object** %heap, %struct._object** %item)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %heap, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 33554432
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %heap, align 8
  %6 = load %struct._object*, %struct._object** %item, align 8
  %call3 = call i32 @PyList_Append(%struct._object* %5, %struct._object* %6)
  %cmp4 = icmp eq i32 %call3, -1
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.2
  %7 = load %struct._object*, %struct._object** %heap, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyListObject*
  %9 = load %struct._object*, %struct._object** %heap, align 8
  %10 = bitcast %struct._object* %9 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %10, i32 0, i32 1
  %11 = load i64, i64* %ob_size, align 8
  %sub = sub i64 %11, 1
  %call7 = call i32 @_siftdown(%struct.PyListObject* %8, i64 0, i64 %sub)
  %cmp8 = icmp eq i32 %call7, -1
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %12 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.9, %if.then.5, %if.then.1, %if.then
  %13 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %13
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @heappushpop(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %heap = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %returnitem = alloca %struct._object*, align 8
  %cmp = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i64 2, i64 2, %struct._object** %heap, %struct._object** %item)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %heap, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 33554432
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %heap, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %6, i32 0, i32 1
  %7 = load i64, i64* %ob_size, align 8
  %cmp4 = icmp slt i64 %7, 1
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %8 = load %struct._object*, %struct._object** %item, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %10 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %10, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.3
  %11 = load %struct._object*, %struct._object** %heap, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %12, i32 0, i32 1
  %13 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %13, i64 0
  %14 = load %struct._object*, %struct._object** %arrayidx, align 8
  %15 = load %struct._object*, %struct._object** %item, align 8
  %call7 = call i32 @PyObject_RichCompareBool(%struct._object* %14, %struct._object* %15, i32 0)
  store i32 %call7, i32* %cmp, align 4
  %16 = load i32, i32* %cmp, align 4
  %cmp8 = icmp eq i32 %16, -1
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %17 = load i32, i32* %cmp, align 4
  %cmp11 = icmp eq i32 %17, 0
  br i1 %cmp11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %if.end.10
  %18 = load %struct._object*, %struct._object** %item, align 8
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt13, align 8
  %inc14 = add i64 %19, 1
  store i64 %inc14, i64* %ob_refcnt13, align 8
  %20 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %20, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.10
  %21 = load %struct._object*, %struct._object** %heap, align 8
  %22 = bitcast %struct._object* %21 to %struct.PyListObject*
  %ob_item16 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %22, i32 0, i32 1
  %23 = load %struct._object**, %struct._object*** %ob_item16, align 8
  %arrayidx17 = getelementptr %struct._object*, %struct._object** %23, i64 0
  %24 = load %struct._object*, %struct._object** %arrayidx17, align 8
  store %struct._object* %24, %struct._object** %returnitem, align 8
  %25 = load %struct._object*, %struct._object** %item, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt18, align 8
  %inc19 = add i64 %26, 1
  store i64 %inc19, i64* %ob_refcnt18, align 8
  %27 = load %struct._object*, %struct._object** %item, align 8
  %28 = load %struct._object*, %struct._object** %heap, align 8
  %29 = bitcast %struct._object* %28 to %struct.PyListObject*
  %ob_item20 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %29, i32 0, i32 1
  %30 = load %struct._object**, %struct._object*** %ob_item20, align 8
  %arrayidx21 = getelementptr %struct._object*, %struct._object** %30, i64 0
  store %struct._object* %27, %struct._object** %arrayidx21, align 8
  %31 = load %struct._object*, %struct._object** %heap, align 8
  %32 = bitcast %struct._object* %31 to %struct.PyListObject*
  %call22 = call i32 @_siftup(%struct.PyListObject* %32, i64 0)
  %cmp23 = icmp eq i32 %call22, -1
  br i1 %cmp23, label %if.then.24, label %if.end.30

if.then.24:                                       ; preds = %if.end.15
  br label %do.body

do.body:                                          ; preds = %if.then.24
  %33 = load %struct._object*, %struct._object** %returnitem, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt25, align 8
  %dec = add i64 %35, -1
  store i64 %dec, i64* %ob_refcnt25, align 8
  %cmp26 = icmp ne i64 %dec, 0
  br i1 %cmp26, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %do.body
  br label %if.end.29

if.else:                                          ; preds = %do.body
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %38(%struct._object* %39)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.27
  br label %do.end

do.end:                                           ; preds = %if.end.29
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.30:                                        ; preds = %if.end.15
  %40 = load %struct._object*, %struct._object** %returnitem, align 8
  store %struct._object* %40, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.30, %do.end, %if.then.12, %if.then.9, %if.then.5, %if.then.2, %if.then
  %41 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %41
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @heappop(%struct._object* %self, %struct._object* %heap) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %heap.addr = alloca %struct._object*, align 8
  %lastelt = alloca %struct._object*, align 8
  %returnitem = alloca %struct._object*, align 8
  %n = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp24 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %heap, %struct._object** %heap.addr, align 8
  %0 = load %struct._object*, %struct._object** %heap.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 33554432
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %heap.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %5, i32 0, i32 1
  %6 = load i64, i64* %ob_size, align 8
  store i64 %6, i64* %n, align 8
  %7 = load i64, i64* %n, align 8
  %cmp1 = icmp eq i64 %7, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %8 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %9 = load i64, i64* %n, align 8
  %sub = sub i64 %9, 1
  %10 = load %struct._object*, %struct._object** %heap.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %11, i32 0, i32 1
  %12 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %12, i64 %sub
  %13 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %13, %struct._object** %lastelt, align 8
  %14 = load %struct._object*, %struct._object** %lastelt, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %16 = load %struct._object*, %struct._object** %heap.addr, align 8
  %17 = load i64, i64* %n, align 8
  %sub4 = sub i64 %17, 1
  %18 = load i64, i64* %n, align 8
  %call = call i32 @PyList_SetSlice(%struct._object* %16, i64 %sub4, i64 %18, %struct._object* null)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.then.6, label %if.end.12

if.then.6:                                        ; preds = %if.end.3
  br label %do.body

do.body:                                          ; preds = %if.then.6
  %19 = load %struct._object*, %struct._object** %lastelt, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt7 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt7, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %ob_refcnt7, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body
  br label %if.end.11

if.else:                                          ; preds = %do.body
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %24(%struct._object* %25)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.end.3
  %26 = load i64, i64* %n, align 8
  %dec13 = add i64 %26, -1
  store i64 %dec13, i64* %n, align 8
  %27 = load i64, i64* %n, align 8
  %tobool = icmp ne i64 %27, 0
  br i1 %tobool, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.end.12
  %28 = load %struct._object*, %struct._object** %lastelt, align 8
  store %struct._object* %28, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.12
  %29 = load %struct._object*, %struct._object** %heap.addr, align 8
  %30 = bitcast %struct._object* %29 to %struct.PyListObject*
  %ob_item16 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %30, i32 0, i32 1
  %31 = load %struct._object**, %struct._object*** %ob_item16, align 8
  %arrayidx17 = getelementptr %struct._object*, %struct._object** %31, i64 0
  %32 = load %struct._object*, %struct._object** %arrayidx17, align 8
  store %struct._object* %32, %struct._object** %returnitem, align 8
  %33 = load %struct._object*, %struct._object** %lastelt, align 8
  %34 = load %struct._object*, %struct._object** %heap.addr, align 8
  %35 = bitcast %struct._object* %34 to %struct.PyListObject*
  %ob_item18 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %35, i32 0, i32 1
  %36 = load %struct._object**, %struct._object*** %ob_item18, align 8
  %arrayidx19 = getelementptr %struct._object*, %struct._object** %36, i64 0
  store %struct._object* %33, %struct._object** %arrayidx19, align 8
  %37 = load %struct._object*, %struct._object** %heap.addr, align 8
  %38 = bitcast %struct._object* %37 to %struct.PyListObject*
  %call20 = call i32 @_siftup(%struct.PyListObject* %38, i64 0)
  %cmp21 = icmp eq i32 %call20, -1
  br i1 %cmp21, label %if.then.22, label %if.end.34

if.then.22:                                       ; preds = %if.end.15
  br label %do.body.23

do.body.23:                                       ; preds = %if.then.22
  %39 = load %struct._object*, %struct._object** %returnitem, align 8
  store %struct._object* %39, %struct._object** %_py_decref_tmp24, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0
  %41 = load i64, i64* %ob_refcnt25, align 8
  %dec26 = add i64 %41, -1
  store i64 %dec26, i64* %ob_refcnt25, align 8
  %cmp27 = icmp ne i64 %dec26, 0
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %do.body.23
  br label %if.end.32

if.else.29:                                       ; preds = %do.body.23
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8
  %tp_dealloc31 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc31, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  call void %44(%struct._object* %45)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.29, %if.then.28
  br label %do.end.33

do.end.33:                                        ; preds = %if.end.32
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.34:                                        ; preds = %if.end.15
  %46 = load %struct._object*, %struct._object** %returnitem, align 8
  store %struct._object* %46, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.34, %do.end.33, %if.then.14, %do.end, %if.then.2, %if.then
  %47 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %47
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @heapreplace(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %heap = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %returnitem = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i64 2, i64 2, %struct._object** %heap, %struct._object** %item)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %heap, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 33554432
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %heap, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %6, i32 0, i32 1
  %7 = load i64, i64* %ob_size, align 8
  %cmp3 = icmp slt i64 %7, 1
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.2
  %8 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end.2
  %9 = load %struct._object*, %struct._object** %heap, align 8
  %10 = bitcast %struct._object* %9 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %10, i32 0, i32 1
  %11 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %11, i64 0
  %12 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %12, %struct._object** %returnitem, align 8
  %13 = load %struct._object*, %struct._object** %item, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %15 = load %struct._object*, %struct._object** %item, align 8
  %16 = load %struct._object*, %struct._object** %heap, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyListObject*
  %ob_item6 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %17, i32 0, i32 1
  %18 = load %struct._object**, %struct._object*** %ob_item6, align 8
  %arrayidx7 = getelementptr %struct._object*, %struct._object** %18, i64 0
  store %struct._object* %15, %struct._object** %arrayidx7, align 8
  %19 = load %struct._object*, %struct._object** %heap, align 8
  %20 = bitcast %struct._object* %19 to %struct.PyListObject*
  %call8 = call i32 @_siftup(%struct.PyListObject* %20, i64 0)
  %cmp9 = icmp eq i32 %call8, -1
  br i1 %cmp9, label %if.then.10, label %if.end.16

if.then.10:                                       ; preds = %if.end.5
  br label %do.body

do.body:                                          ; preds = %if.then.10
  %21 = load %struct._object*, %struct._object** %returnitem, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt11 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt11, align 8
  %dec = add i64 %23, -1
  store i64 %dec, i64* %ob_refcnt11, align 8
  %cmp12 = icmp ne i64 %dec, 0
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %do.body
  br label %if.end.15

if.else:                                          ; preds = %do.body
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %26(%struct._object* %27)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.13
  br label %do.end

do.end:                                           ; preds = %if.end.15
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.end.5
  %28 = load %struct._object*, %struct._object** %returnitem, align 8
  store %struct._object* %28, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.16, %do.end, %if.then.4, %if.then.1, %if.then
  %29 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %29
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @heapify(%struct._object* %self, %struct._object* %heap) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %heap.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %heap, %struct._object** %heap.addr, align 8
  %0 = load %struct._object*, %struct._object** %heap.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 33554432
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %heap.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %5, i32 0, i32 1
  %6 = load i64, i64* %ob_size, align 8
  store i64 %6, i64* %n, align 8
  %7 = load i64, i64* %n, align 8
  %div = sdiv i64 %7, 2
  %sub = sub i64 %div, 1
  store i64 %sub, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i64, i64* %i, align 8
  %cmp1 = icmp sge i64 %8, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct._object*, %struct._object** %heap.addr, align 8
  %10 = bitcast %struct._object* %9 to %struct.PyListObject*
  %11 = load i64, i64* %i, align 8
  %call = call i32 @_siftup(%struct.PyListObject* %10, i64 %11)
  %cmp2 = icmp eq i32 %call, -1
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %for.body
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.4
  %12 = load i64, i64* %i, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.3, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @nlargest(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %heap = alloca %struct._object*, align 8
  %elem = alloca %struct._object*, align 8
  %iterable = alloca %struct._object*, align 8
  %sol = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %oldelem = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %cmp = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp26 = alloca %struct._object*, align 8
  %_py_decref_tmp61 = alloca %struct._object*, align 8
  %_py_decref_tmp75 = alloca %struct._object*, align 8
  %_py_decref_tmp91 = alloca %struct._object*, align 8
  %_py_decref_tmp116 = alloca %struct._object*, align 8
  %_py_decref_tmp127 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp141 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %heap, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i64* %n, %struct._object** %iterable)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %iterable, align 8
  %call1 = call %struct._object* @PyObject_GetIter(%struct._object* %1)
  store %struct._object* %call1, %struct._object** %it, align 8
  %2 = load %struct._object*, %struct._object** %it, align 8
  %cmp2 = icmp eq %struct._object* %2, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %call5 = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call5, %struct._object** %heap, align 8
  %3 = load %struct._object*, %struct._object** %heap, align 8
  %cmp6 = icmp eq %struct._object* %3, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  br label %fail

if.end.8:                                         ; preds = %if.end.4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %4 = load i64, i64* %i, align 8
  %5 = load i64, i64* %n, align 8
  %cmp9 = icmp slt i64 %4, %5
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._object*, %struct._object** %it, align 8
  %call10 = call %struct._object* @PyIter_Next(%struct._object* %6)
  store %struct._object* %call10, %struct._object** %elem, align 8
  %7 = load %struct._object*, %struct._object** %elem, align 8
  %cmp11 = icmp eq %struct._object* %7, null
  br i1 %cmp11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %for.body
  %call13 = call %struct._object* @PyErr_Occurred()
  %tobool14 = icmp ne %struct._object* %call13, null
  br i1 %tobool14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then.12
  br label %fail

if.else:                                          ; preds = %if.then.12
  br label %sortit

if.end.16:                                        ; preds = %for.body
  %8 = load %struct._object*, %struct._object** %heap, align 8
  %9 = load %struct._object*, %struct._object** %elem, align 8
  %call17 = call i32 @PyList_Append(%struct._object* %8, %struct._object* %9)
  %cmp18 = icmp eq i32 %call17, -1
  br i1 %cmp18, label %if.then.19, label %if.end.24

if.then.19:                                       ; preds = %if.end.16
  br label %do.body

do.body:                                          ; preds = %if.then.19
  %10 = load %struct._object*, %struct._object** %elem, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp20 = icmp ne i64 %dec, 0
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.body
  br label %if.end.23

if.else.22:                                       ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.22, %if.then.21
  br label %do.end

do.end:                                           ; preds = %if.end.23
  br label %fail

if.end.24:                                        ; preds = %if.end.16
  br label %do.body.25

do.body.25:                                       ; preds = %if.end.24
  %17 = load %struct._object*, %struct._object** %elem, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp26, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt27, align 8
  %dec28 = add i64 %19, -1
  store i64 %dec28, i64* %ob_refcnt27, align 8
  %cmp29 = icmp ne i64 %dec28, 0
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %do.body.25
  br label %if.end.34

if.else.31:                                       ; preds = %do.body.25
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8
  %tp_dealloc33 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc33, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  call void %22(%struct._object* %23)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.31, %if.then.30
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  br label %for.inc

for.inc:                                          ; preds = %do.end.35
  %24 = load i64, i64* %i, align 8
  %inc = add i64 %24, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load %struct._object*, %struct._object** %heap, align 8
  %26 = bitcast %struct._object* %25 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %26, i32 0, i32 1
  %27 = load i64, i64* %ob_size, align 8
  %cmp36 = icmp eq i64 %27, 0
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %for.end
  br label %sortit

if.end.38:                                        ; preds = %for.end
  %28 = load i64, i64* %n, align 8
  %div = sdiv i64 %28, 2
  %sub = sub i64 %div, 1
  store i64 %sub, i64* %i, align 8
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.46, %if.end.38
  %29 = load i64, i64* %i, align 8
  %cmp40 = icmp sge i64 %29, 0
  br i1 %cmp40, label %for.body.41, label %for.end.48

for.body.41:                                      ; preds = %for.cond.39
  %30 = load %struct._object*, %struct._object** %heap, align 8
  %31 = bitcast %struct._object* %30 to %struct.PyListObject*
  %32 = load i64, i64* %i, align 8
  %call42 = call i32 @_siftup(%struct.PyListObject* %31, i64 %32)
  %cmp43 = icmp eq i32 %call42, -1
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %for.body.41
  br label %fail

if.end.45:                                        ; preds = %for.body.41
  br label %for.inc.46

for.inc.46:                                       ; preds = %if.end.45
  %33 = load i64, i64* %i, align 8
  %dec47 = add i64 %33, -1
  store i64 %dec47, i64* %i, align 8
  br label %for.cond.39

for.end.48:                                       ; preds = %for.cond.39
  %34 = load %struct._object*, %struct._object** %heap, align 8
  %35 = bitcast %struct._object* %34 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %35, i32 0, i32 1
  %36 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %36, i64 0
  %37 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %37, %struct._object** %sol, align 8
  br label %while.body

while.body:                                       ; preds = %for.end.48, %do.end.84, %if.end.104
  %38 = load %struct._object*, %struct._object** %it, align 8
  %call49 = call %struct._object* @PyIter_Next(%struct._object* %38)
  store %struct._object* %call49, %struct._object** %elem, align 8
  %39 = load %struct._object*, %struct._object** %elem, align 8
  %cmp50 = icmp eq %struct._object* %39, null
  br i1 %cmp50, label %if.then.51, label %if.end.56

if.then.51:                                       ; preds = %while.body
  %call52 = call %struct._object* @PyErr_Occurred()
  %tobool53 = icmp ne %struct._object* %call52, null
  br i1 %tobool53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %if.then.51
  br label %fail

if.else.55:                                       ; preds = %if.then.51
  br label %sortit

if.end.56:                                        ; preds = %while.body
  %40 = load %struct._object*, %struct._object** %sol, align 8
  %41 = load %struct._object*, %struct._object** %elem, align 8
  %call57 = call i32 @PyObject_RichCompareBool(%struct._object* %40, %struct._object* %41, i32 0)
  store i32 %call57, i32* %cmp, align 4
  %42 = load i32, i32* %cmp, align 4
  %cmp58 = icmp eq i32 %42, -1
  br i1 %cmp58, label %if.then.59, label %if.end.71

if.then.59:                                       ; preds = %if.end.56
  br label %do.body.60

do.body.60:                                       ; preds = %if.then.59
  %43 = load %struct._object*, %struct._object** %elem, align 8
  store %struct._object* %43, %struct._object** %_py_decref_tmp61, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  %ob_refcnt62 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0
  %45 = load i64, i64* %ob_refcnt62, align 8
  %dec63 = add i64 %45, -1
  store i64 %dec63, i64* %ob_refcnt62, align 8
  %cmp64 = icmp ne i64 %dec63, 0
  br i1 %cmp64, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %do.body.60
  br label %if.end.69

if.else.66:                                       ; preds = %do.body.60
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  %ob_type67 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type67, align 8
  %tp_dealloc68 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc68, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  call void %48(%struct._object* %49)
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.66, %if.then.65
  br label %do.end.70

do.end.70:                                        ; preds = %if.end.69
  br label %fail

if.end.71:                                        ; preds = %if.end.56
  %50 = load i32, i32* %cmp, align 4
  %cmp72 = icmp eq i32 %50, 0
  br i1 %cmp72, label %if.then.73, label %if.end.85

if.then.73:                                       ; preds = %if.end.71
  br label %do.body.74

do.body.74:                                       ; preds = %if.then.73
  %51 = load %struct._object*, %struct._object** %elem, align 8
  store %struct._object* %51, %struct._object** %_py_decref_tmp75, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  %ob_refcnt76 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 0
  %53 = load i64, i64* %ob_refcnt76, align 8
  %dec77 = add i64 %53, -1
  store i64 %dec77, i64* %ob_refcnt76, align 8
  %cmp78 = icmp ne i64 %dec77, 0
  br i1 %cmp78, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %do.body.74
  br label %if.end.83

if.else.80:                                       ; preds = %do.body.74
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  %ob_type81 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 1
  %55 = load %struct._typeobject*, %struct._typeobject** %ob_type81, align 8
  %tp_dealloc82 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %55, i32 0, i32 4
  %56 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc82, align 8
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  call void %56(%struct._object* %57)
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.80, %if.then.79
  br label %do.end.84

do.end.84:                                        ; preds = %if.end.83
  br label %while.body

if.end.85:                                        ; preds = %if.end.71
  %58 = load %struct._object*, %struct._object** %heap, align 8
  %59 = bitcast %struct._object* %58 to %struct.PyListObject*
  %ob_item86 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %59, i32 0, i32 1
  %60 = load %struct._object**, %struct._object*** %ob_item86, align 8
  %arrayidx87 = getelementptr %struct._object*, %struct._object** %60, i64 0
  %61 = load %struct._object*, %struct._object** %arrayidx87, align 8
  store %struct._object* %61, %struct._object** %oldelem, align 8
  %62 = load %struct._object*, %struct._object** %elem, align 8
  %63 = load %struct._object*, %struct._object** %heap, align 8
  %64 = bitcast %struct._object* %63 to %struct.PyListObject*
  %ob_item88 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %64, i32 0, i32 1
  %65 = load %struct._object**, %struct._object*** %ob_item88, align 8
  %arrayidx89 = getelementptr %struct._object*, %struct._object** %65, i64 0
  store %struct._object* %62, %struct._object** %arrayidx89, align 8
  br label %do.body.90

do.body.90:                                       ; preds = %if.end.85
  %66 = load %struct._object*, %struct._object** %oldelem, align 8
  store %struct._object* %66, %struct._object** %_py_decref_tmp91, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp91, align 8
  %ob_refcnt92 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 0
  %68 = load i64, i64* %ob_refcnt92, align 8
  %dec93 = add i64 %68, -1
  store i64 %dec93, i64* %ob_refcnt92, align 8
  %cmp94 = icmp ne i64 %dec93, 0
  br i1 %cmp94, label %if.then.95, label %if.else.96

if.then.95:                                       ; preds = %do.body.90
  br label %if.end.99

if.else.96:                                       ; preds = %do.body.90
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp91, align 8
  %ob_type97 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 1
  %70 = load %struct._typeobject*, %struct._typeobject** %ob_type97, align 8
  %tp_dealloc98 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %70, i32 0, i32 4
  %71 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc98, align 8
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp91, align 8
  call void %71(%struct._object* %72)
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.96, %if.then.95
  br label %do.end.100

do.end.100:                                       ; preds = %if.end.99
  %73 = load %struct._object*, %struct._object** %heap, align 8
  %74 = bitcast %struct._object* %73 to %struct.PyListObject*
  %call101 = call i32 @_siftup(%struct.PyListObject* %74, i64 0)
  %cmp102 = icmp eq i32 %call101, -1
  br i1 %cmp102, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %do.end.100
  br label %fail

if.end.104:                                       ; preds = %do.end.100
  %75 = load %struct._object*, %struct._object** %heap, align 8
  %76 = bitcast %struct._object* %75 to %struct.PyListObject*
  %ob_item105 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %76, i32 0, i32 1
  %77 = load %struct._object**, %struct._object*** %ob_item105, align 8
  %arrayidx106 = getelementptr %struct._object*, %struct._object** %77, i64 0
  %78 = load %struct._object*, %struct._object** %arrayidx106, align 8
  store %struct._object* %78, %struct._object** %sol, align 8
  br label %while.body

sortit:                                           ; preds = %if.else.55, %if.then.37, %if.else
  %79 = load %struct._object*, %struct._object** %heap, align 8
  %call107 = call i32 @PyList_Sort(%struct._object* %79)
  %cmp108 = icmp eq i32 %call107, -1
  br i1 %cmp108, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %sortit
  br label %fail

if.end.110:                                       ; preds = %sortit
  %80 = load %struct._object*, %struct._object** %heap, align 8
  %call111 = call i32 @PyList_Reverse(%struct._object* %80)
  %cmp112 = icmp eq i32 %call111, -1
  br i1 %cmp112, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %if.end.110
  br label %fail

if.end.114:                                       ; preds = %if.end.110
  br label %do.body.115

do.body.115:                                      ; preds = %if.end.114
  %81 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %81, %struct._object** %_py_decref_tmp116, align 8
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp116, align 8
  %ob_refcnt117 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 0
  %83 = load i64, i64* %ob_refcnt117, align 8
  %dec118 = add i64 %83, -1
  store i64 %dec118, i64* %ob_refcnt117, align 8
  %cmp119 = icmp ne i64 %dec118, 0
  br i1 %cmp119, label %if.then.120, label %if.else.121

if.then.120:                                      ; preds = %do.body.115
  br label %if.end.124

if.else.121:                                      ; preds = %do.body.115
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp116, align 8
  %ob_type122 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 1
  %85 = load %struct._typeobject*, %struct._typeobject** %ob_type122, align 8
  %tp_dealloc123 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %85, i32 0, i32 4
  %86 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc123, align 8
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp116, align 8
  call void %86(%struct._object* %87)
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.121, %if.then.120
  br label %do.end.125

do.end.125:                                       ; preds = %if.end.124
  %88 = load %struct._object*, %struct._object** %heap, align 8
  store %struct._object* %88, %struct._object** %retval
  br label %return

fail:                                             ; preds = %if.then.113, %if.then.109, %if.then.103, %do.end.70, %if.then.54, %if.then.44, %do.end, %if.then.15, %if.then.7
  br label %do.body.126

do.body.126:                                      ; preds = %fail
  %89 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %89, %struct._object** %_py_decref_tmp127, align 8
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp127, align 8
  %ob_refcnt128 = getelementptr inbounds %struct._object, %struct._object* %90, i32 0, i32 0
  %91 = load i64, i64* %ob_refcnt128, align 8
  %dec129 = add i64 %91, -1
  store i64 %dec129, i64* %ob_refcnt128, align 8
  %cmp130 = icmp ne i64 %dec129, 0
  br i1 %cmp130, label %if.then.131, label %if.else.132

if.then.131:                                      ; preds = %do.body.126
  br label %if.end.135

if.else.132:                                      ; preds = %do.body.126
  %92 = load %struct._object*, %struct._object** %_py_decref_tmp127, align 8
  %ob_type133 = getelementptr inbounds %struct._object, %struct._object* %92, i32 0, i32 1
  %93 = load %struct._typeobject*, %struct._typeobject** %ob_type133, align 8
  %tp_dealloc134 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %93, i32 0, i32 4
  %94 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc134, align 8
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp127, align 8
  call void %94(%struct._object* %95)
  br label %if.end.135

if.end.135:                                       ; preds = %if.else.132, %if.then.131
  br label %do.end.136

do.end.136:                                       ; preds = %if.end.135
  br label %do.body.137

do.body.137:                                      ; preds = %do.end.136
  %96 = load %struct._object*, %struct._object** %heap, align 8
  store %struct._object* %96, %struct._object** %_py_xdecref_tmp, align 8
  %97 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp138 = icmp ne %struct._object* %97, null
  br i1 %cmp138, label %if.then.139, label %if.end.151

if.then.139:                                      ; preds = %do.body.137
  br label %do.body.140

do.body.140:                                      ; preds = %if.then.139
  %98 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %98, %struct._object** %_py_decref_tmp141, align 8
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp141, align 8
  %ob_refcnt142 = getelementptr inbounds %struct._object, %struct._object* %99, i32 0, i32 0
  %100 = load i64, i64* %ob_refcnt142, align 8
  %dec143 = add i64 %100, -1
  store i64 %dec143, i64* %ob_refcnt142, align 8
  %cmp144 = icmp ne i64 %dec143, 0
  br i1 %cmp144, label %if.then.145, label %if.else.146

if.then.145:                                      ; preds = %do.body.140
  br label %if.end.149

if.else.146:                                      ; preds = %do.body.140
  %101 = load %struct._object*, %struct._object** %_py_decref_tmp141, align 8
  %ob_type147 = getelementptr inbounds %struct._object, %struct._object* %101, i32 0, i32 1
  %102 = load %struct._typeobject*, %struct._typeobject** %ob_type147, align 8
  %tp_dealloc148 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %102, i32 0, i32 4
  %103 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc148, align 8
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp141, align 8
  call void %103(%struct._object* %104)
  br label %if.end.149

if.end.149:                                       ; preds = %if.else.146, %if.then.145
  br label %do.end.150

do.end.150:                                       ; preds = %if.end.149
  br label %if.end.151

if.end.151:                                       ; preds = %do.end.150, %do.body.137
  br label %do.end.152

do.end.152:                                       ; preds = %if.end.151
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.152, %do.end.125, %if.then.3, %if.then
  %105 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %105
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @nsmallest(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %heap = alloca %struct._object*, align 8
  %elem = alloca %struct._object*, align 8
  %iterable = alloca %struct._object*, align 8
  %los = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %oldelem = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %cmp = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp26 = alloca %struct._object*, align 8
  %_py_decref_tmp61 = alloca %struct._object*, align 8
  %_py_decref_tmp75 = alloca %struct._object*, align 8
  %_py_decref_tmp91 = alloca %struct._object*, align 8
  %_py_decref_tmp112 = alloca %struct._object*, align 8
  %_py_decref_tmp123 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp137 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %heap, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i64* %n, %struct._object** %iterable)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %iterable, align 8
  %call1 = call %struct._object* @PyObject_GetIter(%struct._object* %1)
  store %struct._object* %call1, %struct._object** %it, align 8
  %2 = load %struct._object*, %struct._object** %it, align 8
  %cmp2 = icmp eq %struct._object* %2, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %call5 = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call5, %struct._object** %heap, align 8
  %3 = load %struct._object*, %struct._object** %heap, align 8
  %cmp6 = icmp eq %struct._object* %3, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  br label %fail

if.end.8:                                         ; preds = %if.end.4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %4 = load i64, i64* %i, align 8
  %5 = load i64, i64* %n, align 8
  %cmp9 = icmp slt i64 %4, %5
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._object*, %struct._object** %it, align 8
  %call10 = call %struct._object* @PyIter_Next(%struct._object* %6)
  store %struct._object* %call10, %struct._object** %elem, align 8
  %7 = load %struct._object*, %struct._object** %elem, align 8
  %cmp11 = icmp eq %struct._object* %7, null
  br i1 %cmp11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %for.body
  %call13 = call %struct._object* @PyErr_Occurred()
  %tobool14 = icmp ne %struct._object* %call13, null
  br i1 %tobool14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then.12
  br label %fail

if.else:                                          ; preds = %if.then.12
  br label %sortit

if.end.16:                                        ; preds = %for.body
  %8 = load %struct._object*, %struct._object** %heap, align 8
  %9 = load %struct._object*, %struct._object** %elem, align 8
  %call17 = call i32 @PyList_Append(%struct._object* %8, %struct._object* %9)
  %cmp18 = icmp eq i32 %call17, -1
  br i1 %cmp18, label %if.then.19, label %if.end.24

if.then.19:                                       ; preds = %if.end.16
  br label %do.body

do.body:                                          ; preds = %if.then.19
  %10 = load %struct._object*, %struct._object** %elem, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp20 = icmp ne i64 %dec, 0
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.body
  br label %if.end.23

if.else.22:                                       ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.22, %if.then.21
  br label %do.end

do.end:                                           ; preds = %if.end.23
  br label %fail

if.end.24:                                        ; preds = %if.end.16
  br label %do.body.25

do.body.25:                                       ; preds = %if.end.24
  %17 = load %struct._object*, %struct._object** %elem, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp26, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt27, align 8
  %dec28 = add i64 %19, -1
  store i64 %dec28, i64* %ob_refcnt27, align 8
  %cmp29 = icmp ne i64 %dec28, 0
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %do.body.25
  br label %if.end.34

if.else.31:                                       ; preds = %do.body.25
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8
  %tp_dealloc33 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc33, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  call void %22(%struct._object* %23)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.31, %if.then.30
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  br label %for.inc

for.inc:                                          ; preds = %do.end.35
  %24 = load i64, i64* %i, align 8
  %inc = add i64 %24, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load %struct._object*, %struct._object** %heap, align 8
  %26 = bitcast %struct._object* %25 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %26, i32 0, i32 1
  %27 = load i64, i64* %ob_size, align 8
  store i64 %27, i64* %n, align 8
  %28 = load i64, i64* %n, align 8
  %cmp36 = icmp eq i64 %28, 0
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %for.end
  br label %sortit

if.end.38:                                        ; preds = %for.end
  %29 = load i64, i64* %n, align 8
  %div = sdiv i64 %29, 2
  %sub = sub i64 %div, 1
  store i64 %sub, i64* %i, align 8
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.46, %if.end.38
  %30 = load i64, i64* %i, align 8
  %cmp40 = icmp sge i64 %30, 0
  br i1 %cmp40, label %for.body.41, label %for.end.48

for.body.41:                                      ; preds = %for.cond.39
  %31 = load %struct._object*, %struct._object** %heap, align 8
  %32 = bitcast %struct._object* %31 to %struct.PyListObject*
  %33 = load i64, i64* %i, align 8
  %call42 = call i32 @_siftupmax(%struct.PyListObject* %32, i64 %33)
  %cmp43 = icmp eq i32 %call42, -1
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %for.body.41
  br label %fail

if.end.45:                                        ; preds = %for.body.41
  br label %for.inc.46

for.inc.46:                                       ; preds = %if.end.45
  %34 = load i64, i64* %i, align 8
  %dec47 = add i64 %34, -1
  store i64 %dec47, i64* %i, align 8
  br label %for.cond.39

for.end.48:                                       ; preds = %for.cond.39
  %35 = load %struct._object*, %struct._object** %heap, align 8
  %36 = bitcast %struct._object* %35 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %36, i32 0, i32 1
  %37 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %37, i64 0
  %38 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %38, %struct._object** %los, align 8
  br label %while.body

while.body:                                       ; preds = %for.end.48, %do.end.84, %if.end.104
  %39 = load %struct._object*, %struct._object** %it, align 8
  %call49 = call %struct._object* @PyIter_Next(%struct._object* %39)
  store %struct._object* %call49, %struct._object** %elem, align 8
  %40 = load %struct._object*, %struct._object** %elem, align 8
  %cmp50 = icmp eq %struct._object* %40, null
  br i1 %cmp50, label %if.then.51, label %if.end.56

if.then.51:                                       ; preds = %while.body
  %call52 = call %struct._object* @PyErr_Occurred()
  %tobool53 = icmp ne %struct._object* %call52, null
  br i1 %tobool53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %if.then.51
  br label %fail

if.else.55:                                       ; preds = %if.then.51
  br label %sortit

if.end.56:                                        ; preds = %while.body
  %41 = load %struct._object*, %struct._object** %elem, align 8
  %42 = load %struct._object*, %struct._object** %los, align 8
  %call57 = call i32 @PyObject_RichCompareBool(%struct._object* %41, %struct._object* %42, i32 0)
  store i32 %call57, i32* %cmp, align 4
  %43 = load i32, i32* %cmp, align 4
  %cmp58 = icmp eq i32 %43, -1
  br i1 %cmp58, label %if.then.59, label %if.end.71

if.then.59:                                       ; preds = %if.end.56
  br label %do.body.60

do.body.60:                                       ; preds = %if.then.59
  %44 = load %struct._object*, %struct._object** %elem, align 8
  store %struct._object* %44, %struct._object** %_py_decref_tmp61, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  %ob_refcnt62 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0
  %46 = load i64, i64* %ob_refcnt62, align 8
  %dec63 = add i64 %46, -1
  store i64 %dec63, i64* %ob_refcnt62, align 8
  %cmp64 = icmp ne i64 %dec63, 0
  br i1 %cmp64, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %do.body.60
  br label %if.end.69

if.else.66:                                       ; preds = %do.body.60
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  %ob_type67 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type67, align 8
  %tp_dealloc68 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 4
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc68, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  call void %49(%struct._object* %50)
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.66, %if.then.65
  br label %do.end.70

do.end.70:                                        ; preds = %if.end.69
  br label %fail

if.end.71:                                        ; preds = %if.end.56
  %51 = load i32, i32* %cmp, align 4
  %cmp72 = icmp eq i32 %51, 0
  br i1 %cmp72, label %if.then.73, label %if.end.85

if.then.73:                                       ; preds = %if.end.71
  br label %do.body.74

do.body.74:                                       ; preds = %if.then.73
  %52 = load %struct._object*, %struct._object** %elem, align 8
  store %struct._object* %52, %struct._object** %_py_decref_tmp75, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  %ob_refcnt76 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 0
  %54 = load i64, i64* %ob_refcnt76, align 8
  %dec77 = add i64 %54, -1
  store i64 %dec77, i64* %ob_refcnt76, align 8
  %cmp78 = icmp ne i64 %dec77, 0
  br i1 %cmp78, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %do.body.74
  br label %if.end.83

if.else.80:                                       ; preds = %do.body.74
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  %ob_type81 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type81, align 8
  %tp_dealloc82 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 4
  %57 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc82, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  call void %57(%struct._object* %58)
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.80, %if.then.79
  br label %do.end.84

do.end.84:                                        ; preds = %if.end.83
  br label %while.body

if.end.85:                                        ; preds = %if.end.71
  %59 = load %struct._object*, %struct._object** %heap, align 8
  %60 = bitcast %struct._object* %59 to %struct.PyListObject*
  %ob_item86 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %60, i32 0, i32 1
  %61 = load %struct._object**, %struct._object*** %ob_item86, align 8
  %arrayidx87 = getelementptr %struct._object*, %struct._object** %61, i64 0
  %62 = load %struct._object*, %struct._object** %arrayidx87, align 8
  store %struct._object* %62, %struct._object** %oldelem, align 8
  %63 = load %struct._object*, %struct._object** %elem, align 8
  %64 = load %struct._object*, %struct._object** %heap, align 8
  %65 = bitcast %struct._object* %64 to %struct.PyListObject*
  %ob_item88 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %65, i32 0, i32 1
  %66 = load %struct._object**, %struct._object*** %ob_item88, align 8
  %arrayidx89 = getelementptr %struct._object*, %struct._object** %66, i64 0
  store %struct._object* %63, %struct._object** %arrayidx89, align 8
  br label %do.body.90

do.body.90:                                       ; preds = %if.end.85
  %67 = load %struct._object*, %struct._object** %oldelem, align 8
  store %struct._object* %67, %struct._object** %_py_decref_tmp91, align 8
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp91, align 8
  %ob_refcnt92 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 0
  %69 = load i64, i64* %ob_refcnt92, align 8
  %dec93 = add i64 %69, -1
  store i64 %dec93, i64* %ob_refcnt92, align 8
  %cmp94 = icmp ne i64 %dec93, 0
  br i1 %cmp94, label %if.then.95, label %if.else.96

if.then.95:                                       ; preds = %do.body.90
  br label %if.end.99

if.else.96:                                       ; preds = %do.body.90
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp91, align 8
  %ob_type97 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 1
  %71 = load %struct._typeobject*, %struct._typeobject** %ob_type97, align 8
  %tp_dealloc98 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %71, i32 0, i32 4
  %72 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc98, align 8
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp91, align 8
  call void %72(%struct._object* %73)
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.96, %if.then.95
  br label %do.end.100

do.end.100:                                       ; preds = %if.end.99
  %74 = load %struct._object*, %struct._object** %heap, align 8
  %75 = bitcast %struct._object* %74 to %struct.PyListObject*
  %call101 = call i32 @_siftupmax(%struct.PyListObject* %75, i64 0)
  %cmp102 = icmp eq i32 %call101, -1
  br i1 %cmp102, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %do.end.100
  br label %fail

if.end.104:                                       ; preds = %do.end.100
  %76 = load %struct._object*, %struct._object** %heap, align 8
  %77 = bitcast %struct._object* %76 to %struct.PyListObject*
  %ob_item105 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %77, i32 0, i32 1
  %78 = load %struct._object**, %struct._object*** %ob_item105, align 8
  %arrayidx106 = getelementptr %struct._object*, %struct._object** %78, i64 0
  %79 = load %struct._object*, %struct._object** %arrayidx106, align 8
  store %struct._object* %79, %struct._object** %los, align 8
  br label %while.body

sortit:                                           ; preds = %if.else.55, %if.then.37, %if.else
  %80 = load %struct._object*, %struct._object** %heap, align 8
  %call107 = call i32 @PyList_Sort(%struct._object* %80)
  %cmp108 = icmp eq i32 %call107, -1
  br i1 %cmp108, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %sortit
  br label %fail

if.end.110:                                       ; preds = %sortit
  br label %do.body.111

do.body.111:                                      ; preds = %if.end.110
  %81 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %81, %struct._object** %_py_decref_tmp112, align 8
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp112, align 8
  %ob_refcnt113 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 0
  %83 = load i64, i64* %ob_refcnt113, align 8
  %dec114 = add i64 %83, -1
  store i64 %dec114, i64* %ob_refcnt113, align 8
  %cmp115 = icmp ne i64 %dec114, 0
  br i1 %cmp115, label %if.then.116, label %if.else.117

if.then.116:                                      ; preds = %do.body.111
  br label %if.end.120

if.else.117:                                      ; preds = %do.body.111
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp112, align 8
  %ob_type118 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 1
  %85 = load %struct._typeobject*, %struct._typeobject** %ob_type118, align 8
  %tp_dealloc119 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %85, i32 0, i32 4
  %86 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc119, align 8
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp112, align 8
  call void %86(%struct._object* %87)
  br label %if.end.120

if.end.120:                                       ; preds = %if.else.117, %if.then.116
  br label %do.end.121

do.end.121:                                       ; preds = %if.end.120
  %88 = load %struct._object*, %struct._object** %heap, align 8
  store %struct._object* %88, %struct._object** %retval
  br label %return

fail:                                             ; preds = %if.then.109, %if.then.103, %do.end.70, %if.then.54, %if.then.44, %do.end, %if.then.15, %if.then.7
  br label %do.body.122

do.body.122:                                      ; preds = %fail
  %89 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %89, %struct._object** %_py_decref_tmp123, align 8
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp123, align 8
  %ob_refcnt124 = getelementptr inbounds %struct._object, %struct._object* %90, i32 0, i32 0
  %91 = load i64, i64* %ob_refcnt124, align 8
  %dec125 = add i64 %91, -1
  store i64 %dec125, i64* %ob_refcnt124, align 8
  %cmp126 = icmp ne i64 %dec125, 0
  br i1 %cmp126, label %if.then.127, label %if.else.128

if.then.127:                                      ; preds = %do.body.122
  br label %if.end.131

if.else.128:                                      ; preds = %do.body.122
  %92 = load %struct._object*, %struct._object** %_py_decref_tmp123, align 8
  %ob_type129 = getelementptr inbounds %struct._object, %struct._object* %92, i32 0, i32 1
  %93 = load %struct._typeobject*, %struct._typeobject** %ob_type129, align 8
  %tp_dealloc130 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %93, i32 0, i32 4
  %94 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc130, align 8
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp123, align 8
  call void %94(%struct._object* %95)
  br label %if.end.131

if.end.131:                                       ; preds = %if.else.128, %if.then.127
  br label %do.end.132

do.end.132:                                       ; preds = %if.end.131
  br label %do.body.133

do.body.133:                                      ; preds = %do.end.132
  %96 = load %struct._object*, %struct._object** %heap, align 8
  store %struct._object* %96, %struct._object** %_py_xdecref_tmp, align 8
  %97 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp134 = icmp ne %struct._object* %97, null
  br i1 %cmp134, label %if.then.135, label %if.end.147

if.then.135:                                      ; preds = %do.body.133
  br label %do.body.136

do.body.136:                                      ; preds = %if.then.135
  %98 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %98, %struct._object** %_py_decref_tmp137, align 8
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp137, align 8
  %ob_refcnt138 = getelementptr inbounds %struct._object, %struct._object* %99, i32 0, i32 0
  %100 = load i64, i64* %ob_refcnt138, align 8
  %dec139 = add i64 %100, -1
  store i64 %dec139, i64* %ob_refcnt138, align 8
  %cmp140 = icmp ne i64 %dec139, 0
  br i1 %cmp140, label %if.then.141, label %if.else.142

if.then.141:                                      ; preds = %do.body.136
  br label %if.end.145

if.else.142:                                      ; preds = %do.body.136
  %101 = load %struct._object*, %struct._object** %_py_decref_tmp137, align 8
  %ob_type143 = getelementptr inbounds %struct._object, %struct._object* %101, i32 0, i32 1
  %102 = load %struct._typeobject*, %struct._typeobject** %ob_type143, align 8
  %tp_dealloc144 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %102, i32 0, i32 4
  %103 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc144, align 8
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp137, align 8
  call void %103(%struct._object* %104)
  br label %if.end.145

if.end.145:                                       ; preds = %if.else.142, %if.then.141
  br label %do.end.146

do.end.146:                                       ; preds = %if.end.145
  br label %if.end.147

if.end.147:                                       ; preds = %do.end.146, %do.body.133
  br label %do.end.148

do.end.148:                                       ; preds = %if.end.147
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.148, %do.end.121, %if.then.3, %if.then
  %105 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %105
}

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare i32 @PyList_Append(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @_siftdown(%struct.PyListObject* %heap, i64 %startpos, i64 %pos) #0 {
entry:
  %retval = alloca i32, align 4
  %heap.addr = alloca %struct.PyListObject*, align 8
  %startpos.addr = alloca i64, align 8
  %pos.addr = alloca i64, align 8
  %newitem = alloca %struct._object*, align 8
  %parent = alloca %struct._object*, align 8
  %olditem = alloca %struct._object*, align 8
  %cmp = alloca i32, align 4
  %parentpos = alloca i64, align 8
  %size = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp16 = alloca %struct._object*, align 8
  %_py_decref_tmp37 = alloca %struct._object*, align 8
  %_py_decref_tmp52 = alloca %struct._object*, align 8
  store %struct.PyListObject* %heap, %struct.PyListObject** %heap.addr, align 8
  store i64 %startpos, i64* %startpos.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  %0 = load %struct.PyListObject*, %struct.PyListObject** %heap.addr, align 8
  %1 = bitcast %struct.PyListObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %size, align 8
  %3 = load i64, i64* %pos.addr, align 8
  %4 = load i64, i64* %size, align 8
  %cmp1 = icmp sge i64 %3, %4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i64, i64* %pos.addr, align 8
  %7 = load %struct.PyListObject*, %struct.PyListObject** %heap.addr, align 8
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %7, i32 0, i32 1
  %8 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %8, i64 %6
  %9 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %9, %struct._object** %newitem, align 8
  %10 = load %struct._object*, %struct._object** %newitem, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.50, %if.end
  %12 = load i64, i64* %pos.addr, align 8
  %13 = load i64, i64* %startpos.addr, align 8
  %cmp2 = icmp sgt i64 %12, %13
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i64, i64* %pos.addr, align 8
  %sub = sub i64 %14, 1
  %shr = ashr i64 %sub, 1
  store i64 %shr, i64* %parentpos, align 8
  %15 = load i64, i64* %parentpos, align 8
  %16 = load %struct.PyListObject*, %struct.PyListObject** %heap.addr, align 8
  %ob_item3 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %16, i32 0, i32 1
  %17 = load %struct._object**, %struct._object*** %ob_item3, align 8
  %arrayidx4 = getelementptr %struct._object*, %struct._object** %17, i64 %15
  %18 = load %struct._object*, %struct._object** %arrayidx4, align 8
  store %struct._object* %18, %struct._object** %parent, align 8
  %19 = load %struct._object*, %struct._object** %newitem, align 8
  %20 = load %struct._object*, %struct._object** %parent, align 8
  %call = call i32 @PyObject_RichCompareBool(%struct._object* %19, %struct._object* %20, i32 0)
  store i32 %call, i32* %cmp, align 4
  %21 = load i32, i32* %cmp, align 4
  %cmp5 = icmp eq i32 %21, -1
  br i1 %cmp5, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %while.body
  br label %do.body

do.body:                                          ; preds = %if.then.6
  %22 = load %struct._object*, %struct._object** %newitem, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt7 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt7, align 8
  %dec = add i64 %24, -1
  store i64 %dec, i64* %ob_refcnt7, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body
  br label %if.end.10

if.else:                                          ; preds = %do.body
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %27(%struct._object* %28)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.10
  store i32 -1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %while.body
  %29 = load i64, i64* %size, align 8
  %30 = load %struct.PyListObject*, %struct.PyListObject** %heap.addr, align 8
  %31 = bitcast %struct.PyListObject* %30 to %struct.PyVarObject*
  %ob_size12 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %31, i32 0, i32 1
  %32 = load i64, i64* %ob_size12, align 8
  %cmp13 = icmp ne i64 %29, %32
  br i1 %cmp13, label %if.then.14, label %if.end.26

if.then.14:                                       ; preds = %if.end.11
  br label %do.body.15

do.body.15:                                       ; preds = %if.then.14
  %33 = load %struct._object*, %struct._object** %newitem, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp16, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt17, align 8
  %dec18 = add i64 %35, -1
  store i64 %dec18, i64* %ob_refcnt17, align 8
  %cmp19 = icmp ne i64 %dec18, 0
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.15
  br label %if.end.24

if.else.21:                                       ; preds = %do.body.15
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8
  %tp_dealloc23 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc23, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  call void %38(%struct._object* %39)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.21, %if.then.20
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  %40 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.end.11
  %41 = load i32, i32* %cmp, align 4
  %cmp27 = icmp eq i32 %41, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.26
  br label %while.end

if.end.29:                                        ; preds = %if.end.26
  %42 = load %struct._object*, %struct._object** %parent, align 8
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0
  %43 = load i64, i64* %ob_refcnt30, align 8
  %inc31 = add i64 %43, 1
  store i64 %inc31, i64* %ob_refcnt30, align 8
  %44 = load i64, i64* %pos.addr, align 8
  %45 = load %struct.PyListObject*, %struct.PyListObject** %heap.addr, align 8
  %ob_item32 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %45, i32 0, i32 1
  %46 = load %struct._object**, %struct._object*** %ob_item32, align 8
  %arrayidx33 = getelementptr %struct._object*, %struct._object** %46, i64 %44
  %47 = load %struct._object*, %struct._object** %arrayidx33, align 8
  store %struct._object* %47, %struct._object** %olditem, align 8
  %48 = load %struct._object*, %struct._object** %parent, align 8
  %49 = load i64, i64* %pos.addr, align 8
  %50 = load %struct.PyListObject*, %struct.PyListObject** %heap.addr, align 8
  %ob_item34 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %50, i32 0, i32 1
  %51 = load %struct._object**, %struct._object*** %ob_item34, align 8
  %arrayidx35 = getelementptr %struct._object*, %struct._object** %51, i64 %49
  store %struct._object* %48, %struct._object** %arrayidx35, align 8
  br label %do.body.36

do.body.36:                                       ; preds = %if.end.29
  %52 = load %struct._object*, %struct._object** %olditem, align 8
  store %struct._object* %52, %struct._object** %_py_decref_tmp37, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  %ob_refcnt38 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 0
  %54 = load i64, i64* %ob_refcnt38, align 8
  %dec39 = add i64 %54, -1
  store i64 %dec39, i64* %ob_refcnt38, align 8
  %cmp40 = icmp ne i64 %dec39, 0
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.36
  br label %if.end.45

if.else.42:                                       ; preds = %do.body.36
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8
  %tp_dealloc44 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 4
  %57 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc44, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  call void %57(%struct._object* %58)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.42, %if.then.41
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  %59 = load i64, i64* %parentpos, align 8
  store i64 %59, i64* %pos.addr, align 8
  %60 = load i64, i64* %size, align 8
  %61 = load %struct.PyListObject*, %struct.PyListObject** %heap.addr, align 8
  %62 = bitcast %struct.PyListObject* %61 to %struct.PyVarObject*
  %ob_size47 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %62, i32 0, i32 1
  %63 = load i64, i64* %ob_size47, align 8
  %cmp48 = icmp ne i64 %60, %63
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %do.end.46
  %64 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.50:                                        ; preds = %do.end.46
  br label %while.cond

while.end:                                        ; preds = %if.then.28, %while.cond
  br label %do.body.51

do.body.51:                                       ; preds = %while.end
  %65 = load i64, i64* %pos.addr, align 8
  %66 = load %struct.PyListObject*, %struct.PyListObject** %heap.addr, align 8
  %ob_item53 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %66, i32 0, i32 1
  %67 = load %struct._object**, %struct._object*** %ob_item53, align 8
  %arrayidx54 = getelementptr %struct._object*, %struct._object** %67, i64 %65
  %68 = load %struct._object*, %struct._object** %arrayidx54, align 8
  store %struct._object* %68, %struct._object** %_py_decref_tmp52, align 8
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8
  %ob_refcnt55 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 0
  %70 = load i64, i64* %ob_refcnt55, align 8
  %dec56 = add i64 %70, -1
  store i64 %dec56, i64* %ob_refcnt55, align 8
  %cmp57 = icmp ne i64 %dec56, 0
  br i1 %cmp57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %do.body.51
  br label %if.end.62

if.else.59:                                       ; preds = %do.body.51
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8
  %ob_type60 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 1
  %72 = load %struct._typeobject*, %struct._typeobject** %ob_type60, align 8
  %tp_dealloc61 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %72, i32 0, i32 4
  %73 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc61, align 8
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8
  call void %73(%struct._object* %74)
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.59, %if.then.58
  br label %do.end.63

do.end.63:                                        ; preds = %if.end.62
  %75 = load %struct._object*, %struct._object** %newitem, align 8
  %76 = load i64, i64* %pos.addr, align 8
  %77 = load %struct.PyListObject*, %struct.PyListObject** %heap.addr, align 8
  %ob_item64 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %77, i32 0, i32 1
  %78 = load %struct._object**, %struct._object*** %ob_item64, align 8
  %arrayidx65 = getelementptr %struct._object*, %struct._object** %78, i64 %76
  store %struct._object* %75, %struct._object** %arrayidx65, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.63, %if.then.49, %do.end.25, %do.end, %if.then
  %79 = load i32, i32* %retval
  ret i32 %79
}

declare i32 @PyObject_RichCompareBool(%struct._object*, %struct._object*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @_siftup(%struct.PyListObject* %heap, i64 %pos) #0 {
entry:
  %retval = alloca i32, align 4
  %heap.addr = alloca %struct.PyListObject*, align 8
  %pos.addr = alloca i64, align 8
  %startpos = alloca i64, align 8
  %endpos = alloca i64, align 8
  %childpos = alloca i64, align 8
  %rightpos = alloca i64, align 8
  %limit = alloca i64, align 8
  %cmp = alloca i32, align 4
  %newitem = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %olditem = alloca %struct._object*, align 8
  %size = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp29 = alloca %struct._object*, align 8
  %_py_decref_tmp50 = alloca %struct._object*, align 8
  %_py_decref_tmp66 = alloca %struct._object*, align 8
  store %struct.PyListObject* %heap, %struct.PyListObject** %heap.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  %0 = load %struct.PyListObject*, %struct.PyListObject** %heap.addr, align 8
  %1 = bitcast %struct.PyListObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %size, align 8
  %3 = load i64, i64* %size, align 8
  store i64 %3, i64* %endpos, align 8
  %4 = load i64, i64* %pos.addr, align 8
  store i64 %4, i64* %startpos, align 8
  %5 = load i64, i64* %pos.addr, align 8
  %6 = load i64, i64* %endpos, align 8
  %cmp3 = icmp sge i64 %5, %6
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load i64, i64* %pos.addr, align 8
  %9 = load %struct.PyListObject*, %struct.PyListObject** %heap.addr, align 8
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %9, i32 0, i32 1
  %10 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %10, i64 %8
  %11 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %11, %struct._object** %newitem, align 8
  %12 = load %struct._object*, %struct._object** %newitem, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %14 = load i64, i64* %endpos, align 8
  %div = sdiv i64 %14, 2
  store i64 %div, i64* %limit, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.63, %if.end
  %15 = load i64, i64* %pos.addr, align 8
  %16 = load i64, i64* %limit, align 8
  %cmp4 = icmp slt i64 %15, %16
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load i64, i64* %pos.addr, align 8
  %mul = mul i64 2, %17
  %add = add i64 %mul, 1
  store i64 %add, i64* %childpos, align 8
  %18 = load i64, i64* %childpos, align 8
  %add5 = add i64 %18, 1
  store i64 %add5, i64* %rightpos, align 8
  %19 = load i64, i64* %rightpos, align 8
  %20 = load i64, i64* %endpos, align 8
  %cmp6 = icmp slt i64 %19, %20
  br i1 %cmp6, label %if.then.7, label %if.end.23

if.then.7:                                        ; preds = %while.body
  %21 = load i64, i64* %childpos, align 8
  %22 = load %struct.PyListObject*, %struct.PyListObject** %heap.addr, align 8
  %ob_item8 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %22, i32 0, i32 1
  %23 = load %struct._object**, %struct._object*** %ob_item8, align 8
  %arrayidx9 = getelementptr %struct._object*, %struct._object** %23, i64 %21
  %24 = load %struct._object*, %struct._object** %arrayidx9, align 8
  %25 = load i64, i64* %rightpos, align 8
  %26 = load %struct.PyListObject*, %struct.PyListObject** %heap.addr, align 8
  %ob_item10 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %26, i32 0, i32 1
  %27 = load %struct._object**, %struct._object*** %ob_item10, align 8
  %arrayidx11 = getelementptr %struct._object*, %struct._object** %27, i64 %25
  %28 = load %struct._object*, %struct._object** %arrayidx11, align 8
  %call = call i32 @PyObject_RichCompareBool(%struct._object* %24, %struct._object* %28, i32 0)
  store i32 %call, i32* %cmp, align 4
  %29 = load i32, i32* %cmp, align 4
  %cmp12 = icmp eq i32 %29, -1
  br i1 %cmp12, label %if.then.13, label %if.end.19

if.then.13:                                       ; preds = %if.then.7
  br label %do.body

do.body:                                          ; preds = %if.then.13
  %30 = load %struct._object*, %struct._object** %newitem, align 8
  store %struct._object* %30, %struct._object** %_py_decref_tmp, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0
  %32 = load i64, i64* %ob_refcnt15, align 8
  %dec = add i64 %32, -1
  store i64 %dec, i64* %ob_refcnt15, align 8
  %cmp16 = icmp ne i64 %dec, 0
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %do.body
  br label %if.end.18

if.else:                                          ; preds = %do.body
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %35(%struct._object* %36)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.17
  br label %do.end

do.end:                                           ; preds = %if.end.18
  store i32 -1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.then.7
  %37 = load i32, i32* %cmp, align 4
  %cmp20 = icmp eq i32 %37, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.19
  %38 = load i64, i64* %rightpos, align 8
  store i64 %38, i64* %childpos, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.19
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %while.body
  %39 = load i64, i64* %size, align 8
  %40 = load %struct.PyListObject*, %struct.PyListObject** %heap.addr, align 8
  %41 = bitcast %struct.PyListObject* %40 to %struct.PyVarObject*
  %ob_size24 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %41, i32 0, i32 1
  %42 = load i64, i64* %ob_size24, align 8
  %cmp25 = icmp ne i64 %39, %42
  br i1 %cmp25, label %if.then.26, label %if.end.39

if.then.26:                                       ; preds = %if.end.23
  br label %do.body.27

do.body.27:                                       ; preds = %if.then.26
  %43 = load %struct._object*, %struct._object** %newitem, align 8
  store %struct._object* %43, %struct._object** %_py_decref_tmp29, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0
  %45 = load i64, i64* %ob_refcnt30, align 8
  %dec31 = add i64 %45, -1
  store i64 %dec31, i64* %ob_refcnt30, align 8
  %cmp32 = icmp ne i64 %dec31, 0
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %do.body.27
  br label %if.end.37

if.else.34:                                       ; preds = %do.body.27
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8
  %tp_dealloc36 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc36, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  call void %48(%struct._object* %49)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.34, %if.then.33
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %50 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %50, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.39:                                        ; preds = %if.end.23
  %51 = load i64, i64* %childpos, align 8
  %52 = load %struct.PyListObject*, %struct.PyListObject** %heap.addr, align 8
  %ob_item40 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %52, i32 0, i32 1
  %53 = load %struct._object**, %struct._object*** %ob_item40, align 8
  %arrayidx41 = getelementptr %struct._object*, %struct._object** %53, i64 %51
  %54 = load %struct._object*, %struct._object** %arrayidx41, align 8
  store %struct._object* %54, %struct._object** %tmp, align 8
  %55 = load %struct._object*, %struct._object** %tmp, align 8
  %ob_refcnt42 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0
  %56 = load i64, i64* %ob_refcnt42, align 8
  %inc43 = add i64 %56, 1
  store i64 %inc43, i64* %ob_refcnt42, align 8
  %57 = load i64, i64* %pos.addr, align 8
  %58 = load %struct.PyListObject*, %struct.PyListObject** %heap.addr, align 8
  %ob_item44 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %58, i32 0, i32 1
  %59 = load %struct._object**, %struct._object*** %ob_item44, align 8
  %arrayidx45 = getelementptr %struct._object*, %struct._object** %59, i64 %57
  %60 = load %struct._object*, %struct._object** %arrayidx45, align 8
  store %struct._object* %60, %struct._object** %olditem, align 8
  %61 = load %struct._object*, %struct._object** %tmp, align 8
  %62 = load i64, i64* %pos.addr, align 8
  %63 = load %struct.PyListObject*, %struct.PyListObject** %heap.addr, align 8
  %ob_item46 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %63, i32 0, i32 1
  %64 = load %struct._object**, %struct._object*** %ob_item46, align 8
  %arrayidx47 = getelementptr %struct._object*, %struct._object** %64, i64 %62
  store %struct._object* %61, %struct._object** %arrayidx47, align 8
  br label %do.body.48

do.body.48:                                       ; preds = %if.end.39
  %65 = load %struct._object*, %struct._object** %olditem, align 8
  store %struct._object* %65, %struct._object** %_py_decref_tmp50, align 8
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  %ob_refcnt51 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 0
  %67 = load i64, i64* %ob_refcnt51, align 8
  %dec52 = add i64 %67, -1
  store i64 %dec52, i64* %ob_refcnt51, align 8
  %cmp53 = icmp ne i64 %dec52, 0
  br i1 %cmp53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %do.body.48
  br label %if.end.58

if.else.55:                                       ; preds = %do.body.48
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 1
  %69 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8
  %tp_dealloc57 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %69, i32 0, i32 4
  %70 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc57, align 8
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  call void %70(%struct._object* %71)
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.55, %if.then.54
  br label %do.end.59

do.end.59:                                        ; preds = %if.end.58
  %72 = load i64, i64* %childpos, align 8
  store i64 %72, i64* %pos.addr, align 8
  %73 = load i64, i64* %size, align 8
  %74 = load %struct.PyListObject*, %struct.PyListObject** %heap.addr, align 8
  %75 = bitcast %struct.PyListObject* %74 to %struct.PyVarObject*
  %ob_size60 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %75, i32 0, i32 1
  %76 = load i64, i64* %ob_size60, align 8
  %cmp61 = icmp ne i64 %73, %76
  br i1 %cmp61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %do.end.59
  %77 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %77, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.63:                                        ; preds = %do.end.59
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body.64

do.body.64:                                       ; preds = %while.end
  %78 = load i64, i64* %pos.addr, align 8
  %79 = load %struct.PyListObject*, %struct.PyListObject** %heap.addr, align 8
  %ob_item67 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %79, i32 0, i32 1
  %80 = load %struct._object**, %struct._object*** %ob_item67, align 8
  %arrayidx68 = getelementptr %struct._object*, %struct._object** %80, i64 %78
  %81 = load %struct._object*, %struct._object** %arrayidx68, align 8
  store %struct._object* %81, %struct._object** %_py_decref_tmp66, align 8
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp66, align 8
  %ob_refcnt69 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 0
  %83 = load i64, i64* %ob_refcnt69, align 8
  %dec70 = add i64 %83, -1
  store i64 %dec70, i64* %ob_refcnt69, align 8
  %cmp71 = icmp ne i64 %dec70, 0
  br i1 %cmp71, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %do.body.64
  br label %if.end.76

if.else.73:                                       ; preds = %do.body.64
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp66, align 8
  %ob_type74 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 1
  %85 = load %struct._typeobject*, %struct._typeobject** %ob_type74, align 8
  %tp_dealloc75 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %85, i32 0, i32 4
  %86 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc75, align 8
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp66, align 8
  call void %86(%struct._object* %87)
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.73, %if.then.72
  br label %do.end.77

do.end.77:                                        ; preds = %if.end.76
  %88 = load %struct._object*, %struct._object** %newitem, align 8
  %89 = load i64, i64* %pos.addr, align 8
  %90 = load %struct.PyListObject*, %struct.PyListObject** %heap.addr, align 8
  %ob_item78 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %90, i32 0, i32 1
  %91 = load %struct._object**, %struct._object*** %ob_item78, align 8
  %arrayidx79 = getelementptr %struct._object*, %struct._object** %91, i64 %89
  store %struct._object* %88, %struct._object** %arrayidx79, align 8
  %92 = load %struct.PyListObject*, %struct.PyListObject** %heap.addr, align 8
  %93 = load i64, i64* %startpos, align 8
  %94 = load i64, i64* %pos.addr, align 8
  %call80 = call i32 @_siftdown(%struct.PyListObject* %92, i64 %93, i64 %94)
  store i32 %call80, i32* %retval
  br label %return

return:                                           ; preds = %do.end.77, %if.then.62, %do.end.38, %do.end, %if.then
  %95 = load i32, i32* %retval
  ret i32 %95
}

declare i32 @PyList_SetSlice(%struct._object*, i64, i64, %struct._object*) #1

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

declare %struct._object* @PyObject_GetIter(%struct._object*) #1

declare %struct._object* @PyList_New(i64) #1

declare %struct._object* @PyIter_Next(%struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

declare i32 @PyList_Sort(%struct._object*) #1

declare i32 @PyList_Reverse(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @_siftupmax(%struct.PyListObject* %heap, i64 %pos) #0 {
entry:
  %retval = alloca i32, align 4
  %heap.addr = alloca %struct.PyListObject*, align 8
  %pos.addr = alloca i64, align 8
  %startpos = alloca i64, align 8
  %endpos = alloca i64, align 8
  %childpos = alloca i64, align 8
  %rightpos = alloca i64, align 8
  %limit = alloca i64, align 8
  %cmp = alloca i32, align 4
  %newitem = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp28 = alloca %struct._object*, align 8
  %_py_decref_tmp44 = alloca %struct._object*, align 8
  store %struct.PyListObject* %heap, %struct.PyListObject** %heap.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  %0 = load %struct.PyListObject*, %struct.PyListObject** %heap.addr, align 8
  %1 = bitcast %struct.PyListObject* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %endpos, align 8
  %3 = load i64, i64* %pos.addr, align 8
  store i64 %3, i64* %startpos, align 8
  %4 = load i64, i64* %pos.addr, align 8
  %5 = load i64, i64* %endpos, align 8
  %cmp1 = icmp sge i64 %4, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i64, i64* %pos.addr, align 8
  %8 = load %struct.PyListObject*, %struct.PyListObject** %heap.addr, align 8
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %8, i32 0, i32 1
  %9 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %9, i64 %7
  %10 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %10, %struct._object** %newitem, align 8
  %11 = load %struct._object*, %struct._object** %newitem, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %13 = load i64, i64* %endpos, align 8
  %div = sdiv i64 %13, 2
  store i64 %div, i64* %limit, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end.39, %if.end
  %14 = load i64, i64* %pos.addr, align 8
  %15 = load i64, i64* %limit, align 8
  %cmp2 = icmp slt i64 %14, %15
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load i64, i64* %pos.addr, align 8
  %mul = mul i64 2, %16
  %add = add i64 %mul, 1
  store i64 %add, i64* %childpos, align 8
  %17 = load i64, i64* %childpos, align 8
  %add3 = add i64 %17, 1
  store i64 %add3, i64* %rightpos, align 8
  %18 = load i64, i64* %rightpos, align 8
  %19 = load i64, i64* %endpos, align 8
  %cmp4 = icmp slt i64 %18, %19
  br i1 %cmp4, label %if.then.5, label %if.end.21

if.then.5:                                        ; preds = %while.body
  %20 = load i64, i64* %rightpos, align 8
  %21 = load %struct.PyListObject*, %struct.PyListObject** %heap.addr, align 8
  %ob_item6 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %21, i32 0, i32 1
  %22 = load %struct._object**, %struct._object*** %ob_item6, align 8
  %arrayidx7 = getelementptr %struct._object*, %struct._object** %22, i64 %20
  %23 = load %struct._object*, %struct._object** %arrayidx7, align 8
  %24 = load i64, i64* %childpos, align 8
  %25 = load %struct.PyListObject*, %struct.PyListObject** %heap.addr, align 8
  %ob_item8 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %25, i32 0, i32 1
  %26 = load %struct._object**, %struct._object*** %ob_item8, align 8
  %arrayidx9 = getelementptr %struct._object*, %struct._object** %26, i64 %24
  %27 = load %struct._object*, %struct._object** %arrayidx9, align 8
  %call = call i32 @PyObject_RichCompareBool(%struct._object* %23, %struct._object* %27, i32 0)
  store i32 %call, i32* %cmp, align 4
  %28 = load i32, i32* %cmp, align 4
  %cmp10 = icmp eq i32 %28, -1
  br i1 %cmp10, label %if.then.11, label %if.end.17

if.then.11:                                       ; preds = %if.then.5
  br label %do.body

do.body:                                          ; preds = %if.then.11
  %29 = load %struct._object*, %struct._object** %newitem, align 8
  store %struct._object* %29, %struct._object** %_py_decref_tmp, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt13, align 8
  %dec = add i64 %31, -1
  store i64 %dec, i64* %ob_refcnt13, align 8
  %cmp14 = icmp ne i64 %dec, 0
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %do.body
  br label %if.end.16

if.else:                                          ; preds = %do.body
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %34(%struct._object* %35)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.15
  br label %do.end

do.end:                                           ; preds = %if.end.16
  store i32 -1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.then.5
  %36 = load i32, i32* %cmp, align 4
  %cmp18 = icmp eq i32 %36, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.17
  %37 = load i64, i64* %rightpos, align 8
  store i64 %37, i64* %childpos, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.17
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %while.body
  %38 = load i64, i64* %childpos, align 8
  %39 = load %struct.PyListObject*, %struct.PyListObject** %heap.addr, align 8
  %ob_item22 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %39, i32 0, i32 1
  %40 = load %struct._object**, %struct._object*** %ob_item22, align 8
  %arrayidx23 = getelementptr %struct._object*, %struct._object** %40, i64 %38
  %41 = load %struct._object*, %struct._object** %arrayidx23, align 8
  store %struct._object* %41, %struct._object** %tmp, align 8
  %42 = load %struct._object*, %struct._object** %tmp, align 8
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0
  %43 = load i64, i64* %ob_refcnt24, align 8
  %inc25 = add i64 %43, 1
  store i64 %inc25, i64* %ob_refcnt24, align 8
  br label %do.body.26

do.body.26:                                       ; preds = %if.end.21
  %44 = load i64, i64* %pos.addr, align 8
  %45 = load %struct.PyListObject*, %struct.PyListObject** %heap.addr, align 8
  %ob_item29 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %45, i32 0, i32 1
  %46 = load %struct._object**, %struct._object*** %ob_item29, align 8
  %arrayidx30 = getelementptr %struct._object*, %struct._object** %46, i64 %44
  %47 = load %struct._object*, %struct._object** %arrayidx30, align 8
  store %struct._object* %47, %struct._object** %_py_decref_tmp28, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_refcnt31 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0
  %49 = load i64, i64* %ob_refcnt31, align 8
  %dec32 = add i64 %49, -1
  store i64 %dec32, i64* %ob_refcnt31, align 8
  %cmp33 = icmp ne i64 %dec32, 0
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %do.body.26
  br label %if.end.38

if.else.35:                                       ; preds = %do.body.26
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_type36 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type36, align 8
  %tp_dealloc37 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i32 0, i32 4
  %52 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc37, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  call void %52(%struct._object* %53)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.35, %if.then.34
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %54 = load %struct._object*, %struct._object** %tmp, align 8
  %55 = load i64, i64* %pos.addr, align 8
  %56 = load %struct.PyListObject*, %struct.PyListObject** %heap.addr, align 8
  %ob_item40 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %56, i32 0, i32 1
  %57 = load %struct._object**, %struct._object*** %ob_item40, align 8
  %arrayidx41 = getelementptr %struct._object*, %struct._object** %57, i64 %55
  store %struct._object* %54, %struct._object** %arrayidx41, align 8
  %58 = load i64, i64* %childpos, align 8
  store i64 %58, i64* %pos.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body.42

do.body.42:                                       ; preds = %while.end
  %59 = load i64, i64* %pos.addr, align 8
  %60 = load %struct.PyListObject*, %struct.PyListObject** %heap.addr, align 8
  %ob_item45 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %60, i32 0, i32 1
  %61 = load %struct._object**, %struct._object*** %ob_item45, align 8
  %arrayidx46 = getelementptr %struct._object*, %struct._object** %61, i64 %59
  %62 = load %struct._object*, %struct._object** %arrayidx46, align 8
  store %struct._object* %62, %struct._object** %_py_decref_tmp44, align 8
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  %ob_refcnt47 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 0
  %64 = load i64, i64* %ob_refcnt47, align 8
  %dec48 = add i64 %64, -1
  store i64 %dec48, i64* %ob_refcnt47, align 8
  %cmp49 = icmp ne i64 %dec48, 0
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %do.body.42
  br label %if.end.54

if.else.51:                                       ; preds = %do.body.42
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  %ob_type52 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 1
  %66 = load %struct._typeobject*, %struct._typeobject** %ob_type52, align 8
  %tp_dealloc53 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %66, i32 0, i32 4
  %67 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc53, align 8
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  call void %67(%struct._object* %68)
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.51, %if.then.50
  br label %do.end.55

do.end.55:                                        ; preds = %if.end.54
  %69 = load %struct._object*, %struct._object** %newitem, align 8
  %70 = load i64, i64* %pos.addr, align 8
  %71 = load %struct.PyListObject*, %struct.PyListObject** %heap.addr, align 8
  %ob_item56 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %71, i32 0, i32 1
  %72 = load %struct._object**, %struct._object*** %ob_item56, align 8
  %arrayidx57 = getelementptr %struct._object*, %struct._object** %72, i64 %70
  store %struct._object* %69, %struct._object** %arrayidx57, align 8
  %73 = load %struct.PyListObject*, %struct.PyListObject** %heap.addr, align 8
  %74 = load i64, i64* %startpos, align 8
  %75 = load i64, i64* %pos.addr, align 8
  %call58 = call i32 @_siftdownmax(%struct.PyListObject* %73, i64 %74, i64 %75)
  store i32 %call58, i32* %retval
  br label %return

return:                                           ; preds = %do.end.55, %do.end, %if.then
  %76 = load i32, i32* %retval
  ret i32 %76
}

; Function Attrs: nounwind uwtable
define internal i32 @_siftdownmax(%struct.PyListObject* %heap, i64 %startpos, i64 %pos) #0 {
entry:
  %retval = alloca i32, align 4
  %heap.addr = alloca %struct.PyListObject*, align 8
  %startpos.addr = alloca i64, align 8
  %pos.addr = alloca i64, align 8
  %newitem = alloca %struct._object*, align 8
  %parent = alloca %struct._object*, align 8
  %cmp = alloca i32, align 4
  %parentpos = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp18 = alloca %struct._object*, align 8
  %_py_decref_tmp33 = alloca %struct._object*, align 8
  store %struct.PyListObject* %heap, %struct.PyListObject** %heap.addr, align 8
  store i64 %startpos, i64* %startpos.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  %0 = load i64, i64* %pos.addr, align 8
  %1 = load %struct.PyListObject*, %struct.PyListObject** %heap.addr, align 8
  %2 = bitcast %struct.PyListObject* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  %cmp1 = icmp sge i64 %0, %3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %pos.addr, align 8
  %6 = load %struct.PyListObject*, %struct.PyListObject** %heap.addr, align 8
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %6, i32 0, i32 1
  %7 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %7, i64 %5
  %8 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %8, %struct._object** %newitem, align 8
  %9 = load %struct._object*, %struct._object** %newitem, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end.29, %if.end
  %11 = load i64, i64* %pos.addr, align 8
  %12 = load i64, i64* %startpos.addr, align 8
  %cmp2 = icmp sgt i64 %11, %12
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load i64, i64* %pos.addr, align 8
  %sub = sub i64 %13, 1
  %shr = ashr i64 %sub, 1
  store i64 %shr, i64* %parentpos, align 8
  %14 = load i64, i64* %parentpos, align 8
  %15 = load %struct.PyListObject*, %struct.PyListObject** %heap.addr, align 8
  %ob_item3 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %15, i32 0, i32 1
  %16 = load %struct._object**, %struct._object*** %ob_item3, align 8
  %arrayidx4 = getelementptr %struct._object*, %struct._object** %16, i64 %14
  %17 = load %struct._object*, %struct._object** %arrayidx4, align 8
  store %struct._object* %17, %struct._object** %parent, align 8
  %18 = load %struct._object*, %struct._object** %parent, align 8
  %19 = load %struct._object*, %struct._object** %newitem, align 8
  %call = call i32 @PyObject_RichCompareBool(%struct._object* %18, %struct._object* %19, i32 0)
  store i32 %call, i32* %cmp, align 4
  %20 = load i32, i32* %cmp, align 4
  %cmp5 = icmp eq i32 %20, -1
  br i1 %cmp5, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %while.body
  br label %do.body

do.body:                                          ; preds = %if.then.6
  %21 = load %struct._object*, %struct._object** %newitem, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt7 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt7, align 8
  %dec = add i64 %23, -1
  store i64 %dec, i64* %ob_refcnt7, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body
  br label %if.end.10

if.else:                                          ; preds = %do.body
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %26(%struct._object* %27)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.10
  store i32 -1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %while.body
  %28 = load i32, i32* %cmp, align 4
  %cmp12 = icmp eq i32 %28, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  br label %while.end

if.end.14:                                        ; preds = %if.end.11
  %29 = load %struct._object*, %struct._object** %parent, align 8
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt15, align 8
  %inc16 = add i64 %30, 1
  store i64 %inc16, i64* %ob_refcnt15, align 8
  br label %do.body.17

do.body.17:                                       ; preds = %if.end.14
  %31 = load i64, i64* %pos.addr, align 8
  %32 = load %struct.PyListObject*, %struct.PyListObject** %heap.addr, align 8
  %ob_item19 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %32, i32 0, i32 1
  %33 = load %struct._object**, %struct._object*** %ob_item19, align 8
  %arrayidx20 = getelementptr %struct._object*, %struct._object** %33, i64 %31
  %34 = load %struct._object*, %struct._object** %arrayidx20, align 8
  store %struct._object* %34, %struct._object** %_py_decref_tmp18, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0
  %36 = load i64, i64* %ob_refcnt21, align 8
  %dec22 = add i64 %36, -1
  store i64 %dec22, i64* %ob_refcnt21, align 8
  %cmp23 = icmp ne i64 %dec22, 0
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %do.body.17
  br label %if.end.28

if.else.25:                                       ; preds = %do.body.17
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %tp_dealloc27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  call void %39(%struct._object* %40)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.25, %if.then.24
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  %41 = load %struct._object*, %struct._object** %parent, align 8
  %42 = load i64, i64* %pos.addr, align 8
  %43 = load %struct.PyListObject*, %struct.PyListObject** %heap.addr, align 8
  %ob_item30 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %43, i32 0, i32 1
  %44 = load %struct._object**, %struct._object*** %ob_item30, align 8
  %arrayidx31 = getelementptr %struct._object*, %struct._object** %44, i64 %42
  store %struct._object* %41, %struct._object** %arrayidx31, align 8
  %45 = load i64, i64* %parentpos, align 8
  store i64 %45, i64* %pos.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.13, %while.cond
  br label %do.body.32

do.body.32:                                       ; preds = %while.end
  %46 = load i64, i64* %pos.addr, align 8
  %47 = load %struct.PyListObject*, %struct.PyListObject** %heap.addr, align 8
  %ob_item34 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %47, i32 0, i32 1
  %48 = load %struct._object**, %struct._object*** %ob_item34, align 8
  %arrayidx35 = getelementptr %struct._object*, %struct._object** %48, i64 %46
  %49 = load %struct._object*, %struct._object** %arrayidx35, align 8
  store %struct._object* %49, %struct._object** %_py_decref_tmp33, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0
  %51 = load i64, i64* %ob_refcnt36, align 8
  %dec37 = add i64 %51, -1
  store i64 %dec37, i64* %ob_refcnt36, align 8
  %cmp38 = icmp ne i64 %dec37, 0
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %do.body.32
  br label %if.end.43

if.else.40:                                       ; preds = %do.body.32
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i32 0, i32 4
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  call void %54(%struct._object* %55)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.then.39
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %56 = load %struct._object*, %struct._object** %newitem, align 8
  %57 = load i64, i64* %pos.addr, align 8
  %58 = load %struct.PyListObject*, %struct.PyListObject** %heap.addr, align 8
  %ob_item45 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %58, i32 0, i32 1
  %59 = load %struct._object**, %struct._object*** %ob_item45, align 8
  %arrayidx46 = getelementptr %struct._object*, %struct._object** %59, i64 %57
  store %struct._object* %56, %struct._object** %arrayidx46, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.44, %do.end, %if.then
  %60 = load i32, i32* %retval
  ret i32 %60
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
