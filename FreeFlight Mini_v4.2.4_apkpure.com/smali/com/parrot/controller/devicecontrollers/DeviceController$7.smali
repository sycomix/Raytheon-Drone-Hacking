.class Lcom/parrot/controller/devicecontrollers/DeviceController$7;
.super Ljava/lang/Object;
.source "DeviceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/controller/devicecontrollers/DeviceController;->startThread()V
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
    .line 2435
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$7;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2439
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$7;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/DeviceController;->doStart()Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    move-result-object v2

    .line 2441
    .local v2, "error":Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;
    sget-object v3, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    if-eq v2, v3, :cond_0

    .line 2443
    invoke-static {}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$600()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed to start the controller."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2446
    :cond_0
    sget-object v3, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    if-ne v2, v3, :cond_2

    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$7;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    iget-boolean v3, v3, Lcom/parrot/controller/devicecontrollers/DeviceController;->startCancelled:Z

    if-nez v3, :cond_2

    .line 2449
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$7;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    iget-object v3, v3, Lcom/parrot/controller/devicecontrollers/DeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2451
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$7;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    sget-object v4, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;->DEVICE_CONTROLLER_STATE_STARTED:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    iput-object v4, v3, Lcom/parrot/controller/devicecontrollers/DeviceController;->state:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    .line 2452
    invoke-static {}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$600()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DeviceController "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$7;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " did start"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2457
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$7;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$7;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    const-string v5, "DeviceControllerDidStartNotification"

    invoke-virtual {v4, v5}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getDeviceControllerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 2458
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$7;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    iget-object v3, v3, Lcom/parrot/controller/devicecontrollers/DeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2460
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$7;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-static {v3}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$000(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/arsdk/arrouter/ARRouter;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2462
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$7;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-static {v3}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$000(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/arsdk/arrouter/ARRouter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/arsdk/arrouter/ARRouter;->onConnectionToDeviceCompleted()V

    .line 2507
    :cond_1
    :goto_0
    return-void

    .line 2467
    :cond_2
    invoke-static {}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$600()Ljava/lang/String;

    move-result-object v3

    const-string v4, "failed or start canceled"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2472
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$7;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    iget-object v3, v3, Lcom/parrot/controller/devicecontrollers/DeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2474
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$7;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    sget-object v4, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;->DEVICE_CONTROLLER_STATE_STOPPING:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    iput-object v4, v3, Lcom/parrot/controller/devicecontrollers/DeviceController;->state:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    .line 2475
    sget-object v3, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    if-eq v2, v3, :cond_3

    .line 2481
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$7;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    const-string v4, "DeviceControllerDidFailNotification"

    invoke-virtual {v3, v4}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getDeviceControllerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2482
    .local v0, "didFailNotification":Landroid/content/Intent;
    const-string v3, "INTENT_EXTRA_ERROR"

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->ordinal()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2484
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$7;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 2487
    .end local v0    # "didFailNotification":Landroid/content/Intent;
    :cond_3
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$7;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    iget-object v3, v3, Lcom/parrot/controller/devicecontrollers/DeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2489
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$7;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/DeviceController;->doStop()V

    .line 2492
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$7;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    iget-object v3, v3, Lcom/parrot/controller/devicecontrollers/DeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2493
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$7;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    sget-object v4, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;->DEVICE_CONTROLLER_STATE_STOPPED:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    iput-object v4, v3, Lcom/parrot/controller/devicecontrollers/DeviceController;->state:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    .line 2494
    invoke-static {}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$600()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DeviceController "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$7;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " did stop because of connexion error or cancel (error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2499
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$7;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    const-string v4, "DeviceControllerDidStopNotification"

    invoke-virtual {v3, v4}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getDeviceControllerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 2500
    .local v1, "didStopNotification":Landroid/content/Intent;
    const-string v3, "INTENT_EXTRA_ERROR"

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->ordinal()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2501
    const-string v3, "INTENT_SOURCE_UUID"

    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$7;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-static {v4}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$1600(Lcom/parrot/controller/devicecontrollers/DeviceController;)Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2503
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$7;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 2504
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$7;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    iget-object v3, v3, Lcom/parrot/controller/devicecontrollers/DeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0
.end method
