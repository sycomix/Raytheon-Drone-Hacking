.class public Lcom/parrot/controller/devicecontrollers/DeviceController$LocalBinder;
.super Landroid/os/Binder;
.source "DeviceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/controller/devicecontrollers/DeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;


# direct methods
.method public constructor <init>(Lcom/parrot/controller/devicecontrollers/DeviceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/controller/devicecontrollers/DeviceController;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$LocalBinder;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/parrot/controller/devicecontrollers/DeviceController;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$LocalBinder;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    return-object v0
.end method
