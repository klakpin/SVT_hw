; ModuleID = 'qqq.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"product == 0\00", align 1
@.str1 = private unnamed_addr constant [6 x i8] c"qqq.c\00", align 1
@__PRETTY_FUNCTION__.check_square = private unnamed_addr constant [30 x i8] c"void check_square(int, int *)\00", align 1
@.str2 = private unnamed_addr constant [16 x i8] c"n == target_sum\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str4 = private unnamed_addr constant [12 x i8] c"klee_choose\00", align 1
@.str15 = private unnamed_addr constant [60 x i8] c"/home/klee/klee_src/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str12 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str26 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1
@.str37 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1
@.str14 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1
@.str25 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1
@.str6 = private unnamed_addr constant [51 x i8] c"/home/klee/klee_src/runtime/Intrinsic/klee_range.c\00", align 1
@.str17 = private unnamed_addr constant [14 x i8] c"invalid range\00", align 1
@.str28 = private unnamed_addr constant [5 x i8] c"user\00", align 1

; Function Attrs: nounwind uwtable
define void @check_square(i32 %order, i32* %a) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %max = alloca i32, align 4
  %target_sum = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %product = alloca i32, align 4
  store i32 %order, i32* %1, align 4
  store i32* %a, i32** %2, align 8
  %3 = load i32* %1, align 4, !dbg !135
  %4 = load i32* %1, align 4, !dbg !135
  %5 = mul nsw i32 %3, %4, !dbg !135
  store i32 %5, i32* %max, align 4, !dbg !135
  %6 = load i32* %1, align 4, !dbg !136
  %7 = load i32* %1, align 4, !dbg !136
  %8 = load i32* %1, align 4, !dbg !136
  %9 = mul nsw i32 %7, %8, !dbg !136
  %10 = add nsw i32 %9, 1, !dbg !136
  %11 = mul nsw i32 %6, %10, !dbg !136
  %int_cast_to_i64 = zext i32 2 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !136
  %12 = sdiv i32 %11, 2, !dbg !136
  store i32 %12, i32* %target_sum, align 4, !dbg !136
  store i32 1, i32* %n, align 4, !dbg !137
  br label %13, !dbg !137

; <label>:13                                      ; preds = %39, %0
  %14 = load i32* %n, align 4, !dbg !137
  %15 = load i32* %max, align 4, !dbg !137
  %16 = icmp sle i32 %14, %15, !dbg !137
  br i1 %16, label %17, label %42, !dbg !137

; <label>:17                                      ; preds = %13
  store i32 1, i32* %product, align 4, !dbg !139
  store i32 0, i32* %i, align 4, !dbg !141
  br label %18, !dbg !141

; <label>:18                                      ; preds = %22, %17
  %19 = load i32* %i, align 4, !dbg !141
  %20 = load i32* %max, align 4, !dbg !141
  %21 = icmp slt i32 %19, %20, !dbg !141
  br i1 %21, label %22, label %35, !dbg !141

; <label>:22                                      ; preds = %18
  %23 = load i32* %i, align 4, !dbg !143
  %24 = sext i32 %23 to i64, !dbg !143
  %25 = load i32** %2, align 8, !dbg !143
  %26 = getelementptr inbounds i32* %25, i64 %24, !dbg !143
  %27 = load i32* %26, align 4, !dbg !143
  %28 = load i32* %n, align 4, !dbg !143
  %29 = icmp ne i32 %27, %28, !dbg !143
  %30 = zext i1 %29 to i32, !dbg !143
  %31 = load i32* %product, align 4, !dbg !143
  %32 = and i32 %31, %30, !dbg !143
  store i32 %32, i32* %product, align 4, !dbg !143
  %33 = load i32* %i, align 4, !dbg !141
  %34 = add nsw i32 %33, 1, !dbg !141
  store i32 %34, i32* %i, align 4, !dbg !141
  br label %18, !dbg !141

; <label>:35                                      ; preds = %18
  %36 = load i32* %product, align 4, !dbg !145
  %37 = icmp eq i32 %36, 0, !dbg !145
  br i1 %37, label %39, label %38, !dbg !145

; <label>:38                                      ; preds = %35
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0), i32 21, i8* getelementptr inbounds ([30 x i8]* @__PRETTY_FUNCTION__.check_square, i32 0, i32 0)) #7, !dbg
  unreachable, !dbg !145

; <label>:39                                      ; preds = %35
  %40 = load i32* %n, align 4, !dbg !137
  %41 = add nsw i32 %40, 1, !dbg !137
  store i32 %41, i32* %n, align 4, !dbg !137
  br label %13, !dbg !137

; <label>:42                                      ; preds = %13
  store i32 0, i32* %i, align 4, !dbg !146
  br label %43, !dbg !146

; <label>:43                                      ; preds = %71, %42
  %44 = load i32* %i, align 4, !dbg !146
  %45 = load i32* %1, align 4, !dbg !146
  %46 = icmp slt i32 %44, %45, !dbg !146
  br i1 %46, label %47, label %74, !dbg !146

; <label>:47                                      ; preds = %43
  store i32 0, i32* %n, align 4, !dbg !148
  store i32 0, i32* %j, align 4, !dbg !150
  br label %48, !dbg !150

; <label>:48                                      ; preds = %52, %47
  %49 = load i32* %j, align 4, !dbg !150
  %50 = load i32* %1, align 4, !dbg !150
  %51 = icmp slt i32 %49, %50, !dbg !150
  br i1 %51, label %52, label %66, !dbg !150

; <label>:52                                      ; preds = %48
  %53 = load i32* %i, align 4, !dbg !152
  %54 = load i32* %1, align 4, !dbg !152
  %55 = mul nsw i32 %53, %54, !dbg !152
  %56 = load i32* %j, align 4, !dbg !152
  %57 = add nsw i32 %55, %56, !dbg !152
  %58 = sext i32 %57 to i64, !dbg !152
  %59 = load i32** %2, align 8, !dbg !152
  %60 = getelementptr inbounds i32* %59, i64 %58, !dbg !152
  %61 = load i32* %60, align 4, !dbg !152
  %62 = load i32* %n, align 4, !dbg !152
  %63 = add nsw i32 %62, %61, !dbg !152
  store i32 %63, i32* %n, align 4, !dbg !152
  %64 = load i32* %j, align 4, !dbg !150
  %65 = add nsw i32 %64, 1, !dbg !150
  store i32 %65, i32* %j, align 4, !dbg !150
  br label %48, !dbg !150

; <label>:66                                      ; preds = %48
  %67 = load i32* %n, align 4, !dbg !154
  %68 = load i32* %target_sum, align 4, !dbg !154
  %69 = icmp eq i32 %67, %68, !dbg !154
  br i1 %69, label %71, label %70, !dbg !154

; <label>:70                                      ; preds = %66
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0), i32 33, i8* getelementptr inbounds ([30 x i8]* @__PRETTY_FUNCTION__.check_square, i32 0, i32 0)) #7, !db
  unreachable, !dbg !154

; <label>:71                                      ; preds = %66
  %72 = load i32* %i, align 4, !dbg !146
  %73 = add nsw i32 %72, 1, !dbg !146
  store i32 %73, i32* %i, align 4, !dbg !146
  br label %43, !dbg !146

; <label>:74                                      ; preds = %43
  store i32 0, i32* %i, align 4, !dbg !155
  br label %75, !dbg !155

; <label>:75                                      ; preds = %103, %74
  %76 = load i32* %i, align 4, !dbg !155
  %77 = load i32* %1, align 4, !dbg !155
  %78 = icmp slt i32 %76, %77, !dbg !155
  store i32 0, i32* %n, align 4, !dbg !157
  br i1 %78, label %79, label %106, !dbg !155

