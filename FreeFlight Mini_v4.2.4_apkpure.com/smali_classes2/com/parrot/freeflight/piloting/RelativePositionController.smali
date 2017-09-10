.class public Lcom/parrot/freeflight/piloting/RelativePositionController;
.super Ljava/lang/Object;
.source "RelativePositionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FFMini.Location.Relative"


# instance fields
.field private final mApplicationContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mBearing:F

.field private mControllerLocation:Landroid/location/Location;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDistance:F

.field private mDroneLocation:Landroid/location/Location;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mListeners:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocationListener:Landroid/location/LocationListener;

.field private final mLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

.field private mUserLocation:Landroid/location/Location;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "locationManager"    # Lcom/parrot/freeflight/location/SmartLocationManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "listener"    # Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    new-instance v1, Lcom/parrot/freeflight/piloting/RelativePositionController$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/RelativePositionController$1;-><init>(Lcom/parrot/freeflight/piloting/RelativePositionController;)V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mLocationListener:Landroid/location/LocationListener;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mApplicationContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    .line 53
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 54
    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    const-string v1, "FFMini.Location.Relative"

    const-string v2, "Must ask in some activity Location permission"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v0, 0x0

    .line 60
    .local v0, "location":Landroid/location/Location;
    :goto_0
    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v0, v1}, Lcom/parrot/freeflight/location/SmartLocationManager;->checkAccuracy(Landroid/location/Location;F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    iput-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mUserLocation:Landroid/location/Location;

    .line 63
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mListeners:Ljava/util/List;

    .line 64
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mListeners:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    return-void

    .line 58
    .end local v0    # "location":Landroid/location/Location;
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/location/SmartLocationManager;->getUserLocation()Landroid/location/Location;

    move-result-object v0

    .restart local v0    # "location":Landroid/location/Location;
    goto :goto_0
.end method

.method private isControllerLocationDifferent(Landroid/location/Location;)Z
    .locals 4
    .param p1, "newLocation"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 168
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mControllerLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mControllerLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mControllerLocation:Landroid/location/Location;

    .line 169
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mControllerLocation:Landroid/location/Location;

    .line 170
    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 168
    :goto_0
    return v0

    .line 170
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDroneLocationDifferent(Landroid/location/Location;)Z
    .locals 4
    .param p1, "newLocation"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 162
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mDroneLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mDroneLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mDroneLocation:Landroid/location/Location;

    .line 163
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mDroneLocation:Landroid/location/Location;

    .line 164
    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 162
    :goto_0
    return v0

    .line 164
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyPositionUpdated()V
    .locals 4

    .prologue
    .line 146
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;

    .line 147
    .local v0, "listener":Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;
    iget v2, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mDistance:F

    iget v3, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mBearing:F

    invoke-interface {v0, v2, v3}, Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;->updatePosition(FF)V

    goto :goto_0

    .line 149
    .end local v0    # "listener":Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;
    :cond_0
    return-void
.end method


# virtual methods
.method public getControllerLocation()Landroid/location/Location;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mControllerLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getDroneLocation()Landroid/location/Location;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mDroneLocation:Landroid/location/Location;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mUserLocation:Landroid/location/Location;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mControllerLocation:Landroid/location/Location;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mDroneLocation:Landroid/location/Location;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/location/SmartLocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 86
    return-void
.end method

.method public registerListener(Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 68
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mApplicationContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 77
    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "FFMini.Location.Relative"

    const-string v1, "Must ask in some activity Location permission"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/location/SmartLocationManager;->requestLocationUpdates(Landroid/location/LocationListener;)V

    goto :goto_0
.end method

.method public unregisterListener(Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 72
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method public updateControllerLocation(Landroid/location/Location;)V
    .locals 4
    .param p1, "controllerLocation"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/RelativePositionController;->isControllerLocationDifferent(Landroid/location/Location;)Z

    move-result v0

    .line 122
    .local v0, "changed":Z
    if-eqz v0, :cond_1

    .line 123
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mControllerLocation:Landroid/location/Location;

    if-nez v1, :cond_2

    .line 124
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mControllerLocation:Landroid/location/Location;

    .line 128
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mControllerLocation:Landroid/location/Location;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v1, v2}, Lcom/parrot/freeflight/location/SmartLocationManager;->checkAccuracy(Landroid/location/Location;F)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 129
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mUserLocation:Landroid/location/Location;

    if-nez v1, :cond_3

    .line 130
    new-instance v1, Landroid/location/Location;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mControllerLocation:Landroid/location/Location;

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mUserLocation:Landroid/location/Location;

    .line 134
    :goto_1
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mDroneLocation:Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mDroneLocation:Landroid/location/Location;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mUserLocation:Landroid/location/Location;

    invoke-virtual {v1, v2}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mDistance:F

    .line 136
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mDroneLocation:Landroid/location/Location;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mUserLocation:Landroid/location/Location;

    invoke-virtual {v1, v2}, Landroid/location/Location;->bearingTo(Landroid/location/Location;)F

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mBearing:F

    .line 141
    :cond_0
    :goto_2
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/RelativePositionController;->notifyPositionUpdated()V

    .line 143
    :cond_1
    return-void

    .line 126
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mControllerLocation:Landroid/location/Location;

    invoke-virtual {v1, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    goto :goto_0

    .line 132
    :cond_3
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mUserLocation:Landroid/location/Location;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mControllerLocation:Landroid/location/Location;

    invoke-virtual {v1, v2}, Landroid/location/Location;->set(Landroid/location/Location;)V

    goto :goto_1

    .line 139
    :cond_4
    const-string v1, "FFMini.Location.Relative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got new controller location with wrong accuracy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public updateDroneLocation(Landroid/location/Location;)V
    .locals 5
    .param p1, "droneLocation"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 93
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/RelativePositionController;->isDroneLocationDifferent(Landroid/location/Location;)Z

    move-result v0

    .line 94
    .local v0, "changed":Z
    if-eqz v0, :cond_1

    .line 95
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mDroneLocation:Landroid/location/Location;

    if-nez v2, :cond_2

    .line 96
    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mDroneLocation:Landroid/location/Location;

    .line 101
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    invoke-virtual {v2}, Lcom/parrot/freeflight/location/SmartLocationManager;->getUserLocation()Landroid/location/Location;

    move-result-object v1

    .line 102
    .local v1, "userLocation":Landroid/location/Location;
    if-eqz v1, :cond_0

    .line 103
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mUserLocation:Landroid/location/Location;

    if-nez v2, :cond_3

    .line 104
    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mUserLocation:Landroid/location/Location;

    .line 109
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mUserLocation:Landroid/location/Location;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v2, v3}, Lcom/parrot/freeflight/location/SmartLocationManager;->checkAccuracy(Landroid/location/Location;F)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 110
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mDroneLocation:Landroid/location/Location;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mUserLocation:Landroid/location/Location;

    invoke-virtual {v2, v3}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v2

    iput v2, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mDistance:F

    .line 111
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mDroneLocation:Landroid/location/Location;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mUserLocation:Landroid/location/Location;

    invoke-virtual {v2, v3}, Landroid/location/Location;->bearingTo(Landroid/location/Location;)F

    move-result v2

    iput v2, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mBearing:F

    .line 116
    :goto_2
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/RelativePositionController;->notifyPositionUpdated()V

    .line 118
    .end local v1    # "userLocation":Landroid/location/Location;
    :cond_1
    return-void

    .line 98
    :cond_2
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mDroneLocation:Landroid/location/Location;

    invoke-virtual {v2, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    goto :goto_0

    .line 106
    .restart local v1    # "userLocation":Landroid/location/Location;
    :cond_3
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mUserLocation:Landroid/location/Location;

    invoke-virtual {v2, v1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    goto :goto_1

    .line 113
    :cond_4
    iput v4, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mDistance:F

    .line 114
    iput v4, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mBearing:F

    goto :goto_2
.end method
