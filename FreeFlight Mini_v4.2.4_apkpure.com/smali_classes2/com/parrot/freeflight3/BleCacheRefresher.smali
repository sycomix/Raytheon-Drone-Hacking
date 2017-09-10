.class public Lcom/parrot/freeflight3/BleCacheRefresher;
.super Ljava/lang/Object;
.source "BleCacheRefresher.java"


# static fields
.field public static final REFRESH_CACHE_DELAY_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "BleCacheRefresher"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static refresh(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 7
    .param p0, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    const/4 v4, 0x0

    .line 16
    move-object v0, p0

    .line 17
    .local v0, "localBluetoothGatt":Landroid/bluetooth/BluetoothGatt;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "refresh"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 18
    .local v2, "localMethod":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 19
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 24
    .end local v2    # "localMethod":Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 21
    :catch_0
    move-exception v1

    .line 22
    .local v1, "localException":Ljava/lang/Exception;
    const-string v3, "BleCacheRefresher"

    const-string v5, "An exception occured while refreshing device"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "localException":Ljava/lang/Exception;
    :cond_0
    move v3, v4

    .line 24
    goto :goto_0
.end method
