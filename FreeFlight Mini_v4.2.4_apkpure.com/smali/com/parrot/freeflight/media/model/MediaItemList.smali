.class public Lcom/parrot/freeflight/media/model/MediaItemList;
.super Lcom/parrot/freeflight/media/model/ItemList;
.source "MediaItemList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/media/model/ItemList",
        "<",
        "Lcom/parrot/freeflight/media/model/MediaItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/media/model/ItemList$IProvider;Lcom/parrot/freeflight/util/observer/IObserver;[Lcom/parrot/freeflight/media/model/MediaItem;)V
    .locals 0
    .param p1, "itemProvider"    # Lcom/parrot/freeflight/media/model/ItemList$IProvider;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "observer"    # Lcom/parrot/freeflight/util/observer/IObserver;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "items"    # [Lcom/parrot/freeflight/media/model/MediaItem;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/parrot/freeflight/media/model/ItemList;-><init>(Lcom/parrot/freeflight/media/model/ItemList$IProvider;Lcom/parrot/freeflight/util/observer/IObserver;[Ljava/lang/Object;)V

    .line 13
    return-void
.end method


# virtual methods
.method public getItem(Lcom/parrot/arsdk/armedia/ARMediaObject;)Lcom/parrot/freeflight/media/model/MediaItem;
    .locals 5
    .param p1, "object"    # Lcom/parrot/arsdk/armedia/ARMediaObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 17
    iget-object v1, p0, Lcom/parrot/freeflight/media/model/MediaItemList;->mItems:[Ljava/lang/Object;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 18
    iget-object v1, p0, Lcom/parrot/freeflight/media/model/MediaItemList;->mItems:[Ljava/lang/Object;

    check-cast v1, [Lcom/parrot/freeflight/media/model/MediaItem;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 19
    .local v0, "item":Lcom/parrot/freeflight/media/model/MediaItem;
    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/media/model/MediaItem;->contains(Lcom/parrot/arsdk/armedia/ARMediaObject;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 24
    .end local v0    # "item":Lcom/parrot/freeflight/media/model/MediaItem;
    :goto_1
    return-object v0

    .line 18
    .restart local v0    # "item":Lcom/parrot/freeflight/media/model/MediaItem;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 24
    .end local v0    # "item":Lcom/parrot/freeflight/media/model/MediaItem;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
