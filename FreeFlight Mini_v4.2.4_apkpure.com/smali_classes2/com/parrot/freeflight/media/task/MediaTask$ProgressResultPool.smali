.class public Lcom/parrot/freeflight/media/task/MediaTask$ProgressResultPool;
.super Ljava/lang/Object;
.source "MediaTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/media/task/MediaTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressResultPool"
.end annotation


# instance fields
.field private final mPool:Landroid/support/v4/util/Pools$SynchronizedPool;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$SynchronizedPool",
            "<",
            "Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    new-instance v0, Landroid/support/v4/util/Pools$SynchronizedPool;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResultPool;->mPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    return-void
.end method


# virtual methods
.method public obtain()Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 230
    iget-object v1, p0, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResultPool;->mPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/support/v4/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;

    .line 231
    .local v0, "progressResult":Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;
    if-eqz v0, :cond_0

    .end local v0    # "progressResult":Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;
    :goto_0
    return-object v0

    .restart local v0    # "progressResult":Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;
    :cond_0
    new-instance v0, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;

    .end local v0    # "progressResult":Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;-><init>(Lcom/parrot/arsdk/armedia/ARMediaObject;F)V

    goto :goto_0
.end method

.method public obtainFrom(Lcom/parrot/arsdk/armedia/ARMediaObject;)Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;
    .locals 2
    .param p1, "mediaObject"    # Lcom/parrot/arsdk/armedia/ARMediaObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 236
    iget-object v1, p0, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResultPool;->mPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/support/v4/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;

    .line 237
    .local v0, "progressResult":Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;
    if-nez v0, :cond_0

    .line 238
    new-instance v0, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;

    .end local v0    # "progressResult":Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;
    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;-><init>(Lcom/parrot/arsdk/armedia/ARMediaObject;F)V

    .line 242
    .restart local v0    # "progressResult":Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;
    :goto_0
    return-object v0

    .line 240
    :cond_0
    iput-object p1, v0, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;->mMediaObject:Lcom/parrot/arsdk/armedia/ARMediaObject;

    goto :goto_0
.end method

.method public recycle(Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;)V
    .locals 1
    .param p1, "result"    # Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 246
    iget-object v0, p0, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResultPool;->mPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 247
    return-void
.end method
