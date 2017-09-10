.class public Lcom/parrot/arsdk/arsal/ARSALPrint;
.super Ljava/lang/Object;
.source "ARSALPrint.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 134
    sget-object v0, Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;->ARSAL_PRINT_DEBUG:Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;

    invoke-static {v0, p0, p1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->print(Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 104
    sget-object v0, Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;->ARSAL_PRINT_DEBUG:Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->print(Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 144
    sget-object v0, Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;->ARSAL_PRINT_ERROR:Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;

    invoke-static {v0, p0, p1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->print(Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 114
    sget-object v0, Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;->ARSAL_PRINT_ERROR:Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->print(Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public static getMinimumLogLevel()Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;
    .locals 2

    .prologue
    .line 57
    invoke-static {}, Lcom/parrot/arsdk/arsal/ARSALPrint;->nativeGetMinLevel()I

    move-result v0

    .line 58
    .local v0, "i_val":I
    invoke-static {v0}, Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;

    move-result-object v1

    .line 59
    .local v1, "ret":Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;
    return-object v1
.end method

.method private static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 64
    if-nez p0, :cond_0

    .line 66
    const-string v3, ""

    .line 84
    :goto_0
    return-object v3

    .line 71
    :cond_0
    move-object v2, p0

    .line 72
    .local v2, "t":Ljava/lang/Throwable;
    :goto_1
    if-eqz v2, :cond_2

    .line 74
    instance-of v3, v2, Ljava/net/UnknownHostException;

    if-eqz v3, :cond_1

    .line 76
    const-string v3, ""

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_1

    .line 81
    :cond_2
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 82
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 83
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 84
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 129
    sget-object v0, Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;->ARSAL_PRINT_INFO:Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;

    invoke-static {v0, p0, p1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->print(Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 99
    sget-object v0, Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;->ARSAL_PRINT_INFO:Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->print(Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method private static native nativeGetMinLevel()I
.end method

.method private static native nativePrint(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeSetMinLevel(I)Z
.end method

.method public static print(Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "level"    # Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;->getValue()I

    move-result v0

    invoke-static {v0, p1, p2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->nativePrint(ILjava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public static setMinimumLogLevel(Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;)Z
    .locals 1
    .param p0, "level"    # Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/arsal/ARSALPrint;->nativeSetMinLevel(I)Z

    move-result v0

    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 119
    sget-object v0, Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;->ARSAL_PRINT_VERBOSE:Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;

    invoke-static {v0, p0, p1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->print(Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 89
    sget-object v0, Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;->ARSAL_PRINT_VERBOSE:Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->print(Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 139
    sget-object v0, Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;->ARSAL_PRINT_WARNING:Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;

    invoke-static {v0, p0, p1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->print(Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 109
    sget-object v0, Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;->ARSAL_PRINT_WARNING:Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->print(Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 124
    sget-object v0, Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;->ARSAL_PRINT_FATAL:Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;

    invoke-static {v0, p0, p1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->print(Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 94
    sget-object v0, Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;->ARSAL_PRINT_FATAL:Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->print(Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method
