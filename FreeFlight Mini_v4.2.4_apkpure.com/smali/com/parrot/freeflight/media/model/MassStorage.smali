.class public Lcom/parrot/freeflight/media/model/MassStorage;
.super Ljava/lang/Object;
.source "MassStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/media/model/MassStorage$MassStorageListener;
    }
.end annotation


# instance fields
.field private final mListener:Lcom/parrot/freeflight/media/model/MassStorage$MassStorageListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mMediaItemList:Lcom/parrot/freeflight/media/model/MediaItemList;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mMediaListObserver:Lcom/parrot/freeflight/util/observer/IObserver;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/util/observer/IObserver",
            "<[",
            "Lcom/parrot/freeflight/media/model/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaObjectObserver:Lcom/parrot/freeflight/util/observer/IObserver;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/util/observer/IObserver",
            "<",
            "Lcom/parrot/arsdk/armedia/ARMediaObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaStore:Lcom/parrot/freeflight/media/model/IMediaStore;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mStorageInfoListener:Lcom/parrot/freeflight/media/model/IMediaStore$StorageInfoListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mediaListErrorObserver:Lcom/parrot/freeflight/util/observer/IObserver;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/util/observer/IObserver",
            "<",
            "Lcom/parrot/freeflight/media/model/MediaStoreError;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/media/model/IMediaStore;Lcom/parrot/freeflight/media/model/MassStorage$MassStorageListener;)V
    .locals 1
    .param p1, "controller"    # Lcom/parrot/freeflight/media/model/IMediaStore;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "massStorageListener"    # Lcom/parrot/freeflight/media/model/MassStorage$MassStorageListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/parrot/freeflight/media/model/MassStorage$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/media/model/MassStorage$1;-><init>(Lcom/parrot/freeflight/media/model/MassStorage;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/model/MassStorage;->mStorageInfoListener:Lcom/parrot/freeflight/media/model/IMediaStore$StorageInfoListener;

    .line 28
    new-instance v0, Lcom/parrot/freeflight/media/model/MassStorage$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/media/model/MassStorage$2;-><init>(Lcom/parrot/freeflight/media/model/MassStorage;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/model/MassStorage;->mediaListErrorObserver:Lcom/parrot/freeflight/util/observer/IObserver;

    .line 45
    new-instance v0, Lcom/parrot/freeflight/media/model/MassStorage$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/media/model/MassStorage$3;-><init>(Lcom/parrot/freeflight/media/model/MassStorage;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/model/MassStorage;->mMediaListObserver:Lcom/parrot/freeflight/util/observer/IObserver;

    .line 60
    new-instance v0, Lcom/parrot/freeflight/media/model/MassStorage$4;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/media/model/MassStorage$4;-><init>(Lcom/parrot/freeflight/media/model/MassStorage;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/model/MassStorage;->mMediaObjectObserver:Lcom/parrot/freeflight/util/observer/IObserver;

    .line 74
    iput-object p1, p0, Lcom/parrot/freeflight/media/model/MassStorage;->mMediaStore:Lcom/parrot/freeflight/media/model/IMediaStore;

    .line 75
    iput-object p2, p0, Lcom/parrot/freeflight/media/model/MassStorage;->mListener:Lcom/parrot/freeflight/media/model/MassStorage$MassStorageListener;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/media/model/MassStorage;)Lcom/parrot/freeflight/media/model/MassStorage$MassStorageListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/model/MassStorage;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/MassStorage;->mListener:Lcom/parrot/freeflight/media/model/MassStorage$MassStorageListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/media/model/MassStorage;)Lcom/parrot/freeflight/media/model/MediaItemList;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/model/MassStorage;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/MassStorage;->mMediaItemList:Lcom/parrot/freeflight/media/model/MediaItemList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/parrot/freeflight/media/model/MassStorage;Lcom/parrot/freeflight/media/model/MediaItemList;)Lcom/parrot/freeflight/media/model/MediaItemList;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/model/MassStorage;
    .param p1, "x1"    # Lcom/parrot/freeflight/media/model/MediaItemList;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/parrot/freeflight/media/model/MassStorage;->mMediaItemList:Lcom/parrot/freeflight/media/model/MediaItemList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/media/model/MassStorage;)Lcom/parrot/freeflight/media/model/IMediaStore;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/model/MassStorage;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/MassStorage;->mMediaStore:Lcom/parrot/freeflight/media/model/IMediaStore;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/media/model/MassStorage;)Lcom/parrot/freeflight/util/observer/IObserver;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/model/MassStorage;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/MassStorage;->mMediaListObserver:Lcom/parrot/freeflight/util/observer/IObserver;

    return-object v0
.end method


# virtual methods
.method public cancelDelete()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/MassStorage;->mMediaStore:Lcom/parrot/freeflight/media/model/IMediaStore;

    invoke-interface {v0}, Lcom/parrot/freeflight/media/model/IMediaStore;->cancelMediaDelete()V

    .line 92
    return-void
