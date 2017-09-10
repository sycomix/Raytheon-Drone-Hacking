.class public Lcom/parrot/arsdk/arcommands/ARCommandsVersion;
.super Ljava/lang/Object;
.source "ARCommandsVersion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static compareVersions(Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;
    .locals 2
    .param p0, "v1"    # Ljava/lang/String;
    .param p1, "v2"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {p0, p1}, Lcom/parrot/arsdk/arcommands/ARCommandsVersion;->nativeCompareVersionsCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 78
    .local v0, "nativeRes":I
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;->SAME_VERSIONS:Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;

    .line 79
    .local v1, "res":Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;
    if-lez v0, :cond_1

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;->V1_NEWER:Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;

    .line 81
    :cond_0
    :goto_0
    return-object v1

    .line 80
    :cond_1
    if-gez v0, :cond_0

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;->V2_NEWER:Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;

    goto :goto_0
.end method

.method public static compareVersions([I[I)Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;
    .locals 13
    .param p0, "v1"    # [I
    .param p1, "v2"    # [I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x4

    const/4 v4, 0x0

    .line 95
    new-array v11, v1, [I

    .line 96
    .local v11, "v1_padded":[I
    new-array v12, v1, [I

    .line 99
    .local v12, "v2_padded":[I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v1, :cond_2

    .line 101
    array-length v0, p0

    if-ge v8, v0, :cond_0

    aget v0, p0, v8

    :goto_1
    aput v0, v11, v8

    .line 102
    array-length v0, p1

    if-ge v8, v0, :cond_1

    aget v0, p1, v8

    :goto_2
    aput v0, v12, v8

    .line 99
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    move v0, v4

    .line 101
    goto :goto_1

    :cond_1
    move v0, v4

    .line 102
    goto :goto_2

    .line 105
    :cond_2
    aget v0, v11, v4

    aget v1, v11, v5

    aget v2, v11, v6

    aget v3, v11, v7

    aget v4, v12, v4

    aget v5, v12, v5

    aget v6, v12, v6

    aget v7, v12, v7

    invoke-static/range {v0 .. v7}, Lcom/parrot/arsdk/arcommands/ARCommandsVersion;->nativeCompareVersions(IIIIIIII)I

    move-result v9

    .line 107
    .local v9, "nativeRes":I
    sget-object v10, Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;->SAME_VERSIONS:Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;

    .line 108
    .local v10, "res":Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;
    if-lez v9, :cond_4

    sget-object v10, Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;->V1_NEWER:Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;

    .line 110
    :cond_3
    :goto_3
    return-object v10

    .line 109
    :cond_4
    if-gez v9, :cond_3

    sget-object v10, Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;->V2_NEWER:Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;

    goto :goto_3
.end method

.method public static native getVersionCode()Ljava/lang/String;
.end method

.method public static native getVersionCodeAsInt()[I
.end method

.method private static native nativeCompareVersions(IIIIIIII)I
.end method

.method private static native nativeCompareVersionsCode(Ljava/lang/String;Ljava/lang/String;)I
.end method
