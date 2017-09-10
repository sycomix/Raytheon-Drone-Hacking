.class Lcom/parrot/controller/devicecontrollers/DeviceController$10;
.super Landroid/content/BroadcastReceiver;
.source "DeviceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/controller/devicecontrollers/DeviceController;->initBroadcastReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;


# direct methods
.method constructor <init>(Lcom/parrot/controller/devicecontrollers/DeviceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/controller/devicecontrollers/DeviceController;

    .prologue
    .line 2651
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$10;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2655
    const-string v1, "INTENT_EXTRA_IS_SUBDEVICE"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 2657
    .local v0, "isSubDevice":Z
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$10;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    iget-object v1, v1, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 2659
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$10;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->stop()V

    .line 2661
    :cond_0
    return-void
.end method
