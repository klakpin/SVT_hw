; ModuleID = 'sum.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [64 x i8] c"sum == ((a + b + c) * 200 + (a + b + c) * 20 + (a + b + c) * 2)\00", align 1
@.str1 = private unnamed_addr constant [6 x i8] c"sum.c\00", align 1
@__PRETTY_FUNCTION__.print_all_combinations_and_sum = private unnamed_addr constant [50 x i8] c"int print_all_combinations_and_sum(int, int, int)\00", align 1
@.str2 = private unnamed_addr constant [33 x i8] c"sum == 110 * a + 2 * b + 110 * c\00", align 1
@.str3 = private unnamed_addr constant [34 x i8] c"sum == 210 * a + 111 * b + 12 * c\00", align 1
@.str4 = private unnamed_addr constant [34 x i8] c"sum = 111 * a + 210 * b + 102 * c\00", align 1
@.str5 = private unnamed_addr constant [30 x i8] c"sum == (a * 100 + b * 10 + c)\00", align 1
@.str6 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str7 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str8 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str9 = private unnamed_addr constant [12 x i8] c"klee_choose\00", align 1
@.str110 = private unnamed_addr constant [60 x i8] c"/home/klee/klee_src/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str12 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str211 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1
@.str312 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1
@.str14 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1
@.str25 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1
@.str613 = private unnamed_addr constant [51 x i8] c"/home/klee/klee_src/runtime/Intrinsic/klee_range.c\00", align 1
@.str17 = private unnamed_addr constant [14 x i8] c"invalid range\00", align 1
@.str28 = private unnamed_addr constant [5 x i8] c"user\00", align 1

; Function Attrs: nounwind uwtable
define i32 @print_all_combinations_and_sum(i32 %a, i32 %b, i32 %c) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %sum = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32 %a, i32* %1, align 4
  store i32 %b, i32* %2, align 4
  store i32 %c, i32* %3, align 4
  %4 = load i32* %1, align 4, !dbg !134
  %5 = mul nsw i32 %4, 100, !dbg !134
  %6 = load i32* %2, align 4, !dbg !134
  %7 = mul nsw i32 %6, 10, !dbg !134
  %8 = add nsw i32 %5, %7, !dbg !134
  %9 = load i32* %3, align 4, !dbg !134
  %10 = add nsw i32 %8, %9, !dbg !134
  store i32 %10, i32* %sum, align 4, !dbg !134
  %11 = load i32* %1, align 4, !dbg !135
  %12 = load i32* %2, align 4, !dbg !135
  %13 = icmp ne i32 %11, %12, !dbg !135
  br i1 %13, label %14, label %96, !dbg !135

; <label>:14                                      ; preds = %0
  %15 = load i32* %2, align 4, !dbg !135
  %16 = load i32* %3, align 4, !dbg !135
  %17 = icmp ne i32 %15, %16, !dbg !135
  br i1 %17, label %18, label %96, !dbg !135

; <label>:18                                      ; preds = %14
  %19 = load i32* %1, align 4, !dbg !135
  %20 = load i32* %3, align 4, !dbg !135
  %21 = icmp ne i32 %19, %20, !dbg !135
  br i1 %21, label %22, label %96, !dbg !135

; <label>:22                                      ; preds = %18
  %23 = load i32* %1, align 4, !dbg !137
  %24 = mul nsw i32 %23, 100, !dbg !137
  %25 = load i32* %3, align 4, !dbg !137
  %26 = mul nsw i32 %25, 10, !dbg !137
  %27 = add nsw i32 %24, %26, !dbg !137
  %28 = load i32* %2, align 4, !dbg !137
  %29 = add nsw i32 %27, %28, !dbg !137
  store i32 %29, i32* %temp, align 4, !dbg !137
  %30 = load i32* %sum, align 4, !dbg !139
  %31 = load i32* %temp, align 4, !dbg !139
  %32 = add nsw i32 %30, %31, !dbg !139
  store i32 %32, i32* %sum, align 4, !dbg !139
  %33 = load i32* %2, align 4, !dbg !140
  %34 = mul nsw i32 %33, 100, !dbg !140
  %35 = load i32* %1, align 4, !dbg !140
  %36 = mul nsw i32 %35, 10, !dbg !140
  %37 = add nsw i32 %34, %36, !dbg !140
  %38 = load i32* %3, align 4, !dbg !140
  %39 = add nsw i32 %37, %38, !dbg !140
  store i32 %39, i32* %temp, align 4, !dbg !140
  %40 = load i32* %sum, align 4, !dbg !141
  %41 = load i32* %temp, align 4, !dbg !141
  %42 = add nsw i32 %40, %41, !dbg !141
  store i32 %42, i32* %sum, align 4, !dbg !141
  %43 = load i32* %2, align 4, !dbg !142
  %44 = mul nsw i32 %43, 100, !dbg !142
  %45 = load i32* %3, align 4, !dbg !142
  %46 = mul nsw i32 %45, 10, !dbg !142
  %47 = add nsw i32 %44, %46, !dbg !142
  %48 = load i32* %1, align 4, !dbg !142
  %49 = add nsw i32 %47, %48, !dbg !142
  store i32 %49, i32* %temp, align 4, !dbg !142
  %50 = load i32* %sum, align 4, !dbg !143
  %51 = load i32* %temp, align 4, !dbg !143
  %52 = add nsw i32 %50, %51, !dbg !143
  store i32 %52, i32* %sum, align 4, !dbg !143
  %53 = load i32* %3, align 4, !dbg !144
  %54 = mul nsw i32 %53, 100, !dbg !144
  %55 = load i32* %1, align 4, !dbg !144
  %56 = mul nsw i32 %55, 10, !dbg !144
  %57 = add nsw i32 %54, %56, !dbg !144
  %58 = load i32* %2, align 4, !dbg !144
  %59 = add nsw i32 %57, %58, !dbg !144
  store i32 %59, i32* %temp, align 4, !dbg !144
  %60 = load i32* %sum, align 4, !dbg !145
  %61 = load i32* %temp, align 4, !dbg !145
  %62 = add nsw i32 %60, %61, !dbg !145
  store i32 %62, i32* %sum, align 4, !dbg !145
  %63 = load i32* %3, align 4, !dbg !146
  %64 = mul nsw i32 %63, 100, !dbg !146
  %65 = load i32* %2, align 4, !dbg !146
  %66 = mul nsw i32 %65, 10, !dbg !146
  %67 = add nsw i32 %64, %66, !dbg !146
  %68 = load i32* %1, align 4, !dbg !146
  %69 = add nsw i32 %67, %68, !dbg !146
  store i32 %69, i32* %temp, align 4, !dbg !146
  %70 = load i32* %sum, align 4, !dbg !147
  %71 = load i32* %temp, align 4, !dbg !147
  %72 = add nsw i32 %70, %71, !dbg !147
  store i32 %72, i32* %sum, align 4, !dbg !147
  %73 = load i32* %sum, align 4, !dbg !148
  %74 = load i32* %1, align 4, !dbg !148
  %75 = load i32* %2, align 4, !dbg !148
  %76 = add nsw i32 %74, %75, !dbg !148
  %77 = load i32* %3, align 4, !dbg !148
  %78 = add nsw i32 %76, %77, !dbg !148
  %79 = mul nsw i32 %78, 200, !dbg !148
  %80 = load i32* %1, align 4, !dbg !148
  %81 = load i32* %2, align 4, !dbg !148
  %82 = add nsw i32 %80, %81, !dbg !148
  %83 = load i32* %3, align 4, !dbg !148
  %84 = add nsw i32 %82, %83, !dbg !148
  %85 = mul nsw i32 %84, 20, !dbg !148
  %86 = add nsw i32 %79, %85, !dbg !148
  %87 = load i32* %1, align 4, !dbg !148
  %88 = load i32* %2, align 4, !dbg !148
  %89 = add nsw i32 %87, %88, !dbg !148
  %90 = load i32* %3, align 4, !dbg !148
  %91 = add nsw i32 %89, %90, !dbg !148
  %92 = mul nsw i32 %91, 2, !dbg !148
  %93 = add nsw i32 %86, %92, !dbg !148
  %94 = icmp eq i32 %73, %93, !dbg !148
  br i1 %94, label %228, label %95, !dbg !148

