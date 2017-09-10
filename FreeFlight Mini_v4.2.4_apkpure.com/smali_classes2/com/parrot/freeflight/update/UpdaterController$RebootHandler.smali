.class Lcom/parrot/freeflight/update/UpdaterController$RebootHandler;
.super Landroid/os/Handler;
.source "UpdaterController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/update/UpdaterController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RebootHandler"
.end annotation


# static fields
.field private static final REBOOT_DELAY_DEFAULT_IN_SECOND:I = 0x5

.field private static final REBOOT_DELAY_MINIDRONE_3_IN_SECOND:I = 0x14


# instance fields
.field private final mControllerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parrot/freeflight/update/UpdaterController;",
            ">;"
        }
    .end annotation
.end field

.field private mSecondCountDown:I

.field private mStartingCountDown:I


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/update/UpdaterController;)V
    .locals 1
    .param p1, "controller"    # Lcom/parrot/freeflight/update/UpdaterController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 784
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 785
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController$RebootHandler;->mControllerRef:Ljava/lang/ref/WeakReference;

    .line 786
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/update/UpdaterController$RebootHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterController$RebootHandler;

    .prologue
    .line 774
    iget v0, p0, Lcom/parrot/freeflight/update/UpdaterController$RebootHandler;->mSecondCountDown:I

    return v0
.end method


# virtual methods
.method public getProgress()F
    .locals 2

    .prologue
    .line 817
    iget v0, p0, Lcom/parrot/freeflight/update/UpdaterController$RebootHandler;->mStartingCountDown:I

    if-nez v0, :cond_0

    .line 818
    const/high16 v0, 0x42c80000    # 100.0f

    .line 820
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/parrot/freeflight/update/UpdaterController$RebootHandler;->mSecondCountDown:I

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/parrot/freeflight/update/UpdaterController$RebootHandler;->mStartingCountDown:I

    div-int/2addr v0, v1

    rsub-int/lit8 v0, v0, 0x64

    int-to-float v0, v0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 790
    iget v1, p0, Lcom/parrot/freeflight/update/UpdaterController$RebootHandler;->mSecondCountDown:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/parrot/freeflight/update/UpdaterController$RebootHandler;->mSecondCountDown:I

    .line 791
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterController$RebootHandler;->mControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/update/UpdaterController;

    .line 792
    .local v0, "controller":Lcom/parrot/freeflight/update/UpdaterController;
    if-eqz v0, :cond_0

    .line 793
    invoke-static {v0}, Lcom/parrot/freeflight/update/UpdaterController;->access$1100(Lcom/parrot/freeflight/update/UpdaterController;)V

    .line 795
    :cond_0
    iget v1, p0, Lcom/parrot/freeflight/update/UpdaterController$RebootHandler;->mSecondCountDown:I

    if-lez v1, :cond_2

    .line 796
    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/parrot/freeflight/update/UpdaterController$RebootHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 802
    :cond_1
    :goto_0
    return-void

    .line 798
    :cond_2
    if-eqz v0, :cond_1

    .line 799
    sget-object v1, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_REBOOT_DRONE:Lcom/parrot/freeflight/update/UpdaterController$Event;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/update/UpdaterController;->access$100(Lcom/parrot/freeflight/update/UpdaterController;Lcom/parrot/freeflight/update/UpdaterController$Event;)V

    goto :goto_0
.end method

.method public start(Lcom/parrot/freeflight/update/task/AvailableUpdate;)V
    .locals 2
    .param p1, "update"    # Lcom/parrot/freeflight/update/task/AvailableUpdate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 805
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/update/UpdaterController$RebootHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 806
    iget-object v0, p1, Lcom/parrot/freeflight/update/task/AvailableUpdate;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_DELOS3:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/parrot/freeflight/update/task/AvailableUpdate;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_WINGX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne v0, v1, :cond_1

    .line 808
    :cond_0
    const/16 v0, 0x14

    iput v0, p0, Lcom/parrot/freeflight/update/UpdaterController$RebootHandler;->mStartingCountDown:I

    .line 812
    :goto_0
    iget v0, p0, Lcom/parrot/freeflight/update/UpdaterController$RebootHandler;->mStartingCountDown:I

    iput v0, p0, Lcom/parrot/freeflight/update/UpdaterController$RebootHandler;->mSecondCountDown:I

    .line 813
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/update/UpdaterController$RebootHandler;->sendEmptyMessage(I)Z

    .line 814
    return-void

    .line 810
    :cond_1
    const/4 v0, 0x5

    iput v0, p0, Lcom/parrot/freeflight/update/UpdaterController$RebootHandler;->mStartingCountDown:I

    goto :goto_0
.end method
