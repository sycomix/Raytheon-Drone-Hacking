.class public Lcom/parrot/arsdk/arupdater/ARUpdaterDownloadInfo;
.super Ljava/lang/Object;
.source "ARUpdaterDownloadInfo.java"


# instance fields
.field public final downloadUrl:Ljava/lang/String;

.field public final plfVersion:Ljava/lang/String;

.field public final product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .param p2, "plfVersion"    # Ljava/lang/String;
    .param p3, "product"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloadInfo;->downloadUrl:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloadInfo;->plfVersion:Ljava/lang/String;

    .line 50
    invoke-static {p3}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloadInfo;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 51
    return-void
.end method
