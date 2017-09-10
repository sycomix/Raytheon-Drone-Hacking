.class Lcom/parrot/freeflight/media/model/FileDeleteManager$2;
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
        "<",
        "Lcom/parrot/freeflight/media/model/MediaStoreError;",
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
    .line 26
    iput-object p1, p0, Lcom/parrot/freeflight/media/model/FileDeleteManager$2;->this$0:Lcom/parrot/freeflight/media/model/FileDeleteManager;

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
    .line 29
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/FileDeleteManager$2;->this$0:Lcom/parrot/freeflight/media/model/FileDeleteManager;

    invoke-static {v0}, Lcom/parrot/freeflight/media/model/FileDeleteManager;->access$200(Lcom/parrot/freeflight/media/model/FileDeleteManager;)Lcom/parrot/freeflight/media/model/FileDeleteManager$FileDeleteManagerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/FileDeleteManager$2;->this$0:Lcom/parrot/freeflight/media/model/FileDeleteManager;

    invoke-static {v0}, Lcom/parrot/freeflight/media/model/FileDeleteManager;->access$200(Lcom/parrot/freeflight/media/model/FileDeleteManager;)Lcom/parrot/freeflight/media/model/FileDeleteManager$FileDeleteManagerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/parrot/freeflight/media/model/FileDeleteManager$FileDeleteManagerListener;->onResult(Lcom/parrot/freeflight/media/model/MediaStoreError;)V

    .line 32
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
    .line 26
    check-cast p1, Lcom/parrot/freeflight/media/model/MediaStoreError;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/media/model/FileDeleteManager$2;->onChange(Lcom/parrot/freeflight/media/model/MediaStoreError;)V

    return-void
.end method
