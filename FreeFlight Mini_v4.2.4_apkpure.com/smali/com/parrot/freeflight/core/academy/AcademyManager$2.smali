.class Lcom/parrot/freeflight/core/academy/AcademyManager$2;
.super Landroid/content/BroadcastReceiver;
.source "AcademyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/academy/AcademyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/AcademyManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$2;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 247
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.parrot.freeflight4.NetworkStatus.notificationKey"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "IsInternetReachableIntentKey"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 249
    .local v0, "isInternetAvailable":Z
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$2;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$600(Lcom/parrot/freeflight/core/academy/AcademyManager;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 250
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$2;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v1, v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$700(Lcom/parrot/freeflight/core/academy/AcademyManager;Z)V

    .line 253
    .end local v0    # "isInternetAvailable":Z
    :cond_0
    return-void
.end method
