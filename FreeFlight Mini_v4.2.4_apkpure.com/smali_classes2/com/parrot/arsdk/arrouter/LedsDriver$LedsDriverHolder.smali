.class Lcom/parrot/arsdk/arrouter/LedsDriver$LedsDriverHolder;
.super Ljava/lang/Object;
.source "LedsDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/arrouter/LedsDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LedsDriverHolder"
.end annotation


# static fields
.field private static final instance:Lcom/parrot/arsdk/arrouter/LedsDriver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/parrot/arsdk/arrouter/LedsDriver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/arrouter/LedsDriver;-><init>(Lcom/parrot/arsdk/arrouter/LedsDriver$1;)V

    sput-object v0, Lcom/parrot/arsdk/arrouter/LedsDriver$LedsDriverHolder;->instance:Lcom/parrot/arsdk/arrouter/LedsDriver;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/parrot/arsdk/arrouter/LedsDriver;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/parrot/arsdk/arrouter/LedsDriver$LedsDriverHolder;->instance:Lcom/parrot/arsdk/arrouter/LedsDriver;

    return-object v0
.end method
