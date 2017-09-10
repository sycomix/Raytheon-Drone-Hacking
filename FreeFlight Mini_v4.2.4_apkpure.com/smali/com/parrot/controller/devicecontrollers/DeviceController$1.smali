.class Lcom/parrot/controller/devicecontrollers/DeviceController$1;
.super Ljava/lang/Object;
.source "DeviceController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/controller/devicecontrollers/DeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;


# direct methods
.method constructor <init>(Lcom/parrot/controller/devicecontrollers/DeviceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/controller/devicecontrollers/DeviceController;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$1;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$1;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    check-cast p2, Lcom/parrot/arsdk/arrouter/ARRouter$ARBinder;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/parrot/arsdk/arrouter/ARRouter$ARBinder;->getService()Lcom/parrot/arsdk/arrouter/ARRouter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$002(Lcom/parrot/controller/devicecontrollers/DeviceController;Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARRouter;

    .line 198
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$1;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$000(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/arsdk/arrouter/ARRouter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$1;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$100(Lcom/parrot/controller/devicecontrollers/DeviceController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$1;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$200(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$1;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    iget-object v0, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->state:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    sget-object v1, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;->DEVICE_CONTROLLER_STATE_STARTED:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    if-ne v0, v1, :cond_1

    .line 207
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$1;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$000(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/arsdk/arrouter/ARRouter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/arsdk/arrouter/ARRouter;->onConnectionToDeviceCompleted()V

    .line 210
    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 215
    return-void
.end method
