.class public Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DroneMemoryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterCompletionListener;,
        Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$ReverseDataComparator;,
        Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$RecyclerListener;,
        Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaFilter;,
        Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaItemObserver;,
        Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$AdapterListener;,
        Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StorageAdapter"


# instance fields
.field private final mAdapterReadyListenerRef:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$AdapterListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mCellThumbnailImageCache:Landroid/util/SparseArray;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDurationFormat:Ljava/text/SimpleDateFormat;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFilter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaFilter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFilterCompletionListener:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterCompletionListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFilteredList:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/media/model/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaList:Lcom/parrot/freeflight/media/model/MediaItemList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mReady:Z

.field private final mRecyclerListener:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$RecyclerListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSelectedItemPaths:Ljava/util/Set;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimeStringParserFormat:Ljava/text/SimpleDateFormat;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/media/model/MediaItemList;Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$AdapterListener;Ljava/util/Set;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "list"    # Lcom/parrot/freeflight/media/model/MediaItemList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "listener"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$AdapterListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "productColor"    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/parrot/freeflight/media/model/MediaItemList;",
            "Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$AdapterListener;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/parrot/freeflight/piloting/ui/util/ProductColor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    .local p4, "selectedPaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 50
    new-instance v1, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaFilter;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaFilter;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;)V

    iput-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mFilter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaFilter;

    .line 59
    new-instance v1, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$RecyclerListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$RecyclerListener;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$1;)V

    iput-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mRecyclerListener:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$RecyclerListener;

    .line 65
    new-instance v1, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterCompletionListener;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterCompletionListener;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;)V

    iput-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mFilterCompletionListener:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterCompletionListener;

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mFilteredList:Ljava/util/List;

    .line 79
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mContext:Landroid/content/Context;

    .line 80
    iput-object p5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 81
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HHmmssZZZZZ"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mTimeStringParserFormat:Ljava/text/SimpleDateFormat;

    .line 82
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mDurationFormat:Ljava/text/SimpleDateFormat;

    .line 83
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mCellThumbnailImageCache:Landroid/util/SparseArray;

    .line 84
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mAdapterReadyListenerRef:Ljava/lang/ref/WeakReference;

    .line 85
    iput-object p4, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mSelectedItemPaths:Ljava/util/Set;

    .line 86
    iput-object p2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mMediaList:Lcom/parrot/freeflight/media/model/MediaItemList;

    .line 87
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mMediaList:Lcom/parrot/freeflight/media/model/MediaItemList;

    invoke-virtual {v1}, Lcom/parrot/freeflight/media/model/MediaItemList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mFilteredList:Ljava/util/List;

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mMediaList:Lcom/parrot/freeflight/media/model/MediaItemList;

    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/media/model/MediaItemList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;Lcom/parrot/freeflight/media/model/MediaItem;Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;
    .param p1, "x1"    # Lcom/parrot/freeflight/media/model/MediaItem;
    .param p2, "x2"    # Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->updateThumbnail(Lcom/parrot/freeflight/media/model/MediaItem;Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;)V

    return-void
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;)Lcom/parrot/freeflight/media/model/MediaItemList;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mMediaList:Lcom/parrot/freeflight/media/model/MediaItemList;

    return-object v0
.end method

