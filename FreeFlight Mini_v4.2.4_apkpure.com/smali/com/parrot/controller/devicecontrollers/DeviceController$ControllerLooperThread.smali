.class public Lcom/parrot/controller/devicecontrollers/DeviceController$ControllerLooperThread;
.super Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;
.source "DeviceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/controller/devicecontrollers/DeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ControllerLooperThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;


# direct methods
.method public constructor <init>(Lcom/parrot/controller/devicecontrollers/DeviceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/controller/devicecontrollers/DeviceController;

    .prologue
    .line 2151
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$ControllerLooperThread;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, p1}, Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;-><init>(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 2153
    return-void
.end method


# virtual methods
.method public onloop()V
    .locals 10

    .prologue
    .line 2158
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2160
    .local v2, "lastTime":J
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$ControllerLooperThread;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->controllerLoop()V

    .line 2162
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$ControllerLooperThread;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    iget-wide v8, v1, Lcom/parrot/controller/devicecontrollers/DeviceController;->loopInterval:J

    add-long/2addr v6, v8

    sub-long v4, v6, v2

    .line 2166
    .local v4, "sleepTime":J
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2172
    :goto_0
    return-void

    .line 2168
    :catch_0
    move-exception v0

    .line 2170
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
