.class public Lcom/parrot/controller/stream/ARStreamPool;
.super Ljava/lang/Object;
.source "ARStreamPool.java"


# instance fields
.field private frameArray:[Lcom/parrot/controller/stream/ARFrame;


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "capacity"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-array v1, p1, [Lcom/parrot/controller/stream/ARFrame;

    iput-object v1, p0, Lcom/parrot/controller/stream/ARStreamPool;->frameArray:[Lcom/parrot/controller/stream/ARFrame;

    .line 15
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 17
    iget-object v1, p0, Lcom/parrot/controller/stream/ARStreamPool;->frameArray:[Lcom/parrot/controller/stream/ARFrame;

    new-instance v2, Lcom/parrot/controller/stream/ARFrame;

    invoke-direct {v2}, Lcom/parrot/controller/stream/ARFrame;-><init>()V

    aput-object v2, v1, v0

    .line 15
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "capacity"    # I
    .param p2, "bufferSize"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-array v1, p1, [Lcom/parrot/controller/stream/ARFrame;

    iput-object v1, p0, Lcom/parrot/controller/stream/ARStreamPool;->frameArray:[Lcom/parrot/controller/stream/ARFrame;

    .line 24
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/parrot/controller/stream/ARStreamPool;->frameArray:[Lcom/parrot/controller/stream/ARFrame;

    new-instance v2, Lcom/parrot/controller/stream/ARFrame;

    invoke-direct {v2, p2}, Lcom/parrot/controller/stream/ARFrame;-><init>(I)V

    aput-object v2, v1, v0

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .prologue
    .line 80
    iget-object v2, p0, Lcom/parrot/controller/stream/ARStreamPool;->frameArray:[Lcom/parrot/controller/stream/ARFrame;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 82
    .local v0, "frame":Lcom/parrot/controller/stream/ARFrame;
    invoke-virtual {v0}, Lcom/parrot/controller/stream/ARFrame;->dispose()V

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "frame":Lcom/parrot/controller/stream/ARFrame;
    :cond_0
    return-void
.end method

.method public getFrameFromData(Lcom/parrot/arsdk/arsal/ARNativeData;)Lcom/parrot/controller/stream/ARFrame;
    .locals 10
    .param p1, "data"    # Lcom/parrot/arsdk/arsal/ARNativeData;

    .prologue
    const/4 v3, 0x0

    .line 61
    const/4 v1, 0x0

    .line 63
    .local v1, "retFrame":Lcom/parrot/controller/stream/ARFrame;
    iget-object v4, p0, Lcom/parrot/controller/stream/ARStreamPool;->frameArray:[Lcom/parrot/controller/stream/ARFrame;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v0, v4, v2

    .line 65
    .local v0, "frame":Lcom/parrot/controller/stream/ARFrame;
    invoke-virtual {v0}, Lcom/parrot/controller/stream/ARFrame;->getData()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/parrot/arsdk/arsal/ARNativeData;->getData()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 67
    move-object v1, v0

    .line 68
    invoke-virtual {v1, v3}, Lcom/parrot/controller/stream/ARFrame;->setAvailable(Z)V

    .line 75
    .end local v0    # "frame":Lcom/parrot/controller/stream/ARFrame;
    :cond_0
    return-object v1

    .line 63
    .restart local v0    # "frame":Lcom/parrot/controller/stream/ARFrame;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getNextFreeFrame()Lcom/parrot/controller/stream/ARFrame;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 32
    const/4 v1, 0x0

    .line 34
    .local v1, "freeFrame":Lcom/parrot/controller/stream/ARFrame;
    iget-object v4, p0, Lcom/parrot/controller/stream/ARStreamPool;->frameArray:[Lcom/parrot/controller/stream/ARFrame;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v0, v4, v2

    .line 36
    .local v0, "frame":Lcom/parrot/controller/stream/ARFrame;
    invoke-virtual {v0}, Lcom/parrot/controller/stream/ARFrame;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 38
    move-object v1, v0

    .line 39
    invoke-virtual {v1, v3}, Lcom/parrot/controller/stream/ARFrame;->setAvailable(Z)V

    .line 46
    .end local v0    # "frame":Lcom/parrot/controller/stream/ARFrame;
    :cond_0
    return-object v1

    .line 34
    .restart local v0    # "frame":Lcom/parrot/controller/stream/ARFrame;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getNextFreeFrame(I)Lcom/parrot/controller/stream/ARFrame;
    .locals 1
    .param p1, "minCapacity"    # I

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/parrot/controller/stream/ARStreamPool;->getNextFreeFrame()Lcom/parrot/controller/stream/ARFrame;

    move-result-object v0

    .line 52
    .local v0, "freeFrame":Lcom/parrot/controller/stream/ARFrame;
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0, p1}, Lcom/parrot/controller/stream/ARFrame;->ensureCapacityIsAtLeast(I)Z

    .line 56
    :cond_0
    return-object v0
.end method
