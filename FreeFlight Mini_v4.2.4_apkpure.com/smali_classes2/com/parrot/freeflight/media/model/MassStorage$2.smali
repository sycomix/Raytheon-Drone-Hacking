.class Lcom/parrot/freeflight/media/model/MassStorage$2;
.super Ljava/lang/Object;
.source "MassStorage.java"

# interfaces
.implements Lcom/parrot/freeflight/util/observer/IObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/media/model/MassStorage;
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
.field final synthetic this$0:Lcom/parrot/freeflight/media/model/MassStorage;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/media/model/MassStorage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/media/model/MassStorage;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/parrot/freeflight/media/model/MassStorage$2;->this$0:Lcom/parrot/freeflight/media/model/MassStorage;

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
    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/MassStorage$2;->this$0:Lcom/parrot/freeflight/media/model/MassStorage;

    invoke-static {v0}, Lcom/parrot/freeflight/media/model/MassStorage;->access$000(Lcom/parrot/freeflight/media/model/MassStorage;)Lcom/parrot/freeflight/media/model/MassStorage$MassStorageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/parrot/freeflight/media/model/MediaStoreError;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/MassStorage$2;->this$0:Lcom/parrot/freeflight/media/model/MassStorage;

    invoke-static {v0}, Lcom/parrot/freeflight/media/model/MassStorage;->access$000(Lcom/parrot/freeflight/media/model/MassStorage;)Lcom/parrot/freeflight/media/model/MassStorage$MassStorageListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/media/model/MassStorage$MassStorageListener;->onMediaNamesLoaded()V

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/MassStorage$2;->this$0:Lcom/parrot/freeflight/media/model/MassStorage;

    invoke-static {v0}, Lcom/parrot/freeflight/media/model/MassStorage;->access$000(Lcom/parrot/freeflight/media/model/MassStorage;)Lcom/parrot/freeflight/media/model/MassStorage$MassStorageListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/parrot/freeflight/media/model/MassStorage$MassStorageListener;->onError(Lcom/parrot/freeflight/media/model/MediaStoreError;)V

    goto :goto_0
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 29
    check-cast p1, Lcom/parrot/freeflight/media/model/MediaStoreError;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/media/model/MassStorage$2;->onChange(Lcom/parrot/freeflight/media/model/MediaStoreError;)V

    return-void
.end method
