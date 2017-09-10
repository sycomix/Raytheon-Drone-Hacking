.class public Lcom/parrot/arsdk/ardiscovery/ARDiscoveryException;
.super Ljava/lang/Exception;
.source "ARDiscoveryException.java"


# instance fields
.field private error:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 9
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_ERROR:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryException;->error:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    .line 10
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 19
    invoke-static {p1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryException;->error:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;)V
    .locals 0
    .param p1, "error"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryException;->error:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    .line 15
    return-void
.end method


# virtual methods
.method public getError()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryException;->error:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    return-object v0
.end method

.method public setError(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;)V
    .locals 0
    .param p1, "error"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryException;->error:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    .line 30
    return-void
.end method
