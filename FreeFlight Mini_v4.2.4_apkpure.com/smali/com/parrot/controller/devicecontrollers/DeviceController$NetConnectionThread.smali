.class Lcom/parrot/controller/devicecontrollers/DeviceController$NetConnectionThread;
.super Ljava/lang/Thread;
.source "DeviceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/controller/devicecontrollers/DeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetConnectionThread"
.end annotation


# instance fields
.field private error:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

.field final synthetic this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;


# direct methods
.method private constructor <init>(Lcom/parrot/controller/devicecontrollers/DeviceController;)V
    .locals 0

    .prologue
    .line 2020
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$NetConnectionThread;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/controller/devicecontrollers/DeviceController;Lcom/parrot/controller/devicecontrollers/DeviceController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/controller/devicecontrollers/DeviceController;
    .param p2, "x1"    # Lcom/parrot/controller/devicecontrollers/DeviceController$1;

    .prologue
    .line 2020
    invoke-direct {p0, p1}, Lcom/parrot/controller/devicecontrollers/DeviceController$NetConnectionThread;-><init>(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    return-void
.end method


# virtual methods
.method public getError()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    .locals 1

    .prologue
    .line 2038
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$NetConnectionThread;->error:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    return-object v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 2026
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$NetConnectionThread;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$1100(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$NetConnectionThread;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-static {v1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$1000(Lcom/parrot/controller/devicecontrollers/DeviceController;)I

    move-result v1

    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$NetConnectionThread;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-static {v2}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$300(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ControllerConnection(ILjava/lang/String;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$NetConnectionThread;->error:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    .line 2027
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$NetConnectionThread;->error:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_OK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    if-eq v0, v1, :cond_0

    .line 2029
    invoke-static {}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while opening discovery connection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$NetConnectionThread;->error:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2033
    :cond_0
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$NetConnectionThread;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$1200(Lcom/parrot/controller/devicecontrollers/DeviceController;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2034
    return-void
.end method
