.class Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$5;
.super Ljava/lang/Object;
.source "ARRouter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->onSkyControllerCommonAllStatesUpdate()V
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
    .line 2007
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$5;->this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 2011
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$5;->this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$5;->this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    iget-object v1, v1, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v1}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$1600(Lcom/parrot/arsdk/arrouter/ARRouter;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->onSkyContollerBatteryChanged(I)Z

    .line 2013
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$5;->this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$5;->this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    iget-object v1, v1, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v1}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$1700(Lcom/parrot/arsdk/arrouter/ARRouter;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->onSkyContollerGpsFixChanged(Z)Z

    .line 2015
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$5;->this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$5;->this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    iget-object v1, v1, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v1}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$1800(Lcom/parrot/arsdk/arrouter/ARRouter;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->onSkyContollerWifiSignalLevelChanged(I)Z

    .line 2017
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$5;->this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->onSkyControllerButtonMappingsGetCurrentButtonMappingsUpdate()V

    .line 2018
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$5;->this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->onSkyControllerAxisMappingsGetCurrentAxisMappingsUpdate()V

    .line 2019
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$5;->this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->onSkyControllerAxisFiltersGetCurrentAxisFiltersUpdate()V

    .line 2021
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$5;->this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    iget-object v0, v0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendProductSerialChanged()Z

    .line 2022
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$5;->this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    iget-object v0, v0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendProductVariant()Z

    .line 2024
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$5;->this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    iget-object v0, v0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$1900(Lcom/parrot/arsdk/arrouter/ARRouter;)V

    .line 2026
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$5;->this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    iget-object v0, v0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$5;->this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    iget-object v1, v1, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v1}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$2000(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$5;->this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    iget-object v2, v2, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v2}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$2100(Lcom/parrot/arsdk/arrouter/ARRouter;)I

    move-result v2

    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$5;->this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    iget-object v3, v3, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v3}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$2200(Lcom/parrot/arsdk/arrouter/ARRouter;)I

    move-result v3

    iget-object v4, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$5;->this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    iget-object v4, v4, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v4}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$2300(Lcom/parrot/arsdk/arrouter/ARRouter;)I

    move-result v4

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$200(Lcom/parrot/arsdk/arrouter/ARRouter;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;IIIZ)V

    .line 2027
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$5;->this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    invoke-static {v0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->access$2400(Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;)V

    .line 2029
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$5;->this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    iget-object v0, v0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendAllStatesChanged()Z

    .line 2034
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2041
    :goto_0
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$5;->this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    iget-object v0, v0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendConnectionState()Z

    .line 2042
    return-void

    .line 2036
    :catch_0
    move-exception v6

    .line 2038
    .local v6, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
