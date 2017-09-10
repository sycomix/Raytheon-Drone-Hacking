.class Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread$1;
.super Ljava/lang/Object;
.source "DeviceController.java"

# interfaces
.implements Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$ConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread;


# direct methods
.method constructor <init>(Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread;

    .prologue
    .line 2066
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread$1;->this$1:Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(ILjava/lang/String;)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "json"    # Ljava/lang/String;

    .prologue
    .line 2069
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread$1;->this$1:Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread;

    if-nez p1, :cond_1

    sget-object v3, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_OK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    :goto_0
    invoke-static {v4, v3}, Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread;->access$1302(Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    .line 2070
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread$1;->this$1:Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread;

    invoke-static {v3}, Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread;->access$1300(Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    move-result-object v3

    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_OK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    if-ne v3, v4, :cond_0

    .line 2071
    const/4 v1, 0x0

    .line 2073
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2074
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread$1;->this$1:Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread;

    iget-object v3, v3, Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-static {v3}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$300(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread$1;->this$1:Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread;

    iget-object v4, v4, Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-static {v4}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$700(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->updateFrom(Lorg/json/JSONObject;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2079
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    return-void

    .line 2069
    :cond_1
    sget-object v3, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_ERROR:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    goto :goto_0

    .line 2075
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 2076
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    invoke-static {}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$600()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error reading json"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2075
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_2
.end method
