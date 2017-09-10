.class Lcom/parrot/arsdk/arsal/ARSALBLEManager$RequestLock;
.super Ljava/lang/Object;
.source "ARSALBLEManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/arsal/ARSALBLEManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestLock"
.end annotation


# instance fields
.field finished:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/arsdk/arsal/ARSALBLEManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/arsdk/arsal/ARSALBLEManager$1;

    .prologue
    .line 526
    invoke-direct {p0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager$RequestLock;-><init>()V

    return-void
.end method
