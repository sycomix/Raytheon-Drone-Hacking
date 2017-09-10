.class final Lcom/facebook/internal/LikeActionController$4;
.super Landroid/content/BroadcastReceiver;
.source "LikeActionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/LikeActionController;->registerSessionBroadcastReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 286
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "receiverContext"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 289
    invoke-static {}, Lcom/facebook/internal/LikeActionController;->access$200()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 328
    :goto_0
    return-void

    .line 293
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.facebook.sdk.ACTIVE_SESSION_UNSET"

    invoke-static {v3, v0}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.facebook.sdk.ACTIVE_SESSION_CLOSED"

    invoke-static {v3, v0}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v1, v2

    .line 299
    .local v1, "shouldClearDisk":Z
    :goto_1
    invoke-static {v2}, Lcom/facebook/internal/LikeActionController;->access$202(Z)Z

    .line 302
    invoke-static {}, Lcom/facebook/internal/LikeActionController;->access$800()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/facebook/internal/LikeActionController$4$1;

    invoke-direct {v3, p0, v1}, Lcom/facebook/internal/LikeActionController$4$1;-><init>(Lcom/facebook/internal/LikeActionController$4;Z)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 294
    .end local v1    # "shouldClearDisk":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