.end method

.method public cancelLoading()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/MassStorage;->mMediaStore:Lcom/parrot/freeflight/media/model/IMediaStore;

    invoke-interface {v0}, Lcom/parrot/freeflight/media/model/IMediaStore;->cancelMediaLoading()V

    .line 84
    return-void
.end method

.method public cancelTransfer()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/MassStorage;->mMediaStore:Lcom/parrot/freeflight/media/model/IMediaStore;

    invoke-interface {v0}, Lcom/parrot/freeflight/media/model/IMediaStore;->cancelMediaTransfer()V

    .line 88
    return-void
.end method

.method public close()V
    .locals 4

    .prologue
    .line 99
    iget-object v2, p0, Lcom/parrot/freeflight/media/model/MassStorage;->mMediaStore:Lcom/parrot/freeflight/media/model/IMediaStore;

    invoke-interface {v2}, Lcom/parrot/freeflight/media/model/IMediaStore;->getMediaListProvider()Lcom/parrot/freeflight/media/model/ItemList$IProvider;

    move-result-object v1

    .line 100
    .local v1, "provider":Lcom/parrot/freeflight/media/model/ItemList$IProvider;, "Lcom/parrot/freeflight/media/model/ItemList$IProvider<[Lcom/parrot/freeflight/media/model/MediaItem;>;"
    iget-object v2, p0, Lcom/parrot/freeflight/media/model/MassStorage;->mMediaListObserver:Lcom/parrot/freeflight/util/observer/IObserver;

    invoke-interface {v1, v2}, Lcom/parrot/freeflight/media/model/ItemList$IProvider;->unregisterItemListObserver(Lcom/parrot/freeflight/util/observer/IObserver;)V

    .line 102
    iget-object v2, p0, Lcom/parrot/freeflight/media/model/MassStorage;->mMediaStore:Lcom/parrot/freeflight/media/model/IMediaStore;

    invoke-interface {v2}, Lcom/parrot/freeflight/media/model/IMediaStore;->getMediaListErrorProvider()Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;

    move-result-object v0

    .line 103
    .local v0, "errorProvider":Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;
    iget-object v2, p0, Lcom/parrot/freeflight/media/model/MassStorage;->mediaListErrorObserver:Lcom/parrot/freeflight/util/observer/IObserver;

    invoke-interface {v0, v2}, Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;->unregisterErrorObserver(Lcom/parrot/freeflight/util/observer/IObserver;)V

    .line 105
    iget-object v2, p0, Lcom/parrot/freeflight/media/model/MassStorage;->mMediaStore:Lcom/parrot/freeflight/media/model/IMediaStore;

    iget-object v3, p0, Lcom/parrot/freeflight/media/model/MassStorage;->mStorageInfoListener:Lcom/parrot/freeflight/media/model/IMediaStore$StorageInfoListener;

    invoke-interface {v2, v3}, Lcom/parrot/freeflight/media/model/IMediaStore;->unregisterSizeInfoListener(Lcom/parrot/freeflight/media/model/IMediaStore$StorageInfoListener;)V

    .line 106
    return-void
.end method

.method public loadMediaList()V
    .locals 4

    .prologue
    .line 79
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/MassStorage;->mMediaStore:Lcom/parrot/freeflight/media/model/IMediaStore;

    iget-object v1, p0, Lcom/parrot/freeflight/media/model/MassStorage;->mMediaListObserver:Lcom/parrot/freeflight/util/observer/IObserver;

    iget-object v2, p0, Lcom/parrot/freeflight/media/model/MassStorage;->mMediaObjectObserver:Lcom/parrot/freeflight/util/observer/IObserver;

    iget-object v3, p0, Lcom/parrot/freeflight/media/model/MassStorage;->mediaListErrorObserver:Lcom/parrot/freeflight/util/observer/IObserver;

    invoke-interface {v0, v1, v2, v3}, Lcom/parrot/freeflight/media/model/IMediaStore;->loadMedias(Lcom/parrot/freeflight/util/observer/IObserver;Lcom/parrot/freeflight/util/observer/IObserver;Lcom/parrot/freeflight/util/observer/IObserver;)V

    .line 80
    return-void
.end method

.method public loadStorageSizeInfo()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/MassStorage;->mMediaStore:Lcom/parrot/freeflight/media/model/IMediaStore;

    iget-object v1, p0, Lcom/parrot/freeflight/media/model/MassStorage;->mStorageInfoListener:Lcom/parrot/freeflight/media/model/IMediaStore$StorageInfoListener;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/media/model/IMediaStore;->loadSizeInfo(Lcom/parrot/freeflight/media/model/IMediaStore$StorageInfoListener;)V

    .line 96
    return-void
.end method
