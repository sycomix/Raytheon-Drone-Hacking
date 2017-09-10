.class public Lcom/parrot/freeflight/util/concurrent/ExecutorStore;
.super Ljava/lang/Object;
.source "ExecutorStore.java"


# static fields
.field private static final mEmbeddedFirmwareCopyExecutor:Ljava/util/concurrent/ExecutorService;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private static final sAcademyExecutor:Ljava/util/concurrent/ExecutorService;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private static final sDefaultExecutor:Ljava/util/concurrent/ExecutorService;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private static final sEphemerisExecutor:Ljava/util/concurrent/ExecutorService;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private static final sMediaExecutor:Ljava/util/concurrent/ExecutorService;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private static final sOperatorExecutor:Ljava/util/concurrent/ExecutorService;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private static final sWifiListSortExecutor:Ljava/util/concurrent/ExecutorService;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->sDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    .line 17
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->sOperatorExecutor:Ljava/util/concurrent/ExecutorService;

    .line 19
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->sAcademyExecutor:Ljava/util/concurrent/ExecutorService;

    .line 21
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->sMediaExecutor:Ljava/util/concurrent/ExecutorService;

    .line 23
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->sEphemerisExecutor:Ljava/util/concurrent/ExecutorService;

    .line 25
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->sWifiListSortExecutor:Ljava/util/concurrent/ExecutorService;

    .line 31
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->mEmbeddedFirmwareCopyExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAcademyExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 54
    sget-object v0, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->sAcademyExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static getDefaultExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 40
    sget-object v0, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->sDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static getEmbeddedFirmwareCopyExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 74
    sget-object v0, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->mEmbeddedFirmwareCopyExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static getEphemerisExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 79
    sget-object v0, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->sEphemerisExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static getFtpDefaultExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 59
    sget-object v0, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->sDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static getFtpOperationExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 64
    sget-object v0, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->sOperatorExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static getMediaExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 69
    sget-object v0, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->sMediaExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static getOperatorExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 49
    sget-object v0, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->sOperatorExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static getWifiListSortExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 84
    sget-object v0, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->sWifiListSortExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
