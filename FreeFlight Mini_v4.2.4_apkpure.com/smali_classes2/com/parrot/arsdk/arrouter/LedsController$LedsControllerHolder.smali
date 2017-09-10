.class Lcom/parrot/arsdk/arrouter/LedsController$LedsControllerHolder;
.super Ljava/lang/Object;
.source "LedsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/arrouter/LedsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LedsControllerHolder"
.end annotation


# static fields
.field private static final instance:Lcom/parrot/arsdk/arrouter/LedsController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 246
    new-instance v0, Lcom/parrot/arsdk/arrouter/LedsController;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/arrouter/LedsController;-><init>(Lcom/parrot/arsdk/arrouter/LedsController$1;)V

    sput-object v0, Lcom/parrot/arsdk/arrouter/LedsController$LedsControllerHolder;->instance:Lcom/parrot/arsdk/arrouter/LedsController;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Lcom/parrot/arsdk/arrouter/LedsController;
    .locals 1

    .prologue
    .line 244
    sget-object v0, Lcom/parrot/arsdk/arrouter/LedsController$LedsControllerHolder;->instance:Lcom/parrot/arsdk/arrouter/LedsController;

    return-object v0
.end method