; <label>:79                                      ; preds = %75
  store i32 0, i32* %j, align 4, !dbg !159
  br label %80, !dbg !159

; <label>:80                                      ; preds = %84, %79
  %81 = load i32* %j, align 4, !dbg !159
  %82 = load i32* %1, align 4, !dbg !159
  %83 = icmp slt i32 %81, %82, !dbg !159
  br i1 %83, label %84, label %98, !dbg !159

; <label>:84                                      ; preds = %80
  %85 = load i32* %i, align 4, !dbg !161
  %86 = load i32* %j, align 4, !dbg !161
  %87 = load i32* %1, align 4, !dbg !161
  %88 = mul nsw i32 %86, %87, !dbg !161
  %89 = add nsw i32 %85, %88, !dbg !161
  %90 = sext i32 %89 to i64, !dbg !161
  %91 = load i32** %2, align 8, !dbg !161
  %92 = getelementptr inbounds i32* %91, i64 %90, !dbg !161
  %93 = load i32* %92, align 4, !dbg !161
  %94 = load i32* %n, align 4, !dbg !161
  %95 = add nsw i32 %94, %93, !dbg !161
  store i32 %95, i32* %n, align 4, !dbg !161
  %96 = load i32* %j, align 4, !dbg !159
  %97 = add nsw i32 %96, 1, !dbg !159
  store i32 %97, i32* %j, align 4, !dbg !159
  br label %80, !dbg !159

; <label>:98                                      ; preds = %80
  %99 = load i32* %n, align 4, !dbg !163
  %100 = load i32* %target_sum, align 4, !dbg !163
  %101 = icmp eq i32 %99, %100, !dbg !163
  br i1 %101, label %103, label %102, !dbg !163

; <label>:102                                     ; preds = %98
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0), i32 42, i8* getelementptr inbounds ([30 x i8]* @__PRETTY_FUNCTION__.check_square, i32 0, i32 0)) #7, !db
  unreachable, !dbg !163

; <label>:103                                     ; preds = %98
  %104 = load i32* %i, align 4, !dbg !155
  %105 = add nsw i32 %104, 1, !dbg !155
  store i32 %105, i32* %i, align 4, !dbg !155
  br label %75, !dbg !155

; <label>:106                                     ; preds = %75
  store i32 0, i32* %i, align 4, !dbg !164
  br label %107, !dbg !164

; <label>:107                                     ; preds = %111, %106
  %108 = load i32* %i, align 4, !dbg !164
  %109 = load i32* %1, align 4, !dbg !164
  %110 = icmp slt i32 %108, %109, !dbg !164
  br i1 %110, label %111, label %125, !dbg !164

; <label>:111                                     ; preds = %107
  %112 = load i32* %i, align 4, !dbg !166
  %113 = load i32* %i, align 4, !dbg !166
  %114 = load i32* %1, align 4, !dbg !166
  %115 = mul nsw i32 %113, %114, !dbg !166
  %116 = add nsw i32 %112, %115, !dbg !166
  %117 = sext i32 %116 to i64, !dbg !166
  %118 = load i32** %2, align 8, !dbg !166
  %119 = getelementptr inbounds i32* %118, i64 %117, !dbg !166
  %120 = load i32* %119, align 4, !dbg !166
  %121 = load i32* %n, align 4, !dbg !166
  %122 = add nsw i32 %121, %120, !dbg !166
  store i32 %122, i32* %n, align 4, !dbg !166
  %123 = load i32* %i, align 4, !dbg !164
  %124 = add nsw i32 %123, 1, !dbg !164
  store i32 %124, i32* %i, align 4, !dbg !164
  br label %107, !dbg !164

; <label>:125                                     ; preds = %107
  %126 = load i32* %n, align 4, !dbg !168
  %127 = load i32* %target_sum, align 4, !dbg !168
  %128 = icmp eq i32 %126, %127, !dbg !168
  br i1 %128, label %130, label %129, !dbg !168

; <label>:129                                     ; preds = %125
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0), i32 51, i8* getelementptr inbounds ([30 x i8]* @__PRETTY_FUNCTION__.check_square, i32 0, i32 0)) #7, !db
  unreachable, !dbg !168

; <label>:130                                     ; preds = %125
  store i32 0, i32* %n, align 4, !dbg !169
  store i32 0, i32* %i, align 4, !dbg !170
  br label %131, !dbg !170

; <label>:131                                     ; preds = %135, %130
  %132 = load i32* %i, align 4, !dbg !170
  %133 = load i32* %1, align 4, !dbg !170
  %134 = icmp slt i32 %132, %133, !dbg !170
  br i1 %134, label %135, label %152, !dbg !170

; <label>:135                                     ; preds = %131
  %136 = load i32* %1, align 4, !dbg !172
  %137 = load i32* %i, align 4, !dbg !172
  %138 = sub nsw i32 %136, %137, !dbg !172
  %139 = sub nsw i32 %138, 1, !dbg !172
  %140 = load i32* %i, align 4, !dbg !172
  %141 = load i32* %1, align 4, !dbg !172
  %142 = mul nsw i32 %140, %141, !dbg !172
  %143 = add nsw i32 %139, %142, !dbg !172
  %144 = sext i32 %143 to i64, !dbg !172
  %145 = load i32** %2, align 8, !dbg !172
  %146 = getelementptr inbounds i32* %145, i64 %144, !dbg !172
  %147 = load i32* %146, align 4, !dbg !172
  %148 = load i32* %n, align 4, !dbg !172
  %149 = add nsw i32 %148, %147, !dbg !172
  store i32 %149, i32* %n, align 4, !dbg !172
  %150 = load i32* %i, align 4, !dbg !170
  %151 = add nsw i32 %150, 1, !dbg !170
  store i32 %151, i32* %i, align 4, !dbg !170
  br label %131, !dbg !170

; <label>:152                                     ; preds = %131
  %153 = load i32* %n, align 4, !dbg !174
  %154 = load i32* %target_sum, align 4, !dbg !174
  %155 = icmp eq i32 %153, %154, !dbg !174
  br i1 %155, label %157, label %156, !dbg !174

; <label>:156                                     ; preds = %152
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0), i32 57, i8* getelementptr inbounds ([30 x i8]* @__PRETTY_FUNCTION__.check_square, i32 0, i32 0)) #7, !db
  unreachable, !dbg !174

; <label>:157                                     ; preds = %152
  ret void, !dbg !175
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %order = alloca i32, align 4
  %a = alloca [9 x i32], align 16
  store i32 0, i32* %1
  store i32 3, i32* %order, align 4, !dbg !176
  %2 = getelementptr inbounds [9 x i32]* %a, i32 0, i32 0, !dbg !177
  %3 = call i32 (i32*, i64, i8*, ...)* bitcast (i32 (...)* @klee_make_symbolic to i32 (i32*, i64, i8*, ...)*)(i32* %2, i64 36, i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0)), !dbg !177
  %4 = load i32* %order, align 4, !dbg !178
  %5 = getelementptr inbounds [9 x i32]* %a, i32 0, i32 0, !dbg !178
  call void @check_square(i32 %4, i32* %5), !dbg !178
  ret i32 0, !dbg !179
}

declare i32 @klee_make_symbolic(...) #3

