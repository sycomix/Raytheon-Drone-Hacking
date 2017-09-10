.class public Lcom/parrot/freeflight/update/task/DeviceVersion;
.super Ljava/lang/Object;
.source "DeviceVersion.java"


# instance fields
.field public final product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

.field public final version:Lcom/parrot/freeflight/util/Version;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/parrot/freeflight/util/Version;

    invoke-direct {v0, p1}, Lcom/parrot/freeflight/util/Version;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/parrot/freeflight/update/task/DeviceVersion;->version:Lcom/parrot/freeflight/util/Version;

    .line 15
    iput-object p2, p0, Lcom/parrot/freeflight/update/task/DeviceVersion;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 16
    return-void
.end method
