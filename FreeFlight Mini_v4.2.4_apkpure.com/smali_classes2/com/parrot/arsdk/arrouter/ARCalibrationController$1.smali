.class Lcom/parrot/arsdk/arrouter/ARCalibrationController$1;
.super Ljava/lang/Object;
.source "ARCalibrationController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/arsdk/arrouter/ARCalibrationController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/arsdk/arrouter/ARCalibrationController;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/arrouter/ARCalibrationController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/arsdk/arrouter/ARCalibrationController;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController$1;->this$0:Lcom/parrot/arsdk/arrouter/ARCalibrationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 81
    packed-switch p2, :pswitch_data_0

    .line 92
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;->ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_UNRELIABLE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;

    .line 96
    .local v0, "nextStatus":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;
    :goto_0
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController$1;->this$0:Lcom/parrot/arsdk/arrouter/ARCalibrationController;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->access$002(Lcom/parrot/arsdk/arrouter/ARCalibrationController;Z)Z

    .line 98
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController$1;->this$0:Lcom/parrot/arsdk/arrouter/ARCalibrationController;

    invoke-static {v1}, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->access$100(Lcom/parrot/arsdk/arrouter/ARCalibrationController;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;

    move-result-object v1

    if-eq v1, v0, :cond_0

    .line 100
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController$1;->this$0:Lcom/parrot/arsdk/arrouter/ARCalibrationController;

    invoke-static {v1, v0}, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->access$102(Lcom/parrot/arsdk/arrouter/ARCalibrationController;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;

    .line 101
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController$1;->this$0:Lcom/parrot/arsdk/arrouter/ARCalibrationController;

    invoke-static {v1}, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->access$200(Lcom/parrot/arsdk/arrouter/ARCalibrationController;)V

    .line 102
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController$1;->this$0:Lcom/parrot/arsdk/arrouter/ARCalibrationController;

    invoke-static {v1}, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->access$300(Lcom/parrot/arsdk/arrouter/ARCalibrationController;)V

    .line 104
    :cond_0
    return-void

    .line 84
    .end local v0    # "nextStatus":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;
    :pswitch_0
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;->ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ASSESSING:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;

    .line 85
    .restart local v0    # "nextStatus":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;
    goto :goto_0

    .line 87
    .end local v0    # "nextStatus":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;
    :pswitch_1
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;->ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_CALIBRATED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;

    .line 88
    .restart local v0    # "nextStatus":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;
    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 75
    return-void
.end method
