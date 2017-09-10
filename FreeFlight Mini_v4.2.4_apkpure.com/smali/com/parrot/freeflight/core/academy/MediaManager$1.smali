.class Lcom/parrot/freeflight/core/academy/MediaManager$1;
.super Landroid/os/Handler;
.source "MediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/academy/MediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/MediaManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/MediaManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/academy/MediaManager;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/MediaManager$1;->this$0:Lcom/parrot/freeflight/core/academy/MediaManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 89
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/parrot/freeflight/core/academy/MediaManager$HandlerHolder;

    .line 90
    .local v0, "holder":Lcom/parrot/freeflight/core/academy/MediaManager$HandlerHolder;
    iget-object v1, v0, Lcom/parrot/freeflight/core/academy/MediaManager$HandlerHolder;->error:Lcom/parrot/arsdk/armedia/ARMEDIA_ERROR_ENUM;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, v0, Lcom/parrot/freeflight/core/academy/MediaManager$HandlerHolder;->listener:Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;

    iget-object v2, v0, Lcom/parrot/freeflight/core/academy/MediaManager$HandlerHolder;->error:Lcom/parrot/arsdk/armedia/ARMEDIA_ERROR_ENUM;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;->onError(Lcom/parrot/arsdk/armedia/ARMEDIA_ERROR_ENUM;)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v1, v0, Lcom/parrot/freeflight/core/academy/MediaManager$HandlerHolder;->listener:Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;

    iget-object v2, v0, Lcom/parrot/freeflight/core/academy/MediaManager$HandlerHolder;->result:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method
