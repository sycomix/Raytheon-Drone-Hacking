.class Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice$BLEPart;
.super Ljava/lang/Object;
.source "ARDiscoveryDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BLEPart"
.end annotation


# instance fields
.field public alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

.field public bleDevice:Landroid/bluetooth/BluetoothDevice;

.field public bleNotificationIDs:[I

.field context:Landroid/content/Context;

.field final synthetic this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;


# direct methods
.method public constructor <init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice$BLEPart;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    return-void
.end method


# virtual methods
.method public deleteARNetworkAL()I
    .locals 3

    .prologue
    .line 209
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_OK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    .line 211
    .local v0, "error":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice$BLEPart;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice$BLEPart;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->unlock()Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 214
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice$BLEPart;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice$BLEPart;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->closeBLENetwork(Landroid/content/Context;)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 215
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice$BLEPart;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->dispose()V

    .line 216
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice$BLEPart;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    .line 223
    :goto_0
    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->getValue()I

    move-result v1

    return v1

    .line 220
    :cond_0
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    goto :goto_0
.end method

.method public newARNetworkAL()J
    .locals 6

    .prologue
    .line 202
    new-instance v1, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    invoke-direct {v1}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;-><init>()V

    iput-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice$BLEPart;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    .line 203
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice$BLEPart;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice$BLEPart;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice$BLEPart;->bleDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice$BLEPart;->bleNotificationIDs:[I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->initBLENetwork(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;I[I)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    move-result-object v0

    .line 204
    .local v0, "netALError":Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice$BLEPart;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->getManager()J

    move-result-wide v2

    return-wide v2
.end method
