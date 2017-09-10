.class Lcom/parrot/freeflight/core/academy/MediaManager$3;
.super Landroid/content/BroadcastReceiver;
.source "MediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/academy/MediaManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/MediaManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/MediaManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/academy/MediaManager;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/MediaManager$3;->this$0:Lcom/parrot/freeflight/core/academy/MediaManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 121
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 122
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "ARMediaManagerNotificationDictionaryMediaAddedKey"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/MediaManager$3;->this$0:Lcom/parrot/freeflight/core/academy/MediaManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/parrot/freeflight/core/academy/MediaManager;->access$002(Lcom/parrot/freeflight/core/academy/MediaManager;Z)Z

    .line 124
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/MediaManager$3;->this$0:Lcom/parrot/freeflight/core/academy/MediaManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/academy/MediaManager;->access$100(Lcom/parrot/freeflight/core/academy/MediaManager;)V

    .line 126
    :cond_0
    return-void
.end method
