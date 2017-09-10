.class Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection$ARDiscoveryConnectionCallbackReturn;
.super Ljava/lang/Object;
.source "ARDiscoveryConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ARDiscoveryConnectionCallbackReturn"
.end annotation


# instance fields
.field private dataTx:Ljava/lang/String;

.field private error:I

.field final synthetic this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;


# direct methods
.method public constructor <init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;)V
    .locals 1

    .prologue
    .line 327
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection$ARDiscoveryConnectionCallbackReturn;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_OK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->getValue()I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection$ARDiscoveryConnectionCallbackReturn;->error:I

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection$ARDiscoveryConnectionCallbackReturn;->dataTx:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public constructor <init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;Ljava/lang/String;I)V
    .locals 0
    .param p2, "dataTx"    # Ljava/lang/String;
    .param p3, "error"    # I

    .prologue
    .line 333
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection$ARDiscoveryConnectionCallbackReturn;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput p3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection$ARDiscoveryConnectionCallbackReturn;->error:I

    .line 335
    iput-object p2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection$ARDiscoveryConnectionCallbackReturn;->dataTx:Ljava/lang/String;

    .line 336
    return-void
.end method


# virtual methods
.method public getDataTx()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection$ARDiscoveryConnectionCallbackReturn;->dataTx:Ljava/lang/String;

    return-object v0
.end method

.method public getError()I
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection$ARDiscoveryConnectionCallbackReturn;->error:I

    return v0
.end method

.method public setDataTx(Ljava/lang/String;)V
    .locals 0
    .param p1, "dataTx"    # Ljava/lang/String;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection$ARDiscoveryConnectionCallbackReturn;->dataTx:Ljava/lang/String;

    .line 346
    return-void
.end method

.method public setError(I)V
    .locals 0
    .param p1, "error"    # I

    .prologue
    .line 340
    iput p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection$ARDiscoveryConnectionCallbackReturn;->error:I

    .line 341
    return-void
.end method
