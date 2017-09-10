.class Lcom/parrot/freeflight/home/HomeUIController$32;
.super Ljava/lang/Object;
.source "HomeUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/media/MediaCountCompat$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/home/HomeUIController;->startFwCompatInfoUpdate(Lcom/parrot/freeflight/core/model/DelosModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/HomeUIController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 1337
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController$32;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaListed(I)V
    .locals 2
    .param p1, "mediaCount"    # I

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$32;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$300(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/model/Model;

    move-result-object v0

    instance-of v0, v0, Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v0, :cond_0

    .line 1341
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$32;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$300(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/model/Model;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/model/DelosModel;->setPhotosCount(I)V

    .line 1342
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$32;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$3900(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/home/HomeUIController$32$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/home/HomeUIController$32$1;-><init>(Lcom/parrot/freeflight/home/HomeUIController$32;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 1349
    :cond_0
    return-void
.end method