; Function Attrs: nounwind uwtable
define i64 @klee_choose(i64 %n) #4 {
  %x = alloca i64, align 8
  %1 = bitcast i64* %x to i8*, !dbg !180
  call void bitcast (i32 (...)* @klee_make_symbolic to void (i8*, i64, i8*)*)(i8* %1, i64 8, i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0)) #8, !dbg !180
  %2 = load i64* %x, align 8, !dbg !181, !tbaa !183
  %3 = icmp ult i64 %2, %n, !dbg !181
  br i1 %3, label %5, label %4, !dbg !181

; <label>:4                                       ; preds = %0
  call void @klee_silent_exit(i32 0) #9, !dbg !187
  unreachable, !dbg !187

; <label>:5                                       ; preds = %0
  ret i64 %2, !dbg !188
}

; Function Attrs: noreturn
declare void @klee_silent_exit(i32) #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind uwtable
define void @klee_div_zero_check(i64 %z) #4 {
  %1 = icmp eq i64 %z, 0, !dbg !189
  br i1 %1, label %2, label %3, !dbg !189

; <label>:2                                       ; preds = %0
  tail call void @klee_report_error(i8* getelementptr inbounds ([60 x i8]* @.str15, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str26, i64 0, i64 0)) #9, !dbg !191
  unreachable, !dbg !191

; <label>:3                                       ; preds = %0
  ret void, !dbg !192
}

; Function Attrs: noreturn
declare void @klee_report_error(i8*, i32, i8*, i8*) #5

; Function Attrs: nounwind uwtable
define i32 @klee_int(i8* %name) #4 {
  %x = alloca i32, align 4
  %1 = bitcast i32* %x to i8*, !dbg !193
  call void bitcast (i32 (...)* @klee_make_symbolic to void (i8*, i64, i8*)*)(i8* %1, i64 4, i8* %name) #8, !dbg !193
  %2 = load i32* %x, align 4, !dbg !194, !tbaa !195
  ret i32 %2, !dbg !194
}

; Function Attrs: nounwind uwtable
define void @klee_overshift_check(i64 %bitWidth, i64 %shift) #4 {
  %1 = icmp ult i64 %shift, %bitWidth, !dbg !197
  br i1 %1, label %3, label %2, !dbg !197

; <label>:2                                       ; preds = %0
  tail call void @klee_report_error(i8* getelementptr inbounds ([8 x i8]* @.str37, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str25, i64 0, i64 0)) #9, !dbg !199
  unreachable, !dbg !199

; <label>:3                                       ; preds = %0
  ret void, !dbg !201
}

; Function Attrs: nounwind uwtable
define i32 @klee_range(i32 %start, i32 %end, i8* %name) #4 {
  %x = alloca i32, align 4
  %1 = icmp slt i32 %start, %end, !dbg !202
  br i1 %1, label %3, label %2, !dbg !202

; <label>:2                                       ; preds = %0
  call void @klee_report_error(i8* getelementptr inbounds ([51 x i8]* @.str6, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([14 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0)) #9, !dbg !204
  unreachable, !dbg !204

; <label>:3                                       ; preds = %0
  %4 = add nsw i32 %start, 1, !dbg !205
  %5 = icmp eq i32 %4, %end, !dbg !205
  br i1 %5, label %21, label %6, !dbg !205

; <label>:6                                       ; preds = %3
  %7 = bitcast i32* %x to i8*, !dbg !207
  call void bitcast (i32 (...)* @klee_make_symbolic to void (i8*, i64, i8*)*)(i8* %7, i64 4, i8* %name) #8, !dbg !207
  %8 = icmp eq i32 %start, 0, !dbg !209
  %9 = load i32* %x, align 4, !dbg !211, !tbaa !195
  br i1 %8, label %10, label %13, !dbg !209

; <label>:10                                      ; preds = %6
  %11 = icmp ult i32 %9, %end, !dbg !211
  %12 = zext i1 %11 to i64, !dbg !211
  call void @klee_assume(i64 %12) #8, !dbg !211
  br label %19, !dbg !213

; <label>:13                                      ; preds = %6
  %14 = icmp sge i32 %9, %start, !dbg !214
  %15 = zext i1 %14 to i64, !dbg !214
  call void @klee_assume(i64 %15) #8, !dbg !214
  %16 = load i32* %x, align 4, !dbg !216, !tbaa !195
  %17 = icmp slt i32 %16, %end, !dbg !216
  %18 = zext i1 %17 to i64, !dbg !216
  call void @klee_assume(i64 %18) #8, !dbg !216
  br label %19

; <label>:19                                      ; preds = %13, %10
  %20 = load i32* %x, align 4, !dbg !217, !tbaa !195
  br label %21, !dbg !217

; <label>:21                                      ; preds = %19, %3
  %.0 = phi i32 [ %20, %19 ], [ %start, %3 ]
  ret i32 %.0, !dbg !218
}

declare void @klee_assume(i64) #6

; Function Attrs: nounwind uwtable
define weak i8* @memcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #4 {
  %1 = icmp eq i64 %len, 0, !dbg !219
  br i1 %1, label %._crit_edge, label %.lr.ph.preheader, !dbg !219

.lr.ph.preheader:                                 ; preds = %0
  %n.vec = and i64 %len, -32
  %cmp.zero = icmp eq i64 %n.vec, 0
  %2 = add i64 %len, -1
  br i1 %cmp.zero, label %middle.block, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep4 = getelementptr i8* %srcaddr, i64 %2
  %scevgep = getelementptr i8* %destaddr, i64 %2
  %bound1 = icmp uge i8* %scevgep, %srcaddr
  %bound0 = icmp uge i8* %scevgep4, %destaddr
  %memcheck.conflict = and i1 %bound0, %bound1
  %ptr.ind.end = getelementptr i8* %srcaddr, i64 %n.vec
  %ptr.ind.end6 = getelementptr i8* %destaddr, i64 %n.vec
  %rev.ind.end = sub i64 %len, %n.vec
  br i1 %memcheck.conflict, label %middle.block, label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.memcheck
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ]
  %next.gep = getelementptr i8* %srcaddr, i64 %index
  %next.gep103 = getelementptr i8* %destaddr, i64 %index
  %3 = bitcast i8* %next.gep to <16 x i8>*, !dbg !220
  %wide.load = load <16 x i8>* %3, align 1, !dbg !220
  %next.gep.sum279 = or i64 %index, 16, !dbg !220
  %4 = getelementptr i8* %srcaddr, i64 %next.gep.sum279, !dbg !220
  %5 = bitcast i8* %4 to <16 x i8>*, !dbg !220
  %wide.load200 = load <16 x i8>* %5, align 1, !dbg !220
  %6 = bitcast i8* %next.gep103 to <16 x i8>*, !dbg !220
  store <16 x i8> %wide.load, <16 x i8>* %6, align 1, !dbg !220
  %next.gep103.sum296 = or i64 %index, 16, !dbg !220
  %7 = getelementptr i8* %destaddr, i64 %next.gep103.sum296, !dbg !220
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !220
  store <16 x i8> %wide.load200, <16 x i8>* %8, align 1, !dbg !220
  %index.next = add i64 %index, 32
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !221

