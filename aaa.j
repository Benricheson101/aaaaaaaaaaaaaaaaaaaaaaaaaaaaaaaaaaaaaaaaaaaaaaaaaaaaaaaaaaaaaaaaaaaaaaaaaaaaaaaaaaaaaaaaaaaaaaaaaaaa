; krakatau-assemble aaa.j && java aaa

.class public aaa
.super java/lang/Object

.method public static main : ([Ljava/lang/String;)V
    .limit stack 2
    .limit locals 1

    LAAA:
        getstatic java/lang/System out Ljava/io/PrintStream;
        ldc "a"
        invokevirtual java/io/PrintStream print (Ljava/lang/String;)V
        goto LAAA
    return
.end method
