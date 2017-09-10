.class Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$6;
.super Ljava/lang/Object;
.source "ARRouter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->onSkyControllerWifiWifiAuthChannelUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    .prologue
    .line 2085
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$6;->this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 2089
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 2090
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->getWifiAuthChannelList()Ljava/util/ArrayList;

    move-result-object v2

    .line 2091
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiAuthChannel;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiAuthChannel;

    .line 2093
    .local v1, "elt":Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiAuthChannel;
    iget-object v4, v1, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiAuthChannel;->mBand:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;

    iget-byte v5, v1, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiAuthChannel;->mChannel:B

    iget-byte v6, v1, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiAuthChannel;->mInOrOut:B

    invoke-virtual {v0, v4, v5, v6}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerWifiStateWifiAuthChannelListChanged(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;BB)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 2094
    iget-object v4, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$6;->this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    iget-object v4, v4, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v4, v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    goto :goto_0

    .line 2096
    .end local v1    # "elt":Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiAuthChannel;
    :cond_0
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerWifiStateAllWifiAuthChannelChanged()Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 2097
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$6;->this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    iget-object v3, v3, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v3, v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    .line 2098
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 2099
    return-void
.end method