; <label>:95                                      ; preds = %22
  call void @__assert_fail(i8* getelementptr inbounds ([64 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0), i32 20, i8* getelementptr inbounds ([50 x i8]* @__PRETTY_FUNCTION__.print_all_combinations_and_sum, i32 0
  unreachable, !dbg !148

; <label>:96                                      ; preds = %18, %14, %0
  %97 = load i32* %1, align 4, !dbg !149
  %98 = load i32* %2, align 4, !dbg !149
  %99 = icmp ne i32 %97, %98, !dbg !149
  br i1 %99, label %108, label %100, !dbg !149

; <label>:100                                     ; preds = %96
  %101 = load i32* %2, align 4, !dbg !149
  %102 = load i32* %3, align 4, !dbg !149
  %103 = icmp ne i32 %101, %102, !dbg !149
  br i1 %103, label %108, label %104, !dbg !149

; <label>:104                                     ; preds = %100
  %105 = load i32* %1, align 4, !dbg !149
  %106 = load i32* %3, align 4, !dbg !149
  %107 = icmp ne i32 %105, %106, !dbg !149
  br i1 %107, label %108, label %217, !dbg !149

; <label>:108                                     ; preds = %104, %100, %96
  %109 = load i32* %1, align 4, !dbg !152
  %110 = load i32* %2, align 4, !dbg !152
  %111 = icmp eq i32 %109, %110, !dbg !152
  br i1 %111, label %112, label %144, !dbg !152

; <label>:112                                     ; preds = %108
  %113 = load i32* %1, align 4, !dbg !155
  %114 = mul nsw i32 %113, 100, !dbg !155
  %115 = load i32* %3, align 4, !dbg !155
  %116 = mul nsw i32 %115, 10, !dbg !155
  %117 = add nsw i32 %114, %116, !dbg !155
  %118 = load i32* %2, align 4, !dbg !155
  %119 = add nsw i32 %117, %118, !dbg !155
  store i32 %119, i32* %temp, align 4, !dbg !155
  %120 = load i32* %sum, align 4, !dbg !157
  %121 = load i32* %temp, align 4, !dbg !157
  %122 = add nsw i32 %120, %121, !dbg !157
  store i32 %122, i32* %sum, align 4, !dbg !157
  %123 = load i32* %3, align 4, !dbg !158
  %124 = mul nsw i32 %123, 100, !dbg !158
  %125 = load i32* %1, align 4, !dbg !158
  %126 = mul nsw i32 %125, 10, !dbg !158
  %127 = add nsw i32 %124, %126, !dbg !158
  %128 = load i32* %2, align 4, !dbg !158
  %129 = add nsw i32 %127, %128, !dbg !158
  store i32 %129, i32* %temp, align 4, !dbg !158
  %130 = load i32* %sum, align 4, !dbg !159
  %131 = load i32* %temp, align 4, !dbg !159
  %132 = add nsw i32 %130, %131, !dbg !159
  store i32 %132, i32* %sum, align 4, !dbg !159
  %133 = load i32* %sum, align 4, !dbg !160
  %134 = load i32* %1, align 4, !dbg !160
  %135 = mul nsw i32 110, %134, !dbg !160
  %136 = load i32* %2, align 4, !dbg !160
  %137 = mul nsw i32 2, %136, !dbg !160
  %138 = add nsw i32 %135, %137, !dbg !160
  %139 = load i32* %3, align 4, !dbg !160
  %140 = mul nsw i32 110, %139, !dbg !160
  %141 = add nsw i32 %138, %140, !dbg !160
  %142 = icmp eq i32 %133, %141, !dbg !160
  br i1 %142, label %228, label %143, !dbg !160

; <label>:143                                     ; preds = %112
  call void @__assert_fail(i8* getelementptr inbounds ([33 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0), i32 28, i8* getelementptr inbounds ([50 x i8]* @__PRETTY_FUNCTION__.print_all_combinations_and_sum, i32 
  unreachable, !dbg !160

; <label>:144                                     ; preds = %108
  %145 = load i32* %3, align 4, !dbg !161
  %146 = load i32* %1, align 4, !dbg !161
  %147 = icmp eq i32 %145, %146, !dbg !161
  br i1 %147, label %148, label %180, !dbg !161

; <label>:148                                     ; preds = %144
  %149 = load i32* %1, align 4, !dbg !164
  %150 = mul nsw i32 %149, 100, !dbg !164
  %151 = load i32* %3, align 4, !dbg !164
  %152 = mul nsw i32 %151, 10, !dbg !164
  %153 = add nsw i32 %150, %152, !dbg !164
  %154 = load i32* %2, align 4, !dbg !164
  %155 = add nsw i32 %153, %154, !dbg !164
  store i32 %155, i32* %temp, align 4, !dbg !164
  %156 = load i32* %sum, align 4, !dbg !166
  %157 = load i32* %temp, align 4, !dbg !166
  %158 = add nsw i32 %156, %157, !dbg !166
  store i32 %158, i32* %sum, align 4, !dbg !166
  %159 = load i32* %2, align 4, !dbg !167
  %160 = mul nsw i32 %159, 100, !dbg !167
  %161 = load i32* %1, align 4, !dbg !167
  %162 = mul nsw i32 %161, 10, !dbg !167
  %163 = add nsw i32 %160, %162, !dbg !167
  %164 = load i32* %3, align 4, !dbg !167
  %165 = add nsw i32 %163, %164, !dbg !167
  store i32 %165, i32* %temp, align 4, !dbg !167
  %166 = load i32* %sum, align 4, !dbg !168
  %167 = load i32* %temp, align 4, !dbg !168
  %168 = add nsw i32 %166, %167, !dbg !168
  store i32 %168, i32* %sum, align 4, !dbg !168
  %169 = load i32* %sum, align 4, !dbg !169
  %170 = load i32* %1, align 4, !dbg !169
  %171 = mul nsw i32 210, %170, !dbg !169
  %172 = load i32* %2, align 4, !dbg !169
  %173 = mul nsw i32 111, %172, !dbg !169
  %174 = add nsw i32 %171, %173, !dbg !169
  %175 = load i32* %3, align 4, !dbg !169
  %176 = mul nsw i32 12, %175, !dbg !169
  %177 = add nsw i32 %174, %176, !dbg !169
  %178 = icmp eq i32 %169, %177, !dbg !169
  br i1 %178, label %228, label %179, !dbg !169

; <label>:179                                     ; preds = %148
  call void @__assert_fail(i8* getelementptr inbounds ([34 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0), i32 35, i8* getelementptr inbounds ([50 x i8]* @__PRETTY_FUNCTION__.print_all_combinations_and_sum, i32 
  unreachable, !dbg !169

; <label>:180                                     ; preds = %144
  %181 = load i32* %2, align 4, !dbg !170
  %182 = load i32* %3, align 4, !dbg !170
  %183 = icmp eq i32 %181, %182, !dbg !170
  br i1 %183, label %184, label %228, !dbg !170

; <label>:184                                     ; preds = %180
  %185 = load i32* %2, align 4, !dbg !173
  %186 = mul nsw i32 %185, 100, !dbg !173
  %187 = load i32* %1, align 4, !dbg !173
  %188 = mul nsw i32 %187, 10, !dbg !173
  %189 = add nsw i32 %186, %188, !dbg !173
  %190 = load i32* %3, align 4, !dbg !173
  %191 = add nsw i32 %189, %190, !dbg !173
  store i32 %191, i32* %temp, align 4, !dbg !173
  %192 = load i32* %sum, align 4, !dbg !175
  %193 = load i32* %temp, align 4, !dbg !175
  %194 = add nsw i32 %192, %193, !dbg !175
  store i32 %194, i32* %sum, align 4, !dbg !175
  %195 = load i32* %sum, align 4, !dbg !176
  %196 = load i32* %2, align 4, !dbg !176
  %197 = mul nsw i32 %196, 100, !dbg !176
  %198 = add nsw i32 %195, %197, !dbg !176
  %199 = load i32* %3, align 4, !dbg !176
  %200 = mul nsw i32 %199, 100, !dbg !176
  %201 = add nsw i32 %198, %200, !dbg !176
  %202 = load i32* %1, align 4, !dbg !176
  %203 = add nsw i32 %201, %202, !dbg !176
  store i32 %203, i32* %temp, align 4, !dbg !176
  %204 = load i32* %sum, align 4, !dbg !177
  %205 = load i32* %temp, align 4, !dbg !177
  %206 = add nsw i32 %204, %205, !dbg !177
  store i32 %206, i32* %sum, align 4, !dbg !177
  %207 = load i32* %1, align 4, !dbg !178
  %208 = mul nsw i32 111, %207, !dbg !178
  %209 = load i32* %2, align 4, !dbg !178
  %210 = mul nsw i32 210, %209, !dbg !178
  %211 = add nsw i32 %208, %210, !dbg !178
  %212 = load i32* %3, align 4, !dbg !178
  %213 = mul nsw i32 102, %212, !dbg !178
  %214 = add nsw i32 %211, %213, !dbg !178
  store i32 %214, i32* %sum, align 4, !dbg !178
  %215 = icmp ne i32 %214, 0, !dbg !178
  br i1 %215, label %228, label %216, !dbg !178

; <label>:216                                     ; preds = %184
  call void @__assert_fail(i8* getelementptr inbounds ([34 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0), i32 42, i8* getelementptr inbounds ([50 x i8]* @__PRETTY_FUNCTION__.print_all_combinations_and_sum, i32 
  unreachable, !dbg !178

; <label>:217                                     ; preds = %104
  %218 = load i32* %sum, align 4, !dbg !179
  %219 = load i32* %1, align 4, !dbg !179
  %220 = mul nsw i32 %219, 100, !dbg !179
  %221 = load i32* %2, align 4, !dbg !179
  %222 = mul nsw i32 %221, 10, !dbg !179
  %223 = add nsw i32 %220, %222, !dbg !179
  %224 = load i32* %3, align 4, !dbg !179
  %225 = add nsw i32 %223, %224, !dbg !179
  %226 = icmp eq i32 %218, %225, !dbg !179
  br i1 %226, label %228, label %227, !dbg !179

; <label>:227                                     ; preds = %217
  call void @__assert_fail(i8* getelementptr inbounds ([30 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0), i32 47, i8* getelementptr inbounds ([50 x i8]* @__PRETTY_FUNCTION__.print_all_combinations_and_sum, i32 
  unreachable, !dbg !179

; <label>:228                                     ; preds = %148, %184, %180, %112, %217, %22
  %229 = load i32* %sum, align 4, !dbg !181
  ret i32 %229, !dbg !181
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 0, i32* %1
  %2 = call i32 (i32*, i64, i8*, ...)* bitcast (i32 (...)* @klee_make_symbolic to i32 (i32*, i64, i8*, ...)*)(i32* %a, i64 4, i8* getelementptr inbounds ([2 x i8]* @.str6, i32 0, i32 0)), !dbg !182
  %3 = call i32 (i32*, i64, i8*, ...)* bitcast (i32 (...)* @klee_make_symbolic to i32 (i32*, i64, i8*, ...)*)(i32* %b, i64 4, i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0)), !dbg !183
  %4 = call i32 (i32*, i64, i8*, ...)* bitcast (i32 (...)* @klee_make_symbolic to i32 (i32*, i64, i8*, ...)*)(i32* %c, i64 4, i8* getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 0)), !dbg !184
  %5 = load i32* %a, align 4, !dbg !185
  %6 = icmp slt i32 %5, 0, !dbg !185
  br i1 %6, label %7, label %10, !dbg !185

; <label>:7                                       ; preds = %0
  %8 = load i32* %a, align 4, !dbg !187
  %9 = mul nsw i32 %8, -1, !dbg !187
  store i32 %9, i32* %a, align 4, !dbg !187
  br label %10, !dbg !187

; <label>:10                                      ; preds = %7, %0
  %11 = load i32* %b, align 4, !dbg !189
  %12 = icmp slt i32 %11, 0, !dbg !189
  br i1 %12, label %13, label %16, !dbg !189

; <label>:13                                      ; preds = %10
  %14 = load i32* %b, align 4, !dbg !191
  %15 = mul nsw i32 %14, -1, !dbg !191
  store i32 %15, i32* %b, align 4, !dbg !191
  br label %16, !dbg !191

; <label>:16                                      ; preds = %13, %10
  %17 = load i32* %c, align 4, !dbg !193
  %18 = icmp sgt i32 %17, 0, !dbg !193
  br i1 %18, label %19, label %22, !dbg !193

; <label>:19                                      ; preds = %16
  %20 = load i32* %c, align 4, !dbg !195
  %21 = mul nsw i32 %20, -1, !dbg !195
  store i32 %21, i32* %c, align 4, !dbg !195
  br label %22, !dbg !195

; <label>:22                                      ; preds = %19, %16
  %23 = load i32* %a, align 4, !dbg !197
  %int_cast_to_i64 = zext i32 10 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !197
  %24 = srem i32 %23, 10, !dbg !197
  store i32 %24, i32* %a, align 4, !dbg !197
  %25 = load i32* %b, align 4, !dbg !198
  %int_cast_to_i641 = zext i32 10 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i641), !dbg !198
  %26 = srem i32 %25, 10, !dbg !198
  store i32 %26, i32* %b, align 4, !dbg !198
  %27 = load i32* %c, align 4, !dbg !199
  %int_cast_to_i642 = zext i32 10 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i642), !dbg !199
  %28 = srem i32 %27, 10, !dbg !199
  store i32 %28, i32* %c, align 4, !dbg !199
  %29 = load i32* %a, align 4, !dbg !200
  %30 = load i32* %b, align 4, !dbg !200
  %31 = load i32* %c, align 4, !dbg !200
  %32 = call i32 @print_all_combinations_and_sum(i32 %29, i32 %30, i32 %31), !dbg !200
  ret i32 %32, !dbg !200
}

declare i32 @klee_make_symbolic(...) #3

; Function Attrs: nounwind uwtable
define i64 @klee_choose(i64 %n) #4 {
  %x = alloca i64, align 8
  %1 = bitcast i64* %x to i8*, !dbg !201
  call void bitcast (i32 (...)* @klee_make_symbolic to void (i8*, i64, i8*)*)(i8* %1, i64 8, i8* getelementptr inbounds ([12 x i8]* @.str9, i64 0, i64 0)) #8, !dbg !201
  %2 = load i64* %x, align 8, !dbg !202, !tbaa !204
  %3 = icmp ult i64 %2, %n, !dbg !202
  br i1 %3, label %5, label %4, !dbg !202

; <label>:4                                       ; preds = %0
  call void @klee_silent_exit(i32 0) #9, !dbg !208
  unreachable, !dbg !208

; <label>:5                                       ; preds = %0
  ret i64 %2, !dbg !209
}

; Function Attrs: noreturn
declare void @klee_silent_exit(i32) #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind uwtable
define void @klee_div_zero_check(i64 %z) #4 {
  %1 = icmp eq i64 %z, 0, !dbg !210
  br i1 %1, label %2, label %3, !dbg !210

; <label>:2                                       ; preds = %0
  tail call void @klee_report_error(i8* getelementptr inbounds ([60 x i8]* @.str110, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str211, i64 0, i64 0)) #9, !dbg !212
  unreachable, !dbg !212

; <label>:3                                       ; preds = %0
  ret void, !dbg !213
}

; Function Attrs: noreturn
declare void @klee_report_error(i8*, i32, i8*, i8*) #5

; Function Attrs: nounwind uwtable
define i32 @klee_int(i8* %name) #4 {
  %x = alloca i32, align 4
  %1 = bitcast i32* %x to i8*, !dbg !214
  call void bitcast (i32 (...)* @klee_make_symbolic to void (i8*, i64, i8*)*)(i8* %1, i64 4, i8* %name) #8, !dbg !214
  %2 = load i32* %x, align 4, !dbg !215, !tbaa !216
  ret i32 %2, !dbg !215
}

; Function Attrs: nounwind uwtable
define void @klee_overshift_check(i64 %bitWidth, i64 %shift) #4 {
  %1 = icmp ult i64 %shift, %bitWidth, !dbg !218
  br i1 %1, label %3, label %2, !dbg !218

; <label>:2                                       ; preds = %0
  tail call void @klee_report_error(i8* getelementptr inbounds ([8 x i8]* @.str312, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str25, i64 0, i64 0)) #9, !dbg !220
  unreachable, !dbg !220

; <label>:3                                       ; preds = %0
  ret void, !dbg !222
}

; Function Attrs: nounwind uwtable
define i32 @klee_range(i32 %start, i32 %end, i8* %name) #4 {
  %x = alloca i32, align 4
  %1 = icmp slt i32 %start, %end, !dbg !223
  br i1 %1, label %3, label %2, !dbg !223

; <label>:2                                       ; preds = %0
  call void @klee_report_error(i8* getelementptr inbounds ([51 x i8]* @.str613, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([14 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0)) #9, !dbg !225
  unreachable, !dbg !225

; <label>:3                                       ; preds = %0
  %4 = add nsw i32 %start, 1, !dbg !226
  %5 = icmp eq i32 %4, %end, !dbg !226
  br i1 %5, label %21, label %6, !dbg !226

; <label>:6                                       ; preds = %3
  %7 = bitcast i32* %x to i8*, !dbg !228
  call void bitcast (i32 (...)* @klee_make_symbolic to void (i8*, i64, i8*)*)(i8* %7, i64 4, i8* %name) #8, !dbg !228
  %8 = icmp eq i32 %start, 0, !dbg !230
  %9 = load i32* %x, align 4, !dbg !232, !tbaa !216
  br i1 %8, label %10, label %13, !dbg !230

; <label>:10                                      ; preds = %6
  %11 = icmp ult i32 %9, %end, !dbg !232
  %12 = zext i1 %11 to i64, !dbg !232
  call void @klee_assume(i64 %12) #8, !dbg !232
  br label %19, !dbg !234

; <label>:13                                      ; preds = %6
  %14 = icmp sge i32 %9, %start, !dbg !235
  %15 = zext i1 %14 to i64, !dbg !235
  call void @klee_assume(i64 %15) #8, !dbg !235
  %16 = load i32* %x, align 4, !dbg !237, !tbaa !216
  %17 = icmp slt i32 %16, %end, !dbg !237
  %18 = zext i1 %17 to i64, !dbg !237
  call void @klee_assume(i64 %18) #8, !dbg !237
  br label %19

; <label>:19                                      ; preds = %13, %10
  %20 = load i32* %x, align 4, !dbg !238, !tbaa !216
  br label %21, !dbg !238

; <label>:21                                      ; preds = %19, %3
  %.0 = phi i32 [ %20, %19 ], [ %start, %3 ]
  ret i32 %.0, !dbg !239
}

declare void @klee_assume(i64) #6

; Function Attrs: nounwind uwtable
define weak i8* @memcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #4 {
  %1 = icmp eq i64 %len, 0, !dbg !240
  br i1 %1, label %._crit_edge, label %.lr.ph.preheader, !dbg !240

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
  %3 = bitcast i8* %next.gep to <16 x i8>*, !dbg !241
  %wide.load = load <16 x i8>* %3, align 1, !dbg !241
  %next.gep.sum279 = or i64 %index, 16, !dbg !241
  %4 = getelementptr i8* %srcaddr, i64 %next.gep.sum279, !dbg !241
  %5 = bitcast i8* %4 to <16 x i8>*, !dbg !241
  %wide.load200 = load <16 x i8>* %5, align 1, !dbg !241
  %6 = bitcast i8* %next.gep103 to <16 x i8>*, !dbg !241
  store <16 x i8> %wide.load, <16 x i8>* %6, align 1, !dbg !241
  %next.gep103.sum296 = or i64 %index, 16, !dbg !241
  %7 = getelementptr i8* %destaddr, i64 %next.gep103.sum296, !dbg !241
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !241
  store <16 x i8> %wide.load200, <16 x i8>* %8, align 1, !dbg !241
  %index.next = add i64 %index, 32
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !242

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
  %10 = add i64 %.01, -1, !dbg !240
  %11 = getelementptr inbounds i8* %src.03, i64 1, !dbg !241
  %12 = load i8* %src.03, align 1, !dbg !241, !tbaa !245
  %13 = getelementptr inbounds i8* %dest.02, i64 1, !dbg !241
  store i8 %12, i8* %dest.02, align 1, !dbg !241, !tbaa !245
  %14 = icmp eq i64 %10, 0, !dbg !240
  br i1 %14, label %._crit_edge, label %.lr.ph, !dbg !240, !llvm.loop !246

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %0
  ret i8* %destaddr, !dbg !247
}

; Function Attrs: nounwind uwtable
define weak i8* @memmove(i8* %dst, i8* %src, i64 %count) #4 {
  %1 = icmp eq i8* %src, %dst, !dbg !248
  br i1 %1, label %.loopexit, label %2, !dbg !248

; <label>:2                                       ; preds = %0
  %3 = icmp ugt i8* %src, %dst, !dbg !250
  br i1 %3, label %.preheader, label %18, !dbg !250

.preheader:                                       ; preds = %2
  %4 = icmp eq i64 %count, 0, !dbg !252
  br i1 %4, label %.loopexit, label %.lr.ph.preheader, !dbg !252

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
  %6 = bitcast i8* %next.gep to <16 x i8>*, !dbg !252
  %wide.load = load <16 x i8>* %6, align 1, !dbg !252
  %next.gep.sum586 = or i64 %index, 16, !dbg !252
  %7 = getelementptr i8* %src, i64 %next.gep.sum586, !dbg !252
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !252
  %wide.load207 = load <16 x i8>* %8, align 1, !dbg !252
  %9 = bitcast i8* %next.gep110 to <16 x i8>*, !dbg !252
  store <16 x i8> %wide.load, <16 x i8>* %9, align 1, !dbg !252
  %next.gep110.sum603 = or i64 %index, 16, !dbg !252
  %10 = getelementptr i8* %dst, i64 %next.gep110.sum603, !dbg !252
  %11 = bitcast i8* %10 to <16 x i8>*, !dbg !252
  store <16 x i8> %wide.load207, <16 x i8>* %11, align 1, !dbg !252
  %index.next = add i64 %index, 32
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !254

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
  %13 = add i64 %.02, -1, !dbg !252
  %14 = getelementptr inbounds i8* %b.04, i64 1, !dbg !252
  %15 = load i8* %b.04, align 1, !dbg !252, !tbaa !245
  %16 = getelementptr inbounds i8* %a.03, i64 1, !dbg !252
  store i8 %15, i8* %a.03, align 1, !dbg !252, !tbaa !245
  %17 = icmp eq i64 %13, 0, !dbg !252
  br i1 %17, label %.loopexit, label %.lr.ph, !dbg !252, !llvm.loop !255

; <label>:18                                      ; preds = %2
  %19 = add i64 %count, -1, !dbg !256
  %20 = icmp eq i64 %count, 0, !dbg !258
  br i1 %20, label %.loopexit, label %.lr.ph9, !dbg !258

.lr.ph9:                                          ; preds = %18
  %21 = getelementptr inbounds i8* %src, i64 %19, !dbg !259
  %22 = getelementptr inbounds i8* %dst, i64 %19, !dbg !256
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
  %next.gep236.sum = add i64 %.sum440, -15, !dbg !258
  %24 = getelementptr i8* %src, i64 %next.gep236.sum, !dbg !258
  %25 = bitcast i8* %24 to <16 x i8>*, !dbg !258
  %wide.load434 = load <16 x i8>* %25, align 1, !dbg !258
  %reverse = shufflevector <16 x i8> %wide.load434, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !258
  %.sum505 = add i64 %.sum440, -31, !dbg !258
  %26 = getelementptr i8* %src, i64 %.sum505, !dbg !258
  %27 = bitcast i8* %26 to <16 x i8>*, !dbg !258
  %wide.load435 = load <16 x i8>* %27, align 1, !dbg !258
  %reverse436 = shufflevector <16 x i8> %wide.load435, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !258
  %reverse437 = shufflevector <16 x i8> %reverse, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !258
  %next.gep333.sum = add i64 %.sum472, -15, !dbg !258
  %28 = getelementptr i8* %dst, i64 %next.gep333.sum, !dbg !258
  %29 = bitcast i8* %28 to <16 x i8>*, !dbg !258
  store <16 x i8> %reverse437, <16 x i8>* %29, align 1, !dbg !258
  %reverse438 = shufflevector <16 x i8> %reverse436, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !258
  %.sum507 = add i64 %.sum472, -31, !dbg !258
  %30 = getelementptr i8* %dst, i64 %.sum507, !dbg !258
  %31 = bitcast i8* %30 to <16 x i8>*, !dbg !258
  store <16 x i8> %reverse438, <16 x i8>* %31, align 1, !dbg !258
  %index.next234 = add i64 %index212, 32
  %32 = icmp eq i64 %index.next234, %n.vec215
  br i1 %32, label %middle.block210, label %vector.body209, !llvm.loop !260

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
  %33 = add i64 %.16, -1, !dbg !258
  %34 = getelementptr inbounds i8* %b.18, i64 -1, !dbg !258
  %35 = load i8* %b.18, align 1, !dbg !258, !tbaa !245
  %36 = getelementptr inbounds i8* %a.17, i64 -1, !dbg !258
  store i8 %35, i8* %a.17, align 1, !dbg !258, !tbaa !245
  %37 = icmp eq i64 %33, 0, !dbg !258
  br i1 %37, label %.loopexit, label %scalar.ph211, !dbg !258, !llvm.loop !261

.loopexit:                                        ; preds = %scalar.ph211, %middle.block210, %18, %.lr.ph, %middle.block, %.preheader, %0
  ret i8* %dst, !dbg !262
}

; Function Attrs: nounwind uwtable
define weak i8* @mempcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #4 {
  %1 = icmp eq i64 %len, 0, !dbg !263
  br i1 %1, label %15, label %.lr.ph.preheader, !dbg !263

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
  %3 = bitcast i8* %next.gep to <16 x i8>*, !dbg !264
  %wide.load = load <16 x i8>* %3, align 1, !dbg !264
  %next.gep.sum280 = or i64 %index, 16, !dbg !264
  %4 = getelementptr i8* %srcaddr, i64 %next.gep.sum280, !dbg !264
  %5 = bitcast i8* %4 to <16 x i8>*, !dbg !264
  %wide.load201 = load <16 x i8>* %5, align 1, !dbg !264
  %6 = bitcast i8* %next.gep104 to <16 x i8>*, !dbg !264
  store <16 x i8> %wide.load, <16 x i8>* %6, align 1, !dbg !264
  %next.gep104.sum297 = or i64 %index, 16, !dbg !264
  %7 = getelementptr i8* %destaddr, i64 %next.gep104.sum297, !dbg !264
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !264
  store <16 x i8> %wide.load201, <16 x i8>* %8, align 1, !dbg !264
  %index.next = add i64 %index, 32
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !265

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
  %10 = add i64 %.01, -1, !dbg !263
  %11 = getelementptr inbounds i8* %src.03, i64 1, !dbg !264
  %12 = load i8* %src.03, align 1, !dbg !264, !tbaa !245
  %13 = getelementptr inbounds i8* %dest.02, i64 1, !dbg !264
  store i8 %12, i8* %dest.02, align 1, !dbg !264, !tbaa !245
  %14 = icmp eq i64 %10, 0, !dbg !263
  br i1 %14, label %._crit_edge, label %.lr.ph, !dbg !263, !llvm.loop !266

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %scevgep = getelementptr i8* %destaddr, i64 %len
  br label %15, !dbg !263

; <label>:15                                      ; preds = %._crit_edge, %0
  %dest.0.lcssa = phi i8* [ %scevgep, %._crit_edge ], [ %destaddr, %0 ]
  ret i8* %dest.0.lcssa, !dbg !267
}

; Function Attrs: nounwind uwtable
define weak i8* @memset(i8* %dst, i32 %s, i64 %count) #4 {
  %1 = icmp eq i64 %count, 0, !dbg !268
  br i1 %1, label %._crit_edge, label %.lr.ph, !dbg !268

.lr.ph:                                           ; preds = %0
  %2 = trunc i32 %s to i8, !dbg !269
  br label %3, !dbg !268

; <label>:3                                       ; preds = %3, %.lr.ph
  %a.02 = phi i8* [ %dst, %.lr.ph ], [ %5, %3 ]
  %.01 = phi i64 [ %count, %.lr.ph ], [ %4, %3 ]
  %4 = add i64 %.01, -1, !dbg !268
  %5 = getelementptr inbounds i8* %a.02, i64 1, !dbg !269
  store volatile i8 %2, i8* %a.02, align 1, !dbg !269, !tbaa !245
  %6 = icmp eq i64 %4, 0, !dbg !268
  br i1 %6, label %._crit_edge, label %3, !dbg !268

._crit_edge:                                      ; preds = %3, %0
  ret i8* %dst, !dbg !270
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

!llvm.dbg.cu = !{!0, !12, !24, !34, !47, !58, !70, !88, !102, !116}
!llvm.module.flags = !{!131, !132}
!llvm.ident = !{!133, !133, !133, !133, !133, !133, !133, !133, !133, !133}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ 
!1 = metadata !{metadata !"sum.c", metadata !"/home/klee/klee_src/examples/sum"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !9}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"print_all_combinations_and_sum", metadata !"print_all_combinations_and_sum", metadata !"", i32 4, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, i32)*
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/klee/klee_src/examples/sum/sum.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8, metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 54, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 54} ; [ DW_TAG_subprogram ] 
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8}
!12 = metadata !{i32 786449, metadata !13, i32 1, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !14, metadata !2, metadata !2, metadata !""} ; [
!13 = metadata !{metadata !"/home/klee/klee_src/runtime/Intrinsic/klee_choose.c", metadata !"/home/klee/klee_build/klee/runtime/Intrinsic"}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786478, metadata !13, metadata !16, metadata !"klee_choose", metadata !"klee_choose", metadata !"", i32 12, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i64)* @klee_choose, null, null, metadata !21, i32
!16 = metadata !{i32 786473, metadata !13}        ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_choose.c]
!17 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!18 = metadata !{metadata !19, metadata !19}
!19 = metadata !{i32 786454, metadata !13, null, metadata !"uintptr_t", i32 122, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ] [uintptr_t] [line 122, size 0, align 0, offset 0] [from long unsigned int]
!20 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!21 = metadata !{metadata !22, metadata !23}
!22 = metadata !{i32 786689, metadata !15, metadata !"n", metadata !16, i32 16777228, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 12]
!23 = metadata !{i32 786688, metadata !15, metadata !"x", metadata !16, i32 13, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 13]
!24 = metadata !{i32 786449, metadata !25, i32 1, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !26, metadata !2, metadata !2, metadata !""} ; [
!25 = metadata !{metadata !"/home/klee/klee_src/runtime/Intrinsic/klee_div_zero_check.c", metadata !"/home/klee/klee_build/klee/runtime/Intrinsic"}
!26 = metadata !{metadata !27}
!27 = metadata !{i32 786478, metadata !25, metadata !28, metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !"", i32 12, metadata !29, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64)* @klee_div_zero_check, null
!28 = metadata !{i32 786473, metadata !25}        ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_div_zero_check.c]
!29 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !30, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!30 = metadata !{null, metadata !31}
!31 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!32 = metadata !{metadata !33}
!33 = metadata !{i32 786689, metadata !27, metadata !"z", metadata !28, i32 16777228, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 12]
!34 = metadata !{i32 786449, metadata !35, i32 1, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !36, metadata !2, metadata !2, metadata !""} ; [
!35 = metadata !{metadata !"/home/klee/klee_src/runtime/Intrinsic/klee_int.c", metadata !"/home/klee/klee_build/klee/runtime/Intrinsic"}
!36 = metadata !{metadata !37}
!37 = metadata !{i32 786478, metadata !35, metadata !38, metadata !"klee_int", metadata !"klee_int", metadata !"", i32 13, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @klee_int, null, null, metadata !44, i32 13} ; [ 
!38 = metadata !{i32 786473, metadata !35}        ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_int.c]
!39 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !40, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!40 = metadata !{metadata !8, metadata !41}
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!42 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !43} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!43 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!44 = metadata !{metadata !45, metadata !46}
!45 = metadata !{i32 786689, metadata !37, metadata !"name", metadata !38, i32 16777229, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!46 = metadata !{i32 786688, metadata !37, metadata !"x", metadata !38, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!47 = metadata !{i32 786449, metadata !48, i32 1, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !49, metadata !2, metadata !2, metadata !""} ; [
!48 = metadata !{metadata !"/home/klee/klee_src/runtime/Intrinsic/klee_overshift_check.c", metadata !"/home/klee/klee_build/klee/runtime/Intrinsic"}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 786478, metadata !48, metadata !51, metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !"", i32 20, metadata !52, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64, i64)* @klee_overshift_che
!51 = metadata !{i32 786473, metadata !48}        ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_overshift_check.c]
!52 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !53, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!53 = metadata !{null, metadata !54, metadata !54}
!54 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!55 = metadata !{metadata !56, metadata !57}
!56 = metadata !{i32 786689, metadata !50, metadata !"bitWidth", metadata !51, i32 16777236, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bitWidth] [line 20]
!57 = metadata !{i32 786689, metadata !50, metadata !"shift", metadata !51, i32 33554452, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [shift] [line 20]
!58 = metadata !{i32 786449, metadata !59, i32 1, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !60, metadata !2, metadata !2, metadata !""} ; [
!59 = metadata !{metadata !"/home/klee/klee_src/runtime/Intrinsic/klee_range.c", metadata !"/home/klee/klee_build/klee/runtime/Intrinsic"}
!60 = metadata !{metadata !61}
!61 = metadata !{i32 786478, metadata !59, metadata !62, metadata !"klee_range", metadata !"klee_range", metadata !"", i32 13, metadata !63, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i8*)* @klee_range, null, null, metadata !
!62 = metadata !{i32 786473, metadata !59}        ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_range.c]
!63 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !64, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!64 = metadata !{metadata !8, metadata !8, metadata !8, metadata !41}
!65 = metadata !{metadata !66, metadata !67, metadata !68, metadata !69}
!66 = metadata !{i32 786689, metadata !61, metadata !"start", metadata !62, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 13]
!67 = metadata !{i32 786689, metadata !61, metadata !"end", metadata !62, i32 33554445, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [end] [line 13]
!68 = metadata !{i32 786689, metadata !61, metadata !"name", metadata !62, i32 50331661, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!69 = metadata !{i32 786688, metadata !61, metadata !"x", metadata !62, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!70 = metadata !{i32 786449, metadata !71, i32 1, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !72, metadata !2, metadata !2, metadata !""} ; [
!71 = metadata !{metadata !"/home/klee/klee_src/runtime/Intrinsic/memcpy.c", metadata !"/home/klee/klee_build/klee/runtime/Intrinsic"}
!72 = metadata !{metadata !73}
!73 = metadata !{i32 786478, metadata !71, metadata !74, metadata !"memcpy", metadata !"memcpy", metadata !"", i32 12, metadata !75, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memcpy, null, null, metadata !81, i32 12} 
!74 = metadata !{i32 786473, metadata !71}        ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/memcpy.c]
!75 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !76, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!76 = metadata !{metadata !77, metadata !77, metadata !78, metadata !80}
!77 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!78 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !79} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!79 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!80 = metadata !{i32 786454, metadata !71, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!81 = metadata !{metadata !82, metadata !83, metadata !84, metadata !85, metadata !87}
!82 = metadata !{i32 786689, metadata !73, metadata !"destaddr", metadata !74, i32 16777228, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 12]
!83 = metadata !{i32 786689, metadata !73, metadata !"srcaddr", metadata !74, i32 33554444, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 12]
!84 = metadata !{i32 786689, metadata !73, metadata !"len", metadata !74, i32 50331660, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 12]
!85 = metadata !{i32 786688, metadata !73, metadata !"dest", metadata !74, i32 13, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 13]
!86 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!87 = metadata !{i32 786688, metadata !73, metadata !"src", metadata !74, i32 14, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 14]
!88 = metadata !{i32 786449, metadata !89, i32 1, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !90, metadata !2, metadata !2, metadata !""} ; [
!89 = metadata !{metadata !"/home/klee/klee_src/runtime/Intrinsic/memmove.c", metadata !"/home/klee/klee_build/klee/runtime/Intrinsic"}
!90 = metadata !{metadata !91}
!91 = metadata !{i32 786478, metadata !89, metadata !92, metadata !"memmove", metadata !"memmove", metadata !"", i32 12, metadata !93, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memmove, null, null, metadata !96, i32 1
!92 = metadata !{i32 786473, metadata !89}        ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/memmove.c]
!93 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !94, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!94 = metadata !{metadata !77, metadata !77, metadata !78, metadata !95}
!95 = metadata !{i32 786454, metadata !89, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!96 = metadata !{metadata !97, metadata !98, metadata !99, metadata !100, metadata !101}
!97 = metadata !{i32 786689, metadata !91, metadata !"dst", metadata !92, i32 16777228, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 12]
!98 = metadata !{i32 786689, metadata !91, metadata !"src", metadata !92, i32 33554444, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 12]
!99 = metadata !{i32 786689, metadata !91, metadata !"count", metadata !92, i32 50331660, metadata !95, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 12]
!100 = metadata !{i32 786688, metadata !91, metadata !"a", metadata !92, i32 13, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 13]
!101 = metadata !{i32 786688, metadata !91, metadata !"b", metadata !92, i32 14, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 14]
!102 = metadata !{i32 786449, metadata !103, i32 1, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !104, metadata !2, metadata !2, metadata !""} 
!103 = metadata !{metadata !"/home/klee/klee_src/runtime/Intrinsic/mempcpy.c", metadata !"/home/klee/klee_build/klee/runtime/Intrinsic"}
!104 = metadata !{metadata !105}
!105 = metadata !{i32 786478, metadata !103, metadata !106, metadata !"mempcpy", metadata !"mempcpy", metadata !"", i32 11, metadata !107, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @mempcpy, null, null, metadata !110, 
!106 = metadata !{i32 786473, metadata !103}      ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/mempcpy.c]
!107 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !108, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!108 = metadata !{metadata !77, metadata !77, metadata !78, metadata !109}
!109 = metadata !{i32 786454, metadata !103, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!110 = metadata !{metadata !111, metadata !112, metadata !113, metadata !114, metadata !115}
!111 = metadata !{i32 786689, metadata !105, metadata !"destaddr", metadata !106, i32 16777227, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 11]
!112 = metadata !{i32 786689, metadata !105, metadata !"srcaddr", metadata !106, i32 33554443, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 11]
!113 = metadata !{i32 786689, metadata !105, metadata !"len", metadata !106, i32 50331659, metadata !109, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 11]
!114 = metadata !{i32 786688, metadata !105, metadata !"dest", metadata !106, i32 12, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 12]
!115 = metadata !{i32 786688, metadata !105, metadata !"src", metadata !106, i32 13, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 13]
!116 = metadata !{i32 786449, metadata !117, i32 1, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !118, metadata !2, metadata !2, metadata !""} 
!117 = metadata !{metadata !"/home/klee/klee_src/runtime/Intrinsic/memset.c", metadata !"/home/klee/klee_build/klee/runtime/Intrinsic"}
!118 = metadata !{metadata !119}
!119 = metadata !{i32 786478, metadata !117, metadata !120, metadata !"memset", metadata !"memset", metadata !"", i32 11, metadata !121, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, i64)* @memset, null, null, metadata !124, i32
!120 = metadata !{i32 786473, metadata !117}      ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/memset.c]
!121 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !122, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!122 = metadata !{metadata !77, metadata !77, metadata !8, metadata !123}
!123 = metadata !{i32 786454, metadata !117, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!124 = metadata !{metadata !125, metadata !126, metadata !127, metadata !128}
!125 = metadata !{i32 786689, metadata !119, metadata !"dst", metadata !120, i32 16777227, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 11]
!126 = metadata !{i32 786689, metadata !119, metadata !"s", metadata !120, i32 33554443, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 11]
!127 = metadata !{i32 786689, metadata !119, metadata !"count", metadata !120, i32 50331659, metadata !123, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 11]
!128 = metadata !{i32 786688, metadata !119, metadata !"a", metadata !120, i32 12, metadata !129, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 12]
!129 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !130} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!130 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !43} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from char]
!131 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!132 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!133 = metadata !{metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"}
!134 = metadata !{i32 7, i32 0, metadata !4, null}
!135 = metadata !{i32 9, i32 0, metadata !136, null}
!136 = metadata !{i32 786443, metadata !1, metadata !4, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/klee_src/examples/sum/sum.c]
!137 = metadata !{i32 10, i32 0, metadata !138, null}
!138 = metadata !{i32 786443, metadata !1, metadata !136, i32 9, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/klee/klee_src/examples/sum/sum.c]
!139 = metadata !{i32 11, i32 0, metadata !138, null}
!140 = metadata !{i32 12, i32 0, metadata !138, null}
!141 = metadata !{i32 13, i32 0, metadata !138, null}
!142 = metadata !{i32 14, i32 0, metadata !138, null}
!143 = metadata !{i32 15, i32 0, metadata !138, null}
!144 = metadata !{i32 16, i32 0, metadata !138, null}
!145 = metadata !{i32 17, i32 0, metadata !138, null}
!146 = metadata !{i32 18, i32 0, metadata !138, null}
!147 = metadata !{i32 19, i32 0, metadata !138, null}
!148 = metadata !{i32 20, i32 0, metadata !138, null}
!149 = metadata !{i32 22, i32 0, metadata !150, null}
!150 = metadata !{i32 786443, metadata !1, metadata !151, i32 22, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/klee/klee_src/examples/sum/sum.c]
!151 = metadata !{i32 786443, metadata !1, metadata !136, i32 21, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/klee/klee_src/examples/sum/sum.c]
!152 = metadata !{i32 23, i32 0, metadata !153, null}
!153 = metadata !{i32 786443, metadata !1, metadata !154, i32 23, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/klee/klee_src/examples/sum/sum.c]
!154 = metadata !{i32 786443, metadata !1, metadata !150, i32 22, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/klee/klee_src/examples/sum/sum.c]
!155 = metadata !{i32 24, i32 0, metadata !156, null}
!156 = metadata !{i32 786443, metadata !1, metadata !153, i32 23, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/klee/klee_src/examples/sum/sum.c]
!157 = metadata !{i32 25, i32 0, metadata !156, null}
!158 = metadata !{i32 26, i32 0, metadata !156, null}
!159 = metadata !{i32 27, i32 0, metadata !156, null}
!160 = metadata !{i32 28, i32 0, metadata !156, null}
!161 = metadata !{i32 30, i32 0, metadata !162, null}
!162 = metadata !{i32 786443, metadata !1, metadata !163, i32 30, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/klee/klee_src/examples/sum/sum.c]
!163 = metadata !{i32 786443, metadata !1, metadata !153, i32 29, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/klee/klee_src/examples/sum/sum.c]
!164 = metadata !{i32 31, i32 0, metadata !165, null}
!165 = metadata !{i32 786443, metadata !1, metadata !162, i32 30, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/klee/klee_src/examples/sum/sum.c]
!166 = metadata !{i32 32, i32 0, metadata !165, null}
!167 = metadata !{i32 33, i32 0, metadata !165, null}
!168 = metadata !{i32 34, i32 0, metadata !165, null}
!169 = metadata !{i32 35, i32 0, metadata !165, null}
!170 = metadata !{i32 37, i32 0, metadata !171, null}
!171 = metadata !{i32 786443, metadata !1, metadata !172, i32 37, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/klee/klee_src/examples/sum/sum.c]
!172 = metadata !{i32 786443, metadata !1, metadata !162, i32 36, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/klee/klee_src/examples/sum/sum.c]
!173 = metadata !{i32 38, i32 0, metadata !174, null}
!174 = metadata !{i32 786443, metadata !1, metadata !171, i32 37, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/klee/klee_src/examples/sum/sum.c]
!175 = metadata !{i32 39, i32 0, metadata !174, null}
!176 = metadata !{i32 40, i32 0, metadata !174, null}
!177 = metadata !{i32 41, i32 0, metadata !174, null}
!178 = metadata !{i32 42, i32 0, metadata !174, null}
!179 = metadata !{i32 47, i32 0, metadata !180, null}
!180 = metadata !{i32 786443, metadata !1, metadata !150, i32 46, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/klee/klee_src/examples/sum/sum.c]
!181 = metadata !{i32 50, i32 0, metadata !4, null}
!182 = metadata !{i32 57, i32 0, metadata !9, null}
!183 = metadata !{i32 58, i32 0, metadata !9, null} ; [ DW_TAG_imported_module ]
!184 = metadata !{i32 59, i32 0, metadata !9, null}
!185 = metadata !{i32 62, i32 0, metadata !186, null}
!186 = metadata !{i32 786443, metadata !1, metadata !9, i32 62, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/klee/klee_src/examples/sum/sum.c]
!187 = metadata !{i32 62, i32 0, metadata !188, null}
!188 = metadata !{i32 786443, metadata !1, metadata !186, i32 62, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/klee/klee_src/examples/sum/sum.c]
!189 = metadata !{i32 63, i32 0, metadata !190, null}
!190 = metadata !{i32 786443, metadata !1, metadata !9, i32 63, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/klee/klee_src/examples/sum/sum.c]
!191 = metadata !{i32 63, i32 0, metadata !192, null}
!192 = metadata !{i32 786443, metadata !1, metadata !190, i32 63, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/klee/klee_src/examples/sum/sum.c]
!193 = metadata !{i32 64, i32 0, metadata !194, null}
!194 = metadata !{i32 786443, metadata !1, metadata !9, i32 64, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/klee/klee_src/examples/sum/sum.c]
!195 = metadata !{i32 64, i32 0, metadata !196, null}
!196 = metadata !{i32 786443, metadata !1, metadata !194, i32 64, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/klee/klee_src/examples/sum/sum.c]
!197 = metadata !{i32 67, i32 0, metadata !9, null}
!198 = metadata !{i32 68, i32 0, metadata !9, null}
!199 = metadata !{i32 69, i32 0, metadata !9, null}
!200 = metadata !{i32 71, i32 0, metadata !9, null}
!201 = metadata !{i32 14, i32 0, metadata !15, null}
!202 = metadata !{i32 17, i32 0, metadata !203, null}
!203 = metadata !{i32 786443, metadata !13, metadata !15, i32 17, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_choose.c]
!204 = metadata !{metadata !205, metadata !205, i64 0}
!205 = metadata !{metadata !"long", metadata !206, i64 0}
!206 = metadata !{metadata !"omnipotent char", metadata !207, i64 0}
!207 = metadata !{metadata !"Simple C/C++ TBAA"}
!208 = metadata !{i32 18, i32 0, metadata !203, null}
!209 = metadata !{i32 19, i32 0, metadata !15, null}
!210 = metadata !{i32 13, i32 0, metadata !211, null}
!211 = metadata !{i32 786443, metadata !25, metadata !27, i32 13, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_div_zero_check.c]
!212 = metadata !{i32 14, i32 0, metadata !211, null}
!213 = metadata !{i32 15, i32 0, metadata !27, null}
!214 = metadata !{i32 15, i32 0, metadata !37, null}
!215 = metadata !{i32 16, i32 0, metadata !37, null}
!216 = metadata !{metadata !217, metadata !217, i64 0}
!217 = metadata !{metadata !"int", metadata !206, i64 0}
!218 = metadata !{i32 21, i32 0, metadata !219, null}
!219 = metadata !{i32 786443, metadata !48, metadata !50, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_overshift_check.c]
!220 = metadata !{i32 27, i32 0, metadata !221, null}
!221 = metadata !{i32 786443, metadata !48, metadata !219, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_overshift_check.c]
!222 = metadata !{i32 29, i32 0, metadata !50, null}
!223 = metadata !{i32 16, i32 0, metadata !224, null}
!224 = metadata !{i32 786443, metadata !59, metadata !61, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_range.c]
!225 = metadata !{i32 17, i32 0, metadata !224, null}
!226 = metadata !{i32 19, i32 0, metadata !227, null}
!227 = metadata !{i32 786443, metadata !59, metadata !61, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_range.c]
!228 = metadata !{i32 22, i32 0, metadata !229, null}
!229 = metadata !{i32 786443, metadata !59, metadata !227, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_range.c]
!230 = metadata !{i32 25, i32 0, metadata !231, null}
!231 = metadata !{i32 786443, metadata !59, metadata !229, i32 25, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_range.c]
!232 = metadata !{i32 26, i32 0, metadata !233, null}
!233 = metadata !{i32 786443, metadata !59, metadata !231, i32 25, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_range.c]
!234 = metadata !{i32 27, i32 0, metadata !233, null}
!235 = metadata !{i32 28, i32 0, metadata !236, null}
!236 = metadata !{i32 786443, metadata !59, metadata !231, i32 27, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_range.c]
!237 = metadata !{i32 29, i32 0, metadata !236, null}
!238 = metadata !{i32 32, i32 0, metadata !229, null}
!239 = metadata !{i32 34, i32 0, metadata !61, null}
!240 = metadata !{i32 16, i32 0, metadata !73, null}
!241 = metadata !{i32 17, i32 0, metadata !73, null}
!242 = metadata !{metadata !242, metadata !243, metadata !244}
!243 = metadata !{metadata !"llvm.vectorizer.width", i32 1}
!244 = metadata !{metadata !"llvm.vectorizer.unroll", i32 1}
!245 = metadata !{metadata !206, metadata !206, i64 0}
!246 = metadata !{metadata !246, metadata !243, metadata !244}
!247 = metadata !{i32 18, i32 0, metadata !73, null}
!248 = metadata !{i32 16, i32 0, metadata !249, null}
!249 = metadata !{i32 786443, metadata !89, metadata !91, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/memmove.c]
!250 = metadata !{i32 19, i32 0, metadata !251, null}
!251 = metadata !{i32 786443, metadata !89, metadata !91, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/memmove.c]
!252 = metadata !{i32 20, i32 0, metadata !253, null}
!253 = metadata !{i32 786443, metadata !89, metadata !251, i32 19, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/memmove.c]
!254 = metadata !{metadata !254, metadata !243, metadata !244}
!255 = metadata !{metadata !255, metadata !243, metadata !244}
!256 = metadata !{i32 22, i32 0, metadata !257, null}
!257 = metadata !{i32 786443, metadata !89, metadata !251, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/memmove.c]
!258 = metadata !{i32 24, i32 0, metadata !257, null}
!259 = metadata !{i32 23, i32 0, metadata !257, null}
!260 = metadata !{metadata !260, metadata !243, metadata !244}
!261 = metadata !{metadata !261, metadata !243, metadata !244}
!262 = metadata !{i32 28, i32 0, metadata !91, null}
!263 = metadata !{i32 15, i32 0, metadata !105, null}
!264 = metadata !{i32 16, i32 0, metadata !105, null}
!265 = metadata !{metadata !265, metadata !243, metadata !244}
!266 = metadata !{metadata !266, metadata !243, metadata !244}
!267 = metadata !{i32 17, i32 0, metadata !105, null}
!268 = metadata !{i32 13, i32 0, metadata !119, null}
!269 = metadata !{i32 14, i32 0, metadata !119, null}
!270 = metadata !{i32 15, i32 0, metadata !119, null}
