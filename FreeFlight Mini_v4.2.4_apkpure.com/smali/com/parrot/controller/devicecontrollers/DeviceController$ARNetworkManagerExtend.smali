.class Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkManagerExtend;
.super Lcom/parrot/arsdk/arnetwork/ARNetworkManager;
.source "DeviceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/controller/devicecontrollers/DeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ARNetworkManagerExtend"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ARNetworkManagerExtend"


# instance fields
.field final synthetic this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;


# direct methods
.method public constructor <init>(Lcom/parrot/controller/devicecontrollers/DeviceController;Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;[Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;[Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;I)V
    .locals 0
    .param p2, "osSpecificManager"    # Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;
    .param p3, "inputParamArray"    # [Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    .param p4, "outputParamArray"    # [Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    .param p5, "timeBetweenPingsMs"    # I

    .prologue
    .line 1911
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkManagerExtend;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    .line 1912
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;-><init>(Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;[Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;[Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;I)V

    .line 1913
    return-void
.end method


# virtual methods
.method public onCallback(ILcom/parrot/arsdk/arsal/ARNativeData;Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_STATUS_ENUM;Ljava/lang/Object;)Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .locals 6
    .param p1, "ioBufferId"    # I
    .param p2, "data"    # Lcom/parrot/arsdk/arsal/ARNativeData;
    .param p3, "status"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_STATUS_ENUM;
    .param p4, "customData"    # Ljava/lang/Object;

    .prologue
    .line 1921
    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DEFAULT:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    .local v1, "retVal":Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    move-object v2, p4

    .line 1922
    check-cast v2, Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkSendInfo;

    .line 1925
    .local v2, "sendInfo":Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkSendInfo;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkManagerExtend;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-static {v3}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$900(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v3

    if-ne v3, p1, :cond_0

    if-eqz p2, :cond_0

    .line 1927
    invoke-static {p2}, Lcom/parrot/arsdk/arcommands/ARCommand;->arNativeDataToARCommandString(Lcom/parrot/arsdk/arsal/ARNativeData;)Ljava/lang/String;

    move-result-object v0

    .line 1928
    .local v0, "commandStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1930
    sget-object v3, Lcom/parrot/controller/devicecontrollers/DeviceController$12;->$SwitchMap$com$parrot$arsdk$arnetwork$ARNETWORK_MANAGER_CALLBACK_STATUS_ENUM:[I

    invoke-virtual {p3}, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_STATUS_ENUM;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1950
    .end local v0    # "commandStr":Ljava/lang/String;
    :cond_0
    :goto_0
    sget-object v3, Lcom/parrot/controller/devicecontrollers/DeviceController$12;->$SwitchMap$com$parrot$arsdk$arnetwork$ARNETWORK_MANAGER_CALLBACK_STATUS_ENUM:[I

    invoke-virtual {p3}, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_STATUS_ENUM;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 2004
    const-string v3, "ARNetworkManagerExtend"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "default case status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    :cond_1
    :goto_1
    :pswitch_0
    return-object v1

    .line 1933
    .restart local v0    # "commandStr":Ljava/lang/String;
    :pswitch_1
    const-string v3, "ARNetworkManagerExtend"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Did send command :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1936
    :pswitch_2
    const-string v3, "ARNetworkManagerExtend"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Did receive ack for command :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1939
    :pswitch_3
    const-string v3, "ARNetworkManagerExtend"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reception of command ack did timeout "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1942
    :pswitch_4
    const-string v3, "ARNetworkManagerExtend"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Command has not been sent (status cancel) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1954
    .end local v0    # "commandStr":Ljava/lang/String;
    :pswitch_5
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkSendInfo;->getNotificationListener()Lcom/parrot/controller/devicecontrollers/NetworkNotificationListener;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1956
    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkSendInfo;->getNotificationListener()Lcom/parrot/controller/devicecontrollers/NetworkNotificationListener;

    move-result-object v3

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkSendInfo;->getNotificationData()Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/parrot/controller/devicecontrollers/NetworkNotificationListener;->networkDidSendFrame(Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)V

    goto :goto_1

    .line 1962
    :pswitch_6
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkSendInfo;->getNotificationListener()Lcom/parrot/controller/devicecontrollers/NetworkNotificationListener;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1964
    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkSendInfo;->getNotificationListener()Lcom/parrot/controller/devicecontrollers/NetworkNotificationListener;

    move-result-object v3

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkSendInfo;->getNotificationData()Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/parrot/controller/devicecontrollers/NetworkNotificationListener;->networkDidReceiveAck(Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)V

    goto/16 :goto_1

    .line 1970
    :pswitch_7
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkSendInfo;->getNotificationListener()Lcom/parrot/controller/devicecontrollers/NetworkNotificationListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1972
    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkSendInfo;->getNotificationListener()Lcom/parrot/controller/devicecontrollers/NetworkNotificationListener;

    move-result-object v3

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkSendInfo;->getNotificationData()Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/parrot/controller/devicecontrollers/NetworkNotificationListener;->networkTimeoutOccurred(Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)V

    .line 1976
    :cond_2
    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkSendInfo;->getTimeoutPolicy()Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    move-result-object v1

    .line 1978
    goto/16 :goto_1

    .line 1982
    :pswitch_8
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkSendInfo;->getNotificationListener()Lcom/parrot/controller/devicecontrollers/NetworkNotificationListener;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1984
    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkSendInfo;->getNotificationListener()Lcom/parrot/controller/devicecontrollers/NetworkNotificationListener;

    move-result-object v3

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkSendInfo;->getNotificationData()Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/parrot/controller/devicecontrollers/NetworkNotificationListener;->networkDidCancelFrame(Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)V

    goto/16 :goto_1

    .line 1989
    :pswitch_9
    if-eqz p2, :cond_3

    .line 1991
    invoke-virtual {p2}, Lcom/parrot/arsdk/arsal/ARNativeData;->dispose()V

    goto/16 :goto_1

    .line 1995
    :cond_3
    const-string v3, "ARNetworkManagerExtend"

    const-string v4, "no data to free"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1930
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1950
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
    .end packed-switch
.end method

.method public onDisconnect(Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;)V
    .locals 2
    .param p1, "alManager"    # Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    .prologue
    .line 2015
    const-string v0, "ARNetworkManagerExtend"

    const-string v1, "onDisconnect !!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkManagerExtend;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->stop()V

    .line 2017
    return-void
.end method
