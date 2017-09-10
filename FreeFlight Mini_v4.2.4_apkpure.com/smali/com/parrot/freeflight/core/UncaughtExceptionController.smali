.class public Lcom/parrot/freeflight/core/UncaughtExceptionController;
.super Ljava/lang/Object;
.source "UncaughtExceptionController.java"


# instance fields
.field private final mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDefaultUncaughExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/connection/ConnectionManager;)V
    .locals 1
    .param p1, "connectionManager"    # Lcom/parrot/freeflight/core/connection/ConnectionManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/parrot/freeflight/core/UncaughtExceptionController$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/UncaughtExceptionController$1;-><init>(Lcom/parrot/freeflight/core/UncaughtExceptionController;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/UncaughtExceptionController;->mUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 35
    iput-object p1, p0, Lcom/parrot/freeflight/core/UncaughtExceptionController;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/core/UncaughtExceptionController;)Lcom/parrot/freeflight/core/connection/ConnectionManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/UncaughtExceptionController;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/parrot/freeflight/core/UncaughtExceptionController;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/core/UncaughtExceptionController;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/UncaughtExceptionController;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/parrot/freeflight/core/UncaughtExceptionController;->mDefaultUncaughExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/UncaughtExceptionController;->mDefaultUncaughExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/core/UncaughtExceptionController;->mUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 41
    return-void
.end method
