.class Lcom/parrot/freeflight/media/model/MassStorage$3;
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
        "<[",
        "Lcom/parrot/freeflight/media/model/MediaItem;",
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
    .line 46
    iput-object p1, p0, Lcom/parrot/freeflight/media/model/MassStorage$3;->this$0:Lcom/parrot/freeflight/media/model/MassStorage;

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
    .line 46
    check-cast p1, [Lcom/parrot/freeflight/media/model/MediaItem;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/media/model/MassStorage$3;->onChange([Lcom/parrot/freeflight/media/model/MediaItem;)V

    return-void
.end method

.method public onChange([Lcom/parrot/freeflight/media/model/MediaItem;)V
    .locals 4
    .param p1, "medias"    # [Lcom/parrot/freeflight/media/model/MediaItem;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 49
    if-nez p1, :cond_1

    .line 50
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/MassStorage$3;->this$0:Lcom/parrot/freeflight/media/model/MassStorage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/media/model/MassStorage;->access$102(Lcom/parrot/freeflight/media/model/MassStorage;Lcom/parrot/freeflight/media/model/MediaItemList;)Lcom/parrot/freeflight/media/model/MediaItemList;

    .line 54
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/MassStorage$3;->this$0:Lcom/parrot/freeflight/media/model/MassStorage;

    invoke-static {v0}, Lcom/parrot/freeflight/media/model/MassStorage;->access$000(Lcom/parrot/freeflight/media/model/MassStorage;)Lcom/parrot/freeflight/media/model/MassStorage$MassStorageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/MassStorage$3;->this$0:Lcom/parrot/freeflight/media/model/MassStorage;

    invoke-static {v0}, Lcom/parrot/freeflight/media/model/MassStorage;->access$000(Lcom/parrot/freeflight/media/model/MassStorage;)Lcom/parrot/freeflight/media/model/MassStorage$MassStorageListener;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/media/model/MassStorage$3;->this$0:Lcom/parrot/freeflight/media/model/MassStorage;

    invoke-static {v1}, Lcom/parrot/freeflight/media/model/MassStorage;->access$100(Lcom/parrot/freeflight/media/model/MassStorage;)Lcom/parrot/freeflight/media/model/MediaItemList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/media/model/MassStorage$MassStorageListener;->onMediaListLoaded(Lcom/parrot/freeflight/media/model/MediaItemList;)V

    .line 57
    :cond_0
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/MassStorage$3;->this$0:Lcom/parrot/freeflight/media/model/MassStorage;

    new-instance v1, Lcom/parrot/freeflight/media/model/MediaItemList;

    iget-object v2, p0, Lcom/parrot/freeflight/media/model/MassStorage$3;->this$0:Lcom/parrot/freeflight/media/model/MassStorage;

    invoke-static {v2}, Lcom/parrot/freeflight/media/model/MassStorage;->access$200(Lcom/parrot/freeflight/media/model/MassStorage;)Lcom/parrot/freeflight/media/model/IMediaStore;

    move-result-object v2

    invoke-interface {v2}, Lcom/parrot/freeflight/media/model/IMediaStore;->getMediaListProvider()Lcom/parrot/freeflight/media/model/ItemList$IProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/media/model/MassStorage$3;->this$0:Lcom/parrot/freeflight/media/model/MassStorage;

    invoke-static {v3}, Lcom/parrot/freeflight/media/model/MassStorage;->access$300(Lcom/parrot/freeflight/media/model/MassStorage;)Lcom/parrot/freeflight/util/observer/IObserver;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lcom/parrot/freeflight/media/model/MediaItemList;-><init>(Lcom/parrot/freeflight/media/model/ItemList$IProvider;Lcom/parrot/freeflight/util/observer/IObserver;[Lcom/parrot/freeflight/media/model/MediaItem;)V

    invoke-static {v0, v1}, Lcom/parrot/freeflight/media/model/MassStorage;->access$102(Lcom/parrot/freeflight/media/model/MassStorage;Lcom/parrot/freeflight/media/model/MediaItemList;)Lcom/parrot/freeflight/media/model/MediaItemList;

    goto :goto_0
.end method