middle.block:                                     ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %resume.val = phi i8* [ %srcaddr, %.lr.ph.preheader ], [ %srcaddr, %vector.memcheck ], [ %ptr.ind.end, %vector.body ]
  %resume.val5 = phi i8* [ %destaddr, %.lr.ph.preheader ], [ %destaddr, %vector.memcheck ], [ %ptr.ind.end6, %vector.body ]
  %resume.val7 = phi i64 [ %len, %.lr.ph.preheader ], [ %len, %vector.memcheck ], [ %rev.ind.end, %vector.body ]
  %new.indc.resume.val = phi i64 [ 0, %.lr.ph.preheader ], [ 0, %vector.memcheck ], [ %n.vec, %vector.body ]
  %cmp.n = icmp eq i64 %new.indc.resume.val, %len
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %middle.block
  %src.03 = phi i8* [ %11, %.lr.ph ], [ %resume.val, %middle.block ]
  %dest.02 = phi i8* [ %13, %.lr.ph ], [ %resume.val5, %middle.block ]
  %.01 = phi i64 [ %10, %.lr.ph ], [ %resume.val7, %middle.block ]
  %10 = add i64 %.01, -1, !dbg !219
  %11 = getelementptr inbounds i8* %src.03, i64 1, !dbg !220
  %12 = load i8* %src.03, align 1, !dbg !220, !tbaa !224
  %13 = getelementptr inbounds i8* %dest.02, i64 1, !dbg !220
  store i8 %12, i8* %dest.02, align 1, !dbg !220, !tbaa !224
  %14 = icmp eq i64 %10, 0, !dbg !219
  br i1 %14, label %._crit_edge, label %.lr.ph, !dbg !219, !llvm.loop !225

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %0
  ret i8* %destaddr, !dbg !226
}

; Function Attrs: nounwind uwtable
define weak i8* @memmove(i8* %dst, i8* %src, i64 %count) #4 {
  %1 = icmp eq i8* %src, %dst, !dbg !227
  br i1 %1, label %.loopexit, label %2, !dbg !227

; <label>:2                                       ; preds = %0
  %3 = icmp ugt i8* %src, %dst, !dbg !229
  br i1 %3, label %.preheader, label %18, !dbg !229

.preheader:                                       ; preds = %2
  %4 = icmp eq i64 %count, 0, !dbg !231
  br i1 %4, label %.loopexit, label %.lr.ph.preheader, !dbg !231

.lr.ph.preheader:                                 ; preds = %.preheader
  %n.vec = and i64 %count, -32
  %cmp.zero = icmp eq i64 %n.vec, 0
  %5 = add i64 %count, -1
  br i1 %cmp.zero, label %middle.block, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep11 = getelementptr i8* %src, i64 %5
  %scevgep = getelementptr i8* %dst, i64 %5
  %bound1 = icmp uge i8* %scevgep, %src
  %bound0 = icmp uge i8* %scevgep11, %dst
  %memcheck.conflict = and i1 %bound0, %bound1
  %ptr.ind.end = getelementptr i8* %src, i64 %n.vec
  %ptr.ind.end13 = getelementptr i8* %dst, i64 %n.vec
  %rev.ind.end = sub i64 %count, %n.vec
  br i1 %memcheck.conflict, label %middle.block, label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.memcheck
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ]
  %next.gep = getelementptr i8* %src, i64 %index
  %next.gep110 = getelementptr i8* %dst, i64 %index
  %6 = bitcast i8* %next.gep to <16 x i8>*, !dbg !231
  %wide.load = load <16 x i8>* %6, align 1, !dbg !231
  %next.gep.sum586 = or i64 %index, 16, !dbg !231
  %7 = getelementptr i8* %src, i64 %next.gep.sum586, !dbg !231
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !231
  %wide.load207 = load <16 x i8>* %8, align 1, !dbg !231
  %9 = bitcast i8* %next.gep110 to <16 x i8>*, !dbg !231
  store <16 x i8> %wide.load, <16 x i8>* %9, align 1, !dbg !231
  %next.gep110.sum603 = or i64 %index, 16, !dbg !231
  %10 = getelementptr i8* %dst, i64 %next.gep110.sum603, !dbg !231
  %11 = bitcast i8* %10 to <16 x i8>*, !dbg !231
  store <16 x i8> %wide.load207, <16 x i8>* %11, align 1, !dbg !231
  %index.next = add i64 %index, 32
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !233

middle.block:                                     ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %resume.val = phi i8* [ %src, %.lr.ph.preheader ], [ %src, %vector.memcheck ], [ %ptr.ind.end, %vector.body ]
  %resume.val12 = phi i8* [ %dst, %.lr.ph.preheader ], [ %dst, %vector.memcheck ], [ %ptr.ind.end13, %vector.body ]
  %resume.val14 = phi i64 [ %count, %.lr.ph.preheader ], [ %count, %vector.memcheck ], [ %rev.ind.end, %vector.body ]
  %new.indc.resume.val = phi i64 [ 0, %.lr.ph.preheader ], [ 0, %vector.memcheck ], [ %n.vec, %vector.body ]
  %cmp.n = icmp eq i64 %new.indc.resume.val, %count
  br i1 %cmp.n, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %middle.block
  %b.04 = phi i8* [ %14, %.lr.ph ], [ %resume.val, %middle.block ]
  %a.03 = phi i8* [ %16, %.lr.ph ], [ %resume.val12, %middle.block ]
  %.02 = phi i64 [ %13, %.lr.ph ], [ %resume.val14, %middle.block ]
  %13 = add i64 %.02, -1, !dbg !231
  %14 = getelementptr inbounds i8* %b.04, i64 1, !dbg !231
  %15 = load i8* %b.04, align 1, !dbg !231, !tbaa !224
  %16 = getelementptr inbounds i8* %a.03, i64 1, !dbg !231
  store i8 %15, i8* %a.03, align 1, !dbg !231, !tbaa !224
  %17 = icmp eq i64 %13, 0, !dbg !231
  br i1 %17, label %.loopexit, label %.lr.ph, !dbg !231, !llvm.loop !234

; <label>:18                                      ; preds = %2
  %19 = add i64 %count, -1, !dbg !235
  %20 = icmp eq i64 %count, 0, !dbg !237
  br i1 %20, label %.loopexit, label %.lr.ph9, !dbg !237

.lr.ph9:                                          ; preds = %18
  %21 = getelementptr inbounds i8* %src, i64 %19, !dbg !238
  %22 = getelementptr inbounds i8* %dst, i64 %19, !dbg !235
  %n.vec215 = and i64 %count, -32
  %cmp.zero217 = icmp eq i64 %n.vec215, 0
  %23 = add i64 %count, -1
  br i1 %cmp.zero217, label %middle.block210, label %vector.memcheck224

vector.memcheck224:                               ; preds = %.lr.ph9
  %scevgep219 = getelementptr i8* %src, i64 %23
  %scevgep218 = getelementptr i8* %dst, i64 %23
  %bound1221 = icmp ule i8* %scevgep219, %dst
  %bound0220 = icmp ule i8* %scevgep218, %src
  %memcheck.conflict223 = and i1 %bound0220, %bound1221
  %.sum = sub i64 %19, %n.vec215
  %rev.ptr.ind.end = getelementptr i8* %src, i64 %.sum
  %.sum439 = sub i64 %19, %n.vec215
  %rev.ptr.ind.end229 = getelementptr i8* %dst, i64 %.sum439
  %rev.ind.end231 = sub i64 %count, %n.vec215
  br i1 %memcheck.conflict223, label %middle.block210, label %vector.body209

