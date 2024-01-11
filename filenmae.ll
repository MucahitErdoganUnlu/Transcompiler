; ModuleID = 'advcalc2ir'
declare i32 @printf(i8*, ...)
@print.str = constant [4 x i8] c"%d\0A\00"

define i32 @left_rotation(i32 %a0, i32 %a1) {
	%a3 = alloca i32
	%a4 = alloca i32
	store i32 %a0, i32* %a3
	store i32 %a1, i32* %a4
	%a5 = load i32, i32* %a3
	%a6 = load i32, i32* %a4
	%a7 = shl i32 %a5, %a6
	%a8 = load i32, i32* %a3
	%a9 = load i32, i32* %a4
	%a10 = sub nsw i32 32, %a9
	%a11 = lshr i32 %a8, %a10
	%a12 = or i32 %a7, %a11
	ret i32 %a12
}

define i32 @right_rotation(i32 %a0, i32 %a1) {
	%a3 = alloca i32
	%a4 = alloca i32
	store i32 %a0, i32* %a3
	store i32 %a1, i32* %a4
	%a5 = load i32, i32* %a3
	%a6 = load i32, i32* %a4
	%a7 = lshr i32 %a5, %a6
	%a8 = load i32, i32* %a3
	%a9 = load i32, i32* %a4
	%a10 = sub nsw i32 32, %a9
	%a11 = shl i32 %a8, %a10
	%a12 = or i32 %a7, %a11
	ret i32 %a12
}

define i32 @main() {
	%a = mul i32 7, 2
	%b = sdiv i32 %a, 3
	%c = srem i32 %b, 3
	call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @print.str, i32 0, i32 0), i32 %c )
	ret i32 0
}
