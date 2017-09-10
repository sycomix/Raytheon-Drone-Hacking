.class public Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;
.super Ljava/lang/Object;
.source "ARSALBLEManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/arsal/ARSALBLEManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ARSALManagerNotificationData"
.end annotation


# instance fields
.field public characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field final synthetic this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

.field public value:[B


# direct methods
.method public constructor <init>(Lcom/parrot/arsdk/arsal/ARSALBLEManager;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V
    .locals 1
    .param p1, "this$0"    # Lcom/parrot/arsdk/arsal/ARSALBLEManager;
    .param p2, "_characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "_value"    # [B

    .prologue
    const/4 v0, 0x0

    .line 105
    iput-object p1, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 102
    iput-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;->value:[B

    .line 106
    iput-object p2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 107
    iput-object p3, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;->value:[B

    .line 108
    return-void
.end method
