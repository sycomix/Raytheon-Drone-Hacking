.class Lcom/parrot/freeflight/core/academy/RunOfflineManager$1;
.super Ljava/lang/Object;
.source "RunOfflineManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/academy/RunOfflineManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$1;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$1;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$000(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Lcom/parrot/freeflight/core/academy/RunCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunCollection;->clear()V

    .line 117
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$1;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$100(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Landroid/os/HandlerThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$1;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$100(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$1;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$102(Lcom/parrot/freeflight/core/academy/RunOfflineManager;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 119
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$1;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$202(Lcom/parrot/freeflight/core/academy/RunOfflineManager;Landroid/os/Handler;)Landroid/os/Handler;

    .line 120
    const-string v0, "RunOfflineManager"

    const-string v1, "quit work thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void
.end method
