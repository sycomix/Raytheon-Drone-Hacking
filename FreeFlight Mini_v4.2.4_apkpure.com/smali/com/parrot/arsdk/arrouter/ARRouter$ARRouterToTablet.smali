.class Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;
.super Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;
.source "ARRouter.java"

# interfaces
.implements Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerWifiRequestWifiListListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerWifiConnectToWifiListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerWifiRequestCurrentWifiListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerWifiForgetWifiListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerSettingsAllSettingsListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerCommonAllStatesListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerDeviceRequestDeviceListListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerDeviceRequestCurrentDeviceListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerAccessPointSettingsAccessPointSSIDListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerAccessPointSettingsAccessPointChannelListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerCameraResetOrientationListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandCommonSettingsCountryListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerWifiWifiAuthChannelListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerAccessPointSettingsWifiSelectionListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerGamepadInfosGetGamepadControlsListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerButtonMappingsGetCurrentButtonMappingsListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerButtonMappingsGetAvailableButtonMappingsListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerButtonMappingsSetButtonMappingListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerButtonMappingsDefaultButtonMappingListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerAxisMappingsGetCurrentAxisMappingsListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerAxisMappingsGetAvailableAxisMappingsListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerAxisMappingsSetAxisMappingListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerAxisMappingsDefaultAxisMappingListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerAxisFiltersGetCurrentAxisFiltersListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerAxisFiltersGetPresetAxisFiltersListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerAxisFiltersSetAxisFilterListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerAxisFiltersDefaultAxisFiltersListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerCoPilotingSetPilotingSourceListener;
.implements Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerCalibrationEnableMagnetoCalibrationQualityUpdatesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/arrouter/ARRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ARRouterToTablet"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

.field private final wifiListener:Lcom/parrot/arsdk/arrouter/ARWifiHelper$ARWifiHelperListener;


