.class public Lcom/parrot/arsdk/arutils/ARUtilsFileSystem;
.super Ljava/lang/Object;
.source "ARUtilsFileSystem.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 131
    invoke-static {}, Lcom/parrot/arsdk/arutils/ARUtilsFileSystem;->nativeStaticInit()Z

    .line 132
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeGetFileSize(Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/arutils/ARUtilsException;
        }
    .end annotation
.end method

.method private native nativeGetFreeSpace(Ljava/lang/String;)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/arutils/ARUtilsException;
        }
    .end annotation
.end method

.method private native nativeRemoveDir(Ljava/lang/String;)I
.end method

.method private native nativeRemoveFile(Ljava/lang/String;)I
.end method

.method private native nativeRename(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native nativeStaticInit()Z
.end method


# virtual methods
.method public getFileSize(Ljava/lang/String;)J
    .locals 2
    .param p1, "namePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/arutils/ARUtilsException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/arutils/ARUtilsFileSystem;->nativeGetFileSize(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFreeSpace(Ljava/lang/String;)D
    .locals 2
    .param p1, "localPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/arutils/ARUtilsException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/arutils/ARUtilsFileSystem;->nativeGetFreeSpace(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public removeDir(Ljava/lang/String;)V
    .locals 3
    .param p1, "localPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/arutils/ARUtilsException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/arutils/ARUtilsFileSystem;->nativeRemoveDir(Ljava/lang/String;)I

    move-result v1

    .line 109
    .local v1, "result":I
    invoke-static {v1}, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    .line 111
    .local v0, "error":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    sget-object v2, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-eq v0, v2, :cond_0

    .line 113
    new-instance v2, Lcom/parrot/arsdk/arutils/ARUtilsException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/arutils/ARUtilsException;-><init>(Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;)V

    throw v2

    .line 115
    :cond_0
    return-void
.end method

.method public removeFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "localPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/arutils/ARUtilsException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/arutils/ARUtilsFileSystem;->nativeRemoveFile(Ljava/lang/String;)I

    move-result v1

    .line 91
    .local v1, "result":I
    invoke-static {v1}, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    .line 93
    .local v0, "error":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    sget-object v2, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-eq v0, v2, :cond_0

    .line 95
    new-instance v2, Lcom/parrot/arsdk/arutils/ARUtilsException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/arutils/ARUtilsException;-><init>(Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;)V

    throw v2

    .line 97
    :cond_0
    return-void
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "oldName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/arutils/ARUtilsException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/parrot/arsdk/arutils/ARUtilsFileSystem;->nativeRename(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 73
    .local v1, "result":I
    invoke-static {v1}, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v0

    .line 75
    .local v0, "error":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    sget-object v2, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-eq v0, v2, :cond_0

    .line 77
    new-instance v2, Lcom/parrot/arsdk/arutils/ARUtilsException;

    invoke-direct {v2, v0}, Lcom/parrot/arsdk/arutils/ARUtilsException;-><init>(Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;)V

    throw v2

    .line 79
    :cond_0
    return-void
.end method
