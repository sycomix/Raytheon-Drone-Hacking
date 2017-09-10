.class Lcom/parrot/controller/devicecontrollers/DeviceController$4;
.super Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;
.source "DeviceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/controller/devicecontrollers/DeviceController;->ardiscoveryNetConnect()Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

.field final synthetic val$d2cPort:I


# direct methods
.method constructor <init>(Lcom/parrot/controller/devicecontrollers/DeviceController;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/controller/devicecontrollers/DeviceController;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 1134
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$4;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    iput p3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$4;->val$d2cPort:I

    invoke-direct {p0, p2}, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryConnection;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onReceiveJsonFromRouter(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    .locals 6
    .param p1, "receivedData"    # Lorg/json/JSONObject;
    .param p2, "ip"    # Ljava/lang/String;

    .prologue
    .line 1175
    invoke-static {}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$600()Ljava/lang/String;

    move-result-object v4

    const-string v5, "onReceiveJsonFromRouter"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_OK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    .line 1180
    .local v1, "error":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    move-object v2, p1

    .line 1181
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$4;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-static {v4}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$300(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$4;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-static {v5}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$700(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->updateFrom(Lorg/json/JSONObject;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V

    .line 1183
    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_STATUS_KEY:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1185
    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_STATUS_KEY:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1186
    .local v3, "status":I
    invoke-static {v3}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1194
    .end local v3    # "status":I
    :cond_0
    :goto_0
    invoke-static {}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$600()Ljava/lang/String;

    move-result-object v4

    const-string v5, "end onReceiveJsonFromRouter"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    return-object v1

    .line 1189
    :catch_0
    move-exception v0

    .line 1191
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1192
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_ERROR:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    goto :goto_0
.end method

.method protected onSendJsonToRouter()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 1139
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1143
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_D2CPORT_KEY:Ljava/lang/String;

    iget v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$4;->val$d2cPort:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1144
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_CONTROLLER_NAME_KEY:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1145
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_CONTROLLER_TYPE_KEY:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1146
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_CLIENT_STREAM_PORT_KEY:Ljava/lang/String;

    const v3, 0xd6dc

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1147
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_CLIENT_CONTROL_PORT_KEY:Ljava/lang/String;

    const v3, 0xd6dd

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1148
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_SUPPORTED_METADATA_VERSION_KEY:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1155
    :goto_0
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$4;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-static {v2}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$300(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getSerial()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1159
    :try_start_1
    invoke-static {}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$600()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ARDISCOVERY_CONNECTION_JSON_DEVICE_ID_KEY: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$4;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-static {v4}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$300(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getSerial()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_DEVICE_ID_KEY:Ljava/lang/String;

    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$4;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-static {v3}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$300(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getSerial()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1168
    :cond_0
    :goto_1
    invoke-static {}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$600()Ljava/lang/String;

    move-result-object v2

    const-string v3, "end onSendJsonToRouter"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    return-object v1

    .line 1150
    :catch_0
    move-exception v0

    .line 1152
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$600()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error building json: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1162
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 1164
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$600()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error building json: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
