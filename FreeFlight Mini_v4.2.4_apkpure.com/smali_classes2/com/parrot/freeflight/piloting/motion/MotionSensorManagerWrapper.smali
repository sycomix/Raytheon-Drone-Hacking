.class public Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;
.super Ljava/lang/Object;
.source "MotionSensorManagerWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SensorManagerWrapper"


# instance fields
.field private isAcceleroAvailable:Z

.field private isGyroAvailable:Z

.field private isMagnetoAvailable:Z

.field private sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "theContext"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;->sensorManager:Landroid/hardware/SensorManager;

    .line 22
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;->sensorManager:Landroid/hardware/SensorManager;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;->checkSensors(Landroid/hardware/SensorManager;)V

    .line 23
    return-void
.end method

.method private checkSensors(Landroid/hardware/SensorManager;)V
    .locals 7
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;

    .prologue
    const/4 v6, 0x1

    .line 26
    const/4 v3, -0x1

    invoke-virtual {p1, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 28
    .local v0, "availableSensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const-string v3, "SensorManagerWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Available sensors: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;->getAvailableSensorsAsString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 31
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 33
    .local v2, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 34
    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;->setAcceleroAvailable(Z)V

    .line 30
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 36
    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;->setMagnetoAvailable(Z)V

    goto :goto_1

    .line 37
    :cond_2
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-le v3, v4, :cond_0

    .line 41
    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;->setGyroAvailable(Z)V

    goto :goto_1

    .line 44
    .end local v2    # "sensor":Landroid/hardware/Sensor;
    :cond_3
    return-void
.end method

.method private getAvailableSensorsAsString(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "availableSensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const-string v2, ""

    .line 63
    .local v2, "sensors":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 64
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 65
    .local v1, "sensor":Landroid/hardware/Sensor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public isAcceleroAvailable()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;->isAcceleroAvailable:Z

    return v0
.end method

.method public isGyroAvailable()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;->isGyroAvailable:Z

    return v0
.end method

.method public isMagnetoAvailable()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;->isMagnetoAvailable:Z

    return v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;ILandroid/os/Handler;)Z
    .locals 3
    .param p1, "theListener"    # Landroid/hardware/SensorEventListener;
    .param p2, "theType"    # I
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 47
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 48
    .local v0, "sensor":Landroid/hardware/Sensor;
    if-eqz v0, :cond_0

    .line 50
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, p1, v0, v1, p3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 51
    const/4 v1, 0x1

    .line 53
    :cond_0
    return v1
.end method

.method public setAcceleroAvailable(Z)V
    .locals 0
    .param p1, "isAcceleroAvailable"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;->isAcceleroAvailable:Z

    .line 99
    return-void
.end method

.method public setGyroAvailable(Z)V
    .locals 0
    .param p1, "isGyroAvailable"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;->isGyroAvailable:Z

    .line 83
    return-void
.end method

.method public setMagnetoAvailable(Z)V
    .locals 0
    .param p1, "isMagnetoAvailable"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;->isMagnetoAvailable:Z

    .line 91
    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;)V
    .locals 1
    .param p1, "theListener"    # Landroid/hardware/SensorEventListener;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 58
    return-void
.end method
