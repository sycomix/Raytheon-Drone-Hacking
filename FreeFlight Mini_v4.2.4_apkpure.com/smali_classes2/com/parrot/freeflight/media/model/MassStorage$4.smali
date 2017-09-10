.class Lcom/parrot/freeflight/media/model/MassStorage$4;
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
        "Lcom/parrot/arsdk/armedia/ARMediaObject;",
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
    .line 61
    iput-object p1, p0, Lcom/parrot/freeflight/media/model/MassStorage$4;->this$0:Lcom/parrot/freeflight/media/model/MassStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/parrot/arsdk/armedia/ARMediaObject;)V
    .locals 2
    .param p1, "object"    # Lcom/parrot/arsdk/armedia/ARMediaObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 64
    iget-object v1, p0, Lcom/parrot/freeflight/media/model/MassStorage$4;->this$0:Lcom/parrot/freeflight/media/model/MassStorage;

    invoke-static {v1}, Lcom/parrot/freeflight/media/model/MassStorage;->access$100(Lcom/parrot/freeflight/media/model/MassStorage;)Lcom/parrot/freeflight/media/model/MediaItemList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/parrot/freeflight/media/model/MassStorage$4;->this$0:Lcom/parrot/freeflight/media/model/MassStorage;

    invoke-static {v1}, Lcom/parrot/freeflight/media/model/MassStorage;->access$100(Lcom/parrot/freeflight/media/model/MassStorage;)Lcom/parrot/freeflight/media/model/MediaItemList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/parrot/freeflight/media/model/MediaItemList;->getItem(Lcom/parrot/arsdk/armedia/ARMediaObject;)Lcom/parrot/freeflight/media/model/MediaItem;

    move-result-object v0

    .line 66
    .local v0, "item":Lcom/parrot/freeflight/media/model/MediaItem;
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0, v0}, Lcom/parrot/freeflight/media/model/MediaItem;->notifyChange(Ljava/lang/Object;)V

    .line 70
    .end local v0    # "item":Lcom/parrot/freeflight/media/model/MediaItem;
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
    .line 61
    check-cast p1, Lcom/parrot/arsdk/armedia/ARMediaObject;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/media/model/MassStorage$4;->onChange(Lcom/parrot/arsdk/armedia/ARMediaObject;)V

    return-void
.end method