vector.body209:                                   ; preds = %vector.body209, %vector.memcheck224
  %index212 = phi i64 [ %index.next234, %vector.body209 ], [ 0, %vector.memcheck224 ]
  %.sum440 = sub i64 %19, %index212
  %.sum472 = sub i64 %19, %index212
  %next.gep236.sum = add i64 %.sum440, -15, !dbg !237
  %24 = getelementptr i8* %src, i64 %next.gep236.sum, !dbg !237
  %25 = bitcast i8* %24 to <16 x i8>*, !dbg !237
  %wide.load434 = load <16 x i8>* %25, align 1, !dbg !237
  %reverse = shufflevector <16 x i8> %wide.load434, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !237
  %.sum505 = add i64 %.sum440, -31, !dbg !237
  %26 = getelementptr i8* %src, i64 %.sum505, !dbg !237
  %27 = bitcast i8* %26 to <16 x i8>*, !dbg !237
  %wide.load435 = load <16 x i8>* %27, align 1, !dbg !237
  %reverse436 = shufflevector <16 x i8> %wide.load435, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !237
  %reverse437 = shufflevector <16 x i8> %reverse, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !237
  %next.gep333.sum = add i64 %.sum472, -15, !dbg !237
  %28 = getelementptr i8* %dst, i64 %next.gep333.sum, !dbg !237
  %29 = bitcast i8* %28 to <16 x i8>*, !dbg !237
  store <16 x i8> %reverse437, <16 x i8>* %29, align 1, !dbg !237
  %reverse438 = shufflevector <16 x i8> %reverse436, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !237
  %.sum507 = add i64 %.sum472, -31, !dbg !237
  %30 = getelementptr i8* %dst, i64 %.sum507, !dbg !237
  %31 = bitcast i8* %30 to <16 x i8>*, !dbg !237
  store <16 x i8> %reverse438, <16 x i8>* %31, align 1, !dbg !237
  %index.next234 = add i64 %index212, 32
  %32 = icmp eq i64 %index.next234, %n.vec215
  br i1 %32, label %middle.block210, label %vector.body209, !llvm.loop !239

middle.block210:                                  ; preds = %vector.body209, %vector.memcheck224, %.lr.ph9
  %resume.val225 = phi i8* [ %21, %.lr.ph9 ], [ %21, %vector.memcheck224 ], [ %rev.ptr.ind.end, %vector.body209 ]
  %resume.val227 = phi i8* [ %22, %.lr.ph9 ], [ %22, %vector.memcheck224 ], [ %rev.ptr.ind.end229, %vector.body209 ]
  %resume.val230 = phi i64 [ %count, %.lr.ph9 ], [ %count, %vector.memcheck224 ], [ %rev.ind.end231, %vector.body209 ]
  %new.indc.resume.val232 = phi i64 [ 0, %.lr.ph9 ], [ 0, %vector.memcheck224 ], [ %n.vec215, %vector.body209 ]
  %cmp.n233 = icmp eq i64 %new.indc.resume.val232, %count
  br i1 %cmp.n233, label %.loopexit, label %scalar.ph211

scalar.ph211:                                     ; preds = %scalar.ph211, %middle.block210
  %b.18 = phi i8* [ %34, %scalar.ph211 ], [ %resume.val225, %middle.block210 ]
  %a.17 = phi i8* [ %36, %scalar.ph211 ], [ %resume.val227, %middle.block210 ]
  %.16 = phi i64 [ %33, %scalar.ph211 ], [ %resume.val230, %middle.block210 ]
  %33 = add i64 %.16, -1, !dbg !237
  %34 = getelementptr inbounds i8* %b.18, i64 -1, !dbg !237
  %35 = load i8* %b.18, align 1, !dbg !237, !tbaa !224
  %36 = getelementptr inbounds i8* %a.17, i64 -1, !dbg !237
  store i8 %35, i8* %a.17, align 1, !dbg !237, !tbaa !224
  %37 = icmp eq i64 %33, 0, !dbg !237
  br i1 %37, label %.loopexit, label %scalar.ph211, !dbg !237, !llvm.loop !240

.loopexit:                                        ; preds = %scalar.ph211, %middle.block210, %18, %.lr.ph, %middle.block, %.preheader, %0
  ret i8* %dst, !dbg !241
}

; Function Attrs: nounwind uwtable
define weak i8* @mempcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #4 {
  %1 = icmp eq i64 %len, 0, !dbg !242
  br i1 %1, label %15, label %.lr.ph.preheader, !dbg !242

.lr.ph.preheader:                                 ; preds = %0
  %n.vec = and i64 %len, -32
  %cmp.zero = icmp eq i64 %n.vec, 0
  %2 = add i64 %len, -1
  br i1 %cmp.zero, label %middle.block, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep5 = getelementptr i8* %srcaddr, i64 %2
  %scevgep4 = getelementptr i8* %destaddr, i64 %2
  %bound1 = icmp uge i8* %scevgep4, %srcaddr
  %bound0 = icmp uge i8* %scevgep5, %destaddr
  %memcheck.conflict = and i1 %bound0, %bound1
  %ptr.ind.end = getelementptr i8* %srcaddr, i64 %n.vec
  %ptr.ind.end7 = getelementptr i8* %destaddr, i64 %n.vec
  %rev.ind.end = sub i64 %len, %n.vec
  br i1 %memcheck.conflict, label %middle.block, label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.memcheck
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ]
  %next.gep = getelementptr i8* %srcaddr, i64 %index
  %next.gep104 = getelementptr i8* %destaddr, i64 %index
  %3 = bitcast i8* %next.gep to <16 x i8>*, !dbg !243
  %wide.load = load <16 x i8>* %3, align 1, !dbg !243
  %next.gep.sum280 = or i64 %index, 16, !dbg !243
  %4 = getelementptr i8* %srcaddr, i64 %next.gep.sum280, !dbg !243
  %5 = bitcast i8* %4 to <16 x i8>*, !dbg !243
  %wide.load201 = load <16 x i8>* %5, align 1, !dbg !243
  %6 = bitcast i8* %next.gep104 to <16 x i8>*, !dbg !243
  store <16 x i8> %wide.load, <16 x i8>* %6, align 1, !dbg !243
  %next.gep104.sum297 = or i64 %index, 16, !dbg !243
  %7 = getelementptr i8* %destaddr, i64 %next.gep104.sum297, !dbg !243
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !243
  store <16 x i8> %wide.load201, <16 x i8>* %8, align 1, !dbg !243
  %index.next = add i64 %index, 32
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !244

middle.block:                                     ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %resume.val = phi i8* [ %srcaddr, %.lr.ph.preheader ], [ %srcaddr, %vector.memcheck ], [ %ptr.ind.end, %vector.body ]
  %resume.val6 = phi i8* [ %destaddr, %.lr.ph.preheader ], [ %destaddr, %vector.memcheck ], [ %ptr.ind.end7, %vector.body ]
  %resume.val8 = phi i64 [ %len, %.lr.ph.preheader ], [ %len, %vector.memcheck ], [ %rev.ind.end, %vector.body ]
  %new.indc.resume.val = phi i64 [ 0, %.lr.ph.preheader ], [ 0, %vector.memcheck ], [ %n.vec, %vector.body ]
  %cmp.n = icmp eq i64 %new.indc.resume.val, %len
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %middle.block
  %src.03 = phi i8* [ %11, %.lr.ph ], [ %resume.val, %middle.block ]
  %dest.02 = phi i8* [ %13, %.lr.ph ], [ %resume.val6, %middle.block ]
  %.01 = phi i64 [ %10, %.lr.ph ], [ %resume.val8, %middle.block ]
  %10 = add i64 %.01, -1, !dbg !242
  %11 = getelementptr inbounds i8* %src.03, i64 1, !dbg !243
  %12 = load i8* %src.03, align 1, !dbg !243, !tbaa !224
  %13 = getelementptr inbounds i8* %dest.02, i64 1, !dbg !243
  store i8 %12, i8* %dest.02, align 1, !dbg !243, !tbaa !224
  %14 = icmp eq i64 %10, 0, !dbg !242
  br i1 %14, label %._crit_edge, label %.lr.ph, !dbg !242, !llvm.loop !245

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %scevgep = getelementptr i8* %destaddr, i64 %len
  br label %15, !dbg !242

