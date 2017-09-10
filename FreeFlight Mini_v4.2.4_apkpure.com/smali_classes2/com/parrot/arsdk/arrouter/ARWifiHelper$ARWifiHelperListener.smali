.class public interface abstract Lcom/parrot/arsdk/arrouter/ARWifiHelper$ARWifiHelperListener;
.super Ljava/lang/Object;
.source "ARWifiHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/arrouter/ARWifiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ARWifiHelperListener"
.end annotation


# virtual methods
.method public abstract onConnectionFailed(Ljava/lang/String;)V
.end method

.method public abstract onWifiChanged(Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V
.end method

.method public abstract onWifiListChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation
.end method
