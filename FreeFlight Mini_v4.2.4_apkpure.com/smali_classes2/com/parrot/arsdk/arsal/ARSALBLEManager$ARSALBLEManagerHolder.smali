.class Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALBLEManagerHolder;
.super Ljava/lang/Object;
.source "ARSALBLEManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/arsal/ARSALBLEManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ARSALBLEManagerHolder"
.end annotation


# static fields
.field private static final instance:Lcom/parrot/arsdk/arsal/ARSALBLEManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 200
    new-instance v0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;-><init>(Lcom/parrot/arsdk/arsal/ARSALBLEManager$1;)V

    sput-object v0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALBLEManagerHolder;->instance:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/parrot/arsdk/arsal/ARSALBLEManager;
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALBLEManagerHolder;->instance:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    return-object v0
.end method
