.class Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$3;
.super Ljava/lang/Object;
.source "ARRouter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->onSkyControllerDeviceRequestDeviceListUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

.field final synthetic val$h:Landroid/os/Handler;

.field final synthetic val$services:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;Ljava/util/List;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    .prologue
    .line 1948
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$3;->this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    iput-object p2, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$3;->val$services:Ljava/util/List;

    iput-object p3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$3;->val$h:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1952
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1953
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$3;->val$services:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1955
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$3;->val$services:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 1957
    .local v2, "service":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    invoke-virtual {v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerDeviceStateDeviceList(Ljava/lang/String;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1959
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$3;->this$1:Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;

    iget-object v3, v3, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v3, v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1961
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$3;->val$services:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1964
    :cond_0
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$3;->val$services:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1966
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$ARRouterToTablet$3;->val$h:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1953
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1969
    .end local v2    # "service":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    :cond_2
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1970
    return-void
.end method