.method static synthetic access$502(Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mFilteredList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mAdapterReadyListenerRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mReady:Z

    return v0
.end method

.method static synthetic access$802(Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mReady:Z

    return p1
.end method

.method private updateCellText(ILcom/parrot/freeflight/media/dronememory/MediaMenuCell;)V
    .locals 12
    .param p1, "position"    # I
    .param p2, "cell"    # Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 136
    const/4 v1, 0x0

    .line 137
    .local v1, "dateText":Ljava/lang/String;
    const/4 v8, 0x0

    .line 138
    .local v8, "timeText":Ljava/lang/String;
    const/4 v7, 0x0

    .line 139
    .local v7, "sizeText":Ljava/lang/String;
    const/4 v4, 0x0

    .line 140
    .local v4, "isVideo":Z
    iget-object v9, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mFilteredList:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parrot/freeflight/media/model/MediaItem;

    .line 142
    .local v5, "item":Lcom/parrot/freeflight/media/model/MediaItem;
    if-eqz v5, :cond_2

    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v5}, Lcom/parrot/freeflight/media/model/MediaItem;->getDate()Ljava/lang/String;

    move-result-object v6

    .line 145
    .local v6, "itemDate":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 147
    :try_start_0
    iget-object v9, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mTimeStringParserFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v9, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 152
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 153
    iget-object v9, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mDurationFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x3a

    const/16 v11, 0x48

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    .line 154
    const/4 v9, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    .line 155
    .local v2, "df":Ljava/text/DateFormat;
    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .end local v2    # "df":Ljava/text/DateFormat;
    :cond_1
    invoke-virtual {v5}, Lcom/parrot/freeflight/media/model/MediaItem;->getSize()D

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/parrot/freeflight/media/MediaSizeUtils;->getSizeText(D)Ljava/lang/String;

    move-result-object v7

    .line 158
    invoke-virtual {v5}, Lcom/parrot/freeflight/media/model/MediaItem;->isVideo()Z

    move-result v4

    .line 160
    .end local v0    # "date":Ljava/util/Date;
    .end local v6    # "itemDate":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2, v1, v8, v7, v4}, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 161
    return-void

    .line 148
    .restart local v0    # "date":Ljava/util/Date;
    .restart local v6    # "itemDate":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 149
    .local v3, "e":Ljava/text/ParseException;
    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateThumbnail(Lcom/parrot/freeflight/media/model/MediaItem;Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;)V
    .locals 5
    .param p1, "media"    # Lcom/parrot/freeflight/media/model/MediaItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "mediaCell"    # Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 164
    invoke-virtual {p1}, Lcom/parrot/freeflight/media/model/MediaItem;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 165
    .local v1, "imageThumbnail":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 166
    invoke-virtual {p2, v4}, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->setTag(Ljava/lang/Object;)V

    .line 167
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mCellThumbnailImageCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 168
    .local v0, "imageCache":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 169
    invoke-virtual {p2, v1}, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->setThumbnail(Landroid/graphics/drawable/Drawable;)V

    .line 170
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mCellThumbnailImageCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {p2}, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->getThumbnail()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 178
    .end local v0    # "imageCache":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 172
    .restart local v0    # "imageCache":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p2}, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->getThumbnail()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 175
    .end local v0    # "imageCache":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p2, v4}, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->setThumbnail(Landroid/graphics/drawable/Drawable;)V

    .line 176
    new-instance v2, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaItemObserver;

    invoke-direct {v2, p2, p1, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaItemObserver;-><init>(Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;Lcom/parrot/freeflight/media/model/MediaItem;Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;)V

    invoke-virtual {p2, v2}, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public checkBoxCheckStateChanged(ZI)V
    .locals 2
    .param p1, "newState"    # Z
    .param p2, "position"    # I

    .prologue
    .line 181
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mFilteredList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/model/MediaItem;

    .line 182
    .local v0, "item":Lcom/parrot/freeflight/media/model/MediaItem;
    invoke-virtual {p0, v0, p1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->selectItem(Lcom/parrot/freeflight/media/model/MediaItem;Z)V

    .line 183
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 245
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mMediaList:Lcom/parrot/freeflight/media/model/MediaItemList;

    invoke-virtual {v2}, Lcom/parrot/freeflight/media/model/MediaItemList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 246
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mMediaList:Lcom/parrot/freeflight/media/model/MediaItemList;

    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/media/model/MediaItemList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/media/model/MediaItem;

    .line 247
    .local v1, "item":Lcom/parrot/freeflight/media/model/MediaItem;
    if-eqz v1, :cond_0

    .line 248
    invoke-virtual {v1}, Lcom/parrot/freeflight/media/model/MediaItem;->close()V

    .line 245
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    .end local v1    # "item":Lcom/parrot/freeflight/media/model/MediaItem;
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mMediaList:Lcom/parrot/freeflight/media/model/MediaItemList;

    invoke-virtual {v2}, Lcom/parrot/freeflight/media/model/MediaItemList;->close()V

    .line 252
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mAdapterReadyListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->clear()V

    .line 253
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mCellThumbnailImageCache:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 254
    return-void
.end method

.method public filterPhoto()V
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mFilter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaFilter;

    sget-object v1, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;->PHOTO:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaFilter;->access$102(Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaFilter;Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;)Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    .line 209
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mFilter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaFilter;

    sget-object v1, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;->PHOTO:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    iget-object v1, v1, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;->value:Ljava/lang/String;

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mFilterCompletionListener:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterCompletionListener;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaFilter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 210
    return-void
.end method

.method public filterVideo()V
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mFilter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaFilter;

    sget-object v1, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;->VIDEO:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaFilter;->access$102(Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaFilter;Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;)Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    .line 204
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mFilter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaFilter;

    sget-object v1, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;->VIDEO:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    iget-object v1, v1, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;->value:Ljava/lang/String;

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mFilterCompletionListener:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterCompletionListener;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaFilter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 205
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mFilteredList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mFilteredList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 104
    int-to-long v0, p1

    return-wide v0
.end method

.method public getMediaItemList()Lcom/parrot/freeflight/media/model/MediaItemList;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mMediaList:Lcom/parrot/freeflight/media/model/MediaItemList;

    return-object v0
.end method

.method public getMediasItemListForRunId(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "runId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/media/model/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    iget-object v4, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mMediaList:Lcom/parrot/freeflight/media/model/MediaItemList;

    invoke-virtual {v4}, Lcom/parrot/freeflight/media/model/MediaItemList;->size()I

    move-result v3

    .line 259
    .local v3, "nbMedia":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v2, "mediaItems":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/media/model/MediaItem;>;"
    const/4 v1, 0x0

    .local v1, "it":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 262
    iget-object v4, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mMediaList:Lcom/parrot/freeflight/media/model/MediaItemList;

    invoke-virtual {v4, v1}, Lcom/parrot/freeflight/media/model/MediaItemList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/model/MediaItem;

    .line 263
    .local v0, "currentItem":Lcom/parrot/freeflight/media/model/MediaItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/parrot/freeflight/media/model/MediaItem;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 264
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    .end local v0    # "currentItem":Lcom/parrot/freeflight/media/model/MediaItem;
    :cond_1
    return-object v2
.end method

.method public getNbLastMediasItem(I)Ljava/util/List;
    .locals 5
    .param p1, "nbLastMediasItem"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/media/model/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    iget-object v4, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mMediaList:Lcom/parrot/freeflight/media/model/MediaItemList;

    invoke-virtual {v4}, Lcom/parrot/freeflight/media/model/MediaItemList;->size()I

    move-result v3

    .line 273
    .local v3, "nbMedia":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 275
    .local v2, "mediaItems":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/media/model/MediaItem;>;"
    const/4 v1, 0x0

    .local v1, "it":I
    :goto_0
    if-ge v1, v3, :cond_0

    if-ge v1, p1, :cond_0

    .line 276
    iget-object v4, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mMediaList:Lcom/parrot/freeflight/media/model/MediaItemList;

    invoke-virtual {v4, v1}, Lcom/parrot/freeflight/media/model/MediaItemList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/model/MediaItem;

    .line 277
    .local v0, "currentItem":Lcom/parrot/freeflight/media/model/MediaItem;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    .end local v0    # "currentItem":Lcom/parrot/freeflight/media/model/MediaItem;
    :cond_0
    return-object v2
.end method

.method public getRecyclerListener()Landroid/widget/AbsListView$RecyclerListener;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mRecyclerListener:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$RecyclerListener;

    return-object v0
.end method

.method public getSelectedMediaItem()[Lcom/parrot/freeflight/media/model/MediaItem;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 231
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v2, "mediaItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/freeflight/media/model/MediaItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mMediaList:Lcom/parrot/freeflight/media/model/MediaItemList;

    invoke-virtual {v4}, Lcom/parrot/freeflight/media/model/MediaItemList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 233
    iget-object v4, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mMediaList:Lcom/parrot/freeflight/media/model/MediaItemList;

    invoke-virtual {v4, v0}, Lcom/parrot/freeflight/media/model/MediaItemList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/media/model/MediaItem;

    .line 234
    .local v1, "item":Lcom/parrot/freeflight/media/model/MediaItem;
    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {v1}, Lcom/parrot/freeflight/media/model/MediaItem;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, "path":Ljava/lang/String;
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mSelectedItemPaths:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 237
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    .end local v3    # "path":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    .end local v1    # "item":Lcom/parrot/freeflight/media/model/MediaItem;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/parrot/freeflight/media/model/MediaItem;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/parrot/freeflight/media/model/MediaItem;

    return-object v4
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 110
    if-nez p2, :cond_1

    .line 111
    iget-object v4, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040082

    invoke-virtual {v4, v5, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;

    .line 115
    .local v0, "cell":Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;
    :goto_0
    rem-int/lit8 v4, p1, 0x2

    if-nez v4, :cond_2

    .line 116
    iget-object v4, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0e00e3

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->setBackgroundColor(I)V

    .line 120
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->updateCellText(ILcom/parrot/freeflight/media/dronememory/MediaMenuCell;)V

    .line 121
    iget-object v4, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mFilteredList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/media/model/MediaItem;

    .line 122
    .local v1, "item":Lcom/parrot/freeflight/media/model/MediaItem;
    invoke-direct {p0, v1, v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->updateThumbnail(Lcom/parrot/freeflight/media/model/MediaItem;Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;)V

    .line 123
    invoke-virtual {v1}, Lcom/parrot/freeflight/media/model/MediaItem;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "path":Ljava/lang/String;
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mSelectedItemPaths:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 125
    .local v3, "selected":Z
    :cond_0
    invoke-virtual {v0}, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->getSelectionRow()Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 126
    iget-object v4, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v0}, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->getSelectionRow()Landroid/widget/CheckBox;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/CheckBox;)V

    .line 127
    return-object v0

    .end local v0    # "cell":Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;
    .end local v1    # "item":Lcom/parrot/freeflight/media/model/MediaItem;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "selected":Z
    :cond_1
    move-object v0, p2

    .line 113
    check-cast v0, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;

    .restart local v0    # "cell":Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;
    goto :goto_0

    .line 118
    :cond_2
    iget-object v4, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0e00e4

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method public resetFilter()V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mFilter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaFilter;

    sget-object v1, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;->NONE:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaFilter;->access$102(Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaFilter;Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;)Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    .line 214
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mFilter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaFilter;

    sget-object v1, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;->NONE:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    iget-object v1, v1, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;->value:Ljava/lang/String;

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mFilterCompletionListener:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterCompletionListener;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaFilter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 215
    return-void
.end method

.method public selectAll(Z)V
    .locals 3
    .param p1, "selected"    # Z

    .prologue
    .line 197
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mFilteredList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/model/MediaItem;

    .line 198
    .local v0, "item":Lcom/parrot/freeflight/media/model/MediaItem;
    invoke-virtual {p0, v0, p1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->selectItem(Lcom/parrot/freeflight/media/model/MediaItem;Z)V

    goto :goto_0

    .line 200
    .end local v0    # "item":Lcom/parrot/freeflight/media/model/MediaItem;
    :cond_0
    return-void
.end method

.method public selectItem(Lcom/parrot/freeflight/media/model/MediaItem;Z)V
    .locals 2
    .param p1, "item"    # Lcom/parrot/freeflight/media/model/MediaItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "selected"    # Z

    .prologue
    .line 186
    invoke-virtual {p1}, Lcom/parrot/freeflight/media/model/MediaItem;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 188
    if-eqz p2, :cond_1

    .line 189
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mSelectedItemPaths:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mSelectedItemPaths:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public swapList(Lcom/parrot/freeflight/media/model/MediaItemList;)V
    .locals 3
    .param p1, "newList"    # Lcom/parrot/freeflight/media/model/MediaItemList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 218
    if-eqz p1, :cond_0

    .line 219
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mMediaList:Lcom/parrot/freeflight/media/model/MediaItemList;

    .line 220
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mFilter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaFilter;

    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mFilter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaFilter;

    invoke-static {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaFilter;->access$100(Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaFilter;)Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    move-result-object v1

    iget-object v1, v1, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;->value:Ljava/lang/String;

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->mFilterCompletionListener:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterCompletionListener;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaFilter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 222
    :cond_0
    return-void
.end method
