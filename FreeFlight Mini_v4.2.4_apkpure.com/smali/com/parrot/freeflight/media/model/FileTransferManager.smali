.class public Lcom/parrot/freeflight/media/model/FileTransferManager;
.super Ljava/lang/Object;
.source "FileTransferManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/media/model/FileTransferManager$FileManagerListener;
    }
.end annotation


# instance fields
.field private final mFileOperationsObserver:Lcom/parrot/freeflight/util/observer/IObserver;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/util/observer/IObserver",
            "<[",
            "Lcom/parrot/freeflight/media/model/FileOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/parrot/freeflight/media/model/FileTransferManager$FileManagerListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mMediaStore:Lcom/parrot/freeflight/media/model/IMediaStore;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mResultObserver:Lcom/parrot/freeflight/util/observer/IObserver;
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
.method public constructor <init>(Lcom/parrot/freeflight/media/model/IMediaStore;Lcom/parrot/freeflight/media/model/FileTransferManager$FileManagerListener;)V
    .locals 1
    .param p1, "store"    # Lcom/parrot/freeflight/media/model/IMediaStore;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "fileManagerListener"    # Lcom/parrot/freeflight/media/model/FileTransferManager$FileManagerListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/parrot/freeflight/media/model/FileTransferManager$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/media/model/FileTransferManager$1;-><init>(Lcom/parrot/freeflight/media/model/FileTransferManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/model/FileTransferManager;->mFileOperationsObserver:Lcom/parrot/freeflight/util/observer/IObserver;

    .line 27
    new-instance v0, Lcom/parrot/freeflight/media/model/FileTransferManager$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/media/model/FileTransferManager$2;-><init>(Lcom/parrot/freeflight/media/model/FileTransferManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/model/FileTransferManager;->mResultObserver:Lcom/parrot/freeflight/util/observer/IObserver;

    .line 38
    iput-object p1, p0, Lcom/parrot/freeflight/media/model/FileTransferManager;->mMediaStore:Lcom/parrot/freeflight/media/model/IMediaStore;

    .line 39
    iput-object p2, p0, Lcom/parrot/freeflight/media/model/FileTransferManager;->mListener:Lcom/parrot/freeflight/media/model/FileTransferManager$FileManagerListener;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/media/model/FileTransferManager;)Lcom/parrot/freeflight/media/model/IMediaStore;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/model/FileTransferManager;

    .prologue
    .line 8
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/FileTransferManager;->mMediaStore:Lcom/parrot/freeflight/media/model/IMediaStore;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/media/model/FileTransferManager;)Lcom/parrot/freeflight/util/observer/IObserver;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/model/FileTransferManager;

    .prologue
    .line 8
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/FileTransferManager;->mFileOperationsObserver:Lcom/parrot/freeflight/util/observer/IObserver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/media/model/FileTransferManager;)Lcom/parrot/freeflight/media/model/FileTransferManager$FileManagerListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/model/FileTransferManager;

    .prologue
    .line 8
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/FileTransferManager;->mListener:Lcom/parrot/freeflight/media/model/FileTransferManager$FileManagerListener;

    return-object v0
.end method


# virtual methods
.method public cancelTransfer()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/FileTransferManager;->mMediaStore:Lcom/parrot/freeflight/media/model/IMediaStore;

    invoke-interface {v0}, Lcom/parrot/freeflight/media/model/IMediaStore;->cancelMediaTransfer()V

    .line 48
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 51
    iget-object v2, p0, Lcom/parrot/freeflight/media/model/FileTransferManager;->mMediaStore:Lcom/parrot/freeflight/media/model/IMediaStore;

    invoke-interface {v2}, Lcom/parrot/freeflight/media/model/IMediaStore;->getTransferListProvider()Lcom/parrot/freeflight/media/model/ItemList$IProvider;

    move-result-object v1

    .line 52
    .local v1, "provider":Lcom/parrot/freeflight/media/model/ItemList$IProvider;, "Lcom/parrot/freeflight/media/model/ItemList$IProvider<[Lcom/parrot/freeflight/media/model/FileOperation;>;"
    iget-object v2, p0, Lcom/parrot/freeflight/media/model/FileTransferManager;->mFileOperationsObserver:Lcom/parrot/freeflight/util/observer/IObserver;

    invoke-interface {v1, v2}, Lcom/parrot/freeflight/media/model/ItemList$IProvider;->unregisterItemListObserver(Lcom/parrot/freeflight/util/observer/IObserver;)V

    .line 53
    iget-object v2, p0, Lcom/parrot/freeflight/media/model/FileTransferManager;->mMediaStore:Lcom/parrot/freeflight/media/model/IMediaStore;

    invoke-interface {v2}, Lcom/parrot/freeflight/media/model/IMediaStore;->getTransferErrorProvider()Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;

    move-result-object v0

    .line 54
    .local v0, "errorProvider":Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;
    iget-object v2, p0, Lcom/parrot/freeflight/media/model/FileTransferManager;->mResultObserver:Lcom/parrot/freeflight/util/observer/IObserver;

    invoke-interface {v0, v2}, Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;->unregisterErrorObserver(Lcom/parrot/freeflight/util/observer/IObserver;)V

    .line 55
    return-void
.end method

.method public transferMedias([Lcom/parrot/freeflight/media/model/FileItem;)V
    .locals 3
    .param p1, "items"    # [Lcom/parrot/freeflight/media/model/FileItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/FileTransferManager;->mMediaStore:Lcom/parrot/freeflight/media/model/IMediaStore;

    iget-object v1, p0, Lcom/parrot/freeflight/media/model/FileTransferManager;->mFileOperationsObserver:Lcom/parrot/freeflight/util/observer/IObserver;

    iget-object v2, p0, Lcom/parrot/freeflight/media/model/FileTransferManager;->mResultObserver:Lcom/parrot/freeflight/util/observer/IObserver;

    invoke-interface {v0, p1, v1, v2}, Lcom/parrot/freeflight/media/model/IMediaStore;->transferMedias([Lcom/parrot/freeflight/media/model/FileItem;Lcom/parrot/freeflight/util/observer/IObserver;Lcom/parrot/freeflight/util/observer/IObserver;)V

    .line 44
    return-void
.end method
