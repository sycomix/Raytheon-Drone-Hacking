.class Lcom/parrot/controller/devicecontrollers/DeviceController$11;
.super Ljava/lang/Object;
.source "DeviceController.java"

# interfaces
.implements Lcom/parrot/arsdk/arrouter/ARRouter$VideoResenderListener;


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
    .line 2891
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$11;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 2899
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$11;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->closeVideoResender()V

    .line 2900
    return-void
.end method

.method public setup(Ljava/lang/String;II)V
    .locals 1
    .param p1, "tabletIp"    # Ljava/lang/String;
    .param p2, "arstream2TabletStreamPort"    # I
    .param p3, "arstream2TabletControlPort"    # I

    .prologue
    .line 2894
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$11;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/DeviceController;->setupVideoResender(Ljava/lang/String;II)V

    .line 2895
    return-void
.end method
