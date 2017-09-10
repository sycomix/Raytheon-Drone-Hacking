.class Lcom/parrot/freeflight/piloting/motion/MotionManager$2;
.super Ljava/lang/Object;
.source "MotionManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/motion/MotionManager;->initSensorListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/motion/MotionManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/motion/MotionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/motion/MotionManager;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager$2;->this$0:Lcom/parrot/freeflight/piloting/motion/MotionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 301
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 295
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 296
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager$2;->this$0:Lcom/parrot/freeflight/piloting/motion/MotionManager;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->onAcceleroChanged(Landroid/hardware/SensorEvent;)V

    .line 298
    :cond_0
    return-void
.end method