; <label>:15                                      ; preds = %._crit_edge, %0
  %dest.0.lcssa = phi i8* [ %scevgep, %._crit_edge ], [ %destaddr, %0 ]
  ret i8* %dest.0.lcssa, !dbg !246
}

; Function Attrs: nounwind uwtable
define weak i8* @memset(i8* %dst, i32 %s, i64 %count) #4 {
  %1 = icmp eq i64 %count, 0, !dbg !247
  br i1 %1, label %._crit_edge, label %.lr.ph, !dbg !247

.lr.ph:                                           ; preds = %0
  %2 = trunc i32 %s to i8, !dbg !248
  br label %3, !dbg !247

; <label>:3                                       ; preds = %3, %.lr.ph
  %a.02 = phi i8* [ %dst, %.lr.ph ], [ %5, %3 ]
  %.01 = phi i64 [ %count, %.lr.ph ], [ %4, %3 ]
  %4 = add i64 %.01, -1, !dbg !247
  %5 = getelementptr inbounds i8* %a.02, i64 1, !dbg !248
  store volatile i8 %2, i8* %a.02, align 1, !dbg !248, !tbaa !224
  %6 = icmp eq i64 %4, 0, !dbg !247
  br i1 %6, label %._crit_edge, label %3, !dbg !247

._crit_edge:                                      ; preds = %3, %0
  ret i8* %dst, !dbg !249
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-floa
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nobuiltin nounwind }
attributes #9 = { nobuiltin noreturn nounwind }

