.class public Lcom/parrot/freeflight/update/task/AvailableUpdate;
.super Ljava/lang/Object;
.source "AvailableUpdate.java"


# instance fields
.field public deviceNeedUpdate:Z

.field public downloaded:Z

.field public originalVersion:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public trampolineUpdate:Z

.field public upToDateFromServer:Z

.field public final version:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Z)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "downloaded"    # Z

    .prologue
    const/4 v0, 0x1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v0, p0, Lcom/parrot/freeflight/update/task/AvailableUpdate;->deviceNeedUpdate:Z

    .line 18
    iput-boolean v0, p0, Lcom/parrot/freeflight/update/task/AvailableUpdate;->upToDateFromServer:Z

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/update/task/AvailableUpdate;->trampolineUpdate:Z

    .line 22
    iput-object p1, p0, Lcom/parrot/freeflight/update/task/AvailableUpdate;->version:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/parrot/freeflight/update/task/AvailableUpdate;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 24
    iput-boolean p3, p0, Lcom/parrot/freeflight/update/task/AvailableUpdate;->downloaded:Z

    .line 25
    return-void
.end method
