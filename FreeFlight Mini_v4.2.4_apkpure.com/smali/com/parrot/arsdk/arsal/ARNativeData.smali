.class public Lcom/parrot/arsdk/arsal/ARNativeData;
.super Ljava/lang/Object;
.source "ARNativeData.java"


# static fields
.field public static final DEFAULT_SIZE:I = 0x80

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected capacity:I

.field private constructorCallStack:Ljava/lang/Throwable;

.field protected pointer:J

.field protected used:I

.field protected valid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/parrot/arsdk/arsal/ARNativeData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/arsal/ARNativeData;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 108
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/parrot/arsdk/arsal/ARNativeData;-><init>(I)V

    .line 109
    return-void
.end method

.method public constructor <init>(I)V
    .locals 5
    .param p1, "size"    # I

    .prologue
    const/4 v4, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/arsal/ARNativeData;->allocateData(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->pointer:J

    .line 93
    iput v4, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->capacity:I

    .line 94
    iput-boolean v4, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->valid:Z

    .line 95
    iget-wide v0, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->pointer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 96
    iput p1, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->capacity:I

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->valid:Z

    .line 99
    :cond_0
    iput v4, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->used:I

    .line 100
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->constructorCallStack:Ljava/lang/Throwable;

    .line 101
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 7
    .param p1, "data"    # J
    .param p3, "dataSize"    # I

    .prologue
    .line 132
    invoke-direct {p0, p3}, Lcom/parrot/arsdk/arsal/ARNativeData;-><init>(I)V

    .line 133
    iget-wide v1, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->pointer:J

    iget v3, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->capacity:I

    move-object v0, p0

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/parrot/arsdk/arsal/ARNativeData;->copyData(JIJI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/parrot/arsdk/arsal/ARNativeData;->dispose()V

    .line 136
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/parrot/arsdk/arsal/ARNativeData;)V
    .locals 7
    .param p1, "data"    # Lcom/parrot/arsdk/arsal/ARNativeData;

    .prologue
    .line 118
    invoke-virtual {p1}, Lcom/parrot/arsdk/arsal/ARNativeData;->getDataSize()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/parrot/arsdk/arsal/ARNativeData;-><init>(I)V

    .line 119
    iget-wide v1, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->pointer:J

    iget v3, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->capacity:I

    invoke-virtual {p1}, Lcom/parrot/arsdk/arsal/ARNativeData;->getData()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/arsal/ARNativeData;->getDataSize()I

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/parrot/arsdk/arsal/ARNativeData;->copyData(JIJI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/parrot/arsdk/arsal/ARNativeData;->dispose()V

    .line 122
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/parrot/arsdk/arsal/ARNativeData;I)V
    .locals 8
    .param p1, "data"    # Lcom/parrot/arsdk/arsal/ARNativeData;
    .param p2, "capacity"    # I

    .prologue
    const/4 v4, 0x0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    invoke-virtual {p1}, Lcom/parrot/arsdk/arsal/ARNativeData;->getDataSize()I

    move-result v7

    .line 148
    .local v7, "totalSize":I
    if-le p2, v7, :cond_0

    .line 149
    move v7, p2

    .line 151
    :cond_0
    invoke-direct {p0, v7}, Lcom/parrot/arsdk/arsal/ARNativeData;->allocateData(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->pointer:J

    .line 152
    iput v4, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->capacity:I

    .line 153
    iput-boolean v4, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->valid:Z

    .line 154
    iget-wide v0, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->pointer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 155
    iput v7, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->capacity:I

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->valid:Z

    .line 158
    :cond_1
    iput v4, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->used:I

    .line 159
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->constructorCallStack:Ljava/lang/Throwable;

    .line 160
    iget-wide v1, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->pointer:J

    iget v3, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->capacity:I

    invoke-virtual {p1}, Lcom/parrot/arsdk/arsal/ARNativeData;->getData()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/arsal/ARNativeData;->getDataSize()I

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/parrot/arsdk/arsal/ARNativeData;->copyData(JIJI)Z

    move-result v0

    if-nez v0, :cond_2

    .line 161
    invoke-virtual {p0}, Lcom/parrot/arsdk/arsal/ARNativeData;->dispose()V

    .line 163
    :cond_2
    return-void
.end method

.method private native allocateData(I)J
.end method

.method private native copyData(JIJI)Z
.end method

.method private native copyJavaData(JI[BI)Z
.end method

.method private native freeData(J)V
.end method

.method private native generateByteArray(JII)[B
.end method

.method private native reallocateData(JI)J
.end method


# virtual methods
.method public copyByteData([BI)Z
    .locals 7
    .param p1, "src"    # [B
    .param p2, "dataSize"    # I

    .prologue
    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->valid:Z

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->pointer:J

    iget v4, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->capacity:I

    move-object v1, p0

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/parrot/arsdk/arsal/ARNativeData;->copyJavaData(JI[BI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    invoke-virtual {p0, p2}, Lcom/parrot/arsdk/arsal/ARNativeData;->setUsedSize(I)Z

    .line 275
    const/4 v0, 0x1

    .line 277
    :cond_0
    return v0
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 285
    iget-boolean v0, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->valid:Z

    if-eqz v0, :cond_0

    .line 286
    iget-wide v0, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->pointer:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arsal/ARNativeData;->freeData(J)V

    .line 287
    :cond_0
    iput-boolean v2, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->valid:Z

    .line 288
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->pointer:J

    .line 289
    iput v2, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->capacity:I

    .line 290
    iput v2, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->used:I

    .line 291
    return-void
.end method

.method public ensureCapacityIsAtLeast(I)Z
    .locals 6
    .param p1, "minimumCapacity"    # I

    .prologue
    .line 302
    const/4 v2, 0x0

    .line 303
    .local v2, "retVal":Z
    const-wide/16 v0, 0x0

    .line 305
    .local v0, "newPointer":J
    iget v3, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->capacity:I

    if-lt v3, p1, :cond_1

    .line 307
    const/4 v2, 0x1

    .line 321
    :cond_0
    :goto_0
    return v2

    .line 311
    :cond_1
    iget-wide v4, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->pointer:J

    invoke-direct {p0, v4, v5, p1}, Lcom/parrot/arsdk/arsal/ARNativeData;->reallocateData(JI)J

    move-result-wide v0

    .line 312
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-eqz v3, :cond_0

    .line 314
    iput p1, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->capacity:I

    .line 315
    iput-wide v0, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->pointer:J

    .line 316
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 171
    :try_start_0
    iget-boolean v0, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->valid:Z

    if-eqz v0, :cond_0

    .line 172
    sget-object v0, Lcom/parrot/arsdk/arsal/ARNativeData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Finalize error -> dispose () was not called !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->constructorCallStack:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    invoke-virtual {p0}, Lcom/parrot/arsdk/arsal/ARNativeData;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 179
    return-void

    .line 177
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getByteData()[B
    .locals 4

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->valid:Z

    if-eqz v0, :cond_0

    .line 260
    iget-wide v0, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->pointer:J

    iget v2, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->capacity:I

    iget v3, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->used:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/parrot/arsdk/arsal/ARNativeData;->generateByteArray(JII)[B

    move-result-object v0

    .line 261
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCapacity()I
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->valid:Z

    if-eqz v0, :cond_0

    .line 226
    iget v0, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->capacity:I

    .line 227
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getData()J
    .locals 2

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->valid:Z

    if-eqz v0, :cond_0

    .line 237
    iget-wide v0, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->pointer:J

    .line 238
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getDataSize()I
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->valid:Z

    if-eqz v0, :cond_0

    .line 248
    iget v0, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->used:I

    .line 249
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->valid:Z

    return v0
.end method

.method public setUsedSize(I)Z
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->valid:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->capacity:I

    if-le p1, v0, :cond_1

    .line 214
    :cond_0
    const/4 v0, 0x0

    .line 216
    :goto_0
    return v0

    .line 215
    :cond_1
    iput p1, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->used:I

    .line 216
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " { Valid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->valid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | Used/Capacity (bytes) : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->used:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->capacity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | C Pointer : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/parrot/arsdk/arsal/ARNativeData;->pointer:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
