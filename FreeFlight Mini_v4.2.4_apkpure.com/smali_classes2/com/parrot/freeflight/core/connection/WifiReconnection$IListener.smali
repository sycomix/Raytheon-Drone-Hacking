.class public interface abstract Lcom/parrot/freeflight/core/connection/WifiReconnection$IListener;
.super Ljava/lang/Object;
.source "WifiReconnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/connection/WifiReconnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IListener"
.end annotation


# virtual methods
.method public abstract onWifiReconnected(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V
    .param p1    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
