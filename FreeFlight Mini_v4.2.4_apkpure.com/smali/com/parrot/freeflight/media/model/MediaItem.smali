.class public Lcom/parrot/freeflight/media/model/MediaItem;
.super Lcom/parrot/freeflight/util/observer/SuspendableObservable;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/util/observer/SuspendableObservable",
        "<",
        "Lcom/parrot/freeflight/media/model/MediaItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mClosed:Z

.field protected final mMediaObject:Lcom/parrot/arsdk/armedia/ARMediaObject;


# direct methods
.method public constructor <init>(Lcom/parrot/arsdk/armedia/ARMediaObject;)V
    .locals 0
    .param p1, "media"    # Lcom/parrot/arsdk/armedia/ARMediaObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/parrot/freeflight/util/observer/SuspendableObservable;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/parrot/freeflight/media/model/MediaItem;->mMediaObject:Lcom/parrot/arsdk/armedia/ARMediaObject;

    .line 23
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/parrot/freeflight/media/model/MediaItem;->mClosed:Z

    if-nez v0, :cond_0

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/media/model/MediaItem;->mClosed:Z

    .line 31
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/model/MediaItem;->doClose()V

    .line 32
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/model/MediaItem;->notifyChange()V

    .line 33
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/model/MediaItem;->clearObservers()V

    .line 35
    :cond_0
    return-void
.end method

.method public contains(Lcom/parrot/arsdk/armedia/ARMediaObject;)Z
    .locals 1
    .param p1, "media"    # Lcom/parrot/arsdk/armedia/ARMediaObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 75
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/MediaItem;->mMediaObject:Lcom/parrot/arsdk/armedia/ARMediaObject;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected doClose()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public getDate()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/MediaItem;->mMediaObject:Lcom/parrot/arsdk/armedia/ARMediaObject;

    invoke-virtual {v0}, Lcom/parrot/arsdk/armedia/ARMediaObject;->getDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaObject()Lcom/parrot/arsdk/armedia/ARMediaObject;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/MediaItem;->mMediaObject:Lcom/parrot/arsdk/armedia/ARMediaObject;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/MediaItem;->mMediaObject:Lcom/parrot/arsdk/armedia/ARMediaObject;

    iget-object v0, v0, Lcom/parrot/arsdk/armedia/ARMediaObject;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/MediaItem;->mMediaObject:Lcom/parrot/arsdk/armedia/ARMediaObject;

    invoke-virtual {v0}, Lcom/parrot/arsdk/armedia/ARMediaObject;->getFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/MediaItem;->mMediaObject:Lcom/parrot/arsdk/armedia/ARMediaObject;

    iget-object v0, v0, Lcom/parrot/arsdk/armedia/ARMediaObject;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/MediaItem;->mMediaObject:Lcom/parrot/arsdk/armedia/ARMediaObject;

    iget-object v0, v0, Lcom/parrot/arsdk/armedia/ARMediaObject;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getRunDate()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/MediaItem;->mMediaObject:Lcom/parrot/arsdk/armedia/ARMediaObject;

    invoke-virtual {v0}, Lcom/parrot/arsdk/armedia/ARMediaObject;->getRunDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()D
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/MediaItem;->mMediaObject:Lcom/parrot/arsdk/armedia/ARMediaObject;

    invoke-virtual {v0}, Lcom/parrot/arsdk/armedia/ARMediaObject;->getSize()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public getThumbnail()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/MediaItem;->mMediaObject:Lcom/parrot/arsdk/armedia/ARMediaObject;

    iget-object v0, v0, Lcom/parrot/arsdk/armedia/ARMediaObject;->thumbnail:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbnail(Lcom/parrot/freeflight/util/observer/IObserver;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "observer"    # Lcom/parrot/freeflight/util/observer/IObserver;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/MediaItem;->mMediaObject:Lcom/parrot/arsdk/armedia/ARMediaObject;

    iget-object v0, v0, Lcom/parrot/arsdk/armedia/ARMediaObject;->thumbnail:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/media/model/MediaItem;->registerObserver(Lcom/parrot/freeflight/util/observer/IObserver;)V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/MediaItem;->mMediaObject:Lcom/parrot/arsdk/armedia/ARMediaObject;

    iget-object v0, v0, Lcom/parrot/arsdk/armedia/ARMediaObject;->thumbnail:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/MediaItem;->mMediaObject:Lcom/parrot/arsdk/armedia/ARMediaObject;

    invoke-virtual {v0}, Lcom/parrot/arsdk/armedia/ARMediaObject;->getUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/parrot/freeflight/media/model/MediaItem;->mClosed:Z

    return v0
.end method

.method public isPhoto()Z
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/MediaItem;->mMediaObject:Lcom/parrot/arsdk/armedia/ARMediaObject;

    invoke-virtual {v0}, Lcom/parrot/arsdk/armedia/ARMediaObject;->getMediaType()Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    move-result-object v0

    sget-object v1, Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;->MEDIA_TYPE_PHOTO:Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideo()Z
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/MediaItem;->mMediaObject:Lcom/parrot/arsdk/armedia/ARMediaObject;

    invoke-virtual {v0}, Lcom/parrot/arsdk/armedia/ARMediaObject;->getMediaType()Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    move-result-object v0

    sget-object v1, Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;->MEDIA_TYPE_VIDEO:Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