# direct methods
.method public constructor <init>(Lcom/parrot/arsdk/arrouter/ARRouter;Ljava/lang/String;Ljava/util/List;Ljava/util/List;II)V
    .locals 2
    .param p2, "ip"    # Ljava/lang/String;
    .param p5, "routerToTabletPort"    # I
    .param p6, "tabletToRouterPort"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1704
    .local p3, "routerToTabletParams":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;>;"
    .local p4, "tabletToRouterParams":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;>;"
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    .line 1705
    invoke-direct/range {p0 .. p6}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToController;-><init>(Lcom/parrot/arsdk/arrouter/ARRouter;Ljava/lang/String;Ljava/util/List;Ljava/util/List;II)V

    .line 1707
    new-instance v0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$1;

    invoke-direct {v0, p0, p1}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$1;-><init>(Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;Lcom/parrot/arsdk/arrouter/ARRouter;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->wifiListener:Lcom/parrot/arsdk/arrouter/ARWifiHelper$ARWifiHelperListener;

    .line 1751
    invoke-static {p1}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$1100(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARWifiHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->wifiListener:Lcom/parrot/arsdk/arrouter/ARWifiHelper$ARWifiHelperListener;

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->addWifiHelperListener(Lcom/parrot/arsdk/arrouter/ARWifiHelper$ARWifiHelperListener;)V

    .line 1752
    return-void
.end method

.method static synthetic access$2400(Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    .prologue
    .line 1667
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->sendMagnetoCalibrationQualityUpdatesState()V

    return-void
.end method

.method private sendMagnetoCalibrationQualityUpdatesState()V
    .locals 2

    .prologue
    .line 2318
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 2319
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v1}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$2600(Lcom/parrot/arsdk/arrouter/ARRouter;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerCalibrationStateMagnetoCalibrationQualityUpdatesState(B)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 2320
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v1, v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    .line 2321
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 2322
    return-void

    .line 2319
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public didDisconnect()V
    .locals 2

    .prologue
    .line 1756
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tablet did disconnect"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$1100(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARWifiHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->wifiListener:Lcom/parrot/arsdk/arrouter/ARWifiHelper$ARWifiHelperListener;

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->removeWifiHelperListener(Lcom/parrot/arsdk/arrouter/ARWifiHelper$ARWifiHelperListener;)V

    .line 1758
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$1200(Lcom/parrot/arsdk/arrouter/ARRouter;)V

    .line 1759
    return-void
.end method

.method public onCommonSettingsCountryUpdate(Ljava/lang/String;)V
    .locals 1
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 2077
    sget-object v0, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;->DELAYED:Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;

    invoke-static {p1, v0}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->setWifiCountry(Ljava/lang/String;Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;)Z

    .line 2078
    return-void
.end method

.method public onSkyContollerBatteryChanged(I)Z
    .locals 5
    .param p1, "percent"    # I

    .prologue
    .line 1831
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1832
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    int-to-byte v2, p1

    invoke-virtual {v0, v2}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerSkyControllerStateBatteryChanged(B)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1833
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v2, v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    move-result v1

    .line 1834
    .local v1, "res":Z
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1836
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSkyContollerBatteryChanged res="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    return v1
.end method

.method public onSkyContollerGpsFixChanged(Z)Z
    .locals 5
    .param p1, "fixed"    # Z

    .prologue
    .line 1842
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1843
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerSkyControllerStateGpsFixChanged(B)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1844
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v2, v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    move-result v1

    .line 1845
    .local v1, "res":Z
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1847
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSkyContollerGpsFixChanged res="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1848
    return v1

    .line 1843
    .end local v1    # "res":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onSkyContollerWifiSignalLevelChanged(I)Z
    .locals 5
    .param p1, "wifiSignalLevel"    # I

    .prologue
    .line 1853
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1854
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    int-to-byte v2, p1

    invoke-virtual {v0, v2}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerWifiStateWifiSignalChanged(B)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1855
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v2, v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    move-result v1

    .line 1856
    .local v1, "res":Z
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1858
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSkyContollerWifiSignalLevelChanged res="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1859
    return v1
.end method

.method public onSkyControllerAccessPointSettingsAccessPointChannelUpdate(B)V
    .locals 2
    .param p1, "channel"    # B

    .prologue
    .line 2068
    and-int/lit16 v0, p1, 0xff

    .line 2069
    .local v0, "channelInt":I
    sget-object v1, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;->NOW:Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->setWifiAPChannel(ILcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;)Z

    .line 2071
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendAPChannelSetting()Z

    .line 2072
    return-void
.end method

.method public onSkyControllerAccessPointSettingsAccessPointSSIDUpdate(Ljava/lang/String;)V
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 2060
    invoke-static {p1}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->setAPSSID(Ljava/lang/String;)Z

    .line 2062
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendAPSSIDSetting()Z

    .line 2063
    return-void
.end method

.method public onSkyControllerAccessPointSettingsWifiSelectionUpdate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_ACCESSPOINTSETTINGS_WIFISELECTION_TYPE_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_ACCESSPOINTSETTINGS_WIFISELECTION_BAND_ENUM;B)V
    .locals 3
    .param p1, "type"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_ACCESSPOINTSETTINGS_WIFISELECTION_TYPE_ENUM;
    .param p2, "band"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_ACCESSPOINTSETTINGS_WIFISELECTION_BAND_ENUM;
    .param p3, "channel"    # B

    .prologue
    .line 2107
    invoke-virtual {p2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_ACCESSPOINTSETTINGS_WIFISELECTION_BAND_ENUM;->getValue()I

    move-result v0

    .line 2108
    .local v0, "bandValue":I
    and-int/lit16 v1, p3, 0xff

    .line 2109
    .local v1, "channelInt":I
    sget-object v2, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;->NONE:Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;

    invoke-static {v0, v2}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->setWifiAPBand(ILcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;)Z

    .line 2110
    sget-object v2, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;->NOW:Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->setWifiAPChannel(ILcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;)Z

    .line 2111
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendAPBandAndChannelSettings()Z

    .line 2112
    return-void
.end method

.method public onSkyControllerAxisFiltersDefaultAxisFiltersUpdate()V
    .locals 1

    .prologue
    .line 2296
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$000(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2298
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$000(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;->resetDefaultAxisFilters()V

    .line 2299
    invoke-virtual {p0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->onSkyControllerAxisFiltersGetCurrentAxisFiltersUpdate()V

    .line 2301
    :cond_0
    return-void
.end method

.method public onSkyControllerAxisFiltersGetCurrentAxisFiltersUpdate()V
    .locals 6

    .prologue
    .line 2251
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 2252
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v3}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$000(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2254
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v3}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$000(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;->getCurrentAxisFilters()Ljava/util/Map;

    move-result-object v2

    .line 2255
    .local v2, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2257
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v5, v3}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerAxisFiltersStateCurrentAxisFilters(ILjava/lang/String;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 2258
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v3, v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    goto :goto_0

    .line 2261
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v2    # "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerAxisFiltersStateAllCurrentFiltersSent()Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 2262
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v3, v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    .line 2263
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 2264
    return-void
.end method

.method public onSkyControllerAxisFiltersGetPresetAxisFiltersUpdate()V
    .locals 6

    .prologue
    .line 2269
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 2270
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v3}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$000(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2272
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v3}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$000(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;->getPresetFilters()Ljava/util/Map;

    move-result-object v2

    .line 2273
    .local v2, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2275
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerAxisFiltersStatePresetAxisFilters(Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 2276
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v3, v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    goto :goto_0

    .line 2279
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerAxisFiltersStateAllPresetFiltersSent()Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 2280
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v3, v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    .line 2281
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 2282
    return-void
.end method

.method public onSkyControllerAxisFiltersSetAxisFilterUpdate(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2287
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$000(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2289
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$000(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;->setAxisFilter(ILjava/lang/String;)V

    .line 2291
    :cond_0
    return-void
.end method

.method public onSkyControllerAxisMappingsDefaultAxisMappingUpdate()V
    .locals 1

    .prologue
    .line 2241
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$000(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2243
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$000(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;->resetDefaultAxisMappings()V

    .line 2244
    invoke-virtual {p0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->onSkyControllerAxisMappingsGetCurrentAxisMappingsUpdate()V

    .line 2246
    :cond_0
    return-void
.end method

.method public onSkyControllerAxisMappingsGetAvailableAxisMappingsUpdate()V
    .locals 6

    .prologue
    .line 2214
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 2215
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v3}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$000(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2217
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v3}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$000(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;->getAvailableAxisMappings()Ljava/util/Map;

    move-result-object v2

    .line 2218
    .local v2, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2220
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerAxisMappingsStateAvailableAxisMappings(Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 2221
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v3, v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    goto :goto_0

    .line 2224
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerAxisMappingsStateAllAvailableAxisMappingsSent()Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 2225
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v3, v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    .line 2226
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 2227
    return-void
.end method

.method public onSkyControllerAxisMappingsGetCurrentAxisMappingsUpdate()V
    .locals 6

    .prologue
    .line 2196
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 2197
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v3}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$000(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2199
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v3}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$000(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;->getCurrentAxisMappings()Ljava/util/Map;

    move-result-object v2

    .line 2200
    .local v2, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2202
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v5, v3}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerAxisMappingsStateCurrentAxisMappings(ILjava/lang/String;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 2203
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v3, v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    goto :goto_0

    .line 2206
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v2    # "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerAxisMappingsStateAllCurrentAxisMappingsSent()Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 2207
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v3, v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    .line 2208
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 2209
    return-void
.end method

.method public onSkyControllerAxisMappingsSetAxisMappingUpdate(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2232
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$000(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2234
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$000(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;->setAxisMapping(ILjava/lang/String;)V

    .line 2236
    :cond_0
    return-void
.end method

.method public onSkyControllerButtonMappingsDefaultButtonMappingUpdate()V
    .locals 1

    .prologue
    .line 2186
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$000(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2188
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$000(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;->resetDefaultKeyMappings()V

    .line 2189
    invoke-virtual {p0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->onSkyControllerButtonMappingsGetCurrentButtonMappingsUpdate()V

    .line 2191
    :cond_0
    return-void
.end method

.method public onSkyControllerButtonMappingsGetAvailableButtonMappingsUpdate()V
    .locals 6

    .prologue
    .line 2159
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 2160
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v3}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$000(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2162
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v3}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$000(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;->getAvailableKeyMappings()Ljava/util/Map;

    move-result-object v2

    .line 2163
    .local v2, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2165
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerButtonMappingsStateAvailableButtonMappings(Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 2166
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v3, v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    goto :goto_0

    .line 2169
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerButtonMappingsStateAllAvailableButtonsMappingsSent()Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 2170
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v3, v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    .line 2171
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 2172
    return-void
.end method

.method public onSkyControllerButtonMappingsGetCurrentButtonMappingsUpdate()V
    .locals 6

    .prologue
    .line 2141
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 2142
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v3}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$000(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2144
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v3}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$000(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;->getCurrentKeyMappings()Ljava/util/Map;

    move-result-object v2

    .line 2145
    .local v2, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2147
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v5, v3}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerButtonMappingsStateCurrentButtonMappings(ILjava/lang/String;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 2148
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v3, v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    goto :goto_0

    .line 2151
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v2    # "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerButtonMappingsStateAllCurrentButtonMappingsSent()Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 2152
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v3, v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    .line 2153
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 2154
    return-void
.end method

.method public onSkyControllerButtonMappingsSetButtonMappingUpdate(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2177
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$000(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2179
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$000(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;->setKeyMapping(ILjava/lang/String;)V

    .line 2181
    :cond_0
    return-void
.end method

.method public onSkyControllerCalibrationEnableMagnetoCalibrationQualityUpdatesUpdate(B)V
    .locals 2
    .param p1, "enable"    # B

    .prologue
    const/4 v0, 0x1

    .line 2312
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-static {v1, v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$2602(Lcom/parrot/arsdk/arrouter/ARRouter;Z)Z

    .line 2313
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->sendMagnetoCalibrationQualityUpdatesState()V

    .line 2314
    return-void

    .line 2312
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSkyControllerCameraResetOrientationUpdate()V
    .locals 2

    .prologue
    .line 1865
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSkyControllerCameraResetOrientationUpdate"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$1300(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARRouter$CameraResetListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1868
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$1300(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARRouter$CameraResetListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/arsdk/arrouter/ARRouter$CameraResetListener;->onCameraReset()V

    .line 1870
    :cond_0
    return-void
.end method

.method public onSkyControllerCoPilotingSetPilotingSourceUpdate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_COPILOTING_SETPILOTINGSOURCE_SOURCE_ENUM;)V
    .locals 2
    .param p1, "source"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_COPILOTING_SETPILOTINGSOURCE_SOURCE_ENUM;

    .prologue
    .line 2306
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_COPILOTING_SETPILOTINGSOURCE_SOURCE_ENUM;->ARCOMMANDS_SKYCONTROLLER_COPILOTING_SETPILOTINGSOURCE_SOURCE_SKYCONTROLLER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_COPILOTING_SETPILOTINGSOURCE_SOURCE_ENUM;

    invoke-virtual {v0, p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_COPILOTING_SETPILOTINGSOURCE_SOURCE_ENUM;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$2500(Lcom/parrot/arsdk/arrouter/ARRouter;Z)V

    .line 2307
    return-void

    .line 2306
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSkyControllerCommonAllStatesUpdate()V
    .locals 2

    .prologue
    .line 2006
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$5;

    invoke-direct {v1, p0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$5;-><init>(Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2043
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2044
    return-void
.end method

.method public onSkyControllerDeviceRequestCurrentDeviceUpdate()V
    .locals 0

    .prologue
    .line 1980
    return-void
.end method

.method public onSkyControllerDeviceRequestDeviceListUpdate()V
    .locals 4

    .prologue
    .line 1944
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v3}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$1500(Lcom/parrot/arsdk/arrouter/ARRouter;)Ljava/util/List;

    move-result-object v2

    .line 1946
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;>;"
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v3}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$1400(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARRouter$LooperThread;

    move-result-object v3

    iget-object v0, v3, Lcom/parrot/arsdk/arrouter/ARRouter$LooperThread;->handler:Landroid/os/Handler;

    .line 1947
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$3;

    invoke-direct {v1, p0, v2, v0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$3;-><init>(Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;Ljava/util/List;Landroid/os/Handler;)V

    .line 1974
    .local v1, "r":Ljava/lang/Runnable;
    return-void
.end method

.method public onSkyControllerGamepadInfosGetGamepadControlsUpdate()V
    .locals 8

    .prologue
    .line 2117
    new-instance v1, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v1}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 2118
    .local v1, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    iget-object v4, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v4}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$000(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2120
    iget-object v4, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v4}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$000(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;->getAvailableKeys()Ljava/util/Map;

    move-result-object v3

    .line 2121
    .local v3, "keys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v4}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$000(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;->getAvailableAxis()Ljava/util/Map;

    move-result-object v0

    .line 2122
    .local v0, "axis":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2124
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    sget-object v6, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_GAMEPADINFOSSTATE_GAMEPADCONTROL_TYPE_ENUM;->ARCOMMANDS_SKYCONTROLLER_GAMEPADINFOSSTATE_GAMEPADCONTROL_TYPE_BUTTON:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_GAMEPADINFOSSTATE_GAMEPADCONTROL_TYPE_ENUM;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v6, v7, v4}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerGamepadInfosStateGamepadControl(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_GAMEPADINFOSSTATE_GAMEPADCONTROL_TYPE_ENUM;ILjava/lang/String;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 2125
    iget-object v4, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v4, v1}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    goto :goto_0

    .line 2127
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2129
    .restart local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    sget-object v6, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_GAMEPADINFOSSTATE_GAMEPADCONTROL_TYPE_ENUM;->ARCOMMANDS_SKYCONTROLLER_GAMEPADINFOSSTATE_GAMEPADCONTROL_TYPE_AXIS:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_GAMEPADINFOSSTATE_GAMEPADCONTROL_TYPE_ENUM;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v6, v7, v4}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerGamepadInfosStateGamepadControl(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_GAMEPADINFOSSTATE_GAMEPADCONTROL_TYPE_ENUM;ILjava/lang/String;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 2130
    iget-object v4, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v4, v1}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    goto :goto_1

    .line 2133
    .end local v0    # "axis":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v3    # "keys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerGamepadInfosStateAllGamepadControlsSent()Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 2134
    iget-object v4, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v4, v1}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    .line 2135
    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 2136
    return-void
.end method

.method public onSkyControllerSettingsAllSettingsUpdate()V
    .locals 2

    .prologue
    .line 1985
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$4;

    invoke-direct {v1, p0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$4;-><init>(Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2000
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2001
    return-void
.end method

.method public onSkyControllerWifiConnectToWifiUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "passphrase"    # Ljava/lang/String;

    .prologue
    .line 1930
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v1}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$1100(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARWifiHelper;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->connectToNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1931
    .local v0, "res":Z
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSkyControllerWifiConnectToWifiUpdate res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    return-void
.end method

.method public onSkyControllerWifiForgetWifiUpdate(Ljava/lang/String;)V
    .locals 3
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1937
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSkyControllerWifiForgetWifiUpdate ssid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$1100(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARWifiHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->forgetNetwork(Ljava/lang/String;)Z

    .line 1939
    return-void
.end method

.method public onSkyControllerWifiRequestCurrentWifiUpdate()V
    .locals 4

    .prologue
    .line 1915
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v2}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$1100(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARWifiHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->getCurrentSSID()Ljava/lang/String;

    move-result-object v1

    .line 1916
    .local v1, "currentSSID":Ljava/lang/String;
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onSkyControllerWifiRequestCurrentWifiUpdate"

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1917
    if-eqz v1, :cond_0

    .line 1919
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1920
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_CONNEXIONCHANGED_STATUS_ENUM;->ARCOMMANDS_SKYCONTROLLER_WIFISTATE_CONNEXIONCHANGED_STATUS_CONNECTED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_CONNEXIONCHANGED_STATUS_ENUM;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerWifiStateConnexionChanged(Ljava/lang/String;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_CONNEXIONCHANGED_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1921
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v2, v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    .line 1922
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1925
    .end local v0    # "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    :cond_0
    return-void
.end method

.method public onSkyControllerWifiRequestWifiListUpdate()V
    .locals 6

    .prologue
    .line 1875
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v3}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$1100(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARWifiHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->getWifiList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1877
    .local v2, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSkyControllerWifiRequestWifiListUpdate size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1879
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v3}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$1400(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARRouter$LooperThread;

    move-result-object v3

    iget-object v0, v3, Lcom/parrot/arsdk/arrouter/ARRouter$LooperThread;->handler:Landroid/os/Handler;

    .line 1880
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$2;

    invoke-direct {v1, p0, v2, v0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$2;-><init>(Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;Ljava/util/List;Landroid/os/Handler;)V

    .line 1907
    .local v1, "r":Ljava/lang/Runnable;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1910
    return-void
.end method

.method public onSkyControllerWifiWifiAuthChannelUpdate()V
    .locals 3

    .prologue
    .line 2083
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v2}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$1400(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARRouter$LooperThread;

    move-result-object v2

    iget-object v0, v2, Lcom/parrot/arsdk/arrouter/ARRouter$LooperThread;->handler:Landroid/os/Handler;

    .line 2084
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$6;

    invoke-direct {v1, p0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$6;-><init>(Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;)V

    .line 2101
    .local v1, "r":Ljava/lang/Runnable;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2102
    return-void
.end method

.method protected registerARCommandsListener()V
    .locals 0

    .prologue
    .line 1764
    invoke-static {p0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerWifiRequestWifiListListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerWifiRequestWifiListListener;)V

    .line 1765
    invoke-static {p0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerWifiForgetWifiListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerWifiForgetWifiListener;)V

    .line 1766
    invoke-static {p0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerCameraResetOrientationListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerCameraResetOrientationListener;)V

    .line 1767
    invoke-static {p0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerDeviceRequestDeviceListListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerDeviceRequestDeviceListListener;)V

    .line 1768
    invoke-static {p0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerDeviceRequestCurrentDeviceListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerDeviceRequestCurrentDeviceListener;)V

    .line 1769
    invoke-static {p0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerWifiConnectToWifiListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerWifiConnectToWifiListener;)V

    .line 1770
    invoke-static {p0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerWifiRequestCurrentWifiListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerWifiRequestCurrentWifiListener;)V

    .line 1771
    invoke-static {p0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerSettingsAllSettingsListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerSettingsAllSettingsListener;)V

    .line 1772
    invoke-static {p0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerCommonAllStatesListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerCommonAllStatesListener;)V

    .line 1773
    invoke-static {p0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerAccessPointSettingsAccessPointSSIDListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerAccessPointSettingsAccessPointSSIDListener;)V

    .line 1774
    invoke-static {p0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerAccessPointSettingsAccessPointChannelListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerAccessPointSettingsAccessPointChannelListener;)V

    .line 1775
    invoke-static {p0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setCommonSettingsCountryListener(Lcom/parrot/arsdk/arcommands/ARCommandCommonSettingsCountryListener;)V

    .line 1776
    invoke-static {p0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerWifiWifiAuthChannelListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerWifiWifiAuthChannelListener;)V

    .line 1777
    invoke-static {p0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerAccessPointSettingsWifiSelectionListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerAccessPointSettingsWifiSelectionListener;)V

    .line 1778
    invoke-static {p0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerGamepadInfosGetGamepadControlsListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerGamepadInfosGetGamepadControlsListener;)V

    .line 1779
    invoke-static {p0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerButtonMappingsGetCurrentButtonMappingsListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerButtonMappingsGetCurrentButtonMappingsListener;)V

    .line 1780
    invoke-static {p0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerButtonMappingsGetAvailableButtonMappingsListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerButtonMappingsGetAvailableButtonMappingsListener;)V

    .line 1781
    invoke-static {p0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerButtonMappingsSetButtonMappingListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerButtonMappingsSetButtonMappingListener;)V

    .line 1782
    invoke-static {p0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerButtonMappingsDefaultButtonMappingListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerButtonMappingsDefaultButtonMappingListener;)V

    .line 1783
    invoke-static {p0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerAxisMappingsGetCurrentAxisMappingsListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerAxisMappingsGetCurrentAxisMappingsListener;)V

    .line 1784
    invoke-static {p0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerAxisMappingsGetAvailableAxisMappingsListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerAxisMappingsGetAvailableAxisMappingsListener;)V

    .line 1785
    invoke-static {p0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerAxisMappingsSetAxisMappingListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerAxisMappingsSetAxisMappingListener;)V

    .line 1786
    invoke-static {p0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerAxisMappingsDefaultAxisMappingListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerAxisMappingsDefaultAxisMappingListener;)V

    .line 1787
    invoke-static {p0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerAxisFiltersGetCurrentAxisFiltersListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerAxisFiltersGetCurrentAxisFiltersListener;)V

    .line 1788
    invoke-static {p0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerAxisFiltersGetPresetAxisFiltersListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerAxisFiltersGetPresetAxisFiltersListener;)V

    .line 1789
    invoke-static {p0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerAxisFiltersSetAxisFilterListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerAxisFiltersSetAxisFilterListener;)V

    .line 1790
    invoke-static {p0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerAxisFiltersDefaultAxisFiltersListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerAxisFiltersDefaultAxisFiltersListener;)V

    .line 1791
    invoke-static {p0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerCoPilotingSetPilotingSourceListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerCoPilotingSetPilotingSourceListener;)V

    .line 1792
    invoke-static {p0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerCalibrationEnableMagnetoCalibrationQualityUpdatesListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerCalibrationEnableMagnetoCalibrationQualityUpdatesListener;)V

    .line 1793
    return-void
.end method

.method public sendSkyControllerDeviceControllerState(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;Ljava/lang/String;S)V
    .locals 2
    .param p1, "status"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "productID"    # S

    .prologue
    .line 2050
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 2051
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerDeviceStateConnexionChanged(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_DEVICESTATE_CONNEXIONCHANGED_STATUS_ENUM;Ljava/lang/String;S)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 2053
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v1, v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    .line 2054
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 2055
    return-void
.end method

.method protected unregisterARCommandsListener()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1798
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerWifiRequestWifiListListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerWifiRequestWifiListListener;)V

    .line 1799
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerWifiForgetWifiListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerWifiForgetWifiListener;)V

    .line 1800
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerCameraResetOrientationListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerCameraResetOrientationListener;)V

    .line 1801
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerDeviceRequestDeviceListListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerDeviceRequestDeviceListListener;)V

    .line 1802
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerDeviceRequestCurrentDeviceListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerDeviceRequestCurrentDeviceListener;)V

    .line 1803
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerWifiConnectToWifiListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerWifiConnectToWifiListener;)V

    .line 1804
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerWifiRequestCurrentWifiListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerWifiRequestCurrentWifiListener;)V

    .line 1805
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerSettingsAllSettingsListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerSettingsAllSettingsListener;)V

    .line 1806
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerCommonAllStatesListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerCommonAllStatesListener;)V

    .line 1807
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerAccessPointSettingsAccessPointSSIDListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerAccessPointSettingsAccessPointSSIDListener;)V

    .line 1808
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerAccessPointSettingsAccessPointChannelListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerAccessPointSettingsAccessPointChannelListener;)V

    .line 1809
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setCommonSettingsCountryListener(Lcom/parrot/arsdk/arcommands/ARCommandCommonSettingsCountryListener;)V

    .line 1810
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerWifiWifiAuthChannelListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerWifiWifiAuthChannelListener;)V

    .line 1811
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerAccessPointSettingsWifiSelectionListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerAccessPointSettingsWifiSelectionListener;)V

    .line 1812
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerGamepadInfosGetGamepadControlsListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerGamepadInfosGetGamepadControlsListener;)V

    .line 1813
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerButtonMappingsGetCurrentButtonMappingsListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerButtonMappingsGetCurrentButtonMappingsListener;)V

    .line 1814
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerButtonMappingsGetAvailableButtonMappingsListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerButtonMappingsGetAvailableButtonMappingsListener;)V

    .line 1815
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerButtonMappingsSetButtonMappingListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerButtonMappingsSetButtonMappingListener;)V

    .line 1816
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerButtonMappingsDefaultButtonMappingListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerButtonMappingsDefaultButtonMappingListener;)V

    .line 1817
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerAxisMappingsGetCurrentAxisMappingsListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerAxisMappingsGetCurrentAxisMappingsListener;)V

    .line 1818
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerAxisMappingsGetAvailableAxisMappingsListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerAxisMappingsGetAvailableAxisMappingsListener;)V

    .line 1819
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerAxisMappingsSetAxisMappingListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerAxisMappingsSetAxisMappingListener;)V

    .line 1820
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerAxisMappingsDefaultAxisMappingListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerAxisMappingsDefaultAxisMappingListener;)V

    .line 1821
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerAxisFiltersGetCurrentAxisFiltersListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerAxisFiltersGetCurrentAxisFiltersListener;)V

    .line 1822
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerAxisFiltersGetPresetAxisFiltersListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerAxisFiltersGetPresetAxisFiltersListener;)V

    .line 1823
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerAxisFiltersSetAxisFilterListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerAxisFiltersSetAxisFilterListener;)V

    .line 1824
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerAxisFiltersDefaultAxisFiltersListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerAxisFiltersDefaultAxisFiltersListener;)V

    .line 1825
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerCoPilotingSetPilotingSourceListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerCoPilotingSetPilotingSourceListener;)V

    .line 1826
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerCalibrationEnableMagnetoCalibrationQualityUpdatesListener(Lcom/parrot/arsdk/arcommands/ARCommandSkyControllerCalibrationEnableMagnetoCalibrationQualityUpdatesListener;)V

    .line 1827
    return-void
.end method
