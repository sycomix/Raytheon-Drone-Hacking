.class Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneControllerLooperThread;
.super Lcom/parrot/controller/devicecontrollers/DeviceController$ControllerLooperThread;
.source "MiniDroneDeviceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MiniDroneControllerLooperThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;


# direct methods
.method public constructor <init>(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 743
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneControllerLooperThread;->this$0:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    invoke-direct {p0, p1}, Lcom/parrot/controller/devicecontrollers/DeviceController$ControllerLooperThread;-><init>(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 744
    iget-wide v0, p1, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->loopInterval:J

    invoke-static {p1, v0, v1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->access$602(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;J)J

    .line 745
    invoke-static {p1, v2}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->access$702(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;Z)Z

    .line 746
    invoke-static {p1, v2}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->access$802(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;I)I

    .line 747
    return-void
.end method


# virtual methods
.method public onloop()V
    .locals 12

    .prologue
    .line 752
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 754
    .local v2, "lastTime":J
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneControllerLooperThread;->this$0:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->controllerLoop()V

    .line 757
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneControllerLooperThread;->this$0:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    invoke-static {v1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->access$600(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;)J

    move-result-wide v6

    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneControllerLooperThread;->this$0:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    iget-wide v8, v1, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->loopInterval:J

    cmp-long v1, v6, v8

    if-eqz v1, :cond_0

    .line 759
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneControllerLooperThread;->this$0:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    iget-object v6, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneControllerLooperThread;->this$0:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    invoke-static {v6}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->access$600(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;)J

    move-result-wide v6

    long-to-double v6, v6

    iget-object v8, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneControllerLooperThread;->this$0:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    invoke-static {v8}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->access$600(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;)J

    move-result-wide v8

    long-to-double v8, v8

    invoke-static {}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->access$900()D

    move-result-wide v10

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-long v6, v6

    invoke-static {v1, v6, v7}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->access$602(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;J)J

    .line 760
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneControllerLooperThread;->this$0:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    iget-object v6, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneControllerLooperThread;->this$0:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    invoke-static {v6}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->access$600(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;)J

    move-result-wide v6

    iget-object v8, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneControllerLooperThread;->this$0:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    iget-wide v8, v8, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->loopInterval:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-static {v1, v6, v7}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->access$602(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;J)J

    .line 763
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneControllerLooperThread;->this$0:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    invoke-static {v1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->access$600(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;)J

    move-result-wide v8

    add-long/2addr v6, v8

    sub-long v4, v6, v2

    .line 767
    .local v4, "sleepTime":J
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    :goto_0
    return-void

    .line 769
    :catch_0
    move-exception v0

    .line 771
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
