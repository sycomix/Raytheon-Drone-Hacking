.class Lcom/parrot/freeflight/core/model/DelosModel$1;
.super Ljava/lang/Object;
.source "DelosModel.java"

# interfaces
.implements Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;


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
    .line 1217
    iput-object p1, p0, Lcom/parrot/freeflight/core/model/DelosModel$1;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChange(Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Lcom/parrot/controller/devicecontrollers/DeviceController;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Lcom/parrot/controller/devicecontrollers/DeviceController;)V
    .locals 6
    .param p1, "newState"    # Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "droneDeviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "droneDeviceController"    # Lcom/parrot/controller/devicecontrollers/DeviceController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "remoteCtrlDeviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "remoteCtrlDeviceController"    # Lcom/parrot/controller/devicecontrollers/DeviceController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1222
    const/4 v0, 0x0

    .line 1223
    .local v0, "miniDroneDeviceController":Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;
    instance-of v1, p3, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    if-eqz v1, :cond_0

    move-object v0, p3

    .line 1224
    check-cast v0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    .line 1226
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel$1;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-static {v1, p2}, Lcom/parrot/freeflight/core/model/DelosModel;->access$002(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 1227
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel$1;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/DelosModel;->access$100(Lcom/parrot/freeflight/core/model/DelosModel;)Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v1

    if-eq v1, p1, :cond_2

    .line 1228
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel$1;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/DelosModel;->access$100(Lcom/parrot/freeflight/core/model/DelosModel;)Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel$1;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/DelosModel;->access$200(Lcom/parrot/freeflight/core/model/DelosModel;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v1

    invoke-static {v1}, Lcom/parrot/freeflight/utils/ProductsUtils;->isMinidroneV3(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1235
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel$1;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-static {v1, p1}, Lcom/parrot/freeflight/core/model/DelosModel;->access$102(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;)Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 1236
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel$1;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/DelosModel;->access$300(Lcom/parrot/freeflight/core/model/DelosModel;)V

    .line 1238
    :cond_2
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel$1;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/DelosModel;->access$400(Lcom/parrot/freeflight/core/model/DelosModel;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1239
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel$1;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-static {v1, v3}, Lcom/parrot/freeflight/core/model/DelosModel;->access$502(Lcom/parrot/freeflight/core/model/DelosModel;Z)Z

    .line 1240
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel$1;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-static {v1, v3}, Lcom/parrot/freeflight/core/model/DelosModel;->access$602(Lcom/parrot/freeflight/core/model/DelosModel;Z)Z

    .line 1243
    :cond_3
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel$1;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/DelosModel;->access$700(Lcom/parrot/freeflight/core/model/DelosModel;)Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    move-result-object v1

    if-eq v1, v0, :cond_7

    .line 1244
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel$1;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-static {v1, v0}, Lcom/parrot/freeflight/core/model/DelosModel;->access$800(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;)V

    .line 1245
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1246
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel$1;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-static {v1, v0}, Lcom/parrot/freeflight/core/model/DelosModel;->access$702(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;)Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    .line 1247
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel$1;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/DelosModel;->access$400(Lcom/parrot/freeflight/core/model/DelosModel;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1248
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel$1;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/DelosModel;->access$900(Lcom/parrot/freeflight/core/model/DelosModel;)Lcom/parrot/freeflight/core/model/DelosOfflineEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DelosOfflineEngine;->save()V

    .line 1251
    :cond_4
    iget-object v4, p0, Lcom/parrot/freeflight/core/model/DelosModel$1;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel$1;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    .line 1252
    invoke-static {v1}, Lcom/parrot/freeflight/core/model/DelosModel;->access$700(Lcom/parrot/freeflight/core/model/DelosModel;)Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getARCommandsVersion()Ljava/lang/String;

    move-result-object v1

    const-string v5, "4.0.0.2"

    invoke-static {v1, v5}, Lcom/parrot/arsdk/arcommands/ARCommandsVersion;->compareVersions(Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;

    move-result-object v1

    sget-object v5, Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;->V2_NEWER:Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;

    if-ne v1, v5, :cond_9

    move v1, v2

    .line 1251
    :goto_1
    invoke-static {v4, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->access$1002(Lcom/parrot/freeflight/core/model/DelosModel;Z)Z

    .line 1253
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel$1;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/DelosModel;->access$1000(Lcom/parrot/freeflight/core/model/DelosModel;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1255
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel$1;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    iget-object v4, p0, Lcom/parrot/freeflight/core/model/DelosModel$1;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-static {v4}, Lcom/parrot/freeflight/core/model/DelosModel;->access$700(Lcom/parrot/freeflight/core/model/DelosModel;)Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getPhotoRecordController()Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/parrot/freeflight/core/model/DelosModel;->access$1102(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;)Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;

    .line 1256
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel$1;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/DelosModel;->access$1100(Lcom/parrot/freeflight/core/model/DelosModel;)Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1257
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel$1;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/DelosModel;->access$1100(Lcom/parrot/freeflight/core/model/DelosModel;)Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;

    move-result-object v1

    iget-object v4, p0, Lcom/parrot/freeflight/core/model/DelosModel$1;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-static {v4}, Lcom/parrot/freeflight/core/model/DelosModel;->access$1200(Lcom/parrot/freeflight/core/model/DelosModel;)Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->addDelegate(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;)V

    .line 1261
    :cond_5
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel$1;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/DelosModel;->access$1300(Lcom/parrot/freeflight/core/model/DelosModel;)V

    .line 1262
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel$1;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/DelosModel;->access$400(Lcom/parrot/freeflight/core/model/DelosModel;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1263
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel$1;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/DelosModel;->access$900(Lcom/parrot/freeflight/core/model/DelosModel;)Lcom/parrot/freeflight/core/model/DelosOfflineEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DelosOfflineEngine;->restore()V

    .line 1264
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel$1;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-static {v1, v2}, Lcom/parrot/freeflight/core/model/DelosModel;->access$502(Lcom/parrot/freeflight/core/model/DelosModel;Z)Z

    .line 1265
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel$1;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-static {v1, v2}, Lcom/parrot/freeflight/core/model/DelosModel;->access$602(Lcom/parrot/freeflight/core/model/DelosModel;Z)Z

    .line 1267
    :cond_6
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel$1;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DelosModel;->saveToStore()V

    .line 1268
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel$1;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-static {v1, v3}, Lcom/parrot/freeflight/core/model/DelosModel;->access$402(Lcom/parrot/freeflight/core/model/DelosModel;Z)Z

    .line 1270
    const-string v1, "FFMini.Model.Cache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cache restored = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/model/DelosModel$1;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-static {v3}, Lcom/parrot/freeflight/core/model/DelosModel;->access$500(Lcom/parrot/freeflight/core/model/DelosModel;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] while updating full dictionary"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel$1;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DelosModel;->notifyListener()V

    .line 1275
    :cond_7
    return-void

    .line 1231
    :cond_8
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosModel$1;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/DelosModel;->access$200(Lcom/parrot/freeflight/core/model/DelosModel;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v1

    invoke-static {v1}, Lcom/parrot/freeflight/utils/ProductsUtils;->isMinidroneV3(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_0

    :cond_9
    move v1, v3

    .line 1252
    goto/16 :goto_1
.end method
