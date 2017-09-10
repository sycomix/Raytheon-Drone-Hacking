.class Lcom/parrot/freeflight3/RemoteController$1$1;
.super Ljava/lang/Object;
.source "RemoteController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight3/RemoteController$1;->onRemoteButtonEvent(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight3/RemoteController$1;

.field final synthetic val$action:I

.field final synthetic val$remoteCode:I


# direct methods
.method constructor <init>(Lcom/parrot/freeflight3/RemoteController$1;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight3/RemoteController$1;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/parrot/freeflight3/RemoteController$1$1;->this$1:Lcom/parrot/freeflight3/RemoteController$1;

    iput p2, p0, Lcom/parrot/freeflight3/RemoteController$1$1;->val$remoteCode:I

    iput p3, p0, Lcom/parrot/freeflight3/RemoteController$1$1;->val$action:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 242
    iget-object v1, p0, Lcom/parrot/freeflight3/RemoteController$1$1;->this$1:Lcom/parrot/freeflight3/RemoteController$1;

    iget-object v1, v1, Lcom/parrot/freeflight3/RemoteController$1;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-static {v1}, Lcom/parrot/freeflight3/RemoteController;->access$1700(Lcom/parrot/freeflight3/RemoteController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight3/OnRemoteInputListener;

    .line 243
    .local v0, "listener":Lcom/parrot/freeflight3/OnRemoteInputListener;
    iget v2, p0, Lcom/parrot/freeflight3/RemoteController$1$1;->val$remoteCode:I

    iget v3, p0, Lcom/parrot/freeflight3/RemoteController$1$1;->val$action:I

    invoke-interface {v0, v2, v3}, Lcom/parrot/freeflight3/OnRemoteInputListener;->onRemoteButtonEvent(II)V

    goto :goto_0

    .line 245
    .end local v0    # "listener":Lcom/parrot/freeflight3/OnRemoteInputListener;
    :cond_0
    return-void
.end method
