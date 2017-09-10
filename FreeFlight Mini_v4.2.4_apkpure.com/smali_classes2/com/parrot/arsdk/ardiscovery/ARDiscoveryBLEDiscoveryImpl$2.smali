.class Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$2;
.super Ljava/lang/Object;
.source "ARDiscoveryBLEDiscoveryImpl.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->initBLE()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$2;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B

    .prologue
    .line 282
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLeScan"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$2;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->access$800(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;->bleCallback(Landroid/bluetooth/BluetoothDevice;I[B)V

    .line 285
    return-void
.end method
