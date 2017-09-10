.class public Lcom/parrot/freeflight/location/LocationPolicy;
.super Ljava/lang/Object;
.source "LocationPolicy.java"


# static fields
.field public static final DEFAULT_GPS_VALUE:F = 500.0f


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/ApplicationManager;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/core/model/ModelStore;)V
    .locals 0
    .param p1, "applicationManager"    # Lcom/parrot/freeflight/core/ApplicationManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "locationManager"    # Lcom/parrot/freeflight/location/SmartLocationManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "modelStore"    # Lcom/parrot/freeflight/core/model/ModelStore;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method
