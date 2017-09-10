.class Lcom/parrot/freeflight/media/model/FileTransferManager$2;
.super Ljava/lang/Object;
.source "FileTransferManager.java"

# interfaces
.implements Lcom/parrot/freeflight/util/observer/IObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/media/model/FileTransferManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parrot/freeflight/util/observer/IObserver",
        "<",
        "Lcom/parrot/freeflight/media/model/MediaStoreError;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/media/model/FileTransferManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/media/model/FileTransferManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/media/model/FileTransferManager;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/parrot/freeflight/media/model/FileTransferManager$2;->this$0:Lcom/parrot/freeflight/media/model/FileTransferManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/parrot/freeflight/media/model/MediaStoreError;)V
    .locals 1
    .param p1, "object"    # Lcom/parrot/freeflight/media/model/MediaStoreError;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 31
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/FileTransferManager$2;->this$0:Lcom/parrot/freeflight/media/model/FileTransferManager;

    invoke-static {v0}, Lcom/parrot/freeflight/media/model/FileTransferManager;->access$200(Lcom/parrot/freeflight/media/model/FileTransferManager;)Lcom/parrot/freeflight/media/model/FileTransferManager$FileManagerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/FileTransferManager$2;->this$0:Lcom/parrot/freeflight/media/model/FileTransferManager;

    invoke-static {v0}, Lcom/parrot/freeflight/media/model/FileTransferManager;->access$200(Lcom/parrot/freeflight/media/model/FileTransferManager;)Lcom/parrot/freeflight/media/model/FileTransferManager$FileManagerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/parrot/freeflight/media/model/FileTransferManager$FileManagerListener;->onResult(Lcom/parrot/freeflight/media/model/MediaStoreError;)V

    .line 34
    :cond_0
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 28
    check-cast p1, Lcom/parrot/freeflight/media/model/MediaStoreError;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/media/model/FileTransferManager$2;->onChange(Lcom/parrot/freeflight/media/model/MediaStoreError;)V

    return-void
.end method
