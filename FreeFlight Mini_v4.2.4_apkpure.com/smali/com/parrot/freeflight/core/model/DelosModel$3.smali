.class Lcom/parrot/freeflight/core/model/DelosModel$3;
.super Landroid/content/BroadcastReceiver;
.source "DelosModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/model/DelosModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/model/DelosModel;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/model/DelosModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/model/DelosModel;

    .prologue
    .line 1375
    iput-object p1, p0, Lcom/parrot/freeflight/core/model/DelosModel$3;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1378
    const-string v1, "DeviceControllerNotificationDictionaryChanged"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1379
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1380
    .local v0, "dictionary":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1381
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel$3;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-static {v1, v0}, Lcom/parrot/freeflight/core/model/DelosModel;->access$2000(Lcom/parrot/freeflight/core/model/DelosModel;Landroid/os/Bundle;)V

    .line 1390
    .end local v0    # "dictionary":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 1383
    :cond_1
    const-string v1, "MiniDroneDeviceControllerMediaRecordEventPictureEventChangedNotification"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1384
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1385
    .restart local v0    # "dictionary":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1386
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel$3;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-static {v1, v0}, Lcom/parrot/freeflight/core/model/DelosModel;->access$2100(Lcom/parrot/freeflight/core/model/DelosModel;Landroid/os/Bundle;)V

    .line 1387
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel$3;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DelosModel;->notifyListener()V

    goto :goto_0
.end method
