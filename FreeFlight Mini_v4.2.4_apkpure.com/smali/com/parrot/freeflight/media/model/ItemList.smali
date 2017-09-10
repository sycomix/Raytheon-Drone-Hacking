.class public abstract Lcom/parrot/freeflight/media/model/ItemList;
.super Ljava/lang/Object;
.source "ItemList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/media/model/ItemList$IProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mClosed:Z

.field protected final mItems:[Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field protected final mMediaListProvider:Lcom/parrot/freeflight/media/model/ItemList$IProvider;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mObserver:Lcom/parrot/freeflight/util/observer/IObserver;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/media/model/ItemList$IProvider;Lcom/parrot/freeflight/util/observer/IObserver;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "itemProvider"    # Lcom/parrot/freeflight/media/model/ItemList$IProvider;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "observer"    # Lcom/parrot/freeflight/util/observer/IObserver;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/media/model/ItemList$IProvider;",
            "Lcom/parrot/freeflight/util/observer/IObserver;",
            "[TT;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/parrot/freeflight/media/model/ItemList;, "Lcom/parrot/freeflight/media/model/ItemList<TT;>;"
    .local p3, "items":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/parrot/freeflight/media/model/ItemList;->mMediaListProvider:Lcom/parrot/freeflight/media/model/ItemList$IProvider;

    .line 69
    iput-object p2, p0, Lcom/parrot/freeflight/media/model/ItemList;->mObserver:Lcom/parrot/freeflight/util/observer/IObserver;

    .line 70
    iput-object p3, p0, Lcom/parrot/freeflight/media/model/ItemList;->mItems:[Ljava/lang/Object;

    .line 71
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 77
    .local p0, "this":Lcom/parrot/freeflight/media/model/ItemList;, "Lcom/parrot/freeflight/media/model/ItemList<TT;>;"
    iget-boolean v0, p0, Lcom/parrot/freeflight/media/model/ItemList;->mClosed:Z

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/media/model/ItemList;->mClosed:Z

    .line 79
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/ItemList;->mObserver:Lcom/parrot/freeflight/util/observer/IObserver;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/ItemList;->mMediaListProvider:Lcom/parrot/freeflight/media/model/ItemList$IProvider;

    iget-object v1, p0, Lcom/parrot/freeflight/media/model/ItemList;->mObserver:Lcom/parrot/freeflight/util/observer/IObserver;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/media/model/ItemList$IProvider;->unregisterItemListObserver(Lcom/parrot/freeflight/util/observer/IObserver;)V

    .line 83
    :cond_0
    return-void
.end method

.method public contains(II)Z
    .locals 5
    .param p1, "startPos"    # I
    .param p2, "amount"    # I

    .prologue
    .line 133
    .local p0, "this":Lcom/parrot/freeflight/media/model/ItemList;, "Lcom/parrot/freeflight/media/model/ItemList<TT;>;"
    iget-object v4, p0, Lcom/parrot/freeflight/media/model/ItemList;->mItems:[Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 134
    const/4 v0, 0x1

    .line 135
    .local v0, "contains":Z
    add-int v1, p1, p2

    .line 136
    .local v1, "endPos":I
    iget-object v4, p0, Lcom/parrot/freeflight/media/model/ItemList;->mItems:[Ljava/lang/Object;

    array-length v3, v4

    .line 137
    .local v3, "length":I
    move v2, p1

    .line 138
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    if-ge v2, v1, :cond_2

    if-eqz v0, :cond_2

    .line 139
    iget-object v4, p0, Lcom/parrot/freeflight/media/model/ItemList;->mItems:[Ljava/lang/Object;

    aget-object v4, v4, v2

    if-nez v4, :cond_0

    .line 140
    const/4 v0, 0x0

    .line 142
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    .end local v0    # "contains":Z
    .end local v1    # "endPos":I
    .end local v2    # "i":I
    .end local v3    # "length":I
    :cond_1
    const/4 v0, 0x0

    :cond_2
    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "idx"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lcom/parrot/freeflight/media/model/ItemList;, "Lcom/parrot/freeflight/media/model/ItemList<TT;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/ItemList;->mItems:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/ItemList;->mItems:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 108
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItems()[Ljava/lang/Object;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lcom/parrot/freeflight/media/model/ItemList;, "Lcom/parrot/freeflight/media/model/ItemList<TT;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/ItemList;->mItems:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/ItemList;->mItems:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/parrot/freeflight/media/model/ItemList;->mItems:[Ljava/lang/Object;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 91
    .local p0, "this":Lcom/parrot/freeflight/media/model/ItemList;, "Lcom/parrot/freeflight/media/model/ItemList<TT;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/ItemList;->mItems:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/ItemList;->mItems:[Ljava/lang/Object;

    array-length v0, v0

    .line 94
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