!llvm.dbg.cu = !{!0, !13, !25, !35, !48, !59, !71, !89, !103, !117}
!llvm.module.flags = !{!132, !133}
!llvm.ident = !{!134, !134, !134, !134, !134, !134, !134, !134, !134, !134}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ 
!1 = metadata !{metadata !"qqq.c", metadata !"/home/klee/klee_src/examples/ex1"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !10}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"check_square", metadata !"check_square", metadata !"", i32 6, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32*)* @check_square, null, null, metadata !2
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/klee/klee_src/examples/ex1/qqq.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 62, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 62} ; [ DW_TAG_subprogram ]
!11 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!12 = metadata !{metadata !8}
!13 = metadata !{i32 786449, metadata !14, i32 1, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !15, metadata !2, metadata !2, metadata !""} ; [
!14 = metadata !{metadata !"/home/klee/klee_src/runtime/Intrinsic/klee_choose.c", metadata !"/home/klee/klee_build/klee/runtime/Intrinsic"}
!15 = metadata !{metadata !16}
!16 = metadata !{i32 786478, metadata !14, metadata !17, metadata !"klee_choose", metadata !"klee_choose", metadata !"", i32 12, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i64)* @klee_choose, null, null, metadata !22, i32
!17 = metadata !{i32 786473, metadata !14}        ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_choose.c]
!18 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!19 = metadata !{metadata !20, metadata !20}
!20 = metadata !{i32 786454, metadata !14, null, metadata !"uintptr_t", i32 122, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ] [uintptr_t] [line 122, size 0, align 0, offset 0] [from long unsigned int]
!21 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!22 = metadata !{metadata !23, metadata !24}
!23 = metadata !{i32 786689, metadata !16, metadata !"n", metadata !17, i32 16777228, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 12]
!24 = metadata !{i32 786688, metadata !16, metadata !"x", metadata !17, i32 13, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 13]
!25 = metadata !{i32 786449, metadata !26, i32 1, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !27, metadata !2, metadata !2, metadata !""} ; [
!26 = metadata !{metadata !"/home/klee/klee_src/runtime/Intrinsic/klee_div_zero_check.c", metadata !"/home/klee/klee_build/klee/runtime/Intrinsic"}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 786478, metadata !26, metadata !29, metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !"", i32 12, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64)* @klee_div_zero_check, null
!29 = metadata !{i32 786473, metadata !26}        ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_div_zero_check.c]
!30 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!31 = metadata !{null, metadata !32}
!32 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!33 = metadata !{metadata !34}
!34 = metadata !{i32 786689, metadata !28, metadata !"z", metadata !29, i32 16777228, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 12]
!35 = metadata !{i32 786449, metadata !36, i32 1, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !37, metadata !2, metadata !2, metadata !""} ; [
!36 = metadata !{metadata !"/home/klee/klee_src/runtime/Intrinsic/klee_int.c", metadata !"/home/klee/klee_build/klee/runtime/Intrinsic"}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 786478, metadata !36, metadata !39, metadata !"klee_int", metadata !"klee_int", metadata !"", i32 13, metadata !40, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @klee_int, null, null, metadata !45, i32 13} ; [ 
!39 = metadata !{i32 786473, metadata !36}        ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_int.c]
!40 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!41 = metadata !{metadata !8, metadata !42}
!42 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!43 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!44 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!45 = metadata !{metadata !46, metadata !47}
!46 = metadata !{i32 786689, metadata !38, metadata !"name", metadata !39, i32 16777229, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!47 = metadata !{i32 786688, metadata !38, metadata !"x", metadata !39, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!48 = metadata !{i32 786449, metadata !49, i32 1, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !50, metadata !2, metadata !2, metadata !""} ; [
!49 = metadata !{metadata !"/home/klee/klee_src/runtime/Intrinsic/klee_overshift_check.c", metadata !"/home/klee/klee_build/klee/runtime/Intrinsic"}
!50 = metadata !{metadata !51}
!51 = metadata !{i32 786478, metadata !49, metadata !52, metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !"", i32 20, metadata !53, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64, i64)* @klee_overshift_che
!52 = metadata !{i32 786473, metadata !49}        ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_overshift_check.c]
!53 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !54, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!54 = metadata !{null, metadata !55, metadata !55}
!55 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!56 = metadata !{metadata !57, metadata !58}
!57 = metadata !{i32 786689, metadata !51, metadata !"bitWidth", metadata !52, i32 16777236, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bitWidth] [line 20]
!58 = metadata !{i32 786689, metadata !51, metadata !"shift", metadata !52, i32 33554452, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [shift] [line 20]
!59 = metadata !{i32 786449, metadata !60, i32 1, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !61, metadata !2, metadata !2, metadata !""} ; [
!60 = metadata !{metadata !"/home/klee/klee_src/runtime/Intrinsic/klee_range.c", metadata !"/home/klee/klee_build/klee/runtime/Intrinsic"}
!61 = metadata !{metadata !62}
!62 = metadata !{i32 786478, metadata !60, metadata !63, metadata !"klee_range", metadata !"klee_range", metadata !"", i32 13, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i8*)* @klee_range, null, null, metadata !
!63 = metadata !{i32 786473, metadata !60}        ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_range.c]
!64 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !65, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!65 = metadata !{metadata !8, metadata !8, metadata !8, metadata !42}
!66 = metadata !{metadata !67, metadata !68, metadata !69, metadata !70}
!67 = metadata !{i32 786689, metadata !62, metadata !"start", metadata !63, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 13]
!68 = metadata !{i32 786689, metadata !62, metadata !"end", metadata !63, i32 33554445, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [end] [line 13]
!69 = metadata !{i32 786689, metadata !62, metadata !"name", metadata !63, i32 50331661, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!70 = metadata !{i32 786688, metadata !62, metadata !"x", metadata !63, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!71 = metadata !{i32 786449, metadata !72, i32 1, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !73, metadata !2, metadata !2, metadata !""} ; [
!72 = metadata !{metadata !"/home/klee/klee_src/runtime/Intrinsic/memcpy.c", metadata !"/home/klee/klee_build/klee/runtime/Intrinsic"}
!73 = metadata !{metadata !74}
!74 = metadata !{i32 786478, metadata !72, metadata !75, metadata !"memcpy", metadata !"memcpy", metadata !"", i32 12, metadata !76, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memcpy, null, null, metadata !82, i32 12} 
!75 = metadata !{i32 786473, metadata !72}        ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/memcpy.c]
!76 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !77, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!77 = metadata !{metadata !78, metadata !78, metadata !79, metadata !81}
!78 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!79 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !80} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!80 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!81 = metadata !{i32 786454, metadata !72, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!82 = metadata !{metadata !83, metadata !84, metadata !85, metadata !86, metadata !88}
!83 = metadata !{i32 786689, metadata !74, metadata !"destaddr", metadata !75, i32 16777228, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 12]
!84 = metadata !{i32 786689, metadata !74, metadata !"srcaddr", metadata !75, i32 33554444, metadata !79, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 12]
!85 = metadata !{i32 786689, metadata !74, metadata !"len", metadata !75, i32 50331660, metadata !81, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 12]
!86 = metadata !{i32 786688, metadata !74, metadata !"dest", metadata !75, i32 13, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 13]
!87 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !44} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!88 = metadata !{i32 786688, metadata !74, metadata !"src", metadata !75, i32 14, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 14]
!89 = metadata !{i32 786449, metadata !90, i32 1, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !91, metadata !2, metadata !2, metadata !""} ; [
!90 = metadata !{metadata !"/home/klee/klee_src/runtime/Intrinsic/memmove.c", metadata !"/home/klee/klee_build/klee/runtime/Intrinsic"}
!91 = metadata !{metadata !92}
!92 = metadata !{i32 786478, metadata !90, metadata !93, metadata !"memmove", metadata !"memmove", metadata !"", i32 12, metadata !94, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memmove, null, null, metadata !97, i32 1
!93 = metadata !{i32 786473, metadata !90}        ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/memmove.c]
!94 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !95, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!95 = metadata !{metadata !78, metadata !78, metadata !79, metadata !96}
!96 = metadata !{i32 786454, metadata !90, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!97 = metadata !{metadata !98, metadata !99, metadata !100, metadata !101, metadata !102}
!98 = metadata !{i32 786689, metadata !92, metadata !"dst", metadata !93, i32 16777228, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 12]
!99 = metadata !{i32 786689, metadata !92, metadata !"src", metadata !93, i32 33554444, metadata !79, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 12]
!100 = metadata !{i32 786689, metadata !92, metadata !"count", metadata !93, i32 50331660, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 12]
!101 = metadata !{i32 786688, metadata !92, metadata !"a", metadata !93, i32 13, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 13]
!102 = metadata !{i32 786688, metadata !92, metadata !"b", metadata !93, i32 14, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 14]
!103 = metadata !{i32 786449, metadata !104, i32 1, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !105, metadata !2, metadata !2, metadata !""} 
!104 = metadata !{metadata !"/home/klee/klee_src/runtime/Intrinsic/mempcpy.c", metadata !"/home/klee/klee_build/klee/runtime/Intrinsic"}
!105 = metadata !{metadata !106}
!106 = metadata !{i32 786478, metadata !104, metadata !107, metadata !"mempcpy", metadata !"mempcpy", metadata !"", i32 11, metadata !108, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @mempcpy, null, null, metadata !111, 
!107 = metadata !{i32 786473, metadata !104}      ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/mempcpy.c]
!108 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !109, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!109 = metadata !{metadata !78, metadata !78, metadata !79, metadata !110}
!110 = metadata !{i32 786454, metadata !104, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!111 = metadata !{metadata !112, metadata !113, metadata !114, metadata !115, metadata !116}
!112 = metadata !{i32 786689, metadata !106, metadata !"destaddr", metadata !107, i32 16777227, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 11]
!113 = metadata !{i32 786689, metadata !106, metadata !"srcaddr", metadata !107, i32 33554443, metadata !79, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 11]
!114 = metadata !{i32 786689, metadata !106, metadata !"len", metadata !107, i32 50331659, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 11]
!115 = metadata !{i32 786688, metadata !106, metadata !"dest", metadata !107, i32 12, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 12]
!116 = metadata !{i32 786688, metadata !106, metadata !"src", metadata !107, i32 13, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 13]
!117 = metadata !{i32 786449, metadata !118, i32 1, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !119, metadata !2, metadata !2, metadata !""} 
!118 = metadata !{metadata !"/home/klee/klee_src/runtime/Intrinsic/memset.c", metadata !"/home/klee/klee_build/klee/runtime/Intrinsic"}
!119 = metadata !{metadata !120}
!120 = metadata !{i32 786478, metadata !118, metadata !121, metadata !"memset", metadata !"memset", metadata !"", i32 11, metadata !122, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, i64)* @memset, null, null, metadata !125, i32
!121 = metadata !{i32 786473, metadata !118}      ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/memset.c]
!122 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !123, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!123 = metadata !{metadata !78, metadata !78, metadata !8, metadata !124}
!124 = metadata !{i32 786454, metadata !118, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!125 = metadata !{metadata !126, metadata !127, metadata !128, metadata !129}
!126 = metadata !{i32 786689, metadata !120, metadata !"dst", metadata !121, i32 16777227, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 11]
!127 = metadata !{i32 786689, metadata !120, metadata !"s", metadata !121, i32 33554443, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 11]
!128 = metadata !{i32 786689, metadata !120, metadata !"count", metadata !121, i32 50331659, metadata !124, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 11]
!129 = metadata !{i32 786688, metadata !120, metadata !"a", metadata !121, i32 12, metadata !130, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 12]
!130 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !131} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!131 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from char]
!132 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!133 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!134 = metadata !{metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"}
!135 = metadata !{i32 7, i32 0, metadata !4, null}
!136 = metadata !{i32 10, i32 0, metadata !4, null}
!137 = metadata !{i32 15, i32 0, metadata !138, null}
!138 = metadata !{i32 786443, metadata !1, metadata !4, i32 15, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/klee_src/examples/ex1/qqq.c]
!139 = metadata !{i32 17, i32 0, metadata !140, null}
!140 = metadata !{i32 786443, metadata !1, metadata !138, i32 15, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/klee/klee_src/examples/ex1/qqq.c]
!141 = metadata !{i32 18, i32 0, metadata !142, null}
!142 = metadata !{i32 786443, metadata !1, metadata !140, i32 18, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/klee/klee_src/examples/ex1/qqq.c]
!143 = metadata !{i32 19, i32 0, metadata !144, null}
!144 = metadata !{i32 786443, metadata !1, metadata !142, i32 18, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/klee/klee_src/examples/ex1/qqq.c]
!145 = metadata !{i32 21, i32 0, metadata !140, null}
!146 = metadata !{i32 28, i32 0, metadata !147, null}
!147 = metadata !{i32 786443, metadata !1, metadata !4, i32 28, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/klee/klee_src/examples/ex1/qqq.c]
!148 = metadata !{i32 29, i32 0, metadata !149, null}
!149 = metadata !{i32 786443, metadata !1, metadata !147, i32 28, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/klee/klee_src/examples/ex1/qqq.c]
!150 = metadata !{i32 30, i32 0, metadata !151, null}
!151 = metadata !{i32 786443, metadata !1, metadata !149, i32 30, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/klee/klee_src/examples/ex1/qqq.c]
!152 = metadata !{i32 31, i32 0, metadata !153, null}
!153 = metadata !{i32 786443, metadata !1, metadata !151, i32 30, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/klee/klee_src/examples/ex1/qqq.c]
!154 = metadata !{i32 33, i32 0, metadata !149, null}
!155 = metadata !{i32 37, i32 0, metadata !156, null}
!156 = metadata !{i32 786443, metadata !1, metadata !4, i32 37, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/klee/klee_src/examples/ex1/qqq.c]
!157 = metadata !{i32 38, i32 0, metadata !158, null}
!158 = metadata !{i32 786443, metadata !1, metadata !156, i32 37, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/klee/klee_src/examples/ex1/qqq.c]
!159 = metadata !{i32 39, i32 0, metadata !160, null}
!160 = metadata !{i32 786443, metadata !1, metadata !158, i32 39, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/klee/klee_src/examples/ex1/qqq.c]
!161 = metadata !{i32 40, i32 0, metadata !162, null}
!162 = metadata !{i32 786443, metadata !1, metadata !160, i32 39, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/klee/klee_src/examples/ex1/qqq.c]
!163 = metadata !{i32 42, i32 0, metadata !158, null}
!164 = metadata !{i32 48, i32 0, metadata !165, null}
!165 = metadata !{i32 786443, metadata !1, metadata !4, i32 48, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/klee/klee_src/examples/ex1/qqq.c]
!166 = metadata !{i32 49, i32 0, metadata !167, null}
!167 = metadata !{i32 786443, metadata !1, metadata !165, i32 48, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/klee/klee_src/examples/ex1/qqq.c]
!168 = metadata !{i32 51, i32 0, metadata !4, null}
!169 = metadata !{i32 53, i32 0, metadata !4, null}
!170 = metadata !{i32 54, i32 0, metadata !171, null}
!171 = metadata !{i32 786443, metadata !1, metadata !4, i32 54, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/klee/klee_src/examples/ex1/qqq.c]
!172 = metadata !{i32 55, i32 0, metadata !173, null}
!173 = metadata !{i32 786443, metadata !1, metadata !171, i32 54, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/klee/klee_src/examples/ex1/qqq.c]
!174 = metadata !{i32 57, i32 0, metadata !4, null}
!175 = metadata !{i32 60, i32 0, metadata !4, null}
!176 = metadata !{i32 63, i32 0, metadata !10, null}
!177 = metadata !{i32 65, i32 0, metadata !10, null}
!178 = metadata !{i32 67, i32 0, metadata !10, null}
!179 = metadata !{i32 68, i32 0, metadata !10, null}
!180 = metadata !{i32 14, i32 0, metadata !16, null}
!181 = metadata !{i32 17, i32 0, metadata !182, null}
!182 = metadata !{i32 786443, metadata !14, metadata !16, i32 17, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_choose.c]
!183 = metadata !{metadata !184, metadata !184, i64 0}
!184 = metadata !{metadata !"long", metadata !185, i64 0}
!185 = metadata !{metadata !"omnipotent char", metadata !186, i64 0}
!186 = metadata !{metadata !"Simple C/C++ TBAA"}
!187 = metadata !{i32 18, i32 0, metadata !182, null}
!188 = metadata !{i32 19, i32 0, metadata !16, null}
!189 = metadata !{i32 13, i32 0, metadata !190, null}
!190 = metadata !{i32 786443, metadata !26, metadata !28, i32 13, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_div_zero_check.c]
!191 = metadata !{i32 14, i32 0, metadata !190, null}
!192 = metadata !{i32 15, i32 0, metadata !28, null}
!193 = metadata !{i32 15, i32 0, metadata !38, null}
!194 = metadata !{i32 16, i32 0, metadata !38, null}
!195 = metadata !{metadata !196, metadata !196, i64 0}
!196 = metadata !{metadata !"int", metadata !185, i64 0}
!197 = metadata !{i32 21, i32 0, metadata !198, null}
!198 = metadata !{i32 786443, metadata !49, metadata !51, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_overshift_check.c]
!199 = metadata !{i32 27, i32 0, metadata !200, null}
!200 = metadata !{i32 786443, metadata !49, metadata !198, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_overshift_check.c]
!201 = metadata !{i32 29, i32 0, metadata !51, null}
!202 = metadata !{i32 16, i32 0, metadata !203, null}
!203 = metadata !{i32 786443, metadata !60, metadata !62, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_range.c]
!204 = metadata !{i32 17, i32 0, metadata !203, null}
!205 = metadata !{i32 19, i32 0, metadata !206, null}
!206 = metadata !{i32 786443, metadata !60, metadata !62, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_range.c]
!207 = metadata !{i32 22, i32 0, metadata !208, null}
!208 = metadata !{i32 786443, metadata !60, metadata !206, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_range.c]
!209 = metadata !{i32 25, i32 0, metadata !210, null}
!210 = metadata !{i32 786443, metadata !60, metadata !208, i32 25, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_range.c]
!211 = metadata !{i32 26, i32 0, metadata !212, null}
!212 = metadata !{i32 786443, metadata !60, metadata !210, i32 25, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_range.c]
!213 = metadata !{i32 27, i32 0, metadata !212, null}
!214 = metadata !{i32 28, i32 0, metadata !215, null}
!215 = metadata !{i32 786443, metadata !60, metadata !210, i32 27, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_range.c]
!216 = metadata !{i32 29, i32 0, metadata !215, null}
!217 = metadata !{i32 32, i32 0, metadata !208, null}
!218 = metadata !{i32 34, i32 0, metadata !62, null}
!219 = metadata !{i32 16, i32 0, metadata !74, null}
!220 = metadata !{i32 17, i32 0, metadata !74, null}
!221 = metadata !{metadata !221, metadata !222, metadata !223}
!222 = metadata !{metadata !"llvm.vectorizer.width", i32 1}
!223 = metadata !{metadata !"llvm.vectorizer.unroll", i32 1}
!224 = metadata !{metadata !185, metadata !185, i64 0}
!225 = metadata !{metadata !225, metadata !222, metadata !223}
!226 = metadata !{i32 18, i32 0, metadata !74, null}
!227 = metadata !{i32 16, i32 0, metadata !228, null}
!228 = metadata !{i32 786443, metadata !90, metadata !92, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/memmove.c]
!229 = metadata !{i32 19, i32 0, metadata !230, null}
!230 = metadata !{i32 786443, metadata !90, metadata !92, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/memmove.c]
!231 = metadata !{i32 20, i32 0, metadata !232, null}
!232 = metadata !{i32 786443, metadata !90, metadata !230, i32 19, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/memmove.c]
!233 = metadata !{metadata !233, metadata !222, metadata !223}
!234 = metadata !{metadata !234, metadata !222, metadata !223}
!235 = metadata !{i32 22, i32 0, metadata !236, null}
!236 = metadata !{i32 786443, metadata !90, metadata !230, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/memmove.c]
!237 = metadata !{i32 24, i32 0, metadata !236, null}
!238 = metadata !{i32 23, i32 0, metadata !236, null}
!239 = metadata !{metadata !239, metadata !222, metadata !223}
!240 = metadata !{metadata !240, metadata !222, metadata !223}
!241 = metadata !{i32 28, i32 0, metadata !92, null}
!242 = metadata !{i32 15, i32 0, metadata !106, null}
!243 = metadata !{i32 16, i32 0, metadata !106, null}
!244 = metadata !{metadata !244, metadata !222, metadata !223}
!245 = metadata !{metadata !245, metadata !222, metadata !223}
!246 = metadata !{i32 17, i32 0, metadata !106, null}
!247 = metadata !{i32 13, i32 0, metadata !120, null}
!248 = metadata !{i32 14, i32 0, metadata !120, null}
!249 = metadata !{i32 15, i32 0, metadata !120, null}
