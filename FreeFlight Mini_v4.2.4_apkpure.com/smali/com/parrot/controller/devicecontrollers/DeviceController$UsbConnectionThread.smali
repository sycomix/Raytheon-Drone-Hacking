.class Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread;
.super Ljava/lang/Thread;
.source "DeviceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/controller/devicecontrollers/DeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbConnectionThread"
.end annotation


# instance fields
.field private error:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

.field final synthetic this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;


# direct methods
.method public constructor <init>(Lcom/parrot/controller/devicecontrollers/DeviceController;)V
    .locals 1

    .prologue
    .line 2047
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    .line 2048
    const-string v0, "UsbConnectionThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2049
    return-void
.end method

.method static synthetic access$1300(Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread;

    .prologue
    .line 2042
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread;->error:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread;
    .param p1, "x1"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    .prologue
    .line 2042
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread;->error:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    return-object p1
.end method


# virtual methods
.method public getError()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    .locals 1

    .prologue
    .line 2092
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread;->error:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    return-object v0
.end method

.method public run()V
    .locals 9

    .prologue
    .line 2053
    invoke-static {}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connecting mux"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2054
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$300(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getSerial()Ljava/lang/String;

    move-result-object v6

    .line 2055
    .local v6, "deviceId":Ljava/lang/String;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 2058
    .local v8, "json":Lorg/json/JSONObject;
    :try_start_0
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_CLIENT_STREAM_PORT_KEY:Ljava/lang/String;

    const v1, 0xd6dc

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2059
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_CLIENT_CONTROL_PORT_KEY:Ljava/lang/String;

    const v1, 0xd6dd

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2060
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_SUPPORTED_METADATA_VERSION_KEY:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2064
    :goto_0
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_ERROR:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread;->error:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    .line 2065
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->get(Landroid/content/Context;)Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v6, :cond_1

    move-object v3, v6

    .line 2066
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread$1;

    invoke-direct {v5, p0}, Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread$1;-><init>(Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread;)V

    .line 2065
    invoke-virtual/range {v0 .. v5}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$ConnectCallback;)I

    .line 2081
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread;->error:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_OK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    if-eq v0, v1, :cond_0

    .line 2083
    invoke-static {}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while opening discovery connection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread;->error:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2085
    :cond_0
    invoke-static {}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connecting mux done"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2087
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$1200(Lcom/parrot/controller/devicecontrollers/DeviceController;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2088
    return-void

    .line 2061
    :catch_0
    move-exception v7

    .line 2062
    .local v7, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error putting json keys"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2065
    .end local v7    # "e":Lorg/json/JSONException;
    :cond_1
    const-string v3, ""

    goto :goto_1
.end method
