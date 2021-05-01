@.str = private unnamed_addr constant [2 x i8] c"a\00"

declare i32 @printf(i8* nocapture) nounwind

define void @main() {
entry:
  br label %loop

loop:
  call i32 @printf(i8* getelementptr ([2 x i8],[2 x i8]* @.str, i64 0, i64 0))
  br label %loop
}

; vim:ft=llvm
