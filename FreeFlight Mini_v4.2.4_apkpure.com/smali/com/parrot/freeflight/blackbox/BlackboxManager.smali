.class public Lcom/parrot/freeflight/blackbox/BlackboxManager;
.super Ljava/lang/Object;
.source "BlackboxManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/core/DeviceConnector;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "modelStore"    # Lcom/parrot/freeflight/core/model/ModelStore;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "academyManager"    # Lcom/parrot/freeflight/core/academy/AcademyManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "smartLocationManager"    # Lcom/parrot/freeflight/location/SmartLocationManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "deviceConnector"    # Lcom/parrot/freeflight/core/DeviceConnector;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public start()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method
