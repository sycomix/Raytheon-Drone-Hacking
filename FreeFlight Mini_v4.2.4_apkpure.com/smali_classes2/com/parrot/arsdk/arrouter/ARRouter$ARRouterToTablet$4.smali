.class Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$4;
.super Ljava/lang/Object;
.source "ARRouter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->onSkyControllerSettingsAllSettingsUpdate()V
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
    .line 1986
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$4;->this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1989
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$4;->this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    iget-object v0, v0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendAPSSIDSetting()Z

    .line 1990
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$4;->this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    iget-object v0, v0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendAPChannelSetting()Z

    .line 1991
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$4;->this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    iget-object v0, v0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendAPBandAndChannelSettings()Z

    .line 1993
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$4;->this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->onSkyControllerGamepadInfosGetGamepadControlsUpdate()V

    .line 1994
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$4;->this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->onSkyControllerButtonMappingsGetAvailableButtonMappingsUpdate()V

    .line 1995
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$4;->this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->onSkyControllerAxisMappingsGetAvailableAxisMappingsUpdate()V

    .line 1996
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$4;->this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->onSkyControllerAxisFiltersGetPresetAxisFiltersUpdate()V

    .line 1998
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$4;->this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    iget-object v0, v0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendAllSettingsChanged()Z

    .line 1999
    return-void
.end method
