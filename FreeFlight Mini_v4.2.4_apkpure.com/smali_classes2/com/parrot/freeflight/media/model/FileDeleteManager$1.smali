.class Lcom/parrot/freeflight/media/model/FileDeleteManager$1;
.super Ljava/lang/Object;
.source "FileDeleteManager.java"

# interfaces
.implements Lcom/parrot/freeflight/util/observer/IObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/media/model/FileDeleteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parrot/freeflight/util/observer/IObserver",
        "<[",
        "Lcom/parrot/freeflight/media/model/FileOperation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/media/model/FileDeleteManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/media/model/FileDeleteManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/media/model/FileDeleteManager;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/parrot/freeflight/media/model/FileDeleteManager$1;->this$0:Lcom/parrot/freeflight/media/model/FileDeleteManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 16
    check-cast p1, [Lcom/parrot/freeflight/media/model/FileOperation;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/media/model/FileDeleteManager$1;->onChange([Lcom/parrot/freeflight/media/model/FileOperation;)V

    return-void
.end method

.method public onChange([Lcom/parrot/freeflight/media/model/FileOperation;)V
    .locals 3
    .param p1, "object"    # [Lcom/parrot/freeflight/media/model/FileOperation;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 19
    new-instance v0, Lcom/parrot/freeflight/media/model/FileOperationList;

    iget-object v1, p0, Lcom/parrot/freeflight/media/model/FileDeleteManager$1;->this$0:Lcom/parrot/freeflight/media/model/FileDeleteManager;

    invoke-static {v1}, Lcom/parrot/freeflight/media/model/FileDeleteManager;->access$000(Lcom/parrot/freeflight/media/model/FileDeleteManager;)Lcom/parrot/freeflight/media/model/IMediaStore;

    move-result-object v1

    invoke-interface {v1}, Lcom/parrot/freeflight/media/model/IMediaStore;->getDeleteListProvider()Lcom/parrot/freeflight/media/model/ItemList$IProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/media/model/FileDeleteManager$1;->this$0:Lcom/parrot/freeflight/media/model/FileDeleteManager;

    invoke-static {v2}, Lcom/parrot/freeflight/media/model/FileDeleteManager;->access$100(Lcom/parrot/freeflight/media/model/FileDeleteManager;)Lcom/parrot/freeflight/util/observer/IObserver;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/parrot/freeflight/media/model/FileOperationList;-><init>(Lcom/parrot/freeflight/media/model/ItemList$IProvider;Lcom/parrot/freeflight/util/observer/IObserver;[Lcom/parrot/freeflight/media/model/FileOperation;)V

    .line 20
    .local v0, "fileOperationList":Lcom/parrot/freeflight/media/model/FileOperationList;
    iget-object v1, p0, Lcom/parrot/freeflight/media/model/FileDeleteManager$1;->this$0:Lcom/parrot/freeflight/media/model/FileDeleteManager;

    invoke-static {v1}, Lcom/parrot/freeflight/media/model/FileDeleteManager;->access$200(Lcom/parrot/freeflight/media/model/FileDeleteManager;)Lcom/parrot/freeflight/media/model/FileDeleteManager$FileDeleteManagerListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 21
    iget-object v1, p0, Lcom/parrot/freeflight/media/model/FileDeleteManager$1;->this$0:Lcom/parrot/freeflight/media/model/FileDeleteManager;

    invoke-static {v1}, Lcom/parrot/freeflight/media/model/FileDeleteManager;->access$200(Lcom/parrot/freeflight/media/model/FileDeleteManager;)Lcom/parrot/freeflight/media/model/FileDeleteManager$FileDeleteManagerListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/parrot/freeflight/media/model/FileDeleteManager$FileDeleteManagerListener;->onDeleteListLoaded(Lcom/parrot/freeflight/media/model/FileOperationList;)V

    .line 23
    :cond_0
    return-void
.end method
