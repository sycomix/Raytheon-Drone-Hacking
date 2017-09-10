.class Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaFilter;
.super Landroid/widget/Filter;
.source "DroneMemoryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaFilter"
.end annotation


# instance fields
.field private final adapterRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private filterType:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    .prologue
    .line 343
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 341
    sget-object v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;->NONE:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaFilter;->filterType:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    .line 344
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaFilter;->adapterRef:Ljava/lang/ref/WeakReference;

    .line 345
    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaFilter;)Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaFilter;

    .prologue
    .line 338
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaFilter;->filterType:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    return-object v0
.end method

.method static synthetic access$102(Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaFilter;Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;)Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaFilter;
    .param p1, "x1"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaFilter;->filterType:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    return-object p1
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 9
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 349
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .local v1, "filteredList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/media/model/MediaItem;>;"
    new-instance v6, Landroid/widget/Filter$FilterResults;

    invoke-direct {v6}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 351
    .local v6, "results":Landroid/widget/Filter$FilterResults;
    iget-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaFilter;->adapterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    .line 352
    .local v0, "adapter":Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;
    if-eqz v0, :cond_5

    .line 353
    invoke-static {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->access$300(Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;)Lcom/parrot/freeflight/media/model/MediaItemList;

    move-result-object v5

    .line 355
    .local v5, "originalList":Lcom/parrot/freeflight/media/model/MediaItemList;
    sget-object v7, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;->VIDEO:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    iget-object v7, v7, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;->value:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 356
    sget-object v4, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;->VIDEO:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    .line 365
    .local v4, "mediaTypeToFilter":Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v5}, Lcom/parrot/freeflight/media/model/MediaItemList;->size()I

    move-result v7

    if-ge v2, v7, :cond_5

    .line 366
    invoke-virtual {v5, v2}, Lcom/parrot/freeflight/media/model/MediaItemList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/media/model/MediaItem;

    .line 367
    .local v3, "item":Lcom/parrot/freeflight/media/model/MediaItem;
    if-eqz v3, :cond_2

    sget-object v7, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;->NONE:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    if-eq v4, v7, :cond_1

    sget-object v7, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;->PHOTO:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    if-ne v4, v7, :cond_0

    .line 368
    invoke-virtual {v3}, Lcom/parrot/freeflight/media/model/MediaItem;->isPhoto()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    sget-object v7, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;->VIDEO:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    if-ne v4, v7, :cond_2

    .line 369
    invoke-virtual {v3}, Lcom/parrot/freeflight/media/model/MediaItem;->isVideo()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 370
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 357
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/parrot/freeflight/media/model/MediaItem;
    .end local v4    # "mediaTypeToFilter":Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;
    :cond_3
    sget-object v7, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;->PHOTO:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    iget-object v7, v7, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;->value:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 358
    sget-object v4, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;->PHOTO:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    .restart local v4    # "mediaTypeToFilter":Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;
    goto :goto_0

    .line 361
    .end local v4    # "mediaTypeToFilter":Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;
    :cond_4
    sget-object v4, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;->NONE:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    .restart local v4    # "mediaTypeToFilter":Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;
    goto :goto_0

    .line 374
    .end local v4    # "mediaTypeToFilter":Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;
    .end local v5    # "originalList":Lcom/parrot/freeflight/media/model/MediaItemList;
    :cond_5
    new-instance v7, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$ReverseDataComparator;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$ReverseDataComparator;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$1;)V

    invoke-static {v1, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 375
    iput-object v1, v6, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 376
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    iput v7, v6, Landroid/widget/Filter$FilterResults;->count:I

    .line 378
    return-object v6
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 384
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaFilter;->adapterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    .line 385
    .local v0, "adapter":Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;
    if-eqz v0, :cond_0

    .line 386
    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->access$502(Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;Ljava/util/List;)Ljava/util/List;

    .line 387
    invoke-virtual {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->notifyDataSetChanged()V

    .line 389
    :cond_0
    return-void
.end method
