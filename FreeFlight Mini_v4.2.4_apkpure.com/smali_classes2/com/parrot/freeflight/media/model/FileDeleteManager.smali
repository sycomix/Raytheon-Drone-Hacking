.class public Lcom/parrot/freeflight/media/model/FileDeleteManager;
.super Ljava/lang/Object;
.source "FileDeleteManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/media/model/FileDeleteManager$FileDeleteManagerListener;
    }
.end annotation


# instance fields
.field private final mFileOperationsObserver:Lcom/parrot/freeflight/util/observer/IObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/util/observer/IObserver",
            "<[",
            "Lcom/parrot/freeflight/media/model/FileOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/parrot/freeflight/media/model/FileDeleteManager$FileDeleteManagerListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mMediaStore:Lcom/parrot/freeflight/media/model/IMediaStore;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mResultObserver:Lcom/parrot/freeflight/util/observer/IObserver;
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
.method public constructor <init>(Lcom/parrot/freeflight/media/model/IMediaStore;Lcom/parrot/freeflight/media/model/FileDeleteManager$FileDeleteManagerListener;)V
    .locals 1
    .param p1, "store"    # Lcom/parrot/freeflight/media/model/IMediaStore;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "deleteManagerListener"    # Lcom/parrot/freeflight/media/model/FileDeleteManager$FileDeleteManagerListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/parrot/freeflight/media/model/FileDeleteManager$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/media/model/FileDeleteManager$1;-><init>(Lcom/parrot/freeflight/media/model/FileDeleteManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/model/FileDeleteManager;->mFileOperationsObserver:Lcom/parrot/freeflight/util/observer/IObserver;

    .line 26
    new-instance v0, Lcom/parrot/freeflight/media/model/FileDeleteManager$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/media/model/FileDeleteManager$2;-><init>(Lcom/parrot/freeflight/media/model/FileDeleteManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/model/FileDeleteManager;->mResultObserver:Lcom/parrot/freeflight/util/observer/IObserver;

    .line 37
    iput-object p1, p0, Lcom/parrot/freeflight/media/model/FileDeleteManager;->mMediaStore:Lcom/parrot/freeflight/media/model/IMediaStore;

    .line 38
    iput-object p2, p0, Lcom/parrot/freeflight/media/model/FileDeleteManager;->mListener:Lcom/parrot/freeflight/media/model/FileDeleteManager$FileDeleteManagerListener;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/media/model/FileDeleteManager;)Lcom/parrot/freeflight/media/model/IMediaStore;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/model/FileDeleteManager;

    .prologue
    .line 8
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/FileDeleteManager;->mMediaStore:Lcom/parrot/freeflight/media/model/IMediaStore;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/media/model/FileDeleteManager;)Lcom/parrot/freeflight/util/observer/IObserver;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/model/FileDeleteManager;

    .prologue
    .line 8
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/FileDeleteManager;->mFileOperationsObserver:Lcom/parrot/freeflight/util/observer/IObserver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/media/model/FileDeleteManager;)Lcom/parrot/freeflight/media/model/FileDeleteManager$FileDeleteManagerListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/model/FileDeleteManager;

    .prologue
    .line 8
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/FileDeleteManager;->mListener:Lcom/parrot/freeflight/media/model/FileDeleteManager$FileDeleteManagerListener;

    return-object v0
.end method


# virtual methods
.method public cancelDelete()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/FileDeleteManager;->mMediaStore:Lcom/parrot/freeflight/media/model/IMediaStore;

    invoke-interface {v0}, Lcom/parrot/freeflight/media/model/IMediaStore;->cancelMediaDelete()V

    .line 47
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 50
    iget-object v2, p0, Lcom/parrot/freeflight/media/model/FileDeleteManager;->mMediaStore:Lcom/parrot/freeflight/media/model/IMediaStore;

    invoke-interface {v2}, Lcom/parrot/freeflight/media/model/IMediaStore;->getDeleteListProvider()Lcom/parrot/freeflight/media/model/ItemList$IProvider;

    move-result-object v1

    .line 51
    .local v1, "provider":Lcom/parrot/freeflight/media/model/ItemList$IProvider;, "Lcom/parrot/freeflight/media/model/ItemList$IProvider<[Lcom/parrot/freeflight/media/model/FileOperation;>;"
    iget-object v2, p0, Lcom/parrot/freeflight/media/model/FileDeleteManager;->mFileOperationsObserver:Lcom/parrot/freeflight/util/observer/IObserver;

    invoke-interface {v1, v2}, Lcom/parrot/freeflight/media/model/ItemList$IProvider;->unregisterItemListObserver(Lcom/parrot/freeflight/util/observer/IObserver;)V

    .line 53
    iget-object v2, p0, Lcom/parrot/freeflight/media/model/FileDeleteManager;->mMediaStore:Lcom/parrot/freeflight/media/model/IMediaStore;

    invoke-interface {v2}, Lcom/parrot/freeflight/media/model/IMediaStore;->getDeleteErrorProvider()Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;

    move-result-object v0

    .line 54
    .local v0, "errorProvider":Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;
    iget-object v2, p0, Lcom/parrot/freeflight/media/model/FileDeleteManager;->mResultObserver:Lcom/parrot/freeflight/util/observer/IObserver;

    invoke-interface {v0, v2}, Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;->unregisterErrorObserver(Lcom/parrot/freeflight/util/observer/IObserver;)V

    .line 55
    return-void
.end method

.method public deleteMedias([Lcom/parrot/freeflight/media/model/FileItem;)V
    .locals 3
    .param p1, "items"    # [Lcom/parrot/freeflight/media/model/FileItem;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/FileDeleteManager;->mMediaStore:Lcom/parrot/freeflight/media/model/IMediaStore;

    iget-object v1, p0, Lcom/parrot/freeflight/media/model/FileDeleteManager;->mFileOperationsObserver:Lcom/parrot/freeflight/util/observer/IObserver;

    iget-object v2, p0, Lcom/parrot/freeflight/media/model/FileDeleteManager;->mResultObserver:Lcom/parrot/freeflight/util/observer/IObserver;

    invoke-interface {v0, p1, v1, v2}, Lcom/parrot/freeflight/media/model/IMediaStore;->deleteMedias([Lcom/parrot/freeflight/media/model/FileItem;Lcom/parrot/freeflight/util/observer/IObserver;Lcom/parrot/freeflight/util/observer/IObserver;)V

    .line 43
    return-void
.end method
