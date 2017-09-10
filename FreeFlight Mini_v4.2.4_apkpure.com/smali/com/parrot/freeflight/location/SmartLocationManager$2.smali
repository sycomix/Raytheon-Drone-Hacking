.class Lcom/parrot/freeflight/location/SmartLocationManager$2;
.super Landroid/content/BroadcastReceiver;
.source "SmartLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/location/SmartLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/location/SmartLocationManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/location/SmartLocationManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/location/SmartLocationManager;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/parrot/freeflight/location/SmartLocationManager$2;->this$0:Lcom/parrot/freeflight/location/SmartLocationManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 160
    const-string v1, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    const-string v1, "enabled"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 162
    .local v0, "gpsFix":Z
    iget-object v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager$2;->this$0:Lcom/parrot/freeflight/location/SmartLocationManager;

    const-string v3, "gps"

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/parrot/freeflight/location/SmartLocationManager;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 164
    .end local v0    # "gpsFix":Z
    :cond_0
    return-void

    .line 162
    .restart local v0    # "gpsFix":Z
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
